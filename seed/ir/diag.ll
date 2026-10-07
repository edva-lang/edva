; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64 }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@str.0 = internal unnamed_addr constant [54 x i8] c"Line indented less than closing delimiter in here-doc\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 53, ptr @str.0 }
@clo.const = internal constant { ptr, ptr } { ptr @"diag::E1017_heredoc_under_indented", ptr null }
@"var.diag::E1017_heredoc_under_indented" = global ptr null
@str.1 = internal unnamed_addr constant [55 x i8] c"Unterminated here-doc literal -- missing closing '\22\22\22'\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.1 }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"diag::E1018_heredoc_unterminated", ptr null }
@"var.diag::E1018_heredoc_unterminated" = global ptr null
@str.2 = internal unnamed_addr constant [58 x i8] c"':=' is retired \E2\80\94 use '=' with a prime suffix ('foo'') \00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 57, ptr @str.2 }
@str.3 = internal unnamed_addr constant [23 x i8] c"for mutable variables.\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 22, ptr @str.3 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"diag::E2010_colon_equals_retired", ptr null }
@"var.diag::E2010_colon_equals_retired" = global ptr null
@str.4 = internal unnamed_addr constant [68 x i8] c"Bare '|' is only allowed as the first branch (Left Value) or final \00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.4 }
@str.5 = internal unnamed_addr constant [43 x i8] c"branch (catch-all) in a choice expression.\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.5 }
@clo.const.3 = internal constant { ptr, ptr } { ptr @"diag::E2024_bare_bar_position", ptr null }
@"var.diag::E2024_bare_bar_position" = global ptr null
@str.6 = internal unnamed_addr constant [57 x i8] c"Whitespace between range endpoint and '..' is forbidden.\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.6 }
@clo.const.4 = internal constant { ptr, ptr } { ptr @"diag::E2025_range_endpoint_whitespace", ptr null }
@"var.diag::E2025_range_endpoint_whitespace" = global ptr null
@str.7 = internal unnamed_addr constant [49 x i8] c"Whitespace before call parenthesis is forbidden.\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.7 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"diag::E2032_call_paren_whitespace", ptr null }
@"var.diag::E2032_call_paren_whitespace" = global ptr null
@str.8 = internal unnamed_addr constant [83 x i8] c"Function parameters may not be parenthesized; write 'x, y =>' with no parentheses.\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 82, ptr @str.8 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"diag::E2037_params_parenthesized", ptr null }
@"var.diag::E2037_params_parenthesized" = global ptr null
@str.9 = internal unnamed_addr constant [29 x i8] c"Expression nested too deeply\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 28, ptr @str.9 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"diag::E2039_expr_too_deep", ptr null }
@"var.diag::E2039_expr_too_deep" = global ptr null
@str.10 = internal unnamed_addr constant [69 x i8] c"Function parameters cannot be mutable \E2\80\94 remove prime suffix from '\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 68, ptr @str.10 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"diag::E2039_param_mutable_prefix", ptr null }
@"var.diag::E2039_param_mutable_prefix" = global ptr null
@str.11 = internal unnamed_addr constant [81 x i8] c"Cannot assign to a typed load; write through the untyped '@[addr]' form instead.\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 80, ptr @str.11 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"diag::E2093_assign_typed_load", ptr null }
@"var.diag::E2093_assign_typed_load" = global ptr null
@str.12 = internal unnamed_addr constant [75 x i8] c"A '|' before a '[' guard is invalid \E2\80\94 chain guarded branches adjacently.\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 74, ptr @str.12 }
@clo.const.10 = internal constant { ptr, ptr } { ptr @"diag::E2096_bar_before_guard", ptr null }
@"var.diag::E2096_bar_before_guard" = global ptr null
@str.13 = internal unnamed_addr constant [49 x i8] c"Redundant choice tail '<+> | <->' is forbidden. \00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.13 }
@str.14 = internal unnamed_addr constant [57 x i8] c"Empty guard body '[guard]' already produces a bare flag.\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.14 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"diag::E2105_redundant_choice_tail", ptr null }
@"var.diag::E2105_redundant_choice_tail" = global ptr null
@str.15 = internal unnamed_addr constant [91 x i8] c"State binding operator '~~' requires a variable, member access, or indexed element target.\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 90, ptr @str.15 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"diag::E2108_state_binding_target", ptr null }
@"var.diag::E2108_state_binding_target" = global ptr null
@str.16 = internal unnamed_addr constant [75 x i8] c"Omitting a Choice/pattern branch's leading condition is only allowed when \00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 74, ptr @str.16 }
@str.17 = internal unnamed_addr constant [82 x i8] c"'_' is already defined in the enclosing scope (e.g. inside a '=> '-omitted-param \00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 81, ptr @str.17 }
@str.18 = internal unnamed_addr constant [51 x i8] c"lambda, or a cycle body). '_' is not defined here.\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.18 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"diag::E3003_choice_underscore_undefined", ptr null }
@"var.diag::E3003_choice_underscore_undefined" = global ptr null
@str.19 = internal unnamed_addr constant [94 x i8] c"Unary '!' cannot be applied to this type. Use Flag for logical NOT or '+' for Builder freeze.\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 93, ptr @str.19 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"diag::E3008_not_invalid_type", ptr null }
@"var.diag::E3008_not_invalid_type" = global ptr null
@str.20 = internal unnamed_addr constant [44 x i8] c"Unary '!' cannot be applied to an integer. \00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.20 }
@str.21 = internal unnamed_addr constant [66 x i8] c"To create a Builder with capacity n, use the brace literal '{n}'.\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 65, ptr @str.21 }
@clo.const.15 = internal constant { ptr, ptr } { ptr @"diag::E3008_not_integer", ptr null }
@"var.diag::E3008_not_integer" = global ptr null
@str.22 = internal unnamed_addr constant [44 x i8] c"Cannot assign Void expression to variable '\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.22 }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"diag::E3032_assign_void_var_prefix", ptr null }
@"var.diag::E3032_assign_void_var_prefix" = global ptr null
@str.23 = internal unnamed_addr constant [46 x i8] c"Cannot assign Void expression to element of '\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 45, ptr @str.23 }
@clo.const.17 = internal constant { ptr, ptr } { ptr @"diag::E3032_assign_void_elem_prefix", ptr null }
@"var.diag::E3032_assign_void_elem_prefix" = global ptr null
@str.24 = internal unnamed_addr constant [37 x i8] c"Cannot re-assign immutable binding '\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 36, ptr @str.24 }
@clo.const.18 = internal constant { ptr, ptr } { ptr @"diag::E3033_reassign_immutable_prefix", ptr null }
@"var.diag::E3033_reassign_immutable_prefix" = global ptr null
@str.25 = internal unnamed_addr constant [25 x i8] c"'. Use a prime suffix ('\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.25 }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"diag::E3033_reassign_immutable_suffix", ptr null }
@"var.diag::E3033_reassign_immutable_suffix" = global ptr null
@str.26 = internal unnamed_addr constant [30 x i8] c"'') for rebindable variables.\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.26 }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"diag::E3033_reassign_immutable_tail", ptr null }
@"var.diag::E3033_reassign_immutable_tail" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"diag::reassign_immutable", ptr null }
@"var.diag::reassign_immutable" = global ptr null
@str.27 = internal unnamed_addr constant [3 x i8] c"'.\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.27 }
@clo.const.22 = internal constant { ptr, ptr } { ptr @"diag::assign_void_variable", ptr null }
@"var.diag::assign_void_variable" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"diag::assign_void_element", ptr null }
@"var.diag::assign_void_element" = global ptr null
@str.28 = internal unnamed_addr constant [21 x i8] c"Homogeneous record '\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 20, ptr @str.28 }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"diag::E3131_whole_val_init_prefix", ptr null }
@str.29 = internal unnamed_addr constant [61 x i8] c"' requires whole-value initialization before element access.\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.29 }
@clo.const.25 = internal constant { ptr, ptr } { ptr @"diag::E3131_whole_val_init_suffix", ptr null }
@clo.const.26 = internal constant { ptr, ptr } { ptr @"diag::whole_value_init", ptr null }
@"var.diag::whole_value_init" = global ptr null
@str.30 = internal unnamed_addr constant [8 x i8] c"Field '\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.30 }
@str.31 = internal unnamed_addr constant [7 x i8] c"' of '\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.31 }
@str.32 = internal unnamed_addr constant [45 x i8] c"' has no default value and was not provided.\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 44, ptr @str.32 }
@clo.const.27 = internal constant { ptr, ptr } { ptr @"diag::record_default_missing", ptr null }
@"var.diag::record_default_missing" = global ptr null
@str.33 = internal unnamed_addr constant [7 x i8] c"Enum '\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.33 }
@str.34 = internal unnamed_addr constant [27 x i8] c"' has no variant labeled '\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.34 }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"diag::enum_no_variant", ptr null }
@"var.diag::enum_no_variant" = global ptr null
@str.35 = internal unnamed_addr constant [12 x i8] c"' variant '\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 11, ptr @str.35 }
@str.36 = internal unnamed_addr constant [48 x i8] c"' is a bare unit and takes no payload argument.\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.36 }
@clo.const.29 = internal constant { ptr, ptr } { ptr @"diag::enum_unit_payload", ptr null }
@"var.diag::enum_unit_payload" = global ptr null
@str.37 = internal unnamed_addr constant [27 x i8] c"' expects payload of type \00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.37 }
@str.38 = internal unnamed_addr constant [7 x i8] c", got \00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.38 }
@str.39 = internal unnamed_addr constant [2 x i8] c".\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.39 }
@clo.const.30 = internal constant { ptr, ptr } { ptr @"diag::enum_payload_type", ptr null }
@"var.diag::enum_payload_type" = global ptr null
@str.40 = internal unnamed_addr constant [44 x i8] c"Passing a partially-initialized composite '\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.40 }
@str.41 = internal unnamed_addr constant [31 x i8] c"' to a function is disallowed.\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.41 }
@clo.const.31 = internal constant { ptr, ptr } { ptr @"diag::partial_composite_argument", ptr null }
@"var.diag::partial_composite_argument" = global ptr null
@str.42 = internal unnamed_addr constant [57 x i8] c"Dynamic indexing is only allowed on homogeneous records.\00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.42 }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"diag::E3051_dynamic_index_hetero", ptr null }
@"var.diag::E3051_dynamic_index_hetero" = global ptr null
@str.43 = internal unnamed_addr constant [56 x i8] c"Cycle iteration is only allowed on homogeneous records.\00"
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 55, ptr @str.43 }
@clo.const.33 = internal constant { ptr, ptr } { ptr @"diag::E3051_cycle_iter_hetero", ptr null }
@"var.diag::E3051_cycle_iter_hetero" = global ptr null
@str.44 = internal unnamed_addr constant [72 x i8] c"Cannot construct a String from a RawPtr \E2\80\94 'String(ptr)' is rejected. \00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.44 }
@str.45 = internal unnamed_addr constant [55 x i8] c"Build with literals, '+', '++', 's + n', or a Builder.\00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.45 }
@clo.const.34 = internal constant { ptr, ptr } { ptr @"diag::E3065_rawptr_to_string", ptr null }
@"var.diag::E3065_rawptr_to_string" = global ptr null
@str.46 = internal unnamed_addr constant [59 x i8] c"Address operator '&' requires a Builder or String operand.\00"
@str.46.struct = internal unnamed_addr constant { i64, ptr } { i64 58, ptr @str.46 }
@clo.const.35 = internal constant { ptr, ptr } { ptr @"diag::E3078_addr_builder_or_string", ptr null }
@"var.diag::E3078_addr_builder_or_string" = global ptr null
@str.47 = internal unnamed_addr constant [35 x i8] c"Record size mismatch in arithmetic\00"
@str.47.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.47 }
@clo.const.36 = internal constant { ptr, ptr } { ptr @"diag::E3084_record_size_mismatch", ptr null }
@"var.diag::E3084_record_size_mismatch" = global ptr null
@str.48 = internal unnamed_addr constant [25 x i8] c"Arithmetic type mismatch\00"
@str.48.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.48 }
@clo.const.37 = internal constant { ptr, ptr } { ptr @"diag::E3084_arithmetic_type_mismatch", ptr null }
@"var.diag::E3084_arithmetic_type_mismatch" = global ptr null
@str.49 = internal unnamed_addr constant [39 x i8] c"Builder append requires byte or String\00"
@str.49.struct = internal unnamed_addr constant { i64, ptr } { i64 38, ptr @str.49 }
@clo.const.38 = internal constant { ptr, ptr } { ptr @"diag::E3084_builder_append_type", ptr null }
@"var.diag::E3084_builder_append_type" = global ptr null
@str.50 = internal unnamed_addr constant [43 x i8] c"Incompatible branch result types in choice\00"
@str.50.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.50 }
@clo.const.39 = internal constant { ptr, ptr } { ptr @"diag::E3084_choice_branch_mismatch", ptr null }
@"var.diag::E3084_choice_branch_mismatch" = global ptr null
@str.51 = internal unnamed_addr constant [40 x i8] c"Operand of '--!' must be a ramification\00"
@str.51.struct = internal unnamed_addr constant { i64, ptr } { i64 39, ptr @str.51 }
@clo.const.40 = internal constant { ptr, ptr } { ptr @"diag::E3091_propagate_ram_operand", ptr null }
@"var.diag::E3091_propagate_ram_operand" = global ptr null
@str.52 = internal unnamed_addr constant [55 x i8] c"Cannot infer concrete type for expression without RTTI\00"
@str.52.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.52 }
@clo.const.41 = internal constant { ptr, ptr } { ptr @"diag::E3103_cannot_infer_type", ptr null }
@"var.diag::E3103_cannot_infer_type" = global ptr null
@"var.diag::E3131_whole_val_init_prefix" = global ptr null
@"var.diag::E3131_whole_val_init_suffix" = global ptr null
@str.53 = internal unnamed_addr constant [49 x i8] c"Cannot return Addr from an arena-restore scope. \00"
@str.53.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.53 }
@str.54 = internal unnamed_addr constant [48 x i8] c"Copy data explicitly with '++' before boundary.\00"
@str.54.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.54 }
@clo.const.42 = internal constant { ptr, ptr } { ptr @"diag::E3133_addr_escape_restore", ptr null }
@"var.diag::E3133_addr_escape_restore" = global ptr null
@str.55 = internal unnamed_addr constant [80 x i8] c"Assignment of block-scoped Addr to outer-scope binding escapes arena lifecycle.\00"
@str.55.struct = internal unnamed_addr constant { i64, ptr } { i64 79, ptr @str.55 }
@clo.const.43 = internal constant { ptr, ptr } { ptr @"diag::E3134_addr_escape_lifecycle", ptr null }
@"var.diag::E3134_addr_escape_lifecycle" = global ptr null
@str.56 = internal unnamed_addr constant [54 x i8] c"Compile-time type choice has no branch for this type.\00"
@str.56.struct = internal unnamed_addr constant { i64, ptr } { i64 53, ptr @str.56 }
@clo.const.44 = internal constant { ptr, ptr } { ptr @"diag::E3136_type_choice_no_branch", ptr null }
@"var.diag::E3136_type_choice_no_branch" = global ptr null
@str.57 = internal unnamed_addr constant [79 x i8] c"arena allocation under --no-runtime. The feature you used (a record, closure, \00"
@str.57.struct = internal unnamed_addr constant { i64, ptr } { i64 78, ptr @str.57 }
@str.58 = internal unnamed_addr constant [68 x i8] c"String concat, Builder, or heap ram/enum) needs the runtime arena, \00"
@str.58.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.58 }
@str.59 = internal unnamed_addr constant [73 x i8] c"which --no-runtime omits. Use only bare-metal features: Int arithmetic, \00"
@str.59.struct = internal unnamed_addr constant { i64, ptr } { i64 72, ptr @str.59 }
@str.60 = internal unnamed_addr constant [62 x i8] c"String literals, '?s', 's(i)', and raw '@[Addr(...)]' memory.\00"
@str.60.struct = internal unnamed_addr constant { i64, ptr } { i64 61, ptr @str.60 }
@clo.const.45 = internal constant { ptr, ptr } { ptr @"diag::E3140_no_runtime_arena", ptr null }
@"var.diag::E3140_no_runtime_arena" = global ptr null
@str.61 = internal unnamed_addr constant [85 x i8] c"Raw memory write '@[addr] = expr' requires an integerish or pointer value, got Float\00"
@str.61.struct = internal unnamed_addr constant { i64, ptr } { i64 84, ptr @str.61 }
@clo.const.46 = internal constant { ptr, ptr } { ptr @"diag::E3142_raw_write_type", ptr null }
@"var.diag::E3142_raw_write_type" = global ptr null
@str.62 = internal unnamed_addr constant [34 x i8] c"View cannot escape function frame\00"
@str.62.struct = internal unnamed_addr constant { i64, ptr } { i64 33, ptr @str.62 }
@clo.const.47 = internal constant { ptr, ptr } { ptr @"diag::E3150_view_escape_frame", ptr null }
@"var.diag::E3150_view_escape_frame" = global ptr null
@str.63 = internal unnamed_addr constant [42 x i8] c"'#exit' expects an integerish status code\00"
@str.63.struct = internal unnamed_addr constant { i64, ptr } { i64 41, ptr @str.63 }
@clo.const.48 = internal constant { ptr, ptr } { ptr @"diag::E3172_exit_status_integerish", ptr null }
@"var.diag::E3172_exit_status_integerish" = global ptr null
@str.64 = internal unnamed_addr constant [49 x i8] c"Return '--|' can only be used inside a function.\00"
@str.64.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.64 }
@clo.const.49 = internal constant { ptr, ptr } { ptr @"diag::E3173_return_outside_fn", ptr null }
@"var.diag::E3173_return_outside_fn" = global ptr null
@str.65 = internal unnamed_addr constant [61 x i8] c"Propagate operator '--!' can only be used inside a function.\00"
@str.65.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.65 }
@clo.const.50 = internal constant { ptr, ptr } { ptr @"diag::E3173_propagate_outside_fn", ptr null }
@"var.diag::E3173_propagate_outside_fn" = global ptr null
@str.66 = internal unnamed_addr constant [72 x i8] c"Choice has a constant expression in a branch and its value is discarded\00"
@str.66.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.66 }
@clo.const.51 = internal constant { ptr, ptr } { ptr @"diag::E3175_choice_const_discarded", ptr null }
@"var.diag::E3175_choice_const_discarded" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_diag, ptr null }]

