def main [--previous, --filter: string = ""] {
  let root = ($env.FILE_PWD | path dirname | path dirname)
  let folder = if $previous { $root | path join "audits/2026-10-12/reproductions" } else { $root | path join "audits/2026-10-13/reproductions" }
  let results = (glob ($folder | path join "*/[mp]*.dva") | where { |p| $filter == "" or $p =~ $filter } | each { |source|
    let case_dir = ($source | path dirname)
    let case_name = ($case_dir | path basename)
    let out_dir = ($root | path join "audits/2026-10-13" (if $previous { "previous" } else { "results" }) $case_name)
    mkdir $out_dir
    let std_link = ($out_dir | path join "std")
    if not ($std_link | path exists) { ^ln -s ($root | path join "std") $std_link }
    let compiled = (do { cd $out_dir; ^prlimit --as=4294967296 -- timeout 45 ($root | path join "edva") $source } | complete)
    $compiled.stdout | save -f ($out_dir | path join "compile.stdout")
    $compiled.stderr | save -f ($out_dir | path join "compile.stderr")
    let binary = ($out_dir | path join ($source | path parse | get stem))
    let ran = if $compiled.exit_code == 0 and ($binary | path exists) {
      do { ^prlimit --as=4294967296 -- timeout 5 $binary } | complete
    } else { {stdout: "", stderr: "", exit_code: -999} }
    $ran.stdout | save -f ($out_dir | path join "run.stdout")
    $ran.stderr | save -f ($out_dir | path join "run.stderr")
    let row = {case: $case_name, compile_exit: $compiled.exit_code, run_exit: $ran.exit_code, stdout: $ran.stdout, stderr: $ran.stderr}
    print ($row | to json -r)
    $row
  })
  $results | to json | save -f ($root | path join "audits/2026-10-13" (if $previous { "previous-results.json" } else if $filter != "" { "supplemental-results.json" } else { "probe-results.json" }))
}
