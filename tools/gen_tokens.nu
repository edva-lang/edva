#!/usr/bin/env nu
# Emits the Odin `TokenType` enum and the dva `TokKind` enum from
# selfhost/tokens.txt (the single source of truth for token-kind ordinals).
# Run before building: the generator rewrites the block between the
# "// BEGIN tokens.txt" / "// END tokens.txt" markers in each target file.

const START_MARKER = "// BEGIN tokens.txt"
const END_MARKER = "// END tokens.txt"

def read_kinds [tokens_path: string] {
    if not ($tokens_path | path exists) {
        print -e $"gen_tokens: file not found: ($tokens_path)"
        exit 1
    }
    open --raw $tokens_path
    | lines
    | each { |line| $line | split row "#" | first | str trim }
    | where { |line| not ($line | is-empty) }
    | each { |line|
        let parts = ($line | split words)
        if ($parts | length) != 2 {
            print -e $"gen_tokens: bad line in tokens.txt: ($line)"
            exit 1
        }
        { odin: ($parts | get 0), dva: ($parts | get 1) }
    }
}

def odin_enum [kinds] {
    let body = ($kinds | each { |k| $"\t($k.odin)," } | str join "\n")
    $"TokenType :: enum {\n($body)\n}"
}

def dva_enum [kinds] {
    let body = ($kinds | each { |k| $"   ($k.dva)" } | str join "\n")
    $"#type TokKind <\n($body)\n>"
}

def replace_markers [path: string, new_text: string] {
    if not ($path | path exists) {
        print -e $"gen_tokens: file not found: ($path)"
        exit 1
    }
    let src = (open --raw $path)
    let s_idx = ($src | str index-of $START_MARKER)
    let e_idx = ($src | str index-of $END_MARKER)
    if $s_idx < 0 or $e_idx < 0 {
        print -e $"gen_tokens: markers not found in ($path)"
        exit 1
    }
    let before = ($src | str substring 0..<$s_idx)
    let after_start = $e_idx + ($END_MARKER | str length)
    let after = ($src | str substring $after_start..)
    let new_src = (
        $"($before)($START_MARKER)\n($new_text)\n($END_MARKER)($after)"
    )
    $new_src | save -f $path
}

# --check mode: verify each target's marker block already matches tokens.txt,
# without writing. Exits 1 on any drift so the test suite can fail loudly on a
# desync (a Semi<->Semicolon rename in tokens.txt that isn't regenerated would
# otherwise silently diverge the Odin TokenType and the dva TokKind enums).
def check_markers [path: string, new_text: string] {
    if not ($path | path exists) {
        print -e $"gen_tokens: file not found: ($path)"
        return false
    }
    let src = (open --raw $path)
    let s_idx = ($src | str index-of $START_MARKER)
    let e_idx = ($src | str index-of $END_MARKER)
    if $s_idx < 0 or $e_idx < 0 {
        print -e $"gen_tokens: markers not found in ($path)"
        return false
    }
    let end_pos = $e_idx + ($END_MARKER | str length)
    let current_block = ($src | str substring $s_idx..<$end_pos)
    let expected_block = $"($START_MARKER)\n($new_text)\n($END_MARKER)"
    $current_block == $expected_block
}

def main [--check] {
    let here = $env.FILE_PWD
    let root = ($here | path dirname)
    let tokens_path = ($here | path join "tokens.txt")
    let kinds = (read_kinds $tokens_path)

    let odin_ast = if (($root | path join "src" "ast.odin") | path exists) {
        $root | path join "src" "ast.odin"
    } else {
        $root | path join "process" "archive" "odin" "src" "ast.odin"
    }
    let lexer_dva = ($root | path join "src" "lexer.dva")

    mut targets = [
        { path: $lexer_dva, text: (dva_enum $kinds) }
    ]
    if ($odin_ast | path exists) {
        $targets = ($targets | append { path: $odin_ast, text: (odin_enum $kinds) })
    }

    if $check {
        mut ok = true
        for target in $targets {
            if not (check_markers $target.path $target.text) {
                $ok = false
                print -e (
                    $"gen_tokens: ($target.path) is out of sync with " +
                    "tokens.txt — run 'nu selfhost/gen_tokens.nu'"
                )
            }
        }
        if not $ok {
            exit 1
        }
    } else {
        for target in $targets {
            replace_markers $target.path $target.text
        }
        let count = ($kinds | length)
        let msg = (
            $"gen_tokens: wrote TokenType + TokKind from tokens.txt " +
            $"\(($count) kinds)"
        )
        print $msg
    }
}
