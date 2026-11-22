# Edva vs. Clang (C) Native, Wasm & Incremental Build Benchmarks

Reproducible workload and incremental build benchmarks comparing Edva (native `-O2` / `-O0` and `wasm32-unknown-unknown -O2`) against equivalent standalone Clang (`clang -O2`) C implementations with deterministic output verification, arena allocation tracking, artifact size reporting, and variance-derived regression thresholds (`tools/bench.nu`).

## Environment & Pinned Toolchains (`sholl`)

| Component | Measured Version / Specification | Flags / Mode |
|---|---|---|
| Host OS & Arch | `Linux 6.18.60 x86_64` | — |
| CPU | `Intel(R) Core(TM) i5-10600KF CPU @ 4.10GHz` | 12 logical cores |
| Memory | `15923 MiB` RAM | — |
| Edva | `edva 1.6.1+703e9a5` (`DVA-105`) | `-O2` & `-O0` (native & `wasm32-unknown-unknown`) |
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
| `cli_log_json` (`20000`) | Edva `-O2` | `653.406` | `193.598` | `87.064` | `2066492` | `17824` | `94016` | `2.639` | `2.643` | `1.18` | `20.1` | `2584` | `7577336.2` |
| `cli_log_json` (`20000`) | Clang `-O2` | `102.243` | — | — | — | `2992` | `15976` | `3.009` | `3.010` | `0.58` | `20.0` | `1680` | `6646945.2` |
| `server_http_router` (`40000`) | Edva `-O2` | `496.523` | `139.472` | `72.103` | `1418180` | `26872` | `89664` | `4.819` | `4.981` | `2.47` | `25.8` | `2584` | `8301242.1` |
| `server_http_router` (`40000`) | Clang `-O2` | `89.083` | — | — | — | `4344` | `16024` | `7.506` | `7.549` | `1.09` | `20.0` | `1744` | `5328962.9` |
| `wasm_numeric_kernel` (`400000`) | Edva `-O2` | `373.500` | `125.628` | `68.213` | `1272566` | `11128` | `79904` | `73.308` | `73.752` | `0.48` | `20.0` | `2016` | `5456394.7` |
| `wasm_numeric_kernel` (`400000`) | Clang `-O2` | `92.161` | — | — | — | `3656` | `16008` | `73.124` | `73.155` | `0.52` | `20.0` | `1744` | `5470197.2` |
| `wasm_numeric_kernel` (`400000`) | Edva `wasm32 -O2` | `72.062` | — | — | — | — | `2611` | `287.585` | `290.958` | `0.64` | `20.0` | `53756` | `1390893.0` |
| `wasm_numeric_kernel` (`400000`) | Clang `wasm32 -O2` | `47.080` | — | — | — | `1642` | `1888` | `818.742` | `818.976` | `0.73` | `20.0` | `53440` | `488554.3` |
| `collections_closures_generics` (`16000`) | Edva `-O2` | `486.826` | `140.918` | `73.250` | `1407392` | `19664` | `89120` | `0.706` | `0.709` | `4.27` | `34.0` | `2108` | `22677536.8` |
| `collections_closures_generics` (`16000`) | Edva `-O0` | `301.286` | — | — | `1407392` | — | `257240` | `1.952` | `1.953` | `1.85` | `23.4` | `2348` | `8197221.0` |
| `collections_closures_generics` (`16000`) | Clang `-O2` | `90.420` | — | — | — | `3520` | `16088` | `0.500` | `0.530` | `5.12` | `37.3` | `1744` | `32010307.3` |
| `collections_closures_generics` (`16000`) | Edva `wasm32 -O2` | `121.256` | — | — | — | — | `4742` | `32.876` | `35.582` | `8.18` | `51.2` | `55724` | `486678.8` |
| `collections_closures_generics` (`16000`) | Clang `wasm32 -O2` | `48.725` | — | — | — | `1711` | `1940` | `31.174` | `31.347` | `10.32` | `57.0` | `53148` | `513242.7` |
| `multi_module_app` (`12000`) | Edva `-O2` | `529.587` | `150.346` | `74.094` | `1435684` | `23808` | `89584` | `0.703` | `0.726` | `3.77` | `31.8` | `2204` | `17071619.7` |
| `multi_module_app` (`12000`) | Edva `-O0` | `304.835` | — | — | `1435684` | — | `261864` | `1.605` | `1.631` | `2.96` | `28.1` | `2360` | `7476113.8` |
| `multi_module_app` (`12000`) | Clang `-O2` | `100.347` | — | — | — | `3720` | `15936` | `0.518` | `0.522` | `2.53` | `26.6` | `1744` | `23176716.7` |

