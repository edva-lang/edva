; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@dva_arena_base_tls = external thread_local global ptr
@dva_active_gen_tls = external thread_local global i64
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@str.0 = internal unnamed_addr constant [56 x i8] c"Line indented less than first line in multi-line string\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 55, ptr @str.0 }
@clo.const = internal constant { ptr, ptr } { ptr @"diag::E1017_multiline_under_indented", ptr null }
@"var.diag::E1017_multiline_under_indented" = global ptr null
@str.1 = internal unnamed_addr constant [62 x i8] c"Unterminated multi-line string literal -- missing closing '\22'\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 61, ptr @str.1 }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"diag::E1018_multiline_unterminated", ptr null }
@"var.diag::E1018_multiline_unterminated" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"diag::E1017_heredoc_under_indented", ptr null }
@"var.diag::E1017_heredoc_under_indented" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"diag::E1018_heredoc_unterminated", ptr null }
@"var.diag::E1018_heredoc_unterminated" = global ptr null
@str.2 = internal unnamed_addr constant [68 x i8] c"Bare '|' is only allowed as the first branch (Left Value) or final \00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.2 }
@str.3 = internal unnamed_addr constant [43 x i8] c"branch (catch-all) in a choice expression.\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.3 }
@clo.const.4 = internal constant { ptr, ptr } { ptr @"diag::E2024_bare_bar_position", ptr null }
@"var.diag::E2024_bare_bar_position" = global ptr null
@str.4 = internal unnamed_addr constant [57 x i8] c"Whitespace between range endpoint and '..' is forbidden.\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.4 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"diag::E2025_range_endpoint_whitespace", ptr null }
@"var.diag::E2025_range_endpoint_whitespace" = global ptr null
@str.5 = internal unnamed_addr constant [49 x i8] c"Whitespace before call parenthesis is forbidden.\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.5 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"diag::E2032_call_paren_whitespace", ptr null }
@"var.diag::E2032_call_paren_whitespace" = global ptr null
@str.6 = internal unnamed_addr constant [83 x i8] c"Function parameters may not be parenthesized; write 'x, y =>' with no parentheses.\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 82, ptr @str.6 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"diag::E2037_params_parenthesized", ptr null }
@"var.diag::E2037_params_parenthesized" = global ptr null
@str.7 = internal unnamed_addr constant [29 x i8] c"Expression nested too deeply\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 28, ptr @str.7 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"diag::E2039_expr_too_deep", ptr null }
@"var.diag::E2039_expr_too_deep" = global ptr null
@str.8 = internal unnamed_addr constant [69 x i8] c"Function parameters cannot be mutable \E2\80\94 remove prime suffix from '\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 68, ptr @str.8 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"diag::E2039_param_mutable_prefix", ptr null }
@"var.diag::E2039_param_mutable_prefix" = global ptr null
@str.9 = internal unnamed_addr constant [114 x i8] c"Explicit '_' parameter is forbidden in function parameter lists \E2\80\94 use a named parameter or omit unused binders.\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 113, ptr @str.9 }
@clo.const.10 = internal constant { ptr, ptr } { ptr @"diag::E2040_underscore_param", ptr null }
@"var.diag::E2040_underscore_param" = global ptr null
@str.10 = internal unnamed_addr constant [69 x i8] c"Cannot assign to '_' \E2\80\94 '_' cannot be used as an assignment target.\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 68, ptr @str.10 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"diag::E2044_underscore_assign", ptr null }
@"var.diag::E2044_underscore_assign" = global ptr null
@str.11 = internal unnamed_addr constant [81 x i8] c"Cannot assign to a typed load; write through the untyped '@[addr]' form instead.\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 80, ptr @str.11 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"diag::E2093_assign_typed_load", ptr null }
@"var.diag::E2093_assign_typed_load" = global ptr null
@str.12 = internal unnamed_addr constant [75 x i8] c"A '|' before a '[' guard is invalid \E2\80\94 chain guarded branches adjacently.\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 74, ptr @str.12 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"diag::E2096_bar_before_guard", ptr null }
@"var.diag::E2096_bar_before_guard" = global ptr null
@str.13 = internal unnamed_addr constant [49 x i8] c"Redundant choice tail '<+> | <->' is forbidden. \00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.13 }
@str.14 = internal unnamed_addr constant [57 x i8] c"Empty guard body '[guard]' already produces a bare flag.\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.14 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"diag::E2105_redundant_choice_tail", ptr null }
@"var.diag::E2105_redundant_choice_tail" = global ptr null
@str.15 = internal unnamed_addr constant [91 x i8] c"State binding operator '~~' requires a variable, member access, or indexed element target.\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 90, ptr @str.15 }
@clo.const.15 = internal constant { ptr, ptr } { ptr @"diag::E2108_state_binding_target", ptr null }
@"var.diag::E2108_state_binding_target" = global ptr null
@str.16 = internal unnamed_addr constant [21 x i8] c"Disallowed syntax '[\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 20, ptr @str.16 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.17 = internal unnamed_addr constant [13 x i8] c" _]'. Use '[\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.17 }
@str.18 = internal unnamed_addr constant [12 x i8] c"]' instead.\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 11, ptr @str.18 }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"diag::E2109_disallowed_variant_wildcard", ptr null }
@"var.diag::E2109_disallowed_variant_wildcard" = global ptr null
@str.19 = internal unnamed_addr constant [75 x i8] c"Omitting a Choice/pattern branch's leading condition is only allowed when \00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 74, ptr @str.19 }
@str.20 = internal unnamed_addr constant [82 x i8] c"'_' is already defined in the enclosing scope (e.g. inside a '=> '-omitted-param \00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 81, ptr @str.20 }
@str.21 = internal unnamed_addr constant [51 x i8] c"lambda, or a cycle body). '_' is not defined here.\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.21 }
@clo.const.17 = internal constant { ptr, ptr } { ptr @"diag::E3003_choice_underscore_undefined", ptr null }
@"var.diag::E3003_choice_underscore_undefined" = global ptr null
@str.22 = internal unnamed_addr constant [94 x i8] c"Unary '!' cannot be applied to this type. Use Flag for logical NOT or '+' for Builder freeze.\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 93, ptr @str.22 }
@clo.const.18 = internal constant { ptr, ptr } { ptr @"diag::E3008_not_invalid_type", ptr null }
@"var.diag::E3008_not_invalid_type" = global ptr null
@str.23 = internal unnamed_addr constant [44 x i8] c"Unary '!' cannot be applied to an integer. \00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.23 }
@str.24 = internal unnamed_addr constant [66 x i8] c"To create a Builder with capacity n, use the brace literal '{n}'.\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 65, ptr @str.24 }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"diag::E3008_not_integer", ptr null }
@"var.diag::E3008_not_integer" = global ptr null
@str.25 = internal unnamed_addr constant [44 x i8] c"Cannot assign Void expression to variable '\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.25 }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"diag::E3032_assign_void_var_prefix", ptr null }
@"var.diag::E3032_assign_void_var_prefix" = global ptr null
@str.26 = internal unnamed_addr constant [46 x i8] c"Cannot assign Void expression to element of '\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 45, ptr @str.26 }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"diag::E3032_assign_void_elem_prefix", ptr null }
@"var.diag::E3032_assign_void_elem_prefix" = global ptr null
@str.27 = internal unnamed_addr constant [37 x i8] c"Cannot re-assign immutable binding '\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 36, ptr @str.27 }
@clo.const.22 = internal constant { ptr, ptr } { ptr @"diag::E3033_reassign_immutable_prefix", ptr null }
@"var.diag::E3033_reassign_immutable_prefix" = global ptr null
@str.28 = internal unnamed_addr constant [25 x i8] c"'. Use a prime suffix ('\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.28 }
@clo.const.23 = internal constant { ptr, ptr } { ptr @"diag::E3033_reassign_immutable_suffix", ptr null }
@"var.diag::E3033_reassign_immutable_suffix" = global ptr null
@str.29 = internal unnamed_addr constant [30 x i8] c"'') for rebindable variables.\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.29 }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"diag::E3033_reassign_immutable_tail", ptr null }
@"var.diag::E3033_reassign_immutable_tail" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"diag::reassign_immutable", ptr null }
@"var.diag::reassign_immutable" = global ptr null
@str.30 = internal unnamed_addr constant [3 x i8] c"'.\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.30 }
@clo.const.26 = internal constant { ptr, ptr } { ptr @"diag::assign_void_variable", ptr null }
@"var.diag::assign_void_variable" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"diag::assign_void_element", ptr null }
@"var.diag::assign_void_element" = global ptr null
@str.31 = internal unnamed_addr constant [21 x i8] c"Homogeneous record '\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 20, ptr @str.31 }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"diag::E3131_whole_val_init_prefix", ptr null }
@str.32 = internal unnamed_addr constant [61 x i8] c"' requires whole-value initialization before element access.\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.32 }
@clo.const.29 = internal constant { ptr, ptr } { ptr @"diag::E3131_whole_val_init_suffix", ptr null }
@clo.const.30 = internal constant { ptr, ptr } { ptr @"diag::whole_value_init", ptr null }
@"var.diag::whole_value_init" = global ptr null
@str.33 = internal unnamed_addr constant [8 x i8] c"Field '\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.33 }
@str.34 = internal unnamed_addr constant [7 x i8] c"' of '\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.34 }
@str.35 = internal unnamed_addr constant [45 x i8] c"' has no default value and was not provided.\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 44, ptr @str.35 }
@clo.const.31 = internal constant { ptr, ptr } { ptr @"diag::record_default_missing", ptr null }
@"var.diag::record_default_missing" = global ptr null
@str.36 = internal unnamed_addr constant [7 x i8] c"Enum '\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.36 }
@str.37 = internal unnamed_addr constant [27 x i8] c"' has no variant labeled '\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.37 }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"diag::enum_no_variant", ptr null }
@"var.diag::enum_no_variant" = global ptr null
@str.38 = internal unnamed_addr constant [12 x i8] c"' variant '\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 11, ptr @str.38 }
@str.39 = internal unnamed_addr constant [48 x i8] c"' is a bare unit and takes no payload argument.\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.39 }
@clo.const.33 = internal constant { ptr, ptr } { ptr @"diag::enum_unit_payload", ptr null }
@"var.diag::enum_unit_payload" = global ptr null
@str.40 = internal unnamed_addr constant [27 x i8] c"' expects payload of type \00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.40 }
@str.41 = internal unnamed_addr constant [7 x i8] c", got \00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.41 }
@str.42 = internal unnamed_addr constant [2 x i8] c".\00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.42 }
@clo.const.34 = internal constant { ptr, ptr } { ptr @"diag::enum_payload_type", ptr null }
@"var.diag::enum_payload_type" = global ptr null
@str.43 = internal unnamed_addr constant [44 x i8] c"Passing a partially-initialized composite '\00"
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.43 }
@str.44 = internal unnamed_addr constant [31 x i8] c"' to a function is disallowed.\00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.44 }
@clo.const.35 = internal constant { ptr, ptr } { ptr @"diag::partial_composite_argument", ptr null }
@"var.diag::partial_composite_argument" = global ptr null
@str.45 = internal unnamed_addr constant [57 x i8] c"Dynamic indexing is only allowed on homogeneous records.\00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.45 }
@clo.const.36 = internal constant { ptr, ptr } { ptr @"diag::E3051_dynamic_index_hetero", ptr null }
@"var.diag::E3051_dynamic_index_hetero" = global ptr null
@str.46 = internal unnamed_addr constant [56 x i8] c"Cycle iteration is only allowed on homogeneous records.\00"
@str.46.struct = internal unnamed_addr constant { i64, ptr } { i64 55, ptr @str.46 }
@clo.const.37 = internal constant { ptr, ptr } { ptr @"diag::E3051_cycle_iter_hetero", ptr null }
@"var.diag::E3051_cycle_iter_hetero" = global ptr null
@str.47 = internal unnamed_addr constant [72 x i8] c"Cannot construct a String from a RawPtr \E2\80\94 'String(ptr)' is rejected. \00"
@str.47.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.47 }
@str.48 = internal unnamed_addr constant [55 x i8] c"Build with literals, '+', '++', 's + n', or a Builder.\00"
@str.48.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.48 }
@clo.const.38 = internal constant { ptr, ptr } { ptr @"diag::E3065_rawptr_to_string", ptr null }
@"var.diag::E3065_rawptr_to_string" = global ptr null
@str.49 = internal unnamed_addr constant [59 x i8] c"Address operator '&' requires a Builder or String operand.\00"
@str.49.struct = internal unnamed_addr constant { i64, ptr } { i64 58, ptr @str.49 }
@clo.const.39 = internal constant { ptr, ptr } { ptr @"diag::E3078_addr_builder_or_string", ptr null }
@"var.diag::E3078_addr_builder_or_string" = global ptr null
@str.50 = internal unnamed_addr constant [35 x i8] c"Record size mismatch in arithmetic\00"
@str.50.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.50 }
@clo.const.40 = internal constant { ptr, ptr } { ptr @"diag::E3084_record_size_mismatch", ptr null }
@"var.diag::E3084_record_size_mismatch" = global ptr null
@str.51 = internal unnamed_addr constant [25 x i8] c"Arithmetic type mismatch\00"
@str.51.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.51 }
@clo.const.41 = internal constant { ptr, ptr } { ptr @"diag::E3084_arithmetic_type_mismatch", ptr null }
@"var.diag::E3084_arithmetic_type_mismatch" = global ptr null
@str.52 = internal unnamed_addr constant [39 x i8] c"Builder append requires byte or String\00"
@str.52.struct = internal unnamed_addr constant { i64, ptr } { i64 38, ptr @str.52 }
@clo.const.42 = internal constant { ptr, ptr } { ptr @"diag::E3084_builder_append_type", ptr null }
@"var.diag::E3084_builder_append_type" = global ptr null
@str.53 = internal unnamed_addr constant [43 x i8] c"Incompatible branch result types in choice\00"
@str.53.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.53 }
@clo.const.43 = internal constant { ptr, ptr } { ptr @"diag::E3084_choice_branch_mismatch", ptr null }
@"var.diag::E3084_choice_branch_mismatch" = global ptr null
@str.54 = internal unnamed_addr constant [40 x i8] c"Operand of '--!' must be a ramification\00"
@str.54.struct = internal unnamed_addr constant { i64, ptr } { i64 39, ptr @str.54 }
@clo.const.44 = internal constant { ptr, ptr } { ptr @"diag::E3091_propagate_ram_operand", ptr null }
@"var.diag::E3091_propagate_ram_operand" = global ptr null
@str.55 = internal unnamed_addr constant [42 x i8] c"Cannot infer concrete type for expression\00"
@str.55.struct = internal unnamed_addr constant { i64, ptr } { i64 41, ptr @str.55 }
@clo.const.45 = internal constant { ptr, ptr } { ptr @"diag::E3103_cannot_infer_type", ptr null }
@"var.diag::E3103_cannot_infer_type" = global ptr null
@"var.diag::E3131_whole_val_init_prefix" = global ptr null
@"var.diag::E3131_whole_val_init_suffix" = global ptr null
@str.56 = internal unnamed_addr constant [49 x i8] c"Cannot return Addr from an arena-restore scope. \00"
@str.56.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.56 }
@str.57 = internal unnamed_addr constant [48 x i8] c"Copy data explicitly with '++' before boundary.\00"
@str.57.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.57 }
@clo.const.46 = internal constant { ptr, ptr } { ptr @"diag::E3133_addr_escape_restore", ptr null }
@"var.diag::E3133_addr_escape_restore" = global ptr null
@str.58 = internal unnamed_addr constant [80 x i8] c"Assignment of block-scoped Addr to outer-scope binding escapes arena lifecycle.\00"
@str.58.struct = internal unnamed_addr constant { i64, ptr } { i64 79, ptr @str.58 }
@clo.const.47 = internal constant { ptr, ptr } { ptr @"diag::E3134_addr_escape_lifecycle", ptr null }
@"var.diag::E3134_addr_escape_lifecycle" = global ptr null
@str.59 = internal unnamed_addr constant [54 x i8] c"Compile-time type choice has no branch for this type.\00"
@str.59.struct = internal unnamed_addr constant { i64, ptr } { i64 53, ptr @str.59 }
@clo.const.48 = internal constant { ptr, ptr } { ptr @"diag::E3136_type_choice_no_branch", ptr null }
@"var.diag::E3136_type_choice_no_branch" = global ptr null
@str.60 = internal unnamed_addr constant [79 x i8] c"arena allocation under --no-runtime. The feature you used (a record, closure, \00"
@str.60.struct = internal unnamed_addr constant { i64, ptr } { i64 78, ptr @str.60 }
@str.61 = internal unnamed_addr constant [68 x i8] c"String concat, Builder, or heap ram/enum) needs the runtime arena, \00"
@str.61.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.61 }
@str.62 = internal unnamed_addr constant [73 x i8] c"which --no-runtime omits. Use only bare-metal features: Int arithmetic, \00"
@str.62.struct = internal unnamed_addr constant { i64, ptr } { i64 72, ptr @str.62 }
@str.63 = internal unnamed_addr constant [62 x i8] c"String literals, '?s', 's(i)', and raw '@[Addr(...)]' memory.\00"
@str.63.struct = internal unnamed_addr constant { i64, ptr } { i64 61, ptr @str.63 }
@clo.const.49 = internal constant { ptr, ptr } { ptr @"diag::E3140_no_runtime_arena", ptr null }
@"var.diag::E3140_no_runtime_arena" = global ptr null
@str.64 = internal unnamed_addr constant [85 x i8] c"Raw memory write '@[addr] = expr' requires an integerish or pointer value, got Float\00"
@str.64.struct = internal unnamed_addr constant { i64, ptr } { i64 84, ptr @str.64 }
@clo.const.50 = internal constant { ptr, ptr } { ptr @"diag::E3142_raw_write_type", ptr null }
@"var.diag::E3142_raw_write_type" = global ptr null
@str.65 = internal unnamed_addr constant [34 x i8] c"View cannot escape function frame\00"
@str.65.struct = internal unnamed_addr constant { i64, ptr } { i64 33, ptr @str.65 }
@clo.const.51 = internal constant { ptr, ptr } { ptr @"diag::E3150_view_escape_frame", ptr null }
@"var.diag::E3150_view_escape_frame" = global ptr null
@str.66 = internal unnamed_addr constant [42 x i8] c"'#exit' expects an integerish status code\00"
@str.66.struct = internal unnamed_addr constant { i64, ptr } { i64 41, ptr @str.66 }
@clo.const.52 = internal constant { ptr, ptr } { ptr @"diag::E3172_exit_status_integerish", ptr null }
@"var.diag::E3172_exit_status_integerish" = global ptr null
@str.67 = internal unnamed_addr constant [49 x i8] c"Return '--|' can only be used inside a function.\00"
@str.67.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.67 }
@clo.const.53 = internal constant { ptr, ptr } { ptr @"diag::E3173_return_outside_fn", ptr null }
@"var.diag::E3173_return_outside_fn" = global ptr null
@str.68 = internal unnamed_addr constant [61 x i8] c"Propagate operator '--!' can only be used inside a function.\00"
@str.68.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.68 }
@clo.const.54 = internal constant { ptr, ptr } { ptr @"diag::E3173_propagate_outside_fn", ptr null }
@"var.diag::E3173_propagate_outside_fn" = global ptr null
@str.69 = internal unnamed_addr constant [72 x i8] c"Choice has a constant expression in a branch and its value is discarded\00"
@str.69.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.69 }
@clo.const.55 = internal constant { ptr, ptr } { ptr @"diag::E3175_choice_const_discarded", ptr null }
@"var.diag::E3175_choice_const_discarded" = global ptr null
@str.70 = internal unnamed_addr constant [32 x i8] c"Use of uninitialized variable '\00"
@str.70.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.70 }
@clo.const.56 = internal constant { ptr, ptr } { ptr @"diag::uninitialized_variable_prefix", ptr null }
@"var.diag::uninitialized_variable_prefix" = global ptr null
@str.71 = internal unnamed_addr constant [68 x i8] c"' \E2\80\94 it is a built-in type name and is reserved for type coercion.\00"
@str.71.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.71 }
@clo.const.57 = internal constant { ptr, ptr } { ptr @"diag::E3050_reserved_type_name_suffix", ptr null }
@"var.diag::E3050_reserved_type_name_suffix" = global ptr null
@str.72 = internal unnamed_addr constant [35 x i8] c"Return type mismatch in function: \00"
@str.72.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.72 }
@clo.const.58 = internal constant { ptr, ptr } { ptr @"diag::return_type_mismatch_prefix", ptr null }
@"var.diag::return_type_mismatch_prefix" = global ptr null
@str.73 = internal unnamed_addr constant [33 x i8] c"Type mismatch in assignment to: \00"
@str.73.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.73 }
@clo.const.59 = internal constant { ptr, ptr } { ptr @"diag::assignment_type_mismatch_prefix", ptr null }
@"var.diag::assignment_type_mismatch_prefix" = global ptr null
@str.74 = internal unnamed_addr constant [87 x i8] c"Member index '#member x, i' must be a compile-time constant (a per-field cycle index).\00"
@str.74.struct = internal unnamed_addr constant { i64, ptr } { i64 86, ptr @str.74 }
@clo.const.60 = internal constant { ptr, ptr } { ptr @"diag::member_index_constant", ptr null }
@"var.diag::member_index_constant" = global ptr null
@str.75 = internal unnamed_addr constant [36 x i8] c"Type mismatch in field assignment: \00"
@str.75.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.75 }
@clo.const.61 = internal constant { ptr, ptr } { ptr @"diag::field_assignment_type_mismatch_prefix", ptr null }
@"var.diag::field_assignment_type_mismatch_prefix" = global ptr null
@str.76 = internal unnamed_addr constant [44 x i8] c"Cannot write through a String call-target '\00"
@str.76.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.76 }
@clo.const.62 = internal constant { ptr, ptr } { ptr @"diag::E3067_string_write_prefix", ptr null }
@"var.diag::E3067_string_write_prefix" = global ptr null
@str.77 = internal unnamed_addr constant [72 x i8] c"(...)' \E2\80\94 Strings are immutable and a Builder is written with 'b + c'.\00"
@str.77.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.77 }
@clo.const.63 = internal constant { ptr, ptr } { ptr @"diag::E3067_string_write_suffix", ptr null }
@"var.diag::E3067_string_write_suffix" = global ptr null
@str.78 = internal unnamed_addr constant [50 x i8] c"Cannot write element of forward-annotated slice '\00"
@str.78.struct = internal unnamed_addr constant { i64, ptr } { i64 49, ptr @str.78 }
@clo.const.64 = internal constant { ptr, ptr } { ptr @"diag::E3049_slice_write_prefix", ptr null }
@"var.diag::E3049_slice_write_prefix" = global ptr null
@str.79 = internal unnamed_addr constant [37 x i8] c"' before whole-value initialization.\00"
@str.79.struct = internal unnamed_addr constant { i64, ptr } { i64 36, ptr @str.79 }
@clo.const.65 = internal constant { ptr, ptr } { ptr @"diag::E3049_slice_write_suffix", ptr null }
@"var.diag::E3049_slice_write_suffix" = global ptr null
@str.80 = internal unnamed_addr constant [49 x i8] c"Cannot infer concrete return type for function '\00"
@str.80.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.80 }
@clo.const.66 = internal constant { ptr, ptr } { ptr @"diag::return_type_inference_prefix", ptr null }
@"var.diag::return_type_inference_prefix" = global ptr null
@str.81 = internal unnamed_addr constant [83 x i8] c"' is used as a value but its parameter types cannot be determined \E2\80\94 no declared \00"
@str.81.struct = internal unnamed_addr constant { i64, ptr } { i64 82, ptr @str.81 }
@str.82 = internal unnamed_addr constant [65 x i8] c"signature and no call site to infer from. Declare a signature: '\00"
@str.82.struct = internal unnamed_addr constant { i64, ptr } { i64 64, ptr @str.82 }
@clo.const.67 = internal constant { ptr, ptr } { ptr @"diag::E3128_function_value_signature_suffix", ptr null }
@"var.diag::E3128_function_value_signature_suffix" = global ptr null
@str.83 = internal unnamed_addr constant [35 x i8] c"Expected primary expression, got '\00"
@str.83.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.83 }
@clo.const.68 = internal constant { ptr, ptr } { ptr @"diag::expected_primary_prefix", ptr null }
@"var.diag::expected_primary_prefix" = global ptr null
@str.84 = internal unnamed_addr constant [72 x i8] c"Cycle jump suffix must be a positive integer depth (e.g. '-->2'), got '\00"
@str.84.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.84 }
@clo.const.69 = internal constant { ptr, ptr } { ptr @"diag::cycle_jump_depth_prefix", ptr null }
@"var.diag::cycle_jump_depth_prefix" = global ptr null
@str.85 = internal unnamed_addr constant [63 x i8] c"Record type repetition count must be a positive integer, got '\00"
@str.85.struct = internal unnamed_addr constant { i64, ptr } { i64 62, ptr @str.85 }
@clo.const.70 = internal constant { ptr, ptr } { ptr @"diag::record_repeat_count_prefix", ptr null }
@"var.diag::record_repeat_count_prefix" = global ptr null
@str.86 = internal unnamed_addr constant [32 x i8] c" exceeds the maximum of 1000000\00"
@str.86.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.86 }
@clo.const.71 = internal constant { ptr, ptr } { ptr @"diag::record_repeat_limit_suffix", ptr null }
@"var.diag::record_repeat_limit_suffix" = global ptr null
@str.87 = internal unnamed_addr constant [55 x i8] c"Expected an integer right binding-power after '#infix(\00"
@str.87.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.87 }
@clo.const.72 = internal constant { ptr, ptr } { ptr @"diag::infix_right_binding_power_prefix", ptr null }
@"var.diag::infix_right_binding_power_prefix" = global ptr null
@str.88 = internal unnamed_addr constant [62 x i8] c"Expected an integer left binding-power after '#infix(', got '\00"
@str.88.struct = internal unnamed_addr constant { i64, ptr } { i64 61, ptr @str.88 }
@clo.const.73 = internal constant { ptr, ptr } { ptr @"diag::infix_left_binding_power_prefix", ptr null }
@"var.diag::infix_left_binding_power_prefix" = global ptr null
@str.89 = internal unnamed_addr constant [48 x i8] c"' conflicts with symbol already imported from '\00"
@str.89.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.89 }
@clo.const.74 = internal constant { ptr, ptr } { ptr @"diag::imported_symbol_conflict_suffix", ptr null }
@"var.diag::imported_symbol_conflict_suffix" = global ptr null
@str.90 = internal unnamed_addr constant [38 x i8] c"E3033: Name clash: foreign function '\00"
@str.90.struct = internal unnamed_addr constant { i64, ptr } { i64 37, ptr @str.90 }
@clo.const.75 = internal constant { ptr, ptr } { ptr @"diag::E3033_foreign_function_clash_prefix", ptr null }
@"var.diag::E3033_foreign_function_clash_prefix" = global ptr null
@str.91 = internal unnamed_addr constant [59 x i8] c"' declared in module conflicts with symbol imported from '\00"
@str.91.struct = internal unnamed_addr constant { i64, ptr } { i64 58, ptr @str.91 }
@clo.const.76 = internal constant { ptr, ptr } { ptr @"diag::declared_symbol_conflict_suffix", ptr null }
@"var.diag::declared_symbol_conflict_suffix" = global ptr null
@str.92 = internal unnamed_addr constant [45 x i8] c"E5038: module import cycle across packages: \00"
@str.92.struct = internal unnamed_addr constant { i64, ptr } { i64 44, ptr @str.92 }
@clo.const.77 = internal constant { ptr, ptr } { ptr @"diag::E5038_package_import_cycle_prefix", ptr null }
@"var.diag::E5038_package_import_cycle_prefix" = global ptr null
@str.93 = internal unnamed_addr constant [43 x i8] c": Clang compilation failed with exit code \00"
@str.93.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.93 }
@clo.const.78 = internal constant { ptr, ptr } { ptr @"diag::clang_compilation_failed_suffix", ptr null }
@"var.diag::clang_compilation_failed_suffix" = global ptr null
@str.94 = internal unnamed_addr constant [37 x i8] c"E5007: No input .dva file specified.\00"
@str.94.struct = internal unnamed_addr constant { i64, ptr } { i64 36, ptr @str.94 }
@clo.const.79 = internal constant { ptr, ptr } { ptr @"diag::E5007_no_input", ptr null }
@"var.diag::E5007_no_input" = global ptr null
@str.95 = internal unnamed_addr constant [43 x i8] c"Record does not satisfy open record fields\00"
@str.95.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.95 }
@clo.const.80 = internal constant { ptr, ptr } { ptr @"diag::E3084_open_record_fields", ptr null }
@"var.diag::E3084_open_record_fields" = global ptr null
@str.96 = internal unnamed_addr constant [37 x i8] c"Cannot assign ramification of shape \00"
@str.96.struct = internal unnamed_addr constant { i64, ptr } { i64 36, ptr @str.96 }
@clo.const.81 = internal constant { ptr, ptr } { ptr @"diag::E3089_ram_shape_prefix", ptr null }
@"var.diag::E3089_ram_shape_prefix" = global ptr null
@str.97 = internal unnamed_addr constant [41 x i8] c"--locked: edva.lock.ccl is out of date (\00"
@str.97.struct = internal unnamed_addr constant { i64, ptr } { i64 40, ptr @str.97 }
@clo.const.82 = internal constant { ptr, ptr } { ptr @"diag::locked_manifest_stale_prefix", ptr null }
@"var.diag::locked_manifest_stale_prefix" = global ptr null
@str.98 = internal unnamed_addr constant [56 x i8] c"': repository contains illegal path or escaping symlink\00"
@str.98.struct = internal unnamed_addr constant { i64, ptr } { i64 55, ptr @str.98 }
@clo.const.83 = internal constant { ptr, ptr } { ptr @"diag::repository_illegal_path_suffix", ptr null }
@"var.diag::repository_illegal_path_suffix" = global ptr null
@str.99 = internal unnamed_addr constant [50 x i8] c"tampered vendor content: tree hash mismatch for '\00"
@str.99.struct = internal unnamed_addr constant { i64, ptr } { i64 49, ptr @str.99 }
@clo.const.84 = internal constant { ptr, ptr } { ptr @"diag::vendor_tree_mismatch_prefix", ptr null }
@"var.diag::vendor_tree_mismatch_prefix" = global ptr null
@str.100 = internal unnamed_addr constant [51 x i8] c"': archive contains illegal path or path traversal\00"
@str.100.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.100 }
@clo.const.85 = internal constant { ptr, ptr } { ptr @"diag::archive_illegal_path_suffix", ptr null }
@"var.diag::archive_illegal_path_suffix" = global ptr null
@str.101 = internal unnamed_addr constant [85 x i8] c"' cannot be applied to ramifications \E2\80\94 ramifications have no ordering; test their \00"
@str.101.struct = internal unnamed_addr constant { i64, ptr } { i64 84, ptr @str.101 }
@str.102 = internal unnamed_addr constant [33 x i8] c"slots with '|' branches instead.\00"
@str.102.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.102 }
@clo.const.86 = internal constant { ptr, ptr } { ptr @"diag::E3127_ram_ordering_suffix", ptr null }
@"var.diag::E3127_ram_ordering_suffix" = global ptr null
@str.103 = internal unnamed_addr constant [70 x i8] c"' cannot be applied to enums \E2\80\94 enums have no ordering; match their \00"
@str.103.struct = internal unnamed_addr constant { i64, ptr } { i64 69, ptr @str.103 }
@str.104 = internal unnamed_addr constant [44 x i8] c"variants with '[Variant]' branches instead.\00"
@str.104.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.104 }
@clo.const.87 = internal constant { ptr, ptr } { ptr @"diag::E3127_enum_ordering_suffix", ptr null }
@"var.diag::E3127_enum_ordering_suffix" = global ptr null
@str.105 = internal unnamed_addr constant [93 x i8] c"Record field index '#member T, i' must be a compile-time constant (a per-field cycle index).\00"
@str.105.struct = internal unnamed_addr constant { i64, ptr } { i64 92, ptr @str.105 }
@clo.const.88 = internal constant { ptr, ptr } { ptr @"diag::record_field_index_constant", ptr null }
@"var.diag::record_field_index_constant" = global ptr null
@str.106 = internal unnamed_addr constant [88 x i8] c"Enum variant index '#member T, i' must be a compile-time constant (a per-variant cycle \00"
@str.106.struct = internal unnamed_addr constant { i64, ptr } { i64 87, ptr @str.106 }
@str.107 = internal unnamed_addr constant [8 x i8] c"index).\00"
@str.107.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.107 }
@clo.const.89 = internal constant { ptr, ptr } { ptr @"diag::enum_variant_index_constant", ptr null }
@"var.diag::enum_variant_index_constant" = global ptr null
@str.108 = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@str.108.struct = internal unnamed_addr constant { i64, ptr } { i64 70, ptr @str.108 }
@clo.const.90 = internal constant { ptr, ptr } { ptr @"diag::E4002_string_length_overflow", ptr null }
@"var.diag::E4002_string_length_overflow" = global ptr null
@str.109 = internal unnamed_addr constant [31 x i8] c"' targets cycle-nesting level \00"
@str.109.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.109 }
@clo.const.91 = internal constant { ptr, ptr } { ptr @"diag::E3007_cycle_jump_level_prefix", ptr null }
@"var.diag::E3007_cycle_jump_level_prefix" = global ptr null
@str.110 = internal unnamed_addr constant [41 x i8] c" enclosing cycle(s) exist at this point.\00"
@str.110.struct = internal unnamed_addr constant { i64, ptr } { i64 40, ptr @str.110 }
@clo.const.92 = internal constant { ptr, ptr } { ptr @"diag::E3007_cycle_jump_level_suffix", ptr null }
@"var.diag::E3007_cycle_jump_level_suffix" = global ptr null
@str.111 = internal unnamed_addr constant [46 x i8] c"E4007: unwrap on empty or error ramification\0A\00"
@str.111.struct = internal unnamed_addr constant { i64, ptr } { i64 45, ptr @str.111 }
@clo.const.93 = internal constant { ptr, ptr } { ptr @"diag::E4007_unwrap_empty_or_error", ptr null }
@"var.diag::E4007_unwrap_empty_or_error" = global ptr null
@str.112 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.112.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.112 }
@str.113 = internal unnamed_addr constant [6 x i8] c" of '\00"
@str.113.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.113 }
@str.114 = internal unnamed_addr constant [2 x i8] c"'\00"
@str.114.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.114 }
@str.115 = internal unnamed_addr constant [43 x i8] c"Cannot infer compile-time type parameter '\00"
@str.115.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.115 }
@str.116 = internal unnamed_addr constant [93 x i8] c": it occurs in no parameter or result type \E2\80\94 pass it explicitly as a leading type argument\00"
@str.116.struct = internal unnamed_addr constant { i64, ptr } { i64 92, ptr @str.116 }
@clo.const.94 = internal constant { ptr, ptr } { ptr @"diag::uninferable_type_param", ptr null }
@"var.diag::uninferable_type_param" = global ptr null
@str.117 = internal unnamed_addr constant [32 x i8] c"' is not compile-time evaluable\00"
@str.117.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.117 }
@clo.const.95 = internal constant { ptr, ptr } { ptr @"diag::compile_time_parameter_suffix", ptr null }
@"var.diag::compile_time_parameter_suffix" = global ptr null
@str.118 = internal unnamed_addr constant [78 x i8] c"' is ambiguous \E2\80\94 declared by multiple enums; qualify the variant as 'Enum::\00"
@str.118.struct = internal unnamed_addr constant { i64, ptr } { i64 77, ptr @str.118 }
@clo.const.96 = internal constant { ptr, ptr } { ptr @"diag::E3105_enum_label_ambiguous_suffix", ptr null }
@"var.diag::E3105_enum_label_ambiguous_suffix" = global ptr null
@str.119 = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@str.119.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.119 }
@clo.const.97 = internal constant { ptr, ptr } { ptr @"diag::E4008_builder_length_bounds", ptr null }
@"var.diag::E4008_builder_length_bounds" = global ptr null
@str.120 = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@str.120.struct = internal unnamed_addr constant { i64, ptr } { i64 37, ptr @str.120 }
@clo.const.98 = internal constant { ptr, ptr } { ptr @"diag::runtime_error_format", ptr null }
@"var.diag::runtime_error_format" = global ptr null
@str.121 = internal unnamed_addr constant [83 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk \00"
@str.121.struct = internal unnamed_addr constant { i64, ptr } { i64 82, ptr @str.121 }
@str.122 = internal unnamed_addr constant [17 x i8] c"cap %llu bytes)\0A\00"
@str.122.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.122 }
@clo.const.99 = internal constant { ptr, ptr } { ptr @"diag::E4004_arena_allocation_too_large", ptr null }
@"var.diag::E4004_arena_allocation_too_large" = global ptr null
@str.123 = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@str.123.struct = internal unnamed_addr constant { i64, ptr } { i64 57, ptr @str.123 }
@clo.const.100 = internal constant { ptr, ptr } { ptr @"diag::E4003_arena_chunk_limit", ptr null }
@"var.diag::E4003_arena_chunk_limit" = global ptr null
@str.124 = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@str.124.struct = internal unnamed_addr constant { i64, ptr } { i64 49, ptr @str.124 }
@clo.const.101 = internal constant { ptr, ptr } { ptr @"diag::E4001_arena_exhausted", ptr null }
@"var.diag::E4001_arena_exhausted" = global ptr null
@str.125 = internal unnamed_addr constant [36 x i8] c"E5012: Failed to write LLVM IR to '\00"
@str.125.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.125 }
@clo.const.102 = internal constant { ptr, ptr } { ptr @"diag::E5012_write_ir_prefix", ptr null }
@"var.diag::E5012_write_ir_prefix" = global ptr null
@str.126 = internal unnamed_addr constant [51 x i8] c"Unterminated string literal -- missing closing '\22'\00"
@str.126.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.126 }
@clo.const.103 = internal constant { ptr, ptr } { ptr @"diag::E1008_string_unterminated", ptr null }
@"var.diag::E1008_string_unterminated" = global ptr null
@"var.diag::capture_enabled" = global i1 false
@"var.diag::captured_diags" = global ptr null
@clo.const.104 = internal constant { ptr, ptr } { ptr @"diag::enable_capture", ptr null }
@"var.diag::enable_capture" = global ptr null
@clo.const.105 = internal constant { ptr, ptr } { ptr @"diag::disable_capture", ptr null }
@"var.diag::disable_capture" = global ptr null
@clo.const.106 = internal constant { ptr, ptr } { ptr @"diag::is_capturing", ptr null }
@"var.diag::is_capturing" = global ptr null
@clo.const.107 = internal constant { ptr, ptr } { ptr @"diag::clear_captured", ptr null }
@"var.diag::clear_captured" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.108 = internal constant { ptr, ptr } { ptr @"diag::record_diag", ptr null }
@"var.diag::record_diag" = global ptr null
@clo.const.109 = internal constant { ptr, ptr } { ptr @"diag::get_captured", ptr null }
@"var.diag::get_captured" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_diag, ptr null }]

