let folder = $env.FILE_PWD
let base = 'https://gitea.gde.to/api/v1'
let login = (open /home/ike/.config/tea/config.yml | get logins | where name == 'leandra' | first)
let headers = [Authorization $'token ($login.token)']
let repo = 'ike/dva'
let milestone_title = 'Edva correctness and documentation audit follow-ups — 2026-10-13'
let milestone_desc = 'Follow-up work from audits/2026-10-13/report.md (compiler edva 1.1.1+da353f3). 18 findings covering codegen, JSON, formatting, I/O, networking, target layouts, documentation/LLM drift, and sorting performance.'
let milestones_url = $'($base)/repos/($repo)/milestones?state=all&limit=100'
let found = (http get --headers $headers $milestones_url | where title == $milestone_title)
let milestone = if ($found | is-empty) {
  http post --headers $headers --content-type application/json $'($base)/repos/($repo)/milestones' {title: $milestone_title, description: $milestone_desc}
} else { $found | first }
let labels = (http get --headers $headers $'($base)/repos/($repo)/labels?limit=100')
let bug_id = ($labels | where name == 'bug' | first | get id)
let libs_id = ($labels | where name == 'libs' | first | get id)
let enh_id = ($labels | where name == 'enhancement' | first | get id)
let drafts = (open ($folder | path join 'issue-drafts.json'))
let existing = (1..3 | each { |page| http get --headers $headers $'($base)/repos/($repo)/issues?state=all&type=issues&limit=100&page=($page)' } | flatten)
mut published = []
for draft in $drafts {
  let prior = ($existing | where title == $draft.title)
  let labels_for_issue = if $draft.finding == 18 { [$enh_id $libs_id] } else if $draft.finding in [14 15 16 17] { [$bug_id] } else { [$bug_id $libs_id] }
  let result = if ($prior | is-not-empty) {
    {number: (($prior | first).number), html_url: (($prior | first).html_url), title: $draft.title, finding: $draft.finding, created: false}
  } else {
    let created = (http post --headers $headers --content-type application/json $'($base)/repos/($repo)/issues' {title: $draft.title, body: $draft.body, milestone: $milestone.id, labels: $labels_for_issue})
    {number: $created.number, html_url: $created.html_url, title: $created.title, finding: $draft.finding, created: true}
  }
  $published = ($published | append $result)
  {milestone: {id: $milestone.id, title: $milestone.title}, issues: $published} | to json | save -f ($folder | path join 'gitea-publication.json')
  print ($result | to json -r)
}
