#!/usr/bin/env python3
import subprocess
import time
import os

def run_cmd(cmd, shell=False):
    res = subprocess.run(cmd, shell=shell, capture_output=True, text=True)
    if res.returncode != 0:
        print(f"Error running cmd: {cmd}\nStdout: {res.stdout}\nStderr: {res.stderr}")
        return False
    return True

def time_binary(path):
    times = []
    # Run 3 times to get average
    for _ in range(3):
        start = time.perf_counter()
        res = subprocess.run([path], capture_output=True, text=True)
        end = time.perf_counter()
        if res.returncode != 0:
            print(f"Error running binary {path}: {res.stderr}")
            return None
        times.append(end - start)
    return sum(times) / len(times), res.stdout.strip()

def main():
    print("=== Dva vs Odin Performance Benchmarks ===")
    
    # Ensure compile of compiler
    print("Building edva compiler...")
    run_cmd(["nu", "selfhost/harness.nu", "build"])
    
    # 1. Compile Fib Benchmarks
    print("Compiling Fib Benchmarks...")
    # Dva:
    run_cmd(["./edva", "benchmarks/fib.dva", "--ir-only"])
    run_cmd(["clang", "fib.ll", "-o", "benchmarks/fib_dva_O0"])
    run_cmd(["clang", "-O3", "fib.ll", "-o", "benchmarks/fib_dva_O3_default"])
    run_cmd(["clang", "-O3", "-no-pie", "-fuse-ld=gold", "fib.ll", "-o", "benchmarks/fib_dva_O3_gold"])
    run_cmd(["clang", "-O3", "-no-pie", "-fuse-ld=lld", "fib.ll", "-o", "benchmarks/fib_dva_O3_lld"])
    # Odin:
    run_cmd(["odin", "build", "benchmarks/fib.odin", "-file", "-out:benchmarks/fib_odin_O0"])
    run_cmd(["odin", "build", "benchmarks/fib.odin", "-file", "-o:speed", "-out:benchmarks/fib_odin_speed"])
    
    # 2. Compile Loop Benchmarks
    print("Compiling Loop Benchmarks...")
    # Dva:
    run_cmd(["./edva", "benchmarks/loop.dva", "--ir-only"])
    run_cmd(["clang", "loop.ll", "-o", "benchmarks/loop_dva_O0"])
    run_cmd(["clang", "-O3", "loop.ll", "-o", "benchmarks/loop_dva_O3_default"])
    run_cmd(["clang", "-O3", "-no-pie", "-fuse-ld=gold", "loop.ll", "-o", "benchmarks/loop_dva_O3_gold"])
    run_cmd(["clang", "-O3", "-no-pie", "-fuse-ld=lld", "loop.ll", "-o", "benchmarks/loop_dva_O3_lld"])
    # Odin:
    run_cmd(["odin", "build", "benchmarks/loop.odin", "-file", "-out:benchmarks/loop_odin_O0"])
    run_cmd(["odin", "build", "benchmarks/loop.odin", "-file", "-o:speed", "-out:benchmarks/loop_odin_speed"])
    
    # Run and Time Benchmarks
    print("\nRunning benchmarks...")
    
    results = {}
    
    # Fib
    results["fib_dva_O0"] = time_binary("./benchmarks/fib_dva_O0")
    results["fib_dva_O3_default"] = time_binary("./benchmarks/fib_dva_O3_default")
    results["fib_dva_O3_gold"] = time_binary("./benchmarks/fib_dva_O3_gold")
    results["fib_dva_O3_lld"] = time_binary("./benchmarks/fib_dva_O3_lld")
    results["fib_odin_O0"] = time_binary("./benchmarks/fib_odin_O0")
    results["fib_odin_speed"] = time_binary("./benchmarks/fib_odin_speed")
    
    # Loop
    results["loop_dva_O0"] = time_binary("./benchmarks/loop_dva_O0")
    results["loop_dva_O3_default"] = time_binary("./benchmarks/loop_dva_O3_default")
    results["loop_dva_O3_gold"] = time_binary("./benchmarks/loop_dva_O3_gold")
    results["loop_dva_O3_lld"] = time_binary("./benchmarks/loop_dva_O3_lld")
    results["loop_odin_O0"] = time_binary("./benchmarks/loop_odin_O0")
    results["loop_odin_speed"] = time_binary("./benchmarks/loop_odin_speed")
    
    print("\n### RESULTS TABLE\n")
    print("| Benchmark | Language | Compiler Config / Optimization | Time (seconds) | Output / Verification |")
    print("| :--- | :--- | :--- | :---: | :--- |")
    
    # Fib results
    print(f"| Recursive Fib(40) | Dva | clang -O0 (Unoptimized) | {results['fib_dva_O0'][0]:.4f}s | {results['fib_dva_O0'][1]} |")
    print(f"| Recursive Fib(40) | Dva | clang -O3 (Default Linker) | {results['fib_dva_O3_default'][0]:.4f}s | {results['fib_dva_O3_default'][1]} |")
    print(f"| Recursive Fib(40) | Dva | clang -O3 (Gold Linker) | {results['fib_dva_O3_gold'][0]:.4f}s | {results['fib_dva_O3_gold'][1]} |")
    print(f"| Recursive Fib(40) | Dva | clang -O3 (LLVM lld Linker) | {results['fib_dva_O3_lld'][0]:.4f}s | {results['fib_dva_O3_lld'][1]} |")
    print(f"| Recursive Fib(40) | Odin | odin build (Unoptimized) | {results['fib_odin_O0'][0]:.4f}s | {results['fib_odin_O0'][1]} |")
    print(f"| Recursive Fib(40) | Odin | odin build -o:speed (Optimized) | {results['fib_odin_speed'][0]:.4f}s | {results['fib_odin_speed'][1]} |")
    
    # Loop results
    print(f"| Loop Sum (800M) | Dva | clang -O0 (Unoptimized) | {results['loop_dva_O0'][0]:.4f}s | {results['loop_dva_O0'][1]} |")
    print(f"| Loop Sum (800M) | Dva | clang -O3 (Default Linker) | {results['loop_dva_O3_default'][0]:.4f}s | {results['loop_dva_O3_default'][1]} |")
    print(f"| Loop Sum (800M) | Dva | clang -O3 (Gold Linker) | {results['loop_dva_O3_gold'][0]:.4f}s | {results['loop_dva_O3_gold'][1]} |")
    print(f"| Loop Sum (800M) | Dva | clang -O3 (LLVM lld Linker) | {results['loop_dva_O3_lld'][0]:.4f}s | {results['loop_dva_O3_lld'][1]} |")
    print(f"| Loop Sum (800M) | Odin | odin build (Unoptimized) | {results['loop_odin_O0'][0]:.4f}s | {results['loop_odin_O0'][1]} |")
    print(f"| Loop Sum (800M) | Odin | odin build -o:speed (Optimized) | {results['loop_odin_speed'][0]:.4f}s | {results['loop_odin_speed'][1]} |")

if __name__ == "__main__":
    main()
