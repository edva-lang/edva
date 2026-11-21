#!/usr/bin/env python3
"""Check erased generic callback signatures and optimized native/Wasm builds."""
from collections import Counter
import os
from pathlib import Path
import re
import resource
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(os.environ.get('DVA_COMPILER', ROOT / 'edva')).resolve()
SOURCE = ROOT / 'tests/pass/440_generic_lambda_abi.dva'


def limits():
    resource.setrlimit(resource.RLIMIT_AS, (4 * 1024**3, 4 * 1024**3))


def run(args):
    result = subprocess.run(args, cwd=ROOT, capture_output=True, text=True,
                            stdin=subprocess.DEVNULL, timeout=90, preexec_fn=limits)
    assert result.returncode == 0, str(result)
    return result.stdout


expected_signatures = Counter({
    ('i64', 'ptr %0, ptr %1'): 4,
    ('{ i64, ptr }', 'ptr %0'): 2,
    ('{ i64, ptr }', 'ptr %0, ptr %1'): 1,
    ('double', 'ptr %0'): 1,
    ('void', 'ptr %0'): 1,
    ('{ i1, i64 }', 'ptr %0'): 1,
    ('{ i1, i64 }', 'ptr %0, { i1, i64 } %1'): 1,
})
with tempfile.TemporaryDirectory(prefix='edva-lambda-abi-') as tmp:
    for mode, options in [('native-O0', ['-O0']), ('native-O2', ['-O2']),
                          ('wasm-O0', ['-target', 'wasm32-unknown-unknown', '-O0']),
                          ('wasm-O2', ['-target', 'wasm32-unknown-unknown', '-O2'])]:
        output = Path(tmp) / mode
        run([str(COMPILER), str(SOURCE), '--no-cache', '-o', str(output), *options])
        # Internal signatures can change when the closure environment is promoted.
        # Check the original closure ABI before LLVM changes those signatures.
        if mode.endswith('O0'):
            ir = output.with_suffix('.ll').read_text().split('define internal i64 @read_id', 1)[-1]
            signatures = Counter(re.findall(
                r'^define internal (.+?) @"(?:\$(?:lambda_|anon_fn\.)\d+|[^"\n]+\$(?:complete|callback)\.\d+)"\((.*?)\)', ir, re.MULTILINE))
            assert signatures == expected_signatures, (mode, signatures)
        if mode.startswith('native'):
            assert run([str(output)]) == SOURCE.with_suffix('.expected').read_text(), mode
print('PASS generic lambda ABI on native and Wasm at O0/O2')
