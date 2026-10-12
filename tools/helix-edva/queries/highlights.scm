; Dva highlights for tree-sitter
; Tuned for Helix and compatible tree-sitter highlighters. Each syntactic
; class gets its own capture so the theme can give it a distinct color.

;; ------------------------------------------------------------------
;; Comments
;; ------------------------------------------------------------------
(comment) @comment

;; ------------------------------------------------------------------
;; Compiler directives
;; ------------------------------------------------------------------
[
  "#use"
  "#type"
  "#foreign"
  "#pragma"
  "#private"
  "#export"
  "#spawn"
  "#join"
  "#!"
  "#size"
] @keyword.directive

(import_statement
  (module_path (identifier) @module))
(import_statement
  (module_path (string_literal) @string.special))

;; ------------------------------------------------------------------
;; Literals
;; ------------------------------------------------------------------
(string_literal) @string
(char_literal) @character
(integer_literal) @number
(float_literal) @number.float

;; ------------------------------------------------------------------
;; Ramifications
;; ------------------------------------------------------------------
;; Unit ramification constants: <+>, <->, <++>, <-->
[
  "<+>"
  "<->"
  "<++>"
  "<-->"
] @constant.builtin.ram

;; Ramification payload openers and closers: "<+ p +>", "<+ p ->", "<- p ->", "<- p +>".
(ramification_literal "<+" @constant.builtin.ram)
(ramification_literal "+>" @constant.builtin.ram)
(ramification_literal "<-" @constant.builtin.ram)
(ramification_literal "->" @constant.builtin.ram)

[
  "<+"
  "+>"
  "<-"
] @constant.builtin.ram

;; Unit ramification type "<>".
"<>" @constant.builtin.ram
(ram_or_enum_type_decl "<>" @constant.builtin.ram)

;; Branch return unit sugars: "|+>", "|->", "|++>", "|-->".
(branch "|+>" @constant.builtin.ram)
(branch "|->" @constant.builtin.ram)
(branch "|++>" @constant.builtin.ram)
(branch "|-->" @constant.builtin.ram)

[
  "|+>"
  "|->"
  "|++>"
  "|-->"
] @constant.builtin.ram

;; ------------------------------------------------------------------
;; Built-in type names
;; ------------------------------------------------------------------
[
  "Int"
  "Float"
  "String"
  "Address"
  "Rune"
  "Builder"
  "Error"
  "Type"
  "i1"
  "i8"
  "i16"
  "i32"
  "i64"
  "u8"
  "u16"
  "u32"
  "u64"
  "f32"
  "f64"
  "float"
  "double"
  "void"
  "ptr"
] @type.builtin

;; The builtin names also lex as variant_name inside type_name; give them the
;; builtin color there too (a user type can never shadow these).
((type_name (variant_name) @type.builtin)
  (#match? @type.builtin
    "^(Int|Float|String|Address|Rune|Builder|Error|Type|i1|i8|i16|i32|i64|u8|u16|u32|u64|f32|f64|float|double|void|ptr)$"))

;; ------------------------------------------------------------------
;; User-declared types
;; ------------------------------------------------------------------
((type_name (variant_name) @type)
  (#not-any-of? @type
    "Int" "Float" "String" "Address" "Rune" "Builder" "Error" "Type"
    "i1" "i8" "i16" "i32" "i64" "u8" "u16" "u32" "u64"
    "f32" "f64" "float" "double" "void" "ptr"))
