let folder = $env.FILE_PWD
let root = $folder | path dirname | path dirname
let work = mktemp -d -t edva_closures_XXXXXX
ln -s ($root | path join std) ($work | path join std)
let results = (glob ($folder | path join 'reproductions/*.dva') | sort | each { |source|
 let name = $source | path parse | get stem
 let comp = (do { cd $work; timeout 30 ($root | path join edva) $source } | complete)
 let run = if $comp.exit_code == 0 { do { timeout 5 ($work | path join $name) } | complete } else { {exit_code: -999, stdout: '', stderr: ''} }
 let row = {name: $name, compile: $comp, run: $run}
 print ($row | to json -r)
 $row
})
$results | to json | save -f ($folder | path join rerun-results.json)
print ('Binaries and IR: ' + $work)
