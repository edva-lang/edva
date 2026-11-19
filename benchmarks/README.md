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
- **Toolchain Cost, Phase Timings, Artifact Sizes & Allocations**: Edva build metrics record cold build (`cold_build_ms`), compiler frontend + LLVM IR emission (`--ir --no-cache`, `ir_emit_ms`), object compilation (`-c --entry`, `obj_compile_ms`), cached warm build (`warm_build_ms`), machine-readable `--timings` phase breakdowns (`load_parse`, `type_specialize`, `analysis`, `ir_emit`, `backend_opt`, `link`, `ir_cache_hit`, `artifact_cache_hit`), cache disk footprint (`cache_disk_bytes`), compiler peak RSS (`compile_rss_kb`), textual LLVM IR size (`ir_bytes`), object size (`object_bytes`), linked binary size (`binary_bytes`), IR arena call-site counts (`alloc_sites`, `restore_sites`, `tag_check_sites`), and runtime arena allocation volume (`arena_alloc_stats`).
- **Incremental Multi-Module Build Harness**: Compiles the 7-module `multi_module_app` via `-c --module` + `--cache`, measuring:
  - **Cold modular build** (`cold_modular_ms`): cold compilation of all 7 modules + link, populating cached IR (`ir.ll`) and compiled module objects (`output.o`).
  - **Warm no-op build** (`warm_noop_ms`): all 7 modules hit the warm artifact cache (`output.o` restored atomically without invoking `clang -O2`) + link.
  - **Leaf edit** (`leaf_edit_ms`): editing `report.dva` (`REPORT_BIAS`), recompiling only the leaf module + entry while the 5 unchanged modules hit cached `output.o`, and relinking (verifying the expected output change).
  - **Root interface edit** (`interface_edit_ms`): adding a public symbol to `types.dva`, invalidating and recompiling all 7 modules + link.

## Measured Baseline (`benchmarks/results/baseline_sholl.json`)

### Runtime & Single-Target Compilation

| Workload | Target | Cold (ms) | IR Emit (ms) | Warm (ms) | IR Size (B) | Obj Size (B) | Bin Size (B) | p50 (ms) | p95 (ms) | CoV (%) | Thresh (%) | Peak RSS (KB) | Rate (items/s) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `cli_log_json` (`20000`) | Edva `-O2` | `693.178` | `204.742` | `90.954` | `2066474` | `17824` | `94016` | `2.654` | `2.669` | `1.16` | `20.0` | `2588` | `7537024.7` |
| `cli_log_json` (`20000`) | Clang `-O2` | `102.721` | — | — | — | `2992` | `15976` | `3.010` | `3.042` | `1.14` | `20.0` | `1744` | `6644520.5` |
| `server_http_router` (`40000`) | Edva `-O2` | `502.098` | `145.408` | `73.466` | `1417665` | `26872` | `89664` | `4.646` | `4.722` | `2.20` | `24.6` | `2572` | `8609073.0` |
| `server_http_router` (`40000`) | Clang `-O2` | `91.611` | — | — | — | `4344` | `16024` | `7.535` | `7.663` | `2.03` | `24.0` | `1744` | `5308410.7` |
| `wasm_numeric_kernel` (`400000`) | Edva `-O2` | `372.046` | `130.638` | `70.022` | `1272401` | `11128` | `79904` | `77.996` | `78.307` | `0.32` | `20.0` | `2100` | `5128462.3` |
| `wasm_numeric_kernel` (`400000`) | Clang `-O2` | `91.955` | — | — | — | `3656` | `16008` | `73.324` | `74.548` | `1.46` | `21.3` | `1744` | `5455204.7` |
| `wasm_numeric_kernel` (`400000`) | Edva `wasm32 -O2` | `72.320` | — | — | — | — | `2611` | `287.574` | `287.759` | `0.37` | `20.0` | `53452` | `1390944.5` |
| `wasm_numeric_kernel` (`400000`) | Clang `wasm32 -O2` | `46.614` | — | — | — | `1642` | `1888` | `817.882` | `819.145` | `0.55` | `20.0` | `53436` | `489068.3` |
| `collections_closures_generics` (`16000`) | Edva `-O2` | `495.178` | `152.118` | `76.888` | `1408150` | `19664` | `89400` | `0.807` | `0.809` | `1.34` | `21.0` | `2252` | `19828434.5` |
| `collections_closures_generics` (`16000`) | Edva `-O0` | `308.632` | — | — | `1408150` | — | `257240` | `2.003` | `2.012` | `1.54` | `21.5` | `2296` | `7987942.2` |
| `collections_closures_generics` (`16000`) | Clang `-O2` | `90.927` | — | — | — | `3520` | `16088` | `0.527` | `0.537` | `3.60` | `31.0` | `1744` | `30360704.1` |
| `collections_closures_generics` (`16000`) | Edva `wasm32 -O2` | `125.541` | — | — | — | — | `6213` | `30.337` | `32.866` | `9.09` | `54.1` | `56544` | `527415.7` |
| `collections_closures_generics` (`16000`) | Clang `wasm32 -O2` | `47.710` | — | — | — | `1711` | `1940` | `29.572` | `29.699` | `2.90` | `27.3` | `53156` | `541056.4` |
| `multi_module_app` (`12000`) | Edva `-O2` | `522.972` | `154.151` | `77.474` | `1436543` | `23808` | `89704` | `0.716` | `0.721` | `4.42` | `34.9` | `2236` | `16753786.4` |
| `multi_module_app` (`12000`) | Edva `-O0` | `318.184` | — | — | `1436543` | — | `261864` | `1.640` | `1.661` | `1.80` | `23.1` | `2392` | `7314883.2` |
| `multi_module_app` (`12000`) | Clang `-O2` | `99.467` | — | — | — | `3720` | `15936` | `0.509` | `0.509` | `2.55` | `26.0` | `1744` | `23591814.4` |

