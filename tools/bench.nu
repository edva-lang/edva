#!/usr/bin/env nu
# tools/bench.nu — Reproducible workload & incremental build benchmarks comparing Edva and Clang (C).
#
# Measures compilation (cold -O2, cold -O0, IR-only, warm cached build, modular incremental
# cold/noop/leaf-edit/interface-edit builds), IR/object/binary sizes, active arena allocations,
# peak RSS memory, throughput, latency distribution (min/p50/p95/p99/max) with variance/CoV
# and empirical regression thresholds, and cross-target output equivalence
# (native -O0/-O2 + wasm32-unknown-unknown via Node).

def repo_root [] {
    $env.FILE_PWD | path dirname
}

def percentile_at [sorted: list<int>, pct: int] {
    let n = ($sorted | length)
    if $n == 0 { return 0 }
    let raw_idx = (($n - 1) * $pct) / 100 | math floor | into int
    let idx = if $raw_idx < 0 { 0 } else if $raw_idx >= $n { $n - 1 } else { $raw_idx }
    $sorted | get $idx
}

def summarize_samples [latencies_ns: list<int>, items: int, maxrss_kb: int] {
    let sorted = ($latencies_ns | sort)
    let n = ($sorted | length)
    let sum_ns = ($sorted | math sum)
    let avg_ns = if $n > 0 { ($sum_ns | into float) / ($n | into float) } else { 0.0 }
    let p50_ns = (percentile_at $sorted 50)
    let p95_ns = (percentile_at $sorted 95)
    let p99_ns = (percentile_at $sorted 99)
    let min_ns = ($sorted | first)
    let max_ns = ($sorted | last)
    let stddev_ns = if $n > 1 {
        ($sorted | each {|x| $x | into float } | math stddev)
    } else {
        0.0
    }
    let cov_pct = if $avg_ns > 0.0 {
        (($stddev_ns / $avg_ns) * 100.0 | math round --precision 2)
    } else {
        0.0
    }
    let spread_pct = if $p50_ns > 0 {
        (((($max_ns - $min_ns) | into float) / ($p50_ns | into float)) * 100.0 | math round --precision 2)
    } else {
        0.0
    }
    # Empirical regression threshold derived from observed run variance (minimum 20%, + 3 * CoV + spread/2)
    let reg_thresh = ([20.0, ((15.0 + $cov_pct * 3.0 + $spread_pct * 0.5) | math round --precision 1)] | math max)
    let throughput = if $p50_ns > 0 {
        (($items | into float) * 1000000000.0) / ($p50_ns | into float)
    } else {
        0.0
    }
    {
        runs: $n,
        items: $items,
        latencies_ns: $latencies_ns,
        min_ns: $min_ns,
        p50_ns: $p50_ns,
        p95_ns: $p95_ns,
        p99_ns: $p99_ns,
        max_ns: $max_ns,
        stddev_ns: ($stddev_ns | math round --precision 1),
        cov_pct: $cov_pct,
        recommended_threshold_pct: $reg_thresh,
        avg_ms: (($avg_ns / 1000000.0) | math round --precision 3),
        p50_ms: ((($p50_ns | into float) / 1000000.0) | math round --precision 3),
        p95_ms: ((($p95_ns | into float) / 1000000.0) | math round --precision 3),
        p99_ms: ((($p99_ns | into float) / 1000000.0) | math round --precision 3),
        throughput_per_s: ($throughput | math round --precision 1),
        peak_rss_kb: $maxrss_kb
    }
}