declare ptr @dva_arena_current() #0

declare ptr @dva_arena_set_current(ptr) #0

declare noalias ptr @malloc(i64) #0

declare void @free(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

declare void @dva_arena_init(ptr, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #2 {
entry:
  %align.add = add i64 %1, 15
  %aligned = and i64 %align.add, -16
  %cap.ptr = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 0
  %cap = load i64, ptr %cap.ptr, align 8
  %nc.ptr = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 1
  %nc = load i64, ptr %nc.ptr, align 8
  %off.ptr = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 2
  %off = load i64, ptr %off.ptr, align 8
  %has.chunk = icmp ne i64 %nc, 0
  %remaining = sub i64 %cap, %off
  %fits = icmp ule i64 %aligned, %remaining
  %no.wrap = icmp uge i64 %aligned, %1
  %fits.safe = and i1 %fits, %no.wrap
  %fast.ok = and i1 %has.chunk, %fits.safe
  br i1 %fast.ok, label %bump, label %slow

bump:                                             ; preds = %entry
  %chunks = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 3
  %last = sub i64 %nc, 1
  %slot = getelementptr [16384 x ptr], ptr %chunks, i64 0, i64 %last
  %chunk = load ptr, ptr %slot, align 8
  %result = getelementptr i8, ptr %chunk, i64 %off
  %next = add i64 %off, %aligned
  store i64 %next, ptr %off.ptr, align 8
  ret ptr %result

slow:                                             ; preds = %entry
  %result.slow = call ptr @dva_arena_alloc_slow(ptr %0, i64 %1)
  ret ptr %result.slow
}

; Function Attrs: noinline
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #3

declare void @dva_arena_destroy(ptr) #0

declare i64 @dva_arena_save(ptr) #0

declare void @dva_arena_restore(ptr, i64) #0

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #3

declare void @dva_arena_adopt(ptr, ptr) #0

declare i64 @dva_hash_string(ptr, i64)

declare ptr @dva_cov_map_ptr()

declare void @dva_cov_trace(i64)

declare void @__sanitizer_cov_trace_pc_guard(ptr)

declare void @__sanitizer_cov_trace_pc_guard_init(ptr, ptr)

define internal void @__dva_global_init_diag() #0 {
entry:
  store ptr @clo.const, ptr @"var.diag::E1017_multiline_under_indented", align 8
  store ptr @clo.const.1, ptr @"var.diag::E1018_multiline_unterminated", align 8
  store ptr @clo.const.2, ptr @"var.diag::E1017_heredoc_under_indented", align 8
  store ptr @clo.const.3, ptr @"var.diag::E1018_heredoc_unterminated", align 8
  store ptr @clo.const.4, ptr @"var.diag::E2024_bare_bar_position", align 8
  store ptr @clo.const.5, ptr @"var.diag::E2025_range_endpoint_whitespace", align 8
  store ptr @clo.const.6, ptr @"var.diag::E2032_call_paren_whitespace", align 8
  store ptr @clo.const.7, ptr @"var.diag::E2037_params_parenthesized", align 8
  store ptr @clo.const.8, ptr @"var.diag::E2039_expr_too_deep", align 8
  store ptr @clo.const.9, ptr @"var.diag::E2039_param_mutable_prefix", align 8
  store ptr @clo.const.10, ptr @"var.diag::E2040_underscore_param", align 8
  store ptr @clo.const.11, ptr @"var.diag::E2044_underscore_assign", align 8
  store ptr @clo.const.12, ptr @"var.diag::E2093_assign_typed_load", align 8
  store ptr @clo.const.13, ptr @"var.diag::E2096_bar_before_guard", align 8
  store ptr @clo.const.14, ptr @"var.diag::E2105_redundant_choice_tail", align 8
  store ptr @clo.const.15, ptr @"var.diag::E2108_state_binding_target", align 8
  store ptr @clo.const.16, ptr @"var.diag::E2109_disallowed_variant_wildcard", align 8
  store ptr @clo.const.17, ptr @"var.diag::E3003_choice_underscore_undefined", align 8
  store ptr @clo.const.18, ptr @"var.diag::E3008_not_invalid_type", align 8
  store ptr @clo.const.19, ptr @"var.diag::E3008_not_integer", align 8
  store ptr @clo.const.20, ptr @"var.diag::E3032_assign_void_var_prefix", align 8
  store ptr @clo.const.21, ptr @"var.diag::E3032_assign_void_elem_prefix", align 8
  store ptr @clo.const.22, ptr @"var.diag::E3033_reassign_immutable_prefix", align 8
  store ptr @clo.const.23, ptr @"var.diag::E3033_reassign_immutable_suffix", align 8
  store ptr @clo.const.24, ptr @"var.diag::E3033_reassign_immutable_tail", align 8
  store ptr @clo.const.25, ptr @"var.diag::reassign_immutable", align 8
  store ptr @clo.const.26, ptr @"var.diag::assign_void_variable", align 8
  store ptr @clo.const.27, ptr @"var.diag::assign_void_element", align 8
  store ptr @clo.const.30, ptr @"var.diag::whole_value_init", align 8
  store ptr @clo.const.31, ptr @"var.diag::record_default_missing", align 8
  store ptr @clo.const.32, ptr @"var.diag::enum_no_variant", align 8
  store ptr @clo.const.33, ptr @"var.diag::enum_unit_payload", align 8
  store ptr @clo.const.34, ptr @"var.diag::enum_payload_type", align 8
  store ptr @clo.const.35, ptr @"var.diag::partial_composite_argument", align 8
  store ptr @clo.const.36, ptr @"var.diag::E3051_dynamic_index_hetero", align 8
  store ptr @clo.const.37, ptr @"var.diag::E3051_cycle_iter_hetero", align 8
  store ptr @clo.const.38, ptr @"var.diag::E3065_rawptr_to_string", align 8
  store ptr @clo.const.39, ptr @"var.diag::E3078_addr_builder_or_string", align 8
  store ptr @clo.const.40, ptr @"var.diag::E3084_record_size_mismatch", align 8
  store ptr @clo.const.41, ptr @"var.diag::E3084_arithmetic_type_mismatch", align 8
  store ptr @clo.const.42, ptr @"var.diag::E3084_builder_append_type", align 8
  store ptr @clo.const.43, ptr @"var.diag::E3084_choice_branch_mismatch", align 8
  store ptr @clo.const.44, ptr @"var.diag::E3091_propagate_ram_operand", align 8
  store ptr @clo.const.45, ptr @"var.diag::E3103_cannot_infer_type", align 8
  store ptr @clo.const.28, ptr @"var.diag::E3131_whole_val_init_prefix", align 8
  store ptr @clo.const.29, ptr @"var.diag::E3131_whole_val_init_suffix", align 8
  store ptr @clo.const.46, ptr @"var.diag::E3133_addr_escape_restore", align 8
  store ptr @clo.const.47, ptr @"var.diag::E3134_addr_escape_lifecycle", align 8
  store ptr @clo.const.48, ptr @"var.diag::E3136_type_choice_no_branch", align 8
  store ptr @clo.const.49, ptr @"var.diag::E3140_no_runtime_arena", align 8
  store ptr @clo.const.50, ptr @"var.diag::E3142_raw_write_type", align 8
  store ptr @clo.const.51, ptr @"var.diag::E3150_view_escape_frame", align 8
  store ptr @clo.const.52, ptr @"var.diag::E3172_exit_status_integerish", align 8
  store ptr @clo.const.53, ptr @"var.diag::E3173_return_outside_fn", align 8
  store ptr @clo.const.54, ptr @"var.diag::E3173_propagate_outside_fn", align 8
  store ptr @clo.const.55, ptr @"var.diag::E3175_choice_const_discarded", align 8
  store ptr @clo.const.56, ptr @"var.diag::uninitialized_variable_prefix", align 8
  store ptr @clo.const.57, ptr @"var.diag::E3050_reserved_type_name_suffix", align 8
  store ptr @clo.const.58, ptr @"var.diag::return_type_mismatch_prefix", align 8
  store ptr @clo.const.59, ptr @"var.diag::assignment_type_mismatch_prefix", align 8
  store ptr @clo.const.60, ptr @"var.diag::member_index_constant", align 8
  store ptr @clo.const.61, ptr @"var.diag::field_assignment_type_mismatch_prefix", align 8
  store ptr @clo.const.62, ptr @"var.diag::E3067_string_write_prefix", align 8
  store ptr @clo.const.63, ptr @"var.diag::E3067_string_write_suffix", align 8
  store ptr @clo.const.64, ptr @"var.diag::E3049_slice_write_prefix", align 8
  store ptr @clo.const.65, ptr @"var.diag::E3049_slice_write_suffix", align 8
  store ptr @clo.const.66, ptr @"var.diag::return_type_inference_prefix", align 8
  store ptr @clo.const.67, ptr @"var.diag::E3128_function_value_signature_suffix", align 8
  store ptr @clo.const.68, ptr @"var.diag::expected_primary_prefix", align 8
  store ptr @clo.const.69, ptr @"var.diag::cycle_jump_depth_prefix", align 8
  store ptr @clo.const.70, ptr @"var.diag::record_repeat_count_prefix", align 8
  store ptr @clo.const.71, ptr @"var.diag::record_repeat_limit_suffix", align 8
  store ptr @clo.const.72, ptr @"var.diag::infix_right_binding_power_prefix", align 8
  store ptr @clo.const.73, ptr @"var.diag::infix_left_binding_power_prefix", align 8
  store ptr @clo.const.74, ptr @"var.diag::imported_symbol_conflict_suffix", align 8
  store ptr @clo.const.75, ptr @"var.diag::E3033_foreign_function_clash_prefix", align 8
  store ptr @clo.const.76, ptr @"var.diag::declared_symbol_conflict_suffix", align 8
  store ptr @clo.const.77, ptr @"var.diag::E5038_package_import_cycle_prefix", align 8
  store ptr @clo.const.78, ptr @"var.diag::clang_compilation_failed_suffix", align 8
  store ptr @clo.const.79, ptr @"var.diag::E5007_no_input", align 8
  store ptr @clo.const.80, ptr @"var.diag::E3084_open_record_fields", align 8
  store ptr @clo.const.81, ptr @"var.diag::E3089_ram_shape_prefix", align 8
  store ptr @clo.const.82, ptr @"var.diag::locked_manifest_stale_prefix", align 8
  store ptr @clo.const.83, ptr @"var.diag::repository_illegal_path_suffix", align 8
  store ptr @clo.const.84, ptr @"var.diag::vendor_tree_mismatch_prefix", align 8
  store ptr @clo.const.85, ptr @"var.diag::archive_illegal_path_suffix", align 8
  store ptr @clo.const.86, ptr @"var.diag::E3127_ram_ordering_suffix", align 8
  store ptr @clo.const.87, ptr @"var.diag::E3127_enum_ordering_suffix", align 8
  store ptr @clo.const.88, ptr @"var.diag::record_field_index_constant", align 8
  store ptr @clo.const.89, ptr @"var.diag::enum_variant_index_constant", align 8
  store ptr @clo.const.90, ptr @"var.diag::E4002_string_length_overflow", align 8
  store ptr @clo.const.91, ptr @"var.diag::E3007_cycle_jump_level_prefix", align 8
  store ptr @clo.const.92, ptr @"var.diag::E3007_cycle_jump_level_suffix", align 8
  store ptr @clo.const.93, ptr @"var.diag::E4007_unwrap_empty_or_error", align 8
  store ptr @clo.const.94, ptr @"var.diag::uninferable_type_param", align 8
  store ptr @clo.const.95, ptr @"var.diag::compile_time_parameter_suffix", align 8
  store ptr @clo.const.96, ptr @"var.diag::E3105_enum_label_ambiguous_suffix", align 8
  store ptr @clo.const.97, ptr @"var.diag::E4008_builder_length_bounds", align 8
  store ptr @clo.const.98, ptr @"var.diag::runtime_error_format", align 8
  store ptr @clo.const.99, ptr @"var.diag::E4004_arena_allocation_too_large", align 8
  store ptr @clo.const.100, ptr @"var.diag::E4003_arena_chunk_limit", align 8
  store ptr @clo.const.101, ptr @"var.diag::E4001_arena_exhausted", align 8
  store ptr @clo.const.102, ptr @"var.diag::E5012_write_ir_prefix", align 8
  store ptr @clo.const.103, ptr @"var.diag::E1008_string_unterminated", align 8
  store i1 false, ptr @"var.diag::capture_enabled", align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr @"var.diag::captured_diags", align 8
  store ptr @clo.const.104, ptr @"var.diag::enable_capture", align 8
  store ptr @clo.const.105, ptr @"var.diag::disable_capture", align 8
  store ptr @clo.const.106, ptr @"var.diag::is_capturing", align 8
  store ptr @clo.const.107, ptr @"var.diag::clear_captured", align 8
  store ptr @clo.const.108, ptr @"var.diag::record_diag", align 8
  store ptr @clo.const.109, ptr @"var.diag::get_captured", align 8
  ret void
}