### Compiler Phase Timings & Artifact Cache Profile (`--timings`, `DVA-104`)

| Workload (`edva -O2`) | Mode | `load_parse` (ms) | `type_specialize` (ms) | `analysis` (ms) | `ir_emit` (ms) | `backend_opt` (ms) | `link` (ms) | Total In-Proc (ms) | Cache Disk (B) |
|---|---|---|---|---|---|---|---|---|---|
| `cli_log_json` | Cold miss (`ir=false, art=false`) | `24.52` | `52.53` | `39.80` | `72.09` | `406.94` | `48.05` | `643.93` | `2,162,167` |
| `cli_log_json` | Warm hit (`ir=true, art=true`) | `24.07` | `51.22` | `0.00` | `0.00` | `0.00` | `0.00` | `75.29` | `2,162,167` |
| `server_http_router` | Cold miss (`ir=false, art=false`) | `16.50` | `44.57` | `29.18` | `44.90` | `303.01` | `47.87` | `486.03` | `1,508,918` |
| `server_http_router` | Warm hit (`ir=true, art=true`) | `16.32` | `43.60` | `0.00` | `0.00` | `0.00` | `0.00` | `59.92` | `1,508,918` |
| `wasm_numeric_kernel` | Cold miss (`ir=false, art=false`) | `15.49` | `43.40` | `19.53` | `39.68` | `190.09` | `47.81` | `356.00` | `1,353,926` |
| `wasm_numeric_kernel` | Warm hit (`ir=true, art=true`) | `14.86` | `41.89` | `0.00` | `0.00` | `0.00` | `0.00` | `56.75` | `1,353,926` |
| `collections_closures_generics` | Cold miss (`ir=false, art=false`) | `16.72` | `45.76` | `28.42` | `47.60` | `290.59` | `48.66` | `477.76` | `1,499,302` |
| `collections_closures_generics` | Warm hit (`ir=true, art=true`) | `17.00` | `45.60` | `0.00` | `0.00` | `0.00` | `0.00` | `62.60` | `1,499,302` |
| `multi_module_app` | Cold miss (`ir=false, art=false`) | `17.41` | `45.79` | `29.62` | `46.17` | `318.50` | `49.54` | `507.03` | `1,528,587` |
| `multi_module_app` | Warm hit (`ir=true, art=true`) | `18.21` | `45.13` | `0.00` | `0.00` | `0.00` | `0.00` | `63.34` | `1,528,587` |

