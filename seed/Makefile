CC = clang
CFLAGS ?= -O2
LLVM_LIBDIR := $(shell llvm-config --libdir 2>/dev/null)
LLVM_LDFLAGS := $(if $(LLVM_LIBDIR),-L$(LLVM_LIBDIR),)
LDFLAGS ?= -Wl,--export-dynamic $(LLVM_LDFLAGS) -lLLVM-18 -lm -ldl

.PHONY: all clean

all: edva

edva:
	$(CC) $(CFLAGS) $(shell find ir -name "*.ll") $(LDFLAGS) -o edva

clean:
	rm -f edva