((type_name (identifier) @type)
  (#not-any-of? @type "float" "double" "void" "ptr"))
(type_name (qual_identifier) @type)
(qual_identifier) @type

;; The name being declared in "#type Name ...".
(type_decl_statement (identifier) @type.definition)
(type_decl_statement (variant_name) @type.definition)

;; Field names in record type declarations.
(field_type (identifier) @property)
(indent_field (identifier) @property)

;; Ramification / enum type declarations: "< A | B >", "<>".
(ram_or_enum_type_decl "|" @punctuation.delimiter)
(ram_or_enum_type_decl "<" @punctuation.bracket)
(ram_or_enum_type_decl ">" @punctuation.bracket)
"<>" @constant.builtin.ram

;; Enum variant labels in declarations.
(enum_variant (identifier) @type.enum.variant)
(enum_variant (variant_name) @type.enum.variant)

;; Compile-time type-parameter names ("#! T: Type").
(signature_param (identifier) @variable.parameter)
(signature_param (variant_name) @variable.parameter)

;; Raw-memory load type "@[addr i32]".
(raw_memory_load_type) @type.builtin

;; ------------------------------------------------------------------
;; Function definitions & calls
;; ------------------------------------------------------------------
; A binding whose RHS is a lambda (or zero-arg / section / implicit fn).
(assignment_statement
  (identifier) @function
  (expr (fn_expr)))
(assignment_statement
  (variant_name) @function
  (expr (fn_expr)))

; A forward-annotation signature "fun: Int, String => Int" — also a function.
(assignment_statement
  (identifier) @function
  (function_signature_type))
(assignment_statement
  (variant_name) @function
  (function_signature_type))

; Foreign C function bindings "dup2 : (...) -> Int".
(foreign_binding (identifier) @function)
(foreign_binding (variant_name) @function)

; Regular (lowercase) function calls.
(paren_call (primary_expr (identifier) @function.call))
(paren_call (primary_expr (member_expr (identifier) @function.call)))
(paren_call (primary_expr (member_expr (identifier) @function.call)))
(dollar_call (primary_expr (identifier) @function.call))
(dollar_call (primary_expr (member_expr (identifier) @function.call)))
(dollar_call (primary_expr (member_expr (identifier) @function.call)))
(postfix_call (primary_expr (identifier) @function.call))
(postfix_call (primary_expr (member_expr (identifier) @function.call)))

; Uppercase constructor / type-coercion calls: "Token(Id)", "CompDiag(...)".
(variant_expr
  (variant_name) @constructor)

; Builtin type coercions "Int(5)", "i8(x)" keep the builtin type color.
((variant_expr (variant_name) @type.builtin)
  (#match? @type.builtin
    "^(Int|Float|String|Address|Rune|Builder|Error|Type|i1|i8|i16|i32|i64|u8|u16|u32|u64|f32|f64)$"))

; "#spawn worker(...)" is already covered by the paren_call rules above.

;; ------------------------------------------------------------------
;; Parameters
;; ------------------------------------------------------------------
(fn_param (identifier) @variable.parameter)
(fn_param (variant_name) @variable.parameter)
(foreign_param (identifier) @variable.parameter)
(foreign_param (variant_name) @variable.parameter)

; Implicit "_" parameter / identity extractor.
((identifier) @variable.builtin (#eq? @variable.builtin "_"))

;; ------------------------------------------------------------------
;; Member access / module access / properties
;; ------------------------------------------------------------------
(member_expr (identifier) @property)

; Module member access "mod::sym" — the base is a module.
((member_expr (primary_expr (identifier)) @module)
  (#match? @module "^[a-z_][a-z0-9_]*$"))

;; ------------------------------------------------------------------
;; Control flow
;; ------------------------------------------------------------------
; Cycle jumps and cycle-escape marker.
(cycle_jump_expr) @keyword.control.repeat
(cycle_expr "@" @keyword.control.repeat)
"--:" @keyword.control

; Choice branch separators and choice headers.
(choice_expr "[" @keyword.control.conditional)
(choice_expr "]" @keyword.control.conditional)
(branch "[" @keyword.control.conditional)
(branch "]" @keyword.control.conditional)
(branch "|" @keyword.control.conditional)
(branch "!|" @keyword.control.conditional)


; Enum variant labels used as choice guards.
(pattern (variant_name) @type.enum.variant)

;; ------------------------------------------------------------------
;; Operators
;; ------------------------------------------------------------------
; Assignment / declaration operators.
[
  "="
  (op_assign)
  (op_global_assign)
  (op_plus_assign)
  (op_arrow)
  "->"
] @operator

; Infix binary operators (scoped so "<" / ">" don't hit ram/enum type decls).
(binary_expr "&&" @operator)
(binary_expr "||" @operator)
(binary_expr ".|." @operator)
(binary_expr ".&." @operator)
(binary_expr "==" @operator)
(binary_expr "!=" @operator)
(binary_expr "<" @operator)
(binary_expr ">" @operator)
(binary_expr "!<" @operator)
(binary_expr "!>" @operator)
(binary_expr ".<." @operator)
(binary_expr ".>." @operator)
(binary_expr "+" @operator)
(binary_expr "-" @operator)
(binary_expr "*" @operator)
(binary_expr "/" @operator)
(binary_expr "%" @operator)
(binary_expr "$>" @operator)
(binary_expr "$>>" @operator)

; Infix apply, range, map access, block feed.
(dollar_call "$" @operator)
(dollar_call "$:" @operator)
(range_expr ".." @operator)
(key_access_expr "^" @operator)
(key_access_expr "^?" @operator)

; Operator sections: "+ 10", "[> 37.5]".
(section_expr "+" @operator)
(section_expr "-" @operator)
(section_expr "*" @operator)
(section_expr "/" @operator)
(section_expr "%" @operator)
(section_expr "==" @operator)
(section_expr "<" @operator)
(section_expr ">" @operator)
(section_expr ".|." @operator)
(section_expr ".&." @operator)
(section_expr ".<." @operator)
(section_expr ".>." @operator)

; Unary prefix operators.
(unary_expr "!" @operator)
(unary_expr "+" @operator)
(unary_expr "&" @operator)
(unary_expr "?" @operator)
(unary_expr "??" @operator)
(unary_expr "++" @operator)
(unary_expr ".!." @operator)
(unary_expr "~~" @operator)
(unary_expr "-" @operator)

; Postfix operators.
(postfix_call "!" @operator)
(postfix_call "!!" @operator)
(postfix_call "--!" @operator)

; Named arguments / field initialization.
(named_arg (identifier) @property)

;; ------------------------------------------------------------------
;; Variables (default)
;; ------------------------------------------------------------------
(identifier) @variable

;; ------------------------------------------------------------------
;; Punctuation
;; ------------------------------------------------------------------
"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"," @punctuation.delimiter
"." @punctuation.delimiter
":" @punctuation.delimiter
"::" @punctuation.delimiter
