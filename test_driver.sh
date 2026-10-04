#!/usr/bin/env bash
# Real-driver regression test suite for edva: verifies CLI behavior,
# error propagation, signal handling, and atomic file outputs.
set -e
ulimit -v 4194304
cd "$(dirname "$0")"

if [ ! -x ./edva ]; then
    echo "test_driver: ./edva not found — building..." >&2
    make edva
fi

TMPDIR=$(mktemp -d /tmp/edva_driver_test_XXXXXX)
trap 'rm -rf "$TMPDIR"' EXIT

echo "=== Running edva driver regression tests ==="

# --- Test 1: F1 - Parse failure must fail compilation and emit no files ---
echo -n "Testing F1 (parse failure propagation)... "
cat <<'EOF' > "$TMPDIR/bad_syntax.dva"
x = )
EOF
set +e
timeout 30 ./edva "$TMPDIR/bad_syntax.dva" < /dev/null >"$TMPDIR/t1.out" 2>"$TMPDIR/t1.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit on parse failure, got 0"
    exit 1
fi
if ! grep -q "E2064" "$TMPDIR/t1.out" "$TMPDIR/t1.err"; then
    echo "FAILED: expected E2064 in output"
    exit 1
fi
if [ -f "$TMPDIR/bad_syntax" ] || [ -f "$TMPDIR/bad_syntax.ll" ] || [ -f "bad_syntax" ] || [ -f "bad_syntax.ll" ]; then
    echo "FAILED: output binary or IR was emitted despite parse failure"
    exit 1
fi
echo "PASS"

# --- Test 2: F1 - Missing module must fail compilation and emit no files ---
echo -n "Testing F1 (missing module failure propagation)... "
cat <<'EOF' > "$TMPDIR/bad_mod.dva"
#use "definitely_nonexistent_mod_12345"
x = 42
EOF
set +e
timeout 30 ./edva "$TMPDIR/bad_mod.dva" < /dev/null >"$TMPDIR/t2.out" 2>"$TMPDIR/t2.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit on missing module, got 0"
    exit 1
fi
if ! grep -q "E5006" "$TMPDIR/t2.out" "$TMPDIR/t2.err"; then
    echo "FAILED: expected E5006 in output"
    exit 1
fi
if [ -f "$TMPDIR/bad_mod" ] || [ -f "$TMPDIR/bad_mod.ll" ] || [ -f "bad_mod" ] || [ -f "bad_mod.ll" ]; then
    echo "FAILED: output binary or IR was emitted despite missing module"
    exit 1
fi
echo "PASS"

# --- Test 3: F2 - Unwritable output path must report error without segfault ---
echo -n "Testing F2 (unwritable output path error without SIGSEGV)... "
cat <<'EOF' > "$TMPDIR/good.dva"
#use io
io::out $ "hello"
EOF
set +e
timeout 30 ./edva "$TMPDIR/good.dva" "$TMPDIR/nonexistent_dir/output" -ir < /dev/null >"$TMPDIR/t3.out" 2>"$TMPDIR/t3.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit on unwritable output path, got 0"
    exit 1
fi
if [ $rc -ge 128 ]; then
    echo "FAILED: compiler crashed with signal $((rc - 128))"
    exit 1
fi
if ! grep -q "E5012" "$TMPDIR/t3.out" "$TMPDIR/t3.err"; then
    echo "FAILED: expected E5012 error message"
    exit 1
fi
echo "PASS"

# --- Test 4: F5 - read_file_text exact bytes & empty file handling ---
echo -n "Testing F5 (file read exact length and empty file handling)... "
cat <<'EOF' > "$TMPDIR/empty.txt"
EOF
cat <<'EOF' > "$TMPDIR/nonempty.txt"
Line 1
Line 2
Line 3
EOF
cat <<'EOF' > "$TMPDIR/test_f5.dva"
#use io
#use "str"
#use "libc"
#use "sys"

read_fd_bytes_loop: Int, Builder, Int, Int => < Int | >
read_fd_bytes_loop = fd, b, off, rem =>
   rem == 0
      | <+ off ->
      |
         chunk = rem < 65536 | rem | 65536
         n = libc::read(fd, &b + off, chunk)
         n < 0
            | <-->
            |
               n == 0
                  | <+ off ->
                  | read_fd_bytes_loop(fd, b, off + n, rem - n)

read_file_text: String => < String | >
read_file_text = path =>
   fd = libc::open(path, 0)
   fd < 0
      | <-->
      |
         sz = libc::lseek(fd, 0, 2)
         sz < 0
            |
               libc::close(fd)
               <-->
            |
               sz == 0
                  |
                     libc::close(fd)
                     <+ "" ->
                  |
                     libc::lseek(fd, 0, 0)
                     b = {sz}
                     read_res = read_fd_bytes_loop(fd, b, 0, sz)
                     libc::close(fd)
                     read_res
                        | total =>
                           ?b = total
                           <+ +b ->
                        | <-->

