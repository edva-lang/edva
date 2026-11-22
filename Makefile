# Edva — modular build, verification, and bootstrap targets.

SHELL := /usr/bin/env bash

# --- Installation Directories (GNU conventions) ------------------------------
PREFIX      ?= /usr/local
EXEC_PREFIX ?= $(PREFIX)
BINDIR      ?= $(EXEC_PREFIX)/bin
LIBDIR      ?= $(EXEC_PREFIX)/lib
INCDIR      ?= $(PREFIX)/include
DATADIR     ?= $(PREFIX)/share
DESTDIR     ?=

# --- Tools and Overrides -----------------------------------------------------
ifeq ($(origin CC),default)
  CC := clang
endif
CC              ?= clang
CLANG           ?= $(CC)
EDVA            ?= ./edva
EDVA_FLAGS      ?= -O2
NU              ?= nu
ifeq ($(filter clean uninstall,$(MAKECMDGOALS)),)
  ifeq ($(shell command -v $(NU) 2>/dev/null),)
    $(error Nushell ('$(NU)') is required to build Edva but was not found in PATH. Please install Nushell (https://www.nushell.sh) or pass NU=/path/to/nu)
  endif
endif
INSTALL         ?= install
INSTALL_PROGRAM ?= $(INSTALL) -m 755
INSTALL_DATA    ?= $(INSTALL) -m 644
INSTALL_DIR     ?= $(INSTALL) -d

# --- Compiler & Linker Flags -------------------------------------------------
UNAME_S      := $(shell uname -s)
CFLAGS       ?= -O2
LDFLAGS      ?=
LLVM_CONFIG  ?= llvm-config
LLVM_LIBDIR  := $(shell $(LLVM_CONFIG) --libdir 2>/dev/null)
ifeq ($(LLVM_LIBDIR),)
  LLVM_LIBDIR := $(shell sh -c 'for d in /usr/lib/llvm-*/lib /opt/homebrew/opt/llvm*/lib /usr/local/opt/llvm*/lib; do if [ -e "$$d/libLLVM.dylib" ] || [ -e "$$d/libLLVM.so" ]; then echo "$$d"; break; fi; done')
endif
ifneq ($(LLVM_LIBDIR),)
  LLVM_LDFLAGS := -L$(LLVM_LIBDIR) -Wl,-rpath,$(LLVM_LIBDIR)
else
  LLVM_LDFLAGS :=
endif
LLVM_LIBS    ?= $(shell $(LLVM_CONFIG) --libs 2>/dev/null)
ifeq ($(LLVM_LIBS),)
  ifneq ($(wildcard $(LLVM_LIBDIR)/libLLVM.dylib $(LLVM_LIBDIR)/libLLVM.so),)
    LLVM_LIBS := -lLLVM
  else
    LLVM_LIBS := -lLLVM-18
  endif
endif
LIBS         ?= $(LLVM_LIBS) -lm -ldl
ifeq ($(UNAME_S),Darwin)
  EXPORT_DYNAMIC_FLAG := -Wl,-export_dynamic
else
  EXPORT_DYNAMIC_FLAG := -Wl,--export-dynamic
endif

ALL_LDFLAGS  := -Qunused-arguments -Wno-unused-command-line-argument -Wno-override-module $(CFLAGS) \
                $(EXPORT_DYNAMIC_FLAG) $(LLVM_LDFLAGS) $(LDFLAGS)

# Polling backend selection (poll, epoll, uring)
POLL_BACKEND ?= poll

# --- Modules and Objects -----------------------------------------------------
STD_MODULES      := const ascii utf str mem sys libc unicode io ccl json uring event path fs cli time log
COMPILER_MODULES := poll diag ast llvm operators dep_graph layout tast typedopt lexer unify type_env show parser overloads annotate version pkg backend_opt formatter lsp \
                    codegen/types codegen/debug codegen/runtime codegen/expr codegen/match codegen/stmt codegen/main codegen
ENTRY_MODULE     := edva

STD_OBJS      := $(patsubst %, build/obj/%.o, $(STD_MODULES))
COMPILER_OBJS := $(patsubst %, build/obj/%.o, $(COMPILER_MODULES))
ENTRY_OBJ     := build/obj/$(ENTRY_MODULE).o
ALL_OBJS      := $(STD_OBJS) $(COMPILER_OBJS) $(ENTRY_OBJ)

# Sources of the compiled objects, and every .dva the dependency scan may reach
ALL_SRCS      := $(STD_MODULES:%=std/%.dva) $(COMPILER_MODULES:%=src/%.dva) src/$(ENTRY_MODULE).dva
SCAN_SRCS     := $(shell find src std -name '*.dva')
DEPS_MK       := build/deps.mk
SEED_IR       := $(shell find seed/ir -name '*.ll')
BOOTSTRAP_STAMP := build/.seed-stamp

FUZZ_RUNS    ?= 250
FUZZ_SEED    ?= 42
FUZZ_TIME    ?= 0

.PHONY: all build clean test check fuzz fuzz-smoke bench bench-smoke dom-test dom-smoke dom-browser-smoke driver-test fixed-point rebuild-seed bootstrap gen-tokens gen-operators gen-version install install-user link uninstall

# Default target: incremental modular build
all: edva

# --- Incremental Modular Compilation -----------------------------------------

edva: $(ALL_OBJS)
	$(CC) $(ALL_LDFLAGS) $(ALL_OBJS) $(LIBS) -o $@

# Ensure bootstrap compiler exists before compiling any object
$(ALL_OBJS): $(BOOTSTRAP_STAMP)
$(ALL_OBJS): | build/obj src/version.dva src/poll.dva

.PHONY: config-poll FORCE
config-poll: src/poll.dva
FORCE:

# A changed backend forces a copy, but a matching backend stays up to date.
ifneq ($(shell cmp -s src/poll/$(POLL_BACKEND).dva src/poll.dva; echo $$?),0)
src/poll.dva: FORCE
endif
src/poll.dva: src/poll/$(POLL_BACKEND).dva
	cp src/poll/$(POLL_BACKEND).dva $@

# Pattern rules for compilation units
build/obj/%.o: std/%.dva
	mkdir -p $(dir $@)
	$(EDVA) $< -c --module $* -o $@ $(EDVA_FLAGS)

build/obj/%.o: src/%.dva
	mkdir -p $(dir $@)
	$(EDVA) $< -c --module $(notdir $*) -o $@ $(EDVA_FLAGS)

build/obj/edva.o: src/edva.dva
	mkdir -p $(dir $@)
	$(EDVA) $< -c --entry -o $@ $(EDVA_FLAGS)

build/obj:
	mkdir -p $@

# A real prerequisite invalidates cached objects when the seed changes.
# Never delete tracked objects from an order-only bootstrap recipe.
bootstrap: $(BOOTSTRAP_STAMP)
ifeq ($(shell test -x ./edva || echo missing),missing)
$(BOOTSTRAP_STAMP): FORCE
endif
$(BOOTSTRAP_STAMP): $(SEED_IR)
	mkdir -p $(dir $@)
	set -e; bootstrap_needed=0; \
	for source in $(SEED_IR); do \
		if [ ! -x ./edva ] || [ "$$source" -nt ./edva ]; then bootstrap_needed=1; fi; \
	done; \
	if [ "$$bootstrap_needed" = 1 ]; then \
		printf '#ifdef __APPLE__\nextern int *__error(void);\nint *__errno_location(void) { return __error(); }\n#else\nextern int *__errno_location(void);\nint *__error(void) { return __errno_location(); }\n#endif\n' > /tmp/edva_seed_shim_$$$$.c; \
		$(CC) --target=$$($(CC) -dumpmachine) $(ALL_LDFLAGS) $$(find seed/ir -name "*.ll") /tmp/edva_seed_shim_$$$$.c $(LIBS) -o edva; \
		rm -f /tmp/edva_seed_shim_$$$$.c; \
	fi
	touch $@

# --- Automatic Code Generation -----------------------------------------------

src/lexer.dva: tools/tokens.txt
	$(NU) tools/gen_tokens.nu

src/operators.dva: operators.yaml
	$(NU) tools/opgen/main.nu

src/version.dva: VERSION tools/gen_version.nu
	$(NU) tools/gen_version.nu
	touch $@

# Check HEAD and dirty state without perpetually invalidating the file.
ifeq ($(filter clean uninstall,$(MAKECMDGOALS)),)
ifneq ($(shell $(NU) tools/gen_version.nu --check >/dev/null 2>&1 || echo stale),)
src/version.dva: FORCE
endif
endif
gen-version: src/version.dva

gen-tokens: src/lexer.dva
gen-operators: src/operators.dva

# --- Module Dependencies (Prerequisites for incremental & parallel builds) ----
# build/deps.mk lists, for every object, all .dva files reachable through
# `#use` (transitively). Regenerated whenever any .dva source changes; GNU make
# then restarts with the fresh rules.

$(DEPS_MK): $(SCAN_SRCS) tools/gendeps.nu
	$(NU) tools/gendeps.nu $@ $(ALL_SRCS)

NODEPS_GOALS := clean uninstall
ifeq ($(MAKECMDGOALS),)
  -include $(DEPS_MK)
else ifneq ($(filter-out $(NODEPS_GOALS),$(MAKECMDGOALS)),)
  -include $(DEPS_MK)
endif

# --- Installation ------------------------------------------------------------

USER_PREFIX ?= $(HOME)/.local
USER_BINDIR ?= $(USER_PREFIX)/bin

install: edva
	$(INSTALL_DIR) $(DESTDIR)$(BINDIR)
	$(INSTALL_PROGRAM) edva $(DESTDIR)$(BINDIR)/edva
	$(INSTALL_DIR) $(DESTDIR)$(LIBDIR)/edva/std
	cp -R std/* $(DESTDIR)$(LIBDIR)/edva/std/

install-user:
	$(MAKE) install PREFIX="$(USER_PREFIX)"

link: edva
	$(INSTALL_DIR) $(DESTDIR)$(USER_BINDIR)
	ln -sf "$(CURDIR)/edva" $(DESTDIR)$(USER_BINDIR)/edva

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/edva
	rm -rf $(DESTDIR)$(LIBDIR)/edva

# --- Fixed-Point Verification ------------------------------------------------
# Stage 1: ./edva compiles all modules to build/stage1/*.ll
# Stage 2: ./edva_stage1 compiles all modules to build/stage2/*.ll
# Fixed-point asserts: diff -u build/stage1 build/stage2 is empty

fixed-point: edva
	rm -rf build/stage1 build/stage2 edva_stage1 edva_stage2
	mkdir -p build/stage1/codegen build/stage2/codegen
	for m in $(STD_MODULES); do \
		./edva std/$$m.dva -c --module $$m -o build/stage1/$$m.o -ir --no-cache || exit 1; \
		mv -f $$m.ll build/stage1/$$m.ll; \
	done
	for m in $(COMPILER_MODULES); do \
		./edva src/$$m.dva -c --module $$(basename $$m) -o build/stage1/$$m.o -ir --no-cache || exit 1; \
		mv -f $$(basename $$m).ll build/stage1/$$m.ll; \
	done
	./edva src/edva.dva -c --entry -o build/stage1/edva.o -ir --no-cache || exit 1
	mv -f edva.ll build/stage1/edva.ll
	$(CC) $(ALL_LDFLAGS) $$(find build/stage1 -name "*.ll") $(LIBS) -o edva_stage1
	for m in $(STD_MODULES); do \
		./edva_stage1 std/$$m.dva -c --module $$m -o build/stage2/$$m.o -ir --no-cache || exit 1; \
		mv -f $$m.ll build/stage2/$$m.ll; \
	done
	for m in $(COMPILER_MODULES); do \
		./edva_stage1 src/$$m.dva -c --module $$(basename $$m) -o build/stage2/$$m.o -ir --no-cache || exit 1; \
		mv -f $$(basename $$m).ll build/stage2/$$m.ll; \
	done
	./edva_stage1 src/edva.dva -c --entry -o build/stage2/edva.o -ir --no-cache || exit 1
	mv -f edva.ll build/stage2/edva.ll
	diff -u -r -x "*.o" build/stage1/ build/stage2/
	mv -f edva_stage1 edva
	rm -rf build/stage1 build/stage2 edva_stage2

# --- Rebuild Seed -------------------------------------------------------------
# Updates seed/ (seed/src, seed/std, seed/ir) with the verified compiler IR.
# MANDATORY whenever language syntax, compiler intrinsics, runtime, or stdlib
# changes are introduced, so fresh checkouts without a pre-existing ./edva binary
# can bootstrap cleanly. Run `make rebuild-seed` and commit seed/.
rebuild-seed: fixed-point
	rm -rf seed/src seed/std seed/ir
	mkdir -p seed/src/codegen seed/std seed/ir/codegen
	cp -f src/*.dva seed/src/
	cp -f src/codegen/*.dva seed/src/codegen/
	cp -f tools/tokens.txt seed/src/
	cp -r std/* seed/std/
	for m in $(STD_MODULES); do \
		./edva seed/std/$$m.dva -c --module $$m -o seed/ir/$$m.o -ir --no-cache || exit 1; \
		mv -f $$m.ll seed/ir/$$m.ll; \
	done
	for m in $(COMPILER_MODULES); do \
		./edva seed/src/$$m.dva -c --module $$(basename $$m) -o seed/ir/$$m.o -ir --no-cache || exit 1; \
		mv -f $$(basename $$m).ll seed/ir/$$m.ll; \
	done
	./edva seed/src/edva.dva -c --entry -o seed/ir/edva.o -ir --no-cache || exit 1
	mv -f edva.ll seed/ir/edva.ll
	rm -f seed/ir/*.o seed/ir/codegen/*.o

# --- Clean & Test Gates -------------------------------------------------------

build: gen-tokens gen-operators gen-version edva

test: edva
	./run_tests.sh

driver-test: edva
	./test_driver.sh

fuzz-smoke: edva
	@tmp=$$(mktemp -d /tmp/edva_fuzz_smoke_XXXXXX); trap 'rm -rf "$$tmp"' EXIT; \
	./edva tests/fuzz/fuzz_frontend.dva --fuzz-cov --no-cache -O2 -o "$$tmp/fuzz_frontend" && \
	EDVA_FUZZ_CORPUS="$(CURDIR)/tests/fuzz/corpus" "$$tmp/fuzz_frontend" && \
	./edva tests/fuzz/fuzz_codecs.dva --fuzz-cov --no-cache -O2 -o "$$tmp/fuzz_codecs" && \
	EDVA_FUZZ_CORPUS="$(CURDIR)/tests/fuzz/corpus" "$$tmp/fuzz_codecs" && \
	$(NU) tools/fuzz_diff.nu --runs 3 --seed $(FUZZ_SEED) --self-test-shrink

fuzz: edva
	@tmp=$$(mktemp -d /tmp/edva_fuzz_full_XXXXXX); trap 'rm -rf "$$tmp"' EXIT; \
	./edva tests/fuzz/fuzz_frontend.dva --fuzz-cov --no-cache -O2 -o "$$tmp/fuzz_frontend" && \
	EDVA_FUZZ=1 EDVA_FUZZ_RUNS=$(FUZZ_RUNS) EDVA_FUZZ_SEED=$(FUZZ_SEED) EDVA_FUZZ_TIME=$(FUZZ_TIME) EDVA_FUZZ_CORPUS="$(CURDIR)/tests/fuzz/corpus" "$$tmp/fuzz_frontend" && \
	./edva tests/fuzz/fuzz_codecs.dva --fuzz-cov --no-cache -O2 -o "$$tmp/fuzz_codecs" && \
	EDVA_FUZZ=1 EDVA_FUZZ_RUNS=$(FUZZ_RUNS) EDVA_FUZZ_SEED=$(FUZZ_SEED) EDVA_FUZZ_TIME=$(FUZZ_TIME) EDVA_FUZZ_CORPUS="$(CURDIR)/tests/fuzz/corpus" "$$tmp/fuzz_codecs" && \
	$(NU) tools/fuzz_diff.nu --runs 10 --seed $(FUZZ_SEED) --self-test-shrink

bench-smoke: edva
	$(NU) tools/bench.nu --smoke

bench: edva
	$(NU) tools/bench.nu --runs 5 --save benchmarks/results/baseline_sholl.json

check: build driver-test fuzz-smoke bench-smoke test

clean:
	rm -rf build edva_stage1 edva_stage2 edva_stage1.ll edva_stage2.ll
	rm -f *.ll *.o

# npm ci --prefix tools/browser_dom installs the isolated test dependency.
dom-smoke: edva
	bash tools/browser_dom/smoke.sh

dom-browser-smoke: edva
	bash tools/browser_dom/browser-smoke.sh

dom-test: edva
	bash tools/browser_dom/run.sh