define { i64, ptr } @"diag::E1017_multiline_under_indented"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E1018_multiline_unterminated"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.1.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E1017_heredoc_under_indented"() #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %call.res = call { i64, ptr } @"diag::E1017_multiline_under_indented"()
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E1018_heredoc_unterminated"() #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %call.res = call { i64, ptr } @"diag::E1018_multiline_unterminated"()
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2024_bare_bar_position"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %concat.lhs = load i64, ptr @str.2.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.3.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %concat.rhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len5

concat.sum.len5:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len5

concat.tot.len8:                                  ; preds = %abort.dead10, %concat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs4, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort9:                              ; preds = %concat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %concat.tot.len8
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define { i64, ptr } @"diag::E2025_range_endpoint_whitespace"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.4.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2032_call_paren_whitespace"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.5.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2037_params_parenthesized"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.6.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2039_expr_too_deep"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.7.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2039_param_mutable_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.8.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2040_underscore_param"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.9.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2044_underscore_assign"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.10.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2093_assign_typed_load"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.11.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2096_bar_before_guard"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.12.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2105_redundant_choice_tail"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %concat.lhs = load i64, ptr @str.13.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.14.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %concat.rhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len5

concat.sum.len5:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len5

concat.tot.len8:                                  ; preds = %abort.dead10, %concat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs4, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort9:                              ; preds = %concat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %concat.tot.len8
}

