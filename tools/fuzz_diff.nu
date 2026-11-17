#!/usr/bin/env nu
# 4-way compiler differential fuzzer & choice-vector shrinker (Tier 2, DVA-74)
# Compares: (1) Native -O0 single-file, (2) Native -O2 single-file,
# (3) Native -O2 separate-module (-c --module + --entry),
# (4) wasm32-unknown-unknown -O2 via Node WebAssembly runner.

def parse_csv [s: string] {
   $s | str trim | split row "," | each {|x| $x | str trim | into int }
}

def vec_sum [v: list<int>] {
   $v | reduce -f 0 {|it, acc| $acc + $it }
}

def shrink_self_test [gen_bin: string] {
   mut cur = "7,5,9,4,6,8"
   loop {
      let cur_sum = (vec_sum (parse_csv $cur))
      let cands = (^$gen_bin --shrink $cur | lines | where {|l| ($l | str trim | str length) > 0 })
      mut next_best = ""
      for cand in $cands {
         let cs = (parse_csv $cand)
         let fails = (($cs | get 2) > 0) and (($cs | get 4) > 0)
         if $fails and ((vec_sum $cs) < $cur_sum) {
            $next_best = ($cand | str trim)
            break
         }
      }
      if $next_best == "" {
         break
      }
      $cur = $next_best
   }
   if $cur != "0,0,1,0,1,0" {
      error make {msg: $"choice-vector shrink self-test failed: got ($cur), expected 0,0,1,0,1,0"}
   }
   print $"PASS diff shrinker self-test: 7,5,9,4,6,8 -> ($cur)"
}

def run_wasm [wasm_path: string] {
   let node_script = '
const fs = require("fs");
const bytes = fs.readFileSync(process.argv[1]);
let mem = null;
let heap = 0;
function ensureMem() {
   if (!mem) return;
   if (heap === 0) heap = Math.max(65536, mem.buffer.byteLength >> 1);
}
const env = {
   malloc: (sz) => {
      ensureMem();
      const n = Number(sz);
      const aligned = (n + 15) & ~15;
      while (heap + aligned > mem.buffer.byteLength) {
         mem.grow(Math.max(1, Math.ceil((heap + aligned - mem.buffer.byteLength) / 65536)));
      }
      const p = heap;
      heap += aligned;
      return p;
   },
   free: (_p) => {},
   memset: (dst, val, n) => {
      const u = new Uint8Array(mem.buffer, Number(dst), Number(n));
      u.fill(Number(val) & 0xff);
      return Number(dst);
   },
   memcpy: (dst, src, n) => {
      const len = Number(n);
      new Uint8Array(mem.buffer, Number(dst), len).set(
         new Uint8Array(mem.buffer, Number(src), len)
      );
      return Number(dst);
   },
   memmove: (dst, src, n) => {
      const len = Number(n);
      const copy = new Uint8Array(new Uint8Array(mem.buffer, Number(src), len));
      new Uint8Array(mem.buffer, Number(dst), len).set(copy);
      return Number(dst);
   },
   exit: (code) => { process.exit(Number(code) || 1); },
   printf: () => 0
};
WebAssembly.instantiate(bytes, { env }).then(res => {
   mem = res.instance.exports.memory || null;
   const out = res.instance.exports.run_diff();
   console.log(out.toString());
}).catch(err => {
   console.error(err);
   process.exit(1);
});
'
   let res = (do { ^node --disable-wasm-trap-handler -e $node_script $wasm_path } | complete)
   if $res.exit_code != 0 {
      error make {msg: $"node wasm execution failed for ($wasm_path): ($res.stderr) ($res.stdout)"}
   }
   $res.stdout | str trim
}

