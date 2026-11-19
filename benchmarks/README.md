# Edva vs. Clang (C) Native, Wasm & Incremental Build Benchmarks

Reproducible workload and incremental build benchmarks comparing Edva (native `-O2` / `-O0` and `wasm32-unknown-unknown -O2`) against equivalent standalone Clang (`clang -O2`) C implementations with deterministic output verification, arena allocation tracking, artifact size reporting, and variance-derived regression thresholds (`tools/bench.nu`).

## Environment & Pinned Toolchains (`sholl`)

| Component | Measured Version / Specification | Flags / Mode |
|---|---|---|
| Host OS & Arch | `Linux 6.18.60 x86_64` | — |
| CPU | `Intel(R) Core(TM) i5-10600KF CPU @ 4.10GHz` | 12 logical cores |
| Memory | `15923 MiB` RAM | — |
| Edva | `edva 1.6.1+041f3b2` | `-O2` & `-O0` (native & `wasm32-unknown-unknown`) |
| Clang (C) | `clang version 21.1.8` | `-O2` (native & `wasm32-unknown-unknown -ffreestanding`) |
| WebAssembly Host | Node `v22.23.4` (`wasm-ld` linked) | `--disable-wasm-trap-handler` |

## Workloads

1. **`cli_log_json`** (`N = 20000`, smoke `2000`): Deterministic JSON log record formatting, RFC 8259 parsing (using `std/json` inside a periodically reset scratch `mem::Arena`), and modulo checksum aggregation (`checksum=419027993,ok=16000,err=4000`).
2. **`server_http_router`** (`N = 40000`, smoke `4000`): In-memory HTTP/1.1 request line/header/query parsing, route matching (`/health`, `/items/:id`, `/users/:id`, fallback `404`), and response serialization inside a per-request reset `mem::Arena` (`digest=77124860,200=20000,201=10000,404=10000`).
3. **`wasm_numeric_kernel`** (`N = 400000`, smoke `50000`): Unboxed 8-body 64-bit integer 3D kinematics step kernel compiled both natively and to `-target wasm32-unknown-unknown` (`kernel=4439989`).
4. **`collections_closures_generics`** (`N = 16000`, smoke `1600`, batches of 64): Deterministic collection pipelines (`@>` filter-map, `@>` map, `@>` seeded fold), higher-order function composition (`f .> g`), and generic higher-order callbacks (`#param T: Type` fold, filter-count, and `<T|>` optional transform) exercised across native `-O2`, native `-O0`, `wasm32-unknown-unknown -O2`, and Clang `-O2` (`pipeline=490586550,kept=11000,heavy=8031`).
5. **`multi_module_app`** (`N = 12000`, smoke `1200`, 7 modules: `types`, `codec`, `transform`, `index`, `query`, `report`, `edva`): Multi-module telemetry ingestion, enrichment, per-tenant indexing, generic checkpoint reduction, and report formatting (`app_digest=678981868,kept_ok=9974,kept_err=1730,roll=446338721`), exercised across whole-program (`-O2` / `-O0`) and modular (`-c --module`) incremental builds.

## Methodology