declare i32 @printf(ptr, ...)

declare ptr @dva_arena_current()

declare ptr @dva_arena_set_current(ptr)

declare ptr @malloc(i64)

declare void @free(ptr)

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

declare void @dva_arena_init(ptr, i64)

declare ptr @dva_arena_alloc(ptr, i64)

declare void @dva_arena_destroy(ptr)

declare i64 @dva_arena_save(ptr)

declare void @dva_arena_restore(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @strlen(ptr)

declare i32 @memcmp(ptr, ptr, i64)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_diag() #1 {
entry:
  store ptr @clo.const, ptr @"var.diag::E1017_heredoc_under_indented", align 8
  store ptr @clo.const.1, ptr @"var.diag::E1018_heredoc_unterminated", align 8
  store ptr @clo.const.2, ptr @"var.diag::E2010_colon_equals_retired", align 8
  store ptr @clo.const.3, ptr @"var.diag::E2024_bare_bar_position", align 8
  store ptr @clo.const.4, ptr @"var.diag::E2025_range_endpoint_whitespace", align 8
  store ptr @clo.const.5, ptr @"var.diag::E2032_call_paren_whitespace", align 8
  store ptr @clo.const.6, ptr @"var.diag::E2037_params_parenthesized", align 8
  store ptr @clo.const.7, ptr @"var.diag::E2039_expr_too_deep", align 8
  store ptr @clo.const.8, ptr @"var.diag::E2039_param_mutable_prefix", align 8
  store ptr @clo.const.9, ptr @"var.diag::E2093_assign_typed_load", align 8
  store ptr @clo.const.10, ptr @"var.diag::E2096_bar_before_guard", align 8
  store ptr @clo.const.11, ptr @"var.diag::E2105_redundant_choice_tail", align 8
  store ptr @clo.const.12, ptr @"var.diag::E2108_state_binding_target", align 8
  store ptr @clo.const.13, ptr @"var.diag::E3003_choice_underscore_undefined", align 8
  store ptr @clo.const.14, ptr @"var.diag::E3008_not_invalid_type", align 8
  store ptr @clo.const.15, ptr @"var.diag::E3008_not_integer", align 8
  store ptr @clo.const.16, ptr @"var.diag::E3032_assign_void_var_prefix", align 8
  store ptr @clo.const.17, ptr @"var.diag::E3032_assign_void_elem_prefix", align 8
  store ptr @clo.const.18, ptr @"var.diag::E3033_reassign_immutable_prefix", align 8
  store ptr @clo.const.19, ptr @"var.diag::E3033_reassign_immutable_suffix", align 8
  store ptr @clo.const.20, ptr @"var.diag::E3033_reassign_immutable_tail", align 8
  store ptr @clo.const.21, ptr @"var.diag::reassign_immutable", align 8
  store ptr @clo.const.22, ptr @"var.diag::assign_void_variable", align 8
  store ptr @clo.const.23, ptr @"var.diag::assign_void_element", align 8
  store ptr @clo.const.26, ptr @"var.diag::whole_value_init", align 8
  store ptr @clo.const.27, ptr @"var.diag::record_default_missing", align 8
  store ptr @clo.const.28, ptr @"var.diag::enum_no_variant", align 8
  store ptr @clo.const.29, ptr @"var.diag::enum_unit_payload", align 8
  store ptr @clo.const.30, ptr @"var.diag::enum_payload_type", align 8
  store ptr @clo.const.31, ptr @"var.diag::partial_composite_argument", align 8
  store ptr @clo.const.32, ptr @"var.diag::E3051_dynamic_index_hetero", align 8
  store ptr @clo.const.33, ptr @"var.diag::E3051_cycle_iter_hetero", align 8
  store ptr @clo.const.34, ptr @"var.diag::E3065_rawptr_to_string", align 8
  store ptr @clo.const.35, ptr @"var.diag::E3078_addr_builder_or_string", align 8
  store ptr @clo.const.36, ptr @"var.diag::E3084_record_size_mismatch", align 8
  store ptr @clo.const.37, ptr @"var.diag::E3084_arithmetic_type_mismatch", align 8
  store ptr @clo.const.38, ptr @"var.diag::E3084_builder_append_type", align 8
  store ptr @clo.const.39, ptr @"var.diag::E3084_choice_branch_mismatch", align 8
  store ptr @clo.const.40, ptr @"var.diag::E3091_propagate_ram_operand", align 8
  store ptr @clo.const.41, ptr @"var.diag::E3103_cannot_infer_type", align 8
  store ptr @clo.const.24, ptr @"var.diag::E3131_whole_val_init_prefix", align 8
  store ptr @clo.const.25, ptr @"var.diag::E3131_whole_val_init_suffix", align 8
  store ptr @clo.const.42, ptr @"var.diag::E3133_addr_escape_restore", align 8
  store ptr @clo.const.43, ptr @"var.diag::E3134_addr_escape_lifecycle", align 8
  store ptr @clo.const.44, ptr @"var.diag::E3136_type_choice_no_branch", align 8
  store ptr @clo.const.45, ptr @"var.diag::E3140_no_runtime_arena", align 8
  store ptr @clo.const.46, ptr @"var.diag::E3142_raw_write_type", align 8
  store ptr @clo.const.47, ptr @"var.diag::E3150_view_escape_frame", align 8
  store ptr @clo.const.48, ptr @"var.diag::E3172_exit_status_integerish", align 8
  store ptr @clo.const.49, ptr @"var.diag::E3173_return_outside_fn", align 8
  store ptr @clo.const.50, ptr @"var.diag::E3173_propagate_outside_fn", align 8
  store ptr @clo.const.51, ptr @"var.diag::E3175_choice_const_discarded", align 8
  ret void
}

define ptr @"diag::E1017_heredoc_under_indented"() #1 {
entry:
  ret ptr @str.0.struct
}

define ptr @"diag::E1018_heredoc_unterminated"() #1 {
entry:
  ret ptr @str.1.struct
}

define ptr @"diag::E2010_colon_equals_retired"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.2.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.3.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs15 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale10:                                      ; preds = %str_gen_check8
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok9
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"diag::E2024_bare_bar_position"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.4.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.5.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs15 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale10:                                      ; preds = %str_gen_check8
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok9
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19
}

define ptr @"diag::E2025_range_endpoint_whitespace"() #1 {
entry:
  ret ptr @str.6.struct
}

define ptr @"diag::E2032_call_paren_whitespace"() #1 {
entry:
  ret ptr @str.7.struct
}

define ptr @"diag::E2037_params_parenthesized"() #1 {
entry:
  ret ptr @str.8.struct
}

define ptr @"diag::E2039_expr_too_deep"() #1 {
entry:
  ret ptr @str.9.struct
}

define ptr @"diag::E2039_param_mutable_prefix"() #1 {
entry:
  ret ptr @str.10.struct
}

define ptr @"diag::E2093_assign_typed_load"() #1 {
entry:
  ret ptr @str.11.struct
}

define ptr @"diag::E2096_bar_before_guard"() #1 {
entry:
  ret ptr @str.12.struct
}

define ptr @"diag::E2105_redundant_choice_tail"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.13.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.14.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs15 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale10:                                      ; preds = %str_gen_check8
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok9
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19
}

define ptr @"diag::E2108_state_binding_target"() #1 {
entry:
  ret ptr @str.15.struct
}

define ptr @"diag::E3003_choice_underscore_undefined"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.16.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.17.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs15 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale10:                                      ; preds = %str_gen_check8
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok9
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs22 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs23 = load i64, ptr %concat.lhs22, align 8
  %concat.lhs24 = and i64 %concat.lhs23, 281474976710655
  %str.tag25 = lshr i64 %concat.lhs23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19

str_gen_check27:                                  ; preds = %concat.tot.len19
  %arena.gen30 = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen30, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match33 = icmp eq i64 %str.tag25, %arena.gen32
  br i1 %str.tag.match33, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %concat.tot.len19
  %concat.lhs34 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs35 = load ptr, ptr %concat.lhs34, align 8
  %concat.rhs36 = load i64, ptr @str.18.struct, align 8
  %concat.rhs37 = and i64 %concat.rhs36, 281474976710655
  %str.tag38 = lshr i64 %concat.rhs36, 48
  %str.immortal39 = icmp eq i64 %str.tag38, 0
  br i1 %str.immortal39, label %str_ok41, label %str_gen_check40

str_stale29:                                      ; preds = %str_gen_check27
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str_gen_check40:                                  ; preds = %str_ok28
  %arena.gen43 = call ptr @dva_arena_current()
  %arena.gen44 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen43, i32 0, i32 4
  %arena.gen45 = load i64, ptr %arena.gen44, align 8
  %str.tag.match46 = icmp eq i64 %str.tag38, %arena.gen45
  br i1 %str.tag.match46, label %str_ok41, label %str_stale42

str_ok41:                                         ; preds = %str_stale42, %str_gen_check40, %str_ok28
  %concat.rhs47 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %concat.sum.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs24, i64 %concat.rhs37)
  %sum49 = extractvalue { i64, i1 } %concat.sum.len48, 0
  %ovf50 = extractvalue { i64, i1 } %concat.sum.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.sum.len51

str_stale42:                                      ; preds = %str_gen_check40
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok41

concat.sum.len51:                                 ; preds = %str_overflow_abort52, %str_ok41
  %concat.tot.len53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum49, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len53, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len53, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort52:                             ; preds = %str_ok41
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len51

concat.tot.len56:                                 ; preds = %str_overflow_abort57, %concat.sum.len51
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.buf59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf59, ptr align 1 %concat.lhs35, i64 %concat.lhs24, i1 false)
  %concat.mid60 = getelementptr i8, ptr %concat.buf59, i64 %concat.lhs24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid60, ptr align 1 %concat.rhs47, i64 %concat.rhs37, i1 false)
  %concat.nul61 = getelementptr i8, ptr %concat.buf59, i64 %sum49
  store i8 0, ptr %concat.nul61, align 1
  %arena.cur62 = call ptr @dva_arena_current()
  %concat.str63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  %str.build.len.gep64 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 0
  store i64 %sum49, ptr %str.build.len.gep64, align 8
  %str.build.data.gep65 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 1
  store ptr %concat.buf59, ptr %str.build.data.gep65, align 8
  ret ptr %concat.str63

str_overflow_abort57:                             ; preds = %concat.sum.len51
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len56
}

define ptr @"diag::E3008_not_invalid_type"() #1 {
entry:
  ret ptr @str.19.struct
}

define ptr @"diag::E3008_not_integer"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.20.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.21.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs15 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale10:                                      ; preds = %str_gen_check8
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok9
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19
}

define ptr @"diag::E3032_assign_void_var_prefix"() #1 {
entry:
  ret ptr @str.22.struct
}

define ptr @"diag::E3032_assign_void_elem_prefix"() #1 {
entry:
  ret ptr @str.23.struct
}

define ptr @"diag::E3033_reassign_immutable_prefix"() #1 {
entry:
  ret ptr @str.24.struct
}

define ptr @"diag::E3033_reassign_immutable_suffix"() #1 {
entry:
  ret ptr @str.25.struct
}

define ptr @"diag::E3033_reassign_immutable_tail"() #1 {
entry:
  ret ptr @str.26.struct
}

define ptr @"diag::reassign_immutable"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call ptr @"diag::E3033_reassign_immutable_prefix"()
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs5 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.lhs6 = load ptr, ptr %concat.lhs5, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs7 = load i64, ptr %concat.rhs, align 8
  %concat.rhs8 = and i64 %concat.rhs7, 281474976710655
  %str.tag9 = lshr i64 %concat.rhs7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %concat.rhs18 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs19 = load ptr, ptr %concat.rhs18, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len20

str_stale13:                                      ; preds = %str_gen_check11
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

concat.sum.len20:                                 ; preds = %str_overflow_abort, %str_ok12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum21 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf22 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf22, label %str_overflow_abort24, label %concat.tot.len23

str_overflow_abort:                               ; preds = %str_ok12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len20

concat.tot.len23:                                 ; preds = %str_overflow_abort24, %concat.sum.len20
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs6, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs19, i64 %concat.rhs8, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur25 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res26 = call ptr @"diag::E3033_reassign_immutable_suffix"()
  %concat.lhs27 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs28 = load i64, ptr %concat.lhs27, align 8
  %concat.lhs29 = and i64 %concat.lhs28, 281474976710655
  %str.tag30 = lshr i64 %concat.lhs28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_overflow_abort24:                             ; preds = %concat.sum.len20
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len23

str_gen_check32:                                  ; preds = %concat.tot.len23
  %arena.gen35 = call ptr @dva_arena_current()
  %arena.gen36 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen35, i32 0, i32 4
  %arena.gen37 = load i64, ptr %arena.gen36, align 8
  %str.tag.match38 = icmp eq i64 %str.tag30, %arena.gen37
  br i1 %str.tag.match38, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %concat.tot.len23
  %concat.lhs39 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs40 = load ptr, ptr %concat.lhs39, align 8
  %concat.rhs41 = getelementptr inbounds { i64, ptr }, ptr %call.res26, i32 0, i32 0
  %concat.rhs42 = load i64, ptr %concat.rhs41, align 8
  %concat.rhs43 = and i64 %concat.rhs42, 281474976710655
  %str.tag44 = lshr i64 %concat.rhs42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

str_stale34:                                      ; preds = %str_gen_check32
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str_gen_check46:                                  ; preds = %str_ok33
  %arena.gen49 = call ptr @dva_arena_current()
  %arena.gen50 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen49, i32 0, i32 4
  %arena.gen51 = load i64, ptr %arena.gen50, align 8
  %str.tag.match52 = icmp eq i64 %str.tag44, %arena.gen51
  br i1 %str.tag.match52, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %str_ok33
  %concat.rhs53 = getelementptr inbounds { i64, ptr }, ptr %call.res26, i32 0, i32 1
  %concat.rhs54 = load ptr, ptr %concat.rhs53, align 8
  %concat.sum.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs29, i64 %concat.rhs43)
  %sum56 = extractvalue { i64, i1 } %concat.sum.len55, 0
  %ovf57 = extractvalue { i64, i1 } %concat.sum.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.sum.len58