define { i64, ptr } @"diag::E2108_state_binding_target"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.15.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E2109_disallowed_variant_wildcard"(ptr %0) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %var.tag = alloca ptr, align 8
  store ptr %0, ptr %var.tag, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %var.load = load ptr, ptr %var.tag, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data5 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %var.load6 = load ptr, ptr %var.tag, align 8
  %cat.seg7 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %cat.seg8 = load i64, ptr %cat.seg7, align 8
  %cat.seg9 = and i64 %cat.seg8, 281474976710655
  %str.tag10 = lshr i64 %cat.seg8, 48
  %tag.immortal12 = icmp eq i64 %str.tag10, 0
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current14 = icmp eq i64 %str.tag10, %active.gen13
  %tag.fast.ok15 = or i1 %tag.immortal12, %tag.current14
  br i1 %tag.fast.ok15, label %str_ok11, label %tag.slow_check16

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok11:                                         ; preds = %tag.slow_check16, %str_ok
  %cat.seg17 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %cat.seg18 = load ptr, ptr %cat.seg17, align 8
  %cat.lit.data19 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 20, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len20

tag.slow_check16:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag10)
  br label %str_ok11

cat.sum.len20:                                    ; preds = %abort.dead, %str_ok11
  %cat.sum.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 12)
  %sum22 = extractvalue { i64, i1 } %cat.sum.len21, 0
  %ovf23 = extractvalue { i64, i1 } %cat.sum.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %cat.sum.len24

str_overflow_abort:                               ; preds = %str_ok11
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len20

cat.sum.len24:                                    ; preds = %abort.dead26, %cat.sum.len20
  %cat.sum.len27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum22, i64 %cat.seg9)
  %sum28 = extractvalue { i64, i1 } %cat.sum.len27, 0
  %ovf29 = extractvalue { i64, i1 } %cat.sum.len27, 1
  br i1 %ovf29, label %str_overflow_abort31, label %cat.sum.len30

str_overflow_abort25:                             ; preds = %cat.sum.len20
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %cat.sum.len24

cat.sum.len30:                                    ; preds = %abort.dead32, %cat.sum.len24
  %cat.sum.len33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum28, i64 11)
  %sum34 = extractvalue { i64, i1 } %cat.sum.len33, 0
  %ovf35 = extractvalue { i64, i1 } %cat.sum.len33, 1
  br i1 %ovf35, label %str_overflow_abort37, label %cat.sum.len36

str_overflow_abort31:                             ; preds = %cat.sum.len24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %cat.sum.len30

cat.sum.len36:                                    ; preds = %abort.dead38, %cat.sum.len30
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum34, i64 1)
  %sum39 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf40 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %concat.tot.len41

str_overflow_abort37:                             ; preds = %cat.sum.len30
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %cat.sum.len36

