#!/usr/bin/env python3
"""Check physical global ram layouts as well as observable round trips (DVA-66)."""
import os
from pathlib import Path
import resource
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[1]
COMPILER = Path(os.environ.get('DVA_COMPILER', ROOT / 'edva')).resolve()
SOURCE = ROOT / 'tests/pass/438_global_ram_storage.dva'
EXPECTED = SOURCE.with_suffix('.expected').read_text()


def limits():
    resource.setrlimit(resource.RLIMIT_AS, (4 * 1024**3, 4 * 1024**3))


def run(args, cwd):
    result = subprocess.run(args, cwd=cwd, capture_output=True, text=True,
                            stdin=subprocess.DEVNULL, timeout=90, preexec_fn=limits)
    assert result.returncode == 0, str(result)
    return result


with tempfile.TemporaryDirectory(prefix='edva-global-ram-') as tmp:
    directory = Path(tmp)
    for mode, options in [('native-O0', ['-O0']), ('native-O2', ['-O2']),
                          ('wasm', ['-target', 'wasm32-unknown-unknown', '-O2'])]:
        output = directory / mode
        run([str(COMPILER), str(SOURCE), '--no-cache', '-o', str(output), *options], ROOT)
        ir = output.with_suffix('.ll').read_text()
        # Opaque LLVM pointers permit oversized stores without a verifier error.
        # Check the allocated objects, so optimizer/layout luck cannot hide corruption.
        for name in ['callback', 'number', 'result']:
            assert f'@var.{name} = internal global {{ i1, i64 }} ' in ir, (mode, name)
        for name in ['failure', 'text']:
            assert f'@var.{name} = internal global ptr null' in ir, (mode, name)
        if mode.startswith('native'):
            assert run([str(output)], ROOT).stdout == EXPECTED, mode
        print(f'PASS global ram storage: {mode}')

    (directory / 'ram_storage.dva').write_text('''#public
::number: < Int | >
number = <-->
::callback: < (() => ()) | >
callback = <-->
install: (() => ()) => ()
install = action => callback ::= <+ action +>
invoke: () => ()
invoke = !=> callback | action => action!
assign: #param T: Type, T => ()
assign = n => number ::= <+ n +>
''')
    (directory / 'ram_consumer.dva').write_text('''#use ./ram_storage
#foreign("c")
   exit: (code: Int) => ()

finish: Int => ()
finish = expected =>
   done = !=> exit(expected - 23)
   ram_storage::install(done)
   ram_storage::invoke!
   exit(4)
ram_storage::assign(23)
ram_storage::number
   | n =>
      n != 23 | exit(3)
   | exit(2)
finish(23)
''')
    run([str(COMPILER), 'ram_storage.dva', '-c', '--module', 'ram_storage',
         '--no-cache', '-o', 'ram_storage.o'], directory)
    run([str(COMPILER), 'ram_consumer.dva', '-c', '--entry', '--no-cache',
         '-o', 'ram_consumer.o', '-ir'], directory)
    consumer_ir = (directory / 'ram_consumer.ll').read_text()
    for name in ['number', 'callback']:
        assert f'@"var.ram_storage::{name}" = external global {{ i1, i64 }}' in consumer_ir
    run(['clang', '-Wno-override-module', '-c', 'ram_consumer.ll',
         '-o', 'ram_consumer.o'], directory)
    run(['clang', '-Wno-override-module', 'ram_consumer.o', 'ram_storage.o',
         '-o', 'modular'], directory)
    run([str(directory / 'modular')], directory)
    print('PASS global ram storage: separately compiled modules')