str_stale48:                                      ; preds = %str_gen_check46
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

concat.sum.len58:                                 ; preds = %str_overflow_abort59, %str_ok47
  %concat.tot.len60 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum56, i64 1)
  %sum61 = extractvalue { i64, i1 } %concat.tot.len60, 0
  %ovf62 = extractvalue { i64, i1 } %concat.tot.len60, 1
  br i1 %ovf62, label %str_overflow_abort64, label %concat.tot.len63

str_overflow_abort59:                             ; preds = %str_ok47
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len58

concat.tot.len63:                                 ; preds = %str_overflow_abort64, %concat.sum.len58
  %arena.cur65 = call ptr @dva_arena_current()
  %concat.buf66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %sum61)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf66, ptr align 1 %concat.lhs40, i64 %concat.lhs29, i1 false)
  %concat.mid67 = getelementptr i8, ptr %concat.buf66, i64 %concat.lhs29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid67, ptr align 1 %concat.rhs54, i64 %concat.rhs43, i1 false)
  %concat.nul68 = getelementptr i8, ptr %concat.buf66, i64 %sum56
  store i8 0, ptr %concat.nul68, align 1
  %arena.cur69 = call ptr @dva_arena_current()
  %concat.str70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 16)
  %str.build.len.gep71 = getelementptr inbounds { i64, ptr }, ptr %concat.str70, i32 0, i32 0
  store i64 %sum56, ptr %str.build.len.gep71, align 8
  %str.build.data.gep72 = getelementptr inbounds { i64, ptr }, ptr %concat.str70, i32 0, i32 1
  store ptr %concat.buf66, ptr %str.build.data.gep72, align 8
  %var.load73 = load ptr, ptr %var.name, align 8
  %concat.lhs74 = getelementptr inbounds { i64, ptr }, ptr %concat.str70, i32 0, i32 0
  %concat.lhs75 = load i64, ptr %concat.lhs74, align 8
  %concat.lhs76 = and i64 %concat.lhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.lhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_overflow_abort64:                             ; preds = %concat.sum.len58
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len63

str_gen_check79:                                  ; preds = %concat.tot.len63
  %arena.gen82 = call ptr @dva_arena_current()
  %arena.gen83 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen82, i32 0, i32 4
  %arena.gen84 = load i64, ptr %arena.gen83, align 8
  %str.tag.match85 = icmp eq i64 %str.tag77, %arena.gen84
  br i1 %str.tag.match85, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %concat.tot.len63
  %concat.lhs86 = getelementptr inbounds { i64, ptr }, ptr %concat.str70, i32 0, i32 1
  %concat.lhs87 = load ptr, ptr %concat.lhs86, align 8
  %concat.rhs88 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %concat.rhs89 = load i64, ptr %concat.rhs88, align 8
  %concat.rhs90 = and i64 %concat.rhs89, 281474976710655
  %str.tag91 = lshr i64 %concat.rhs89, 48
  %str.immortal92 = icmp eq i64 %str.tag91, 0
  br i1 %str.immortal92, label %str_ok94, label %str_gen_check93

str_stale81:                                      ; preds = %str_gen_check79
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

str_gen_check93:                                  ; preds = %str_ok80
  %arena.gen96 = call ptr @dva_arena_current()
  %arena.gen97 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen96, i32 0, i32 4
  %arena.gen98 = load i64, ptr %arena.gen97, align 8
  %str.tag.match99 = icmp eq i64 %str.tag91, %arena.gen98
  br i1 %str.tag.match99, label %str_ok94, label %str_stale95

str_ok94:                                         ; preds = %str_stale95, %str_gen_check93, %str_ok80
  %concat.rhs100 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %concat.rhs101 = load ptr, ptr %concat.rhs100, align 8
  %concat.sum.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs76, i64 %concat.rhs90)
  %sum103 = extractvalue { i64, i1 } %concat.sum.len102, 0
  %ovf104 = extractvalue { i64, i1 } %concat.sum.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %concat.sum.len105

str_stale95:                                      ; preds = %str_gen_check93
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok94

concat.sum.len105:                                ; preds = %str_overflow_abort106, %str_ok94
  %concat.tot.len107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum103, i64 1)
  %sum108 = extractvalue { i64, i1 } %concat.tot.len107, 0
  %ovf109 = extractvalue { i64, i1 } %concat.tot.len107, 1
  br i1 %ovf109, label %str_overflow_abort111, label %concat.tot.len110

str_overflow_abort106:                            ; preds = %str_ok94
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len105

concat.tot.len110:                                ; preds = %str_overflow_abort111, %concat.sum.len105
  %arena.cur112 = call ptr @dva_arena_current()
  %concat.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 %sum108)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf113, ptr align 1 %concat.lhs87, i64 %concat.lhs76, i1 false)
  %concat.mid114 = getelementptr i8, ptr %concat.buf113, i64 %concat.lhs76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid114, ptr align 1 %concat.rhs101, i64 %concat.rhs90, i1 false)
  %concat.nul115 = getelementptr i8, ptr %concat.buf113, i64 %sum103
  store i8 0, ptr %concat.nul115, align 1
  %arena.cur116 = call ptr @dva_arena_current()
  %concat.str117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 16)
  %str.build.len.gep118 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 0
  store i64 %sum103, ptr %str.build.len.gep118, align 8
  %str.build.data.gep119 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 1
  store ptr %concat.buf113, ptr %str.build.data.gep119, align 8
  %call.res120 = call ptr @"diag::E3033_reassign_immutable_tail"()
  %concat.lhs121 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 0
  %concat.lhs122 = load i64, ptr %concat.lhs121, align 8
  %concat.lhs123 = and i64 %concat.lhs122, 281474976710655
  %str.tag124 = lshr i64 %concat.lhs122, 48
  %str.immortal125 = icmp eq i64 %str.tag124, 0
  br i1 %str.immortal125, label %str_ok127, label %str_gen_check126

str_overflow_abort111:                            ; preds = %concat.sum.len105
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len110

str_gen_check126:                                 ; preds = %concat.tot.len110
  %arena.gen129 = call ptr @dva_arena_current()
  %arena.gen130 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen129, i32 0, i32 4
  %arena.gen131 = load i64, ptr %arena.gen130, align 8
  %str.tag.match132 = icmp eq i64 %str.tag124, %arena.gen131
  br i1 %str.tag.match132, label %str_ok127, label %str_stale128

str_ok127:                                        ; preds = %str_stale128, %str_gen_check126, %concat.tot.len110
  %concat.lhs133 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 1
  %concat.lhs134 = load ptr, ptr %concat.lhs133, align 8
  %concat.rhs135 = getelementptr inbounds { i64, ptr }, ptr %call.res120, i32 0, i32 0
  %concat.rhs136 = load i64, ptr %concat.rhs135, align 8
  %concat.rhs137 = and i64 %concat.rhs136, 281474976710655
  %str.tag138 = lshr i64 %concat.rhs136, 48
  %str.immortal139 = icmp eq i64 %str.tag138, 0
  br i1 %str.immortal139, label %str_ok141, label %str_gen_check140

str_stale128:                                     ; preds = %str_gen_check126
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok127

str_gen_check140:                                 ; preds = %str_ok127
  %arena.gen143 = call ptr @dva_arena_current()
  %arena.gen144 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen143, i32 0, i32 4
  %arena.gen145 = load i64, ptr %arena.gen144, align 8
  %str.tag.match146 = icmp eq i64 %str.tag138, %arena.gen145
  br i1 %str.tag.match146, label %str_ok141, label %str_stale142

str_ok141:                                        ; preds = %str_stale142, %str_gen_check140, %str_ok127
  %concat.rhs147 = getelementptr inbounds { i64, ptr }, ptr %call.res120, i32 0, i32 1
  %concat.rhs148 = load ptr, ptr %concat.rhs147, align 8
  %concat.sum.len149 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs123, i64 %concat.rhs137)
  %sum150 = extractvalue { i64, i1 } %concat.sum.len149, 0
  %ovf151 = extractvalue { i64, i1 } %concat.sum.len149, 1
  br i1 %ovf151, label %str_overflow_abort153, label %concat.sum.len152

str_stale142:                                     ; preds = %str_gen_check140
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok141

concat.sum.len152:                                ; preds = %str_overflow_abort153, %str_ok141
  %concat.tot.len154 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum150, i64 1)
  %sum155 = extractvalue { i64, i1 } %concat.tot.len154, 0
  %ovf156 = extractvalue { i64, i1 } %concat.tot.len154, 1
  br i1 %ovf156, label %str_overflow_abort158, label %concat.tot.len157

str_overflow_abort153:                            ; preds = %str_ok141
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len152

concat.tot.len157:                                ; preds = %str_overflow_abort158, %concat.sum.len152
  %arena.cur159 = call ptr @dva_arena_current()
  %concat.buf160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 %sum155)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf160, ptr align 1 %concat.lhs134, i64 %concat.lhs123, i1 false)
  %concat.mid161 = getelementptr i8, ptr %concat.buf160, i64 %concat.lhs123
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid161, ptr align 1 %concat.rhs148, i64 %concat.rhs137, i1 false)
  %concat.nul162 = getelementptr i8, ptr %concat.buf160, i64 %sum150
  store i8 0, ptr %concat.nul162, align 1
  %arena.cur163 = call ptr @dva_arena_current()
  %concat.str164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 16)
  %str.build.len.gep165 = getelementptr inbounds { i64, ptr }, ptr %concat.str164, i32 0, i32 0
  store i64 %sum150, ptr %str.build.len.gep165, align 8
  %str.build.data.gep166 = getelementptr inbounds { i64, ptr }, ptr %concat.str164, i32 0, i32 1
  store ptr %concat.buf160, ptr %str.build.data.gep166, align 8
  ret ptr %concat.str164

str_overflow_abort158:                            ; preds = %concat.sum.len152
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len157
}

define ptr @"diag::assign_void_variable"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call ptr @"diag::E3032_assign_void_var_prefix"()
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs5 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.lhs6 = load ptr, ptr %concat.lhs5, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs7 = load i64, ptr %concat.rhs, align 8
  %concat.rhs8 = and i64 %concat.rhs7, 281474976710655
  %str.tag9 = lshr i64 %concat.rhs7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %concat.rhs18 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs19 = load ptr, ptr %concat.rhs18, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len20

str_stale13:                                      ; preds = %str_gen_check11
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

concat.sum.len20:                                 ; preds = %str_overflow_abort, %str_ok12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum21 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf22 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf22, label %str_overflow_abort24, label %concat.tot.len23

str_overflow_abort:                               ; preds = %str_ok12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len20

concat.tot.len23:                                 ; preds = %str_overflow_abort24, %concat.sum.len20
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs6, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs19, i64 %concat.rhs8, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur25 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs26 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs27 = load i64, ptr %concat.lhs26, align 8
  %concat.lhs28 = and i64 %concat.lhs27, 281474976710655
  %str.tag29 = lshr i64 %concat.lhs27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

str_overflow_abort24:                             ; preds = %concat.sum.len20
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len23

str_gen_check31:                                  ; preds = %concat.tot.len23
  %arena.gen34 = call ptr @dva_arena_current()
  %arena.gen35 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen34, i32 0, i32 4
  %arena.gen36 = load i64, ptr %arena.gen35, align 8
  %str.tag.match37 = icmp eq i64 %str.tag29, %arena.gen36
  br i1 %str.tag.match37, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %concat.tot.len23
  %concat.lhs38 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs39 = load ptr, ptr %concat.lhs38, align 8
  %concat.rhs40 = load i64, ptr @str.27.struct, align 8
  %concat.rhs41 = and i64 %concat.rhs40, 281474976710655
  %str.tag42 = lshr i64 %concat.rhs40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale33:                                      ; preds = %str_gen_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

str_gen_check44:                                  ; preds = %str_ok32
  %arena.gen47 = call ptr @dva_arena_current()
  %arena.gen48 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen47, i32 0, i32 4
  %arena.gen49 = load i64, ptr %arena.gen48, align 8
  %str.tag.match50 = icmp eq i64 %str.tag42, %arena.gen49
  br i1 %str.tag.match50, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok32
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %concat.sum.len52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs28, i64 %concat.rhs41)
  %sum53 = extractvalue { i64, i1 } %concat.sum.len52, 0
  %ovf54 = extractvalue { i64, i1 } %concat.sum.len52, 1
  br i1 %ovf54, label %str_overflow_abort56, label %concat.sum.len55

str_stale46:                                      ; preds = %str_gen_check44
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

concat.sum.len55:                                 ; preds = %str_overflow_abort56, %str_ok45
  %concat.tot.len57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum53, i64 1)
  %sum58 = extractvalue { i64, i1 } %concat.tot.len57, 0
  %ovf59 = extractvalue { i64, i1 } %concat.tot.len57, 1
  br i1 %ovf59, label %str_overflow_abort61, label %concat.tot.len60

str_overflow_abort56:                             ; preds = %str_ok45
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len55

concat.tot.len60:                                 ; preds = %str_overflow_abort61, %concat.sum.len55
  %arena.cur62 = call ptr @dva_arena_current()
  %concat.buf63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %sum58)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf63, ptr align 1 %concat.lhs39, i64 %concat.lhs28, i1 false)
  %concat.mid64 = getelementptr i8, ptr %concat.buf63, i64 %concat.lhs28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid64, ptr align 1 %concat.rhs51, i64 %concat.rhs41, i1 false)
  %concat.nul65 = getelementptr i8, ptr %concat.buf63, i64 %sum53
  store i8 0, ptr %concat.nul65, align 1
  %arena.cur66 = call ptr @dva_arena_current()
  %concat.str67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  %str.build.len.gep68 = getelementptr inbounds { i64, ptr }, ptr %concat.str67, i32 0, i32 0
  store i64 %sum53, ptr %str.build.len.gep68, align 8
  %str.build.data.gep69 = getelementptr inbounds { i64, ptr }, ptr %concat.str67, i32 0, i32 1
  store ptr %concat.buf63, ptr %str.build.data.gep69, align 8
  ret ptr %concat.str67

str_overflow_abort61:                             ; preds = %concat.sum.len55
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len60
}

define ptr @"diag::assign_void_element"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call ptr @"diag::E3032_assign_void_elem_prefix"()
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs5 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.lhs6 = load ptr, ptr %concat.lhs5, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs7 = load i64, ptr %concat.rhs, align 8
  %concat.rhs8 = and i64 %concat.rhs7, 281474976710655
  %str.tag9 = lshr i64 %concat.rhs7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %concat.rhs18 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs19 = load ptr, ptr %concat.rhs18, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len20

str_stale13:                                      ; preds = %str_gen_check11
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

concat.sum.len20:                                 ; preds = %str_overflow_abort, %str_ok12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum21 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf22 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf22, label %str_overflow_abort24, label %concat.tot.len23

str_overflow_abort:                               ; preds = %str_ok12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len20

concat.tot.len23:                                 ; preds = %str_overflow_abort24, %concat.sum.len20
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs6, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs19, i64 %concat.rhs8, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur25 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs26 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs27 = load i64, ptr %concat.lhs26, align 8
  %concat.lhs28 = and i64 %concat.lhs27, 281474976710655
  %str.tag29 = lshr i64 %concat.lhs27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

str_overflow_abort24:                             ; preds = %concat.sum.len20
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len23

str_gen_check31:                                  ; preds = %concat.tot.len23
  %arena.gen34 = call ptr @dva_arena_current()
  %arena.gen35 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen34, i32 0, i32 4
  %arena.gen36 = load i64, ptr %arena.gen35, align 8
  %str.tag.match37 = icmp eq i64 %str.tag29, %arena.gen36
  br i1 %str.tag.match37, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %concat.tot.len23
  %concat.lhs38 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs39 = load ptr, ptr %concat.lhs38, align 8
  %concat.rhs40 = load i64, ptr @str.27.struct, align 8
  %concat.rhs41 = and i64 %concat.rhs40, 281474976710655
  %str.tag42 = lshr i64 %concat.rhs40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale33:                                      ; preds = %str_gen_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