empty_res = read_file_text("FILE_EMPTY_PATH")
empty_res
   | s =>
      ?s != 0 | sys::exit(2)
   | sys::exit(3)

nonempty_res = read_file_text("FILE_NONEMPTY_PATH")
nonempty_res
   | s =>
      ?s == 21
         | io::out $ "F5_OK"
         | sys::exit(4)
   | sys::exit(5)
EOF
sed -i "s|FILE_EMPTY_PATH|$TMPDIR/empty.txt|g" "$TMPDIR/test_f5.dva"
sed -i "s|FILE_NONEMPTY_PATH|$TMPDIR/nonempty.txt|g" "$TMPDIR/test_f5.dva"
set +e
timeout 30 ./edva "$TMPDIR/test_f5.dva" "$TMPDIR/test_f5" -r < /dev/null >"$TMPDIR/t4.out" 2>"$TMPDIR/t4.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "F5_OK" "$TMPDIR/t4.out"; then
    echo "FAILED: test_f5 failed (rc=$rc)"
    cat "$TMPDIR/t4.out" "$TMPDIR/t4.err"
    exit 1
fi
echo "PASS"

# --- Test 5: F8 - Signal termination under -r must be reported correctly ---
echo -n "Testing F8 (child signal termination reporting under -r)... "
cat <<'EOF' > "$TMPDIR/test_sig.dva"
#foreign "c"
   raise: (sig: Int) -> Int

raise(15)
EOF
set +e
timeout 30 ./edva "$TMPDIR/test_sig.dva" "$TMPDIR/test_sig" -r < /dev/null >"$TMPDIR/t5.out" 2>"$TMPDIR/t5.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit code when child is killed by signal"
    exit 1
fi
if ! grep -q "Process terminated by signal 15" "$TMPDIR/t5.out" "$TMPDIR/t5.err"; then
    echo "FAILED: expected 'Process terminated by signal 15' in output"
    cat "$TMPDIR/t5.out" "$TMPDIR/t5.err"
    exit 1
fi
if ! grep -q "E5014: Compiled program exited with code 143" "$TMPDIR/t5.out" "$TMPDIR/t5.err"; then
    echo "FAILED: expected code 143 (128 + 15) in E5014 output"
    cat "$TMPDIR/t5.out" "$TMPDIR/t5.err"
    exit 1
fi
echo "PASS"

# --- Test 6: Pipeline verification flag (--typed-ast) ---
echo -n "Testing --typed-ast (typed AST elaboration & error handling)... "
cat <<'EOF' > "$TMPDIR/test_typed_pass.dva"
#use io
f: Int => Int
f = x => x + 1
io::out(f(41))
EOF
set +e
timeout 30 ./edva "$TMPDIR/test_typed_pass.dva" --typed-ast < /dev/null \
    >"$TMPDIR/t6_pass.out" 2>"$TMPDIR/t6_pass.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: expected 0 exit on --typed-ast with valid code, got $rc"
    cat "$TMPDIR/t6_pass.out" "$TMPDIR/t6_pass.err"
    exit 1
fi
if ! grep -q "Typed AST Elaboration Statistics" "$TMPDIR/t6_pass.out"; then
    echo "FAILED: expected 'Typed AST Elaboration Statistics' in output"
    exit 1
fi
if [ -f "$TMPDIR/test_typed_pass" ] || [ -f "$TMPDIR/test_typed_pass.ll" ] || \
   [ -f "test_typed_pass" ] || [ -f "test_typed_pass.ll" ]; then
    echo "FAILED: binary or IR emitted during --typed-ast"
    exit 1
fi

cat <<'EOF' > "$TMPDIR/test_typed_fail.dva"
x = 5 + "hello"
EOF
set +e
timeout 30 ./edva "$TMPDIR/test_typed_fail.dva" --typed-ast < /dev/null \
    >"$TMPDIR/t6_fail.out" 2>"$TMPDIR/t6_fail.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit on type error with --typed-ast"
    exit 1
fi
if ! grep -q "E3084" "$TMPDIR/t6_fail.out" "$TMPDIR/t6_fail.err"; then
    echo "FAILED: expected E3084 in type error output"
    exit 1
fi

timeout 30 ./edva "$TMPDIR/test_typed_pass.dva" -typed-ast-tree < /dev/null \
    >"$TMPDIR/t6_tree.out" 2>"$TMPDIR/t6_tree.err"
