#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

CC="${CC:-clang}"
CFLAGS="${CFLAGS:--O2}"
LLVM_LIBDIR="$(llvm-config --libdir 2>/dev/null || true)"
LLVM_LDFLAGS="${LLVM_LIBDIR:+-L$LLVM_LIBDIR}"
LDFLAGS="${LDFLAGS:--Wl,--export-dynamic $LLVM_LDFLAGS -lLLVM-18 -lm -ldl}"

echo "Building bootstrap compiler edva from seed/ir/..."
$CC $CFLAGS $(find ir -name "*.ll") $LDFLAGS -o edva
echo "Bootstrap compiler built successfully at $SCRIPT_DIR/edva"
