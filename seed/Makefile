CC = clang
UNAME_S := $(shell uname -s)
CFLAGS ?= -O2
LLVM_LIBDIR := $(shell llvm-config --libdir 2>/dev/null)
ifeq ($(LLVM_LIBDIR),)
  LLVM_LIBDIR := $(shell sh -c 'for d in /nix/store/*-llvm-*-lib/lib /opt/homebrew/opt/llvm*/lib /usr/local/opt/llvm*/lib; do if [ -e "$$d/libLLVM.dylib" ] || [ -e "$$d/libLLVM.so" ]; then echo "$$d"; break; fi; done')
endif
ifneq ($(LLVM_LIBDIR),)
  LLVM_LDFLAGS := -L$(LLVM_LIBDIR) -Wl,-rpath,$(LLVM_LIBDIR)
else
  LLVM_LDFLAGS :=
endif
ifneq ($(wildcard $(LLVM_LIBDIR)/libLLVM.dylib $(LLVM_LIBDIR)/libLLVM.so),)
  LLVM_LIBS ?= -lLLVM
else
  LLVM_LIBS ?= -lLLVM-18
endif
ifeq ($(UNAME_S),Darwin)
  EXPORT_DYNAMIC_FLAG := -Wl,-export_dynamic
else
  EXPORT_DYNAMIC_FLAG := -Wl,--export-dynamic
endif
LDFLAGS ?= $(EXPORT_DYNAMIC_FLAG) $(LLVM_LDFLAGS) $(LLVM_LIBS) -lm -ldl

.PHONY: all clean

all: edva

edva:
	printf '#ifdef __APPLE__\nextern int *__error(void);\nint *__errno_location(void) { return __error(); }\n#else\nextern int *__errno_location(void);\nint *__error(void) { return __errno_location(); }\n#endif\n' > /tmp/edva_seed_shim_$$$$.c; \
	$(CC) --target=$$($(CC) -dumpmachine) $(CFLAGS) $(shell find ir -name "*.ll") /tmp/edva_seed_shim_$$$$.c $(LDFLAGS) -o edva; \
	rm -f /tmp/edva_seed_shim_$$$$.c

clean:
	rm -f edva