if ! grep -q "Bin(+): Int \[8B\]" "$TMPDIR/t6_tree.out"; then
    echo "FAILED: expected 'Bin(+): Int [8B]' in typed AST tree output"
    cat "$TMPDIR/t6_tree.out"
    exit 1
fi
echo "PASS"

# --- Test 7: C header generation (-H / --header) ---
echo -n "Testing -H / --header (C header generation from #export)... "
cat <<'EOF' > "$TMPDIR/test_export.dva"
#type Point (x: Int, y: Int)
#export add_points: Point, Point => Point
add_points = p1, p2 => Point((p1.x + p2.x, p1.y + p2.y))
#export mul_int: Int, Int => Int
mul_int = a, b => a * b
EOF
set +e
timeout 30 ./edva "$TMPDIR/test_export.dva" -H "$TMPDIR/test_export.h" -ir < /dev/null \
    >"$TMPDIR/t7.out" 2>"$TMPDIR/t7.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: expected 0 exit on header generation, got $rc"
    cat "$TMPDIR/t7.out" "$TMPDIR/t7.err"
    exit 1
fi
if [ ! -f "$TMPDIR/test_export.h" ]; then
    echo "FAILED: header file was not created at expected path"
    exit 1
fi
if ! grep -q "TEST_EXPORT_H" "$TMPDIR/test_export.h"; then
    echo "FAILED: header guard missing or incorrect in test_export.h"
    exit 1
fi
if ! grep -q "Point add_points(Point p1, Point p2);" "$TMPDIR/test_export.h"; then
    echo "FAILED: expected prototype 'Point add_points(Point p1, Point p2);' in header"
    cat "$TMPDIR/test_export.h"
    exit 1
fi
if ! grep -q "int64_t mul_int(int64_t a, int64_t b);" "$TMPDIR/test_export.h"; then
    echo "FAILED: expected prototype 'int64_t mul_int(int64_t a, int64_t b);' in header"
    cat "$TMPDIR/test_export.h"
    exit 1
fi
if ! clang -fsyntax-only "$TMPDIR/test_export.h" 2>/dev/null; then
    echo "FAILED: generated header is not valid C99"
    cat "$TMPDIR/test_export.h"
    exit 1
fi
echo "PASS"

# --- Test 8: WebAssembly target (-target wasm32-unknown-unknown) ---
echo -n "Testing WebAssembly target (-target wasm32-unknown-unknown)... "
cat <<'EOF' > "$TMPDIR/test_wasm.dva"
#export add_int: Int, Int => Int
add_int = a, b => a + b

#export square: Int => Int
square = x => x * x
EOF
set +e
timeout 30 ./edva "$TMPDIR/test_wasm.dva" -target wasm32-unknown-unknown -o "$TMPDIR/math.wasm" < /dev/null \
    >"$TMPDIR/t8.out" 2>"$TMPDIR/t8.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: expected 0 exit on wasm compilation, got $rc"
    cat "$TMPDIR/t8.out" "$TMPDIR/t8.err"
    exit 1
fi
if [ ! -f "$TMPDIR/math.wasm" ]; then
    echo "FAILED: wasm binary was not created at expected path"
    exit 1
fi
if ! file "$TMPDIR/math.wasm" | grep -q "WebAssembly"; then
    echo "FAILED: output file is not a valid WebAssembly binary"
    exit 1