def build_probe [tmp_dir: string] {
    let probe_c = ($tmp_dir | path join "bench_probe.c")
    let probe_bin = ($tmp_dir | path join "bench_probe")
    '
#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stdlib.h>
#include <sys/resource.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

int main(int argc, char **argv) {
    if (argc < 3) return 2;
    const char *meta = argv[1];
    struct timespec t0, t1;
    clock_gettime(CLOCK_MONOTONIC, &t0);
    pid_t pid = fork();
    if (pid < 0) return 3;
    if (pid == 0) {
        execvp(argv[2], &argv[2]);
        _exit(127);
    }
    int status = 0;
    struct rusage ru;
    if (waitpid(pid, &status, 0) < 0) return 4;
    clock_gettime(CLOCK_MONOTONIC, &t1);
    if (getrusage(RUSAGE_CHILDREN, &ru) < 0) ru.ru_maxrss = 0;
    long long dt = (long long)(t1.tv_sec - t0.tv_sec) * 1000000000LL +
                   (long long)(t1.tv_nsec - t0.tv_nsec);
    if (dt < 1) dt = 1;
    FILE *f = fopen(meta, "w");
    if (f) {
        fprintf(f, "%lld %ld\n", dt, ru.ru_maxrss);
        fclose(f);
    }
    if (WIFEXITED(status)) return WEXITSTATUS(status);
    if (WIFSIGNALED(status)) return 128 + WTERMSIG(status);
    return 1;
}
' | save -f $probe_c
    let res = (do { ^clang -O2 $probe_c -o $probe_bin } | complete)
    if $res.exit_code != 0 {
        error make { msg: $"failed to compile bench_probe: ($res.stderr)" }
    }
    $probe_bin
}

def measure_cmd [probe_bin: string, meta_path: string, args: list<string>] {
    let r = (do { ^$probe_bin $meta_path ...$args } | complete)
    if $r.exit_code != 0 {
        let cmd_str = ($args | str join " ")
        error make { msg: $"command failed rc=($r.exit_code): ($cmd_str)\n($r.stdout)\n($r.stderr)" }
    }
    let parts = (open --raw $meta_path | str trim | split row " ")
    let ns = ($parts | get 0 | into int)
    let rss = ($parts | get 1 | into int)
    {
        elapsed_ns: $ns,
        elapsed_ms: ((($ns | into float) / 1000000.0) | math round --precision 3),
        maxrss_kb: $rss,
        stdout: ($r.stdout | str trim)
    }
}

def measure_runs [probe_bin: string, meta_path: string, cmd_args: list<string>, runs: int, items: int] {
    # 1 warmup run (also verifies output)
    let warm = (measure_cmd $probe_bin $meta_path $cmd_args)
    mut lats = []
    mut max_rss = $warm.maxrss_kb
    mut out_text = $warm.stdout
    for _ in 0..<$runs {
        let m = (measure_cmd $probe_bin $meta_path $cmd_args)
        if $m.stdout != $out_text {
            error make { msg: $"non-deterministic output across runs: '($out_text)' vs '($m.stdout)'" }
        }
        $lats = ($lats | append $m.elapsed_ns)
        if $m.maxrss_kb > $max_rss {
            $max_rss = $m.maxrss_kb
        }
    }
    let summary = (summarize_samples $lats $items $max_rss)
    $summary | insert output $out_text
}

def file_size_bytes [p: string] {
    if ($p | path exists) {
        (ls $p | get 0.size | into int)
    } else {
        0
    }
}

def count_ir_arena_calls [ir_path: string] {
    if not ($ir_path | path exists) {
        return { alloc_sites: 0, restore_sites: 0, tag_check_sites: 0 }
    }
    let lines = (open --raw $ir_path | lines)
    let allocs = ($lines | where {|l| ($l | str contains "call ") and ($l | str contains "@dva_arena_alloc(") } | length)
    let restores = ($lines | where {|l| ($l | str contains "call ") and ($l | str contains "@dva_arena_restore(") } | length)
    let checks = ($lines | where {|l| ($l | str contains "call ") and ($l | str contains "@dva_validate_tag_or_abort_") } | length)
    {
        alloc_sites: $allocs,
        restore_sites: $restores,
        tag_check_sites: $checks
    }
}

def collect_env [root: string] {
    let cpu = try {
        open --raw /proc/cpuinfo
        | lines
        | where {|l| $l | str starts-with "model name" }
        | first
        | split row ":"
        | get 1
        | str trim
    } catch {
        "unknown"
    }
    let cores = try { (^nproc | str trim | into int) } catch { 1 }
    let mem_kb = try {
        open --raw /proc/meminfo
        | lines
        | where {|l| $l | str starts-with "MemTotal:" }
        | first
        | split words
        | get 1
        | into int
    } catch { 0 }

    let has_clang = (which clang | is-not-empty)
    let has_node = (which node | is-not-empty)

    let edva_ver = (do { ^($"($root)/edva") --version } | complete | get stdout | str trim)
    let clang_ver = if $has_clang { (do { ^clang --version } | complete | get stdout | lines | first | str trim) } else { "skipped (not installed)" }
    let node_ver = if $has_node { (do { ^node --version } | complete | get stdout | str trim) } else { "skipped (not installed)" }

    let wasm_ld_ok = try {
        let p = ($root | path join "edva")
        ((which wasm-ld | is-not-empty) and ($p | path exists))
    } catch { false }

    {
        hardware: {
            os_arch: (^uname -srm | str trim),
            cpu_model: $cpu,
            logical_cores: $cores,
            ram_mib: (($mem_kb / 1024) | math round)
        },
        toolchains: {
            edva: { version: $edva_ver, flags: "-O2 / -O0", installed: true },
            clang: { version: $clang_ver, flags: "-O2", installed: $has_clang },
            node: { version: $node_ver, flags: "--disable-wasm-trap-handler", installed: $has_node },
            wasm_ld: { installed: $wasm_ld_ok }
        }
    }
}