concat.tot.len41:                                 ; preds = %abort.dead43, %cat.sum.len36
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum39)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 20, i1 false)
  %cat.dst44 = getelementptr i8, ptr %concat.buf, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst44, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 20, %cat.seg2
  %cat.dst45 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst45, ptr align 1 %cat.lit.data5, i64 12, i1 false)
  %cat.off46 = add i64 %cat.off, 12
  %cat.dst47 = getelementptr i8, ptr %concat.buf, i64 %cat.off46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst47, ptr align 1 %cat.seg18, i64 %cat.seg9, i1 false)
  %cat.off48 = add i64 %cat.off46, %cat.seg9
  %cat.dst49 = getelementptr i8, ptr %concat.buf, i64 %cat.off48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst49, ptr align 1 %cat.lit.data19, i64 11, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum34
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum34, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort42:                             ; preds = %cat.sum.len36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %concat.tot.len41
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #7 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %0)
  br i1 %tag.valid, label %valid, label %stale

valid:                                            ; preds = %entry
  ret void

stale:                                            ; preds = %entry
  call void @dva_abort_stale_str_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_str_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define { i64, ptr } @"diag::E3003_choice_underscore_undefined"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %cat.lit.data1 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %cat.lit.data2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 74, i64 81)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len3

cat.sum.len3:                                     ; preds = %abort.dead, %entry
  %cat.sum.len4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 50)
  %sum5 = extractvalue { i64, i1 } %cat.sum.len4, 0
  %ovf6 = extractvalue { i64, i1 } %cat.sum.len4, 1
  br i1 %ovf6, label %str_overflow_abort8, label %cat.sum.len7

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len3

cat.sum.len7:                                     ; preds = %abort.dead9, %cat.sum.len3
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum5, i64 1)
  %sum10 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf11 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf11, label %str_overflow_abort13, label %concat.tot.len12

str_overflow_abort8:                              ; preds = %cat.sum.len3
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %cat.sum.len7

concat.tot.len12:                                 ; preds = %abort.dead14, %cat.sum.len7
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum10)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 74, i1 false)
  %cat.dst15 = getelementptr i8, ptr %concat.buf, i64 74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst15, ptr align 1 %cat.lit.data1, i64 81, i1 false)
  %cat.dst16 = getelementptr i8, ptr %concat.buf, i64 155
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst16, ptr align 1 %cat.lit.data2, i64 50, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum5
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum5, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort13:                             ; preds = %cat.sum.len7
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead14:                                     ; No predecessors!
  br label %concat.tot.len12
}

define { i64, ptr } @"diag::E3008_not_invalid_type"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.22.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3008_not_integer"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %concat.lhs = load i64, ptr @str.23.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.24.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %concat.rhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.24.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len5

concat.sum.len5:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len5

concat.tot.len8:                                  ; preds = %abort.dead10, %concat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs4, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort9:                              ; preds = %concat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %concat.tot.len8
}

define { i64, ptr } @"diag::E3032_assign_void_var_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.25.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3032_assign_void_elem_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.26.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3033_reassign_immutable_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.27.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3033_reassign_immutable_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.28.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3033_reassign_immutable_tail"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.29.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::reassign_immutable"(ptr %0) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %ret.ub.salloc45 = alloca { i64, ptr }, align 8
  %ret.ub.salloc18 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call { i64, ptr } @"diag::E3033_reassign_immutable_prefix"()
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %cat.seg5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg6 = load i64, ptr %cat.seg5, align 8
  %cat.seg7 = and i64 %cat.seg6, 281474976710655
  %str.tag8 = lshr i64 %cat.seg6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok9:                                          ; preds = %tag.slow_check14, %str_ok
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg16 = load ptr, ptr %cat.seg15, align 8
  %call.res17 = call { i64, ptr } @"diag::E3033_reassign_immutable_suffix"()
  store { i64, ptr } %call.res17, ptr %ret.ub.salloc18, align 8
  %cat.seg19 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc18, i32 0, i32 0
  %cat.seg20 = load i64, ptr %cat.seg19, align 8
  %cat.seg21 = and i64 %cat.seg20, 281474976710655
  %str.tag22 = lshr i64 %cat.seg20, 48
  %tag.immortal24 = icmp eq i64 %str.tag22, 0
  %active.gen25 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current26 = icmp eq i64 %str.tag22, %active.gen25
  %tag.fast.ok27 = or i1 %tag.immortal24, %tag.current26
  br i1 %tag.fast.ok27, label %str_ok23, label %tag.slow_check28

tag.slow_check14:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

str_ok23:                                         ; preds = %tag.slow_check28, %str_ok9
  %cat.seg29 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc18, i32 0, i32 1
  %cat.seg30 = load ptr, ptr %cat.seg29, align 8
  %var.load31 = load ptr, ptr %var.name, align 8
  %cat.seg32 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %cat.seg33 = load i64, ptr %cat.seg32, align 8
  %cat.seg34 = and i64 %cat.seg33, 281474976710655
  %str.tag35 = lshr i64 %cat.seg33, 48
  %tag.immortal37 = icmp eq i64 %str.tag35, 0
  %active.gen38 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current39 = icmp eq i64 %str.tag35, %active.gen38
  %tag.fast.ok40 = or i1 %tag.immortal37, %tag.current39
  br i1 %tag.fast.ok40, label %str_ok36, label %tag.slow_check41

tag.slow_check28:                                 ; preds = %str_ok9
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag22)
  br label %str_ok23

str_ok36:                                         ; preds = %tag.slow_check41, %str_ok23
  %cat.seg42 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %cat.seg43 = load ptr, ptr %cat.seg42, align 8
  %call.res44 = call { i64, ptr } @"diag::E3033_reassign_immutable_tail"()
  store { i64, ptr } %call.res44, ptr %ret.ub.salloc45, align 8
  %cat.seg46 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc45, i32 0, i32 0
  %cat.seg47 = load i64, ptr %cat.seg46, align 8
  %cat.seg48 = and i64 %cat.seg47, 281474976710655
  %str.tag49 = lshr i64 %cat.seg47, 48
  %tag.immortal51 = icmp eq i64 %str.tag49, 0
  %active.gen52 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current53 = icmp eq i64 %str.tag49, %active.gen52
  %tag.fast.ok54 = or i1 %tag.immortal51, %tag.current53
  br i1 %tag.fast.ok54, label %str_ok50, label %tag.slow_check55

tag.slow_check41:                                 ; preds = %str_ok23
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag35)
  br label %str_ok36

str_ok50:                                         ; preds = %tag.slow_check55, %str_ok36
  %cat.seg56 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc45, i32 0, i32 1
  %cat.seg57 = load ptr, ptr %cat.seg56, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2, i64 %cat.seg7)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len58

tag.slow_check55:                                 ; preds = %str_ok36
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag49)
  br label %str_ok50

cat.sum.len58:                                    ; preds = %abort.dead, %str_ok50
  %cat.sum.len59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg21)
  %sum60 = extractvalue { i64, i1 } %cat.sum.len59, 0
  %ovf61 = extractvalue { i64, i1 } %cat.sum.len59, 1
  br i1 %ovf61, label %str_overflow_abort63, label %cat.sum.len62

str_overflow_abort:                               ; preds = %str_ok50
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len58

cat.sum.len62:                                    ; preds = %abort.dead64, %cat.sum.len58
  %cat.sum.len65 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum60, i64 %cat.seg34)
  %sum66 = extractvalue { i64, i1 } %cat.sum.len65, 0
  %ovf67 = extractvalue { i64, i1 } %cat.sum.len65, 1
  br i1 %ovf67, label %str_overflow_abort69, label %cat.sum.len68

str_overflow_abort63:                             ; preds = %cat.sum.len58
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %cat.sum.len62

cat.sum.len68:                                    ; preds = %abort.dead70, %cat.sum.len62
  %cat.sum.len71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum66, i64 %cat.seg48)
  %sum72 = extractvalue { i64, i1 } %cat.sum.len71, 0
  %ovf73 = extractvalue { i64, i1 } %cat.sum.len71, 1
  br i1 %ovf73, label %str_overflow_abort75, label %cat.sum.len74

str_overflow_abort69:                             ; preds = %cat.sum.len62
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %cat.sum.len68

cat.sum.len74:                                    ; preds = %abort.dead76, %cat.sum.len68
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum72, i64 1)
  %sum77 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf78 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf78, label %str_overflow_abort80, label %concat.tot.len79

str_overflow_abort75:                             ; preds = %cat.sum.len68
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead76:                                     ; No predecessors!
  br label %cat.sum.len74

concat.tot.len79:                                 ; preds = %abort.dead81, %cat.sum.len74
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum77)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 0, %cat.seg2
  %cat.dst82 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst82, ptr align 1 %cat.seg16, i64 %cat.seg7, i1 false)
  %cat.off83 = add i64 %cat.off, %cat.seg7
  %cat.dst84 = getelementptr i8, ptr %concat.buf, i64 %cat.off83
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst84, ptr align 1 %cat.seg30, i64 %cat.seg21, i1 false)
  %cat.off85 = add i64 %cat.off83, %cat.seg21
  %cat.dst86 = getelementptr i8, ptr %concat.buf, i64 %cat.off85
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst86, ptr align 1 %cat.seg43, i64 %cat.seg34, i1 false)
  %cat.off87 = add i64 %cat.off85, %cat.seg34
  %cat.dst88 = getelementptr i8, ptr %concat.buf, i64 %cat.off87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst88, ptr align 1 %cat.seg57, i64 %cat.seg48, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum72
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum72, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort80:                             ; preds = %cat.sum.len74
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead81:                                     ; No predecessors!
  br label %concat.tot.len79
}

define { i64, ptr } @"diag::assign_void_variable"(ptr %0) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call { i64, ptr } @"diag::E3032_assign_void_var_prefix"()
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %cat.seg5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg6 = load i64, ptr %cat.seg5, align 8
  %cat.seg7 = and i64 %cat.seg6, 281474976710655
  %str.tag8 = lshr i64 %cat.seg6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok9:                                          ; preds = %tag.slow_check14, %str_ok
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg16 = load ptr, ptr %cat.seg15, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2, i64 %cat.seg7)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len17

tag.slow_check14:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

cat.sum.len17:                                    ; preds = %abort.dead, %str_ok9
  %cat.sum.len18 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 2)
  %sum19 = extractvalue { i64, i1 } %cat.sum.len18, 0
  %ovf20 = extractvalue { i64, i1 } %cat.sum.len18, 1
  br i1 %ovf20, label %str_overflow_abort22, label %cat.sum.len21

str_overflow_abort:                               ; preds = %str_ok9
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len17

cat.sum.len21:                                    ; preds = %abort.dead23, %cat.sum.len17
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum19, i64 1)
  %sum24 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf25 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf25, label %str_overflow_abort27, label %concat.tot.len26

str_overflow_abort22:                             ; preds = %cat.sum.len17
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %cat.sum.len21

concat.tot.len26:                                 ; preds = %abort.dead28, %cat.sum.len21
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum24)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 0, %cat.seg2
  %cat.dst29 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst29, ptr align 1 %cat.seg16, i64 %cat.seg7, i1 false)
  %cat.off30 = add i64 %cat.off, %cat.seg7
  %cat.dst31 = getelementptr i8, ptr %concat.buf, i64 %cat.off30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst31, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum19
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum19, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort27:                             ; preds = %cat.sum.len21
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %concat.tot.len26
}

define { i64, ptr } @"diag::assign_void_element"(ptr %0) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call { i64, ptr } @"diag::E3032_assign_void_elem_prefix"()
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %cat.seg5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg6 = load i64, ptr %cat.seg5, align 8
  %cat.seg7 = and i64 %cat.seg6, 281474976710655
  %str.tag8 = lshr i64 %cat.seg6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok9:                                          ; preds = %tag.slow_check14, %str_ok
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg16 = load ptr, ptr %cat.seg15, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2, i64 %cat.seg7)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len17

tag.slow_check14:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

cat.sum.len17:                                    ; preds = %abort.dead, %str_ok9
  %cat.sum.len18 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 2)
  %sum19 = extractvalue { i64, i1 } %cat.sum.len18, 0
  %ovf20 = extractvalue { i64, i1 } %cat.sum.len18, 1
  br i1 %ovf20, label %str_overflow_abort22, label %cat.sum.len21

str_overflow_abort:                               ; preds = %str_ok9
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len17

cat.sum.len21:                                    ; preds = %abort.dead23, %cat.sum.len17
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum19, i64 1)
  %sum24 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf25 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf25, label %str_overflow_abort27, label %concat.tot.len26

str_overflow_abort22:                             ; preds = %cat.sum.len17
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %cat.sum.len21

concat.tot.len26:                                 ; preds = %abort.dead28, %cat.sum.len21
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum24)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 0, %cat.seg2
  %cat.dst29 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst29, ptr align 1 %cat.seg16, i64 %cat.seg7, i1 false)
  %cat.off30 = add i64 %cat.off, %cat.seg7
  %cat.dst31 = getelementptr i8, ptr %concat.buf, i64 %cat.off30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst31, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum19
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum19, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort27:                             ; preds = %cat.sum.len21
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %concat.tot.len26
}

define { i64, ptr } @"diag::whole_value_init"(ptr %0) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %ret.ub.salloc18 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call { i64, ptr } @"diag::E3131_whole_val_init_prefix"()
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %cat.seg5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg6 = load i64, ptr %cat.seg5, align 8
  %cat.seg7 = and i64 %cat.seg6, 281474976710655
  %str.tag8 = lshr i64 %cat.seg6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok9:                                          ; preds = %tag.slow_check14, %str_ok
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg16 = load ptr, ptr %cat.seg15, align 8
  %call.res17 = call { i64, ptr } @"diag::E3131_whole_val_init_suffix"()
  store { i64, ptr } %call.res17, ptr %ret.ub.salloc18, align 8
  %cat.seg19 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc18, i32 0, i32 0
  %cat.seg20 = load i64, ptr %cat.seg19, align 8
  %cat.seg21 = and i64 %cat.seg20, 281474976710655
  %str.tag22 = lshr i64 %cat.seg20, 48
  %tag.immortal24 = icmp eq i64 %str.tag22, 0
  %active.gen25 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current26 = icmp eq i64 %str.tag22, %active.gen25
  %tag.fast.ok27 = or i1 %tag.immortal24, %tag.current26
  br i1 %tag.fast.ok27, label %str_ok23, label %tag.slow_check28

