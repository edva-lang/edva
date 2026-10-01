#!/usr/bin/env bash
set -e

ulimit -v 20971520
if command -v llvm-config >/dev/null 2>&1; then
    export LIBRARY_PATH="$(llvm-config --libdir 2>/dev/null):$LIBRARY_PATH"
fi

echo "Generating token enums from tools/tokens.txt..."
nu tools/gen_tokens.nu

echo "Generating operator tables from process/spec/operators.yaml..."
nu tools/opgen/main.nu

echo "Building self-hosted compiler (edva)..."
make edva

echo "Executing Test Suite..."
./run_tests.sh