str_gen_check44:                                  ; preds = %str_ok32
  %arena.gen47 = call ptr @dva_arena_current()
  %arena.gen48 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen47, i32 0, i32 4
  %arena.gen49 = load i64, ptr %arena.gen48, align 8
  %str.tag.match50 = icmp eq i64 %str.tag42, %arena.gen49
  br i1 %str.tag.match50, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok32
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %concat.sum.len52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs28, i64 %concat.rhs41)
  %sum53 = extractvalue { i64, i1 } %concat.sum.len52, 0
  %ovf54 = extractvalue { i64, i1 } %concat.sum.len52, 1
  br i1 %ovf54, label %str_overflow_abort56, label %concat.sum.len55

str_stale46:                                      ; preds = %str_gen_check44
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

concat.sum.len55:                                 ; preds = %str_overflow_abort56, %str_ok45
  %concat.tot.len57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum53, i64 1)
  %sum58 = extractvalue { i64, i1 } %concat.tot.len57, 0
  %ovf59 = extractvalue { i64, i1 } %concat.tot.len57, 1
  br i1 %ovf59, label %str_overflow_abort61, label %concat.tot.len60

str_overflow_abort56:                             ; preds = %str_ok45
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len55

concat.tot.len60:                                 ; preds = %str_overflow_abort61, %concat.sum.len55
  %arena.cur62 = call ptr @dva_arena_current()
  %concat.buf63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %sum58)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf63, ptr align 1 %concat.lhs39, i64 %concat.lhs28, i1 false)
  %concat.mid64 = getelementptr i8, ptr %concat.buf63, i64 %concat.lhs28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid64, ptr align 1 %concat.rhs51, i64 %concat.rhs41, i1 false)
  %concat.nul65 = getelementptr i8, ptr %concat.buf63, i64 %sum53
  store i8 0, ptr %concat.nul65, align 1
  %arena.cur66 = call ptr @dva_arena_current()
  %concat.str67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  %str.build.len.gep68 = getelementptr inbounds { i64, ptr }, ptr %concat.str67, i32 0, i32 0
  store i64 %sum53, ptr %str.build.len.gep68, align 8
  %str.build.data.gep69 = getelementptr inbounds { i64, ptr }, ptr %concat.str67, i32 0, i32 1
  store ptr %concat.buf63, ptr %str.build.data.gep69, align 8
  ret ptr %concat.str67

str_overflow_abort61:                             ; preds = %concat.sum.len55
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len60
}

define ptr @"diag::whole_value_init"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call ptr @"diag::E3131_whole_val_init_prefix"()
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs5 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.lhs6 = load ptr, ptr %concat.lhs5, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs7 = load i64, ptr %concat.rhs, align 8
  %concat.rhs8 = and i64 %concat.rhs7, 281474976710655
  %str.tag9 = lshr i64 %concat.rhs7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %concat.rhs18 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs19 = load ptr, ptr %concat.rhs18, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len20

str_stale13:                                      ; preds = %str_gen_check11
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

concat.sum.len20:                                 ; preds = %str_overflow_abort, %str_ok12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum21 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf22 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf22, label %str_overflow_abort24, label %concat.tot.len23

str_overflow_abort:                               ; preds = %str_ok12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len20

concat.tot.len23:                                 ; preds = %str_overflow_abort24, %concat.sum.len20
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs6, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs19, i64 %concat.rhs8, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur25 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res26 = call ptr @"diag::E3131_whole_val_init_suffix"()
  %concat.lhs27 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs28 = load i64, ptr %concat.lhs27, align 8
  %concat.lhs29 = and i64 %concat.lhs28, 281474976710655
  %str.tag30 = lshr i64 %concat.lhs28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_overflow_abort24:                             ; preds = %concat.sum.len20
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len23

str_gen_check32:                                  ; preds = %concat.tot.len23
  %arena.gen35 = call ptr @dva_arena_current()
  %arena.gen36 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen35, i32 0, i32 4
  %arena.gen37 = load i64, ptr %arena.gen36, align 8
  %str.tag.match38 = icmp eq i64 %str.tag30, %arena.gen37
  br i1 %str.tag.match38, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %concat.tot.len23
  %concat.lhs39 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs40 = load ptr, ptr %concat.lhs39, align 8
  %concat.rhs41 = getelementptr inbounds { i64, ptr }, ptr %call.res26, i32 0, i32 0
  %concat.rhs42 = load i64, ptr %concat.rhs41, align 8
  %concat.rhs43 = and i64 %concat.rhs42, 281474976710655
  %str.tag44 = lshr i64 %concat.rhs42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

str_stale34:                                      ; preds = %str_gen_check32
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str_gen_check46:                                  ; preds = %str_ok33
  %arena.gen49 = call ptr @dva_arena_current()
  %arena.gen50 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen49, i32 0, i32 4
  %arena.gen51 = load i64, ptr %arena.gen50, align 8
  %str.tag.match52 = icmp eq i64 %str.tag44, %arena.gen51
  br i1 %str.tag.match52, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %str_ok33
  %concat.rhs53 = getelementptr inbounds { i64, ptr }, ptr %call.res26, i32 0, i32 1
  %concat.rhs54 = load ptr, ptr %concat.rhs53, align 8
  %concat.sum.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs29, i64 %concat.rhs43)
  %sum56 = extractvalue { i64, i1 } %concat.sum.len55, 0
  %ovf57 = extractvalue { i64, i1 } %concat.sum.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.sum.len58

str_stale48:                                      ; preds = %str_gen_check46
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

concat.sum.len58:                                 ; preds = %str_overflow_abort59, %str_ok47
  %concat.tot.len60 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum56, i64 1)
  %sum61 = extractvalue { i64, i1 } %concat.tot.len60, 0
  %ovf62 = extractvalue { i64, i1 } %concat.tot.len60, 1
  br i1 %ovf62, label %str_overflow_abort64, label %concat.tot.len63

str_overflow_abort59:                             ; preds = %str_ok47
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len58

concat.tot.len63:                                 ; preds = %str_overflow_abort64, %concat.sum.len58
  %arena.cur65 = call ptr @dva_arena_current()
  %concat.buf66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %sum61)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf66, ptr align 1 %concat.lhs40, i64 %concat.lhs29, i1 false)
  %concat.mid67 = getelementptr i8, ptr %concat.buf66, i64 %concat.lhs29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid67, ptr align 1 %concat.rhs54, i64 %concat.rhs43, i1 false)
  %concat.nul68 = getelementptr i8, ptr %concat.buf66, i64 %sum56
  store i8 0, ptr %concat.nul68, align 1
  %arena.cur69 = call ptr @dva_arena_current()
  %concat.str70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 16)
  %str.build.len.gep71 = getelementptr inbounds { i64, ptr }, ptr %concat.str70, i32 0, i32 0
  store i64 %sum56, ptr %str.build.len.gep71, align 8
  %str.build.data.gep72 = getelementptr inbounds { i64, ptr }, ptr %concat.str70, i32 0, i32 1
  store ptr %concat.buf66, ptr %str.build.data.gep72, align 8
  ret ptr %concat.str70

str_overflow_abort64:                             ; preds = %concat.sum.len58
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len63
}

define ptr @"diag::E3131_whole_val_init_prefix"() #1 {
entry:
  ret ptr @str.28.struct
}

define ptr @"diag::E3131_whole_val_init_suffix"() #1 {
entry:
  ret ptr @str.29.struct
}

define ptr @"diag::record_default_missing"(ptr %0, ptr %1) #1 {
entry:
  %var.record = alloca ptr, align 8
  %var.field = alloca ptr, align 8
  store ptr %0, ptr %var.field, align 8
  store ptr %1, ptr %var.record, align 8
  %var.load = load ptr, ptr %var.field, align 8
  %concat.lhs = load i64, ptr @str.30.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs5 = load i64, ptr %concat.rhs, align 8
  %concat.rhs6 = and i64 %concat.rhs5, 281474976710655
  %str.tag7 = lshr i64 %concat.rhs5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.gen12 = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen12, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match15 = icmp eq i64 %str.tag7, %arena.gen14
  br i1 %str.tag.match15, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %concat.rhs16 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs17 = load ptr, ptr %concat.rhs16, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs6)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len18

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

concat.sum.len18:                                 ; preds = %str_overflow_abort, %str_ok10
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum19 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf20 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf20, label %str_overflow_abort22, label %concat.tot.len21

str_overflow_abort:                               ; preds = %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len18

concat.tot.len21:                                 ; preds = %str_overflow_abort22, %concat.sum.len18
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs17, i64 %concat.rhs6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs24 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs24, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_overflow_abort22:                             ; preds = %concat.sum.len18
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len21

str_gen_check29:                                  ; preds = %concat.tot.len21
  %arena.gen32 = call ptr @dva_arena_current()
  %arena.gen33 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen32, i32 0, i32 4
  %arena.gen34 = load i64, ptr %arena.gen33, align 8
  %str.tag.match35 = icmp eq i64 %str.tag27, %arena.gen34
  br i1 %str.tag.match35, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %concat.tot.len21
  %concat.lhs36 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs37 = load ptr, ptr %concat.lhs36, align 8
  %concat.rhs38 = load i64, ptr @str.31.struct, align 8
  %concat.rhs39 = and i64 %concat.rhs38, 281474976710655
  %str.tag40 = lshr i64 %concat.rhs38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_stale31:                                      ; preds = %str_gen_check29
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check42:                                  ; preds = %str_ok30
  %arena.gen45 = call ptr @dva_arena_current()
  %arena.gen46 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen45, i32 0, i32 4
  %arena.gen47 = load i64, ptr %arena.gen46, align 8
  %str.tag.match48 = icmp eq i64 %str.tag40, %arena.gen47
  br i1 %str.tag.match48, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %str_ok30
  %concat.rhs49 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %concat.sum.len50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs39)
  %sum51 = extractvalue { i64, i1 } %concat.sum.len50, 0
  %ovf52 = extractvalue { i64, i1 } %concat.sum.len50, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.sum.len53

str_stale44:                                      ; preds = %str_gen_check42
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

concat.sum.len53:                                 ; preds = %str_overflow_abort54, %str_ok43
  %concat.tot.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum51, i64 1)
  %sum56 = extractvalue { i64, i1 } %concat.tot.len55, 0
  %ovf57 = extractvalue { i64, i1 } %concat.tot.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.tot.len58

str_overflow_abort54:                             ; preds = %str_ok43
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len53

concat.tot.len58:                                 ; preds = %str_overflow_abort59, %concat.sum.len53
  %arena.cur60 = call ptr @dva_arena_current()
  %concat.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum56)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf61, ptr align 1 %concat.lhs37, i64 %concat.lhs26, i1 false)
  %concat.mid62 = getelementptr i8, ptr %concat.buf61, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid62, ptr align 1 %concat.rhs49, i64 %concat.rhs39, i1 false)
  %concat.nul63 = getelementptr i8, ptr %concat.buf61, i64 %sum51
  store i8 0, ptr %concat.nul63, align 1
  %arena.cur64 = call ptr @dva_arena_current()
  %concat.str65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %str.build.len.gep66 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  store i64 %sum51, ptr %str.build.len.gep66, align 8
  %str.build.data.gep67 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  store ptr %concat.buf61, ptr %str.build.data.gep67, align 8
  %var.load68 = load ptr, ptr %var.record, align 8
  %concat.lhs69 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  %concat.lhs70 = load i64, ptr %concat.lhs69, align 8
  %concat.lhs71 = and i64 %concat.lhs70, 281474976710655
  %str.tag72 = lshr i64 %concat.lhs70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_overflow_abort59:                             ; preds = %concat.sum.len53
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len58

str_gen_check74:                                  ; preds = %concat.tot.len58
  %arena.gen77 = call ptr @dva_arena_current()
  %arena.gen78 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen77, i32 0, i32 4
  %arena.gen79 = load i64, ptr %arena.gen78, align 8
  %str.tag.match80 = icmp eq i64 %str.tag72, %arena.gen79
  br i1 %str.tag.match80, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %concat.tot.len58
  %concat.lhs81 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  %concat.lhs82 = load ptr, ptr %concat.lhs81, align 8
  %concat.rhs83 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 0
  %concat.rhs84 = load i64, ptr %concat.rhs83, align 8
  %concat.rhs85 = and i64 %concat.rhs84, 281474976710655
  %str.tag86 = lshr i64 %concat.rhs84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

str_stale76:                                      ; preds = %str_gen_check74
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

str_gen_check88:                                  ; preds = %str_ok75
  %arena.gen91 = call ptr @dva_arena_current()
  %arena.gen92 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen91, i32 0, i32 4
  %arena.gen93 = load i64, ptr %arena.gen92, align 8
  %str.tag.match94 = icmp eq i64 %str.tag86, %arena.gen93
  br i1 %str.tag.match94, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %str_ok75
  %concat.rhs95 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 1
  %concat.rhs96 = load ptr, ptr %concat.rhs95, align 8
  %concat.sum.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs71, i64 %concat.rhs85)
  %sum98 = extractvalue { i64, i1 } %concat.sum.len97, 0
  %ovf99 = extractvalue { i64, i1 } %concat.sum.len97, 1
  br i1 %ovf99, label %str_overflow_abort101, label %concat.sum.len100

str_stale90:                                      ; preds = %str_gen_check88
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

concat.sum.len100:                                ; preds = %str_overflow_abort101, %str_ok89
  %concat.tot.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum98, i64 1)
  %sum103 = extractvalue { i64, i1 } %concat.tot.len102, 0
  %ovf104 = extractvalue { i64, i1 } %concat.tot.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %concat.tot.len105

str_overflow_abort101:                            ; preds = %str_ok89
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len100

concat.tot.len105:                                ; preds = %str_overflow_abort106, %concat.sum.len100
  %arena.cur107 = call ptr @dva_arena_current()
  %concat.buf108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 %sum103)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf108, ptr align 1 %concat.lhs82, i64 %concat.lhs71, i1 false)
  %concat.mid109 = getelementptr i8, ptr %concat.buf108, i64 %concat.lhs71
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid109, ptr align 1 %concat.rhs96, i64 %concat.rhs85, i1 false)
  %concat.nul110 = getelementptr i8, ptr %concat.buf108, i64 %sum98
  store i8 0, ptr %concat.nul110, align 1
  %arena.cur111 = call ptr @dva_arena_current()
  %concat.str112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %str.build.len.gep113 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 0
  store i64 %sum98, ptr %str.build.len.gep113, align 8
  %str.build.data.gep114 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 1
  store ptr %concat.buf108, ptr %str.build.data.gep114, align 8
  %concat.lhs115 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 0
  %concat.lhs116 = load i64, ptr %concat.lhs115, align 8
  %concat.lhs117 = and i64 %concat.lhs116, 281474976710655
  %str.tag118 = lshr i64 %concat.lhs116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_overflow_abort106:                            ; preds = %concat.sum.len100
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len105

str_gen_check120:                                 ; preds = %concat.tot.len105
  %arena.gen123 = call ptr @dva_arena_current()
  %arena.gen124 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen123, i32 0, i32 4
  %arena.gen125 = load i64, ptr %arena.gen124, align 8
  %str.tag.match126 = icmp eq i64 %str.tag118, %arena.gen125
  br i1 %str.tag.match126, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %concat.tot.len105
  %concat.lhs127 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 1
  %concat.lhs128 = load ptr, ptr %concat.lhs127, align 8
  %concat.rhs129 = load i64, ptr @str.32.struct, align 8
  %concat.rhs130 = and i64 %concat.rhs129, 281474976710655
  %str.tag131 = lshr i64 %concat.rhs129, 48
  %str.immortal132 = icmp eq i64 %str.tag131, 0
  br i1 %str.immortal132, label %str_ok134, label %str_gen_check133

str_stale122:                                     ; preds = %str_gen_check120
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

str_gen_check133:                                 ; preds = %str_ok121
  %arena.gen136 = call ptr @dva_arena_current()
  %arena.gen137 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen136, i32 0, i32 4
  %arena.gen138 = load i64, ptr %arena.gen137, align 8
  %str.tag.match139 = icmp eq i64 %str.tag131, %arena.gen138
  br i1 %str.tag.match139, label %str_ok134, label %str_stale135

