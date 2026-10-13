let folder = $env.FILE_PWD
let report = (open --raw ($folder | path join "report.md"))
let links = ($report | parse -r '\]\(([^)]+)\)' | get capture0 | where { |p| not ($p | str starts-with 'https://') })
let missing = ($links | where { |p| not ($folder | path join $p | path exists) })
let root = ($folder | path dirname | path dirname)
let before = (open ($folder | path join "build.json"))
let same = ((open --raw ($root | path join "edva") | hash sha256) == $before.binary_sha256)
{local_links: ($links | length), missing: $missing, compiler_unchanged: $same, regression_exit: (open --raw ($folder | path join "regression.exit") | str trim)} | to json | print
if ($missing | length) > 0 or not $same { exit 1 }
