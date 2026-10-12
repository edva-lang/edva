; Dva indentation queries for Helix.
; The language is indentation-sensitive (the scanner emits INDENT/DEDENT), so
; these mark the indented regions for auto-indent.

; Indented statement blocks (function bodies, branch bodies, cycle bodies).
(block) @indent

; Indent-based record type declarations.
(indent_field_list_block) @indent

; Enum variant block form: "#type Color <\n   Red\n   Green\n>".
(enum_variant_list) @indent

; Choice branches that start on their own line.
(branch) @indent

; Continuation: the line after a trailing binary operator.
(binary_expr (expr) @indent)

; Multi-line call argument lists and tuples.
(comma_args) @indent
(tuple_literal) @indent
(field_type_list) @indent