### Compiler Phase Timings & Artifact Cache Profile (`--timings`, `DVA-104` / `DVA-105`)

| Workload (`edva -O2`) | Mode | `load_parse` (ms) | `type_specialize` (ms) | `analysis` (ms) | `ir_emit` (ms) | `backend_opt` (ms) | `link` (ms) | Total In-Proc (ms) | Cache Disk (B) |
|---|---|---|---|---|---|---|---|---|---|
| `cli_log_json` | Cold miss (`ir=false, art=false`) | `23.98` | `52.40` | `34.56` | `73.66` | `404.10` | `47.33` | `636.02` | `2,162,185` |
| `cli_log_json` | Warm hit (`ir=true, art=true`) | `24.16` | `50.94` | `0.00` | `0.00` | `0.00` | `0.00` | `75.10` | `2,162,185` |
| `server_http_router` | Cold miss (`ir=false, art=false`) | `19.84` | `44.92` | `21.72` | `44.46` | `302.19` | `47.83` | `480.96` | `1,509,433` |
| `server_http_router` | Warm hit (`ir=true, art=true`) | `16.48` | `43.76` | `0.00` | `0.00` | `0.00` | `0.00` | `60.24` | `1,509,433` |
| `wasm_numeric_kernel` | Cold miss (`ir=false, art=false`) | `14.55` | `42.55` | `18.26` | `39.63` | `194.85` | `48.34` | `358.19` | `1,354,091` |
| `wasm_numeric_kernel` | Warm hit (`ir=true, art=true`) | `14.92` | `41.68` | `0.00` | `0.00` | `0.00` | `0.00` | `56.60` | `1,354,091` |
| `collections_closures_generics` | Cold miss (`ir=false, art=false`) | `16.96` | `45.07` | `21.79` | `44.79` | `294.41` | `47.85` | `470.87` | `1,498,264` |
| `collections_closures_generics` | Warm hit (`ir=true, art=true`) | `16.65` | `44.98` | `0.00` | `0.00` | `0.00` | `0.00` | `61.63` | `1,498,264` |
| `multi_module_app` | Cold miss (`ir=false, art=false`) | `17.42` | `44.41` | `23.15` | `50.19` | `329.61` | `48.17` | `512.96` | `1,527,608` |
| `multi_module_app` | Warm hit (`ir=true, art=true`) | `17.34` | `44.82` | `0.00` | `0.00` | `0.00` | `0.00` | `62.16` | `1,527,608` |

### Arena Allocation & IR Site Profile (`collections_closures_generics` & `multi_module_app`, `DVA-105`)

| Workload (`N`) | IR `dva_arena_alloc` Sites | IR `dva_arena_restore` Sites | IR Tag-Check Helpers | Total Scratch Allocated (B) | Peak Live Scratch (B) | Scratch Chunks / Resets | Global Arena Bytes (B) |
|---|---|---|---|---|---|---|---|
| `collections_closures_generics` (`16000`) | `247` (`-6` vs. pre-`DVA-105`) | `2` | `8` | `1,396,000` (**`-21.2%`**, was `1,772,000`) | `89,344` (**`-21.2%`**, was `113,408`) | `1` chunk / `15` resets | `86,592` |
| `multi_module_app` (`12000`) | `257` (`-6` vs. pre-`DVA-105`) | `2` | `11` | `1,883,520` (`-1.3%`, was `1,909,120`) | `151,136` (`-1.3%`, was `153,184`) | `1` chunk / `12` resets | `74,720` |