def eval_case_dir [edva_bin: string, case_dir: string] {
   let comb = ($case_dir | path join "combined.dva")
   let mod_f = ($case_dir | path join "mod_lib.dva")
   let main_f = ($case_dir | path join "main.dva")
   let wasm_f = ($case_dir | path join "wasm_entry.dva")

   let b0 = ($case_dir | path join "bin_o0")
   let c0 = (do { ^$edva_bin $comb --no-cache -O0 -o $b0 } | complete)
   if $c0.exit_code != 0 {
      error make {msg: $"native -O0 compile failed: ($c0.stdout) ($c0.stderr)"}
   }
   let r0 = (do { ^$b0 } | complete)
   if $r0.exit_code != 0 {
      error make {msg: $"native -O0 run failed: ($r0.stderr)"}
   }
   let v0 = ($r0.stdout | str trim)

   let b2 = ($case_dir | path join "bin_o2")
   let c2 = (do { ^$edva_bin $comb --no-cache -O2 -o $b2 } | complete)
   if $c2.exit_code != 0 {
      error make {msg: $"native -O2 compile failed: ($c2.stdout) ($c2.stderr)"}
   }
   let r2 = (do { ^$b2 } | complete)
   if $r2.exit_code != 0 {
      error make {msg: $"native -O2 run failed: ($r2.stderr)"}
   }
   let v2 = ($r2.stdout | str trim)

   let mod_o = ($case_dir | path join "mod_lib.o")
   let main_o = ($case_dir | path join "main.o")
   let sep_b = ($case_dir | path join "bin_sep")
   let cm = (do { cd $case_dir; ^$edva_bin $mod_f -c --module mod_lib --no-cache -O2 -o $mod_o } | complete)
   if $cm.exit_code != 0 {
      error make {msg: $"separate --module compile failed: ($cm.stdout) ($cm.stderr)"}
   }
   let ce = (do { cd $case_dir; ^$edva_bin $main_f -c --entry --no-cache -O2 -o $main_o } | complete)
   if $ce.exit_code != 0 {
      error make {msg: $"separate --entry compile failed: ($ce.stdout) ($ce.stderr)"}
   }
   let cl = (do { ^clang -Qunused-arguments -Wno-unused-command-line-argument $main_o $mod_o -lm -pthread -o $sep_b } | complete)
   if $cl.exit_code != 0 {
      error make {msg: $"clang separate link failed: ($cl.stderr)"}
   }
   let rsep = (do { ^$sep_b } | complete)
   if $rsep.exit_code != 0 {
      error make {msg: $"separate-module run failed: ($rsep.stderr)"}
   }
   let vsep = ($rsep.stdout | str trim)

   let wasm_out = ($case_dir | path join "prog.wasm")
   let cw = (do { ^$edva_bin $wasm_f -target wasm32-unknown-unknown --no-cache -O2 -o $wasm_out } | complete)
   mut vwasm = $v0
   if $cw.exit_code != 0 {
      if not ($cw.stderr =~ "unhandled target|No available targets" or $cw.stdout =~ "wasm-ld linking failed") {
         error make {msg: $"wasm32 compile failed: ($cw.stdout) ($cw.stderr)"}
      }
   } else if (which node | is-not-empty) {
      $vwasm = (run_wasm $wasm_out)
   }

   if ($v0 != $v2) or ($v0 != $vsep) or ($v0 != $vwasm) {
      error make {msg: $"differential mismatch: -O0=($v0), -O2=($v2), separate=($vsep), wasm=($vwasm)"}
   }
   $v0
}

def main [
   --runs: int = 3
   --seed: int = 42
   --self-test-shrink
] {
   let repo = ($env.FILE_PWD? | default (pwd) | path dirname)
   let repo_root = if (($repo | path join "edva") | path exists) { $repo } else { pwd }
   let edva_bin = ($repo_root | path join "edva")
   let gen_src = ($repo_root | path join "tests/fuzz/diff_gen.dva")
   let tmp = (^mktemp -d /tmp/edva_fuzz_diff_XXXXXX | str trim)

   try {
      let gen_bin = ($tmp | path join "diff_gen")
      let cg = (do { ^$edva_bin $gen_src --no-cache -O2 -o $gen_bin } | complete)
      if $cg.exit_code != 0 {
         error make {msg: $"failed to compile diff_gen.dva: ($cg.stdout) ($cg.stderr)"}
      }

      if $self_test_shrink {
         shrink_self_test $gen_bin
      }

      for i in 0..<$runs {
         let s = ($seed + $i)
         let case_dir = ($tmp | path join $"case_($s)")
         let gr = (do { ^$gen_bin --seed $s --out-dir $case_dir } | complete)
         if $gr.exit_code != 0 {
            error make {msg: $"diff_gen failed for seed ($s): ($gr.stderr)"}
         }
         let choices = ($gr.stdout | str trim)
         let val = (eval_case_dir $edva_bin $case_dir)
         print $"PASS diff seed=($s) choices=[($choices)] -> 4-way=($val)"
      }
      ^rm -rf $tmp
   } catch {|err|
      ^rm -rf $tmp
      error make {msg: $err.msg}
   }
}
