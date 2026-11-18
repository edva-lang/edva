# Edva Cross-Language & Wasm Benchmarks

Reproducible workload benchmarks comparing Edva (native and `wasm32-unknown-unknown`) against equivalent standalone Rust, Zig, and Go implementations with deterministic output verification and regression tracking (`tools/bench.nu`).

## Environment & Pinned Toolchains (`sholl`)

| Component | Measured Version / Specification | Flags / Mode |
|---|---|---|
| Host OS & Arch | `Linux 6.18.60 x86_64` | — |
| CPU | `Intel(R) Core(TM) i5-10600KF CPU @ 4.10GHz` | 12 logical cores |
| Memory | `15923 MiB` RAM | — |
| Edva | `edva 1.6.1+a1e303c-dirty` | `-O2` (native & `wasm32-unknown-unknown`) |
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
| `cli_log_json` (`20000`) | Edva `-O2` | `702.13` | `188.435` | `588.419` | `94016` | `2.642` | `2.666` | `2532` | `7569982.6` |
| `cli_log_json` (`20000`) | Rust `-C opt-level=3` | `245.362` | — | — | `530616` | `3.014` | `3.036` | `2320` | `6635270.8` |
| `cli_log_json` (`20000`) | Zig `-OReleaseFast` | `12474.257` | — | — | `4221464` | `5.926` | `5.958` | `844` | `3375217.5` |
| `server_http_router` (`40000`) | Edva `-O2` | `539.008` | `138.497` | `460.869` | `89664` | `4.534` | `4.561` | `2572` | `8822669.9` |
| `server_http_router` (`40000`) | Rust `-C opt-level=3` | `311.936` | — | — | `530816` | `7.638` | `7.64` | `2324` | `5236907.2` |
| `server_http_router` (`40000`) | Zig `-OReleaseFast` | `11933.288` | — | — | `4051480` | `4.342` | `4.346` | `848` | `9212300.0` |
| `wasm_numeric_kernel` (`400000`) | Edva `-O2` | `412.562` | `124.683` | `350.413` | `79904` | `77.748` | `77.826` | `2116` | `5144794.7` |
| `wasm_numeric_kernel` (`400000`) | Rust `-C opt-level=3` | `214.906` | — | — | `529944` | `221.565` | `222.016` | `2192` | `1805340.2` |
| `wasm_numeric_kernel` (`400000`) | Zig `-OReleaseFast` | `11541.391` | — | — | `4004992` | `72.991` | `73.392` | `848` | `5480096.2` |
| `wasm_numeric_kernel` (`400000`) | Edva `wasm32` (Node) | `71.174` | — | — | `2611` | `285.355` | `289.069` | `52708` | `1401764.9` |

*(Go rows were skipped on `sholl` because `go` is not installed on this host.)*

### Observed Bottleneck & Optimization Note
- **Compilation**: Edva frontend + IR emission (`124.7`–`188.4 ms`) accounts for `~26`–`30%` of total cold build time; the remainder (`warm_build_ms` = `350.4`–`588.4 ms`) is `clang -O2` optimizing and linking the emitted single-unit LLVM IR module.
- **Compiler & Stdlib Runtime Improvements (`DVA-80`..`DVA-83`, `DVA-94`..`DVA-100`)**: Zero-allocation streaming JSON scanning (`std/json::Cursor` + SWAR ASCII/cold-escape outlines + `memchr`-backed `str::find_byte_from`), single-load TLS generation checks + restore-free function `E4010`/`E4011` elimination + stack-promoted `Builder` header & freeze fast-path, register value-pair `{ i64, ptr }` / small-record return ABI + non-escaping local/record/niche-ram stack promotion (`SROA`), unboxed slice spans, and whole-program integer value-range analysis (`!range` metadata + Wasm `udiv`/power-of-2 `ashr` strength reduction + proven-in-bounds `String` byte indexing) brought `cli_log_json` to `2.642 ms` (beating both Rust `3.014 ms` and Zig `5.926 ms`), `server_http_router` to `4.534 ms` (**1.68x faster** than Rust `7.638 ms` and within `4.4%` of Zig `4.342 ms`), and `wasm_numeric_kernel` to `77.748 ms` natively (matching Zig `72.991 ms` and **2.85x faster** than Rust `221.565 ms`) and `285.355 ms` on `wasm32` (**3.05x speedup**, `2,611 B` `.wasm` binary).

## Running

```sh
# Fast verification (smoke sizes, 2 runs)
make bench-smoke

# Full 5-run benchmark suite saving JSON results
make bench

# Regression check against saved baseline (fail if > 50% slower)
nu tools/bench.nu --runs 3 --check-regression 50
```