def bench_workload [
    name: string,
    items: int,
    edva_src: string,
    edva_wasm_src: string,
    wasm_prefix: string,
    c_src: string,
    check_o0: bool,
    env_info: record,
    probe_bin: string,
    root: string,
    tmp_dir: string,
    runs: int
] {
    let edva_bin_path = ($root | path join "edva")
    let meta = ($tmp_dir | path join "meta.txt")
    let wdir = ($tmp_dir | path join $name)
    mkdir $wdir

    let cache_dir = ($wdir | path join "cache")
    mkdir $cache_dir
    let edva_out = ($wdir | path join $"($name)_edva")
    let edva_out_warm = ($wdir | path join $"($name)_edva_warm")
    let edva_ir_base = ($wdir | path join $"($name)_edva_ir")
    let edva_ir_file = $"($edva_ir_base).ll"
    let edva_obj_out = ($wdir | path join $"($name)_edva.o")

    let cold_m = (measure_cmd $probe_bin $meta [$edva_bin_path $edva_src "-O2" "--cache" $cache_dir "-o" $edva_out])
    let ir_m = (measure_cmd $probe_bin $meta [$edva_bin_path $edva_src "-O2" "--ir" "--no-cache" "-o" $edva_ir_base])
    let obj_m = (measure_cmd $probe_bin $meta [$edva_bin_path $edva_src "-c" "--entry" "-O2" "--no-cache" "-o" $edva_obj_out])
    let warm_m = (measure_cmd $probe_bin $meta [$edva_bin_path $edva_src "-O2" "--cache" $cache_dir "-o" $edva_out_warm])
    let edva_run = (measure_runs $probe_bin $meta [$edva_out ($items | into string)] $runs $items)
    let ir_stats = (count_ir_arena_calls $edva_ir_file)
    let alloc_stats_out = if $check_o0 {
        (do { ^$edva_out ($items | into string) "--alloc-stats" } | complete | get stdout | str trim)
    } else {
        ""
    }

    let edva_rec = {
        status: "ok",
        cold_build_ms: $cold_m.elapsed_ms,
        ir_emit_ms: $ir_m.elapsed_ms,
        obj_compile_ms: $obj_m.elapsed_ms,
        warm_build_ms: $warm_m.elapsed_ms,
        compile_rss_kb: $cold_m.maxrss_kb,
        ir_bytes: (file_size_bytes $edva_ir_file),
        object_bytes: (file_size_bytes $edva_obj_out),
        binary_bytes: (file_size_bytes $edva_out),
        ir_arena_sites: $ir_stats,
        arena_alloc_stats: $alloc_stats_out,
        runtime: $edva_run
    }

    mut langs = { edva: $edva_rec }
    let expected_out = $edva_run.output

    # Optional Edva -O0 measurement & equivalence verification
    if $check_o0 {
        let edva_o0_out = ($wdir | path join $"($name)_edva_o0")
        let edva_o0_ir_base = ($wdir | path join $"($name)_edva_o0_ir")
        let o0_build = (measure_cmd $probe_bin $meta [$edva_bin_path $edva_src "-O0" "--no-cache" "-o" $edva_o0_out])
        let _o0_ir = (measure_cmd $probe_bin $meta [$edva_bin_path $edva_src "-O0" "--ir" "--no-cache" "-o" $edva_o0_ir_base])
        let o0_run = (measure_runs $probe_bin $meta [$edva_o0_out ($items | into string)] $runs $items)
        if $o0_run.output != $expected_out {
            error make { msg: $"($name) checksum mismatch edva -O0 vs -O2: '($o0_run.output)' != '($expected_out)'" }
        }
        $langs = ($langs | insert edva_o0 {
            status: "ok",
            cold_build_ms: $o0_build.elapsed_ms,
            compile_rss_kb: $o0_build.maxrss_kb,
            ir_bytes: (file_size_bytes $"($edva_o0_ir_base).ll"),
            binary_bytes: (file_size_bytes $edva_o0_out),
            runtime: $o0_run
        })
    }

    # Clang (C)
    if $env_info.toolchains.clang.installed and ($c_src | path exists) {
        let clang_out = ($wdir | path join $"($name)_clang")
        let clang_obj = ($wdir | path join $"($name)_clang.o")
        let c_build = (measure_cmd $probe_bin $meta ["clang" "-O2" $c_src "-o" $clang_out])
        let _c_obj = (measure_cmd $probe_bin $meta ["clang" "-O2" "-c" $c_src "-o" $clang_obj])
        let c_run = (measure_runs $probe_bin $meta [$clang_out ($items | into string)] $runs $items)
        if $c_run.output != $expected_out {
            error make { msg: $"($name) checksum mismatch clang vs edva: '($c_run.output)' != '($expected_out)'" }
        }
        $langs = ($langs | insert clang {
            status: "ok",
            cold_build_ms: $c_build.elapsed_ms,
            compile_rss_kb: $c_build.maxrss_kb,
            object_bytes: (file_size_bytes $clang_obj),
            binary_bytes: (file_size_bytes $clang_out),
            runtime: $c_run
        })
    } else {
        $langs = ($langs | insert clang { status: "skipped (not installed)" })
    }

    # Optional Wasm32 (edva -target wasm32-unknown-unknown + clang --target=wasm32-unknown-unknown via node)
    if ($edva_wasm_src != "") and $env_info.toolchains.wasm_ld.installed and $env_info.toolchains.node.installed {
        let wasm_out = ($wdir | path join $"($name)_edva.wasm")
        let wasm_js = ($wdir | path join "run_wasm.js")
        let w_build = (measure_cmd $probe_bin $meta [$edva_bin_path $edva_wasm_src "-target" "wasm32-unknown-unknown" "-O2" "--no-cache" "-o" $wasm_out])
        '
const fs = require("fs");
const bytes = fs.readFileSync(process.argv[2]);
const n = BigInt(process.argv[3]);
const prefix = process.argv[4] || "kernel=";
let mem = null;
let heap = 0;
function ensureMem() {
   if (!mem) return;
   if (heap === 0) heap = Math.max(65536, mem.buffer.byteLength >> 1);
}
const env = {
   malloc: (sz) => {
      ensureMem();
      const s = Number(sz);
      const aligned = (s + 15) & ~15;
      while (heap + aligned > mem.buffer.byteLength) {
         mem.grow(Math.max(1, Math.ceil((heap + aligned - mem.buffer.byteLength) / 65536)));
      }
      const p = heap;
      heap += aligned;
      return p;
   },
   free: (_p) => {},
   memset: (dst, val, count) => {
      new Uint8Array(mem.buffer, Number(dst), Number(count)).fill(Number(val) & 0xff);
      return Number(dst);
   },
   memcpy: (dst, src, count) => {
      const len = Number(count);
      new Uint8Array(mem.buffer, Number(dst), len).set(
         new Uint8Array(mem.buffer, Number(src), len)
      );
      return Number(dst);
   },
   memmove: (dst, src, count) => {
      const len = Number(count);
      const copy = new Uint8Array(new Uint8Array(mem.buffer, Number(src), len));
      new Uint8Array(mem.buffer, Number(dst), len).set(copy);
      return Number(dst);
   },
   exit: (code) => { process.exit(Number(code) || 1); },
   printf: () => 0
};
WebAssembly.instantiate(bytes, { env }).then(m => {
   mem = m.instance.exports.memory || null;
   const r = m.instance.exports.run_kernel(n);
   console.log(prefix + r.toString());
}).catch(err => {
   console.error(err);
   process.exit(1);
});
' | save -f $wasm_js
        let n_str = ($items | into string)
        let expected_wasm_out = ($expected_out | split row "," | first)
        let w_run = (measure_runs $probe_bin $meta ["node" "--disable-wasm-trap-handler" $wasm_js $wasm_out $n_str $wasm_prefix] $runs $items)
        if $w_run.output != $expected_wasm_out {
            error make { msg: $"($name) checksum mismatch edva_wasm32 vs native: '($w_run.output)' != '($expected_wasm_out)'" }
        }
        $langs = ($langs | insert edva_wasm32 {
            status: "ok",
            cold_build_ms: $w_build.elapsed_ms,
            compile_rss_kb: $w_build.maxrss_kb,
            binary_bytes: (file_size_bytes $wasm_out),
            runtime: $w_run
        })

        if $env_info.toolchains.clang.installed and ($c_src | path exists) {
            let c_wasm_obj = ($wdir | path join $"($name)_clang_wasm.o")
            let c_wasm_out = ($wdir | path join $"($name)_clang.wasm")
            let cw_c = (measure_cmd $probe_bin $meta [
                "clang" "-target" "wasm32-unknown-unknown" "-O2" "-ffreestanding"
                "-c" $c_src "-o" $c_wasm_obj
            ])
            let cw_ld = (measure_cmd $probe_bin $meta [
                "wasm-ld" "--no-entry" "--export-all" "--allow-undefined"
                $c_wasm_obj "-o" $c_wasm_out
            ])
            let cw_run = (measure_runs $probe_bin $meta ["node" "--disable-wasm-trap-handler" $wasm_js $c_wasm_out $n_str $wasm_prefix] $runs $items)
            if $cw_run.output != $expected_wasm_out {
                error make { msg: $"($name) checksum mismatch clang_wasm32 vs native: '($cw_run.output)' != '($expected_wasm_out)'" }
            }
            $langs = ($langs | insert clang_wasm32 {
                status: "ok",
                cold_build_ms: ((($cw_c.elapsed_ns + $cw_ld.elapsed_ns | into float) / 1000000.0) | math round --precision 3),
                object_bytes: (file_size_bytes $c_wasm_obj),
                binary_bytes: (file_size_bytes $c_wasm_out),
                runtime: $cw_run
            })
        }
    }

    rm -f ($root | path join $"($name)_edva.ll") ($root | path join $"($name)_edva_warm.ll")
    {
        workload: $name,
        items: $items,
        verified_output: $expected_out,
        targets: $langs
    }
}