tag.slow_check14:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

str_ok23:                                         ; preds = %tag.slow_check28, %str_ok9
  %cat.seg29 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc18, i32 0, i32 1
  %cat.seg30 = load ptr, ptr %cat.seg29, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2, i64 %cat.seg7)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len31

tag.slow_check28:                                 ; preds = %str_ok9
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag22)
  br label %str_ok23

cat.sum.len31:                                    ; preds = %abort.dead, %str_ok23
  %cat.sum.len32 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg21)
  %sum33 = extractvalue { i64, i1 } %cat.sum.len32, 0
  %ovf34 = extractvalue { i64, i1 } %cat.sum.len32, 1
  br i1 %ovf34, label %str_overflow_abort36, label %cat.sum.len35

str_overflow_abort:                               ; preds = %str_ok23
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len31

cat.sum.len35:                                    ; preds = %abort.dead37, %cat.sum.len31
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum33, i64 1)
  %sum38 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf39 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf39, label %str_overflow_abort41, label %concat.tot.len40

str_overflow_abort36:                             ; preds = %cat.sum.len31
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %cat.sum.len35

concat.tot.len40:                                 ; preds = %abort.dead42, %cat.sum.len35
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum38)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 0, %cat.seg2
  %cat.dst43 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst43, ptr align 1 %cat.seg16, i64 %cat.seg7, i1 false)
  %cat.off44 = add i64 %cat.off, %cat.seg7
  %cat.dst45 = getelementptr i8, ptr %concat.buf, i64 %cat.off44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst45, ptr align 1 %cat.seg30, i64 %cat.seg21, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum33
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum33, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort41:                             ; preds = %cat.sum.len35
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %concat.tot.len40
}

define { i64, ptr } @"diag::E3131_whole_val_init_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.31.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3131_whole_val_init_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.32.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::record_default_missing"(ptr %0, ptr %1) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %var.record = alloca ptr, align 8
  %var.field = alloca ptr, align 8
  store ptr %0, ptr %var.field, align 8
  store ptr %1, ptr %var.record, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %var.load = load ptr, ptr %var.field, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data5 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %var.load6 = load ptr, ptr %var.record, align 8
  %cat.seg7 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %cat.seg8 = load i64, ptr %cat.seg7, align 8
  %cat.seg9 = and i64 %cat.seg8, 281474976710655
  %str.tag10 = lshr i64 %cat.seg8, 48
  %tag.immortal12 = icmp eq i64 %str.tag10, 0
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current14 = icmp eq i64 %str.tag10, %active.gen13
  %tag.fast.ok15 = or i1 %tag.immortal12, %tag.current14
  br i1 %tag.fast.ok15, label %str_ok11, label %tag.slow_check16

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok11:                                         ; preds = %tag.slow_check16, %str_ok
  %cat.seg17 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %cat.seg18 = load ptr, ptr %cat.seg17, align 8
  %cat.lit.data19 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 7, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len20

tag.slow_check16:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag10)
  br label %str_ok11

cat.sum.len20:                                    ; preds = %abort.dead, %str_ok11
  %cat.sum.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 6)
  %sum22 = extractvalue { i64, i1 } %cat.sum.len21, 0
  %ovf23 = extractvalue { i64, i1 } %cat.sum.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %cat.sum.len24

str_overflow_abort:                               ; preds = %str_ok11
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len20

cat.sum.len24:                                    ; preds = %abort.dead26, %cat.sum.len20
  %cat.sum.len27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum22, i64 %cat.seg9)
  %sum28 = extractvalue { i64, i1 } %cat.sum.len27, 0
  %ovf29 = extractvalue { i64, i1 } %cat.sum.len27, 1
  br i1 %ovf29, label %str_overflow_abort31, label %cat.sum.len30

str_overflow_abort25:                             ; preds = %cat.sum.len20
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %cat.sum.len24

cat.sum.len30:                                    ; preds = %abort.dead32, %cat.sum.len24
  %cat.sum.len33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum28, i64 44)
  %sum34 = extractvalue { i64, i1 } %cat.sum.len33, 0
  %ovf35 = extractvalue { i64, i1 } %cat.sum.len33, 1
  br i1 %ovf35, label %str_overflow_abort37, label %cat.sum.len36

str_overflow_abort31:                             ; preds = %cat.sum.len24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %cat.sum.len30

cat.sum.len36:                                    ; preds = %abort.dead38, %cat.sum.len30
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum34, i64 1)
  %sum39 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf40 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %concat.tot.len41

str_overflow_abort37:                             ; preds = %cat.sum.len30
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %cat.sum.len36

concat.tot.len41:                                 ; preds = %abort.dead43, %cat.sum.len36
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum39)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 7, i1 false)
  %cat.dst44 = getelementptr i8, ptr %concat.buf, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst44, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 7, %cat.seg2
  %cat.dst45 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst45, ptr align 1 %cat.lit.data5, i64 6, i1 false)
  %cat.off46 = add i64 %cat.off, 6
  %cat.dst47 = getelementptr i8, ptr %concat.buf, i64 %cat.off46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst47, ptr align 1 %cat.seg18, i64 %cat.seg9, i1 false)
  %cat.off48 = add i64 %cat.off46, %cat.seg9
  %cat.dst49 = getelementptr i8, ptr %concat.buf, i64 %cat.off48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst49, ptr align 1 %cat.lit.data19, i64 44, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum34
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum34, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort42:                             ; preds = %cat.sum.len36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %concat.tot.len41
}

define { i64, ptr } @"diag::enum_no_variant"(ptr %0, ptr %1) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %var.label = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.label, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %var.load = load ptr, ptr %var.name, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data5 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %var.load6 = load ptr, ptr %var.label, align 8
  %cat.seg7 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %cat.seg8 = load i64, ptr %cat.seg7, align 8
  %cat.seg9 = and i64 %cat.seg8, 281474976710655
  %str.tag10 = lshr i64 %cat.seg8, 48
  %tag.immortal12 = icmp eq i64 %str.tag10, 0
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current14 = icmp eq i64 %str.tag10, %active.gen13
  %tag.fast.ok15 = or i1 %tag.immortal12, %tag.current14
  br i1 %tag.fast.ok15, label %str_ok11, label %tag.slow_check16

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok11:                                         ; preds = %tag.slow_check16, %str_ok
  %cat.seg17 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %cat.seg18 = load ptr, ptr %cat.seg17, align 8
  %cat.lit.data19 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len20

tag.slow_check16:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag10)
  br label %str_ok11

cat.sum.len20:                                    ; preds = %abort.dead, %str_ok11
  %cat.sum.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 26)
  %sum22 = extractvalue { i64, i1 } %cat.sum.len21, 0
  %ovf23 = extractvalue { i64, i1 } %cat.sum.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %cat.sum.len24

str_overflow_abort:                               ; preds = %str_ok11
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len20

cat.sum.len24:                                    ; preds = %abort.dead26, %cat.sum.len20
  %cat.sum.len27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum22, i64 %cat.seg9)
  %sum28 = extractvalue { i64, i1 } %cat.sum.len27, 0
  %ovf29 = extractvalue { i64, i1 } %cat.sum.len27, 1
  br i1 %ovf29, label %str_overflow_abort31, label %cat.sum.len30

str_overflow_abort25:                             ; preds = %cat.sum.len20
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %cat.sum.len24

cat.sum.len30:                                    ; preds = %abort.dead32, %cat.sum.len24
  %cat.sum.len33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum28, i64 2)
  %sum34 = extractvalue { i64, i1 } %cat.sum.len33, 0
  %ovf35 = extractvalue { i64, i1 } %cat.sum.len33, 1
  br i1 %ovf35, label %str_overflow_abort37, label %cat.sum.len36

str_overflow_abort31:                             ; preds = %cat.sum.len24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %cat.sum.len30

cat.sum.len36:                                    ; preds = %abort.dead38, %cat.sum.len30
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum34, i64 1)
  %sum39 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf40 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %concat.tot.len41

str_overflow_abort37:                             ; preds = %cat.sum.len30
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %cat.sum.len36

concat.tot.len41:                                 ; preds = %abort.dead43, %cat.sum.len36
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum39)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 6, i1 false)
  %cat.dst44 = getelementptr i8, ptr %concat.buf, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst44, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 6, %cat.seg2
  %cat.dst45 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst45, ptr align 1 %cat.lit.data5, i64 26, i1 false)
  %cat.off46 = add i64 %cat.off, 26
  %cat.dst47 = getelementptr i8, ptr %concat.buf, i64 %cat.off46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst47, ptr align 1 %cat.seg18, i64 %cat.seg9, i1 false)
  %cat.off48 = add i64 %cat.off46, %cat.seg9
  %cat.dst49 = getelementptr i8, ptr %concat.buf, i64 %cat.off48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst49, ptr align 1 %cat.lit.data19, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum34
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum34, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort42:                             ; preds = %cat.sum.len36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %concat.tot.len41
}

define { i64, ptr } @"diag::enum_unit_payload"(ptr %0, ptr %1) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %var.label = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.label, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %var.load = load ptr, ptr %var.name, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data5 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %var.load6 = load ptr, ptr %var.label, align 8
  %cat.seg7 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %cat.seg8 = load i64, ptr %cat.seg7, align 8
  %cat.seg9 = and i64 %cat.seg8, 281474976710655
  %str.tag10 = lshr i64 %cat.seg8, 48
  %tag.immortal12 = icmp eq i64 %str.tag10, 0
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current14 = icmp eq i64 %str.tag10, %active.gen13
  %tag.fast.ok15 = or i1 %tag.immortal12, %tag.current14
  br i1 %tag.fast.ok15, label %str_ok11, label %tag.slow_check16

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok11:                                         ; preds = %tag.slow_check16, %str_ok
  %cat.seg17 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %cat.seg18 = load ptr, ptr %cat.seg17, align 8
  %cat.lit.data19 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len20

tag.slow_check16:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag10)
  br label %str_ok11

cat.sum.len20:                                    ; preds = %abort.dead, %str_ok11
  %cat.sum.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 11)
  %sum22 = extractvalue { i64, i1 } %cat.sum.len21, 0
  %ovf23 = extractvalue { i64, i1 } %cat.sum.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %cat.sum.len24

str_overflow_abort:                               ; preds = %str_ok11
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len20

cat.sum.len24:                                    ; preds = %abort.dead26, %cat.sum.len20
  %cat.sum.len27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum22, i64 %cat.seg9)
  %sum28 = extractvalue { i64, i1 } %cat.sum.len27, 0
  %ovf29 = extractvalue { i64, i1 } %cat.sum.len27, 1
  br i1 %ovf29, label %str_overflow_abort31, label %cat.sum.len30

str_overflow_abort25:                             ; preds = %cat.sum.len20
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %cat.sum.len24

cat.sum.len30:                                    ; preds = %abort.dead32, %cat.sum.len24
  %cat.sum.len33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum28, i64 47)
  %sum34 = extractvalue { i64, i1 } %cat.sum.len33, 0
  %ovf35 = extractvalue { i64, i1 } %cat.sum.len33, 1
  br i1 %ovf35, label %str_overflow_abort37, label %cat.sum.len36

str_overflow_abort31:                             ; preds = %cat.sum.len24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %cat.sum.len30

cat.sum.len36:                                    ; preds = %abort.dead38, %cat.sum.len30
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum34, i64 1)
  %sum39 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf40 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %concat.tot.len41

str_overflow_abort37:                             ; preds = %cat.sum.len30
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %cat.sum.len36

concat.tot.len41:                                 ; preds = %abort.dead43, %cat.sum.len36
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum39)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 6, i1 false)
  %cat.dst44 = getelementptr i8, ptr %concat.buf, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst44, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 6, %cat.seg2
  %cat.dst45 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst45, ptr align 1 %cat.lit.data5, i64 11, i1 false)
  %cat.off46 = add i64 %cat.off, 11
  %cat.dst47 = getelementptr i8, ptr %concat.buf, i64 %cat.off46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst47, ptr align 1 %cat.seg18, i64 %cat.seg9, i1 false)
  %cat.off48 = add i64 %cat.off46, %cat.seg9
  %cat.dst49 = getelementptr i8, ptr %concat.buf, i64 %cat.off48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst49, ptr align 1 %cat.lit.data19, i64 47, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum34
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum34, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort42:                             ; preds = %cat.sum.len36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %concat.tot.len41
}

define { i64, ptr } @"diag::enum_payload_type"(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %var.got = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var.label = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.label, align 8
  store ptr %2, ptr %var.expected, align 8
  store ptr %3, ptr %var.got, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %var.load = load ptr, ptr %var.name, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data5 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %var.load6 = load ptr, ptr %var.label, align 8
  %cat.seg7 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %cat.seg8 = load i64, ptr %cat.seg7, align 8
  %cat.seg9 = and i64 %cat.seg8, 281474976710655
  %str.tag10 = lshr i64 %cat.seg8, 48
  %tag.immortal12 = icmp eq i64 %str.tag10, 0
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current14 = icmp eq i64 %str.tag10, %active.gen13
  %tag.fast.ok15 = or i1 %tag.immortal12, %tag.current14
  br i1 %tag.fast.ok15, label %str_ok11, label %tag.slow_check16

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok11:                                         ; preds = %tag.slow_check16, %str_ok
  %cat.seg17 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %cat.seg18 = load ptr, ptr %cat.seg17, align 8
  %cat.lit.data19 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.40.struct, i32 0, i32 1), align 8
  %var.load20 = load ptr, ptr %var.expected, align 8
  %cat.seg21 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %cat.seg22 = load i64, ptr %cat.seg21, align 8
  %cat.seg23 = and i64 %cat.seg22, 281474976710655
  %str.tag24 = lshr i64 %cat.seg22, 48
  %tag.immortal26 = icmp eq i64 %str.tag24, 0
  %active.gen27 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current28 = icmp eq i64 %str.tag24, %active.gen27
  %tag.fast.ok29 = or i1 %tag.immortal26, %tag.current28
  br i1 %tag.fast.ok29, label %str_ok25, label %tag.slow_check30

