let folder = $env.FILE_PWD
let samples = ([1000 2000 4000 8000 16000 128000] | each { |n|
  let trials = (1..3 | each { |trial|
    let start = (date now)
    let r = (do { ^timeout 15 ($folder | path join "results/sort_scale/probe") $n } | complete)
    {milliseconds: (((date now) - $start) / 1ms), exit: $r.exit_code, stdout: $r.stdout}
  })
  {n: $n, median_ms: ($trials.milliseconds | math median), trials: $trials}
})
$samples | to json | save -f ($folder | path join "sort-benchmark.json")
$samples | reject trials | print