# Measures cold, warm/no-op, leaf-edit, and interface-edit compile times and artifact sizes
# on the 7-module `multi_module_app` project.
def bench_incremental_builds [
    probe_bin: string,
    root: string,
    tmp_dir: string,
    items: int
] {
    let edva_bin = ($root | path join "edva")
    let meta = ($tmp_dir | path join "inc_meta.txt")
    let inc_dir = ($tmp_dir | path join "inc_multi_mod")
    let src_dir = ($inc_dir | path join "src")
    let obj_dir = ($inc_dir | path join "obj")
    let cache_dir = ($inc_dir | path join "cache")
    mkdir $src_dir $obj_dir $cache_dir

    for f in ["types.dva", "codec.dva", "transform.dva", "index.dva", "query.dva", "report.dva", "edva.dva"] {
        cp ($root | path join $"benchmarks/multi_module_app/($f)") ($src_dir | path join $f)
    }

    let std_mods = ["const", "ascii", "utf", "str", "mem", "sys", "libc", "unicode", "io"]
    mut std_objs = []
    for sm in $std_mods {
        let so = ($obj_dir | path join $"std_($sm).o")
        let _m = (measure_cmd $probe_bin $meta [$edva_bin ($root | path join $"std/($sm).dva") "-c" "--module" $sm "-O2" "--cache" $cache_dir "-o" $so])
        $std_objs = ($std_objs | append $so)
    }

    let user_mods = ["types", "codec", "transform", "index", "query", "report"]

    # 1. Cold modular build of all 7 user modules + link
    mut cold_ns = 0
    mut cold_max_rss = 0
    mut user_objs = []
    mut total_obj_bytes = 0
    mut total_ir_bytes = 0
    for um in $user_mods {
        let uo = ($obj_dir | path join $"($um).o")
        let m = (measure_cmd $probe_bin $meta [$edva_bin ($src_dir | path join $"($um).dva") "-c" "--module" $um "-O2" "--cache" $cache_dir "-o" $uo])
        $cold_ns = $cold_ns + $m.elapsed_ns
        if $m.maxrss_kb > $cold_max_rss { $cold_max_rss = $m.maxrss_kb }
        $user_objs = ($user_objs | append $uo)
        $total_obj_bytes = $total_obj_bytes + (file_size_bytes $uo)
    }
    let main_obj = ($obj_dir | path join "edva.o")
    let m_entry = (measure_cmd $probe_bin $meta [$edva_bin ($src_dir | path join "edva.dva") "-c" "--entry" "-O2" "--cache" $cache_dir "-o" $main_obj])
    $cold_ns = $cold_ns + $m_entry.elapsed_ns
    if $m_entry.maxrss_kb > $cold_max_rss { $cold_max_rss = $m_entry.maxrss_kb }
    $total_obj_bytes = $total_obj_bytes + (file_size_bytes $main_obj)
    # Sum the cached LLVM IR size across the 7 user modules written into $cache_dir
    let cached_lls = (glob $"($cache_dir)/**/*.ll")
    for cll in $cached_lls {
        $total_ir_bytes = $total_ir_bytes + (file_size_bytes $cll)
    }

    let bin_cold = ($inc_dir | path join "app_cold")
    let link_args = (["clang" "-O2" $main_obj] | append $user_objs | append $std_objs | append ["-lm" "-o" $bin_cold])
    let m_link_cold = (measure_cmd $probe_bin $meta $link_args)
    $cold_ns = $cold_ns + $m_link_cold.elapsed_ns
    let cold_run = (measure_cmd $probe_bin $meta [$bin_cold ($items | into string)])

    # 2. Warm / no-op build (all 7 user modules hit warm IR cache + link)
    mut noop_ns = 0
    for um in $user_mods {
        let uo = ($obj_dir | path join $"($um).o")
        let m = (measure_cmd $probe_bin $meta [$edva_bin ($src_dir | path join $"($um).dva") "-c" "--module" $um "-O2" "--cache" $cache_dir "-o" $uo])
        $noop_ns = $noop_ns + $m.elapsed_ns
    }
    let m_entry_noop = (measure_cmd $probe_bin $meta [$edva_bin ($src_dir | path join "edva.dva") "-c" "--entry" "-O2" "--cache" $cache_dir "-o" $main_obj])
    $noop_ns = $noop_ns + $m_entry_noop.elapsed_ns
    let bin_noop = ($inc_dir | path join "app_noop")
    let m_link_noop = (measure_cmd $probe_bin $meta (["clang" "-O2" $main_obj] | append $user_objs | append $std_objs | append ["-lm" "-o" $bin_noop]))
    $noop_ns = $noop_ns + $m_link_noop.elapsed_ns

    # 3. Leaf edit (`report.dva` implementation change: REPORT_BIAS = 1 -> recompile only report.o + edva.o + link)
    let report_path = ($src_dir | path join "report.dva")
    let report_orig = (open --raw $report_path)
    ($report_orig | str replace "REPORT_BIAS = 0" "REPORT_BIAS = 1") | save -f $report_path
    let m_leaf_rep = (measure_cmd $probe_bin $meta [$edva_bin $report_path "-c" "--module" "report" "-O2" "--cache" $cache_dir "-o" ($obj_dir | path join "report.o")])
    let m_leaf_main = (measure_cmd $probe_bin $meta [$edva_bin ($src_dir | path join "edva.dva") "-c" "--entry" "-O2" "--cache" $cache_dir "-o" $main_obj])
    let bin_leaf = ($inc_dir | path join "app_leaf")
    let m_link_leaf = (measure_cmd $probe_bin $meta (["clang" "-O2" $main_obj] | append $user_objs | append $std_objs | append ["-lm" "-o" $bin_leaf]))
    let leaf_ns = $m_leaf_rep.elapsed_ns + $m_leaf_main.elapsed_ns + $m_link_leaf.elapsed_ns
    let leaf_run = (measure_cmd $probe_bin $meta [$bin_leaf ($items | into string)])
    if $leaf_run.stdout == $cold_run.stdout {
        error make { msg: $"leaf edit in report.dva did not change output: ($leaf_run.stdout)" }
    }
    # Restore report.dva
    $report_orig | save -f $report_path

    # 4. Root interface edit (`types.dva` adds a public helper -> all 7 modules recompile + link)
    let types_path = ($src_dir | path join "types.dva")
    let types_orig = (open --raw $types_path)
    [
        $types_orig
        "   schema_version: () => Int"
        "   schema_version = !=> 2"
        ""
    ] | str join "\n" | save -f $types_path
    mut iface_ns = 0
    for um in $user_mods {
        let uo = ($obj_dir | path join $"($um).o")
        let m = (measure_cmd $probe_bin $meta [$edva_bin ($src_dir | path join $"($um).dva") "-c" "--module" $um "-O2" "--cache" $cache_dir "-o" $uo])
        $iface_ns = $iface_ns + $m.elapsed_ns
    }
    let m_entry_iface = (measure_cmd $probe_bin $meta [$edva_bin ($src_dir | path join "edva.dva") "-c" "--entry" "-O2" "--cache" $cache_dir "-o" $main_obj])
    $iface_ns = $iface_ns + $m_entry_iface.elapsed_ns
    let bin_iface = ($inc_dir | path join "app_iface")
    let m_link_iface = (measure_cmd $probe_bin $meta (["clang" "-O2" $main_obj] | append $user_objs | append $std_objs | append ["-lm" "-o" $bin_iface]))
    $iface_ns = $iface_ns + $m_link_iface.elapsed_ns
    let iface_run = (measure_cmd $probe_bin $meta [$bin_iface ($items | into string)])
    if $iface_run.stdout != $cold_run.stdout {
        error make { msg: $"interface edit output mismatch: '($iface_run.stdout)' != '($cold_run.stdout)'" }
    }

    {
        modules: 7,
        verified_output: $cold_run.stdout,
        cold_modular_ms: ((($cold_ns | into float) / 1000000.0) | math round --precision 3),
        warm_noop_ms: ((($noop_ns | into float) / 1000000.0) | math round --precision 3),
        leaf_edit_ms: ((($leaf_ns | into float) / 1000000.0) | math round --precision 3),
        interface_edit_ms: ((($iface_ns | into float) / 1000000.0) | math round --precision 3),
        peak_compile_rss_kb: $cold_max_rss,
        total_ir_bytes: $total_ir_bytes,
        total_object_bytes: $total_obj_bytes,
        binary_bytes: (file_size_bytes $bin_cold)
    }
}