fi
if command -v node >/dev/null 2>&1; then
    node_out=$(node --disable-wasm-trap-handler -e '
        const fs = require("fs");
        const b = fs.readFileSync(process.argv[1]);
        WebAssembly.instantiate(b).then(res => {
            const e = res.instance.exports;
            const r1 = e.add_int(10n, 32n);
            const r2 = e.square(7n);
            if (r1 !== 42n || r2 !== 49n) {
                console.error("Wrong result: " + r1 + ", " + r2);
                process.exit(1);
            }
            console.log("OK");
        });
    ' "$TMPDIR/math.wasm" 2>&1)
    if [ "$node_out" != "OK" ]; then
        echo "FAILED: node execution of wasm module failed: $node_out"
        exit 1
    fi
fi
echo "PASS"

# --- Test 9: Modular compilation & interface-only #use loading (#80, #81) ---
echo -n "Testing modular compilation & interface-only #use loading... "
cat <<'EOF' > "$TMPDIR/lib_mod.dva"
#public

#type Point (x: Int, y: Int)

add_pts: Point, Point => Point
add_pts = p1, p2 => Point((p1.x + p2.x, p1.y + p2.y))

#private
secret: Int => Int
secret = x => x * 100
EOF

cat <<'EOF' > "$TMPDIR/main_mod.dva"
#use "lib_mod"
#foreign "c"
   exit: (code: Int) => ()

pt1 = lib_mod::Point((10, 20))
pt2 = lib_mod::Point((30, 40))
pt3 = lib_mod::add_pts(pt1, pt2)
exit(pt3.x + pt3.y)
EOF

set +e
timeout 30 ./edva -c --module lib_mod "$TMPDIR/lib_mod.dva" -o "$TMPDIR/lib_mod.o" < /dev/null >"$TMPDIR/t9_lib.out" 2>"$TMPDIR/t9_lib.err"
rc=$?
set -e
if [ $rc -ne 0 ] || [ ! -f "$TMPDIR/lib_mod.o" ]; then
    echo "FAILED: lib_mod.o compilation failed"
    cat "$TMPDIR/t9_lib.out" "$TMPDIR/t9_lib.err"
    exit 1
fi

set +e
timeout 30 ./edva -c --entry "$TMPDIR/main_mod.dva" -o "$TMPDIR/main_mod.o" -ir < /dev/null >"$TMPDIR/t9_main.out" 2>"$TMPDIR/t9_main.err"
rc=$?
set -e
if [ $rc -ne 0 ] || [ ! -f "main_mod.ll" ]; then
    echo "FAILED: main_mod.o compilation failed"
    cat "$TMPDIR/t9_main.out" "$TMPDIR/t9_main.err"
    exit 1
fi

if ! grep -q 'declare ptr @"lib_mod::add_pts"' "main_mod.ll"; then
    echo "FAILED: expected external declaration of lib_mod::add_pts in main_mod.ll"
    cat "main_mod.ll"
    exit 1
fi
if grep -q 'define internal %"lib_mod::Point" @"lib_mod::add_pts"' "main_mod.ll"; then
    echo "FAILED: dependency function body was compiled into importer in modular mode"
    exit 1
fi
if grep -q 'secret' "main_mod.ll"; then
    echo "FAILED: private dependency symbol leaked into importer"
    exit 1
fi

clang -Qunused-arguments -Wno-unused-command-line-argument -c "main_mod.ll" -o "$TMPDIR/main_mod.o"
clang -Qunused-arguments -Wno-unused-command-line-argument "$TMPDIR/main_mod.o" "$TMPDIR/lib_mod.o" -o "$TMPDIR/mod_bin"
set +e
"$TMPDIR/mod_bin"
rc=$?
set -e
if [ $rc -ne 100 ]; then
    echo "FAILED: expected exit code 100 (40 + 60), got $rc"
    exit 1
fi
rm -f "main_mod.ll" "main_mod.o"
echo "PASS"

# --- Test 10: Compiling src/ derives project directory name ---
echo -n "Testing project name derivation for src/ directory target... "
mkdir -p "$TMPDIR/sample_proj/src"
cat <<'EOF' > "$TMPDIR/sample_proj/src/main.dva"
#use io
io::out $ "driver test sample_proj"
EOF
ORIG_DIR=$(pwd)
cd "$TMPDIR/sample_proj"
set +e
timeout 30 "$ORIG_DIR/edva" src/ < /dev/null >"$TMPDIR/t10.out" 2>"$TMPDIR/t10.err"
rc=$?
set -e
cd "$ORIG_DIR"
if [ $rc -ne 0 ] || [ ! -x "$TMPDIR/sample_proj/sample_proj" ]; then
    echo "FAILED: expected binary $TMPDIR/sample_proj/sample_proj to be created, exit code $rc"
    cat "$TMPDIR/t10.out" "$TMPDIR/t10.err"
    exit 1
fi
OUT=$("$TMPDIR/sample_proj/sample_proj")
if [ "$OUT" != "driver test sample_proj" ]; then
    echo "FAILED: unexpected binary output: $OUT"
    exit 1
fi
echo "PASS"

# --- Test 11: E5022 directory collision diagnostic ---
echo -n "Testing E5022 directory collision handling... "
mkdir -p "$TMPDIR/collision_proj/subpkg"
cat <<'EOF' > "$TMPDIR/collision_proj/subpkg/main.dva"
#use io
io::out $ "hello"
EOF
cd "$TMPDIR/collision_proj"
set +e
timeout 30 "$ORIG_DIR/edva" subpkg/ < /dev/null >"$TMPDIR/t11.out" 2>"$TMPDIR/t11.err"
rc=$?
set -e
cd "$ORIG_DIR"
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit code on directory collision"
    exit 1
fi
if ! grep -q "E5022" "$TMPDIR/t11.out" "$TMPDIR/t11.err"; then
    echo "FAILED: expected E5022 in output"
    cat "$TMPDIR/t11.out" "$TMPDIR/t11.err"
    exit 1
fi
echo "PASS"

echo "=== All driver tests PASSED ==="