### Incremental Multi-Module Build Profile (`multi_module_app`, 7 user modules + 9 stdlib modules)

| Build Scenario | Elapsed (ms) | Savings vs. Pre-`DVA-104` | Total User IR (B) | Total User Objects (B) | Linked Binary (B) | Cache Disk Footprint (B) | Peak Compile RSS (KB) |
|---|---|---|---|---|---|---|---|
| **Cold modular build** (7 modules `-c --module` + link) | `532.294` | `-33.6%` (was `802.063 ms`) | `1,548,608` | `44,880` | `174,296` | `2,228,883` | `98,268` |
| **Warm / no-op build** (7 cached `output.o` hits + link) | `151.746` | **`-79.9%` (`4.96x` faster, was `753.109 ms`)** | `1,548,608` | `44,880` | `174,296` | `2,228,883` | `98,268` |
| **Leaf module edit** (`report.dva` + `edva.dva` + 5 cached `.o` + link) | `305.172` | **`-28.2%` (was `424.770 ms`)** | `1,548,608` | `44,880` | `174,296` | `2,228,883` | `98,268` |
| **Root interface edit** (`types.dva` $\to$ all 7 modules + link) | `545.738` | **`-29.9%` (was `778.440 ms`)** | `1,548,608` | `44,880` | `174,296` | `2,228,883` | `98,268` |

> **Evidence from `DVA-104` & `DVA-105` (and next targets `DVA-106..109`):**
> - With **DVA-105** generalized interprocedural escape and argument-retention summaries (`param_retained_mask`, `param_ret_alias_mask`, `param_rec_proj_only_mask`, `param_str_read_only_mask`, `param_invoked_mask`, `param_mutated_mask`) and $O(1)$ indexed function-body lookups (`types::fneff.entries`), the `analysis` phase drops by **`22%–26%`** across multi-function workloads (`28.42 ms` $\to$ `21.79 ms` on `collections_closures_generics`; `29.62 ms` $\to$ `23.15 ms` on `multi_module_app`; `29.18 ms` $\to$ `21.72 ms` on `server_http_router`).
> - Stack promotion of non-escaping local closures (`fg = f .> g`, `shift_fn`), generic higher-order callback arguments (`fold_generic`, `count_matching`, `transform_opt`, `reduce_checkpoints`), `<Rec|>` niche-ram choices (`opt_bonus`), and non-escaping local records reduces `collections_closures_generics` scratch arena allocations by **`21.2%`** (`1,772,000 B` $\to$ `1,396,000 B`; peak live scratch `113,408 B` $\to$ `89,344 B`), shrinks its Wasm32 binary by **`23.7%`** (`6,213 B` $\to$ `4,742 B`), and improves its native `-O2` p50 latency by **`12.5%`** (`0.807 ms` $\to$ `0.706 ms`).
> - On cold builds, `backend_opt` (`clang -O2 -c`, `195–404 ms`) still dominates `63–65%` of total compilation time because single-module textual IR is `1.27–2.07 MB` due to emitted unreachable stdlib definitions (motivating **DVA-107** reachable-only IR emission), while remaining runtime allocations in `@>` pipelines motivate **DVA-108** and **DVA-109**.

## Running

```sh
# Fast verification (smoke sizes, 2 runs)
make bench-smoke

# Full 5-run benchmark suite saving JSON results
make bench

# Regression check against saved baseline (uses max of flag and per-workload variance threshold)
nu tools/bench.nu --runs 3 --check-regression 25
```

For native profiling and cross-object optimization, see the [PGO and ThinLTO workflow](../doc/compiler/native-optimization.qmd).
