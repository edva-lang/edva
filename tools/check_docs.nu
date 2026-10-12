#!/usr/bin/env nu
# tools/check_docs.nu — validates documentation evidence, generated artifacts,
# and code examples.

def root [] {
    ($env.FILE_PWD | path dirname)
}

def check_evidence [root_dir: string] {
    let qmd_files = (glob ($root_dir | path join "doc/**/*.qmd"))
    mut missing = []
    mut total_anchors = 0

    for file in $qmd_files {
        let content = (open --raw $file)
        if not ($content | str starts-with "---") {
            continue
        }
        let parts = ($content | split row "---")
        if ($parts | length) < 3 {
            continue
        }
        let frontmatter = ($parts | get 1)
        let ev_lines = ($frontmatter | lines | where { |l| $l =~ '^\s*evidence:' })
        if ($ev_lines | length) == 0 {
            continue
        }

        # Extract all `path` references inside backticks
        let matches = ($content | parse -r '`([^`\n]+)`')
        # Only take matches in the frontmatter portion
        let fm_matches = ($frontmatter | parse -r '`([^`\n]+)`')
        for row in $fm_matches {
            let raw = $row.capture0
            # Strip anchors like #L12, :10-20, §1.6
            let clean = (
                $raw
                | split row "#" | first
                | split row ":" | first
                | split row " §" | first
                | str trim
            )
            if ($clean | is-empty) {
                continue
            }
            $total_anchors = $total_anchors + 1
            let target = ($root_dir | path join $clean)
            if ($clean | str contains "*") {
                let glob_matches = (glob $target)
                if ($glob_matches | length) == 0 {
                    $missing = ($missing | append {
                        page: ($file | path relative-to $root_dir),
                        raw: $raw,
                        resolved: $clean,
                    })
                }
            } else {
                if not ($target | path exists) {
                    $missing = ($missing | append {
                        page: ($file | path relative-to $root_dir),
                        raw: $raw,
                        resolved: $clean,
                    })
                }
            }
        }
    }

    {
        total_pages: ($qmd_files | length),
        total_anchors: $total_anchors,
        missing: $missing,
    }
}

def check_doc_examples [root_dir: string, compile: bool] {
    let edva = ($root_dir | path join "edva")
    let can_compile = ($compile and ($edva | path exists))
    let qmd_files = (glob ($root_dir | path join "doc/**/*.qmd"))

    mut complete_count = 0
    mut partial_count = 0
    mut negative_count = 0
    mut failed_examples = []

    for file in $qmd_files {
        let content = (open --raw $file)
        let blocks = ($content | parse -r '(?s)```dva([^\n]*)\n(.*?)```')
        for block in $blocks {
            let header = ($block.capture0 | str trim)
            let body = $block.capture1

            let is_partial = (
                ($header =~ '\bpartial\b') or
                ($header =~ '\bskip\b') or
                ($body =~ '//\s*partial') or
                ($body =~ '//\s*fragment')
            )
            let is_negative = (
                ($header =~ 'expected-error') or
                ($body =~ '//\s*expected-error:\s*([A-Za-z0-9]+)')
            )
            let is_complete = (
                ($header =~ '\brun\b') or
                ($header =~ '\bcomplete\b') or
                ($body =~ '//\s*complete')
            )

            if $is_negative {
                $negative_count = $negative_count + 1
                if $can_compile {
                    # Extract expected error code
                    let err_match = ($body | parse -r '//\s*expected-error:\s*([A-Za-z0-9]+)')
                    if ($err_match | length) > 0 {
                        let expected = ($err_match | first | get capture0)
                        let tmp = (mktemp -t doc_ex_XXXXXX.dva)
                        $body | save -f $tmp
                        let res = (do { ^$edva -ir $tmp } | complete)
                        rm -f $tmp
                        let combined = ($res.stdout + "\n" + $res.stderr)
                        if not ($combined | str contains $expected) {
                            $failed_examples = ($failed_examples | append {
                                page: ($file | path relative-to $root_dir),
                                expected: $expected,
                                output: $combined,
                            })
                        }
                    }
                }
            } else if $is_partial {
                $partial_count = $partial_count + 1
            } else if $is_complete {
                $complete_count = $complete_count + 1
                if $can_compile {
                    let tmp = (mktemp -t doc_ex_XXXXXX.dva)
                    $body | save -f $tmp
                    let res = (do { ^$edva -ir $tmp } | complete)
                    rm -f $tmp
                    if $res.exit_code != 0 {
                        $failed_examples = ($failed_examples | append {
                            page: ($file | path relative-to $root_dir),
                            expected: "clean compile",
                            output: ($res.stdout + "\n" + $res.stderr),
                        })
                    }
                }
            }
        }
    }

    {
        complete: $complete_count,
        partial: $partial_count,
        negative: $negative_count,
        failed: $failed_examples,
    }
}

def main [--compile-examples] {
    let root_dir = (root)
    print "Validating documentation evidence anchors..."
    let ev = (check_evidence $root_dir)
    print $"  Scanned ($ev.total_pages) pages, ($ev.total_anchors) anchors."

    if ($ev.missing | length) > 0 {
        print -e $"Error: ($ev.missing | length) missing evidence anchors found:"
        for m in $ev.missing {
            print -e $"  ($m.page): `($m.raw)` -> ($m.resolved)"
        }
        exit 1
    }
    print "  All evidence anchors resolved successfully."

    print "Validating operator & LLM table sync..."
    let opgen_script = ($root_dir | path join "tools/opgen/main.nu")
    let op_res = (do { ^nu $opgen_script --check } | complete)
    if $op_res.exit_code != 0 {
        print -e $op_res.stderr
        print -e $op_res.stdout
        exit 1
    }
    print "  Operator tables in sync."

    print "Checking documentation code examples..."
    let ex = (check_doc_examples $root_dir $compile_examples)
    print $"  Examples: ($ex.complete) complete, ($ex.partial) partial, ($ex.negative) negative."

    if ($ex.failed | length) > 0 {
        print -e $"Error: ($ex.failed | length) code examples failed validation:"
        for f in $ex.failed {
            print -e $"  ($f.page): expected ($f.expected)\n($f.output)"
        }
        exit 1
    }
    print "Documentation checks passed successfully."
}
