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
| `cli_log_json` (`20000`) | Edva `-O2` | `786.343` | `269.591` | `684.33` | `97784` | `5.005` | `5.014` | `2704` | `3996330.6` |
| `cli_log_json` (`20000`) | Rust `-C opt-level=3` | `242.035` | — | — | `530616` | `3.012` | `3.028` | `2192` | `6639859.3` |
| `cli_log_json` (`20000`) | Zig `-OReleaseFast` | `12343.354` | — | — | `4221464` | `5.898` | `5.943` | `848` | `3390812.7` |
| `server_http_router` (`40000`) | Edva `-O2` | `636.659` | `217.24` | `565.095` | `89384` | `7.408` | `7.408` | `2584` | `5399931.8` |
| `server_http_router` (`40000`) | Rust `-C opt-level=3` | `312.756` | — | — | `530816` | `7.579` | `7.649` | `2264` | `5277928.5` |
| `server_http_router` (`40000`) | Zig `-OReleaseFast` | `11697.534` | — | — | `4051480` | `4.275` | `4.336` | `848` | `9356136.4` |
| `wasm_numeric_kernel` (`400000`) | Edva `-O2` | `488.154` | `201.922` | `446.829` | `79536` | `219.474` | `219.569` | `2116` | `1822537.5` |
| `wasm_numeric_kernel` (`400000`) | Rust `-C opt-level=3` | `215.784` | — | — | `529944` | `221.188` | `221.612` | `2096` | `1808419.0` |
| `wasm_numeric_kernel` (`400000`) | Zig `-OReleaseFast` | `11515.121` | — | — | `4004992` | `73.007` | `73.048` | `848` | `5478916.2` |
| `wasm_numeric_kernel` (`400000`) | Edva `wasm32` (Node) | `71.799` | — | — | `2457` | `870.553` | `876.753` | `52800` | `459477.9` |

*(Go rows were skipped on `sholl` because `go` is not installed on this host.)*

### Observed Bottleneck & Optimization Note
- **Compilation**: Edva frontend + IR emission (`201.9`–`269.6 ms`) accounts for `~34`–`41%` of total cold build time; the remainder (`warm_build_ms` = `446.8`–`684.3 ms`) is `clang -O2` optimizing and linking the emitted single-unit LLVM IR module.
- **Compiler & Stdlib Runtime Improvements (`DVA-80`..`DVA-83`, `DVA-94`..`DVA-96`)**: Zero-allocation streaming JSON scanning (`std/json::Cursor` + SWAR ASCII/cold-escape outlines + `memchr`-backed `str::find_byte_from`), single-load TLS generation checks + stack-promoted `Builder` header & freeze fast-path, register value-pair `{ i64, ptr }` / small-record return ABI + tail/temporary stack allocation, and unboxed slice spans brought `cli_log_json` to `5.005 ms` (beating Zig `5.898 ms`), `server_http_router` to `7.408 ms` (beating Rust `7.579 ms`), and `wasm_numeric_kernel` to `219.474 ms` (beating Rust `221.188 ms`, with a `2,457 B` `.wasm` binary).

## Running

```sh
# Fast verification (smoke sizes, 2 runs)
make bench-smoke

# Full 5-run benchmark suite saving JSON results
make bench

# Regression check against saved baseline (fail if > 50% slower)
nu tools/bench.nu --runs 3 --check-regression 50
```
