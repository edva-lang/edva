# Edva Cross-Language & Wasm Benchmarks

Reproducible workload benchmarks comparing Edva (native and `wasm32-unknown-unknown`) against equivalent standalone Rust, Zig, and Go implementations with deterministic output verification and regression tracking (`tools/bench.nu`).

## Environment & Pinned Toolchains (`sholl`)

| Component | Measured Version / Specification | Flags / Mode |
|---|---|---|
| Host OS & Arch | `Linux 6.18.60 x86_64` | — |
| CPU | `Intel(R) Core(TM) i5-10600KF CPU @ 4.10GHz` | 12 logical cores |
| Memory | `15923 MiB` RAM | — |
| Edva | `edva 1.6.1+41da23c-dirty` | `-O2` (native & `wasm32-unknown-unknown`) |
| Native Linker / C | `clang version 21.1.8` | `-O2` |
| Rust | `rustc 1.99.0 (b940084d7 2026-09-28)` | `-C opt-level=3` |
| WebAssembly Host | Node `v22.23.4` (`wasm-ld` linked) | `--disable-wasm-trap-handler` |
| Zig | `0.17.0` | `-OReleaseFast` |
| Go | *Not installed on `sholl`* | Target `go build` (source maintained) |

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
| `cli_log_json` (`20000`) | Edva `-O2` | `880.957` | `289.58` | `759.691` | `102352` | `3.672` | `3.725` | `2704` | `5447197.2` |
| `cli_log_json` (`20000`) | Rust `-C opt-level=3` | `242.97` | — | — | `530616` | `3.019` | `3.04` | `2188` | `6624242.8` |
| `cli_log_json` (`20000`) | Zig `-OReleaseFast` | `12505.228` | — | — | `4221464` | `5.815` | `5.823` | `844` | `3439362.6` |
| `server_http_router` (`40000`) | Edva `-O2` | `662.829` | `219.66` | `585.141` | `89920` | `5.862` | `5.895` | `2588` | `6823265.2` |
| `server_http_router` (`40000`) | Rust `-C opt-level=3` | `310.305` | — | — | `530816` | `8.474` | `9.466` | `2324` | `4720094.3` |
| `server_http_router` (`40000`) | Zig `-OReleaseFast` | `11921.967` | — | — | `4051480` | `4.3` | `4.325` | `848` | `9302267.2` |
| `wasm_numeric_kernel` (`400000`) | Edva `-O2` | `521.485` | `207.623` | `443.975` | `80112` | `74.879` | `76.338` | `2084` | `5341969.2` |
| `wasm_numeric_kernel` (`400000`) | Rust `-C opt-level=3` | `210.262` | — | — | `529944` | `218.714` | `221.735` | `2228` | `1828868.9` |
| `wasm_numeric_kernel` (`400000`) | Zig `-OReleaseFast` | `11502.01` | — | — | `4004992` | `73.413` | `73.49` | `848` | `5448613.2` |
| `wasm_numeric_kernel` (`400000`) | Edva `wasm32` (Node) | `71.745` | — | — | `2611` | `286.77` | `293.143` | `52760` | `1394848.4` |

*(Go rows were skipped on `sholl` because `go` is not installed on this host.)*

### Observed Bottleneck & Optimization Note
- **Compilation**: Edva frontend + IR emission (`207.6`–`289.6 ms`) accounts for `~33`–`40%` of total cold build time; the remainder (`warm_build_ms` = `444.0`–`759.7 ms`) is `clang -O2` optimizing and linking the emitted single-unit LLVM IR module.
- **Compiler & Stdlib Runtime Improvements (`DVA-80`..`DVA-83`, `DVA-94`..`DVA-98`)**: Zero-allocation streaming JSON scanning (`std/json::Cursor` + SWAR ASCII/cold-escape outlines + `memchr`-backed `str::find_byte_from`), single-load TLS generation checks + stack-promoted `Builder` header & freeze fast-path, register value-pair `{ i64, ptr }` / small-record return ABI + tail/temporary stack allocation, unboxed slice spans, and whole-program integer value-range analysis (`!range` metadata + Wasm `udiv`/power-of-2 `ashr` strength reduction + proven-in-bounds `String` byte indexing) brought `cli_log_json` to `3.672 ms` (beating Zig `5.815 ms`), `server_http_router` to `5.862 ms` (beating Rust `8.474 ms`), and `wasm_numeric_kernel` to `74.879 ms` natively (matching Zig `73.413 ms` and **2.92x faster** than Rust `218.714 ms`) and `286.77 ms` on `wasm32` (**3.04x speedup**, `2,611 B` `.wasm` binary).

## Running

```sh
# Fast verification (smoke sizes, 2 runs)
make bench-smoke

# Full 5-run benchmark suite saving JSON results
make bench

# Regression check against saved baseline (fail if > 50% slower)
nu tools/bench.nu --runs 3 --check-regression 50
```