- **Correctness**: Every run verifies identical stdout checksums across all compiled targets (`edva -O2`, `edva -O0`, `clang -O2`, `edva_wasm32`, `clang_wasm32`) before recording latency samples.
- **Timing, Variance & Thresholds**: `tools/bench.nu` compiles a minimal POSIX probe (`clock_gettime(CLOCK_MONOTONIC)` + `waitpid` + `getrusage(RUSAGE_CHILDREN)`), performs 1 warmup invocation, then measures 5 timed runs (`min`, `p50`, `p95`, `p99`, `max`, `stddev_ns`, coefficient of variation `cov_pct`, throughput, and `ru_maxrss` peak RSS). Empirical regression thresholds (`recommended_threshold_pct`) are computed from observed sample variance ($\max(20\%, 15\% + 3 \cdot \text{CoV} + 0.5 \cdot \text{spread})$).
- **Toolchain Cost, Artifact Sizes & Allocations**: Edva build metrics record cold build (`cold_build_ms`), compiler frontend + LLVM IR emission (`--ir --no-cache`, `ir_emit_ms`), object compilation (`-c --entry`, `obj_compile_ms`), cached warm build (`warm_build_ms`), compiler peak RSS (`compile_rss_kb`), textual LLVM IR size (`ir_bytes`), object size (`object_bytes`), linked binary size (`binary_bytes`), IR arena call-site counts (`alloc_sites`, `restore_sites`, `tag_check_sites`), and runtime arena allocation volume (`arena_alloc_stats`).
- **Incremental Multi-Module Build Harness**: Compiles the 7-module `multi_module_app` via `-c --module` + `--cache`, measuring:
  - **Cold modular build** (`cold_modular_ms`): cold compilation of all 7 modules + link.
  - **Warm no-op build** (`warm_noop_ms`): all 7 modules hit the warm IR cache + link.
  - **Leaf edit** (`leaf_edit_ms`): editing `report.dva` (`REPORT_BIAS`), recompiling only the leaf module + entry and relinking (verifying the expected output change).
  - **Root interface edit** (`interface_edit_ms`): adding a public symbol to `types.dva`, invalidating and recompiling all 7 modules + link.

## Measured Baseline (`benchmarks/results/baseline_sholl.json`)

### Runtime & Single-Target Compilation

| Workload | Target | Cold (ms) | IR Emit (ms) | Warm (ms) | IR Size (B) | Obj Size (B) | Bin Size (B) | p50 (ms) | p95 (ms) | CoV (%) | Thresh (%) | Peak RSS (KB) | Rate (items/s) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `cli_log_json` (`20000`) | Edva `-O2` | `714.045` | `205.450` | `599.678` | `2066474` | `17824` | `94016` | `2.669` | `2.688` | `14.33` | `77.6` | `2584` | `7493440.4` |
| `cli_log_json` (`20000`) | Clang `-O2` | `105.766` | — | — | — | `4000` | `15976` | `3.010` | `3.014` | `1.79` | `22.8` | `1744` | `6643959.8` |
| `server_http_router` (`40000`) | Edva `-O2` | `544.867` | `147.010` | `464.751` | `1417665` | `26872` | `89664` | `5.244` | `5.455` | `6.36` | `42.7` | `2580` | `7628469.1` |
| `server_http_router` (`40000`) | Clang `-O2` | `91.798` | — | — | — | `4624` | `16024` | `7.448` | `7.465` | `0.71` | `20.0` | `1680` | `5370889.5` |
| `wasm_numeric_kernel` (`400000`) | Edva `-O2` | `419.136` | `132.888` | `363.693` | `1272401` | `11128` | `79904` | `78.201` | `78.937` | `1.15` | `20.1` | `2084` | `5115039.7` |
| `wasm_numeric_kernel` (`400000`) | Clang `-O2` | `92.519` | — | — | — | `3656` | `16008` | `73.109` | `73.116` | `0.43` | `20.0` | `1744` | `5471314.3` |
| `wasm_numeric_kernel` (`400000`) | Edva `wasm32 -O2` | `72.578` | — | — | — | — | `2611` | `285.235` | `285.445` | `3.31` | `29.3` | `53436` | `1402350.7` |
| `wasm_numeric_kernel` (`400000`) | Clang `wasm32 -O2` | `47.991` | — | — | — | `1642` | `1888` | `817.145` | `819.061` | `0.18` | `20.0` | `53408` | `489509.0` |
| `collections_closures_generics` (`16000`) | Edva `-O2` | `543.032` | `150.476` | `461.398` | `1408150` | `19664` | `89400` | `0.790` | `0.794` | `2.10` | `24.2` | `2212` | `20244912.8` |
| `collections_closures_generics` (`16000`) | Edva `-O0` | `307.072` | — | — | `1408150` | — | `257240` | `1.988` | `2.029` | `1.48` | `21.3` | `2356` | `8047241.3` |
| `collections_closures_generics` (`16000`) | Clang `-O2` | `92.907` | — | — | — | `3520` | `16088` | `0.533` | `0.537` | `3.03` | `28.5` | `1744` | `30034201.4` |
| `collections_closures_generics` (`16000`) | Edva `wasm32 -O2` | `123.582` | — | — | — | — | `6213` | `31.707` | `32.657` | `6.07` | `41.0` | `56512` | `504618.4` |
| `collections_closures_generics` (`16000`) | Clang `wasm32 -O2` | `47.796` | — | — | — | `1711` | `1940` | `27.154` | `27.965` | `5.51` | `38.6` | `53160` | `589226.3` |
| `multi_module_app` (`12000`) | Edva `-O2` | `590.084` | `152.045` | `503.341` | `1436543` | `23808` | `89704` | `0.714` | `0.733` | `4.20` | `33.4` | `2252` | `16803310.3` |
| `multi_module_app` (`12000`) | Edva `-O0` | `308.752` | — | — | `1436543` | — | `261864` | `1.637` | `1.641` | `1.19` | `20.0` | `2352` | `7330410.9` |
| `multi_module_app` (`12000`) | Clang `-O2` | `100.300` | — | — | — | `3720` | `15936` | `0.521` | `0.523` | `4.86` | `35.7` | `1680` | `23025160.7` |

