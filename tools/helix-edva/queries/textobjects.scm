; Dva text objects for Helix.

; Comments.
(comment) @comment.outer
(comment) @comment.inner

; Strings and characters.
(string_literal) @string.inner
(string_literal) @string.outer
(char_literal) @character.inner
(char_literal) @character.outer

; Indented blocks.
(block) @block.inner
(block) @block.outer

; Function expressions (lambdas).
(fn_expr) @function.inner
(fn_expr) @function.outer

; Choice expressions.
(choice_expr) @conditional.inner
(choice_expr) @conditional.outer

; Type declarations.
(type_decl_statement) @class.inner
(type_decl_statement) @class.outer

; Calls.
(paren_call) @call.inner
(paren_call) @call.outer

; Parameters.
(fn_param_list) @parameter.inner
(fn_param_list) @parameter.outer