# Edva — modular build, verification, and bootstrap targets.

SHELL := /usr/bin/env bash

STD_MODULES      := str mem sys libc unicode io
COMPILER_MODULES := ast llvm operators dep_graph layout tast lexer unify type_env show parser annotate \
                    codegen/types codegen/runtime codegen/expr codegen/match codegen/stmt codegen/main codegen
ENTRY_MODULE     := edva

STD_OBJS      := $(patsubst %, build/obj/%.o, $(STD_MODULES))
COMPILER_OBJS := $(patsubst %, build/obj/%.o, $(COMPILER_MODULES))
ENTRY_OBJ     := build/obj/$(ENTRY_MODULE).o
ALL_OBJS      := $(STD_OBJS) $(COMPILER_OBJS) $(ENTRY_OBJ)

CLANG ?= clang
LLVM_LIBDIR  := $(shell llvm-config --libdir 2>/dev/null)
LLVM_LDFLAGS := $(if $(LLVM_LIBDIR),-L$(LLVM_LIBDIR),)
LINK_FLAGS   := -Qunused-arguments -Wno-unused-command-line-argument -O2 \
                -Wl,--export-dynamic $(LLVM_LDFLAGS) -lLLVM-18 -lm -ldl

.PHONY: all edva build clean test check fixed-point rebuild-seed bootstrap gen-tokens gen-operators

# Default target: incremental modular build
all: edva

# --- Incremental Modular Compilation -----------------------------------------

edva: $(ALL_OBJS)
	@echo "Linking edva..."
	$(CLANG) $(LINK_FLAGS) $(ALL_OBJS) -o $@
	@echo "Built edva successfully."

# Ensure bootstrap compiler exists before compiling any object
$(ALL_OBJS): | bootstrap build/obj

# Pattern rules for compilation units
build/obj/%.o: std/%.dva
	@echo "Compiling std/$*..."
	@mkdir -p $(dir $@)
	./edva $< -c --module $* -o $@ -O2

build/obj/%.o: src/%.dva
	@echo "Compiling src/$*..."
	@mkdir -p $(dir $@)
	./edva $< -c --module $(notdir $*) -o $@ -O2

build/obj/edva.o: src/edva.dva
	@echo "Compiling edva entry..."
	@mkdir -p $(dir $@)
	./edva $< -c --entry -o $@ -O2

build/obj:
	@mkdir -p $@

# Bootstrap from seed if ./edva binary is missing
bootstrap:
	@if [ ! -x ./edva ]; then \
		echo "edva not found; bootstrapping from seed/ir/..."; \
		$(CLANG) $(LINK_FLAGS) $$(find seed/ir -name "*.ll") -o edva; \
	fi

gen-tokens:
	@echo "Generating token enums from tools/tokens.txt..."
	nu tools/gen_tokens.nu

gen-operators:
	@echo "Generating operator tables from process/spec/operators.yaml..."
	nu tools/opgen/main.nu

# --- Fixed-Point Verification ------------------------------------------------
# Stage 1: ./edva compiles all modules to build/stage1/*.ll
# Stage 2: ./edva_stage1 compiles all modules to build/stage2/*.ll
# Fixed-point asserts: diff -u build/stage1 build/stage2 is empty

fixed-point: bootstrap
	@echo "=== Running 2-stage fixed-point verification ==="
	@rm -rf build/stage1 build/stage2 edva_stage1 edva_stage2
	@mkdir -p build/stage1/codegen build/stage2/codegen
	@echo "Running Stage 1 compilation..."
	@for m in $(STD_MODULES); do \
		./edva std/$$m.dva -c --module $$m -o build/stage1/$$m.o -ir || exit 1; \
		mv -f $$m.ll build/stage1/$$m.ll; \
	done
	@for m in $(COMPILER_MODULES); do \
		./edva src/$$m.dva -c --module $$(basename $$m) -o build/stage1/$$m.o -ir || exit 1; \
		mv -f $$(basename $$m).ll build/stage1/$$m.ll; \
	done
	@./edva src/edva.dva -c --entry -o build/stage1/edva.o -ir || exit 1
	@mv -f edva.ll build/stage1/edva.ll
	@$(CLANG) $(LINK_FLAGS) $$(find build/stage1 -name "*.ll") -o edva_stage1
	@echo "Running Stage 2 compilation..."
	@for m in $(STD_MODULES); do \
		./edva_stage1 std/$$m.dva -c --module $$m -o build/stage2/$$m.o -ir || exit 1; \
		mv -f $$m.ll build/stage2/$$m.ll; \
	done
	@for m in $(COMPILER_MODULES); do \
		./edva_stage1 src/$$m.dva -c --module $$(basename $$m) -o build/stage2/$$m.o -ir || exit 1; \
		mv -f $$(basename $$m).ll build/stage2/$$m.ll; \
	done
	@./edva_stage1 src/edva.dva -c --entry -o build/stage2/edva.o -ir || exit 1
	@mv -f edva.ll build/stage2/edva.ll
	@echo "Comparing Stage 1 and Stage 2 IR files..."
	@diff -u -r -x "*.o" build/stage1/ build/stage2/
	@echo "Fixed point verified! (All module IR outputs are byte-identical)"
	@mv -f edva_stage1 edva
	@rm -rf build/stage1 build/stage2 edva_stage2

# --- Rebuild Seed -------------------------------------------------------------

rebuild-seed: fixed-point
	@echo "Syncing frozen sources to seed/..."
	@rm -rf seed/src seed/std seed/ir
	@mkdir -p seed/src/codegen seed/std seed/ir/codegen
	@cp -f src/*.dva seed/src/
	@cp -f src/codegen/*.dva seed/src/codegen/
	@cp -f tools/tokens.txt seed/src/
	@cp -f prelude.dva seed/prelude.dva
	@cp -r std/* seed/std/
	@echo "Updating seed modular IR..."
	@for m in $(STD_MODULES); do \
		./edva seed/std/$$m.dva -c --module $$m -o seed/ir/$$m.o -ir || exit 1; \
		mv -f $$m.ll seed/ir/$$m.ll; \
	done
	@for m in $(COMPILER_MODULES); do \
		./edva seed/src/$$m.dva -c --module $$(basename $$m) -o seed/ir/$$m.o -ir || exit 1; \
		mv -f $$(basename $$m).ll seed/ir/$$m.ll; \
	done
	@./edva seed/src/edva.dva -c --entry -o seed/ir/edva.o -ir || exit 1
	@mv -f edva.ll seed/ir/edva.ll
	@rm -f seed/ir/*.o seed/ir/codegen/*.o
	@echo "Seed successfully rebuilt and verified."

# --- Clean & Test Gates -------------------------------------------------------

build: gen-tokens gen-operators edva

test: edva
	./run_tests.sh

driver-test: edva
	./test_driver.sh

check: build driver-test test

clean:
	@rm -rf build edva_stage1 edva_stage2 edva_stage1.ll edva_stage2.ll
	@rm -f *.ll *.o
	@echo "Cleaned build artifacts."
