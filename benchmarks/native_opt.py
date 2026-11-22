"""Measure native PGO and ThinLTO on the router and separately compiled application."""
import argparse
import json
import os
from pathlib import Path
import random
import resource
import statistics
import subprocess
import tempfile
import time

root = Path(__file__).resolve().parent.parent
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("--edva", type=Path, default=root / "edva")
parser.add_argument("--profdata", default="llvm-profdata")
args = parser.parse_args()
edva = args.edva.resolve()
clang = "clang"
prof = str(Path(args.profdata).resolve()) if "/" in args.profdata else args.profdata
limit = 4 * 1024**3
soft_limit, hard_limit = resource.getrlimit(resource.RLIMIT_AS)
if soft_limit != resource.RLIM_INFINITY:
    limit = min(limit, soft_limit)
if hard_limit != resource.RLIM_INFINITY:
    limit = min(limit, hard_limit)
resource.setrlimit(resource.RLIMIT_AS, (limit, hard_limit))

rng = random.Random(110)
workloads = {
    'router': (root / 'benchmarks/server_http_router/edva.dva', 1300000, [2850000, 3300001]),
    'modular': (root / 'benchmarks/multi_module_app/edva.dva', 480000, [1200000, 1410060]),
}
modules = 'types codec transform index query report'.split()
std_modules = 'const ascii utf str mem sys libc unicode io'.split()

def invoke(args, cwd, **options):
    process = subprocess.run(
        args, cwd=cwd, stdin=subprocess.DEVNULL, timeout=90,
        stdout=subprocess.PIPE, stderr=subprocess.PIPE, **options,
    )
    if process.returncode:
        raise SystemExit(process.stderr.decode(errors="replace"))
    return process.stdout

def build(workload, src, work, name, flags):
    work.mkdir(exist_ok=True)
    output = work / name
    start = time.perf_counter()
    if workload == 'router':
        invoke([edva, src, '-O2', '--no-cache', *[f'--cflag={f}' for f in flags], '-o', output], work)
    else:
        objects = []
        for module in std_modules + modules + ['edva']:
            path = root / 'std' / f'{module}.dva' if module in std_modules else src.parent / f'{module}.dva'
            obj = work / f'{module}.o'
            mode = ['--entry'] if module == 'edva' else ['--module', module]
            invoke([edva, path, '-O2', '--no-cache', '-c', *mode,
                    *[f'--cflag={f}' for f in flags], '-o', obj], work)
            objects.append(obj)
        invoke([clang, '-O2', *flags, *objects, '-lm', '-pthread', '-o', output], work)
    return output, (time.perf_counter()-start)*1000

def measure(temp, workload, src, train, held_out):
    work = temp / workload
    gen, gen_ms = build(workload, src, work, 'instrumented', ['-fprofile-generate'])
    data = work / 'trained.profdata'
    raw = work / 'trained.profraw'
    start = time.perf_counter()
    invoke([gen, str(train)], work, env={**os.environ, 'LLVM_PROFILE_FILE': str(raw)})
    invoke([prof, 'merge', '-o', data, raw], work)
    train_ms = (time.perf_counter()-start)*1000
    flags = {
        'baseline': [],
        'pgo': [f'-fprofile-use={data}'],
        'thin': ['-flto=thin', '-fuse-ld=lld'],
        'pgo+thin': [f'-fprofile-use={data}', '-flto=thin', '-fuse-ld=lld'],
    }
    variants = list(flags)
    timings = {v: [] for v in variants}
    runs = {str(value): {v: [] for v in variants} for value in held_out}
    binaries = {}
    for _ in range(3):
        rng.shuffle(variants)
        for v in variants:
            binary, elapsed = build(workload, src, work, v, flags[v])
            timings[v].append(elapsed)
            binaries[v] = binary
    for value in held_out:
        reference = invoke([binaries['baseline'], str(value)], work)
        for repeat in range(11):
            rng.shuffle(variants)
            for v in variants:
                start = time.perf_counter()
                out = invoke([binaries[v], str(value)], work)
                if out != reference:
                    raise RuntimeError(f'{workload} {v} disagrees on {value}')
                elapsed = (time.perf_counter()-start)*1000
                if repeat:
                    runs[str(value)][v].append(elapsed)
    print(json.dumps({
        'workload':workload, 'training':train, 'instrument_ms':gen_ms, 'train_merge_ms':train_ms,
        'variants': {v:{'bytes': binaries[v].stat().st_size, 'build_ms': statistics.median(timings[v]),
                 'runtime_ms': {n: statistics.median(samples[v]) for n,samples in runs.items()}}
                    for v in variants},
    }), flush=True)

with tempfile.TemporaryDirectory(prefix="edva-native-opt-") as temp:
    for workload, (source, train, held_out) in workloads.items():
        measure(Path(temp), workload, source, train, held_out)
