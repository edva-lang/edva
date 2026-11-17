#!/usr/bin/env nu
# tools/syntax/main.nu — Unified syntax generator for Dva, Vid, and CCL
# Generates:
#   1. doc/{dva,vid,ccl}.xml                       (KDE Kate XML for Pandoc / Quarto)
#   2. tools/vscode/syntaxes/{dva,vid,ccl}.tmLanguage.json (TextMate JSON for VS Code)
#   3. tools/vscode/package.json                   (VS Code extension manifest)
#   4. tools/vscode/*language-configuration.json
#   5. Helix synchronization & grammar compilation

def root [] {
  let base = ($env.FILE_PWD? | default $env.PWD | path expand)
  if ($base | str ends-with "tools/syntax") {
    $base | path join ".." | path join ".." | path expand
  } else {
    $base
  }
}

# -----------------------------------------------------------------------------
# 1. KDE Kate XML Generator (for Pandoc / Quarto)
# -----------------------------------------------------------------------------

export def gen-quarto [] {
  let r = (root)
  for lang in ["dva", "vid", "ccl"] {
    let tmpl_path = ($r | path join $"tools/syntax/templates/($lang).xml.template")
    let out_path = ($r | path join $"doc/($lang).xml")

    if not ($tmpl_path | path exists) {
      print $"[!] Template not found at ($tmpl_path)"
      continue
    }

    let content = (open --raw $tmpl_path)
    $content | save -f $out_path
    print $"[✓] Generated Quarto / Pandoc Kate XML at ($out_path)"
  }
}

# -----------------------------------------------------------------------------
# 2. VS Code TextMate Grammar Generator
# -----------------------------------------------------------------------------

