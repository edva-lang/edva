let folder = ($env.FILE_PWD)
let root = ($folder | path dirname | path dirname)
let samples = ([1000 2000 4000 8000 16000] | each { |n|
  let trials = (1..3 | each { |trial|
    let start = (date now)
    let r = (do { ^timeout 15 ($folder | path join "results/sort_scale/probe") $n } | complete)
    {milliseconds: (((date now) - $start) / 1ms), exit: $r.exit_code, stdout: $r.stdout}
  })
  {n: $n, median_ms: ($trials.milliseconds | math median), trials: $trials}
})
$samples | to json | save -f ($folder | path join "sort-benchmark.json")
$samples | reject trials | print
let inventory = (glob ($root | path join "doc/**/*.qmd") | each { |file|
  open --raw $file | parse -r '(?s)```dva([^\n]*)\n(.*?)```' | each { |block|
    let header = $block.capture0
    let body = $block.capture1
    let kind = if $header =~ 'expected-error' or $body =~ '//\s*expected-error:\s*([A-Za-z0-9]+)' { 'negative' } else if $header =~ '\b(partial|skip)\b' or $body =~ '//\s*(partial|fragment)' { 'partial' } else if $header =~ '\b(run|complete)\b' or $body =~ '//\s*complete' { 'complete' } else { 'unmarked' }
    {page: ($file | path relative-to $root), kind: $kind}
  }
} | flatten)
$inventory | to json | save -f ($folder | path join "documentation-inventory.json")
$inventory | group-by kind | transpose kind blocks | each { |row| {kind: $row.kind, count: ($row.blocks | length)} } | print