def main [
    --smoke,
    --runs: int = 5,
    --save: string = "",
    --check-regression: float = 0.0,
    --baseline: string = "benchmarks/results/baseline_sholl.json"
] {
    let root = (repo_root)
    let eff_runs = if $smoke { 2 } else { $runs }
    let log_n = if $smoke { 2000 } else { 20000 }
    let http_n = if $smoke { 4000 } else { 40000 }
    let kern_n = if $smoke { 50000 } else { 400000 }
    let ccg_n = if $smoke { 1600 } else { 16000 }
    let mma_n = if $smoke { 1200 } else { 12000 }

    let tmp_dir = (mktemp -d -t edva_bench_XXXXXX)
    let report = try {
        let probe_bin = (build_probe $tmp_dir)
        let env_info = (collect_env $root)

        let b1 = (bench_workload "cli_log_json" $log_n
            ($root | path join "benchmarks/cli_log_json/edva.dva") "" ""
            ($root | path join "benchmarks/cli_log_json/c.c") false
            $env_info $probe_bin $root $tmp_dir $eff_runs)

        let b2 = (bench_workload "server_http_router" $http_n
            ($root | path join "benchmarks/server_http_router/edva.dva") "" ""
            ($root | path join "benchmarks/server_http_router/c.c") false
            $env_info $probe_bin $root $tmp_dir $eff_runs)

        let b3 = (bench_workload "wasm_numeric_kernel" $kern_n
            ($root | path join "benchmarks/wasm_numeric_kernel/edva.dva")
            ($root | path join "benchmarks/wasm_numeric_kernel/edva_wasm.dva") "kernel="
            ($root | path join "benchmarks/wasm_numeric_kernel/c.c") false
            $env_info $probe_bin $root $tmp_dir $eff_runs)

        let b4 = (bench_workload "collections_closures_generics" $ccg_n
            ($root | path join "benchmarks/collections_closures_generics/edva.dva")
            ($root | path join "benchmarks/collections_closures_generics/edva_wasm.dva") "pipeline="
            ($root | path join "benchmarks/collections_closures_generics/c.c") true
            $env_info $probe_bin $root $tmp_dir $eff_runs)

        let b5 = (bench_workload "multi_module_app" $mma_n
            ($root | path join "benchmarks/multi_module_app/edva.dva") "" ""
            ($root | path join "benchmarks/multi_module_app/c.c") true
            $env_info $probe_bin $root $tmp_dir $eff_runs)

        let inc = (bench_incremental_builds $probe_bin $root $tmp_dir $mma_n)

        rm -rf $tmp_dir
        {
            mode: (if $smoke { "smoke" } else { "full" }),
            runs: $eff_runs,
            environment: $env_info,
            incremental_build: $inc,
            workloads: [$b1, $b2, $b3, $b4, $b5]
        }
    } catch {|e|
        rm -rf $tmp_dir
        error make { msg: $e.msg }
    }

    if $save != "" {
        let save_path = if ($save | str starts-with "/") { $save } else { ($root | path join $save) }
        mkdir ($save_path | path dirname)
        $report | to json --indent 2 | save -f $save_path
    }

    for w in $report.workloads {
        print $"=== ($w.workload) [items=($w.items)] -> ($w.verified_output) ==="
        for lang in ($w.targets | columns) {
            let rec = ($w.targets | get $lang)
            if $rec.status != "ok" {
                print $"  ($lang): ($rec.status)"
            } else {
                let rt = $rec.runtime
                let extra = if ($rec | columns | any {|c| $c == "ir_emit_ms"}) {
                    $" | ir=($rec.ir_emit_ms)ms warm=($rec.warm_build_ms)ms | ir_sz=($rec.ir_bytes)B obj_sz=($rec.object_bytes)B"
                } else {
                    ""
                }
                print $"  ($lang): cold=($rec.cold_build_ms)ms($extra) | bin=($rec.binary_bytes)B | p50=($rt.p50_ms)ms p95=($rt.p95_ms)ms p99=($rt.p99_ms)ms cov=($rt.cov_pct)% thresh=($rt.recommended_threshold_pct)% | rss=($rt.peak_rss_kb)KB | rate=($rt.throughput_per_s)/s"
            }
        }
    }

    let inc = $report.incremental_build
    print $"=== incremental_build [modules=($inc.modules)] -> ($inc.verified_output) ==="
    print $"  modular: cold=($inc.cold_modular_ms)ms | noop=($inc.warm_noop_ms)ms | leaf_edit=($inc.leaf_edit_ms)ms | interface_edit=($inc.interface_edit_ms)ms | ir_sz=($inc.total_ir_bytes)B obj_sz=($inc.total_object_bytes)B bin=($inc.binary_bytes)B | rss=($inc.peak_compile_rss_kb)KB"

    if $check_regression > 0.0 and not $smoke {
        let base_path = if ($baseline | str starts-with "/") { $baseline } else { ($root | path join $baseline) }
        if ($base_path | path exists) {
            let base = (open $base_path)
            for w in $report.workloads {
                let matches = ($base.workloads | where workload == $w.workload)
                if ($matches | is-not-empty) {
                    let bw = ($matches | first)
                    let cur_p50 = ($w.targets.edva.runtime.p50_ns | into float)
                    let base_p50 = ($bw.targets.edva.runtime.p50_ns | into float)
                    let cur_cold = ($w.targets.edva.cold_build_ms | into float)
                    let base_cold = ($bw.targets.edva.cold_build_ms | into float)
                    let eff_thresh = if ($bw.targets.edva.runtime | columns | any {|c| $c == "recommended_threshold_pct"}) {
                        [($check_regression | into float), ($bw.targets.edva.runtime.recommended_threshold_pct | into float)] | math max
                    } else {
                        $check_regression
                    }
                    if $base_p50 > 0.0 and (($cur_p50 - $base_p50) / $base_p50) * 100.0 > $eff_thresh {
                        error make { msg: $"runtime p50 regression on ($w.workload): ($cur_p50)ns vs baseline ($base_p50)ns (limit ($eff_thresh)%)" }
                    }
                    if $base_cold > 0.0 and (($cur_cold - $base_cold) / $base_cold) * 100.0 > $eff_thresh {
                        error make { msg: $"cold build regression on ($w.workload): ($cur_cold)ms vs baseline ($base_cold)ms (limit ($eff_thresh)%)" }
                    }
                }
            }
            print $"PASS regression check threshold=($check_regression)%"
        }
    }
}