export def gen-vscode [] {
  let r = (root)
  let vs_dir = ($r | path join "tools/vscode")
  let syn_dir = ($vs_dir | path join "syntaxes")
  mkdir $syn_dir

  let tmlanguage = {
    "$schema": "https://raw.githubusercontent.com/martinring/tmlanguage/master/tmlanguage.json",
    "name": "Dva",
    "scopeName": "source.dva",
    "patterns": [
      { "include": "#comments" },
      { "include": "#strings" },
      { "include": "#characters" },
      { "include": "#ramification_constants" },
      { "include": "#ramification_delimiters" },
      { "include": "#ramification_returns" },
      { "include": "#directives" },
      { "include": "#types" },
      { "include": "#control" },
      { "include": "#numbers" },
      { "include": "#operators" },
      { "include": "#identifiers" }
    ],
    "repository": {
      "comments": {
        "patterns": [
          {
            "name": "comment.line.double-slash.dva",
            "match": "//.*$"
          },
          {
            "name": "comment.block.dva",
            "begin": "/\\*",
            "end": "\\*/"
          }
        ]
      },
      "strings": {
        "patterns": [
          {
            "name": "string.quoted.triple.dva",
            "begin": "\"\"\"",
            "end": "\"\"\"",
            "patterns": [
              {
                "name": "constant.character.escape.dva",
                "match": "\\\\."
              },
              {
                "name": "meta.interpolation.dva",
                "begin": "\\$\\{",
                "beginCaptures": {
                  "0": { "name": "punctuation.section.interpolation.begin.dva" }
                },
                "end": "\\}",
                "endCaptures": {
                  "0": { "name": "punctuation.section.interpolation.end.dva" }
                },
                "patterns": [
                  { "include": "$self" }
                ]
              }
            ]
          },
          {
            "name": "string.quoted.double.dva",
            "begin": "\"",
            "end": "\"",
            "patterns": [
              {
                "name": "constant.character.escape.dva",
                "match": "\\\\."
              },
              {
                "name": "meta.interpolation.dva",
                "begin": "\\$\\{",
                "beginCaptures": {
                  "0": { "name": "punctuation.section.interpolation.begin.dva" }
                },
                "end": "\\}",
                "endCaptures": {
                  "0": { "name": "punctuation.section.interpolation.end.dva" }
                },
                "patterns": [
                  { "include": "$self" }
                ]
              }
            ]
          }
        ]
      },
      "characters": {
        "patterns": [
          {
            "name": "string.quoted.single.dva",
            "match": "'(\\\\.|[^'\\\\])'"
          }
        ]
      },
      "ramification_constants": {
        "patterns": [
          {
            "name": "constant.numeric.ramification.dva",
            "match": "<\\+\\+>|<-->|<\\+>|<->"
          }
        ]
      },
      "ramification_delimiters": {
        "patterns": [
          {
            "name": "constant.language.ramification.delimiter.dva",
            "match": "<\\+|\\+>|<-|->"
          }
        ]
      },
      "ramification_returns": {
        "patterns": [
          {
            "name": "constant.language.ramification.return.dva",
            "match": "\\|\\+\\+>|\\|-->|\\|\\+>|\\|->"
          }
        ]
      },
      "directives": {
        "patterns": [
          {
            "name": "meta.import.dva",
            "match": '(#use(?:\s*\([^)]*\))?)\s+("(?:\\.|[^"])*"|(?:[^/;\r\n]|/(?![/*]))+?)(?=\s*(?://|/\*|;|$))',
            "captures": {
              "1": { "name": "keyword.control.directive.dva" },
              "2": { "name": "string.quoted.other.import.dva" }
            }
          },
          {
            "name": "keyword.control.directive.dva",
            "match": "#(?:use|type|foreign|pragma|public|pub|private|export|param|const|os|arch|target|infix|error|warn|size|align|name|zero|arity|members|member|has_member)\\b"
          }
        ]
      },
      "types": {
        "patterns": [
          {
            "name": "storage.type.primitive.dva",
            "match": "<\\|>|<>|<\\.\\.>|\\(\\.\\.\\)|\\(\\)|\\b(Int|Float|String|Addr|Address|Rune|Builder|Error|Type|i1|i8|i16|i32|i64|u8|u16|u32|u64|f32|f64|float|double|void|ptr)\\b"
          }
        ]
      },
      "control": {
        "patterns": [
          {
            "name": "keyword.control.repeat.dva",
            "match": "(--[>^][0-9]*|@|@@)"
          },
          {
            "name": "keyword.control.escape.dva",
            "match": "(>--|--:|--\\|)"
          },
          {
            "name": "keyword.control.conditional.dva",
            "match": "(!\\||\\||\\[|\\])"
          }
        ]
      },
      "numbers": {
        "patterns": [
          {
            "name": "constant.numeric.float.dva",
            "match": "(?<![a-zA-Z0-9_])-?[0-9][0-9_]*\\.[0-9][0-9_]*([eE][-+]?[0-9_]+)?(f32|f64|f|F)?\\b"
          },
          {
            "name": "constant.numeric.hex.dva",
            "match": "(?<![a-zA-Z0-9_])-?0x[0-9a-fA-F_]+(i8|i16|i32|i64|u8|u16|u32|u64)?\\b"
          },
          {
            "name": "constant.numeric.octal.dva",
            "match": "(?<![a-zA-Z0-9_])-?0o[0-7_]+(i8|i16|i32|i64|u8|u16|u32|u64)?\\b"
          },
          {
            "name": "constant.numeric.binary.dva",
            "match": "(?<![a-zA-Z0-9_])-?0b[01_]+(i8|i16|i32|i64|u8|u16|u32|u64)?\\b"
          },
          {
            "name": "constant.numeric.integer.dva",
            "match": "(?<![a-zA-Z0-9_])-?[0-9][0-9_]*(i8|i16|i32|i64|u8|u16|u32|u64)?\\b"
          }
        ]
      },
      "operators": {
        "patterns": [
          {
            "name": "keyword.operator.range.dva",
            "match": "(\\.\\.\\.|\\.\\.=|\\.\\.)"
          },
          {
            "name": "keyword.operator.function.dva",
            "match": "(=>|!=>)"
          },
          {
            "name": "keyword.operator.assignment.dva",
            "match": "(::=|:=|\\+=|=)"
          },
          {
            "name": "keyword.operator.apply.dva",
            "match": "(\\$>>|\\$>|\\$)"
          },
          {
            "name": "keyword.operator.logical.dva",
            "match": "(&&|\\|\\|)"
          },
          {
            "name": "keyword.operator.comparison.dva",
            "match": "(==|!=|!<|!>|<=|>=|<|>)"
          },
          {
            "name": "keyword.operator.bitwise.dva",
            "match": "(\\.<\\.|\\.>\\.|\\.\\|\\.|\\.\\^\\.|\\.&\\.|\\.!\\.)"
          },
          {
            "name": "keyword.operator.arithmetic.dva",
            "match": "(\\+|-|\\*|/|%)"
          },
          {
            "name": "keyword.operator.unary.dva",
            "match": "(\\+\\+|\\?\\?|\\?|~~|&|!)"
          },
          {
            "name": "keyword.operator.postfix.dva",
            "match": "(!!|--!)"
          },
          {
            "name": "keyword.operator.range.dva",
            "match": "(\\.\\.)"
          },
          {
            "name": "keyword.operator.namespace.dva",
            "match": "(::)"
          }
        ]
      },
      "identifiers": {
        "patterns": [
          {
            "name": "variable.other.mutable.dva",
            "match": "\\b[a-zA-Z_][a-zA-Z0-9_]*'+"
          },
          {
            "name": "entity.name.type.variant.dva",
            "match": "\\b[A-Z][a-zA-Z0-9_]*\\b"
          },
          {
            "name": "variable.other.dva",
            "match": "\\b[a-z_][a-zA-Z0-9_]*\\b"
          }
        ]
      }
    }
  }

  let vid_tmlanguage = {
    "$schema": "https://raw.githubusercontent.com/martinring/tmlanguage/master/tmlanguage.json",
    "name": "Vid",
    "scopeName": "source.vid",
    "patterns": [
      { "include": "#comments" },
      { "include": "#directives" },
      { "include": "#control" },
      { "include": "#expr_lines" },
      { "include": "#bindings" },
      { "include": "#strings" },
      { "include": "#partials" },
      { "include": "#tags" },
      { "include": "#reactive_ids" },
      { "include": "#static_ids" },
      { "include": "#classes" },
      { "include": "#attributes" },
      { "include": "#interpolations" },
      { "include": "#tag_suffix" }
    ],
    "repository": {
      "comments": {
        "patterns": [
          {
            "name": "comment.line.double-slash.vid",
            "match": '//.*$'
          }
        ]
      },
      "directives": {
        "patterns": [
          {
            "name": "meta.import.vid",
            "match": '^\s*(#(?:use(?:\([^)]*\))?|include))\s+("(?:\\.|[^"])*"|(?:[^/;\r\n]|/(?![/*]))+?)(?=\s*(?://|;|$))',
            "captures": {
              "1": { "name": "keyword.control.directive.vid" },
              "2": { "name": "string.quoted.other.import.vid" }
            }
          },
          {
            "name": "meta.doctype.vid",
            "match": '^\s*(#?doctype)\s+(\S+)',
            "captures": {
              "1": { "name": "keyword.control.directive.vid" },
              "2": { "name": "constant.language.doctype.vid" }
            }
          },
          {
            "name": "meta.directive.vid",
            "begin": '^\s*(#(?:param|query|route|def|slot))\b',
            "beginCaptures": {
              "1": { "name": "keyword.control.directive.vid" }
            },
            "end": '$',
            "patterns": [
              { "include": "source.dva" }
            ]
          }
        ]
      },
      "control": {
        "patterns": [
          {
            "name": "meta.cycle.vid",
            "match": '^\s*(.+?)\s+(@)(?:\s+(.+?)\s+(=>))?\s*$',
            "captures": {
              "1": { "patterns": [{ "include": "source.dva" }] },
              "2": { "name": "keyword.control.repeat.vid" },
              "3": { "patterns": [{ "include": "source.dva" }] },
              "4": { "name": "keyword.operator.function.vid" }
            }
          },
          {
            "name": "meta.choice.vid",
            "match": '^\s*(?:(.+?)\s+)?(\|)\s*$',
            "captures": {
              "1": { "patterns": [{ "include": "source.dva" }] },
              "2": { "name": "keyword.control.conditional.vid" }
            }
          },
          {
            "name": "meta.guard.vid",
            "match": '^\s*(\[)([^\]\n]+)(\])\s*$',
            "captures": {
              "1": { "name": "punctuation.bracket.vid" },
              "2": { "patterns": [{ "include": "source.dva" }] },
              "3": { "name": "punctuation.bracket.vid" }
            }
          }
        ]
      },
      "expr_lines": {
        "patterns": [
          {
            "name": "meta.expression.line.vid",
            "begin": '^\s*(!?=)',
            "beginCaptures": {
              "1": { "name": "keyword.operator.assignment.vid" }
            },
            "end": '$',
            "patterns": [
              { "include": "source.dva" }
            ]
          }
        ]
      },
      "bindings": {
        "patterns": [
          {
            "name": "meta.binding.vid",
            "begin": r#'^\s*([a-zA-Z_][a-zA-Z0-9_']*)\s+(=)(?!=|>)'#,
            "beginCaptures": {
              "1": { "name": "variable.other.vid" },
              "2": { "name": "keyword.operator.assignment.vid" }
            },
            "end": '$',
            "patterns": [
              { "include": "source.dva" }
            ]
          }
        ]
      },
      "partials": {
        "patterns": [
          {
            "name": "entity.name.function.partial.vid",
            "match": '(?:^|(?<=[\s:]))(\+[a-zA-Z][a-zA-Z0-9_-]*)'
          }
        ]
      },
      "tags": {
        "patterns": [
          {
            "name": "entity.name.tag.vid",
            "match": '(?:(?<=^\s)|^|(?<=:\s)|(?<=:))([a-zA-Z][a-zA-Z0-9_-]*)(?=$|[\s\$\#\.\(\/:=!])'
          }
        ]
      },
      "reactive_ids": {
        "patterns": [
          {
            "name": "entity.other.attribute-name.id.reactive.vid",
            "match": '\$[a-zA-Z0-9_-]+'
          }
        ]
      },
      "static_ids": {
        "patterns": [
          {
            "name": "entity.other.attribute-name.id.static.vid",
            "match": '#[a-zA-Z0-9_-]+'
          }
        ]
      },
      "classes": {
        "patterns": [
          {
            "name": "entity.other.attribute-name.class.vid",
            "match": '\.[a-zA-Z0-9_-]+'
          }
        ]
      },
      "attributes": {
        "patterns": [
          {
            "name": "meta.attribute-list.vid",
            "begin": '\(',
            "beginCaptures": { "0": { "name": "punctuation.section.parens.begin.vid" } },
            "end": '\)',
            "endCaptures": { "0": { "name": "punctuation.section.parens.end.vid" } },
            "patterns": [
              { "include": "#comments" },
              {
                "name": "meta.attribute.id.reactive.vid",
                "begin": '\b(id)\s*(=)\s*(?="\$[^{])',
                "beginCaptures": {
                  "1": { "name": "entity.other.attribute-name.vid" },
                  "2": { "name": "keyword.operator.assignment.vid" }
                },
                "end": '(?<=")',
                "patterns": [
                  {
                    "name": "entity.other.attribute-name.id.reactive.vid",
                    "begin": '"',
                    "end": '"',
                    "patterns": [
                      { "name": "constant.character.escape.vid", "match": '\\.' },
                      { "include": "#interpolations" }
                    ]
                  }
                ]
              },
              {
                "name": "support.function.event.vid",
                "match": '@[a-zA-Z0-9_:-]+'
              },
              {
                "name": "entity.other.attribute-name.vid",
                "match": '[a-zA-Z_][a-zA-Z0-9_:-]*(?=\s*[=,\s\)]|$)'
              },
              {
                "name": "keyword.operator.assignment.vid",
                "match": '='
              },
              { "include": "#strings" },
              {
                "name": "meta.attribute.expr.nested.vid",
                "begin": '\(',
                "end": '\)',
                "patterns": [
                  { "include": "source.dva" }
                ]
              },
              { "include": "source.dva" }
            ]
          }
        ]
      },
      "tag_suffix": {
        "patterns": [
          {
            "name": "keyword.operator.assignment.vid",
            "match": '!=|='
          },
          {
            "name": "punctuation.separator.vid",
            "match": '[:/\.]'
          }
        ]
      },
      "strings": {
        "patterns": [
          {
            "name": "string.quoted.double.vid",
            "begin": '"',
            "end": '"',
            "patterns": [
              { "name": "constant.character.escape.vid", "match": '\\.' },
              { "include": "#interpolations" }
            ]
          },
          {
            "name": "string.quoted.single.vid",
            "begin": "'",
            "end": "'",
            "patterns": [
              { "name": "constant.character.escape.vid", "match": '\\.' },
              { "include": "#interpolations" }
            ]
          }
        ]
      },
      "interpolations": {
        "patterns": [
          {
            "name": "meta.interpolation.vid",
            "begin": '[$!#]\{',
            "beginCaptures": { "0": { "name": "punctuation.section.interpolation.begin.vid" } },
            "end": '\}',
            "endCaptures": { "0": { "name": "punctuation.section.interpolation.end.vid" } },
            "patterns": [
              { "include": "source.dva" }
            ]
          }
        ]
      }
    }
  }

  let ccl_tmlanguage = {
    "$schema": "https://raw.githubusercontent.com/martinring/tmlanguage/master/tmlanguage.json",
    "name": "CCL",
    "scopeName": "source.ccl",
    "patterns": [
      { "include": "#comments" },
      { "include": "#entries" },
      { "include": "#continuation_values" }
    ],
    "repository": {
      "comments": {
        "patterns": [
          {
            "name": "comment.line.ccl",
            "match": '^\s*(?:/=|#).*$'
          }
        ]
      },
      "entries": {
        "patterns": [
          {
            "name": "meta.entry.anonymous.ccl",
            "match": '^\s*(=)(?:\s+(.*))?$',
            "captures": {
              "1": { "name": "keyword.operator.assignment.ccl" },
              "2": { "name": "string.unquoted.value.ccl" }
            }
          },
          {
            "name": "meta.entry.level0.ccl",
            "match": '^(?!\s*(?:/=|#))([^=\s\r\n][^=\r\n]*?)\s*(=)(?:\s+(.*))?$',
            "captures": {
              "1": { "name": "entity.name.section.key.level0.ccl" },
              "2": { "name": "keyword.operator.assignment.ccl" },
              "3": { "name": "string.unquoted.value.ccl" }
            }
          },
          {
            "name": "meta.entry.level1.ccl",
            "match": '^[ \t]{1,3}([^=\s\r\n][^=\r\n]*?)\s*(=)(?:\s+(.*))?$',
            "captures": {
              "1": { "name": "variable.other.property.key.level1.ccl" },
              "2": { "name": "keyword.operator.assignment.ccl" },
              "3": { "name": "string.unquoted.value.ccl" }
            }
          },
          {
            "name": "meta.entry.level2.ccl",
            "match": '^[ \t]{4,5}([^=\s\r\n][^=\r\n]*?)\s*(=)(?:\s+(.*))?$',
            "captures": {
              "1": { "name": "support.type.property-name.key.level2.ccl" },
              "2": { "name": "keyword.operator.assignment.ccl" },
              "3": { "name": "string.unquoted.value.ccl" }
            }
          },
          {
            "name": "meta.entry.level3.ccl",
            "match": '^[ \t]{6,}([^=\s\r\n][^=\r\n]*?)\s*(=)(?:\s+(.*))?$',
            "captures": {
              "1": { "name": "constant.other.key.level3.ccl" },
              "2": { "name": "keyword.operator.assignment.ccl" },
              "3": { "name": "string.unquoted.value.ccl" }
            }
          }
        ]
      },
      "continuation_values": {
        "patterns": [
          {
            "name": "string.unquoted.value.ccl",
            "match": '^\s*\S.*$'
          }
        ]
      }
    }
  }

  let pkg = {
    "name": "dva-lang",
    "displayName": "Dva Language",
    "description": "Syntax highlighting and language support for Dva, Vid, and CCL",
    "version": "0.2.0",
    "publisher": "dva",
    "engines": {
      "vscode": "^1.75.0"
    },
    "categories": ["Programming Languages"],
    "contributes": {
      "languages": [
        {
          "id": "dva",
          "aliases": ["Dva", "dva", "edva"],
          "extensions": [".dva"],
          "configuration": "./language-configuration.json"
        },
        {
          "id": "vid",
          "aliases": ["Vid", "vid"],
          "extensions": [".vid"],
          "configuration": "./vid.language-configuration.json"
        },
        {
          "id": "ccl",
          "aliases": ["CCL", "ccl"],
          "extensions": [".ccl"],
          "configuration": "./ccl.language-configuration.json"
        }
      ],
      "grammars": [
        {
          "language": "dva",
          "scopeName": "source.dva",
          "path": "./syntaxes/dva.tmLanguage.json"
        },
        {
          "language": "vid",
          "scopeName": "source.vid",
          "path": "./syntaxes/vid.tmLanguage.json"
        },
        {
          "language": "ccl",
          "scopeName": "source.ccl",
          "path": "./syntaxes/ccl.tmLanguage.json"
        }
      ]
    }
  }

  let lang_cfg = {
    "comments": {
      "lineComment": "//",
      "blockComment": ["/*", "*/"]
    },
    "brackets": [
      ["{", "}"],
      ["[", "]"],
      ["(", ")"]
    ],
    "autoClosingPairs": [
      { "open": "{", "close": "}" },
      { "open": "[", "close": "]" },
      { "open": "(", "close": ")" },
      { "open": "\"", "close": "\"" },
      { "open": "'", "close": "'" }
    ],
    "surroundingPairs": [
      ["{", "}"],
      ["[", "]"],
      ["(", ")"],
      ["\"", "\""],
      ["'", "'"]
    ]
  }

  let vid_lang_cfg = {
    "comments": {
      "lineComment": "//"
    },
    "brackets": [
      ["{", "}"],
      ["[", "]"],
      ["(", ")"]
    ],
    "autoClosingPairs": [
      { "open": "{", "close": "}" },
      { "open": "[", "close": "]" },
      { "open": "(", "close": ")" },
      { "open": "\"", "close": "\"" },
      { "open": "'", "close": "'" }
    ],
    "surroundingPairs": [
      ["{", "}"],
      ["[", "]"],
      ["(", ")"],
      ["\"", "\""],
      ["'", "'"]
    ]
  }

  let ccl_lang_cfg = {
    "comments": {
      "lineComment": "/="
    },
    "brackets": [],
    "autoClosingPairs": [],
    "surroundingPairs": []
  }

  ($tmlanguage | to json -i 2) | save -f ($syn_dir | path join "dva.tmLanguage.json")
  ($vid_tmlanguage | to json -i 2) | save -f ($syn_dir | path join "vid.tmLanguage.json")
  ($ccl_tmlanguage | to json -i 2) | save -f ($syn_dir | path join "ccl.tmLanguage.json")
  ($pkg | to json -i 2) | save -f ($vs_dir | path join "package.json")
  ($lang_cfg | to json -i 2) | save -f ($vs_dir | path join "language-configuration.json")
  ($vid_lang_cfg | to json -i 2) | save -f ($vs_dir | path join "vid.language-configuration.json")
  ($ccl_lang_cfg | to json -i 2) | save -f ($vs_dir | path join "ccl.language-configuration.json")

  print $"[✓] Generated VS Code TextMate grammars for dva, vid, ccl in ($vs_dir)"
}