str_ok134:                                        ; preds = %str_stale135, %str_gen_check133, %str_ok121
  %concat.rhs140 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %concat.sum.len141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs117, i64 %concat.rhs130)
  %sum142 = extractvalue { i64, i1 } %concat.sum.len141, 0
  %ovf143 = extractvalue { i64, i1 } %concat.sum.len141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %concat.sum.len144

str_stale135:                                     ; preds = %str_gen_check133
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok134

concat.sum.len144:                                ; preds = %str_overflow_abort145, %str_ok134
  %concat.tot.len146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum142, i64 1)
  %sum147 = extractvalue { i64, i1 } %concat.tot.len146, 0
  %ovf148 = extractvalue { i64, i1 } %concat.tot.len146, 1
  br i1 %ovf148, label %str_overflow_abort150, label %concat.tot.len149

str_overflow_abort145:                            ; preds = %str_ok134
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len144

concat.tot.len149:                                ; preds = %str_overflow_abort150, %concat.sum.len144
  %arena.cur151 = call ptr @dva_arena_current()
  %concat.buf152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 %sum147)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf152, ptr align 1 %concat.lhs128, i64 %concat.lhs117, i1 false)
  %concat.mid153 = getelementptr i8, ptr %concat.buf152, i64 %concat.lhs117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid153, ptr align 1 %concat.rhs140, i64 %concat.rhs130, i1 false)
  %concat.nul154 = getelementptr i8, ptr %concat.buf152, i64 %sum142
  store i8 0, ptr %concat.nul154, align 1
  %arena.cur155 = call ptr @dva_arena_current()
  %concat.str156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 16)
  %str.build.len.gep157 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 0
  store i64 %sum142, ptr %str.build.len.gep157, align 8
  %str.build.data.gep158 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 1
  store ptr %concat.buf152, ptr %str.build.data.gep158, align 8
  ret ptr %concat.str156

str_overflow_abort150:                            ; preds = %concat.sum.len144
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len149
}

define ptr @"diag::enum_no_variant"(ptr %0, ptr %1) #1 {
entry:
  %var.label = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.label, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = load i64, ptr @str.33.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs5 = load i64, ptr %concat.rhs, align 8
  %concat.rhs6 = and i64 %concat.rhs5, 281474976710655
  %str.tag7 = lshr i64 %concat.rhs5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.gen12 = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen12, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match15 = icmp eq i64 %str.tag7, %arena.gen14
  br i1 %str.tag.match15, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %concat.rhs16 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs17 = load ptr, ptr %concat.rhs16, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs6)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len18

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

concat.sum.len18:                                 ; preds = %str_overflow_abort, %str_ok10
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum19 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf20 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf20, label %str_overflow_abort22, label %concat.tot.len21

str_overflow_abort:                               ; preds = %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len18

concat.tot.len21:                                 ; preds = %str_overflow_abort22, %concat.sum.len18
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs17, i64 %concat.rhs6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs24 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs24, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_overflow_abort22:                             ; preds = %concat.sum.len18
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len21

str_gen_check29:                                  ; preds = %concat.tot.len21
  %arena.gen32 = call ptr @dva_arena_current()
  %arena.gen33 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen32, i32 0, i32 4
  %arena.gen34 = load i64, ptr %arena.gen33, align 8
  %str.tag.match35 = icmp eq i64 %str.tag27, %arena.gen34
  br i1 %str.tag.match35, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %concat.tot.len21
  %concat.lhs36 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs37 = load ptr, ptr %concat.lhs36, align 8
  %concat.rhs38 = load i64, ptr @str.34.struct, align 8
  %concat.rhs39 = and i64 %concat.rhs38, 281474976710655
  %str.tag40 = lshr i64 %concat.rhs38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_stale31:                                      ; preds = %str_gen_check29
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check42:                                  ; preds = %str_ok30
  %arena.gen45 = call ptr @dva_arena_current()
  %arena.gen46 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen45, i32 0, i32 4
  %arena.gen47 = load i64, ptr %arena.gen46, align 8
  %str.tag.match48 = icmp eq i64 %str.tag40, %arena.gen47
  br i1 %str.tag.match48, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %str_ok30
  %concat.rhs49 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %concat.sum.len50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs39)
  %sum51 = extractvalue { i64, i1 } %concat.sum.len50, 0
  %ovf52 = extractvalue { i64, i1 } %concat.sum.len50, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.sum.len53

str_stale44:                                      ; preds = %str_gen_check42
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

concat.sum.len53:                                 ; preds = %str_overflow_abort54, %str_ok43
  %concat.tot.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum51, i64 1)
  %sum56 = extractvalue { i64, i1 } %concat.tot.len55, 0
  %ovf57 = extractvalue { i64, i1 } %concat.tot.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.tot.len58

str_overflow_abort54:                             ; preds = %str_ok43
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len53

concat.tot.len58:                                 ; preds = %str_overflow_abort59, %concat.sum.len53
  %arena.cur60 = call ptr @dva_arena_current()
  %concat.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum56)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf61, ptr align 1 %concat.lhs37, i64 %concat.lhs26, i1 false)
  %concat.mid62 = getelementptr i8, ptr %concat.buf61, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid62, ptr align 1 %concat.rhs49, i64 %concat.rhs39, i1 false)
  %concat.nul63 = getelementptr i8, ptr %concat.buf61, i64 %sum51
  store i8 0, ptr %concat.nul63, align 1
  %arena.cur64 = call ptr @dva_arena_current()
  %concat.str65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %str.build.len.gep66 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  store i64 %sum51, ptr %str.build.len.gep66, align 8
  %str.build.data.gep67 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  store ptr %concat.buf61, ptr %str.build.data.gep67, align 8
  %var.load68 = load ptr, ptr %var.label, align 8
  %concat.lhs69 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  %concat.lhs70 = load i64, ptr %concat.lhs69, align 8
  %concat.lhs71 = and i64 %concat.lhs70, 281474976710655
  %str.tag72 = lshr i64 %concat.lhs70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_overflow_abort59:                             ; preds = %concat.sum.len53
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len58

str_gen_check74:                                  ; preds = %concat.tot.len58
  %arena.gen77 = call ptr @dva_arena_current()
  %arena.gen78 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen77, i32 0, i32 4
  %arena.gen79 = load i64, ptr %arena.gen78, align 8
  %str.tag.match80 = icmp eq i64 %str.tag72, %arena.gen79
  br i1 %str.tag.match80, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %concat.tot.len58
  %concat.lhs81 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  %concat.lhs82 = load ptr, ptr %concat.lhs81, align 8
  %concat.rhs83 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 0
  %concat.rhs84 = load i64, ptr %concat.rhs83, align 8
  %concat.rhs85 = and i64 %concat.rhs84, 281474976710655
  %str.tag86 = lshr i64 %concat.rhs84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

str_stale76:                                      ; preds = %str_gen_check74
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

str_gen_check88:                                  ; preds = %str_ok75
  %arena.gen91 = call ptr @dva_arena_current()
  %arena.gen92 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen91, i32 0, i32 4
  %arena.gen93 = load i64, ptr %arena.gen92, align 8
  %str.tag.match94 = icmp eq i64 %str.tag86, %arena.gen93
  br i1 %str.tag.match94, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %str_ok75
  %concat.rhs95 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 1
  %concat.rhs96 = load ptr, ptr %concat.rhs95, align 8
  %concat.sum.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs71, i64 %concat.rhs85)
  %sum98 = extractvalue { i64, i1 } %concat.sum.len97, 0
  %ovf99 = extractvalue { i64, i1 } %concat.sum.len97, 1
  br i1 %ovf99, label %str_overflow_abort101, label %concat.sum.len100

str_stale90:                                      ; preds = %str_gen_check88
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

concat.sum.len100:                                ; preds = %str_overflow_abort101, %str_ok89
  %concat.tot.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum98, i64 1)
  %sum103 = extractvalue { i64, i1 } %concat.tot.len102, 0
  %ovf104 = extractvalue { i64, i1 } %concat.tot.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %concat.tot.len105

str_overflow_abort101:                            ; preds = %str_ok89
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len100

concat.tot.len105:                                ; preds = %str_overflow_abort106, %concat.sum.len100
  %arena.cur107 = call ptr @dva_arena_current()
  %concat.buf108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 %sum103)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf108, ptr align 1 %concat.lhs82, i64 %concat.lhs71, i1 false)
  %concat.mid109 = getelementptr i8, ptr %concat.buf108, i64 %concat.lhs71
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid109, ptr align 1 %concat.rhs96, i64 %concat.rhs85, i1 false)
  %concat.nul110 = getelementptr i8, ptr %concat.buf108, i64 %sum98
  store i8 0, ptr %concat.nul110, align 1
  %arena.cur111 = call ptr @dva_arena_current()
  %concat.str112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %str.build.len.gep113 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 0
  store i64 %sum98, ptr %str.build.len.gep113, align 8
  %str.build.data.gep114 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 1
  store ptr %concat.buf108, ptr %str.build.data.gep114, align 8
  %concat.lhs115 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 0
  %concat.lhs116 = load i64, ptr %concat.lhs115, align 8
  %concat.lhs117 = and i64 %concat.lhs116, 281474976710655
  %str.tag118 = lshr i64 %concat.lhs116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_overflow_abort106:                            ; preds = %concat.sum.len100
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len105

str_gen_check120:                                 ; preds = %concat.tot.len105
  %arena.gen123 = call ptr @dva_arena_current()
  %arena.gen124 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen123, i32 0, i32 4
  %arena.gen125 = load i64, ptr %arena.gen124, align 8
  %str.tag.match126 = icmp eq i64 %str.tag118, %arena.gen125
  br i1 %str.tag.match126, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %concat.tot.len105
  %concat.lhs127 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 1
  %concat.lhs128 = load ptr, ptr %concat.lhs127, align 8
  %concat.rhs129 = load i64, ptr @str.27.struct, align 8
  %concat.rhs130 = and i64 %concat.rhs129, 281474976710655
  %str.tag131 = lshr i64 %concat.rhs129, 48
  %str.immortal132 = icmp eq i64 %str.tag131, 0
  br i1 %str.immortal132, label %str_ok134, label %str_gen_check133

str_stale122:                                     ; preds = %str_gen_check120
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

str_gen_check133:                                 ; preds = %str_ok121
  %arena.gen136 = call ptr @dva_arena_current()
  %arena.gen137 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen136, i32 0, i32 4
  %arena.gen138 = load i64, ptr %arena.gen137, align 8
  %str.tag.match139 = icmp eq i64 %str.tag131, %arena.gen138
  br i1 %str.tag.match139, label %str_ok134, label %str_stale135

str_ok134:                                        ; preds = %str_stale135, %str_gen_check133, %str_ok121
  %concat.rhs140 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %concat.sum.len141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs117, i64 %concat.rhs130)
  %sum142 = extractvalue { i64, i1 } %concat.sum.len141, 0
  %ovf143 = extractvalue { i64, i1 } %concat.sum.len141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %concat.sum.len144

str_stale135:                                     ; preds = %str_gen_check133
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok134

concat.sum.len144:                                ; preds = %str_overflow_abort145, %str_ok134
  %concat.tot.len146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum142, i64 1)
  %sum147 = extractvalue { i64, i1 } %concat.tot.len146, 0
  %ovf148 = extractvalue { i64, i1 } %concat.tot.len146, 1
  br i1 %ovf148, label %str_overflow_abort150, label %concat.tot.len149

str_overflow_abort145:                            ; preds = %str_ok134
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len144

concat.tot.len149:                                ; preds = %str_overflow_abort150, %concat.sum.len144
  %arena.cur151 = call ptr @dva_arena_current()
  %concat.buf152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 %sum147)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf152, ptr align 1 %concat.lhs128, i64 %concat.lhs117, i1 false)
  %concat.mid153 = getelementptr i8, ptr %concat.buf152, i64 %concat.lhs117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid153, ptr align 1 %concat.rhs140, i64 %concat.rhs130, i1 false)
  %concat.nul154 = getelementptr i8, ptr %concat.buf152, i64 %sum142
  store i8 0, ptr %concat.nul154, align 1
  %arena.cur155 = call ptr @dva_arena_current()
  %concat.str156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 16)
  %str.build.len.gep157 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 0
  store i64 %sum142, ptr %str.build.len.gep157, align 8
  %str.build.data.gep158 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 1
  store ptr %concat.buf152, ptr %str.build.data.gep158, align 8
  ret ptr %concat.str156

str_overflow_abort150:                            ; preds = %concat.sum.len144
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len149
}

define ptr @"diag::enum_unit_payload"(ptr %0, ptr %1) #1 {
entry:
  %var.label = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.label, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = load i64, ptr @str.33.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs5 = load i64, ptr %concat.rhs, align 8
  %concat.rhs6 = and i64 %concat.rhs5, 281474976710655
  %str.tag7 = lshr i64 %concat.rhs5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.gen12 = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen12, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match15 = icmp eq i64 %str.tag7, %arena.gen14
  br i1 %str.tag.match15, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %concat.rhs16 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs17 = load ptr, ptr %concat.rhs16, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs6)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len18

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

concat.sum.len18:                                 ; preds = %str_overflow_abort, %str_ok10
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum19 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf20 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf20, label %str_overflow_abort22, label %concat.tot.len21

str_overflow_abort:                               ; preds = %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len18

concat.tot.len21:                                 ; preds = %str_overflow_abort22, %concat.sum.len18
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs17, i64 %concat.rhs6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs24 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs24, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_overflow_abort22:                             ; preds = %concat.sum.len18
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len21

str_gen_check29:                                  ; preds = %concat.tot.len21
  %arena.gen32 = call ptr @dva_arena_current()
  %arena.gen33 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen32, i32 0, i32 4
  %arena.gen34 = load i64, ptr %arena.gen33, align 8
  %str.tag.match35 = icmp eq i64 %str.tag27, %arena.gen34
  br i1 %str.tag.match35, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %concat.tot.len21
  %concat.lhs36 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs37 = load ptr, ptr %concat.lhs36, align 8
  %concat.rhs38 = load i64, ptr @str.35.struct, align 8
  %concat.rhs39 = and i64 %concat.rhs38, 281474976710655
  %str.tag40 = lshr i64 %concat.rhs38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_stale31:                                      ; preds = %str_gen_check29
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check42:                                  ; preds = %str_ok30
  %arena.gen45 = call ptr @dva_arena_current()
  %arena.gen46 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen45, i32 0, i32 4
  %arena.gen47 = load i64, ptr %arena.gen46, align 8
  %str.tag.match48 = icmp eq i64 %str.tag40, %arena.gen47
  br i1 %str.tag.match48, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %str_ok30
  %concat.rhs49 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %concat.sum.len50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs39)
  %sum51 = extractvalue { i64, i1 } %concat.sum.len50, 0
  %ovf52 = extractvalue { i64, i1 } %concat.sum.len50, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.sum.len53

str_stale44:                                      ; preds = %str_gen_check42
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

concat.sum.len53:                                 ; preds = %str_overflow_abort54, %str_ok43
  %concat.tot.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum51, i64 1)
  %sum56 = extractvalue { i64, i1 } %concat.tot.len55, 0
  %ovf57 = extractvalue { i64, i1 } %concat.tot.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.tot.len58

str_overflow_abort54:                             ; preds = %str_ok43
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len53

concat.tot.len58:                                 ; preds = %str_overflow_abort59, %concat.sum.len53
  %arena.cur60 = call ptr @dva_arena_current()
  %concat.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum56)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf61, ptr align 1 %concat.lhs37, i64 %concat.lhs26, i1 false)
  %concat.mid62 = getelementptr i8, ptr %concat.buf61, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid62, ptr align 1 %concat.rhs49, i64 %concat.rhs39, i1 false)
  %concat.nul63 = getelementptr i8, ptr %concat.buf61, i64 %sum51
  store i8 0, ptr %concat.nul63, align 1
  %arena.cur64 = call ptr @dva_arena_current()
  %concat.str65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %str.build.len.gep66 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  store i64 %sum51, ptr %str.build.len.gep66, align 8
  %str.build.data.gep67 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  store ptr %concat.buf61, ptr %str.build.data.gep67, align 8
  %var.load68 = load ptr, ptr %var.label, align 8
  %concat.lhs69 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  %concat.lhs70 = load i64, ptr %concat.lhs69, align 8
  %concat.lhs71 = and i64 %concat.lhs70, 281474976710655
  %str.tag72 = lshr i64 %concat.lhs70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_overflow_abort59:                             ; preds = %concat.sum.len53
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len58

