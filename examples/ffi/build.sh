#!/usr/bin/env bash
# Builds lib.dva (a dva module) into lib.o and links it into a C program and
# an Odin program, demonstrating the #export FFI boundary.
#
# #export'd functions are compiled eagerly, so a definitions-only lib.dva
# emits its symbols directly — no driver file is needed.
#
# Requires: ./edva (compiler), clang, odin, and libLLVM-18.
set -e
cd "$(dirname "$0")"

ROOT="$(cd ../.. && pwd)"

echo "== dva: compile lib.dva -> lib.o (--no-main object) =="
"$ROOT/edva" lib.dva -ir -no-main
clang -c lib.ll -o lib.o
rm -f lib.ll lib

echo "== C: link lib.o into main.c =="
clang main.c lib.o -o c_demo
./c_demo

echo "== Odin: link lib.o into main.odin =="
odin build . -out:odin_demo
./odin_demo

echo "== done =="
