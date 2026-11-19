#!/usr/bin/env nu
# tools/bench.nu — Reproducible workload benchmarks comparing Edva and Clang (C).
#
# Measures compilation (cold, IR-only, clang link, warm cached build), binary size,
# peak RSS memory, throughput, latency distribution (min/p50/p95/p99/max), and
# cross-target output equivalence (native + wasm32-unknown-unknown via Node).

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
            edva: { version: $edva_ver, flags: "-O2", installed: true },
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
    c_src: string,
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
    let edva_ir_out = ($wdir | path join $"($name)_edva.ll")

    let cold_m = (measure_cmd $probe_bin $meta [$edva_bin_path $edva_src "-O2" "--cache" $cache_dir "-o" $edva_out])
    let ir_m = (measure_cmd $probe_bin $meta [$edva_bin_path $edva_src "-O2" "--ir" "--no-cache" "-o" $edva_ir_out])
    let warm_m = (measure_cmd $probe_bin $meta [$edva_bin_path $edva_src "-O2" "--cache" $cache_dir "-o" $edva_out_warm])
    let edva_run = (measure_runs $probe_bin $meta [$edva_out ($items | into string)] $runs $items)

    let edva_rec = {
        status: "ok",
        cold_build_ms: $cold_m.elapsed_ms,
        ir_emit_ms: $ir_m.elapsed_ms,
        warm_build_ms: $warm_m.elapsed_ms,
        binary_bytes: (file_size_bytes $edva_out),
        runtime: $edva_run
    }

    mut langs = { edva: $edva_rec }
    let expected_out = $edva_run.output

    # Clang (C)
    if $env_info.toolchains.clang.installed and ($c_src | path exists) {
        let clang_out = ($wdir | path join $"($name)_clang")
        let c_build = (measure_cmd $probe_bin $meta ["clang" "-O2" $c_src "-o" $clang_out])
        let c_run = (measure_runs $probe_bin $meta [$clang_out ($items | into string)] $runs $items)
        if $c_run.output != $expected_out {
            error make { msg: $"($name) checksum mismatch clang vs edva: '($c_run.output)' != '($expected_out)'" }
        }
        $langs = ($langs | insert clang {
            status: "ok",
            cold_build_ms: $c_build.elapsed_ms,
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
   console.log("kernel=" + r.toString());
}).catch(err => {
   console.error(err);
   process.exit(1);
});
' | save -f $wasm_js
        let n_str = ($items | into string)
        let w_run = (measure_runs $probe_bin $meta ["node" "--disable-wasm-trap-handler" $wasm_js $wasm_out $n_str] $runs $items)
        if $w_run.output != $expected_out {
            error make { msg: $"($name) checksum mismatch edva_wasm32 vs native: '($w_run.output)' != '($expected_out)'" }
        }
        $langs = ($langs | insert edva_wasm32 {
            status: "ok",
            cold_build_ms: $w_build.elapsed_ms,
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
            let cw_run = (measure_runs $probe_bin $meta ["node" "--disable-wasm-trap-handler" $wasm_js $c_wasm_out $n_str] $runs $items)
            if $cw_run.output != $expected_out {
                error make { msg: $"($name) checksum mismatch clang_wasm32 vs native: '($cw_run.output)' != '($expected_out)'" }
            }
            $langs = ($langs | insert clang_wasm32 {
                status: "ok",
                cold_build_ms: ((($cw_c.elapsed_ns + $cw_ld.elapsed_ns | into float) / 1000000.0) | math round --precision 3),
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

    let tmp_dir = (mktemp -d -t edva_bench_XXXXXX)
    let report = try {
        let probe_bin = (build_probe $tmp_dir)
        let env_info = (collect_env $root)

        let b1 = (bench_workload "cli_log_json" $log_n
            ($root | path join "benchmarks/cli_log_json/edva.dva") ""
            ($root | path join "benchmarks/cli_log_json/c.c")
            $env_info $probe_bin $root $tmp_dir $eff_runs)

        let b2 = (bench_workload "server_http_router" $http_n
            ($root | path join "benchmarks/server_http_router/edva.dva") ""
            ($root | path join "benchmarks/server_http_router/c.c")
            $env_info $probe_bin $root $tmp_dir $eff_runs)

        let b3 = (bench_workload "wasm_numeric_kernel" $kern_n
            ($root | path join "benchmarks/wasm_numeric_kernel/edva.dva")
            ($root | path join "benchmarks/wasm_numeric_kernel/edva_wasm.dva")
            ($root | path join "benchmarks/wasm_numeric_kernel/c.c")
            $env_info $probe_bin $root $tmp_dir $eff_runs)

        rm -rf $tmp_dir
        {
            mode: (if $smoke { "smoke" } else { "full" }),
            runs: $eff_runs,
            environment: $env_info,
            workloads: [$b1, $b2, $b3]
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
                    $" | ir=($rec.ir_emit_ms)ms warm=($rec.warm_build_ms)ms"
                } else {
                    ""
                }
                print $"  ($lang): cold=($rec.cold_build_ms)ms($extra) | bin=($rec.binary_bytes)B | p50=($rt.p50_ms)ms p95=($rt.p95_ms)ms p99=($rt.p99_ms)ms | rss=($rt.peak_rss_kb)KB | rate=($rt.throughput_per_s)/s"
            }
        }
    }

    if $check_regression > 0.0 and not $smoke {
        let base_path = if ($baseline | str starts-with "/") { $baseline } else { ($root | path join $baseline) }
        if ($base_path | path exists) {
            let base = (open $base_path)
            for w in $report.workloads {
                let bw = ($base.workloads | where workload == $w.workload | first)
                let cur_p50 = ($w.targets.edva.runtime.p50_ns | into float)
                let base_p50 = ($bw.targets.edva.runtime.p50_ns | into float)
                let cur_cold = ($w.targets.edva.cold_build_ms | into float)
                let base_cold = ($bw.targets.edva.cold_build_ms | into float)
                if $base_p50 > 0.0 and (($cur_p50 - $base_p50) / $base_p50) * 100.0 > $check_regression {
                    error make { msg: $"runtime p50 regression on ($w.workload): ($cur_p50)ns vs baseline ($base_p50)ns" }
                }
                if $base_cold > 0.0 and (($cur_cold - $base_cold) / $base_cold) * 100.0 > $check_regression {
                    error make { msg: $"cold build regression on ($w.workload): ($cur_cold)ms vs baseline ($base_cold)ms" }
                }
            }
            print $"PASS regression check threshold=($check_regression)%"
        }
    }
}