str_gen_check74:                                  ; preds = %concat.tot.len58
  %arena.gen77 = call ptr @dva_arena_current()
  %arena.gen78 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen77, i32 0, i32 4
  %arena.gen79 = load i64, ptr %arena.gen78, align 8
  %str.tag.match80 = icmp eq i64 %str.tag72, %arena.gen79
  br i1 %str.tag.match80, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %concat.tot.len58
  %concat.lhs81 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  %concat.lhs82 = load ptr, ptr %concat.lhs81, align 8
  %concat.rhs83 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 0
  %concat.rhs84 = load i64, ptr %concat.rhs83, align 8
  %concat.rhs85 = and i64 %concat.rhs84, 281474976710655
  %str.tag86 = lshr i64 %concat.rhs84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

str_stale76:                                      ; preds = %str_gen_check74
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

str_gen_check88:                                  ; preds = %str_ok75
  %arena.gen91 = call ptr @dva_arena_current()
  %arena.gen92 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen91, i32 0, i32 4
  %arena.gen93 = load i64, ptr %arena.gen92, align 8
  %str.tag.match94 = icmp eq i64 %str.tag86, %arena.gen93
  br i1 %str.tag.match94, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %str_ok75
  %concat.rhs95 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 1
  %concat.rhs96 = load ptr, ptr %concat.rhs95, align 8
  %concat.sum.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs71, i64 %concat.rhs85)
  %sum98 = extractvalue { i64, i1 } %concat.sum.len97, 0
  %ovf99 = extractvalue { i64, i1 } %concat.sum.len97, 1
  br i1 %ovf99, label %str_overflow_abort101, label %concat.sum.len100

str_stale90:                                      ; preds = %str_gen_check88
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

concat.sum.len100:                                ; preds = %str_overflow_abort101, %str_ok89
  %concat.tot.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum98, i64 1)
  %sum103 = extractvalue { i64, i1 } %concat.tot.len102, 0
  %ovf104 = extractvalue { i64, i1 } %concat.tot.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %concat.tot.len105

str_overflow_abort101:                            ; preds = %str_ok89
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len100

concat.tot.len105:                                ; preds = %str_overflow_abort106, %concat.sum.len100
  %arena.cur107 = call ptr @dva_arena_current()
  %concat.buf108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 %sum103)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf108, ptr align 1 %concat.lhs82, i64 %concat.lhs71, i1 false)
  %concat.mid109 = getelementptr i8, ptr %concat.buf108, i64 %concat.lhs71
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid109, ptr align 1 %concat.rhs96, i64 %concat.rhs85, i1 false)
  %concat.nul110 = getelementptr i8, ptr %concat.buf108, i64 %sum98
  store i8 0, ptr %concat.nul110, align 1
  %arena.cur111 = call ptr @dva_arena_current()
  %concat.str112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %str.build.len.gep113 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 0
  store i64 %sum98, ptr %str.build.len.gep113, align 8
  %str.build.data.gep114 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 1
  store ptr %concat.buf108, ptr %str.build.data.gep114, align 8
  %concat.lhs115 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 0
  %concat.lhs116 = load i64, ptr %concat.lhs115, align 8
  %concat.lhs117 = and i64 %concat.lhs116, 281474976710655
  %str.tag118 = lshr i64 %concat.lhs116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_overflow_abort106:                            ; preds = %concat.sum.len100
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len105

str_gen_check120:                                 ; preds = %concat.tot.len105
  %arena.gen123 = call ptr @dva_arena_current()
  %arena.gen124 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen123, i32 0, i32 4
  %arena.gen125 = load i64, ptr %arena.gen124, align 8
  %str.tag.match126 = icmp eq i64 %str.tag118, %arena.gen125
  br i1 %str.tag.match126, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %concat.tot.len105
  %concat.lhs127 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 1
  %concat.lhs128 = load ptr, ptr %concat.lhs127, align 8
  %concat.rhs129 = load i64, ptr @str.36.struct, align 8
  %concat.rhs130 = and i64 %concat.rhs129, 281474976710655
  %str.tag131 = lshr i64 %concat.rhs129, 48
  %str.immortal132 = icmp eq i64 %str.tag131, 0
  br i1 %str.immortal132, label %str_ok134, label %str_gen_check133

str_stale122:                                     ; preds = %str_gen_check120
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

str_gen_check133:                                 ; preds = %str_ok121
  %arena.gen136 = call ptr @dva_arena_current()
  %arena.gen137 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen136, i32 0, i32 4
  %arena.gen138 = load i64, ptr %arena.gen137, align 8
  %str.tag.match139 = icmp eq i64 %str.tag131, %arena.gen138
  br i1 %str.tag.match139, label %str_ok134, label %str_stale135

str_ok134:                                        ; preds = %str_stale135, %str_gen_check133, %str_ok121
  %concat.rhs140 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %concat.sum.len141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs117, i64 %concat.rhs130)
  %sum142 = extractvalue { i64, i1 } %concat.sum.len141, 0
  %ovf143 = extractvalue { i64, i1 } %concat.sum.len141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %concat.sum.len144

str_stale135:                                     ; preds = %str_gen_check133
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok134

concat.sum.len144:                                ; preds = %str_overflow_abort145, %str_ok134
  %concat.tot.len146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum142, i64 1)
  %sum147 = extractvalue { i64, i1 } %concat.tot.len146, 0
  %ovf148 = extractvalue { i64, i1 } %concat.tot.len146, 1
  br i1 %ovf148, label %str_overflow_abort150, label %concat.tot.len149

str_overflow_abort145:                            ; preds = %str_ok134
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len144

concat.tot.len149:                                ; preds = %str_overflow_abort150, %concat.sum.len144
  %arena.cur151 = call ptr @dva_arena_current()
  %concat.buf152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 %sum147)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf152, ptr align 1 %concat.lhs128, i64 %concat.lhs117, i1 false)
  %concat.mid153 = getelementptr i8, ptr %concat.buf152, i64 %concat.lhs117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid153, ptr align 1 %concat.rhs140, i64 %concat.rhs130, i1 false)
  %concat.nul154 = getelementptr i8, ptr %concat.buf152, i64 %sum142
  store i8 0, ptr %concat.nul154, align 1
  %arena.cur155 = call ptr @dva_arena_current()
  %concat.str156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 16)
  %str.build.len.gep157 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 0
  store i64 %sum142, ptr %str.build.len.gep157, align 8
  %str.build.data.gep158 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 1
  store ptr %concat.buf152, ptr %str.build.data.gep158, align 8
  ret ptr %concat.str156

str_overflow_abort150:                            ; preds = %concat.sum.len144
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len149
}

define ptr @"diag::enum_payload_type"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
entry:
  %var.got = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var.label = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.label, align 8
  store ptr %2, ptr %var.expected, align 8
  store ptr %3, ptr %var.got, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = load i64, ptr @str.33.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs5 = load i64, ptr %concat.rhs, align 8
  %concat.rhs6 = and i64 %concat.rhs5, 281474976710655
  %str.tag7 = lshr i64 %concat.rhs5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.gen12 = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen12, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match15 = icmp eq i64 %str.tag7, %arena.gen14
  br i1 %str.tag.match15, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %concat.rhs16 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs17 = load ptr, ptr %concat.rhs16, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs6)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len18

str_stale11:                                      ; preds = %str_gen_check9
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

concat.sum.len18:                                 ; preds = %str_overflow_abort, %str_ok10
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum19 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf20 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf20, label %str_overflow_abort22, label %concat.tot.len21

str_overflow_abort:                               ; preds = %str_ok10
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len18

concat.tot.len21:                                 ; preds = %str_overflow_abort22, %concat.sum.len18
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs17, i64 %concat.rhs6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs24 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs24, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_overflow_abort22:                             ; preds = %concat.sum.len18
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len21

str_gen_check29:                                  ; preds = %concat.tot.len21
  %arena.gen32 = call ptr @dva_arena_current()
  %arena.gen33 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen32, i32 0, i32 4
  %arena.gen34 = load i64, ptr %arena.gen33, align 8
  %str.tag.match35 = icmp eq i64 %str.tag27, %arena.gen34
  br i1 %str.tag.match35, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %concat.tot.len21
  %concat.lhs36 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs37 = load ptr, ptr %concat.lhs36, align 8
  %concat.rhs38 = load i64, ptr @str.35.struct, align 8
  %concat.rhs39 = and i64 %concat.rhs38, 281474976710655
  %str.tag40 = lshr i64 %concat.rhs38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_stale31:                                      ; preds = %str_gen_check29
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check42:                                  ; preds = %str_ok30
  %arena.gen45 = call ptr @dva_arena_current()
  %arena.gen46 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen45, i32 0, i32 4
  %arena.gen47 = load i64, ptr %arena.gen46, align 8
  %str.tag.match48 = icmp eq i64 %str.tag40, %arena.gen47
  br i1 %str.tag.match48, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %str_ok30
  %concat.rhs49 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %concat.sum.len50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs39)
  %sum51 = extractvalue { i64, i1 } %concat.sum.len50, 0
  %ovf52 = extractvalue { i64, i1 } %concat.sum.len50, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.sum.len53

str_stale44:                                      ; preds = %str_gen_check42
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

concat.sum.len53:                                 ; preds = %str_overflow_abort54, %str_ok43
  %concat.tot.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum51, i64 1)
  %sum56 = extractvalue { i64, i1 } %concat.tot.len55, 0
  %ovf57 = extractvalue { i64, i1 } %concat.tot.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.tot.len58

str_overflow_abort54:                             ; preds = %str_ok43
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len53

concat.tot.len58:                                 ; preds = %str_overflow_abort59, %concat.sum.len53
  %arena.cur60 = call ptr @dva_arena_current()
  %concat.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum56)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf61, ptr align 1 %concat.lhs37, i64 %concat.lhs26, i1 false)
  %concat.mid62 = getelementptr i8, ptr %concat.buf61, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid62, ptr align 1 %concat.rhs49, i64 %concat.rhs39, i1 false)
  %concat.nul63 = getelementptr i8, ptr %concat.buf61, i64 %sum51
  store i8 0, ptr %concat.nul63, align 1
  %arena.cur64 = call ptr @dva_arena_current()
  %concat.str65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %str.build.len.gep66 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  store i64 %sum51, ptr %str.build.len.gep66, align 8
  %str.build.data.gep67 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  store ptr %concat.buf61, ptr %str.build.data.gep67, align 8
  %var.load68 = load ptr, ptr %var.label, align 8
  %concat.lhs69 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  %concat.lhs70 = load i64, ptr %concat.lhs69, align 8
  %concat.lhs71 = and i64 %concat.lhs70, 281474976710655
  %str.tag72 = lshr i64 %concat.lhs70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_overflow_abort59:                             ; preds = %concat.sum.len53
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len58

str_gen_check74:                                  ; preds = %concat.tot.len58
  %arena.gen77 = call ptr @dva_arena_current()
  %arena.gen78 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen77, i32 0, i32 4
  %arena.gen79 = load i64, ptr %arena.gen78, align 8
  %str.tag.match80 = icmp eq i64 %str.tag72, %arena.gen79
  br i1 %str.tag.match80, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %concat.tot.len58
  %concat.lhs81 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  %concat.lhs82 = load ptr, ptr %concat.lhs81, align 8
  %concat.rhs83 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 0
  %concat.rhs84 = load i64, ptr %concat.rhs83, align 8
  %concat.rhs85 = and i64 %concat.rhs84, 281474976710655
  %str.tag86 = lshr i64 %concat.rhs84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

str_stale76:                                      ; preds = %str_gen_check74
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

str_gen_check88:                                  ; preds = %str_ok75
  %arena.gen91 = call ptr @dva_arena_current()
  %arena.gen92 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen91, i32 0, i32 4
  %arena.gen93 = load i64, ptr %arena.gen92, align 8
  %str.tag.match94 = icmp eq i64 %str.tag86, %arena.gen93
  br i1 %str.tag.match94, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %str_ok75
  %concat.rhs95 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 1
  %concat.rhs96 = load ptr, ptr %concat.rhs95, align 8
  %concat.sum.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs71, i64 %concat.rhs85)
  %sum98 = extractvalue { i64, i1 } %concat.sum.len97, 0
  %ovf99 = extractvalue { i64, i1 } %concat.sum.len97, 1
  br i1 %ovf99, label %str_overflow_abort101, label %concat.sum.len100

str_stale90:                                      ; preds = %str_gen_check88
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

concat.sum.len100:                                ; preds = %str_overflow_abort101, %str_ok89
  %concat.tot.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum98, i64 1)
  %sum103 = extractvalue { i64, i1 } %concat.tot.len102, 0
  %ovf104 = extractvalue { i64, i1 } %concat.tot.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %concat.tot.len105

str_overflow_abort101:                            ; preds = %str_ok89
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len100

concat.tot.len105:                                ; preds = %str_overflow_abort106, %concat.sum.len100
  %arena.cur107 = call ptr @dva_arena_current()
  %concat.buf108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 %sum103)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf108, ptr align 1 %concat.lhs82, i64 %concat.lhs71, i1 false)
  %concat.mid109 = getelementptr i8, ptr %concat.buf108, i64 %concat.lhs71
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid109, ptr align 1 %concat.rhs96, i64 %concat.rhs85, i1 false)
  %concat.nul110 = getelementptr i8, ptr %concat.buf108, i64 %sum98
  store i8 0, ptr %concat.nul110, align 1
  %arena.cur111 = call ptr @dva_arena_current()
  %concat.str112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %str.build.len.gep113 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 0
  store i64 %sum98, ptr %str.build.len.gep113, align 8
  %str.build.data.gep114 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 1
  store ptr %concat.buf108, ptr %str.build.data.gep114, align 8
  %concat.lhs115 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 0
  %concat.lhs116 = load i64, ptr %concat.lhs115, align 8
  %concat.lhs117 = and i64 %concat.lhs116, 281474976710655
  %str.tag118 = lshr i64 %concat.lhs116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_overflow_abort106:                            ; preds = %concat.sum.len100
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len105

str_gen_check120:                                 ; preds = %concat.tot.len105
  %arena.gen123 = call ptr @dva_arena_current()
  %arena.gen124 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen123, i32 0, i32 4
  %arena.gen125 = load i64, ptr %arena.gen124, align 8
  %str.tag.match126 = icmp eq i64 %str.tag118, %arena.gen125
  br i1 %str.tag.match126, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %concat.tot.len105
  %concat.lhs127 = getelementptr inbounds { i64, ptr }, ptr %concat.str112, i32 0, i32 1
  %concat.lhs128 = load ptr, ptr %concat.lhs127, align 8
  %concat.rhs129 = load i64, ptr @str.37.struct, align 8
  %concat.rhs130 = and i64 %concat.rhs129, 281474976710655
  %str.tag131 = lshr i64 %concat.rhs129, 48
  %str.immortal132 = icmp eq i64 %str.tag131, 0
  br i1 %str.immortal132, label %str_ok134, label %str_gen_check133

str_stale122:                                     ; preds = %str_gen_check120
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

str_gen_check133:                                 ; preds = %str_ok121
  %arena.gen136 = call ptr @dva_arena_current()
  %arena.gen137 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen136, i32 0, i32 4
  %arena.gen138 = load i64, ptr %arena.gen137, align 8
  %str.tag.match139 = icmp eq i64 %str.tag131, %arena.gen138
  br i1 %str.tag.match139, label %str_ok134, label %str_stale135

str_ok134:                                        ; preds = %str_stale135, %str_gen_check133, %str_ok121
  %concat.rhs140 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %concat.sum.len141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs117, i64 %concat.rhs130)
  %sum142 = extractvalue { i64, i1 } %concat.sum.len141, 0
  %ovf143 = extractvalue { i64, i1 } %concat.sum.len141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %concat.sum.len144

