# Edva vs. Clang (C) Native & Wasm Benchmarks

Reproducible workload benchmarks comparing Edva (native `-O2` and `wasm32-unknown-unknown -O2`) against equivalent standalone Clang (`clang -O2`) C implementations with deterministic output verification and regression tracking (`tools/bench.nu`).

## Environment & Pinned Toolchains (`sholl`)

| Component | Measured Version / Specification | Flags / Mode |
|---|---|---|
| Host OS & Arch | `Linux 6.18.60 x86_64` | — |
| CPU | `Intel(R) Core(TM) i5-10600KF CPU @ 4.10GHz` | 12 logical cores |
| Memory | `15923 MiB` RAM | — |
| Edva | `edva 1.6.1+65823de` | `-O2` (native & `wasm32-unknown-unknown`) |
| Clang (C) | `clang version 21.1.8` | `-O2` (native & `wasm32-unknown-unknown -ffreestanding`) |
| WebAssembly Host | Node `v22.23.4` (`wasm-ld` linked) | `--disable-wasm-trap-handler` |

## Workloads

1. **`cli_log_json`** (`N = 20000`, smoke `2000`): Deterministic JSON log record formatting, RFC 8259 parsing (using `std/json` inside a periodically reset scratch `mem::Arena`), and modulo checksum aggregation (`checksum=419027993,ok=16000,err=4000`).
2. **`server_http_router`** (`N = 40000`, smoke `4000`): In-memory HTTP/1.1 request line/header/query parsing, route matching (`/health`, `/items/:id`, `/users/:id`, fallback `404`), and response serialization inside a per-request reset `mem::Arena` (`digest=77124860,200=20000,201=10000,404=10000`).
3. **`wasm_numeric_kernel`** (`N = 400000`, smoke `50000`): Unboxed 8-body 64-bit integer 3D kinematics step kernel compiled both natively and to `-target wasm32-unknown-unknown` (`kernel=4439989`).

## Methodology

- **Correctness**: Every run verifies identical stdout checksums across all compiled targets before recording latency samples.
- **Timing & Memory**: `tools/bench.nu` compiles a minimal POSIX probe (`clock_gettime(CLOCK_MONOTONIC)` + `waitpid` + `getrusage(RUSAGE_CHILDREN)`), performs 1 warmup invocation, then measures 5 timed runs (`min`, `p50`, `p95`, `p99`, `max`, throughput, and `ru_maxrss` peak RSS).
- **Toolchain Cost Separation**: Edva build times report cold build (`cold_build_ms`), compiler frontend + LLVM IR emission (`--ir --no-cache`, `ir_emit_ms`), and cached warm build (`clang -O2` optimization & linking, `warm_build_ms`).
- **Stdlib Micro-Benchmarks**: `std/bench.dva` (`bench::measure_stats`, `bench::run_stats`) tracks per-iteration latency percentiles (`min`, `p50`, `p95`, `p99`, `max`) and active arena allocation deltas via `mem::current_provenance!`.

## Measured Baseline (`benchmarks/results/baseline_sholl.json`)

| Workload | Target | Cold (ms) | IR Emit (ms) | Warm (ms) | Binary Size (B) | p50 (ms) | p95 (ms) | Peak RSS (KB) | Rate (items/s) |
|---|---|---|---|---|---|---|---|---|---|
| `cli_log_json` (`20000`) | Edva `-O2` | `694.283` | `187.417` | `588.379` | `94016` | `2.696` | `2.707` | `2596` | `7419726.9` |
| `cli_log_json` (`20000`) | Clang `-O2` | `102.755` | — | — | `15976` | `3.016` | `3.022` | `1680` | `6632381.7` |
| `server_http_router` (`40000`) | Edva `-O2` | `527.734` | `134.419` | `465.259` | `89664` | `4.507` | `4.532` | `2592` | `8875707.5` |
| `server_http_router` (`40000`) | Clang `-O2` | `89.813` | — | — | `16024` | `7.504` | `7.616` | `1744` | `5330164.4` |
| `wasm_numeric_kernel` (`400000`) | Edva `-O2` | `421.626` | `123.508` | `353.193` | `79904` | `78.558` | `78.825` | `2116` | `5091747.4` |
| `wasm_numeric_kernel` (`400000`) | Clang `-O2` | `91.813` | — | — | `16008` | `73.219` | `73.724` | `1744` | `5463040.0` |
| `wasm_numeric_kernel` (`400000`) | Edva `wasm32 -O2` (Node) | `72.136` | — | — | `2611` | `287.068` | `287.472` | `52876` | `1393399.2` |
| `wasm_numeric_kernel` (`400000`) | Clang `wasm32 -O2` (Node) | `46.712` | — | — | `1888` | `819.161` | `819.808` | `52684` | `488304.2` |

## Running

```sh
# Fast verification (smoke sizes, 2 runs)
make bench-smoke

# Full 5-run benchmark suite saving JSON results
make bench

# Regression check against saved baseline (fail if > 50% slower)
nu tools/bench.nu --runs 3 --check-regression 50
```