# -----------------------------------------------------------------------------
# 3. Helix Synchronizer
# -----------------------------------------------------------------------------

export def sync-helix [] {
  let r = (root)
  let ts_dir = if (($r | path join "../tree-sitter-edva") | path exists) {
    $r | path join "../tree-sitter-edva" | path expand
  } else {
    $r | path join "../tree-sitter-dva" | path expand
  }
  let hx_edva_dir = ($env.HOME | path join ".config/helix/runtime/queries/edva")
  let hx_dva_dir = ($env.HOME | path join ".config/helix/runtime/queries/dva")
  let repo_hx_dir = ($r | path join "tools/helix-edva/queries")

  if not ($ts_dir | path exists) {
    print $"[!] tree-sitter-edva not found at ($ts_dir)"
    return
  }

  mkdir $hx_edva_dir
  mkdir $hx_dva_dir
  mkdir $repo_hx_dir
  let queries = ["highlights.scm", "indents.scm", "textobjects.scm", "injections.scm"]
  for q in $queries {
    let src = ($ts_dir | path join $"queries/($q)")
    if ($src | path exists) {
      try { cp -f $src ($hx_edva_dir | path join $q) }
      try { cp -f $src ($hx_dva_dir | path join $q) }
      try { cp -f $src ($repo_hx_dir | path join $q) }
      print $"[✓] Synced Helix query ($q)"
    }
  }

  print "[*] Building Helix grammar edva.so..."
  let gram_dir = ($env.HOME | path join ".config/helix/runtime/grammars")
  let build_hx_dir = ($r | path join "build/helix")
  mkdir $gram_dir
  mkdir $build_hx_dir
  let parser_c = ($ts_dir | path join "src/parser.c")
  let scanner_c = ($ts_dir | path join "src/scanner.c")
  let inc_dir = ($ts_dir | path join "src")
  let out_so = ($gram_dir | path join "edva.so")
  let res = (do { ^cc -fPIC -shared -O2 -I $inc_dir $parser_c $scanner_c -o $out_so } | complete)
  if $res.exit_code == 0 {
    try { cp -f $out_so ($gram_dir | path join "dva.so") }
    try { cp -f $out_so ($build_hx_dir | path join "edva.so") }
    print $"[✓] Helix edva grammar built and installed to ($out_so)"
  } else {
    print $"[!] Helix build warning: ($res.stderr)"
  }

  for lang in ["vid", "ccl"] {
    let lang_ts_dir = ($r | path join $"../tree-sitter-($lang)" | path expand)
    if ($lang_ts_dir | path exists) {
      let hx_lang_dir = ($env.HOME | path join $".config/helix/runtime/queries/($lang)")
      mkdir $hx_lang_dir
      for q in $queries {
        let src = ($lang_ts_dir | path join $"queries/($q)")
        if ($src | path exists) {
          try { cp -f $src ($hx_lang_dir | path join $q) }
          print $"[✓] Synced Helix ($lang) query ($q)"
        }
      }
      let lang_parser_c = ($lang_ts_dir | path join "src/parser.c")
      let lang_scanner_c = ($lang_ts_dir | path join "src/scanner.c")
      let lang_inc_dir = ($lang_ts_dir | path join "src")
      let lang_out_so = ($gram_dir | path join $"($lang).so")
      let lang_res = (do { ^cc -fPIC -shared -O2 -I $lang_inc_dir $lang_parser_c $lang_scanner_c -o $lang_out_so } | complete)
      if $lang_res.exit_code == 0 {
        try { cp -f $lang_out_so ($build_hx_dir | path join $"($lang).so") }
        print $"[✓] Helix ($lang) grammar built and installed to ($lang_out_so)"
      } else {
        print $"[!] Helix ($lang) build warning: ($lang_res.stderr)"
      }
    }
  }
}