str_stale135:                                     ; preds = %str_gen_check133
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok134

concat.sum.len144:                                ; preds = %str_overflow_abort145, %str_ok134
  %concat.tot.len146 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum142, i64 1)
  %sum147 = extractvalue { i64, i1 } %concat.tot.len146, 0
  %ovf148 = extractvalue { i64, i1 } %concat.tot.len146, 1
  br i1 %ovf148, label %str_overflow_abort150, label %concat.tot.len149

str_overflow_abort145:                            ; preds = %str_ok134
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len144

concat.tot.len149:                                ; preds = %str_overflow_abort150, %concat.sum.len144
  %arena.cur151 = call ptr @dva_arena_current()
  %concat.buf152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 %sum147)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf152, ptr align 1 %concat.lhs128, i64 %concat.lhs117, i1 false)
  %concat.mid153 = getelementptr i8, ptr %concat.buf152, i64 %concat.lhs117
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid153, ptr align 1 %concat.rhs140, i64 %concat.rhs130, i1 false)
  %concat.nul154 = getelementptr i8, ptr %concat.buf152, i64 %sum142
  store i8 0, ptr %concat.nul154, align 1
  %arena.cur155 = call ptr @dva_arena_current()
  %concat.str156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 16)
  %str.build.len.gep157 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 0
  store i64 %sum142, ptr %str.build.len.gep157, align 8
  %str.build.data.gep158 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 1
  store ptr %concat.buf152, ptr %str.build.data.gep158, align 8
  %var.load159 = load ptr, ptr %var.expected, align 8
  %concat.lhs160 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 0
  %concat.lhs161 = load i64, ptr %concat.lhs160, align 8
  %concat.lhs162 = and i64 %concat.lhs161, 281474976710655
  %str.tag163 = lshr i64 %concat.lhs161, 48
  %str.immortal164 = icmp eq i64 %str.tag163, 0
  br i1 %str.immortal164, label %str_ok166, label %str_gen_check165

str_overflow_abort150:                            ; preds = %concat.sum.len144
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len149

str_gen_check165:                                 ; preds = %concat.tot.len149
  %arena.gen168 = call ptr @dva_arena_current()
  %arena.gen169 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen168, i32 0, i32 4
  %arena.gen170 = load i64, ptr %arena.gen169, align 8
  %str.tag.match171 = icmp eq i64 %str.tag163, %arena.gen170
  br i1 %str.tag.match171, label %str_ok166, label %str_stale167

str_ok166:                                        ; preds = %str_stale167, %str_gen_check165, %concat.tot.len149
  %concat.lhs172 = getelementptr inbounds { i64, ptr }, ptr %concat.str156, i32 0, i32 1
  %concat.lhs173 = load ptr, ptr %concat.lhs172, align 8
  %concat.rhs174 = getelementptr inbounds { i64, ptr }, ptr %var.load159, i32 0, i32 0
  %concat.rhs175 = load i64, ptr %concat.rhs174, align 8
  %concat.rhs176 = and i64 %concat.rhs175, 281474976710655
  %str.tag177 = lshr i64 %concat.rhs175, 48
  %str.immortal178 = icmp eq i64 %str.tag177, 0
  br i1 %str.immortal178, label %str_ok180, label %str_gen_check179

str_stale167:                                     ; preds = %str_gen_check165
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok166

str_gen_check179:                                 ; preds = %str_ok166
  %arena.gen182 = call ptr @dva_arena_current()
  %arena.gen183 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen182, i32 0, i32 4
  %arena.gen184 = load i64, ptr %arena.gen183, align 8
  %str.tag.match185 = icmp eq i64 %str.tag177, %arena.gen184
  br i1 %str.tag.match185, label %str_ok180, label %str_stale181

str_ok180:                                        ; preds = %str_stale181, %str_gen_check179, %str_ok166
  %concat.rhs186 = getelementptr inbounds { i64, ptr }, ptr %var.load159, i32 0, i32 1
  %concat.rhs187 = load ptr, ptr %concat.rhs186, align 8
  %concat.sum.len188 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs162, i64 %concat.rhs176)
  %sum189 = extractvalue { i64, i1 } %concat.sum.len188, 0
  %ovf190 = extractvalue { i64, i1 } %concat.sum.len188, 1
  br i1 %ovf190, label %str_overflow_abort192, label %concat.sum.len191

str_stale181:                                     ; preds = %str_gen_check179
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok180

concat.sum.len191:                                ; preds = %str_overflow_abort192, %str_ok180
  %concat.tot.len193 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum189, i64 1)
  %sum194 = extractvalue { i64, i1 } %concat.tot.len193, 0
  %ovf195 = extractvalue { i64, i1 } %concat.tot.len193, 1
  br i1 %ovf195, label %str_overflow_abort197, label %concat.tot.len196

str_overflow_abort192:                            ; preds = %str_ok180
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len191

concat.tot.len196:                                ; preds = %str_overflow_abort197, %concat.sum.len191
  %arena.cur198 = call ptr @dva_arena_current()
  %concat.buf199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 %sum194)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf199, ptr align 1 %concat.lhs173, i64 %concat.lhs162, i1 false)
  %concat.mid200 = getelementptr i8, ptr %concat.buf199, i64 %concat.lhs162
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid200, ptr align 1 %concat.rhs187, i64 %concat.rhs176, i1 false)
  %concat.nul201 = getelementptr i8, ptr %concat.buf199, i64 %sum189
  store i8 0, ptr %concat.nul201, align 1
  %arena.cur202 = call ptr @dva_arena_current()
  %concat.str203 = call ptr @dva_arena_alloc(ptr %arena.cur202, i64 16)
  %str.build.len.gep204 = getelementptr inbounds { i64, ptr }, ptr %concat.str203, i32 0, i32 0
  store i64 %sum189, ptr %str.build.len.gep204, align 8
  %str.build.data.gep205 = getelementptr inbounds { i64, ptr }, ptr %concat.str203, i32 0, i32 1
  store ptr %concat.buf199, ptr %str.build.data.gep205, align 8
  %concat.lhs206 = getelementptr inbounds { i64, ptr }, ptr %concat.str203, i32 0, i32 0
  %concat.lhs207 = load i64, ptr %concat.lhs206, align 8
  %concat.lhs208 = and i64 %concat.lhs207, 281474976710655
  %str.tag209 = lshr i64 %concat.lhs207, 48
  %str.immortal210 = icmp eq i64 %str.tag209, 0
  br i1 %str.immortal210, label %str_ok212, label %str_gen_check211

str_overflow_abort197:                            ; preds = %concat.sum.len191
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len196

str_gen_check211:                                 ; preds = %concat.tot.len196
  %arena.gen214 = call ptr @dva_arena_current()
  %arena.gen215 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen214, i32 0, i32 4
  %arena.gen216 = load i64, ptr %arena.gen215, align 8
  %str.tag.match217 = icmp eq i64 %str.tag209, %arena.gen216
  br i1 %str.tag.match217, label %str_ok212, label %str_stale213

str_ok212:                                        ; preds = %str_stale213, %str_gen_check211, %concat.tot.len196
  %concat.lhs218 = getelementptr inbounds { i64, ptr }, ptr %concat.str203, i32 0, i32 1
  %concat.lhs219 = load ptr, ptr %concat.lhs218, align 8
  %concat.rhs220 = load i64, ptr @str.38.struct, align 8
  %concat.rhs221 = and i64 %concat.rhs220, 281474976710655
  %str.tag222 = lshr i64 %concat.rhs220, 48
  %str.immortal223 = icmp eq i64 %str.tag222, 0
  br i1 %str.immortal223, label %str_ok225, label %str_gen_check224

str_stale213:                                     ; preds = %str_gen_check211
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok212

str_gen_check224:                                 ; preds = %str_ok212
  %arena.gen227 = call ptr @dva_arena_current()
  %arena.gen228 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen227, i32 0, i32 4
  %arena.gen229 = load i64, ptr %arena.gen228, align 8
  %str.tag.match230 = icmp eq i64 %str.tag222, %arena.gen229
  br i1 %str.tag.match230, label %str_ok225, label %str_stale226

str_ok225:                                        ; preds = %str_stale226, %str_gen_check224, %str_ok212
  %concat.rhs231 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %concat.sum.len232 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs208, i64 %concat.rhs221)
  %sum233 = extractvalue { i64, i1 } %concat.sum.len232, 0
  %ovf234 = extractvalue { i64, i1 } %concat.sum.len232, 1
  br i1 %ovf234, label %str_overflow_abort236, label %concat.sum.len235

str_stale226:                                     ; preds = %str_gen_check224
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok225

concat.sum.len235:                                ; preds = %str_overflow_abort236, %str_ok225
  %concat.tot.len237 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum233, i64 1)
  %sum238 = extractvalue { i64, i1 } %concat.tot.len237, 0
  %ovf239 = extractvalue { i64, i1 } %concat.tot.len237, 1
  br i1 %ovf239, label %str_overflow_abort241, label %concat.tot.len240

str_overflow_abort236:                            ; preds = %str_ok225
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len235

concat.tot.len240:                                ; preds = %str_overflow_abort241, %concat.sum.len235
  %arena.cur242 = call ptr @dva_arena_current()
  %concat.buf243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 %sum238)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf243, ptr align 1 %concat.lhs219, i64 %concat.lhs208, i1 false)
  %concat.mid244 = getelementptr i8, ptr %concat.buf243, i64 %concat.lhs208
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid244, ptr align 1 %concat.rhs231, i64 %concat.rhs221, i1 false)
  %concat.nul245 = getelementptr i8, ptr %concat.buf243, i64 %sum233
  store i8 0, ptr %concat.nul245, align 1
  %arena.cur246 = call ptr @dva_arena_current()
  %concat.str247 = call ptr @dva_arena_alloc(ptr %arena.cur246, i64 16)
  %str.build.len.gep248 = getelementptr inbounds { i64, ptr }, ptr %concat.str247, i32 0, i32 0
  store i64 %sum233, ptr %str.build.len.gep248, align 8
  %str.build.data.gep249 = getelementptr inbounds { i64, ptr }, ptr %concat.str247, i32 0, i32 1
  store ptr %concat.buf243, ptr %str.build.data.gep249, align 8
  %var.load250 = load ptr, ptr %var.got, align 8
  %concat.lhs251 = getelementptr inbounds { i64, ptr }, ptr %concat.str247, i32 0, i32 0
  %concat.lhs252 = load i64, ptr %concat.lhs251, align 8
  %concat.lhs253 = and i64 %concat.lhs252, 281474976710655
  %str.tag254 = lshr i64 %concat.lhs252, 48
  %str.immortal255 = icmp eq i64 %str.tag254, 0
  br i1 %str.immortal255, label %str_ok257, label %str_gen_check256

str_overflow_abort241:                            ; preds = %concat.sum.len235
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len240

str_gen_check256:                                 ; preds = %concat.tot.len240
  %arena.gen259 = call ptr @dva_arena_current()
  %arena.gen260 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen259, i32 0, i32 4
  %arena.gen261 = load i64, ptr %arena.gen260, align 8
  %str.tag.match262 = icmp eq i64 %str.tag254, %arena.gen261
  br i1 %str.tag.match262, label %str_ok257, label %str_stale258

str_ok257:                                        ; preds = %str_stale258, %str_gen_check256, %concat.tot.len240
  %concat.lhs263 = getelementptr inbounds { i64, ptr }, ptr %concat.str247, i32 0, i32 1
  %concat.lhs264 = load ptr, ptr %concat.lhs263, align 8
  %concat.rhs265 = getelementptr inbounds { i64, ptr }, ptr %var.load250, i32 0, i32 0
  %concat.rhs266 = load i64, ptr %concat.rhs265, align 8
  %concat.rhs267 = and i64 %concat.rhs266, 281474976710655
  %str.tag268 = lshr i64 %concat.rhs266, 48
  %str.immortal269 = icmp eq i64 %str.tag268, 0
  br i1 %str.immortal269, label %str_ok271, label %str_gen_check270

str_stale258:                                     ; preds = %str_gen_check256
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok257

str_gen_check270:                                 ; preds = %str_ok257
  %arena.gen273 = call ptr @dva_arena_current()
  %arena.gen274 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen273, i32 0, i32 4
  %arena.gen275 = load i64, ptr %arena.gen274, align 8
  %str.tag.match276 = icmp eq i64 %str.tag268, %arena.gen275
  br i1 %str.tag.match276, label %str_ok271, label %str_stale272

str_ok271:                                        ; preds = %str_stale272, %str_gen_check270, %str_ok257
  %concat.rhs277 = getelementptr inbounds { i64, ptr }, ptr %var.load250, i32 0, i32 1
  %concat.rhs278 = load ptr, ptr %concat.rhs277, align 8
  %concat.sum.len279 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs253, i64 %concat.rhs267)
  %sum280 = extractvalue { i64, i1 } %concat.sum.len279, 0
  %ovf281 = extractvalue { i64, i1 } %concat.sum.len279, 1
  br i1 %ovf281, label %str_overflow_abort283, label %concat.sum.len282

str_stale272:                                     ; preds = %str_gen_check270
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok271

concat.sum.len282:                                ; preds = %str_overflow_abort283, %str_ok271
  %concat.tot.len284 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum280, i64 1)
  %sum285 = extractvalue { i64, i1 } %concat.tot.len284, 0
  %ovf286 = extractvalue { i64, i1 } %concat.tot.len284, 1
  br i1 %ovf286, label %str_overflow_abort288, label %concat.tot.len287

str_overflow_abort283:                            ; preds = %str_ok271
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len282

concat.tot.len287:                                ; preds = %str_overflow_abort288, %concat.sum.len282
  %arena.cur289 = call ptr @dva_arena_current()
  %concat.buf290 = call ptr @dva_arena_alloc(ptr %arena.cur289, i64 %sum285)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf290, ptr align 1 %concat.lhs264, i64 %concat.lhs253, i1 false)
  %concat.mid291 = getelementptr i8, ptr %concat.buf290, i64 %concat.lhs253
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid291, ptr align 1 %concat.rhs278, i64 %concat.rhs267, i1 false)
  %concat.nul292 = getelementptr i8, ptr %concat.buf290, i64 %sum280
  store i8 0, ptr %concat.nul292, align 1
  %arena.cur293 = call ptr @dva_arena_current()
  %concat.str294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 16)
  %str.build.len.gep295 = getelementptr inbounds { i64, ptr }, ptr %concat.str294, i32 0, i32 0
  store i64 %sum280, ptr %str.build.len.gep295, align 8
  %str.build.data.gep296 = getelementptr inbounds { i64, ptr }, ptr %concat.str294, i32 0, i32 1
  store ptr %concat.buf290, ptr %str.build.data.gep296, align 8
  %concat.lhs297 = getelementptr inbounds { i64, ptr }, ptr %concat.str294, i32 0, i32 0
  %concat.lhs298 = load i64, ptr %concat.lhs297, align 8
  %concat.lhs299 = and i64 %concat.lhs298, 281474976710655
  %str.tag300 = lshr i64 %concat.lhs298, 48
  %str.immortal301 = icmp eq i64 %str.tag300, 0
  br i1 %str.immortal301, label %str_ok303, label %str_gen_check302

str_overflow_abort288:                            ; preds = %concat.sum.len282
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len287

str_gen_check302:                                 ; preds = %concat.tot.len287
  %arena.gen305 = call ptr @dva_arena_current()
  %arena.gen306 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen305, i32 0, i32 4
  %arena.gen307 = load i64, ptr %arena.gen306, align 8
  %str.tag.match308 = icmp eq i64 %str.tag300, %arena.gen307
  br i1 %str.tag.match308, label %str_ok303, label %str_stale304

str_ok303:                                        ; preds = %str_stale304, %str_gen_check302, %concat.tot.len287
  %concat.lhs309 = getelementptr inbounds { i64, ptr }, ptr %concat.str294, i32 0, i32 1
  %concat.lhs310 = load ptr, ptr %concat.lhs309, align 8
  %concat.rhs311 = load i64, ptr @str.39.struct, align 8
  %concat.rhs312 = and i64 %concat.rhs311, 281474976710655
  %str.tag313 = lshr i64 %concat.rhs311, 48
  %str.immortal314 = icmp eq i64 %str.tag313, 0
  br i1 %str.immortal314, label %str_ok316, label %str_gen_check315

