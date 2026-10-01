; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64 }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@clo.const = internal constant { ptr, ptr } { ptr @"lexer::lex_init", ptr null }
@"var.lexer::lex_init" = global ptr null
@str.1 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.1 }
@str.2 = internal unnamed_addr constant [10 x i8] c"lexer.dva\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.2 }
@str.3 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.3 }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"lexer::clone_stack", ptr null }
@"var.lexer::clone_stack" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@dva_thread_rec = external thread_local global ptr
@clo.const.2 = internal constant { ptr, ptr } { ptr @"lexer::clone_queue", ptr null }
@"var.lexer::clone_queue" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"lexer::clone_lx", ptr null }
@"var.lexer::clone_lx" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"lexer::pk", ptr null }
@"var.lexer::pk" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"lexer::is_nl", ptr null }
@"var.lexer::is_nl" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"lexer::adv", ptr null }
@"var.lexer::adv" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"lexer::is_ws", ptr null }
@"var.lexer::is_ws" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"lexer::mktok", ptr null }
@"var.lexer::mktok" = global ptr null
@str.4 = internal unnamed_addr constant [2 x i8] c"E\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.4 }
@str.5 = internal unnamed_addr constant [3 x i8] c" [\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
@str.6 = internal unnamed_addr constant [2 x i8] c":\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.6 }
@str.7 = internal unnamed_addr constant [4 x i8] c"]: \00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.7 }
@str.8 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.8 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"lexer::fail", ptr null }
@"var.lexer::fail" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"lexer::esc_val", ptr null }
@"var.lexer::esc_val" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"lexer::decode_escapes", ptr null }
@"var.lexer::decode_escapes" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@str.9 = internal unnamed_addr constant [3 x i8] c"=)\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.9 }
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.12 = internal constant { ptr, ptr } { ptr @"lexer::decode_raw_esc", ptr null }
@"var.lexer::decode_raw_esc" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"lexer::is_delim", ptr null }
@"var.lexer::is_delim" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"lexer::is_id_start", ptr null }
@"var.lexer::is_id_start" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"lexer::is_id_char", ptr null }
@"var.lexer::is_id_char" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"lexer::is_special", ptr null }
@"var.lexer::is_special" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"lexer::scan_while", ptr null }
@"var.lexer::scan_while" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"$anon_fn.87", ptr null }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"lexer::skip_digits", ptr null }
@"var.lexer::skip_digits" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"lexer::scan_id", ptr null }
@"var.lexer::scan_id" = global ptr null
@str.10 = internal unnamed_addr constant [3 x i8] c"i8\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.10 }
@str.11 = internal unnamed_addr constant [4 x i8] c"i16\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.11 }
@str.12 = internal unnamed_addr constant [4 x i8] c"i32\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.12 }
@str.13 = internal unnamed_addr constant [4 x i8] c"i64\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.13 }
@str.14 = internal unnamed_addr constant [3 x i8] c"u8\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.14 }
@str.15 = internal unnamed_addr constant [4 x i8] c"u16\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.15 }
@str.16 = internal unnamed_addr constant [4 x i8] c"u32\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.16 }
@str.17 = internal unnamed_addr constant [4 x i8] c"u64\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.17 }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"lexer::scan_int_suffix", ptr null }
@"var.lexer::scan_int_suffix" = global ptr null
@str.18 = internal unnamed_addr constant [4 x i8] c"f32\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.18 }
@clo.const.22 = internal constant { ptr, ptr } { ptr @"lexer::scan_float_suffix", ptr null }
@"var.lexer::scan_float_suffix" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"lexer::radix_ok", ptr null }
@"var.lexer::radix_ok" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"lexer::finish_int", ptr null }
@"var.lexer::finish_int" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"lexer::scan_radix_rest", ptr null }
@"var.lexer::scan_radix_rest" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"lexer::finish_float", ptr null }
@"var.lexer::finish_float" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"lexer::pk_off", ptr null }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"lexer::scan_frac_opt", ptr null }
@"var.lexer::scan_frac_opt" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"lexer::scan_exp_opt", ptr null }
@"var.lexer::scan_exp_opt" = global ptr null
@str.19 = internal unnamed_addr constant [57 x i8] c"Float literal requires a digit after the decimal point; \00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.19 }
@str.20 = internal unnamed_addr constant [53 x i8] c"padding zeros are mandatory (write '1.0', not '1.').\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 52, ptr @str.20 }
@clo.const.30 = internal constant { ptr, ptr } { ptr @"lexer::scan_dec", ptr null }
@"var.lexer::scan_dec" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"lexer::scan_num", ptr null }
@"var.lexer::scan_num" = global ptr null
@"var.lexer::pk_off" = global ptr null
@str.21 = internal unnamed_addr constant [3 x i8] c"..\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.21 }
@str.22 = internal unnamed_addr constant [3 x i8] c"!!\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.22 }
@str.23 = internal unnamed_addr constant [4 x i8] c"--!\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.23 }
@str.24 = internal unnamed_addr constant [3 x i8] c"~~\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.24 }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"lexer::scan_op", ptr null }
@"var.lexer::scan_op" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"lexer::maybe_esc_adv", ptr null }
@"var.lexer::maybe_esc_adv" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"lexer::on_str_esc", ptr null }
@"var.lexer::on_str_esc" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"lexer::scan_string_body", ptr null }
@"var.lexer::scan_string_body" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"lexer::scan_raw_body", ptr null }
@"var.lexer::scan_raw_body" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"lexer::skip_multiline_ws", ptr null }
@"var.lexer::skip_multiline_ws" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"lexer::skip_eol_comment", ptr null }
@"var.lexer::skip_eol_comment" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"lexer::stack_top", ptr null }
@clo.const.40 = internal constant { ptr, ptr } { ptr @"lexer::check_multiline_str", ptr null }
@"var.lexer::check_multiline_str" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"lexer::adv_to", ptr null }
@"var.lexer::adv_to" = global ptr null
@str.25 = internal unnamed_addr constant [56 x i8] c"Unterminated raw string literal -- missing closing '=)'\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 55, ptr @str.25 }
@str.26 = internal unnamed_addr constant [51 x i8] c"Unterminated string literal -- missing closing '\22'\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.26 }
@clo.const.42 = internal constant { ptr, ptr } { ptr @"lexer::scan_next_str_part", ptr null }
@"var.lexer::scan_next_str_part" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"lexer::concat_multiline_str", ptr null }
@"var.lexer::concat_multiline_str" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"lexer::scan_string", ptr null }
@"var.lexer::scan_string" = global ptr null
@str.27 = internal unnamed_addr constant [70 x i8] c"Empty character literal '' -- expected a character between the quotes\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 69, ptr @str.27 }
@str.28 = internal unnamed_addr constant [54 x i8] c"Unterminated character literal -- missing closing '''\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 53, ptr @str.28 }
@clo.const.45 = internal constant { ptr, ptr } { ptr @"lexer::scan_rune", ptr null }
@"var.lexer::scan_rune" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"lexer::scan_raw_string", ptr null }
@"var.lexer::scan_raw_string" = global ptr null
@clo.const.47 = internal constant { ptr, ptr } { ptr @"$anon_fn.116", ptr null }
@clo.const.48 = internal constant { ptr, ptr } { ptr @"lexer::skip_line_comment", ptr null }
@"var.lexer::skip_line_comment" = global ptr null
@str.29 = internal unnamed_addr constant [51 x i8] c"Unterminated block comment -- missing closing '*/'\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.29 }
@clo.const.49 = internal constant { ptr, ptr } { ptr @"lexer::skip_block_comment", ptr null }
@"var.lexer::skip_block_comment" = global ptr null
@clo.const.50 = internal constant { ptr, ptr } { ptr @"$anon_fn.119", ptr null }
@clo.const.51 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash_word", ptr null }
@"var.lexer::scan_hash_word" = global ptr null
@clo.const.52 = internal constant { ptr, ptr } { ptr @"lexer::scan_qp_body", ptr null }
@"var.lexer::scan_qp_body" = global ptr null
@str.30 = internal unnamed_addr constant [48 x i8] c"Unterminated import path -- missing closing '\22'\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.30 }
@clo.const.53 = internal constant { ptr, ptr } { ptr @"lexer::scan_quoted_path", ptr null }
@"var.lexer::scan_quoted_path" = global ptr null
@clo.const.54 = internal constant { ptr, ptr } { ptr @"lexer::is_path_rune", ptr null }
@"var.lexer::is_path_rune" = global ptr null
@clo.const.55 = internal constant { ptr, ptr } { ptr @"lexer::scan_bare_path", ptr null }
@"var.lexer::scan_bare_path" = global ptr null
@str.31 = internal unnamed_addr constant [9 x i8] c"-dynamic\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.31 }
@clo.const.56 = internal constant { ptr, ptr } { ptr @"lexer::skip_ws", ptr null }
@str.32 = internal unnamed_addr constant [51 x i8] c"Unterminated '#use(...)' \E2\80\94 expected closing ')'.\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.32 }
@clo.const.57 = internal constant { ptr, ptr } { ptr @"$anon_fn.126", ptr null }
@str.33 = internal unnamed_addr constant [8 x i8] c"dynamic\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.33 }
@str.34 = internal unnamed_addr constant [7 x i8] c"import\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.34 }
@str.35 = internal unnamed_addr constant [22 x i8] c"Invalid #use option '\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.35 }
@str.36 = internal unnamed_addr constant [38 x i8] c"' \E2\80\94 expected 'dynamic' or 'import'.\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 37, ptr @str.36 }
@str.37 = internal unnamed_addr constant [52 x i8] c"Expected a module name or quoted path after '#use'.\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 51, ptr @str.37 }
@clo.const.58 = internal constant { ptr, ptr } { ptr @"lexer::scan_use_directive", ptr null }
@"var.lexer::scan_use_directive" = global ptr null
@"var.lexer::skip_ws" = global ptr null
@str.38 = internal unnamed_addr constant [32 x i8] c"Invalid '#pragma number' type '\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.38 }
@str.39 = internal unnamed_addr constant [62 x i8] c"' \E2\80\94 expected an integer type (i8/u8..i64/u64) or 'default'.\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 61, ptr @str.39 }
@clo.const.59 = internal constant { ptr, ptr } { ptr @"lexer::pragma_suffix_fail", ptr null }
@"var.lexer::pragma_suffix_fail" = global ptr null
@str.40 = internal unnamed_addr constant [7 x i8] c"number\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.40 }
@str.41 = internal unnamed_addr constant [7 x i8] c"fpfast\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.41 }
@str.42 = internal unnamed_addr constant [8 x i8] c"swizzle\00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.42 }
@clo.const.60 = internal constant { ptr, ptr } { ptr @"$anon_fn.131", ptr null }
@str.43 = internal unnamed_addr constant [8 x i8] c"default\00"
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.43 }
@clo.const.61 = internal constant { ptr, ptr } { ptr @"$anon_fn.132", ptr null }
@str.44 = internal unnamed_addr constant [8 x i8] c"#pragma\00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.44 }
@clo.const.62 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma_number", ptr null }
@clo.const.63 = internal constant { ptr, ptr } { ptr @"$anon_fn.134", ptr null }
@str.45 = internal unnamed_addr constant [4 x i8] c"all\00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.45 }
@str.46 = internal unnamed_addr constant [5 x i8] c"none\00"
@str.46.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.46 }
@str.47 = internal unnamed_addr constant [32 x i8] c"Invalid '#pragma fpfast' mode '\00"
@str.47.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.47 }
@str.48 = internal unnamed_addr constant [32 x i8] c"' \E2\80\94 expected 'all' or 'none'.\00"
@str.48.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.48 }
@clo.const.64 = internal constant { ptr, ptr } { ptr @"lexer::pragma_fp_fail", ptr null }
@clo.const.65 = internal constant { ptr, ptr } { ptr @"$anon_fn.136", ptr null }
@clo.const.66 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma_fp", ptr null }
@clo.const.67 = internal constant { ptr, ptr } { ptr @"$anon_fn.138", ptr null }
@str.49 = internal unnamed_addr constant [5 x i8] c"xyzw\00"
@str.49.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.49 }
@str.50 = internal unnamed_addr constant [5 x i8] c"rgba\00"
@str.50.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.50 }
@str.51 = internal unnamed_addr constant [33 x i8] c"Invalid '#pragma swizzle' mode '\00"
@str.51.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.51 }
@str.52 = internal unnamed_addr constant [49 x i8] c"' \E2\80\94 expected 'all', 'xyzw', 'rgba', or 'none'.\00"
@str.52.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.52 }
@clo.const.68 = internal constant { ptr, ptr } { ptr @"lexer::pragma_swizzle_fail", ptr null }
@clo.const.69 = internal constant { ptr, ptr } { ptr @"$anon_fn.140", ptr null }
@clo.const.70 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma_swizzle", ptr null }
@clo.const.71 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma_body", ptr null }
@str.53 = internal unnamed_addr constant [59 x i8] c"Expected 'number', 'fpfast', or 'swizzle' after '#pragma'.\00"
@str.53.struct = internal unnamed_addr constant { i64, ptr } { i64 58, ptr @str.53 }
@clo.const.72 = internal constant { ptr, ptr } { ptr @"lexer::pragma_miss_fail", ptr null }
@clo.const.73 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma", ptr null }
@"var.lexer::scan_pragma" = global ptr null
@"var.lexer::pragma_miss_fail" = global ptr null
@"var.lexer::scan_pragma_body" = global ptr null
@"var.lexer::scan_pragma_number" = global ptr null
@"var.lexer::scan_pragma_fp" = global ptr null
@"var.lexer::pragma_fp_fail" = global ptr null
@"var.lexer::scan_pragma_swizzle" = global ptr null
@"var.lexer::pragma_swizzle_fail" = global ptr null
@str.54 = internal unnamed_addr constant [8 x i8] c"foreign\00"
@str.54.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.54 }
@str.55 = internal unnamed_addr constant [9 x i8] c"#foreign\00"
@str.55.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.55 }
@str.56 = internal unnamed_addr constant [5 x i8] c"type\00"
@str.56.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.56 }
@str.57 = internal unnamed_addr constant [6 x i8] c"#type\00"
@str.57.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.57 }
@str.58 = internal unnamed_addr constant [7 x i8] c"packed\00"
@str.58.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.58 }
@str.59 = internal unnamed_addr constant [8 x i8] c"#packed\00"
@str.59.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.59 }
@str.60 = internal unnamed_addr constant [8 x i8] c"private\00"
@str.60.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.60 }
@str.61 = internal unnamed_addr constant [9 x i8] c"#private\00"
@str.61.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.61 }
@str.62 = internal unnamed_addr constant [7 x i8] c"public\00"
@str.62.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.62 }
@str.63 = internal unnamed_addr constant [4 x i8] c"pub\00"
@str.63.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.63 }
@str.64 = internal unnamed_addr constant [2 x i8] c"#\00"
@str.64.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.64 }
@str.65 = internal unnamed_addr constant [7 x i8] c"export\00"
@str.65.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.65 }
@str.66 = internal unnamed_addr constant [8 x i8] c"#export\00"
@str.66.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.66 }
@str.67 = internal unnamed_addr constant [6 x i8] c"spawn\00"
@str.67.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.67 }
@str.68 = internal unnamed_addr constant [7 x i8] c"#spawn\00"
@str.68.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.68 }
@str.69 = internal unnamed_addr constant [5 x i8] c"join\00"
@str.69.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.69 }
@str.70 = internal unnamed_addr constant [6 x i8] c"#join\00"
@str.70.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.70 }
@str.71 = internal unnamed_addr constant [5 x i8] c"exit\00"
@str.71.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.71 }
@str.72 = internal unnamed_addr constant [6 x i8] c"#exit\00"
@str.72.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.72 }
@str.73 = internal unnamed_addr constant [6 x i8] c"error\00"
@str.73.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.73 }
@str.74 = internal unnamed_addr constant [7 x i8] c"#error\00"
@str.74.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.74 }
@str.75 = internal unnamed_addr constant [5 x i8] c"warn\00"
@str.75.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.75 }
@str.76 = internal unnamed_addr constant [6 x i8] c"#warn\00"
@str.76.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.76 }
@str.77 = internal unnamed_addr constant [7 x i8] c"pragma\00"
@str.77.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.77 }
@str.78 = internal unnamed_addr constant [4 x i8] c"use\00"
@str.78.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.78 }
@clo.const.74 = internal constant { ptr, ptr } { ptr @"lexer::scan_directive", ptr null }
@"var.lexer::scan_directive" = global ptr null
@str.79 = internal unnamed_addr constant [3 x i8] c"#!\00"
@str.79.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.79 }
@clo.const.75 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash_ct", ptr null }
@"var.lexer::scan_hash_ct" = global ptr null
@clo.const.76 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash_name", ptr null }
@"var.lexer::scan_hash_name" = global ptr null
@clo.const.77 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash_name2", ptr null }
@clo.const.78 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash", ptr null }
@"var.lexer::scan_hash" = global ptr null
@"var.lexer::scan_hash_name2" = global ptr null
@"var.lexer::stack_top" = global ptr null
@clo.const.79 = internal constant { ptr, ptr } { ptr @"lexer::stack_pop", ptr null }
@"var.lexer::stack_pop" = global ptr null
@clo.const.80 = internal constant { ptr, ptr } { ptr @"lexer::stack_append", ptr null }
@"var.lexer::stack_append" = global ptr null
@clo.const.81 = internal constant { ptr, ptr } { ptr @"lexer::stack_overwrite", ptr null }
@"var.lexer::stack_overwrite" = global ptr null
@clo.const.82 = internal constant { ptr, ptr } { ptr @"lexer::stack_push", ptr null }
@"var.lexer::stack_push" = global ptr null
@str.80 = internal unnamed_addr constant [7 x i8] c"DEDENT\00"
@str.80.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.80 }
@clo.const.83 = internal constant { ptr, ptr } { ptr @"lexer::queue_dedent", ptr null }
@"var.lexer::queue_dedent" = global ptr null
@clo.const.84 = internal constant { ptr, ptr } { ptr @"lexer::take_queued", ptr null }
@"var.lexer::take_queued" = global ptr null
@str.81 = internal unnamed_addr constant [61 x i8] c"Mixed spaces and tabs in indentation are strictly forbidden.\00"
@str.81.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.81 }
@str.82 = internal unnamed_addr constant [55 x i8] c"Inconsistent indentation. Expected tabs, found spaces.\00"
@str.82.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.82 }
@str.83 = internal unnamed_addr constant [55 x i8] c"Inconsistent indentation. Expected spaces, found tabs.\00"
@str.83.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.83 }
@clo.const.85 = internal constant { ptr, ptr } { ptr @"lexer::count_indent", ptr null }
@"var.lexer::count_indent" = global ptr null
@str.84 = internal unnamed_addr constant [16 x i8] c"Unindent level \00"
@str.84.struct = internal unnamed_addr constant { i64, ptr } { i64 15, ptr @str.84 }
@str.85 = internal unnamed_addr constant [45 x i8] c" does not match any outer indentation level.\00"
@str.85.struct = internal unnamed_addr constant { i64, ptr } { i64 44, ptr @str.85 }
@clo.const.86 = internal constant { ptr, ptr } { ptr @"lexer::drain_to", ptr null }
@"var.lexer::drain_to" = global ptr null
@clo.const.87 = internal constant { ptr, ptr } { ptr @"lexer::skip_blank", ptr null }
@str.86 = internal unnamed_addr constant [7 x i8] c"INDENT\00"
@str.86.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.86 }
@clo.const.88 = internal constant { ptr, ptr } { ptr @"lexer::skip_hws", ptr null }
@clo.const.89 = internal constant { ptr, ptr } { ptr @"lexer::flush_indents", ptr null }
@clo.const.90 = internal constant { ptr, ptr } { ptr @"lexer::comment_block", ptr null }
@clo.const.91 = internal constant { ptr, ptr } { ptr @"lexer::comment_line", ptr null }
@clo.const.92 = internal constant { ptr, ptr } { ptr @"lexer::nl_tok", ptr null }
@str.87 = internal unnamed_addr constant [2 x i8] c"%\00"
@str.87.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.87 }
@clo.const.93 = internal constant { ptr, ptr } { ptr @"lexer::scan_intrinsic", ptr null }
@clo.const.94 = internal constant { ptr, ptr } { ptr @"lexer::scan_delim", ptr null }
@clo.const.95 = internal constant { ptr, ptr } { ptr @"lexer::scan_ident", ptr null }
@clo.const.96 = internal constant { ptr, ptr } { ptr @"lexer::eof_tok", ptr null }
@clo.const.97 = internal constant { ptr, ptr } { ptr @"lexer::dispatch_scan", ptr null }
@clo.const.98 = internal constant { ptr, ptr } { ptr @"lexer::dispatch_bol", ptr null }
@clo.const.99 = internal constant { ptr, ptr } { ptr @"lexer::next_tok", ptr null }
@clo.const.100 = internal constant { ptr, ptr } { ptr @"lexer::layout_step", ptr null }
@clo.const.101 = internal constant { ptr, ptr } { ptr @"lexer::line_token", ptr null }
@clo.const.102 = internal constant { ptr, ptr } { ptr @"lexer::layout", ptr null }
@"var.lexer::layout" = global ptr null
@"var.lexer::line_token" = global ptr null
@"var.lexer::skip_blank" = global ptr null
@"var.lexer::layout_step" = global ptr null
@"var.lexer::skip_hws" = global ptr null
@"var.lexer::flush_indents" = global ptr null
@"var.lexer::nl_tok" = global ptr null
@"var.lexer::eof_tok" = global ptr null
@"var.lexer::scan_delim" = global ptr null
@"var.lexer::scan_ident" = global ptr null
@"var.lexer::scan_intrinsic" = global ptr null
@"var.lexer::comment_block" = global ptr null
@"var.lexer::comment_line" = global ptr null
@"var.lexer::next_tok" = global ptr null
@"var.lexer::dispatch_bol" = global ptr null
@"var.lexer::dispatch_scan" = global ptr null
@str.88 = internal unnamed_addr constant [3 x i8] c"id\00"
@str.88.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.88 }
@str.89 = internal unnamed_addr constant [4 x i8] c"int\00"
@str.89.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.89 }
@str.90 = internal unnamed_addr constant [6 x i8] c"float\00"
@str.90.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.90 }
@str.91 = internal unnamed_addr constant [4 x i8] c"str\00"
@str.91.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.91 }
@str.92 = internal unnamed_addr constant [7 x i8] c"rawstr\00"
@str.92.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.92 }
@str.93 = internal unnamed_addr constant [5 x i8] c"rune\00"
@str.93.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.93 }
@str.94 = internal unnamed_addr constant [3 x i8] c"op\00"
@str.94.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.94 }
@str.95 = internal unnamed_addr constant [2 x i8] c"(\00"
@str.95.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.95 }
@str.96 = internal unnamed_addr constant [2 x i8] c")\00"
@str.96.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.96 }
@str.97 = internal unnamed_addr constant [2 x i8] c"[\00"
@str.97.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.97 }
@str.98 = internal unnamed_addr constant [2 x i8] c"]\00"
@str.98.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.98 }
@str.99 = internal unnamed_addr constant [2 x i8] c"{\00"
@str.99.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.99 }
@str.100 = internal unnamed_addr constant [2 x i8] c"}\00"
@str.100.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.100 }
@str.101 = internal unnamed_addr constant [2 x i8] c",\00"
@str.101.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.101 }
@str.102 = internal unnamed_addr constant [2 x i8] c";\00"
@str.102.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.102 }
@str.103 = internal unnamed_addr constant [8 x i8] c"newline\00"
@str.103.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.103 }
@str.104 = internal unnamed_addr constant [5 x i8] c"#use\00"
@str.104.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.104 }
@str.105 = internal unnamed_addr constant [14 x i8] c"#use(dynamic)\00"
@str.105.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.105 }
@str.106 = internal unnamed_addr constant [13 x i8] c"#use(import)\00"
@str.106.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.106 }
@str.107 = internal unnamed_addr constant [22 x i8] c"#use(dynamic, import)\00"
@str.107.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.107 }
@str.108 = internal unnamed_addr constant [8 x i8] c"#public\00"
@str.108.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.108 }
@str.109 = internal unnamed_addr constant [4 x i8] c"eof\00"
@str.109.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.109 }
@str.110 = internal unnamed_addr constant [2 x i8] c"?\00"
@str.110.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.110 }
@clo.const.103 = internal constant { ptr, ptr } { ptr @"lexer::kind_name", ptr null }
@str.111 = internal unnamed_addr constant [2 x i8] c" \00"
@str.111.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.111 }
@clo.const.104 = internal constant { ptr, ptr } { ptr @"lexer::show", ptr null }
@"var.lexer::show" = global ptr null
@"var.lexer::kind_name" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_lexer, ptr null }]

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

define internal void @__dva_global_init_lexer() #1 {
entry:
  store ptr @clo.const, ptr @"var.lexer::lex_init", align 8
  store ptr @clo.const.1, ptr @"var.lexer::clone_stack", align 8
  store ptr @clo.const.2, ptr @"var.lexer::clone_queue", align 8
  store ptr @clo.const.3, ptr @"var.lexer::clone_lx", align 8
  store ptr @clo.const.4, ptr @"var.lexer::pk", align 8
  store ptr @clo.const.5, ptr @"var.lexer::is_nl", align 8
  store ptr @clo.const.6, ptr @"var.lexer::adv", align 8
  store ptr @clo.const.7, ptr @"var.lexer::is_ws", align 8
  store ptr @clo.const.8, ptr @"var.lexer::mktok", align 8
  store ptr @clo.const.9, ptr @"var.lexer::fail", align 8
  store ptr @clo.const.10, ptr @"var.lexer::esc_val", align 8
  store ptr @clo.const.11, ptr @"var.lexer::decode_escapes", align 8
  store ptr @clo.const.12, ptr @"var.lexer::decode_raw_esc", align 8
  store ptr @clo.const.13, ptr @"var.lexer::is_delim", align 8
  store ptr @clo.const.14, ptr @"var.lexer::is_id_start", align 8
  store ptr @clo.const.15, ptr @"var.lexer::is_id_char", align 8
  store ptr @clo.const.16, ptr @"var.lexer::is_special", align 8
  store ptr @clo.const.17, ptr @"var.lexer::scan_while", align 8
  store ptr @clo.const.19, ptr @"var.lexer::skip_digits", align 8
  store ptr @clo.const.20, ptr @"var.lexer::scan_id", align 8
  store ptr @clo.const.21, ptr @"var.lexer::scan_int_suffix", align 8
  store ptr @clo.const.22, ptr @"var.lexer::scan_float_suffix", align 8
  store ptr @clo.const.23, ptr @"var.lexer::radix_ok", align 8
  store ptr @clo.const.24, ptr @"var.lexer::finish_int", align 8
  store ptr @clo.const.25, ptr @"var.lexer::scan_radix_rest", align 8
  store ptr @clo.const.26, ptr @"var.lexer::finish_float", align 8
  store ptr @clo.const.28, ptr @"var.lexer::scan_frac_opt", align 8
  store ptr @clo.const.29, ptr @"var.lexer::scan_exp_opt", align 8
  store ptr @clo.const.30, ptr @"var.lexer::scan_dec", align 8
  store ptr @clo.const.31, ptr @"var.lexer::scan_num", align 8
  store ptr @clo.const.27, ptr @"var.lexer::pk_off", align 8
  store ptr @clo.const.32, ptr @"var.lexer::scan_op", align 8
  store ptr @clo.const.33, ptr @"var.lexer::maybe_esc_adv", align 8
  store ptr @clo.const.34, ptr @"var.lexer::on_str_esc", align 8
  store ptr @clo.const.35, ptr @"var.lexer::scan_string_body", align 8
  store ptr @clo.const.36, ptr @"var.lexer::scan_raw_body", align 8
  store ptr @clo.const.37, ptr @"var.lexer::skip_multiline_ws", align 8
  store ptr @clo.const.38, ptr @"var.lexer::skip_eol_comment", align 8
  store ptr @clo.const.40, ptr @"var.lexer::check_multiline_str", align 8
  store ptr @clo.const.41, ptr @"var.lexer::adv_to", align 8
  store ptr @clo.const.42, ptr @"var.lexer::scan_next_str_part", align 8
  store ptr @clo.const.43, ptr @"var.lexer::concat_multiline_str", align 8
  store ptr @clo.const.44, ptr @"var.lexer::scan_string", align 8
  store ptr @clo.const.45, ptr @"var.lexer::scan_rune", align 8
  store ptr @clo.const.46, ptr @"var.lexer::scan_raw_string", align 8
  store ptr @clo.const.48, ptr @"var.lexer::skip_line_comment", align 8
  store ptr @clo.const.49, ptr @"var.lexer::skip_block_comment", align 8
  store ptr @clo.const.51, ptr @"var.lexer::scan_hash_word", align 8
  store ptr @clo.const.52, ptr @"var.lexer::scan_qp_body", align 8
  store ptr @clo.const.53, ptr @"var.lexer::scan_quoted_path", align 8
  store ptr @clo.const.54, ptr @"var.lexer::is_path_rune", align 8
  store ptr @clo.const.55, ptr @"var.lexer::scan_bare_path", align 8
  store ptr @clo.const.58, ptr @"var.lexer::scan_use_directive", align 8
  store ptr @clo.const.56, ptr @"var.lexer::skip_ws", align 8
  store ptr @clo.const.59, ptr @"var.lexer::pragma_suffix_fail", align 8
  store ptr @clo.const.73, ptr @"var.lexer::scan_pragma", align 8
  store ptr @clo.const.72, ptr @"var.lexer::pragma_miss_fail", align 8
  store ptr @clo.const.71, ptr @"var.lexer::scan_pragma_body", align 8
  store ptr @clo.const.62, ptr @"var.lexer::scan_pragma_number", align 8
  store ptr @clo.const.66, ptr @"var.lexer::scan_pragma_fp", align 8
  store ptr @clo.const.64, ptr @"var.lexer::pragma_fp_fail", align 8
  store ptr @clo.const.70, ptr @"var.lexer::scan_pragma_swizzle", align 8
  store ptr @clo.const.68, ptr @"var.lexer::pragma_swizzle_fail", align 8
  store ptr @clo.const.74, ptr @"var.lexer::scan_directive", align 8
  store ptr @clo.const.75, ptr @"var.lexer::scan_hash_ct", align 8
  store ptr @clo.const.76, ptr @"var.lexer::scan_hash_name", align 8
  store ptr @clo.const.78, ptr @"var.lexer::scan_hash", align 8
  store ptr @clo.const.77, ptr @"var.lexer::scan_hash_name2", align 8
  store ptr @clo.const.39, ptr @"var.lexer::stack_top", align 8
  store ptr @clo.const.79, ptr @"var.lexer::stack_pop", align 8
  store ptr @clo.const.80, ptr @"var.lexer::stack_append", align 8
  store ptr @clo.const.81, ptr @"var.lexer::stack_overwrite", align 8
  store ptr @clo.const.82, ptr @"var.lexer::stack_push", align 8
  store ptr @clo.const.83, ptr @"var.lexer::queue_dedent", align 8
  store ptr @clo.const.84, ptr @"var.lexer::take_queued", align 8
  store ptr @clo.const.85, ptr @"var.lexer::count_indent", align 8
  store ptr @clo.const.86, ptr @"var.lexer::drain_to", align 8
  store ptr @clo.const.102, ptr @"var.lexer::layout", align 8
  store ptr @clo.const.101, ptr @"var.lexer::line_token", align 8
  store ptr @clo.const.87, ptr @"var.lexer::skip_blank", align 8
  store ptr @clo.const.100, ptr @"var.lexer::layout_step", align 8
  store ptr @clo.const.88, ptr @"var.lexer::skip_hws", align 8
  store ptr @clo.const.89, ptr @"var.lexer::flush_indents", align 8
  store ptr @clo.const.92, ptr @"var.lexer::nl_tok", align 8
  store ptr @clo.const.96, ptr @"var.lexer::eof_tok", align 8
  store ptr @clo.const.94, ptr @"var.lexer::scan_delim", align 8
  store ptr @clo.const.95, ptr @"var.lexer::scan_ident", align 8
  store ptr @clo.const.93, ptr @"var.lexer::scan_intrinsic", align 8
  store ptr @clo.const.90, ptr @"var.lexer::comment_block", align 8
  store ptr @clo.const.91, ptr @"var.lexer::comment_line", align 8
  store ptr @clo.const.99, ptr @"var.lexer::next_tok", align 8
  store ptr @clo.const.98, ptr @"var.lexer::dispatch_bol", align 8
  store ptr @clo.const.97, ptr @"var.lexer::dispatch_scan", align 8
  store ptr @clo.const.104, ptr @"var.lexer::show", align 8
  store ptr @clo.const.103, ptr @"var.lexer::kind_name", align 8
  ret void
}

declare i32 @open(ptr, i32)

declare i32 @close(i32)

declare i64 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @waitpid(i64, ptr, i64)

declare i64 @read(i32, ptr, i64)

declare i64 @lseek(i32, i64, i64)

declare i32 @ioctl(i32, i64, i64, ...)

declare i64 @htons(i64)

declare i64 @htonl(i64)

declare i64 @ntohs(i64)

declare i64 @ntohl(i64)

declare i64 @inet_addr(ptr)

declare i64 @socket(i64, i64, i64)

declare i64 @connect(i64, ptr, i64)

declare i64 @bind(i64, ptr, i64)

declare i64 @listen(i64, i64)

declare i64 @accept(i64, ptr, ptr)

declare i64 @send(i64, ptr, i64, i32)

declare i64 @recv(i64, ptr, i64, i32)

declare i64 @sendto(i64, ptr, i64, i32, ptr, i64)

declare i64 @recvfrom(i64, ptr, i64, i32, ptr, ptr)

declare i64 @setsockopt(i64, i64, i64, ptr, i64)

declare i64 @getsockopt(i64, i64, i64, ptr, ptr)

declare i64 @getpeername(i64, ptr, ptr)

declare i64 @getsockname(i64, ptr, ptr)

declare i64 @shutdown(i64, i64)

declare i64 @fcntl(i32, i64, i64)

declare i64 @getaddrinfo(ptr, ptr, ptr, ptr)

declare void @freeaddrinfo(ptr)

declare ptr @memset(ptr, i64, i64)

declare i64 @atoi(ptr)

declare ptr @opendir(ptr)

declare ptr @readdir(ptr)

declare i64 @closedir(ptr)

declare i64 @strcmp(ptr, ptr)

declare ptr @memcpy(ptr, ptr, i64)

declare ptr @memmove(ptr, ptr, i64)

declare i64 @stat(ptr, ptr)

declare i64 @creat(ptr, i64)

declare i64 @rename(ptr, ptr)

declare i64 @unlink(ptr)

declare i64 @pipe(ptr)

declare ptr @__errno_location()

declare ptr @mmap(ptr, i64, i64, i64, i32, i64)

declare i64 @munmap(ptr, i64)

declare i64 @syscall(i64, ptr, ptr, ptr, ptr, ptr, ptr)

declare ptr @dlopen(ptr, i32)

declare ptr @dlsym(ptr, ptr)

declare i64 @dlclose(ptr)

declare ptr @dlerror()

declare i64 @system(ptr)

declare ptr @realpath(ptr, ptr)

declare i64 @isatty(i32)

declare i64 @tcgetattr(i32, ptr)

declare i64 @tcsetattr(i32, i64, ptr)

declare void @cfmakeraw(ptr)

declare i64 @poll(ptr, i64, i64)

define ptr @"lexer::lex_init"(ptr %0) #1 {
entry:
  %var.st = alloca ptr, align 8
  %var.lx = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  %var.load = load ptr, ptr %var.src, align 8
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur2 = call ptr @dva_arena_current()
  %a.new3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 1, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 1, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 1, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 0, ptr %rec.fld14, align 8
  %rec.fld15 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store ptr %a.new, ptr %rec.fld15, align 8
  %rec.fld16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 1, ptr %rec.fld16, align 8
  %rec.fld17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store ptr %a.new3, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld18, align 8
  %rec.fld19 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 10
  store i1 false, ptr %rec.fld19, align 1
  %rec.fld20 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 11
  store ptr @str.0.struct, ptr %rec.fld20, align 8
  %rec.fld21 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 12
  store i64 0, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 13
  store i64 0, ptr %rec.fld22, align 8
  store ptr %rec.alloc, ptr %var.lx, align 8
  %var.load23 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load23, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.st, align 8
  %a.load = load ptr, ptr %var.st, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur24 = call ptr @dva_arena_current()
  %a.create25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 24)
  %arena.cur26 = call ptr @dva_arena_current()
  %a.buf27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 128)
  %a.len.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 0
  store i64 0, ptr %a.len.gep28, align 8
  %a.data.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 1
  store ptr %a.buf27, ptr %a.data.gep29, align 8
  %a.cap.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 2
  store i64 16, ptr %a.cap.gep30, align 8
  store ptr %a.create25, ptr %var.st, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.st, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len31 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap32 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len31, %a.cap32
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data33 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len34 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data33, i64 %a.cur.len34
  store i64 0, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len34, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load35 = load ptr, ptr %var.lx, align 8
  ret ptr %var.load35
}

define internal void @dva_array_grow(ptr %0) #1 {
entry:
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 0
  %a.len1 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = mul i64 %a.cap2, 2
  %a.cap.small = icmp slt i64 %a.cap24, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %a.cap24
  %a.grow.bytes = mul i64 %a.new.cap, 8
  %a.grow.bytes1 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.grow.bytes, i64 1)
  %sum = extractvalue { i64, i1 } %a.grow.bytes1, 0
  %ovf = extractvalue { i64, i1 } %a.grow.bytes1, 1
  br i1 %ovf, label %str_overflow_abort, label %a.grow.bytes15

a.grow.bytes15:                                   ; preds = %str_overflow_abort, %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %a.copy.bytes = mul i64 %a.len1, 8
  %a.copy.bytes1 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.copy.bytes, i64 1)
  %sum6 = extractvalue { i64, i1 } %a.copy.bytes1, 0
  %ovf7 = extractvalue { i64, i1 } %a.copy.bytes1, 1
  br i1 %ovf7, label %str_overflow_abort9, label %a.copy.bytes18

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.grow.bytes15

a.copy.bytes18:                                   ; preds = %str_overflow_abort9, %a.grow.bytes15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %sum6, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

str_overflow_abort9:                              ; preds = %a.grow.bytes15
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.copy.bytes18
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define void @"lexer::clone_stack"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var._25 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.top = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr %1, ptr %var.dst, align 8
  store i64 %2, ptr %var.top, align 8
  store i64 %3, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.top, align 8
  %cmptmp = icmp slt i64 %var.load, %var.load1
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.src, align 8
  %a.load = load ptr, ptr %var.src, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after59, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.src, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.src, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len6 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load5, 0
  %a.rd.lt = icmp slt i64 %var.load5, %a.rd.len6
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data7 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data7, i64 %var.load5
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur8 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 138, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 25, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur9 = call ptr @dva_arena_current()
  %err.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 56)
  %err.code.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 0
  store i64 4011, ptr %err.code.gep11, align 8
  %err.msg.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 138, ptr %err.line.gep14, align 8
  %err.col.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 4
  store i64 25, ptr %err.col.gep15, align 8
  %err.ctx.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 5
  %err.ctx0.gep17 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 0
  store i64 %var.load5, ptr %err.ctx0.gep17, align 8
  %err.ctx1.gep18 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 1
  store i64 %a.rd.len6, ptr %err.ctx1.gep18, align 8
  %err.p2i19 = ptrtoint ptr %err.alloc10 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i19, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag20 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag20, label %choice.then21, label %choice.else

choice.then21:                                    ; preds = %a.rd.done
  %ram.pay23 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay23, ptr %var._, align 8
  br label %choice.exit22

choice.else:                                      ; preds = %a.rd.done
  %ram.pay24 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay24 to ptr
  store ptr %pay.ptr, ptr %var._25, align 8
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else, %choice.then21
  %choice.res = phi i64 [ %ram.pay23, %choice.then21 ], [ 0, %choice.else ]
  %a.load26 = load ptr, ptr %var.dst, align 8
  %a.null27 = icmp eq ptr %a.load26, null
  br i1 %a.null27, label %a.create28, label %a.after29

a.create28:                                       ; preds = %choice.exit22
  %arena.cur30 = call ptr @dva_arena_current()
  %a.create31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur32 = call ptr @dva_arena_current()
  %a.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 128)
  %a.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 0
  store i64 0, ptr %a.len.gep34, align 8
  %a.data.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 1
  store ptr %a.buf33, ptr %a.data.gep35, align 8
  %a.cap.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 2
  store i64 16, ptr %a.cap.gep36, align 8
  store ptr %a.create31, ptr %var.dst, align 8
  br label %a.after29

a.after29:                                        ; preds = %a.create28, %choice.exit22
  %a.load237 = load ptr, ptr %var.dst, align 8
  br label %a.check

a.check:                                          ; preds = %a.after29
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 0
  %a.len38 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 2
  %a.cap39 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len38, %a.cap39
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load237)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 1
  %a.cur.data40 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 0
  %a.cur.len41 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data40, i64 %a.cur.len41
  store i64 %choice.res, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len41, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load42 = load ptr, ptr %var.src, align 8
  %a.load43 = load ptr, ptr %var.src, align 8
  %a.null44 = icmp eq ptr %a.load43, null
  br i1 %a.null44, label %a.create45, label %a.after46

a.create45:                                       ; preds = %a.store
  %arena.cur47 = call ptr @dva_arena_current()
  %a.create48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 24)
  %arena.cur49 = call ptr @dva_arena_current()
  %a.buf50 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 128)
  %a.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 0
  store i64 0, ptr %a.len.gep51, align 8
  %a.data.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 1
  store ptr %a.buf50, ptr %a.data.gep52, align 8
  %a.cap.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 2
  store i64 16, ptr %a.cap.gep53, align 8
  store ptr %a.create48, ptr %var.src, align 8
  br label %a.after46

a.after46:                                        ; preds = %a.create45, %a.store
  %a.load254 = load ptr, ptr %var.src, align 8
  %var.load55 = load ptr, ptr %var.dst, align 8
  %a.load56 = load ptr, ptr %var.dst, align 8
  %a.null57 = icmp eq ptr %a.load56, null
  br i1 %a.null57, label %a.create58, label %a.after59

a.create58:                                       ; preds = %a.after46
  %arena.cur60 = call ptr @dva_arena_current()
  %a.create61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 24)
  %arena.cur62 = call ptr @dva_arena_current()
  %a.buf63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 128)
  %a.len.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 0
  store i64 0, ptr %a.len.gep64, align 8
  %a.data.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 1
  store ptr %a.buf63, ptr %a.data.gep65, align 8
  %a.cap.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 2
  store i64 16, ptr %a.cap.gep66, align 8
  store ptr %a.create61, ptr %var.dst, align 8
  br label %a.after59

a.after59:                                        ; preds = %a.create58, %a.after46
  %a.load267 = load ptr, ptr %var.dst, align 8
  %var.load68 = load i64, ptr %var.top, align 8
  %var.load69 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load69, 1
  call void @"lexer::clone_stack"(ptr %a.load254, ptr %a.load267, i64 %var.load68, i64 %addtmp)
  br label %choice.exit
}

define void @"lexer::clone_queue"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.count = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr %1, ptr %var.dst, align 8
  store i64 %2, ptr %var.count, align 8
  store i64 %3, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.count, align 8
  %cmptmp = icmp slt i64 %var.load, %var.load1
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.src, align 8
  %a.load = load ptr, ptr %var.src, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after75, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.src, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.src, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len6 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load5, 0
  %a.rd.lt = icmp slt i64 %var.load5, %a.rd.len6
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data7 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data7, i64 %var.load5
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur8 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 145, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 23, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur9 = call ptr @dva_arena_current()
  %err.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 56)
  %err.code.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 0
  store i64 4011, ptr %err.code.gep11, align 8
  %err.msg.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 145, ptr %err.line.gep14, align 8
  %err.col.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 4
  store i64 23, ptr %err.col.gep15, align 8
  %err.ctx.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 5
  %err.ctx0.gep17 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 0
  store i64 %var.load5, ptr %err.ctx0.gep17, align 8
  %err.ctx1.gep18 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 1
  store i64 %a.rd.len6, ptr %err.ctx1.gep18, align 8
  %err.p2i19 = ptrtoint ptr %err.alloc10 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i19, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.0, label %unwrap.abort.0

unwrap.pos.0:                                     ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  %a.load42 = load ptr, ptr %var.dst, align 8
  %a.null43 = icmp eq ptr %a.load42, null
  br i1 %a.null43, label %a.create44, label %a.after45

unwrap.abort.0:                                   ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep20, align 8
  %err.msg.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep21, align 8
  %err.file.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep22, align 8
  %err.line.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep23, align 8
  %err.col.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep24, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len25 = load i64, ptr %err.msg.len, align 8
  %err.msg.len26 = and i64 %err.msg.len25, 281474976710655
  %str.tag = lshr i64 %err.msg.len25, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.0
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen27 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen28 = load i64, ptr %arena.gen27, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen28
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.0
  %err.msg.len32 = trunc i64 %err.msg.len26 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data29 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len30 = load i64, ptr %err.file.len, align 8
  %err.file.len31 = and i64 %err.file.len30, 281474976710655
  %str.tag32 = lshr i64 %err.file.len30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check34:                                  ; preds = %str_ok
  %arena.gen37 = call ptr @dva_arena_current()
  %arena.gen38 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen37, i32 0, i32 4
  %arena.gen39 = load i64, ptr %arena.gen38, align 8
  %str.tag.match40 = icmp eq i64 %str.tag32, %arena.gen39
  br i1 %str.tag.match40, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %str_ok
  %err.file.len32 = trunc i64 %err.file.len31 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data41 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale36:                                      ; preds = %str_gen_check34
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

err.thread:                                       ; preds = %str_ok35
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok35
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data29, i32 %err.file.len32, ptr %err.file.data41, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create44:                                       ; preds = %unwrap.pos.0
  %arena.cur46 = call ptr @dva_arena_current()
  %a.create47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 24)
  %arena.cur48 = call ptr @dva_arena_current()
  %a.buf49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 128)
  %a.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 0
  store i64 0, ptr %a.len.gep50, align 8
  %a.data.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 1
  store ptr %a.buf49, ptr %a.data.gep51, align 8
  %a.cap.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 2
  store i64 16, ptr %a.cap.gep52, align 8
  store ptr %a.create47, ptr %var.dst, align 8
  br label %a.after45

a.after45:                                        ; preds = %a.create44, %unwrap.pos.0
  %a.load253 = load ptr, ptr %var.dst, align 8
  br label %a.check

a.check:                                          ; preds = %a.after45
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 0
  %a.len54 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 2
  %a.cap55 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len54, %a.cap55
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load253)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 1
  %a.cur.data56 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 0
  %a.cur.len57 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data56, i64 %a.cur.len57
  %a.elem.p2i = ptrtoint ptr %pay.ptr to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len57, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load58 = load ptr, ptr %var.src, align 8
  %a.load59 = load ptr, ptr %var.src, align 8
  %a.null60 = icmp eq ptr %a.load59, null
  br i1 %a.null60, label %a.create61, label %a.after62

a.create61:                                       ; preds = %a.store
  %arena.cur63 = call ptr @dva_arena_current()
  %a.create64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 24)
  %arena.cur65 = call ptr @dva_arena_current()
  %a.buf66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 128)
  %a.len.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create64, i32 0, i32 0
  store i64 0, ptr %a.len.gep67, align 8
  %a.data.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create64, i32 0, i32 1
  store ptr %a.buf66, ptr %a.data.gep68, align 8
  %a.cap.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create64, i32 0, i32 2
  store i64 16, ptr %a.cap.gep69, align 8
  store ptr %a.create64, ptr %var.src, align 8
  br label %a.after62

a.after62:                                        ; preds = %a.create61, %a.store
  %a.load270 = load ptr, ptr %var.src, align 8
  %var.load71 = load ptr, ptr %var.dst, align 8
  %a.load72 = load ptr, ptr %var.dst, align 8
  %a.null73 = icmp eq ptr %a.load72, null
  br i1 %a.null73, label %a.create74, label %a.after75

a.create74:                                       ; preds = %a.after62
  %arena.cur76 = call ptr @dva_arena_current()
  %a.create77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 24)
  %arena.cur78 = call ptr @dva_arena_current()
  %a.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 128)
  %a.len.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 0
  store i64 0, ptr %a.len.gep80, align 8
  %a.data.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 1
  store ptr %a.buf79, ptr %a.data.gep81, align 8
  %a.cap.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 2
  store i64 16, ptr %a.cap.gep82, align 8
  store ptr %a.create77, ptr %var.dst, align 8
  br label %a.after75

a.after75:                                        ; preds = %a.create74, %a.after62
  %a.load283 = load ptr, ptr %var.dst, align 8
  %var.load84 = load i64, ptr %var.count, align 8
  %var.load85 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load85, 1
  call void @"lexer::clone_queue"(ptr %a.load270, ptr %a.load283, i64 %var.load84, i64 %addtmp)
  br label %choice.exit
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

define ptr @"lexer::clone_lx"(ptr %0) #1 {
entry:
  %var.c = alloca ptr, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load4, i32 0, i32 2
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.lx, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load7, i32 0, i32 3
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %var.load10 = load ptr, ptr %var.lx, align 8
  %fld.gep11 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load10, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %var.load13 = load ptr, ptr %var.lx, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load13, i32 0, i32 5
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur16 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %var.load17 = load ptr, ptr %var.lx, align 8
  %fld.gep18 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load17, i32 0, i32 7
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %arena.cur20 = call ptr @dva_arena_current()
  %a.new21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur22 = call ptr @dva_arena_current()
  %a.buf23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 128)
  %a.len.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new21, i32 0, i32 0
  store i64 0, ptr %a.len.gep24, align 8
  %a.data.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new21, i32 0, i32 1
  store ptr %a.buf23, ptr %a.data.gep25, align 8
  %a.cap.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new21, i32 0, i32 2
  store i64 16, ptr %a.cap.gep26, align 8
  %var.load27 = load ptr, ptr %var.lx, align 8
  %fld.gep28 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load27, i32 0, i32 9
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %var.load30 = load ptr, ptr %var.lx, align 8
  %fld.gep31 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load30, i32 0, i32 10
  %fld.load32 = load i1, ptr %fld.gep31, align 1
  %var.load33 = load ptr, ptr %var.lx, align 8
  %fld.gep34 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load33, i32 0, i32 11
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %var.load36 = load ptr, ptr %var.lx, align 8
  %fld.gep37 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load36, i32 0, i32 12
  %fld.load38 = load i64, ptr %fld.gep37, align 8
  %var.load39 = load ptr, ptr %var.lx, align 8
  %fld.gep40 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load39, i32 0, i32 13
  %fld.load41 = load i64, ptr %fld.gep40, align 8
  %arena.cur42 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load, ptr %rec.fld, align 8
  %rec.fld43 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %fld.load3, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load6, ptr %rec.fld44, align 8
  %rec.fld45 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load9, ptr %rec.fld45, align 8
  %rec.fld46 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load12, ptr %rec.fld46, align 8
  %rec.fld47 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load15, ptr %rec.fld47, align 8
  %rec.fld48 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store ptr %a.new, ptr %rec.fld48, align 8
  %rec.fld49 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %fld.load19, ptr %rec.fld49, align 8
  %rec.fld50 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store ptr %a.new21, ptr %rec.fld50, align 8
  %rec.fld51 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 %fld.load29, ptr %rec.fld51, align 8
  %rec.fld52 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 10
  store i1 %fld.load32, ptr %rec.fld52, align 1
  %rec.fld53 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 11
  store ptr %fld.load35, ptr %rec.fld53, align 8
  %rec.fld54 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 12
  store i64 %fld.load38, ptr %rec.fld54, align 8
  %rec.fld55 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 13
  store i64 %fld.load41, ptr %rec.fld55, align 8
  store ptr %rec.alloc, ptr %var.c, align 8
  %var.load56 = load ptr, ptr %var.lx, align 8
  %fld.gep57 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load56, i32 0, i32 6
  %fld.load58 = load ptr, ptr %fld.gep57, align 8
  %var.load59 = load ptr, ptr %var.c, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load59, i32 0, i32 6
  %fld.load61 = load ptr, ptr %fld.gep60, align 8
  %var.load62 = load ptr, ptr %var.lx, align 8
  %fld.gep63 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load62, i32 0, i32 7
  %fld.load64 = load i64, ptr %fld.gep63, align 8
  call void @"lexer::clone_stack"(ptr %fld.load58, ptr %fld.load61, i64 %fld.load64, i64 0)
  %var.load65 = load ptr, ptr %var.lx, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load65, i32 0, i32 8
  %fld.load67 = load ptr, ptr %fld.gep66, align 8
  %var.load68 = load ptr, ptr %var.c, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load68, i32 0, i32 8
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  %var.load71 = load ptr, ptr %var.lx, align 8
  %fld.gep72 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load71, i32 0, i32 8
  %fld.load73 = load ptr, ptr %fld.gep72, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load73, i32 0, i32 0
  %a.len.query74 = load i64, ptr %a.len.query, align 8
  call void @"lexer::clone_queue"(ptr %fld.load67, ptr %fld.load70, i64 %a.len.query74, i64 0)
  %var.load75 = load ptr, ptr %var.c, align 8
  ret ptr %var.load75
}

define i64 @"lexer::pk"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.off, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr %var.off, align 8
  %addtmp = add i64 %fld.load, %var.load1
  store i64 %addtmp, ptr %var.i, align 8
  %var.load2 = load i64, ptr %var.i, align 8
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 0
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen8 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen9 = load i64, ptr %arena.gen8, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen9
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp = icmp sle i64 %var.load2, %subtmp
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load10 = load ptr, ptr %var.lx, align 8
  %fld.gep11 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load10, i32 0, i32 0
  %fld.load12 = load ptr, ptr %fld.gep11, align 8
  %var.load13 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"unicode::decode_rune"(ptr %fld.load12, i64 %var.load13)
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %call.res, %choice.then ], [ 0, %choice.else ]
  ret i64 %choice.res
}

declare i64 @"unicode::decode_rune"(ptr, i64) #1

define i1 @"lexer::is_nl"(i64 %0) #1 {
entry:
  %var.r = alloca i64, align 8
  store i64 %0, ptr %var.r, align 8
  %var.load = load i64, ptr %var.r, align 8
  %val.match = icmp eq i64 %var.load, 10
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i64 @"lexer::adv"(ptr %0, i64 %1) #1 {
entry:
  %var.r = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load2 = load i64, ptr %var.r, align 8
  %r.cmp1 = icmp slt i64 %var.load2, 128
  %r.cmp2 = icmp slt i64 %var.load2, 2048
  %r.cmp3 = icmp slt i64 %var.load2, 65536
  %r.w3 = select i1 %r.cmp3, i64 3, i64 4
  %r.w2 = select i1 %r.cmp2, i64 2, i64 %r.w3
  %r.width = select i1 %r.cmp1, i64 1, i64 %r.w2
  %addtmp = add i64 %fld.load, %r.width
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep3, align 8
  %var.load4 = load i64, ptr %var.r, align 8
  %call.res = call i1 @"lexer::is_nl"(i64 %var.load4)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.lx, align 8
  %var.load6 = load ptr, ptr %var.lx, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %addtmp9 = add i64 %fld.load8, 1
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 2
  store i64 %addtmp9, ptr %fld.gep10, align 8
  %var.load11 = load ptr, ptr %var.lx, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load11, i32 0, i32 3
  store i64 1, ptr %fld.gep12, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load13 = load ptr, ptr %var.lx, align 8
  %var.load14 = load ptr, ptr %var.lx, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load14, i32 0, i32 3
  %fld.load16 = load i64, ptr %fld.gep15, align 8
  %addtmp17 = add i64 %fld.load16, 1
  %fld.gep18 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load13, i32 0, i32 3
  store i64 %addtmp17, ptr %fld.gep18, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %var.load19 = load i64, ptr %var.r, align 8
  ret i64 %var.load19
}

define i1 @"lexer::is_ws"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load, 32
  %val.match1 = icmp eq i64 %var.load, 9
  %case.or = or i1 %val.match, %val.match1
  %val.match2 = icmp eq i64 %var.load, 13
  %case.or3 = or i1 %case.or, %val.match2
  %val.match4 = icmp eq i64 %var.load, 10
  %case.or5 = or i1 %case.or3, %val.match4
  br i1 %case.or5, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define ptr @"lexer::mktok"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr %6) #1 {
entry:
  %var.trail = alloca i1, align 1
  %var.ws = alloca i1, align 1
  %var.lead = alloca i1, align 1
  %var.text = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.kind = alloca ptr, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store ptr %1, ptr %var.kind, align 8
  store i64 %2, ptr %var.start, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.line, align 8
  store i64 %5, ptr %var.col, align 8
  store ptr %6, ptr %var.text, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 10
  %fld.load = load i1, ptr %fld.gep, align 1
  store i1 %fld.load, ptr %var.lead, align 1
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 10
  store i1 false, ptr %fld.gep2, align 1
  %var.load3 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load3, i64 0)
  %call.res4 = call i1 @"lexer::is_ws"(i64 %call.res)
  store i1 %call.res4, ptr %var.ws, align 1
  %var.load5 = load ptr, ptr %var.kind, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 18
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next7, %choice.case6, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ %var.load16, %choice.case6 ], [ false, %choice.next7 ]
  store i1 %choice.res, ptr %var.trail, align 1
  %var.load17 = load ptr, ptr %var.kind, align 8
  %var.load18 = load i64, ptr %var.start, align 8
  %var.load19 = load i64, ptr %var.len, align 8
  %var.load20 = load i64, ptr %var.line, align 8
  %var.load21 = load i64, ptr %var.col, align 8
  %var.load22 = load i1, ptr %var.lead, align 1
  %var.load23 = load i1, ptr %var.trail, align 1
  %var.load24 = load ptr, ptr %var.text, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load17, ptr %rec.fld, align 8
  %rec.fld25 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load18, ptr %rec.fld25, align 8
  %rec.fld26 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load19, ptr %rec.fld26, align 8
  %rec.fld27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load20, ptr %rec.fld27, align 8
  %rec.fld28 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load21, ptr %rec.fld28, align 8
  %rec.fld29 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load22, ptr %rec.fld29, align 1
  %rec.fld30 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store i1 %var.load23, ptr %rec.fld30, align 1
  %rec.fld31 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr %var.load24, ptr %rec.fld31, align 8
  ret ptr %rec.alloc

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep8 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %tag.id9 = load i64, ptr %tag.gep8, align 8
  %tag.match10 = icmp eq i64 %tag.id9, 0
  %tag.match11 = icmp eq i64 %tag.id9, 8
  %tag.or = or i1 %tag.match10, %tag.match11
  %tag.match12 = icmp eq i64 %tag.id9, 15
  %tag.or13 = or i1 %tag.or, %tag.match12
  %tag.match14 = icmp eq i64 %tag.id9, 9
  %tag.or15 = or i1 %tag.or13, %tag.match14
  br i1 %tag.or15, label %choice.case6, label %choice.next7

choice.case6:                                     ; preds = %choice.next
  %var.load16 = load i1, ptr %var.ws, align 1
  br label %choice.exit

choice.next7:                                     ; preds = %choice.next
  br label %choice.exit
}

define i64 @"lexer::fail"(i64 %0, i64 %1, i64 %2, ptr %3) #1 {
entry:
  %var.out = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.code = alloca i64, align 8
  store i64 %0, ptr %var.code, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  store ptr %3, ptr %var.msg, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 128, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %str_overflow_abort, %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 128, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load i64, ptr %var.code, align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load)
  %var.load3 = load i64, ptr %var.line, align 8
  %call.res4 = call ptr @"str::from_int"(i64 %var.load3)
  %var.load5 = load i64, ptr %var.col, align 8
  %call.res6 = call ptr @"str::from_int"(i64 %var.load5)
  %var.load7 = load ptr, ptr %var.msg, align 8
  %arena.cur8 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.4.struct, ptr %rec.fld, align 8
  %rec.fld9 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %call.res, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.5.struct, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %call.res4, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr @str.6.struct, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 5
  store ptr %call.res6, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr @str.7.struct, ptr %rec.fld14, align 8
  %rec.fld15 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr %var.load7, ptr %rec.fld15, align 8
  %rec.fld16 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 8
  store ptr @str.8.struct, ptr %rec.fld16, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.str.len = load i64, ptr @str.4.struct, align 8
  %b.str.len17 = and i64 %b.str.len, 281474976710655
  %str.tag = lshr i64 %b.str.len, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort:                               ; preds = %entry
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

str_gen_check:                                    ; preds = %b.buf.len1
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen18 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen19 = load i64, ptr %arena.gen18, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen19
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len1
  %b.add.len = add i64 0, %b.str.len17
  %var.load20 = load i64, ptr %var.code, align 8
  %call.res21 = call ptr @"str::from_int"(i64 %var.load20)
  %b.str.len22 = getelementptr inbounds { i64, ptr }, ptr %call.res21, i32 0, i32 0
  %b.str.len23 = load i64, ptr %b.str.len22, align 8
  %b.str.len24 = and i64 %b.str.len23, 281474976710655
  %str.tag25 = lshr i64 %b.str.len23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check27:                                  ; preds = %str_ok
  %arena.gen30 = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen30, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match33 = icmp eq i64 %str.tag25, %arena.gen32
  br i1 %str.tag.match33, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %str_ok
  %b.add.len34 = add i64 %b.add.len, %b.str.len24
  %b.str.len35 = load i64, ptr @str.5.struct, align 8
  %b.str.len36 = and i64 %b.str.len35, 281474976710655
  %str.tag37 = lshr i64 %b.str.len35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

str_stale29:                                      ; preds = %str_gen_check27
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str_gen_check39:                                  ; preds = %str_ok28
  %arena.gen42 = call ptr @dva_arena_current()
  %arena.gen43 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen42, i32 0, i32 4
  %arena.gen44 = load i64, ptr %arena.gen43, align 8
  %str.tag.match45 = icmp eq i64 %str.tag37, %arena.gen44
  br i1 %str.tag.match45, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %str_ok28
  %b.add.len46 = add i64 %b.add.len34, %b.str.len36
  %var.load47 = load i64, ptr %var.line, align 8
  %call.res48 = call ptr @"str::from_int"(i64 %var.load47)
  %b.str.len49 = getelementptr inbounds { i64, ptr }, ptr %call.res48, i32 0, i32 0
  %b.str.len50 = load i64, ptr %b.str.len49, align 8
  %b.str.len51 = and i64 %b.str.len50, 281474976710655
  %str.tag52 = lshr i64 %b.str.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

str_stale41:                                      ; preds = %str_gen_check39
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

str_gen_check54:                                  ; preds = %str_ok40
  %arena.gen57 = call ptr @dva_arena_current()
  %arena.gen58 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen57, i32 0, i32 4
  %arena.gen59 = load i64, ptr %arena.gen58, align 8
  %str.tag.match60 = icmp eq i64 %str.tag52, %arena.gen59
  br i1 %str.tag.match60, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %str_ok40
  %b.add.len61 = add i64 %b.add.len46, %b.str.len51
  %b.str.len62 = load i64, ptr @str.6.struct, align 8
  %b.str.len63 = and i64 %b.str.len62, 281474976710655
  %str.tag64 = lshr i64 %b.str.len62, 48
  %str.immortal65 = icmp eq i64 %str.tag64, 0
  br i1 %str.immortal65, label %str_ok67, label %str_gen_check66

str_stale56:                                      ; preds = %str_gen_check54
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str_gen_check66:                                  ; preds = %str_ok55
  %arena.gen69 = call ptr @dva_arena_current()
  %arena.gen70 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen69, i32 0, i32 4
  %arena.gen71 = load i64, ptr %arena.gen70, align 8
  %str.tag.match72 = icmp eq i64 %str.tag64, %arena.gen71
  br i1 %str.tag.match72, label %str_ok67, label %str_stale68

str_ok67:                                         ; preds = %str_stale68, %str_gen_check66, %str_ok55
  %b.add.len73 = add i64 %b.add.len61, %b.str.len63
  %var.load74 = load i64, ptr %var.col, align 8
  %call.res75 = call ptr @"str::from_int"(i64 %var.load74)
  %b.str.len76 = getelementptr inbounds { i64, ptr }, ptr %call.res75, i32 0, i32 0
  %b.str.len77 = load i64, ptr %b.str.len76, align 8
  %b.str.len78 = and i64 %b.str.len77, 281474976710655
  %str.tag79 = lshr i64 %b.str.len77, 48
  %str.immortal80 = icmp eq i64 %str.tag79, 0
  br i1 %str.immortal80, label %str_ok82, label %str_gen_check81

str_stale68:                                      ; preds = %str_gen_check66
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok67

str_gen_check81:                                  ; preds = %str_ok67
  %arena.gen84 = call ptr @dva_arena_current()
  %arena.gen85 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen84, i32 0, i32 4
  %arena.gen86 = load i64, ptr %arena.gen85, align 8
  %str.tag.match87 = icmp eq i64 %str.tag79, %arena.gen86
  br i1 %str.tag.match87, label %str_ok82, label %str_stale83

str_ok82:                                         ; preds = %str_stale83, %str_gen_check81, %str_ok67
  %b.add.len88 = add i64 %b.add.len73, %b.str.len78
  %b.str.len89 = load i64, ptr @str.7.struct, align 8
  %b.str.len90 = and i64 %b.str.len89, 281474976710655
  %str.tag91 = lshr i64 %b.str.len89, 48
  %str.immortal92 = icmp eq i64 %str.tag91, 0
  br i1 %str.immortal92, label %str_ok94, label %str_gen_check93

str_stale83:                                      ; preds = %str_gen_check81
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok82

str_gen_check93:                                  ; preds = %str_ok82
  %arena.gen96 = call ptr @dva_arena_current()
  %arena.gen97 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen96, i32 0, i32 4
  %arena.gen98 = load i64, ptr %arena.gen97, align 8
  %str.tag.match99 = icmp eq i64 %str.tag91, %arena.gen98
  br i1 %str.tag.match99, label %str_ok94, label %str_stale95

str_ok94:                                         ; preds = %str_stale95, %str_gen_check93, %str_ok82
  %b.add.len100 = add i64 %b.add.len88, %b.str.len90
  %var.load101 = load ptr, ptr %var.msg, align 8
  %b.str.len102 = getelementptr inbounds { i64, ptr }, ptr %var.load101, i32 0, i32 0
  %b.str.len103 = load i64, ptr %b.str.len102, align 8
  %b.str.len104 = and i64 %b.str.len103, 281474976710655
  %str.tag105 = lshr i64 %b.str.len103, 48
  %str.immortal106 = icmp eq i64 %str.tag105, 0
  br i1 %str.immortal106, label %str_ok108, label %str_gen_check107

str_stale95:                                      ; preds = %str_gen_check93
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok94

str_gen_check107:                                 ; preds = %str_ok94
  %arena.gen110 = call ptr @dva_arena_current()
  %arena.gen111 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen110, i32 0, i32 4
  %arena.gen112 = load i64, ptr %arena.gen111, align 8
  %str.tag.match113 = icmp eq i64 %str.tag105, %arena.gen112
  br i1 %str.tag.match113, label %str_ok108, label %str_stale109

str_ok108:                                        ; preds = %str_stale109, %str_gen_check107, %str_ok94
  %b.add.len114 = add i64 %b.add.len100, %b.str.len104
  %b.str.len115 = load i64, ptr @str.8.struct, align 8
  %b.str.len116 = and i64 %b.str.len115, 281474976710655
  %str.tag117 = lshr i64 %b.str.len115, 48
  %str.immortal118 = icmp eq i64 %str.tag117, 0
  br i1 %str.immortal118, label %str_ok120, label %str_gen_check119

str_stale109:                                     ; preds = %str_gen_check107
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok108

str_gen_check119:                                 ; preds = %str_ok108
  %arena.gen122 = call ptr @dva_arena_current()
  %arena.gen123 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen122, i32 0, i32 4
  %arena.gen124 = load i64, ptr %arena.gen123, align 8
  %str.tag.match125 = icmp eq i64 %str.tag117, %arena.gen124
  br i1 %str.tag.match125, label %str_ok120, label %str_stale121

str_ok120:                                        ; preds = %str_stale121, %str_gen_check119, %str_ok108
  %b.add.len126 = add i64 %b.add.len114, %b.str.len116
  %b.rec.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rec.cur.len127 = load i64, ptr %b.rec.cur.len, align 8
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len127, i64 %b.add.len126)
  %sum128 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf129 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf129, label %str_overflow_abort131, label %b.rec.new.len130

str_stale121:                                     ; preds = %str_gen_check119
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok120

b.rec.new.len130:                                 ; preds = %str_overflow_abort131, %str_ok120
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap132 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap132, %sum128
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort131:                            ; preds = %str_ok120
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len130

b.grow2:                                          ; preds = %b.rec.new.len130
  %b.cap2 = mul i64 %b.cap132, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum128
  %b.new.cap = select i1 %b.cap.need, i64 %sum128, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2133 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2134 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum135 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf136 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf136, label %str_overflow_abort138, label %b.new.buf.len2137

b.nogrow2:                                        ; preds = %b.rec.new.len130
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2137
  %b.rec.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rec.data140 = load ptr, ptr %b.rec.data, align 8
  %b.rec.dst = getelementptr i8, ptr %b.rec.data140, i64 %b.rec.cur.len127
  %b.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data, i64 %b.str.len17, i1 false)
  %b.rec.off = add i64 %b.rec.cur.len127, %b.str.len17
  %b.rec.dst141 = getelementptr i8, ptr %b.rec.data140, i64 %b.rec.off
  %b.str.data142 = getelementptr inbounds { i64, ptr }, ptr %call.res21, i32 0, i32 1
  %b.str.data143 = load ptr, ptr %b.str.data142, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst141, ptr align 1 %b.str.data143, i64 %b.str.len24, i1 false)
  %b.rec.off144 = add i64 %b.rec.off, %b.str.len24
  %b.rec.dst145 = getelementptr i8, ptr %b.rec.data140, i64 %b.rec.off144
  %b.str.data146 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst145, ptr align 1 %b.str.data146, i64 %b.str.len36, i1 false)
  %b.rec.off147 = add i64 %b.rec.off144, %b.str.len36
  %b.rec.dst148 = getelementptr i8, ptr %b.rec.data140, i64 %b.rec.off147
  %b.str.data149 = getelementptr inbounds { i64, ptr }, ptr %call.res48, i32 0, i32 1
  %b.str.data150 = load ptr, ptr %b.str.data149, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst148, ptr align 1 %b.str.data150, i64 %b.str.len51, i1 false)
  %b.rec.off151 = add i64 %b.rec.off147, %b.str.len51
  %b.rec.dst152 = getelementptr i8, ptr %b.rec.data140, i64 %b.rec.off151
  %b.str.data153 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst152, ptr align 1 %b.str.data153, i64 %b.str.len63, i1 false)
  %b.rec.off154 = add i64 %b.rec.off151, %b.str.len63
  %b.rec.dst155 = getelementptr i8, ptr %b.rec.data140, i64 %b.rec.off154
  %b.str.data156 = getelementptr inbounds { i64, ptr }, ptr %call.res75, i32 0, i32 1
  %b.str.data157 = load ptr, ptr %b.str.data156, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst155, ptr align 1 %b.str.data157, i64 %b.str.len78, i1 false)
  %b.rec.off158 = add i64 %b.rec.off154, %b.str.len78
  %b.rec.dst159 = getelementptr i8, ptr %b.rec.data140, i64 %b.rec.off158
  %b.str.data160 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst159, ptr align 1 %b.str.data160, i64 %b.str.len90, i1 false)
  %b.rec.off161 = add i64 %b.rec.off158, %b.str.len90
  %b.rec.dst162 = getelementptr i8, ptr %b.rec.data140, i64 %b.rec.off161
  %b.str.data163 = getelementptr inbounds { i64, ptr }, ptr %var.load101, i32 0, i32 1
  %b.str.data164 = load ptr, ptr %b.str.data163, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst162, ptr align 1 %b.str.data164, i64 %b.str.len104, i1 false)
  %b.rec.off165 = add i64 %b.rec.off161, %b.str.len104
  %b.rec.dst166 = getelementptr i8, ptr %b.rec.data140, i64 %b.rec.off165
  %b.str.data167 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst166, ptr align 1 %b.str.data167, i64 %b.str.len116, i1 false)
  %b.rec.off168 = add i64 %b.rec.off165, %b.str.len116
  %b.rec.nul = getelementptr i8, ptr %b.rec.data140, i64 %sum128
  store i8 0, ptr %b.rec.nul, align 1
  %b.len.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum128, ptr %b.len.gep169, align 8
  %var.load170 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load170, i32 0, i32 0
  %b.freeze.len171 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load170, i32 0, i32 1
  %b.freeze.data172 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len2137:                                ; preds = %str_overflow_abort138, %b.grow2
  %arena.cur139 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %sum135)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2134, i64 %b.cur.len2133, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2133
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort138:                            ; preds = %b.grow2
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2137

b.freeze.check:                                   ; preds = %b.grow_done
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data172, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data172, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data172, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur173 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 %b.freeze.len171)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data172, i64 %b.freeze.len171, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data174 = phi ptr [ %b.freeze.data172, %b.grow_done ], [ %b.freeze.data172, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur175 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len171, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data174, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load170, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load170, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load170, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.out, align 8
  %var.load176 = load ptr, ptr %var.out, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load176, i32 0, i32 1
  %arg.str.ptr177 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr178 = getelementptr inbounds { i64, ptr }, ptr %var.load176, i32 0, i32 0
  %arg.str.ptr179 = load i64, ptr %arg.str.ptr178, align 8
  %arg.str.ptr180 = and i64 %arg.str.ptr179, 281474976710655
  %str.tag181 = lshr i64 %arg.str.ptr179, 48
  %str.immortal182 = icmp eq i64 %str.tag181, 0
  br i1 %str.immortal182, label %str_ok184, label %str_gen_check183

str_gen_check183:                                 ; preds = %b.freeze.done
  %arena.gen186 = call ptr @dva_arena_current()
  %arena.gen187 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen186, i32 0, i32 4
  %arena.gen188 = load i64, ptr %arena.gen187, align 8
  %str.tag.match189 = icmp eq i64 %str.tag181, %arena.gen188
  br i1 %str.tag.match189, label %str_ok184, label %str_stale185

str_ok184:                                        ; preds = %str_stale185, %str_gen_check183, %b.freeze.done
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr177, i64 %arg.str.ptr180
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr190, label %nulcopy

str_stale185:                                     ; preds = %str_gen_check183
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok184

arg.str.ptr190:                                   ; preds = %str_ok184
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok184
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr180, i64 1)
  %sum191 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf192 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf192, label %str_overflow_abort194, label %nulcopy.len193

nulmerge:                                         ; preds = %nulcopy.len193, %arg.str.ptr190
  %arg.str.ptr196 = phi ptr [ %arg.str.ptr177, %arg.str.ptr190 ], [ %nulcopy.buf, %nulcopy.len193 ]
  %var.load197 = load ptr, ptr %var.out, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 0
  %str.len.query198 = load i64, ptr %str.len.query, align 8
  %str.len.query199 = and i64 %str.len.query198, 281474976710655
  %str.tag200 = lshr i64 %str.len.query198, 48
  %str.immortal201 = icmp eq i64 %str.tag200, 0
  br i1 %str.immortal201, label %str_ok203, label %str_gen_check202

nulcopy.len193:                                   ; preds = %str_overflow_abort194, %nulcopy
  %arena.cur195 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 %sum191)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr177, i64 %arg.str.ptr180, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr180
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort194:                            ; preds = %nulcopy
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len193

str_gen_check202:                                 ; preds = %nulmerge
  %arena.gen205 = call ptr @dva_arena_current()
  %arena.gen206 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen205, i32 0, i32 4
  %arena.gen207 = load i64, ptr %arena.gen206, align 8
  %str.tag.match208 = icmp eq i64 %str.tag200, %arena.gen207
  br i1 %str.tag.match208, label %str_ok203, label %str_stale204

str_ok203:                                        ; preds = %str_stale204, %str_gen_check202, %nulmerge
  %call.res209 = call i64 @write(i32 2, ptr %arg.str.ptr196, i64 %str.len.query199)
  call void @dva_arena_destroy(ptr @global_arena)
  call void @exit(i32 1)
  unreachable

str_stale204:                                     ; preds = %str_gen_check202
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok203

exit.done:                                        ; No predecessors!
  ret i64 0
}

declare ptr @"str::from_int"(i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define i64 @"lexer::esc_val"(i64 %0) #1 {
entry:
  %var.e = alloca i64, align 8
  store i64 %0, ptr %var.e, align 8
  %var.load = load i64, ptr %var.e, align 8
  %val.match = icmp eq i64 %var.load, 110
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next20, %choice.case19, %choice.case16, %choice.case13, %choice.case10, %choice.case7, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi i64 [ 10, %choice.case ], [ 9, %choice.case1 ], [ 13, %choice.case4 ], [ 0, %choice.case7 ], [ 7, %choice.case10 ], [ 8, %choice.case13 ], [ 12, %choice.case16 ], [ 11, %choice.case19 ], [ %var.load22, %choice.next20 ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 116
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %val.match6 = icmp eq i64 %var.load, 114
  br i1 %val.match6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  %val.match9 = icmp eq i64 %var.load, 48
  br i1 %val.match9, label %choice.case7, label %choice.next8

choice.case7:                                     ; preds = %choice.next5
  br label %choice.exit

choice.next8:                                     ; preds = %choice.next5
  %val.match12 = icmp eq i64 %var.load, 97
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next8
  %val.match15 = icmp eq i64 %var.load, 98
  br i1 %val.match15, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next11
  br label %choice.exit

choice.next14:                                    ; preds = %choice.next11
  %val.match18 = icmp eq i64 %var.load, 102
  br i1 %val.match18, label %choice.case16, label %choice.next17

choice.case16:                                    ; preds = %choice.next14
  br label %choice.exit

choice.next17:                                    ; preds = %choice.next14
  %val.match21 = icmp eq i64 %var.load, 118
  br i1 %val.match21, label %choice.case19, label %choice.next20

choice.case19:                                    ; preds = %choice.next17
  br label %choice.exit

choice.next20:                                    ; preds = %choice.next17
  %var.load22 = load i64, ptr %var.e, align 8
  br label %choice.exit
}

define ptr @"lexer::decode_escapes"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.r = alloca i64, align 8
  %loop.step.1 = alloca i64, align 8
  %loop.idx.1 = alloca i64, align 8
  %"var.in_esc'" = alloca i1, align 1
  %var.buf = alloca ptr, align 8
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %str.len.query2, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %str.len.query2
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.buf.len5:                                       ; preds = %str_overflow_abort, %str_ok
  %arena.cur6 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  store i1 false, ptr %"var.in_esc'", align 1
  %var.load7 = load ptr, ptr %var.raw, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %str.len8 = load i64, ptr %str.len, align 8
  %str.len9 = and i64 %str.len8, 281474976710655
  %str.tag10 = lshr i64 %str.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len5

str_gen_check12:                                  ; preds = %b.buf.len5
  %arena.gen15 = call ptr @dva_arena_current()
  %arena.gen16 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen15, i32 0, i32 4
  %arena.gen17 = load i64, ptr %arena.gen16, align 8
  %str.tag.match18 = icmp eq i64 %str.tag10, %arena.gen17
  br i1 %str.tag.match18, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %b.buf.len5
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.1, align 8
  br label %loop.header.1

str_stale14:                                      ; preds = %str_gen_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

loop.header.1:                                    ; preds = %loop.latch.1, %str_ok13
  %counter.load = load i64, ptr %loop.idx.1, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len9
  br i1 %loop.cond, label %loop.body.1, label %loop.exit.nat.1

loop.body.1:                                      ; preds = %loop.header.1
  %loop.rel.i = sub i64 %counter.load, 0
  %dec.b0.ptr.2 = getelementptr i8, ptr %s.read.data19, i64 %counter.load
  %dec.b0.raw.2 = load i8, ptr %dec.b0.ptr.2, align 1
  %dec.b0.2 = zext i8 %dec.b0.raw.2 to i64
  %d.cmp1.2 = icmp slt i64 %dec.b0.2, 128
  %d.cmp2.2 = icmp slt i64 %dec.b0.2, 224
  %d.cmp3.2 = icmp slt i64 %dec.b0.2, 240
  br i1 %d.cmp1.2, label %d.1.2, label %d.c2.2

loop.exit.nat.1:                                  ; preds = %loop.header.1
  br label %loop.exit.1

loop.latch.1:                                     ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.1, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.1, align 8
  br label %loop.header.1

loop.exit.1:                                      ; preds = %loop.exit.nat.1
  %var.load127 = load i1, ptr %"var.in_esc'", align 1
  br i1 %var.load127, label %choice.then128, label %choice.else129

d.1.2:                                            ; preds = %loop.body.1
  br label %d.done.2

d.c2.2:                                           ; preds = %loop.body.1
  br i1 %d.cmp2.2, label %d.2.2, label %d.c3.2

d.2.2:                                            ; preds = %d.c2.2
  %d.b1.2.ptr.2 = getelementptr i8, ptr %dec.b0.ptr.2, i64 1
  %d.b1.2.raw.2 = load i8, ptr %d.b1.2.ptr.2, align 1
  %d.b1.2.2 = zext i8 %d.b1.2.raw.2 to i64
  %d.b0.2.m.2 = and i64 %dec.b0.2, 31
  %d.b0.2.sh.2 = shl i64 %d.b0.2.m.2, 6
  %d.b1.2.m.2 = and i64 %d.b1.2.2, 63
  %d.r2.2 = or i64 %d.b0.2.sh.2, %d.b1.2.m.2
  br label %d.done.2

d.c3.2:                                           ; preds = %d.c2.2
  br i1 %d.cmp3.2, label %d.3.2, label %d.4.2

d.3.2:                                            ; preds = %d.c3.2
  %d.b1.3.ptr.2 = getelementptr i8, ptr %dec.b0.ptr.2, i64 1
  %d.b1.3.raw.2 = load i8, ptr %d.b1.3.ptr.2, align 1
  %d.b1.3.2 = zext i8 %d.b1.3.raw.2 to i64
  %d.b2.3.ptr.2 = getelementptr i8, ptr %dec.b0.ptr.2, i64 2
  %d.b2.3.raw.2 = load i8, ptr %d.b2.3.ptr.2, align 1
  %d.b2.3.2 = zext i8 %d.b2.3.raw.2 to i64
  %d.b0.3.m.2 = and i64 %dec.b0.2, 15
  %d.b0.3.sh.2 = shl i64 %d.b0.3.m.2, 12
  %d.b1.3.m.2 = and i64 %d.b1.3.2, 63
  %d.b1.3.sh.2 = shl i64 %d.b1.3.m.2, 6
  %d.b2.3.m.2 = and i64 %d.b2.3.2, 63
  %d.r3.tmp.2 = or i64 %d.b0.3.sh.2, %d.b1.3.sh.2
  %d.r3.2 = or i64 %d.r3.tmp.2, %d.b2.3.m.2
  br label %d.done.2

d.4.2:                                            ; preds = %d.c3.2
  %d.b1.4.ptr.2 = getelementptr i8, ptr %dec.b0.ptr.2, i64 1
  %d.b1.4.raw.2 = load i8, ptr %d.b1.4.ptr.2, align 1
  %d.b1.4.2 = zext i8 %d.b1.4.raw.2 to i64
  %d.b2.4.ptr.2 = getelementptr i8, ptr %dec.b0.ptr.2, i64 2
  %d.b2.4.raw.2 = load i8, ptr %d.b2.4.ptr.2, align 1
  %d.b2.4.2 = zext i8 %d.b2.4.raw.2 to i64
  %d.b3.4.ptr.2 = getelementptr i8, ptr %dec.b0.ptr.2, i64 3
  %d.b3.4.raw.2 = load i8, ptr %d.b3.4.ptr.2, align 1
  %d.b3.4.2 = zext i8 %d.b3.4.raw.2 to i64
  %d.b0.4.m.2 = and i64 %dec.b0.2, 7
  %d.b0.4.sh.2 = shl i64 %d.b0.4.m.2, 18
  %d.b1.4.m.2 = and i64 %d.b1.4.2, 63
  %d.b1.4.sh.2 = shl i64 %d.b1.4.m.2, 12
  %d.b2.4.m.2 = and i64 %d.b2.4.2, 63
  %d.b2.4.sh.2 = shl i64 %d.b2.4.m.2, 6
  %d.b3.4.m.2 = and i64 %d.b3.4.2, 63
  %d.r4.a.2 = or i64 %d.b0.4.sh.2, %d.b1.4.sh.2
  %d.r4.b.2 = or i64 %d.b2.4.sh.2, %d.b3.4.m.2
  %d.r4.2 = or i64 %d.r4.a.2, %d.r4.b.2
  br label %d.done.2

d.done.2:                                         ; preds = %d.4.2, %d.3.2, %d.2.2, %d.1.2
  %d.phi.r.2 = phi i64 [ %dec.b0.2, %d.1.2 ], [ %d.r2.2, %d.2.2 ], [ %d.r3.2, %d.3.2 ], [ %d.r4.2, %d.4.2 ]
  %d.phi.w.2 = phi i64 [ 1, %d.1.2 ], [ 2, %d.2.2 ], [ 3, %d.3.2 ], [ 4, %d.4.2 ]
  store i64 %d.phi.w.2, ptr %loop.step.1, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %d.phi.r.2, ptr %var._, align 8
  store i64 %d.phi.r.2, ptr %var.r, align 8
  %var.load20 = load i1, ptr %"var.in_esc'", align 1
  br i1 %var.load20, label %choice.then, label %choice.else

choice.then:                                      ; preds = %d.done.2
  %var.load21 = load i64, ptr %var.r, align 8
  %call.res = call i64 @"lexer::esc_val"(i64 %var.load21)
  %b.load = load ptr, ptr %var.buf, align 8
  %var.load22 = load i64, ptr %var.r, align 8
  %call.res23 = call i64 @"lexer::esc_val"(i64 %var.load22)
  %br.cmp1 = icmp slt i64 %call.res23, 128
  %br.cmp2 = icmp slt i64 %call.res23, 2048
  %br.cmp3 = icmp slt i64 %call.res23, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len24 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len24, i64 %br.width)
  %sum25 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf26 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf26, label %str_overflow_abort28, label %b.rn.new.len27

choice.else:                                      ; preds = %d.done.2
  %var.load40 = load i64, ptr %var.r, align 8
  %cmptmp = icmp eq i64 %var.load40, 92
  br i1 %cmptmp, label %choice.then41, label %choice.else42

choice.exit:                                      ; preds = %choice.exit43, %br.done.3
  br label %loop.latch.1

b.rn.new.len27:                                   ; preds = %str_overflow_abort28, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap29 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap29, %sum25
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort28:                             ; preds = %choice.then
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len27

b.grow2:                                          ; preds = %b.rn.new.len27
  %b.cap2 = mul i64 %b.cap29, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum25
  %b.new.cap = select i1 %b.cap.need, i64 %sum25, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len230 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data231 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum32 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf33 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf33, label %str_overflow_abort35, label %b.new.buf.len234

b.nogrow2:                                        ; preds = %b.rn.new.len27
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len234
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data37 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data37, i64 %b.rn.cur.len24
  br i1 %br.cmp1, label %br.b1.3, label %br.c2.3

b.new.buf.len234:                                 ; preds = %str_overflow_abort35, %b.grow2
  %arena.cur36 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 %sum32)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data231, i64 %b.cur.len230, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len230
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort35:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len234

br.b1.3:                                          ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %call.res23 to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.3

br.c2.3:                                          ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.3, label %br.c3.3

br.b2.3:                                          ; preds = %br.c2.3
  %br.sh6 = lshr i64 %call.res23, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %call.res23, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.3

br.c3.3:                                          ; preds = %br.c2.3
  br i1 %br.cmp3, label %br.b3.3, label %br.b4.3

br.b3.3:                                          ; preds = %br.c3.3
  %br.sh12 = lshr i64 %call.res23, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %call.res23, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %call.res23, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.3

br.b4.3:                                          ; preds = %br.c3.3
  %br.sh18 = lshr i64 %call.res23, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %call.res23, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %call.res23, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %call.res23, 63
  %br.b4.338 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.338 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4, align 1
  br label %br.done.3

br.done.3:                                        ; preds = %br.b4.3, %br.b3.3, %br.b2.3, %br.b1.3
  %br.nul = getelementptr i8, ptr %b.rn.data37, i64 %sum25
  store i8 0, ptr %br.nul, align 1
  %b.len.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum25, ptr %b.len.gep39, align 8
  store i1 false, ptr %"var.in_esc'", align 1
  br label %choice.exit

choice.then41:                                    ; preds = %choice.else
  store i1 true, ptr %"var.in_esc'", align 1
  br label %choice.exit43

choice.else42:                                    ; preds = %choice.else
  %var.load44 = load i64, ptr %var.r, align 8
  %b.load45 = load ptr, ptr %var.buf, align 8
  %var.load46 = load i64, ptr %var.r, align 8
  %br.cmp147 = icmp slt i64 %var.load46, 128
  %br.cmp248 = icmp slt i64 %var.load46, 2048
  %br.cmp349 = icmp slt i64 %var.load46, 65536
  %br.w350 = select i1 %br.cmp349, i64 3, i64 4
  %br.w251 = select i1 %br.cmp248, i64 2, i64 %br.w350
  %br.width52 = select i1 %br.cmp147, i64 1, i64 %br.w251
  %b.rn.cur.len53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 0
  %b.rn.cur.len54 = load i64, ptr %b.rn.cur.len53, align 8
  %b.rn.new.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len54, i64 %br.width52)
  %sum56 = extractvalue { i64, i1 } %b.rn.new.len55, 0
  %ovf57 = extractvalue { i64, i1 } %b.rn.new.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %b.rn.new.len58

choice.exit43:                                    ; preds = %br.done.4, %choice.then41
  br label %choice.exit

b.rn.new.len58:                                   ; preds = %str_overflow_abort59, %choice.else42
  %b.cap60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 2
  %b.cap61 = load i64, ptr %b.cap60, align 8
  %b.need.grow62 = icmp slt i64 %b.cap61, %sum56
  br i1 %b.need.grow62, label %b.grow263, label %b.nogrow264

str_overflow_abort59:                             ; preds = %choice.else42
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len58

b.grow263:                                        ; preds = %b.rn.new.len58
  %b.cap266 = mul i64 %b.cap61, 2
  %b.cap.small67 = icmp slt i64 %b.cap266, 16
  %b.cap.grow68 = select i1 %b.cap.small67, i64 16, i64 %b.cap266
  %b.cap.need69 = icmp slt i64 %b.cap.grow68, %sum56
  %b.new.cap70 = select i1 %b.cap.need69, i64 %sum56, i64 %b.cap.grow68
  %b.cur.len271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 0
  %b.cur.len272 = load i64, ptr %b.cur.len271, align 8
  %b.cur.data273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 1
  %b.cur.data274 = load ptr, ptr %b.cur.data273, align 8
  %b.new.buf.len275 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap70, i64 1)
  %sum76 = extractvalue { i64, i1 } %b.new.buf.len275, 0
  %ovf77 = extractvalue { i64, i1 } %b.new.buf.len275, 1
  br i1 %ovf77, label %str_overflow_abort79, label %b.new.buf.len278

b.nogrow264:                                      ; preds = %b.rn.new.len58
  br label %b.grow_done65

b.grow_done65:                                    ; preds = %b.nogrow264, %b.new.buf.len278
  %b.rn.data85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 1
  %b.rn.data86 = load ptr, ptr %b.rn.data85, align 8
  %b.rn.dst87 = getelementptr i8, ptr %b.rn.data86, i64 %b.rn.cur.len54
  br i1 %br.cmp147, label %br.b1.4, label %br.c2.4

b.new.buf.len278:                                 ; preds = %str_overflow_abort79, %b.grow263
  %arena.cur80 = call ptr @dva_arena_current()
  %b.new.buf281 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 %sum76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf281, ptr align 1 %b.cur.data274, i64 %b.cur.len272, i1 false)
  %b.grow2.nul82 = getelementptr i8, ptr %b.new.buf281, i64 %b.cur.len272
  store i8 0, ptr %b.grow2.nul82, align 1
  %b.new.data2.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 1
  store ptr %b.new.buf281, ptr %b.new.data2.gep83, align 8
  %b.new.cap2.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 2
  store i64 %b.new.cap70, ptr %b.new.cap2.gep84, align 8
  br label %b.grow_done65

str_overflow_abort79:                             ; preds = %b.grow263
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len278

br.b1.4:                                          ; preds = %b.grow_done65
  %br.b1.088 = trunc i64 %var.load46 to i8
  store i8 %br.b1.088, ptr %b.rn.dst87, align 1
  br label %br.done.4

br.c2.4:                                          ; preds = %b.grow_done65
  br i1 %br.cmp248, label %br.b2.4, label %br.c3.4

br.b2.4:                                          ; preds = %br.c2.4
  %br.sh689 = lshr i64 %var.load46, 6
  %br.b2.090 = or i64 %br.sh689, 192
  %br.b2.0t91 = trunc i64 %br.b2.090 to i8
  %br.m692 = and i64 %var.load46, 63
  %br.b2.193 = or i64 %br.m692, 128
  %br.b2.1t94 = trunc i64 %br.b2.193 to i8
  store i8 %br.b2.0t91, ptr %b.rn.dst87, align 1
  %br.dst195 = getelementptr i8, ptr %b.rn.dst87, i64 1
  store i8 %br.b2.1t94, ptr %br.dst195, align 1
  br label %br.done.4

br.c3.4:                                          ; preds = %br.c2.4
  br i1 %br.cmp349, label %br.b3.4, label %br.b4.4

br.b3.4:                                          ; preds = %br.c3.4
  %br.sh1296 = lshr i64 %var.load46, 12
  %br.b3.097 = or i64 %br.sh1296, 224
  %br.b3.0t98 = trunc i64 %br.b3.097 to i8
  %br.sh6.399 = lshr i64 %var.load46, 6
  %br.m6.3100 = and i64 %br.sh6.399, 63
  %br.b3.1101 = or i64 %br.m6.3100, 128
  %br.b3.1t102 = trunc i64 %br.b3.1101 to i8
  %br.mend103 = and i64 %var.load46, 63
  %br.b3.2104 = or i64 %br.mend103, 128
  %br.b3.2t105 = trunc i64 %br.b3.2104 to i8
  store i8 %br.b3.0t98, ptr %b.rn.dst87, align 1
  %br.dst1.3106 = getelementptr i8, ptr %b.rn.dst87, i64 1
  store i8 %br.b3.1t102, ptr %br.dst1.3106, align 1
  %br.dst2.3107 = getelementptr i8, ptr %b.rn.dst87, i64 2
  store i8 %br.b3.2t105, ptr %br.dst2.3107, align 1
  br label %br.done.4

br.b4.4:                                          ; preds = %br.c3.4
  %br.sh18108 = lshr i64 %var.load46, 18
  %br.b4.0109 = or i64 %br.sh18108, 240
  %br.b4.0t110 = trunc i64 %br.b4.0109 to i8
  %br.sh12.4111 = lshr i64 %var.load46, 12
  %br.m12.4112 = and i64 %br.sh12.4111, 63
  %br.b4.1113 = or i64 %br.m12.4112, 128
  %br.b4.1t114 = trunc i64 %br.b4.1113 to i8
  %br.sh6.4115 = lshr i64 %var.load46, 6
  %br.m6.4116 = and i64 %br.sh6.4115, 63
  %br.b4.2117 = or i64 %br.m6.4116, 128
  %br.b4.2t118 = trunc i64 %br.b4.2117 to i8
  %br.mend4119 = and i64 %var.load46, 63
  %br.b4.3120 = or i64 %br.mend4119, 128
  %br.b4.3t121 = trunc i64 %br.b4.3120 to i8
  store i8 %br.b4.0t110, ptr %b.rn.dst87, align 1
  %br.dst1.4122 = getelementptr i8, ptr %b.rn.dst87, i64 1
  store i8 %br.b4.1t114, ptr %br.dst1.4122, align 1
  %br.dst2.4123 = getelementptr i8, ptr %b.rn.dst87, i64 2
  store i8 %br.b4.2t118, ptr %br.dst2.4123, align 1
  %br.dst3.4124 = getelementptr i8, ptr %b.rn.dst87, i64 3
  store i8 %br.b4.3t121, ptr %br.dst3.4124, align 1
  br label %br.done.4

br.done.4:                                        ; preds = %br.b4.4, %br.b3.4, %br.b2.4, %br.b1.4
  %br.nul125 = getelementptr i8, ptr %b.rn.data86, i64 %sum56
  store i8 0, ptr %br.nul125, align 1
  %b.len.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 0
  store i64 %sum56, ptr %b.len.gep126, align 8
  br label %choice.exit43

choice.then128:                                   ; preds = %loop.exit.1
  %b.load131 = load ptr, ptr %var.buf, align 8
  %b.rn.cur.len132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load131, i32 0, i32 0
  %b.rn.cur.len133 = load i64, ptr %b.rn.cur.len132, align 8
  %b.rn.new.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len133, i64 1)
  %sum135 = extractvalue { i64, i1 } %b.rn.new.len134, 0
  %ovf136 = extractvalue { i64, i1 } %b.rn.new.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %b.rn.new.len137

choice.else129:                                   ; preds = %loop.exit.1
  br label %choice.exit130

choice.exit130:                                   ; preds = %choice.else129, %br.done.5
  %var.load175 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load175, i32 0, i32 0
  %b.freeze.len176 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load175, i32 0, i32 1
  %b.freeze.data177 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len137:                                  ; preds = %str_overflow_abort138, %choice.then128
  %b.cap139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load131, i32 0, i32 2
  %b.cap140 = load i64, ptr %b.cap139, align 8
  %b.need.grow141 = icmp slt i64 %b.cap140, %sum135
  br i1 %b.need.grow141, label %b.grow2142, label %b.nogrow2143

str_overflow_abort138:                            ; preds = %choice.then128
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len137

b.grow2142:                                       ; preds = %b.rn.new.len137
  %b.cap2145 = mul i64 %b.cap140, 2
  %b.cap.small146 = icmp slt i64 %b.cap2145, 16
  %b.cap.grow147 = select i1 %b.cap.small146, i64 16, i64 %b.cap2145
  %b.cap.need148 = icmp slt i64 %b.cap.grow147, %sum135
  %b.new.cap149 = select i1 %b.cap.need148, i64 %sum135, i64 %b.cap.grow147
  %b.cur.len2150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load131, i32 0, i32 0
  %b.cur.len2151 = load i64, ptr %b.cur.len2150, align 8
  %b.cur.data2152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load131, i32 0, i32 1
  %b.cur.data2153 = load ptr, ptr %b.cur.data2152, align 8
  %b.new.buf.len2154 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap149, i64 1)
  %sum155 = extractvalue { i64, i1 } %b.new.buf.len2154, 0
  %ovf156 = extractvalue { i64, i1 } %b.new.buf.len2154, 1
  br i1 %ovf156, label %str_overflow_abort158, label %b.new.buf.len2157

b.nogrow2143:                                     ; preds = %b.rn.new.len137
  br label %b.grow_done144

b.grow_done144:                                   ; preds = %b.nogrow2143, %b.new.buf.len2157
  %b.rn.data164 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load131, i32 0, i32 1
  %b.rn.data165 = load ptr, ptr %b.rn.data164, align 8
  %b.rn.dst166 = getelementptr i8, ptr %b.rn.data165, i64 %b.rn.cur.len133
  br i1 true, label %br.b1.5, label %br.c2.5

b.new.buf.len2157:                                ; preds = %str_overflow_abort158, %b.grow2142
  %arena.cur159 = call ptr @dva_arena_current()
  %b.new.buf2160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 %sum155)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2160, ptr align 1 %b.cur.data2153, i64 %b.cur.len2151, i1 false)
  %b.grow2.nul161 = getelementptr i8, ptr %b.new.buf2160, i64 %b.cur.len2151
  store i8 0, ptr %b.grow2.nul161, align 1
  %b.new.data2.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load131, i32 0, i32 1
  store ptr %b.new.buf2160, ptr %b.new.data2.gep162, align 8
  %b.new.cap2.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load131, i32 0, i32 2
  store i64 %b.new.cap149, ptr %b.new.cap2.gep163, align 8
  br label %b.grow_done144

str_overflow_abort158:                            ; preds = %b.grow2142
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2157

br.b1.5:                                          ; preds = %b.grow_done144
  store i8 92, ptr %b.rn.dst166, align 1
  br label %br.done.5

br.c2.5:                                          ; preds = %b.grow_done144
  br i1 true, label %br.b2.5, label %br.c3.5

br.b2.5:                                          ; preds = %br.c2.5
  store i8 -63, ptr %b.rn.dst166, align 1
  %br.dst1167 = getelementptr i8, ptr %b.rn.dst166, i64 1
  store i8 -100, ptr %br.dst1167, align 1
  br label %br.done.5

br.c3.5:                                          ; preds = %br.c2.5
  br i1 true, label %br.b3.5, label %br.b4.5

br.b3.5:                                          ; preds = %br.c3.5
  store i8 -32, ptr %b.rn.dst166, align 1
  %br.dst1.3168 = getelementptr i8, ptr %b.rn.dst166, i64 1
  store i8 -127, ptr %br.dst1.3168, align 1
  %br.dst2.3169 = getelementptr i8, ptr %b.rn.dst166, i64 2
  store i8 -100, ptr %br.dst2.3169, align 1
  br label %br.done.5

br.b4.5:                                          ; preds = %br.c3.5
  store i8 -16, ptr %b.rn.dst166, align 1
  %br.dst1.4170 = getelementptr i8, ptr %b.rn.dst166, i64 1
  store i8 -128, ptr %br.dst1.4170, align 1
  %br.dst2.4171 = getelementptr i8, ptr %b.rn.dst166, i64 2
  store i8 -127, ptr %br.dst2.4171, align 1
  %br.dst3.4172 = getelementptr i8, ptr %b.rn.dst166, i64 3
  store i8 -100, ptr %br.dst3.4172, align 1
  br label %br.done.5

br.done.5:                                        ; preds = %br.b4.5, %br.b3.5, %br.b2.5, %br.b1.5
  %br.nul173 = getelementptr i8, ptr %b.rn.data165, i64 %sum135
  store i8 0, ptr %br.nul173, align 1
  %b.len.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load131, i32 0, i32 0
  store i64 %sum135, ptr %b.len.gep174, align 8
  br label %choice.exit130

b.freeze.check:                                   ; preds = %choice.exit130
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data177, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data177, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data177, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur178 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 %b.freeze.len176)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data177, i64 %b.freeze.len176, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit130
  %b.freeze.data179 = phi ptr [ %b.freeze.data177, %choice.exit130 ], [ %b.freeze.data177, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur180 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len176, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data179, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load175, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load175, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load175, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"lexer::decode_raw_esc"(ptr %0) #1 {
entry:
  %var.take3 = alloca i1, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.6 = alloca i64, align 8
  %loop.idx.6 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.total = alloca i64, align 8
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.total, align 8
  %var.load5 = load i64, ptr %var.total, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load5, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load5
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len6

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.buf.len6:                                       ; preds = %str_overflow_abort, %str_ok
  %arena.cur7 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  store i64 0, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.6, align 8
  br label %loop.header.6

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len6

loop.header.6:                                    ; preds = %loop.latch.6, %b.buf.len6
  %counter.load = load i64, ptr %loop.idx.6, align 8
  br label %loop.body.6

loop.body.6:                                      ; preds = %loop.header.6
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.6, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load8 = load i64, ptr %"var.i'", align 8
  %var.load9 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load8, %var.load9
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.6:                                  ; No predecessors!
  br label %loop.exit.6

loop.latch.6:                                     ; preds = %choice.exit82
  %step.val = load i64, ptr %loop.step.6, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.6, align 8
  br label %loop.header.6

loop.exit.6:                                      ; preds = %choice.then, %loop.exit.nat.6
  %var.load176 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load176, i32 0, i32 0
  %b.freeze.len177 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load176, i32 0, i32 1
  %b.freeze.data178 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then:                                      ; preds = %loop.body.6
  br label %loop.exit.6

choice.exit:                                      ; preds = %loop.body.6
  %var.load10 = load ptr, ptr %var.raw, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

str_gen_check15:                                  ; preds = %choice.exit
  %arena.gen18 = call ptr @dva_arena_current()
  %arena.gen19 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen18, i32 0, i32 4
  %arena.gen20 = load i64, ptr %arena.gen19, align 8
  %str.tag.match21 = icmp eq i64 %str.tag13, %arena.gen20
  br i1 %str.tag.match21, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %var.load23 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load23, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale17:                                      ; preds = %str_gen_check15
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

idx_big_check:                                    ; preds = %str_ok16
  %idx.big = icmp sge i64 %var.load23, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data22, i64 %var.load23
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp24 = icmp eq i64 %s.byte.val, 61
  br i1 %cmptmp24, label %and.7.then, label %and.7.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok16
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.7.then:                                       ; preds = %idx_ok
  %var.load25 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load25, 2
  %var.load26 = load i64, ptr %var.total, align 8
  %cmptmp27 = icmp slt i64 %addtmp, %var.load26
  br label %and.7.exit

and.7.else:                                       ; preds = %idx_ok
  br label %and.7.exit

and.7.exit:                                       ; preds = %and.7.else, %and.7.then
  %and.7.phi = phi i1 [ %cmptmp27, %and.7.then ], [ %cmptmp24, %and.7.else ]
  br i1 %and.7.phi, label %and.8.then, label %and.8.else

and.8.then:                                       ; preds = %and.7.exit
  %var.load28 = load ptr, ptr %var.raw, align 8
  %s.read.len29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len30 = load i64, ptr %s.read.len29, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %str.tag32 = lshr i64 %s.read.len30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

and.8.else:                                       ; preds = %and.7.exit
  br label %and.8.exit

and.8.exit:                                       ; preds = %and.8.else, %idx_ok47
  %and.8.phi = phi i1 [ %cmptmp53, %idx_ok47 ], [ %and.7.phi, %and.8.else ]
  br i1 %and.8.phi, label %and.9.then, label %and.9.else

str_gen_check34:                                  ; preds = %and.8.then
  %arena.gen37 = call ptr @dva_arena_current()
  %arena.gen38 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen37, i32 0, i32 4
  %arena.gen39 = load i64, ptr %arena.gen38, align 8
  %str.tag.match40 = icmp eq i64 %str.tag32, %arena.gen39
  br i1 %str.tag.match40, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %and.8.then
  %s.read.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data42 = load ptr, ptr %s.read.data41, align 8
  %var.load43 = load i64, ptr %"var.i'", align 8
  %addtmp44 = add i64 %var.load43, 1
  %idx.neg45 = icmp slt i64 %addtmp44, 0
  br i1 %idx.neg45, label %idx_oob48, label %idx_big_check46

str_stale36:                                      ; preds = %str_gen_check34
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

idx_big_check46:                                  ; preds = %str_ok35
  %idx.big49 = icmp sge i64 %addtmp44, %s.read.len31
  br i1 %idx.big49, label %idx_oob48, label %idx_ok47

idx_ok47:                                         ; preds = %idx_oob48, %idx_big_check46
  %s.byte.gep50 = getelementptr i8, ptr %s.read.data42, i64 %addtmp44
  %s.byte51 = load i8, ptr %s.byte.gep50, align 1
  %s.byte.val52 = zext i8 %s.byte51 to i64
  %cmptmp53 = icmp eq i64 %s.byte.val52, 92
  br label %and.8.exit

idx_oob48:                                        ; preds = %idx_big_check46, %str_ok35
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok47

and.9.then:                                       ; preds = %and.8.exit
  %var.load54 = load ptr, ptr %var.raw, align 8
  %s.read.len55 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %s.read.len56 = load i64, ptr %s.read.len55, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %str.tag58 = lshr i64 %s.read.len56, 48
  %str.immortal59 = icmp eq i64 %str.tag58, 0
  br i1 %str.immortal59, label %str_ok61, label %str_gen_check60

and.9.else:                                       ; preds = %and.8.exit
  br label %and.9.exit

and.9.exit:                                       ; preds = %and.9.else, %idx_ok73
  %and.9.phi = phi i1 [ %cmptmp79, %idx_ok73 ], [ %and.8.phi, %and.9.else ]
  store i1 %and.9.phi, ptr %var.take3, align 1
  %var.load80 = load i1, ptr %var.take3, align 1
  br i1 %var.load80, label %choice.then81, label %choice.else

str_gen_check60:                                  ; preds = %and.9.then
  %arena.gen63 = call ptr @dva_arena_current()
  %arena.gen64 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen63, i32 0, i32 4
  %arena.gen65 = load i64, ptr %arena.gen64, align 8
  %str.tag.match66 = icmp eq i64 %str.tag58, %arena.gen65
  br i1 %str.tag.match66, label %str_ok61, label %str_stale62

str_ok61:                                         ; preds = %str_stale62, %str_gen_check60, %and.9.then
  %s.read.data67 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %s.read.data68 = load ptr, ptr %s.read.data67, align 8
  %var.load69 = load i64, ptr %"var.i'", align 8
  %addtmp70 = add i64 %var.load69, 2
  %idx.neg71 = icmp slt i64 %addtmp70, 0
  br i1 %idx.neg71, label %idx_oob74, label %idx_big_check72

str_stale62:                                      ; preds = %str_gen_check60
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok61

idx_big_check72:                                  ; preds = %str_ok61
  %idx.big75 = icmp sge i64 %addtmp70, %s.read.len57
  br i1 %idx.big75, label %idx_oob74, label %idx_ok73

idx_ok73:                                         ; preds = %idx_oob74, %idx_big_check72
  %s.byte.gep76 = getelementptr i8, ptr %s.read.data68, i64 %addtmp70
  %s.byte77 = load i8, ptr %s.byte.gep76, align 1
  %s.byte.val78 = zext i8 %s.byte77 to i64
  %cmptmp79 = icmp eq i64 %s.byte.val78, 41
  br label %and.9.exit

idx_oob74:                                        ; preds = %idx_big_check72, %str_ok61
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok73

choice.then81:                                    ; preds = %and.9.exit
  %b.load = load ptr, ptr %var.buf, align 8
  %app.str.len = load i64, ptr @str.9.struct, align 8
  %app.str.len83 = and i64 %app.str.len, 281474976710655
  %str.tag84 = lshr i64 %app.str.len, 48
  %str.immortal85 = icmp eq i64 %str.tag84, 0
  br i1 %str.immortal85, label %str_ok87, label %str_gen_check86

choice.else:                                      ; preds = %and.9.exit
  %var.load110 = load ptr, ptr %var.raw, align 8
  %s.read.len111 = getelementptr inbounds { i64, ptr }, ptr %var.load110, i32 0, i32 0
  %s.read.len112 = load i64, ptr %s.read.len111, align 8
  %s.read.len113 = and i64 %s.read.len112, 281474976710655
  %str.tag114 = lshr i64 %s.read.len112, 48
  %str.immortal115 = icmp eq i64 %str.tag114, 0
  br i1 %str.immortal115, label %str_ok117, label %str_gen_check116

choice.exit82:                                    ; preds = %b.push_done, %b.grow_done
  br label %loop.latch.6

str_gen_check86:                                  ; preds = %choice.then81
  %arena.gen89 = call ptr @dva_arena_current()
  %arena.gen90 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen89, i32 0, i32 4
  %arena.gen91 = load i64, ptr %arena.gen90, align 8
  %str.tag.match92 = icmp eq i64 %str.tag84, %arena.gen91
  br i1 %str.tag.match92, label %str_ok87, label %str_stale88

str_ok87:                                         ; preds = %str_stale88, %str_gen_check86, %choice.then81
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len93 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len93, i64 %app.str.len83)
  %sum94 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf95 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf95, label %str_overflow_abort97, label %b.app.new.len96

str_stale88:                                      ; preds = %str_gen_check86
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok87

b.app.new.len96:                                  ; preds = %str_overflow_abort97, %str_ok87
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap98 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap98, %sum94
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort97:                             ; preds = %str_ok87
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len96

b.grow2:                                          ; preds = %b.app.new.len96
  %b.cap2 = mul i64 %b.cap98, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum94
  %b.new.cap = select i1 %b.cap.need, i64 %sum94, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len299 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2100 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum101 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf102 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf102, label %str_overflow_abort104, label %b.new.buf.len2103

b.nogrow2:                                        ; preds = %b.app.new.len96
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2103
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data106 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data106, i64 %b.app.cur.len93
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len83, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data106, i64 %sum94
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum94, ptr %b.len.gep107, align 8
  %var.load108 = load i64, ptr %"var.i'", align 8
  %addtmp109 = add i64 %var.load108, 3
  store i64 %addtmp109, ptr %"var.i'", align 8
  br label %choice.exit82

b.new.buf.len2103:                                ; preds = %str_overflow_abort104, %b.grow2
  %arena.cur105 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 %sum101)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2100, i64 %b.cur.len299, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len299
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort104:                            ; preds = %b.grow2
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2103

str_gen_check116:                                 ; preds = %choice.else
  %arena.gen119 = call ptr @dva_arena_current()
  %arena.gen120 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen119, i32 0, i32 4
  %arena.gen121 = load i64, ptr %arena.gen120, align 8
  %str.tag.match122 = icmp eq i64 %str.tag114, %arena.gen121
  br i1 %str.tag.match122, label %str_ok117, label %str_stale118

str_ok117:                                        ; preds = %str_stale118, %str_gen_check116, %choice.else
  %s.read.data123 = getelementptr inbounds { i64, ptr }, ptr %var.load110, i32 0, i32 1
  %s.read.data124 = load ptr, ptr %s.read.data123, align 8
  %var.load125 = load i64, ptr %"var.i'", align 8
  %idx.neg126 = icmp slt i64 %var.load125, 0
  br i1 %idx.neg126, label %idx_oob129, label %idx_big_check127

str_stale118:                                     ; preds = %str_gen_check116
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok117

idx_big_check127:                                 ; preds = %str_ok117
  %idx.big130 = icmp sge i64 %var.load125, %s.read.len113
  br i1 %idx.big130, label %idx_oob129, label %idx_ok128

idx_ok128:                                        ; preds = %idx_oob129, %idx_big_check127
  %s.byte.gep131 = getelementptr i8, ptr %s.read.data124, i64 %var.load125
  %s.byte132 = load i8, ptr %s.byte.gep131, align 1
  %s.byte.val133 = zext i8 %s.byte132 to i64
  %b.load134 = load ptr, ptr %var.buf, align 8
  %var.load135 = load ptr, ptr %var.raw, align 8
  %s.read.len136 = getelementptr inbounds { i64, ptr }, ptr %var.load135, i32 0, i32 0
  %s.read.len137 = load i64, ptr %s.read.len136, align 8
  %s.read.len138 = and i64 %s.read.len137, 281474976710655
  %str.tag139 = lshr i64 %s.read.len137, 48
  %str.immortal140 = icmp eq i64 %str.tag139, 0
  br i1 %str.immortal140, label %str_ok142, label %str_gen_check141

idx_oob129:                                       ; preds = %idx_big_check127, %str_ok117
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok128

str_gen_check141:                                 ; preds = %idx_ok128
  %arena.gen144 = call ptr @dva_arena_current()
  %arena.gen145 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen144, i32 0, i32 4
  %arena.gen146 = load i64, ptr %arena.gen145, align 8
  %str.tag.match147 = icmp eq i64 %str.tag139, %arena.gen146
  br i1 %str.tag.match147, label %str_ok142, label %str_stale143

str_ok142:                                        ; preds = %str_stale143, %str_gen_check141, %idx_ok128
  %s.read.data148 = getelementptr inbounds { i64, ptr }, ptr %var.load135, i32 0, i32 1
  %s.read.data149 = load ptr, ptr %s.read.data148, align 8
  %var.load150 = load i64, ptr %"var.i'", align 8
  %idx.neg151 = icmp slt i64 %var.load150, 0
  br i1 %idx.neg151, label %idx_oob154, label %idx_big_check152

str_stale143:                                     ; preds = %str_gen_check141
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok142

idx_big_check152:                                 ; preds = %str_ok142
  %idx.big155 = icmp sge i64 %var.load150, %s.read.len138
  br i1 %idx.big155, label %idx_oob154, label %idx_ok153

idx_ok153:                                        ; preds = %idx_oob154, %idx_big_check152
  %s.byte.gep156 = getelementptr i8, ptr %s.read.data149, i64 %var.load150
  %s.byte157 = load i8, ptr %s.byte.gep156, align 1
  %s.byte.val158 = zext i8 %s.byte157 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val158, 0
  %b.b.le255 = icmp sle i64 %s.byte.val158, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob154:                                       ; preds = %idx_big_check152, %str_ok142
  %15 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok153

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok153
  %b.byte.i8 = trunc i64 %s.byte.val158 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 0
  %b.len159 = load i64, ptr %b.len, align 8
  %b.cap160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 2
  %b.cap161 = load i64, ptr %b.cap160, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 1
  %b.data162 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len159, %b.cap161
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok153
  %16 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2163 = mul i64 %b.cap161, 2
  %b.cap.small164 = icmp slt i64 %b.cap2163, 16
  %b.new.cap165 = select i1 %b.cap.small164, i64 16, i64 %b.cap2163
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap165, i64 1)
  %sum166 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf167 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf167, label %str_overflow_abort169, label %b.new.buf.len168

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len168
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 1
  %b.cur.data171 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 0
  %b.cur.len172 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data171, i64 %b.cur.len172
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len172, 1
  %b.nul = getelementptr i8, ptr %b.cur.data171, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep173 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep173, align 8
  %var.load174 = load i64, ptr %"var.i'", align 8
  %addtmp175 = add i64 %var.load174, 1
  store i64 %addtmp175, ptr %"var.i'", align 8
  br label %choice.exit82

b.new.buf.len168:                                 ; preds = %str_overflow_abort169, %b.grow
  %arena.cur170 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 %sum166)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data162, i64 %b.len159, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len159
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 2
  store i64 %b.new.cap165, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort169:                            ; preds = %b.grow
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len168

b.freeze.check:                                   ; preds = %loop.exit.6
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data178, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data178, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data178, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur179 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 %b.freeze.len177)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data178, i64 %b.freeze.len177, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.6
  %b.freeze.data180 = phi ptr [ %b.freeze.data178, %loop.exit.6 ], [ %b.freeze.data178, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur181 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len177, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data180, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load176, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load176, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load176, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define i1 @"lexer::is_delim"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load, 40
  %val.match1 = icmp eq i64 %var.load, 41
  %case.or = or i1 %val.match, %val.match1
  %val.match2 = icmp eq i64 %var.load, 91
  %case.or3 = or i1 %case.or, %val.match2
  %val.match4 = icmp eq i64 %var.load, 93
  %case.or5 = or i1 %case.or3, %val.match4
  %val.match6 = icmp eq i64 %var.load, 123
  %case.or7 = or i1 %case.or5, %val.match6
  %val.match8 = icmp eq i64 %var.load, 125
  %case.or9 = or i1 %case.or7, %val.match8
  %val.match10 = icmp eq i64 %var.load, 44
  %case.or11 = or i1 %case.or9, %val.match10
  %val.match12 = icmp eq i64 %var.load, 59
  %case.or13 = or i1 %case.or11, %val.match12
  br i1 %case.or13, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"lexer::is_id_start"(i64 %0) #1 {
entry:
  %var.r = alloca i64, align 8
  store i64 %0, ptr %var.r, align 8
  %var.load = load i64, ptr %var.r, align 8
  %call.res = call i1 @"unicode::is_alpha"(i64 %var.load)
  %val.match = icmp eq i64 %var.load, 95
  %case.or = or i1 %call.res, %val.match
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

declare i1 @"unicode::is_alpha"(i64) #1

define i1 @"lexer::is_id_char"(i64 %0) #1 {
entry:
  %var.r = alloca i64, align 8
  store i64 %0, ptr %var.r, align 8
  %var.load = load i64, ptr %var.r, align 8
  %call.res = call i1 @"lexer::is_id_start"(i64 %var.load)
  %call.res1 = call i1 @"unicode::is_digit"(i64 %var.load)
  %case.or = or i1 %call.res, %call.res1
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

declare i1 @"unicode::is_digit"(i64) #1

define i1 @"lexer::is_special"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load, 34
  %val.match1 = icmp eq i64 %var.load, 39
  %case.or = or i1 %val.match, %val.match1
  %val.match2 = icmp eq i64 %var.load, 35
  %case.or3 = or i1 %case.or, %val.match2
  %val.match4 = icmp eq i64 %var.load, 0
  %case.or5 = or i1 %case.or3, %val.match4
  %call.res = call i1 @"lexer::is_delim"(i64 %var.load)
  %case.or6 = or i1 %case.or5, %call.res
  %call.res7 = call i1 @"lexer::is_ws"(i64 %var.load)
  %case.or8 = or i1 %case.or6, %call.res7
  %call.res9 = call i1 @"lexer::is_id_char"(i64 %var.load)
  %case.or10 = or i1 %case.or8, %call.res9
  br i1 %case.or10, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ false, %choice.case ], [ true, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i64 @"lexer::scan_while"(ptr %0, ptr %1) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %var.pred = alloca ptr, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store ptr %1, ptr %var.pred, align 8
  store i64 0, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.header.10:                                   ; preds = %loop.latch.10, %entry
  %counter.load = load i64, ptr %loop.idx.10, align 8
  br label %loop.body.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.10:                                 ; No predecessors!
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %choice.exit10
  %step.val = load i64, ptr %loop.step.10, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %choice.else, %choice.then, %loop.exit.nat.10
  %var.load15 = load ptr, ptr %var.lx, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 1
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  ret i64 %fld.load17

str_gen_check:                                    ; preds = %loop.body.10
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.10
  %cmptmp = icmp sge i64 %fld.load, %str.len.query5
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %loop.exit.10

choice.exit:                                      ; preds = %str_ok
  %clo.load = load ptr, ptr %var.pred, align 8
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 0
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %clo.fn.gep, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %var.load8 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load8, i64 0)
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

clo.cap:                                          ; preds = %choice.exit
  %clo.cap.res = call i1 %clo.fn.load(ptr %clo.env.load, i64 %call.res)
  br label %clo.merge

clo.plain:                                        ; preds = %choice.exit
  %clo.plain.res = call i1 %clo.fn.load(i64 %call.res)
  br label %clo.merge

clo.merge:                                        ; preds = %clo.plain, %clo.cap
  %clo.res = phi i1 [ %clo.cap.res, %clo.cap ], [ %clo.plain.res, %clo.plain ]
  br i1 %clo.res, label %choice.then9, label %choice.else

choice.then9:                                     ; preds = %clo.merge
  %var.load11 = load ptr, ptr %var.lx, align 8
  %var.load12 = load ptr, ptr %var.lx, align 8
  %call.res13 = call i64 @"lexer::pk"(ptr %var.load12, i64 0)
  %call.res14 = call i64 @"lexer::adv"(ptr %var.load11, i64 %call.res13)
  br label %choice.exit10

choice.else:                                      ; preds = %clo.merge
  br label %loop.exit.10

choice.exit10:                                    ; preds = %choice.then9
  br label %loop.latch.10
}

define i64 @"lexer::skip_digits"(ptr %0, i64 %1) #1 {
entry:
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::scan_while"(ptr %var.load, ptr @clo.const.18)
  ret i64 %call.res
}

define internal i1 @"$anon_fn.87"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"unicode::is_digit"(i64 %var.load)
  ret i1 %call.res
}

define ptr @"lexer::scan_id"(ptr %0, i64 %1) #1 {
entry:
  %var.r2 = alloca i64, align 8
  %var._28 = alloca i64, align 8
  %var._i27 = alloca i64, align 8
  %loop.step.12 = alloca i64, align 8
  %loop.idx.12 = alloca i64, align 8
  %var.r = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
  %"var.ncol'" = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.total, align 8
  %var.load5 = load ptr, ptr %var.lx, align 8
  %fld.gep6 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 1
  %fld.load7 = load i64, ptr %fld.gep6, align 8
  store i64 %fld.load7, ptr %"var.i'", align 8
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 3
  %fld.load10 = load i64, ptr %fld.gep9, align 8
  store i64 %fld.load10, ptr %"var.ncol'", align 8
  store i64 0, ptr %loop.idx.11, align 8
  br label %loop.header.11

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.11:                                   ; preds = %loop.latch.11, %str_ok
  %counter.load = load i64, ptr %loop.idx.11, align 8
  br label %loop.body.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.11, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load11 = load i64, ptr %"var.i'", align 8
  %var.load12 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load11, %var.load12
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.11:                                 ; No predecessors!
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %choice.exit20
  %step.val = load i64, ptr %loop.step.11, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %choice.else, %choice.then, %loop.exit.nat.11
  store i64 0, ptr %loop.idx.12, align 8
  br label %loop.header.12

choice.then:                                      ; preds = %loop.body.11
  br label %loop.exit.11

choice.exit:                                      ; preds = %loop.body.11
  %var.load13 = load ptr, ptr %var.lx, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load13, i32 0, i32 0
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %var.load16 = load i64, ptr %"var.i'", align 8
  %call.res = call i64 @"unicode::decode_rune"(ptr %fld.load15, i64 %var.load16)
  store i64 %call.res, ptr %var.r, align 8
  %var.load17 = load i64, ptr %var.r, align 8
  %call.res18 = call i1 @"lexer::is_id_char"(i64 %var.load17)
  br i1 %call.res18, label %choice.then19, label %choice.else

choice.then19:                                    ; preds = %choice.exit
  %var.load21 = load i64, ptr %"var.i'", align 8
  %var.load22 = load i64, ptr %var.r, align 8
  %r.cmp1 = icmp slt i64 %var.load22, 128
  %r.cmp2 = icmp slt i64 %var.load22, 2048
  %r.cmp3 = icmp slt i64 %var.load22, 65536
  %r.w3 = select i1 %r.cmp3, i64 3, i64 4
  %r.w2 = select i1 %r.cmp2, i64 2, i64 %r.w3
  %r.width = select i1 %r.cmp1, i64 1, i64 %r.w2
  %addtmp = add i64 %var.load21, %r.width
  store i64 %addtmp, ptr %"var.i'", align 8
  %var.load23 = load i64, ptr %"var.ncol'", align 8
  %addtmp24 = add i64 %var.load23, 1
  store i64 %addtmp24, ptr %"var.ncol'", align 8
  br label %choice.exit20

choice.else:                                      ; preds = %choice.exit
  br label %loop.exit.11

choice.exit20:                                    ; preds = %choice.then19
  br label %loop.latch.11

loop.header.12:                                   ; preds = %loop.latch.12, %loop.exit.11
  %counter.load25 = load i64, ptr %loop.idx.12, align 8
  br label %loop.body.12

loop.body.12:                                     ; preds = %loop.header.12
  %loop.rel.i26 = sub i64 %counter.load25, 0
  store i64 1, ptr %loop.step.12, align 8
  store i64 %loop.rel.i26, ptr %var._i27, align 8
  store i64 %counter.load25, ptr %var._28, align 8
  %var.load29 = load i64, ptr %"var.i'", align 8
  %var.load30 = load i64, ptr %var.total, align 8
  %cmptmp31 = icmp sge i64 %var.load29, %var.load30
  br i1 %cmptmp31, label %choice.then32, label %choice.exit33

loop.exit.nat.12:                                 ; No predecessors!
  br label %loop.exit.12

loop.latch.12:                                    ; preds = %choice.exit43
  %step.val48 = load i64, ptr %loop.step.12, align 8
  %loop.next49 = add i64 %counter.load25, %step.val48
  store i64 %loop.next49, ptr %loop.idx.12, align 8
  br label %loop.header.12

loop.exit.12:                                     ; preds = %choice.else42, %choice.then32, %loop.exit.nat.12
  %var.load50 = load ptr, ptr %var.lx, align 8
  %var.load51 = load i64, ptr %"var.i'", align 8
  %fld.gep52 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load50, i32 0, i32 1
  store i64 %var.load51, ptr %fld.gep52, align 8
  %var.load53 = load ptr, ptr %var.lx, align 8
  %var.load54 = load i64, ptr %"var.ncol'", align 8
  %fld.gep55 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load53, i32 0, i32 3
  store i64 %var.load54, ptr %fld.gep55, align 8
  %var.load56 = load ptr, ptr %var.lx, align 8
  %fld.gep57 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load56, i32 0, i32 0
  %fld.load58 = load ptr, ptr %fld.gep57, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load58, i32 0, i32 0
  %s.read.len59 = load i64, ptr %s.read.len, align 8
  %s.read.len60 = and i64 %s.read.len59, 281474976710655
  %str.tag61 = lshr i64 %s.read.len59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

choice.then32:                                    ; preds = %loop.body.12
  br label %loop.exit.12

choice.exit33:                                    ; preds = %loop.body.12
  %var.load34 = load ptr, ptr %var.lx, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load34, i32 0, i32 0
  %fld.load36 = load ptr, ptr %fld.gep35, align 8
  %var.load37 = load i64, ptr %"var.i'", align 8
  %call.res38 = call i64 @"unicode::decode_rune"(ptr %fld.load36, i64 %var.load37)
  store i64 %call.res38, ptr %var.r2, align 8
  %var.load39 = load i64, ptr %var.r2, align 8
  %cmptmp40 = icmp eq i64 %var.load39, 39
  br i1 %cmptmp40, label %choice.then41, label %choice.else42

choice.then41:                                    ; preds = %choice.exit33
  %var.load44 = load i64, ptr %"var.i'", align 8
  %addtmp45 = add i64 %var.load44, 1
  store i64 %addtmp45, ptr %"var.i'", align 8
  %var.load46 = load i64, ptr %"var.ncol'", align 8
  %addtmp47 = add i64 %var.load46, 1
  store i64 %addtmp47, ptr %"var.ncol'", align 8
  br label %choice.exit43

choice.else42:                                    ; preds = %choice.exit33
  br label %loop.exit.12

choice.exit43:                                    ; preds = %choice.then41
  br label %loop.latch.12

str_gen_check63:                                  ; preds = %loop.exit.12
  %arena.gen66 = call ptr @dva_arena_current()
  %arena.gen67 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen66, i32 0, i32 4
  %arena.gen68 = load i64, ptr %arena.gen67, align 8
  %str.tag.match69 = icmp eq i64 %str.tag61, %arena.gen68
  br i1 %str.tag.match69, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %loop.exit.12
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load58, i32 0, i32 1
  %s.read.data70 = load ptr, ptr %s.read.data, align 8
  %var.load71 = load i64, ptr %var.start, align 8
  %var.load72 = load i64, ptr %"var.i'", align 8
  %start.is_neg = icmp slt i64 %var.load71, 0
  %rel.start = add i64 %s.read.len60, %var.load71
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load71
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len60
  %final.start = select i1 %start.gt.len, i64 %s.read.len60, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load72, 0
  %rel.end = add i64 %s.read.len60, %var.load72
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load72
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len60
  %final.end = select i1 %end.gt.len, i64 %s.read.len60, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data70, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  ret ptr %str.view

str_stale65:                                      ; preds = %str_gen_check63
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64
}

define i64 @"lexer::scan_int_suffix"(ptr %0, i64 %1) #1 {
entry:
  %var.matches = alloca i1, align 1
  %var.fits = alloca i1, align 1
  %var.n = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %loop.step.13 = alloca i64, align 8
  %loop.idx.13 = alloca i64, align 8
  %"var.got'" = alloca i64, align 8
  %var.suffixes = alloca ptr, align 8
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.10.struct, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr @str.11.struct, ptr %rec.fld1, align 8
  %rec.fld2 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.12.struct, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr @str.13.struct, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr @str.14.struct, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 5
  store ptr @str.15.struct, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr @str.16.struct, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.17.struct, ptr %rec.fld7, align 8
  store ptr %rec.alloc, ptr %var.suffixes, align 8
  store i64 0, ptr %"var.got'", align 8
  %var.load = load ptr, ptr %var.suffixes, align 8
  store i64 0, ptr %loop.idx.13, align 8
  br label %loop.header.13

loop.header.13:                                   ; preds = %loop.latch.13, %entry
  %counter.load = load i64, ptr %loop.idx.13, align 8
  %loop.cond = icmp slt i64 %counter.load, 8
  br i1 %loop.cond, label %loop.body.13, label %loop.exit.nat.13

loop.body.13:                                     ; preds = %loop.header.13
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.13, align 8
  %rec.elem.gep = getelementptr ptr, ptr %var.load, i64 %counter.load
  %rec.elem.val = load ptr, ptr %rec.elem.gep, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %rec.elem.val, ptr %var._, align 8
  store ptr %rec.elem.val, ptr %var.s, align 8
  %var.load8 = load i64, ptr %"var.got'", align 8
  %val.match = icmp eq i64 %var.load8, 1
  br i1 %val.match, label %choice.case, label %choice.next

loop.exit.nat.13:                                 ; preds = %loop.header.13
  br label %loop.exit.13

loop.latch.13:                                    ; preds = %choice.exit82
  %step.val = load i64, ptr %loop.step.13, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.13, align 8
  br label %loop.header.13

loop.exit.13:                                     ; preds = %loop.exit.nat.13
  %var.load97 = load i64, ptr %"var.got'", align 8
  ret i64 %var.load97

choice.exit:                                      ; preds = %choice.next, %choice.case
  %var.load9 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %str.len.query10 = load i64, ptr %str.len.query, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %str.tag = lshr i64 %str.len.query10, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.case:                                      ; preds = %loop.body.13
  br label %choice.exit

choice.next:                                      ; preds = %loop.body.13
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen13
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  store i64 %str.len.query11, ptr %var.n, align 8
  %var.load14 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load14, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load15 = load i64, ptr %var.n, align 8
  %addtmp = add i64 %fld.load, %var.load15
  %var.load16 = load ptr, ptr %var.lx, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %str.len.query19 = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 0
  %str.len.query20 = load i64, ptr %str.len.query19, align 8
  %str.len.query21 = and i64 %str.len.query20, 281474976710655
  %str.tag22 = lshr i64 %str.len.query20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check24:                                  ; preds = %str_ok
  %arena.gen27 = call ptr @dva_arena_current()
  %arena.gen28 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen27, i32 0, i32 4
  %arena.gen29 = load i64, ptr %arena.gen28, align 8
  %str.tag.match30 = icmp eq i64 %str.tag22, %arena.gen29
  br i1 %str.tag.match30, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %str_ok
  %cmptmp = icmp sle i64 %addtmp, %str.len.query21
  store i1 %cmptmp, ptr %var.fits, align 1
  %var.load31 = load i1, ptr %var.fits, align 1
  br i1 %var.load31, label %and.14.then, label %and.14.else

str_stale26:                                      ; preds = %str_gen_check24
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

and.14.then:                                      ; preds = %str_ok25
  %var.load32 = load ptr, ptr %var.lx, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load32, i32 0, i32 0
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load34, i32 0, i32 0
  %s.read.len35 = load i64, ptr %s.read.len, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %str.tag37 = lshr i64 %s.read.len35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

and.14.else:                                      ; preds = %str_ok25
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %str.eq.merge
  %and.14.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %var.load31, %and.14.else ]
  store i1 %and.14.phi, ptr %var.matches, align 1
  %var.load81 = load i1, ptr %var.matches, align 1
  br i1 %var.load81, label %choice.then, label %choice.exit82

str_gen_check39:                                  ; preds = %and.14.then
  %arena.gen42 = call ptr @dva_arena_current()
  %arena.gen43 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen42, i32 0, i32 4
  %arena.gen44 = load i64, ptr %arena.gen43, align 8
  %str.tag.match45 = icmp eq i64 %str.tag37, %arena.gen44
  br i1 %str.tag.match45, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %and.14.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load34, i32 0, i32 1
  %s.read.data46 = load ptr, ptr %s.read.data, align 8
  %var.load47 = load ptr, ptr %var.lx, align 8
  %fld.gep48 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load47, i32 0, i32 1
  %fld.load49 = load i64, ptr %fld.gep48, align 8
  %var.load50 = load ptr, ptr %var.lx, align 8
  %fld.gep51 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load50, i32 0, i32 1
  %fld.load52 = load i64, ptr %fld.gep51, align 8
  %var.load53 = load i64, ptr %var.n, align 8
  %addtmp54 = add i64 %fld.load52, %var.load53
  %start.is_neg = icmp slt i64 %fld.load49, 0
  %rel.start = add i64 %s.read.len36, %fld.load49
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load49
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len36
  %final.start = select i1 %start.gt.len, i64 %s.read.len36, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp54, 0
  %rel.end = add i64 %s.read.len36, %addtmp54
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp54
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len36
  %final.end = select i1 %end.gt.len, i64 %s.read.len36, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data46, i64 %final.start
  %arena.cur55 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load56 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len57 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len58 = and i64 %eq.lhs.len57, 281474976710655
  %str.tag59 = lshr i64 %eq.lhs.len57, 48
  %str.immortal60 = icmp eq i64 %str.tag59, 0
  br i1 %str.immortal60, label %str_ok62, label %str_gen_check61

str_stale41:                                      ; preds = %str_gen_check39
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

str_gen_check61:                                  ; preds = %str_ok40
  %arena.gen64 = call ptr @dva_arena_current()
  %arena.gen65 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen64, i32 0, i32 4
  %arena.gen66 = load i64, ptr %arena.gen65, align 8
  %str.tag.match67 = icmp eq i64 %str.tag59, %arena.gen66
  br i1 %str.tag.match67, label %str_ok62, label %str_stale63

str_ok62:                                         ; preds = %str_stale63, %str_gen_check61, %str_ok40
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %eq.rhs.len68 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len69 = and i64 %eq.rhs.len68, 281474976710655
  %str.tag70 = lshr i64 %eq.rhs.len68, 48
  %str.immortal71 = icmp eq i64 %str.tag70, 0
  br i1 %str.immortal71, label %str_ok73, label %str_gen_check72

str_stale63:                                      ; preds = %str_gen_check61
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok62

str_gen_check72:                                  ; preds = %str_ok62
  %arena.gen75 = call ptr @dva_arena_current()
  %arena.gen76 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen75, i32 0, i32 4
  %arena.gen77 = load i64, ptr %arena.gen76, align 8
  %str.tag.match78 = icmp eq i64 %str.tag70, %arena.gen77
  br i1 %str.tag.match78, label %str_ok73, label %str_stale74

str_ok73:                                         ; preds = %str_stale74, %str_gen_check72, %str_ok62
  %eq.len = icmp eq i64 %eq.lhs.len58, %eq.rhs.len69
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale74:                                      ; preds = %str_gen_check72
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok73

str.eq.then:                                      ; preds = %str_ok73
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data79 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %eq.rhs.data80 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data79, ptr %eq.rhs.data80, i64 %eq.lhs.len58)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok73
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.14.exit

choice.then:                                      ; preds = %and.14.exit
  %var.load83 = load ptr, ptr %var.lx, align 8
  %var.load84 = load ptr, ptr %var.lx, align 8
  %fld.gep85 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load84, i32 0, i32 1
  %fld.load86 = load i64, ptr %fld.gep85, align 8
  %var.load87 = load i64, ptr %var.n, align 8
  %addtmp88 = add i64 %fld.load86, %var.load87
  %fld.gep89 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load83, i32 0, i32 1
  store i64 %addtmp88, ptr %fld.gep89, align 8
  %var.load90 = load ptr, ptr %var.lx, align 8
  %var.load91 = load ptr, ptr %var.lx, align 8
  %fld.gep92 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load91, i32 0, i32 3
  %fld.load93 = load i64, ptr %fld.gep92, align 8
  %var.load94 = load i64, ptr %var.n, align 8
  %addtmp95 = add i64 %fld.load93, %var.load94
  %fld.gep96 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load90, i32 0, i32 3
  store i64 %addtmp95, ptr %fld.gep96, align 8
  store i64 1, ptr %"var.got'", align 8
  br label %choice.exit82

choice.exit82:                                    ; preds = %choice.then, %and.14.exit
  br label %loop.latch.13
}

define void @"lexer::scan_float_suffix"(ptr %0, i64 %1) #1 {
entry:
  %var.three = alloca i1, align 1
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 3
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sle i64 %addtmp, %str.len.query5
  br i1 %cmptmp, label %and.15.then, label %and.15.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.15.then:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

and.15.else:                                      ; preds = %str_ok
  br label %and.15.exit

and.15.exit:                                      ; preds = %and.15.else, %str.eq.merge
  %and.15.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.15.else ]
  store i1 %and.15.phi, ptr %var.three, align 1
  %var.load52 = load i1, ptr %var.three, align 1
  br i1 %var.load52, label %choice.then, label %choice.exit

str_gen_check15:                                  ; preds = %and.15.then
  %arena.gen18 = call ptr @dva_arena_current()
  %arena.gen19 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen18, i32 0, i32 4
  %arena.gen20 = load i64, ptr %arena.gen19, align 8
  %str.tag.match21 = icmp eq i64 %str.tag13, %arena.gen20
  br i1 %str.tag.match21, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %and.15.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %var.load23 = load ptr, ptr %var.lx, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load i64, ptr %fld.gep24, align 8
  %var.load26 = load ptr, ptr %var.lx, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load26, i32 0, i32 1
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %addtmp29 = add i64 %fld.load28, 3
  %start.is_neg = icmp slt i64 %fld.load25, 0
  %rel.start = add i64 %s.read.len12, %fld.load25
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load25
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp29, 0
  %rel.end = add i64 %s.read.len12, %addtmp29
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp29
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data22, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len30 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len31 = and i64 %eq.lhs.len30, 281474976710655
  %str.tag32 = lshr i64 %eq.lhs.len30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

str_stale17:                                      ; preds = %str_gen_check15
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

str_gen_check34:                                  ; preds = %str_ok16
  %arena.gen37 = call ptr @dva_arena_current()
  %arena.gen38 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen37, i32 0, i32 4
  %arena.gen39 = load i64, ptr %arena.gen38, align 8
  %str.tag.match40 = icmp eq i64 %str.tag32, %arena.gen39
  br i1 %str.tag.match40, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %str_ok16
  %eq.rhs.len = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len41 = and i64 %eq.rhs.len, 281474976710655
  %str.tag42 = lshr i64 %eq.rhs.len, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale36:                                      ; preds = %str_gen_check34
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

str_gen_check44:                                  ; preds = %str_ok35
  %arena.gen47 = call ptr @dva_arena_current()
  %arena.gen48 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen47, i32 0, i32 4
  %arena.gen49 = load i64, ptr %arena.gen48, align 8
  %str.tag.match50 = icmp eq i64 %str.tag42, %arena.gen49
  br i1 %str.tag.match50, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok35
  %eq.len = icmp eq i64 %eq.lhs.len31, %eq.rhs.len41
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale46:                                      ; preds = %str_gen_check44
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

str.eq.then:                                      ; preds = %str_ok45
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data51 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data51, ptr %eq.rhs.data, i64 %eq.lhs.len31)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok45
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.15.exit

choice.then:                                      ; preds = %and.15.exit
  %var.load53 = load ptr, ptr %var.lx, align 8
  %var.load54 = load ptr, ptr %var.lx, align 8
  %fld.gep55 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load54, i32 0, i32 1
  %fld.load56 = load i64, ptr %fld.gep55, align 8
  %addtmp57 = add i64 %fld.load56, 3
  %fld.gep58 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load53, i32 0, i32 1
  store i64 %addtmp57, ptr %fld.gep58, align 8
  %var.load59 = load ptr, ptr %var.lx, align 8
  %var.load60 = load ptr, ptr %var.lx, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load60, i32 0, i32 3
  %fld.load62 = load i64, ptr %fld.gep61, align 8
  %addtmp63 = add i64 %fld.load62, 3
  %fld.gep64 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load59, i32 0, i32 3
  store i64 %addtmp63, ptr %fld.gep64, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.15.exit
  %var.load65 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load65, i64 0)
  %val.match = icmp eq i64 %call.res, 102
  %val.match67 = icmp eq i64 %call.res, 70
  %case.or = or i1 %val.match, %val.match67
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit66:                                    ; preds = %choice.next, %choice.case
  ret void

choice.case:                                      ; preds = %choice.exit
  %var.load68 = load ptr, ptr %var.lx, align 8
  %var.load69 = load ptr, ptr %var.lx, align 8
  %fld.gep70 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load69, i32 0, i32 1
  %fld.load71 = load i64, ptr %fld.gep70, align 8
  %addtmp72 = add i64 %fld.load71, 1
  %fld.gep73 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load68, i32 0, i32 1
  store i64 %addtmp72, ptr %fld.gep73, align 8
  %var.load74 = load ptr, ptr %var.lx, align 8
  %var.load75 = load ptr, ptr %var.lx, align 8
  %fld.gep76 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load75, i32 0, i32 3
  %fld.load77 = load i64, ptr %fld.gep76, align 8
  %addtmp78 = add i64 %fld.load77, 1
  %fld.gep79 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load74, i32 0, i32 3
  store i64 %addtmp78, ptr %fld.gep79, align 8
  br label %choice.exit66

choice.next:                                      ; preds = %choice.exit
  br label %choice.exit66
}

define i1 @"lexer::radix_ok"(i64 %0, i64 %1) #1 {
entry:
  %var.hex = alloca i1, align 1
  %var.oct = alloca i1, align 1
  %var.bin = alloca i1, align 1
  %var.dec = alloca i1, align 1
  %var.is_x = alloca i1, align 1
  %var.is_o = alloca i1, align 1
  %var.is_b = alloca i1, align 1
  %var.kind = alloca i64, align 8
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  store i64 %1, ptr %var.kind, align 8
  %var.load = load i64, ptr %var.kind, align 8
  %cmptmp = icmp eq i64 %var.load, 98
  store i1 %cmptmp, ptr %var.is_b, align 1
  %var.load1 = load i64, ptr %var.kind, align 8
  %cmptmp2 = icmp eq i64 %var.load1, 111
  store i1 %cmptmp2, ptr %var.is_o, align 1
  %var.load3 = load i64, ptr %var.kind, align 8
  %cmptmp4 = icmp eq i64 %var.load3, 120
  store i1 %cmptmp4, ptr %var.is_x, align 1
  %var.load5 = load i64, ptr %var.c, align 8
  %cmptmp6 = icmp sge i64 %var.load5, 48
  br i1 %cmptmp6, label %and.16.then, label %and.16.else

and.16.then:                                      ; preds = %entry
  %var.load7 = load i64, ptr %var.c, align 8
  %cmptmp8 = icmp sle i64 %var.load7, 57
  br label %and.16.exit

and.16.else:                                      ; preds = %entry
  br label %and.16.exit

and.16.exit:                                      ; preds = %and.16.else, %and.16.then
  %and.16.phi = phi i1 [ %cmptmp8, %and.16.then ], [ %cmptmp6, %and.16.else ]
  store i1 %and.16.phi, ptr %var.dec, align 1
  %var.load9 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load9, 48
  %val.match10 = icmp eq i64 %var.load9, 49
  %case.or = or i1 %val.match, %val.match10
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.bin, align 1
  %var.load11 = load i64, ptr %var.c, align 8
  %cmptmp12 = icmp sge i64 %var.load11, 48
  br i1 %cmptmp12, label %and.17.then, label %and.17.else

choice.case:                                      ; preds = %and.16.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.16.exit
  br label %choice.exit

and.17.then:                                      ; preds = %choice.exit
  %var.load13 = load i64, ptr %var.c, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 55
  br label %and.17.exit

and.17.else:                                      ; preds = %choice.exit
  br label %and.17.exit

and.17.exit:                                      ; preds = %and.17.else, %and.17.then
  %and.17.phi = phi i1 [ %cmptmp14, %and.17.then ], [ %cmptmp12, %and.17.else ]
  store i1 %and.17.phi, ptr %var.oct, align 1
  %var.load15 = load i1, ptr %var.dec, align 1
  br i1 %var.load15, label %or.18.then, label %or.18.else

or.18.then:                                       ; preds = %and.17.exit
  br label %or.18.exit

or.18.else:                                       ; preds = %and.17.exit
  %var.load16 = load i64, ptr %var.c, align 8
  %cmptmp17 = icmp sge i64 %var.load16, 65
  br i1 %cmptmp17, label %and.19.then, label %and.19.else

or.18.exit:                                       ; preds = %and.19.exit, %or.18.then
  %or.18.phi = phi i1 [ %var.load15, %or.18.then ], [ %and.19.phi, %and.19.exit ]
  br i1 %or.18.phi, label %or.20.then, label %or.20.else

and.19.then:                                      ; preds = %or.18.else
  %var.load18 = load i64, ptr %var.c, align 8
  %cmptmp19 = icmp sle i64 %var.load18, 70
  br label %and.19.exit

and.19.else:                                      ; preds = %or.18.else
  br label %and.19.exit

and.19.exit:                                      ; preds = %and.19.else, %and.19.then
  %and.19.phi = phi i1 [ %cmptmp19, %and.19.then ], [ %cmptmp17, %and.19.else ]
  br label %or.18.exit

or.20.then:                                       ; preds = %or.18.exit
  br label %or.20.exit

or.20.else:                                       ; preds = %or.18.exit
  %var.load20 = load i64, ptr %var.c, align 8
  %cmptmp21 = icmp sge i64 %var.load20, 97
  br i1 %cmptmp21, label %and.21.then, label %and.21.else

or.20.exit:                                       ; preds = %and.21.exit, %or.20.then
  %or.20.phi = phi i1 [ %or.18.phi, %or.20.then ], [ %and.21.phi, %and.21.exit ]
  store i1 %or.20.phi, ptr %var.hex, align 1
  %var.load24 = load i1, ptr %var.is_b, align 1
  br i1 %var.load24, label %and.22.then, label %and.22.else

and.21.then:                                      ; preds = %or.20.else
  %var.load22 = load i64, ptr %var.c, align 8
  %cmptmp23 = icmp sle i64 %var.load22, 102
  br label %and.21.exit

and.21.else:                                      ; preds = %or.20.else
  br label %and.21.exit

and.21.exit:                                      ; preds = %and.21.else, %and.21.then
  %and.21.phi = phi i1 [ %cmptmp23, %and.21.then ], [ %cmptmp21, %and.21.else ]
  br label %or.20.exit

and.22.then:                                      ; preds = %or.20.exit
  %var.load25 = load i1, ptr %var.bin, align 1
  br label %and.22.exit

and.22.else:                                      ; preds = %or.20.exit
  br label %and.22.exit

and.22.exit:                                      ; preds = %and.22.else, %and.22.then
  %and.22.phi = phi i1 [ %var.load25, %and.22.then ], [ %var.load24, %and.22.else ]
  br i1 %and.22.phi, label %or.23.then, label %or.23.else

or.23.then:                                       ; preds = %and.22.exit
  br label %or.23.exit

or.23.else:                                       ; preds = %and.22.exit
  %var.load26 = load i1, ptr %var.is_o, align 1
  br i1 %var.load26, label %and.24.then, label %and.24.else

or.23.exit:                                       ; preds = %and.24.exit, %or.23.then
  %or.23.phi = phi i1 [ %and.22.phi, %or.23.then ], [ %and.24.phi, %and.24.exit ]
  br i1 %or.23.phi, label %or.25.then, label %or.25.else

and.24.then:                                      ; preds = %or.23.else
  %var.load27 = load i1, ptr %var.oct, align 1
  br label %and.24.exit

and.24.else:                                      ; preds = %or.23.else
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %and.24.then
  %and.24.phi = phi i1 [ %var.load27, %and.24.then ], [ %var.load26, %and.24.else ]
  br label %or.23.exit

or.25.then:                                       ; preds = %or.23.exit
  br label %or.25.exit

or.25.else:                                       ; preds = %or.23.exit
  %var.load28 = load i1, ptr %var.is_x, align 1
  br i1 %var.load28, label %and.26.then, label %and.26.else

or.25.exit:                                       ; preds = %and.26.exit, %or.25.then
  %or.25.phi = phi i1 [ %or.23.phi, %or.25.then ], [ %and.26.phi, %and.26.exit ]
  ret i1 %or.25.phi

and.26.then:                                      ; preds = %or.25.else
  %var.load29 = load i1, ptr %var.hex, align 1
  br label %and.26.exit

and.26.else:                                      ; preds = %or.25.else
  br label %and.26.exit

and.26.exit:                                      ; preds = %and.26.else, %and.26.then
  %and.26.phi = phi i1 [ %var.load29, %and.26.then ], [ %var.load28, %and.26.else ]
  br label %or.25.exit
}

define ptr @"lexer::finish_int"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.num = alloca ptr, align 8
  %var.suf = alloca ptr, align 8
  %var.had = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::scan_int_suffix"(ptr %var.load, i64 0)
  store i64 %call.res, ptr %var.had, align 8
  %var.load1 = load i64, ptr %var.had, align 8
  %val.match = icmp eq i64 %var.load1, 1
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ @str.0.struct, %choice.case ], [ %fld.load, %choice.next ]
  store ptr %choice.res, ptr %var.suf, align 8
  %var.load3 = load ptr, ptr %var.suf, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len4 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load2, i32 0, i32 11
  %fld.load = load ptr, ptr %fld.gep, align 8
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len8 = and i64 %eq.rhs.len, 281474976710655
  %str.tag9 = lshr i64 %eq.rhs.len, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len8
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale13:                                      ; preds = %str_gen_check11
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

str.eq.then:                                      ; preds = %str_ok12
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data18 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data18, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok12
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load20 = load ptr, ptr %var.lx, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load20, i32 0, i32 0
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load22, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %str.tag25 = lshr i64 %s.read.len23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

choice.else:                                      ; preds = %str.eq.merge
  %var.load39 = load ptr, ptr %var.lx, align 8
  %fld.gep40 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load39, i32 0, i32 0
  %fld.load41 = load ptr, ptr %fld.gep40, align 8
  %s.read.len42 = getelementptr inbounds { i64, ptr }, ptr %fld.load41, i32 0, i32 0
  %s.read.len43 = load i64, ptr %s.read.len42, align 8
  %s.read.len44 = and i64 %s.read.len43, 281474976710655
  %str.tag45 = lshr i64 %s.read.len43, 48
  %str.immortal46 = icmp eq i64 %str.tag45, 0
  br i1 %str.immortal46, label %str_ok48, label %str_gen_check47

choice.exit19:                                    ; preds = %concat.tot.len112, %str_ok28
  %choice.res118 = phi ptr [ %str.view, %str_ok28 ], [ %concat.str, %concat.tot.len112 ]
  store ptr %choice.res118, ptr %var.num, align 8
  %var.load119 = load ptr, ptr %var.lx, align 8
  %arena.cur120 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load121 = load i64, ptr %var.start, align 8
  %var.load122 = load ptr, ptr %var.num, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 0
  %str.len.query123 = load i64, ptr %str.len.query, align 8
  %str.len.query124 = and i64 %str.len.query123, 281474976710655
  %str.tag125 = lshr i64 %str.len.query123, 48
  %str.immortal126 = icmp eq i64 %str.tag125, 0
  br i1 %str.immortal126, label %str_ok128, label %str_gen_check127

str_gen_check27:                                  ; preds = %choice.then
  %arena.gen30 = call ptr @dva_arena_current()
  %arena.gen31 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen30, i32 0, i32 4
  %arena.gen32 = load i64, ptr %arena.gen31, align 8
  %str.tag.match33 = icmp eq i64 %str.tag25, %arena.gen32
  br i1 %str.tag.match33, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %choice.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load22, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data, align 8
  %var.load35 = load i64, ptr %var.start, align 8
  %var.load36 = load ptr, ptr %var.lx, align 8
  %fld.gep37 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load36, i32 0, i32 1
  %fld.load38 = load i64, ptr %fld.gep37, align 8
  %start.is_neg = icmp slt i64 %var.load35, 0
  %rel.start = add i64 %s.read.len24, %var.load35
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load35
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len24
  %final.start = select i1 %start.gt.len, i64 %s.read.len24, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load38, 0
  %rel.end = add i64 %s.read.len24, %fld.load38
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load38
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len24
  %final.end = select i1 %end.gt.len, i64 %s.read.len24, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data34, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit19

str_stale29:                                      ; preds = %str_gen_check27
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str_gen_check47:                                  ; preds = %choice.else
  %arena.gen50 = call ptr @dva_arena_current()
  %arena.gen51 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen50, i32 0, i32 4
  %arena.gen52 = load i64, ptr %arena.gen51, align 8
  %str.tag.match53 = icmp eq i64 %str.tag45, %arena.gen52
  br i1 %str.tag.match53, label %str_ok48, label %str_stale49

str_ok48:                                         ; preds = %str_stale49, %str_gen_check47, %choice.else
  %s.read.data54 = getelementptr inbounds { i64, ptr }, ptr %fld.load41, i32 0, i32 1
  %s.read.data55 = load ptr, ptr %s.read.data54, align 8
  %var.load56 = load i64, ptr %var.start, align 8
  %var.load57 = load ptr, ptr %var.lx, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load57, i32 0, i32 1
  %fld.load59 = load i64, ptr %fld.gep58, align 8
  %start.is_neg60 = icmp slt i64 %var.load56, 0
  %rel.start61 = add i64 %s.read.len44, %var.load56
  %norm.start62 = select i1 %start.is_neg60, i64 %rel.start61, i64 %var.load56
  %start.lt.063 = icmp slt i64 %norm.start62, 0
  %c.start.064 = select i1 %start.lt.063, i64 0, i64 %norm.start62
  %start.gt.len65 = icmp sgt i64 %c.start.064, %s.read.len44
  %final.start66 = select i1 %start.gt.len65, i64 %s.read.len44, i64 %c.start.064
  %end.is_neg67 = icmp slt i64 %fld.load59, 0
  %rel.end68 = add i64 %s.read.len44, %fld.load59
  %norm.end69 = select i1 %end.is_neg67, i64 %rel.end68, i64 %fld.load59
  %end.lt.070 = icmp slt i64 %norm.end69, 0
  %c.end.071 = select i1 %end.lt.070, i64 0, i64 %norm.end69
  %end.gt.len72 = icmp sgt i64 %c.end.071, %s.read.len44
  %final.end73 = select i1 %end.gt.len72, i64 %s.read.len44, i64 %c.end.071
  %view.empty74 = icmp sle i64 %final.end73, %final.start66
  %view.len.sub75 = sub i64 %final.end73, %final.start66
  %view.len76 = select i1 %view.empty74, i64 0, i64 %view.len.sub75
  %view.data77 = getelementptr i8, ptr %s.read.data55, i64 %final.start66
  %arena.cur78 = call ptr @dva_arena_current()
  %str.view79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 16)
  %str.build.len.gep80 = getelementptr inbounds { i64, ptr }, ptr %str.view79, i32 0, i32 0
  store i64 %view.len76, ptr %str.build.len.gep80, align 8
  %str.build.data.gep81 = getelementptr inbounds { i64, ptr }, ptr %str.view79, i32 0, i32 1
  store ptr %view.data77, ptr %str.build.data.gep81, align 8
  %var.load82 = load ptr, ptr %var.suf, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %str.view79, i32 0, i32 0
  %concat.lhs83 = load i64, ptr %concat.lhs, align 8
  %concat.lhs84 = and i64 %concat.lhs83, 281474976710655
  %str.tag85 = lshr i64 %concat.lhs83, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

str_stale49:                                      ; preds = %str_gen_check47
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok48

str_gen_check87:                                  ; preds = %str_ok48
  %arena.gen90 = call ptr @dva_arena_current()
  %arena.gen91 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen90, i32 0, i32 4
  %arena.gen92 = load i64, ptr %arena.gen91, align 8
  %str.tag.match93 = icmp eq i64 %str.tag85, %arena.gen92
  br i1 %str.tag.match93, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %str_ok48
  %concat.lhs94 = getelementptr inbounds { i64, ptr }, ptr %str.view79, i32 0, i32 1
  %concat.lhs95 = load ptr, ptr %concat.lhs94, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %concat.rhs96 = load i64, ptr %concat.rhs, align 8
  %concat.rhs97 = and i64 %concat.rhs96, 281474976710655
  %str.tag98 = lshr i64 %concat.rhs96, 48
  %str.immortal99 = icmp eq i64 %str.tag98, 0
  br i1 %str.immortal99, label %str_ok101, label %str_gen_check100

str_stale89:                                      ; preds = %str_gen_check87
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok88

str_gen_check100:                                 ; preds = %str_ok88
  %arena.gen103 = call ptr @dva_arena_current()
  %arena.gen104 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen103, i32 0, i32 4
  %arena.gen105 = load i64, ptr %arena.gen104, align 8
  %str.tag.match106 = icmp eq i64 %str.tag98, %arena.gen105
  br i1 %str.tag.match106, label %str_ok101, label %str_stale102

str_ok101:                                        ; preds = %str_stale102, %str_gen_check100, %str_ok88
  %concat.rhs107 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %concat.rhs108 = load ptr, ptr %concat.rhs107, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs84, i64 %concat.rhs97)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len109

str_stale102:                                     ; preds = %str_gen_check100
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok101

concat.sum.len109:                                ; preds = %str_overflow_abort, %str_ok101
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum110 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf111 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf111, label %str_overflow_abort113, label %concat.tot.len112

str_overflow_abort:                               ; preds = %str_ok101
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len109

concat.tot.len112:                                ; preds = %str_overflow_abort113, %concat.sum.len109
  %arena.cur114 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 %sum110)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs95, i64 %concat.lhs84, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs84
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs108, i64 %concat.rhs97, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur115 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 16)
  %str.build.len.gep116 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep116, align 8
  %str.build.data.gep117 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep117, align 8
  br label %choice.exit19

str_overflow_abort113:                            ; preds = %concat.sum.len109
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len112

str_gen_check127:                                 ; preds = %choice.exit19
  %arena.gen130 = call ptr @dva_arena_current()
  %arena.gen131 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen130, i32 0, i32 4
  %arena.gen132 = load i64, ptr %arena.gen131, align 8
  %str.tag.match133 = icmp eq i64 %str.tag125, %arena.gen132
  br i1 %str.tag.match133, label %str_ok128, label %str_stale129

str_ok128:                                        ; preds = %str_stale129, %str_gen_check127, %choice.exit19
  %var.load134 = load i64, ptr %var.line, align 8
  %var.load135 = load i64, ptr %var.col, align 8
  %var.load136 = load ptr, ptr %var.num, align 8
  %call.res137 = call ptr @"lexer::mktok"(ptr %var.load119, ptr %enum.alloc, i64 %var.load121, i64 %str.len.query124, i64 %var.load134, i64 %var.load135, ptr %var.load136)
  ret ptr %call.res137

str_stale129:                                     ; preds = %str_gen_check127
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok128
}

define ptr @"lexer::scan_radix_rest"(ptr %0, i64 %1, i64 %2, i64 %3, i64 %4) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.27 = alloca i64, align 8
  %loop.idx.27 = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.kind = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.kind, align 8
  store i64 %2, ptr %var.start, align 8
  store i64 %3, ptr %var.line, align 8
  store i64 %4, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  %var.load3 = load ptr, ptr %var.lx, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %call.res5 = call i64 @"lexer::pk"(ptr %var.load4, i64 0)
  %call.res6 = call i64 @"lexer::adv"(ptr %var.load3, i64 %call.res5)
  store i64 0, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.header.27:                                   ; preds = %loop.latch.27, %entry
  %counter.load = load i64, ptr %loop.idx.27, align 8
  br label %loop.body.27

loop.body.27:                                     ; preds = %loop.header.27
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.27, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load7 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load7, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag = lshr i64 %str.len.query11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.27:                                 ; No predecessors!
  br label %loop.exit.27

loop.latch.27:                                    ; preds = %choice.exit20
  %step.val = load i64, ptr %loop.step.27, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.exit.27:                                     ; preds = %choice.else, %choice.then, %loop.exit.nat.27
  %var.load25 = load ptr, ptr %var.lx, align 8
  %var.load26 = load i64, ptr %var.start, align 8
  %var.load27 = load i64, ptr %var.line, align 8
  %var.load28 = load i64, ptr %var.col, align 8
  %call.res29 = call ptr @"lexer::finish_int"(ptr %var.load25, i64 %var.load26, i64 %var.load27, i64 %var.load28)
  ret ptr %call.res29

str_gen_check:                                    ; preds = %loop.body.27
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen14
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.27
  %cmptmp = icmp sge i64 %fld.load, %str.len.query12
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %loop.exit.27

choice.exit:                                      ; preds = %str_ok
  %var.load15 = load ptr, ptr %var.lx, align 8
  %call.res16 = call i64 @"lexer::pk"(ptr %var.load15, i64 0)
  %var.load17 = load i64, ptr %var.kind, align 8
  %call.res18 = call i1 @"lexer::radix_ok"(i64 %call.res16, i64 %var.load17)
  br i1 %call.res18, label %choice.then19, label %choice.else

choice.then19:                                    ; preds = %choice.exit
  %var.load21 = load ptr, ptr %var.lx, align 8
  %var.load22 = load ptr, ptr %var.lx, align 8
  %call.res23 = call i64 @"lexer::pk"(ptr %var.load22, i64 0)
  %call.res24 = call i64 @"lexer::adv"(ptr %var.load21, i64 %call.res23)
  br label %choice.exit20

choice.else:                                      ; preds = %choice.exit
  br label %loop.exit.27

choice.exit20:                                    ; preds = %choice.then19
  br label %loop.latch.27
}

define ptr @"lexer::finish_float"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  call void @"lexer::scan_float_suffix"(ptr %var.load, i64 0)
  %var.load1 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load2 = load i64, ptr %var.start, align 8
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load4 = load i64, ptr %var.start, align 8
  %subtmp = sub i64 %fld.load, %var.load4
  %var.load5 = load i64, ptr %var.line, align 8
  %var.load6 = load i64, ptr %var.col, align 8
  %var.load7 = load ptr, ptr %var.lx, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load7, i32 0, i32 0
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag = lshr i64 %s.read.len10, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen13
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.start, align 8
  %var.load16 = load ptr, ptr %var.lx, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load16, i32 0, i32 1
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %start.is_neg = icmp slt i64 %var.load15, 0
  %rel.start = add i64 %s.read.len11, %var.load15
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load15
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len11
  %final.start = select i1 %start.gt.len, i64 %s.read.len11, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load18, 0
  %rel.end = add i64 %s.read.len11, %fld.load18
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load18
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len11
  %final.end = select i1 %end.gt.len, i64 %s.read.len11, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %arena.cur19 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %call.res = call ptr @"lexer::mktok"(ptr %var.load1, ptr %enum.alloc, i64 %var.load2, i64 %subtmp, i64 %var.load5, i64 %var.load6, ptr %str.view)
  ret ptr %call.res

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define i1 @"lexer::scan_frac_opt"(ptr %0, i64 %1, i64 %2, i64 %3, i64 %4) #1 {
entry:
  %var.ok = alloca i1, align 1
  %var.dig = alloca i1, align 1
  %var.d = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  store i64 %2, ptr %var.start, align 8
  store i64 %3, ptr %var.line, align 8
  store i64 %4, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk_off"(ptr %var.load, i64 1)
  store i64 %call.res, ptr %var.d, align 8
  %var.load1 = load i64, ptr %var.d, align 8
  %cmptmp = icmp sge i64 %var.load1, 48
  br i1 %cmptmp, label %and.28.then, label %and.28.else

and.28.then:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.d, align 8
  %cmptmp3 = icmp sle i64 %var.load2, 57
  br label %and.28.exit

and.28.else:                                      ; preds = %entry
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %and.28.then
  %and.28.phi = phi i1 [ %cmptmp3, %and.28.then ], [ %cmptmp, %and.28.else ]
  store i1 %and.28.phi, ptr %var.dig, align 1
  %var.load4 = load ptr, ptr %var.lx, align 8
  %call.res5 = call i64 @"lexer::pk"(ptr %var.load4, i64 0)
  %cmptmp6 = icmp eq i64 %call.res5, 46
  br i1 %cmptmp6, label %and.29.then, label %and.29.else

and.29.then:                                      ; preds = %and.28.exit
  %var.load7 = load ptr, ptr %var.lx, align 8
  %call.res8 = call i64 @"lexer::pk_off"(ptr %var.load7, i64 1)
  %cmptmp9 = icmp ne i64 %call.res8, 46
  br label %and.29.exit

and.29.else:                                      ; preds = %and.28.exit
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %and.29.then
  %and.29.phi = phi i1 [ %cmptmp9, %and.29.then ], [ %cmptmp6, %and.29.else ]
  br i1 %and.29.phi, label %and.30.then, label %and.30.else

and.30.then:                                      ; preds = %and.29.exit
  %var.load10 = load i1, ptr %var.dig, align 1
  br label %and.30.exit

and.30.else:                                      ; preds = %and.29.exit
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %and.30.then
  %and.30.phi = phi i1 [ %var.load10, %and.30.then ], [ %and.29.phi, %and.30.else ]
  store i1 %and.30.phi, ptr %var.ok, align 1
  %var.load11 = load i1, ptr %var.ok, align 1
  br i1 %var.load11, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.30.exit
  %var.load12 = load ptr, ptr %var.lx, align 8
  %var.load13 = load ptr, ptr %var.lx, align 8
  %call.res14 = call i64 @"lexer::pk"(ptr %var.load13, i64 0)
  %call.res15 = call i64 @"lexer::adv"(ptr %var.load12, i64 %call.res14)
  %var.load16 = load ptr, ptr %var.lx, align 8
  %call.res17 = call i64 @"lexer::skip_digits"(ptr %var.load16, i64 0)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.30.exit
  %var.load18 = load i1, ptr %var.ok, align 1
  ret i1 %var.load18
}

define i64 @"lexer::pk_off"(ptr %0, i64 %1) #1 {
entry:
  %var.n = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.n, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load i64, ptr %var.n, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load, i64 %var.load1)
  ret i64 %call.res
}

define i1 @"lexer::scan_exp_opt"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.has_sign = alloca i1, align 1
  %var.is_e = alloca i1, align 1
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load, i64 0)
  %val.match = icmp eq i64 %call.res, 101
  %val.match1 = icmp eq i64 %call.res, 69
  %case.or = or i1 %val.match, %val.match1
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.is_e, align 1
  %var.load2 = load i1, ptr %var.is_e, align 1
  br i1 %var.load2, label %choice.then, label %choice.exit3

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit

choice.then:                                      ; preds = %choice.exit
  %var.load4 = load ptr, ptr %var.lx, align 8
  %var.load5 = load ptr, ptr %var.lx, align 8
  %call.res6 = call i64 @"lexer::pk"(ptr %var.load5, i64 0)
  %call.res7 = call i64 @"lexer::adv"(ptr %var.load4, i64 %call.res6)
  br label %choice.exit3

choice.exit3:                                     ; preds = %choice.then, %choice.exit
  %var.load8 = load i1, ptr %var.is_e, align 1
  br i1 %var.load8, label %and.31.then, label %and.31.else

and.31.then:                                      ; preds = %choice.exit3
  %var.load9 = load ptr, ptr %var.lx, align 8
  %call.res10 = call i64 @"lexer::pk"(ptr %var.load9, i64 0)
  %cmptmp = icmp eq i64 %call.res10, 43
  br i1 %cmptmp, label %or.32.then, label %or.32.else

and.31.else:                                      ; preds = %choice.exit3
  br label %and.31.exit

and.31.exit:                                      ; preds = %and.31.else, %or.32.exit
  %and.31.phi = phi i1 [ %or.32.phi, %or.32.exit ], [ %var.load8, %and.31.else ]
  store i1 %and.31.phi, ptr %var.has_sign, align 1
  %var.load14 = load i1, ptr %var.has_sign, align 1
  br i1 %var.load14, label %choice.then15, label %choice.exit16

or.32.then:                                       ; preds = %and.31.then
  br label %or.32.exit

or.32.else:                                       ; preds = %and.31.then
  %var.load11 = load ptr, ptr %var.lx, align 8
  %call.res12 = call i64 @"lexer::pk"(ptr %var.load11, i64 0)
  %cmptmp13 = icmp eq i64 %call.res12, 45
  br label %or.32.exit

or.32.exit:                                       ; preds = %or.32.else, %or.32.then
  %or.32.phi = phi i1 [ %cmptmp, %or.32.then ], [ %cmptmp13, %or.32.else ]
  br label %and.31.exit

choice.then15:                                    ; preds = %and.31.exit
  %var.load17 = load ptr, ptr %var.lx, align 8
  %var.load18 = load ptr, ptr %var.lx, align 8
  %call.res19 = call i64 @"lexer::pk"(ptr %var.load18, i64 0)
  %call.res20 = call i64 @"lexer::adv"(ptr %var.load17, i64 %call.res19)
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.then15, %and.31.exit
  %var.load21 = load i1, ptr %var.is_e, align 1
  br i1 %var.load21, label %choice.then22, label %choice.exit23

choice.then22:                                    ; preds = %choice.exit16
  %var.load24 = load ptr, ptr %var.lx, align 8
  %var.load25 = load i64, ptr %var.line, align 8
  %call.res26 = call i64 @"lexer::skip_digits"(ptr %var.load24, i64 %var.load25)
  br label %choice.exit23

choice.exit23:                                    ; preds = %choice.then22, %choice.exit16
  %var.load27 = load i1, ptr %var.is_e, align 1
  ret i1 %var.load27
}

define ptr @"lexer::scan_dec"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.is_float = alloca i1, align 1
  %var.f2 = alloca i1, align 1
  %var.bad_dot = alloca i1, align 1
  %var.f1 = alloca i1, align 1
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::skip_digits"(ptr %var.load, i64 0)
  %var.load1 = load ptr, ptr %var.lx, align 8
  %var.load2 = load i64, ptr %var.start, align 8
  %var.load3 = load i64, ptr %var.line, align 8
  %var.load4 = load i64, ptr %var.col, align 8
  %call.res5 = call i1 @"lexer::scan_frac_opt"(ptr %var.load1, i64 0, i64 %var.load2, i64 %var.load3, i64 %var.load4)
  store i1 %call.res5, ptr %var.f1, align 1
  %var.load6 = load i1, ptr %var.f1, align 1
  %nottmp = xor i1 %var.load6, true
  br i1 %nottmp, label %and.33.then, label %and.33.else

and.33.then:                                      ; preds = %entry
  %var.load7 = load ptr, ptr %var.lx, align 8
  %call.res8 = call i64 @"lexer::pk"(ptr %var.load7, i64 0)
  %cmptmp = icmp eq i64 %call.res8, 46
  br label %and.33.exit

and.33.else:                                      ; preds = %entry
  br label %and.33.exit

and.33.exit:                                      ; preds = %and.33.else, %and.33.then
  %and.33.phi = phi i1 [ %cmptmp, %and.33.then ], [ %nottmp, %and.33.else ]
  br i1 %and.33.phi, label %and.34.then, label %and.34.else

and.34.then:                                      ; preds = %and.33.exit
  %var.load9 = load ptr, ptr %var.lx, align 8
  %call.res10 = call i64 @"lexer::pk_off"(ptr %var.load9, i64 1)
  %cmptmp11 = icmp ne i64 %call.res10, 46
  br label %and.34.exit

and.34.else:                                      ; preds = %and.33.exit
  br label %and.34.exit

and.34.exit:                                      ; preds = %and.34.else, %and.34.then
  %and.34.phi = phi i1 [ %cmptmp11, %and.34.then ], [ %and.33.phi, %and.34.else ]
  br i1 %and.34.phi, label %and.35.then, label %and.35.else

and.35.then:                                      ; preds = %and.34.exit
  %var.load12 = load ptr, ptr %var.lx, align 8
  %call.res13 = call i64 @"lexer::pk_off"(ptr %var.load12, i64 1)
  %call.res14 = call i1 @"lexer::is_special"(i64 %call.res13)
  %nottmp15 = xor i1 %call.res14, true
  br label %and.35.exit

and.35.else:                                      ; preds = %and.34.exit
  br label %and.35.exit

and.35.exit:                                      ; preds = %and.35.else, %and.35.then
  %and.35.phi = phi i1 [ %nottmp15, %and.35.then ], [ %and.34.phi, %and.35.else ]
  br i1 %and.35.phi, label %and.36.then, label %and.36.else

and.36.then:                                      ; preds = %and.35.exit
  %var.load16 = load i64, ptr %var.start, align 8
  %cmptmp17 = icmp sgt i64 %var.load16, 0
  br i1 %cmptmp17, label %and.37.then, label %and.37.else

and.36.else:                                      ; preds = %and.35.exit
  br label %and.36.exit

and.36.exit:                                      ; preds = %and.36.else, %and.37.exit
  %and.36.phi = phi i1 [ %nottmp26, %and.37.exit ], [ %and.35.phi, %and.36.else ]
  store i1 %and.36.phi, ptr %var.bad_dot, align 1
  %var.load27 = load i1, ptr %var.bad_dot, align 1
  br i1 %var.load27, label %choice.then, label %choice.exit

and.37.then:                                      ; preds = %and.36.then
  %var.load18 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load18, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag = lshr i64 %s.read.len19, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.37.else:                                      ; preds = %and.36.then
  br label %and.37.exit

and.37.exit:                                      ; preds = %and.37.else, %idx_ok
  %and.37.phi = phi i1 [ %cmptmp25, %idx_ok ], [ %cmptmp17, %and.37.else ]
  %nottmp26 = xor i1 %and.37.phi, true
  br label %and.36.exit

str_gen_check:                                    ; preds = %and.37.then
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen21 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen22 = load i64, ptr %arena.gen21, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen22
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.37.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data, align 8
  %var.load24 = load i64, ptr %var.start, align 8
  %subtmp = sub i64 %var.load24, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %subtmp, %s.read.len20
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data23, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp25 = icmp eq i64 %s.byte.val, 46
  br label %and.37.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.36.exit
  %var.load28 = load i64, ptr %var.line, align 8
  %var.load29 = load i64, ptr %var.col, align 8
  %concat.lhs = load i64, ptr @str.19.struct, align 8
  %concat.lhs30 = and i64 %concat.lhs, 281474976710655
  %str.tag31 = lshr i64 %concat.lhs, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

choice.exit:                                      ; preds = %concat.tot.len55, %and.36.exit
  %var.load59 = load ptr, ptr %var.lx, align 8
  %var.load60 = load i64, ptr %var.line, align 8
  %call.res61 = call i1 @"lexer::scan_exp_opt"(ptr %var.load59, i64 0, i64 0, i64 %var.load60)
  store i1 %call.res61, ptr %var.f2, align 1
  %var.load62 = load i1, ptr %var.f1, align 1
  br i1 %var.load62, label %or.38.then, label %or.38.else

str_gen_check33:                                  ; preds = %choice.then
  %arena.gen36 = call ptr @dva_arena_current()
  %arena.gen37 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen36, i32 0, i32 4
  %arena.gen38 = load i64, ptr %arena.gen37, align 8
  %str.tag.match39 = icmp eq i64 %str.tag31, %arena.gen38
  br i1 %str.tag.match39, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %choice.then
  %concat.lhs40 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.20.struct, align 8
  %concat.rhs41 = and i64 %concat.rhs, 281474976710655
  %str.tag42 = lshr i64 %concat.rhs, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale35:                                      ; preds = %str_gen_check33
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

str_gen_check44:                                  ; preds = %str_ok34
  %arena.gen47 = call ptr @dva_arena_current()
  %arena.gen48 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen47, i32 0, i32 4
  %arena.gen49 = load i64, ptr %arena.gen48, align 8
  %str.tag.match50 = icmp eq i64 %str.tag42, %arena.gen49
  br i1 %str.tag.match50, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok34
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs30, i64 %concat.rhs41)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len52

str_stale46:                                      ; preds = %str_gen_check44
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

concat.sum.len52:                                 ; preds = %str_overflow_abort, %str_ok45
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum53 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf54 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf54, label %str_overflow_abort56, label %concat.tot.len55

str_overflow_abort:                               ; preds = %str_ok45
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len52

concat.tot.len55:                                 ; preds = %str_overflow_abort56, %concat.sum.len52
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum53)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs40, i64 %concat.lhs30, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs51, i64 %concat.rhs41, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur57 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res58 = call i64 @"lexer::fail"(i64 1012, i64 %var.load28, i64 %var.load29, ptr %concat.str)
  br label %choice.exit

str_overflow_abort56:                             ; preds = %concat.sum.len52
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len55

or.38.then:                                       ; preds = %choice.exit
  br label %or.38.exit

or.38.else:                                       ; preds = %choice.exit
  %var.load63 = load i1, ptr %var.f2, align 1
  br label %or.38.exit

or.38.exit:                                       ; preds = %or.38.else, %or.38.then
  %or.38.phi = phi i1 [ %var.load62, %or.38.then ], [ %var.load63, %or.38.else ]
  store i1 %or.38.phi, ptr %var.is_float, align 1
  %var.load64 = load i1, ptr %var.is_float, align 1
  br i1 %var.load64, label %choice.then65, label %choice.else

choice.then65:                                    ; preds = %or.38.exit
  %var.load67 = load ptr, ptr %var.lx, align 8
  %var.load68 = load i64, ptr %var.start, align 8
  %var.load69 = load i64, ptr %var.line, align 8
  %var.load70 = load i64, ptr %var.col, align 8
  %call.res71 = call ptr @"lexer::finish_float"(ptr %var.load67, i64 %var.load68, i64 %var.load69, i64 %var.load70)
  br label %choice.exit66

choice.else:                                      ; preds = %or.38.exit
  %var.load72 = load ptr, ptr %var.lx, align 8
  %var.load73 = load i64, ptr %var.start, align 8
  %var.load74 = load i64, ptr %var.line, align 8
  %var.load75 = load i64, ptr %var.col, align 8
  %call.res76 = call ptr @"lexer::finish_int"(ptr %var.load72, i64 %var.load73, i64 %var.load74, i64 %var.load75)
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else, %choice.then65
  %choice.res = phi ptr [ %call.res71, %choice.then65 ], [ %call.res76, %choice.else ]
  ret ptr %choice.res
}

define ptr @"lexer::scan_num"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.is_r = alloca i1, align 1
  %var.k = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load, i64 0)
  store i64 %call.res, ptr %var.k, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res2 = call i64 @"lexer::pk_off"(ptr %var.load1, i64 1)
  %val.match = icmp eq i64 %call.res2, 98
  %val.match3 = icmp eq i64 %call.res2, 111
  %case.or = or i1 %val.match, %val.match3
  %val.match4 = icmp eq i64 %call.res2, 120
  %case.or5 = or i1 %case.or, %val.match4
  br i1 %case.or5, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.is_r, align 1
  %var.load6 = load i64, ptr %var.k, align 8
  %cmptmp = icmp eq i64 %var.load6, 48
  br i1 %cmptmp, label %and.39.then, label %and.39.else

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit

and.39.then:                                      ; preds = %choice.exit
  %var.load7 = load i1, ptr %var.is_r, align 1
  br label %and.39.exit

and.39.else:                                      ; preds = %choice.exit
  br label %and.39.exit

and.39.exit:                                      ; preds = %and.39.else, %and.39.then
  %and.39.phi = phi i1 [ %var.load7, %and.39.then ], [ %cmptmp, %and.39.else ]
  br i1 %and.39.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.39.exit
  %var.load9 = load ptr, ptr %var.lx, align 8
  %var.load10 = load ptr, ptr %var.lx, align 8
  %call.res11 = call i64 @"lexer::pk_off"(ptr %var.load10, i64 1)
  %var.load12 = load i64, ptr %var.start, align 8
  %var.load13 = load i64, ptr %var.line, align 8
  %var.load14 = load i64, ptr %var.col, align 8
  %call.res15 = call ptr @"lexer::scan_radix_rest"(ptr %var.load9, i64 %call.res11, i64 %var.load12, i64 %var.load13, i64 %var.load14)
  br label %choice.exit8

choice.else:                                      ; preds = %and.39.exit
  %var.load16 = load ptr, ptr %var.lx, align 8
  %var.load17 = load i64, ptr %var.start, align 8
  %var.load18 = load i64, ptr %var.line, align 8
  %var.load19 = load i64, ptr %var.col, align 8
  %call.res20 = call ptr @"lexer::scan_dec"(ptr %var.load16, i64 %var.load17, i64 %var.load18, i64 %var.load19)
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.else, %choice.then
  %choice.res21 = phi ptr [ %call.res15, %choice.then ], [ %call.res20, %choice.else ]
  ret ptr %choice.res21
}

define ptr @"lexer::scan_op"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.is_bind_split = alloca i1, align 1
  %var.is_prop_split = alloca i1, align 1
  %var.is_unwrap_split = alloca i1, align 1
  %var.is_dotdot_split = alloca i1, align 1
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %"var.ncol'" = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.total, align 8
  %var.load5 = load ptr, ptr %var.lx, align 8
  %fld.gep6 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 1
  %fld.load7 = load i64, ptr %fld.gep6, align 8
  store i64 %fld.load7, ptr %"var.i'", align 8
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 3
  %fld.load10 = load i64, ptr %fld.gep9, align 8
  store i64 %fld.load10, ptr %"var.ncol'", align 8
  store i64 0, ptr %loop.idx.40, align 8
  br label %loop.header.40

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.40:                                   ; preds = %loop.latch.40, %str_ok
  %counter.load = load i64, ptr %loop.idx.40, align 8
  br label %loop.body.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.40, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load11 = load i64, ptr %"var.i'", align 8
  %var.load12 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load11, %var.load12
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.40:                                 ; No predecessors!
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %choice.exit20
  %step.val = load i64, ptr %loop.step.40, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %choice.else, %choice.then, %loop.exit.nat.40
  %var.load25 = load ptr, ptr %var.lx, align 8
  %var.load26 = load i64, ptr %"var.i'", align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load25, i32 0, i32 1
  store i64 %var.load26, ptr %fld.gep27, align 8
  %var.load28 = load ptr, ptr %var.lx, align 8
  %var.load29 = load i64, ptr %"var.ncol'", align 8
  %fld.gep30 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load28, i32 0, i32 3
  store i64 %var.load29, ptr %fld.gep30, align 8
  %var.load31 = load i64, ptr %"var.i'", align 8
  %var.load32 = load i64, ptr %var.start, align 8
  %subtmp = sub i64 %var.load31, %var.load32
  %cmptmp33 = icmp sgt i64 %subtmp, 2
  br i1 %cmptmp33, label %and.41.then, label %and.41.else

choice.then:                                      ; preds = %loop.body.40
  br label %loop.exit.40

choice.exit:                                      ; preds = %loop.body.40
  %var.load13 = load ptr, ptr %var.lx, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load13, i32 0, i32 0
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %var.load16 = load i64, ptr %"var.i'", align 8
  %call.res = call i64 @"unicode::decode_rune"(ptr %fld.load15, i64 %var.load16)
  store i64 %call.res, ptr %var.c, align 8
  %var.load17 = load i64, ptr %var.c, align 8
  %call.res18 = call i1 @"lexer::is_special"(i64 %var.load17)
  br i1 %call.res18, label %choice.then19, label %choice.else

choice.then19:                                    ; preds = %choice.exit
  %var.load21 = load i64, ptr %"var.i'", align 8
  %var.load22 = load i64, ptr %var.c, align 8
  %r.cmp1 = icmp slt i64 %var.load22, 128
  %r.cmp2 = icmp slt i64 %var.load22, 2048
  %r.cmp3 = icmp slt i64 %var.load22, 65536
  %r.w3 = select i1 %r.cmp3, i64 3, i64 4
  %r.w2 = select i1 %r.cmp2, i64 2, i64 %r.w3
  %r.width = select i1 %r.cmp1, i64 1, i64 %r.w2
  %addtmp = add i64 %var.load21, %r.width
  store i64 %addtmp, ptr %"var.i'", align 8
  %var.load23 = load i64, ptr %"var.ncol'", align 8
  %addtmp24 = add i64 %var.load23, 1
  store i64 %addtmp24, ptr %"var.ncol'", align 8
  br label %choice.exit20

choice.else:                                      ; preds = %choice.exit
  br label %loop.exit.40

choice.exit20:                                    ; preds = %choice.then19
  br label %loop.latch.40

and.41.then:                                      ; preds = %loop.exit.40
  %var.load34 = load ptr, ptr %var.lx, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load34, i32 0, i32 0
  %fld.load36 = load ptr, ptr %fld.gep35, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 0
  %s.read.len37 = load i64, ptr %s.read.len, align 8
  %s.read.len38 = and i64 %s.read.len37, 281474976710655
  %str.tag39 = lshr i64 %s.read.len37, 48
  %str.immortal40 = icmp eq i64 %str.tag39, 0
  br i1 %str.immortal40, label %str_ok42, label %str_gen_check41

and.41.else:                                      ; preds = %loop.exit.40
  br label %and.41.exit

and.41.exit:                                      ; preds = %and.41.else, %idx_ok
  %and.41.phi = phi i1 [ %cmptmp50, %idx_ok ], [ %cmptmp33, %and.41.else ]
  br i1 %and.41.phi, label %and.42.then, label %and.42.else

str_gen_check41:                                  ; preds = %and.41.then
  %arena.gen44 = call ptr @dva_arena_current()
  %arena.gen45 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen44, i32 0, i32 4
  %arena.gen46 = load i64, ptr %arena.gen45, align 8
  %str.tag.match47 = icmp eq i64 %str.tag39, %arena.gen46
  br i1 %str.tag.match47, label %str_ok42, label %str_stale43

str_ok42:                                         ; preds = %str_stale43, %str_gen_check41, %and.41.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 1
  %s.read.data48 = load ptr, ptr %s.read.data, align 8
  %var.load49 = load i64, ptr %var.start, align 8
  %idx.neg = icmp slt i64 %var.load49, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale43:                                      ; preds = %str_gen_check41
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok42

idx_big_check:                                    ; preds = %str_ok42
  %idx.big = icmp sge i64 %var.load49, %s.read.len38
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data48, i64 %var.load49
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp50 = icmp eq i64 %s.byte.val, 46
  br label %and.41.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok42
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.42.then:                                      ; preds = %and.41.exit
  %var.load51 = load ptr, ptr %var.lx, align 8
  %fld.gep52 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load51, i32 0, i32 0
  %fld.load53 = load ptr, ptr %fld.gep52, align 8
  %s.read.len54 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 0
  %s.read.len55 = load i64, ptr %s.read.len54, align 8
  %s.read.len56 = and i64 %s.read.len55, 281474976710655
  %str.tag57 = lshr i64 %s.read.len55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

and.42.else:                                      ; preds = %and.41.exit
  br label %and.42.exit

and.42.exit:                                      ; preds = %and.42.else, %idx_ok72
  %and.42.phi = phi i1 [ %cmptmp78, %idx_ok72 ], [ %and.41.phi, %and.42.else ]
  store i1 %and.42.phi, ptr %var.is_dotdot_split, align 1
  %var.load79 = load i1, ptr %var.is_dotdot_split, align 1
  br i1 %var.load79, label %choice.then80, label %choice.else81

str_gen_check59:                                  ; preds = %and.42.then
  %arena.gen62 = call ptr @dva_arena_current()
  %arena.gen63 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen62, i32 0, i32 4
  %arena.gen64 = load i64, ptr %arena.gen63, align 8
  %str.tag.match65 = icmp eq i64 %str.tag57, %arena.gen64
  br i1 %str.tag.match65, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %and.42.then
  %s.read.data66 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 1
  %s.read.data67 = load ptr, ptr %s.read.data66, align 8
  %var.load68 = load i64, ptr %var.start, align 8
  %addtmp69 = add i64 %var.load68, 1
  %idx.neg70 = icmp slt i64 %addtmp69, 0
  br i1 %idx.neg70, label %idx_oob73, label %idx_big_check71

str_stale61:                                      ; preds = %str_gen_check59
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

idx_big_check71:                                  ; preds = %str_ok60
  %idx.big74 = icmp sge i64 %addtmp69, %s.read.len56
  br i1 %idx.big74, label %idx_oob73, label %idx_ok72

idx_ok72:                                         ; preds = %idx_oob73, %idx_big_check71
  %s.byte.gep75 = getelementptr i8, ptr %s.read.data67, i64 %addtmp69
  %s.byte76 = load i8, ptr %s.byte.gep75, align 1
  %s.byte.val77 = zext i8 %s.byte76 to i64
  %cmptmp78 = icmp eq i64 %s.byte.val77, 46
  br label %and.42.exit

idx_oob73:                                        ; preds = %idx_big_check71, %str_ok60
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok72

choice.then80:                                    ; preds = %and.42.exit
  %var.load83 = load ptr, ptr %var.lx, align 8
  %var.load84 = load i64, ptr %var.start, align 8
  %addtmp85 = add i64 %var.load84, 2
  %fld.gep86 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load83, i32 0, i32 1
  store i64 %addtmp85, ptr %fld.gep86, align 8
  %var.load87 = load ptr, ptr %var.lx, align 8
  %var.load88 = load i64, ptr %var.col, align 8
  %addtmp89 = add i64 %var.load88, 2
  %fld.gep90 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load87, i32 0, i32 3
  store i64 %addtmp89, ptr %fld.gep90, align 8
  %var.load91 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load92 = load i64, ptr %var.start, align 8
  %var.load93 = load i64, ptr %var.line, align 8
  %var.load94 = load i64, ptr %var.col, align 8
  %call.res95 = call ptr @"lexer::mktok"(ptr %var.load91, ptr %enum.alloc, i64 %var.load92, i64 2, i64 %var.load93, i64 %var.load94, ptr @str.21.struct)
  br label %choice.exit82

choice.else81:                                    ; preds = %and.42.exit
  %var.load96 = load i64, ptr %"var.i'", align 8
  %var.load97 = load i64, ptr %var.start, align 8
  %subtmp98 = sub i64 %var.load96, %var.load97
  %cmptmp99 = icmp sgt i64 %subtmp98, 2
  br i1 %cmptmp99, label %and.43.then, label %and.43.else

choice.exit82:                                    ; preds = %choice.exit158, %choice.then80
  %choice.res398 = phi ptr [ %call.res95, %choice.then80 ], [ %choice.res397, %choice.exit158 ]
  ret ptr %choice.res398

and.43.then:                                      ; preds = %choice.else81
  %var.load100 = load ptr, ptr %var.lx, align 8
  %fld.gep101 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load100, i32 0, i32 0
  %fld.load102 = load ptr, ptr %fld.gep101, align 8
  %s.read.len103 = getelementptr inbounds { i64, ptr }, ptr %fld.load102, i32 0, i32 0
  %s.read.len104 = load i64, ptr %s.read.len103, align 8
  %s.read.len105 = and i64 %s.read.len104, 281474976710655
  %str.tag106 = lshr i64 %s.read.len104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

and.43.else:                                      ; preds = %choice.else81
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %idx_ok120
  %and.43.phi = phi i1 [ %cmptmp126, %idx_ok120 ], [ %cmptmp99, %and.43.else ]
  br i1 %and.43.phi, label %and.44.then, label %and.44.else

str_gen_check108:                                 ; preds = %and.43.then
  %arena.gen111 = call ptr @dva_arena_current()
  %arena.gen112 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen111, i32 0, i32 4
  %arena.gen113 = load i64, ptr %arena.gen112, align 8
  %str.tag.match114 = icmp eq i64 %str.tag106, %arena.gen113
  br i1 %str.tag.match114, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %and.43.then
  %s.read.data115 = getelementptr inbounds { i64, ptr }, ptr %fld.load102, i32 0, i32 1
  %s.read.data116 = load ptr, ptr %s.read.data115, align 8
  %var.load117 = load i64, ptr %var.start, align 8
  %idx.neg118 = icmp slt i64 %var.load117, 0
  br i1 %idx.neg118, label %idx_oob121, label %idx_big_check119

str_stale110:                                     ; preds = %str_gen_check108
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

idx_big_check119:                                 ; preds = %str_ok109
  %idx.big122 = icmp sge i64 %var.load117, %s.read.len105
  br i1 %idx.big122, label %idx_oob121, label %idx_ok120

idx_ok120:                                        ; preds = %idx_oob121, %idx_big_check119
  %s.byte.gep123 = getelementptr i8, ptr %s.read.data116, i64 %var.load117
  %s.byte124 = load i8, ptr %s.byte.gep123, align 1
  %s.byte.val125 = zext i8 %s.byte124 to i64
  %cmptmp126 = icmp eq i64 %s.byte.val125, 33
  br label %and.43.exit

idx_oob121:                                       ; preds = %idx_big_check119, %str_ok109
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok120

and.44.then:                                      ; preds = %and.43.exit
  %var.load127 = load ptr, ptr %var.lx, align 8
  %fld.gep128 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load127, i32 0, i32 0
  %fld.load129 = load ptr, ptr %fld.gep128, align 8
  %s.read.len130 = getelementptr inbounds { i64, ptr }, ptr %fld.load129, i32 0, i32 0
  %s.read.len131 = load i64, ptr %s.read.len130, align 8
  %s.read.len132 = and i64 %s.read.len131, 281474976710655
  %str.tag133 = lshr i64 %s.read.len131, 48
  %str.immortal134 = icmp eq i64 %str.tag133, 0
  br i1 %str.immortal134, label %str_ok136, label %str_gen_check135

and.44.else:                                      ; preds = %and.43.exit
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %idx_ok148
  %and.44.phi = phi i1 [ %cmptmp154, %idx_ok148 ], [ %and.43.phi, %and.44.else ]
  store i1 %and.44.phi, ptr %var.is_unwrap_split, align 1
  %var.load155 = load i1, ptr %var.is_unwrap_split, align 1
  br i1 %var.load155, label %choice.then156, label %choice.else157

str_gen_check135:                                 ; preds = %and.44.then
  %arena.gen138 = call ptr @dva_arena_current()
  %arena.gen139 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen138, i32 0, i32 4
  %arena.gen140 = load i64, ptr %arena.gen139, align 8
  %str.tag.match141 = icmp eq i64 %str.tag133, %arena.gen140
  br i1 %str.tag.match141, label %str_ok136, label %str_stale137

str_ok136:                                        ; preds = %str_stale137, %str_gen_check135, %and.44.then
  %s.read.data142 = getelementptr inbounds { i64, ptr }, ptr %fld.load129, i32 0, i32 1
  %s.read.data143 = load ptr, ptr %s.read.data142, align 8
  %var.load144 = load i64, ptr %var.start, align 8
  %addtmp145 = add i64 %var.load144, 1
  %idx.neg146 = icmp slt i64 %addtmp145, 0
  br i1 %idx.neg146, label %idx_oob149, label %idx_big_check147

str_stale137:                                     ; preds = %str_gen_check135
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok136

idx_big_check147:                                 ; preds = %str_ok136
  %idx.big150 = icmp sge i64 %addtmp145, %s.read.len132
  br i1 %idx.big150, label %idx_oob149, label %idx_ok148

idx_ok148:                                        ; preds = %idx_oob149, %idx_big_check147
  %s.byte.gep151 = getelementptr i8, ptr %s.read.data143, i64 %addtmp145
  %s.byte152 = load i8, ptr %s.byte.gep151, align 1
  %s.byte.val153 = zext i8 %s.byte152 to i64
  %cmptmp154 = icmp eq i64 %s.byte.val153, 33
  br label %and.44.exit

idx_oob149:                                       ; preds = %idx_big_check147, %str_ok136
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok148

choice.then156:                                   ; preds = %and.44.exit
  %var.load159 = load ptr, ptr %var.lx, align 8
  %var.load160 = load i64, ptr %var.start, align 8
  %addtmp161 = add i64 %var.load160, 2
  %fld.gep162 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load159, i32 0, i32 1
  store i64 %addtmp161, ptr %fld.gep162, align 8
  %var.load163 = load ptr, ptr %var.lx, align 8
  %var.load164 = load i64, ptr %var.col, align 8
  %addtmp165 = add i64 %var.load164, 2
  %fld.gep166 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load163, i32 0, i32 3
  store i64 %addtmp165, ptr %fld.gep166, align 8
  %var.load167 = load ptr, ptr %var.lx, align 8
  %arena.cur168 = call ptr @dva_arena_current()
  %enum.alloc169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 16)
  %tag.gep170 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc169, i32 0, i32 0
  store i64 0, ptr %tag.gep170, align 8
  %pay.gep171 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc169, i32 0, i32 1
  store ptr null, ptr %pay.gep171, align 8
  %var.load172 = load i64, ptr %var.start, align 8
  %var.load173 = load i64, ptr %var.line, align 8
  %var.load174 = load i64, ptr %var.col, align 8
  %call.res175 = call ptr @"lexer::mktok"(ptr %var.load167, ptr %enum.alloc169, i64 %var.load172, i64 2, i64 %var.load173, i64 %var.load174, ptr @str.22.struct)
  br label %choice.exit158

choice.else157:                                   ; preds = %and.44.exit
  %var.load176 = load i64, ptr %"var.i'", align 8
  %var.load177 = load i64, ptr %var.start, align 8
  %subtmp178 = sub i64 %var.load176, %var.load177
  %cmptmp179 = icmp sgt i64 %subtmp178, 3
  br i1 %cmptmp179, label %and.45.then, label %and.45.else

choice.exit158:                                   ; preds = %choice.exit266, %choice.then156
  %choice.res397 = phi ptr [ %call.res175, %choice.then156 ], [ %choice.res396, %choice.exit266 ]
  br label %choice.exit82

and.45.then:                                      ; preds = %choice.else157
  %var.load180 = load ptr, ptr %var.lx, align 8
  %fld.gep181 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load180, i32 0, i32 0
  %fld.load182 = load ptr, ptr %fld.gep181, align 8
  %s.read.len183 = getelementptr inbounds { i64, ptr }, ptr %fld.load182, i32 0, i32 0
  %s.read.len184 = load i64, ptr %s.read.len183, align 8
  %s.read.len185 = and i64 %s.read.len184, 281474976710655
  %str.tag186 = lshr i64 %s.read.len184, 48
  %str.immortal187 = icmp eq i64 %str.tag186, 0
  br i1 %str.immortal187, label %str_ok189, label %str_gen_check188

and.45.else:                                      ; preds = %choice.else157
  br label %and.45.exit

and.45.exit:                                      ; preds = %and.45.else, %idx_ok200
  %and.45.phi = phi i1 [ %cmptmp206, %idx_ok200 ], [ %cmptmp179, %and.45.else ]
  br i1 %and.45.phi, label %and.46.then, label %and.46.else

str_gen_check188:                                 ; preds = %and.45.then
  %arena.gen191 = call ptr @dva_arena_current()
  %arena.gen192 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen191, i32 0, i32 4
  %arena.gen193 = load i64, ptr %arena.gen192, align 8
  %str.tag.match194 = icmp eq i64 %str.tag186, %arena.gen193
  br i1 %str.tag.match194, label %str_ok189, label %str_stale190

str_ok189:                                        ; preds = %str_stale190, %str_gen_check188, %and.45.then
  %s.read.data195 = getelementptr inbounds { i64, ptr }, ptr %fld.load182, i32 0, i32 1
  %s.read.data196 = load ptr, ptr %s.read.data195, align 8
  %var.load197 = load i64, ptr %var.start, align 8
  %idx.neg198 = icmp slt i64 %var.load197, 0
  br i1 %idx.neg198, label %idx_oob201, label %idx_big_check199

str_stale190:                                     ; preds = %str_gen_check188
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok189

idx_big_check199:                                 ; preds = %str_ok189
  %idx.big202 = icmp sge i64 %var.load197, %s.read.len185
  br i1 %idx.big202, label %idx_oob201, label %idx_ok200

idx_ok200:                                        ; preds = %idx_oob201, %idx_big_check199
  %s.byte.gep203 = getelementptr i8, ptr %s.read.data196, i64 %var.load197
  %s.byte204 = load i8, ptr %s.byte.gep203, align 1
  %s.byte.val205 = zext i8 %s.byte204 to i64
  %cmptmp206 = icmp eq i64 %s.byte.val205, 45
  br label %and.45.exit

idx_oob201:                                       ; preds = %idx_big_check199, %str_ok189
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok200

and.46.then:                                      ; preds = %and.45.exit
  %var.load207 = load ptr, ptr %var.lx, align 8
  %fld.gep208 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load207, i32 0, i32 0
  %fld.load209 = load ptr, ptr %fld.gep208, align 8
  %s.read.len210 = getelementptr inbounds { i64, ptr }, ptr %fld.load209, i32 0, i32 0
  %s.read.len211 = load i64, ptr %s.read.len210, align 8
  %s.read.len212 = and i64 %s.read.len211, 281474976710655
  %str.tag213 = lshr i64 %s.read.len211, 48
  %str.immortal214 = icmp eq i64 %str.tag213, 0
  br i1 %str.immortal214, label %str_ok216, label %str_gen_check215

and.46.else:                                      ; preds = %and.45.exit
  br label %and.46.exit

and.46.exit:                                      ; preds = %and.46.else, %idx_ok228
  %and.46.phi = phi i1 [ %cmptmp234, %idx_ok228 ], [ %and.45.phi, %and.46.else ]
  br i1 %and.46.phi, label %and.47.then, label %and.47.else

str_gen_check215:                                 ; preds = %and.46.then
  %arena.gen218 = call ptr @dva_arena_current()
  %arena.gen219 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen218, i32 0, i32 4
  %arena.gen220 = load i64, ptr %arena.gen219, align 8
  %str.tag.match221 = icmp eq i64 %str.tag213, %arena.gen220
  br i1 %str.tag.match221, label %str_ok216, label %str_stale217

str_ok216:                                        ; preds = %str_stale217, %str_gen_check215, %and.46.then
  %s.read.data222 = getelementptr inbounds { i64, ptr }, ptr %fld.load209, i32 0, i32 1
  %s.read.data223 = load ptr, ptr %s.read.data222, align 8
  %var.load224 = load i64, ptr %var.start, align 8
  %addtmp225 = add i64 %var.load224, 1
  %idx.neg226 = icmp slt i64 %addtmp225, 0
  br i1 %idx.neg226, label %idx_oob229, label %idx_big_check227

str_stale217:                                     ; preds = %str_gen_check215
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok216

idx_big_check227:                                 ; preds = %str_ok216
  %idx.big230 = icmp sge i64 %addtmp225, %s.read.len212
  br i1 %idx.big230, label %idx_oob229, label %idx_ok228

idx_ok228:                                        ; preds = %idx_oob229, %idx_big_check227
  %s.byte.gep231 = getelementptr i8, ptr %s.read.data223, i64 %addtmp225
  %s.byte232 = load i8, ptr %s.byte.gep231, align 1
  %s.byte.val233 = zext i8 %s.byte232 to i64
  %cmptmp234 = icmp eq i64 %s.byte.val233, 45
  br label %and.46.exit

idx_oob229:                                       ; preds = %idx_big_check227, %str_ok216
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok228

and.47.then:                                      ; preds = %and.46.exit
  %var.load235 = load ptr, ptr %var.lx, align 8
  %fld.gep236 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load235, i32 0, i32 0
  %fld.load237 = load ptr, ptr %fld.gep236, align 8
  %s.read.len238 = getelementptr inbounds { i64, ptr }, ptr %fld.load237, i32 0, i32 0
  %s.read.len239 = load i64, ptr %s.read.len238, align 8
  %s.read.len240 = and i64 %s.read.len239, 281474976710655
  %str.tag241 = lshr i64 %s.read.len239, 48
  %str.immortal242 = icmp eq i64 %str.tag241, 0
  br i1 %str.immortal242, label %str_ok244, label %str_gen_check243

and.47.else:                                      ; preds = %and.46.exit
  br label %and.47.exit

and.47.exit:                                      ; preds = %and.47.else, %idx_ok256
  %and.47.phi = phi i1 [ %cmptmp262, %idx_ok256 ], [ %and.46.phi, %and.47.else ]
  store i1 %and.47.phi, ptr %var.is_prop_split, align 1
  %var.load263 = load i1, ptr %var.is_prop_split, align 1
  br i1 %var.load263, label %choice.then264, label %choice.else265

str_gen_check243:                                 ; preds = %and.47.then
  %arena.gen246 = call ptr @dva_arena_current()
  %arena.gen247 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen246, i32 0, i32 4
  %arena.gen248 = load i64, ptr %arena.gen247, align 8
  %str.tag.match249 = icmp eq i64 %str.tag241, %arena.gen248
  br i1 %str.tag.match249, label %str_ok244, label %str_stale245

str_ok244:                                        ; preds = %str_stale245, %str_gen_check243, %and.47.then
  %s.read.data250 = getelementptr inbounds { i64, ptr }, ptr %fld.load237, i32 0, i32 1
  %s.read.data251 = load ptr, ptr %s.read.data250, align 8
  %var.load252 = load i64, ptr %var.start, align 8
  %addtmp253 = add i64 %var.load252, 2
  %idx.neg254 = icmp slt i64 %addtmp253, 0
  br i1 %idx.neg254, label %idx_oob257, label %idx_big_check255

str_stale245:                                     ; preds = %str_gen_check243
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok244

idx_big_check255:                                 ; preds = %str_ok244
  %idx.big258 = icmp sge i64 %addtmp253, %s.read.len240
  br i1 %idx.big258, label %idx_oob257, label %idx_ok256

idx_ok256:                                        ; preds = %idx_oob257, %idx_big_check255
  %s.byte.gep259 = getelementptr i8, ptr %s.read.data251, i64 %addtmp253
  %s.byte260 = load i8, ptr %s.byte.gep259, align 1
  %s.byte.val261 = zext i8 %s.byte260 to i64
  %cmptmp262 = icmp eq i64 %s.byte.val261, 33
  br label %and.47.exit

idx_oob257:                                       ; preds = %idx_big_check255, %str_ok244
  %18 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok256

choice.then264:                                   ; preds = %and.47.exit
  %var.load267 = load ptr, ptr %var.lx, align 8
  %var.load268 = load i64, ptr %var.start, align 8
  %addtmp269 = add i64 %var.load268, 3
  %fld.gep270 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load267, i32 0, i32 1
  store i64 %addtmp269, ptr %fld.gep270, align 8
  %var.load271 = load ptr, ptr %var.lx, align 8
  %var.load272 = load i64, ptr %var.col, align 8
  %addtmp273 = add i64 %var.load272, 3
  %fld.gep274 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load271, i32 0, i32 3
  store i64 %addtmp273, ptr %fld.gep274, align 8
  %var.load275 = load ptr, ptr %var.lx, align 8
  %arena.cur276 = call ptr @dva_arena_current()
  %enum.alloc277 = call ptr @dva_arena_alloc(ptr %arena.cur276, i64 16)
  %tag.gep278 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc277, i32 0, i32 0
  store i64 0, ptr %tag.gep278, align 8
  %pay.gep279 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc277, i32 0, i32 1
  store ptr null, ptr %pay.gep279, align 8
  %var.load280 = load i64, ptr %var.start, align 8
  %var.load281 = load i64, ptr %var.line, align 8
  %var.load282 = load i64, ptr %var.col, align 8
  %call.res283 = call ptr @"lexer::mktok"(ptr %var.load275, ptr %enum.alloc277, i64 %var.load280, i64 3, i64 %var.load281, i64 %var.load282, ptr @str.23.struct)
  br label %choice.exit266

choice.else265:                                   ; preds = %and.47.exit
  %var.load284 = load i64, ptr %"var.i'", align 8
  %var.load285 = load i64, ptr %var.start, align 8
  %subtmp286 = sub i64 %var.load284, %var.load285
  %cmptmp287 = icmp sgt i64 %subtmp286, 2
  br i1 %cmptmp287, label %and.48.then, label %and.48.else

choice.exit266:                                   ; preds = %choice.exit346, %choice.then264
  %choice.res396 = phi ptr [ %call.res283, %choice.then264 ], [ %choice.res, %choice.exit346 ]
  br label %choice.exit158

and.48.then:                                      ; preds = %choice.else265
  %var.load288 = load ptr, ptr %var.lx, align 8
  %fld.gep289 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load288, i32 0, i32 0
  %fld.load290 = load ptr, ptr %fld.gep289, align 8
  %s.read.len291 = getelementptr inbounds { i64, ptr }, ptr %fld.load290, i32 0, i32 0
  %s.read.len292 = load i64, ptr %s.read.len291, align 8
  %s.read.len293 = and i64 %s.read.len292, 281474976710655
  %str.tag294 = lshr i64 %s.read.len292, 48
  %str.immortal295 = icmp eq i64 %str.tag294, 0
  br i1 %str.immortal295, label %str_ok297, label %str_gen_check296

and.48.else:                                      ; preds = %choice.else265
  br label %and.48.exit

and.48.exit:                                      ; preds = %and.48.else, %idx_ok308
  %and.48.phi = phi i1 [ %cmptmp314, %idx_ok308 ], [ %cmptmp287, %and.48.else ]
  br i1 %and.48.phi, label %and.49.then, label %and.49.else

str_gen_check296:                                 ; preds = %and.48.then
  %arena.gen299 = call ptr @dva_arena_current()
  %arena.gen300 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen299, i32 0, i32 4
  %arena.gen301 = load i64, ptr %arena.gen300, align 8
  %str.tag.match302 = icmp eq i64 %str.tag294, %arena.gen301
  br i1 %str.tag.match302, label %str_ok297, label %str_stale298

str_ok297:                                        ; preds = %str_stale298, %str_gen_check296, %and.48.then
  %s.read.data303 = getelementptr inbounds { i64, ptr }, ptr %fld.load290, i32 0, i32 1
  %s.read.data304 = load ptr, ptr %s.read.data303, align 8
  %var.load305 = load i64, ptr %var.start, align 8
  %idx.neg306 = icmp slt i64 %var.load305, 0
  br i1 %idx.neg306, label %idx_oob309, label %idx_big_check307

str_stale298:                                     ; preds = %str_gen_check296
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok297

idx_big_check307:                                 ; preds = %str_ok297
  %idx.big310 = icmp sge i64 %var.load305, %s.read.len293
  br i1 %idx.big310, label %idx_oob309, label %idx_ok308

idx_ok308:                                        ; preds = %idx_oob309, %idx_big_check307
  %s.byte.gep311 = getelementptr i8, ptr %s.read.data304, i64 %var.load305
  %s.byte312 = load i8, ptr %s.byte.gep311, align 1
  %s.byte.val313 = zext i8 %s.byte312 to i64
  %cmptmp314 = icmp eq i64 %s.byte.val313, 126
  br label %and.48.exit

idx_oob309:                                       ; preds = %idx_big_check307, %str_ok297
  %20 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok308

and.49.then:                                      ; preds = %and.48.exit
  %var.load315 = load ptr, ptr %var.lx, align 8
  %fld.gep316 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load315, i32 0, i32 0
  %fld.load317 = load ptr, ptr %fld.gep316, align 8
  %s.read.len318 = getelementptr inbounds { i64, ptr }, ptr %fld.load317, i32 0, i32 0
  %s.read.len319 = load i64, ptr %s.read.len318, align 8
  %s.read.len320 = and i64 %s.read.len319, 281474976710655
  %str.tag321 = lshr i64 %s.read.len319, 48
  %str.immortal322 = icmp eq i64 %str.tag321, 0
  br i1 %str.immortal322, label %str_ok324, label %str_gen_check323

and.49.else:                                      ; preds = %and.48.exit
  br label %and.49.exit

and.49.exit:                                      ; preds = %and.49.else, %idx_ok336
  %and.49.phi = phi i1 [ %cmptmp342, %idx_ok336 ], [ %and.48.phi, %and.49.else ]
  store i1 %and.49.phi, ptr %var.is_bind_split, align 1
  %var.load343 = load i1, ptr %var.is_bind_split, align 1
  br i1 %var.load343, label %choice.then344, label %choice.else345

str_gen_check323:                                 ; preds = %and.49.then
  %arena.gen326 = call ptr @dva_arena_current()
  %arena.gen327 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen326, i32 0, i32 4
  %arena.gen328 = load i64, ptr %arena.gen327, align 8
  %str.tag.match329 = icmp eq i64 %str.tag321, %arena.gen328
  br i1 %str.tag.match329, label %str_ok324, label %str_stale325

str_ok324:                                        ; preds = %str_stale325, %str_gen_check323, %and.49.then
  %s.read.data330 = getelementptr inbounds { i64, ptr }, ptr %fld.load317, i32 0, i32 1
  %s.read.data331 = load ptr, ptr %s.read.data330, align 8
  %var.load332 = load i64, ptr %var.start, align 8
  %addtmp333 = add i64 %var.load332, 1
  %idx.neg334 = icmp slt i64 %addtmp333, 0
  br i1 %idx.neg334, label %idx_oob337, label %idx_big_check335

str_stale325:                                     ; preds = %str_gen_check323
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok324

idx_big_check335:                                 ; preds = %str_ok324
  %idx.big338 = icmp sge i64 %addtmp333, %s.read.len320
  br i1 %idx.big338, label %idx_oob337, label %idx_ok336

idx_ok336:                                        ; preds = %idx_oob337, %idx_big_check335
  %s.byte.gep339 = getelementptr i8, ptr %s.read.data331, i64 %addtmp333
  %s.byte340 = load i8, ptr %s.byte.gep339, align 1
  %s.byte.val341 = zext i8 %s.byte340 to i64
  %cmptmp342 = icmp eq i64 %s.byte.val341, 126
  br label %and.49.exit

idx_oob337:                                       ; preds = %idx_big_check335, %str_ok324
  %22 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok336

choice.then344:                                   ; preds = %and.49.exit
  %var.load347 = load ptr, ptr %var.lx, align 8
  %var.load348 = load i64, ptr %var.start, align 8
  %addtmp349 = add i64 %var.load348, 2
  %fld.gep350 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load347, i32 0, i32 1
  store i64 %addtmp349, ptr %fld.gep350, align 8
  %var.load351 = load ptr, ptr %var.lx, align 8
  %var.load352 = load i64, ptr %var.col, align 8
  %addtmp353 = add i64 %var.load352, 2
  %fld.gep354 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load351, i32 0, i32 3
  store i64 %addtmp353, ptr %fld.gep354, align 8
  %var.load355 = load ptr, ptr %var.lx, align 8
  %arena.cur356 = call ptr @dva_arena_current()
  %enum.alloc357 = call ptr @dva_arena_alloc(ptr %arena.cur356, i64 16)
  %tag.gep358 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc357, i32 0, i32 0
  store i64 0, ptr %tag.gep358, align 8
  %pay.gep359 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc357, i32 0, i32 1
  store ptr null, ptr %pay.gep359, align 8
  %var.load360 = load i64, ptr %var.start, align 8
  %var.load361 = load i64, ptr %var.line, align 8
  %var.load362 = load i64, ptr %var.col, align 8
  %call.res363 = call ptr @"lexer::mktok"(ptr %var.load355, ptr %enum.alloc357, i64 %var.load360, i64 2, i64 %var.load361, i64 %var.load362, ptr @str.24.struct)
  br label %choice.exit346

choice.else345:                                   ; preds = %and.49.exit
  %var.load364 = load ptr, ptr %var.lx, align 8
  %arena.cur365 = call ptr @dva_arena_current()
  %enum.alloc366 = call ptr @dva_arena_alloc(ptr %arena.cur365, i64 16)
  %tag.gep367 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc366, i32 0, i32 0
  store i64 0, ptr %tag.gep367, align 8
  %pay.gep368 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc366, i32 0, i32 1
  store ptr null, ptr %pay.gep368, align 8
  %var.load369 = load i64, ptr %var.start, align 8
  %var.load370 = load i64, ptr %"var.i'", align 8
  %var.load371 = load i64, ptr %var.start, align 8
  %subtmp372 = sub i64 %var.load370, %var.load371
  %var.load373 = load i64, ptr %var.line, align 8
  %var.load374 = load i64, ptr %var.col, align 8
  %var.load375 = load ptr, ptr %var.lx, align 8
  %fld.gep376 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load375, i32 0, i32 0
  %fld.load377 = load ptr, ptr %fld.gep376, align 8
  %s.read.len378 = getelementptr inbounds { i64, ptr }, ptr %fld.load377, i32 0, i32 0
  %s.read.len379 = load i64, ptr %s.read.len378, align 8
  %s.read.len380 = and i64 %s.read.len379, 281474976710655
  %str.tag381 = lshr i64 %s.read.len379, 48
  %str.immortal382 = icmp eq i64 %str.tag381, 0
  br i1 %str.immortal382, label %str_ok384, label %str_gen_check383

choice.exit346:                                   ; preds = %str_ok384, %choice.then344
  %choice.res = phi ptr [ %call.res363, %choice.then344 ], [ %call.res395, %str_ok384 ]
  br label %choice.exit266

str_gen_check383:                                 ; preds = %choice.else345
  %arena.gen386 = call ptr @dva_arena_current()
  %arena.gen387 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen386, i32 0, i32 4
  %arena.gen388 = load i64, ptr %arena.gen387, align 8
  %str.tag.match389 = icmp eq i64 %str.tag381, %arena.gen388
  br i1 %str.tag.match389, label %str_ok384, label %str_stale385

str_ok384:                                        ; preds = %str_stale385, %str_gen_check383, %choice.else345
  %s.read.data390 = getelementptr inbounds { i64, ptr }, ptr %fld.load377, i32 0, i32 1
  %s.read.data391 = load ptr, ptr %s.read.data390, align 8
  %var.load392 = load i64, ptr %var.start, align 8
  %var.load393 = load i64, ptr %"var.i'", align 8
  %start.is_neg = icmp slt i64 %var.load392, 0
  %rel.start = add i64 %s.read.len380, %var.load392
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load392
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len380
  %final.start = select i1 %start.gt.len, i64 %s.read.len380, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load393, 0
  %rel.end = add i64 %s.read.len380, %var.load393
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load393
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len380
  %final.end = select i1 %end.gt.len, i64 %s.read.len380, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data391, i64 %final.start
  %arena.cur394 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur394, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %call.res395 = call ptr @"lexer::mktok"(ptr %var.load364, ptr %enum.alloc366, i64 %var.load369, i64 %subtmp372, i64 %var.load373, i64 %var.load374, ptr %str.view)
  br label %choice.exit346

str_stale385:                                     ; preds = %str_gen_check383
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok384
}

define i64 @"lexer::maybe_esc_adv"(ptr %0, i64 %1) #1 {
entry:
  %var.c = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.c, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load i64, ptr %var.c, align 8
  %call.res = call i64 @"lexer::adv"(ptr %var.load, i64 %var.load1)
  %var.load2 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load2, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 0
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen8 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen9 = load i64, ptr %arena.gen8, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen9
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %fld.load, %str.len.query7
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load10 = load ptr, ptr %var.lx, align 8
  %var.load11 = load ptr, ptr %var.lx, align 8
  %call.res12 = call i64 @"lexer::pk"(ptr %var.load11, i64 0)
  %call.res13 = call i64 @"lexer::adv"(ptr %var.load10, i64 %call.res12)
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %call.res13, %choice.then ], [ 0, %choice.else ]
  ret i64 %choice.res
}

define i64 @"lexer::on_str_esc"(ptr %0, i64 %1) #1 {
entry:
  %var.c = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.c, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 12
  store i64 1, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %var.load2 = load i64, ptr %var.c, align 8
  %call.res = call i64 @"lexer::maybe_esc_adv"(ptr %var.load1, i64 %var.load2)
  ret i64 %call.res
}

define i64 @"lexer::scan_string_body"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.50 = alloca i64, align 8
  %loop.idx.50 = alloca i64, align 8
  %"var.closed'" = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  store i64 0, ptr %"var.closed'", align 8
  store i64 0, ptr %loop.idx.50, align 8
  br label %loop.header.50

loop.header.50:                                   ; preds = %loop.latch.50, %entry
  %counter.load = load i64, ptr %loop.idx.50, align 8
  br label %loop.body.50

loop.body.50:                                     ; preds = %loop.header.50
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.50, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.50:                                 ; No predecessors!
  br label %loop.exit.50

loop.latch.50:                                    ; preds = %choice.exit10
  %step.val = load i64, ptr %loop.step.50, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.50, align 8
  br label %loop.header.50

loop.exit.50:                                     ; preds = %choice.case, %choice.then, %loop.exit.nat.50
  %var.load24 = load i64, ptr %"var.closed'", align 8
  ret i64 %var.load24

str_gen_check:                                    ; preds = %loop.body.50
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.50
  %cmptmp = icmp sge i64 %fld.load, %str.len.query5
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %loop.exit.50

choice.exit:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load8, i64 0)
  store i64 %call.res, ptr %var.c, align 8
  %var.load9 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load9, 34
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit10:                                    ; preds = %choice.next16, %choice.case15
  br label %loop.latch.50

choice.case:                                      ; preds = %choice.exit
  %var.load11 = load ptr, ptr %var.lx, align 8
  %var.load12 = load ptr, ptr %var.lx, align 8
  %call.res13 = call i64 @"lexer::pk"(ptr %var.load12, i64 0)
  %call.res14 = call i64 @"lexer::adv"(ptr %var.load11, i64 %call.res13)
  store i64 1, ptr %"var.closed'", align 8
  br label %loop.exit.50

choice.next:                                      ; preds = %choice.exit
  %val.match17 = icmp eq i64 %var.load9, 92
  br i1 %val.match17, label %choice.case15, label %choice.next16

choice.case15:                                    ; preds = %choice.next
  %var.load18 = load ptr, ptr %var.lx, align 8
  %var.load19 = load i64, ptr %var.c, align 8
  %call.res20 = call i64 @"lexer::on_str_esc"(ptr %var.load18, i64 %var.load19)
  br label %choice.exit10

choice.next16:                                    ; preds = %choice.next
  %var.load21 = load ptr, ptr %var.lx, align 8
  %var.load22 = load i64, ptr %var.c, align 8
  %call.res23 = call i64 @"lexer::adv"(ptr %var.load21, i64 %var.load22)
  br label %choice.exit10
}

define i64 @"lexer::scan_raw_body"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.is_esc = alloca i1, align 1
  %var.is_close = alloca i1, align 1
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.51 = alloca i64, align 8
  %loop.idx.51 = alloca i64, align 8
  %"var.closed'" = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  store i64 0, ptr %"var.closed'", align 8
  store i64 0, ptr %loop.idx.51, align 8
  br label %loop.header.51

loop.header.51:                                   ; preds = %loop.latch.51, %entry
  %counter.load = load i64, ptr %loop.idx.51, align 8
  br label %loop.body.51

loop.body.51:                                     ; preds = %loop.header.51
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.51, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.51:                                 ; No predecessors!
  br label %loop.exit.51

loop.latch.51:                                    ; preds = %choice.exit24
  %step.val = load i64, ptr %loop.step.51, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.51, align 8
  br label %loop.header.51

loop.exit.51:                                     ; preds = %choice.then23, %choice.then, %loop.exit.nat.51
  %var.load54 = load i64, ptr %"var.closed'", align 8
  ret i64 %var.load54

str_gen_check:                                    ; preds = %loop.body.51
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.51
  %cmptmp = icmp sge i64 %fld.load, %str.len.query5
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %loop.exit.51

choice.exit:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load8, i64 0)
  store i64 %call.res, ptr %var.c, align 8
  %var.load9 = load i64, ptr %var.c, align 8
  %cmptmp10 = icmp eq i64 %var.load9, 61
  br i1 %cmptmp10, label %and.52.then, label %and.52.else

and.52.then:                                      ; preds = %choice.exit
  %var.load11 = load ptr, ptr %var.lx, align 8
  %call.res12 = call i64 @"lexer::pk_off"(ptr %var.load11, i64 1)
  %cmptmp13 = icmp eq i64 %call.res12, 41
  br label %and.52.exit

and.52.else:                                      ; preds = %choice.exit
  br label %and.52.exit

and.52.exit:                                      ; preds = %and.52.else, %and.52.then
  %and.52.phi = phi i1 [ %cmptmp13, %and.52.then ], [ %cmptmp10, %and.52.else ]
  store i1 %and.52.phi, ptr %var.is_close, align 1
  %var.load14 = load i64, ptr %var.c, align 8
  %cmptmp15 = icmp eq i64 %var.load14, 61
  br i1 %cmptmp15, label %and.53.then, label %and.53.else

and.53.then:                                      ; preds = %and.52.exit
  %var.load16 = load ptr, ptr %var.lx, align 8
  %call.res17 = call i64 @"lexer::pk_off"(ptr %var.load16, i64 1)
  %cmptmp18 = icmp eq i64 %call.res17, 92
  br label %and.53.exit

and.53.else:                                      ; preds = %and.52.exit
  br label %and.53.exit

and.53.exit:                                      ; preds = %and.53.else, %and.53.then
  %and.53.phi = phi i1 [ %cmptmp18, %and.53.then ], [ %cmptmp15, %and.53.else ]
  br i1 %and.53.phi, label %and.54.then, label %and.54.else

and.54.then:                                      ; preds = %and.53.exit
  %var.load19 = load ptr, ptr %var.lx, align 8
  %call.res20 = call i64 @"lexer::pk_off"(ptr %var.load19, i64 2)
  %cmptmp21 = icmp eq i64 %call.res20, 41
  br label %and.54.exit

and.54.else:                                      ; preds = %and.53.exit
  br label %and.54.exit

and.54.exit:                                      ; preds = %and.54.else, %and.54.then
  %and.54.phi = phi i1 [ %cmptmp21, %and.54.then ], [ %and.53.phi, %and.54.else ]
  store i1 %and.54.phi, ptr %var.is_esc, align 1
  %var.load22 = load i1, ptr %var.is_close, align 1
  br i1 %var.load22, label %choice.then23, label %choice.else

choice.then23:                                    ; preds = %and.54.exit
  %var.load25 = load ptr, ptr %var.lx, align 8
  %var.load26 = load ptr, ptr %var.lx, align 8
  %call.res27 = call i64 @"lexer::pk"(ptr %var.load26, i64 0)
  %call.res28 = call i64 @"lexer::adv"(ptr %var.load25, i64 %call.res27)
  %var.load29 = load ptr, ptr %var.lx, align 8
  %var.load30 = load ptr, ptr %var.lx, align 8
  %call.res31 = call i64 @"lexer::pk"(ptr %var.load30, i64 0)
  %call.res32 = call i64 @"lexer::adv"(ptr %var.load29, i64 %call.res31)
  store i64 1, ptr %"var.closed'", align 8
  br label %loop.exit.51

choice.else:                                      ; preds = %and.54.exit
  %var.load33 = load i1, ptr %var.is_esc, align 1
  br i1 %var.load33, label %choice.then34, label %choice.else35

choice.exit24:                                    ; preds = %choice.exit36
  br label %loop.latch.51

choice.then34:                                    ; preds = %choice.else
  %var.load37 = load ptr, ptr %var.lx, align 8
  %var.load38 = load ptr, ptr %var.lx, align 8
  %call.res39 = call i64 @"lexer::pk"(ptr %var.load38, i64 0)
  %call.res40 = call i64 @"lexer::adv"(ptr %var.load37, i64 %call.res39)
  %var.load41 = load ptr, ptr %var.lx, align 8
  %var.load42 = load ptr, ptr %var.lx, align 8
  %call.res43 = call i64 @"lexer::pk"(ptr %var.load42, i64 0)
  %call.res44 = call i64 @"lexer::adv"(ptr %var.load41, i64 %call.res43)
  %var.load45 = load ptr, ptr %var.lx, align 8
  %var.load46 = load ptr, ptr %var.lx, align 8
  %call.res47 = call i64 @"lexer::pk"(ptr %var.load46, i64 0)
  %call.res48 = call i64 @"lexer::adv"(ptr %var.load45, i64 %call.res47)
  %var.load49 = load ptr, ptr %var.lx, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load49, i32 0, i32 12
  store i64 1, ptr %fld.gep50, align 8
  br label %choice.exit36

choice.else35:                                    ; preds = %choice.else
  %var.load51 = load ptr, ptr %var.lx, align 8
  %var.load52 = load i64, ptr %var.c, align 8
  %call.res53 = call i64 @"lexer::adv"(ptr %var.load51, i64 %var.load52)
  br label %choice.exit36

choice.exit36:                                    ; preds = %choice.else35, %choice.then34
  br label %choice.exit24
}

define i64 @"lexer::skip_multiline_ws"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.55 = alloca i64, align 8
  %loop.idx.55 = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store i64 %1, ptr %var.i, align 8
  store i64 %2, ptr %var.n, align 8
  %var.load = load i64, ptr %var.i, align 8
  store i64 %var.load, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.55, align 8
  br label %loop.header.55

loop.header.55:                                   ; preds = %loop.latch.55, %entry
  %counter.load = load i64, ptr %loop.idx.55, align 8
  br label %loop.body.55

loop.body.55:                                     ; preds = %loop.header.55
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.55, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load i64, ptr %"var.pos'", align 8
  %var.load2 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load1, %var.load2
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.55:                                 ; No predecessors!
  br label %loop.exit.55

loop.latch.55:                                    ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.55, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.55, align 8
  br label %loop.header.55

loop.exit.55:                                     ; preds = %choice.else, %choice.then, %loop.exit.nat.55
  %var.load17 = load i64, ptr %"var.pos'", align 8
  ret i64 %var.load17

choice.then:                                      ; preds = %loop.body.55
  br label %loop.exit.55

choice.exit:                                      ; preds = %loop.body.55
  %var.load3 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag = lshr i64 %s.read.len4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  %var.load9 = load i64, ptr %"var.pos'", align 8
  %idx.neg = icmp slt i64 %var.load9, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load9, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 %var.load9
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load10 = load i64, ptr %var.c, align 8
  %cmptmp11 = icmp eq i64 %var.load10, 32
  br i1 %cmptmp11, label %or.56.then, label %or.56.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

or.56.then:                                       ; preds = %idx_ok
  br label %or.56.exit

or.56.else:                                       ; preds = %idx_ok
  %var.load12 = load i64, ptr %var.c, align 8
  %cmptmp13 = icmp eq i64 %var.load12, 9
  br label %or.56.exit

or.56.exit:                                       ; preds = %or.56.else, %or.56.then
  %or.56.phi = phi i1 [ %cmptmp11, %or.56.then ], [ %cmptmp13, %or.56.else ]
  br i1 %or.56.phi, label %choice.then14, label %choice.else

choice.then14:                                    ; preds = %or.56.exit
  %var.load16 = load i64, ptr %"var.pos'", align 8
  %addtmp = add i64 %var.load16, 1
  store i64 %addtmp, ptr %"var.pos'", align 8
  br label %choice.exit15

choice.else:                                      ; preds = %or.56.exit
  br label %loop.exit.55

choice.exit15:                                    ; preds = %choice.then14
  br label %loop.latch.55
}

define i64 @"lexer::skip_eol_comment"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.57 = alloca i64, align 8
  %loop.idx.57 = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store i64 %1, ptr %var.i, align 8
  store i64 %2, ptr %var.n, align 8
  %var.load = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load, 2
  store i64 %addtmp, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.header.57:                                   ; preds = %loop.latch.57, %entry
  %counter.load = load i64, ptr %loop.idx.57, align 8
  br label %loop.body.57

loop.body.57:                                     ; preds = %loop.header.57
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.57, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load i64, ptr %"var.pos'", align 8
  %var.load2 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load1, %var.load2
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.57:                                 ; No predecessors!
  br label %loop.exit.57

loop.latch.57:                                    ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.57, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.exit.57:                                     ; preds = %choice.then14, %choice.then, %loop.exit.nat.57
  %var.load18 = load i64, ptr %"var.pos'", align 8
  ret i64 %var.load18

choice.then:                                      ; preds = %loop.body.57
  br label %loop.exit.57

choice.exit:                                      ; preds = %loop.body.57
  %var.load3 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag = lshr i64 %s.read.len4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  %var.load9 = load i64, ptr %"var.pos'", align 8
  %idx.neg = icmp slt i64 %var.load9, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load9, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 %var.load9
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load10 = load i64, ptr %var.c, align 8
  %cmptmp11 = icmp eq i64 %var.load10, 10
  br i1 %cmptmp11, label %or.58.then, label %or.58.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

or.58.then:                                       ; preds = %idx_ok
  br label %or.58.exit

or.58.else:                                       ; preds = %idx_ok
  %var.load12 = load i64, ptr %var.c, align 8
  %cmptmp13 = icmp eq i64 %var.load12, 13
  br label %or.58.exit

or.58.exit:                                       ; preds = %or.58.else, %or.58.then
  %or.58.phi = phi i1 [ %cmptmp11, %or.58.then ], [ %cmptmp13, %or.58.else ]
  br i1 %or.58.phi, label %choice.then14, label %choice.exit15

choice.then14:                                    ; preds = %or.58.exit
  br label %loop.exit.57

choice.exit15:                                    ; preds = %or.58.exit
  %var.load16 = load i64, ptr %"var.pos'", align 8
  %addtmp17 = add i64 %var.load16, 1
  store i64 %addtmp17, ptr %"var.pos'", align 8
  br label %loop.latch.57
}

define i64 @"lexer::check_multiline_str"(ptr %0) #1 {
entry:
  %var.is_raw = alloca i1, align 1
  %var.is_quote = alloca i1, align 1
  %var.c3 = alloca i64, align 8
  %var.top = alloca i64, align 8
  %var.next_indent = alloca i64, align 8
  %var.p4 = alloca i64, align 8
  %var.c2 = alloca i64, align 8
  %var.p3 = alloca i64, align 8
  %var.has_cr = alloca i1, align 1
  %var.c1 = alloca i64, align 8
  %var.p2 = alloca i64, align 8
  %var.has_cm = alloca i1, align 1
  %var.p1 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load5 = load ptr, ptr %var.lx, align 8
  %fld.gep6 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 1
  %fld.load10 = load i64, ptr %fld.gep9, align 8
  %var.load11 = load i64, ptr %var.n, align 8
  %call.res = call i64 @"lexer::skip_multiline_ws"(ptr %fld.load7, i64 %fld.load10, i64 %var.load11)
  store i64 %call.res, ptr %var.p1, align 8
  %var.load12 = load i64, ptr %var.p1, align 8
  %addtmp = add i64 %var.load12, 1
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %addtmp, %var.load13
  br i1 %cmptmp, label %and.59.then, label %and.59.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.59.then:                                      ; preds = %str_ok
  %var.load14 = load ptr, ptr %var.lx, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %s.read.len17 = load i64, ptr %s.read.len, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %str.tag19 = lshr i64 %s.read.len17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

and.59.else:                                      ; preds = %str_ok
  br label %and.59.exit

and.59.exit:                                      ; preds = %and.59.else, %idx_ok
  %and.59.phi = phi i1 [ %cmptmp30, %idx_ok ], [ %cmptmp, %and.59.else ]
  br i1 %and.59.phi, label %and.60.then, label %and.60.else

str_gen_check21:                                  ; preds = %and.59.then
  %arena.gen24 = call ptr @dva_arena_current()
  %arena.gen25 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen24, i32 0, i32 4
  %arena.gen26 = load i64, ptr %arena.gen25, align 8
  %str.tag.match27 = icmp eq i64 %str.tag19, %arena.gen26
  br i1 %str.tag.match27, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %and.59.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data, align 8
  %var.load29 = load i64, ptr %var.p1, align 8
  %idx.neg = icmp slt i64 %var.load29, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale23:                                      ; preds = %str_gen_check21
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

idx_big_check:                                    ; preds = %str_ok22
  %idx.big = icmp sge i64 %var.load29, %s.read.len18
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data28, i64 %var.load29
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp30 = icmp eq i64 %s.byte.val, 47
  br label %and.59.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok22
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.60.then:                                      ; preds = %and.59.exit
  %var.load31 = load ptr, ptr %var.lx, align 8
  %fld.gep32 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load31, i32 0, i32 0
  %fld.load33 = load ptr, ptr %fld.gep32, align 8
  %s.read.len34 = getelementptr inbounds { i64, ptr }, ptr %fld.load33, i32 0, i32 0
  %s.read.len35 = load i64, ptr %s.read.len34, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %str.tag37 = lshr i64 %s.read.len35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

and.60.else:                                      ; preds = %and.59.exit
  br label %and.60.exit

and.60.exit:                                      ; preds = %and.60.else, %idx_ok52
  %and.60.phi = phi i1 [ %cmptmp58, %idx_ok52 ], [ %and.59.phi, %and.60.else ]
  store i1 %and.60.phi, ptr %var.has_cm, align 1
  %var.load59 = load i1, ptr %var.has_cm, align 1
  br i1 %var.load59, label %choice.then, label %choice.else

str_gen_check39:                                  ; preds = %and.60.then
  %arena.gen42 = call ptr @dva_arena_current()
  %arena.gen43 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen42, i32 0, i32 4
  %arena.gen44 = load i64, ptr %arena.gen43, align 8
  %str.tag.match45 = icmp eq i64 %str.tag37, %arena.gen44
  br i1 %str.tag.match45, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %and.60.then
  %s.read.data46 = getelementptr inbounds { i64, ptr }, ptr %fld.load33, i32 0, i32 1
  %s.read.data47 = load ptr, ptr %s.read.data46, align 8
  %var.load48 = load i64, ptr %var.p1, align 8
  %addtmp49 = add i64 %var.load48, 1
  %idx.neg50 = icmp slt i64 %addtmp49, 0
  br i1 %idx.neg50, label %idx_oob53, label %idx_big_check51

str_stale41:                                      ; preds = %str_gen_check39
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

idx_big_check51:                                  ; preds = %str_ok40
  %idx.big54 = icmp sge i64 %addtmp49, %s.read.len36
  br i1 %idx.big54, label %idx_oob53, label %idx_ok52

idx_ok52:                                         ; preds = %idx_oob53, %idx_big_check51
  %s.byte.gep55 = getelementptr i8, ptr %s.read.data47, i64 %addtmp49
  %s.byte56 = load i8, ptr %s.byte.gep55, align 1
  %s.byte.val57 = zext i8 %s.byte56 to i64
  %cmptmp58 = icmp eq i64 %s.byte.val57, 47
  br label %and.60.exit

idx_oob53:                                        ; preds = %idx_big_check51, %str_ok40
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok52

choice.then:                                      ; preds = %and.60.exit
  %var.load60 = load ptr, ptr %var.lx, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load60, i32 0, i32 0
  %fld.load62 = load ptr, ptr %fld.gep61, align 8
  %var.load63 = load i64, ptr %var.p1, align 8
  %var.load64 = load i64, ptr %var.n, align 8
  %call.res65 = call i64 @"lexer::skip_eol_comment"(ptr %fld.load62, i64 %var.load63, i64 %var.load64)
  br label %choice.exit

choice.else:                                      ; preds = %and.60.exit
  %var.load66 = load i64, ptr %var.p1, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %call.res65, %choice.then ], [ %var.load66, %choice.else ]
  store i64 %choice.res, ptr %var.p2, align 8
  %var.load67 = load i64, ptr %var.p2, align 8
  %var.load68 = load i64, ptr %var.n, align 8
  %cmptmp69 = icmp sge i64 %var.load67, %var.load68
  br i1 %cmptmp69, label %choice.then70, label %choice.else71

choice.then70:                                    ; preds = %choice.exit
  br label %choice.exit72

choice.else71:                                    ; preds = %choice.exit
  %var.load73 = load ptr, ptr %var.lx, align 8
  %fld.gep74 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load73, i32 0, i32 0
  %fld.load75 = load ptr, ptr %fld.gep74, align 8
  %s.read.len76 = getelementptr inbounds { i64, ptr }, ptr %fld.load75, i32 0, i32 0
  %s.read.len77 = load i64, ptr %s.read.len76, align 8
  %s.read.len78 = and i64 %s.read.len77, 281474976710655
  %str.tag79 = lshr i64 %s.read.len77, 48
  %str.immortal80 = icmp eq i64 %str.tag79, 0
  br i1 %str.immortal80, label %str_ok82, label %str_gen_check81

choice.exit72:                                    ; preds = %choice.exit114, %choice.then70
  %choice.res243 = phi i64 [ 0, %choice.then70 ], [ %choice.res242, %choice.exit114 ]
  ret i64 %choice.res243

str_gen_check81:                                  ; preds = %choice.else71
  %arena.gen84 = call ptr @dva_arena_current()
  %arena.gen85 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen84, i32 0, i32 4
  %arena.gen86 = load i64, ptr %arena.gen85, align 8
  %str.tag.match87 = icmp eq i64 %str.tag79, %arena.gen86
  br i1 %str.tag.match87, label %str_ok82, label %str_stale83

str_ok82:                                         ; preds = %str_stale83, %str_gen_check81, %choice.else71
  %s.read.data88 = getelementptr inbounds { i64, ptr }, ptr %fld.load75, i32 0, i32 1
  %s.read.data89 = load ptr, ptr %s.read.data88, align 8
  %var.load90 = load i64, ptr %var.p2, align 8
  %idx.neg91 = icmp slt i64 %var.load90, 0
  br i1 %idx.neg91, label %idx_oob94, label %idx_big_check92

str_stale83:                                      ; preds = %str_gen_check81
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok82

idx_big_check92:                                  ; preds = %str_ok82
  %idx.big95 = icmp sge i64 %var.load90, %s.read.len78
  br i1 %idx.big95, label %idx_oob94, label %idx_ok93

idx_ok93:                                         ; preds = %idx_oob94, %idx_big_check92
  %s.byte.gep96 = getelementptr i8, ptr %s.read.data89, i64 %var.load90
  %s.byte97 = load i8, ptr %s.byte.gep96, align 1
  %s.byte.val98 = zext i8 %s.byte97 to i64
  store i64 %s.byte.val98, ptr %var.c1, align 8
  %var.load99 = load i64, ptr %var.c1, align 8
  %cmptmp100 = icmp eq i64 %var.load99, 13
  store i1 %cmptmp100, ptr %var.has_cr, align 1
  %var.load101 = load i1, ptr %var.has_cr, align 1
  br i1 %var.load101, label %choice.then102, label %choice.else103

idx_oob94:                                        ; preds = %idx_big_check92, %str_ok82
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok93

choice.then102:                                   ; preds = %idx_ok93
  %var.load105 = load i64, ptr %var.p2, align 8
  %addtmp106 = add i64 %var.load105, 1
  br label %choice.exit104

choice.else103:                                   ; preds = %idx_ok93
  %var.load107 = load i64, ptr %var.p2, align 8
  br label %choice.exit104

choice.exit104:                                   ; preds = %choice.else103, %choice.then102
  %choice.res108 = phi i64 [ %addtmp106, %choice.then102 ], [ %var.load107, %choice.else103 ]
  store i64 %choice.res108, ptr %var.p3, align 8
  %var.load109 = load i64, ptr %var.p3, align 8
  %var.load110 = load i64, ptr %var.n, align 8
  %cmptmp111 = icmp sge i64 %var.load109, %var.load110
  br i1 %cmptmp111, label %choice.then112, label %choice.else113

choice.then112:                                   ; preds = %choice.exit104
  br label %choice.exit114

choice.else113:                                   ; preds = %choice.exit104
  %var.load115 = load ptr, ptr %var.lx, align 8
  %fld.gep116 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load115, i32 0, i32 0
  %fld.load117 = load ptr, ptr %fld.gep116, align 8
  %s.read.len118 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %s.read.len119 = load i64, ptr %s.read.len118, align 8
  %s.read.len120 = and i64 %s.read.len119, 281474976710655
  %str.tag121 = lshr i64 %s.read.len119, 48
  %str.immortal122 = icmp eq i64 %str.tag121, 0
  br i1 %str.immortal122, label %str_ok124, label %str_gen_check123

choice.exit114:                                   ; preds = %choice.exit145, %choice.then112
  %choice.res242 = phi i64 [ 0, %choice.then112 ], [ %choice.res241, %choice.exit145 ]
  br label %choice.exit72

str_gen_check123:                                 ; preds = %choice.else113
  %arena.gen126 = call ptr @dva_arena_current()
  %arena.gen127 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen126, i32 0, i32 4
  %arena.gen128 = load i64, ptr %arena.gen127, align 8
  %str.tag.match129 = icmp eq i64 %str.tag121, %arena.gen128
  br i1 %str.tag.match129, label %str_ok124, label %str_stale125

str_ok124:                                        ; preds = %str_stale125, %str_gen_check123, %choice.else113
  %s.read.data130 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %s.read.data131 = load ptr, ptr %s.read.data130, align 8
  %var.load132 = load i64, ptr %var.p3, align 8
  %idx.neg133 = icmp slt i64 %var.load132, 0
  br i1 %idx.neg133, label %idx_oob136, label %idx_big_check134

str_stale125:                                     ; preds = %str_gen_check123
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok124

idx_big_check134:                                 ; preds = %str_ok124
  %idx.big137 = icmp sge i64 %var.load132, %s.read.len120
  br i1 %idx.big137, label %idx_oob136, label %idx_ok135

idx_ok135:                                        ; preds = %idx_oob136, %idx_big_check134
  %s.byte.gep138 = getelementptr i8, ptr %s.read.data131, i64 %var.load132
  %s.byte139 = load i8, ptr %s.byte.gep138, align 1
  %s.byte.val140 = zext i8 %s.byte139 to i64
  store i64 %s.byte.val140, ptr %var.c2, align 8
  %var.load141 = load i64, ptr %var.c2, align 8
  %cmptmp142 = icmp ne i64 %var.load141, 10
  br i1 %cmptmp142, label %choice.then143, label %choice.else144

idx_oob136:                                       ; preds = %idx_big_check134, %str_ok124
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok135

choice.then143:                                   ; preds = %idx_ok135
  br label %choice.exit145

choice.else144:                                   ; preds = %idx_ok135
  %var.load146 = load ptr, ptr %var.lx, align 8
  %fld.gep147 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load146, i32 0, i32 0
  %fld.load148 = load ptr, ptr %fld.gep147, align 8
  %var.load149 = load i64, ptr %var.p3, align 8
  %addtmp150 = add i64 %var.load149, 1
  %var.load151 = load i64, ptr %var.n, align 8
  %call.res152 = call i64 @"lexer::skip_multiline_ws"(ptr %fld.load148, i64 %addtmp150, i64 %var.load151)
  store i64 %call.res152, ptr %var.p4, align 8
  %var.load153 = load i64, ptr %var.p4, align 8
  %var.load154 = load i64, ptr %var.n, align 8
  %cmptmp155 = icmp sge i64 %var.load153, %var.load154
  br i1 %cmptmp155, label %choice.then156, label %choice.else157

choice.exit145:                                   ; preds = %choice.exit158, %choice.then143
  %choice.res241 = phi i64 [ 0, %choice.then143 ], [ %choice.res240, %choice.exit158 ]
  br label %choice.exit114

choice.then156:                                   ; preds = %choice.else144
  br label %choice.exit158

choice.else157:                                   ; preds = %choice.else144
  %var.load159 = load i64, ptr %var.p4, align 8
  %var.load160 = load i64, ptr %var.p3, align 8
  %addtmp161 = add i64 %var.load160, 1
  %subtmp = sub i64 %var.load159, %addtmp161
  store i64 %subtmp, ptr %var.next_indent, align 8
  %var.load162 = load ptr, ptr %var.lx, align 8
  %call.res163 = call i64 @"lexer::stack_top"(ptr %var.load162)
  store i64 %call.res163, ptr %var.top, align 8
  %var.load164 = load i64, ptr %var.next_indent, align 8
  %var.load165 = load i64, ptr %var.top, align 8
  %cmptmp166 = icmp sle i64 %var.load164, %var.load165
  br i1 %cmptmp166, label %choice.then167, label %choice.else168

choice.exit158:                                   ; preds = %choice.exit169, %choice.then156
  %choice.res240 = phi i64 [ 0, %choice.then156 ], [ %choice.res239, %choice.exit169 ]
  br label %choice.exit145

choice.then167:                                   ; preds = %choice.else157
  br label %choice.exit169

choice.else168:                                   ; preds = %choice.else157
  %var.load170 = load ptr, ptr %var.lx, align 8
  %fld.gep171 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load170, i32 0, i32 0
  %fld.load172 = load ptr, ptr %fld.gep171, align 8
  %s.read.len173 = getelementptr inbounds { i64, ptr }, ptr %fld.load172, i32 0, i32 0
  %s.read.len174 = load i64, ptr %s.read.len173, align 8
  %s.read.len175 = and i64 %s.read.len174, 281474976710655
  %str.tag176 = lshr i64 %s.read.len174, 48
  %str.immortal177 = icmp eq i64 %str.tag176, 0
  br i1 %str.immortal177, label %str_ok179, label %str_gen_check178

choice.exit169:                                   ; preds = %choice.exit236, %choice.then167
  %choice.res239 = phi i64 [ 0, %choice.then167 ], [ %choice.res238, %choice.exit236 ]
  br label %choice.exit158

str_gen_check178:                                 ; preds = %choice.else168
  %arena.gen181 = call ptr @dva_arena_current()
  %arena.gen182 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen181, i32 0, i32 4
  %arena.gen183 = load i64, ptr %arena.gen182, align 8
  %str.tag.match184 = icmp eq i64 %str.tag176, %arena.gen183
  br i1 %str.tag.match184, label %str_ok179, label %str_stale180

str_ok179:                                        ; preds = %str_stale180, %str_gen_check178, %choice.else168
  %s.read.data185 = getelementptr inbounds { i64, ptr }, ptr %fld.load172, i32 0, i32 1
  %s.read.data186 = load ptr, ptr %s.read.data185, align 8
  %var.load187 = load i64, ptr %var.p4, align 8
  %idx.neg188 = icmp slt i64 %var.load187, 0
  br i1 %idx.neg188, label %idx_oob191, label %idx_big_check189

str_stale180:                                     ; preds = %str_gen_check178
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok179

idx_big_check189:                                 ; preds = %str_ok179
  %idx.big192 = icmp sge i64 %var.load187, %s.read.len175
  br i1 %idx.big192, label %idx_oob191, label %idx_ok190

idx_ok190:                                        ; preds = %idx_oob191, %idx_big_check189
  %s.byte.gep193 = getelementptr i8, ptr %s.read.data186, i64 %var.load187
  %s.byte194 = load i8, ptr %s.byte.gep193, align 1
  %s.byte.val195 = zext i8 %s.byte194 to i64
  store i64 %s.byte.val195, ptr %var.c3, align 8
  %var.load196 = load i64, ptr %var.c3, align 8
  %cmptmp197 = icmp eq i64 %var.load196, 34
  store i1 %cmptmp197, ptr %var.is_quote, align 1
  %var.load198 = load i64, ptr %var.c3, align 8
  %cmptmp199 = icmp eq i64 %var.load198, 40
  br i1 %cmptmp199, label %and.61.then, label %and.61.else

idx_oob191:                                       ; preds = %idx_big_check189, %str_ok179
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok190

and.61.then:                                      ; preds = %idx_ok190
  %var.load200 = load i64, ptr %var.p4, align 8
  %addtmp201 = add i64 %var.load200, 1
  %var.load202 = load i64, ptr %var.n, align 8
  %cmptmp203 = icmp slt i64 %addtmp201, %var.load202
  br label %and.61.exit

and.61.else:                                      ; preds = %idx_ok190
  br label %and.61.exit

and.61.exit:                                      ; preds = %and.61.else, %and.61.then
  %and.61.phi = phi i1 [ %cmptmp203, %and.61.then ], [ %cmptmp199, %and.61.else ]
  br i1 %and.61.phi, label %and.62.then, label %and.62.else

and.62.then:                                      ; preds = %and.61.exit
  %var.load204 = load ptr, ptr %var.lx, align 8
  %fld.gep205 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load204, i32 0, i32 0
  %fld.load206 = load ptr, ptr %fld.gep205, align 8
  %s.read.len207 = getelementptr inbounds { i64, ptr }, ptr %fld.load206, i32 0, i32 0
  %s.read.len208 = load i64, ptr %s.read.len207, align 8
  %s.read.len209 = and i64 %s.read.len208, 281474976710655
  %str.tag210 = lshr i64 %s.read.len208, 48
  %str.immortal211 = icmp eq i64 %str.tag210, 0
  br i1 %str.immortal211, label %str_ok213, label %str_gen_check212

and.62.else:                                      ; preds = %and.61.exit
  br label %and.62.exit

and.62.exit:                                      ; preds = %and.62.else, %idx_ok225
  %and.62.phi = phi i1 [ %cmptmp231, %idx_ok225 ], [ %and.61.phi, %and.62.else ]
  store i1 %and.62.phi, ptr %var.is_raw, align 1
  %var.load232 = load i1, ptr %var.is_quote, align 1
  br i1 %var.load232, label %or.63.then, label %or.63.else

str_gen_check212:                                 ; preds = %and.62.then
  %arena.gen215 = call ptr @dva_arena_current()
  %arena.gen216 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen215, i32 0, i32 4
  %arena.gen217 = load i64, ptr %arena.gen216, align 8
  %str.tag.match218 = icmp eq i64 %str.tag210, %arena.gen217
  br i1 %str.tag.match218, label %str_ok213, label %str_stale214

str_ok213:                                        ; preds = %str_stale214, %str_gen_check212, %and.62.then
  %s.read.data219 = getelementptr inbounds { i64, ptr }, ptr %fld.load206, i32 0, i32 1
  %s.read.data220 = load ptr, ptr %s.read.data219, align 8
  %var.load221 = load i64, ptr %var.p4, align 8
  %addtmp222 = add i64 %var.load221, 1
  %idx.neg223 = icmp slt i64 %addtmp222, 0
  br i1 %idx.neg223, label %idx_oob226, label %idx_big_check224

str_stale214:                                     ; preds = %str_gen_check212
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok213

idx_big_check224:                                 ; preds = %str_ok213
  %idx.big227 = icmp sge i64 %addtmp222, %s.read.len209
  br i1 %idx.big227, label %idx_oob226, label %idx_ok225

idx_ok225:                                        ; preds = %idx_oob226, %idx_big_check224
  %s.byte.gep228 = getelementptr i8, ptr %s.read.data220, i64 %addtmp222
  %s.byte229 = load i8, ptr %s.byte.gep228, align 1
  %s.byte.val230 = zext i8 %s.byte229 to i64
  %cmptmp231 = icmp eq i64 %s.byte.val230, 61
  br label %and.62.exit

idx_oob226:                                       ; preds = %idx_big_check224, %str_ok213
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok225

or.63.then:                                       ; preds = %and.62.exit
  br label %or.63.exit

or.63.else:                                       ; preds = %and.62.exit
  %var.load233 = load i1, ptr %var.is_raw, align 1
  br label %or.63.exit

or.63.exit:                                       ; preds = %or.63.else, %or.63.then
  %or.63.phi = phi i1 [ %var.load232, %or.63.then ], [ %var.load233, %or.63.else ]
  br i1 %or.63.phi, label %choice.then234, label %choice.else235

choice.then234:                                   ; preds = %or.63.exit
  %var.load237 = load i64, ptr %var.p4, align 8
  br label %choice.exit236

choice.else235:                                   ; preds = %or.63.exit
  br label %choice.exit236

choice.exit236:                                   ; preds = %choice.else235, %choice.then234
  %choice.res238 = phi i64 [ %var.load237, %choice.then234 ], [ 0, %choice.else235 ]
  br label %choice.exit169
}

define i64 @"lexer::stack_top"(ptr %0) #1 {
entry:
  %var._20 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %subtmp = sub i64 %fld.load3, 1
  %a.rd.nonnull = icmp ne ptr %fld.load, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %entry
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.rd.len4 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %subtmp, 0
  %a.rd.lt = icmp slt i64 %subtmp, %a.rd.len4
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %a.rd.data5 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data5, i64 %subtmp
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur6 = call ptr @dva_arena_current()
  %err.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  %err.code.gep8 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 0
  store i64 4011, ptr %err.code.gep8, align 8
  %err.msg.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep9, align 8
  %err.file.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep10, align 8
  %err.line.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 3
  store i64 0, ptr %err.line.gep11, align 8
  %err.col.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 4
  store i64 0, ptr %err.col.gep12, align 8
  %err.ctx.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 5
  %err.ctx0.gep14 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep13, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep14, align 8
  %err.ctx1.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep13, i32 0, i32 1
  store i64 %a.rd.len4, ptr %err.ctx1.gep15, align 8
  %err.p2i16 = ptrtoint ptr %err.alloc7 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i16, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag17 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag17, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay18 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay18, ptr %var._, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay19 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay19 to ptr
  store ptr %pay.ptr, ptr %var._20, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %ram.pay18, %choice.then ], [ 0, %choice.else ]
  ret i64 %choice.res
}

define void @"lexer::adv_to"(ptr %0, i64 %1) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.64 = alloca i64, align 8
  %loop.idx.64 = alloca i64, align 8
  %var.target = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.target, align 8
  store i64 0, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.header.64:                                   ; preds = %loop.latch.64, %entry
  %counter.load = load i64, ptr %loop.idx.64, align 8
  br label %loop.body.64

loop.body.64:                                     ; preds = %loop.header.64
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.64, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr %var.target, align 8
  %cmptmp = icmp slt i64 %fld.load, %var.load1
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.64:                                 ; No predecessors!
  br label %loop.exit.64

loop.latch.64:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.64, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.exit.64:                                     ; preds = %choice.else, %loop.exit.nat.64
  ret void

choice.then:                                      ; preds = %loop.body.64
  %var.load2 = load ptr, ptr %var.lx, align 8
  %var.load3 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load3, i64 0)
  %call.res4 = call i64 @"lexer::adv"(ptr %var.load2, i64 %call.res)
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.64
  br label %loop.exit.64

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.64
}

define ptr @"lexer::scan_next_str_part"(ptr %0) #1 {
entry:
  %var.part_str = alloca ptr, align 8
  %var.str_s = alloca ptr, align 8
  %var.endq = alloca i64, align 8
  %var.closed_str = alloca i64, align 8
  %var.body_str = alloca i64, align 8
  %var.part_raw = alloca ptr, align 8
  %var.raw_s = alloca ptr, align 8
  %var.endmark = alloca i64, align 8
  %var.closed_raw = alloca i64, align 8
  %var.body_raw = alloca i64, align 8
  %var.is_raw = alloca i1, align 1
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load, i64 0)
  %cmptmp = icmp eq i64 %call.res, 40
  br i1 %cmptmp, label %and.65.then, label %and.65.else

and.65.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res2 = call i64 @"lexer::pk_off"(ptr %var.load1, i64 1)
  %cmptmp3 = icmp eq i64 %call.res2, 61
  br label %and.65.exit

and.65.else:                                      ; preds = %entry
  br label %and.65.exit

and.65.exit:                                      ; preds = %and.65.else, %and.65.then
  %and.65.phi = phi i1 [ %cmptmp3, %and.65.then ], [ %cmptmp, %and.65.else ]
  store i1 %and.65.phi, ptr %var.is_raw, align 1
  %var.load4 = load i1, ptr %var.is_raw, align 1
  br i1 %var.load4, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.65.exit
  %var.load5 = load ptr, ptr %var.lx, align 8
  %var.load6 = load ptr, ptr %var.lx, align 8
  %call.res7 = call i64 @"lexer::pk"(ptr %var.load6, i64 0)
  %call.res8 = call i64 @"lexer::adv"(ptr %var.load5, i64 %call.res7)
  %var.load9 = load ptr, ptr %var.lx, align 8
  %var.load10 = load ptr, ptr %var.lx, align 8
  %call.res11 = call i64 @"lexer::pk"(ptr %var.load10, i64 0)
  %call.res12 = call i64 @"lexer::adv"(ptr %var.load9, i64 %call.res11)
  %var.load13 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load13, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.body_raw, align 8
  %var.load14 = load ptr, ptr %var.lx, align 8
  %var.load15 = load ptr, ptr %var.lx, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 2
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %var.load18 = load ptr, ptr %var.lx, align 8
  %fld.gep19 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load18, i32 0, i32 3
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %call.res21 = call i64 @"lexer::scan_raw_body"(ptr %var.load14, i64 %fld.load17, i64 %fld.load20)
  store i64 %call.res21, ptr %var.closed_raw, align 8
  %var.load22 = load i64, ptr %var.closed_raw, align 8
  %val.match = icmp eq i64 %var.load22, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %and.65.exit
  %var.load57 = load ptr, ptr %var.lx, align 8
  %var.load58 = load ptr, ptr %var.lx, align 8
  %call.res59 = call i64 @"lexer::pk"(ptr %var.load58, i64 0)
  %call.res60 = call i64 @"lexer::adv"(ptr %var.load57, i64 %call.res59)
  %var.load61 = load ptr, ptr %var.lx, align 8
  %fld.gep62 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load61, i32 0, i32 1
  %fld.load63 = load i64, ptr %fld.gep62, align 8
  store i64 %fld.load63, ptr %var.body_str, align 8
  %var.load64 = load ptr, ptr %var.lx, align 8
  %var.load65 = load ptr, ptr %var.lx, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load65, i32 0, i32 2
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  %var.load68 = load ptr, ptr %var.lx, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load68, i32 0, i32 3
  %fld.load70 = load i64, ptr %fld.gep69, align 8
  %call.res71 = call i64 @"lexer::scan_string_body"(ptr %var.load64, i64 %fld.load67, i64 %fld.load70)
  store i64 %call.res71, ptr %var.closed_str, align 8
  %var.load72 = load i64, ptr %var.closed_str, align 8
  %val.match76 = icmp eq i64 %var.load72, 0
  br i1 %val.match76, label %choice.case74, label %choice.next75

choice.exit:                                      ; preds = %choice.exit132, %choice.exit47
  %choice.res143 = phi ptr [ %var.load56, %choice.exit47 ], [ %var.load142, %choice.exit132 ]
  ret ptr %choice.res143

choice.exit23:                                    ; preds = %choice.next, %choice.case
  %var.load31 = load ptr, ptr %var.lx, align 8
  %fld.gep32 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load31, i32 0, i32 1
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %subtmp = sub i64 %fld.load33, 2
  store i64 %subtmp, ptr %var.endmark, align 8
  %var.load34 = load ptr, ptr %var.lx, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load34, i32 0, i32 0
  %fld.load36 = load ptr, ptr %fld.gep35, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 0
  %s.read.len37 = load i64, ptr %s.read.len, align 8
  %s.read.len38 = and i64 %s.read.len37, 281474976710655
  %str.tag = lshr i64 %s.read.len37, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.case:                                      ; preds = %choice.then
  %var.load24 = load ptr, ptr %var.lx, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load24, i32 0, i32 2
  %fld.load26 = load i64, ptr %fld.gep25, align 8
  %var.load27 = load ptr, ptr %var.lx, align 8
  %fld.gep28 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load27, i32 0, i32 3
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %call.res30 = call i64 @"lexer::fail"(i64 1014, i64 %fld.load26, i64 %fld.load29, ptr @str.25.struct)
  br label %choice.exit23

choice.next:                                      ; preds = %choice.then
  br label %choice.exit23

str_gen_check:                                    ; preds = %choice.exit23
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen40
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit23
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 1
  %s.read.data41 = load ptr, ptr %s.read.data, align 8
  %var.load42 = load i64, ptr %var.body_raw, align 8
  %var.load43 = load i64, ptr %var.endmark, align 8
  %start.is_neg = icmp slt i64 %var.load42, 0
  %rel.start = add i64 %s.read.len38, %var.load42
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load42
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len38
  %final.start = select i1 %start.gt.len, i64 %s.read.len38, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load43, 0
  %rel.end = add i64 %s.read.len38, %var.load43
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load43
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len38
  %final.end = select i1 %end.gt.len, i64 %s.read.len38, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data41, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw_s, align 8
  %var.load44 = load ptr, ptr %var.lx, align 8
  %fld.gep45 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load44, i32 0, i32 12
  %fld.load46 = load i64, ptr %fld.gep45, align 8
  %val.match50 = icmp eq i64 %fld.load46, 1
  br i1 %val.match50, label %choice.case48, label %choice.next49

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.exit47:                                    ; preds = %choice.next49, %choice.case48
  %choice.res = phi ptr [ %call.res52, %choice.case48 ], [ %var.load53, %choice.next49 ]
  store ptr %choice.res, ptr %var.part_raw, align 8
  %var.load54 = load ptr, ptr %var.lx, align 8
  %fld.gep55 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load54, i32 0, i32 12
  store i64 0, ptr %fld.gep55, align 8
  %var.load56 = load ptr, ptr %var.part_raw, align 8
  br label %choice.exit

choice.case48:                                    ; preds = %str_ok
  %var.load51 = load ptr, ptr %var.raw_s, align 8
  %call.res52 = call ptr @"lexer::decode_raw_esc"(ptr %var.load51)
  br label %choice.exit47

choice.next49:                                    ; preds = %str_ok
  %var.load53 = load ptr, ptr %var.raw_s, align 8
  br label %choice.exit47

choice.exit73:                                    ; preds = %choice.next75, %choice.case74
  %var.load84 = load ptr, ptr %var.lx, align 8
  %fld.gep85 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load84, i32 0, i32 1
  %fld.load86 = load i64, ptr %fld.gep85, align 8
  %subtmp87 = sub i64 %fld.load86, 1
  store i64 %subtmp87, ptr %var.endq, align 8
  %var.load88 = load ptr, ptr %var.lx, align 8
  %fld.gep89 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load88, i32 0, i32 0
  %fld.load90 = load ptr, ptr %fld.gep89, align 8
  %s.read.len91 = getelementptr inbounds { i64, ptr }, ptr %fld.load90, i32 0, i32 0
  %s.read.len92 = load i64, ptr %s.read.len91, align 8
  %s.read.len93 = and i64 %s.read.len92, 281474976710655
  %str.tag94 = lshr i64 %s.read.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

choice.case74:                                    ; preds = %choice.else
  %var.load77 = load ptr, ptr %var.lx, align 8
  %fld.gep78 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load77, i32 0, i32 2
  %fld.load79 = load i64, ptr %fld.gep78, align 8
  %var.load80 = load ptr, ptr %var.lx, align 8
  %fld.gep81 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load80, i32 0, i32 3
  %fld.load82 = load i64, ptr %fld.gep81, align 8
  %call.res83 = call i64 @"lexer::fail"(i64 1008, i64 %fld.load79, i64 %fld.load82, ptr @str.26.struct)
  br label %choice.exit73

choice.next75:                                    ; preds = %choice.else
  br label %choice.exit73

str_gen_check96:                                  ; preds = %choice.exit73
  %arena.gen99 = call ptr @dva_arena_current()
  %arena.gen100 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen99, i32 0, i32 4
  %arena.gen101 = load i64, ptr %arena.gen100, align 8
  %str.tag.match102 = icmp eq i64 %str.tag94, %arena.gen101
  br i1 %str.tag.match102, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %choice.exit73
  %s.read.data103 = getelementptr inbounds { i64, ptr }, ptr %fld.load90, i32 0, i32 1
  %s.read.data104 = load ptr, ptr %s.read.data103, align 8
  %var.load105 = load i64, ptr %var.body_str, align 8
  %var.load106 = load i64, ptr %var.endq, align 8
  %start.is_neg107 = icmp slt i64 %var.load105, 0
  %rel.start108 = add i64 %s.read.len93, %var.load105
  %norm.start109 = select i1 %start.is_neg107, i64 %rel.start108, i64 %var.load105
  %start.lt.0110 = icmp slt i64 %norm.start109, 0
  %c.start.0111 = select i1 %start.lt.0110, i64 0, i64 %norm.start109
  %start.gt.len112 = icmp sgt i64 %c.start.0111, %s.read.len93
  %final.start113 = select i1 %start.gt.len112, i64 %s.read.len93, i64 %c.start.0111
  %end.is_neg114 = icmp slt i64 %var.load106, 0
  %rel.end115 = add i64 %s.read.len93, %var.load106
  %norm.end116 = select i1 %end.is_neg114, i64 %rel.end115, i64 %var.load106
  %end.lt.0117 = icmp slt i64 %norm.end116, 0
  %c.end.0118 = select i1 %end.lt.0117, i64 0, i64 %norm.end116
  %end.gt.len119 = icmp sgt i64 %c.end.0118, %s.read.len93
  %final.end120 = select i1 %end.gt.len119, i64 %s.read.len93, i64 %c.end.0118
  %view.empty121 = icmp sle i64 %final.end120, %final.start113
  %view.len.sub122 = sub i64 %final.end120, %final.start113
  %view.len123 = select i1 %view.empty121, i64 0, i64 %view.len.sub122
  %view.data124 = getelementptr i8, ptr %s.read.data104, i64 %final.start113
  %arena.cur125 = call ptr @dva_arena_current()
  %str.view126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 16)
  %str.build.len.gep127 = getelementptr inbounds { i64, ptr }, ptr %str.view126, i32 0, i32 0
  store i64 %view.len123, ptr %str.build.len.gep127, align 8
  %str.build.data.gep128 = getelementptr inbounds { i64, ptr }, ptr %str.view126, i32 0, i32 1
  store ptr %view.data124, ptr %str.build.data.gep128, align 8
  store ptr %str.view126, ptr %var.str_s, align 8
  %var.load129 = load ptr, ptr %var.lx, align 8
  %fld.gep130 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load129, i32 0, i32 12
  %fld.load131 = load i64, ptr %fld.gep130, align 8
  %val.match135 = icmp eq i64 %fld.load131, 1
  br i1 %val.match135, label %choice.case133, label %choice.next134

str_stale98:                                      ; preds = %str_gen_check96
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

choice.exit132:                                   ; preds = %choice.next134, %choice.case133
  %choice.res139 = phi ptr [ %call.res137, %choice.case133 ], [ %var.load138, %choice.next134 ]
  store ptr %choice.res139, ptr %var.part_str, align 8
  %var.load140 = load ptr, ptr %var.lx, align 8
  %fld.gep141 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load140, i32 0, i32 12
  store i64 0, ptr %fld.gep141, align 8
  %var.load142 = load ptr, ptr %var.part_str, align 8
  br label %choice.exit

choice.case133:                                   ; preds = %str_ok97
  %var.load136 = load ptr, ptr %var.str_s, align 8
  %call.res137 = call ptr @"lexer::decode_escapes"(ptr %var.load136)
  br label %choice.exit132

choice.next134:                                   ; preds = %str_ok97
  %var.load138 = load ptr, ptr %var.str_s, align 8
  br label %choice.exit132
}

define ptr @"lexer::concat_multiline_str"(ptr %0, ptr %1) #1 {
entry:
  %var.target = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.66 = alloca i64, align 8
  %loop.idx.66 = alloca i64, align 8
  %"var.res'" = alloca ptr, align 8
  %var.text = alloca ptr, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store ptr %1, ptr %var.text, align 8
  %var.load = load ptr, ptr %var.text, align 8
  store ptr %var.load, ptr %"var.res'", align 8
  store i64 0, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.header.66:                                   ; preds = %loop.latch.66, %entry
  %counter.load = load i64, ptr %loop.idx.66, align 8
  br label %loop.body.66

loop.body.66:                                     ; preds = %loop.header.66
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.66, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::check_multiline_str"(ptr %var.load1)
  store i64 %call.res, ptr %var.target, align 8
  %var.load2 = load i64, ptr %var.target, align 8
  %val.match = icmp eq i64 %var.load2, 0
  br i1 %val.match, label %choice.case, label %choice.next

loop.exit.nat.66:                                 ; No predecessors!
  br label %loop.exit.66

loop.latch.66:                                    ; preds = %concat.tot.len30
  %step.val = load i64, ptr %loop.step.66, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.exit.66:                                     ; preds = %choice.case, %loop.exit.nat.66
  %var.load33 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load33

choice.exit:                                      ; preds = %choice.next
  %var.load3 = load ptr, ptr %var.lx, align 8
  %var.load4 = load i64, ptr %var.target, align 8
  call void @"lexer::adv_to"(ptr %var.load3, i64 %var.load4)
  %var.load5 = load ptr, ptr %"var.res'", align 8
  %var.load6 = load ptr, ptr %var.lx, align 8
  %call.res7 = call ptr @"lexer::scan_next_str_part"(ptr %var.load6)
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %concat.lhs8 = load i64, ptr %concat.lhs, align 8
  %concat.lhs9 = and i64 %concat.lhs8, 281474976710655
  %str.tag = lshr i64 %concat.lhs8, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.case:                                      ; preds = %loop.body.66
  br label %loop.exit.66

choice.next:                                      ; preds = %loop.body.66
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen10 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen11 = load i64, ptr %arena.gen10, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen11
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %concat.lhs12 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %concat.lhs13 = load ptr, ptr %concat.lhs12, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res7, i32 0, i32 0
  %concat.rhs14 = load i64, ptr %concat.rhs, align 8
  %concat.rhs15 = and i64 %concat.rhs14, 281474976710655
  %str.tag16 = lshr i64 %concat.rhs14, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check18:                                  ; preds = %str_ok
  %arena.gen21 = call ptr @dva_arena_current()
  %arena.gen22 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen21, i32 0, i32 4
  %arena.gen23 = load i64, ptr %arena.gen22, align 8
  %str.tag.match24 = icmp eq i64 %str.tag16, %arena.gen23
  br i1 %str.tag.match24, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %str_ok
  %concat.rhs25 = getelementptr inbounds { i64, ptr }, ptr %call.res7, i32 0, i32 1
  %concat.rhs26 = load ptr, ptr %concat.rhs25, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs9, i64 %concat.rhs15)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len27

str_stale20:                                      ; preds = %str_gen_check18
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

concat.sum.len27:                                 ; preds = %str_overflow_abort, %str_ok19
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum28 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf29 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf29, label %str_overflow_abort31, label %concat.tot.len30

str_overflow_abort:                               ; preds = %str_ok19
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len27

concat.tot.len30:                                 ; preds = %str_overflow_abort31, %concat.sum.len27
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum28)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs13, i64 %concat.lhs9, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs26, i64 %concat.rhs15, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur32 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %"var.res'", align 8
  br label %loop.latch.66

str_overflow_abort31:                             ; preds = %concat.sum.len27
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len30
}

define ptr @"lexer::scan_string"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %"var.text'" = alloca ptr, align 8
  %var.raw = alloca ptr, align 8
  %var.endq = alloca i64, align 8
  %var.closed = alloca i64, align 8
  %var.body = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.body, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %var.load5 = load i64, ptr %var.line, align 8
  %var.load6 = load i64, ptr %var.col, align 8
  %call.res7 = call i64 @"lexer::scan_string_body"(ptr %var.load4, i64 %var.load5, i64 %var.load6)
  store i64 %call.res7, ptr %var.closed, align 8
  %var.load8 = load i64, ptr %var.closed, align 8
  %val.match = icmp eq i64 %var.load8, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %var.load12 = load ptr, ptr %var.lx, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load12, i32 0, i32 1
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %subtmp = sub i64 %fld.load14, 1
  store i64 %subtmp, ptr %var.endq, align 8
  %var.load15 = load ptr, ptr %var.lx, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 0
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %str.tag = lshr i64 %s.read.len18, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.case:                                      ; preds = %entry
  %var.load9 = load i64, ptr %var.line, align 8
  %var.load10 = load i64, ptr %var.col, align 8
  %call.res11 = call i64 @"lexer::fail"(i64 1008, i64 %var.load9, i64 %var.load10, ptr @str.26.struct)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen20 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen21 = load i64, ptr %arena.gen20, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen21
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %var.load23 = load i64, ptr %var.body, align 8
  %var.load24 = load i64, ptr %var.endq, align 8
  %start.is_neg = icmp slt i64 %var.load23, 0
  %rel.start = add i64 %s.read.len19, %var.load23
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load23
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len19
  %final.start = select i1 %start.gt.len, i64 %s.read.len19, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load24, 0
  %rel.end = add i64 %s.read.len19, %var.load24
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load24
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len19
  %final.end = select i1 %end.gt.len, i64 %s.read.len19, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data22, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw, align 8
  %var.load25 = load ptr, ptr %var.lx, align 8
  %fld.gep26 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load25, i32 0, i32 12
  %fld.load27 = load i64, ptr %fld.gep26, align 8
  %val.match31 = icmp eq i64 %fld.load27, 1
  br i1 %val.match31, label %choice.case29, label %choice.next30

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.exit28:                                    ; preds = %choice.next30, %choice.case29
  %choice.res = phi ptr [ %call.res33, %choice.case29 ], [ %var.load34, %choice.next30 ]
  store ptr %choice.res, ptr %"var.text'", align 8
  %var.load35 = load ptr, ptr %var.lx, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load35, i32 0, i32 12
  store i64 0, ptr %fld.gep36, align 8
  %var.load37 = load ptr, ptr %var.lx, align 8
  %var.load38 = load ptr, ptr %"var.text'", align 8
  %call.res39 = call ptr @"lexer::concat_multiline_str"(ptr %var.load37, ptr %var.load38)
  store ptr %call.res39, ptr %"var.text'", align 8
  %var.load40 = load ptr, ptr %var.lx, align 8
  %arena.cur41 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 5, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load42 = load i64, ptr %var.start, align 8
  %var.load43 = load ptr, ptr %var.lx, align 8
  %fld.gep44 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load43, i32 0, i32 1
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  %var.load46 = load i64, ptr %var.start, align 8
  %subtmp47 = sub i64 %fld.load45, %var.load46
  %var.load48 = load i64, ptr %var.line, align 8
  %var.load49 = load i64, ptr %var.col, align 8
  %var.load50 = load ptr, ptr %"var.text'", align 8
  %call.res51 = call ptr @"lexer::mktok"(ptr %var.load40, ptr %enum.alloc, i64 %var.load42, i64 %subtmp47, i64 %var.load48, i64 %var.load49, ptr %var.load50)
  ret ptr %call.res51

choice.case29:                                    ; preds = %str_ok
  %var.load32 = load ptr, ptr %var.raw, align 8
  %call.res33 = call ptr @"lexer::decode_escapes"(ptr %var.load32)
  br label %choice.exit28

choice.next30:                                    ; preds = %str_ok
  %var.load34 = load ptr, ptr %var.raw, align 8
  br label %choice.exit28
}

define ptr @"lexer::scan_rune"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.val = alloca i64, align 8
  %var.is_e = alloca i1, align 1
  %var.v = alloca i64, align 8
  %var.bad_head = alloca i1, align 1
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag = lshr i64 %str.len.query7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen9 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen10 = load i64, ptr %arena.gen9, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen10
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sge i64 %fld.load, %str.len.query8
  br i1 %cmptmp, label %or.67.then, label %or.67.else

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

or.67.then:                                       ; preds = %str_ok
  br label %or.67.exit

or.67.else:                                       ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.lx, align 8
  %call.res12 = call i64 @"lexer::pk"(ptr %var.load11, i64 0)
  %cmptmp13 = icmp eq i64 %call.res12, 39
  br label %or.67.exit

or.67.exit:                                       ; preds = %or.67.else, %or.67.then
  %or.67.phi = phi i1 [ %cmptmp, %or.67.then ], [ %cmptmp13, %or.67.else ]
  store i1 %or.67.phi, ptr %var.bad_head, align 1
  %var.load14 = load i1, ptr %var.bad_head, align 1
  br i1 %var.load14, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.67.exit
  %var.load15 = load i64, ptr %var.line, align 8
  %var.load16 = load i64, ptr %var.col, align 8
  %call.res17 = call i64 @"lexer::fail"(i64 1009, i64 %var.load15, i64 %var.load16, ptr @str.27.struct)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %or.67.exit
  %var.load18 = load ptr, ptr %var.lx, align 8
  %call.res19 = call i64 @"lexer::pk"(ptr %var.load18, i64 0)
  store i64 %call.res19, ptr %var.v, align 8
  %var.load20 = load i64, ptr %var.v, align 8
  %cmptmp21 = icmp eq i64 %var.load20, 92
  store i1 %cmptmp21, ptr %var.is_e, align 1
  %var.load22 = load i1, ptr %var.is_e, align 1
  br i1 %var.load22, label %choice.then23, label %choice.else

choice.then23:                                    ; preds = %choice.exit
  %var.load25 = load ptr, ptr %var.lx, align 8
  %call.res26 = call i64 @"lexer::pk_off"(ptr %var.load25, i64 1)
  %call.res27 = call i64 @"lexer::esc_val"(i64 %call.res26)
  br label %choice.exit24

choice.else:                                      ; preds = %choice.exit
  %var.load28 = load ptr, ptr %var.lx, align 8
  %var.load29 = load i64, ptr %var.v, align 8
  %call.res30 = call i64 @"lexer::adv"(ptr %var.load28, i64 %var.load29)
  br label %choice.exit24

choice.exit24:                                    ; preds = %choice.else, %choice.then23
  %choice.res = phi i64 [ %call.res27, %choice.then23 ], [ %call.res30, %choice.else ]
  store i64 %choice.res, ptr %var.val, align 8
  %var.load31 = load i1, ptr %var.is_e, align 1
  br i1 %var.load31, label %choice.then32, label %choice.exit33

choice.then32:                                    ; preds = %choice.exit24
  %var.load34 = load ptr, ptr %var.lx, align 8
  %var.load35 = load ptr, ptr %var.lx, align 8
  %call.res36 = call i64 @"lexer::pk"(ptr %var.load35, i64 0)
  %call.res37 = call i64 @"lexer::adv"(ptr %var.load34, i64 %call.res36)
  br label %choice.exit33

choice.exit33:                                    ; preds = %choice.then32, %choice.exit24
  %var.load38 = load i1, ptr %var.is_e, align 1
  br i1 %var.load38, label %choice.then39, label %choice.exit40

choice.then39:                                    ; preds = %choice.exit33
  %var.load41 = load ptr, ptr %var.lx, align 8
  %var.load42 = load ptr, ptr %var.lx, align 8
  %call.res43 = call i64 @"lexer::pk"(ptr %var.load42, i64 0)
  %call.res44 = call i64 @"lexer::adv"(ptr %var.load41, i64 %call.res43)
  br label %choice.exit40

choice.exit40:                                    ; preds = %choice.then39, %choice.exit33
  %var.load45 = load ptr, ptr %var.lx, align 8
  %call.res46 = call i64 @"lexer::pk"(ptr %var.load45, i64 0)
  %cmptmp47 = icmp eq i64 %call.res46, 39
  br i1 %cmptmp47, label %choice.then48, label %choice.else49

choice.then48:                                    ; preds = %choice.exit40
  %var.load51 = load ptr, ptr %var.lx, align 8
  %var.load52 = load ptr, ptr %var.lx, align 8
  %call.res53 = call i64 @"lexer::pk"(ptr %var.load52, i64 0)
  %call.res54 = call i64 @"lexer::adv"(ptr %var.load51, i64 %call.res53)
  br label %choice.exit50

choice.else49:                                    ; preds = %choice.exit40
  %var.load55 = load i64, ptr %var.line, align 8
  %var.load56 = load i64, ptr %var.col, align 8
  %call.res57 = call i64 @"lexer::fail"(i64 1010, i64 %var.load55, i64 %var.load56, ptr @str.28.struct)
  br label %choice.exit50

choice.exit50:                                    ; preds = %choice.else49, %choice.then48
  %var.load58 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 7, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load59 = load i64, ptr %var.start, align 8
  %var.load60 = load ptr, ptr %var.lx, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load60, i32 0, i32 1
  %fld.load62 = load i64, ptr %fld.gep61, align 8
  %var.load63 = load i64, ptr %var.start, align 8
  %subtmp = sub i64 %fld.load62, %var.load63
  %var.load64 = load i64, ptr %var.line, align 8
  %var.load65 = load i64, ptr %var.col, align 8
  %var.load66 = load i64, ptr %var.val, align 8
  %call.res67 = call ptr @"str::from_int"(i64 %var.load66)
  %call.res68 = call ptr @"lexer::mktok"(ptr %var.load58, ptr %enum.alloc, i64 %var.load59, i64 %subtmp, i64 %var.load64, i64 %var.load65, ptr %call.res67)
  ret ptr %call.res68
}

define ptr @"lexer::scan_raw_string"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %"var.text'" = alloca ptr, align 8
  %var.raw = alloca ptr, align 8
  %var.endmark = alloca i64, align 8
  %var.closed = alloca i64, align 8
  %var.body = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  %var.load3 = load ptr, ptr %var.lx, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %call.res5 = call i64 @"lexer::pk"(ptr %var.load4, i64 0)
  %call.res6 = call i64 @"lexer::adv"(ptr %var.load3, i64 %call.res5)
  %var.load7 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load7, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.body, align 8
  %var.load8 = load ptr, ptr %var.lx, align 8
  %var.load9 = load i64, ptr %var.line, align 8
  %var.load10 = load i64, ptr %var.col, align 8
  %call.res11 = call i64 @"lexer::scan_raw_body"(ptr %var.load8, i64 %var.load9, i64 %var.load10)
  store i64 %call.res11, ptr %var.closed, align 8
  %var.load12 = load i64, ptr %var.closed, align 8
  %val.match = icmp eq i64 %var.load12, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %var.load16 = load ptr, ptr %var.lx, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load16, i32 0, i32 1
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %subtmp = sub i64 %fld.load18, 2
  store i64 %subtmp, ptr %var.endmark, align 8
  %var.load19 = load ptr, ptr %var.lx, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load19, i32 0, i32 0
  %fld.load21 = load ptr, ptr %fld.gep20, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 0
  %s.read.len22 = load i64, ptr %s.read.len, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %str.tag = lshr i64 %s.read.len22, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.case:                                      ; preds = %entry
  %var.load13 = load i64, ptr %var.line, align 8
  %var.load14 = load i64, ptr %var.col, align 8
  %call.res15 = call i64 @"lexer::fail"(i64 1014, i64 %var.load13, i64 %var.load14, ptr @str.25.struct)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen24 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen25 = load i64, ptr %arena.gen24, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen25
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data, align 8
  %var.load27 = load i64, ptr %var.body, align 8
  %var.load28 = load i64, ptr %var.endmark, align 8
  %start.is_neg = icmp slt i64 %var.load27, 0
  %rel.start = add i64 %s.read.len23, %var.load27
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load27
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len23
  %final.start = select i1 %start.gt.len, i64 %s.read.len23, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load28, 0
  %rel.end = add i64 %s.read.len23, %var.load28
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load28
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len23
  %final.end = select i1 %end.gt.len, i64 %s.read.len23, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data26, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw, align 8
  %var.load29 = load ptr, ptr %var.lx, align 8
  %fld.gep30 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load29, i32 0, i32 12
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %val.match35 = icmp eq i64 %fld.load31, 1
  br i1 %val.match35, label %choice.case33, label %choice.next34

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.exit32:                                    ; preds = %choice.next34, %choice.case33
  %choice.res = phi ptr [ %call.res37, %choice.case33 ], [ %var.load38, %choice.next34 ]
  store ptr %choice.res, ptr %"var.text'", align 8
  %var.load39 = load ptr, ptr %var.lx, align 8
  %fld.gep40 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load39, i32 0, i32 12
  store i64 0, ptr %fld.gep40, align 8
  %var.load41 = load ptr, ptr %var.lx, align 8
  %var.load42 = load ptr, ptr %"var.text'", align 8
  %call.res43 = call ptr @"lexer::concat_multiline_str"(ptr %var.load41, ptr %var.load42)
  store ptr %call.res43, ptr %"var.text'", align 8
  %var.load44 = load ptr, ptr %var.lx, align 8
  %arena.cur45 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 6, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load46 = load i64, ptr %var.start, align 8
  %var.load47 = load ptr, ptr %var.lx, align 8
  %fld.gep48 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load47, i32 0, i32 1
  %fld.load49 = load i64, ptr %fld.gep48, align 8
  %var.load50 = load i64, ptr %var.start, align 8
  %subtmp51 = sub i64 %fld.load49, %var.load50
  %var.load52 = load i64, ptr %var.line, align 8
  %var.load53 = load i64, ptr %var.col, align 8
  %var.load54 = load ptr, ptr %"var.text'", align 8
  %call.res55 = call ptr @"lexer::mktok"(ptr %var.load44, ptr %enum.alloc, i64 %var.load46, i64 %subtmp51, i64 %var.load52, i64 %var.load53, ptr %var.load54)
  ret ptr %call.res55

choice.case33:                                    ; preds = %str_ok
  %var.load36 = load ptr, ptr %var.raw, align 8
  %call.res37 = call ptr @"lexer::decode_raw_esc"(ptr %var.load36)
  br label %choice.exit32

choice.next34:                                    ; preds = %str_ok
  %var.load38 = load ptr, ptr %var.raw, align 8
  br label %choice.exit32
}

define i64 @"lexer::skip_line_comment"(ptr %0, i64 %1) #1 {
entry:
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::scan_while"(ptr %var.load, ptr @clo.const.47)
  ret i64 %call.res
}

define internal i1 @"$anon_fn.116"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_nl"(i64 %var.load)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define void @"lexer::skip_block_comment"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.68 = alloca i64, align 8
  %loop.idx.68 = alloca i64, align 8
  %"var.done'" = alloca i1, align 1
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  %var.load3 = load ptr, ptr %var.lx, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %call.res5 = call i64 @"lexer::pk"(ptr %var.load4, i64 0)
  %call.res6 = call i64 @"lexer::adv"(ptr %var.load3, i64 %call.res5)
  store i1 false, ptr %"var.done'", align 1
  store i64 0, ptr %loop.idx.68, align 8
  br label %loop.header.68

loop.header.68:                                   ; preds = %loop.latch.68, %entry
  %counter.load = load i64, ptr %loop.idx.68, align 8
  br label %loop.body.68

loop.body.68:                                     ; preds = %loop.header.68
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.68, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load7 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load7, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag = lshr i64 %str.len.query11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.68:                                 ; No predecessors!
  br label %loop.exit.68

loop.latch.68:                                    ; preds = %choice.exit22
  %step.val = load i64, ptr %loop.step.68, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.68, align 8
  br label %loop.header.68

loop.exit.68:                                     ; preds = %choice.then21, %choice.then, %loop.exit.nat.68
  %var.load35 = load i1, ptr %"var.done'", align 1
  %nottmp = xor i1 %var.load35, true
  br i1 %nottmp, label %choice.then36, label %choice.exit37

str_gen_check:                                    ; preds = %loop.body.68
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen14
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.68
  %cmptmp = icmp sge i64 %fld.load, %str.len.query12
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %loop.exit.68

choice.exit:                                      ; preds = %str_ok
  %var.load15 = load ptr, ptr %var.lx, align 8
  %call.res16 = call i64 @"lexer::pk"(ptr %var.load15, i64 0)
  %cmptmp17 = icmp eq i64 %call.res16, 42
  br i1 %cmptmp17, label %and.69.then, label %and.69.else

and.69.then:                                      ; preds = %choice.exit
  %var.load18 = load ptr, ptr %var.lx, align 8
  %call.res19 = call i64 @"lexer::pk_off"(ptr %var.load18, i64 1)
  %cmptmp20 = icmp eq i64 %call.res19, 47
  br label %and.69.exit

and.69.else:                                      ; preds = %choice.exit
  br label %and.69.exit

and.69.exit:                                      ; preds = %and.69.else, %and.69.then
  %and.69.phi = phi i1 [ %cmptmp20, %and.69.then ], [ %cmptmp17, %and.69.else ]
  br i1 %and.69.phi, label %choice.then21, label %choice.else

choice.then21:                                    ; preds = %and.69.exit
  %var.load23 = load ptr, ptr %var.lx, align 8
  %var.load24 = load ptr, ptr %var.lx, align 8
  %call.res25 = call i64 @"lexer::pk"(ptr %var.load24, i64 0)
  %call.res26 = call i64 @"lexer::adv"(ptr %var.load23, i64 %call.res25)
  %var.load27 = load ptr, ptr %var.lx, align 8
  %var.load28 = load ptr, ptr %var.lx, align 8
  %call.res29 = call i64 @"lexer::pk"(ptr %var.load28, i64 0)
  %call.res30 = call i64 @"lexer::adv"(ptr %var.load27, i64 %call.res29)
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.68

choice.else:                                      ; preds = %and.69.exit
  %var.load31 = load ptr, ptr %var.lx, align 8
  %var.load32 = load ptr, ptr %var.lx, align 8
  %call.res33 = call i64 @"lexer::pk"(ptr %var.load32, i64 0)
  %call.res34 = call i64 @"lexer::adv"(ptr %var.load31, i64 %call.res33)
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else
  br label %loop.latch.68

choice.then36:                                    ; preds = %loop.exit.68
  %var.load38 = load i64, ptr %var.line, align 8
  %var.load39 = load i64, ptr %var.col, align 8
  %call.res40 = call i64 @"lexer::fail"(i64 1007, i64 %var.load38, i64 %var.load39, ptr @str.29.struct)
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.then36, %loop.exit.68
  ret void
}

define ptr @"lexer::scan_hash_word"(ptr %0, i64 %1) #1 {
entry:
  %var.start = alloca i64, align 8
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.start, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %call.res5 = call i64 @"lexer::scan_while"(ptr %var.load4, ptr @clo.const.50)
  %var.load6 = load ptr, ptr %var.lx, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %str.tag = lshr i64 %s.read.len9, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen11 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen12 = load i64, ptr %arena.gen11, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen12
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.start, align 8
  %var.load15 = load ptr, ptr %var.lx, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 1
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %start.is_neg = icmp slt i64 %var.load14, 0
  %rel.start = add i64 %s.read.len10, %var.load14
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load14
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len10
  %final.start = select i1 %start.gt.len, i64 %s.read.len10, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load17, 0
  %rel.end = add i64 %s.read.len10, %fld.load17
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load17
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len10
  %final.end = select i1 %end.gt.len, i64 %s.read.len10, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data13, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  ret ptr %str.view

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define internal i1 @"$anon_fn.119"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_id_char"(i64 %var.load)
  ret i1 %call.res
}

define i64 @"lexer::scan_qp_body"(ptr %0, i64 %1) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.70 = alloca i64, align 8
  %loop.idx.70 = alloca i64, align 8
  %"var.closed'" = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 0, ptr %"var.closed'", align 8
  store i64 0, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.header.70:                                   ; preds = %loop.latch.70, %entry
  %counter.load = load i64, ptr %loop.idx.70, align 8
  br label %loop.body.70

loop.body.70:                                     ; preds = %loop.header.70
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.70, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.70:                                 ; No predecessors!
  br label %loop.exit.70

loop.latch.70:                                    ; preds = %choice.exit10
  %step.val = load i64, ptr %loop.step.70, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.exit.70:                                     ; preds = %choice.case, %choice.then, %loop.exit.nat.70
  %var.load29 = load i64, ptr %"var.closed'", align 8
  ret i64 %var.load29

str_gen_check:                                    ; preds = %loop.body.70
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.70
  %cmptmp = icmp sge i64 %fld.load, %str.len.query5
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %loop.exit.70

choice.exit:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load8, i64 0)
  store i64 %call.res, ptr %var.c, align 8
  %var.load9 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load9, 34
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit10:                                    ; preds = %choice.next16, %choice.case15
  br label %loop.latch.70

choice.case:                                      ; preds = %choice.exit
  %var.load11 = load ptr, ptr %var.lx, align 8
  %var.load12 = load ptr, ptr %var.lx, align 8
  %call.res13 = call i64 @"lexer::pk"(ptr %var.load12, i64 0)
  %call.res14 = call i64 @"lexer::adv"(ptr %var.load11, i64 %call.res13)
  store i64 1, ptr %"var.closed'", align 8
  br label %loop.exit.70

choice.next:                                      ; preds = %choice.exit
  %val.match17 = icmp eq i64 %var.load9, 92
  br i1 %val.match17, label %choice.case15, label %choice.next16

choice.case15:                                    ; preds = %choice.next
  %var.load18 = load ptr, ptr %var.lx, align 8
  %var.load19 = load ptr, ptr %var.lx, align 8
  %call.res20 = call i64 @"lexer::pk"(ptr %var.load19, i64 0)
  %call.res21 = call i64 @"lexer::adv"(ptr %var.load18, i64 %call.res20)
  %var.load22 = load ptr, ptr %var.lx, align 8
  %var.load23 = load ptr, ptr %var.lx, align 8
  %call.res24 = call i64 @"lexer::pk"(ptr %var.load23, i64 0)
  %call.res25 = call i64 @"lexer::adv"(ptr %var.load22, i64 %call.res24)
  br label %choice.exit10

choice.next16:                                    ; preds = %choice.next
  %var.load26 = load ptr, ptr %var.lx, align 8
  %var.load27 = load i64, ptr %var.c, align 8
  %call.res28 = call i64 @"lexer::adv"(ptr %var.load26, i64 %var.load27)
  br label %choice.exit10
}

define ptr @"lexer::scan_quoted_path"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.path = alloca ptr, align 8
  %var.endq = alloca i64, align 8
  %var.closed = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.p, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %var.load5 = load i64, ptr %var.line, align 8
  %call.res6 = call i64 @"lexer::scan_qp_body"(ptr %var.load4, i64 %var.load5)
  store i64 %call.res6, ptr %var.closed, align 8
  %var.load7 = load i64, ptr %var.closed, align 8
  %val.match = icmp eq i64 %var.load7, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %var.load11 = load ptr, ptr %var.lx, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load11, i32 0, i32 1
  %fld.load13 = load i64, ptr %fld.gep12, align 8
  %subtmp = sub i64 %fld.load13, 1
  store i64 %subtmp, ptr %var.endq, align 8
  %var.load14 = load ptr, ptr %var.lx, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %s.read.len17 = load i64, ptr %s.read.len, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %str.tag = lshr i64 %s.read.len17, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.case:                                      ; preds = %entry
  %var.load8 = load i64, ptr %var.line, align 8
  %var.load9 = load i64, ptr %var.col, align 8
  %call.res10 = call i64 @"lexer::fail"(i64 1011, i64 %var.load8, i64 %var.load9, ptr @str.30.struct)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen19 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen20 = load i64, ptr %arena.gen19, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen20
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data, align 8
  %var.load22 = load i64, ptr %var.p, align 8
  %var.load23 = load i64, ptr %var.endq, align 8
  %start.is_neg = icmp slt i64 %var.load22, 0
  %rel.start = add i64 %s.read.len18, %var.load22
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load22
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len18
  %final.start = select i1 %start.gt.len, i64 %s.read.len18, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load23, 0
  %rel.end = add i64 %s.read.len18, %var.load23
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load23
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len18
  %final.end = select i1 %end.gt.len, i64 %s.read.len18, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data21, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.path, align 8
  %var.load24 = load ptr, ptr %var.path, align 8
  ret ptr %var.load24

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define i1 @"lexer::is_path_rune"(i64 %0) #1 {
entry:
  %var.r = alloca i64, align 8
  store i64 %0, ptr %var.r, align 8
  %var.load = load i64, ptr %var.r, align 8
  %call.res = call i1 @"lexer::is_ws"(i64 %var.load)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %and.71.then, label %and.71.else

and.71.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.r, align 8
  %call.res2 = call i1 @"lexer::is_nl"(i64 %var.load1)
  %nottmp3 = xor i1 %call.res2, true
  br label %and.71.exit

and.71.else:                                      ; preds = %entry
  br label %and.71.exit

and.71.exit:                                      ; preds = %and.71.else, %and.71.then
  %and.71.phi = phi i1 [ %nottmp3, %and.71.then ], [ %nottmp, %and.71.else ]
  br i1 %and.71.phi, label %and.72.then, label %and.72.else

and.72.then:                                      ; preds = %and.71.exit
  %var.load4 = load i64, ptr %var.r, align 8
  %cmptmp = icmp ne i64 %var.load4, 59
  br label %and.72.exit

and.72.else:                                      ; preds = %and.71.exit
  br label %and.72.exit

and.72.exit:                                      ; preds = %and.72.else, %and.72.then
  %and.72.phi = phi i1 [ %cmptmp, %and.72.then ], [ %and.71.phi, %and.72.else ]
  br i1 %and.72.phi, label %and.73.then, label %and.73.else

and.73.then:                                      ; preds = %and.72.exit
  %var.load5 = load i64, ptr %var.r, align 8
  %cmptmp6 = icmp ne i64 %var.load5, 34
  br label %and.73.exit

and.73.else:                                      ; preds = %and.72.exit
  br label %and.73.exit

and.73.exit:                                      ; preds = %and.73.else, %and.73.then
  %and.73.phi = phi i1 [ %cmptmp6, %and.73.then ], [ %and.72.phi, %and.73.else ]
  br i1 %and.73.phi, label %and.74.then, label %and.74.else

and.74.then:                                      ; preds = %and.73.exit
  %var.load7 = load i64, ptr %var.r, align 8
  %cmptmp8 = icmp ne i64 %var.load7, 0
  br label %and.74.exit

and.74.else:                                      ; preds = %and.73.exit
  br label %and.74.exit

and.74.exit:                                      ; preds = %and.74.else, %and.74.then
  %and.74.phi = phi i1 [ %cmptmp8, %and.74.then ], [ %and.73.phi, %and.74.else ]
  ret i1 %and.74.phi
}

define ptr @"lexer::scan_bare_path"(ptr %0, i64 %1) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.75 = alloca i64, align 8
  %loop.idx.75 = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.p, align 8
  store i64 0, ptr %loop.idx.75, align 8
  br label %loop.header.75

loop.header.75:                                   ; preds = %loop.latch.75, %entry
  %counter.load = load i64, ptr %loop.idx.75, align 8
  %loop.cond = icmp slt i64 %counter.load, 1000000
  br i1 %loop.cond, label %loop.body.75, label %loop.exit.nat.75

loop.body.75:                                     ; preds = %loop.header.75
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.75, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  store i64 %call.res, ptr %var.c, align 8
  %var.load2 = load i64, ptr %var.c, align 8
  %call.res3 = call i1 @"lexer::is_path_rune"(i64 %var.load2)
  %nottmp = xor i1 %call.res3, true
  br i1 %nottmp, label %or.76.then, label %or.76.else

loop.exit.nat.75:                                 ; preds = %loop.header.75
  br label %loop.exit.75

loop.latch.75:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.75, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.75, align 8
  br label %loop.header.75

loop.exit.75:                                     ; preds = %choice.then, %loop.exit.nat.75
  %var.load11 = load ptr, ptr %var.lx, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %str.tag = lshr i64 %s.read.len14, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

or.76.then:                                       ; preds = %loop.body.75
  br label %or.76.exit

or.76.else:                                       ; preds = %loop.body.75
  %var.load4 = load i64, ptr %var.c, align 8
  %cmptmp = icmp eq i64 %var.load4, 47
  br i1 %cmptmp, label %and.77.then, label %and.77.else

or.76.exit:                                       ; preds = %and.77.exit, %or.76.then
  %or.76.phi = phi i1 [ %nottmp, %or.76.then ], [ %and.77.phi, %and.77.exit ]
  br i1 %or.76.phi, label %choice.then, label %choice.exit

and.77.then:                                      ; preds = %or.76.else
  %var.load5 = load ptr, ptr %var.lx, align 8
  %call.res6 = call i64 @"lexer::pk_off"(ptr %var.load5, i64 1)
  %cmptmp7 = icmp eq i64 %call.res6, 47
  br label %and.77.exit

and.77.else:                                      ; preds = %or.76.else
  br label %and.77.exit

and.77.exit:                                      ; preds = %and.77.else, %and.77.then
  %and.77.phi = phi i1 [ %cmptmp7, %and.77.then ], [ %cmptmp, %and.77.else ]
  br label %or.76.exit

choice.then:                                      ; preds = %or.76.exit
  br label %loop.exit.75

choice.exit:                                      ; preds = %or.76.exit
  %var.load8 = load ptr, ptr %var.lx, align 8
  %var.load9 = load i64, ptr %var.c, align 8
  %call.res10 = call i64 @"lexer::adv"(ptr %var.load8, i64 %var.load9)
  br label %loop.latch.75

str_gen_check:                                    ; preds = %loop.exit.75
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen16 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen17 = load i64, ptr %arena.gen16, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen17
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.exit.75
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %var.p, align 8
  %var.load20 = load ptr, ptr %var.lx, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load20, i32 0, i32 1
  %fld.load22 = load i64, ptr %fld.gep21, align 8
  %start.is_neg = icmp slt i64 %var.load19, 0
  %rel.start = add i64 %s.read.len15, %var.load19
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load19
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len15
  %final.start = select i1 %start.gt.len, i64 %s.read.len15, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load22, 0
  %rel.end = add i64 %s.read.len15, %fld.load22
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load22
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len15
  %final.end = select i1 %end.gt.len, i64 %s.read.len15, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data18, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  ret ptr %str.view

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define ptr @"lexer::scan_use_directive"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.kind = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  %var.word = alloca ptr, align 8
  %var.wstart = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._70 = alloca i64, align 8
  %var._i69 = alloca i64, align 8
  %loop.step.80 = alloca i64, align 8
  %loop.idx.80 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.79 = alloca i64, align 8
  %loop.idx.79 = alloca i64, align 8
  %var.is_dash_dyn = alloca i1, align 1
  %"var.is_imp'" = alloca i1, align 1
  %"var.is_dyn'" = alloca i1, align 1
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.hstart, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  store i1 false, ptr %"var.is_dyn'", align 1
  store i1 false, ptr %"var.is_imp'", align 1
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sle i64 %addtmp, %str.len.query5
  br i1 %cmptmp, label %and.78.then, label %and.78.else

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.78.then:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

and.78.else:                                      ; preds = %str_ok
  br label %and.78.exit

and.78.exit:                                      ; preds = %and.78.else, %str.eq.merge
  %and.78.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.78.else ]
  store i1 %and.78.phi, ptr %var.is_dash_dyn, align 1
  %var.load52 = load i1, ptr %var.is_dash_dyn, align 1
  br i1 %var.load52, label %choice.then, label %choice.else

str_gen_check15:                                  ; preds = %and.78.then
  %arena.gen18 = call ptr @dva_arena_current()
  %arena.gen19 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen18, i32 0, i32 4
  %arena.gen20 = load i64, ptr %arena.gen19, align 8
  %str.tag.match21 = icmp eq i64 %str.tag13, %arena.gen20
  br i1 %str.tag.match21, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %and.78.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %var.load23 = load ptr, ptr %var.lx, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load i64, ptr %fld.gep24, align 8
  %var.load26 = load ptr, ptr %var.lx, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load26, i32 0, i32 1
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %addtmp29 = add i64 %fld.load28, 8
  %start.is_neg = icmp slt i64 %fld.load25, 0
  %rel.start = add i64 %s.read.len12, %fld.load25
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load25
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp29, 0
  %rel.end = add i64 %s.read.len12, %addtmp29
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp29
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data22, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len30 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len31 = and i64 %eq.lhs.len30, 281474976710655
  %str.tag32 = lshr i64 %eq.lhs.len30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

str_stale17:                                      ; preds = %str_gen_check15
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

str_gen_check34:                                  ; preds = %str_ok16
  %arena.gen37 = call ptr @dva_arena_current()
  %arena.gen38 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen37, i32 0, i32 4
  %arena.gen39 = load i64, ptr %arena.gen38, align 8
  %str.tag.match40 = icmp eq i64 %str.tag32, %arena.gen39
  br i1 %str.tag.match40, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %str_ok16
  %eq.rhs.len = load i64, ptr @str.31.struct, align 8
  %eq.rhs.len41 = and i64 %eq.rhs.len, 281474976710655
  %str.tag42 = lshr i64 %eq.rhs.len, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale36:                                      ; preds = %str_gen_check34
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

str_gen_check44:                                  ; preds = %str_ok35
  %arena.gen47 = call ptr @dva_arena_current()
  %arena.gen48 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen47, i32 0, i32 4
  %arena.gen49 = load i64, ptr %arena.gen48, align 8
  %str.tag.match50 = icmp eq i64 %str.tag42, %arena.gen49
  br i1 %str.tag.match50, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok35
  %eq.len = icmp eq i64 %eq.lhs.len31, %eq.rhs.len41
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale46:                                      ; preds = %str_gen_check44
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

str.eq.then:                                      ; preds = %str_ok45
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data51 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data51, ptr %eq.rhs.data, i64 %eq.lhs.len31)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok45
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.78.exit

choice.then:                                      ; preds = %and.78.exit
  store i64 0, ptr %loop.idx.79, align 8
  br label %loop.header.79

choice.else:                                      ; preds = %and.78.exit
  %var.load56 = load ptr, ptr %var.lx, align 8
  %call.res57 = call i64 @"lexer::pk"(ptr %var.load56, i64 0)
  %cmptmp58 = icmp eq i64 %call.res57, 40
  br i1 %cmptmp58, label %choice.then59, label %choice.else60

choice.exit:                                      ; preds = %choice.exit61, %loop.exit.79
  %var.load315 = load ptr, ptr %var.lx, align 8
  %call.res316 = call i64 @"lexer::skip_ws"(ptr %var.load315, i64 0)
  %var.load317 = load ptr, ptr %var.lx, align 8
  %call.res318 = call i64 @"lexer::pk"(ptr %var.load317, i64 0)
  %cmptmp319 = icmp eq i64 %call.res318, 34
  br i1 %cmptmp319, label %choice.then320, label %choice.else321

loop.header.79:                                   ; preds = %loop.latch.79, %choice.then
  %counter.load = load i64, ptr %loop.idx.79, align 8
  %loop.cond = icmp slt i64 %counter.load, 8
  br i1 %loop.cond, label %loop.body.79, label %loop.exit.nat.79

loop.body.79:                                     ; preds = %loop.header.79
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.79, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load53 = load ptr, ptr %var.lx, align 8
  %var.load54 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load54, i64 0)
  %call.res55 = call i64 @"lexer::adv"(ptr %var.load53, i64 %call.res)
  br label %loop.latch.79

loop.exit.nat.79:                                 ; preds = %loop.header.79
  br label %loop.exit.79

loop.latch.79:                                    ; preds = %loop.body.79
  %step.val = load i64, ptr %loop.step.79, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.exit.79:                                     ; preds = %loop.exit.nat.79
  store i1 true, ptr %"var.is_dyn'", align 1
  br label %choice.exit

choice.then59:                                    ; preds = %choice.else
  %var.load62 = load ptr, ptr %var.lx, align 8
  %var.load63 = load ptr, ptr %var.lx, align 8
  %call.res64 = call i64 @"lexer::pk"(ptr %var.load63, i64 0)
  %call.res65 = call i64 @"lexer::adv"(ptr %var.load62, i64 %call.res64)
  store i64 0, ptr %loop.idx.80, align 8
  br label %loop.header.80

choice.else60:                                    ; preds = %choice.else
  br label %choice.exit61

choice.exit61:                                    ; preds = %choice.else60, %loop.exit.80
  br label %choice.exit

loop.header.80:                                   ; preds = %loop.latch.80, %choice.then59
  %counter.load66 = load i64, ptr %loop.idx.80, align 8
  %loop.cond67 = icmp slt i64 %counter.load66, 100
  br i1 %loop.cond67, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i68 = sub i64 %counter.load66, 0
  store i64 1, ptr %loop.step.80, align 8
  store i64 %loop.rel.i68, ptr %var._i69, align 8
  store i64 %counter.load66, ptr %var._70, align 8
  %var.load71 = load ptr, ptr %var.lx, align 8
  %call.res72 = call i64 @"lexer::skip_ws"(ptr %var.load71, i64 0)
  %var.load73 = load ptr, ptr %var.lx, align 8
  %call.res74 = call i64 @"lexer::pk"(ptr %var.load73, i64 0)
  store i64 %call.res74, ptr %var.c, align 8
  %var.load75 = load i64, ptr %var.c, align 8
  %cmptmp76 = icmp eq i64 %var.load75, 41
  br i1 %cmptmp76, label %choice.then77, label %choice.exit78

loop.exit.nat.80:                                 ; preds = %loop.header.80
  br label %loop.exit.80

loop.latch.80:                                    ; preds = %choice.exit308
  %step.val313 = load i64, ptr %loop.step.80, align 8
  %loop.next314 = add i64 %counter.load66, %step.val313
  store i64 %loop.next314, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.exit.80:                                     ; preds = %choice.then307, %choice.then86, %choice.then77, %loop.exit.nat.80
  br label %choice.exit61

choice.then77:                                    ; preds = %loop.body.80
  %var.load79 = load ptr, ptr %var.lx, align 8
  %var.load80 = load i64, ptr %var.c, align 8
  %call.res81 = call i64 @"lexer::adv"(ptr %var.load79, i64 %var.load80)
  br label %loop.exit.80

choice.exit78:                                    ; preds = %loop.body.80
  %var.load82 = load i64, ptr %var.c, align 8
  %cmptmp83 = icmp eq i64 %var.load82, 0
  br i1 %cmptmp83, label %or.81.then, label %or.81.else

or.81.then:                                       ; preds = %choice.exit78
  br label %or.81.exit

or.81.else:                                       ; preds = %choice.exit78
  %var.load84 = load i64, ptr %var.c, align 8
  %call.res85 = call i1 @"lexer::is_nl"(i64 %var.load84)
  br label %or.81.exit

or.81.exit:                                       ; preds = %or.81.else, %or.81.then
  %or.81.phi = phi i1 [ %cmptmp83, %or.81.then ], [ %call.res85, %or.81.else ]
  br i1 %or.81.phi, label %choice.then86, label %choice.exit87

choice.then86:                                    ; preds = %or.81.exit
  %var.load88 = load i64, ptr %var.line, align 8
  %var.load89 = load i64, ptr %var.col, align 8
  %call.res90 = call i64 @"lexer::fail"(i64 1015, i64 %var.load88, i64 %var.load89, ptr @str.32.struct)
  br label %loop.exit.80

choice.exit87:                                    ; preds = %or.81.exit
  %var.load91 = load ptr, ptr %var.lx, align 8
  %fld.gep92 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load91, i32 0, i32 1
  %fld.load93 = load i64, ptr %fld.gep92, align 8
  store i64 %fld.load93, ptr %var.wstart, align 8
  %var.load94 = load ptr, ptr %var.lx, align 8
  %call.res95 = call i64 @"lexer::scan_while"(ptr %var.load94, ptr @clo.const.57)
  %var.load96 = load ptr, ptr %var.lx, align 8
  %fld.gep97 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load96, i32 0, i32 0
  %fld.load98 = load ptr, ptr %fld.gep97, align 8
  %s.read.len99 = getelementptr inbounds { i64, ptr }, ptr %fld.load98, i32 0, i32 0
  %s.read.len100 = load i64, ptr %s.read.len99, align 8
  %s.read.len101 = and i64 %s.read.len100, 281474976710655
  %str.tag102 = lshr i64 %s.read.len100, 48
  %str.immortal103 = icmp eq i64 %str.tag102, 0
  br i1 %str.immortal103, label %str_ok105, label %str_gen_check104

str_gen_check104:                                 ; preds = %choice.exit87
  %arena.gen107 = call ptr @dva_arena_current()
  %arena.gen108 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen107, i32 0, i32 4
  %arena.gen109 = load i64, ptr %arena.gen108, align 8
  %str.tag.match110 = icmp eq i64 %str.tag102, %arena.gen109
  br i1 %str.tag.match110, label %str_ok105, label %str_stale106

str_ok105:                                        ; preds = %str_stale106, %str_gen_check104, %choice.exit87
  %s.read.data111 = getelementptr inbounds { i64, ptr }, ptr %fld.load98, i32 0, i32 1
  %s.read.data112 = load ptr, ptr %s.read.data111, align 8
  %var.load113 = load i64, ptr %var.wstart, align 8
  %var.load114 = load ptr, ptr %var.lx, align 8
  %fld.gep115 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load114, i32 0, i32 1
  %fld.load116 = load i64, ptr %fld.gep115, align 8
  %start.is_neg117 = icmp slt i64 %var.load113, 0
  %rel.start118 = add i64 %s.read.len101, %var.load113
  %norm.start119 = select i1 %start.is_neg117, i64 %rel.start118, i64 %var.load113
  %start.lt.0120 = icmp slt i64 %norm.start119, 0
  %c.start.0121 = select i1 %start.lt.0120, i64 0, i64 %norm.start119
  %start.gt.len122 = icmp sgt i64 %c.start.0121, %s.read.len101
  %final.start123 = select i1 %start.gt.len122, i64 %s.read.len101, i64 %c.start.0121
  %end.is_neg124 = icmp slt i64 %fld.load116, 0
  %rel.end125 = add i64 %s.read.len101, %fld.load116
  %norm.end126 = select i1 %end.is_neg124, i64 %rel.end125, i64 %fld.load116
  %end.lt.0127 = icmp slt i64 %norm.end126, 0
  %c.end.0128 = select i1 %end.lt.0127, i64 0, i64 %norm.end126
  %end.gt.len129 = icmp sgt i64 %c.end.0128, %s.read.len101
  %final.end130 = select i1 %end.gt.len129, i64 %s.read.len101, i64 %c.end.0128
  %view.empty131 = icmp sle i64 %final.end130, %final.start123
  %view.len.sub132 = sub i64 %final.end130, %final.start123
  %view.len133 = select i1 %view.empty131, i64 0, i64 %view.len.sub132
  %view.data134 = getelementptr i8, ptr %s.read.data112, i64 %final.start123
  %arena.cur135 = call ptr @dva_arena_current()
  %str.view136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 16)
  %str.build.len.gep137 = getelementptr inbounds { i64, ptr }, ptr %str.view136, i32 0, i32 0
  store i64 %view.len133, ptr %str.build.len.gep137, align 8
  %str.build.data.gep138 = getelementptr inbounds { i64, ptr }, ptr %str.view136, i32 0, i32 1
  store ptr %view.data134, ptr %str.build.data.gep138, align 8
  store ptr %str.view136, ptr %var.word, align 8
  %var.load139 = load ptr, ptr %var.word, align 8
  %eq.lhs.len141 = getelementptr inbounds { i64, ptr }, ptr %var.load139, i32 0, i32 0
  %eq.lhs.len142 = load i64, ptr %eq.lhs.len141, align 8
  %eq.lhs.len143 = and i64 %eq.lhs.len142, 281474976710655
  %str.tag144 = lshr i64 %eq.lhs.len142, 48
  %str.immortal145 = icmp eq i64 %str.tag144, 0
  br i1 %str.immortal145, label %str_ok147, label %str_gen_check146

str_stale106:                                     ; preds = %str_gen_check104
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok105

choice.exit140:                                   ; preds = %concat.tot.len279, %choice.case174, %choice.case
  %var.load290 = load ptr, ptr %var.lx, align 8
  %call.res291 = call i64 @"lexer::skip_ws"(ptr %var.load290, i64 0)
  %var.load292 = load ptr, ptr %var.lx, align 8
  %call.res293 = call i64 @"lexer::pk"(ptr %var.load292, i64 0)
  %cmptmp294 = icmp eq i64 %call.res293, 44
  br i1 %cmptmp294, label %choice.then295, label %choice.else296

choice.case:                                      ; preds = %str.eq.merge167
  store i1 true, ptr %"var.is_dyn'", align 1
  br label %choice.exit140

choice.next:                                      ; preds = %str.eq.merge167
  %eq.lhs.len176 = getelementptr inbounds { i64, ptr }, ptr %var.load139, i32 0, i32 0
  %eq.lhs.len177 = load i64, ptr %eq.lhs.len176, align 8
  %eq.lhs.len178 = and i64 %eq.lhs.len177, 281474976710655
  %str.tag179 = lshr i64 %eq.lhs.len177, 48
  %str.immortal180 = icmp eq i64 %str.tag179, 0
  br i1 %str.immortal180, label %str_ok182, label %str_gen_check181

str_gen_check146:                                 ; preds = %str_ok105
  %arena.gen149 = call ptr @dva_arena_current()
  %arena.gen150 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen149, i32 0, i32 4
  %arena.gen151 = load i64, ptr %arena.gen150, align 8
  %str.tag.match152 = icmp eq i64 %str.tag144, %arena.gen151
  br i1 %str.tag.match152, label %str_ok147, label %str_stale148

str_ok147:                                        ; preds = %str_stale148, %str_gen_check146, %str_ok105
  %eq.rhs.len153 = load i64, ptr @str.33.struct, align 8
  %eq.rhs.len154 = and i64 %eq.rhs.len153, 281474976710655
  %str.tag155 = lshr i64 %eq.rhs.len153, 48
  %str.immortal156 = icmp eq i64 %str.tag155, 0
  br i1 %str.immortal156, label %str_ok158, label %str_gen_check157

str_stale148:                                     ; preds = %str_gen_check146
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok147

str_gen_check157:                                 ; preds = %str_ok147
  %arena.gen160 = call ptr @dva_arena_current()
  %arena.gen161 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen160, i32 0, i32 4
  %arena.gen162 = load i64, ptr %arena.gen161, align 8
  %str.tag.match163 = icmp eq i64 %str.tag155, %arena.gen162
  br i1 %str.tag.match163, label %str_ok158, label %str_stale159

str_ok158:                                        ; preds = %str_stale159, %str_gen_check157, %str_ok147
  %eq.len164 = icmp eq i64 %eq.lhs.len143, %eq.rhs.len154
  br i1 %eq.len164, label %str.eq.then165, label %str.eq.else166

str_stale159:                                     ; preds = %str_gen_check157
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok158

str.eq.then165:                                   ; preds = %str_ok158
  %eq.lhs.data168 = getelementptr inbounds { i64, ptr }, ptr %var.load139, i32 0, i32 1
  %eq.lhs.data169 = load ptr, ptr %eq.lhs.data168, align 8
  %eq.rhs.data170 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %eq.memcmp171 = call i32 @memcmp(ptr %eq.lhs.data169, ptr %eq.rhs.data170, i64 %eq.lhs.len143)
  %eq.cmp.zero172 = icmp eq i32 %eq.memcmp171, 0
  br label %str.eq.merge167

str.eq.else166:                                   ; preds = %str_ok158
  br label %str.eq.merge167

str.eq.merge167:                                  ; preds = %str.eq.else166, %str.eq.then165
  %str.eq.result173 = phi i1 [ %eq.cmp.zero172, %str.eq.then165 ], [ false, %str.eq.else166 ]
  br i1 %str.eq.result173, label %choice.case, label %choice.next

choice.case174:                                   ; preds = %str.eq.merge202
  store i1 true, ptr %"var.is_imp'", align 1
  br label %choice.exit140

choice.next175:                                   ; preds = %str.eq.merge202
  %var.load209 = load i64, ptr %var.line, align 8
  %var.load210 = load i64, ptr %var.col, align 8
  %var.load211 = load ptr, ptr %var.word, align 8
  %concat.lhs = load i64, ptr @str.35.struct, align 8
  %concat.lhs212 = and i64 %concat.lhs, 281474976710655
  %str.tag213 = lshr i64 %concat.lhs, 48
  %str.immortal214 = icmp eq i64 %str.tag213, 0
  br i1 %str.immortal214, label %str_ok216, label %str_gen_check215

str_gen_check181:                                 ; preds = %choice.next
  %arena.gen184 = call ptr @dva_arena_current()
  %arena.gen185 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen184, i32 0, i32 4
  %arena.gen186 = load i64, ptr %arena.gen185, align 8
  %str.tag.match187 = icmp eq i64 %str.tag179, %arena.gen186
  br i1 %str.tag.match187, label %str_ok182, label %str_stale183

str_ok182:                                        ; preds = %str_stale183, %str_gen_check181, %choice.next
  %eq.rhs.len188 = load i64, ptr @str.34.struct, align 8
  %eq.rhs.len189 = and i64 %eq.rhs.len188, 281474976710655
  %str.tag190 = lshr i64 %eq.rhs.len188, 48
  %str.immortal191 = icmp eq i64 %str.tag190, 0
  br i1 %str.immortal191, label %str_ok193, label %str_gen_check192

str_stale183:                                     ; preds = %str_gen_check181
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok182

str_gen_check192:                                 ; preds = %str_ok182
  %arena.gen195 = call ptr @dva_arena_current()
  %arena.gen196 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen195, i32 0, i32 4
  %arena.gen197 = load i64, ptr %arena.gen196, align 8
  %str.tag.match198 = icmp eq i64 %str.tag190, %arena.gen197
  br i1 %str.tag.match198, label %str_ok193, label %str_stale194

str_ok193:                                        ; preds = %str_stale194, %str_gen_check192, %str_ok182
  %eq.len199 = icmp eq i64 %eq.lhs.len178, %eq.rhs.len189
  br i1 %eq.len199, label %str.eq.then200, label %str.eq.else201

str_stale194:                                     ; preds = %str_gen_check192
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok193

str.eq.then200:                                   ; preds = %str_ok193
  %eq.lhs.data203 = getelementptr inbounds { i64, ptr }, ptr %var.load139, i32 0, i32 1
  %eq.lhs.data204 = load ptr, ptr %eq.lhs.data203, align 8
  %eq.rhs.data205 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %eq.memcmp206 = call i32 @memcmp(ptr %eq.lhs.data204, ptr %eq.rhs.data205, i64 %eq.lhs.len178)
  %eq.cmp.zero207 = icmp eq i32 %eq.memcmp206, 0
  br label %str.eq.merge202

str.eq.else201:                                   ; preds = %str_ok193
  br label %str.eq.merge202

str.eq.merge202:                                  ; preds = %str.eq.else201, %str.eq.then200
  %str.eq.result208 = phi i1 [ %eq.cmp.zero207, %str.eq.then200 ], [ false, %str.eq.else201 ]
  br i1 %str.eq.result208, label %choice.case174, label %choice.next175

str_gen_check215:                                 ; preds = %choice.next175
  %arena.gen218 = call ptr @dva_arena_current()
  %arena.gen219 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen218, i32 0, i32 4
  %arena.gen220 = load i64, ptr %arena.gen219, align 8
  %str.tag.match221 = icmp eq i64 %str.tag213, %arena.gen220
  br i1 %str.tag.match221, label %str_ok216, label %str_stale217

str_ok216:                                        ; preds = %str_stale217, %str_gen_check215, %choice.next175
  %concat.lhs222 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load211, i32 0, i32 0
  %concat.rhs223 = load i64, ptr %concat.rhs, align 8
  %concat.rhs224 = and i64 %concat.rhs223, 281474976710655
  %str.tag225 = lshr i64 %concat.rhs223, 48
  %str.immortal226 = icmp eq i64 %str.tag225, 0
  br i1 %str.immortal226, label %str_ok228, label %str_gen_check227

str_stale217:                                     ; preds = %str_gen_check215
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok216

str_gen_check227:                                 ; preds = %str_ok216
  %arena.gen230 = call ptr @dva_arena_current()
  %arena.gen231 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen230, i32 0, i32 4
  %arena.gen232 = load i64, ptr %arena.gen231, align 8
  %str.tag.match233 = icmp eq i64 %str.tag225, %arena.gen232
  br i1 %str.tag.match233, label %str_ok228, label %str_stale229

str_ok228:                                        ; preds = %str_stale229, %str_gen_check227, %str_ok216
  %concat.rhs234 = getelementptr inbounds { i64, ptr }, ptr %var.load211, i32 0, i32 1
  %concat.rhs235 = load ptr, ptr %concat.rhs234, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs212, i64 %concat.rhs224)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len236

str_stale229:                                     ; preds = %str_gen_check227
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok228

concat.sum.len236:                                ; preds = %str_overflow_abort, %str_ok228
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum237 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf238 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf238, label %str_overflow_abort240, label %concat.tot.len239

str_overflow_abort:                               ; preds = %str_ok228
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len236

concat.tot.len239:                                ; preds = %str_overflow_abort240, %concat.sum.len236
  %arena.cur241 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 %sum237)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs222, i64 %concat.lhs212, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs212
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs235, i64 %concat.rhs224, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur242 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 16)
  %str.build.len.gep243 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep243, align 8
  %str.build.data.gep244 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep244, align 8
  %concat.lhs245 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs246 = load i64, ptr %concat.lhs245, align 8
  %concat.lhs247 = and i64 %concat.lhs246, 281474976710655
  %str.tag248 = lshr i64 %concat.lhs246, 48
  %str.immortal249 = icmp eq i64 %str.tag248, 0
  br i1 %str.immortal249, label %str_ok251, label %str_gen_check250

str_overflow_abort240:                            ; preds = %concat.sum.len236
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len239

str_gen_check250:                                 ; preds = %concat.tot.len239
  %arena.gen253 = call ptr @dva_arena_current()
  %arena.gen254 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen253, i32 0, i32 4
  %arena.gen255 = load i64, ptr %arena.gen254, align 8
  %str.tag.match256 = icmp eq i64 %str.tag248, %arena.gen255
  br i1 %str.tag.match256, label %str_ok251, label %str_stale252

str_ok251:                                        ; preds = %str_stale252, %str_gen_check250, %concat.tot.len239
  %concat.lhs257 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs258 = load ptr, ptr %concat.lhs257, align 8
  %concat.rhs259 = load i64, ptr @str.36.struct, align 8
  %concat.rhs260 = and i64 %concat.rhs259, 281474976710655
  %str.tag261 = lshr i64 %concat.rhs259, 48
  %str.immortal262 = icmp eq i64 %str.tag261, 0
  br i1 %str.immortal262, label %str_ok264, label %str_gen_check263

str_stale252:                                     ; preds = %str_gen_check250
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok251

str_gen_check263:                                 ; preds = %str_ok251
  %arena.gen266 = call ptr @dva_arena_current()
  %arena.gen267 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen266, i32 0, i32 4
  %arena.gen268 = load i64, ptr %arena.gen267, align 8
  %str.tag.match269 = icmp eq i64 %str.tag261, %arena.gen268
  br i1 %str.tag.match269, label %str_ok264, label %str_stale265

str_ok264:                                        ; preds = %str_stale265, %str_gen_check263, %str_ok251
  %concat.rhs270 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %concat.sum.len271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs247, i64 %concat.rhs260)
  %sum272 = extractvalue { i64, i1 } %concat.sum.len271, 0
  %ovf273 = extractvalue { i64, i1 } %concat.sum.len271, 1
  br i1 %ovf273, label %str_overflow_abort275, label %concat.sum.len274

str_stale265:                                     ; preds = %str_gen_check263
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok264

concat.sum.len274:                                ; preds = %str_overflow_abort275, %str_ok264
  %concat.tot.len276 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum272, i64 1)
  %sum277 = extractvalue { i64, i1 } %concat.tot.len276, 0
  %ovf278 = extractvalue { i64, i1 } %concat.tot.len276, 1
  br i1 %ovf278, label %str_overflow_abort280, label %concat.tot.len279

str_overflow_abort275:                            ; preds = %str_ok264
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len274

concat.tot.len279:                                ; preds = %str_overflow_abort280, %concat.sum.len274
  %arena.cur281 = call ptr @dva_arena_current()
  %concat.buf282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 %sum277)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf282, ptr align 1 %concat.lhs258, i64 %concat.lhs247, i1 false)
  %concat.mid283 = getelementptr i8, ptr %concat.buf282, i64 %concat.lhs247
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid283, ptr align 1 %concat.rhs270, i64 %concat.rhs260, i1 false)
  %concat.nul284 = getelementptr i8, ptr %concat.buf282, i64 %sum272
  store i8 0, ptr %concat.nul284, align 1
  %arena.cur285 = call ptr @dva_arena_current()
  %concat.str286 = call ptr @dva_arena_alloc(ptr %arena.cur285, i64 16)
  %str.build.len.gep287 = getelementptr inbounds { i64, ptr }, ptr %concat.str286, i32 0, i32 0
  store i64 %sum272, ptr %str.build.len.gep287, align 8
  %str.build.data.gep288 = getelementptr inbounds { i64, ptr }, ptr %concat.str286, i32 0, i32 1
  store ptr %concat.buf282, ptr %str.build.data.gep288, align 8
  %call.res289 = call i64 @"lexer::fail"(i64 1015, i64 %var.load209, i64 %var.load210, ptr %concat.str286)
  br label %choice.exit140

str_overflow_abort280:                            ; preds = %concat.sum.len274
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len279

choice.then295:                                   ; preds = %choice.exit140
  %var.load298 = load ptr, ptr %var.lx, align 8
  %var.load299 = load ptr, ptr %var.lx, align 8
  %call.res300 = call i64 @"lexer::pk"(ptr %var.load299, i64 0)
  %call.res301 = call i64 @"lexer::adv"(ptr %var.load298, i64 %call.res300)
  br label %choice.exit297

choice.else296:                                   ; preds = %choice.exit140
  br label %choice.exit297

choice.exit297:                                   ; preds = %choice.else296, %choice.then295
  %var.load302 = load ptr, ptr %var.lx, align 8
  %call.res303 = call i64 @"lexer::skip_ws"(ptr %var.load302, i64 0)
  %var.load304 = load ptr, ptr %var.lx, align 8
  %call.res305 = call i64 @"lexer::pk"(ptr %var.load304, i64 0)
  %cmptmp306 = icmp eq i64 %call.res305, 41
  br i1 %cmptmp306, label %choice.then307, label %choice.exit308

choice.then307:                                   ; preds = %choice.exit297
  %var.load309 = load ptr, ptr %var.lx, align 8
  %var.load310 = load ptr, ptr %var.lx, align 8
  %call.res311 = call i64 @"lexer::pk"(ptr %var.load310, i64 0)
  %call.res312 = call i64 @"lexer::adv"(ptr %var.load309, i64 %call.res311)
  br label %loop.exit.80

choice.exit308:                                   ; preds = %choice.exit297
  br label %loop.latch.80

choice.then320:                                   ; preds = %choice.exit
  %var.load323 = load ptr, ptr %var.lx, align 8
  %var.load324 = load i64, ptr %var.line, align 8
  %var.load325 = load i64, ptr %var.col, align 8
  %call.res326 = call ptr @"lexer::scan_quoted_path"(ptr %var.load323, i64 %var.load324, i64 %var.load325)
  br label %choice.exit322

choice.else321:                                   ; preds = %choice.exit
  %var.load327 = load ptr, ptr %var.lx, align 8
  %var.load328 = load i64, ptr %var.line, align 8
  %call.res329 = call ptr @"lexer::scan_bare_path"(ptr %var.load327, i64 %var.load328)
  br label %choice.exit322

choice.exit322:                                   ; preds = %choice.else321, %choice.then320
  %choice.res = phi ptr [ %call.res326, %choice.then320 ], [ %call.res329, %choice.else321 ]
  store ptr %choice.res, ptr %var.path, align 8
  %var.load330 = load ptr, ptr %var.path, align 8
  %str.len.query331 = getelementptr inbounds { i64, ptr }, ptr %var.load330, i32 0, i32 0
  %str.len.query332 = load i64, ptr %str.len.query331, align 8
  %str.len.query333 = and i64 %str.len.query332, 281474976710655
  %str.tag334 = lshr i64 %str.len.query332, 48
  %str.immortal335 = icmp eq i64 %str.tag334, 0
  br i1 %str.immortal335, label %str_ok337, label %str_gen_check336

str_gen_check336:                                 ; preds = %choice.exit322
  %arena.gen339 = call ptr @dva_arena_current()
  %arena.gen340 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen339, i32 0, i32 4
  %arena.gen341 = load i64, ptr %arena.gen340, align 8
  %str.tag.match342 = icmp eq i64 %str.tag334, %arena.gen341
  br i1 %str.tag.match342, label %str_ok337, label %str_stale338

str_ok337:                                        ; preds = %str_stale338, %str_gen_check336, %choice.exit322
  %cmptmp343 = icmp eq i64 %str.len.query333, 0
  br i1 %cmptmp343, label %choice.then344, label %choice.exit345

str_stale338:                                     ; preds = %str_gen_check336
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok337

choice.then344:                                   ; preds = %str_ok337
  %var.load346 = load i64, ptr %var.line, align 8
  %var.load347 = load i64, ptr %var.col, align 8
  %call.res348 = call i64 @"lexer::fail"(i64 1015, i64 %var.load346, i64 %var.load347, ptr @str.37.struct)
  br label %choice.exit345

choice.exit345:                                   ; preds = %choice.then344, %str_ok337
  %var.load349 = load i1, ptr %"var.is_dyn'", align 1
  br i1 %var.load349, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %choice.exit345
  %var.load350 = load i1, ptr %"var.is_imp'", align 1
  br label %and.82.exit

and.82.else:                                      ; preds = %choice.exit345
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %and.82.then
  %and.82.phi = phi i1 [ %var.load350, %and.82.then ], [ %var.load349, %and.82.else ]
  br i1 %and.82.phi, label %choice.then351, label %choice.else352

choice.then351:                                   ; preds = %and.82.exit
  %arena.cur354 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur354, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 37, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit353

choice.else352:                                   ; preds = %and.82.exit
  %var.load355 = load i1, ptr %"var.is_dyn'", align 1
  br i1 %var.load355, label %choice.then356, label %choice.else357

choice.exit353:                                   ; preds = %choice.exit358, %choice.then351
  %choice.res377 = phi ptr [ %enum.alloc, %choice.then351 ], [ %choice.res376, %choice.exit358 ]
  store ptr %choice.res377, ptr %var.kind, align 8
  %var.load378 = load ptr, ptr %var.lx, align 8
  %var.load379 = load ptr, ptr %var.kind, align 8
  %var.load380 = load i64, ptr %var.hstart, align 8
  %var.load381 = load ptr, ptr %var.lx, align 8
  %fld.gep382 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load381, i32 0, i32 1
  %fld.load383 = load i64, ptr %fld.gep382, align 8
  %var.load384 = load i64, ptr %var.hstart, align 8
  %subtmp = sub i64 %fld.load383, %var.load384
  %var.load385 = load i64, ptr %var.line, align 8
  %var.load386 = load i64, ptr %var.col, align 8
  %var.load387 = load ptr, ptr %var.path, align 8
  %call.res388 = call ptr @"lexer::mktok"(ptr %var.load378, ptr %var.load379, i64 %var.load380, i64 %subtmp, i64 %var.load385, i64 %var.load386, ptr %var.load387)
  ret ptr %call.res388

choice.then356:                                   ; preds = %choice.else352
  %arena.cur359 = call ptr @dva_arena_current()
  %enum.alloc360 = call ptr @dva_arena_alloc(ptr %arena.cur359, i64 16)
  %tag.gep361 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc360, i32 0, i32 0
  store i64 34, ptr %tag.gep361, align 8
  %pay.gep362 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc360, i32 0, i32 1
  store ptr null, ptr %pay.gep362, align 8
  br label %choice.exit358

choice.else357:                                   ; preds = %choice.else352
  %var.load363 = load i1, ptr %"var.is_imp'", align 1
  br i1 %var.load363, label %choice.then364, label %choice.else365

choice.exit358:                                   ; preds = %choice.exit366, %choice.then356
  %choice.res376 = phi ptr [ %enum.alloc360, %choice.then356 ], [ %choice.res375, %choice.exit366 ]
  br label %choice.exit353

choice.then364:                                   ; preds = %choice.else357
  %arena.cur367 = call ptr @dva_arena_current()
  %enum.alloc368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 16)
  %tag.gep369 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc368, i32 0, i32 0
  store i64 36, ptr %tag.gep369, align 8
  %pay.gep370 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc368, i32 0, i32 1
  store ptr null, ptr %pay.gep370, align 8
  br label %choice.exit366

choice.else365:                                   ; preds = %choice.else357
  %arena.cur371 = call ptr @dva_arena_current()
  %enum.alloc372 = call ptr @dva_arena_alloc(ptr %arena.cur371, i64 16)
  %tag.gep373 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc372, i32 0, i32 0
  store i64 19, ptr %tag.gep373, align 8
  %pay.gep374 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc372, i32 0, i32 1
  store ptr null, ptr %pay.gep374, align 8
  br label %choice.exit366

choice.exit366:                                   ; preds = %choice.else365, %choice.then364
  %choice.res375 = phi ptr [ %enum.alloc368, %choice.then364 ], [ %enum.alloc372, %choice.else365 ]
  br label %choice.exit358
}

define i64 @"lexer::skip_ws"(ptr %0, i64 %1) #1 {
entry:
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr @"var.lexer::is_ws", align 8
  %call.res = call i64 @"lexer::scan_while"(ptr %var.load, ptr %var.load1)
  ret i64 %call.res
}

define internal i1 @"$anon_fn.126"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_id_char"(i64 %var.load)
  ret i1 %call.res
}

define ptr @"lexer::pragma_suffix_fail"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.word = alloca ptr, align 8
  store ptr %0, ptr %var.word, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load i64, ptr %var.line, align 8
  %var.load1 = load i64, ptr %var.col, align 8
  %var.load2 = load ptr, ptr %var.word, align 8
  %concat.lhs = load i64, ptr @str.38.struct, align 8
  %concat.lhs3 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen4 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen5 = load i64, ptr %arena.gen4, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen5
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %concat.rhs7 = load i64, ptr %concat.rhs, align 8
  %concat.rhs8 = and i64 %concat.rhs7, 281474976710655
  %str.tag9 = lshr i64 %concat.rhs7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %concat.rhs18 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %concat.rhs19 = load ptr, ptr %concat.rhs18, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs3, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len20

str_stale13:                                      ; preds = %str_gen_check11
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

concat.sum.len20:                                 ; preds = %str_overflow_abort, %str_ok12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum21 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf22 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf22, label %str_overflow_abort24, label %concat.tot.len23

str_overflow_abort:                               ; preds = %str_ok12
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len20

concat.tot.len23:                                 ; preds = %str_overflow_abort24, %concat.sum.len20
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs6, i64 %concat.lhs3, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs3
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
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  %concat.rhs40 = load i64, ptr @str.39.struct, align 8
  %concat.rhs41 = and i64 %concat.rhs40, 281474976710655
  %str.tag42 = lshr i64 %concat.rhs40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale33:                                      ; preds = %str_gen_check31
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

str_gen_check44:                                  ; preds = %str_ok32
  %arena.gen47 = call ptr @dva_arena_current()
  %arena.gen48 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen47, i32 0, i32 4
  %arena.gen49 = load i64, ptr %arena.gen48, align 8
  %str.tag.match50 = icmp eq i64 %str.tag42, %arena.gen49
  br i1 %str.tag.match50, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok32
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %concat.sum.len52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs28, i64 %concat.rhs41)
  %sum53 = extractvalue { i64, i1 } %concat.sum.len52, 0
  %ovf54 = extractvalue { i64, i1 } %concat.sum.len52, 1
  br i1 %ovf54, label %str_overflow_abort56, label %concat.sum.len55

str_stale46:                                      ; preds = %str_gen_check44
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

concat.sum.len55:                                 ; preds = %str_overflow_abort56, %str_ok45
  %concat.tot.len57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum53, i64 1)
  %sum58 = extractvalue { i64, i1 } %concat.tot.len57, 0
  %ovf59 = extractvalue { i64, i1 } %concat.tot.len57, 1
  br i1 %ovf59, label %str_overflow_abort61, label %concat.tot.len60

str_overflow_abort56:                             ; preds = %str_ok45
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  %call.res = call i64 @"lexer::fail"(i64 1013, i64 %var.load, i64 %var.load1, ptr %concat.str67)
  ret ptr @str.0.struct

str_overflow_abort61:                             ; preds = %concat.sum.len55
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len60
}

define ptr @"lexer::scan_pragma"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.ssw = alloca i1, align 1
  %var.sfp = alloca i1, align 1
  %var.six = alloca i1, align 1
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.hstart, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::skip_ws"(ptr %var.load, i64 0)
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 6
  %var.load2 = load ptr, ptr %var.lx, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load4, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag = lshr i64 %str.len.query5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen7 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen8 = load i64, ptr %arena.gen7, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen8
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sle i64 %addtmp, %str.len.query6
  br i1 %cmptmp, label %and.83.then, label %and.83.else

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.83.then:                                      ; preds = %str_ok
  %var.load9 = load ptr, ptr %var.lx, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load9, i32 0, i32 0
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load11, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %str.tag14 = lshr i64 %s.read.len12, 48
  %str.immortal15 = icmp eq i64 %str.tag14, 0
  br i1 %str.immortal15, label %str_ok17, label %str_gen_check16

and.83.else:                                      ; preds = %str_ok
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %str.eq.merge
  %and.83.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.83.else ]
  store i1 %and.83.phi, ptr %var.six, align 1
  %var.load53 = load ptr, ptr %var.lx, align 8
  %fld.gep54 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load53, i32 0, i32 1
  %fld.load55 = load i64, ptr %fld.gep54, align 8
  %addtmp56 = add i64 %fld.load55, 6
  %var.load57 = load ptr, ptr %var.lx, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load57, i32 0, i32 0
  %fld.load59 = load ptr, ptr %fld.gep58, align 8
  %str.len.query60 = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 0
  %str.len.query61 = load i64, ptr %str.len.query60, align 8
  %str.len.query62 = and i64 %str.len.query61, 281474976710655
  %str.tag63 = lshr i64 %str.len.query61, 48
  %str.immortal64 = icmp eq i64 %str.tag63, 0
  br i1 %str.immortal64, label %str_ok66, label %str_gen_check65

str_gen_check16:                                  ; preds = %and.83.then
  %arena.gen19 = call ptr @dva_arena_current()
  %arena.gen20 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen19, i32 0, i32 4
  %arena.gen21 = load i64, ptr %arena.gen20, align 8
  %str.tag.match22 = icmp eq i64 %str.tag14, %arena.gen21
  br i1 %str.tag.match22, label %str_ok17, label %str_stale18

str_ok17:                                         ; preds = %str_stale18, %str_gen_check16, %and.83.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load11, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data, align 8
  %var.load24 = load ptr, ptr %var.lx, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load24, i32 0, i32 1
  %fld.load26 = load i64, ptr %fld.gep25, align 8
  %var.load27 = load ptr, ptr %var.lx, align 8
  %fld.gep28 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load27, i32 0, i32 1
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %addtmp30 = add i64 %fld.load29, 6
  %start.is_neg = icmp slt i64 %fld.load26, 0
  %rel.start = add i64 %s.read.len13, %fld.load26
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load26
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len13
  %final.start = select i1 %start.gt.len, i64 %s.read.len13, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp30, 0
  %rel.end = add i64 %s.read.len13, %addtmp30
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp30
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len13
  %final.end = select i1 %end.gt.len, i64 %s.read.len13, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data23, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len31 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len32 = and i64 %eq.lhs.len31, 281474976710655
  %str.tag33 = lshr i64 %eq.lhs.len31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_stale18:                                      ; preds = %str_gen_check16
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok17

str_gen_check35:                                  ; preds = %str_ok17
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %str_ok17
  %eq.rhs.len = load i64, ptr @str.40.struct, align 8
  %eq.rhs.len42 = and i64 %eq.rhs.len, 281474976710655
  %str.tag43 = lshr i64 %eq.rhs.len, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

str_stale37:                                      ; preds = %str_gen_check35
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

str_gen_check45:                                  ; preds = %str_ok36
  %arena.gen48 = call ptr @dva_arena_current()
  %arena.gen49 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen48, i32 0, i32 4
  %arena.gen50 = load i64, ptr %arena.gen49, align 8
  %str.tag.match51 = icmp eq i64 %str.tag43, %arena.gen50
  br i1 %str.tag.match51, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %str_ok36
  %eq.len = icmp eq i64 %eq.lhs.len32, %eq.rhs.len42
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale47:                                      ; preds = %str_gen_check45
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

str.eq.then:                                      ; preds = %str_ok46
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data52 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.40.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data52, ptr %eq.rhs.data, i64 %eq.lhs.len32)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok46
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.83.exit

str_gen_check65:                                  ; preds = %and.83.exit
  %arena.gen68 = call ptr @dva_arena_current()
  %arena.gen69 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen68, i32 0, i32 4
  %arena.gen70 = load i64, ptr %arena.gen69, align 8
  %str.tag.match71 = icmp eq i64 %str.tag63, %arena.gen70
  br i1 %str.tag.match71, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %and.83.exit
  %cmptmp72 = icmp sle i64 %addtmp56, %str.len.query62
  br i1 %cmptmp72, label %and.84.then, label %and.84.else

str_stale67:                                      ; preds = %str_gen_check65
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok66

and.84.then:                                      ; preds = %str_ok66
  %var.load73 = load ptr, ptr %var.lx, align 8
  %fld.gep74 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load73, i32 0, i32 0
  %fld.load75 = load ptr, ptr %fld.gep74, align 8
  %s.read.len76 = getelementptr inbounds { i64, ptr }, ptr %fld.load75, i32 0, i32 0
  %s.read.len77 = load i64, ptr %s.read.len76, align 8
  %s.read.len78 = and i64 %s.read.len77, 281474976710655
  %str.tag79 = lshr i64 %s.read.len77, 48
  %str.immortal80 = icmp eq i64 %str.tag79, 0
  br i1 %str.immortal80, label %str_ok82, label %str_gen_check81

and.84.else:                                      ; preds = %str_ok66
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %str.eq.merge145
  %and.84.phi = phi i1 [ %str.eq.result151, %str.eq.merge145 ], [ %cmptmp72, %and.84.else ]
  store i1 %and.84.phi, ptr %var.sfp, align 1
  %var.load152 = load ptr, ptr %var.lx, align 8
  %fld.gep153 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load152, i32 0, i32 1
  %fld.load154 = load i64, ptr %fld.gep153, align 8
  %addtmp155 = add i64 %fld.load154, 7
  %var.load156 = load ptr, ptr %var.lx, align 8
  %fld.gep157 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load156, i32 0, i32 0
  %fld.load158 = load ptr, ptr %fld.gep157, align 8
  %str.len.query159 = getelementptr inbounds { i64, ptr }, ptr %fld.load158, i32 0, i32 0
  %str.len.query160 = load i64, ptr %str.len.query159, align 8
  %str.len.query161 = and i64 %str.len.query160, 281474976710655
  %str.tag162 = lshr i64 %str.len.query160, 48
  %str.immortal163 = icmp eq i64 %str.tag162, 0
  br i1 %str.immortal163, label %str_ok165, label %str_gen_check164

str_gen_check81:                                  ; preds = %and.84.then
  %arena.gen84 = call ptr @dva_arena_current()
  %arena.gen85 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen84, i32 0, i32 4
  %arena.gen86 = load i64, ptr %arena.gen85, align 8
  %str.tag.match87 = icmp eq i64 %str.tag79, %arena.gen86
  br i1 %str.tag.match87, label %str_ok82, label %str_stale83

str_ok82:                                         ; preds = %str_stale83, %str_gen_check81, %and.84.then
  %s.read.data88 = getelementptr inbounds { i64, ptr }, ptr %fld.load75, i32 0, i32 1
  %s.read.data89 = load ptr, ptr %s.read.data88, align 8
  %var.load90 = load ptr, ptr %var.lx, align 8
  %fld.gep91 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load90, i32 0, i32 1
  %fld.load92 = load i64, ptr %fld.gep91, align 8
  %var.load93 = load ptr, ptr %var.lx, align 8
  %fld.gep94 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load93, i32 0, i32 1
  %fld.load95 = load i64, ptr %fld.gep94, align 8
  %addtmp96 = add i64 %fld.load95, 6
  %start.is_neg97 = icmp slt i64 %fld.load92, 0
  %rel.start98 = add i64 %s.read.len78, %fld.load92
  %norm.start99 = select i1 %start.is_neg97, i64 %rel.start98, i64 %fld.load92
  %start.lt.0100 = icmp slt i64 %norm.start99, 0
  %c.start.0101 = select i1 %start.lt.0100, i64 0, i64 %norm.start99
  %start.gt.len102 = icmp sgt i64 %c.start.0101, %s.read.len78
  %final.start103 = select i1 %start.gt.len102, i64 %s.read.len78, i64 %c.start.0101
  %end.is_neg104 = icmp slt i64 %addtmp96, 0
  %rel.end105 = add i64 %s.read.len78, %addtmp96
  %norm.end106 = select i1 %end.is_neg104, i64 %rel.end105, i64 %addtmp96
  %end.lt.0107 = icmp slt i64 %norm.end106, 0
  %c.end.0108 = select i1 %end.lt.0107, i64 0, i64 %norm.end106
  %end.gt.len109 = icmp sgt i64 %c.end.0108, %s.read.len78
  %final.end110 = select i1 %end.gt.len109, i64 %s.read.len78, i64 %c.end.0108
  %view.empty111 = icmp sle i64 %final.end110, %final.start103
  %view.len.sub112 = sub i64 %final.end110, %final.start103
  %view.len113 = select i1 %view.empty111, i64 0, i64 %view.len.sub112
  %view.data114 = getelementptr i8, ptr %s.read.data89, i64 %final.start103
  %arena.cur115 = call ptr @dva_arena_current()
  %str.view116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 16)
  %str.build.len.gep117 = getelementptr inbounds { i64, ptr }, ptr %str.view116, i32 0, i32 0
  store i64 %view.len113, ptr %str.build.len.gep117, align 8
  %str.build.data.gep118 = getelementptr inbounds { i64, ptr }, ptr %str.view116, i32 0, i32 1
  store ptr %view.data114, ptr %str.build.data.gep118, align 8
  %eq.lhs.len119 = getelementptr inbounds { i64, ptr }, ptr %str.view116, i32 0, i32 0
  %eq.lhs.len120 = load i64, ptr %eq.lhs.len119, align 8
  %eq.lhs.len121 = and i64 %eq.lhs.len120, 281474976710655
  %str.tag122 = lshr i64 %eq.lhs.len120, 48
  %str.immortal123 = icmp eq i64 %str.tag122, 0
  br i1 %str.immortal123, label %str_ok125, label %str_gen_check124

str_stale83:                                      ; preds = %str_gen_check81
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok82

str_gen_check124:                                 ; preds = %str_ok82
  %arena.gen127 = call ptr @dva_arena_current()
  %arena.gen128 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen127, i32 0, i32 4
  %arena.gen129 = load i64, ptr %arena.gen128, align 8
  %str.tag.match130 = icmp eq i64 %str.tag122, %arena.gen129
  br i1 %str.tag.match130, label %str_ok125, label %str_stale126

str_ok125:                                        ; preds = %str_stale126, %str_gen_check124, %str_ok82
  %eq.rhs.len131 = load i64, ptr @str.41.struct, align 8
  %eq.rhs.len132 = and i64 %eq.rhs.len131, 281474976710655
  %str.tag133 = lshr i64 %eq.rhs.len131, 48
  %str.immortal134 = icmp eq i64 %str.tag133, 0
  br i1 %str.immortal134, label %str_ok136, label %str_gen_check135

str_stale126:                                     ; preds = %str_gen_check124
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok125

str_gen_check135:                                 ; preds = %str_ok125
  %arena.gen138 = call ptr @dva_arena_current()
  %arena.gen139 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen138, i32 0, i32 4
  %arena.gen140 = load i64, ptr %arena.gen139, align 8
  %str.tag.match141 = icmp eq i64 %str.tag133, %arena.gen140
  br i1 %str.tag.match141, label %str_ok136, label %str_stale137

str_ok136:                                        ; preds = %str_stale137, %str_gen_check135, %str_ok125
  %eq.len142 = icmp eq i64 %eq.lhs.len121, %eq.rhs.len132
  br i1 %eq.len142, label %str.eq.then143, label %str.eq.else144

str_stale137:                                     ; preds = %str_gen_check135
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok136

str.eq.then143:                                   ; preds = %str_ok136
  %eq.lhs.data146 = getelementptr inbounds { i64, ptr }, ptr %str.view116, i32 0, i32 1
  %eq.lhs.data147 = load ptr, ptr %eq.lhs.data146, align 8
  %eq.rhs.data148 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %eq.memcmp149 = call i32 @memcmp(ptr %eq.lhs.data147, ptr %eq.rhs.data148, i64 %eq.lhs.len121)
  %eq.cmp.zero150 = icmp eq i32 %eq.memcmp149, 0
  br label %str.eq.merge145

str.eq.else144:                                   ; preds = %str_ok136
  br label %str.eq.merge145

str.eq.merge145:                                  ; preds = %str.eq.else144, %str.eq.then143
  %str.eq.result151 = phi i1 [ %eq.cmp.zero150, %str.eq.then143 ], [ false, %str.eq.else144 ]
  br label %and.84.exit

str_gen_check164:                                 ; preds = %and.84.exit
  %arena.gen167 = call ptr @dva_arena_current()
  %arena.gen168 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen167, i32 0, i32 4
  %arena.gen169 = load i64, ptr %arena.gen168, align 8
  %str.tag.match170 = icmp eq i64 %str.tag162, %arena.gen169
  br i1 %str.tag.match170, label %str_ok165, label %str_stale166

str_ok165:                                        ; preds = %str_stale166, %str_gen_check164, %and.84.exit
  %cmptmp171 = icmp sle i64 %addtmp155, %str.len.query161
  br i1 %cmptmp171, label %and.85.then, label %and.85.else

str_stale166:                                     ; preds = %str_gen_check164
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok165

and.85.then:                                      ; preds = %str_ok165
  %var.load172 = load ptr, ptr %var.lx, align 8
  %fld.gep173 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load172, i32 0, i32 0
  %fld.load174 = load ptr, ptr %fld.gep173, align 8
  %s.read.len175 = getelementptr inbounds { i64, ptr }, ptr %fld.load174, i32 0, i32 0
  %s.read.len176 = load i64, ptr %s.read.len175, align 8
  %s.read.len177 = and i64 %s.read.len176, 281474976710655
  %str.tag178 = lshr i64 %s.read.len176, 48
  %str.immortal179 = icmp eq i64 %str.tag178, 0
  br i1 %str.immortal179, label %str_ok181, label %str_gen_check180

and.85.else:                                      ; preds = %str_ok165
  br label %and.85.exit

and.85.exit:                                      ; preds = %and.85.else, %str.eq.merge244
  %and.85.phi = phi i1 [ %str.eq.result250, %str.eq.merge244 ], [ %cmptmp171, %and.85.else ]
  store i1 %and.85.phi, ptr %var.ssw, align 1
  %var.load251 = load i1, ptr %var.six, align 1
  br i1 %var.load251, label %or.86.then, label %or.86.else

str_gen_check180:                                 ; preds = %and.85.then
  %arena.gen183 = call ptr @dva_arena_current()
  %arena.gen184 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen183, i32 0, i32 4
  %arena.gen185 = load i64, ptr %arena.gen184, align 8
  %str.tag.match186 = icmp eq i64 %str.tag178, %arena.gen185
  br i1 %str.tag.match186, label %str_ok181, label %str_stale182

str_ok181:                                        ; preds = %str_stale182, %str_gen_check180, %and.85.then
  %s.read.data187 = getelementptr inbounds { i64, ptr }, ptr %fld.load174, i32 0, i32 1
  %s.read.data188 = load ptr, ptr %s.read.data187, align 8
  %var.load189 = load ptr, ptr %var.lx, align 8
  %fld.gep190 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load189, i32 0, i32 1
  %fld.load191 = load i64, ptr %fld.gep190, align 8
  %var.load192 = load ptr, ptr %var.lx, align 8
  %fld.gep193 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load192, i32 0, i32 1
  %fld.load194 = load i64, ptr %fld.gep193, align 8
  %addtmp195 = add i64 %fld.load194, 7
  %start.is_neg196 = icmp slt i64 %fld.load191, 0
  %rel.start197 = add i64 %s.read.len177, %fld.load191
  %norm.start198 = select i1 %start.is_neg196, i64 %rel.start197, i64 %fld.load191
  %start.lt.0199 = icmp slt i64 %norm.start198, 0
  %c.start.0200 = select i1 %start.lt.0199, i64 0, i64 %norm.start198
  %start.gt.len201 = icmp sgt i64 %c.start.0200, %s.read.len177
  %final.start202 = select i1 %start.gt.len201, i64 %s.read.len177, i64 %c.start.0200
  %end.is_neg203 = icmp slt i64 %addtmp195, 0
  %rel.end204 = add i64 %s.read.len177, %addtmp195
  %norm.end205 = select i1 %end.is_neg203, i64 %rel.end204, i64 %addtmp195
  %end.lt.0206 = icmp slt i64 %norm.end205, 0
  %c.end.0207 = select i1 %end.lt.0206, i64 0, i64 %norm.end205
  %end.gt.len208 = icmp sgt i64 %c.end.0207, %s.read.len177
  %final.end209 = select i1 %end.gt.len208, i64 %s.read.len177, i64 %c.end.0207
  %view.empty210 = icmp sle i64 %final.end209, %final.start202
  %view.len.sub211 = sub i64 %final.end209, %final.start202
  %view.len212 = select i1 %view.empty210, i64 0, i64 %view.len.sub211
  %view.data213 = getelementptr i8, ptr %s.read.data188, i64 %final.start202
  %arena.cur214 = call ptr @dva_arena_current()
  %str.view215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 16)
  %str.build.len.gep216 = getelementptr inbounds { i64, ptr }, ptr %str.view215, i32 0, i32 0
  store i64 %view.len212, ptr %str.build.len.gep216, align 8
  %str.build.data.gep217 = getelementptr inbounds { i64, ptr }, ptr %str.view215, i32 0, i32 1
  store ptr %view.data213, ptr %str.build.data.gep217, align 8
  %eq.lhs.len218 = getelementptr inbounds { i64, ptr }, ptr %str.view215, i32 0, i32 0
  %eq.lhs.len219 = load i64, ptr %eq.lhs.len218, align 8
  %eq.lhs.len220 = and i64 %eq.lhs.len219, 281474976710655
  %str.tag221 = lshr i64 %eq.lhs.len219, 48
  %str.immortal222 = icmp eq i64 %str.tag221, 0
  br i1 %str.immortal222, label %str_ok224, label %str_gen_check223

str_stale182:                                     ; preds = %str_gen_check180
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok181

str_gen_check223:                                 ; preds = %str_ok181
  %arena.gen226 = call ptr @dva_arena_current()
  %arena.gen227 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen226, i32 0, i32 4
  %arena.gen228 = load i64, ptr %arena.gen227, align 8
  %str.tag.match229 = icmp eq i64 %str.tag221, %arena.gen228
  br i1 %str.tag.match229, label %str_ok224, label %str_stale225

str_ok224:                                        ; preds = %str_stale225, %str_gen_check223, %str_ok181
  %eq.rhs.len230 = load i64, ptr @str.42.struct, align 8
  %eq.rhs.len231 = and i64 %eq.rhs.len230, 281474976710655
  %str.tag232 = lshr i64 %eq.rhs.len230, 48
  %str.immortal233 = icmp eq i64 %str.tag232, 0
  br i1 %str.immortal233, label %str_ok235, label %str_gen_check234

str_stale225:                                     ; preds = %str_gen_check223
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok224

str_gen_check234:                                 ; preds = %str_ok224
  %arena.gen237 = call ptr @dva_arena_current()
  %arena.gen238 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen237, i32 0, i32 4
  %arena.gen239 = load i64, ptr %arena.gen238, align 8
  %str.tag.match240 = icmp eq i64 %str.tag232, %arena.gen239
  br i1 %str.tag.match240, label %str_ok235, label %str_stale236

str_ok235:                                        ; preds = %str_stale236, %str_gen_check234, %str_ok224
  %eq.len241 = icmp eq i64 %eq.lhs.len220, %eq.rhs.len231
  br i1 %eq.len241, label %str.eq.then242, label %str.eq.else243

str_stale236:                                     ; preds = %str_gen_check234
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok235

str.eq.then242:                                   ; preds = %str_ok235
  %eq.lhs.data245 = getelementptr inbounds { i64, ptr }, ptr %str.view215, i32 0, i32 1
  %eq.lhs.data246 = load ptr, ptr %eq.lhs.data245, align 8
  %eq.rhs.data247 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.42.struct, i32 0, i32 1), align 8
  %eq.memcmp248 = call i32 @memcmp(ptr %eq.lhs.data246, ptr %eq.rhs.data247, i64 %eq.lhs.len220)
  %eq.cmp.zero249 = icmp eq i32 %eq.memcmp248, 0
  br label %str.eq.merge244

str.eq.else243:                                   ; preds = %str_ok235
  br label %str.eq.merge244

str.eq.merge244:                                  ; preds = %str.eq.else243, %str.eq.then242
  %str.eq.result250 = phi i1 [ %eq.cmp.zero249, %str.eq.then242 ], [ false, %str.eq.else243 ]
  br label %and.85.exit

or.86.then:                                       ; preds = %and.85.exit
  br label %or.86.exit

or.86.else:                                       ; preds = %and.85.exit
  %var.load252 = load i1, ptr %var.sfp, align 1
  br label %or.86.exit

or.86.exit:                                       ; preds = %or.86.else, %or.86.then
  %or.86.phi = phi i1 [ %var.load251, %or.86.then ], [ %var.load252, %or.86.else ]
  br i1 %or.86.phi, label %or.87.then, label %or.87.else

or.87.then:                                       ; preds = %or.86.exit
  br label %or.87.exit

or.87.else:                                       ; preds = %or.86.exit
  %var.load253 = load i1, ptr %var.ssw, align 1
  br label %or.87.exit

or.87.exit:                                       ; preds = %or.87.else, %or.87.then
  %or.87.phi = phi i1 [ %or.86.phi, %or.87.then ], [ %var.load253, %or.87.else ]
  br i1 %or.87.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.87.exit
  %var.load254 = load ptr, ptr %var.lx, align 8
  %var.load255 = load i64, ptr %var.hstart, align 8
  %var.load256 = load i64, ptr %var.line, align 8
  %var.load257 = load i64, ptr %var.col, align 8
  %var.load258 = load i1, ptr %var.six, align 1
  %var.load259 = load i1, ptr %var.sfp, align 1
  %call.res260 = call ptr @"lexer::scan_pragma_body"(ptr %var.load254, i64 %var.load255, i64 %var.load256, i64 %var.load257, i1 %var.load258, i1 %var.load259)
  br label %choice.exit

choice.else:                                      ; preds = %or.87.exit
  %var.load261 = load ptr, ptr %var.lx, align 8
  %var.load262 = load i64, ptr %var.hstart, align 8
  %var.load263 = load i64, ptr %var.line, align 8
  %var.load264 = load i64, ptr %var.col, align 8
  %call.res265 = call ptr @"lexer::pragma_miss_fail"(ptr %var.load261, i64 %var.load262, i64 %var.load263, i64 %var.load264)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res260, %choice.then ], [ %call.res265, %choice.else ]
  ret ptr %choice.res
}

define ptr @"lexer::scan_pragma_body"(ptr %0, i64 %1, i64 %2, i64 %3, i1 %4, i1 %5) #1 {
entry:
  %var.is_fp = alloca i1, align 1
  %var.is_number = alloca i1, align 1
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.hstart, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  store i1 %4, ptr %var.is_number, align 1
  store i1 %5, ptr %var.is_fp, align 1
  %var.load = load i1, ptr %var.is_number, align 1
  br i1 %var.load, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.lx, align 8
  %var.load2 = load i64, ptr %var.hstart, align 8
  %var.load3 = load i64, ptr %var.line, align 8
  %var.load4 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"lexer::scan_pragma_number"(ptr %var.load1, i64 %var.load2, i64 %var.load3, i64 %var.load4)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load5 = load i1, ptr %var.is_fp, align 1
  br i1 %var.load5, label %choice.then6, label %choice.else7

choice.exit:                                      ; preds = %choice.exit8, %choice.then
  %choice.res19 = phi ptr [ %call.res, %choice.then ], [ %choice.res, %choice.exit8 ]
  ret ptr %choice.res19

choice.then6:                                     ; preds = %choice.else
  %var.load9 = load ptr, ptr %var.lx, align 8
  %var.load10 = load i64, ptr %var.hstart, align 8
  %var.load11 = load i64, ptr %var.line, align 8
  %var.load12 = load i64, ptr %var.col, align 8
  %call.res13 = call ptr @"lexer::scan_pragma_fp"(ptr %var.load9, i64 %var.load10, i64 %var.load11, i64 %var.load12)
  br label %choice.exit8

choice.else7:                                     ; preds = %choice.else
  %var.load14 = load ptr, ptr %var.lx, align 8
  %var.load15 = load i64, ptr %var.hstart, align 8
  %var.load16 = load i64, ptr %var.line, align 8
  %var.load17 = load i64, ptr %var.col, align 8
  %call.res18 = call ptr @"lexer::scan_pragma_swizzle"(ptr %var.load14, i64 %var.load15, i64 %var.load16, i64 %var.load17)
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.else7, %choice.then6
  %choice.res = phi ptr [ %call.res13, %choice.then6 ], [ %call.res18, %choice.else7 ]
  br label %choice.exit
}

define ptr @"lexer::scan_pragma_number"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.suffix = alloca ptr, align 8
  %var.word = alloca ptr, align 8
  %var.tstart = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca i64, align 8
  %loop.step.88 = alloca i64, align 8
  %loop.idx.88 = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.hstart, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  store i64 0, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.header.88:                                   ; preds = %loop.latch.88, %entry
  %counter.load = load i64, ptr %loop.idx.88, align 8
  %loop.cond = icmp slt i64 %counter.load, 6
  br i1 %loop.cond, label %loop.body.88, label %loop.exit.nat.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.88, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  br label %loop.latch.88

loop.exit.nat.88:                                 ; preds = %loop.header.88
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %loop.body.88
  %step.val = load i64, ptr %loop.step.88, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %loop.exit.nat.88
  %var.load3 = load ptr, ptr %var.lx, align 8
  %call.res4 = call i64 @"lexer::skip_ws"(ptr %var.load3, i64 0)
  %var.load5 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.tstart, align 8
  %var.load6 = load ptr, ptr %var.lx, align 8
  %call.res7 = call i64 @"lexer::scan_while"(ptr %var.load6, ptr @clo.const.60)
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag = lshr i64 %s.read.len11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %loop.exit.88
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen14
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.exit.88
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %var.load16 = load i64, ptr %var.tstart, align 8
  %var.load17 = load ptr, ptr %var.lx, align 8
  %fld.gep18 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %start.is_neg = icmp slt i64 %var.load16, 0
  %rel.start = add i64 %s.read.len12, %var.load16
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load16
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load19, 0
  %rel.end = add i64 %s.read.len12, %fld.load19
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load19
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data15, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.word, align 8
  %var.load20 = load ptr, ptr %var.word, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len21 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len22 = and i64 %eq.lhs.len21, 281474976710655
  %str.tag23 = lshr i64 %eq.lhs.len21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.exit:                                      ; preds = %choice.next289, %choice.case288, %choice.case253, %choice.case218, %choice.case183, %choice.case148, %choice.case113, %choice.case78, %choice.case43, %choice.case
  %choice.res = phi ptr [ @str.0.struct, %choice.case ], [ @str.10.struct, %choice.case43 ], [ @str.11.struct, %choice.case78 ], [ @str.12.struct, %choice.case113 ], [ @str.13.struct, %choice.case148 ], [ @str.14.struct, %choice.case183 ], [ @str.15.struct, %choice.case218 ], [ @str.16.struct, %choice.case253 ], [ @str.17.struct, %choice.case288 ], [ %call.res326, %choice.next289 ]
  store ptr %choice.res, ptr %var.suffix, align 8
  %var.load327 = load ptr, ptr %var.lx, align 8
  %var.load328 = load ptr, ptr %var.suffix, align 8
  %fld.gep329 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load327, i32 0, i32 11
  store ptr %var.load328, ptr %fld.gep329, align 8
  %var.load330 = load ptr, ptr %var.lx, align 8
  %call.res331 = call i64 @"lexer::scan_while"(ptr %var.load330, ptr @clo.const.61)
  %var.load332 = load ptr, ptr %var.lx, align 8
  %arena.cur333 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 24, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load334 = load i64, ptr %var.hstart, align 8
  %var.load335 = load ptr, ptr %var.lx, align 8
  %fld.gep336 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load335, i32 0, i32 1
  %fld.load337 = load i64, ptr %fld.gep336, align 8
  %var.load338 = load i64, ptr %var.hstart, align 8
  %subtmp = sub i64 %fld.load337, %var.load338
  %var.load339 = load i64, ptr %var.line, align 8
  %var.load340 = load i64, ptr %var.col, align 8
  %call.res341 = call ptr @"lexer::mktok"(ptr %var.load332, ptr %enum.alloc, i64 %var.load334, i64 %subtmp, i64 %var.load339, i64 %var.load340, ptr @str.44.struct)
  ret ptr %call.res341

choice.case:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len45 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len46 = load i64, ptr %eq.lhs.len45, align 8
  %eq.lhs.len47 = and i64 %eq.lhs.len46, 281474976710655
  %str.tag48 = lshr i64 %eq.lhs.len46, 48
  %str.immortal49 = icmp eq i64 %str.tag48, 0
  br i1 %str.immortal49, label %str_ok51, label %str_gen_check50

str_gen_check25:                                  ; preds = %str_ok
  %arena.gen28 = call ptr @dva_arena_current()
  %arena.gen29 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen28, i32 0, i32 4
  %arena.gen30 = load i64, ptr %arena.gen29, align 8
  %str.tag.match31 = icmp eq i64 %str.tag23, %arena.gen30
  br i1 %str.tag.match31, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %str_ok
  %eq.rhs.len = load i64, ptr @str.43.struct, align 8
  %eq.rhs.len32 = and i64 %eq.rhs.len, 281474976710655
  %str.tag33 = lshr i64 %eq.rhs.len, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_stale27:                                      ; preds = %str_gen_check25
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

str_gen_check35:                                  ; preds = %str_ok26
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %str_ok26
  %eq.len = icmp eq i64 %eq.lhs.len22, %eq.rhs.len32
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale37:                                      ; preds = %str_gen_check35
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

str.eq.then:                                      ; preds = %str_ok36
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data42 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.43.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data42, ptr %eq.rhs.data, i64 %eq.lhs.len22)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok36
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.case43:                                    ; preds = %str.eq.merge71
  br label %choice.exit

choice.next44:                                    ; preds = %str.eq.merge71
  %eq.lhs.len80 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len81 = load i64, ptr %eq.lhs.len80, align 8
  %eq.lhs.len82 = and i64 %eq.lhs.len81, 281474976710655
  %str.tag83 = lshr i64 %eq.lhs.len81, 48
  %str.immortal84 = icmp eq i64 %str.tag83, 0
  br i1 %str.immortal84, label %str_ok86, label %str_gen_check85

str_gen_check50:                                  ; preds = %choice.next
  %arena.gen53 = call ptr @dva_arena_current()
  %arena.gen54 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen53, i32 0, i32 4
  %arena.gen55 = load i64, ptr %arena.gen54, align 8
  %str.tag.match56 = icmp eq i64 %str.tag48, %arena.gen55
  br i1 %str.tag.match56, label %str_ok51, label %str_stale52

str_ok51:                                         ; preds = %str_stale52, %str_gen_check50, %choice.next
  %eq.rhs.len57 = load i64, ptr @str.10.struct, align 8
  %eq.rhs.len58 = and i64 %eq.rhs.len57, 281474976710655
  %str.tag59 = lshr i64 %eq.rhs.len57, 48
  %str.immortal60 = icmp eq i64 %str.tag59, 0
  br i1 %str.immortal60, label %str_ok62, label %str_gen_check61

str_stale52:                                      ; preds = %str_gen_check50
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok51

str_gen_check61:                                  ; preds = %str_ok51
  %arena.gen64 = call ptr @dva_arena_current()
  %arena.gen65 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen64, i32 0, i32 4
  %arena.gen66 = load i64, ptr %arena.gen65, align 8
  %str.tag.match67 = icmp eq i64 %str.tag59, %arena.gen66
  br i1 %str.tag.match67, label %str_ok62, label %str_stale63

str_ok62:                                         ; preds = %str_stale63, %str_gen_check61, %str_ok51
  %eq.len68 = icmp eq i64 %eq.lhs.len47, %eq.rhs.len58
  br i1 %eq.len68, label %str.eq.then69, label %str.eq.else70

str_stale63:                                      ; preds = %str_gen_check61
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok62

str.eq.then69:                                    ; preds = %str_ok62
  %eq.lhs.data72 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data73 = load ptr, ptr %eq.lhs.data72, align 8
  %eq.rhs.data74 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %eq.memcmp75 = call i32 @memcmp(ptr %eq.lhs.data73, ptr %eq.rhs.data74, i64 %eq.lhs.len47)
  %eq.cmp.zero76 = icmp eq i32 %eq.memcmp75, 0
  br label %str.eq.merge71

str.eq.else70:                                    ; preds = %str_ok62
  br label %str.eq.merge71

str.eq.merge71:                                   ; preds = %str.eq.else70, %str.eq.then69
  %str.eq.result77 = phi i1 [ %eq.cmp.zero76, %str.eq.then69 ], [ false, %str.eq.else70 ]
  br i1 %str.eq.result77, label %choice.case43, label %choice.next44

choice.case78:                                    ; preds = %str.eq.merge106
  br label %choice.exit

choice.next79:                                    ; preds = %str.eq.merge106
  %eq.lhs.len115 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len116 = load i64, ptr %eq.lhs.len115, align 8
  %eq.lhs.len117 = and i64 %eq.lhs.len116, 281474976710655
  %str.tag118 = lshr i64 %eq.lhs.len116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_gen_check85:                                  ; preds = %choice.next44
  %arena.gen88 = call ptr @dva_arena_current()
  %arena.gen89 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen88, i32 0, i32 4
  %arena.gen90 = load i64, ptr %arena.gen89, align 8
  %str.tag.match91 = icmp eq i64 %str.tag83, %arena.gen90
  br i1 %str.tag.match91, label %str_ok86, label %str_stale87

str_ok86:                                         ; preds = %str_stale87, %str_gen_check85, %choice.next44
  %eq.rhs.len92 = load i64, ptr @str.11.struct, align 8
  %eq.rhs.len93 = and i64 %eq.rhs.len92, 281474976710655
  %str.tag94 = lshr i64 %eq.rhs.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

str_stale87:                                      ; preds = %str_gen_check85
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok86

str_gen_check96:                                  ; preds = %str_ok86
  %arena.gen99 = call ptr @dva_arena_current()
  %arena.gen100 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen99, i32 0, i32 4
  %arena.gen101 = load i64, ptr %arena.gen100, align 8
  %str.tag.match102 = icmp eq i64 %str.tag94, %arena.gen101
  br i1 %str.tag.match102, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %str_ok86
  %eq.len103 = icmp eq i64 %eq.lhs.len82, %eq.rhs.len93
  br i1 %eq.len103, label %str.eq.then104, label %str.eq.else105

str_stale98:                                      ; preds = %str_gen_check96
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

str.eq.then104:                                   ; preds = %str_ok97
  %eq.lhs.data107 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data108 = load ptr, ptr %eq.lhs.data107, align 8
  %eq.rhs.data109 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %eq.memcmp110 = call i32 @memcmp(ptr %eq.lhs.data108, ptr %eq.rhs.data109, i64 %eq.lhs.len82)
  %eq.cmp.zero111 = icmp eq i32 %eq.memcmp110, 0
  br label %str.eq.merge106

str.eq.else105:                                   ; preds = %str_ok97
  br label %str.eq.merge106

str.eq.merge106:                                  ; preds = %str.eq.else105, %str.eq.then104
  %str.eq.result112 = phi i1 [ %eq.cmp.zero111, %str.eq.then104 ], [ false, %str.eq.else105 ]
  br i1 %str.eq.result112, label %choice.case78, label %choice.next79

choice.case113:                                   ; preds = %str.eq.merge141
  br label %choice.exit

choice.next114:                                   ; preds = %str.eq.merge141
  %eq.lhs.len150 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len151 = load i64, ptr %eq.lhs.len150, align 8
  %eq.lhs.len152 = and i64 %eq.lhs.len151, 281474976710655
  %str.tag153 = lshr i64 %eq.lhs.len151, 48
  %str.immortal154 = icmp eq i64 %str.tag153, 0
  br i1 %str.immortal154, label %str_ok156, label %str_gen_check155

str_gen_check120:                                 ; preds = %choice.next79
  %arena.gen123 = call ptr @dva_arena_current()
  %arena.gen124 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen123, i32 0, i32 4
  %arena.gen125 = load i64, ptr %arena.gen124, align 8
  %str.tag.match126 = icmp eq i64 %str.tag118, %arena.gen125
  br i1 %str.tag.match126, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %choice.next79
  %eq.rhs.len127 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len128 = and i64 %eq.rhs.len127, 281474976710655
  %str.tag129 = lshr i64 %eq.rhs.len127, 48
  %str.immortal130 = icmp eq i64 %str.tag129, 0
  br i1 %str.immortal130, label %str_ok132, label %str_gen_check131

str_stale122:                                     ; preds = %str_gen_check120
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

str_gen_check131:                                 ; preds = %str_ok121
  %arena.gen134 = call ptr @dva_arena_current()
  %arena.gen135 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen134, i32 0, i32 4
  %arena.gen136 = load i64, ptr %arena.gen135, align 8
  %str.tag.match137 = icmp eq i64 %str.tag129, %arena.gen136
  br i1 %str.tag.match137, label %str_ok132, label %str_stale133

str_ok132:                                        ; preds = %str_stale133, %str_gen_check131, %str_ok121
  %eq.len138 = icmp eq i64 %eq.lhs.len117, %eq.rhs.len128
  br i1 %eq.len138, label %str.eq.then139, label %str.eq.else140

str_stale133:                                     ; preds = %str_gen_check131
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok132

str.eq.then139:                                   ; preds = %str_ok132
  %eq.lhs.data142 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data143 = load ptr, ptr %eq.lhs.data142, align 8
  %eq.rhs.data144 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp145 = call i32 @memcmp(ptr %eq.lhs.data143, ptr %eq.rhs.data144, i64 %eq.lhs.len117)
  %eq.cmp.zero146 = icmp eq i32 %eq.memcmp145, 0
  br label %str.eq.merge141

str.eq.else140:                                   ; preds = %str_ok132
  br label %str.eq.merge141

str.eq.merge141:                                  ; preds = %str.eq.else140, %str.eq.then139
  %str.eq.result147 = phi i1 [ %eq.cmp.zero146, %str.eq.then139 ], [ false, %str.eq.else140 ]
  br i1 %str.eq.result147, label %choice.case113, label %choice.next114

choice.case148:                                   ; preds = %str.eq.merge176
  br label %choice.exit

choice.next149:                                   ; preds = %str.eq.merge176
  %eq.lhs.len185 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len186 = load i64, ptr %eq.lhs.len185, align 8
  %eq.lhs.len187 = and i64 %eq.lhs.len186, 281474976710655
  %str.tag188 = lshr i64 %eq.lhs.len186, 48
  %str.immortal189 = icmp eq i64 %str.tag188, 0
  br i1 %str.immortal189, label %str_ok191, label %str_gen_check190

str_gen_check155:                                 ; preds = %choice.next114
  %arena.gen158 = call ptr @dva_arena_current()
  %arena.gen159 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen158, i32 0, i32 4
  %arena.gen160 = load i64, ptr %arena.gen159, align 8
  %str.tag.match161 = icmp eq i64 %str.tag153, %arena.gen160
  br i1 %str.tag.match161, label %str_ok156, label %str_stale157

str_ok156:                                        ; preds = %str_stale157, %str_gen_check155, %choice.next114
  %eq.rhs.len162 = load i64, ptr @str.13.struct, align 8
  %eq.rhs.len163 = and i64 %eq.rhs.len162, 281474976710655
  %str.tag164 = lshr i64 %eq.rhs.len162, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

str_stale157:                                     ; preds = %str_gen_check155
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok156

str_gen_check166:                                 ; preds = %str_ok156
  %arena.gen169 = call ptr @dva_arena_current()
  %arena.gen170 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen169, i32 0, i32 4
  %arena.gen171 = load i64, ptr %arena.gen170, align 8
  %str.tag.match172 = icmp eq i64 %str.tag164, %arena.gen171
  br i1 %str.tag.match172, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %str_ok156
  %eq.len173 = icmp eq i64 %eq.lhs.len152, %eq.rhs.len163
  br i1 %eq.len173, label %str.eq.then174, label %str.eq.else175

str_stale168:                                     ; preds = %str_gen_check166
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

str.eq.then174:                                   ; preds = %str_ok167
  %eq.lhs.data177 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data178 = load ptr, ptr %eq.lhs.data177, align 8
  %eq.rhs.data179 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %eq.memcmp180 = call i32 @memcmp(ptr %eq.lhs.data178, ptr %eq.rhs.data179, i64 %eq.lhs.len152)
  %eq.cmp.zero181 = icmp eq i32 %eq.memcmp180, 0
  br label %str.eq.merge176

str.eq.else175:                                   ; preds = %str_ok167
  br label %str.eq.merge176

str.eq.merge176:                                  ; preds = %str.eq.else175, %str.eq.then174
  %str.eq.result182 = phi i1 [ %eq.cmp.zero181, %str.eq.then174 ], [ false, %str.eq.else175 ]
  br i1 %str.eq.result182, label %choice.case148, label %choice.next149

choice.case183:                                   ; preds = %str.eq.merge211
  br label %choice.exit

choice.next184:                                   ; preds = %str.eq.merge211
  %eq.lhs.len220 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len221 = load i64, ptr %eq.lhs.len220, align 8
  %eq.lhs.len222 = and i64 %eq.lhs.len221, 281474976710655
  %str.tag223 = lshr i64 %eq.lhs.len221, 48
  %str.immortal224 = icmp eq i64 %str.tag223, 0
  br i1 %str.immortal224, label %str_ok226, label %str_gen_check225

str_gen_check190:                                 ; preds = %choice.next149
  %arena.gen193 = call ptr @dva_arena_current()
  %arena.gen194 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen193, i32 0, i32 4
  %arena.gen195 = load i64, ptr %arena.gen194, align 8
  %str.tag.match196 = icmp eq i64 %str.tag188, %arena.gen195
  br i1 %str.tag.match196, label %str_ok191, label %str_stale192

str_ok191:                                        ; preds = %str_stale192, %str_gen_check190, %choice.next149
  %eq.rhs.len197 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len198 = and i64 %eq.rhs.len197, 281474976710655
  %str.tag199 = lshr i64 %eq.rhs.len197, 48
  %str.immortal200 = icmp eq i64 %str.tag199, 0
  br i1 %str.immortal200, label %str_ok202, label %str_gen_check201

str_stale192:                                     ; preds = %str_gen_check190
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok191

str_gen_check201:                                 ; preds = %str_ok191
  %arena.gen204 = call ptr @dva_arena_current()
  %arena.gen205 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen204, i32 0, i32 4
  %arena.gen206 = load i64, ptr %arena.gen205, align 8
  %str.tag.match207 = icmp eq i64 %str.tag199, %arena.gen206
  br i1 %str.tag.match207, label %str_ok202, label %str_stale203

str_ok202:                                        ; preds = %str_stale203, %str_gen_check201, %str_ok191
  %eq.len208 = icmp eq i64 %eq.lhs.len187, %eq.rhs.len198
  br i1 %eq.len208, label %str.eq.then209, label %str.eq.else210

str_stale203:                                     ; preds = %str_gen_check201
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok202

str.eq.then209:                                   ; preds = %str_ok202
  %eq.lhs.data212 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data213 = load ptr, ptr %eq.lhs.data212, align 8
  %eq.rhs.data214 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp215 = call i32 @memcmp(ptr %eq.lhs.data213, ptr %eq.rhs.data214, i64 %eq.lhs.len187)
  %eq.cmp.zero216 = icmp eq i32 %eq.memcmp215, 0
  br label %str.eq.merge211

str.eq.else210:                                   ; preds = %str_ok202
  br label %str.eq.merge211

str.eq.merge211:                                  ; preds = %str.eq.else210, %str.eq.then209
  %str.eq.result217 = phi i1 [ %eq.cmp.zero216, %str.eq.then209 ], [ false, %str.eq.else210 ]
  br i1 %str.eq.result217, label %choice.case183, label %choice.next184

choice.case218:                                   ; preds = %str.eq.merge246
  br label %choice.exit

choice.next219:                                   ; preds = %str.eq.merge246
  %eq.lhs.len255 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len256 = load i64, ptr %eq.lhs.len255, align 8
  %eq.lhs.len257 = and i64 %eq.lhs.len256, 281474976710655
  %str.tag258 = lshr i64 %eq.lhs.len256, 48
  %str.immortal259 = icmp eq i64 %str.tag258, 0
  br i1 %str.immortal259, label %str_ok261, label %str_gen_check260

str_gen_check225:                                 ; preds = %choice.next184
  %arena.gen228 = call ptr @dva_arena_current()
  %arena.gen229 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen228, i32 0, i32 4
  %arena.gen230 = load i64, ptr %arena.gen229, align 8
  %str.tag.match231 = icmp eq i64 %str.tag223, %arena.gen230
  br i1 %str.tag.match231, label %str_ok226, label %str_stale227

str_ok226:                                        ; preds = %str_stale227, %str_gen_check225, %choice.next184
  %eq.rhs.len232 = load i64, ptr @str.15.struct, align 8
  %eq.rhs.len233 = and i64 %eq.rhs.len232, 281474976710655
  %str.tag234 = lshr i64 %eq.rhs.len232, 48
  %str.immortal235 = icmp eq i64 %str.tag234, 0
  br i1 %str.immortal235, label %str_ok237, label %str_gen_check236

str_stale227:                                     ; preds = %str_gen_check225
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok226

str_gen_check236:                                 ; preds = %str_ok226
  %arena.gen239 = call ptr @dva_arena_current()
  %arena.gen240 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen239, i32 0, i32 4
  %arena.gen241 = load i64, ptr %arena.gen240, align 8
  %str.tag.match242 = icmp eq i64 %str.tag234, %arena.gen241
  br i1 %str.tag.match242, label %str_ok237, label %str_stale238

str_ok237:                                        ; preds = %str_stale238, %str_gen_check236, %str_ok226
  %eq.len243 = icmp eq i64 %eq.lhs.len222, %eq.rhs.len233
  br i1 %eq.len243, label %str.eq.then244, label %str.eq.else245

str_stale238:                                     ; preds = %str_gen_check236
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok237

str.eq.then244:                                   ; preds = %str_ok237
  %eq.lhs.data247 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data248 = load ptr, ptr %eq.lhs.data247, align 8
  %eq.rhs.data249 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %eq.memcmp250 = call i32 @memcmp(ptr %eq.lhs.data248, ptr %eq.rhs.data249, i64 %eq.lhs.len222)
  %eq.cmp.zero251 = icmp eq i32 %eq.memcmp250, 0
  br label %str.eq.merge246

str.eq.else245:                                   ; preds = %str_ok237
  br label %str.eq.merge246

str.eq.merge246:                                  ; preds = %str.eq.else245, %str.eq.then244
  %str.eq.result252 = phi i1 [ %eq.cmp.zero251, %str.eq.then244 ], [ false, %str.eq.else245 ]
  br i1 %str.eq.result252, label %choice.case218, label %choice.next219

choice.case253:                                   ; preds = %str.eq.merge281
  br label %choice.exit

choice.next254:                                   ; preds = %str.eq.merge281
  %eq.lhs.len290 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len291 = load i64, ptr %eq.lhs.len290, align 8
  %eq.lhs.len292 = and i64 %eq.lhs.len291, 281474976710655
  %str.tag293 = lshr i64 %eq.lhs.len291, 48
  %str.immortal294 = icmp eq i64 %str.tag293, 0
  br i1 %str.immortal294, label %str_ok296, label %str_gen_check295

str_gen_check260:                                 ; preds = %choice.next219
  %arena.gen263 = call ptr @dva_arena_current()
  %arena.gen264 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen263, i32 0, i32 4
  %arena.gen265 = load i64, ptr %arena.gen264, align 8
  %str.tag.match266 = icmp eq i64 %str.tag258, %arena.gen265
  br i1 %str.tag.match266, label %str_ok261, label %str_stale262

str_ok261:                                        ; preds = %str_stale262, %str_gen_check260, %choice.next219
  %eq.rhs.len267 = load i64, ptr @str.16.struct, align 8
  %eq.rhs.len268 = and i64 %eq.rhs.len267, 281474976710655
  %str.tag269 = lshr i64 %eq.rhs.len267, 48
  %str.immortal270 = icmp eq i64 %str.tag269, 0
  br i1 %str.immortal270, label %str_ok272, label %str_gen_check271

str_stale262:                                     ; preds = %str_gen_check260
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok261

str_gen_check271:                                 ; preds = %str_ok261
  %arena.gen274 = call ptr @dva_arena_current()
  %arena.gen275 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen274, i32 0, i32 4
  %arena.gen276 = load i64, ptr %arena.gen275, align 8
  %str.tag.match277 = icmp eq i64 %str.tag269, %arena.gen276
  br i1 %str.tag.match277, label %str_ok272, label %str_stale273

str_ok272:                                        ; preds = %str_stale273, %str_gen_check271, %str_ok261
  %eq.len278 = icmp eq i64 %eq.lhs.len257, %eq.rhs.len268
  br i1 %eq.len278, label %str.eq.then279, label %str.eq.else280

str_stale273:                                     ; preds = %str_gen_check271
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok272

str.eq.then279:                                   ; preds = %str_ok272
  %eq.lhs.data282 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data283 = load ptr, ptr %eq.lhs.data282, align 8
  %eq.rhs.data284 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %eq.memcmp285 = call i32 @memcmp(ptr %eq.lhs.data283, ptr %eq.rhs.data284, i64 %eq.lhs.len257)
  %eq.cmp.zero286 = icmp eq i32 %eq.memcmp285, 0
  br label %str.eq.merge281

str.eq.else280:                                   ; preds = %str_ok272
  br label %str.eq.merge281

str.eq.merge281:                                  ; preds = %str.eq.else280, %str.eq.then279
  %str.eq.result287 = phi i1 [ %eq.cmp.zero286, %str.eq.then279 ], [ false, %str.eq.else280 ]
  br i1 %str.eq.result287, label %choice.case253, label %choice.next254

choice.case288:                                   ; preds = %str.eq.merge316
  br label %choice.exit

choice.next289:                                   ; preds = %str.eq.merge316
  %var.load323 = load ptr, ptr %var.word, align 8
  %var.load324 = load i64, ptr %var.line, align 8
  %var.load325 = load i64, ptr %var.col, align 8
  %call.res326 = call ptr @"lexer::pragma_suffix_fail"(ptr %var.load323, i64 %var.load324, i64 %var.load325)
  br label %choice.exit

str_gen_check295:                                 ; preds = %choice.next254
  %arena.gen298 = call ptr @dva_arena_current()
  %arena.gen299 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen298, i32 0, i32 4
  %arena.gen300 = load i64, ptr %arena.gen299, align 8
  %str.tag.match301 = icmp eq i64 %str.tag293, %arena.gen300
  br i1 %str.tag.match301, label %str_ok296, label %str_stale297

str_ok296:                                        ; preds = %str_stale297, %str_gen_check295, %choice.next254
  %eq.rhs.len302 = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len303 = and i64 %eq.rhs.len302, 281474976710655
  %str.tag304 = lshr i64 %eq.rhs.len302, 48
  %str.immortal305 = icmp eq i64 %str.tag304, 0
  br i1 %str.immortal305, label %str_ok307, label %str_gen_check306

str_stale297:                                     ; preds = %str_gen_check295
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok296

str_gen_check306:                                 ; preds = %str_ok296
  %arena.gen309 = call ptr @dva_arena_current()
  %arena.gen310 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen309, i32 0, i32 4
  %arena.gen311 = load i64, ptr %arena.gen310, align 8
  %str.tag.match312 = icmp eq i64 %str.tag304, %arena.gen311
  br i1 %str.tag.match312, label %str_ok307, label %str_stale308

str_ok307:                                        ; preds = %str_stale308, %str_gen_check306, %str_ok296
  %eq.len313 = icmp eq i64 %eq.lhs.len292, %eq.rhs.len303
  br i1 %eq.len313, label %str.eq.then314, label %str.eq.else315

str_stale308:                                     ; preds = %str_gen_check306
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok307

str.eq.then314:                                   ; preds = %str_ok307
  %eq.lhs.data317 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data318 = load ptr, ptr %eq.lhs.data317, align 8
  %eq.rhs.data319 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp320 = call i32 @memcmp(ptr %eq.lhs.data318, ptr %eq.rhs.data319, i64 %eq.lhs.len292)
  %eq.cmp.zero321 = icmp eq i32 %eq.memcmp320, 0
  br label %str.eq.merge316

str.eq.else315:                                   ; preds = %str_ok307
  br label %str.eq.merge316

str.eq.merge316:                                  ; preds = %str.eq.else315, %str.eq.then314
  %str.eq.result322 = phi i1 [ %eq.cmp.zero321, %str.eq.then314 ], [ false, %str.eq.else315 ]
  br i1 %str.eq.result322, label %choice.case288, label %choice.next289
}

define internal i1 @"$anon_fn.131"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_ws"(i64 %var.load)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define internal i1 @"$anon_fn.132"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_nl"(i64 %var.load)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define ptr @"lexer::scan_pragma_fp"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.checked = alloca ptr, align 8
  %var.farg = alloca ptr, align 8
  %var.fstart = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca i64, align 8
  %loop.step.89 = alloca i64, align 8
  %loop.idx.89 = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.hstart, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  store i64 0, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.header.89:                                   ; preds = %loop.latch.89, %entry
  %counter.load = load i64, ptr %loop.idx.89, align 8
  %loop.cond = icmp slt i64 %counter.load, 6
  br i1 %loop.cond, label %loop.body.89, label %loop.exit.nat.89

loop.body.89:                                     ; preds = %loop.header.89
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.89, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  br label %loop.latch.89

loop.exit.nat.89:                                 ; preds = %loop.header.89
  br label %loop.exit.89

loop.latch.89:                                    ; preds = %loop.body.89
  %step.val = load i64, ptr %loop.step.89, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.exit.89:                                     ; preds = %loop.exit.nat.89
  %var.load3 = load ptr, ptr %var.lx, align 8
  %call.res4 = call i64 @"lexer::skip_ws"(ptr %var.load3, i64 0)
  %var.load5 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.fstart, align 8
  %var.load6 = load ptr, ptr %var.lx, align 8
  %call.res7 = call i64 @"lexer::scan_while"(ptr %var.load6, ptr @clo.const.63)
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag = lshr i64 %s.read.len11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %loop.exit.89
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen14
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.exit.89
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %var.load16 = load i64, ptr %var.fstart, align 8
  %var.load17 = load ptr, ptr %var.lx, align 8
  %fld.gep18 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %start.is_neg = icmp slt i64 %var.load16, 0
  %rel.start = add i64 %s.read.len12, %var.load16
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load16
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load19, 0
  %rel.end = add i64 %s.read.len12, %fld.load19
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load19
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data15, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.farg, align 8
  %var.load20 = load ptr, ptr %var.farg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len21 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len22 = and i64 %eq.lhs.len21, 281474976710655
  %str.tag23 = lshr i64 %eq.lhs.len21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %var.load76, %choice.case ], [ %call.res80, %choice.next ]
  store ptr %choice.res, ptr %var.checked, align 8
  %var.load81 = load ptr, ptr %var.lx, align 8
  %call.res82 = call i64 @"lexer::scan_while"(ptr %var.load81, ptr @clo.const.65)
  %var.load83 = load ptr, ptr %var.lx, align 8
  %arena.cur84 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 31, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load85 = load i64, ptr %var.hstart, align 8
  %var.load86 = load ptr, ptr %var.lx, align 8
  %fld.gep87 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load86, i32 0, i32 1
  %fld.load88 = load i64, ptr %fld.gep87, align 8
  %var.load89 = load i64, ptr %var.hstart, align 8
  %subtmp = sub i64 %fld.load88, %var.load89
  %var.load90 = load i64, ptr %var.line, align 8
  %var.load91 = load i64, ptr %var.col, align 8
  %var.load92 = load ptr, ptr %var.checked, align 8
  %call.res93 = call ptr @"lexer::mktok"(ptr %var.load83, ptr %enum.alloc, i64 %var.load85, i64 %subtmp, i64 %var.load90, i64 %var.load91, ptr %var.load92)
  ret ptr %call.res93

choice.case:                                      ; preds = %str.eq.merge69
  %var.load76 = load ptr, ptr %var.farg, align 8
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge69
  %var.load77 = load ptr, ptr %var.farg, align 8
  %var.load78 = load i64, ptr %var.line, align 8
  %var.load79 = load i64, ptr %var.col, align 8
  %call.res80 = call ptr @"lexer::pragma_fp_fail"(ptr %var.load77, i64 %var.load78, i64 %var.load79)
  br label %choice.exit

str_gen_check25:                                  ; preds = %str_ok
  %arena.gen28 = call ptr @dva_arena_current()
  %arena.gen29 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen28, i32 0, i32 4
  %arena.gen30 = load i64, ptr %arena.gen29, align 8
  %str.tag.match31 = icmp eq i64 %str.tag23, %arena.gen30
  br i1 %str.tag.match31, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %str_ok
  %eq.rhs.len = load i64, ptr @str.45.struct, align 8
  %eq.rhs.len32 = and i64 %eq.rhs.len, 281474976710655
  %str.tag33 = lshr i64 %eq.rhs.len, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_stale27:                                      ; preds = %str_gen_check25
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

str_gen_check35:                                  ; preds = %str_ok26
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %str_ok26
  %eq.len = icmp eq i64 %eq.lhs.len22, %eq.rhs.len32
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale37:                                      ; preds = %str_gen_check35
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

str.eq.then:                                      ; preds = %str_ok36
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data42 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.45.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data42, ptr %eq.rhs.data, i64 %eq.lhs.len22)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok36
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len43 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len44 = load i64, ptr %eq.lhs.len43, align 8
  %eq.lhs.len45 = and i64 %eq.lhs.len44, 281474976710655
  %str.tag46 = lshr i64 %eq.lhs.len44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

str_gen_check48:                                  ; preds = %str.eq.merge
  %arena.gen51 = call ptr @dva_arena_current()
  %arena.gen52 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen51, i32 0, i32 4
  %arena.gen53 = load i64, ptr %arena.gen52, align 8
  %str.tag.match54 = icmp eq i64 %str.tag46, %arena.gen53
  br i1 %str.tag.match54, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %str.eq.merge
  %eq.rhs.len55 = load i64, ptr @str.46.struct, align 8
  %eq.rhs.len56 = and i64 %eq.rhs.len55, 281474976710655
  %str.tag57 = lshr i64 %eq.rhs.len55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

str_stale50:                                      ; preds = %str_gen_check48
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

str_gen_check59:                                  ; preds = %str_ok49
  %arena.gen62 = call ptr @dva_arena_current()
  %arena.gen63 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen62, i32 0, i32 4
  %arena.gen64 = load i64, ptr %arena.gen63, align 8
  %str.tag.match65 = icmp eq i64 %str.tag57, %arena.gen64
  br i1 %str.tag.match65, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %str_ok49
  %eq.len66 = icmp eq i64 %eq.lhs.len45, %eq.rhs.len56
  br i1 %eq.len66, label %str.eq.then67, label %str.eq.else68

str_stale61:                                      ; preds = %str_gen_check59
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

str.eq.then67:                                    ; preds = %str_ok60
  %eq.lhs.data70 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data71 = load ptr, ptr %eq.lhs.data70, align 8
  %eq.rhs.data72 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.46.struct, i32 0, i32 1), align 8
  %eq.memcmp73 = call i32 @memcmp(ptr %eq.lhs.data71, ptr %eq.rhs.data72, i64 %eq.lhs.len45)
  %eq.cmp.zero74 = icmp eq i32 %eq.memcmp73, 0
  br label %str.eq.merge69

str.eq.else68:                                    ; preds = %str_ok60
  br label %str.eq.merge69

str.eq.merge69:                                   ; preds = %str.eq.else68, %str.eq.then67
  %str.eq.result75 = phi i1 [ %eq.cmp.zero74, %str.eq.then67 ], [ false, %str.eq.else68 ]
  %case.or = or i1 %str.eq.result, %str.eq.result75
  br i1 %case.or, label %choice.case, label %choice.next
}

define internal i1 @"$anon_fn.134"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_ws"(i64 %var.load)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define ptr @"lexer::pragma_fp_fail"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.word = alloca ptr, align 8
  store ptr %0, ptr %var.word, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load i64, ptr %var.line, align 8
  %var.load1 = load i64, ptr %var.col, align 8
  %var.load2 = load ptr, ptr %var.word, align 8
  %concat.lhs = load i64, ptr @str.47.struct, align 8
  %concat.lhs3 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen4 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen5 = load i64, ptr %arena.gen4, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen5
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.47.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %concat.rhs7 = load i64, ptr %concat.rhs, align 8
  %concat.rhs8 = and i64 %concat.rhs7, 281474976710655
  %str.tag9 = lshr i64 %concat.rhs7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %concat.rhs18 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %concat.rhs19 = load ptr, ptr %concat.rhs18, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs3, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len20

str_stale13:                                      ; preds = %str_gen_check11
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

concat.sum.len20:                                 ; preds = %str_overflow_abort, %str_ok12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum21 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf22 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf22, label %str_overflow_abort24, label %concat.tot.len23

str_overflow_abort:                               ; preds = %str_ok12
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len20

concat.tot.len23:                                 ; preds = %str_overflow_abort24, %concat.sum.len20
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs6, i64 %concat.lhs3, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs3
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
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  %concat.rhs40 = load i64, ptr @str.48.struct, align 8
  %concat.rhs41 = and i64 %concat.rhs40, 281474976710655
  %str.tag42 = lshr i64 %concat.rhs40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale33:                                      ; preds = %str_gen_check31
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

str_gen_check44:                                  ; preds = %str_ok32
  %arena.gen47 = call ptr @dva_arena_current()
  %arena.gen48 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen47, i32 0, i32 4
  %arena.gen49 = load i64, ptr %arena.gen48, align 8
  %str.tag.match50 = icmp eq i64 %str.tag42, %arena.gen49
  br i1 %str.tag.match50, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok32
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.48.struct, i32 0, i32 1), align 8
  %concat.sum.len52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs28, i64 %concat.rhs41)
  %sum53 = extractvalue { i64, i1 } %concat.sum.len52, 0
  %ovf54 = extractvalue { i64, i1 } %concat.sum.len52, 1
  br i1 %ovf54, label %str_overflow_abort56, label %concat.sum.len55

str_stale46:                                      ; preds = %str_gen_check44
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

concat.sum.len55:                                 ; preds = %str_overflow_abort56, %str_ok45
  %concat.tot.len57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum53, i64 1)
  %sum58 = extractvalue { i64, i1 } %concat.tot.len57, 0
  %ovf59 = extractvalue { i64, i1 } %concat.tot.len57, 1
  br i1 %ovf59, label %str_overflow_abort61, label %concat.tot.len60

str_overflow_abort56:                             ; preds = %str_ok45
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  %call.res = call i64 @"lexer::fail"(i64 1013, i64 %var.load, i64 %var.load1, ptr %concat.str67)
  ret ptr @str.0.struct

str_overflow_abort61:                             ; preds = %concat.sum.len55
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len60
}

define internal i1 @"$anon_fn.136"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_nl"(i64 %var.load)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define ptr @"lexer::scan_pragma_swizzle"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.checked = alloca ptr, align 8
  %var.sarg = alloca ptr, align 8
  %var.sstart = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca i64, align 8
  %loop.step.90 = alloca i64, align 8
  %loop.idx.90 = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.hstart, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  store i64 0, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.header.90:                                   ; preds = %loop.latch.90, %entry
  %counter.load = load i64, ptr %loop.idx.90, align 8
  %loop.cond = icmp slt i64 %counter.load, 7
  br i1 %loop.cond, label %loop.body.90, label %loop.exit.nat.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.90, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  br label %loop.latch.90

loop.exit.nat.90:                                 ; preds = %loop.header.90
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %loop.body.90
  %step.val = load i64, ptr %loop.step.90, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %loop.exit.nat.90
  %var.load3 = load ptr, ptr %var.lx, align 8
  %call.res4 = call i64 @"lexer::skip_ws"(ptr %var.load3, i64 0)
  %var.load5 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.sstart, align 8
  %var.load6 = load ptr, ptr %var.lx, align 8
  %call.res7 = call i64 @"lexer::scan_while"(ptr %var.load6, ptr @clo.const.67)
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag = lshr i64 %s.read.len11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %loop.exit.90
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen14
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.exit.90
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %var.load16 = load i64, ptr %var.sstart, align 8
  %var.load17 = load ptr, ptr %var.lx, align 8
  %fld.gep18 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %start.is_neg = icmp slt i64 %var.load16, 0
  %rel.start = add i64 %s.read.len12, %var.load16
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load16
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load19, 0
  %rel.end = add i64 %s.read.len12, %fld.load19
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load19
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data15, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.sarg, align 8
  %var.load20 = load ptr, ptr %var.sarg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len21 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len22 = and i64 %eq.lhs.len21, 281474976710655
  %str.tag23 = lshr i64 %eq.lhs.len21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %var.load144, %choice.case ], [ %call.res148, %choice.next ]
  store ptr %choice.res, ptr %var.checked, align 8
  %var.load149 = load ptr, ptr %var.lx, align 8
  %call.res150 = call i64 @"lexer::scan_while"(ptr %var.load149, ptr @clo.const.69)
  %var.load151 = load ptr, ptr %var.lx, align 8
  %arena.cur152 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 35, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load153 = load i64, ptr %var.hstart, align 8
  %var.load154 = load ptr, ptr %var.lx, align 8
  %fld.gep155 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load154, i32 0, i32 1
  %fld.load156 = load i64, ptr %fld.gep155, align 8
  %var.load157 = load i64, ptr %var.hstart, align 8
  %subtmp = sub i64 %fld.load156, %var.load157
  %var.load158 = load i64, ptr %var.line, align 8
  %var.load159 = load i64, ptr %var.col, align 8
  %var.load160 = load ptr, ptr %var.checked, align 8
  %call.res161 = call ptr @"lexer::mktok"(ptr %var.load151, ptr %enum.alloc, i64 %var.load153, i64 %subtmp, i64 %var.load158, i64 %var.load159, ptr %var.load160)
  ret ptr %call.res161

choice.case:                                      ; preds = %str.eq.merge136
  %var.load144 = load ptr, ptr %var.sarg, align 8
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge136
  %var.load145 = load ptr, ptr %var.sarg, align 8
  %var.load146 = load i64, ptr %var.line, align 8
  %var.load147 = load i64, ptr %var.col, align 8
  %call.res148 = call ptr @"lexer::pragma_swizzle_fail"(ptr %var.load145, i64 %var.load146, i64 %var.load147)
  br label %choice.exit

str_gen_check25:                                  ; preds = %str_ok
  %arena.gen28 = call ptr @dva_arena_current()
  %arena.gen29 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen28, i32 0, i32 4
  %arena.gen30 = load i64, ptr %arena.gen29, align 8
  %str.tag.match31 = icmp eq i64 %str.tag23, %arena.gen30
  br i1 %str.tag.match31, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %str_ok
  %eq.rhs.len = load i64, ptr @str.45.struct, align 8
  %eq.rhs.len32 = and i64 %eq.rhs.len, 281474976710655
  %str.tag33 = lshr i64 %eq.rhs.len, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_stale27:                                      ; preds = %str_gen_check25
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

str_gen_check35:                                  ; preds = %str_ok26
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %str_ok26
  %eq.len = icmp eq i64 %eq.lhs.len22, %eq.rhs.len32
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale37:                                      ; preds = %str_gen_check35
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

str.eq.then:                                      ; preds = %str_ok36
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data42 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.45.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data42, ptr %eq.rhs.data, i64 %eq.lhs.len22)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok36
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len43 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len44 = load i64, ptr %eq.lhs.len43, align 8
  %eq.lhs.len45 = and i64 %eq.lhs.len44, 281474976710655
  %str.tag46 = lshr i64 %eq.lhs.len44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

str_gen_check48:                                  ; preds = %str.eq.merge
  %arena.gen51 = call ptr @dva_arena_current()
  %arena.gen52 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen51, i32 0, i32 4
  %arena.gen53 = load i64, ptr %arena.gen52, align 8
  %str.tag.match54 = icmp eq i64 %str.tag46, %arena.gen53
  br i1 %str.tag.match54, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %str.eq.merge
  %eq.rhs.len55 = load i64, ptr @str.49.struct, align 8
  %eq.rhs.len56 = and i64 %eq.rhs.len55, 281474976710655
  %str.tag57 = lshr i64 %eq.rhs.len55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

str_stale50:                                      ; preds = %str_gen_check48
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

str_gen_check59:                                  ; preds = %str_ok49
  %arena.gen62 = call ptr @dva_arena_current()
  %arena.gen63 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen62, i32 0, i32 4
  %arena.gen64 = load i64, ptr %arena.gen63, align 8
  %str.tag.match65 = icmp eq i64 %str.tag57, %arena.gen64
  br i1 %str.tag.match65, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %str_ok49
  %eq.len66 = icmp eq i64 %eq.lhs.len45, %eq.rhs.len56
  br i1 %eq.len66, label %str.eq.then67, label %str.eq.else68

str_stale61:                                      ; preds = %str_gen_check59
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

str.eq.then67:                                    ; preds = %str_ok60
  %eq.lhs.data70 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data71 = load ptr, ptr %eq.lhs.data70, align 8
  %eq.rhs.data72 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.49.struct, i32 0, i32 1), align 8
  %eq.memcmp73 = call i32 @memcmp(ptr %eq.lhs.data71, ptr %eq.rhs.data72, i64 %eq.lhs.len45)
  %eq.cmp.zero74 = icmp eq i32 %eq.memcmp73, 0
  br label %str.eq.merge69

str.eq.else68:                                    ; preds = %str_ok60
  br label %str.eq.merge69

str.eq.merge69:                                   ; preds = %str.eq.else68, %str.eq.then67
  %str.eq.result75 = phi i1 [ %eq.cmp.zero74, %str.eq.then67 ], [ false, %str.eq.else68 ]
  %case.or = or i1 %str.eq.result, %str.eq.result75
  %eq.lhs.len76 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len77 = load i64, ptr %eq.lhs.len76, align 8
  %eq.lhs.len78 = and i64 %eq.lhs.len77, 281474976710655
  %str.tag79 = lshr i64 %eq.lhs.len77, 48
  %str.immortal80 = icmp eq i64 %str.tag79, 0
  br i1 %str.immortal80, label %str_ok82, label %str_gen_check81

str_gen_check81:                                  ; preds = %str.eq.merge69
  %arena.gen84 = call ptr @dva_arena_current()
  %arena.gen85 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen84, i32 0, i32 4
  %arena.gen86 = load i64, ptr %arena.gen85, align 8
  %str.tag.match87 = icmp eq i64 %str.tag79, %arena.gen86
  br i1 %str.tag.match87, label %str_ok82, label %str_stale83

str_ok82:                                         ; preds = %str_stale83, %str_gen_check81, %str.eq.merge69
  %eq.rhs.len88 = load i64, ptr @str.50.struct, align 8
  %eq.rhs.len89 = and i64 %eq.rhs.len88, 281474976710655
  %str.tag90 = lshr i64 %eq.rhs.len88, 48
  %str.immortal91 = icmp eq i64 %str.tag90, 0
  br i1 %str.immortal91, label %str_ok93, label %str_gen_check92

str_stale83:                                      ; preds = %str_gen_check81
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok82

str_gen_check92:                                  ; preds = %str_ok82
  %arena.gen95 = call ptr @dva_arena_current()
  %arena.gen96 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen95, i32 0, i32 4
  %arena.gen97 = load i64, ptr %arena.gen96, align 8
  %str.tag.match98 = icmp eq i64 %str.tag90, %arena.gen97
  br i1 %str.tag.match98, label %str_ok93, label %str_stale94

str_ok93:                                         ; preds = %str_stale94, %str_gen_check92, %str_ok82
  %eq.len99 = icmp eq i64 %eq.lhs.len78, %eq.rhs.len89
  br i1 %eq.len99, label %str.eq.then100, label %str.eq.else101

str_stale94:                                      ; preds = %str_gen_check92
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok93

str.eq.then100:                                   ; preds = %str_ok93
  %eq.lhs.data103 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data104 = load ptr, ptr %eq.lhs.data103, align 8
  %eq.rhs.data105 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.50.struct, i32 0, i32 1), align 8
  %eq.memcmp106 = call i32 @memcmp(ptr %eq.lhs.data104, ptr %eq.rhs.data105, i64 %eq.lhs.len78)
  %eq.cmp.zero107 = icmp eq i32 %eq.memcmp106, 0
  br label %str.eq.merge102

str.eq.else101:                                   ; preds = %str_ok93
  br label %str.eq.merge102

str.eq.merge102:                                  ; preds = %str.eq.else101, %str.eq.then100
  %str.eq.result108 = phi i1 [ %eq.cmp.zero107, %str.eq.then100 ], [ false, %str.eq.else101 ]
  %case.or109 = or i1 %case.or, %str.eq.result108
  %eq.lhs.len110 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len111 = load i64, ptr %eq.lhs.len110, align 8
  %eq.lhs.len112 = and i64 %eq.lhs.len111, 281474976710655
  %str.tag113 = lshr i64 %eq.lhs.len111, 48
  %str.immortal114 = icmp eq i64 %str.tag113, 0
  br i1 %str.immortal114, label %str_ok116, label %str_gen_check115

str_gen_check115:                                 ; preds = %str.eq.merge102
  %arena.gen118 = call ptr @dva_arena_current()
  %arena.gen119 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen118, i32 0, i32 4
  %arena.gen120 = load i64, ptr %arena.gen119, align 8
  %str.tag.match121 = icmp eq i64 %str.tag113, %arena.gen120
  br i1 %str.tag.match121, label %str_ok116, label %str_stale117

str_ok116:                                        ; preds = %str_stale117, %str_gen_check115, %str.eq.merge102
  %eq.rhs.len122 = load i64, ptr @str.46.struct, align 8
  %eq.rhs.len123 = and i64 %eq.rhs.len122, 281474976710655
  %str.tag124 = lshr i64 %eq.rhs.len122, 48
  %str.immortal125 = icmp eq i64 %str.tag124, 0
  br i1 %str.immortal125, label %str_ok127, label %str_gen_check126

str_stale117:                                     ; preds = %str_gen_check115
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok116

str_gen_check126:                                 ; preds = %str_ok116
  %arena.gen129 = call ptr @dva_arena_current()
  %arena.gen130 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen129, i32 0, i32 4
  %arena.gen131 = load i64, ptr %arena.gen130, align 8
  %str.tag.match132 = icmp eq i64 %str.tag124, %arena.gen131
  br i1 %str.tag.match132, label %str_ok127, label %str_stale128

str_ok127:                                        ; preds = %str_stale128, %str_gen_check126, %str_ok116
  %eq.len133 = icmp eq i64 %eq.lhs.len112, %eq.rhs.len123
  br i1 %eq.len133, label %str.eq.then134, label %str.eq.else135

str_stale128:                                     ; preds = %str_gen_check126
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok127

str.eq.then134:                                   ; preds = %str_ok127
  %eq.lhs.data137 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data138 = load ptr, ptr %eq.lhs.data137, align 8
  %eq.rhs.data139 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.46.struct, i32 0, i32 1), align 8
  %eq.memcmp140 = call i32 @memcmp(ptr %eq.lhs.data138, ptr %eq.rhs.data139, i64 %eq.lhs.len112)
  %eq.cmp.zero141 = icmp eq i32 %eq.memcmp140, 0
  br label %str.eq.merge136

str.eq.else135:                                   ; preds = %str_ok127
  br label %str.eq.merge136

str.eq.merge136:                                  ; preds = %str.eq.else135, %str.eq.then134
  %str.eq.result142 = phi i1 [ %eq.cmp.zero141, %str.eq.then134 ], [ false, %str.eq.else135 ]
  %case.or143 = or i1 %case.or109, %str.eq.result142
  br i1 %case.or143, label %choice.case, label %choice.next
}

define internal i1 @"$anon_fn.138"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_ws"(i64 %var.load)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define ptr @"lexer::pragma_swizzle_fail"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.word = alloca ptr, align 8
  store ptr %0, ptr %var.word, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load i64, ptr %var.line, align 8
  %var.load1 = load i64, ptr %var.col, align 8
  %var.load2 = load ptr, ptr %var.word, align 8
  %concat.lhs = load i64, ptr @str.51.struct, align 8
  %concat.lhs3 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen4 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen5 = load i64, ptr %arena.gen4, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen5
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.51.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %concat.rhs7 = load i64, ptr %concat.rhs, align 8
  %concat.rhs8 = and i64 %concat.rhs7, 281474976710655
  %str.tag9 = lshr i64 %concat.rhs7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %concat.rhs18 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %concat.rhs19 = load ptr, ptr %concat.rhs18, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs3, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len20

str_stale13:                                      ; preds = %str_gen_check11
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

concat.sum.len20:                                 ; preds = %str_overflow_abort, %str_ok12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum21 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf22 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf22, label %str_overflow_abort24, label %concat.tot.len23

str_overflow_abort:                               ; preds = %str_ok12
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len20

concat.tot.len23:                                 ; preds = %str_overflow_abort24, %concat.sum.len20
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs6, i64 %concat.lhs3, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs3
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
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  %concat.rhs40 = load i64, ptr @str.52.struct, align 8
  %concat.rhs41 = and i64 %concat.rhs40, 281474976710655
  %str.tag42 = lshr i64 %concat.rhs40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale33:                                      ; preds = %str_gen_check31
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

str_gen_check44:                                  ; preds = %str_ok32
  %arena.gen47 = call ptr @dva_arena_current()
  %arena.gen48 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen47, i32 0, i32 4
  %arena.gen49 = load i64, ptr %arena.gen48, align 8
  %str.tag.match50 = icmp eq i64 %str.tag42, %arena.gen49
  br i1 %str.tag.match50, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok32
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.52.struct, i32 0, i32 1), align 8
  %concat.sum.len52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs28, i64 %concat.rhs41)
  %sum53 = extractvalue { i64, i1 } %concat.sum.len52, 0
  %ovf54 = extractvalue { i64, i1 } %concat.sum.len52, 1
  br i1 %ovf54, label %str_overflow_abort56, label %concat.sum.len55

str_stale46:                                      ; preds = %str_gen_check44
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

concat.sum.len55:                                 ; preds = %str_overflow_abort56, %str_ok45
  %concat.tot.len57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum53, i64 1)
  %sum58 = extractvalue { i64, i1 } %concat.tot.len57, 0
  %ovf59 = extractvalue { i64, i1 } %concat.tot.len57, 1
  br i1 %ovf59, label %str_overflow_abort61, label %concat.tot.len60

str_overflow_abort56:                             ; preds = %str_ok45
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  %call.res = call i64 @"lexer::fail"(i64 1013, i64 %var.load, i64 %var.load1, ptr %concat.str67)
  ret ptr @str.46.struct

str_overflow_abort61:                             ; preds = %concat.sum.len55
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len60
}

define internal i1 @"$anon_fn.140"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_nl"(i64 %var.load)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define ptr @"lexer::pragma_miss_fail"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.hstart, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load i64, ptr %var.line, align 8
  %var.load1 = load i64, ptr %var.col, align 8
  %call.res = call i64 @"lexer::fail"(i64 1013, i64 %var.load, i64 %var.load1, ptr @str.53.struct)
  %var.load2 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 24, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load3 = load i64, ptr %var.hstart, align 8
  %var.load4 = load i64, ptr %var.line, align 8
  %var.load5 = load i64, ptr %var.col, align 8
  %call.res6 = call ptr @"lexer::mktok"(ptr %var.load2, ptr %enum.alloc, i64 %var.load3, i64 0, i64 %var.load4, i64 %var.load5, ptr @str.44.struct)
  ret ptr %call.res6
}

define ptr @"lexer::scan_directive"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.word = alloca ptr, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store ptr %1, ptr %var.word, align 8
  store i64 %2, ptr %var.hstart, align 8
  store i64 %3, ptr %var.line, align 8
  store i64 %4, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.word, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %concat.tot.len814, %choice.case717, %choice.case677, %str_ok667, %str_ok609, %str_ok551, %str_ok493, %str_ok435, %str_ok377, %concat.tot.len324, %str_ok196, %str_ok138, %str_ok80, %str_ok24
  %choice.res = phi ptr [ %call.res, %str_ok24 ], [ %call.res89, %str_ok80 ], [ %call.res147, %str_ok138 ], [ %call.res205, %str_ok196 ], [ %call.res328, %concat.tot.len324 ], [ %call.res386, %str_ok377 ], [ %call.res444, %str_ok435 ], [ %call.res502, %str_ok493 ], [ %call.res560, %str_ok551 ], [ %call.res618, %str_ok609 ], [ %call.res676, %str_ok667 ], [ %call.res716, %choice.case677 ], [ %call.res756, %choice.case717 ], [ %call.res824, %concat.tot.len814 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %str.eq.merge
  %var.load16 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 20, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load17 = load i64, ptr %var.hstart, align 8
  %var.load18 = load ptr, ptr %var.word, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %str.len.query19 = load i64, ptr %str.len.query, align 8
  %str.len.query20 = and i64 %str.len.query19, 281474976710655
  %str.tag21 = lshr i64 %str.len.query19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len34 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len35 = load i64, ptr %eq.lhs.len34, align 8
  %eq.lhs.len36 = and i64 %eq.lhs.len35, 281474976710655
  %str.tag37 = lshr i64 %eq.lhs.len35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.54.struct, align 8
  %eq.rhs.len5 = and i64 %eq.rhs.len, 281474976710655
  %str.tag6 = lshr i64 %eq.rhs.len, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.gen11 = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen11, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match14 = icmp eq i64 %str.tag6, %arena.gen13
  br i1 %str.tag.match14, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len5
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale10:                                      ; preds = %str_gen_check8
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.54.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

str_gen_check23:                                  ; preds = %choice.case
  %arena.gen26 = call ptr @dva_arena_current()
  %arena.gen27 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen26, i32 0, i32 4
  %arena.gen28 = load i64, ptr %arena.gen27, align 8
  %str.tag.match29 = icmp eq i64 %str.tag21, %arena.gen28
  br i1 %str.tag.match29, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.case
  %addtmp = add i64 %str.len.query20, 1
  %var.load30 = load i64, ptr %var.line, align 8
  %var.load31 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"lexer::mktok"(ptr %var.load16, ptr %enum.alloc, i64 %var.load17, i64 %addtmp, i64 %var.load30, i64 %var.load31, ptr @str.55.struct)
  br label %choice.exit

str_stale25:                                      ; preds = %str_gen_check23
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

choice.case32:                                    ; preds = %str.eq.merge60
  %var.load67 = load ptr, ptr %var.lx, align 8
  %arena.cur68 = call ptr @dva_arena_current()
  %enum.alloc69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 16)
  %tag.gep70 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc69, i32 0, i32 0
  store i64 21, ptr %tag.gep70, align 8
  %pay.gep71 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc69, i32 0, i32 1
  store ptr null, ptr %pay.gep71, align 8
  %var.load72 = load i64, ptr %var.hstart, align 8
  %var.load73 = load ptr, ptr %var.word, align 8
  %str.len.query74 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %str.len.query75 = load i64, ptr %str.len.query74, align 8
  %str.len.query76 = and i64 %str.len.query75, 281474976710655
  %str.tag77 = lshr i64 %str.len.query75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

choice.next33:                                    ; preds = %str.eq.merge60
  %eq.lhs.len92 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len93 = load i64, ptr %eq.lhs.len92, align 8
  %eq.lhs.len94 = and i64 %eq.lhs.len93, 281474976710655
  %str.tag95 = lshr i64 %eq.lhs.len93, 48
  %str.immortal96 = icmp eq i64 %str.tag95, 0
  br i1 %str.immortal96, label %str_ok98, label %str_gen_check97

str_gen_check39:                                  ; preds = %choice.next
  %arena.gen42 = call ptr @dva_arena_current()
  %arena.gen43 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen42, i32 0, i32 4
  %arena.gen44 = load i64, ptr %arena.gen43, align 8
  %str.tag.match45 = icmp eq i64 %str.tag37, %arena.gen44
  br i1 %str.tag.match45, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %choice.next
  %eq.rhs.len46 = load i64, ptr @str.56.struct, align 8
  %eq.rhs.len47 = and i64 %eq.rhs.len46, 281474976710655
  %str.tag48 = lshr i64 %eq.rhs.len46, 48
  %str.immortal49 = icmp eq i64 %str.tag48, 0
  br i1 %str.immortal49, label %str_ok51, label %str_gen_check50

str_stale41:                                      ; preds = %str_gen_check39
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

str_gen_check50:                                  ; preds = %str_ok40
  %arena.gen53 = call ptr @dva_arena_current()
  %arena.gen54 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen53, i32 0, i32 4
  %arena.gen55 = load i64, ptr %arena.gen54, align 8
  %str.tag.match56 = icmp eq i64 %str.tag48, %arena.gen55
  br i1 %str.tag.match56, label %str_ok51, label %str_stale52

str_ok51:                                         ; preds = %str_stale52, %str_gen_check50, %str_ok40
  %eq.len57 = icmp eq i64 %eq.lhs.len36, %eq.rhs.len47
  br i1 %eq.len57, label %str.eq.then58, label %str.eq.else59

str_stale52:                                      ; preds = %str_gen_check50
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok51

str.eq.then58:                                    ; preds = %str_ok51
  %eq.lhs.data61 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data62 = load ptr, ptr %eq.lhs.data61, align 8
  %eq.rhs.data63 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.56.struct, i32 0, i32 1), align 8
  %eq.memcmp64 = call i32 @memcmp(ptr %eq.lhs.data62, ptr %eq.rhs.data63, i64 %eq.lhs.len36)
  %eq.cmp.zero65 = icmp eq i32 %eq.memcmp64, 0
  br label %str.eq.merge60

str.eq.else59:                                    ; preds = %str_ok51
  br label %str.eq.merge60

str.eq.merge60:                                   ; preds = %str.eq.else59, %str.eq.then58
  %str.eq.result66 = phi i1 [ %eq.cmp.zero65, %str.eq.then58 ], [ false, %str.eq.else59 ]
  br i1 %str.eq.result66, label %choice.case32, label %choice.next33

str_gen_check79:                                  ; preds = %choice.case32
  %arena.gen82 = call ptr @dva_arena_current()
  %arena.gen83 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen82, i32 0, i32 4
  %arena.gen84 = load i64, ptr %arena.gen83, align 8
  %str.tag.match85 = icmp eq i64 %str.tag77, %arena.gen84
  br i1 %str.tag.match85, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %choice.case32
  %addtmp86 = add i64 %str.len.query76, 1
  %var.load87 = load i64, ptr %var.line, align 8
  %var.load88 = load i64, ptr %var.col, align 8
  %call.res89 = call ptr @"lexer::mktok"(ptr %var.load67, ptr %enum.alloc69, i64 %var.load72, i64 %addtmp86, i64 %var.load87, i64 %var.load88, ptr @str.57.struct)
  br label %choice.exit

str_stale81:                                      ; preds = %str_gen_check79
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

choice.case90:                                    ; preds = %str.eq.merge118
  %var.load125 = load ptr, ptr %var.lx, align 8
  %arena.cur126 = call ptr @dva_arena_current()
  %enum.alloc127 = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 16)
  %tag.gep128 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc127, i32 0, i32 0
  store i64 33, ptr %tag.gep128, align 8
  %pay.gep129 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc127, i32 0, i32 1
  store ptr null, ptr %pay.gep129, align 8
  %var.load130 = load i64, ptr %var.hstart, align 8
  %var.load131 = load ptr, ptr %var.word, align 8
  %str.len.query132 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 0
  %str.len.query133 = load i64, ptr %str.len.query132, align 8
  %str.len.query134 = and i64 %str.len.query133, 281474976710655
  %str.tag135 = lshr i64 %str.len.query133, 48
  %str.immortal136 = icmp eq i64 %str.tag135, 0
  br i1 %str.immortal136, label %str_ok138, label %str_gen_check137

choice.next91:                                    ; preds = %str.eq.merge118
  %eq.lhs.len150 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len151 = load i64, ptr %eq.lhs.len150, align 8
  %eq.lhs.len152 = and i64 %eq.lhs.len151, 281474976710655
  %str.tag153 = lshr i64 %eq.lhs.len151, 48
  %str.immortal154 = icmp eq i64 %str.tag153, 0
  br i1 %str.immortal154, label %str_ok156, label %str_gen_check155

str_gen_check97:                                  ; preds = %choice.next33
  %arena.gen100 = call ptr @dva_arena_current()
  %arena.gen101 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen100, i32 0, i32 4
  %arena.gen102 = load i64, ptr %arena.gen101, align 8
  %str.tag.match103 = icmp eq i64 %str.tag95, %arena.gen102
  br i1 %str.tag.match103, label %str_ok98, label %str_stale99

str_ok98:                                         ; preds = %str_stale99, %str_gen_check97, %choice.next33
  %eq.rhs.len104 = load i64, ptr @str.58.struct, align 8
  %eq.rhs.len105 = and i64 %eq.rhs.len104, 281474976710655
  %str.tag106 = lshr i64 %eq.rhs.len104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

str_stale99:                                      ; preds = %str_gen_check97
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok98

str_gen_check108:                                 ; preds = %str_ok98
  %arena.gen111 = call ptr @dva_arena_current()
  %arena.gen112 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen111, i32 0, i32 4
  %arena.gen113 = load i64, ptr %arena.gen112, align 8
  %str.tag.match114 = icmp eq i64 %str.tag106, %arena.gen113
  br i1 %str.tag.match114, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %str_ok98
  %eq.len115 = icmp eq i64 %eq.lhs.len94, %eq.rhs.len105
  br i1 %eq.len115, label %str.eq.then116, label %str.eq.else117

str_stale110:                                     ; preds = %str_gen_check108
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

str.eq.then116:                                   ; preds = %str_ok109
  %eq.lhs.data119 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data120 = load ptr, ptr %eq.lhs.data119, align 8
  %eq.rhs.data121 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.58.struct, i32 0, i32 1), align 8
  %eq.memcmp122 = call i32 @memcmp(ptr %eq.lhs.data120, ptr %eq.rhs.data121, i64 %eq.lhs.len94)
  %eq.cmp.zero123 = icmp eq i32 %eq.memcmp122, 0
  br label %str.eq.merge118

str.eq.else117:                                   ; preds = %str_ok109
  br label %str.eq.merge118

str.eq.merge118:                                  ; preds = %str.eq.else117, %str.eq.then116
  %str.eq.result124 = phi i1 [ %eq.cmp.zero123, %str.eq.then116 ], [ false, %str.eq.else117 ]
  br i1 %str.eq.result124, label %choice.case90, label %choice.next91

str_gen_check137:                                 ; preds = %choice.case90
  %arena.gen140 = call ptr @dva_arena_current()
  %arena.gen141 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen140, i32 0, i32 4
  %arena.gen142 = load i64, ptr %arena.gen141, align 8
  %str.tag.match143 = icmp eq i64 %str.tag135, %arena.gen142
  br i1 %str.tag.match143, label %str_ok138, label %str_stale139

str_ok138:                                        ; preds = %str_stale139, %str_gen_check137, %choice.case90
  %addtmp144 = add i64 %str.len.query134, 1
  %var.load145 = load i64, ptr %var.line, align 8
  %var.load146 = load i64, ptr %var.col, align 8
  %call.res147 = call ptr @"lexer::mktok"(ptr %var.load125, ptr %enum.alloc127, i64 %var.load130, i64 %addtmp144, i64 %var.load145, i64 %var.load146, ptr @str.59.struct)
  br label %choice.exit

str_stale139:                                     ; preds = %str_gen_check137
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok138

choice.case148:                                   ; preds = %str.eq.merge176
  %var.load183 = load ptr, ptr %var.lx, align 8
  %arena.cur184 = call ptr @dva_arena_current()
  %enum.alloc185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 16)
  %tag.gep186 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc185, i32 0, i32 0
  store i64 22, ptr %tag.gep186, align 8
  %pay.gep187 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc185, i32 0, i32 1
  store ptr null, ptr %pay.gep187, align 8
  %var.load188 = load i64, ptr %var.hstart, align 8
  %var.load189 = load ptr, ptr %var.word, align 8
  %str.len.query190 = getelementptr inbounds { i64, ptr }, ptr %var.load189, i32 0, i32 0
  %str.len.query191 = load i64, ptr %str.len.query190, align 8
  %str.len.query192 = and i64 %str.len.query191, 281474976710655
  %str.tag193 = lshr i64 %str.len.query191, 48
  %str.immortal194 = icmp eq i64 %str.tag193, 0
  br i1 %str.immortal194, label %str_ok196, label %str_gen_check195

choice.next149:                                   ; preds = %str.eq.merge176
  %eq.lhs.len208 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len209 = load i64, ptr %eq.lhs.len208, align 8
  %eq.lhs.len210 = and i64 %eq.lhs.len209, 281474976710655
  %str.tag211 = lshr i64 %eq.lhs.len209, 48
  %str.immortal212 = icmp eq i64 %str.tag211, 0
  br i1 %str.immortal212, label %str_ok214, label %str_gen_check213

str_gen_check155:                                 ; preds = %choice.next91
  %arena.gen158 = call ptr @dva_arena_current()
  %arena.gen159 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen158, i32 0, i32 4
  %arena.gen160 = load i64, ptr %arena.gen159, align 8
  %str.tag.match161 = icmp eq i64 %str.tag153, %arena.gen160
  br i1 %str.tag.match161, label %str_ok156, label %str_stale157

str_ok156:                                        ; preds = %str_stale157, %str_gen_check155, %choice.next91
  %eq.rhs.len162 = load i64, ptr @str.60.struct, align 8
  %eq.rhs.len163 = and i64 %eq.rhs.len162, 281474976710655
  %str.tag164 = lshr i64 %eq.rhs.len162, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

str_stale157:                                     ; preds = %str_gen_check155
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok156

str_gen_check166:                                 ; preds = %str_ok156
  %arena.gen169 = call ptr @dva_arena_current()
  %arena.gen170 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen169, i32 0, i32 4
  %arena.gen171 = load i64, ptr %arena.gen170, align 8
  %str.tag.match172 = icmp eq i64 %str.tag164, %arena.gen171
  br i1 %str.tag.match172, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %str_ok156
  %eq.len173 = icmp eq i64 %eq.lhs.len152, %eq.rhs.len163
  br i1 %eq.len173, label %str.eq.then174, label %str.eq.else175

str_stale168:                                     ; preds = %str_gen_check166
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

str.eq.then174:                                   ; preds = %str_ok167
  %eq.lhs.data177 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data178 = load ptr, ptr %eq.lhs.data177, align 8
  %eq.rhs.data179 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.60.struct, i32 0, i32 1), align 8
  %eq.memcmp180 = call i32 @memcmp(ptr %eq.lhs.data178, ptr %eq.rhs.data179, i64 %eq.lhs.len152)
  %eq.cmp.zero181 = icmp eq i32 %eq.memcmp180, 0
  br label %str.eq.merge176

str.eq.else175:                                   ; preds = %str_ok167
  br label %str.eq.merge176

str.eq.merge176:                                  ; preds = %str.eq.else175, %str.eq.then174
  %str.eq.result182 = phi i1 [ %eq.cmp.zero181, %str.eq.then174 ], [ false, %str.eq.else175 ]
  br i1 %str.eq.result182, label %choice.case148, label %choice.next149

str_gen_check195:                                 ; preds = %choice.case148
  %arena.gen198 = call ptr @dva_arena_current()
  %arena.gen199 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen198, i32 0, i32 4
  %arena.gen200 = load i64, ptr %arena.gen199, align 8
  %str.tag.match201 = icmp eq i64 %str.tag193, %arena.gen200
  br i1 %str.tag.match201, label %str_ok196, label %str_stale197

str_ok196:                                        ; preds = %str_stale197, %str_gen_check195, %choice.case148
  %addtmp202 = add i64 %str.len.query192, 1
  %var.load203 = load i64, ptr %var.line, align 8
  %var.load204 = load i64, ptr %var.col, align 8
  %call.res205 = call ptr @"lexer::mktok"(ptr %var.load183, ptr %enum.alloc185, i64 %var.load188, i64 %addtmp202, i64 %var.load203, i64 %var.load204, ptr @str.61.struct)
  br label %choice.exit

str_stale197:                                     ; preds = %str_gen_check195
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok196

choice.case206:                                   ; preds = %str.eq.merge267
  %var.load274 = load ptr, ptr %var.lx, align 8
  %arena.cur275 = call ptr @dva_arena_current()
  %enum.alloc276 = call ptr @dva_arena_alloc(ptr %arena.cur275, i64 16)
  %tag.gep277 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc276, i32 0, i32 0
  store i64 32, ptr %tag.gep277, align 8
  %pay.gep278 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc276, i32 0, i32 1
  store ptr null, ptr %pay.gep278, align 8
  %var.load279 = load i64, ptr %var.hstart, align 8
  %var.load280 = load ptr, ptr %var.word, align 8
  %str.len.query281 = getelementptr inbounds { i64, ptr }, ptr %var.load280, i32 0, i32 0
  %str.len.query282 = load i64, ptr %str.len.query281, align 8
  %str.len.query283 = and i64 %str.len.query282, 281474976710655
  %str.tag284 = lshr i64 %str.len.query282, 48
  %str.immortal285 = icmp eq i64 %str.tag284, 0
  br i1 %str.immortal285, label %str_ok287, label %str_gen_check286

choice.next207:                                   ; preds = %str.eq.merge267
  %eq.lhs.len331 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len332 = load i64, ptr %eq.lhs.len331, align 8
  %eq.lhs.len333 = and i64 %eq.lhs.len332, 281474976710655
  %str.tag334 = lshr i64 %eq.lhs.len332, 48
  %str.immortal335 = icmp eq i64 %str.tag334, 0
  br i1 %str.immortal335, label %str_ok337, label %str_gen_check336

str_gen_check213:                                 ; preds = %choice.next149
  %arena.gen216 = call ptr @dva_arena_current()
  %arena.gen217 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen216, i32 0, i32 4
  %arena.gen218 = load i64, ptr %arena.gen217, align 8
  %str.tag.match219 = icmp eq i64 %str.tag211, %arena.gen218
  br i1 %str.tag.match219, label %str_ok214, label %str_stale215

str_ok214:                                        ; preds = %str_stale215, %str_gen_check213, %choice.next149
  %eq.rhs.len220 = load i64, ptr @str.62.struct, align 8
  %eq.rhs.len221 = and i64 %eq.rhs.len220, 281474976710655
  %str.tag222 = lshr i64 %eq.rhs.len220, 48
  %str.immortal223 = icmp eq i64 %str.tag222, 0
  br i1 %str.immortal223, label %str_ok225, label %str_gen_check224

str_stale215:                                     ; preds = %str_gen_check213
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok214

str_gen_check224:                                 ; preds = %str_ok214
  %arena.gen227 = call ptr @dva_arena_current()
  %arena.gen228 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen227, i32 0, i32 4
  %arena.gen229 = load i64, ptr %arena.gen228, align 8
  %str.tag.match230 = icmp eq i64 %str.tag222, %arena.gen229
  br i1 %str.tag.match230, label %str_ok225, label %str_stale226

str_ok225:                                        ; preds = %str_stale226, %str_gen_check224, %str_ok214
  %eq.len231 = icmp eq i64 %eq.lhs.len210, %eq.rhs.len221
  br i1 %eq.len231, label %str.eq.then232, label %str.eq.else233

str_stale226:                                     ; preds = %str_gen_check224
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok225

str.eq.then232:                                   ; preds = %str_ok225
  %eq.lhs.data235 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data236 = load ptr, ptr %eq.lhs.data235, align 8
  %eq.rhs.data237 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.62.struct, i32 0, i32 1), align 8
  %eq.memcmp238 = call i32 @memcmp(ptr %eq.lhs.data236, ptr %eq.rhs.data237, i64 %eq.lhs.len210)
  %eq.cmp.zero239 = icmp eq i32 %eq.memcmp238, 0
  br label %str.eq.merge234

str.eq.else233:                                   ; preds = %str_ok225
  br label %str.eq.merge234

str.eq.merge234:                                  ; preds = %str.eq.else233, %str.eq.then232
  %str.eq.result240 = phi i1 [ %eq.cmp.zero239, %str.eq.then232 ], [ false, %str.eq.else233 ]
  %eq.lhs.len241 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len242 = load i64, ptr %eq.lhs.len241, align 8
  %eq.lhs.len243 = and i64 %eq.lhs.len242, 281474976710655
  %str.tag244 = lshr i64 %eq.lhs.len242, 48
  %str.immortal245 = icmp eq i64 %str.tag244, 0
  br i1 %str.immortal245, label %str_ok247, label %str_gen_check246

str_gen_check246:                                 ; preds = %str.eq.merge234
  %arena.gen249 = call ptr @dva_arena_current()
  %arena.gen250 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen249, i32 0, i32 4
  %arena.gen251 = load i64, ptr %arena.gen250, align 8
  %str.tag.match252 = icmp eq i64 %str.tag244, %arena.gen251
  br i1 %str.tag.match252, label %str_ok247, label %str_stale248

str_ok247:                                        ; preds = %str_stale248, %str_gen_check246, %str.eq.merge234
  %eq.rhs.len253 = load i64, ptr @str.63.struct, align 8
  %eq.rhs.len254 = and i64 %eq.rhs.len253, 281474976710655
  %str.tag255 = lshr i64 %eq.rhs.len253, 48
  %str.immortal256 = icmp eq i64 %str.tag255, 0
  br i1 %str.immortal256, label %str_ok258, label %str_gen_check257

str_stale248:                                     ; preds = %str_gen_check246
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok247

str_gen_check257:                                 ; preds = %str_ok247
  %arena.gen260 = call ptr @dva_arena_current()
  %arena.gen261 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen260, i32 0, i32 4
  %arena.gen262 = load i64, ptr %arena.gen261, align 8
  %str.tag.match263 = icmp eq i64 %str.tag255, %arena.gen262
  br i1 %str.tag.match263, label %str_ok258, label %str_stale259

str_ok258:                                        ; preds = %str_stale259, %str_gen_check257, %str_ok247
  %eq.len264 = icmp eq i64 %eq.lhs.len243, %eq.rhs.len254
  br i1 %eq.len264, label %str.eq.then265, label %str.eq.else266

str_stale259:                                     ; preds = %str_gen_check257
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok258

str.eq.then265:                                   ; preds = %str_ok258
  %eq.lhs.data268 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data269 = load ptr, ptr %eq.lhs.data268, align 8
  %eq.rhs.data270 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.63.struct, i32 0, i32 1), align 8
  %eq.memcmp271 = call i32 @memcmp(ptr %eq.lhs.data269, ptr %eq.rhs.data270, i64 %eq.lhs.len243)
  %eq.cmp.zero272 = icmp eq i32 %eq.memcmp271, 0
  br label %str.eq.merge267

str.eq.else266:                                   ; preds = %str_ok258
  br label %str.eq.merge267

str.eq.merge267:                                  ; preds = %str.eq.else266, %str.eq.then265
  %str.eq.result273 = phi i1 [ %eq.cmp.zero272, %str.eq.then265 ], [ false, %str.eq.else266 ]
  %case.or = or i1 %str.eq.result240, %str.eq.result273
  br i1 %case.or, label %choice.case206, label %choice.next207

str_gen_check286:                                 ; preds = %choice.case206
  %arena.gen289 = call ptr @dva_arena_current()
  %arena.gen290 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen289, i32 0, i32 4
  %arena.gen291 = load i64, ptr %arena.gen290, align 8
  %str.tag.match292 = icmp eq i64 %str.tag284, %arena.gen291
  br i1 %str.tag.match292, label %str_ok287, label %str_stale288

str_ok287:                                        ; preds = %str_stale288, %str_gen_check286, %choice.case206
  %addtmp293 = add i64 %str.len.query283, 1
  %var.load294 = load i64, ptr %var.line, align 8
  %var.load295 = load i64, ptr %var.col, align 8
  %var.load296 = load ptr, ptr %var.word, align 8
  %concat.lhs = load i64, ptr @str.64.struct, align 8
  %concat.lhs297 = and i64 %concat.lhs, 281474976710655
  %str.tag298 = lshr i64 %concat.lhs, 48
  %str.immortal299 = icmp eq i64 %str.tag298, 0
  br i1 %str.immortal299, label %str_ok301, label %str_gen_check300

str_stale288:                                     ; preds = %str_gen_check286
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok287

str_gen_check300:                                 ; preds = %str_ok287
  %arena.gen303 = call ptr @dva_arena_current()
  %arena.gen304 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen303, i32 0, i32 4
  %arena.gen305 = load i64, ptr %arena.gen304, align 8
  %str.tag.match306 = icmp eq i64 %str.tag298, %arena.gen305
  br i1 %str.tag.match306, label %str_ok301, label %str_stale302

str_ok301:                                        ; preds = %str_stale302, %str_gen_check300, %str_ok287
  %concat.lhs307 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.64.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load296, i32 0, i32 0
  %concat.rhs308 = load i64, ptr %concat.rhs, align 8
  %concat.rhs309 = and i64 %concat.rhs308, 281474976710655
  %str.tag310 = lshr i64 %concat.rhs308, 48
  %str.immortal311 = icmp eq i64 %str.tag310, 0
  br i1 %str.immortal311, label %str_ok313, label %str_gen_check312

str_stale302:                                     ; preds = %str_gen_check300
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok301

str_gen_check312:                                 ; preds = %str_ok301
  %arena.gen315 = call ptr @dva_arena_current()
  %arena.gen316 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen315, i32 0, i32 4
  %arena.gen317 = load i64, ptr %arena.gen316, align 8
  %str.tag.match318 = icmp eq i64 %str.tag310, %arena.gen317
  br i1 %str.tag.match318, label %str_ok313, label %str_stale314

str_ok313:                                        ; preds = %str_stale314, %str_gen_check312, %str_ok301
  %concat.rhs319 = getelementptr inbounds { i64, ptr }, ptr %var.load296, i32 0, i32 1
  %concat.rhs320 = load ptr, ptr %concat.rhs319, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs297, i64 %concat.rhs309)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len321

str_stale314:                                     ; preds = %str_gen_check312
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok313

concat.sum.len321:                                ; preds = %str_overflow_abort, %str_ok313
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum322 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf323 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf323, label %str_overflow_abort325, label %concat.tot.len324

str_overflow_abort:                               ; preds = %str_ok313
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len321

concat.tot.len324:                                ; preds = %str_overflow_abort325, %concat.sum.len321
  %arena.cur326 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur326, i64 %sum322)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs307, i64 %concat.lhs297, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs297
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs320, i64 %concat.rhs309, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur327 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur327, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res328 = call ptr @"lexer::mktok"(ptr %var.load274, ptr %enum.alloc276, i64 %var.load279, i64 %addtmp293, i64 %var.load294, i64 %var.load295, ptr %concat.str)
  br label %choice.exit

str_overflow_abort325:                            ; preds = %concat.sum.len321
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len324

choice.case329:                                   ; preds = %str.eq.merge357
  %var.load364 = load ptr, ptr %var.lx, align 8
  %arena.cur365 = call ptr @dva_arena_current()
  %enum.alloc366 = call ptr @dva_arena_alloc(ptr %arena.cur365, i64 16)
  %tag.gep367 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc366, i32 0, i32 0
  store i64 23, ptr %tag.gep367, align 8
  %pay.gep368 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc366, i32 0, i32 1
  store ptr null, ptr %pay.gep368, align 8
  %var.load369 = load i64, ptr %var.hstart, align 8
  %var.load370 = load ptr, ptr %var.word, align 8
  %str.len.query371 = getelementptr inbounds { i64, ptr }, ptr %var.load370, i32 0, i32 0
  %str.len.query372 = load i64, ptr %str.len.query371, align 8
  %str.len.query373 = and i64 %str.len.query372, 281474976710655
  %str.tag374 = lshr i64 %str.len.query372, 48
  %str.immortal375 = icmp eq i64 %str.tag374, 0
  br i1 %str.immortal375, label %str_ok377, label %str_gen_check376

choice.next330:                                   ; preds = %str.eq.merge357
  %eq.lhs.len389 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len390 = load i64, ptr %eq.lhs.len389, align 8
  %eq.lhs.len391 = and i64 %eq.lhs.len390, 281474976710655
  %str.tag392 = lshr i64 %eq.lhs.len390, 48
  %str.immortal393 = icmp eq i64 %str.tag392, 0
  br i1 %str.immortal393, label %str_ok395, label %str_gen_check394

str_gen_check336:                                 ; preds = %choice.next207
  %arena.gen339 = call ptr @dva_arena_current()
  %arena.gen340 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen339, i32 0, i32 4
  %arena.gen341 = load i64, ptr %arena.gen340, align 8
  %str.tag.match342 = icmp eq i64 %str.tag334, %arena.gen341
  br i1 %str.tag.match342, label %str_ok337, label %str_stale338

str_ok337:                                        ; preds = %str_stale338, %str_gen_check336, %choice.next207
  %eq.rhs.len343 = load i64, ptr @str.65.struct, align 8
  %eq.rhs.len344 = and i64 %eq.rhs.len343, 281474976710655
  %str.tag345 = lshr i64 %eq.rhs.len343, 48
  %str.immortal346 = icmp eq i64 %str.tag345, 0
  br i1 %str.immortal346, label %str_ok348, label %str_gen_check347

str_stale338:                                     ; preds = %str_gen_check336
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok337

str_gen_check347:                                 ; preds = %str_ok337
  %arena.gen350 = call ptr @dva_arena_current()
  %arena.gen351 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen350, i32 0, i32 4
  %arena.gen352 = load i64, ptr %arena.gen351, align 8
  %str.tag.match353 = icmp eq i64 %str.tag345, %arena.gen352
  br i1 %str.tag.match353, label %str_ok348, label %str_stale349

str_ok348:                                        ; preds = %str_stale349, %str_gen_check347, %str_ok337
  %eq.len354 = icmp eq i64 %eq.lhs.len333, %eq.rhs.len344
  br i1 %eq.len354, label %str.eq.then355, label %str.eq.else356

str_stale349:                                     ; preds = %str_gen_check347
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok348

str.eq.then355:                                   ; preds = %str_ok348
  %eq.lhs.data358 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data359 = load ptr, ptr %eq.lhs.data358, align 8
  %eq.rhs.data360 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.65.struct, i32 0, i32 1), align 8
  %eq.memcmp361 = call i32 @memcmp(ptr %eq.lhs.data359, ptr %eq.rhs.data360, i64 %eq.lhs.len333)
  %eq.cmp.zero362 = icmp eq i32 %eq.memcmp361, 0
  br label %str.eq.merge357

str.eq.else356:                                   ; preds = %str_ok348
  br label %str.eq.merge357

str.eq.merge357:                                  ; preds = %str.eq.else356, %str.eq.then355
  %str.eq.result363 = phi i1 [ %eq.cmp.zero362, %str.eq.then355 ], [ false, %str.eq.else356 ]
  br i1 %str.eq.result363, label %choice.case329, label %choice.next330

str_gen_check376:                                 ; preds = %choice.case329
  %arena.gen379 = call ptr @dva_arena_current()
  %arena.gen380 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen379, i32 0, i32 4
  %arena.gen381 = load i64, ptr %arena.gen380, align 8
  %str.tag.match382 = icmp eq i64 %str.tag374, %arena.gen381
  br i1 %str.tag.match382, label %str_ok377, label %str_stale378

str_ok377:                                        ; preds = %str_stale378, %str_gen_check376, %choice.case329
  %addtmp383 = add i64 %str.len.query373, 1
  %var.load384 = load i64, ptr %var.line, align 8
  %var.load385 = load i64, ptr %var.col, align 8
  %call.res386 = call ptr @"lexer::mktok"(ptr %var.load364, ptr %enum.alloc366, i64 %var.load369, i64 %addtmp383, i64 %var.load384, i64 %var.load385, ptr @str.66.struct)
  br label %choice.exit

str_stale378:                                     ; preds = %str_gen_check376
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok377

choice.case387:                                   ; preds = %str.eq.merge415
  %var.load422 = load ptr, ptr %var.lx, align 8
  %arena.cur423 = call ptr @dva_arena_current()
  %enum.alloc424 = call ptr @dva_arena_alloc(ptr %arena.cur423, i64 16)
  %tag.gep425 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc424, i32 0, i32 0
  store i64 26, ptr %tag.gep425, align 8
  %pay.gep426 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc424, i32 0, i32 1
  store ptr null, ptr %pay.gep426, align 8
  %var.load427 = load i64, ptr %var.hstart, align 8
  %var.load428 = load ptr, ptr %var.word, align 8
  %str.len.query429 = getelementptr inbounds { i64, ptr }, ptr %var.load428, i32 0, i32 0
  %str.len.query430 = load i64, ptr %str.len.query429, align 8
  %str.len.query431 = and i64 %str.len.query430, 281474976710655
  %str.tag432 = lshr i64 %str.len.query430, 48
  %str.immortal433 = icmp eq i64 %str.tag432, 0
  br i1 %str.immortal433, label %str_ok435, label %str_gen_check434

choice.next388:                                   ; preds = %str.eq.merge415
  %eq.lhs.len447 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len448 = load i64, ptr %eq.lhs.len447, align 8
  %eq.lhs.len449 = and i64 %eq.lhs.len448, 281474976710655
  %str.tag450 = lshr i64 %eq.lhs.len448, 48
  %str.immortal451 = icmp eq i64 %str.tag450, 0
  br i1 %str.immortal451, label %str_ok453, label %str_gen_check452

str_gen_check394:                                 ; preds = %choice.next330
  %arena.gen397 = call ptr @dva_arena_current()
  %arena.gen398 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen397, i32 0, i32 4
  %arena.gen399 = load i64, ptr %arena.gen398, align 8
  %str.tag.match400 = icmp eq i64 %str.tag392, %arena.gen399
  br i1 %str.tag.match400, label %str_ok395, label %str_stale396

str_ok395:                                        ; preds = %str_stale396, %str_gen_check394, %choice.next330
  %eq.rhs.len401 = load i64, ptr @str.67.struct, align 8
  %eq.rhs.len402 = and i64 %eq.rhs.len401, 281474976710655
  %str.tag403 = lshr i64 %eq.rhs.len401, 48
  %str.immortal404 = icmp eq i64 %str.tag403, 0
  br i1 %str.immortal404, label %str_ok406, label %str_gen_check405

str_stale396:                                     ; preds = %str_gen_check394
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok395

str_gen_check405:                                 ; preds = %str_ok395
  %arena.gen408 = call ptr @dva_arena_current()
  %arena.gen409 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen408, i32 0, i32 4
  %arena.gen410 = load i64, ptr %arena.gen409, align 8
  %str.tag.match411 = icmp eq i64 %str.tag403, %arena.gen410
  br i1 %str.tag.match411, label %str_ok406, label %str_stale407

str_ok406:                                        ; preds = %str_stale407, %str_gen_check405, %str_ok395
  %eq.len412 = icmp eq i64 %eq.lhs.len391, %eq.rhs.len402
  br i1 %eq.len412, label %str.eq.then413, label %str.eq.else414

str_stale407:                                     ; preds = %str_gen_check405
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok406

str.eq.then413:                                   ; preds = %str_ok406
  %eq.lhs.data416 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data417 = load ptr, ptr %eq.lhs.data416, align 8
  %eq.rhs.data418 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.67.struct, i32 0, i32 1), align 8
  %eq.memcmp419 = call i32 @memcmp(ptr %eq.lhs.data417, ptr %eq.rhs.data418, i64 %eq.lhs.len391)
  %eq.cmp.zero420 = icmp eq i32 %eq.memcmp419, 0
  br label %str.eq.merge415

str.eq.else414:                                   ; preds = %str_ok406
  br label %str.eq.merge415

str.eq.merge415:                                  ; preds = %str.eq.else414, %str.eq.then413
  %str.eq.result421 = phi i1 [ %eq.cmp.zero420, %str.eq.then413 ], [ false, %str.eq.else414 ]
  br i1 %str.eq.result421, label %choice.case387, label %choice.next388

str_gen_check434:                                 ; preds = %choice.case387
  %arena.gen437 = call ptr @dva_arena_current()
  %arena.gen438 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen437, i32 0, i32 4
  %arena.gen439 = load i64, ptr %arena.gen438, align 8
  %str.tag.match440 = icmp eq i64 %str.tag432, %arena.gen439
  br i1 %str.tag.match440, label %str_ok435, label %str_stale436

str_ok435:                                        ; preds = %str_stale436, %str_gen_check434, %choice.case387
  %addtmp441 = add i64 %str.len.query431, 1
  %var.load442 = load i64, ptr %var.line, align 8
  %var.load443 = load i64, ptr %var.col, align 8
  %call.res444 = call ptr @"lexer::mktok"(ptr %var.load422, ptr %enum.alloc424, i64 %var.load427, i64 %addtmp441, i64 %var.load442, i64 %var.load443, ptr @str.68.struct)
  br label %choice.exit

str_stale436:                                     ; preds = %str_gen_check434
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok435

choice.case445:                                   ; preds = %str.eq.merge473
  %var.load480 = load ptr, ptr %var.lx, align 8
  %arena.cur481 = call ptr @dva_arena_current()
  %enum.alloc482 = call ptr @dva_arena_alloc(ptr %arena.cur481, i64 16)
  %tag.gep483 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc482, i32 0, i32 0
  store i64 27, ptr %tag.gep483, align 8
  %pay.gep484 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc482, i32 0, i32 1
  store ptr null, ptr %pay.gep484, align 8
  %var.load485 = load i64, ptr %var.hstart, align 8
  %var.load486 = load ptr, ptr %var.word, align 8
  %str.len.query487 = getelementptr inbounds { i64, ptr }, ptr %var.load486, i32 0, i32 0
  %str.len.query488 = load i64, ptr %str.len.query487, align 8
  %str.len.query489 = and i64 %str.len.query488, 281474976710655
  %str.tag490 = lshr i64 %str.len.query488, 48
  %str.immortal491 = icmp eq i64 %str.tag490, 0
  br i1 %str.immortal491, label %str_ok493, label %str_gen_check492

choice.next446:                                   ; preds = %str.eq.merge473
  %eq.lhs.len505 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len506 = load i64, ptr %eq.lhs.len505, align 8
  %eq.lhs.len507 = and i64 %eq.lhs.len506, 281474976710655
  %str.tag508 = lshr i64 %eq.lhs.len506, 48
  %str.immortal509 = icmp eq i64 %str.tag508, 0
  br i1 %str.immortal509, label %str_ok511, label %str_gen_check510

str_gen_check452:                                 ; preds = %choice.next388
  %arena.gen455 = call ptr @dva_arena_current()
  %arena.gen456 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen455, i32 0, i32 4
  %arena.gen457 = load i64, ptr %arena.gen456, align 8
  %str.tag.match458 = icmp eq i64 %str.tag450, %arena.gen457
  br i1 %str.tag.match458, label %str_ok453, label %str_stale454

str_ok453:                                        ; preds = %str_stale454, %str_gen_check452, %choice.next388
  %eq.rhs.len459 = load i64, ptr @str.69.struct, align 8
  %eq.rhs.len460 = and i64 %eq.rhs.len459, 281474976710655
  %str.tag461 = lshr i64 %eq.rhs.len459, 48
  %str.immortal462 = icmp eq i64 %str.tag461, 0
  br i1 %str.immortal462, label %str_ok464, label %str_gen_check463

str_stale454:                                     ; preds = %str_gen_check452
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok453

str_gen_check463:                                 ; preds = %str_ok453
  %arena.gen466 = call ptr @dva_arena_current()
  %arena.gen467 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen466, i32 0, i32 4
  %arena.gen468 = load i64, ptr %arena.gen467, align 8
  %str.tag.match469 = icmp eq i64 %str.tag461, %arena.gen468
  br i1 %str.tag.match469, label %str_ok464, label %str_stale465

str_ok464:                                        ; preds = %str_stale465, %str_gen_check463, %str_ok453
  %eq.len470 = icmp eq i64 %eq.lhs.len449, %eq.rhs.len460
  br i1 %eq.len470, label %str.eq.then471, label %str.eq.else472

str_stale465:                                     ; preds = %str_gen_check463
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok464

str.eq.then471:                                   ; preds = %str_ok464
  %eq.lhs.data474 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data475 = load ptr, ptr %eq.lhs.data474, align 8
  %eq.rhs.data476 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.69.struct, i32 0, i32 1), align 8
  %eq.memcmp477 = call i32 @memcmp(ptr %eq.lhs.data475, ptr %eq.rhs.data476, i64 %eq.lhs.len449)
  %eq.cmp.zero478 = icmp eq i32 %eq.memcmp477, 0
  br label %str.eq.merge473

str.eq.else472:                                   ; preds = %str_ok464
  br label %str.eq.merge473

str.eq.merge473:                                  ; preds = %str.eq.else472, %str.eq.then471
  %str.eq.result479 = phi i1 [ %eq.cmp.zero478, %str.eq.then471 ], [ false, %str.eq.else472 ]
  br i1 %str.eq.result479, label %choice.case445, label %choice.next446

str_gen_check492:                                 ; preds = %choice.case445
  %arena.gen495 = call ptr @dva_arena_current()
  %arena.gen496 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen495, i32 0, i32 4
  %arena.gen497 = load i64, ptr %arena.gen496, align 8
  %str.tag.match498 = icmp eq i64 %str.tag490, %arena.gen497
  br i1 %str.tag.match498, label %str_ok493, label %str_stale494

str_ok493:                                        ; preds = %str_stale494, %str_gen_check492, %choice.case445
  %addtmp499 = add i64 %str.len.query489, 1
  %var.load500 = load i64, ptr %var.line, align 8
  %var.load501 = load i64, ptr %var.col, align 8
  %call.res502 = call ptr @"lexer::mktok"(ptr %var.load480, ptr %enum.alloc482, i64 %var.load485, i64 %addtmp499, i64 %var.load500, i64 %var.load501, ptr @str.70.struct)
  br label %choice.exit

str_stale494:                                     ; preds = %str_gen_check492
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok493

choice.case503:                                   ; preds = %str.eq.merge531
  %var.load538 = load ptr, ptr %var.lx, align 8
  %arena.cur539 = call ptr @dva_arena_current()
  %enum.alloc540 = call ptr @dva_arena_alloc(ptr %arena.cur539, i64 16)
  %tag.gep541 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc540, i32 0, i32 0
  store i64 28, ptr %tag.gep541, align 8
  %pay.gep542 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc540, i32 0, i32 1
  store ptr null, ptr %pay.gep542, align 8
  %var.load543 = load i64, ptr %var.hstart, align 8
  %var.load544 = load ptr, ptr %var.word, align 8
  %str.len.query545 = getelementptr inbounds { i64, ptr }, ptr %var.load544, i32 0, i32 0
  %str.len.query546 = load i64, ptr %str.len.query545, align 8
  %str.len.query547 = and i64 %str.len.query546, 281474976710655
  %str.tag548 = lshr i64 %str.len.query546, 48
  %str.immortal549 = icmp eq i64 %str.tag548, 0
  br i1 %str.immortal549, label %str_ok551, label %str_gen_check550

choice.next504:                                   ; preds = %str.eq.merge531
  %eq.lhs.len563 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len564 = load i64, ptr %eq.lhs.len563, align 8
  %eq.lhs.len565 = and i64 %eq.lhs.len564, 281474976710655
  %str.tag566 = lshr i64 %eq.lhs.len564, 48
  %str.immortal567 = icmp eq i64 %str.tag566, 0
  br i1 %str.immortal567, label %str_ok569, label %str_gen_check568

str_gen_check510:                                 ; preds = %choice.next446
  %arena.gen513 = call ptr @dva_arena_current()
  %arena.gen514 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen513, i32 0, i32 4
  %arena.gen515 = load i64, ptr %arena.gen514, align 8
  %str.tag.match516 = icmp eq i64 %str.tag508, %arena.gen515
  br i1 %str.tag.match516, label %str_ok511, label %str_stale512

str_ok511:                                        ; preds = %str_stale512, %str_gen_check510, %choice.next446
  %eq.rhs.len517 = load i64, ptr @str.71.struct, align 8
  %eq.rhs.len518 = and i64 %eq.rhs.len517, 281474976710655
  %str.tag519 = lshr i64 %eq.rhs.len517, 48
  %str.immortal520 = icmp eq i64 %str.tag519, 0
  br i1 %str.immortal520, label %str_ok522, label %str_gen_check521

str_stale512:                                     ; preds = %str_gen_check510
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok511

str_gen_check521:                                 ; preds = %str_ok511
  %arena.gen524 = call ptr @dva_arena_current()
  %arena.gen525 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen524, i32 0, i32 4
  %arena.gen526 = load i64, ptr %arena.gen525, align 8
  %str.tag.match527 = icmp eq i64 %str.tag519, %arena.gen526
  br i1 %str.tag.match527, label %str_ok522, label %str_stale523

str_ok522:                                        ; preds = %str_stale523, %str_gen_check521, %str_ok511
  %eq.len528 = icmp eq i64 %eq.lhs.len507, %eq.rhs.len518
  br i1 %eq.len528, label %str.eq.then529, label %str.eq.else530

str_stale523:                                     ; preds = %str_gen_check521
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok522

str.eq.then529:                                   ; preds = %str_ok522
  %eq.lhs.data532 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data533 = load ptr, ptr %eq.lhs.data532, align 8
  %eq.rhs.data534 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.71.struct, i32 0, i32 1), align 8
  %eq.memcmp535 = call i32 @memcmp(ptr %eq.lhs.data533, ptr %eq.rhs.data534, i64 %eq.lhs.len507)
  %eq.cmp.zero536 = icmp eq i32 %eq.memcmp535, 0
  br label %str.eq.merge531

str.eq.else530:                                   ; preds = %str_ok522
  br label %str.eq.merge531

str.eq.merge531:                                  ; preds = %str.eq.else530, %str.eq.then529
  %str.eq.result537 = phi i1 [ %eq.cmp.zero536, %str.eq.then529 ], [ false, %str.eq.else530 ]
  br i1 %str.eq.result537, label %choice.case503, label %choice.next504

str_gen_check550:                                 ; preds = %choice.case503
  %arena.gen553 = call ptr @dva_arena_current()
  %arena.gen554 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen553, i32 0, i32 4
  %arena.gen555 = load i64, ptr %arena.gen554, align 8
  %str.tag.match556 = icmp eq i64 %str.tag548, %arena.gen555
  br i1 %str.tag.match556, label %str_ok551, label %str_stale552

str_ok551:                                        ; preds = %str_stale552, %str_gen_check550, %choice.case503
  %addtmp557 = add i64 %str.len.query547, 1
  %var.load558 = load i64, ptr %var.line, align 8
  %var.load559 = load i64, ptr %var.col, align 8
  %call.res560 = call ptr @"lexer::mktok"(ptr %var.load538, ptr %enum.alloc540, i64 %var.load543, i64 %addtmp557, i64 %var.load558, i64 %var.load559, ptr @str.72.struct)
  br label %choice.exit

str_stale552:                                     ; preds = %str_gen_check550
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok551

choice.case561:                                   ; preds = %str.eq.merge589
  %var.load596 = load ptr, ptr %var.lx, align 8
  %arena.cur597 = call ptr @dva_arena_current()
  %enum.alloc598 = call ptr @dva_arena_alloc(ptr %arena.cur597, i64 16)
  %tag.gep599 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc598, i32 0, i32 0
  store i64 29, ptr %tag.gep599, align 8
  %pay.gep600 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc598, i32 0, i32 1
  store ptr null, ptr %pay.gep600, align 8
  %var.load601 = load i64, ptr %var.hstart, align 8
  %var.load602 = load ptr, ptr %var.word, align 8
  %str.len.query603 = getelementptr inbounds { i64, ptr }, ptr %var.load602, i32 0, i32 0
  %str.len.query604 = load i64, ptr %str.len.query603, align 8
  %str.len.query605 = and i64 %str.len.query604, 281474976710655
  %str.tag606 = lshr i64 %str.len.query604, 48
  %str.immortal607 = icmp eq i64 %str.tag606, 0
  br i1 %str.immortal607, label %str_ok609, label %str_gen_check608

choice.next562:                                   ; preds = %str.eq.merge589
  %eq.lhs.len621 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len622 = load i64, ptr %eq.lhs.len621, align 8
  %eq.lhs.len623 = and i64 %eq.lhs.len622, 281474976710655
  %str.tag624 = lshr i64 %eq.lhs.len622, 48
  %str.immortal625 = icmp eq i64 %str.tag624, 0
  br i1 %str.immortal625, label %str_ok627, label %str_gen_check626

str_gen_check568:                                 ; preds = %choice.next504
  %arena.gen571 = call ptr @dva_arena_current()
  %arena.gen572 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen571, i32 0, i32 4
  %arena.gen573 = load i64, ptr %arena.gen572, align 8
  %str.tag.match574 = icmp eq i64 %str.tag566, %arena.gen573
  br i1 %str.tag.match574, label %str_ok569, label %str_stale570

str_ok569:                                        ; preds = %str_stale570, %str_gen_check568, %choice.next504
  %eq.rhs.len575 = load i64, ptr @str.73.struct, align 8
  %eq.rhs.len576 = and i64 %eq.rhs.len575, 281474976710655
  %str.tag577 = lshr i64 %eq.rhs.len575, 48
  %str.immortal578 = icmp eq i64 %str.tag577, 0
  br i1 %str.immortal578, label %str_ok580, label %str_gen_check579

str_stale570:                                     ; preds = %str_gen_check568
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok569

str_gen_check579:                                 ; preds = %str_ok569
  %arena.gen582 = call ptr @dva_arena_current()
  %arena.gen583 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen582, i32 0, i32 4
  %arena.gen584 = load i64, ptr %arena.gen583, align 8
  %str.tag.match585 = icmp eq i64 %str.tag577, %arena.gen584
  br i1 %str.tag.match585, label %str_ok580, label %str_stale581

str_ok580:                                        ; preds = %str_stale581, %str_gen_check579, %str_ok569
  %eq.len586 = icmp eq i64 %eq.lhs.len565, %eq.rhs.len576
  br i1 %eq.len586, label %str.eq.then587, label %str.eq.else588

str_stale581:                                     ; preds = %str_gen_check579
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok580

str.eq.then587:                                   ; preds = %str_ok580
  %eq.lhs.data590 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data591 = load ptr, ptr %eq.lhs.data590, align 8
  %eq.rhs.data592 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.73.struct, i32 0, i32 1), align 8
  %eq.memcmp593 = call i32 @memcmp(ptr %eq.lhs.data591, ptr %eq.rhs.data592, i64 %eq.lhs.len565)
  %eq.cmp.zero594 = icmp eq i32 %eq.memcmp593, 0
  br label %str.eq.merge589

str.eq.else588:                                   ; preds = %str_ok580
  br label %str.eq.merge589

str.eq.merge589:                                  ; preds = %str.eq.else588, %str.eq.then587
  %str.eq.result595 = phi i1 [ %eq.cmp.zero594, %str.eq.then587 ], [ false, %str.eq.else588 ]
  br i1 %str.eq.result595, label %choice.case561, label %choice.next562

str_gen_check608:                                 ; preds = %choice.case561
  %arena.gen611 = call ptr @dva_arena_current()
  %arena.gen612 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen611, i32 0, i32 4
  %arena.gen613 = load i64, ptr %arena.gen612, align 8
  %str.tag.match614 = icmp eq i64 %str.tag606, %arena.gen613
  br i1 %str.tag.match614, label %str_ok609, label %str_stale610

str_ok609:                                        ; preds = %str_stale610, %str_gen_check608, %choice.case561
  %addtmp615 = add i64 %str.len.query605, 1
  %var.load616 = load i64, ptr %var.line, align 8
  %var.load617 = load i64, ptr %var.col, align 8
  %call.res618 = call ptr @"lexer::mktok"(ptr %var.load596, ptr %enum.alloc598, i64 %var.load601, i64 %addtmp615, i64 %var.load616, i64 %var.load617, ptr @str.74.struct)
  br label %choice.exit

str_stale610:                                     ; preds = %str_gen_check608
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok609

choice.case619:                                   ; preds = %str.eq.merge647
  %var.load654 = load ptr, ptr %var.lx, align 8
  %arena.cur655 = call ptr @dva_arena_current()
  %enum.alloc656 = call ptr @dva_arena_alloc(ptr %arena.cur655, i64 16)
  %tag.gep657 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc656, i32 0, i32 0
  store i64 30, ptr %tag.gep657, align 8
  %pay.gep658 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc656, i32 0, i32 1
  store ptr null, ptr %pay.gep658, align 8
  %var.load659 = load i64, ptr %var.hstart, align 8
  %var.load660 = load ptr, ptr %var.word, align 8
  %str.len.query661 = getelementptr inbounds { i64, ptr }, ptr %var.load660, i32 0, i32 0
  %str.len.query662 = load i64, ptr %str.len.query661, align 8
  %str.len.query663 = and i64 %str.len.query662, 281474976710655
  %str.tag664 = lshr i64 %str.len.query662, 48
  %str.immortal665 = icmp eq i64 %str.tag664, 0
  br i1 %str.immortal665, label %str_ok667, label %str_gen_check666

choice.next620:                                   ; preds = %str.eq.merge647
  %eq.lhs.len679 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len680 = load i64, ptr %eq.lhs.len679, align 8
  %eq.lhs.len681 = and i64 %eq.lhs.len680, 281474976710655
  %str.tag682 = lshr i64 %eq.lhs.len680, 48
  %str.immortal683 = icmp eq i64 %str.tag682, 0
  br i1 %str.immortal683, label %str_ok685, label %str_gen_check684

str_gen_check626:                                 ; preds = %choice.next562
  %arena.gen629 = call ptr @dva_arena_current()
  %arena.gen630 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen629, i32 0, i32 4
  %arena.gen631 = load i64, ptr %arena.gen630, align 8
  %str.tag.match632 = icmp eq i64 %str.tag624, %arena.gen631
  br i1 %str.tag.match632, label %str_ok627, label %str_stale628

str_ok627:                                        ; preds = %str_stale628, %str_gen_check626, %choice.next562
  %eq.rhs.len633 = load i64, ptr @str.75.struct, align 8
  %eq.rhs.len634 = and i64 %eq.rhs.len633, 281474976710655
  %str.tag635 = lshr i64 %eq.rhs.len633, 48
  %str.immortal636 = icmp eq i64 %str.tag635, 0
  br i1 %str.immortal636, label %str_ok638, label %str_gen_check637

str_stale628:                                     ; preds = %str_gen_check626
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok627

str_gen_check637:                                 ; preds = %str_ok627
  %arena.gen640 = call ptr @dva_arena_current()
  %arena.gen641 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen640, i32 0, i32 4
  %arena.gen642 = load i64, ptr %arena.gen641, align 8
  %str.tag.match643 = icmp eq i64 %str.tag635, %arena.gen642
  br i1 %str.tag.match643, label %str_ok638, label %str_stale639

str_ok638:                                        ; preds = %str_stale639, %str_gen_check637, %str_ok627
  %eq.len644 = icmp eq i64 %eq.lhs.len623, %eq.rhs.len634
  br i1 %eq.len644, label %str.eq.then645, label %str.eq.else646

str_stale639:                                     ; preds = %str_gen_check637
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok638

str.eq.then645:                                   ; preds = %str_ok638
  %eq.lhs.data648 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data649 = load ptr, ptr %eq.lhs.data648, align 8
  %eq.rhs.data650 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.75.struct, i32 0, i32 1), align 8
  %eq.memcmp651 = call i32 @memcmp(ptr %eq.lhs.data649, ptr %eq.rhs.data650, i64 %eq.lhs.len623)
  %eq.cmp.zero652 = icmp eq i32 %eq.memcmp651, 0
  br label %str.eq.merge647

str.eq.else646:                                   ; preds = %str_ok638
  br label %str.eq.merge647

str.eq.merge647:                                  ; preds = %str.eq.else646, %str.eq.then645
  %str.eq.result653 = phi i1 [ %eq.cmp.zero652, %str.eq.then645 ], [ false, %str.eq.else646 ]
  br i1 %str.eq.result653, label %choice.case619, label %choice.next620

str_gen_check666:                                 ; preds = %choice.case619
  %arena.gen669 = call ptr @dva_arena_current()
  %arena.gen670 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen669, i32 0, i32 4
  %arena.gen671 = load i64, ptr %arena.gen670, align 8
  %str.tag.match672 = icmp eq i64 %str.tag664, %arena.gen671
  br i1 %str.tag.match672, label %str_ok667, label %str_stale668

str_ok667:                                        ; preds = %str_stale668, %str_gen_check666, %choice.case619
  %addtmp673 = add i64 %str.len.query663, 1
  %var.load674 = load i64, ptr %var.line, align 8
  %var.load675 = load i64, ptr %var.col, align 8
  %call.res676 = call ptr @"lexer::mktok"(ptr %var.load654, ptr %enum.alloc656, i64 %var.load659, i64 %addtmp673, i64 %var.load674, i64 %var.load675, ptr @str.76.struct)
  br label %choice.exit

str_stale668:                                     ; preds = %str_gen_check666
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok667

choice.case677:                                   ; preds = %str.eq.merge705
  %var.load712 = load ptr, ptr %var.lx, align 8
  %var.load713 = load i64, ptr %var.hstart, align 8
  %var.load714 = load i64, ptr %var.line, align 8
  %var.load715 = load i64, ptr %var.col, align 8
  %call.res716 = call ptr @"lexer::scan_pragma"(ptr %var.load712, i64 %var.load713, i64 %var.load714, i64 %var.load715)
  br label %choice.exit

choice.next678:                                   ; preds = %str.eq.merge705
  %eq.lhs.len719 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len720 = load i64, ptr %eq.lhs.len719, align 8
  %eq.lhs.len721 = and i64 %eq.lhs.len720, 281474976710655
  %str.tag722 = lshr i64 %eq.lhs.len720, 48
  %str.immortal723 = icmp eq i64 %str.tag722, 0
  br i1 %str.immortal723, label %str_ok725, label %str_gen_check724

str_gen_check684:                                 ; preds = %choice.next620
  %arena.gen687 = call ptr @dva_arena_current()
  %arena.gen688 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen687, i32 0, i32 4
  %arena.gen689 = load i64, ptr %arena.gen688, align 8
  %str.tag.match690 = icmp eq i64 %str.tag682, %arena.gen689
  br i1 %str.tag.match690, label %str_ok685, label %str_stale686

str_ok685:                                        ; preds = %str_stale686, %str_gen_check684, %choice.next620
  %eq.rhs.len691 = load i64, ptr @str.77.struct, align 8
  %eq.rhs.len692 = and i64 %eq.rhs.len691, 281474976710655
  %str.tag693 = lshr i64 %eq.rhs.len691, 48
  %str.immortal694 = icmp eq i64 %str.tag693, 0
  br i1 %str.immortal694, label %str_ok696, label %str_gen_check695

str_stale686:                                     ; preds = %str_gen_check684
  %44 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok685

str_gen_check695:                                 ; preds = %str_ok685
  %arena.gen698 = call ptr @dva_arena_current()
  %arena.gen699 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen698, i32 0, i32 4
  %arena.gen700 = load i64, ptr %arena.gen699, align 8
  %str.tag.match701 = icmp eq i64 %str.tag693, %arena.gen700
  br i1 %str.tag.match701, label %str_ok696, label %str_stale697

str_ok696:                                        ; preds = %str_stale697, %str_gen_check695, %str_ok685
  %eq.len702 = icmp eq i64 %eq.lhs.len681, %eq.rhs.len692
  br i1 %eq.len702, label %str.eq.then703, label %str.eq.else704

str_stale697:                                     ; preds = %str_gen_check695
  %45 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok696

str.eq.then703:                                   ; preds = %str_ok696
  %eq.lhs.data706 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data707 = load ptr, ptr %eq.lhs.data706, align 8
  %eq.rhs.data708 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.77.struct, i32 0, i32 1), align 8
  %eq.memcmp709 = call i32 @memcmp(ptr %eq.lhs.data707, ptr %eq.rhs.data708, i64 %eq.lhs.len681)
  %eq.cmp.zero710 = icmp eq i32 %eq.memcmp709, 0
  br label %str.eq.merge705

str.eq.else704:                                   ; preds = %str_ok696
  br label %str.eq.merge705

str.eq.merge705:                                  ; preds = %str.eq.else704, %str.eq.then703
  %str.eq.result711 = phi i1 [ %eq.cmp.zero710, %str.eq.then703 ], [ false, %str.eq.else704 ]
  br i1 %str.eq.result711, label %choice.case677, label %choice.next678

choice.case717:                                   ; preds = %str.eq.merge745
  %var.load752 = load ptr, ptr %var.lx, align 8
  %var.load753 = load i64, ptr %var.hstart, align 8
  %var.load754 = load i64, ptr %var.line, align 8
  %var.load755 = load i64, ptr %var.col, align 8
  %call.res756 = call ptr @"lexer::scan_use_directive"(ptr %var.load752, i64 %var.load753, i64 %var.load754, i64 %var.load755)
  br label %choice.exit

choice.next718:                                   ; preds = %str.eq.merge745
  %var.load757 = load ptr, ptr %var.lx, align 8
  %arena.cur758 = call ptr @dva_arena_current()
  %enum.alloc759 = call ptr @dva_arena_alloc(ptr %arena.cur758, i64 16)
  %tag.gep760 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc759, i32 0, i32 0
  store i64 2, ptr %tag.gep760, align 8
  %pay.gep761 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc759, i32 0, i32 1
  store ptr null, ptr %pay.gep761, align 8
  %var.load762 = load i64, ptr %var.hstart, align 8
  %var.load763 = load ptr, ptr %var.word, align 8
  %str.len.query764 = getelementptr inbounds { i64, ptr }, ptr %var.load763, i32 0, i32 0
  %str.len.query765 = load i64, ptr %str.len.query764, align 8
  %str.len.query766 = and i64 %str.len.query765, 281474976710655
  %str.tag767 = lshr i64 %str.len.query765, 48
  %str.immortal768 = icmp eq i64 %str.tag767, 0
  br i1 %str.immortal768, label %str_ok770, label %str_gen_check769

str_gen_check724:                                 ; preds = %choice.next678
  %arena.gen727 = call ptr @dva_arena_current()
  %arena.gen728 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen727, i32 0, i32 4
  %arena.gen729 = load i64, ptr %arena.gen728, align 8
  %str.tag.match730 = icmp eq i64 %str.tag722, %arena.gen729
  br i1 %str.tag.match730, label %str_ok725, label %str_stale726

str_ok725:                                        ; preds = %str_stale726, %str_gen_check724, %choice.next678
  %eq.rhs.len731 = load i64, ptr @str.78.struct, align 8
  %eq.rhs.len732 = and i64 %eq.rhs.len731, 281474976710655
  %str.tag733 = lshr i64 %eq.rhs.len731, 48
  %str.immortal734 = icmp eq i64 %str.tag733, 0
  br i1 %str.immortal734, label %str_ok736, label %str_gen_check735

str_stale726:                                     ; preds = %str_gen_check724
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok725

str_gen_check735:                                 ; preds = %str_ok725
  %arena.gen738 = call ptr @dva_arena_current()
  %arena.gen739 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen738, i32 0, i32 4
  %arena.gen740 = load i64, ptr %arena.gen739, align 8
  %str.tag.match741 = icmp eq i64 %str.tag733, %arena.gen740
  br i1 %str.tag.match741, label %str_ok736, label %str_stale737

str_ok736:                                        ; preds = %str_stale737, %str_gen_check735, %str_ok725
  %eq.len742 = icmp eq i64 %eq.lhs.len721, %eq.rhs.len732
  br i1 %eq.len742, label %str.eq.then743, label %str.eq.else744

str_stale737:                                     ; preds = %str_gen_check735
  %47 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok736

str.eq.then743:                                   ; preds = %str_ok736
  %eq.lhs.data746 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data747 = load ptr, ptr %eq.lhs.data746, align 8
  %eq.rhs.data748 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.78.struct, i32 0, i32 1), align 8
  %eq.memcmp749 = call i32 @memcmp(ptr %eq.lhs.data747, ptr %eq.rhs.data748, i64 %eq.lhs.len721)
  %eq.cmp.zero750 = icmp eq i32 %eq.memcmp749, 0
  br label %str.eq.merge745

str.eq.else744:                                   ; preds = %str_ok736
  br label %str.eq.merge745

str.eq.merge745:                                  ; preds = %str.eq.else744, %str.eq.then743
  %str.eq.result751 = phi i1 [ %eq.cmp.zero750, %str.eq.then743 ], [ false, %str.eq.else744 ]
  br i1 %str.eq.result751, label %choice.case717, label %choice.next718

str_gen_check769:                                 ; preds = %choice.next718
  %arena.gen772 = call ptr @dva_arena_current()
  %arena.gen773 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen772, i32 0, i32 4
  %arena.gen774 = load i64, ptr %arena.gen773, align 8
  %str.tag.match775 = icmp eq i64 %str.tag767, %arena.gen774
  br i1 %str.tag.match775, label %str_ok770, label %str_stale771

str_ok770:                                        ; preds = %str_stale771, %str_gen_check769, %choice.next718
  %addtmp776 = add i64 %str.len.query766, 1
  %var.load777 = load i64, ptr %var.line, align 8
  %var.load778 = load i64, ptr %var.col, align 8
  %var.load779 = load ptr, ptr %var.word, align 8
  %concat.lhs780 = load i64, ptr @str.64.struct, align 8
  %concat.lhs781 = and i64 %concat.lhs780, 281474976710655
  %str.tag782 = lshr i64 %concat.lhs780, 48
  %str.immortal783 = icmp eq i64 %str.tag782, 0
  br i1 %str.immortal783, label %str_ok785, label %str_gen_check784

str_stale771:                                     ; preds = %str_gen_check769
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok770

str_gen_check784:                                 ; preds = %str_ok770
  %arena.gen787 = call ptr @dva_arena_current()
  %arena.gen788 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen787, i32 0, i32 4
  %arena.gen789 = load i64, ptr %arena.gen788, align 8
  %str.tag.match790 = icmp eq i64 %str.tag782, %arena.gen789
  br i1 %str.tag.match790, label %str_ok785, label %str_stale786

str_ok785:                                        ; preds = %str_stale786, %str_gen_check784, %str_ok770
  %concat.lhs791 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.64.struct, i32 0, i32 1), align 8
  %concat.rhs792 = getelementptr inbounds { i64, ptr }, ptr %var.load779, i32 0, i32 0
  %concat.rhs793 = load i64, ptr %concat.rhs792, align 8
  %concat.rhs794 = and i64 %concat.rhs793, 281474976710655
  %str.tag795 = lshr i64 %concat.rhs793, 48
  %str.immortal796 = icmp eq i64 %str.tag795, 0
  br i1 %str.immortal796, label %str_ok798, label %str_gen_check797

str_stale786:                                     ; preds = %str_gen_check784
  %49 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok785

str_gen_check797:                                 ; preds = %str_ok785
  %arena.gen800 = call ptr @dva_arena_current()
  %arena.gen801 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen800, i32 0, i32 4
  %arena.gen802 = load i64, ptr %arena.gen801, align 8
  %str.tag.match803 = icmp eq i64 %str.tag795, %arena.gen802
  br i1 %str.tag.match803, label %str_ok798, label %str_stale799

str_ok798:                                        ; preds = %str_stale799, %str_gen_check797, %str_ok785
  %concat.rhs804 = getelementptr inbounds { i64, ptr }, ptr %var.load779, i32 0, i32 1
  %concat.rhs805 = load ptr, ptr %concat.rhs804, align 8
  %concat.sum.len806 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs781, i64 %concat.rhs794)
  %sum807 = extractvalue { i64, i1 } %concat.sum.len806, 0
  %ovf808 = extractvalue { i64, i1 } %concat.sum.len806, 1
  br i1 %ovf808, label %str_overflow_abort810, label %concat.sum.len809

str_stale799:                                     ; preds = %str_gen_check797
  %50 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok798

concat.sum.len809:                                ; preds = %str_overflow_abort810, %str_ok798
  %concat.tot.len811 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum807, i64 1)
  %sum812 = extractvalue { i64, i1 } %concat.tot.len811, 0
  %ovf813 = extractvalue { i64, i1 } %concat.tot.len811, 1
  br i1 %ovf813, label %str_overflow_abort815, label %concat.tot.len814

str_overflow_abort810:                            ; preds = %str_ok798
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len809

concat.tot.len814:                                ; preds = %str_overflow_abort815, %concat.sum.len809
  %arena.cur816 = call ptr @dva_arena_current()
  %concat.buf817 = call ptr @dva_arena_alloc(ptr %arena.cur816, i64 %sum812)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf817, ptr align 1 %concat.lhs791, i64 %concat.lhs781, i1 false)
  %concat.mid818 = getelementptr i8, ptr %concat.buf817, i64 %concat.lhs781
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid818, ptr align 1 %concat.rhs805, i64 %concat.rhs794, i1 false)
  %concat.nul819 = getelementptr i8, ptr %concat.buf817, i64 %sum807
  store i8 0, ptr %concat.nul819, align 1
  %arena.cur820 = call ptr @dva_arena_current()
  %concat.str821 = call ptr @dva_arena_alloc(ptr %arena.cur820, i64 16)
  %str.build.len.gep822 = getelementptr inbounds { i64, ptr }, ptr %concat.str821, i32 0, i32 0
  store i64 %sum807, ptr %str.build.len.gep822, align 8
  %str.build.data.gep823 = getelementptr inbounds { i64, ptr }, ptr %concat.str821, i32 0, i32 1
  store ptr %concat.buf817, ptr %str.build.data.gep823, align 8
  %call.res824 = call ptr @"lexer::mktok"(ptr %var.load757, ptr %enum.alloc759, i64 %var.load762, i64 %addtmp776, i64 %var.load777, i64 %var.load778, ptr %concat.str821)
  br label %choice.exit

str_overflow_abort815:                            ; preds = %concat.sum.len809
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len814
}

define ptr @"lexer::scan_hash_ct"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  %var.load3 = load ptr, ptr %var.lx, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %call.res5 = call i64 @"lexer::pk"(ptr %var.load4, i64 0)
  %call.res6 = call i64 @"lexer::adv"(ptr %var.load3, i64 %call.res5)
  %var.load7 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 25, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load, 2
  %var.load9 = load i64, ptr %var.line, align 8
  %var.load10 = load i64, ptr %var.col, align 8
  %call.res11 = call ptr @"lexer::mktok"(ptr %var.load7, ptr %enum.alloc, i64 %subtmp, i64 2, i64 %var.load9, i64 %var.load10, ptr @str.79.struct)
  ret ptr %call.res11
}

define ptr @"lexer::scan_hash_name"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.word = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call ptr @"lexer::scan_hash_word"(ptr %var.load, i64 0)
  store ptr %call.res, ptr %var.word, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %var.load2 = load ptr, ptr %var.word, align 8
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load, 1
  %var.load4 = load ptr, ptr %var.word, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag = lshr i64 %str.len.query5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen7 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen8 = load i64, ptr %arena.gen7, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen8
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %subtmp9 = sub i64 %subtmp, %str.len.query6
  %var.load10 = load i64, ptr %var.line, align 8
  %var.load11 = load i64, ptr %var.col, align 8
  %call.res12 = call ptr @"lexer::scan_directive"(ptr %var.load1, ptr %var.load2, i64 %subtmp9, i64 %var.load10, i64 %var.load11)
  ret ptr %call.res12

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define ptr @"lexer::scan_hash"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk_off"(ptr %var.load, i64 1)
  %cmptmp = icmp eq i64 %call.res, 33
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.lx, align 8
  %var.load2 = load i64, ptr %var.line, align 8
  %var.load3 = load i64, ptr %var.col, align 8
  %call.res4 = call ptr @"lexer::scan_hash_ct"(ptr %var.load1, i64 %var.load2, i64 %var.load3)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.lx, align 8
  %var.load6 = load i64, ptr %var.line, align 8
  %var.load7 = load i64, ptr %var.col, align 8
  %call.res8 = call ptr @"lexer::scan_hash_name2"(ptr %var.load5, i64 %var.load6, i64 %var.load7)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res4, %choice.then ], [ %call.res8, %choice.else ]
  ret ptr %choice.res
}

define ptr @"lexer::scan_hash_name2"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk_off"(ptr %var.load, i64 1)
  %call.res1 = call i1 @"unicode::is_alpha"(i64 %call.res)
  br i1 %call.res1, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.lx, align 8
  %var.load3 = load i64, ptr %var.line, align 8
  %var.load4 = load i64, ptr %var.col, align 8
  %call.res5 = call ptr @"lexer::scan_hash_name"(ptr %var.load2, i64 %var.load3, i64 %var.load4)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load6 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load7 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load7, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load8 = load i64, ptr %var.line, align 8
  %var.load9 = load i64, ptr %var.col, align 8
  %call.res10 = call ptr @"lexer::mktok"(ptr %var.load6, ptr %enum.alloc, i64 %fld.load, i64 1, i64 %var.load8, i64 %var.load9, ptr @str.64.struct)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res5, %choice.then ], [ %call.res10, %choice.else ]
  ret ptr %choice.res
}

define void @"lexer::stack_pop"(ptr %0, i64 %1) #1 {
entry:
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load, 1
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 7
  store i64 %subtmp, ptr %fld.gep2, align 8
  ret void
}

define void @"lexer::stack_append"(ptr %0, i64 %1) #1 {
entry:
  %var.st = alloca ptr, align 8
  %var.v = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.v, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.st, align 8
  %var.load1 = load i64, ptr %var.v, align 8
  %a.load = load ptr, ptr %var.st, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create2, ptr %var.st, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.st, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len4 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap5 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len4, %a.cap5
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data6 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len7 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data6, i64 %a.cur.len7
  store i64 %var.load1, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len7, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  ret void
}

define void @"lexer::stack_overwrite"(ptr %0, i64 %1) #1 {
entry:
  %var._9 = alloca ptr, align 8
  %var._8 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.v = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.v, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %var.load4 = load i64, ptr %var.v, align 8
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %a.wr.data5 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data5, i64 %fld.load3
  store i64 %var.load4, ptr %a.elem.gep, align 8
  %arena.cur = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %tag.gep6 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep6, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep7 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep7, align 8
  br i1 %is.pos, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var._8, align 8
  store ptr %payload.ptr, ptr %var._9, align 8
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %payload.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len10 = load i64, ptr %err.msg.len, align 8
  %err.msg.len11 = and i64 %err.msg.len10, 281474976710655
  %str.tag = lshr i64 %err.msg.len10, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %err.abort, %choice.then
  ret void

str_gen_check:                                    ; preds = %choice.else
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen13
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %err.msg.len32 = trunc i64 %err.msg.len11 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data14 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len15 = load i64, ptr %err.file.len, align 8
  %err.file.len16 = and i64 %err.file.len15, 281474976710655
  %str.tag17 = lshr i64 %err.file.len15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check19:                                  ; preds = %str_ok
  %arena.gen22 = call ptr @dva_arena_current()
  %arena.gen23 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen22, i32 0, i32 4
  %arena.gen24 = load i64, ptr %arena.gen23, align 8
  %str.tag.match25 = icmp eq i64 %str.tag17, %arena.gen24
  br i1 %str.tag.match25, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %str_ok
  %err.file.len32 = trunc i64 %err.file.len16 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data26 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale21:                                      ; preds = %str_gen_check19
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

err.thread:                                       ; preds = %str_ok20
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %payload.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok20
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data14, i32 %err.file.len32, ptr %err.file.data26, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit
}

define void @"lexer::stack_push"(ptr %0, i64 %1) #1 {
entry:
  %var.v = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.v, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 6
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load3, i32 0, i32 0
  %a.len.query4 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp eq i64 %fld.load, %a.len.query4
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.lx, align 8
  %var.load6 = load i64, ptr %var.v, align 8
  call void @"lexer::stack_append"(ptr %var.load5, i64 %var.load6)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  %var.load7 = load ptr, ptr %var.lx, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load7, i32 0, i32 7
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %var.load10 = load ptr, ptr %var.lx, align 8
  %fld.gep11 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load10, i32 0, i32 6
  %fld.load12 = load ptr, ptr %fld.gep11, align 8
  %a.len.query13 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load12, i32 0, i32 0
  %a.len.query14 = load i64, ptr %a.len.query13, align 8
  %cmptmp15 = icmp slt i64 %fld.load9, %a.len.query14
  br i1 %cmptmp15, label %choice.then16, label %choice.exit17

choice.then16:                                    ; preds = %choice.exit
  %var.load18 = load ptr, ptr %var.lx, align 8
  %var.load19 = load i64, ptr %var.v, align 8
  call void @"lexer::stack_overwrite"(ptr %var.load18, i64 %var.load19)
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.then16, %choice.exit
  %var.load20 = load ptr, ptr %var.lx, align 8
  %var.load21 = load ptr, ptr %var.lx, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load21, i32 0, i32 7
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  %addtmp = add i64 %fld.load23, 1
  %fld.gep24 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load20, i32 0, i32 7
  store i64 %addtmp, ptr %fld.gep24, align 8
  ret void
}

define void @"lexer::queue_dedent"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.qu = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.qu, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 17, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %var.load4 = load i64, ptr %var.col, align 8
  %arena.cur5 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc, ptr %rec.fld, align 8
  %rec.fld6 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load3, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load4, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld10, align 1
  %rec.fld11 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store i1 false, ptr %rec.fld11, align 1
  %rec.fld12 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.80.struct, ptr %rec.fld12, align 8
  %a.load = load ptr, ptr %var.qu, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur13 = call ptr @dva_arena_current()
  %a.create14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 24)
  %arena.cur15 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create14, ptr %var.qu, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.qu, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len16 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap17 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len16, %a.cap17
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data18 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len19 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data18, i64 %a.cur.len19
  %a.elem.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %a.elem.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len19, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  ret void
}

define ptr @"lexer::take_queued"(ptr %0, i64 %1) #1 {
entry:
  %var.t = alloca ptr, align 8
  %var._21 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 9
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %entry
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.rd.len4 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %fld.load3, 0
  %a.rd.lt = icmp slt i64 %fld.load3, %a.rd.len4
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %a.rd.data5 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data5, i64 %fld.load3
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 1042, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 26, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur6 = call ptr @dva_arena_current()
  %err.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  %err.code.gep8 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 0
  store i64 4011, ptr %err.code.gep8, align 8
  %err.msg.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep9, align 8
  %err.file.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep10, align 8
  %err.line.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 3
  store i64 1042, ptr %err.line.gep11, align 8
  %err.col.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 4
  store i64 26, ptr %err.col.gep12, align 8
  %err.ctx.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 5
  %err.ctx0.gep14 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep13, i32 0, i32 0
  store i64 %fld.load3, ptr %err.ctx0.gep14, align 8
  %err.ctx1.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep13, i32 0, i32 1
  store i64 %a.rd.len4, ptr %err.ctx1.gep15, align 8
  %err.p2i16 = ptrtoint ptr %err.alloc7 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i16, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag17 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag17, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay18 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay18 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay19 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr20 = inttoptr i64 %ram.pay19 to ptr
  store ptr %pay.ptr20, ptr %var._21, align 8
  %arena.cur22 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load23 = load ptr, ptr %var.lx, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load i64, ptr %fld.gep24, align 8
  %var.load26 = load ptr, ptr %var.lx, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %var.load29 = load ptr, ptr %var.lx, align 8
  %fld.gep30 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load29, i32 0, i32 3
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %arena.cur32 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc, ptr %rec.fld, align 8
  %rec.fld33 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %fld.load25, ptr %rec.fld33, align 8
  %rec.fld34 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld34, align 8
  %rec.fld35 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load28, ptr %rec.fld35, align 8
  %rec.fld36 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load31, ptr %rec.fld36, align 8
  %rec.fld37 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld37, align 1
  %rec.fld38 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store i1 false, ptr %rec.fld38, align 1
  %rec.fld39 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.0.struct, ptr %rec.fld39, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.t, align 8
  %var.load40 = load ptr, ptr %var.lx, align 8
  %var.load41 = load ptr, ptr %var.lx, align 8
  %fld.gep42 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load41, i32 0, i32 9
  %fld.load43 = load i64, ptr %fld.gep42, align 8
  %addtmp = add i64 %fld.load43, 1
  %fld.gep44 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load40, i32 0, i32 9
  store i64 %addtmp, ptr %fld.gep44, align 8
  %var.load45 = load ptr, ptr %var.lx, align 8
  %fld.gep46 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load45, i32 0, i32 9
  %fld.load47 = load i64, ptr %fld.gep46, align 8
  %var.load48 = load ptr, ptr %var.lx, align 8
  %fld.gep49 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load48, i32 0, i32 8
  %fld.load50 = load ptr, ptr %fld.gep49, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load50, i32 0, i32 0
  %a.len.query51 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp eq i64 %fld.load47, %a.len.query51
  br i1 %cmptmp, label %choice.then52, label %choice.else53

choice.then52:                                    ; preds = %choice.exit
  %var.load55 = load ptr, ptr %var.lx, align 8
  %arena.cur56 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 24)
  %arena.cur57 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load55, i32 0, i32 8
  store ptr %a.new, ptr %fld.gep58, align 8
  %var.load59 = load ptr, ptr %var.lx, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load59, i32 0, i32 9
  store i64 0, ptr %fld.gep60, align 8
  br label %choice.exit54

choice.else53:                                    ; preds = %choice.exit
  br label %choice.exit54

choice.exit54:                                    ; preds = %choice.else53, %choice.then52
  %var.load61 = load ptr, ptr %var.t, align 8
  ret ptr %var.load61
}

define void @"lexer::count_indent"(ptr %0, i64 %1) #1 {
entry:
  %var.depth = alloca i64, align 8
  %var.done = alloca i1, align 1
  %var.is_tab = alloca i1, align 1
  %var.is_sp = alloca i1, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.91 = alloca i64, align 8
  %loop.idx.91 = alloca i64, align 8
  %"var.tabs'" = alloca i64, align 8
  %"var.sp'" = alloca i64, align 8
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  store i64 0, ptr %"var.sp'", align 8
  store i64 0, ptr %"var.tabs'", align 8
  store i64 0, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.header.91:                                   ; preds = %loop.latch.91, %entry
  %counter.load = load i64, ptr %loop.idx.91, align 8
  br label %loop.body.91

loop.body.91:                                     ; preds = %loop.header.91
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.91, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load, i64 0)
  %cmptmp = icmp eq i64 %call.res, 32
  store i1 %cmptmp, ptr %var.is_sp, align 1
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res2 = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %cmptmp3 = icmp eq i64 %call.res2, 9
  store i1 %cmptmp3, ptr %var.is_tab, align 1
  %var.load4 = load i1, ptr %var.is_sp, align 1
  br i1 %var.load4, label %or.92.then, label %or.92.else

loop.exit.nat.91:                                 ; No predecessors!
  br label %loop.exit.91

loop.latch.91:                                    ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.91, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.exit.91:                                     ; preds = %choice.then, %loop.exit.nat.91
  %var.load22 = load i64, ptr %"var.sp'", align 8
  %cmptmp23 = icmp sgt i64 %var.load22, 0
  br i1 %cmptmp23, label %and.93.then, label %and.93.else

or.92.then:                                       ; preds = %loop.body.91
  br label %or.92.exit

or.92.else:                                       ; preds = %loop.body.91
  %var.load5 = load i1, ptr %var.is_tab, align 1
  br label %or.92.exit

or.92.exit:                                       ; preds = %or.92.else, %or.92.then
  %or.92.phi = phi i1 [ %var.load4, %or.92.then ], [ %var.load5, %or.92.else ]
  %nottmp = xor i1 %or.92.phi, true
  store i1 %nottmp, ptr %var.done, align 1
  %var.load6 = load i1, ptr %var.done, align 1
  br i1 %var.load6, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.92.exit
  br label %loop.exit.91

choice.exit:                                      ; preds = %or.92.exit
  %var.load7 = load i64, ptr %"var.sp'", align 8
  %var.load8 = load i1, ptr %var.is_sp, align 1
  br i1 %var.load8, label %choice.then9, label %choice.else

choice.then9:                                     ; preds = %choice.exit
  br label %choice.exit10

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else, %choice.then9
  %choice.res = phi i64 [ 1, %choice.then9 ], [ 0, %choice.else ]
  %addtmp = add i64 %var.load7, %choice.res
  store i64 %addtmp, ptr %"var.sp'", align 8
  %var.load11 = load i64, ptr %"var.tabs'", align 8
  %var.load12 = load i1, ptr %var.is_tab, align 1
  br i1 %var.load12, label %choice.then13, label %choice.else14

choice.then13:                                    ; preds = %choice.exit10
  br label %choice.exit15

choice.else14:                                    ; preds = %choice.exit10
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res16 = phi i64 [ 1, %choice.then13 ], [ 0, %choice.else14 ]
  %addtmp17 = add i64 %var.load11, %choice.res16
  store i64 %addtmp17, ptr %"var.tabs'", align 8
  %var.load18 = load ptr, ptr %var.lx, align 8
  %var.load19 = load ptr, ptr %var.lx, align 8
  %call.res20 = call i64 @"lexer::pk"(ptr %var.load19, i64 0)
  %call.res21 = call i64 @"lexer::adv"(ptr %var.load18, i64 %call.res20)
  br label %loop.latch.91

and.93.then:                                      ; preds = %loop.exit.91
  %var.load24 = load i64, ptr %"var.tabs'", align 8
  %cmptmp25 = icmp sgt i64 %var.load24, 0
  br label %and.93.exit

and.93.else:                                      ; preds = %loop.exit.91
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %and.93.then
  %and.93.phi = phi i1 [ %cmptmp25, %and.93.then ], [ %cmptmp23, %and.93.else ]
  br i1 %and.93.phi, label %choice.then26, label %choice.exit27

choice.then26:                                    ; preds = %and.93.exit
  %var.load28 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load28, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res29 = call i64 @"lexer::fail"(i64 1001, i64 %fld.load, i64 1, ptr @str.81.struct)
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.then26, %and.93.exit
  %var.load30 = load i64, ptr %"var.sp'", align 8
  %cmptmp31 = icmp sgt i64 %var.load30, 0
  br i1 %cmptmp31, label %and.94.then, label %and.94.else

and.94.then:                                      ; preds = %choice.exit27
  %var.load32 = load ptr, ptr %var.lx, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load32, i32 0, i32 5
  %fld.load34 = load i64, ptr %fld.gep33, align 8
  %cmptmp35 = icmp eq i64 %fld.load34, 0
  br label %and.94.exit

and.94.else:                                      ; preds = %choice.exit27
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %and.94.then
  %and.94.phi = phi i1 [ %cmptmp35, %and.94.then ], [ %cmptmp31, %and.94.else ]
  br i1 %and.94.phi, label %choice.then36, label %choice.exit37

choice.then36:                                    ; preds = %and.94.exit
  %var.load38 = load ptr, ptr %var.lx, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load38, i32 0, i32 5
  store i64 1, ptr %fld.gep39, align 8
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.then36, %and.94.exit
  %var.load40 = load i64, ptr %"var.tabs'", align 8
  %cmptmp41 = icmp sgt i64 %var.load40, 0
  br i1 %cmptmp41, label %and.95.then, label %and.95.else

and.95.then:                                      ; preds = %choice.exit37
  %var.load42 = load ptr, ptr %var.lx, align 8
  %fld.gep43 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load42, i32 0, i32 5
  %fld.load44 = load i64, ptr %fld.gep43, align 8
  %cmptmp45 = icmp eq i64 %fld.load44, 0
  br label %and.95.exit

and.95.else:                                      ; preds = %choice.exit37
  br label %and.95.exit

and.95.exit:                                      ; preds = %and.95.else, %and.95.then
  %and.95.phi = phi i1 [ %cmptmp45, %and.95.then ], [ %cmptmp41, %and.95.else ]
  br i1 %and.95.phi, label %choice.then46, label %choice.exit47

choice.then46:                                    ; preds = %and.95.exit
  %var.load48 = load ptr, ptr %var.lx, align 8
  %fld.gep49 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load48, i32 0, i32 5
  store i64 2, ptr %fld.gep49, align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.then46, %and.95.exit
  %var.load50 = load i64, ptr %"var.sp'", align 8
  %cmptmp51 = icmp sgt i64 %var.load50, 0
  br i1 %cmptmp51, label %and.96.then, label %and.96.else

and.96.then:                                      ; preds = %choice.exit47
  %var.load52 = load ptr, ptr %var.lx, align 8
  %fld.gep53 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load52, i32 0, i32 5
  %fld.load54 = load i64, ptr %fld.gep53, align 8
  %cmptmp55 = icmp eq i64 %fld.load54, 2
  br label %and.96.exit

and.96.else:                                      ; preds = %choice.exit47
  br label %and.96.exit

and.96.exit:                                      ; preds = %and.96.else, %and.96.then
  %and.96.phi = phi i1 [ %cmptmp55, %and.96.then ], [ %cmptmp51, %and.96.else ]
  br i1 %and.96.phi, label %choice.then56, label %choice.exit57

choice.then56:                                    ; preds = %and.96.exit
  %var.load58 = load ptr, ptr %var.lx, align 8
  %fld.gep59 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load58, i32 0, i32 2
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  %call.res61 = call i64 @"lexer::fail"(i64 1002, i64 %fld.load60, i64 1, ptr @str.82.struct)
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.then56, %and.96.exit
  %var.load62 = load i64, ptr %"var.tabs'", align 8
  %cmptmp63 = icmp sgt i64 %var.load62, 0
  br i1 %cmptmp63, label %and.97.then, label %and.97.else

and.97.then:                                      ; preds = %choice.exit57
  %var.load64 = load ptr, ptr %var.lx, align 8
  %fld.gep65 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load64, i32 0, i32 5
  %fld.load66 = load i64, ptr %fld.gep65, align 8
  %cmptmp67 = icmp eq i64 %fld.load66, 1
  br label %and.97.exit

and.97.else:                                      ; preds = %choice.exit57
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %and.97.then
  %and.97.phi = phi i1 [ %cmptmp67, %and.97.then ], [ %cmptmp63, %and.97.else ]
  br i1 %and.97.phi, label %choice.then68, label %choice.exit69

choice.then68:                                    ; preds = %and.97.exit
  %var.load70 = load ptr, ptr %var.lx, align 8
  %fld.gep71 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load70, i32 0, i32 2
  %fld.load72 = load i64, ptr %fld.gep71, align 8
  %call.res73 = call i64 @"lexer::fail"(i64 1003, i64 %fld.load72, i64 1, ptr @str.83.struct)
  br label %choice.exit69

choice.exit69:                                    ; preds = %choice.then68, %and.97.exit
  %var.load74 = load i64, ptr %"var.sp'", align 8
  %cmptmp75 = icmp sgt i64 %var.load74, 0
  br i1 %cmptmp75, label %choice.then76, label %choice.else77

choice.then76:                                    ; preds = %choice.exit69
  %var.load79 = load i64, ptr %"var.sp'", align 8
  br label %choice.exit78

choice.else77:                                    ; preds = %choice.exit69
  %var.load80 = load i64, ptr %"var.tabs'", align 8
  br label %choice.exit78

choice.exit78:                                    ; preds = %choice.else77, %choice.then76
  %choice.res81 = phi i64 [ %var.load79, %choice.then76 ], [ %var.load80, %choice.else77 ]
  store i64 %choice.res81, ptr %var.depth, align 8
  %var.load82 = load ptr, ptr %var.lx, align 8
  %var.load83 = load i64, ptr %var.depth, align 8
  %fld.gep84 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load82, i32 0, i32 13
  store i64 %var.load83, ptr %fld.gep84, align 8
  ret void
}

define ptr @"lexer::drain_to"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.98 = alloca i64, align 8
  %loop.idx.98 = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.depth = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.depth, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 0, ptr %loop.idx.98, align 8
  br label %loop.header.98

loop.header.98:                                   ; preds = %loop.latch.98, %entry
  %counter.load = load i64, ptr %loop.idx.98, align 8
  br label %loop.body.98

loop.body.98:                                     ; preds = %loop.header.98
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.98, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp sgt i64 %fld.load, 1
  br i1 %cmptmp, label %and.99.then, label %and.99.else

loop.exit.nat.98:                                 ; No predecessors!
  br label %loop.exit.98

loop.latch.98:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.98, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.98, align 8
  br label %loop.header.98

loop.exit.98:                                     ; preds = %choice.else, %loop.exit.nat.98
  %var.load6 = load ptr, ptr %var.lx, align 8
  %call.res7 = call i64 @"lexer::stack_top"(ptr %var.load6)
  %var.load8 = load i64, ptr %var.depth, align 8
  %cmptmp9 = icmp ne i64 %call.res7, %var.load8
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

and.99.then:                                      ; preds = %loop.body.98
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::stack_top"(ptr %var.load1)
  %var.load2 = load i64, ptr %var.depth, align 8
  %cmptmp3 = icmp sgt i64 %call.res, %var.load2
  br label %and.99.exit

and.99.else:                                      ; preds = %loop.body.98
  br label %and.99.exit

and.99.exit:                                      ; preds = %and.99.else, %and.99.then
  %and.99.phi = phi i1 [ %cmptmp3, %and.99.then ], [ %cmptmp, %and.99.else ]
  br i1 %and.99.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.99.exit
  %var.load4 = load ptr, ptr %var.lx, align 8
  call void @"lexer::stack_pop"(ptr %var.load4, i64 0)
  %var.load5 = load ptr, ptr %var.lx, align 8
  call void @"lexer::queue_dedent"(ptr %var.load5, i64 0, i64 1)
  br label %choice.exit

choice.else:                                      ; preds = %and.99.exit
  br label %loop.exit.98

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.98

choice.then10:                                    ; preds = %loop.exit.98
  %var.load12 = load i64, ptr %var.line, align 8
  %var.load13 = load i64, ptr %var.depth, align 8
  %call.res14 = call ptr @"str::from_int"(i64 %var.load13)
  %concat.lhs = load i64, ptr @str.84.struct, align 8
  %concat.lhs15 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit11:                                    ; preds = %concat.tot.len72, %loop.exit.98
  %var.load83 = load ptr, ptr %var.lx, align 8
  %call.res84 = call ptr @"lexer::take_queued"(ptr %var.load83, i64 0)
  ret ptr %call.res84

str_gen_check:                                    ; preds = %choice.then10
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen16 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen17 = load i64, ptr %arena.gen16, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen17
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then10
  %concat.lhs18 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.84.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res14, i32 0, i32 0
  %concat.rhs19 = load i64, ptr %concat.rhs, align 8
  %concat.rhs20 = and i64 %concat.rhs19, 281474976710655
  %str.tag21 = lshr i64 %concat.rhs19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check23:                                  ; preds = %str_ok
  %arena.gen26 = call ptr @dva_arena_current()
  %arena.gen27 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen26, i32 0, i32 4
  %arena.gen28 = load i64, ptr %arena.gen27, align 8
  %str.tag.match29 = icmp eq i64 %str.tag21, %arena.gen28
  br i1 %str.tag.match29, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %str_ok
  %concat.rhs30 = getelementptr inbounds { i64, ptr }, ptr %call.res14, i32 0, i32 1
  %concat.rhs31 = load ptr, ptr %concat.rhs30, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs15, i64 %concat.rhs20)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len32

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

concat.sum.len32:                                 ; preds = %str_overflow_abort, %str_ok24
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum33 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf34 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf34, label %str_overflow_abort36, label %concat.tot.len35

str_overflow_abort:                               ; preds = %str_ok24
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len32

concat.tot.len35:                                 ; preds = %str_overflow_abort36, %concat.sum.len32
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum33)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs18, i64 %concat.lhs15, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs31, i64 %concat.rhs20, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur37 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs38 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs39 = load i64, ptr %concat.lhs38, align 8
  %concat.lhs40 = and i64 %concat.lhs39, 281474976710655
  %str.tag41 = lshr i64 %concat.lhs39, 48
  %str.immortal42 = icmp eq i64 %str.tag41, 0
  br i1 %str.immortal42, label %str_ok44, label %str_gen_check43

str_overflow_abort36:                             ; preds = %concat.sum.len32
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len35

str_gen_check43:                                  ; preds = %concat.tot.len35
  %arena.gen46 = call ptr @dva_arena_current()
  %arena.gen47 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen46, i32 0, i32 4
  %arena.gen48 = load i64, ptr %arena.gen47, align 8
  %str.tag.match49 = icmp eq i64 %str.tag41, %arena.gen48
  br i1 %str.tag.match49, label %str_ok44, label %str_stale45

str_ok44:                                         ; preds = %str_stale45, %str_gen_check43, %concat.tot.len35
  %concat.lhs50 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs51 = load ptr, ptr %concat.lhs50, align 8
  %concat.rhs52 = load i64, ptr @str.85.struct, align 8
  %concat.rhs53 = and i64 %concat.rhs52, 281474976710655
  %str.tag54 = lshr i64 %concat.rhs52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

str_stale45:                                      ; preds = %str_gen_check43
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok44

str_gen_check56:                                  ; preds = %str_ok44
  %arena.gen59 = call ptr @dva_arena_current()
  %arena.gen60 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen59, i32 0, i32 4
  %arena.gen61 = load i64, ptr %arena.gen60, align 8
  %str.tag.match62 = icmp eq i64 %str.tag54, %arena.gen61
  br i1 %str.tag.match62, label %str_ok57, label %str_stale58

str_ok57:                                         ; preds = %str_stale58, %str_gen_check56, %str_ok44
  %concat.rhs63 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.85.struct, i32 0, i32 1), align 8
  %concat.sum.len64 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs40, i64 %concat.rhs53)
  %sum65 = extractvalue { i64, i1 } %concat.sum.len64, 0
  %ovf66 = extractvalue { i64, i1 } %concat.sum.len64, 1
  br i1 %ovf66, label %str_overflow_abort68, label %concat.sum.len67

str_stale58:                                      ; preds = %str_gen_check56
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok57

concat.sum.len67:                                 ; preds = %str_overflow_abort68, %str_ok57
  %concat.tot.len69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum65, i64 1)
  %sum70 = extractvalue { i64, i1 } %concat.tot.len69, 0
  %ovf71 = extractvalue { i64, i1 } %concat.tot.len69, 1
  br i1 %ovf71, label %str_overflow_abort73, label %concat.tot.len72

str_overflow_abort68:                             ; preds = %str_ok57
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len67

concat.tot.len72:                                 ; preds = %str_overflow_abort73, %concat.sum.len67
  %arena.cur74 = call ptr @dva_arena_current()
  %concat.buf75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %sum70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf75, ptr align 1 %concat.lhs51, i64 %concat.lhs40, i1 false)
  %concat.mid76 = getelementptr i8, ptr %concat.buf75, i64 %concat.lhs40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid76, ptr align 1 %concat.rhs63, i64 %concat.rhs53, i1 false)
  %concat.nul77 = getelementptr i8, ptr %concat.buf75, i64 %sum65
  store i8 0, ptr %concat.nul77, align 1
  %arena.cur78 = call ptr @dva_arena_current()
  %concat.str79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 16)
  %str.build.len.gep80 = getelementptr inbounds { i64, ptr }, ptr %concat.str79, i32 0, i32 0
  store i64 %sum65, ptr %str.build.len.gep80, align 8
  %str.build.data.gep81 = getelementptr inbounds { i64, ptr }, ptr %concat.str79, i32 0, i32 1
  store ptr %concat.buf75, ptr %str.build.data.gep81, align 8
  %call.res82 = call i64 @"lexer::fail"(i64 1004, i64 %var.load12, i64 1, ptr %concat.str79)
  br label %choice.exit11

str_overflow_abort73:                             ; preds = %concat.sum.len67
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len72
}

define ptr @"lexer::layout"(ptr %0, i64 %1) #1 {
entry:
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  call void @"lexer::count_indent"(ptr %var.load, i64 0)
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 4
  store i64 0, ptr %fld.gep, align 8
  %var.load2 = load ptr, ptr %var.lx, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load2, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep3, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag = lshr i64 %str.len.query7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen9 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen10 = load i64, ptr %arena.gen9, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen10
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sge i64 %fld.load, %str.len.query8
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.lx, align 8
  %var.load12 = load ptr, ptr %var.lx, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load12, i32 0, i32 13
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %var.load15 = load ptr, ptr %var.lx, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 2
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %call.res = call ptr @"lexer::drain_to"(ptr %var.load11, i64 %fld.load14, i64 %fld.load17)
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load18 = load ptr, ptr %var.lx, align 8
  %var.load19 = load i64, ptr %var.q, align 8
  %call.res20 = call ptr @"lexer::line_token"(ptr %var.load18, i64 %var.load19)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ %call.res20, %choice.else ]
  ret ptr %choice.res
}

define ptr @"lexer::line_token"(ptr %0, i64 %1) #1 {
entry:
  %var.cm = alloca i1, align 1
  %var.nl = alloca i1, align 1
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load, i64 0)
  %val.match = icmp eq i64 %call.res, 10
  %val.match1 = icmp eq i64 %call.res, 13
  %case.or = or i1 %val.match, %val.match1
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.nl, align 1
  %var.load2 = load ptr, ptr %var.lx, align 8
  %call.res3 = call i64 @"lexer::pk"(ptr %var.load2, i64 0)
  %cmptmp = icmp eq i64 %call.res3, 47
  br i1 %cmptmp, label %and.100.then, label %and.100.else

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit

and.100.then:                                     ; preds = %choice.exit
  %var.load4 = load ptr, ptr %var.lx, align 8
  %call.res5 = call i64 @"lexer::pk_off"(ptr %var.load4, i64 1)
  %cmptmp6 = icmp eq i64 %call.res5, 47
  br label %and.100.exit

and.100.else:                                     ; preds = %choice.exit
  br label %and.100.exit

and.100.exit:                                     ; preds = %and.100.else, %and.100.then
  %and.100.phi = phi i1 [ %cmptmp6, %and.100.then ], [ %cmptmp, %and.100.else ]
  store i1 %and.100.phi, ptr %var.cm, align 1
  %var.load7 = load i1, ptr %var.nl, align 1
  br i1 %var.load7, label %or.101.then, label %or.101.else

or.101.then:                                      ; preds = %and.100.exit
  br label %or.101.exit

or.101.else:                                      ; preds = %and.100.exit
  %var.load8 = load i1, ptr %var.cm, align 1
  br label %or.101.exit

or.101.exit:                                      ; preds = %or.101.else, %or.101.then
  %or.101.phi = phi i1 [ %var.load7, %or.101.then ], [ %var.load8, %or.101.else ]
  br i1 %or.101.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.101.exit
  %var.load10 = load ptr, ptr %var.lx, align 8
  %var.load11 = load i64, ptr %var.q, align 8
  %call.res12 = call ptr @"lexer::skip_blank"(ptr %var.load10, i64 %var.load11)
  br label %choice.exit9

choice.else:                                      ; preds = %or.101.exit
  %var.load13 = load ptr, ptr %var.lx, align 8
  %var.load14 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load14, i32 0, i32 13
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load15 = load ptr, ptr %var.lx, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 2
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %call.res18 = call ptr @"lexer::layout_step"(ptr %var.load13, i64 %fld.load, i64 %fld.load17)
  br label %choice.exit9

choice.exit9:                                     ; preds = %choice.else, %choice.then
  %choice.res19 = phi ptr [ %call.res12, %choice.then ], [ %call.res18, %choice.else ]
  ret ptr %choice.res19
}

define ptr @"lexer::skip_blank"(ptr %0, i64 %1) #1 {
entry:
  %var.nl = alloca i1, align 1
  %var.cm = alloca i1, align 1
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load, i64 0)
  %cmptmp = icmp eq i64 %call.res, 47
  br i1 %cmptmp, label %and.102.then, label %and.102.else

and.102.then:                                     ; preds = %entry
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res2 = call i64 @"lexer::pk_off"(ptr %var.load1, i64 1)
  %cmptmp3 = icmp eq i64 %call.res2, 47
  br label %and.102.exit

and.102.else:                                     ; preds = %entry
  br label %and.102.exit

and.102.exit:                                     ; preds = %and.102.else, %and.102.then
  %and.102.phi = phi i1 [ %cmptmp3, %and.102.then ], [ %cmptmp, %and.102.else ]
  store i1 %and.102.phi, ptr %var.cm, align 1
  %var.load4 = load i1, ptr %var.cm, align 1
  br i1 %var.load4, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.102.exit
  %var.load5 = load ptr, ptr %var.lx, align 8
  %call.res6 = call i64 @"lexer::skip_line_comment"(ptr %var.load5, i64 0)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.102.exit
  %var.load7 = load ptr, ptr %var.lx, align 8
  %call.res8 = call i64 @"lexer::pk"(ptr %var.load7, i64 0)
  %val.match = icmp eq i64 %call.res8, 10
  %val.match10 = icmp eq i64 %call.res8, 13
  %case.or = or i1 %val.match, %val.match10
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit9:                                     ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.nl, align 1
  %var.load11 = load i1, ptr %var.nl, align 1
  br i1 %var.load11, label %choice.then12, label %choice.exit13

choice.case:                                      ; preds = %choice.exit
  br label %choice.exit9

choice.next:                                      ; preds = %choice.exit
  br label %choice.exit9

choice.then12:                                    ; preds = %choice.exit9
  %var.load14 = load ptr, ptr %var.lx, align 8
  %var.load15 = load ptr, ptr %var.lx, align 8
  %call.res16 = call i64 @"lexer::pk"(ptr %var.load15, i64 0)
  %call.res17 = call i64 @"lexer::adv"(ptr %var.load14, i64 %call.res16)
  br label %choice.exit13

choice.exit13:                                    ; preds = %choice.then12, %choice.exit9
  %var.load18 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load18, i32 0, i32 4
  store i64 1, ptr %fld.gep, align 8
  %var.load19 = load ptr, ptr %var.lx, align 8
  %var.load20 = load i64, ptr %var.q, align 8
  %call.res21 = call ptr @"lexer::layout"(ptr %var.load19, i64 %var.load20)
  ret ptr %call.res21
}

define ptr @"lexer::layout_step"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.top = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.depth = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.depth, align 8
  store i64 %2, ptr %var.line, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::stack_top"(ptr %var.load)
  store i64 %call.res, ptr %var.top, align 8
  %var.load1 = load i64, ptr %var.depth, align 8
  %var.load2 = load i64, ptr %var.top, align 8
  %cmptmp = icmp sgt i64 %var.load1, %var.load2
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.lx, align 8
  %var.load4 = load i64, ptr %var.depth, align 8
  call void @"lexer::stack_push"(ptr %var.load3, i64 %var.load4)
  %var.load5 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 16, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load6 = load i64, ptr %var.line, align 8
  %call.res7 = call ptr @"lexer::mktok"(ptr %var.load5, ptr %enum.alloc, i64 0, i64 0, i64 %var.load6, i64 1, ptr @str.86.struct)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load8 = load i64, ptr %var.depth, align 8
  %var.load9 = load i64, ptr %var.top, align 8
  %cmptmp10 = icmp slt i64 %var.load8, %var.load9
  br i1 %cmptmp10, label %choice.then11, label %choice.else12

choice.exit:                                      ; preds = %choice.exit13, %choice.then
  %choice.res20 = phi ptr [ %call.res7, %choice.then ], [ %choice.res, %choice.exit13 ]
  ret ptr %choice.res20

choice.then11:                                    ; preds = %choice.else
  %var.load14 = load ptr, ptr %var.lx, align 8
  %var.load15 = load i64, ptr %var.depth, align 8
  %var.load16 = load i64, ptr %var.line, align 8
  %call.res17 = call ptr @"lexer::drain_to"(ptr %var.load14, i64 %var.load15, i64 %var.load16)
  br label %choice.exit13

choice.else12:                                    ; preds = %choice.else
  %var.load18 = load ptr, ptr %var.lx, align 8
  %call.res19 = call ptr @"lexer::next_tok"(ptr %var.load18, i64 0)
  br label %choice.exit13

choice.exit13:                                    ; preds = %choice.else12, %choice.then11
  %choice.res = phi ptr [ %call.res17, %choice.then11 ], [ %call.res19, %choice.else12 ]
  br label %choice.exit
}

define ptr @"lexer::next_tok"(ptr %0, i64 %1) #1 {
entry:
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 9
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 8
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load3, i32 0, i32 0
  %a.len.query4 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp slt i64 %fld.load, %a.len.query4
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.lx, align 8
  %call.res = call ptr @"lexer::take_queued"(ptr %var.load5, i64 0)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load6 = load ptr, ptr %var.lx, align 8
  %var.load7 = load i64, ptr %var.q, align 8
  %call.res8 = call ptr @"lexer::dispatch_bol"(ptr %var.load6, i64 %var.load7)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ %call.res8, %choice.else ]
  ret ptr %choice.res
}

define ptr @"lexer::dispatch_bol"(ptr %0, i64 %1) #1 {
entry:
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %val.match = icmp eq i64 %fld.load, 1
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %call.res, %choice.case ], [ %call.res4, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.lx, align 8
  %var.load2 = load i64, ptr %var.q, align 8
  %call.res = call ptr @"lexer::layout"(ptr %var.load1, i64 %var.load2)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.lx, align 8
  %call.res4 = call ptr @"lexer::dispatch_scan"(ptr %var.load3)
  br label %choice.exit
}

define ptr @"lexer::dispatch_scan"(ptr %0) #1 {
entry:
  %var.c = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  call void @"lexer::skip_hws"(ptr %var.load, i64 0)
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  store i64 %call.res, ptr %var.c, align 8
  %var.load2 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load2, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next156, %choice.case155, %choice.case140, %choice.case126, %choice.case112, %choice.case98, %choice.case87, %choice.case75, %choice.case58, %choice.case41, %choice.case30, %choice.case19, %choice.case6, %choice.case
  %choice.res = phi ptr [ %call.res5, %choice.case ], [ %call.res18, %choice.case6 ], [ %call.res29, %choice.case19 ], [ %call.res40, %choice.case30 ], [ %call.res57, %choice.case41 ], [ %call.res74, %choice.case58 ], [ %call.res86, %choice.case75 ], [ %call.res97, %choice.case87 ], [ %call.res111, %choice.case98 ], [ %call.res125, %choice.case112 ], [ %call.res139, %choice.case126 ], [ %call.res154, %choice.case140 ], [ %call.res168, %choice.case155 ], [ %call.res176, %choice.next156 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.lx, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load4, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res5 = call ptr @"lexer::flush_indents"(ptr %var.load3, i64 %fld.load)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %cmptmp = icmp eq i64 %var.load2, 47
  br i1 %cmptmp, label %and.105.then, label %and.105.else

choice.case6:                                     ; preds = %and.105.exit
  %var.load11 = load ptr, ptr %var.lx, align 8
  %var.load12 = load ptr, ptr %var.lx, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load12, i32 0, i32 2
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %var.load15 = load ptr, ptr %var.lx, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 3
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %call.res18 = call ptr @"lexer::comment_block"(ptr %var.load11, i64 %fld.load14, i64 %fld.load17)
  br label %choice.exit

choice.next7:                                     ; preds = %and.105.exit
  %cmptmp21 = icmp eq i64 %var.load2, 47
  br i1 %cmptmp21, label %and.106.then, label %and.106.else

and.105.then:                                     ; preds = %choice.next
  %var.load8 = load ptr, ptr %var.lx, align 8
  %call.res9 = call i64 @"lexer::pk_off"(ptr %var.load8, i64 1)
  %cmptmp10 = icmp eq i64 %call.res9, 42
  br label %and.105.exit

and.105.else:                                     ; preds = %choice.next
  br label %and.105.exit

and.105.exit:                                     ; preds = %and.105.else, %and.105.then
  %and.105.phi = phi i1 [ %cmptmp10, %and.105.then ], [ %cmptmp, %and.105.else ]
  br i1 %and.105.phi, label %choice.case6, label %choice.next7

choice.case19:                                    ; preds = %and.106.exit
  %var.load25 = load ptr, ptr %var.lx, align 8
  %var.load26 = load ptr, ptr %var.lx, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %call.res29 = call ptr @"lexer::comment_line"(ptr %var.load25, i64 %fld.load28)
  br label %choice.exit

choice.next20:                                    ; preds = %and.106.exit
  %val.match32 = icmp eq i64 %var.load2, 10
  br i1 %val.match32, label %choice.case30, label %choice.next31

and.106.then:                                     ; preds = %choice.next7
  %var.load22 = load ptr, ptr %var.lx, align 8
  %call.res23 = call i64 @"lexer::pk_off"(ptr %var.load22, i64 1)
  %cmptmp24 = icmp eq i64 %call.res23, 47
  br label %and.106.exit

and.106.else:                                     ; preds = %choice.next7
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %and.106.then
  %and.106.phi = phi i1 [ %cmptmp24, %and.106.then ], [ %cmptmp21, %and.106.else ]
  br i1 %and.106.phi, label %choice.case19, label %choice.next20

choice.case30:                                    ; preds = %choice.next20
  %var.load33 = load ptr, ptr %var.lx, align 8
  %var.load34 = load ptr, ptr %var.lx, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load34, i32 0, i32 2
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  %var.load37 = load ptr, ptr %var.lx, align 8
  %fld.gep38 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load37, i32 0, i32 3
  %fld.load39 = load i64, ptr %fld.gep38, align 8
  %call.res40 = call ptr @"lexer::nl_tok"(ptr %var.load33, i64 %fld.load36, i64 %fld.load39)
  br label %choice.exit

choice.next31:                                    ; preds = %choice.next20
  %cmptmp43 = icmp eq i64 %var.load2, 40
  br i1 %cmptmp43, label %and.107.then, label %and.107.else

choice.case41:                                    ; preds = %and.107.exit
  %var.load47 = load ptr, ptr %var.lx, align 8
  %var.load48 = load ptr, ptr %var.lx, align 8
  %fld.gep49 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load48, i32 0, i32 1
  %fld.load50 = load i64, ptr %fld.gep49, align 8
  %var.load51 = load ptr, ptr %var.lx, align 8
  %fld.gep52 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load51, i32 0, i32 2
  %fld.load53 = load i64, ptr %fld.gep52, align 8
  %var.load54 = load ptr, ptr %var.lx, align 8
  %fld.gep55 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load54, i32 0, i32 3
  %fld.load56 = load i64, ptr %fld.gep55, align 8
  %call.res57 = call ptr @"lexer::scan_raw_string"(ptr %var.load47, i64 %fld.load50, i64 %fld.load53, i64 %fld.load56)
  br label %choice.exit

choice.next42:                                    ; preds = %and.107.exit
  %cmptmp60 = icmp eq i64 %var.load2, 37
  br i1 %cmptmp60, label %and.108.then, label %and.108.else

and.107.then:                                     ; preds = %choice.next31
  %var.load44 = load ptr, ptr %var.lx, align 8
  %call.res45 = call i64 @"lexer::pk_off"(ptr %var.load44, i64 1)
  %cmptmp46 = icmp eq i64 %call.res45, 61
  br label %and.107.exit

and.107.else:                                     ; preds = %choice.next31
  br label %and.107.exit

and.107.exit:                                     ; preds = %and.107.else, %and.107.then
  %and.107.phi = phi i1 [ %cmptmp46, %and.107.then ], [ %cmptmp43, %and.107.else ]
  br i1 %and.107.phi, label %choice.case41, label %choice.next42

choice.case58:                                    ; preds = %and.108.exit
  %var.load64 = load ptr, ptr %var.lx, align 8
  %var.load65 = load ptr, ptr %var.lx, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load65, i32 0, i32 1
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  %var.load68 = load ptr, ptr %var.lx, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load68, i32 0, i32 2
  %fld.load70 = load i64, ptr %fld.gep69, align 8
  %var.load71 = load ptr, ptr %var.lx, align 8
  %fld.gep72 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load71, i32 0, i32 3
  %fld.load73 = load i64, ptr %fld.gep72, align 8
  %call.res74 = call ptr @"lexer::scan_intrinsic"(ptr %var.load64, i64 %fld.load67, i64 %fld.load70, i64 %fld.load73)
  br label %choice.exit

choice.next59:                                    ; preds = %and.108.exit
  %call.res77 = call i1 @"lexer::is_delim"(i64 %var.load2)
  br i1 %call.res77, label %choice.case75, label %choice.next76

and.108.then:                                     ; preds = %choice.next42
  %var.load61 = load ptr, ptr %var.lx, align 8
  %call.res62 = call i64 @"lexer::pk_off"(ptr %var.load61, i64 1)
  %call.res63 = call i1 @"lexer::is_id_start"(i64 %call.res62)
  br label %and.108.exit

and.108.else:                                     ; preds = %choice.next42
  br label %and.108.exit

and.108.exit:                                     ; preds = %and.108.else, %and.108.then
  %and.108.phi = phi i1 [ %call.res63, %and.108.then ], [ %cmptmp60, %and.108.else ]
  br i1 %and.108.phi, label %choice.case58, label %choice.next59

choice.case75:                                    ; preds = %choice.next59
  %var.load78 = load ptr, ptr %var.lx, align 8
  %var.load79 = load i64, ptr %var.c, align 8
  %var.load80 = load ptr, ptr %var.lx, align 8
  %fld.gep81 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load80, i32 0, i32 2
  %fld.load82 = load i64, ptr %fld.gep81, align 8
  %var.load83 = load ptr, ptr %var.lx, align 8
  %fld.gep84 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load83, i32 0, i32 3
  %fld.load85 = load i64, ptr %fld.gep84, align 8
  %call.res86 = call ptr @"lexer::scan_delim"(ptr %var.load78, i64 %var.load79, i64 %fld.load82, i64 %fld.load85)
  br label %choice.exit

choice.next76:                                    ; preds = %choice.next59
  %val.match89 = icmp eq i64 %var.load2, 35
  br i1 %val.match89, label %choice.case87, label %choice.next88

choice.case87:                                    ; preds = %choice.next76
  %var.load90 = load ptr, ptr %var.lx, align 8
  %var.load91 = load ptr, ptr %var.lx, align 8
  %fld.gep92 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load91, i32 0, i32 2
  %fld.load93 = load i64, ptr %fld.gep92, align 8
  %var.load94 = load ptr, ptr %var.lx, align 8
  %fld.gep95 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load94, i32 0, i32 3
  %fld.load96 = load i64, ptr %fld.gep95, align 8
  %call.res97 = call ptr @"lexer::scan_hash"(ptr %var.load90, i64 %fld.load93, i64 %fld.load96)
  br label %choice.exit

choice.next88:                                    ; preds = %choice.next76
  %call.res100 = call i1 @"unicode::is_digit"(i64 %var.load2)
  br i1 %call.res100, label %choice.case98, label %choice.next99

choice.case98:                                    ; preds = %choice.next88
  %var.load101 = load ptr, ptr %var.lx, align 8
  %var.load102 = load ptr, ptr %var.lx, align 8
  %fld.gep103 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load102, i32 0, i32 1
  %fld.load104 = load i64, ptr %fld.gep103, align 8
  %var.load105 = load ptr, ptr %var.lx, align 8
  %fld.gep106 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load105, i32 0, i32 2
  %fld.load107 = load i64, ptr %fld.gep106, align 8
  %var.load108 = load ptr, ptr %var.lx, align 8
  %fld.gep109 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load108, i32 0, i32 3
  %fld.load110 = load i64, ptr %fld.gep109, align 8
  %call.res111 = call ptr @"lexer::scan_num"(ptr %var.load101, i64 %fld.load104, i64 %fld.load107, i64 %fld.load110)
  br label %choice.exit

choice.next99:                                    ; preds = %choice.next88
  %val.match114 = icmp eq i64 %var.load2, 39
  br i1 %val.match114, label %choice.case112, label %choice.next113

choice.case112:                                   ; preds = %choice.next99
  %var.load115 = load ptr, ptr %var.lx, align 8
  %var.load116 = load ptr, ptr %var.lx, align 8
  %fld.gep117 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load116, i32 0, i32 1
  %fld.load118 = load i64, ptr %fld.gep117, align 8
  %var.load119 = load ptr, ptr %var.lx, align 8
  %fld.gep120 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load119, i32 0, i32 2
  %fld.load121 = load i64, ptr %fld.gep120, align 8
  %var.load122 = load ptr, ptr %var.lx, align 8
  %fld.gep123 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load122, i32 0, i32 3
  %fld.load124 = load i64, ptr %fld.gep123, align 8
  %call.res125 = call ptr @"lexer::scan_rune"(ptr %var.load115, i64 %fld.load118, i64 %fld.load121, i64 %fld.load124)
  br label %choice.exit

choice.next113:                                   ; preds = %choice.next99
  %call.res128 = call i1 @"lexer::is_special"(i64 %var.load2)
  br i1 %call.res128, label %choice.case126, label %choice.next127

choice.case126:                                   ; preds = %choice.next113
  %var.load129 = load ptr, ptr %var.lx, align 8
  %var.load130 = load ptr, ptr %var.lx, align 8
  %fld.gep131 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load130, i32 0, i32 1
  %fld.load132 = load i64, ptr %fld.gep131, align 8
  %var.load133 = load ptr, ptr %var.lx, align 8
  %fld.gep134 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load133, i32 0, i32 2
  %fld.load135 = load i64, ptr %fld.gep134, align 8
  %var.load136 = load ptr, ptr %var.lx, align 8
  %fld.gep137 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load136, i32 0, i32 3
  %fld.load138 = load i64, ptr %fld.gep137, align 8
  %call.res139 = call ptr @"lexer::scan_op"(ptr %var.load129, i64 %fld.load132, i64 %fld.load135, i64 %fld.load138)
  br label %choice.exit

choice.next127:                                   ; preds = %choice.next113
  %call.res142 = call i1 @"unicode::is_alpha"(i64 %var.load2)
  %val.match143 = icmp eq i64 %var.load2, 95
  %case.or = or i1 %call.res142, %val.match143
  br i1 %case.or, label %choice.case140, label %choice.next141

choice.case140:                                   ; preds = %choice.next127
  %var.load144 = load ptr, ptr %var.lx, align 8
  %var.load145 = load ptr, ptr %var.lx, align 8
  %fld.gep146 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load145, i32 0, i32 1
  %fld.load147 = load i64, ptr %fld.gep146, align 8
  %var.load148 = load ptr, ptr %var.lx, align 8
  %fld.gep149 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load148, i32 0, i32 2
  %fld.load150 = load i64, ptr %fld.gep149, align 8
  %var.load151 = load ptr, ptr %var.lx, align 8
  %fld.gep152 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load151, i32 0, i32 3
  %fld.load153 = load i64, ptr %fld.gep152, align 8
  %call.res154 = call ptr @"lexer::scan_ident"(ptr %var.load144, i64 %fld.load147, i64 %fld.load150, i64 %fld.load153)
  br label %choice.exit

choice.next141:                                   ; preds = %choice.next127
  %val.match157 = icmp eq i64 %var.load2, 34
  br i1 %val.match157, label %choice.case155, label %choice.next156

choice.case155:                                   ; preds = %choice.next141
  %var.load158 = load ptr, ptr %var.lx, align 8
  %var.load159 = load ptr, ptr %var.lx, align 8
  %fld.gep160 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load159, i32 0, i32 1
  %fld.load161 = load i64, ptr %fld.gep160, align 8
  %var.load162 = load ptr, ptr %var.lx, align 8
  %fld.gep163 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load162, i32 0, i32 2
  %fld.load164 = load i64, ptr %fld.gep163, align 8
  %var.load165 = load ptr, ptr %var.lx, align 8
  %fld.gep166 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load165, i32 0, i32 3
  %fld.load167 = load i64, ptr %fld.gep166, align 8
  %call.res168 = call ptr @"lexer::scan_string"(ptr %var.load158, i64 %fld.load161, i64 %fld.load164, i64 %fld.load167)
  br label %choice.exit

choice.next156:                                   ; preds = %choice.next141
  %var.load169 = load ptr, ptr %var.lx, align 8
  %var.load170 = load ptr, ptr %var.lx, align 8
  %fld.gep171 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load170, i32 0, i32 2
  %fld.load172 = load i64, ptr %fld.gep171, align 8
  %var.load173 = load ptr, ptr %var.lx, align 8
  %fld.gep174 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load173, i32 0, i32 3
  %fld.load175 = load i64, ptr %fld.gep174, align 8
  %call.res176 = call ptr @"lexer::eof_tok"(ptr %var.load169, i64 %fld.load172, i64 %fld.load175)
  br label %choice.exit
}

define void @"lexer::skip_hws"(ptr %0, i64 %1) #1 {
entry:
  %var.is_hws = alloca i1, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.103 = alloca i64, align 8
  %loop.idx.103 = alloca i64, align 8
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  store i64 0, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.header.103:                                  ; preds = %loop.latch.103, %entry
  %counter.load = load i64, ptr %loop.idx.103, align 8
  br label %loop.body.103

loop.body.103:                                    ; preds = %loop.header.103
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.103, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load, i64 0)
  %val.match = icmp eq i64 %call.res, 32
  %val.match1 = icmp eq i64 %call.res, 9
  %case.or = or i1 %val.match, %val.match1
  %val.match2 = icmp eq i64 %call.res, 13
  %case.or3 = or i1 %case.or, %val.match2
  br i1 %case.or3, label %choice.case, label %choice.next

loop.exit.nat.103:                                ; No predecessors!
  br label %loop.exit.103

loop.latch.103:                                   ; preds = %choice.exit5
  %step.val = load i64, ptr %loop.step.103, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.exit.103:                                    ; preds = %choice.else, %loop.exit.nat.103
  ret void

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.is_hws, align 1
  %var.load4 = load i1, ptr %var.is_hws, align 1
  br i1 %var.load4, label %choice.then, label %choice.else

choice.case:                                      ; preds = %loop.body.103
  br label %choice.exit

choice.next:                                      ; preds = %loop.body.103
  br label %choice.exit

choice.then:                                      ; preds = %choice.exit
  %var.load6 = load ptr, ptr %var.lx, align 8
  %var.load7 = load ptr, ptr %var.lx, align 8
  %call.res8 = call i64 @"lexer::pk"(ptr %var.load7, i64 0)
  %call.res9 = call i64 @"lexer::adv"(ptr %var.load6, i64 %call.res8)
  %var.load10 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load10, i32 0, i32 10
  store i1 true, ptr %fld.gep, align 1
  br label %choice.exit5

choice.else:                                      ; preds = %choice.exit
  br label %loop.exit.103

choice.exit5:                                     ; preds = %choice.then
  br label %loop.latch.103
}

define ptr @"lexer::flush_indents"(ptr %0, i64 %1) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.104 = alloca i64, align 8
  %loop.idx.104 = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 0, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.header.104:                                  ; preds = %loop.latch.104, %entry
  %counter.load = load i64, ptr %loop.idx.104, align 8
  br label %loop.body.104

loop.body.104:                                    ; preds = %loop.header.104
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.104, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp sgt i64 %fld.load, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.104:                                ; No predecessors!
  br label %loop.exit.104

loop.latch.104:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.104, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.exit.104:                                    ; preds = %choice.else, %loop.exit.nat.104
  %var.load6 = load ptr, ptr %var.lx, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load6, i32 0, i32 9
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %var.load9 = load ptr, ptr %var.lx, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load9, i32 0, i32 8
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 0
  %a.len.query12 = load i64, ptr %a.len.query, align 8
  %cmptmp13 = icmp slt i64 %fld.load8, %a.len.query12
  br i1 %cmptmp13, label %choice.then14, label %choice.else15

choice.then:                                      ; preds = %loop.body.104
  %var.load1 = load ptr, ptr %var.lx, align 8
  call void @"lexer::stack_pop"(ptr %var.load1, i64 0)
  %var.load2 = load ptr, ptr %var.lx, align 8
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 3
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  call void @"lexer::queue_dedent"(ptr %var.load2, i64 0, i64 %fld.load5)
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.104
  br label %loop.exit.104

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.104

choice.then14:                                    ; preds = %loop.exit.104
  %var.load17 = load ptr, ptr %var.lx, align 8
  %call.res = call ptr @"lexer::take_queued"(ptr %var.load17, i64 0)
  br label %choice.exit16

choice.else15:                                    ; preds = %loop.exit.104
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load18 = load ptr, ptr %var.lx, align 8
  %fld.gep19 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load18, i32 0, i32 1
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %var.load21 = load i64, ptr %var.line, align 8
  %var.load22 = load ptr, ptr %var.lx, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load22, i32 0, i32 3
  %fld.load24 = load i64, ptr %fld.gep23, align 8
  %arena.cur25 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc, ptr %rec.fld, align 8
  %rec.fld26 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %fld.load20, ptr %rec.fld26, align 8
  %rec.fld27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld27, align 8
  %rec.fld28 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load21, ptr %rec.fld28, align 8
  %rec.fld29 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load24, ptr %rec.fld29, align 8
  %rec.fld30 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld30, align 1
  %rec.fld31 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store i1 false, ptr %rec.fld31, align 1
  %rec.fld32 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.0.struct, ptr %rec.fld32, align 8
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else15, %choice.then14
  %choice.res = phi ptr [ %call.res, %choice.then14 ], [ %rec.alloc, %choice.else15 ]
  ret ptr %choice.res
}

define ptr @"lexer::comment_block"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 10
  store i1 false, ptr %fld.gep, align 1
  %var.load1 = load ptr, ptr %var.lx, align 8
  %var.load2 = load i64, ptr %var.line, align 8
  %var.load3 = load i64, ptr %var.col, align 8
  call void @"lexer::skip_block_comment"(ptr %var.load1, i64 %var.load2, i64 %var.load3)
  %var.load4 = load ptr, ptr %var.lx, align 8
  %call.res = call ptr @"lexer::next_tok"(ptr %var.load4, i64 0)
  ret ptr %call.res
}

define ptr @"lexer::comment_line"(ptr %0, i64 %1) #1 {
entry:
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 10
  store i1 false, ptr %fld.gep, align 1
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::skip_line_comment"(ptr %var.load1, i64 0)
  %var.load2 = load ptr, ptr %var.lx, align 8
  %call.res3 = call ptr @"lexer::next_tok"(ptr %var.load2, i64 0)
  ret ptr %call.res3
}

define ptr @"lexer::nl_tok"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 4
  store i64 1, ptr %fld.gep, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 18, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load5 = load i64, ptr %var.line, align 8
  %var.load6 = load i64, ptr %var.col, align 8
  %call.res7 = call ptr @"lexer::mktok"(ptr %var.load4, ptr %enum.alloc, i64 0, i64 0, i64 %var.load5, i64 %var.load6, ptr @str.8.struct)
  ret ptr %call.res7
}

define ptr @"lexer::scan_intrinsic"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.word = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::adv"(ptr %var.load, i64 37)
  %var.load1 = load ptr, ptr %var.lx, align 8
  %var.load2 = load i64, ptr %var.start, align 8
  %addtmp = add i64 %var.load2, 1
  %call.res3 = call ptr @"lexer::scan_id"(ptr %var.load1, i64 %addtmp)
  store ptr %call.res3, ptr %var.word, align 8
  %var.load4 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 2, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load5 = load i64, ptr %var.start, align 8
  %var.load6 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load6, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load7 = load i64, ptr %var.start, align 8
  %subtmp = sub i64 %fld.load, %var.load7
  %var.load8 = load i64, ptr %var.line, align 8
  %var.load9 = load i64, ptr %var.col, align 8
  %var.load10 = load ptr, ptr %var.word, align 8
  %concat.lhs = load i64, ptr @str.87.struct, align 8
  %concat.lhs11 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen12 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen13 = load i64, ptr %arena.gen12, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen13
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs14 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.87.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %concat.rhs15 = load i64, ptr %concat.rhs, align 8
  %concat.rhs16 = and i64 %concat.rhs15, 281474976710655
  %str.tag17 = lshr i64 %concat.rhs15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check19:                                  ; preds = %str_ok
  %arena.gen22 = call ptr @dva_arena_current()
  %arena.gen23 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen22, i32 0, i32 4
  %arena.gen24 = load i64, ptr %arena.gen23, align 8
  %str.tag.match25 = icmp eq i64 %str.tag17, %arena.gen24
  br i1 %str.tag.match25, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %str_ok
  %concat.rhs26 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %concat.rhs27 = load ptr, ptr %concat.rhs26, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs11, i64 %concat.rhs16)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len28

str_stale21:                                      ; preds = %str_gen_check19
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

concat.sum.len28:                                 ; preds = %str_overflow_abort, %str_ok20
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum29 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf30 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf30, label %str_overflow_abort32, label %concat.tot.len31

str_overflow_abort:                               ; preds = %str_ok20
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len28

concat.tot.len31:                                 ; preds = %str_overflow_abort32, %concat.sum.len28
  %arena.cur33 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %sum29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs14, i64 %concat.lhs11, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs27, i64 %concat.rhs16, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur34 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res35 = call ptr @"lexer::mktok"(ptr %var.load4, ptr %enum.alloc, i64 %var.load5, i64 %subtmp, i64 %var.load8, i64 %var.load9, ptr %concat.str)
  ret ptr %call.res35

str_overflow_abort32:                             ; preds = %concat.sum.len28
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len31
}

define ptr @"lexer::scan_delim"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.p = alloca i64, align 8
  %var.kind = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.c, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load, 40
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next44, %choice.case43, %choice.case36, %choice.case29, %choice.case22, %choice.case15, %choice.case8, %choice.case1, %choice.case
  %choice.res = phi ptr [ %enum.alloc, %choice.case ], [ %enum.alloc5, %choice.case1 ], [ %enum.alloc12, %choice.case8 ], [ %enum.alloc19, %choice.case15 ], [ %enum.alloc26, %choice.case22 ], [ %enum.alloc33, %choice.case29 ], [ %enum.alloc40, %choice.case36 ], [ %enum.alloc47, %choice.case43 ], [ %enum.alloc51, %choice.next44 ]
  store ptr %choice.res, ptr %var.kind, align 8
  %var.load54 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load54, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.p, align 8
  %var.load55 = load ptr, ptr %var.lx, align 8
  %var.load56 = load i64, ptr %var.c, align 8
  %call.res = call i64 @"lexer::adv"(ptr %var.load55, i64 %var.load56)
  %var.load57 = load ptr, ptr %var.lx, align 8
  %var.load58 = load ptr, ptr %var.kind, align 8
  %var.load59 = load i64, ptr %var.p, align 8
  %var.load60 = load i64, ptr %var.line, align 8
  %var.load61 = load i64, ptr %var.col, align 8
  %var.load62 = load ptr, ptr %var.lx, align 8
  %fld.gep63 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load62, i32 0, i32 0
  %fld.load64 = load ptr, ptr %fld.gep63, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load64, i32 0, i32 0
  %s.read.len65 = load i64, ptr %s.read.len, align 8
  %s.read.len66 = and i64 %s.read.len65, 281474976710655
  %str.tag = lshr i64 %s.read.len65, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.case:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 10, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 41
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  %arena.cur4 = call ptr @dva_arena_current()
  %enum.alloc5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  %tag.gep6 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc5, i32 0, i32 0
  store i64 11, ptr %tag.gep6, align 8
  %pay.gep7 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc5, i32 0, i32 1
  store ptr null, ptr %pay.gep7, align 8
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %val.match10 = icmp eq i64 %var.load, 91
  br i1 %val.match10, label %choice.case8, label %choice.next9

choice.case8:                                     ; preds = %choice.next2
  %arena.cur11 = call ptr @dva_arena_current()
  %enum.alloc12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  %tag.gep13 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc12, i32 0, i32 0
  store i64 8, ptr %tag.gep13, align 8
  %pay.gep14 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc12, i32 0, i32 1
  store ptr null, ptr %pay.gep14, align 8
  br label %choice.exit

choice.next9:                                     ; preds = %choice.next2
  %val.match17 = icmp eq i64 %var.load, 93
  br i1 %val.match17, label %choice.case15, label %choice.next16

choice.case15:                                    ; preds = %choice.next9
  %arena.cur18 = call ptr @dva_arena_current()
  %enum.alloc19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %tag.gep20 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc19, i32 0, i32 0
  store i64 9, ptr %tag.gep20, align 8
  %pay.gep21 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc19, i32 0, i32 1
  store ptr null, ptr %pay.gep21, align 8
  br label %choice.exit

choice.next16:                                    ; preds = %choice.next9
  %val.match24 = icmp eq i64 %var.load, 123
  br i1 %val.match24, label %choice.case22, label %choice.next23

choice.case22:                                    ; preds = %choice.next16
  %arena.cur25 = call ptr @dva_arena_current()
  %enum.alloc26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %tag.gep27 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc26, i32 0, i32 0
  store i64 12, ptr %tag.gep27, align 8
  %pay.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc26, i32 0, i32 1
  store ptr null, ptr %pay.gep28, align 8
  br label %choice.exit

choice.next23:                                    ; preds = %choice.next16
  %val.match31 = icmp eq i64 %var.load, 125
  br i1 %val.match31, label %choice.case29, label %choice.next30

choice.case29:                                    ; preds = %choice.next23
  %arena.cur32 = call ptr @dva_arena_current()
  %enum.alloc33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc33, i32 0, i32 0
  store i64 13, ptr %tag.gep34, align 8
  %pay.gep35 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc33, i32 0, i32 1
  store ptr null, ptr %pay.gep35, align 8
  br label %choice.exit

choice.next30:                                    ; preds = %choice.next23
  %val.match38 = icmp eq i64 %var.load, 44
  br i1 %val.match38, label %choice.case36, label %choice.next37

choice.case36:                                    ; preds = %choice.next30
  %arena.cur39 = call ptr @dva_arena_current()
  %enum.alloc40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %tag.gep41 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc40, i32 0, i32 0
  store i64 14, ptr %tag.gep41, align 8
  %pay.gep42 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc40, i32 0, i32 1
  store ptr null, ptr %pay.gep42, align 8
  br label %choice.exit

choice.next37:                                    ; preds = %choice.next30
  %val.match45 = icmp eq i64 %var.load, 59
  br i1 %val.match45, label %choice.case43, label %choice.next44

choice.case43:                                    ; preds = %choice.next37
  %arena.cur46 = call ptr @dva_arena_current()
  %enum.alloc47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  %tag.gep48 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc47, i32 0, i32 0
  store i64 15, ptr %tag.gep48, align 8
  %pay.gep49 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc47, i32 0, i32 1
  store ptr null, ptr %pay.gep49, align 8
  br label %choice.exit

choice.next44:                                    ; preds = %choice.next37
  %arena.cur50 = call ptr @dva_arena_current()
  %enum.alloc51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %tag.gep52 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc51, i32 0, i32 0
  store i64 0, ptr %tag.gep52, align 8
  %pay.gep53 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc51, i32 0, i32 1
  store ptr null, ptr %pay.gep53, align 8
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen67 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen68 = load i64, ptr %arena.gen67, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen68
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load64, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data, align 8
  %var.load70 = load i64, ptr %var.p, align 8
  %var.load71 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load71, 1
  %start.is_neg = icmp slt i64 %var.load70, 0
  %rel.start = add i64 %s.read.len66, %var.load70
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load70
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len66
  %final.start = select i1 %start.gt.len, i64 %s.read.len66, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %s.read.len66, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len66
  %final.end = select i1 %end.gt.len, i64 %s.read.len66, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data69, i64 %final.start
  %arena.cur72 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %call.res73 = call ptr @"lexer::mktok"(ptr %var.load57, ptr %var.load58, i64 %var.load59, i64 1, i64 %var.load60, i64 %var.load61, ptr %str.view)
  ret ptr %call.res73

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define ptr @"lexer::scan_ident"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.word = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load i64, ptr %var.start, align 8
  %call.res = call ptr @"lexer::scan_id"(ptr %var.load, i64 %var.load1)
  store ptr %call.res, ptr %var.word, align 8
  %var.load2 = load ptr, ptr %var.word, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %eq.lhs.len3 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len4 = and i64 %eq.lhs.len3, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %call.res25, %choice.case ], [ %call.res40, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %str.eq.merge
  %var.load18 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 20, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load19 = load i64, ptr %var.start, align 8
  %var.load20 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load20, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load21 = load i64, ptr %var.start, align 8
  %subtmp = sub i64 %fld.load, %var.load21
  %var.load22 = load i64, ptr %var.line, align 8
  %var.load23 = load i64, ptr %var.col, align 8
  %var.load24 = load ptr, ptr %var.word, align 8
  %call.res25 = call ptr @"lexer::mktok"(ptr %var.load18, ptr %enum.alloc, i64 %var.load19, i64 %subtmp, i64 %var.load22, i64 %var.load23, ptr %var.load24)
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge
  %var.load26 = load ptr, ptr %var.lx, align 8
  %arena.cur27 = call ptr @dva_arena_current()
  %enum.alloc28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %tag.gep29 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc28, i32 0, i32 0
  store i64 2, ptr %tag.gep29, align 8
  %pay.gep30 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc28, i32 0, i32 1
  store ptr null, ptr %pay.gep30, align 8
  %var.load31 = load i64, ptr %var.start, align 8
  %var.load32 = load ptr, ptr %var.lx, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load32, i32 0, i32 1
  %fld.load34 = load i64, ptr %fld.gep33, align 8
  %var.load35 = load i64, ptr %var.start, align 8
  %subtmp36 = sub i64 %fld.load34, %var.load35
  %var.load37 = load i64, ptr %var.line, align 8
  %var.load38 = load i64, ptr %var.col, align 8
  %var.load39 = load ptr, ptr %var.word, align 8
  %call.res40 = call ptr @"lexer::mktok"(ptr %var.load26, ptr %enum.alloc28, i64 %var.load31, i64 %subtmp36, i64 %var.load37, i64 %var.load38, ptr %var.load39)
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen5 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen6 = load i64, ptr %arena.gen5, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen6
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.54.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %str.tag8 = lshr i64 %eq.rhs.len, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check10:                                  ; preds = %str_ok
  %arena.gen13 = call ptr @dva_arena_current()
  %arena.gen14 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen13, i32 0, i32 4
  %arena.gen15 = load i64, ptr %arena.gen14, align 8
  %str.tag.match16 = icmp eq i64 %str.tag8, %arena.gen15
  br i1 %str.tag.match16, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len4, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale12:                                      ; preds = %str_gen_check10
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str.eq.then:                                      ; preds = %str_ok11
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %eq.lhs.data17 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.54.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data17, ptr %eq.rhs.data, i64 %eq.lhs.len4)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok11
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next
}

define ptr @"lexer::eof_tok"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load2 = load i64, ptr %var.line, align 8
  %var.load3 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"lexer::mktok"(ptr %var.load, ptr %enum.alloc, i64 %fld.load, i64 0, i64 %var.load2, i64 %var.load3, ptr @str.0.struct)
  ret ptr %call.res
}

define i64 @"lexer::show"(ptr %0) #1 {
entry:
  %var.line = alloca ptr, align 8
  %var.t = alloca ptr, align 8
  store ptr %0, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.t, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res = call ptr @"lexer::kind_name"(ptr %fld.load)
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
  %concat.rhs = load i64, ptr @str.111.struct, align 8
  %concat.rhs7 = and i64 %concat.rhs, 281474976710655
  %str.tag8 = lshr i64 %concat.rhs, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check10:                                  ; preds = %str_ok
  %arena.gen13 = call ptr @dva_arena_current()
  %arena.gen14 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen13, i32 0, i32 4
  %arena.gen15 = load i64, ptr %arena.gen14, align 8
  %str.tag.match16 = icmp eq i64 %str.tag8, %arena.gen15
  br i1 %str.tag.match16, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %str_ok
  %concat.rhs17 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.111.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs7)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len18

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

concat.sum.len18:                                 ; preds = %str_overflow_abort, %str_ok11
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum19 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf20 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf20, label %str_overflow_abort22, label %concat.tot.len21

str_overflow_abort:                               ; preds = %str_ok11
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len18

concat.tot.len21:                                 ; preds = %str_overflow_abort22, %concat.sum.len18
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs6, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs17, i64 %concat.rhs7, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load24 = load ptr, ptr %var.t, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %var.load24, i32 0, i32 7
  %fld.load26 = load ptr, ptr %fld.gep25, align 8
  %concat.lhs27 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs28 = load i64, ptr %concat.lhs27, align 8
  %concat.lhs29 = and i64 %concat.lhs28, 281474976710655
  %str.tag30 = lshr i64 %concat.lhs28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_overflow_abort22:                             ; preds = %concat.sum.len18
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len21

str_gen_check32:                                  ; preds = %concat.tot.len21
  %arena.gen35 = call ptr @dva_arena_current()
  %arena.gen36 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen35, i32 0, i32 4
  %arena.gen37 = load i64, ptr %arena.gen36, align 8
  %str.tag.match38 = icmp eq i64 %str.tag30, %arena.gen37
  br i1 %str.tag.match38, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %concat.tot.len21
  %concat.lhs39 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs40 = load ptr, ptr %concat.lhs39, align 8
  %concat.rhs41 = getelementptr inbounds { i64, ptr }, ptr %fld.load26, i32 0, i32 0
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
  %concat.rhs53 = getelementptr inbounds { i64, ptr }, ptr %fld.load26, i32 0, i32 1
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
  %concat.lhs73 = getelementptr inbounds { i64, ptr }, ptr %concat.str70, i32 0, i32 0
  %concat.lhs74 = load i64, ptr %concat.lhs73, align 8
  %concat.lhs75 = and i64 %concat.lhs74, 281474976710655
  %str.tag76 = lshr i64 %concat.lhs74, 48
  %str.immortal77 = icmp eq i64 %str.tag76, 0
  br i1 %str.immortal77, label %str_ok79, label %str_gen_check78

str_overflow_abort64:                             ; preds = %concat.sum.len58
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len63

str_gen_check78:                                  ; preds = %concat.tot.len63
  %arena.gen81 = call ptr @dva_arena_current()
  %arena.gen82 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen81, i32 0, i32 4
  %arena.gen83 = load i64, ptr %arena.gen82, align 8
  %str.tag.match84 = icmp eq i64 %str.tag76, %arena.gen83
  br i1 %str.tag.match84, label %str_ok79, label %str_stale80

str_ok79:                                         ; preds = %str_stale80, %str_gen_check78, %concat.tot.len63
  %concat.lhs85 = getelementptr inbounds { i64, ptr }, ptr %concat.str70, i32 0, i32 1
  %concat.lhs86 = load ptr, ptr %concat.lhs85, align 8
  %concat.rhs87 = load i64, ptr @str.8.struct, align 8
  %concat.rhs88 = and i64 %concat.rhs87, 281474976710655
  %str.tag89 = lshr i64 %concat.rhs87, 48
  %str.immortal90 = icmp eq i64 %str.tag89, 0
  br i1 %str.immortal90, label %str_ok92, label %str_gen_check91

str_stale80:                                      ; preds = %str_gen_check78
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok79

str_gen_check91:                                  ; preds = %str_ok79
  %arena.gen94 = call ptr @dva_arena_current()
  %arena.gen95 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen94, i32 0, i32 4
  %arena.gen96 = load i64, ptr %arena.gen95, align 8
  %str.tag.match97 = icmp eq i64 %str.tag89, %arena.gen96
  br i1 %str.tag.match97, label %str_ok92, label %str_stale93

str_ok92:                                         ; preds = %str_stale93, %str_gen_check91, %str_ok79
  %concat.rhs98 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len99 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs75, i64 %concat.rhs88)
  %sum100 = extractvalue { i64, i1 } %concat.sum.len99, 0
  %ovf101 = extractvalue { i64, i1 } %concat.sum.len99, 1
  br i1 %ovf101, label %str_overflow_abort103, label %concat.sum.len102

str_stale93:                                      ; preds = %str_gen_check91
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok92

concat.sum.len102:                                ; preds = %str_overflow_abort103, %str_ok92
  %concat.tot.len104 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum100, i64 1)
  %sum105 = extractvalue { i64, i1 } %concat.tot.len104, 0
  %ovf106 = extractvalue { i64, i1 } %concat.tot.len104, 1
  br i1 %ovf106, label %str_overflow_abort108, label %concat.tot.len107

str_overflow_abort103:                            ; preds = %str_ok92
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len102

concat.tot.len107:                                ; preds = %str_overflow_abort108, %concat.sum.len102
  %arena.cur109 = call ptr @dva_arena_current()
  %concat.buf110 = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 %sum105)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf110, ptr align 1 %concat.lhs86, i64 %concat.lhs75, i1 false)
  %concat.mid111 = getelementptr i8, ptr %concat.buf110, i64 %concat.lhs75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid111, ptr align 1 %concat.rhs98, i64 %concat.rhs88, i1 false)
  %concat.nul112 = getelementptr i8, ptr %concat.buf110, i64 %sum100
  store i8 0, ptr %concat.nul112, align 1
  %arena.cur113 = call ptr @dva_arena_current()
  %concat.str114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 16)
  %str.build.len.gep115 = getelementptr inbounds { i64, ptr }, ptr %concat.str114, i32 0, i32 0
  store i64 %sum100, ptr %str.build.len.gep115, align 8
  %str.build.data.gep116 = getelementptr inbounds { i64, ptr }, ptr %concat.str114, i32 0, i32 1
  store ptr %concat.buf110, ptr %str.build.data.gep116, align 8
  store ptr %concat.str114, ptr %var.line, align 8
  %var.load117 = load ptr, ptr %var.line, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load117, i32 0, i32 1
  %arg.str.ptr118 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr119 = getelementptr inbounds { i64, ptr }, ptr %var.load117, i32 0, i32 0
  %arg.str.ptr120 = load i64, ptr %arg.str.ptr119, align 8
  %arg.str.ptr121 = and i64 %arg.str.ptr120, 281474976710655
  %str.tag122 = lshr i64 %arg.str.ptr120, 48
  %str.immortal123 = icmp eq i64 %str.tag122, 0
  br i1 %str.immortal123, label %str_ok125, label %str_gen_check124

str_overflow_abort108:                            ; preds = %concat.sum.len102
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len107

str_gen_check124:                                 ; preds = %concat.tot.len107
  %arena.gen127 = call ptr @dva_arena_current()
  %arena.gen128 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen127, i32 0, i32 4
  %arena.gen129 = load i64, ptr %arena.gen128, align 8
  %str.tag.match130 = icmp eq i64 %str.tag122, %arena.gen129
  br i1 %str.tag.match130, label %str_ok125, label %str_stale126

str_ok125:                                        ; preds = %str_stale126, %str_gen_check124, %concat.tot.len107
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr118, i64 %arg.str.ptr121
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr131, label %nulcopy

str_stale126:                                     ; preds = %str_gen_check124
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok125

arg.str.ptr131:                                   ; preds = %str_ok125
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok125
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr121, i64 1)
  %sum132 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf133 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf133, label %str_overflow_abort135, label %nulcopy.len134

nulmerge:                                         ; preds = %nulcopy.len134, %arg.str.ptr131
  %arg.str.ptr137 = phi ptr [ %arg.str.ptr118, %arg.str.ptr131 ], [ %nulcopy.buf, %nulcopy.len134 ]
  %var.load138 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load138, i32 0, i32 0
  %str.len.query139 = load i64, ptr %str.len.query, align 8
  %str.len.query140 = and i64 %str.len.query139, 281474976710655
  %str.tag141 = lshr i64 %str.len.query139, 48
  %str.immortal142 = icmp eq i64 %str.tag141, 0
  br i1 %str.immortal142, label %str_ok144, label %str_gen_check143

nulcopy.len134:                                   ; preds = %str_overflow_abort135, %nulcopy
  %arena.cur136 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 %sum132)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr118, i64 %arg.str.ptr121, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr121
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort135:                            ; preds = %nulcopy
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len134

str_gen_check143:                                 ; preds = %nulmerge
  %arena.gen146 = call ptr @dva_arena_current()
  %arena.gen147 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen146, i32 0, i32 4
  %arena.gen148 = load i64, ptr %arena.gen147, align 8
  %str.tag.match149 = icmp eq i64 %str.tag141, %arena.gen148
  br i1 %str.tag.match149, label %str_ok144, label %str_stale145

str_ok144:                                        ; preds = %str_stale145, %str_gen_check143, %nulmerge
  %call.res150 = call i64 @write(i32 2, ptr %arg.str.ptr137, i64 %str.len.query140)
  ret i64 %call.res150

str_stale145:                                     ; preds = %str_gen_check143
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok144
}

define ptr @"lexer::kind_name"(ptr %0) #1 {
entry:
  %var.k = alloca ptr, align 8
  store ptr %0, ptr %var.k, align 8
  %var.load = load ptr, ptr %var.k, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 2
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next177, %choice.case176, %choice.case171, %choice.case166, %choice.case161, %choice.case156, %choice.case151, %choice.case146, %choice.case141, %choice.case136, %choice.case131, %choice.case126, %choice.case121, %choice.case116, %choice.case111, %choice.case106, %choice.case101, %choice.case96, %choice.case91, %choice.case86, %choice.case81, %choice.case76, %choice.case71, %choice.case66, %choice.case61, %choice.case56, %choice.case51, %choice.case46, %choice.case41, %choice.case36, %choice.case31, %choice.case26, %choice.case21, %choice.case16, %choice.case11, %choice.case6, %choice.case1, %choice.case
  %choice.res = phi ptr [ @str.88.struct, %choice.case ], [ @str.89.struct, %choice.case1 ], [ @str.90.struct, %choice.case6 ], [ @str.91.struct, %choice.case11 ], [ @str.92.struct, %choice.case16 ], [ @str.93.struct, %choice.case21 ], [ @str.94.struct, %choice.case26 ], [ @str.95.struct, %choice.case31 ], [ @str.96.struct, %choice.case36 ], [ @str.97.struct, %choice.case41 ], [ @str.98.struct, %choice.case46 ], [ @str.99.struct, %choice.case51 ], [ @str.100.struct, %choice.case56 ], [ @str.101.struct, %choice.case61 ], [ @str.102.struct, %choice.case66 ], [ @str.103.struct, %choice.case71 ], [ @str.86.struct, %choice.case76 ], [ @str.80.struct, %choice.case81 ], [ @str.104.struct, %choice.case86 ], [ @str.105.struct, %choice.case91 ], [ @str.106.struct, %choice.case96 ], [ @str.107.struct, %choice.case101 ], [ @str.55.struct, %choice.case106 ], [ @str.57.struct, %choice.case111 ], [ @str.59.struct, %choice.case116 ], [ @str.61.struct, %choice.case121 ], [ @str.108.struct, %choice.case126 ], [ @str.66.struct, %choice.case131 ], [ @str.68.struct, %choice.case136 ], [ @str.70.struct, %choice.case141 ], [ @str.72.struct, %choice.case146 ], [ @str.74.struct, %choice.case151 ], [ @str.76.struct, %choice.case156 ], [ @str.44.struct, %choice.case161 ], [ @str.44.struct, %choice.case166 ], [ @str.79.struct, %choice.case171 ], [ @str.109.struct, %choice.case176 ], [ @str.110.struct, %choice.next177 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id4 = load i64, ptr %tag.gep3, align 8
  %tag.match5 = icmp eq i64 %tag.id4, 3
  br i1 %tag.match5, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %tag.gep8 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id9 = load i64, ptr %tag.gep8, align 8
  %tag.match10 = icmp eq i64 %tag.id9, 4
  br i1 %tag.match10, label %choice.case6, label %choice.next7

choice.case6:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next7:                                     ; preds = %choice.next2
  %tag.gep13 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id14 = load i64, ptr %tag.gep13, align 8
  %tag.match15 = icmp eq i64 %tag.id14, 5
  br i1 %tag.match15, label %choice.case11, label %choice.next12

choice.case11:                                    ; preds = %choice.next7
  br label %choice.exit

choice.next12:                                    ; preds = %choice.next7
  %tag.gep18 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id19 = load i64, ptr %tag.gep18, align 8
  %tag.match20 = icmp eq i64 %tag.id19, 6
  br i1 %tag.match20, label %choice.case16, label %choice.next17

choice.case16:                                    ; preds = %choice.next12
  br label %choice.exit

choice.next17:                                    ; preds = %choice.next12
  %tag.gep23 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id24 = load i64, ptr %tag.gep23, align 8
  %tag.match25 = icmp eq i64 %tag.id24, 7
  br i1 %tag.match25, label %choice.case21, label %choice.next22

choice.case21:                                    ; preds = %choice.next17
  br label %choice.exit

choice.next22:                                    ; preds = %choice.next17
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id29 = load i64, ptr %tag.gep28, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 0
  br i1 %tag.match30, label %choice.case26, label %choice.next27

choice.case26:                                    ; preds = %choice.next22
  br label %choice.exit

choice.next27:                                    ; preds = %choice.next22
  %tag.gep33 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id34 = load i64, ptr %tag.gep33, align 8
  %tag.match35 = icmp eq i64 %tag.id34, 10
  br i1 %tag.match35, label %choice.case31, label %choice.next32

choice.case31:                                    ; preds = %choice.next27
  br label %choice.exit

choice.next32:                                    ; preds = %choice.next27
  %tag.gep38 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id39 = load i64, ptr %tag.gep38, align 8
  %tag.match40 = icmp eq i64 %tag.id39, 11
  br i1 %tag.match40, label %choice.case36, label %choice.next37

choice.case36:                                    ; preds = %choice.next32
  br label %choice.exit

choice.next37:                                    ; preds = %choice.next32
  %tag.gep43 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id44 = load i64, ptr %tag.gep43, align 8
  %tag.match45 = icmp eq i64 %tag.id44, 8
  br i1 %tag.match45, label %choice.case41, label %choice.next42

choice.case41:                                    ; preds = %choice.next37
  br label %choice.exit

choice.next42:                                    ; preds = %choice.next37
  %tag.gep48 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id49 = load i64, ptr %tag.gep48, align 8
  %tag.match50 = icmp eq i64 %tag.id49, 9
  br i1 %tag.match50, label %choice.case46, label %choice.next47

choice.case46:                                    ; preds = %choice.next42
  br label %choice.exit

choice.next47:                                    ; preds = %choice.next42
  %tag.gep53 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id54 = load i64, ptr %tag.gep53, align 8
  %tag.match55 = icmp eq i64 %tag.id54, 12
  br i1 %tag.match55, label %choice.case51, label %choice.next52

choice.case51:                                    ; preds = %choice.next47
  br label %choice.exit

choice.next52:                                    ; preds = %choice.next47
  %tag.gep58 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id59 = load i64, ptr %tag.gep58, align 8
  %tag.match60 = icmp eq i64 %tag.id59, 13
  br i1 %tag.match60, label %choice.case56, label %choice.next57

choice.case56:                                    ; preds = %choice.next52
  br label %choice.exit

choice.next57:                                    ; preds = %choice.next52
  %tag.gep63 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id64 = load i64, ptr %tag.gep63, align 8
  %tag.match65 = icmp eq i64 %tag.id64, 14
  br i1 %tag.match65, label %choice.case61, label %choice.next62

choice.case61:                                    ; preds = %choice.next57
  br label %choice.exit

choice.next62:                                    ; preds = %choice.next57
  %tag.gep68 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id69 = load i64, ptr %tag.gep68, align 8
  %tag.match70 = icmp eq i64 %tag.id69, 15
  br i1 %tag.match70, label %choice.case66, label %choice.next67

choice.case66:                                    ; preds = %choice.next62
  br label %choice.exit

choice.next67:                                    ; preds = %choice.next62
  %tag.gep73 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id74 = load i64, ptr %tag.gep73, align 8
  %tag.match75 = icmp eq i64 %tag.id74, 18
  br i1 %tag.match75, label %choice.case71, label %choice.next72

choice.case71:                                    ; preds = %choice.next67
  br label %choice.exit

choice.next72:                                    ; preds = %choice.next67
  %tag.gep78 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id79 = load i64, ptr %tag.gep78, align 8
  %tag.match80 = icmp eq i64 %tag.id79, 16
  br i1 %tag.match80, label %choice.case76, label %choice.next77

choice.case76:                                    ; preds = %choice.next72
  br label %choice.exit

choice.next77:                                    ; preds = %choice.next72
  %tag.gep83 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id84 = load i64, ptr %tag.gep83, align 8
  %tag.match85 = icmp eq i64 %tag.id84, 17
  br i1 %tag.match85, label %choice.case81, label %choice.next82

choice.case81:                                    ; preds = %choice.next77
  br label %choice.exit

choice.next82:                                    ; preds = %choice.next77
  %tag.gep88 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id89 = load i64, ptr %tag.gep88, align 8
  %tag.match90 = icmp eq i64 %tag.id89, 19
  br i1 %tag.match90, label %choice.case86, label %choice.next87

choice.case86:                                    ; preds = %choice.next82
  br label %choice.exit

choice.next87:                                    ; preds = %choice.next82
  %tag.gep93 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id94 = load i64, ptr %tag.gep93, align 8
  %tag.match95 = icmp eq i64 %tag.id94, 34
  br i1 %tag.match95, label %choice.case91, label %choice.next92

choice.case91:                                    ; preds = %choice.next87
  br label %choice.exit

choice.next92:                                    ; preds = %choice.next87
  %tag.gep98 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id99 = load i64, ptr %tag.gep98, align 8
  %tag.match100 = icmp eq i64 %tag.id99, 36
  br i1 %tag.match100, label %choice.case96, label %choice.next97

choice.case96:                                    ; preds = %choice.next92
  br label %choice.exit

choice.next97:                                    ; preds = %choice.next92
  %tag.gep103 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id104 = load i64, ptr %tag.gep103, align 8
  %tag.match105 = icmp eq i64 %tag.id104, 37
  br i1 %tag.match105, label %choice.case101, label %choice.next102

choice.case101:                                   ; preds = %choice.next97
  br label %choice.exit

choice.next102:                                   ; preds = %choice.next97
  %tag.gep108 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id109 = load i64, ptr %tag.gep108, align 8
  %tag.match110 = icmp eq i64 %tag.id109, 20
  br i1 %tag.match110, label %choice.case106, label %choice.next107

choice.case106:                                   ; preds = %choice.next102
  br label %choice.exit

choice.next107:                                   ; preds = %choice.next102
  %tag.gep113 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id114 = load i64, ptr %tag.gep113, align 8
  %tag.match115 = icmp eq i64 %tag.id114, 21
  br i1 %tag.match115, label %choice.case111, label %choice.next112

choice.case111:                                   ; preds = %choice.next107
  br label %choice.exit

choice.next112:                                   ; preds = %choice.next107
  %tag.gep118 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id119 = load i64, ptr %tag.gep118, align 8
  %tag.match120 = icmp eq i64 %tag.id119, 33
  br i1 %tag.match120, label %choice.case116, label %choice.next117

choice.case116:                                   ; preds = %choice.next112
  br label %choice.exit

choice.next117:                                   ; preds = %choice.next112
  %tag.gep123 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id124 = load i64, ptr %tag.gep123, align 8
  %tag.match125 = icmp eq i64 %tag.id124, 22
  br i1 %tag.match125, label %choice.case121, label %choice.next122

choice.case121:                                   ; preds = %choice.next117
  br label %choice.exit

choice.next122:                                   ; preds = %choice.next117
  %tag.gep128 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id129 = load i64, ptr %tag.gep128, align 8
  %tag.match130 = icmp eq i64 %tag.id129, 32
  br i1 %tag.match130, label %choice.case126, label %choice.next127

choice.case126:                                   ; preds = %choice.next122
  br label %choice.exit

choice.next127:                                   ; preds = %choice.next122
  %tag.gep133 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id134 = load i64, ptr %tag.gep133, align 8
  %tag.match135 = icmp eq i64 %tag.id134, 23
  br i1 %tag.match135, label %choice.case131, label %choice.next132

choice.case131:                                   ; preds = %choice.next127
  br label %choice.exit

choice.next132:                                   ; preds = %choice.next127
  %tag.gep138 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id139 = load i64, ptr %tag.gep138, align 8
  %tag.match140 = icmp eq i64 %tag.id139, 26
  br i1 %tag.match140, label %choice.case136, label %choice.next137

choice.case136:                                   ; preds = %choice.next132
  br label %choice.exit

choice.next137:                                   ; preds = %choice.next132
  %tag.gep143 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id144 = load i64, ptr %tag.gep143, align 8
  %tag.match145 = icmp eq i64 %tag.id144, 27
  br i1 %tag.match145, label %choice.case141, label %choice.next142

choice.case141:                                   ; preds = %choice.next137
  br label %choice.exit

choice.next142:                                   ; preds = %choice.next137
  %tag.gep148 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id149 = load i64, ptr %tag.gep148, align 8
  %tag.match150 = icmp eq i64 %tag.id149, 28
  br i1 %tag.match150, label %choice.case146, label %choice.next147

choice.case146:                                   ; preds = %choice.next142
  br label %choice.exit

choice.next147:                                   ; preds = %choice.next142
  %tag.gep153 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id154 = load i64, ptr %tag.gep153, align 8
  %tag.match155 = icmp eq i64 %tag.id154, 29
  br i1 %tag.match155, label %choice.case151, label %choice.next152

choice.case151:                                   ; preds = %choice.next147
  br label %choice.exit

choice.next152:                                   ; preds = %choice.next147
  %tag.gep158 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id159 = load i64, ptr %tag.gep158, align 8
  %tag.match160 = icmp eq i64 %tag.id159, 30
  br i1 %tag.match160, label %choice.case156, label %choice.next157

choice.case156:                                   ; preds = %choice.next152
  br label %choice.exit

choice.next157:                                   ; preds = %choice.next152
  %tag.gep163 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id164 = load i64, ptr %tag.gep163, align 8
  %tag.match165 = icmp eq i64 %tag.id164, 24
  br i1 %tag.match165, label %choice.case161, label %choice.next162

choice.case161:                                   ; preds = %choice.next157
  br label %choice.exit

choice.next162:                                   ; preds = %choice.next157
  %tag.gep168 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id169 = load i64, ptr %tag.gep168, align 8
  %tag.match170 = icmp eq i64 %tag.id169, 35
  br i1 %tag.match170, label %choice.case166, label %choice.next167

choice.case166:                                   ; preds = %choice.next162
  br label %choice.exit

choice.next167:                                   ; preds = %choice.next162
  %tag.gep173 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id174 = load i64, ptr %tag.gep173, align 8
  %tag.match175 = icmp eq i64 %tag.id174, 25
  br i1 %tag.match175, label %choice.case171, label %choice.next172

choice.case171:                                   ; preds = %choice.next167
  br label %choice.exit

choice.next172:                                   ; preds = %choice.next167
  %tag.gep178 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id179 = load i64, ptr %tag.gep178, align 8
  %tag.match180 = icmp eq i64 %tag.id179, 1
  br i1 %tag.match180, label %choice.case176, label %choice.next177

choice.case176:                                   ; preds = %choice.next172
  br label %choice.exit

choice.next177:                                   ; preds = %choice.next172
  br label %choice.exit
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