### Arena Allocation & IR Site Profile (`collections_closures_generics` & `multi_module_app`)

| Workload (`N`) | IR `dva_arena_alloc` Sites | IR `dva_arena_restore` Sites | IR Tag-Check Helpers | Total Scratch Allocated (B) | Peak Live Scratch (B) | Scratch Chunks / Resets | Global Arena Bytes (B) |
|---|---|---|---|---|---|---|---|
| `collections_closures_generics` (`16000`) | `253` | `2` | `8` | `1,772,000` | `113,408` | `1` chunk / `15` resets | `86,560` |
| `multi_module_app` (`12000`) | `263` | `2` | `11` | `1,909,120` | `153,184` | `1` chunk / `12` resets | `74,688` |

### Incremental Multi-Module Build Profile (`multi_module_app`, 7 user modules + 9 stdlib modules)

| Build Scenario | Elapsed (ms) | Total User IR (B) | Total User Objects (B) | Linked Binary (B) | Peak Compile RSS (KB) |
|---|---|---|---|---|---|
| **Cold modular build** (7 modules `-c --module` + link) | `802.063` | `1,548,836` | `45,496` | `174,328` | `98,272` |
| **Warm / no-op build** (7 IR cache hits + clang `-O2` + link) | `753.109` | `1,548,836` | `45,496` | `174,328` | `98,272` |
| **Leaf module edit** (`report.dva` + `edva.dva` + link) | `424.770` | `1,548,836` | `45,496` | `174,328` | `98,272` |
| **Root interface edit** (`types.dva` $\to$ all 7 modules + link) | `778.440` | `1,548,836` | `45,496` | `174,328` | `98,272` |

> **Evidence for DVA-104..109:**
> - On a warm IR-cache hit (`warm_build_ms` = `461–600 ms` single-file, `warm_noop_ms` = `753 ms` vs. `802 ms` cold modular), ~85–94% of total wall time is spent re-running `clang -O2` on cached `.ll` files and relinking (motivating **DVA-104** object/artifact caching and **DVA-107** reachable-only IR emission, as single-module IR is ~1.4 MB due to emitted unreachable stdlib definitions).
> - On `collections_closures_generics` and `multi_module_app`, `-O2` is `2.3x–2.5x` faster than `-O0` (`0.790 ms` vs. `1.988 ms`; `0.714 ms` vs. `1.637 ms`), and the remaining gap vs. `clang -O2` (`0.790 ms` vs. `0.533 ms`; `0.714 ms` vs. `0.521 ms`) comes from intermediate growable-array allocations (`1.77 MB` / `1.91 MB` scratch allocations across `@>` stages) and indirect closure calls (motivating **DVA-105**, **DVA-108**, and **DVA-109**).

## Running

```sh
# Fast verification (smoke sizes, 2 runs)
make bench-smoke

# Full 5-run benchmark suite saving JSON results
make bench

# Regression check against saved baseline (uses max of flag and per-workload variance threshold)
nu tools/bench.nu --runs 3 --check-regression 25
```