str_stale304:                                     ; preds = %str_gen_check302
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok303

str_gen_check315:                                 ; preds = %str_ok303
  %arena.gen318 = call ptr @dva_arena_current()
  %arena.gen319 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen318, i32 0, i32 4
  %arena.gen320 = load i64, ptr %arena.gen319, align 8
  %str.tag.match321 = icmp eq i64 %str.tag313, %arena.gen320
  br i1 %str.tag.match321, label %str_ok316, label %str_stale317

str_ok316:                                        ; preds = %str_stale317, %str_gen_check315, %str_ok303
  %concat.rhs322 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %concat.sum.len323 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs299, i64 %concat.rhs312)
  %sum324 = extractvalue { i64, i1 } %concat.sum.len323, 0
  %ovf325 = extractvalue { i64, i1 } %concat.sum.len323, 1
  br i1 %ovf325, label %str_overflow_abort327, label %concat.sum.len326

str_stale317:                                     ; preds = %str_gen_check315
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok316

concat.sum.len326:                                ; preds = %str_overflow_abort327, %str_ok316
  %concat.tot.len328 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum324, i64 1)
  %sum329 = extractvalue { i64, i1 } %concat.tot.len328, 0
  %ovf330 = extractvalue { i64, i1 } %concat.tot.len328, 1
  br i1 %ovf330, label %str_overflow_abort332, label %concat.tot.len331

str_overflow_abort327:                            ; preds = %str_ok316
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len326

concat.tot.len331:                                ; preds = %str_overflow_abort332, %concat.sum.len326
  %arena.cur333 = call ptr @dva_arena_current()
  %concat.buf334 = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 %sum329)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf334, ptr align 1 %concat.lhs310, i64 %concat.lhs299, i1 false)
  %concat.mid335 = getelementptr i8, ptr %concat.buf334, i64 %concat.lhs299
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid335, ptr align 1 %concat.rhs322, i64 %concat.rhs312, i1 false)
  %concat.nul336 = getelementptr i8, ptr %concat.buf334, i64 %sum324
  store i8 0, ptr %concat.nul336, align 1
  %arena.cur337 = call ptr @dva_arena_current()
  %concat.str338 = call ptr @dva_arena_alloc(ptr %arena.cur337, i64 16)
  %str.build.len.gep339 = getelementptr inbounds { i64, ptr }, ptr %concat.str338, i32 0, i32 0
  store i64 %sum324, ptr %str.build.len.gep339, align 8
  %str.build.data.gep340 = getelementptr inbounds { i64, ptr }, ptr %concat.str338, i32 0, i32 1
  store ptr %concat.buf334, ptr %str.build.data.gep340, align 8
  ret ptr %concat.str338

str_overflow_abort332:                            ; preds = %concat.sum.len326
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len331
}

define ptr @"diag::partial_composite_argument"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = load i64, ptr @str.40.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.40.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs5 = load i64, ptr %concat.rhs, align 8
  %concat.rhs6 = and i64 %concat.rhs5, 281474976710655
  %str.tag7 = lshr i64 %concat.rhs5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.gen12 = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen12, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match15 = icmp eq i64 %str.tag7, %arena.gen14
  br i1 %str.tag.match15, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %concat.rhs16 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs17 = load ptr, ptr %concat.rhs16, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs6)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len18

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

concat.sum.len18:                                 ; preds = %str_overflow_abort, %str_ok10
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum19 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf20 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf20, label %str_overflow_abort22, label %concat.tot.len21

str_overflow_abort:                               ; preds = %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len18

concat.tot.len21:                                 ; preds = %str_overflow_abort22, %concat.sum.len18
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs17, i64 %concat.rhs6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs24 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs24, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_overflow_abort22:                             ; preds = %concat.sum.len18
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len21

str_gen_check29:                                  ; preds = %concat.tot.len21
  %arena.gen32 = call ptr @dva_arena_current()
  %arena.gen33 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen32, i32 0, i32 4
  %arena.gen34 = load i64, ptr %arena.gen33, align 8
  %str.tag.match35 = icmp eq i64 %str.tag27, %arena.gen34
  br i1 %str.tag.match35, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %concat.tot.len21
  %concat.lhs36 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs37 = load ptr, ptr %concat.lhs36, align 8
  %concat.rhs38 = load i64, ptr @str.41.struct, align 8
  %concat.rhs39 = and i64 %concat.rhs38, 281474976710655
  %str.tag40 = lshr i64 %concat.rhs38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_stale31:                                      ; preds = %str_gen_check29
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check42:                                  ; preds = %str_ok30
  %arena.gen45 = call ptr @dva_arena_current()
  %arena.gen46 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen45, i32 0, i32 4
  %arena.gen47 = load i64, ptr %arena.gen46, align 8
  %str.tag.match48 = icmp eq i64 %str.tag40, %arena.gen47
  br i1 %str.tag.match48, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %str_ok30
  %concat.rhs49 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %concat.sum.len50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs39)
  %sum51 = extractvalue { i64, i1 } %concat.sum.len50, 0
  %ovf52 = extractvalue { i64, i1 } %concat.sum.len50, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.sum.len53

str_stale44:                                      ; preds = %str_gen_check42
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

concat.sum.len53:                                 ; preds = %str_overflow_abort54, %str_ok43
  %concat.tot.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum51, i64 1)
  %sum56 = extractvalue { i64, i1 } %concat.tot.len55, 0
  %ovf57 = extractvalue { i64, i1 } %concat.tot.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.tot.len58

str_overflow_abort54:                             ; preds = %str_ok43
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len53

concat.tot.len58:                                 ; preds = %str_overflow_abort59, %concat.sum.len53
  %arena.cur60 = call ptr @dva_arena_current()
  %concat.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum56)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf61, ptr align 1 %concat.lhs37, i64 %concat.lhs26, i1 false)
  %concat.mid62 = getelementptr i8, ptr %concat.buf61, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid62, ptr align 1 %concat.rhs49, i64 %concat.rhs39, i1 false)
  %concat.nul63 = getelementptr i8, ptr %concat.buf61, i64 %sum51
  store i8 0, ptr %concat.nul63, align 1
  %arena.cur64 = call ptr @dva_arena_current()
  %concat.str65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %str.build.len.gep66 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  store i64 %sum51, ptr %str.build.len.gep66, align 8
  %str.build.data.gep67 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  store ptr %concat.buf61, ptr %str.build.data.gep67, align 8
  ret ptr %concat.str65

str_overflow_abort59:                             ; preds = %concat.sum.len53
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len58
}

define ptr @"diag::E3051_dynamic_index_hetero"() #1 {
entry:
  ret ptr @str.42.struct
}

define ptr @"diag::E3051_cycle_iter_hetero"() #1 {
entry:
  ret ptr @str.43.struct
}

define ptr @"diag::E3065_rawptr_to_string"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.44.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.44.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.45.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs15 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.45.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale10:                                      ; preds = %str_gen_check8
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok9
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19
}

define ptr @"diag::E3078_addr_builder_or_string"() #1 {
entry:
  ret ptr @str.46.struct
}

define ptr @"diag::E3084_record_size_mismatch"() #1 {
entry:
  ret ptr @str.47.struct
}

define ptr @"diag::E3084_arithmetic_type_mismatch"() #1 {
entry:
  ret ptr @str.48.struct
}

define ptr @"diag::E3084_builder_append_type"() #1 {
entry:
  ret ptr @str.49.struct
}

define ptr @"diag::E3084_choice_branch_mismatch"() #1 {
entry:
  ret ptr @str.50.struct
}

define ptr @"diag::E3091_propagate_ram_operand"() #1 {
entry:
  ret ptr @str.51.struct
}

define ptr @"diag::E3103_cannot_infer_type"() #1 {
entry:
  ret ptr @str.52.struct
}

define ptr @"diag::E3133_addr_escape_restore"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.53.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.53.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.54.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs15 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.54.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale10:                                      ; preds = %str_gen_check8
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok9
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19
}

define ptr @"diag::E3134_addr_escape_lifecycle"() #1 {
entry:
  ret ptr @str.55.struct
}

define ptr @"diag::E3136_type_choice_no_branch"() #1 {
entry:
  ret ptr @str.56.struct
}

define ptr @"diag::E3140_no_runtime_arena"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.57.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen2 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen3 = load i64, ptr %arena.gen2, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen3
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs4 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.57.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.58.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs15 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.58.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale10:                                      ; preds = %str_gen_check8
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok9
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs22 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs23 = load i64, ptr %concat.lhs22, align 8
  %concat.lhs24 = and i64 %concat.lhs23, 281474976710655
  %str.tag25 = lshr i64 %concat.lhs23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19

str_gen_check27:                                  ; preds = %concat.tot.len19
  %arena.gen30 = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen30, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match33 = icmp eq i64 %str.tag25, %arena.gen32
  br i1 %str.tag.match33, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %concat.tot.len19
  %concat.lhs34 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs35 = load ptr, ptr %concat.lhs34, align 8
  %concat.rhs36 = load i64, ptr @str.59.struct, align 8
  %concat.rhs37 = and i64 %concat.rhs36, 281474976710655
  %str.tag38 = lshr i64 %concat.rhs36, 48
  %str.immortal39 = icmp eq i64 %str.tag38, 0
  br i1 %str.immortal39, label %str_ok41, label %str_gen_check40

str_stale29:                                      ; preds = %str_gen_check27
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str_gen_check40:                                  ; preds = %str_ok28
  %arena.gen43 = call ptr @dva_arena_current()
  %arena.gen44 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen43, i32 0, i32 4
  %arena.gen45 = load i64, ptr %arena.gen44, align 8
  %str.tag.match46 = icmp eq i64 %str.tag38, %arena.gen45
  br i1 %str.tag.match46, label %str_ok41, label %str_stale42

str_ok41:                                         ; preds = %str_stale42, %str_gen_check40, %str_ok28
  %concat.rhs47 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.59.struct, i32 0, i32 1), align 8
  %concat.sum.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs24, i64 %concat.rhs37)
  %sum49 = extractvalue { i64, i1 } %concat.sum.len48, 0
  %ovf50 = extractvalue { i64, i1 } %concat.sum.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.sum.len51

str_stale42:                                      ; preds = %str_gen_check40
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok41

concat.sum.len51:                                 ; preds = %str_overflow_abort52, %str_ok41
  %concat.tot.len53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum49, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len53, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len53, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort52:                             ; preds = %str_ok41
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len51

concat.tot.len56:                                 ; preds = %str_overflow_abort57, %concat.sum.len51
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.buf59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf59, ptr align 1 %concat.lhs35, i64 %concat.lhs24, i1 false)
  %concat.mid60 = getelementptr i8, ptr %concat.buf59, i64 %concat.lhs24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid60, ptr align 1 %concat.rhs47, i64 %concat.rhs37, i1 false)
  %concat.nul61 = getelementptr i8, ptr %concat.buf59, i64 %sum49
  store i8 0, ptr %concat.nul61, align 1
  %arena.cur62 = call ptr @dva_arena_current()
  %concat.str63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  %str.build.len.gep64 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 0
  store i64 %sum49, ptr %str.build.len.gep64, align 8
  %str.build.data.gep65 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 1
  store ptr %concat.buf59, ptr %str.build.data.gep65, align 8
  %concat.lhs66 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 0
  %concat.lhs67 = load i64, ptr %concat.lhs66, align 8
  %concat.lhs68 = and i64 %concat.lhs67, 281474976710655
  %str.tag69 = lshr i64 %concat.lhs67, 48
  %str.immortal70 = icmp eq i64 %str.tag69, 0
  br i1 %str.immortal70, label %str_ok72, label %str_gen_check71

str_overflow_abort57:                             ; preds = %concat.sum.len51
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len56

str_gen_check71:                                  ; preds = %concat.tot.len56
  %arena.gen74 = call ptr @dva_arena_current()
  %arena.gen75 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen74, i32 0, i32 4
  %arena.gen76 = load i64, ptr %arena.gen75, align 8
  %str.tag.match77 = icmp eq i64 %str.tag69, %arena.gen76
  br i1 %str.tag.match77, label %str_ok72, label %str_stale73

str_ok72:                                         ; preds = %str_stale73, %str_gen_check71, %concat.tot.len56
  %concat.lhs78 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 1
  %concat.lhs79 = load ptr, ptr %concat.lhs78, align 8
  %concat.rhs80 = load i64, ptr @str.60.struct, align 8
  %concat.rhs81 = and i64 %concat.rhs80, 281474976710655
  %str.tag82 = lshr i64 %concat.rhs80, 48
  %str.immortal83 = icmp eq i64 %str.tag82, 0
  br i1 %str.immortal83, label %str_ok85, label %str_gen_check84

str_stale73:                                      ; preds = %str_gen_check71
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok72

str_gen_check84:                                  ; preds = %str_ok72
  %arena.gen87 = call ptr @dva_arena_current()
  %arena.gen88 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen87, i32 0, i32 4
  %arena.gen89 = load i64, ptr %arena.gen88, align 8
  %str.tag.match90 = icmp eq i64 %str.tag82, %arena.gen89
  br i1 %str.tag.match90, label %str_ok85, label %str_stale86

str_ok85:                                         ; preds = %str_stale86, %str_gen_check84, %str_ok72
  %concat.rhs91 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.60.struct, i32 0, i32 1), align 8
  %concat.sum.len92 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs68, i64 %concat.rhs81)
  %sum93 = extractvalue { i64, i1 } %concat.sum.len92, 0
  %ovf94 = extractvalue { i64, i1 } %concat.sum.len92, 1
  br i1 %ovf94, label %str_overflow_abort96, label %concat.sum.len95

str_stale86:                                      ; preds = %str_gen_check84
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok85

concat.sum.len95:                                 ; preds = %str_overflow_abort96, %str_ok85
  %concat.tot.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum93, i64 1)
  %sum98 = extractvalue { i64, i1 } %concat.tot.len97, 0
  %ovf99 = extractvalue { i64, i1 } %concat.tot.len97, 1
  br i1 %ovf99, label %str_overflow_abort101, label %concat.tot.len100

str_overflow_abort96:                             ; preds = %str_ok85
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len95

concat.tot.len100:                                ; preds = %str_overflow_abort101, %concat.sum.len95
  %arena.cur102 = call ptr @dva_arena_current()
  %concat.buf103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 %sum98)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf103, ptr align 1 %concat.lhs79, i64 %concat.lhs68, i1 false)
  %concat.mid104 = getelementptr i8, ptr %concat.buf103, i64 %concat.lhs68
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid104, ptr align 1 %concat.rhs91, i64 %concat.rhs81, i1 false)
  %concat.nul105 = getelementptr i8, ptr %concat.buf103, i64 %sum93
  store i8 0, ptr %concat.nul105, align 1
  %arena.cur106 = call ptr @dva_arena_current()
  %concat.str107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 16)
  %str.build.len.gep108 = getelementptr inbounds { i64, ptr }, ptr %concat.str107, i32 0, i32 0
  store i64 %sum93, ptr %str.build.len.gep108, align 8
  %str.build.data.gep109 = getelementptr inbounds { i64, ptr }, ptr %concat.str107, i32 0, i32 1
  store ptr %concat.buf103, ptr %str.build.data.gep109, align 8
  ret ptr %concat.str107

str_overflow_abort101:                            ; preds = %concat.sum.len95
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len100
}

define ptr @"diag::E3142_raw_write_type"() #1 {
entry:
  ret ptr @str.61.struct
}

define ptr @"diag::E3150_view_escape_frame"() #1 {
entry:
  ret ptr @str.62.struct
}

define ptr @"diag::E3172_exit_status_integerish"() #1 {
entry:
  ret ptr @str.63.struct
}

define ptr @"diag::E3173_return_outside_fn"() #1 {
entry:
  ret ptr @str.64.struct
}

define ptr @"diag::E3173_propagate_outside_fn"() #1 {
entry:
  ret ptr @str.65.struct
}

define ptr @"diag::E3175_choice_const_discarded"() #1 {
entry:
  ret ptr @str.66.struct
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