### Arena Allocation & IR Site Profile (`collections_closures_generics` & `multi_module_app`)

| Workload (`N`) | IR `dva_arena_alloc` Sites | IR `dva_arena_restore` Sites | IR Tag-Check Helpers | Total Scratch Allocated (B) | Peak Live Scratch (B) | Scratch Chunks / Resets | Global Arena Bytes (B) |
|---|---|---|---|---|---|---|---|
| `collections_closures_generics` (`16000`) | `253` | `2` | `8` | `1,772,000` | `113,408` | `1` chunk / `15` resets | `86,560` |
| `multi_module_app` (`12000`) | `263` | `2` | `11` | `1,909,120` | `153,184` | `1` chunk / `12` resets | `74,688` |

### Incremental Multi-Module Build Profile (`multi_module_app`, 7 user modules + 9 stdlib modules)

| Build Scenario | Elapsed (ms) | Savings vs. Pre-`DVA-104` | Total User IR (B) | Total User Objects (B) | Linked Binary (B) | Cache Disk Footprint (B) | Peak Compile RSS (KB) |
|---|---|---|---|---|---|---|---|
| **Cold modular build** (7 modules `-c --module` + link) | `592.563` | `-26.1%` (was `802.063 ms`) | `1,548,836` | `45,496` | `174,328` | `2,229,727` | `98,288` |
| **Warm / no-op build** (7 cached `output.o` hits + link) | `146.075` | **`-80.6%` (`5.16x` faster, was `753.109 ms`)** | `1,548,836` | `45,496` | `174,328` | `2,229,727` | `98,288` |
| **Leaf module edit** (`report.dva` + `edva.dva` + 5 cached `.o` + link) | `307.818` | **`-27.5%` (was `424.770 ms`)** | `1,548,836` | `45,496` | `174,328` | `2,229,727` | `98,288` |
| **Root interface edit** (`types.dva` $\to$ all 7 modules + link) | `532.846` | **`-31.6%` (was `778.440 ms`)** | `1,548,836` | `45,496` | `174,328` | `2,229,727` | `98,288` |

> **Evidence for DVA-105..109:**
> - With **DVA-104** object/artifact caching (`output.o`, `output.bin`, `output.so`, `output.wasm`) and in-process cache key hashing, warm single-target builds drop from `364–600 ms` to **`70–91 ms`** (`5.2x–6.8x` faster, `backend_opt: 0, link: 0`), and warm 7-module builds drop from `753 ms` to **`146 ms`** (`5.16x` faster), while cache disk overhead adds only the compiled object/binary (`11–94 KB` on top of `1.3–2.1 MB` textual IR).
> - On cold builds, `backend_opt` (`clang -O2 -c`, `190–407 ms`) still dominates `63–65%` of total compilation time because single-module textual IR is `1.27–2.07 MB` due to emitted unreachable stdlib definitions (motivating **DVA-107** reachable-only IR emission).
> - On `collections_closures_generics` and `multi_module_app`, `-O2` is `2.3x–2.5x` faster than `-O0` (`0.807 ms` vs. `2.003 ms`; `0.716 ms` vs. `1.640 ms`), and the remaining gap vs. `clang -O2` (`0.807 ms` vs. `0.527 ms`; `0.716 ms` vs. `0.509 ms`) comes from intermediate growable-array allocations (`1.77 MB` / `1.91 MB` scratch allocations across `@>` stages) and indirect closure calls (motivating **DVA-105**, **DVA-108**, and **DVA-109**).

## Running

```sh
# Fast verification (smoke sizes, 2 runs)
make bench-smoke

# Full 5-run benchmark suite saving JSON results
make bench

# Regression check against saved baseline (uses max of flag and per-workload variance threshold)
nu tools/bench.nu --runs 3 --check-regression 25
```