# -----------------------------------------------------------------------------
# 4. Doc Renderer (Quarto)
# -----------------------------------------------------------------------------

export def render-docs [] {
  let r = (root)
  let doc_dir = ($r | path join "doc")
  let build_dir = ($doc_dir | path join "_build")
  let subdirs = [
    "start", "guide", "compiler", "contributing",
    "reference/language", "reference/stdlib"
  ]
  for d in $subdirs {
    mkdir ($build_dir | path join $d)
  }

  print "[*] Rendering documentation with Quarto..."
  let res = (do { ^quarto render $doc_dir } | complete)
  if $res.exit_code == 0 {
    print $"[✓] Documentation rendered successfully at ($doc_dir)/_build/index.html"
  } else {
    print $"[!] Quarto render error: ($res.stderr)\n($res.stdout)"
  }
}

# -----------------------------------------------------------------------------
# CLI Entry Point
# -----------------------------------------------------------------------------

def main [
  --all(-a)       # Generate Quarto XML, VS Code grammar, and sync Helix
  --quarto(-q)    # Generate doc/dva.xml for Quarto / Pandoc
  --vscode(-v)    # Generate tools/vscode TextMate grammar
  --helix(-h)     # Sync Helix queries and rebuild grammar
  --render(-r)    # Render documentation with Quarto
] {
  let do_all = $all or (not $quarto and not $vscode and not $helix and not $render)

  if $do_all or $quarto {
    gen-quarto
  }
  if $do_all or $vscode {
    gen-vscode
  }
  if $do_all or $helix {
    sync-helix
  }
  if $render {
    render-docs
  }
}
