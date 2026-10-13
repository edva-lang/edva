let folder = $env.FILE_PWD
let primary = (open ($folder | path join "probe-results.json"))
let extra = [
  {case: "net_socket_failure", compile_exit: 0, run_exit: 124}
  {case: "io_short_write", compile_exit: 0, run_exit: 0}
  {case: "doc_http_example", compile_exit: 0, run_exit: 0}
  {case: "target_thumb", compile_exit: 0, run_exit: 0}
]
let overrides = ($extra | each { |row|
  $row | insert stdout (open --raw ($folder | path join "results" $row.case "run.stdout")) | insert stderr (open --raw ($folder | path join "results" $row.case "run.stderr"))
})
let combined = ($primary | where { |row| $row.case not-in $extra.case } | append $overrides | sort-by case)
$combined | to json | save -f ($folder | path join "final-results.json")
{probes: ($combined | length), compiled: ($combined | where compile_exit == 0 | length), compile_rejected: ($combined | where compile_exit != 0 | length)} | print
let root = ($folder | path dirname | path dirname)
let initial = (open ($folder | path join "build.json"))
let current = (open --raw ($root | path join "edva") | hash sha256)
{binary_sha256_after: $current, unchanged: ($current == $initial.binary_sha256)} | to json | save -f ($folder | path join "build-after.json")