tag.slow_check16:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag10)
  br label %str_ok11

str_ok25:                                         ; preds = %tag.slow_check30, %str_ok11
  %cat.seg31 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %cat.seg32 = load ptr, ptr %cat.seg31, align 8
  %cat.lit.data33 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %var.load34 = load ptr, ptr %var.got, align 8
  %cat.seg35 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %cat.seg36 = load i64, ptr %cat.seg35, align 8
  %cat.seg37 = and i64 %cat.seg36, 281474976710655
  %str.tag38 = lshr i64 %cat.seg36, 48
  %tag.immortal40 = icmp eq i64 %str.tag38, 0
  %active.gen41 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current42 = icmp eq i64 %str.tag38, %active.gen41
  %tag.fast.ok43 = or i1 %tag.immortal40, %tag.current42
  br i1 %tag.fast.ok43, label %str_ok39, label %tag.slow_check44

tag.slow_check30:                                 ; preds = %str_ok11
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag24)
  br label %str_ok25

str_ok39:                                         ; preds = %tag.slow_check44, %str_ok25
  %cat.seg45 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %cat.seg46 = load ptr, ptr %cat.seg45, align 8
  %cat.lit.data47 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.42.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len48

tag.slow_check44:                                 ; preds = %str_ok25
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag38)
  br label %str_ok39

cat.sum.len48:                                    ; preds = %abort.dead, %str_ok39
  %cat.sum.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 11)
  %sum50 = extractvalue { i64, i1 } %cat.sum.len49, 0
  %ovf51 = extractvalue { i64, i1 } %cat.sum.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %cat.sum.len52

str_overflow_abort:                               ; preds = %str_ok39
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len48

cat.sum.len52:                                    ; preds = %abort.dead54, %cat.sum.len48
  %cat.sum.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum50, i64 %cat.seg9)
  %sum56 = extractvalue { i64, i1 } %cat.sum.len55, 0
  %ovf57 = extractvalue { i64, i1 } %cat.sum.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %cat.sum.len58

str_overflow_abort53:                             ; preds = %cat.sum.len48
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %cat.sum.len52

cat.sum.len58:                                    ; preds = %abort.dead60, %cat.sum.len52
  %cat.sum.len61 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum56, i64 26)
  %sum62 = extractvalue { i64, i1 } %cat.sum.len61, 0
  %ovf63 = extractvalue { i64, i1 } %cat.sum.len61, 1
  br i1 %ovf63, label %str_overflow_abort65, label %cat.sum.len64

str_overflow_abort59:                             ; preds = %cat.sum.len52
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %cat.sum.len58

cat.sum.len64:                                    ; preds = %abort.dead66, %cat.sum.len58
  %cat.sum.len67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum62, i64 %cat.seg23)
  %sum68 = extractvalue { i64, i1 } %cat.sum.len67, 0
  %ovf69 = extractvalue { i64, i1 } %cat.sum.len67, 1
  br i1 %ovf69, label %str_overflow_abort71, label %cat.sum.len70

str_overflow_abort65:                             ; preds = %cat.sum.len58
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead66:                                     ; No predecessors!
  br label %cat.sum.len64

cat.sum.len70:                                    ; preds = %abort.dead72, %cat.sum.len64
  %cat.sum.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum68, i64 6)
  %sum74 = extractvalue { i64, i1 } %cat.sum.len73, 0
  %ovf75 = extractvalue { i64, i1 } %cat.sum.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %cat.sum.len76

str_overflow_abort71:                             ; preds = %cat.sum.len64
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead72:                                     ; No predecessors!
  br label %cat.sum.len70

cat.sum.len76:                                    ; preds = %abort.dead78, %cat.sum.len70
  %cat.sum.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum74, i64 %cat.seg37)
  %sum80 = extractvalue { i64, i1 } %cat.sum.len79, 0
  %ovf81 = extractvalue { i64, i1 } %cat.sum.len79, 1
  br i1 %ovf81, label %str_overflow_abort83, label %cat.sum.len82

str_overflow_abort77:                             ; preds = %cat.sum.len70
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %cat.sum.len76

cat.sum.len82:                                    ; preds = %abort.dead84, %cat.sum.len76
  %cat.sum.len85 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum80, i64 1)
  %sum86 = extractvalue { i64, i1 } %cat.sum.len85, 0
  %ovf87 = extractvalue { i64, i1 } %cat.sum.len85, 1
  br i1 %ovf87, label %str_overflow_abort89, label %cat.sum.len88

str_overflow_abort83:                             ; preds = %cat.sum.len76
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %cat.sum.len82

cat.sum.len88:                                    ; preds = %abort.dead90, %cat.sum.len82
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum86, i64 1)
  %sum91 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf92 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf92, label %str_overflow_abort94, label %concat.tot.len93

str_overflow_abort89:                             ; preds = %cat.sum.len82
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead90:                                     ; No predecessors!
  br label %cat.sum.len88

concat.tot.len93:                                 ; preds = %abort.dead95, %cat.sum.len88
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum91)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 6, i1 false)
  %cat.dst96 = getelementptr i8, ptr %concat.buf, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst96, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 6, %cat.seg2
  %cat.dst97 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst97, ptr align 1 %cat.lit.data5, i64 11, i1 false)
  %cat.off98 = add i64 %cat.off, 11
  %cat.dst99 = getelementptr i8, ptr %concat.buf, i64 %cat.off98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst99, ptr align 1 %cat.seg18, i64 %cat.seg9, i1 false)
  %cat.off100 = add i64 %cat.off98, %cat.seg9
  %cat.dst101 = getelementptr i8, ptr %concat.buf, i64 %cat.off100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst101, ptr align 1 %cat.lit.data19, i64 26, i1 false)
  %cat.off102 = add i64 %cat.off100, 26
  %cat.dst103 = getelementptr i8, ptr %concat.buf, i64 %cat.off102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst103, ptr align 1 %cat.seg32, i64 %cat.seg23, i1 false)
  %cat.off104 = add i64 %cat.off102, %cat.seg23
  %cat.dst105 = getelementptr i8, ptr %concat.buf, i64 %cat.off104
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst105, ptr align 1 %cat.lit.data33, i64 6, i1 false)
  %cat.off106 = add i64 %cat.off104, 6
  %cat.dst107 = getelementptr i8, ptr %concat.buf, i64 %cat.off106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst107, ptr align 1 %cat.seg46, i64 %cat.seg37, i1 false)
  %cat.off108 = add i64 %cat.off106, %cat.seg37
  %cat.dst109 = getelementptr i8, ptr %concat.buf, i64 %cat.off108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst109, ptr align 1 %cat.lit.data47, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum86
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum86, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort94:                             ; preds = %cat.sum.len88
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %concat.tot.len93
}

define { i64, ptr } @"diag::partial_composite_argument"(ptr %0) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.43.struct, i32 0, i32 1), align 8
  %var.load = load ptr, ptr %var.name, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data5 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.44.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 43, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len6

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

cat.sum.len6:                                     ; preds = %abort.dead, %str_ok
  %cat.sum.len7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 30)
  %sum8 = extractvalue { i64, i1 } %cat.sum.len7, 0
  %ovf9 = extractvalue { i64, i1 } %cat.sum.len7, 1
  br i1 %ovf9, label %str_overflow_abort11, label %cat.sum.len10

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len6

cat.sum.len10:                                    ; preds = %abort.dead12, %cat.sum.len6
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum8, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort11:                             ; preds = %cat.sum.len6
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %cat.sum.len10

concat.tot.len15:                                 ; preds = %abort.dead17, %cat.sum.len10
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum13)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 43, i1 false)
  %cat.dst18 = getelementptr i8, ptr %concat.buf, i64 43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst18, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 43, %cat.seg2
  %cat.dst19 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst19, ptr align 1 %cat.lit.data5, i64 30, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum8
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum8, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort16:                             ; preds = %cat.sum.len10
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %concat.tot.len15
}

define { i64, ptr } @"diag::E3051_dynamic_index_hetero"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.45.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3051_cycle_iter_hetero"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.46.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3065_rawptr_to_string"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %concat.lhs = load i64, ptr @str.47.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.47.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.48.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %concat.rhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.48.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len5

concat.sum.len5:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len5

concat.tot.len8:                                  ; preds = %abort.dead10, %concat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs4, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort9:                              ; preds = %concat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %concat.tot.len8
}

define { i64, ptr } @"diag::E3078_addr_builder_or_string"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.49.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3084_record_size_mismatch"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.50.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3084_arithmetic_type_mismatch"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.51.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3084_builder_append_type"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.52.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3084_choice_branch_mismatch"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.53.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3091_propagate_ram_operand"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.54.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3103_cannot_infer_type"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.55.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3133_addr_escape_restore"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %concat.lhs = load i64, ptr @str.56.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.56.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.57.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %concat.rhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.57.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len5

concat.sum.len5:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len5

concat.tot.len8:                                  ; preds = %abort.dead10, %concat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs4, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort9:                              ; preds = %concat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %concat.tot.len8
}

define { i64, ptr } @"diag::E3134_addr_escape_lifecycle"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.58.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3136_type_choice_no_branch"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.59.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3140_no_runtime_arena"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.60.struct, i32 0, i32 1), align 8
  %cat.lit.data1 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.61.struct, i32 0, i32 1), align 8
  %cat.lit.data2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.62.struct, i32 0, i32 1), align 8
  %cat.lit.data3 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.63.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 78, i64 67)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len4

cat.sum.len4:                                     ; preds = %abort.dead, %entry
  %cat.sum.len5 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 72)
  %sum6 = extractvalue { i64, i1 } %cat.sum.len5, 0
  %ovf7 = extractvalue { i64, i1 } %cat.sum.len5, 1
  br i1 %ovf7, label %str_overflow_abort9, label %cat.sum.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len4

cat.sum.len8:                                     ; preds = %abort.dead10, %cat.sum.len4
  %cat.sum.len11 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum6, i64 61)
  %sum12 = extractvalue { i64, i1 } %cat.sum.len11, 0
  %ovf13 = extractvalue { i64, i1 } %cat.sum.len11, 1
  br i1 %ovf13, label %str_overflow_abort15, label %cat.sum.len14

str_overflow_abort9:                              ; preds = %cat.sum.len4
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %cat.sum.len8

cat.sum.len14:                                    ; preds = %abort.dead16, %cat.sum.len8
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum12, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort15:                             ; preds = %cat.sum.len8
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %cat.sum.len14

concat.tot.len19:                                 ; preds = %abort.dead21, %cat.sum.len14
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum17)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 78, i1 false)
  %cat.dst22 = getelementptr i8, ptr %concat.buf, i64 78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst22, ptr align 1 %cat.lit.data1, i64 67, i1 false)
  %cat.dst23 = getelementptr i8, ptr %concat.buf, i64 145
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst23, ptr align 1 %cat.lit.data2, i64 72, i1 false)
  %cat.dst24 = getelementptr i8, ptr %concat.buf, i64 217
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst24, ptr align 1 %cat.lit.data3, i64 61, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum12
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum12, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort20:                             ; preds = %cat.sum.len14
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %concat.tot.len19
}

define { i64, ptr } @"diag::E3142_raw_write_type"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.64.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3150_view_escape_frame"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.65.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3172_exit_status_integerish"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.66.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3173_return_outside_fn"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.67.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3173_propagate_outside_fn"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.68.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3175_choice_const_discarded"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.69.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::uninitialized_variable_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.70.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3050_reserved_type_name_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.71.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::return_type_mismatch_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.72.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::assignment_type_mismatch_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.73.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::member_index_constant"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.74.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::field_assignment_type_mismatch_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.75.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3067_string_write_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.76.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3067_string_write_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.77.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3049_slice_write_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.78.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3049_slice_write_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.79.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::return_type_inference_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.80.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3128_function_value_signature_suffix"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %concat.lhs = load i64, ptr @str.81.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.81.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.82.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %concat.rhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.82.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len5

concat.sum.len5:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len5

concat.tot.len8:                                  ; preds = %abort.dead10, %concat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs4, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort9:                              ; preds = %concat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %concat.tot.len8
}

define { i64, ptr } @"diag::expected_primary_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.83.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::cycle_jump_depth_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.84.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::record_repeat_count_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.85.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::record_repeat_limit_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.86.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::infix_right_binding_power_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.87.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::infix_left_binding_power_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.88.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::imported_symbol_conflict_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.89.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3033_foreign_function_clash_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.90.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::declared_symbol_conflict_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.91.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E5038_package_import_cycle_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.92.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::clang_compilation_failed_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.93.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E5007_no_input"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.94.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3084_open_record_fields"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.95.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3089_ram_shape_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.96.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::locked_manifest_stale_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.97.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::repository_illegal_path_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.98.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::vendor_tree_mismatch_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.99.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::archive_illegal_path_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.100.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3127_ram_ordering_suffix"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %concat.lhs = load i64, ptr @str.101.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.101.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.102.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %concat.rhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.102.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len5

concat.sum.len5:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len5

concat.tot.len8:                                  ; preds = %abort.dead10, %concat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs4, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort9:                              ; preds = %concat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %concat.tot.len8
}

define { i64, ptr } @"diag::E3127_enum_ordering_suffix"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %concat.lhs = load i64, ptr @str.103.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.103.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.104.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %concat.rhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.104.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len5

concat.sum.len5:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len5

concat.tot.len8:                                  ; preds = %abort.dead10, %concat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs4, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort9:                              ; preds = %concat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %concat.tot.len8
}

define { i64, ptr } @"diag::record_field_index_constant"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.105.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::enum_variant_index_constant"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %concat.lhs = load i64, ptr @str.106.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.106.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.107.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %concat.rhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.107.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len5

concat.sum.len5:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len5

concat.tot.len8:                                  ; preds = %abort.dead10, %concat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs4, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort9:                              ; preds = %concat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %concat.tot.len8
}

define { i64, ptr } @"diag::E4002_string_length_overflow"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.108.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3007_cycle_jump_level_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.109.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3007_cycle_jump_level_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.110.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E4007_unwrap_empty_or_error"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.111.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::uninferable_type_param"(ptr %0, ptr %1) #0 {
entry:
  %concat.str103 = alloca { i64, ptr }, align 8
  %var.who = alloca ptr, align 8
  %var.fn_name = alloca ptr, align 8
  %var.tp = alloca ptr, align 8
  store ptr %0, ptr %var.tp, align 8
  store ptr %1, ptr %var.fn_name, align 8
  %var.load = load ptr, ptr %var.fn_name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.112.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.112.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.113.struct, i32 0, i32 1), align 8
  %var.load5 = load ptr, ptr %var.fn_name, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %cat.seg6 = load i64, ptr %cat.seg, align 8
  %cat.seg7 = and i64 %cat.seg6, 281474976710655
  %str.tag8 = lshr i64 %cat.seg6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

choice.else:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len27
  %choice.res = phi ptr [ %concat.str, %concat.tot.len27 ], [ @str.112.struct, %choice.else ]
  store ptr %choice.res, ptr %var.who, align 8
  %cat.lit.data33 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.115.struct, i32 0, i32 1), align 8
  %var.load34 = load ptr, ptr %var.tp, align 8
  %cat.seg35 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %cat.seg36 = load i64, ptr %cat.seg35, align 8
  %cat.seg37 = and i64 %cat.seg36, 281474976710655
  %str.tag38 = lshr i64 %cat.seg36, 48
  %tag.immortal40 = icmp eq i64 %str.tag38, 0
  %active.gen41 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current42 = icmp eq i64 %str.tag38, %active.gen41
  %tag.fast.ok43 = or i1 %tag.immortal40, %tag.current42
  br i1 %tag.fast.ok43, label %str_ok39, label %tag.slow_check44

str_ok9:                                          ; preds = %tag.slow_check14, %choice.then
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %cat.seg16 = load ptr, ptr %cat.seg15, align 8
  %cat.lit.data17 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.114.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.seg7)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len18

tag.slow_check14:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

cat.sum.len18:                                    ; preds = %abort.dead, %str_ok9
  %cat.sum.len19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum20 = extractvalue { i64, i1 } %cat.sum.len19, 0
  %ovf21 = extractvalue { i64, i1 } %cat.sum.len19, 1
  br i1 %ovf21, label %str_overflow_abort23, label %cat.sum.len22

str_overflow_abort:                               ; preds = %str_ok9
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len18

cat.sum.len22:                                    ; preds = %abort.dead24, %cat.sum.len18
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum20, i64 1)
  %sum25 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf26 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf26, label %str_overflow_abort28, label %concat.tot.len27

str_overflow_abort23:                             ; preds = %cat.sum.len18
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %cat.sum.len22

concat.tot.len27:                                 ; preds = %abort.dead29, %cat.sum.len22
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum25)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 5, i1 false)
  %cat.dst30 = getelementptr i8, ptr %concat.buf, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst30, ptr align 1 %cat.seg16, i64 %cat.seg7, i1 false)
  %cat.off = add i64 5, %cat.seg7
  %cat.dst31 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst31, ptr align 1 %cat.lit.data17, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum20
  store i8 0, ptr %concat.nul, align 1
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum20, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort28:                             ; preds = %cat.sum.len22
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %concat.tot.len27

str_ok39:                                         ; preds = %tag.slow_check44, %choice.exit
  %cat.seg45 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %cat.seg46 = load ptr, ptr %cat.seg45, align 8
  %cat.lit.data47 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.114.struct, i32 0, i32 1), align 8
  %var.load48 = load ptr, ptr %var.who, align 8
  %cat.seg49 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %cat.seg50 = load i64, ptr %cat.seg49, align 8
  %cat.seg51 = and i64 %cat.seg50, 281474976710655
  %str.tag52 = lshr i64 %cat.seg50, 48
  %tag.immortal54 = icmp eq i64 %str.tag52, 0
  %active.gen55 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current56 = icmp eq i64 %str.tag52, %active.gen55
  %tag.fast.ok57 = or i1 %tag.immortal54, %tag.current56
  br i1 %tag.fast.ok57, label %str_ok53, label %tag.slow_check58

tag.slow_check44:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag38)
  br label %str_ok39

str_ok53:                                         ; preds = %tag.slow_check58, %str_ok39
  %cat.seg59 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %cat.seg60 = load ptr, ptr %cat.seg59, align 8
  %cat.lit.data61 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.116.struct, i32 0, i32 1), align 8
  %cat.sum.len62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 42, i64 %cat.seg37)
  %sum63 = extractvalue { i64, i1 } %cat.sum.len62, 0
  %ovf64 = extractvalue { i64, i1 } %cat.sum.len62, 1
  br i1 %ovf64, label %str_overflow_abort66, label %cat.sum.len65

tag.slow_check58:                                 ; preds = %str_ok39
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag52)
  br label %str_ok53

cat.sum.len65:                                    ; preds = %abort.dead67, %str_ok53
  %cat.sum.len68 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum63, i64 1)
  %sum69 = extractvalue { i64, i1 } %cat.sum.len68, 0
  %ovf70 = extractvalue { i64, i1 } %cat.sum.len68, 1
  br i1 %ovf70, label %str_overflow_abort72, label %cat.sum.len71

str_overflow_abort66:                             ; preds = %str_ok53
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %cat.sum.len65

cat.sum.len71:                                    ; preds = %abort.dead73, %cat.sum.len65
  %cat.sum.len74 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum69, i64 %cat.seg51)
  %sum75 = extractvalue { i64, i1 } %cat.sum.len74, 0
  %ovf76 = extractvalue { i64, i1 } %cat.sum.len74, 1
  br i1 %ovf76, label %str_overflow_abort78, label %cat.sum.len77

str_overflow_abort72:                             ; preds = %cat.sum.len65
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %cat.sum.len71

cat.sum.len77:                                    ; preds = %abort.dead79, %cat.sum.len71
  %cat.sum.len80 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum75, i64 92)
  %sum81 = extractvalue { i64, i1 } %cat.sum.len80, 0
  %ovf82 = extractvalue { i64, i1 } %cat.sum.len80, 1
  br i1 %ovf82, label %str_overflow_abort84, label %cat.sum.len83

str_overflow_abort78:                             ; preds = %cat.sum.len71
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead79:                                     ; No predecessors!
  br label %cat.sum.len77

cat.sum.len83:                                    ; preds = %abort.dead85, %cat.sum.len77
  %concat.tot.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum81, i64 1)
  %sum87 = extractvalue { i64, i1 } %concat.tot.len86, 0
  %ovf88 = extractvalue { i64, i1 } %concat.tot.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %concat.tot.len89

str_overflow_abort84:                             ; preds = %cat.sum.len77
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead85:                                     ; No predecessors!
  br label %cat.sum.len83

concat.tot.len89:                                 ; preds = %abort.dead91, %cat.sum.len83
  %arena.cur92 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 %sum87)
  %cat.dst94 = getelementptr i8, ptr %concat.buf93, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst94, ptr align 1 %cat.lit.data33, i64 42, i1 false)
  %cat.dst95 = getelementptr i8, ptr %concat.buf93, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst95, ptr align 1 %cat.seg46, i64 %cat.seg37, i1 false)
  %cat.off96 = add i64 42, %cat.seg37
  %cat.dst97 = getelementptr i8, ptr %concat.buf93, i64 %cat.off96
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst97, ptr align 1 %cat.lit.data47, i64 1, i1 false)
  %cat.off98 = add i64 %cat.off96, 1
  %cat.dst99 = getelementptr i8, ptr %concat.buf93, i64 %cat.off98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst99, ptr align 1 %cat.seg60, i64 %cat.seg51, i1 false)
  %cat.off100 = add i64 %cat.off98, %cat.seg51
  %cat.dst101 = getelementptr i8, ptr %concat.buf93, i64 %cat.off100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst101, ptr align 1 %cat.lit.data61, i64 92, i1 false)
  %concat.nul102 = getelementptr i8, ptr %concat.buf93, i64 %sum81
  store i8 0, ptr %concat.nul102, align 1
  %str.build.len.gep104 = getelementptr inbounds { i64, ptr }, ptr %concat.str103, i32 0, i32 0
  store i64 %sum81, ptr %str.build.len.gep104, align 8
  %str.build.data.gep105 = getelementptr inbounds { i64, ptr }, ptr %concat.str103, i32 0, i32 1
  store ptr %concat.buf93, ptr %str.build.data.gep105, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str103, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort90:                             ; preds = %cat.sum.len83
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead91:                                     ; No predecessors!
  br label %concat.tot.len89
}

declare i32 @memcmp(ptr, ptr, i64) #0

define { i64, ptr } @"diag::compile_time_parameter_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.117.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E3105_enum_label_ambiguous_suffix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.118.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E4008_builder_length_bounds"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.119.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::runtime_error_format"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.120.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E4004_arena_allocation_too_large"() #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %concat.lhs = load i64, ptr @str.121.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.121.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.122.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %concat.rhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.122.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len5

concat.sum.len5:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len5

concat.tot.len8:                                  ; preds = %abort.dead10, %concat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs4, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort9:                              ; preds = %concat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %concat.tot.len8
}

define { i64, ptr } @"diag::E4003_arena_chunk_limit"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.123.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E4001_arena_exhausted"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.124.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E5012_write_ir_prefix"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.125.struct, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"diag::E1008_string_unterminated"() #0 {
entry:
  %ret.pack = load { i64, ptr }, ptr @str.126.struct, align 8
  ret { i64, ptr } %ret.pack
}

define void @"diag::enable_capture"() #0 {
entry:
  store i1 true, ptr @"var.diag::capture_enabled", align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr @"var.diag::captured_diags", align 8
  ret void
}

define void @"diag::disable_capture"() #0 {
entry:
  store i1 false, ptr @"var.diag::capture_enabled", align 1
  ret void
}

define i1 @"diag::is_capturing"() #0 {
entry:
  %var.load = load i1, ptr @"var.diag::capture_enabled", align 1
  ret i1 %var.load
}

define void @"diag::clear_captured"() #0 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr @"var.diag::captured_diags", align 8
  ret void
}

define void @"diag::record_diag"(i64 %0, ptr %1, i64 %2, i64 %3, ptr %4, i1 %5) #0 {
entry:
  %var.ds = alloca ptr, align 8
  %var.is_warn = alloca i1, align 1
  %var.msg = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.file = alloca ptr, align 8
  %var.code = alloca i64, align 8
  store i64 %0, ptr %var.code, align 8
  store ptr %1, ptr %var.file, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  store ptr %4, ptr %var.msg, align 8
  store i1 %5, ptr %var.is_warn, align 1
  %var.load = load ptr, ptr @"var.diag::captured_diags", align 8
  %a.load = load ptr, ptr @"var.diag::captured_diags", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr @"var.diag::captured_diags", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.diag::captured_diags", align 8
  store ptr %a.load2, ptr %var.ds, align 8
  %var.load3 = load i64, ptr %var.code, align 8
  %var.load4 = load ptr, ptr %var.file, align 8
  %var.load5 = load i64, ptr %var.line, align 8
  %var.load6 = load i64, ptr %var.col, align 8
  %var.load7 = load ptr, ptr %var.msg, align 8
  %var.load8 = load i1, ptr %var.is_warn, align 1
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load3, ptr %rec.fld, align 8
  %rec.fld10 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load4, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load5, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load6, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 4
  store ptr %var.load7, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load8, ptr %rec.fld14, align 1
  %a.load15 = load ptr, ptr %var.ds, align 8
  %a.null16 = icmp eq ptr %a.load15, null
  br i1 %a.null16, label %a.create17, label %a.after18

a.create17:                                       ; preds = %a.after
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 24)
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  %a.len.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 0
  store i64 0, ptr %a.len.gep23, align 8
  %a.data.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 1
  store ptr %a.buf22, ptr %a.data.gep24, align 8
  %a.cap.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 2
  store i64 16, ptr %a.cap.gep25, align 8
  store ptr %a.create20, ptr %var.ds, align 8
  br label %a.after18

a.after18:                                        ; preds = %a.create17, %a.after
  %a.load226 = load ptr, ptr %var.ds, align 8
  br label %a.check

a.check:                                          ; preds = %a.after18
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 0
  %a.len27 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 2
  %a.cap28 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len27, %a.cap28
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load226)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 1
  %a.cur.data29 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 0
  %a.cur.len30 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data29, i64 %a.cur.len30
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len30, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load31 = load ptr, ptr %var.ds, align 8
  %a.load32 = load ptr, ptr %var.ds, align 8
  %a.null33 = icmp eq ptr %a.load32, null
  br i1 %a.null33, label %a.create34, label %a.after35

a.create34:                                       ; preds = %a.store
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 24)
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 128)
  %a.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 0
  store i64 0, ptr %a.len.gep40, align 8
  %a.data.gep41 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 1
  store ptr %a.buf39, ptr %a.data.gep41, align 8
  %a.cap.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 2
  store i64 16, ptr %a.cap.gep42, align 8
  store ptr %a.create37, ptr %var.ds, align 8
  br label %a.after35

a.after35:                                        ; preds = %a.create34, %a.store
  %a.load243 = load ptr, ptr %var.ds, align 8
  store ptr %a.load243, ptr @"var.diag::captured_diags", align 8
  ret void
}

define internal void @dva_array_grow(ptr %0) #0 {
entry:
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 0
  %a.len1 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.cap2, i64 2)
  %prod = extractvalue { i64, i1 } %a.cap24, 0
  %ovf = extractvalue { i64, i1 } %a.cap24, 1
  br i1 %ovf, label %arr_overflow_abort, label %a.cap25

a.cap25:                                          ; preds = %abort.dead, %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  call void @dva_abort_arr_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %abort.dead10, %a.cap25
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  call void @dva_abort_arr_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define ptr @"diag::get_captured"() #0 {
entry:
  %var.load = load ptr, ptr @"var.diag::captured_diags", align 8
  %a.load = load ptr, ptr @"var.diag::captured_diags", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr @"var.diag::captured_diags", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.diag::captured_diags", align 8
  ret ptr %a.load2
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noinline noreturn "nounwind" }
attributes #5 = { cold noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline "nounwind" }
