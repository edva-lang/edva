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
@"var.lexer::cur_lex_file" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"lexer::lex_set_file", ptr null }
@"var.lexer::lex_set_file" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"lexer::lex_get_file", ptr null }
@"var.lexer::lex_get_file" = global ptr null
@str.4 = internal unnamed_addr constant [2 x i8] c":\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.4 }
@str.5 = internal unnamed_addr constant [4 x i8] c": E\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.5 }
@str.6 = internal unnamed_addr constant [3 x i8] c": \00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.6 }
@str.7 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.7 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"lexer::fail", ptr null }
@"var.lexer::fail" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"lexer::esc_val", ptr null }
@"var.lexer::esc_val" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"lexer::decode_escapes", ptr null }
@"var.lexer::decode_escapes" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@str.8 = internal unnamed_addr constant [3 x i8] c"=)\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.8 }
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.14 = internal constant { ptr, ptr } { ptr @"lexer::decode_raw_esc", ptr null }
@"var.lexer::decode_raw_esc" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"lexer::is_delim", ptr null }
@"var.lexer::is_delim" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"lexer::is_id_start", ptr null }
@"var.lexer::is_id_start" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"lexer::is_id_char", ptr null }
@"var.lexer::is_id_char" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"lexer::is_special", ptr null }
@"var.lexer::is_special" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"lexer::scan_while", ptr null }
@"var.lexer::scan_while" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"$anon_fn.90", ptr null }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"lexer::skip_digits", ptr null }
@"var.lexer::skip_digits" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"lexer::scan_id", ptr null }
@"var.lexer::scan_id" = global ptr null
@str.9 = internal unnamed_addr constant [3 x i8] c"i8\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.9 }
@str.10 = internal unnamed_addr constant [4 x i8] c"i16\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.10 }
@str.11 = internal unnamed_addr constant [4 x i8] c"i32\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.11 }
@str.12 = internal unnamed_addr constant [4 x i8] c"i64\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.12 }
@str.13 = internal unnamed_addr constant [3 x i8] c"u8\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.13 }
@str.14 = internal unnamed_addr constant [4 x i8] c"u16\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.14 }
@str.15 = internal unnamed_addr constant [4 x i8] c"u32\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.15 }
@str.16 = internal unnamed_addr constant [4 x i8] c"u64\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.16 }
@clo.const.23 = internal constant { ptr, ptr } { ptr @"lexer::scan_int_suffix", ptr null }
@"var.lexer::scan_int_suffix" = global ptr null
@str.17 = internal unnamed_addr constant [4 x i8] c"f32\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.17 }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"lexer::scan_float_suffix", ptr null }
@"var.lexer::scan_float_suffix" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"lexer::radix_ok", ptr null }
@"var.lexer::radix_ok" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"lexer::finish_int", ptr null }
@"var.lexer::finish_int" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"lexer::scan_radix_rest", ptr null }
@"var.lexer::scan_radix_rest" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"lexer::finish_float", ptr null }
@"var.lexer::finish_float" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"lexer::pk_off", ptr null }
@clo.const.30 = internal constant { ptr, ptr } { ptr @"lexer::scan_frac_opt", ptr null }
@"var.lexer::scan_frac_opt" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"lexer::scan_exp_opt", ptr null }
@"var.lexer::scan_exp_opt" = global ptr null
@str.18 = internal unnamed_addr constant [57 x i8] c"Float literal requires a digit after the decimal point; \00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.18 }
@str.19 = internal unnamed_addr constant [53 x i8] c"padding zeros are mandatory (write '1.0', not '1.').\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 52, ptr @str.19 }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"lexer::scan_dec", ptr null }
@"var.lexer::scan_dec" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"lexer::scan_num", ptr null }
@"var.lexer::scan_num" = global ptr null
@"var.lexer::pk_off" = global ptr null
@str.20 = internal unnamed_addr constant [3 x i8] c"..\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.20 }
@str.21 = internal unnamed_addr constant [3 x i8] c"!!\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.21 }
@str.22 = internal unnamed_addr constant [4 x i8] c"--!\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.22 }
@str.23 = internal unnamed_addr constant [4 x i8] c"--|\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.23 }
@str.24 = internal unnamed_addr constant [3 x i8] c"~~\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.24 }
@str.25 = internal unnamed_addr constant [4 x i8] c".^.\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.25 }
@str.26 = internal unnamed_addr constant [2 x i8] c"!\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.26 }
@str.27 = internal unnamed_addr constant [5 x i8] c"|-->\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.27 }
@str.28 = internal unnamed_addr constant [5 x i8] c"|++>\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.28 }
@str.29 = internal unnamed_addr constant [4 x i8] c"|->\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.29 }
@str.30 = internal unnamed_addr constant [4 x i8] c"|+>\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.30 }
@clo.const.34 = internal constant { ptr, ptr } { ptr @"lexer::scan_op", ptr null }
@"var.lexer::scan_op" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"lexer::maybe_esc_adv", ptr null }
@"var.lexer::maybe_esc_adv" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"lexer::on_str_esc", ptr null }
@"var.lexer::on_str_esc" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"lexer::scan_string_body", ptr null }
@"var.lexer::scan_string_body" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"lexer::scan_raw_body", ptr null }
@"var.lexer::scan_raw_body" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"lexer::skip_multiline_ws", ptr null }
@"var.lexer::skip_multiline_ws" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"lexer::skip_eol_comment", ptr null }
@"var.lexer::skip_eol_comment" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"lexer::stack_top", ptr null }
@clo.const.42 = internal constant { ptr, ptr } { ptr @"lexer::check_multiline_str", ptr null }
@"var.lexer::check_multiline_str" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"lexer::adv_to", ptr null }
@"var.lexer::adv_to" = global ptr null
@str.31 = internal unnamed_addr constant [56 x i8] c"Unterminated raw string literal -- missing closing '=)'\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 55, ptr @str.31 }
@str.32 = internal unnamed_addr constant [51 x i8] c"Unterminated string literal -- missing closing '\22'\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.32 }
@clo.const.44 = internal constant { ptr, ptr } { ptr @"lexer::scan_next_str_part", ptr null }
@"var.lexer::scan_next_str_part" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"lexer::concat_multiline_str", ptr null }
@"var.lexer::concat_multiline_str" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"lexer::scan_string", ptr null }
@"var.lexer::scan_string" = global ptr null
@str.33 = internal unnamed_addr constant [70 x i8] c"Empty character literal '' -- expected a character between the quotes\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 69, ptr @str.33 }
@str.34 = internal unnamed_addr constant [54 x i8] c"Unterminated character literal -- missing closing '''\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 53, ptr @str.34 }
@clo.const.47 = internal constant { ptr, ptr } { ptr @"lexer::scan_rune", ptr null }
@"var.lexer::scan_rune" = global ptr null
@clo.const.48 = internal constant { ptr, ptr } { ptr @"lexer::scan_raw_string", ptr null }
@"var.lexer::scan_raw_string" = global ptr null
@clo.const.49 = internal constant { ptr, ptr } { ptr @"$anon_fn.120", ptr null }
@clo.const.50 = internal constant { ptr, ptr } { ptr @"lexer::skip_line_comment", ptr null }
@"var.lexer::skip_line_comment" = global ptr null
@str.35 = internal unnamed_addr constant [51 x i8] c"Unterminated block comment -- missing closing '*/'\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.35 }
@clo.const.51 = internal constant { ptr, ptr } { ptr @"lexer::skip_block_comment", ptr null }
@"var.lexer::skip_block_comment" = global ptr null
@clo.const.52 = internal constant { ptr, ptr } { ptr @"$anon_fn.123", ptr null }
@clo.const.53 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash_word", ptr null }
@"var.lexer::scan_hash_word" = global ptr null
@clo.const.54 = internal constant { ptr, ptr } { ptr @"lexer::scan_qp_body", ptr null }
@"var.lexer::scan_qp_body" = global ptr null
@str.36 = internal unnamed_addr constant [48 x i8] c"Unterminated import path -- missing closing '\22'\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.36 }
@clo.const.55 = internal constant { ptr, ptr } { ptr @"lexer::scan_quoted_path", ptr null }
@"var.lexer::scan_quoted_path" = global ptr null
@clo.const.56 = internal constant { ptr, ptr } { ptr @"lexer::is_path_rune", ptr null }
@"var.lexer::is_path_rune" = global ptr null
@clo.const.57 = internal constant { ptr, ptr } { ptr @"lexer::scan_bare_path", ptr null }
@"var.lexer::scan_bare_path" = global ptr null
@str.37 = internal unnamed_addr constant [9 x i8] c"-dynamic\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.37 }
@clo.const.58 = internal constant { ptr, ptr } { ptr @"lexer::skip_ws", ptr null }
@str.38 = internal unnamed_addr constant [51 x i8] c"Unterminated '#use(...)' \E2\80\94 expected closing ')'.\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.38 }
@clo.const.59 = internal constant { ptr, ptr } { ptr @"$anon_fn.130", ptr null }
@str.39 = internal unnamed_addr constant [8 x i8] c"dynamic\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.39 }
@str.40 = internal unnamed_addr constant [7 x i8] c"import\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.40 }
@str.41 = internal unnamed_addr constant [22 x i8] c"Invalid #use option '\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.41 }
@str.42 = internal unnamed_addr constant [38 x i8] c"' \E2\80\94 expected 'dynamic' or 'import'.\00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 37, ptr @str.42 }
@clo.const.60 = internal constant { ptr, ptr } { ptr @"lexer::skip_hws", ptr null }
@str.43 = internal unnamed_addr constant [52 x i8] c"Expected a module name or quoted path after '#use'.\00"
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 51, ptr @str.43 }
@str.44 = internal unnamed_addr constant [49 x i8] c"Expected a module name or quoted path after '='.\00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.44 }
@str.45 = internal unnamed_addr constant [4 x i8] c" = \00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.45 }
@clo.const.61 = internal constant { ptr, ptr } { ptr @"lexer::scan_use_directive", ptr null }
@"var.lexer::scan_use_directive" = global ptr null
@"var.lexer::skip_ws" = global ptr null
@str.46 = internal unnamed_addr constant [32 x i8] c"Invalid '#pragma number' type '\00"
@str.46.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.46 }
@str.47 = internal unnamed_addr constant [62 x i8] c"' \E2\80\94 expected an integer type (i8/u8..i64/u64) or 'default'.\00"
@str.47.struct = internal unnamed_addr constant { i64, ptr } { i64 61, ptr @str.47 }
@clo.const.62 = internal constant { ptr, ptr } { ptr @"lexer::pragma_suffix_fail", ptr null }
@"var.lexer::pragma_suffix_fail" = global ptr null
@str.48 = internal unnamed_addr constant [7 x i8] c"number\00"
@str.48.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.48 }
@str.49 = internal unnamed_addr constant [7 x i8] c"fpfast\00"
@str.49.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.49 }
@str.50 = internal unnamed_addr constant [8 x i8] c"swizzle\00"
@str.50.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.50 }
@clo.const.63 = internal constant { ptr, ptr } { ptr @"$anon_fn.136", ptr null }
@str.51 = internal unnamed_addr constant [8 x i8] c"default\00"
@str.51.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.51 }
@clo.const.64 = internal constant { ptr, ptr } { ptr @"$anon_fn.137", ptr null }
@str.52 = internal unnamed_addr constant [8 x i8] c"#pragma\00"
@str.52.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.52 }
@clo.const.65 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma_number", ptr null }
@clo.const.66 = internal constant { ptr, ptr } { ptr @"$anon_fn.139", ptr null }
@str.53 = internal unnamed_addr constant [4 x i8] c"all\00"
@str.53.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.53 }
@str.54 = internal unnamed_addr constant [5 x i8] c"none\00"
@str.54.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.54 }
@str.55 = internal unnamed_addr constant [32 x i8] c"Invalid '#pragma fpfast' mode '\00"
@str.55.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.55 }
@str.56 = internal unnamed_addr constant [32 x i8] c"' \E2\80\94 expected 'all' or 'none'.\00"
@str.56.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.56 }
@clo.const.67 = internal constant { ptr, ptr } { ptr @"lexer::pragma_fp_fail", ptr null }
@clo.const.68 = internal constant { ptr, ptr } { ptr @"$anon_fn.141", ptr null }
@clo.const.69 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma_fp", ptr null }
@clo.const.70 = internal constant { ptr, ptr } { ptr @"$anon_fn.143", ptr null }
@str.57 = internal unnamed_addr constant [5 x i8] c"xyzw\00"
@str.57.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.57 }
@str.58 = internal unnamed_addr constant [5 x i8] c"rgba\00"
@str.58.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.58 }
@str.59 = internal unnamed_addr constant [33 x i8] c"Invalid '#pragma swizzle' mode '\00"
@str.59.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.59 }
@str.60 = internal unnamed_addr constant [49 x i8] c"' \E2\80\94 expected 'all', 'xyzw', 'rgba', or 'none'.\00"
@str.60.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.60 }
@clo.const.71 = internal constant { ptr, ptr } { ptr @"lexer::pragma_swizzle_fail", ptr null }
@clo.const.72 = internal constant { ptr, ptr } { ptr @"$anon_fn.145", ptr null }
@clo.const.73 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma_swizzle", ptr null }
@clo.const.74 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma_body", ptr null }
@str.61 = internal unnamed_addr constant [59 x i8] c"Expected 'number', 'fpfast', or 'swizzle' after '#pragma'.\00"
@str.61.struct = internal unnamed_addr constant { i64, ptr } { i64 58, ptr @str.61 }
@clo.const.75 = internal constant { ptr, ptr } { ptr @"lexer::pragma_miss_fail", ptr null }
@clo.const.76 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma", ptr null }
@"var.lexer::scan_pragma" = global ptr null
@"var.lexer::pragma_miss_fail" = global ptr null
@"var.lexer::scan_pragma_body" = global ptr null
@"var.lexer::scan_pragma_number" = global ptr null
@"var.lexer::scan_pragma_fp" = global ptr null
@"var.lexer::pragma_fp_fail" = global ptr null
@"var.lexer::scan_pragma_swizzle" = global ptr null
@"var.lexer::pragma_swizzle_fail" = global ptr null
@str.62 = internal unnamed_addr constant [8 x i8] c"foreign\00"
@str.62.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.62 }
@str.63 = internal unnamed_addr constant [9 x i8] c"#foreign\00"
@str.63.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.63 }
@str.64 = internal unnamed_addr constant [5 x i8] c"type\00"
@str.64.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.64 }
@str.65 = internal unnamed_addr constant [6 x i8] c"#type\00"
@str.65.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.65 }
@str.66 = internal unnamed_addr constant [7 x i8] c"packed\00"
@str.66.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.66 }
@str.67 = internal unnamed_addr constant [8 x i8] c"#packed\00"
@str.67.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.67 }
@str.68 = internal unnamed_addr constant [8 x i8] c"private\00"
@str.68.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.68 }
@str.69 = internal unnamed_addr constant [9 x i8] c"#private\00"
@str.69.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.69 }
@str.70 = internal unnamed_addr constant [7 x i8] c"public\00"
@str.70.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.70 }
@str.71 = internal unnamed_addr constant [4 x i8] c"pub\00"
@str.71.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.71 }
@str.72 = internal unnamed_addr constant [2 x i8] c"#\00"
@str.72.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.72 }
@str.73 = internal unnamed_addr constant [7 x i8] c"export\00"
@str.73.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.73 }
@str.74 = internal unnamed_addr constant [8 x i8] c"#export\00"
@str.74.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.74 }
@str.75 = internal unnamed_addr constant [6 x i8] c"spawn\00"
@str.75.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.75 }
@str.76 = internal unnamed_addr constant [7 x i8] c"#spawn\00"
@str.76.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.76 }
@str.77 = internal unnamed_addr constant [5 x i8] c"join\00"
@str.77.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.77 }
@str.78 = internal unnamed_addr constant [6 x i8] c"#join\00"
@str.78.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.78 }
@str.79 = internal unnamed_addr constant [5 x i8] c"exit\00"
@str.79.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.79 }
@str.80 = internal unnamed_addr constant [6 x i8] c"#exit\00"
@str.80.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.80 }
@str.81 = internal unnamed_addr constant [6 x i8] c"error\00"
@str.81.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.81 }
@str.82 = internal unnamed_addr constant [7 x i8] c"#error\00"
@str.82.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.82 }
@str.83 = internal unnamed_addr constant [5 x i8] c"warn\00"
@str.83.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.83 }
@str.84 = internal unnamed_addr constant [6 x i8] c"#warn\00"
@str.84.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.84 }
@str.85 = internal unnamed_addr constant [7 x i8] c"pragma\00"
@str.85.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.85 }
@str.86 = internal unnamed_addr constant [4 x i8] c"use\00"
@str.86.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.86 }
@clo.const.77 = internal constant { ptr, ptr } { ptr @"lexer::scan_directive", ptr null }
@"var.lexer::scan_directive" = global ptr null
@str.87 = internal unnamed_addr constant [3 x i8] c"#!\00"
@str.87.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.87 }
@clo.const.78 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash_ct", ptr null }
@"var.lexer::scan_hash_ct" = global ptr null
@clo.const.79 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash_name", ptr null }
@"var.lexer::scan_hash_name" = global ptr null
@clo.const.80 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash_name2", ptr null }
@clo.const.81 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash", ptr null }
@"var.lexer::scan_hash" = global ptr null
@"var.lexer::scan_hash_name2" = global ptr null
@"var.lexer::stack_top" = global ptr null
@clo.const.82 = internal constant { ptr, ptr } { ptr @"lexer::stack_pop", ptr null }
@"var.lexer::stack_pop" = global ptr null
@clo.const.83 = internal constant { ptr, ptr } { ptr @"lexer::stack_append", ptr null }
@"var.lexer::stack_append" = global ptr null
@clo.const.84 = internal constant { ptr, ptr } { ptr @"lexer::stack_overwrite", ptr null }
@"var.lexer::stack_overwrite" = global ptr null
@clo.const.85 = internal constant { ptr, ptr } { ptr @"lexer::stack_push", ptr null }
@"var.lexer::stack_push" = global ptr null
@str.88 = internal unnamed_addr constant [7 x i8] c"DEDENT\00"
@str.88.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.88 }
@clo.const.86 = internal constant { ptr, ptr } { ptr @"lexer::queue_dedent", ptr null }
@"var.lexer::queue_dedent" = global ptr null
@clo.const.87 = internal constant { ptr, ptr } { ptr @"lexer::take_queued", ptr null }
@"var.lexer::take_queued" = global ptr null
@str.89 = internal unnamed_addr constant [61 x i8] c"Mixed spaces and tabs in indentation are strictly forbidden.\00"
@str.89.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.89 }
@str.90 = internal unnamed_addr constant [55 x i8] c"Inconsistent indentation. Expected tabs, found spaces.\00"
@str.90.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.90 }
@str.91 = internal unnamed_addr constant [55 x i8] c"Inconsistent indentation. Expected spaces, found tabs.\00"
@str.91.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.91 }
@clo.const.88 = internal constant { ptr, ptr } { ptr @"lexer::count_indent", ptr null }
@"var.lexer::count_indent" = global ptr null
@str.92 = internal unnamed_addr constant [16 x i8] c"Unindent level \00"
@str.92.struct = internal unnamed_addr constant { i64, ptr } { i64 15, ptr @str.92 }
@str.93 = internal unnamed_addr constant [45 x i8] c" does not match any outer indentation level.\00"
@str.93.struct = internal unnamed_addr constant { i64, ptr } { i64 44, ptr @str.93 }
@clo.const.89 = internal constant { ptr, ptr } { ptr @"lexer::drain_to", ptr null }
@"var.lexer::drain_to" = global ptr null
@clo.const.90 = internal constant { ptr, ptr } { ptr @"lexer::skip_blank", ptr null }
@str.94 = internal unnamed_addr constant [7 x i8] c"INDENT\00"
@str.94.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.94 }
@clo.const.91 = internal constant { ptr, ptr } { ptr @"lexer::flush_indents", ptr null }
@clo.const.92 = internal constant { ptr, ptr } { ptr @"lexer::comment_block", ptr null }
@clo.const.93 = internal constant { ptr, ptr } { ptr @"lexer::comment_line", ptr null }
@clo.const.94 = internal constant { ptr, ptr } { ptr @"lexer::nl_tok", ptr null }
@str.95 = internal unnamed_addr constant [2 x i8] c"%\00"
@str.95.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.95 }
@clo.const.95 = internal constant { ptr, ptr } { ptr @"lexer::scan_intrinsic", ptr null }
@clo.const.96 = internal constant { ptr, ptr } { ptr @"lexer::scan_delim", ptr null }
@clo.const.97 = internal constant { ptr, ptr } { ptr @"lexer::scan_ident", ptr null }
@clo.const.98 = internal constant { ptr, ptr } { ptr @"lexer::eof_tok", ptr null }
@clo.const.99 = internal constant { ptr, ptr } { ptr @"lexer::dispatch_scan", ptr null }
@clo.const.100 = internal constant { ptr, ptr } { ptr @"lexer::dispatch_bol", ptr null }
@clo.const.101 = internal constant { ptr, ptr } { ptr @"lexer::next_tok", ptr null }
@clo.const.102 = internal constant { ptr, ptr } { ptr @"lexer::layout_step", ptr null }
@clo.const.103 = internal constant { ptr, ptr } { ptr @"lexer::line_token", ptr null }
@clo.const.104 = internal constant { ptr, ptr } { ptr @"lexer::layout", ptr null }
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
@str.96 = internal unnamed_addr constant [3 x i8] c"id\00"
@str.96.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.96 }
@str.97 = internal unnamed_addr constant [4 x i8] c"int\00"
@str.97.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.97 }
@str.98 = internal unnamed_addr constant [6 x i8] c"float\00"
@str.98.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.98 }
@str.99 = internal unnamed_addr constant [4 x i8] c"str\00"
@str.99.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.99 }
@str.100 = internal unnamed_addr constant [7 x i8] c"rawstr\00"
@str.100.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.100 }
@str.101 = internal unnamed_addr constant [5 x i8] c"rune\00"
@str.101.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.101 }
@str.102 = internal unnamed_addr constant [3 x i8] c"op\00"
@str.102.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.102 }
@str.103 = internal unnamed_addr constant [2 x i8] c"(\00"
@str.103.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.103 }
@str.104 = internal unnamed_addr constant [2 x i8] c")\00"
@str.104.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.104 }
@str.105 = internal unnamed_addr constant [2 x i8] c"[\00"
@str.105.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.105 }
@str.106 = internal unnamed_addr constant [2 x i8] c"]\00"
@str.106.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.106 }
@str.107 = internal unnamed_addr constant [2 x i8] c"{\00"
@str.107.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.107 }
@str.108 = internal unnamed_addr constant [2 x i8] c"}\00"
@str.108.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.108 }
@str.109 = internal unnamed_addr constant [2 x i8] c",\00"
@str.109.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.109 }
@str.110 = internal unnamed_addr constant [2 x i8] c";\00"
@str.110.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.110 }
@str.111 = internal unnamed_addr constant [8 x i8] c"newline\00"
@str.111.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.111 }
@str.112 = internal unnamed_addr constant [5 x i8] c"#use\00"
@str.112.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.112 }
@str.113 = internal unnamed_addr constant [14 x i8] c"#use(dynamic)\00"
@str.113.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.113 }
@str.114 = internal unnamed_addr constant [13 x i8] c"#use(import)\00"
@str.114.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.114 }
@str.115 = internal unnamed_addr constant [22 x i8] c"#use(dynamic, import)\00"
@str.115.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.115 }
@str.116 = internal unnamed_addr constant [8 x i8] c"#public\00"
@str.116.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.116 }
@str.117 = internal unnamed_addr constant [4 x i8] c"eof\00"
@str.117.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.117 }
@str.118 = internal unnamed_addr constant [2 x i8] c"?\00"
@str.118.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.118 }
@clo.const.105 = internal constant { ptr, ptr } { ptr @"lexer::kind_name", ptr null }
@str.119 = internal unnamed_addr constant [2 x i8] c" \00"
@str.119.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.119 }
@clo.const.106 = internal constant { ptr, ptr } { ptr @"lexer::show", ptr null }
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
  store ptr @str.0.struct, ptr @"var.lexer::cur_lex_file", align 8
  store ptr @clo.const.9, ptr @"var.lexer::lex_set_file", align 8
  store ptr @clo.const.10, ptr @"var.lexer::lex_get_file", align 8
  store ptr @clo.const.11, ptr @"var.lexer::fail", align 8
  store ptr @clo.const.12, ptr @"var.lexer::esc_val", align 8
  store ptr @clo.const.13, ptr @"var.lexer::decode_escapes", align 8
  store ptr @clo.const.14, ptr @"var.lexer::decode_raw_esc", align 8
  store ptr @clo.const.15, ptr @"var.lexer::is_delim", align 8
  store ptr @clo.const.16, ptr @"var.lexer::is_id_start", align 8
  store ptr @clo.const.17, ptr @"var.lexer::is_id_char", align 8
  store ptr @clo.const.18, ptr @"var.lexer::is_special", align 8
  store ptr @clo.const.19, ptr @"var.lexer::scan_while", align 8
  store ptr @clo.const.21, ptr @"var.lexer::skip_digits", align 8
  store ptr @clo.const.22, ptr @"var.lexer::scan_id", align 8
  store ptr @clo.const.23, ptr @"var.lexer::scan_int_suffix", align 8
  store ptr @clo.const.24, ptr @"var.lexer::scan_float_suffix", align 8
  store ptr @clo.const.25, ptr @"var.lexer::radix_ok", align 8
  store ptr @clo.const.26, ptr @"var.lexer::finish_int", align 8
  store ptr @clo.const.27, ptr @"var.lexer::scan_radix_rest", align 8
  store ptr @clo.const.28, ptr @"var.lexer::finish_float", align 8
  store ptr @clo.const.30, ptr @"var.lexer::scan_frac_opt", align 8
  store ptr @clo.const.31, ptr @"var.lexer::scan_exp_opt", align 8
  store ptr @clo.const.32, ptr @"var.lexer::scan_dec", align 8
  store ptr @clo.const.33, ptr @"var.lexer::scan_num", align 8
  store ptr @clo.const.29, ptr @"var.lexer::pk_off", align 8
  store ptr @clo.const.34, ptr @"var.lexer::scan_op", align 8
  store ptr @clo.const.35, ptr @"var.lexer::maybe_esc_adv", align 8
  store ptr @clo.const.36, ptr @"var.lexer::on_str_esc", align 8
  store ptr @clo.const.37, ptr @"var.lexer::scan_string_body", align 8
  store ptr @clo.const.38, ptr @"var.lexer::scan_raw_body", align 8
  store ptr @clo.const.39, ptr @"var.lexer::skip_multiline_ws", align 8
  store ptr @clo.const.40, ptr @"var.lexer::skip_eol_comment", align 8
  store ptr @clo.const.42, ptr @"var.lexer::check_multiline_str", align 8
  store ptr @clo.const.43, ptr @"var.lexer::adv_to", align 8
  store ptr @clo.const.44, ptr @"var.lexer::scan_next_str_part", align 8
  store ptr @clo.const.45, ptr @"var.lexer::concat_multiline_str", align 8
  store ptr @clo.const.46, ptr @"var.lexer::scan_string", align 8
  store ptr @clo.const.47, ptr @"var.lexer::scan_rune", align 8
  store ptr @clo.const.48, ptr @"var.lexer::scan_raw_string", align 8
  store ptr @clo.const.50, ptr @"var.lexer::skip_line_comment", align 8
  store ptr @clo.const.51, ptr @"var.lexer::skip_block_comment", align 8
  store ptr @clo.const.53, ptr @"var.lexer::scan_hash_word", align 8
  store ptr @clo.const.54, ptr @"var.lexer::scan_qp_body", align 8
  store ptr @clo.const.55, ptr @"var.lexer::scan_quoted_path", align 8
  store ptr @clo.const.56, ptr @"var.lexer::is_path_rune", align 8
  store ptr @clo.const.57, ptr @"var.lexer::scan_bare_path", align 8
  store ptr @clo.const.61, ptr @"var.lexer::scan_use_directive", align 8
  store ptr @clo.const.58, ptr @"var.lexer::skip_ws", align 8
  store ptr @clo.const.62, ptr @"var.lexer::pragma_suffix_fail", align 8
  store ptr @clo.const.76, ptr @"var.lexer::scan_pragma", align 8
  store ptr @clo.const.75, ptr @"var.lexer::pragma_miss_fail", align 8
  store ptr @clo.const.74, ptr @"var.lexer::scan_pragma_body", align 8
  store ptr @clo.const.65, ptr @"var.lexer::scan_pragma_number", align 8
  store ptr @clo.const.69, ptr @"var.lexer::scan_pragma_fp", align 8
  store ptr @clo.const.67, ptr @"var.lexer::pragma_fp_fail", align 8
  store ptr @clo.const.73, ptr @"var.lexer::scan_pragma_swizzle", align 8
  store ptr @clo.const.71, ptr @"var.lexer::pragma_swizzle_fail", align 8
  store ptr @clo.const.77, ptr @"var.lexer::scan_directive", align 8
  store ptr @clo.const.78, ptr @"var.lexer::scan_hash_ct", align 8
  store ptr @clo.const.79, ptr @"var.lexer::scan_hash_name", align 8
  store ptr @clo.const.81, ptr @"var.lexer::scan_hash", align 8
  store ptr @clo.const.80, ptr @"var.lexer::scan_hash_name2", align 8
  store ptr @clo.const.41, ptr @"var.lexer::stack_top", align 8
  store ptr @clo.const.82, ptr @"var.lexer::stack_pop", align 8
  store ptr @clo.const.83, ptr @"var.lexer::stack_append", align 8
  store ptr @clo.const.84, ptr @"var.lexer::stack_overwrite", align 8
  store ptr @clo.const.85, ptr @"var.lexer::stack_push", align 8
  store ptr @clo.const.86, ptr @"var.lexer::queue_dedent", align 8
  store ptr @clo.const.87, ptr @"var.lexer::take_queued", align 8
  store ptr @clo.const.88, ptr @"var.lexer::count_indent", align 8
  store ptr @clo.const.89, ptr @"var.lexer::drain_to", align 8
  store ptr @clo.const.104, ptr @"var.lexer::layout", align 8
  store ptr @clo.const.103, ptr @"var.lexer::line_token", align 8
  store ptr @clo.const.90, ptr @"var.lexer::skip_blank", align 8
  store ptr @clo.const.102, ptr @"var.lexer::layout_step", align 8
  store ptr @clo.const.60, ptr @"var.lexer::skip_hws", align 8
  store ptr @clo.const.91, ptr @"var.lexer::flush_indents", align 8
  store ptr @clo.const.94, ptr @"var.lexer::nl_tok", align 8
  store ptr @clo.const.98, ptr @"var.lexer::eof_tok", align 8
  store ptr @clo.const.96, ptr @"var.lexer::scan_delim", align 8
  store ptr @clo.const.97, ptr @"var.lexer::scan_ident", align 8
  store ptr @clo.const.95, ptr @"var.lexer::scan_intrinsic", align 8
  store ptr @clo.const.92, ptr @"var.lexer::comment_block", align 8
  store ptr @clo.const.93, ptr @"var.lexer::comment_line", align 8
  store ptr @clo.const.101, ptr @"var.lexer::next_tok", align 8
  store ptr @clo.const.100, ptr @"var.lexer::dispatch_bol", align 8
  store ptr @clo.const.99, ptr @"var.lexer::dispatch_scan", align 8
  store ptr @clo.const.106, ptr @"var.lexer::show", align 8
  store ptr @clo.const.105, ptr @"var.lexer::kind_name", align 8
  ret void
}

declare i32 @open(ptr, i32)

declare i32 @close(i32)

declare i64 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @waitpid(i64, ptr, i64)

declare i64 @read(i32, ptr, i64)

declare i64 @lseek(i32, i64, i64)

declare i64 @writev(i32, ptr, i64)

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
  store i64 140, ptr %err.line.gep, align 8
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
  store i64 140, ptr %err.line.gep14, align 8
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
  store i64 147, ptr %err.line.gep, align 8
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
  store i64 147, ptr %err.line.gep14, align 8
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

define void @"lexer::lex_set_file"(ptr %0) #1 {
entry:
  %var.file = alloca ptr, align 8
  store ptr %0, ptr %var.file, align 8
  %var.load = load ptr, ptr %var.file, align 8
  store ptr %var.load, ptr @"var.lexer::cur_lex_file", align 8
  ret void
}

define ptr @"lexer::lex_get_file"() #1 {
entry:
  %var.load = load ptr, ptr @"var.lexer::cur_lex_file", align 8
  ret ptr %var.load
}

define i64 @"lexer::fail"(i64 %0, i64 %1, i64 %2, ptr %3) #1 {
entry:
  %var.out = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
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
  %var.load = load ptr, ptr @"var.lexer::cur_lex_file", align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len3 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len4 = and i64 %eq.lhs.len3, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort:                               ; preds = %entry
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

str_gen_check:                                    ; preds = %b.buf.len1
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen5 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen6 = load i64, ptr %arena.gen5, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen6
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len1
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %str.tag8 = lshr i64 %eq.rhs.len, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str.eq.then:                                      ; preds = %str_ok11
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data17 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data17, ptr %eq.rhs.data, i64 %eq.lhs.len4)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok11
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load18 = load ptr, ptr @"var.lexer::cur_lex_file", align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %concat.lhs19 = load i64, ptr %concat.lhs, align 8
  %concat.lhs20 = and i64 %concat.lhs19, 281474976710655
  %str.tag21 = lshr i64 %concat.lhs19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.else:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len49
  %choice.res = phi ptr [ %concat.str, %concat.tot.len49 ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.fn, align 8
  %var.load53 = load ptr, ptr %var.fn, align 8
  %var.load54 = load i64, ptr %var.line, align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load54)
  %var.load55 = load i64, ptr %var.col, align 8
  %call.res56 = call ptr @"str::from_int"(i64 %var.load55)
  %var.load57 = load i64, ptr %var.code, align 8
  %call.res58 = call ptr @"str::from_int"(i64 %var.load57)
  %var.load59 = load ptr, ptr %var.msg, align 8
  %arena.cur60 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load53, ptr %rec.fld, align 8
  %rec.fld61 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %call.res, ptr %rec.fld61, align 8
  %rec.fld62 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.4.struct, ptr %rec.fld62, align 8
  %rec.fld63 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %call.res56, ptr %rec.fld63, align 8
  %rec.fld64 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr @str.5.struct, ptr %rec.fld64, align 8
  %rec.fld65 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 5
  store ptr %call.res58, ptr %rec.fld65, align 8
  %rec.fld66 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr @str.6.struct, ptr %rec.fld66, align 8
  %rec.fld67 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr %var.load59, ptr %rec.fld67, align 8
  %rec.fld68 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 8
  store ptr @str.7.struct, ptr %rec.fld68, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load69 = load ptr, ptr %var.fn, align 8
  %b.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 0
  %b.str.len70 = load i64, ptr %b.str.len, align 8
  %b.str.len71 = and i64 %b.str.len70, 281474976710655
  %str.tag72 = lshr i64 %b.str.len70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_gen_check23:                                  ; preds = %choice.then
  %arena.gen26 = call ptr @dva_arena_current()
  %arena.gen27 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen26, i32 0, i32 4
  %arena.gen28 = load i64, ptr %arena.gen27, align 8
  %str.tag.match29 = icmp eq i64 %str.tag21, %arena.gen28
  br i1 %str.tag.match29, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.then
  %concat.lhs30 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %concat.lhs31 = load ptr, ptr %concat.lhs30, align 8
  %concat.rhs = load i64, ptr @str.4.struct, align 8
  %concat.rhs32 = and i64 %concat.rhs, 281474976710655
  %str.tag33 = lshr i64 %concat.rhs, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_stale25:                                      ; preds = %str_gen_check23
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

str_gen_check35:                                  ; preds = %str_ok24
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %str_ok24
  %concat.rhs42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs20, i64 %concat.rhs32)
  %sum43 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf44 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf44, label %str_overflow_abort46, label %concat.sum.len45

str_stale37:                                      ; preds = %str_gen_check35
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

concat.sum.len45:                                 ; preds = %str_overflow_abort46, %str_ok36
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum43, i64 1)
  %sum47 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf48 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf48, label %str_overflow_abort50, label %concat.tot.len49

str_overflow_abort46:                             ; preds = %str_ok36
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len45

concat.tot.len49:                                 ; preds = %str_overflow_abort50, %concat.sum.len45
  %arena.cur51 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 %sum47)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs31, i64 %concat.lhs20, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs42, i64 %concat.rhs32, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum43
  store i8 0, ptr %concat.nul, align 1
  %arena.cur52 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum43, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort50:                             ; preds = %concat.sum.len45
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len49

str_gen_check74:                                  ; preds = %choice.exit
  %arena.gen77 = call ptr @dva_arena_current()
  %arena.gen78 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen77, i32 0, i32 4
  %arena.gen79 = load i64, ptr %arena.gen78, align 8
  %str.tag.match80 = icmp eq i64 %str.tag72, %arena.gen79
  br i1 %str.tag.match80, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %choice.exit
  %b.add.len = add i64 0, %b.str.len71
  %var.load81 = load i64, ptr %var.line, align 8
  %call.res82 = call ptr @"str::from_int"(i64 %var.load81)
  %b.str.len83 = getelementptr inbounds { i64, ptr }, ptr %call.res82, i32 0, i32 0
  %b.str.len84 = load i64, ptr %b.str.len83, align 8
  %b.str.len85 = and i64 %b.str.len84, 281474976710655
  %str.tag86 = lshr i64 %b.str.len84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

str_stale76:                                      ; preds = %str_gen_check74
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

str_gen_check88:                                  ; preds = %str_ok75
  %arena.gen91 = call ptr @dva_arena_current()
  %arena.gen92 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen91, i32 0, i32 4
  %arena.gen93 = load i64, ptr %arena.gen92, align 8
  %str.tag.match94 = icmp eq i64 %str.tag86, %arena.gen93
  br i1 %str.tag.match94, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %str_ok75
  %b.add.len95 = add i64 %b.add.len, %b.str.len85
  %b.str.len96 = load i64, ptr @str.4.struct, align 8
  %b.str.len97 = and i64 %b.str.len96, 281474976710655
  %str.tag98 = lshr i64 %b.str.len96, 48
  %str.immortal99 = icmp eq i64 %str.tag98, 0
  br i1 %str.immortal99, label %str_ok101, label %str_gen_check100

str_stale90:                                      ; preds = %str_gen_check88
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

str_gen_check100:                                 ; preds = %str_ok89
  %arena.gen103 = call ptr @dva_arena_current()
  %arena.gen104 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen103, i32 0, i32 4
  %arena.gen105 = load i64, ptr %arena.gen104, align 8
  %str.tag.match106 = icmp eq i64 %str.tag98, %arena.gen105
  br i1 %str.tag.match106, label %str_ok101, label %str_stale102

str_ok101:                                        ; preds = %str_stale102, %str_gen_check100, %str_ok89
  %b.add.len107 = add i64 %b.add.len95, %b.str.len97
  %var.load108 = load i64, ptr %var.col, align 8
  %call.res109 = call ptr @"str::from_int"(i64 %var.load108)
  %b.str.len110 = getelementptr inbounds { i64, ptr }, ptr %call.res109, i32 0, i32 0
  %b.str.len111 = load i64, ptr %b.str.len110, align 8
  %b.str.len112 = and i64 %b.str.len111, 281474976710655
  %str.tag113 = lshr i64 %b.str.len111, 48
  %str.immortal114 = icmp eq i64 %str.tag113, 0
  br i1 %str.immortal114, label %str_ok116, label %str_gen_check115

str_stale102:                                     ; preds = %str_gen_check100
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok101

str_gen_check115:                                 ; preds = %str_ok101
  %arena.gen118 = call ptr @dva_arena_current()
  %arena.gen119 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen118, i32 0, i32 4
  %arena.gen120 = load i64, ptr %arena.gen119, align 8
  %str.tag.match121 = icmp eq i64 %str.tag113, %arena.gen120
  br i1 %str.tag.match121, label %str_ok116, label %str_stale117

str_ok116:                                        ; preds = %str_stale117, %str_gen_check115, %str_ok101
  %b.add.len122 = add i64 %b.add.len107, %b.str.len112
  %b.str.len123 = load i64, ptr @str.5.struct, align 8
  %b.str.len124 = and i64 %b.str.len123, 281474976710655
  %str.tag125 = lshr i64 %b.str.len123, 48
  %str.immortal126 = icmp eq i64 %str.tag125, 0
  br i1 %str.immortal126, label %str_ok128, label %str_gen_check127

str_stale117:                                     ; preds = %str_gen_check115
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok116

str_gen_check127:                                 ; preds = %str_ok116
  %arena.gen130 = call ptr @dva_arena_current()
  %arena.gen131 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen130, i32 0, i32 4
  %arena.gen132 = load i64, ptr %arena.gen131, align 8
  %str.tag.match133 = icmp eq i64 %str.tag125, %arena.gen132
  br i1 %str.tag.match133, label %str_ok128, label %str_stale129

str_ok128:                                        ; preds = %str_stale129, %str_gen_check127, %str_ok116
  %b.add.len134 = add i64 %b.add.len122, %b.str.len124
  %var.load135 = load i64, ptr %var.code, align 8
  %call.res136 = call ptr @"str::from_int"(i64 %var.load135)
  %b.str.len137 = getelementptr inbounds { i64, ptr }, ptr %call.res136, i32 0, i32 0
  %b.str.len138 = load i64, ptr %b.str.len137, align 8
  %b.str.len139 = and i64 %b.str.len138, 281474976710655
  %str.tag140 = lshr i64 %b.str.len138, 48
  %str.immortal141 = icmp eq i64 %str.tag140, 0
  br i1 %str.immortal141, label %str_ok143, label %str_gen_check142

str_stale129:                                     ; preds = %str_gen_check127
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok128

str_gen_check142:                                 ; preds = %str_ok128
  %arena.gen145 = call ptr @dva_arena_current()
  %arena.gen146 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen145, i32 0, i32 4
  %arena.gen147 = load i64, ptr %arena.gen146, align 8
  %str.tag.match148 = icmp eq i64 %str.tag140, %arena.gen147
  br i1 %str.tag.match148, label %str_ok143, label %str_stale144

str_ok143:                                        ; preds = %str_stale144, %str_gen_check142, %str_ok128
  %b.add.len149 = add i64 %b.add.len134, %b.str.len139
  %b.str.len150 = load i64, ptr @str.6.struct, align 8
  %b.str.len151 = and i64 %b.str.len150, 281474976710655
  %str.tag152 = lshr i64 %b.str.len150, 48
  %str.immortal153 = icmp eq i64 %str.tag152, 0
  br i1 %str.immortal153, label %str_ok155, label %str_gen_check154

str_stale144:                                     ; preds = %str_gen_check142
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok143

str_gen_check154:                                 ; preds = %str_ok143
  %arena.gen157 = call ptr @dva_arena_current()
  %arena.gen158 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen157, i32 0, i32 4
  %arena.gen159 = load i64, ptr %arena.gen158, align 8
  %str.tag.match160 = icmp eq i64 %str.tag152, %arena.gen159
  br i1 %str.tag.match160, label %str_ok155, label %str_stale156

str_ok155:                                        ; preds = %str_stale156, %str_gen_check154, %str_ok143
  %b.add.len161 = add i64 %b.add.len149, %b.str.len151
  %var.load162 = load ptr, ptr %var.msg, align 8
  %b.str.len163 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 0
  %b.str.len164 = load i64, ptr %b.str.len163, align 8
  %b.str.len165 = and i64 %b.str.len164, 281474976710655
  %str.tag166 = lshr i64 %b.str.len164, 48
  %str.immortal167 = icmp eq i64 %str.tag166, 0
  br i1 %str.immortal167, label %str_ok169, label %str_gen_check168

str_stale156:                                     ; preds = %str_gen_check154
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok155

str_gen_check168:                                 ; preds = %str_ok155
  %arena.gen171 = call ptr @dva_arena_current()
  %arena.gen172 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen171, i32 0, i32 4
  %arena.gen173 = load i64, ptr %arena.gen172, align 8
  %str.tag.match174 = icmp eq i64 %str.tag166, %arena.gen173
  br i1 %str.tag.match174, label %str_ok169, label %str_stale170

str_ok169:                                        ; preds = %str_stale170, %str_gen_check168, %str_ok155
  %b.add.len175 = add i64 %b.add.len161, %b.str.len165
  %b.str.len176 = load i64, ptr @str.7.struct, align 8
  %b.str.len177 = and i64 %b.str.len176, 281474976710655
  %str.tag178 = lshr i64 %b.str.len176, 48
  %str.immortal179 = icmp eq i64 %str.tag178, 0
  br i1 %str.immortal179, label %str_ok181, label %str_gen_check180

str_stale170:                                     ; preds = %str_gen_check168
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok169

str_gen_check180:                                 ; preds = %str_ok169
  %arena.gen183 = call ptr @dva_arena_current()
  %arena.gen184 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen183, i32 0, i32 4
  %arena.gen185 = load i64, ptr %arena.gen184, align 8
  %str.tag.match186 = icmp eq i64 %str.tag178, %arena.gen185
  br i1 %str.tag.match186, label %str_ok181, label %str_stale182

str_ok181:                                        ; preds = %str_stale182, %str_gen_check180, %str_ok169
  %b.add.len187 = add i64 %b.add.len175, %b.str.len177
  %b.rec.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rec.cur.len188 = load i64, ptr %b.rec.cur.len, align 8
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len188, i64 %b.add.len187)
  %sum189 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf190 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf190, label %str_overflow_abort192, label %b.rec.new.len191

str_stale182:                                     ; preds = %str_gen_check180
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok181

b.rec.new.len191:                                 ; preds = %str_overflow_abort192, %str_ok181
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap193 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap193, %sum189
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort192:                            ; preds = %str_ok181
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len191

b.grow2:                                          ; preds = %b.rec.new.len191
  %b.cap2 = mul i64 %b.cap193, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum189
  %b.new.cap = select i1 %b.cap.need, i64 %sum189, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2194 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2195 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum196 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf197 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf197, label %str_overflow_abort199, label %b.new.buf.len2198

b.nogrow2:                                        ; preds = %b.rec.new.len191
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2198
  %b.rec.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rec.data201 = load ptr, ptr %b.rec.data, align 8
  %b.rec.dst = getelementptr i8, ptr %b.rec.data201, i64 %b.rec.cur.len188
  %b.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 1
  %b.str.data202 = load ptr, ptr %b.str.data, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data202, i64 %b.str.len71, i1 false)
  %b.rec.off = add i64 %b.rec.cur.len188, %b.str.len71
  %b.rec.dst203 = getelementptr i8, ptr %b.rec.data201, i64 %b.rec.off
  %b.str.data204 = getelementptr inbounds { i64, ptr }, ptr %call.res82, i32 0, i32 1
  %b.str.data205 = load ptr, ptr %b.str.data204, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst203, ptr align 1 %b.str.data205, i64 %b.str.len85, i1 false)
  %b.rec.off206 = add i64 %b.rec.off, %b.str.len85
  %b.rec.dst207 = getelementptr i8, ptr %b.rec.data201, i64 %b.rec.off206
  %b.str.data208 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst207, ptr align 1 %b.str.data208, i64 %b.str.len97, i1 false)
  %b.rec.off209 = add i64 %b.rec.off206, %b.str.len97
  %b.rec.dst210 = getelementptr i8, ptr %b.rec.data201, i64 %b.rec.off209
  %b.str.data211 = getelementptr inbounds { i64, ptr }, ptr %call.res109, i32 0, i32 1
  %b.str.data212 = load ptr, ptr %b.str.data211, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst210, ptr align 1 %b.str.data212, i64 %b.str.len112, i1 false)
  %b.rec.off213 = add i64 %b.rec.off209, %b.str.len112
  %b.rec.dst214 = getelementptr i8, ptr %b.rec.data201, i64 %b.rec.off213
  %b.str.data215 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst214, ptr align 1 %b.str.data215, i64 %b.str.len124, i1 false)
  %b.rec.off216 = add i64 %b.rec.off213, %b.str.len124
  %b.rec.dst217 = getelementptr i8, ptr %b.rec.data201, i64 %b.rec.off216
  %b.str.data218 = getelementptr inbounds { i64, ptr }, ptr %call.res136, i32 0, i32 1
  %b.str.data219 = load ptr, ptr %b.str.data218, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst217, ptr align 1 %b.str.data219, i64 %b.str.len139, i1 false)
  %b.rec.off220 = add i64 %b.rec.off216, %b.str.len139
  %b.rec.dst221 = getelementptr i8, ptr %b.rec.data201, i64 %b.rec.off220
  %b.str.data222 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst221, ptr align 1 %b.str.data222, i64 %b.str.len151, i1 false)
  %b.rec.off223 = add i64 %b.rec.off220, %b.str.len151
  %b.rec.dst224 = getelementptr i8, ptr %b.rec.data201, i64 %b.rec.off223
  %b.str.data225 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 1
  %b.str.data226 = load ptr, ptr %b.str.data225, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst224, ptr align 1 %b.str.data226, i64 %b.str.len165, i1 false)
  %b.rec.off227 = add i64 %b.rec.off223, %b.str.len165
  %b.rec.dst228 = getelementptr i8, ptr %b.rec.data201, i64 %b.rec.off227
  %b.str.data229 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst228, ptr align 1 %b.str.data229, i64 %b.str.len177, i1 false)
  %b.rec.off230 = add i64 %b.rec.off227, %b.str.len177
  %b.rec.nul = getelementptr i8, ptr %b.rec.data201, i64 %sum189
  store i8 0, ptr %b.rec.nul, align 1
  %b.len.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum189, ptr %b.len.gep231, align 8
  %var.load232 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 0
  %b.freeze.len233 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 1
  %b.freeze.data234 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len2198:                                ; preds = %str_overflow_abort199, %b.grow2
  %arena.cur200 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 %sum196)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2195, i64 %b.cur.len2194, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2194
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort199:                            ; preds = %b.grow2
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2198

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data234, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data234, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data234, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur235 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 %b.freeze.len233)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data234, i64 %b.freeze.len233, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data236 = phi ptr [ %b.freeze.data234, %b.grow_done ], [ %b.freeze.data234, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur237 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur237, i64 16)
  %str.build.len.gep238 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len233, ptr %str.build.len.gep238, align 8
  %str.build.data.gep239 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data236, ptr %str.build.data.gep239, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.out, align 8
  %var.load240 = load ptr, ptr %var.out, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load240, i32 0, i32 1
  %arg.str.ptr241 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr242 = getelementptr inbounds { i64, ptr }, ptr %var.load240, i32 0, i32 0
  %arg.str.ptr243 = load i64, ptr %arg.str.ptr242, align 8
  %arg.str.ptr244 = and i64 %arg.str.ptr243, 281474976710655
  %str.tag245 = lshr i64 %arg.str.ptr243, 48
  %str.immortal246 = icmp eq i64 %str.tag245, 0
  br i1 %str.immortal246, label %str_ok248, label %str_gen_check247

str_gen_check247:                                 ; preds = %b.freeze.done
  %arena.gen250 = call ptr @dva_arena_current()
  %arena.gen251 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen250, i32 0, i32 4
  %arena.gen252 = load i64, ptr %arena.gen251, align 8
  %str.tag.match253 = icmp eq i64 %str.tag245, %arena.gen252
  br i1 %str.tag.match253, label %str_ok248, label %str_stale249

str_ok248:                                        ; preds = %str_stale249, %str_gen_check247, %b.freeze.done
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr241, i64 %arg.str.ptr244
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr254, label %nulcopy

str_stale249:                                     ; preds = %str_gen_check247
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok248

arg.str.ptr254:                                   ; preds = %str_ok248
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok248
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr244, i64 1)
  %sum255 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf256 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf256, label %str_overflow_abort258, label %nulcopy.len257

nulmerge:                                         ; preds = %nulcopy.len257, %arg.str.ptr254
  %arg.str.ptr260 = phi ptr [ %arg.str.ptr241, %arg.str.ptr254 ], [ %nulcopy.buf, %nulcopy.len257 ]
  %var.load261 = load ptr, ptr %var.out, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load261, i32 0, i32 0
  %str.len.query262 = load i64, ptr %str.len.query, align 8
  %str.len.query263 = and i64 %str.len.query262, 281474976710655
  %str.tag264 = lshr i64 %str.len.query262, 48
  %str.immortal265 = icmp eq i64 %str.tag264, 0
  br i1 %str.immortal265, label %str_ok267, label %str_gen_check266

nulcopy.len257:                                   ; preds = %str_overflow_abort258, %nulcopy
  %arena.cur259 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 %sum255)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr241, i64 %arg.str.ptr244, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr244
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort258:                            ; preds = %nulcopy
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len257

str_gen_check266:                                 ; preds = %nulmerge
  %arena.gen269 = call ptr @dva_arena_current()
  %arena.gen270 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen269, i32 0, i32 4
  %arena.gen271 = load i64, ptr %arena.gen270, align 8
  %str.tag.match272 = icmp eq i64 %str.tag264, %arena.gen271
  br i1 %str.tag.match272, label %str_ok267, label %str_stale268

str_ok267:                                        ; preds = %str_stale268, %str_gen_check266, %nulmerge
  %call.res273 = call i64 @write(i32 2, ptr %arg.str.ptr260, i64 %str.len.query263)
  call void @dva_arena_destroy(ptr @global_arena)
  call void @exit(i32 1)
  unreachable

str_stale268:                                     ; preds = %str_gen_check266
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok267

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
  br i1 %var.load127, label %choice.then128, label %choice.exit129

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
  %b.load130 = load ptr, ptr %var.buf, align 8
  %b.rn.cur.len131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load130, i32 0, i32 0
  %b.rn.cur.len132 = load i64, ptr %b.rn.cur.len131, align 8
  %b.rn.new.len133 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len132, i64 1)
  %sum134 = extractvalue { i64, i1 } %b.rn.new.len133, 0
  %ovf135 = extractvalue { i64, i1 } %b.rn.new.len133, 1
  br i1 %ovf135, label %str_overflow_abort137, label %b.rn.new.len136

choice.exit129:                                   ; preds = %br.done.5, %loop.exit.1
  %var.load174 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 0
  %b.freeze.len175 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 1
  %b.freeze.data176 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len136:                                  ; preds = %str_overflow_abort137, %choice.then128
  %b.cap138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load130, i32 0, i32 2
  %b.cap139 = load i64, ptr %b.cap138, align 8
  %b.need.grow140 = icmp slt i64 %b.cap139, %sum134
  br i1 %b.need.grow140, label %b.grow2141, label %b.nogrow2142

str_overflow_abort137:                            ; preds = %choice.then128
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len136

b.grow2141:                                       ; preds = %b.rn.new.len136
  %b.cap2144 = mul i64 %b.cap139, 2
  %b.cap.small145 = icmp slt i64 %b.cap2144, 16
  %b.cap.grow146 = select i1 %b.cap.small145, i64 16, i64 %b.cap2144
  %b.cap.need147 = icmp slt i64 %b.cap.grow146, %sum134
  %b.new.cap148 = select i1 %b.cap.need147, i64 %sum134, i64 %b.cap.grow146
  %b.cur.len2149 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load130, i32 0, i32 0
  %b.cur.len2150 = load i64, ptr %b.cur.len2149, align 8
  %b.cur.data2151 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load130, i32 0, i32 1
  %b.cur.data2152 = load ptr, ptr %b.cur.data2151, align 8
  %b.new.buf.len2153 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap148, i64 1)
  %sum154 = extractvalue { i64, i1 } %b.new.buf.len2153, 0
  %ovf155 = extractvalue { i64, i1 } %b.new.buf.len2153, 1
  br i1 %ovf155, label %str_overflow_abort157, label %b.new.buf.len2156

b.nogrow2142:                                     ; preds = %b.rn.new.len136
  br label %b.grow_done143

b.grow_done143:                                   ; preds = %b.nogrow2142, %b.new.buf.len2156
  %b.rn.data163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load130, i32 0, i32 1
  %b.rn.data164 = load ptr, ptr %b.rn.data163, align 8
  %b.rn.dst165 = getelementptr i8, ptr %b.rn.data164, i64 %b.rn.cur.len132
  br i1 true, label %br.b1.5, label %br.c2.5

b.new.buf.len2156:                                ; preds = %str_overflow_abort157, %b.grow2141
  %arena.cur158 = call ptr @dva_arena_current()
  %b.new.buf2159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 %sum154)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2159, ptr align 1 %b.cur.data2152, i64 %b.cur.len2150, i1 false)
  %b.grow2.nul160 = getelementptr i8, ptr %b.new.buf2159, i64 %b.cur.len2150
  store i8 0, ptr %b.grow2.nul160, align 1
  %b.new.data2.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load130, i32 0, i32 1
  store ptr %b.new.buf2159, ptr %b.new.data2.gep161, align 8
  %b.new.cap2.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load130, i32 0, i32 2
  store i64 %b.new.cap148, ptr %b.new.cap2.gep162, align 8
  br label %b.grow_done143

str_overflow_abort157:                            ; preds = %b.grow2141
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2156

br.b1.5:                                          ; preds = %b.grow_done143
  store i8 92, ptr %b.rn.dst165, align 1
  br label %br.done.5

br.c2.5:                                          ; preds = %b.grow_done143
  br i1 true, label %br.b2.5, label %br.c3.5

br.b2.5:                                          ; preds = %br.c2.5
  store i8 -63, ptr %b.rn.dst165, align 1
  %br.dst1166 = getelementptr i8, ptr %b.rn.dst165, i64 1
  store i8 -100, ptr %br.dst1166, align 1
  br label %br.done.5

br.c3.5:                                          ; preds = %br.c2.5
  br i1 true, label %br.b3.5, label %br.b4.5

br.b3.5:                                          ; preds = %br.c3.5
  store i8 -32, ptr %b.rn.dst165, align 1
  %br.dst1.3167 = getelementptr i8, ptr %b.rn.dst165, i64 1
  store i8 -127, ptr %br.dst1.3167, align 1
  %br.dst2.3168 = getelementptr i8, ptr %b.rn.dst165, i64 2
  store i8 -100, ptr %br.dst2.3168, align 1
  br label %br.done.5

br.b4.5:                                          ; preds = %br.c3.5
  store i8 -16, ptr %b.rn.dst165, align 1
  %br.dst1.4169 = getelementptr i8, ptr %b.rn.dst165, i64 1
  store i8 -128, ptr %br.dst1.4169, align 1
  %br.dst2.4170 = getelementptr i8, ptr %b.rn.dst165, i64 2
  store i8 -127, ptr %br.dst2.4170, align 1
  %br.dst3.4171 = getelementptr i8, ptr %b.rn.dst165, i64 3
  store i8 -100, ptr %br.dst3.4171, align 1
  br label %br.done.5

br.done.5:                                        ; preds = %br.b4.5, %br.b3.5, %br.b2.5, %br.b1.5
  %br.nul172 = getelementptr i8, ptr %b.rn.data164, i64 %sum134
  store i8 0, ptr %br.nul172, align 1
  %b.len.gep173 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load130, i32 0, i32 0
  store i64 %sum134, ptr %b.len.gep173, align 8
  br label %choice.exit129

b.freeze.check:                                   ; preds = %choice.exit129
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data176, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data176, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data176, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur177 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 %b.freeze.len175)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data176, i64 %b.freeze.len175, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit129
  %b.freeze.data178 = phi ptr [ %b.freeze.data176, %choice.exit129 ], [ %b.freeze.data176, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur179 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len175, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data178, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 2
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
  %app.str.len = load i64, ptr @str.8.struct, align 8
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
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
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
  %call.res = call i1 @"unicode::is_id_start"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"unicode::is_id_start"(i64) #1

define i1 @"lexer::is_id_char"(i64 %0) #1 {
entry:
  %var.r = alloca i64, align 8
  store i64 %0, ptr %var.r, align 8
  %var.load = load i64, ptr %var.r, align 8
  %call.res = call i1 @"unicode::is_id_continue"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"unicode::is_id_continue"(i64) #1

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
  %call.res = call i64 @"lexer::scan_while"(ptr %var.load, ptr @clo.const.20)
  ret i64 %call.res
}

define internal i1 @"$anon_fn.90"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"unicode::is_digit"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"unicode::is_digit"(i64) #1

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
  store ptr @str.9.struct, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr @str.10.struct, ptr %rec.fld1, align 8
  %rec.fld2 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.11.struct, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr @str.12.struct, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr @str.13.struct, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 5
  store ptr @str.14.struct, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr @str.15.struct, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.16.struct, ptr %rec.fld7, align 8
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

loop.exit.13:                                     ; preds = %choice.case, %loop.exit.nat.13
  %var.load97 = load i64, ptr %"var.got'", align 8
  ret i64 %var.load97

choice.exit:                                      ; preds = %choice.next
  %var.load9 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %str.len.query10 = load i64, ptr %str.len.query, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %str.tag = lshr i64 %str.len.query10, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.case:                                      ; preds = %loop.body.13
  br label %loop.exit.13

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
  %eq.rhs.len = load i64, ptr @str.17.struct, align 8
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
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
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
  %concat.lhs = load i64, ptr @str.18.struct, align 8
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
  %concat.lhs40 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.19.struct, align 8
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
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
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
  %var.is_ret_pos_split = alloca i1, align 1
  %var.is_ret_neg_split = alloca i1, align 1
  %var.is_ret_succ_split = alloca i1, align 1
  %var.is_ret_noth_split = alloca i1, align 1
  %var.is_bang_ram_split = alloca i1, align 1
  %var.is_xor_split = alloca i1, align 1
  %var.is_bind_split = alloca i1, align 1
  %var.is_ret_split = alloca i1, align 1
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
  br i1 %var.load79, label %choice.then80, label %choice.exit81

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
  %var.load82 = load ptr, ptr %var.lx, align 8
  %var.load83 = load i64, ptr %var.start, align 8
  %addtmp84 = add i64 %var.load83, 2
  %fld.gep85 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load82, i32 0, i32 1
  store i64 %addtmp84, ptr %fld.gep85, align 8
  %var.load86 = load ptr, ptr %var.lx, align 8
  %var.load87 = load i64, ptr %var.col, align 8
  %addtmp88 = add i64 %var.load87, 2
  %fld.gep89 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load86, i32 0, i32 3
  store i64 %addtmp88, ptr %fld.gep89, align 8
  %var.load90 = load ptr, ptr %var.lx, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load91 = load i64, ptr %var.start, align 8
  %var.load92 = load i64, ptr %var.line, align 8
  %var.load93 = load i64, ptr %var.col, align 8
  %call.res94 = call ptr @"lexer::mktok"(ptr %var.load90, ptr %enum.alloc, i64 %var.load91, i64 2, i64 %var.load92, i64 %var.load93, ptr @str.20.struct)
  ret ptr %call.res94

choice.exit81:                                    ; preds = %ret.dead, %and.42.exit
  %var.load95 = load i64, ptr %"var.i'", align 8
  %var.load96 = load i64, ptr %var.start, align 8
  %subtmp97 = sub i64 %var.load95, %var.load96
  %cmptmp98 = icmp sgt i64 %subtmp97, 2
  br i1 %cmptmp98, label %and.43.then, label %and.43.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit81

and.43.then:                                      ; preds = %choice.exit81
  %var.load99 = load ptr, ptr %var.lx, align 8
  %fld.gep100 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load99, i32 0, i32 0
  %fld.load101 = load ptr, ptr %fld.gep100, align 8
  %s.read.len102 = getelementptr inbounds { i64, ptr }, ptr %fld.load101, i32 0, i32 0
  %s.read.len103 = load i64, ptr %s.read.len102, align 8
  %s.read.len104 = and i64 %s.read.len103, 281474976710655
  %str.tag105 = lshr i64 %s.read.len103, 48
  %str.immortal106 = icmp eq i64 %str.tag105, 0
  br i1 %str.immortal106, label %str_ok108, label %str_gen_check107

and.43.else:                                      ; preds = %choice.exit81
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %idx_ok119
  %and.43.phi = phi i1 [ %cmptmp125, %idx_ok119 ], [ %cmptmp98, %and.43.else ]
  br i1 %and.43.phi, label %and.44.then, label %and.44.else

str_gen_check107:                                 ; preds = %and.43.then
  %arena.gen110 = call ptr @dva_arena_current()
  %arena.gen111 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen110, i32 0, i32 4
  %arena.gen112 = load i64, ptr %arena.gen111, align 8
  %str.tag.match113 = icmp eq i64 %str.tag105, %arena.gen112
  br i1 %str.tag.match113, label %str_ok108, label %str_stale109

str_ok108:                                        ; preds = %str_stale109, %str_gen_check107, %and.43.then
  %s.read.data114 = getelementptr inbounds { i64, ptr }, ptr %fld.load101, i32 0, i32 1
  %s.read.data115 = load ptr, ptr %s.read.data114, align 8
  %var.load116 = load i64, ptr %var.start, align 8
  %idx.neg117 = icmp slt i64 %var.load116, 0
  br i1 %idx.neg117, label %idx_oob120, label %idx_big_check118

str_stale109:                                     ; preds = %str_gen_check107
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok108

idx_big_check118:                                 ; preds = %str_ok108
  %idx.big121 = icmp sge i64 %var.load116, %s.read.len104
  br i1 %idx.big121, label %idx_oob120, label %idx_ok119

idx_ok119:                                        ; preds = %idx_oob120, %idx_big_check118
  %s.byte.gep122 = getelementptr i8, ptr %s.read.data115, i64 %var.load116
  %s.byte123 = load i8, ptr %s.byte.gep122, align 1
  %s.byte.val124 = zext i8 %s.byte123 to i64
  %cmptmp125 = icmp eq i64 %s.byte.val124, 33
  br label %and.43.exit

idx_oob120:                                       ; preds = %idx_big_check118, %str_ok108
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok119

and.44.then:                                      ; preds = %and.43.exit
  %var.load126 = load ptr, ptr %var.lx, align 8
  %fld.gep127 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load126, i32 0, i32 0
  %fld.load128 = load ptr, ptr %fld.gep127, align 8
  %s.read.len129 = getelementptr inbounds { i64, ptr }, ptr %fld.load128, i32 0, i32 0
  %s.read.len130 = load i64, ptr %s.read.len129, align 8
  %s.read.len131 = and i64 %s.read.len130, 281474976710655
  %str.tag132 = lshr i64 %s.read.len130, 48
  %str.immortal133 = icmp eq i64 %str.tag132, 0
  br i1 %str.immortal133, label %str_ok135, label %str_gen_check134

and.44.else:                                      ; preds = %and.43.exit
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %idx_ok147
  %and.44.phi = phi i1 [ %cmptmp153, %idx_ok147 ], [ %and.43.phi, %and.44.else ]
  store i1 %and.44.phi, ptr %var.is_unwrap_split, align 1
  %var.load154 = load i1, ptr %var.is_unwrap_split, align 1
  br i1 %var.load154, label %choice.then155, label %choice.exit156

str_gen_check134:                                 ; preds = %and.44.then
  %arena.gen137 = call ptr @dva_arena_current()
  %arena.gen138 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen137, i32 0, i32 4
  %arena.gen139 = load i64, ptr %arena.gen138, align 8
  %str.tag.match140 = icmp eq i64 %str.tag132, %arena.gen139
  br i1 %str.tag.match140, label %str_ok135, label %str_stale136

str_ok135:                                        ; preds = %str_stale136, %str_gen_check134, %and.44.then
  %s.read.data141 = getelementptr inbounds { i64, ptr }, ptr %fld.load128, i32 0, i32 1
  %s.read.data142 = load ptr, ptr %s.read.data141, align 8
  %var.load143 = load i64, ptr %var.start, align 8
  %addtmp144 = add i64 %var.load143, 1
  %idx.neg145 = icmp slt i64 %addtmp144, 0
  br i1 %idx.neg145, label %idx_oob148, label %idx_big_check146

str_stale136:                                     ; preds = %str_gen_check134
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok135

idx_big_check146:                                 ; preds = %str_ok135
  %idx.big149 = icmp sge i64 %addtmp144, %s.read.len131
  br i1 %idx.big149, label %idx_oob148, label %idx_ok147

idx_ok147:                                        ; preds = %idx_oob148, %idx_big_check146
  %s.byte.gep150 = getelementptr i8, ptr %s.read.data142, i64 %addtmp144
  %s.byte151 = load i8, ptr %s.byte.gep150, align 1
  %s.byte.val152 = zext i8 %s.byte151 to i64
  %cmptmp153 = icmp eq i64 %s.byte.val152, 33
  br label %and.44.exit

idx_oob148:                                       ; preds = %idx_big_check146, %str_ok135
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok147

choice.then155:                                   ; preds = %and.44.exit
  %var.load157 = load ptr, ptr %var.lx, align 8
  %var.load158 = load i64, ptr %var.start, align 8
  %addtmp159 = add i64 %var.load158, 2
  %fld.gep160 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load157, i32 0, i32 1
  store i64 %addtmp159, ptr %fld.gep160, align 8
  %var.load161 = load ptr, ptr %var.lx, align 8
  %var.load162 = load i64, ptr %var.col, align 8
  %addtmp163 = add i64 %var.load162, 2
  %fld.gep164 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load161, i32 0, i32 3
  store i64 %addtmp163, ptr %fld.gep164, align 8
  %var.load165 = load ptr, ptr %var.lx, align 8
  %arena.cur166 = call ptr @dva_arena_current()
  %enum.alloc167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 16)
  %tag.gep168 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc167, i32 0, i32 0
  store i64 0, ptr %tag.gep168, align 8
  %pay.gep169 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc167, i32 0, i32 1
  store ptr null, ptr %pay.gep169, align 8
  %var.load170 = load i64, ptr %var.start, align 8
  %var.load171 = load i64, ptr %var.line, align 8
  %var.load172 = load i64, ptr %var.col, align 8
  %call.res173 = call ptr @"lexer::mktok"(ptr %var.load165, ptr %enum.alloc167, i64 %var.load170, i64 2, i64 %var.load171, i64 %var.load172, ptr @str.21.struct)
  ret ptr %call.res173

choice.exit156:                                   ; preds = %ret.dead174, %and.44.exit
  %var.load175 = load i64, ptr %"var.i'", align 8
  %var.load176 = load i64, ptr %var.start, align 8
  %subtmp177 = sub i64 %var.load175, %var.load176
  %cmptmp178 = icmp sgt i64 %subtmp177, 3
  br i1 %cmptmp178, label %and.45.then, label %and.45.else

ret.dead174:                                      ; No predecessors!
  br label %choice.exit156

and.45.then:                                      ; preds = %choice.exit156
  %var.load179 = load ptr, ptr %var.lx, align 8
  %fld.gep180 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load179, i32 0, i32 0
  %fld.load181 = load ptr, ptr %fld.gep180, align 8
  %s.read.len182 = getelementptr inbounds { i64, ptr }, ptr %fld.load181, i32 0, i32 0
  %s.read.len183 = load i64, ptr %s.read.len182, align 8
  %s.read.len184 = and i64 %s.read.len183, 281474976710655
  %str.tag185 = lshr i64 %s.read.len183, 48
  %str.immortal186 = icmp eq i64 %str.tag185, 0
  br i1 %str.immortal186, label %str_ok188, label %str_gen_check187

and.45.else:                                      ; preds = %choice.exit156
  br label %and.45.exit

and.45.exit:                                      ; preds = %and.45.else, %idx_ok199
  %and.45.phi = phi i1 [ %cmptmp205, %idx_ok199 ], [ %cmptmp178, %and.45.else ]
  br i1 %and.45.phi, label %and.46.then, label %and.46.else

str_gen_check187:                                 ; preds = %and.45.then
  %arena.gen190 = call ptr @dva_arena_current()
  %arena.gen191 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen190, i32 0, i32 4
  %arena.gen192 = load i64, ptr %arena.gen191, align 8
  %str.tag.match193 = icmp eq i64 %str.tag185, %arena.gen192
  br i1 %str.tag.match193, label %str_ok188, label %str_stale189

str_ok188:                                        ; preds = %str_stale189, %str_gen_check187, %and.45.then
  %s.read.data194 = getelementptr inbounds { i64, ptr }, ptr %fld.load181, i32 0, i32 1
  %s.read.data195 = load ptr, ptr %s.read.data194, align 8
  %var.load196 = load i64, ptr %var.start, align 8
  %idx.neg197 = icmp slt i64 %var.load196, 0
  br i1 %idx.neg197, label %idx_oob200, label %idx_big_check198

str_stale189:                                     ; preds = %str_gen_check187
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok188

idx_big_check198:                                 ; preds = %str_ok188
  %idx.big201 = icmp sge i64 %var.load196, %s.read.len184
  br i1 %idx.big201, label %idx_oob200, label %idx_ok199

idx_ok199:                                        ; preds = %idx_oob200, %idx_big_check198
  %s.byte.gep202 = getelementptr i8, ptr %s.read.data195, i64 %var.load196
  %s.byte203 = load i8, ptr %s.byte.gep202, align 1
  %s.byte.val204 = zext i8 %s.byte203 to i64
  %cmptmp205 = icmp eq i64 %s.byte.val204, 45
  br label %and.45.exit

idx_oob200:                                       ; preds = %idx_big_check198, %str_ok188
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok199

and.46.then:                                      ; preds = %and.45.exit
  %var.load206 = load ptr, ptr %var.lx, align 8
  %fld.gep207 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load206, i32 0, i32 0
  %fld.load208 = load ptr, ptr %fld.gep207, align 8
  %s.read.len209 = getelementptr inbounds { i64, ptr }, ptr %fld.load208, i32 0, i32 0
  %s.read.len210 = load i64, ptr %s.read.len209, align 8
  %s.read.len211 = and i64 %s.read.len210, 281474976710655
  %str.tag212 = lshr i64 %s.read.len210, 48
  %str.immortal213 = icmp eq i64 %str.tag212, 0
  br i1 %str.immortal213, label %str_ok215, label %str_gen_check214

and.46.else:                                      ; preds = %and.45.exit
  br label %and.46.exit

and.46.exit:                                      ; preds = %and.46.else, %idx_ok227
  %and.46.phi = phi i1 [ %cmptmp233, %idx_ok227 ], [ %and.45.phi, %and.46.else ]
  br i1 %and.46.phi, label %and.47.then, label %and.47.else

str_gen_check214:                                 ; preds = %and.46.then
  %arena.gen217 = call ptr @dva_arena_current()
  %arena.gen218 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen217, i32 0, i32 4
  %arena.gen219 = load i64, ptr %arena.gen218, align 8
  %str.tag.match220 = icmp eq i64 %str.tag212, %arena.gen219
  br i1 %str.tag.match220, label %str_ok215, label %str_stale216

str_ok215:                                        ; preds = %str_stale216, %str_gen_check214, %and.46.then
  %s.read.data221 = getelementptr inbounds { i64, ptr }, ptr %fld.load208, i32 0, i32 1
  %s.read.data222 = load ptr, ptr %s.read.data221, align 8
  %var.load223 = load i64, ptr %var.start, align 8
  %addtmp224 = add i64 %var.load223, 1
  %idx.neg225 = icmp slt i64 %addtmp224, 0
  br i1 %idx.neg225, label %idx_oob228, label %idx_big_check226

str_stale216:                                     ; preds = %str_gen_check214
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok215

idx_big_check226:                                 ; preds = %str_ok215
  %idx.big229 = icmp sge i64 %addtmp224, %s.read.len211
  br i1 %idx.big229, label %idx_oob228, label %idx_ok227

idx_ok227:                                        ; preds = %idx_oob228, %idx_big_check226
  %s.byte.gep230 = getelementptr i8, ptr %s.read.data222, i64 %addtmp224
  %s.byte231 = load i8, ptr %s.byte.gep230, align 1
  %s.byte.val232 = zext i8 %s.byte231 to i64
  %cmptmp233 = icmp eq i64 %s.byte.val232, 45
  br label %and.46.exit

idx_oob228:                                       ; preds = %idx_big_check226, %str_ok215
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok227

and.47.then:                                      ; preds = %and.46.exit
  %var.load234 = load ptr, ptr %var.lx, align 8
  %fld.gep235 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load234, i32 0, i32 0
  %fld.load236 = load ptr, ptr %fld.gep235, align 8
  %s.read.len237 = getelementptr inbounds { i64, ptr }, ptr %fld.load236, i32 0, i32 0
  %s.read.len238 = load i64, ptr %s.read.len237, align 8
  %s.read.len239 = and i64 %s.read.len238, 281474976710655
  %str.tag240 = lshr i64 %s.read.len238, 48
  %str.immortal241 = icmp eq i64 %str.tag240, 0
  br i1 %str.immortal241, label %str_ok243, label %str_gen_check242

and.47.else:                                      ; preds = %and.46.exit
  br label %and.47.exit

and.47.exit:                                      ; preds = %and.47.else, %idx_ok255
  %and.47.phi = phi i1 [ %cmptmp261, %idx_ok255 ], [ %and.46.phi, %and.47.else ]
  store i1 %and.47.phi, ptr %var.is_prop_split, align 1
  %var.load262 = load i1, ptr %var.is_prop_split, align 1
  br i1 %var.load262, label %choice.then263, label %choice.exit264

str_gen_check242:                                 ; preds = %and.47.then
  %arena.gen245 = call ptr @dva_arena_current()
  %arena.gen246 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen245, i32 0, i32 4
  %arena.gen247 = load i64, ptr %arena.gen246, align 8
  %str.tag.match248 = icmp eq i64 %str.tag240, %arena.gen247
  br i1 %str.tag.match248, label %str_ok243, label %str_stale244

str_ok243:                                        ; preds = %str_stale244, %str_gen_check242, %and.47.then
  %s.read.data249 = getelementptr inbounds { i64, ptr }, ptr %fld.load236, i32 0, i32 1
  %s.read.data250 = load ptr, ptr %s.read.data249, align 8
  %var.load251 = load i64, ptr %var.start, align 8
  %addtmp252 = add i64 %var.load251, 2
  %idx.neg253 = icmp slt i64 %addtmp252, 0
  br i1 %idx.neg253, label %idx_oob256, label %idx_big_check254

str_stale244:                                     ; preds = %str_gen_check242
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok243

idx_big_check254:                                 ; preds = %str_ok243
  %idx.big257 = icmp sge i64 %addtmp252, %s.read.len239
  br i1 %idx.big257, label %idx_oob256, label %idx_ok255

idx_ok255:                                        ; preds = %idx_oob256, %idx_big_check254
  %s.byte.gep258 = getelementptr i8, ptr %s.read.data250, i64 %addtmp252
  %s.byte259 = load i8, ptr %s.byte.gep258, align 1
  %s.byte.val260 = zext i8 %s.byte259 to i64
  %cmptmp261 = icmp eq i64 %s.byte.val260, 33
  br label %and.47.exit

idx_oob256:                                       ; preds = %idx_big_check254, %str_ok243
  %18 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok255

choice.then263:                                   ; preds = %and.47.exit
  %var.load265 = load ptr, ptr %var.lx, align 8
  %var.load266 = load i64, ptr %var.start, align 8
  %addtmp267 = add i64 %var.load266, 3
  %fld.gep268 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load265, i32 0, i32 1
  store i64 %addtmp267, ptr %fld.gep268, align 8
  %var.load269 = load ptr, ptr %var.lx, align 8
  %var.load270 = load i64, ptr %var.col, align 8
  %addtmp271 = add i64 %var.load270, 3
  %fld.gep272 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load269, i32 0, i32 3
  store i64 %addtmp271, ptr %fld.gep272, align 8
  %var.load273 = load ptr, ptr %var.lx, align 8
  %arena.cur274 = call ptr @dva_arena_current()
  %enum.alloc275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 16)
  %tag.gep276 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc275, i32 0, i32 0
  store i64 0, ptr %tag.gep276, align 8
  %pay.gep277 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc275, i32 0, i32 1
  store ptr null, ptr %pay.gep277, align 8
  %var.load278 = load i64, ptr %var.start, align 8
  %var.load279 = load i64, ptr %var.line, align 8
  %var.load280 = load i64, ptr %var.col, align 8
  %call.res281 = call ptr @"lexer::mktok"(ptr %var.load273, ptr %enum.alloc275, i64 %var.load278, i64 3, i64 %var.load279, i64 %var.load280, ptr @str.22.struct)
  ret ptr %call.res281

choice.exit264:                                   ; preds = %ret.dead282, %and.47.exit
  %var.load283 = load i64, ptr %"var.i'", align 8
  %var.load284 = load i64, ptr %var.start, align 8
  %subtmp285 = sub i64 %var.load283, %var.load284
  %cmptmp286 = icmp sgt i64 %subtmp285, 3
  br i1 %cmptmp286, label %and.48.then, label %and.48.else

ret.dead282:                                      ; No predecessors!
  br label %choice.exit264

and.48.then:                                      ; preds = %choice.exit264
  %var.load287 = load ptr, ptr %var.lx, align 8
  %fld.gep288 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load287, i32 0, i32 0
  %fld.load289 = load ptr, ptr %fld.gep288, align 8
  %s.read.len290 = getelementptr inbounds { i64, ptr }, ptr %fld.load289, i32 0, i32 0
  %s.read.len291 = load i64, ptr %s.read.len290, align 8
  %s.read.len292 = and i64 %s.read.len291, 281474976710655
  %str.tag293 = lshr i64 %s.read.len291, 48
  %str.immortal294 = icmp eq i64 %str.tag293, 0
  br i1 %str.immortal294, label %str_ok296, label %str_gen_check295

and.48.else:                                      ; preds = %choice.exit264
  br label %and.48.exit

and.48.exit:                                      ; preds = %and.48.else, %idx_ok307
  %and.48.phi = phi i1 [ %cmptmp313, %idx_ok307 ], [ %cmptmp286, %and.48.else ]
  br i1 %and.48.phi, label %and.49.then, label %and.49.else

str_gen_check295:                                 ; preds = %and.48.then
  %arena.gen298 = call ptr @dva_arena_current()
  %arena.gen299 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen298, i32 0, i32 4
  %arena.gen300 = load i64, ptr %arena.gen299, align 8
  %str.tag.match301 = icmp eq i64 %str.tag293, %arena.gen300
  br i1 %str.tag.match301, label %str_ok296, label %str_stale297

str_ok296:                                        ; preds = %str_stale297, %str_gen_check295, %and.48.then
  %s.read.data302 = getelementptr inbounds { i64, ptr }, ptr %fld.load289, i32 0, i32 1
  %s.read.data303 = load ptr, ptr %s.read.data302, align 8
  %var.load304 = load i64, ptr %var.start, align 8
  %idx.neg305 = icmp slt i64 %var.load304, 0
  br i1 %idx.neg305, label %idx_oob308, label %idx_big_check306

str_stale297:                                     ; preds = %str_gen_check295
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok296

idx_big_check306:                                 ; preds = %str_ok296
  %idx.big309 = icmp sge i64 %var.load304, %s.read.len292
  br i1 %idx.big309, label %idx_oob308, label %idx_ok307

idx_ok307:                                        ; preds = %idx_oob308, %idx_big_check306
  %s.byte.gep310 = getelementptr i8, ptr %s.read.data303, i64 %var.load304
  %s.byte311 = load i8, ptr %s.byte.gep310, align 1
  %s.byte.val312 = zext i8 %s.byte311 to i64
  %cmptmp313 = icmp eq i64 %s.byte.val312, 45
  br label %and.48.exit

idx_oob308:                                       ; preds = %idx_big_check306, %str_ok296
  %20 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok307

and.49.then:                                      ; preds = %and.48.exit
  %var.load314 = load ptr, ptr %var.lx, align 8
  %fld.gep315 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load314, i32 0, i32 0
  %fld.load316 = load ptr, ptr %fld.gep315, align 8
  %s.read.len317 = getelementptr inbounds { i64, ptr }, ptr %fld.load316, i32 0, i32 0
  %s.read.len318 = load i64, ptr %s.read.len317, align 8
  %s.read.len319 = and i64 %s.read.len318, 281474976710655
  %str.tag320 = lshr i64 %s.read.len318, 48
  %str.immortal321 = icmp eq i64 %str.tag320, 0
  br i1 %str.immortal321, label %str_ok323, label %str_gen_check322

and.49.else:                                      ; preds = %and.48.exit
  br label %and.49.exit

and.49.exit:                                      ; preds = %and.49.else, %idx_ok335
  %and.49.phi = phi i1 [ %cmptmp341, %idx_ok335 ], [ %and.48.phi, %and.49.else ]
  br i1 %and.49.phi, label %and.50.then, label %and.50.else

str_gen_check322:                                 ; preds = %and.49.then
  %arena.gen325 = call ptr @dva_arena_current()
  %arena.gen326 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen325, i32 0, i32 4
  %arena.gen327 = load i64, ptr %arena.gen326, align 8
  %str.tag.match328 = icmp eq i64 %str.tag320, %arena.gen327
  br i1 %str.tag.match328, label %str_ok323, label %str_stale324

str_ok323:                                        ; preds = %str_stale324, %str_gen_check322, %and.49.then
  %s.read.data329 = getelementptr inbounds { i64, ptr }, ptr %fld.load316, i32 0, i32 1
  %s.read.data330 = load ptr, ptr %s.read.data329, align 8
  %var.load331 = load i64, ptr %var.start, align 8
  %addtmp332 = add i64 %var.load331, 1
  %idx.neg333 = icmp slt i64 %addtmp332, 0
  br i1 %idx.neg333, label %idx_oob336, label %idx_big_check334

str_stale324:                                     ; preds = %str_gen_check322
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok323

idx_big_check334:                                 ; preds = %str_ok323
  %idx.big337 = icmp sge i64 %addtmp332, %s.read.len319
  br i1 %idx.big337, label %idx_oob336, label %idx_ok335

idx_ok335:                                        ; preds = %idx_oob336, %idx_big_check334
  %s.byte.gep338 = getelementptr i8, ptr %s.read.data330, i64 %addtmp332
  %s.byte339 = load i8, ptr %s.byte.gep338, align 1
  %s.byte.val340 = zext i8 %s.byte339 to i64
  %cmptmp341 = icmp eq i64 %s.byte.val340, 45
  br label %and.49.exit

idx_oob336:                                       ; preds = %idx_big_check334, %str_ok323
  %22 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok335

and.50.then:                                      ; preds = %and.49.exit
  %var.load342 = load ptr, ptr %var.lx, align 8
  %fld.gep343 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load342, i32 0, i32 0
  %fld.load344 = load ptr, ptr %fld.gep343, align 8
  %s.read.len345 = getelementptr inbounds { i64, ptr }, ptr %fld.load344, i32 0, i32 0
  %s.read.len346 = load i64, ptr %s.read.len345, align 8
  %s.read.len347 = and i64 %s.read.len346, 281474976710655
  %str.tag348 = lshr i64 %s.read.len346, 48
  %str.immortal349 = icmp eq i64 %str.tag348, 0
  br i1 %str.immortal349, label %str_ok351, label %str_gen_check350

and.50.else:                                      ; preds = %and.49.exit
  br label %and.50.exit

and.50.exit:                                      ; preds = %and.50.else, %idx_ok363
  %and.50.phi = phi i1 [ %cmptmp369, %idx_ok363 ], [ %and.49.phi, %and.50.else ]
  store i1 %and.50.phi, ptr %var.is_ret_split, align 1
  %var.load370 = load i1, ptr %var.is_ret_split, align 1
  br i1 %var.load370, label %choice.then371, label %choice.exit372

str_gen_check350:                                 ; preds = %and.50.then
  %arena.gen353 = call ptr @dva_arena_current()
  %arena.gen354 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen353, i32 0, i32 4
  %arena.gen355 = load i64, ptr %arena.gen354, align 8
  %str.tag.match356 = icmp eq i64 %str.tag348, %arena.gen355
  br i1 %str.tag.match356, label %str_ok351, label %str_stale352

str_ok351:                                        ; preds = %str_stale352, %str_gen_check350, %and.50.then
  %s.read.data357 = getelementptr inbounds { i64, ptr }, ptr %fld.load344, i32 0, i32 1
  %s.read.data358 = load ptr, ptr %s.read.data357, align 8
  %var.load359 = load i64, ptr %var.start, align 8
  %addtmp360 = add i64 %var.load359, 2
  %idx.neg361 = icmp slt i64 %addtmp360, 0
  br i1 %idx.neg361, label %idx_oob364, label %idx_big_check362

str_stale352:                                     ; preds = %str_gen_check350
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok351

idx_big_check362:                                 ; preds = %str_ok351
  %idx.big365 = icmp sge i64 %addtmp360, %s.read.len347
  br i1 %idx.big365, label %idx_oob364, label %idx_ok363

idx_ok363:                                        ; preds = %idx_oob364, %idx_big_check362
  %s.byte.gep366 = getelementptr i8, ptr %s.read.data358, i64 %addtmp360
  %s.byte367 = load i8, ptr %s.byte.gep366, align 1
  %s.byte.val368 = zext i8 %s.byte367 to i64
  %cmptmp369 = icmp eq i64 %s.byte.val368, 124
  br label %and.50.exit

idx_oob364:                                       ; preds = %idx_big_check362, %str_ok351
  %24 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok363

choice.then371:                                   ; preds = %and.50.exit
  %var.load373 = load ptr, ptr %var.lx, align 8
  %var.load374 = load i64, ptr %var.start, align 8
  %addtmp375 = add i64 %var.load374, 3
  %fld.gep376 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load373, i32 0, i32 1
  store i64 %addtmp375, ptr %fld.gep376, align 8
  %var.load377 = load ptr, ptr %var.lx, align 8
  %var.load378 = load i64, ptr %var.col, align 8
  %addtmp379 = add i64 %var.load378, 3
  %fld.gep380 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load377, i32 0, i32 3
  store i64 %addtmp379, ptr %fld.gep380, align 8
  %var.load381 = load ptr, ptr %var.lx, align 8
  %arena.cur382 = call ptr @dva_arena_current()
  %enum.alloc383 = call ptr @dva_arena_alloc(ptr %arena.cur382, i64 16)
  %tag.gep384 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc383, i32 0, i32 0
  store i64 0, ptr %tag.gep384, align 8
  %pay.gep385 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc383, i32 0, i32 1
  store ptr null, ptr %pay.gep385, align 8
  %var.load386 = load i64, ptr %var.start, align 8
  %var.load387 = load i64, ptr %var.line, align 8
  %var.load388 = load i64, ptr %var.col, align 8
  %call.res389 = call ptr @"lexer::mktok"(ptr %var.load381, ptr %enum.alloc383, i64 %var.load386, i64 3, i64 %var.load387, i64 %var.load388, ptr @str.23.struct)
  ret ptr %call.res389

choice.exit372:                                   ; preds = %ret.dead390, %and.50.exit
  %var.load391 = load i64, ptr %"var.i'", align 8
  %var.load392 = load i64, ptr %var.start, align 8
  %subtmp393 = sub i64 %var.load391, %var.load392
  %cmptmp394 = icmp sgt i64 %subtmp393, 2
  br i1 %cmptmp394, label %and.51.then, label %and.51.else

ret.dead390:                                      ; No predecessors!
  br label %choice.exit372

and.51.then:                                      ; preds = %choice.exit372
  %var.load395 = load ptr, ptr %var.lx, align 8
  %fld.gep396 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load395, i32 0, i32 0
  %fld.load397 = load ptr, ptr %fld.gep396, align 8
  %s.read.len398 = getelementptr inbounds { i64, ptr }, ptr %fld.load397, i32 0, i32 0
  %s.read.len399 = load i64, ptr %s.read.len398, align 8
  %s.read.len400 = and i64 %s.read.len399, 281474976710655
  %str.tag401 = lshr i64 %s.read.len399, 48
  %str.immortal402 = icmp eq i64 %str.tag401, 0
  br i1 %str.immortal402, label %str_ok404, label %str_gen_check403

and.51.else:                                      ; preds = %choice.exit372
  br label %and.51.exit

and.51.exit:                                      ; preds = %and.51.else, %idx_ok415
  %and.51.phi = phi i1 [ %cmptmp421, %idx_ok415 ], [ %cmptmp394, %and.51.else ]
  br i1 %and.51.phi, label %and.52.then, label %and.52.else

str_gen_check403:                                 ; preds = %and.51.then
  %arena.gen406 = call ptr @dva_arena_current()
  %arena.gen407 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen406, i32 0, i32 4
  %arena.gen408 = load i64, ptr %arena.gen407, align 8
  %str.tag.match409 = icmp eq i64 %str.tag401, %arena.gen408
  br i1 %str.tag.match409, label %str_ok404, label %str_stale405

str_ok404:                                        ; preds = %str_stale405, %str_gen_check403, %and.51.then
  %s.read.data410 = getelementptr inbounds { i64, ptr }, ptr %fld.load397, i32 0, i32 1
  %s.read.data411 = load ptr, ptr %s.read.data410, align 8
  %var.load412 = load i64, ptr %var.start, align 8
  %idx.neg413 = icmp slt i64 %var.load412, 0
  br i1 %idx.neg413, label %idx_oob416, label %idx_big_check414

str_stale405:                                     ; preds = %str_gen_check403
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok404

idx_big_check414:                                 ; preds = %str_ok404
  %idx.big417 = icmp sge i64 %var.load412, %s.read.len400
  br i1 %idx.big417, label %idx_oob416, label %idx_ok415

idx_ok415:                                        ; preds = %idx_oob416, %idx_big_check414
  %s.byte.gep418 = getelementptr i8, ptr %s.read.data411, i64 %var.load412
  %s.byte419 = load i8, ptr %s.byte.gep418, align 1
  %s.byte.val420 = zext i8 %s.byte419 to i64
  %cmptmp421 = icmp eq i64 %s.byte.val420, 126
  br label %and.51.exit

idx_oob416:                                       ; preds = %idx_big_check414, %str_ok404
  %26 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok415

and.52.then:                                      ; preds = %and.51.exit
  %var.load422 = load ptr, ptr %var.lx, align 8
  %fld.gep423 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load422, i32 0, i32 0
  %fld.load424 = load ptr, ptr %fld.gep423, align 8
  %s.read.len425 = getelementptr inbounds { i64, ptr }, ptr %fld.load424, i32 0, i32 0
  %s.read.len426 = load i64, ptr %s.read.len425, align 8
  %s.read.len427 = and i64 %s.read.len426, 281474976710655
  %str.tag428 = lshr i64 %s.read.len426, 48
  %str.immortal429 = icmp eq i64 %str.tag428, 0
  br i1 %str.immortal429, label %str_ok431, label %str_gen_check430

and.52.else:                                      ; preds = %and.51.exit
  br label %and.52.exit

and.52.exit:                                      ; preds = %and.52.else, %idx_ok443
  %and.52.phi = phi i1 [ %cmptmp449, %idx_ok443 ], [ %and.51.phi, %and.52.else ]
  store i1 %and.52.phi, ptr %var.is_bind_split, align 1
  %var.load450 = load i1, ptr %var.is_bind_split, align 1
  br i1 %var.load450, label %choice.then451, label %choice.exit452

str_gen_check430:                                 ; preds = %and.52.then
  %arena.gen433 = call ptr @dva_arena_current()
  %arena.gen434 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen433, i32 0, i32 4
  %arena.gen435 = load i64, ptr %arena.gen434, align 8
  %str.tag.match436 = icmp eq i64 %str.tag428, %arena.gen435
  br i1 %str.tag.match436, label %str_ok431, label %str_stale432

str_ok431:                                        ; preds = %str_stale432, %str_gen_check430, %and.52.then
  %s.read.data437 = getelementptr inbounds { i64, ptr }, ptr %fld.load424, i32 0, i32 1
  %s.read.data438 = load ptr, ptr %s.read.data437, align 8
  %var.load439 = load i64, ptr %var.start, align 8
  %addtmp440 = add i64 %var.load439, 1
  %idx.neg441 = icmp slt i64 %addtmp440, 0
  br i1 %idx.neg441, label %idx_oob444, label %idx_big_check442

str_stale432:                                     ; preds = %str_gen_check430
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok431

idx_big_check442:                                 ; preds = %str_ok431
  %idx.big445 = icmp sge i64 %addtmp440, %s.read.len427
  br i1 %idx.big445, label %idx_oob444, label %idx_ok443

idx_ok443:                                        ; preds = %idx_oob444, %idx_big_check442
  %s.byte.gep446 = getelementptr i8, ptr %s.read.data438, i64 %addtmp440
  %s.byte447 = load i8, ptr %s.byte.gep446, align 1
  %s.byte.val448 = zext i8 %s.byte447 to i64
  %cmptmp449 = icmp eq i64 %s.byte.val448, 126
  br label %and.52.exit

idx_oob444:                                       ; preds = %idx_big_check442, %str_ok431
  %28 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok443

choice.then451:                                   ; preds = %and.52.exit
  %var.load453 = load ptr, ptr %var.lx, align 8
  %var.load454 = load i64, ptr %var.start, align 8
  %addtmp455 = add i64 %var.load454, 2
  %fld.gep456 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load453, i32 0, i32 1
  store i64 %addtmp455, ptr %fld.gep456, align 8
  %var.load457 = load ptr, ptr %var.lx, align 8
  %var.load458 = load i64, ptr %var.col, align 8
  %addtmp459 = add i64 %var.load458, 2
  %fld.gep460 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load457, i32 0, i32 3
  store i64 %addtmp459, ptr %fld.gep460, align 8
  %var.load461 = load ptr, ptr %var.lx, align 8
  %arena.cur462 = call ptr @dva_arena_current()
  %enum.alloc463 = call ptr @dva_arena_alloc(ptr %arena.cur462, i64 16)
  %tag.gep464 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc463, i32 0, i32 0
  store i64 0, ptr %tag.gep464, align 8
  %pay.gep465 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc463, i32 0, i32 1
  store ptr null, ptr %pay.gep465, align 8
  %var.load466 = load i64, ptr %var.start, align 8
  %var.load467 = load i64, ptr %var.line, align 8
  %var.load468 = load i64, ptr %var.col, align 8
  %call.res469 = call ptr @"lexer::mktok"(ptr %var.load461, ptr %enum.alloc463, i64 %var.load466, i64 2, i64 %var.load467, i64 %var.load468, ptr @str.24.struct)
  ret ptr %call.res469

choice.exit452:                                   ; preds = %ret.dead470, %and.52.exit
  %var.load471 = load i64, ptr %"var.i'", align 8
  %var.load472 = load i64, ptr %var.start, align 8
  %subtmp473 = sub i64 %var.load471, %var.load472
  %cmptmp474 = icmp sgt i64 %subtmp473, 3
  br i1 %cmptmp474, label %and.53.then, label %and.53.else

ret.dead470:                                      ; No predecessors!
  br label %choice.exit452

and.53.then:                                      ; preds = %choice.exit452
  %var.load475 = load ptr, ptr %var.lx, align 8
  %fld.gep476 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load475, i32 0, i32 0
  %fld.load477 = load ptr, ptr %fld.gep476, align 8
  %s.read.len478 = getelementptr inbounds { i64, ptr }, ptr %fld.load477, i32 0, i32 0
  %s.read.len479 = load i64, ptr %s.read.len478, align 8
  %s.read.len480 = and i64 %s.read.len479, 281474976710655
  %str.tag481 = lshr i64 %s.read.len479, 48
  %str.immortal482 = icmp eq i64 %str.tag481, 0
  br i1 %str.immortal482, label %str_ok484, label %str_gen_check483

and.53.else:                                      ; preds = %choice.exit452
  br label %and.53.exit

and.53.exit:                                      ; preds = %and.53.else, %idx_ok495
  %and.53.phi = phi i1 [ %cmptmp501, %idx_ok495 ], [ %cmptmp474, %and.53.else ]
  br i1 %and.53.phi, label %and.54.then, label %and.54.else

str_gen_check483:                                 ; preds = %and.53.then
  %arena.gen486 = call ptr @dva_arena_current()
  %arena.gen487 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen486, i32 0, i32 4
  %arena.gen488 = load i64, ptr %arena.gen487, align 8
  %str.tag.match489 = icmp eq i64 %str.tag481, %arena.gen488
  br i1 %str.tag.match489, label %str_ok484, label %str_stale485

str_ok484:                                        ; preds = %str_stale485, %str_gen_check483, %and.53.then
  %s.read.data490 = getelementptr inbounds { i64, ptr }, ptr %fld.load477, i32 0, i32 1
  %s.read.data491 = load ptr, ptr %s.read.data490, align 8
  %var.load492 = load i64, ptr %var.start, align 8
  %idx.neg493 = icmp slt i64 %var.load492, 0
  br i1 %idx.neg493, label %idx_oob496, label %idx_big_check494

str_stale485:                                     ; preds = %str_gen_check483
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok484

idx_big_check494:                                 ; preds = %str_ok484
  %idx.big497 = icmp sge i64 %var.load492, %s.read.len480
  br i1 %idx.big497, label %idx_oob496, label %idx_ok495

idx_ok495:                                        ; preds = %idx_oob496, %idx_big_check494
  %s.byte.gep498 = getelementptr i8, ptr %s.read.data491, i64 %var.load492
  %s.byte499 = load i8, ptr %s.byte.gep498, align 1
  %s.byte.val500 = zext i8 %s.byte499 to i64
  %cmptmp501 = icmp eq i64 %s.byte.val500, 46
  br label %and.53.exit

idx_oob496:                                       ; preds = %idx_big_check494, %str_ok484
  %30 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok495

and.54.then:                                      ; preds = %and.53.exit
  %var.load502 = load ptr, ptr %var.lx, align 8
  %fld.gep503 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load502, i32 0, i32 0
  %fld.load504 = load ptr, ptr %fld.gep503, align 8
  %s.read.len505 = getelementptr inbounds { i64, ptr }, ptr %fld.load504, i32 0, i32 0
  %s.read.len506 = load i64, ptr %s.read.len505, align 8
  %s.read.len507 = and i64 %s.read.len506, 281474976710655
  %str.tag508 = lshr i64 %s.read.len506, 48
  %str.immortal509 = icmp eq i64 %str.tag508, 0
  br i1 %str.immortal509, label %str_ok511, label %str_gen_check510

and.54.else:                                      ; preds = %and.53.exit
  br label %and.54.exit

and.54.exit:                                      ; preds = %and.54.else, %idx_ok523
  %and.54.phi = phi i1 [ %cmptmp529, %idx_ok523 ], [ %and.53.phi, %and.54.else ]
  br i1 %and.54.phi, label %and.55.then, label %and.55.else

str_gen_check510:                                 ; preds = %and.54.then
  %arena.gen513 = call ptr @dva_arena_current()
  %arena.gen514 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen513, i32 0, i32 4
  %arena.gen515 = load i64, ptr %arena.gen514, align 8
  %str.tag.match516 = icmp eq i64 %str.tag508, %arena.gen515
  br i1 %str.tag.match516, label %str_ok511, label %str_stale512

str_ok511:                                        ; preds = %str_stale512, %str_gen_check510, %and.54.then
  %s.read.data517 = getelementptr inbounds { i64, ptr }, ptr %fld.load504, i32 0, i32 1
  %s.read.data518 = load ptr, ptr %s.read.data517, align 8
  %var.load519 = load i64, ptr %var.start, align 8
  %addtmp520 = add i64 %var.load519, 1
  %idx.neg521 = icmp slt i64 %addtmp520, 0
  br i1 %idx.neg521, label %idx_oob524, label %idx_big_check522

str_stale512:                                     ; preds = %str_gen_check510
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok511

idx_big_check522:                                 ; preds = %str_ok511
  %idx.big525 = icmp sge i64 %addtmp520, %s.read.len507
  br i1 %idx.big525, label %idx_oob524, label %idx_ok523

idx_ok523:                                        ; preds = %idx_oob524, %idx_big_check522
  %s.byte.gep526 = getelementptr i8, ptr %s.read.data518, i64 %addtmp520
  %s.byte527 = load i8, ptr %s.byte.gep526, align 1
  %s.byte.val528 = zext i8 %s.byte527 to i64
  %cmptmp529 = icmp eq i64 %s.byte.val528, 94
  br label %and.54.exit

idx_oob524:                                       ; preds = %idx_big_check522, %str_ok511
  %32 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok523

and.55.then:                                      ; preds = %and.54.exit
  %var.load530 = load ptr, ptr %var.lx, align 8
  %fld.gep531 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load530, i32 0, i32 0
  %fld.load532 = load ptr, ptr %fld.gep531, align 8
  %s.read.len533 = getelementptr inbounds { i64, ptr }, ptr %fld.load532, i32 0, i32 0
  %s.read.len534 = load i64, ptr %s.read.len533, align 8
  %s.read.len535 = and i64 %s.read.len534, 281474976710655
  %str.tag536 = lshr i64 %s.read.len534, 48
  %str.immortal537 = icmp eq i64 %str.tag536, 0
  br i1 %str.immortal537, label %str_ok539, label %str_gen_check538

and.55.else:                                      ; preds = %and.54.exit
  br label %and.55.exit

and.55.exit:                                      ; preds = %and.55.else, %idx_ok551
  %and.55.phi = phi i1 [ %cmptmp557, %idx_ok551 ], [ %and.54.phi, %and.55.else ]
  store i1 %and.55.phi, ptr %var.is_xor_split, align 1
  %var.load558 = load i1, ptr %var.is_xor_split, align 1
  br i1 %var.load558, label %choice.then559, label %choice.exit560

str_gen_check538:                                 ; preds = %and.55.then
  %arena.gen541 = call ptr @dva_arena_current()
  %arena.gen542 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen541, i32 0, i32 4
  %arena.gen543 = load i64, ptr %arena.gen542, align 8
  %str.tag.match544 = icmp eq i64 %str.tag536, %arena.gen543
  br i1 %str.tag.match544, label %str_ok539, label %str_stale540

str_ok539:                                        ; preds = %str_stale540, %str_gen_check538, %and.55.then
  %s.read.data545 = getelementptr inbounds { i64, ptr }, ptr %fld.load532, i32 0, i32 1
  %s.read.data546 = load ptr, ptr %s.read.data545, align 8
  %var.load547 = load i64, ptr %var.start, align 8
  %addtmp548 = add i64 %var.load547, 2
  %idx.neg549 = icmp slt i64 %addtmp548, 0
  br i1 %idx.neg549, label %idx_oob552, label %idx_big_check550

str_stale540:                                     ; preds = %str_gen_check538
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok539

idx_big_check550:                                 ; preds = %str_ok539
  %idx.big553 = icmp sge i64 %addtmp548, %s.read.len535
  br i1 %idx.big553, label %idx_oob552, label %idx_ok551

idx_ok551:                                        ; preds = %idx_oob552, %idx_big_check550
  %s.byte.gep554 = getelementptr i8, ptr %s.read.data546, i64 %addtmp548
  %s.byte555 = load i8, ptr %s.byte.gep554, align 1
  %s.byte.val556 = zext i8 %s.byte555 to i64
  %cmptmp557 = icmp eq i64 %s.byte.val556, 46
  br label %and.55.exit

idx_oob552:                                       ; preds = %idx_big_check550, %str_ok539
  %34 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok551

choice.then559:                                   ; preds = %and.55.exit
  %var.load561 = load ptr, ptr %var.lx, align 8
  %var.load562 = load i64, ptr %var.start, align 8
  %addtmp563 = add i64 %var.load562, 3
  %fld.gep564 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load561, i32 0, i32 1
  store i64 %addtmp563, ptr %fld.gep564, align 8
  %var.load565 = load ptr, ptr %var.lx, align 8
  %var.load566 = load i64, ptr %var.col, align 8
  %addtmp567 = add i64 %var.load566, 3
  %fld.gep568 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load565, i32 0, i32 3
  store i64 %addtmp567, ptr %fld.gep568, align 8
  %var.load569 = load ptr, ptr %var.lx, align 8
  %arena.cur570 = call ptr @dva_arena_current()
  %enum.alloc571 = call ptr @dva_arena_alloc(ptr %arena.cur570, i64 16)
  %tag.gep572 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc571, i32 0, i32 0
  store i64 0, ptr %tag.gep572, align 8
  %pay.gep573 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc571, i32 0, i32 1
  store ptr null, ptr %pay.gep573, align 8
  %var.load574 = load i64, ptr %var.start, align 8
  %var.load575 = load i64, ptr %var.line, align 8
  %var.load576 = load i64, ptr %var.col, align 8
  %call.res577 = call ptr @"lexer::mktok"(ptr %var.load569, ptr %enum.alloc571, i64 %var.load574, i64 3, i64 %var.load575, i64 %var.load576, ptr @str.25.struct)
  ret ptr %call.res577

choice.exit560:                                   ; preds = %ret.dead578, %and.55.exit
  %var.load579 = load i64, ptr %"var.i'", align 8
  %var.load580 = load i64, ptr %var.start, align 8
  %subtmp581 = sub i64 %var.load579, %var.load580
  %cmptmp582 = icmp sge i64 %subtmp581, 3
  br i1 %cmptmp582, label %and.56.then, label %and.56.else

ret.dead578:                                      ; No predecessors!
  br label %choice.exit560

and.56.then:                                      ; preds = %choice.exit560
  %var.load583 = load ptr, ptr %var.lx, align 8
  %fld.gep584 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load583, i32 0, i32 0
  %fld.load585 = load ptr, ptr %fld.gep584, align 8
  %s.read.len586 = getelementptr inbounds { i64, ptr }, ptr %fld.load585, i32 0, i32 0
  %s.read.len587 = load i64, ptr %s.read.len586, align 8
  %s.read.len588 = and i64 %s.read.len587, 281474976710655
  %str.tag589 = lshr i64 %s.read.len587, 48
  %str.immortal590 = icmp eq i64 %str.tag589, 0
  br i1 %str.immortal590, label %str_ok592, label %str_gen_check591

and.56.else:                                      ; preds = %choice.exit560
  br label %and.56.exit

and.56.exit:                                      ; preds = %and.56.else, %idx_ok603
  %and.56.phi = phi i1 [ %cmptmp609, %idx_ok603 ], [ %cmptmp582, %and.56.else ]
  br i1 %and.56.phi, label %and.57.then, label %and.57.else

str_gen_check591:                                 ; preds = %and.56.then
  %arena.gen594 = call ptr @dva_arena_current()
  %arena.gen595 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen594, i32 0, i32 4
  %arena.gen596 = load i64, ptr %arena.gen595, align 8
  %str.tag.match597 = icmp eq i64 %str.tag589, %arena.gen596
  br i1 %str.tag.match597, label %str_ok592, label %str_stale593

str_ok592:                                        ; preds = %str_stale593, %str_gen_check591, %and.56.then
  %s.read.data598 = getelementptr inbounds { i64, ptr }, ptr %fld.load585, i32 0, i32 1
  %s.read.data599 = load ptr, ptr %s.read.data598, align 8
  %var.load600 = load i64, ptr %var.start, align 8
  %idx.neg601 = icmp slt i64 %var.load600, 0
  br i1 %idx.neg601, label %idx_oob604, label %idx_big_check602

str_stale593:                                     ; preds = %str_gen_check591
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok592

idx_big_check602:                                 ; preds = %str_ok592
  %idx.big605 = icmp sge i64 %var.load600, %s.read.len588
  br i1 %idx.big605, label %idx_oob604, label %idx_ok603

idx_ok603:                                        ; preds = %idx_oob604, %idx_big_check602
  %s.byte.gep606 = getelementptr i8, ptr %s.read.data599, i64 %var.load600
  %s.byte607 = load i8, ptr %s.byte.gep606, align 1
  %s.byte.val608 = zext i8 %s.byte607 to i64
  %cmptmp609 = icmp eq i64 %s.byte.val608, 33
  br label %and.56.exit

idx_oob604:                                       ; preds = %idx_big_check602, %str_ok592
  %36 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok603

and.57.then:                                      ; preds = %and.56.exit
  %var.load610 = load ptr, ptr %var.lx, align 8
  %fld.gep611 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load610, i32 0, i32 0
  %fld.load612 = load ptr, ptr %fld.gep611, align 8
  %s.read.len613 = getelementptr inbounds { i64, ptr }, ptr %fld.load612, i32 0, i32 0
  %s.read.len614 = load i64, ptr %s.read.len613, align 8
  %s.read.len615 = and i64 %s.read.len614, 281474976710655
  %str.tag616 = lshr i64 %s.read.len614, 48
  %str.immortal617 = icmp eq i64 %str.tag616, 0
  br i1 %str.immortal617, label %str_ok619, label %str_gen_check618

and.57.else:                                      ; preds = %and.56.exit
  br label %and.57.exit

and.57.exit:                                      ; preds = %and.57.else, %idx_ok631
  %and.57.phi = phi i1 [ %cmptmp637, %idx_ok631 ], [ %and.56.phi, %and.57.else ]
  br i1 %and.57.phi, label %and.58.then, label %and.58.else

str_gen_check618:                                 ; preds = %and.57.then
  %arena.gen621 = call ptr @dva_arena_current()
  %arena.gen622 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen621, i32 0, i32 4
  %arena.gen623 = load i64, ptr %arena.gen622, align 8
  %str.tag.match624 = icmp eq i64 %str.tag616, %arena.gen623
  br i1 %str.tag.match624, label %str_ok619, label %str_stale620

str_ok619:                                        ; preds = %str_stale620, %str_gen_check618, %and.57.then
  %s.read.data625 = getelementptr inbounds { i64, ptr }, ptr %fld.load612, i32 0, i32 1
  %s.read.data626 = load ptr, ptr %s.read.data625, align 8
  %var.load627 = load i64, ptr %var.start, align 8
  %addtmp628 = add i64 %var.load627, 1
  %idx.neg629 = icmp slt i64 %addtmp628, 0
  br i1 %idx.neg629, label %idx_oob632, label %idx_big_check630

str_stale620:                                     ; preds = %str_gen_check618
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok619

idx_big_check630:                                 ; preds = %str_ok619
  %idx.big633 = icmp sge i64 %addtmp628, %s.read.len615
  br i1 %idx.big633, label %idx_oob632, label %idx_ok631

idx_ok631:                                        ; preds = %idx_oob632, %idx_big_check630
  %s.byte.gep634 = getelementptr i8, ptr %s.read.data626, i64 %addtmp628
  %s.byte635 = load i8, ptr %s.byte.gep634, align 1
  %s.byte.val636 = zext i8 %s.byte635 to i64
  %cmptmp637 = icmp eq i64 %s.byte.val636, 60
  br label %and.57.exit

idx_oob632:                                       ; preds = %idx_big_check630, %str_ok619
  %38 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok631

and.58.then:                                      ; preds = %and.57.exit
  %var.load638 = load ptr, ptr %var.lx, align 8
  %fld.gep639 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load638, i32 0, i32 0
  %fld.load640 = load ptr, ptr %fld.gep639, align 8
  %s.read.len641 = getelementptr inbounds { i64, ptr }, ptr %fld.load640, i32 0, i32 0
  %s.read.len642 = load i64, ptr %s.read.len641, align 8
  %s.read.len643 = and i64 %s.read.len642, 281474976710655
  %str.tag644 = lshr i64 %s.read.len642, 48
  %str.immortal645 = icmp eq i64 %str.tag644, 0
  br i1 %str.immortal645, label %str_ok647, label %str_gen_check646

and.58.else:                                      ; preds = %and.57.exit
  br label %and.58.exit

and.58.exit:                                      ; preds = %and.58.else, %idx_ok659
  %and.58.phi = phi i1 [ %cmptmp665, %idx_ok659 ], [ %and.57.phi, %and.58.else ]
  store i1 %and.58.phi, ptr %var.is_bang_ram_split, align 1
  %var.load666 = load i1, ptr %var.is_bang_ram_split, align 1
  br i1 %var.load666, label %choice.then667, label %choice.exit668

str_gen_check646:                                 ; preds = %and.58.then
  %arena.gen649 = call ptr @dva_arena_current()
  %arena.gen650 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen649, i32 0, i32 4
  %arena.gen651 = load i64, ptr %arena.gen650, align 8
  %str.tag.match652 = icmp eq i64 %str.tag644, %arena.gen651
  br i1 %str.tag.match652, label %str_ok647, label %str_stale648

str_ok647:                                        ; preds = %str_stale648, %str_gen_check646, %and.58.then
  %s.read.data653 = getelementptr inbounds { i64, ptr }, ptr %fld.load640, i32 0, i32 1
  %s.read.data654 = load ptr, ptr %s.read.data653, align 8
  %var.load655 = load i64, ptr %var.start, align 8
  %addtmp656 = add i64 %var.load655, 2
  %idx.neg657 = icmp slt i64 %addtmp656, 0
  br i1 %idx.neg657, label %idx_oob660, label %idx_big_check658

str_stale648:                                     ; preds = %str_gen_check646
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok647

idx_big_check658:                                 ; preds = %str_ok647
  %idx.big661 = icmp sge i64 %addtmp656, %s.read.len643
  br i1 %idx.big661, label %idx_oob660, label %idx_ok659

idx_ok659:                                        ; preds = %idx_oob660, %idx_big_check658
  %s.byte.gep662 = getelementptr i8, ptr %s.read.data654, i64 %addtmp656
  %s.byte663 = load i8, ptr %s.byte.gep662, align 1
  %s.byte.val664 = zext i8 %s.byte663 to i64
  %cmptmp665 = icmp eq i64 %s.byte.val664, 62
  br label %and.58.exit

idx_oob660:                                       ; preds = %idx_big_check658, %str_ok647
  %40 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok659

choice.then667:                                   ; preds = %and.58.exit
  %var.load669 = load ptr, ptr %var.lx, align 8
  %var.load670 = load i64, ptr %var.start, align 8
  %addtmp671 = add i64 %var.load670, 1
  %fld.gep672 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load669, i32 0, i32 1
  store i64 %addtmp671, ptr %fld.gep672, align 8
  %var.load673 = load ptr, ptr %var.lx, align 8
  %var.load674 = load i64, ptr %var.col, align 8
  %addtmp675 = add i64 %var.load674, 1
  %fld.gep676 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load673, i32 0, i32 3
  store i64 %addtmp675, ptr %fld.gep676, align 8
  %var.load677 = load ptr, ptr %var.lx, align 8
  %arena.cur678 = call ptr @dva_arena_current()
  %enum.alloc679 = call ptr @dva_arena_alloc(ptr %arena.cur678, i64 16)
  %tag.gep680 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc679, i32 0, i32 0
  store i64 0, ptr %tag.gep680, align 8
  %pay.gep681 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc679, i32 0, i32 1
  store ptr null, ptr %pay.gep681, align 8
  %var.load682 = load i64, ptr %var.start, align 8
  %var.load683 = load i64, ptr %var.line, align 8
  %var.load684 = load i64, ptr %var.col, align 8
  %call.res685 = call ptr @"lexer::mktok"(ptr %var.load677, ptr %enum.alloc679, i64 %var.load682, i64 1, i64 %var.load683, i64 %var.load684, ptr @str.26.struct)
  ret ptr %call.res685

choice.exit668:                                   ; preds = %ret.dead686, %and.58.exit
  %var.load687 = load i64, ptr %"var.i'", align 8
  %var.load688 = load i64, ptr %var.start, align 8
  %subtmp689 = sub i64 %var.load687, %var.load688
  %cmptmp690 = icmp sgt i64 %subtmp689, 4
  br i1 %cmptmp690, label %and.59.then, label %and.59.else

ret.dead686:                                      ; No predecessors!
  br label %choice.exit668

and.59.then:                                      ; preds = %choice.exit668
  %var.load691 = load ptr, ptr %var.lx, align 8
  %fld.gep692 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load691, i32 0, i32 0
  %fld.load693 = load ptr, ptr %fld.gep692, align 8
  %s.read.len694 = getelementptr inbounds { i64, ptr }, ptr %fld.load693, i32 0, i32 0
  %s.read.len695 = load i64, ptr %s.read.len694, align 8
  %s.read.len696 = and i64 %s.read.len695, 281474976710655
  %str.tag697 = lshr i64 %s.read.len695, 48
  %str.immortal698 = icmp eq i64 %str.tag697, 0
  br i1 %str.immortal698, label %str_ok700, label %str_gen_check699

and.59.else:                                      ; preds = %choice.exit668
  br label %and.59.exit

and.59.exit:                                      ; preds = %and.59.else, %idx_ok711
  %and.59.phi = phi i1 [ %cmptmp717, %idx_ok711 ], [ %cmptmp690, %and.59.else ]
  br i1 %and.59.phi, label %and.60.then, label %and.60.else

str_gen_check699:                                 ; preds = %and.59.then
  %arena.gen702 = call ptr @dva_arena_current()
  %arena.gen703 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen702, i32 0, i32 4
  %arena.gen704 = load i64, ptr %arena.gen703, align 8
  %str.tag.match705 = icmp eq i64 %str.tag697, %arena.gen704
  br i1 %str.tag.match705, label %str_ok700, label %str_stale701

str_ok700:                                        ; preds = %str_stale701, %str_gen_check699, %and.59.then
  %s.read.data706 = getelementptr inbounds { i64, ptr }, ptr %fld.load693, i32 0, i32 1
  %s.read.data707 = load ptr, ptr %s.read.data706, align 8
  %var.load708 = load i64, ptr %var.start, align 8
  %idx.neg709 = icmp slt i64 %var.load708, 0
  br i1 %idx.neg709, label %idx_oob712, label %idx_big_check710

str_stale701:                                     ; preds = %str_gen_check699
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok700

idx_big_check710:                                 ; preds = %str_ok700
  %idx.big713 = icmp sge i64 %var.load708, %s.read.len696
  br i1 %idx.big713, label %idx_oob712, label %idx_ok711

idx_ok711:                                        ; preds = %idx_oob712, %idx_big_check710
  %s.byte.gep714 = getelementptr i8, ptr %s.read.data707, i64 %var.load708
  %s.byte715 = load i8, ptr %s.byte.gep714, align 1
  %s.byte.val716 = zext i8 %s.byte715 to i64
  %cmptmp717 = icmp eq i64 %s.byte.val716, 124
  br label %and.59.exit

idx_oob712:                                       ; preds = %idx_big_check710, %str_ok700
  %42 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok711

and.60.then:                                      ; preds = %and.59.exit
  %var.load718 = load ptr, ptr %var.lx, align 8
  %fld.gep719 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load718, i32 0, i32 0
  %fld.load720 = load ptr, ptr %fld.gep719, align 8
  %s.read.len721 = getelementptr inbounds { i64, ptr }, ptr %fld.load720, i32 0, i32 0
  %s.read.len722 = load i64, ptr %s.read.len721, align 8
  %s.read.len723 = and i64 %s.read.len722, 281474976710655
  %str.tag724 = lshr i64 %s.read.len722, 48
  %str.immortal725 = icmp eq i64 %str.tag724, 0
  br i1 %str.immortal725, label %str_ok727, label %str_gen_check726

and.60.else:                                      ; preds = %and.59.exit
  br label %and.60.exit

and.60.exit:                                      ; preds = %and.60.else, %idx_ok739
  %and.60.phi = phi i1 [ %cmptmp745, %idx_ok739 ], [ %and.59.phi, %and.60.else ]
  br i1 %and.60.phi, label %and.61.then, label %and.61.else

str_gen_check726:                                 ; preds = %and.60.then
  %arena.gen729 = call ptr @dva_arena_current()
  %arena.gen730 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen729, i32 0, i32 4
  %arena.gen731 = load i64, ptr %arena.gen730, align 8
  %str.tag.match732 = icmp eq i64 %str.tag724, %arena.gen731
  br i1 %str.tag.match732, label %str_ok727, label %str_stale728

str_ok727:                                        ; preds = %str_stale728, %str_gen_check726, %and.60.then
  %s.read.data733 = getelementptr inbounds { i64, ptr }, ptr %fld.load720, i32 0, i32 1
  %s.read.data734 = load ptr, ptr %s.read.data733, align 8
  %var.load735 = load i64, ptr %var.start, align 8
  %addtmp736 = add i64 %var.load735, 1
  %idx.neg737 = icmp slt i64 %addtmp736, 0
  br i1 %idx.neg737, label %idx_oob740, label %idx_big_check738

str_stale728:                                     ; preds = %str_gen_check726
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok727

idx_big_check738:                                 ; preds = %str_ok727
  %idx.big741 = icmp sge i64 %addtmp736, %s.read.len723
  br i1 %idx.big741, label %idx_oob740, label %idx_ok739

idx_ok739:                                        ; preds = %idx_oob740, %idx_big_check738
  %s.byte.gep742 = getelementptr i8, ptr %s.read.data734, i64 %addtmp736
  %s.byte743 = load i8, ptr %s.byte.gep742, align 1
  %s.byte.val744 = zext i8 %s.byte743 to i64
  %cmptmp745 = icmp eq i64 %s.byte.val744, 45
  br label %and.60.exit

idx_oob740:                                       ; preds = %idx_big_check738, %str_ok727
  %44 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok739

and.61.then:                                      ; preds = %and.60.exit
  %var.load746 = load ptr, ptr %var.lx, align 8
  %fld.gep747 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load746, i32 0, i32 0
  %fld.load748 = load ptr, ptr %fld.gep747, align 8
  %s.read.len749 = getelementptr inbounds { i64, ptr }, ptr %fld.load748, i32 0, i32 0
  %s.read.len750 = load i64, ptr %s.read.len749, align 8
  %s.read.len751 = and i64 %s.read.len750, 281474976710655
  %str.tag752 = lshr i64 %s.read.len750, 48
  %str.immortal753 = icmp eq i64 %str.tag752, 0
  br i1 %str.immortal753, label %str_ok755, label %str_gen_check754

and.61.else:                                      ; preds = %and.60.exit
  br label %and.61.exit

and.61.exit:                                      ; preds = %and.61.else, %idx_ok767
  %and.61.phi = phi i1 [ %cmptmp773, %idx_ok767 ], [ %and.60.phi, %and.61.else ]
  br i1 %and.61.phi, label %and.62.then, label %and.62.else

str_gen_check754:                                 ; preds = %and.61.then
  %arena.gen757 = call ptr @dva_arena_current()
  %arena.gen758 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen757, i32 0, i32 4
  %arena.gen759 = load i64, ptr %arena.gen758, align 8
  %str.tag.match760 = icmp eq i64 %str.tag752, %arena.gen759
  br i1 %str.tag.match760, label %str_ok755, label %str_stale756

str_ok755:                                        ; preds = %str_stale756, %str_gen_check754, %and.61.then
  %s.read.data761 = getelementptr inbounds { i64, ptr }, ptr %fld.load748, i32 0, i32 1
  %s.read.data762 = load ptr, ptr %s.read.data761, align 8
  %var.load763 = load i64, ptr %var.start, align 8
  %addtmp764 = add i64 %var.load763, 2
  %idx.neg765 = icmp slt i64 %addtmp764, 0
  br i1 %idx.neg765, label %idx_oob768, label %idx_big_check766

str_stale756:                                     ; preds = %str_gen_check754
  %45 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok755

idx_big_check766:                                 ; preds = %str_ok755
  %idx.big769 = icmp sge i64 %addtmp764, %s.read.len751
  br i1 %idx.big769, label %idx_oob768, label %idx_ok767

idx_ok767:                                        ; preds = %idx_oob768, %idx_big_check766
  %s.byte.gep770 = getelementptr i8, ptr %s.read.data762, i64 %addtmp764
  %s.byte771 = load i8, ptr %s.byte.gep770, align 1
  %s.byte.val772 = zext i8 %s.byte771 to i64
  %cmptmp773 = icmp eq i64 %s.byte.val772, 45
  br label %and.61.exit

idx_oob768:                                       ; preds = %idx_big_check766, %str_ok755
  %46 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok767

and.62.then:                                      ; preds = %and.61.exit
  %var.load774 = load ptr, ptr %var.lx, align 8
  %fld.gep775 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load774, i32 0, i32 0
  %fld.load776 = load ptr, ptr %fld.gep775, align 8
  %s.read.len777 = getelementptr inbounds { i64, ptr }, ptr %fld.load776, i32 0, i32 0
  %s.read.len778 = load i64, ptr %s.read.len777, align 8
  %s.read.len779 = and i64 %s.read.len778, 281474976710655
  %str.tag780 = lshr i64 %s.read.len778, 48
  %str.immortal781 = icmp eq i64 %str.tag780, 0
  br i1 %str.immortal781, label %str_ok783, label %str_gen_check782

and.62.else:                                      ; preds = %and.61.exit
  br label %and.62.exit

and.62.exit:                                      ; preds = %and.62.else, %idx_ok795
  %and.62.phi = phi i1 [ %cmptmp801, %idx_ok795 ], [ %and.61.phi, %and.62.else ]
  store i1 %and.62.phi, ptr %var.is_ret_noth_split, align 1
  %var.load802 = load i1, ptr %var.is_ret_noth_split, align 1
  br i1 %var.load802, label %choice.then803, label %choice.exit804

str_gen_check782:                                 ; preds = %and.62.then
  %arena.gen785 = call ptr @dva_arena_current()
  %arena.gen786 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen785, i32 0, i32 4
  %arena.gen787 = load i64, ptr %arena.gen786, align 8
  %str.tag.match788 = icmp eq i64 %str.tag780, %arena.gen787
  br i1 %str.tag.match788, label %str_ok783, label %str_stale784

str_ok783:                                        ; preds = %str_stale784, %str_gen_check782, %and.62.then
  %s.read.data789 = getelementptr inbounds { i64, ptr }, ptr %fld.load776, i32 0, i32 1
  %s.read.data790 = load ptr, ptr %s.read.data789, align 8
  %var.load791 = load i64, ptr %var.start, align 8
  %addtmp792 = add i64 %var.load791, 3
  %idx.neg793 = icmp slt i64 %addtmp792, 0
  br i1 %idx.neg793, label %idx_oob796, label %idx_big_check794

str_stale784:                                     ; preds = %str_gen_check782
  %47 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok783

idx_big_check794:                                 ; preds = %str_ok783
  %idx.big797 = icmp sge i64 %addtmp792, %s.read.len779
  br i1 %idx.big797, label %idx_oob796, label %idx_ok795

idx_ok795:                                        ; preds = %idx_oob796, %idx_big_check794
  %s.byte.gep798 = getelementptr i8, ptr %s.read.data790, i64 %addtmp792
  %s.byte799 = load i8, ptr %s.byte.gep798, align 1
  %s.byte.val800 = zext i8 %s.byte799 to i64
  %cmptmp801 = icmp eq i64 %s.byte.val800, 62
  br label %and.62.exit

idx_oob796:                                       ; preds = %idx_big_check794, %str_ok783
  %48 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok795

choice.then803:                                   ; preds = %and.62.exit
  %var.load805 = load ptr, ptr %var.lx, align 8
  %var.load806 = load i64, ptr %var.start, align 8
  %addtmp807 = add i64 %var.load806, 4
  %fld.gep808 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load805, i32 0, i32 1
  store i64 %addtmp807, ptr %fld.gep808, align 8
  %var.load809 = load ptr, ptr %var.lx, align 8
  %var.load810 = load i64, ptr %var.col, align 8
  %addtmp811 = add i64 %var.load810, 4
  %fld.gep812 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load809, i32 0, i32 3
  store i64 %addtmp811, ptr %fld.gep812, align 8
  %var.load813 = load ptr, ptr %var.lx, align 8
  %arena.cur814 = call ptr @dva_arena_current()
  %enum.alloc815 = call ptr @dva_arena_alloc(ptr %arena.cur814, i64 16)
  %tag.gep816 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc815, i32 0, i32 0
  store i64 0, ptr %tag.gep816, align 8
  %pay.gep817 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc815, i32 0, i32 1
  store ptr null, ptr %pay.gep817, align 8
  %var.load818 = load i64, ptr %var.start, align 8
  %var.load819 = load i64, ptr %var.line, align 8
  %var.load820 = load i64, ptr %var.col, align 8
  %call.res821 = call ptr @"lexer::mktok"(ptr %var.load813, ptr %enum.alloc815, i64 %var.load818, i64 4, i64 %var.load819, i64 %var.load820, ptr @str.27.struct)
  ret ptr %call.res821

choice.exit804:                                   ; preds = %ret.dead822, %and.62.exit
  %var.load823 = load i64, ptr %"var.i'", align 8
  %var.load824 = load i64, ptr %var.start, align 8
  %subtmp825 = sub i64 %var.load823, %var.load824
  %cmptmp826 = icmp sgt i64 %subtmp825, 4
  br i1 %cmptmp826, label %and.63.then, label %and.63.else

ret.dead822:                                      ; No predecessors!
  br label %choice.exit804

and.63.then:                                      ; preds = %choice.exit804
  %var.load827 = load ptr, ptr %var.lx, align 8
  %fld.gep828 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load827, i32 0, i32 0
  %fld.load829 = load ptr, ptr %fld.gep828, align 8
  %s.read.len830 = getelementptr inbounds { i64, ptr }, ptr %fld.load829, i32 0, i32 0
  %s.read.len831 = load i64, ptr %s.read.len830, align 8
  %s.read.len832 = and i64 %s.read.len831, 281474976710655
  %str.tag833 = lshr i64 %s.read.len831, 48
  %str.immortal834 = icmp eq i64 %str.tag833, 0
  br i1 %str.immortal834, label %str_ok836, label %str_gen_check835

and.63.else:                                      ; preds = %choice.exit804
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %idx_ok847
  %and.63.phi = phi i1 [ %cmptmp853, %idx_ok847 ], [ %cmptmp826, %and.63.else ]
  br i1 %and.63.phi, label %and.64.then, label %and.64.else

str_gen_check835:                                 ; preds = %and.63.then
  %arena.gen838 = call ptr @dva_arena_current()
  %arena.gen839 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen838, i32 0, i32 4
  %arena.gen840 = load i64, ptr %arena.gen839, align 8
  %str.tag.match841 = icmp eq i64 %str.tag833, %arena.gen840
  br i1 %str.tag.match841, label %str_ok836, label %str_stale837

str_ok836:                                        ; preds = %str_stale837, %str_gen_check835, %and.63.then
  %s.read.data842 = getelementptr inbounds { i64, ptr }, ptr %fld.load829, i32 0, i32 1
  %s.read.data843 = load ptr, ptr %s.read.data842, align 8
  %var.load844 = load i64, ptr %var.start, align 8
  %idx.neg845 = icmp slt i64 %var.load844, 0
  br i1 %idx.neg845, label %idx_oob848, label %idx_big_check846

str_stale837:                                     ; preds = %str_gen_check835
  %49 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok836

idx_big_check846:                                 ; preds = %str_ok836
  %idx.big849 = icmp sge i64 %var.load844, %s.read.len832
  br i1 %idx.big849, label %idx_oob848, label %idx_ok847

idx_ok847:                                        ; preds = %idx_oob848, %idx_big_check846
  %s.byte.gep850 = getelementptr i8, ptr %s.read.data843, i64 %var.load844
  %s.byte851 = load i8, ptr %s.byte.gep850, align 1
  %s.byte.val852 = zext i8 %s.byte851 to i64
  %cmptmp853 = icmp eq i64 %s.byte.val852, 124
  br label %and.63.exit

idx_oob848:                                       ; preds = %idx_big_check846, %str_ok836
  %50 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok847

and.64.then:                                      ; preds = %and.63.exit
  %var.load854 = load ptr, ptr %var.lx, align 8
  %fld.gep855 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load854, i32 0, i32 0
  %fld.load856 = load ptr, ptr %fld.gep855, align 8
  %s.read.len857 = getelementptr inbounds { i64, ptr }, ptr %fld.load856, i32 0, i32 0
  %s.read.len858 = load i64, ptr %s.read.len857, align 8
  %s.read.len859 = and i64 %s.read.len858, 281474976710655
  %str.tag860 = lshr i64 %s.read.len858, 48
  %str.immortal861 = icmp eq i64 %str.tag860, 0
  br i1 %str.immortal861, label %str_ok863, label %str_gen_check862

and.64.else:                                      ; preds = %and.63.exit
  br label %and.64.exit

and.64.exit:                                      ; preds = %and.64.else, %idx_ok875
  %and.64.phi = phi i1 [ %cmptmp881, %idx_ok875 ], [ %and.63.phi, %and.64.else ]
  br i1 %and.64.phi, label %and.65.then, label %and.65.else

str_gen_check862:                                 ; preds = %and.64.then
  %arena.gen865 = call ptr @dva_arena_current()
  %arena.gen866 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen865, i32 0, i32 4
  %arena.gen867 = load i64, ptr %arena.gen866, align 8
  %str.tag.match868 = icmp eq i64 %str.tag860, %arena.gen867
  br i1 %str.tag.match868, label %str_ok863, label %str_stale864

str_ok863:                                        ; preds = %str_stale864, %str_gen_check862, %and.64.then
  %s.read.data869 = getelementptr inbounds { i64, ptr }, ptr %fld.load856, i32 0, i32 1
  %s.read.data870 = load ptr, ptr %s.read.data869, align 8
  %var.load871 = load i64, ptr %var.start, align 8
  %addtmp872 = add i64 %var.load871, 1
  %idx.neg873 = icmp slt i64 %addtmp872, 0
  br i1 %idx.neg873, label %idx_oob876, label %idx_big_check874

str_stale864:                                     ; preds = %str_gen_check862
  %51 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok863

idx_big_check874:                                 ; preds = %str_ok863
  %idx.big877 = icmp sge i64 %addtmp872, %s.read.len859
  br i1 %idx.big877, label %idx_oob876, label %idx_ok875

idx_ok875:                                        ; preds = %idx_oob876, %idx_big_check874
  %s.byte.gep878 = getelementptr i8, ptr %s.read.data870, i64 %addtmp872
  %s.byte879 = load i8, ptr %s.byte.gep878, align 1
  %s.byte.val880 = zext i8 %s.byte879 to i64
  %cmptmp881 = icmp eq i64 %s.byte.val880, 43
  br label %and.64.exit

idx_oob876:                                       ; preds = %idx_big_check874, %str_ok863
  %52 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok875

and.65.then:                                      ; preds = %and.64.exit
  %var.load882 = load ptr, ptr %var.lx, align 8
  %fld.gep883 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load882, i32 0, i32 0
  %fld.load884 = load ptr, ptr %fld.gep883, align 8
  %s.read.len885 = getelementptr inbounds { i64, ptr }, ptr %fld.load884, i32 0, i32 0
  %s.read.len886 = load i64, ptr %s.read.len885, align 8
  %s.read.len887 = and i64 %s.read.len886, 281474976710655
  %str.tag888 = lshr i64 %s.read.len886, 48
  %str.immortal889 = icmp eq i64 %str.tag888, 0
  br i1 %str.immortal889, label %str_ok891, label %str_gen_check890

and.65.else:                                      ; preds = %and.64.exit
  br label %and.65.exit

and.65.exit:                                      ; preds = %and.65.else, %idx_ok903
  %and.65.phi = phi i1 [ %cmptmp909, %idx_ok903 ], [ %and.64.phi, %and.65.else ]
  br i1 %and.65.phi, label %and.66.then, label %and.66.else

str_gen_check890:                                 ; preds = %and.65.then
  %arena.gen893 = call ptr @dva_arena_current()
  %arena.gen894 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen893, i32 0, i32 4
  %arena.gen895 = load i64, ptr %arena.gen894, align 8
  %str.tag.match896 = icmp eq i64 %str.tag888, %arena.gen895
  br i1 %str.tag.match896, label %str_ok891, label %str_stale892

str_ok891:                                        ; preds = %str_stale892, %str_gen_check890, %and.65.then
  %s.read.data897 = getelementptr inbounds { i64, ptr }, ptr %fld.load884, i32 0, i32 1
  %s.read.data898 = load ptr, ptr %s.read.data897, align 8
  %var.load899 = load i64, ptr %var.start, align 8
  %addtmp900 = add i64 %var.load899, 2
  %idx.neg901 = icmp slt i64 %addtmp900, 0
  br i1 %idx.neg901, label %idx_oob904, label %idx_big_check902

str_stale892:                                     ; preds = %str_gen_check890
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok891

idx_big_check902:                                 ; preds = %str_ok891
  %idx.big905 = icmp sge i64 %addtmp900, %s.read.len887
  br i1 %idx.big905, label %idx_oob904, label %idx_ok903

idx_ok903:                                        ; preds = %idx_oob904, %idx_big_check902
  %s.byte.gep906 = getelementptr i8, ptr %s.read.data898, i64 %addtmp900
  %s.byte907 = load i8, ptr %s.byte.gep906, align 1
  %s.byte.val908 = zext i8 %s.byte907 to i64
  %cmptmp909 = icmp eq i64 %s.byte.val908, 43
  br label %and.65.exit

idx_oob904:                                       ; preds = %idx_big_check902, %str_ok891
  %54 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok903

and.66.then:                                      ; preds = %and.65.exit
  %var.load910 = load ptr, ptr %var.lx, align 8
  %fld.gep911 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load910, i32 0, i32 0
  %fld.load912 = load ptr, ptr %fld.gep911, align 8
  %s.read.len913 = getelementptr inbounds { i64, ptr }, ptr %fld.load912, i32 0, i32 0
  %s.read.len914 = load i64, ptr %s.read.len913, align 8
  %s.read.len915 = and i64 %s.read.len914, 281474976710655
  %str.tag916 = lshr i64 %s.read.len914, 48
  %str.immortal917 = icmp eq i64 %str.tag916, 0
  br i1 %str.immortal917, label %str_ok919, label %str_gen_check918

and.66.else:                                      ; preds = %and.65.exit
  br label %and.66.exit

and.66.exit:                                      ; preds = %and.66.else, %idx_ok931
  %and.66.phi = phi i1 [ %cmptmp937, %idx_ok931 ], [ %and.65.phi, %and.66.else ]
  store i1 %and.66.phi, ptr %var.is_ret_succ_split, align 1
  %var.load938 = load i1, ptr %var.is_ret_succ_split, align 1
  br i1 %var.load938, label %choice.then939, label %choice.exit940

str_gen_check918:                                 ; preds = %and.66.then
  %arena.gen921 = call ptr @dva_arena_current()
  %arena.gen922 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen921, i32 0, i32 4
  %arena.gen923 = load i64, ptr %arena.gen922, align 8
  %str.tag.match924 = icmp eq i64 %str.tag916, %arena.gen923
  br i1 %str.tag.match924, label %str_ok919, label %str_stale920

str_ok919:                                        ; preds = %str_stale920, %str_gen_check918, %and.66.then
  %s.read.data925 = getelementptr inbounds { i64, ptr }, ptr %fld.load912, i32 0, i32 1
  %s.read.data926 = load ptr, ptr %s.read.data925, align 8
  %var.load927 = load i64, ptr %var.start, align 8
  %addtmp928 = add i64 %var.load927, 3
  %idx.neg929 = icmp slt i64 %addtmp928, 0
  br i1 %idx.neg929, label %idx_oob932, label %idx_big_check930

str_stale920:                                     ; preds = %str_gen_check918
  %55 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok919

idx_big_check930:                                 ; preds = %str_ok919
  %idx.big933 = icmp sge i64 %addtmp928, %s.read.len915
  br i1 %idx.big933, label %idx_oob932, label %idx_ok931

idx_ok931:                                        ; preds = %idx_oob932, %idx_big_check930
  %s.byte.gep934 = getelementptr i8, ptr %s.read.data926, i64 %addtmp928
  %s.byte935 = load i8, ptr %s.byte.gep934, align 1
  %s.byte.val936 = zext i8 %s.byte935 to i64
  %cmptmp937 = icmp eq i64 %s.byte.val936, 62
  br label %and.66.exit

idx_oob932:                                       ; preds = %idx_big_check930, %str_ok919
  %56 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok931

choice.then939:                                   ; preds = %and.66.exit
  %var.load941 = load ptr, ptr %var.lx, align 8
  %var.load942 = load i64, ptr %var.start, align 8
  %addtmp943 = add i64 %var.load942, 4
  %fld.gep944 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load941, i32 0, i32 1
  store i64 %addtmp943, ptr %fld.gep944, align 8
  %var.load945 = load ptr, ptr %var.lx, align 8
  %var.load946 = load i64, ptr %var.col, align 8
  %addtmp947 = add i64 %var.load946, 4
  %fld.gep948 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load945, i32 0, i32 3
  store i64 %addtmp947, ptr %fld.gep948, align 8
  %var.load949 = load ptr, ptr %var.lx, align 8
  %arena.cur950 = call ptr @dva_arena_current()
  %enum.alloc951 = call ptr @dva_arena_alloc(ptr %arena.cur950, i64 16)
  %tag.gep952 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc951, i32 0, i32 0
  store i64 0, ptr %tag.gep952, align 8
  %pay.gep953 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc951, i32 0, i32 1
  store ptr null, ptr %pay.gep953, align 8
  %var.load954 = load i64, ptr %var.start, align 8
  %var.load955 = load i64, ptr %var.line, align 8
  %var.load956 = load i64, ptr %var.col, align 8
  %call.res957 = call ptr @"lexer::mktok"(ptr %var.load949, ptr %enum.alloc951, i64 %var.load954, i64 4, i64 %var.load955, i64 %var.load956, ptr @str.28.struct)
  ret ptr %call.res957

choice.exit940:                                   ; preds = %ret.dead958, %and.66.exit
  %var.load959 = load i64, ptr %"var.i'", align 8
  %var.load960 = load i64, ptr %var.start, align 8
  %subtmp961 = sub i64 %var.load959, %var.load960
  %cmptmp962 = icmp sgt i64 %subtmp961, 3
  br i1 %cmptmp962, label %and.67.then, label %and.67.else

ret.dead958:                                      ; No predecessors!
  br label %choice.exit940

and.67.then:                                      ; preds = %choice.exit940
  %var.load963 = load ptr, ptr %var.lx, align 8
  %fld.gep964 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load963, i32 0, i32 0
  %fld.load965 = load ptr, ptr %fld.gep964, align 8
  %s.read.len966 = getelementptr inbounds { i64, ptr }, ptr %fld.load965, i32 0, i32 0
  %s.read.len967 = load i64, ptr %s.read.len966, align 8
  %s.read.len968 = and i64 %s.read.len967, 281474976710655
  %str.tag969 = lshr i64 %s.read.len967, 48
  %str.immortal970 = icmp eq i64 %str.tag969, 0
  br i1 %str.immortal970, label %str_ok972, label %str_gen_check971

and.67.else:                                      ; preds = %choice.exit940
  br label %and.67.exit

and.67.exit:                                      ; preds = %and.67.else, %idx_ok983
  %and.67.phi = phi i1 [ %cmptmp989, %idx_ok983 ], [ %cmptmp962, %and.67.else ]
  br i1 %and.67.phi, label %and.68.then, label %and.68.else

str_gen_check971:                                 ; preds = %and.67.then
  %arena.gen974 = call ptr @dva_arena_current()
  %arena.gen975 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen974, i32 0, i32 4
  %arena.gen976 = load i64, ptr %arena.gen975, align 8
  %str.tag.match977 = icmp eq i64 %str.tag969, %arena.gen976
  br i1 %str.tag.match977, label %str_ok972, label %str_stale973

str_ok972:                                        ; preds = %str_stale973, %str_gen_check971, %and.67.then
  %s.read.data978 = getelementptr inbounds { i64, ptr }, ptr %fld.load965, i32 0, i32 1
  %s.read.data979 = load ptr, ptr %s.read.data978, align 8
  %var.load980 = load i64, ptr %var.start, align 8
  %idx.neg981 = icmp slt i64 %var.load980, 0
  br i1 %idx.neg981, label %idx_oob984, label %idx_big_check982

str_stale973:                                     ; preds = %str_gen_check971
  %57 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok972

idx_big_check982:                                 ; preds = %str_ok972
  %idx.big985 = icmp sge i64 %var.load980, %s.read.len968
  br i1 %idx.big985, label %idx_oob984, label %idx_ok983

idx_ok983:                                        ; preds = %idx_oob984, %idx_big_check982
  %s.byte.gep986 = getelementptr i8, ptr %s.read.data979, i64 %var.load980
  %s.byte987 = load i8, ptr %s.byte.gep986, align 1
  %s.byte.val988 = zext i8 %s.byte987 to i64
  %cmptmp989 = icmp eq i64 %s.byte.val988, 124
  br label %and.67.exit

idx_oob984:                                       ; preds = %idx_big_check982, %str_ok972
  %58 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok983

and.68.then:                                      ; preds = %and.67.exit
  %var.load990 = load ptr, ptr %var.lx, align 8
  %fld.gep991 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load990, i32 0, i32 0
  %fld.load992 = load ptr, ptr %fld.gep991, align 8
  %s.read.len993 = getelementptr inbounds { i64, ptr }, ptr %fld.load992, i32 0, i32 0
  %s.read.len994 = load i64, ptr %s.read.len993, align 8
  %s.read.len995 = and i64 %s.read.len994, 281474976710655
  %str.tag996 = lshr i64 %s.read.len994, 48
  %str.immortal997 = icmp eq i64 %str.tag996, 0
  br i1 %str.immortal997, label %str_ok999, label %str_gen_check998

and.68.else:                                      ; preds = %and.67.exit
  br label %and.68.exit

and.68.exit:                                      ; preds = %and.68.else, %idx_ok1011
  %and.68.phi = phi i1 [ %cmptmp1017, %idx_ok1011 ], [ %and.67.phi, %and.68.else ]
  br i1 %and.68.phi, label %and.69.then, label %and.69.else

str_gen_check998:                                 ; preds = %and.68.then
  %arena.gen1001 = call ptr @dva_arena_current()
  %arena.gen1002 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1001, i32 0, i32 4
  %arena.gen1003 = load i64, ptr %arena.gen1002, align 8
  %str.tag.match1004 = icmp eq i64 %str.tag996, %arena.gen1003
  br i1 %str.tag.match1004, label %str_ok999, label %str_stale1000

str_ok999:                                        ; preds = %str_stale1000, %str_gen_check998, %and.68.then
  %s.read.data1005 = getelementptr inbounds { i64, ptr }, ptr %fld.load992, i32 0, i32 1
  %s.read.data1006 = load ptr, ptr %s.read.data1005, align 8
  %var.load1007 = load i64, ptr %var.start, align 8
  %addtmp1008 = add i64 %var.load1007, 1
  %idx.neg1009 = icmp slt i64 %addtmp1008, 0
  br i1 %idx.neg1009, label %idx_oob1012, label %idx_big_check1010

str_stale1000:                                    ; preds = %str_gen_check998
  %59 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok999

idx_big_check1010:                                ; preds = %str_ok999
  %idx.big1013 = icmp sge i64 %addtmp1008, %s.read.len995
  br i1 %idx.big1013, label %idx_oob1012, label %idx_ok1011

idx_ok1011:                                       ; preds = %idx_oob1012, %idx_big_check1010
  %s.byte.gep1014 = getelementptr i8, ptr %s.read.data1006, i64 %addtmp1008
  %s.byte1015 = load i8, ptr %s.byte.gep1014, align 1
  %s.byte.val1016 = zext i8 %s.byte1015 to i64
  %cmptmp1017 = icmp eq i64 %s.byte.val1016, 45
  br label %and.68.exit

idx_oob1012:                                      ; preds = %idx_big_check1010, %str_ok999
  %60 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok1011

and.69.then:                                      ; preds = %and.68.exit
  %var.load1018 = load ptr, ptr %var.lx, align 8
  %fld.gep1019 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1018, i32 0, i32 0
  %fld.load1020 = load ptr, ptr %fld.gep1019, align 8
  %s.read.len1021 = getelementptr inbounds { i64, ptr }, ptr %fld.load1020, i32 0, i32 0
  %s.read.len1022 = load i64, ptr %s.read.len1021, align 8
  %s.read.len1023 = and i64 %s.read.len1022, 281474976710655
  %str.tag1024 = lshr i64 %s.read.len1022, 48
  %str.immortal1025 = icmp eq i64 %str.tag1024, 0
  br i1 %str.immortal1025, label %str_ok1027, label %str_gen_check1026

and.69.else:                                      ; preds = %and.68.exit
  br label %and.69.exit

and.69.exit:                                      ; preds = %and.69.else, %idx_ok1039
  %and.69.phi = phi i1 [ %cmptmp1045, %idx_ok1039 ], [ %and.68.phi, %and.69.else ]
  store i1 %and.69.phi, ptr %var.is_ret_neg_split, align 1
  %var.load1046 = load i1, ptr %var.is_ret_neg_split, align 1
  br i1 %var.load1046, label %choice.then1047, label %choice.exit1048

str_gen_check1026:                                ; preds = %and.69.then
  %arena.gen1029 = call ptr @dva_arena_current()
  %arena.gen1030 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1029, i32 0, i32 4
  %arena.gen1031 = load i64, ptr %arena.gen1030, align 8
  %str.tag.match1032 = icmp eq i64 %str.tag1024, %arena.gen1031
  br i1 %str.tag.match1032, label %str_ok1027, label %str_stale1028

str_ok1027:                                       ; preds = %str_stale1028, %str_gen_check1026, %and.69.then
  %s.read.data1033 = getelementptr inbounds { i64, ptr }, ptr %fld.load1020, i32 0, i32 1
  %s.read.data1034 = load ptr, ptr %s.read.data1033, align 8
  %var.load1035 = load i64, ptr %var.start, align 8
  %addtmp1036 = add i64 %var.load1035, 2
  %idx.neg1037 = icmp slt i64 %addtmp1036, 0
  br i1 %idx.neg1037, label %idx_oob1040, label %idx_big_check1038

str_stale1028:                                    ; preds = %str_gen_check1026
  %61 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1027

idx_big_check1038:                                ; preds = %str_ok1027
  %idx.big1041 = icmp sge i64 %addtmp1036, %s.read.len1023
  br i1 %idx.big1041, label %idx_oob1040, label %idx_ok1039

idx_ok1039:                                       ; preds = %idx_oob1040, %idx_big_check1038
  %s.byte.gep1042 = getelementptr i8, ptr %s.read.data1034, i64 %addtmp1036
  %s.byte1043 = load i8, ptr %s.byte.gep1042, align 1
  %s.byte.val1044 = zext i8 %s.byte1043 to i64
  %cmptmp1045 = icmp eq i64 %s.byte.val1044, 62
  br label %and.69.exit

idx_oob1040:                                      ; preds = %idx_big_check1038, %str_ok1027
  %62 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok1039

choice.then1047:                                  ; preds = %and.69.exit
  %var.load1049 = load ptr, ptr %var.lx, align 8
  %var.load1050 = load i64, ptr %var.start, align 8
  %addtmp1051 = add i64 %var.load1050, 3
  %fld.gep1052 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1049, i32 0, i32 1
  store i64 %addtmp1051, ptr %fld.gep1052, align 8
  %var.load1053 = load ptr, ptr %var.lx, align 8
  %var.load1054 = load i64, ptr %var.col, align 8
  %addtmp1055 = add i64 %var.load1054, 3
  %fld.gep1056 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1053, i32 0, i32 3
  store i64 %addtmp1055, ptr %fld.gep1056, align 8
  %var.load1057 = load ptr, ptr %var.lx, align 8
  %arena.cur1058 = call ptr @dva_arena_current()
  %enum.alloc1059 = call ptr @dva_arena_alloc(ptr %arena.cur1058, i64 16)
  %tag.gep1060 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1059, i32 0, i32 0
  store i64 0, ptr %tag.gep1060, align 8
  %pay.gep1061 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1059, i32 0, i32 1
  store ptr null, ptr %pay.gep1061, align 8
  %var.load1062 = load i64, ptr %var.start, align 8
  %var.load1063 = load i64, ptr %var.line, align 8
  %var.load1064 = load i64, ptr %var.col, align 8
  %call.res1065 = call ptr @"lexer::mktok"(ptr %var.load1057, ptr %enum.alloc1059, i64 %var.load1062, i64 3, i64 %var.load1063, i64 %var.load1064, ptr @str.29.struct)
  ret ptr %call.res1065

choice.exit1048:                                  ; preds = %ret.dead1066, %and.69.exit
  %var.load1067 = load i64, ptr %"var.i'", align 8
  %var.load1068 = load i64, ptr %var.start, align 8
  %subtmp1069 = sub i64 %var.load1067, %var.load1068
  %cmptmp1070 = icmp sgt i64 %subtmp1069, 3
  br i1 %cmptmp1070, label %and.70.then, label %and.70.else

ret.dead1066:                                     ; No predecessors!
  br label %choice.exit1048

and.70.then:                                      ; preds = %choice.exit1048
  %var.load1071 = load ptr, ptr %var.lx, align 8
  %fld.gep1072 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1071, i32 0, i32 0
  %fld.load1073 = load ptr, ptr %fld.gep1072, align 8
  %s.read.len1074 = getelementptr inbounds { i64, ptr }, ptr %fld.load1073, i32 0, i32 0
  %s.read.len1075 = load i64, ptr %s.read.len1074, align 8
  %s.read.len1076 = and i64 %s.read.len1075, 281474976710655
  %str.tag1077 = lshr i64 %s.read.len1075, 48
  %str.immortal1078 = icmp eq i64 %str.tag1077, 0
  br i1 %str.immortal1078, label %str_ok1080, label %str_gen_check1079

and.70.else:                                      ; preds = %choice.exit1048
  br label %and.70.exit

and.70.exit:                                      ; preds = %and.70.else, %idx_ok1091
  %and.70.phi = phi i1 [ %cmptmp1097, %idx_ok1091 ], [ %cmptmp1070, %and.70.else ]
  br i1 %and.70.phi, label %and.71.then, label %and.71.else

str_gen_check1079:                                ; preds = %and.70.then
  %arena.gen1082 = call ptr @dva_arena_current()
  %arena.gen1083 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1082, i32 0, i32 4
  %arena.gen1084 = load i64, ptr %arena.gen1083, align 8
  %str.tag.match1085 = icmp eq i64 %str.tag1077, %arena.gen1084
  br i1 %str.tag.match1085, label %str_ok1080, label %str_stale1081

str_ok1080:                                       ; preds = %str_stale1081, %str_gen_check1079, %and.70.then
  %s.read.data1086 = getelementptr inbounds { i64, ptr }, ptr %fld.load1073, i32 0, i32 1
  %s.read.data1087 = load ptr, ptr %s.read.data1086, align 8
  %var.load1088 = load i64, ptr %var.start, align 8
  %idx.neg1089 = icmp slt i64 %var.load1088, 0
  br i1 %idx.neg1089, label %idx_oob1092, label %idx_big_check1090

str_stale1081:                                    ; preds = %str_gen_check1079
  %63 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1080

idx_big_check1090:                                ; preds = %str_ok1080
  %idx.big1093 = icmp sge i64 %var.load1088, %s.read.len1076
  br i1 %idx.big1093, label %idx_oob1092, label %idx_ok1091

idx_ok1091:                                       ; preds = %idx_oob1092, %idx_big_check1090
  %s.byte.gep1094 = getelementptr i8, ptr %s.read.data1087, i64 %var.load1088
  %s.byte1095 = load i8, ptr %s.byte.gep1094, align 1
  %s.byte.val1096 = zext i8 %s.byte1095 to i64
  %cmptmp1097 = icmp eq i64 %s.byte.val1096, 124
  br label %and.70.exit

idx_oob1092:                                      ; preds = %idx_big_check1090, %str_ok1080
  %64 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok1091

and.71.then:                                      ; preds = %and.70.exit
  %var.load1098 = load ptr, ptr %var.lx, align 8
  %fld.gep1099 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1098, i32 0, i32 0
  %fld.load1100 = load ptr, ptr %fld.gep1099, align 8
  %s.read.len1101 = getelementptr inbounds { i64, ptr }, ptr %fld.load1100, i32 0, i32 0
  %s.read.len1102 = load i64, ptr %s.read.len1101, align 8
  %s.read.len1103 = and i64 %s.read.len1102, 281474976710655
  %str.tag1104 = lshr i64 %s.read.len1102, 48
  %str.immortal1105 = icmp eq i64 %str.tag1104, 0
  br i1 %str.immortal1105, label %str_ok1107, label %str_gen_check1106

and.71.else:                                      ; preds = %and.70.exit
  br label %and.71.exit

and.71.exit:                                      ; preds = %and.71.else, %idx_ok1119
  %and.71.phi = phi i1 [ %cmptmp1125, %idx_ok1119 ], [ %and.70.phi, %and.71.else ]
  br i1 %and.71.phi, label %and.72.then, label %and.72.else

str_gen_check1106:                                ; preds = %and.71.then
  %arena.gen1109 = call ptr @dva_arena_current()
  %arena.gen1110 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1109, i32 0, i32 4
  %arena.gen1111 = load i64, ptr %arena.gen1110, align 8
  %str.tag.match1112 = icmp eq i64 %str.tag1104, %arena.gen1111
  br i1 %str.tag.match1112, label %str_ok1107, label %str_stale1108

str_ok1107:                                       ; preds = %str_stale1108, %str_gen_check1106, %and.71.then
  %s.read.data1113 = getelementptr inbounds { i64, ptr }, ptr %fld.load1100, i32 0, i32 1
  %s.read.data1114 = load ptr, ptr %s.read.data1113, align 8
  %var.load1115 = load i64, ptr %var.start, align 8
  %addtmp1116 = add i64 %var.load1115, 1
  %idx.neg1117 = icmp slt i64 %addtmp1116, 0
  br i1 %idx.neg1117, label %idx_oob1120, label %idx_big_check1118

str_stale1108:                                    ; preds = %str_gen_check1106
  %65 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1107

idx_big_check1118:                                ; preds = %str_ok1107
  %idx.big1121 = icmp sge i64 %addtmp1116, %s.read.len1103
  br i1 %idx.big1121, label %idx_oob1120, label %idx_ok1119

idx_ok1119:                                       ; preds = %idx_oob1120, %idx_big_check1118
  %s.byte.gep1122 = getelementptr i8, ptr %s.read.data1114, i64 %addtmp1116
  %s.byte1123 = load i8, ptr %s.byte.gep1122, align 1
  %s.byte.val1124 = zext i8 %s.byte1123 to i64
  %cmptmp1125 = icmp eq i64 %s.byte.val1124, 43
  br label %and.71.exit

idx_oob1120:                                      ; preds = %idx_big_check1118, %str_ok1107
  %66 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok1119

and.72.then:                                      ; preds = %and.71.exit
  %var.load1126 = load ptr, ptr %var.lx, align 8
  %fld.gep1127 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1126, i32 0, i32 0
  %fld.load1128 = load ptr, ptr %fld.gep1127, align 8
  %s.read.len1129 = getelementptr inbounds { i64, ptr }, ptr %fld.load1128, i32 0, i32 0
  %s.read.len1130 = load i64, ptr %s.read.len1129, align 8
  %s.read.len1131 = and i64 %s.read.len1130, 281474976710655
  %str.tag1132 = lshr i64 %s.read.len1130, 48
  %str.immortal1133 = icmp eq i64 %str.tag1132, 0
  br i1 %str.immortal1133, label %str_ok1135, label %str_gen_check1134

and.72.else:                                      ; preds = %and.71.exit
  br label %and.72.exit

and.72.exit:                                      ; preds = %and.72.else, %idx_ok1147
  %and.72.phi = phi i1 [ %cmptmp1153, %idx_ok1147 ], [ %and.71.phi, %and.72.else ]
  store i1 %and.72.phi, ptr %var.is_ret_pos_split, align 1
  %var.load1154 = load i1, ptr %var.is_ret_pos_split, align 1
  br i1 %var.load1154, label %choice.then1155, label %choice.exit1156

str_gen_check1134:                                ; preds = %and.72.then
  %arena.gen1137 = call ptr @dva_arena_current()
  %arena.gen1138 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1137, i32 0, i32 4
  %arena.gen1139 = load i64, ptr %arena.gen1138, align 8
  %str.tag.match1140 = icmp eq i64 %str.tag1132, %arena.gen1139
  br i1 %str.tag.match1140, label %str_ok1135, label %str_stale1136

str_ok1135:                                       ; preds = %str_stale1136, %str_gen_check1134, %and.72.then
  %s.read.data1141 = getelementptr inbounds { i64, ptr }, ptr %fld.load1128, i32 0, i32 1
  %s.read.data1142 = load ptr, ptr %s.read.data1141, align 8
  %var.load1143 = load i64, ptr %var.start, align 8
  %addtmp1144 = add i64 %var.load1143, 2
  %idx.neg1145 = icmp slt i64 %addtmp1144, 0
  br i1 %idx.neg1145, label %idx_oob1148, label %idx_big_check1146

str_stale1136:                                    ; preds = %str_gen_check1134
  %67 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1135

idx_big_check1146:                                ; preds = %str_ok1135
  %idx.big1149 = icmp sge i64 %addtmp1144, %s.read.len1131
  br i1 %idx.big1149, label %idx_oob1148, label %idx_ok1147

idx_ok1147:                                       ; preds = %idx_oob1148, %idx_big_check1146
  %s.byte.gep1150 = getelementptr i8, ptr %s.read.data1142, i64 %addtmp1144
  %s.byte1151 = load i8, ptr %s.byte.gep1150, align 1
  %s.byte.val1152 = zext i8 %s.byte1151 to i64
  %cmptmp1153 = icmp eq i64 %s.byte.val1152, 62
  br label %and.72.exit

idx_oob1148:                                      ; preds = %idx_big_check1146, %str_ok1135
  %68 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok1147

choice.then1155:                                  ; preds = %and.72.exit
  %var.load1157 = load ptr, ptr %var.lx, align 8
  %var.load1158 = load i64, ptr %var.start, align 8
  %addtmp1159 = add i64 %var.load1158, 3
  %fld.gep1160 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1157, i32 0, i32 1
  store i64 %addtmp1159, ptr %fld.gep1160, align 8
  %var.load1161 = load ptr, ptr %var.lx, align 8
  %var.load1162 = load i64, ptr %var.col, align 8
  %addtmp1163 = add i64 %var.load1162, 3
  %fld.gep1164 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1161, i32 0, i32 3
  store i64 %addtmp1163, ptr %fld.gep1164, align 8
  %var.load1165 = load ptr, ptr %var.lx, align 8
  %arena.cur1166 = call ptr @dva_arena_current()
  %enum.alloc1167 = call ptr @dva_arena_alloc(ptr %arena.cur1166, i64 16)
  %tag.gep1168 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1167, i32 0, i32 0
  store i64 0, ptr %tag.gep1168, align 8
  %pay.gep1169 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1167, i32 0, i32 1
  store ptr null, ptr %pay.gep1169, align 8
  %var.load1170 = load i64, ptr %var.start, align 8
  %var.load1171 = load i64, ptr %var.line, align 8
  %var.load1172 = load i64, ptr %var.col, align 8
  %call.res1173 = call ptr @"lexer::mktok"(ptr %var.load1165, ptr %enum.alloc1167, i64 %var.load1170, i64 3, i64 %var.load1171, i64 %var.load1172, ptr @str.30.struct)
  ret ptr %call.res1173

choice.exit1156:                                  ; preds = %ret.dead1174, %and.72.exit
  %var.load1175 = load ptr, ptr %var.lx, align 8
  %arena.cur1176 = call ptr @dva_arena_current()
  %enum.alloc1177 = call ptr @dva_arena_alloc(ptr %arena.cur1176, i64 16)
  %tag.gep1178 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1177, i32 0, i32 0
  store i64 0, ptr %tag.gep1178, align 8
  %pay.gep1179 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1177, i32 0, i32 1
  store ptr null, ptr %pay.gep1179, align 8
  %var.load1180 = load i64, ptr %var.start, align 8
  %var.load1181 = load i64, ptr %"var.i'", align 8
  %var.load1182 = load i64, ptr %var.start, align 8
  %subtmp1183 = sub i64 %var.load1181, %var.load1182
  %var.load1184 = load i64, ptr %var.line, align 8
  %var.load1185 = load i64, ptr %var.col, align 8
  %var.load1186 = load ptr, ptr %var.lx, align 8
  %fld.gep1187 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load1186, i32 0, i32 0
  %fld.load1188 = load ptr, ptr %fld.gep1187, align 8
  %s.read.len1189 = getelementptr inbounds { i64, ptr }, ptr %fld.load1188, i32 0, i32 0
  %s.read.len1190 = load i64, ptr %s.read.len1189, align 8
  %s.read.len1191 = and i64 %s.read.len1190, 281474976710655
  %str.tag1192 = lshr i64 %s.read.len1190, 48
  %str.immortal1193 = icmp eq i64 %str.tag1192, 0
  br i1 %str.immortal1193, label %str_ok1195, label %str_gen_check1194

ret.dead1174:                                     ; No predecessors!
  br label %choice.exit1156

str_gen_check1194:                                ; preds = %choice.exit1156
  %arena.gen1197 = call ptr @dva_arena_current()
  %arena.gen1198 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1197, i32 0, i32 4
  %arena.gen1199 = load i64, ptr %arena.gen1198, align 8
  %str.tag.match1200 = icmp eq i64 %str.tag1192, %arena.gen1199
  br i1 %str.tag.match1200, label %str_ok1195, label %str_stale1196

str_ok1195:                                       ; preds = %str_stale1196, %str_gen_check1194, %choice.exit1156
  %s.read.data1201 = getelementptr inbounds { i64, ptr }, ptr %fld.load1188, i32 0, i32 1
  %s.read.data1202 = load ptr, ptr %s.read.data1201, align 8
  %var.load1203 = load i64, ptr %var.start, align 8
  %var.load1204 = load i64, ptr %"var.i'", align 8
  %start.is_neg = icmp slt i64 %var.load1203, 0
  %rel.start = add i64 %s.read.len1191, %var.load1203
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load1203
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len1191
  %final.start = select i1 %start.gt.len, i64 %s.read.len1191, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load1204, 0
  %rel.end = add i64 %s.read.len1191, %var.load1204
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load1204
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len1191
  %final.end = select i1 %end.gt.len, i64 %s.read.len1191, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data1202, i64 %final.start
  %arena.cur1205 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur1205, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %call.res1206 = call ptr @"lexer::mktok"(ptr %var.load1175, ptr %enum.alloc1177, i64 %var.load1180, i64 %subtmp1183, i64 %var.load1184, i64 %var.load1185, ptr %str.view)
  ret ptr %call.res1206

str_stale1196:                                    ; preds = %str_gen_check1194
  %69 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1195
}

define void @"lexer::maybe_esc_adv"(ptr %0, i64 %1) #1 {
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
  br i1 %cmptmp, label %choice.then, label %choice.exit

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

choice.exit:                                      ; preds = %choice.then, %str_ok
  ret void
}

define void @"lexer::on_str_esc"(ptr %0, i64 %1) #1 {
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
  call void @"lexer::maybe_esc_adv"(ptr %var.load1, i64 %var.load2)
  ret void
}

define i64 @"lexer::scan_string_body"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.73 = alloca i64, align 8
  %loop.idx.73 = alloca i64, align 8
  %"var.closed'" = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  store i64 0, ptr %"var.closed'", align 8
  store i64 0, ptr %loop.idx.73, align 8
  br label %loop.header.73

loop.header.73:                                   ; preds = %loop.latch.73, %entry
  %counter.load = load i64, ptr %loop.idx.73, align 8
  br label %loop.body.73

loop.body.73:                                     ; preds = %loop.header.73
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.73, align 8
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

loop.exit.nat.73:                                 ; No predecessors!
  br label %loop.exit.73

loop.latch.73:                                    ; preds = %choice.exit10
  %step.val = load i64, ptr %loop.step.73, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.73, align 8
  br label %loop.header.73

loop.exit.73:                                     ; preds = %choice.case, %choice.then, %loop.exit.nat.73
  %var.load23 = load i64, ptr %"var.closed'", align 8
  ret i64 %var.load23

str_gen_check:                                    ; preds = %loop.body.73
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.73
  %cmptmp = icmp sge i64 %fld.load, %str.len.query5
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %loop.exit.73

choice.exit:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load8, i64 0)
  store i64 %call.res, ptr %var.c, align 8
  %var.load9 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load9, 34
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit10:                                    ; preds = %choice.next16, %choice.case15
  br label %loop.latch.73

choice.case:                                      ; preds = %choice.exit
  %var.load11 = load ptr, ptr %var.lx, align 8
  %var.load12 = load ptr, ptr %var.lx, align 8
  %call.res13 = call i64 @"lexer::pk"(ptr %var.load12, i64 0)
  %call.res14 = call i64 @"lexer::adv"(ptr %var.load11, i64 %call.res13)
  store i64 1, ptr %"var.closed'", align 8
  br label %loop.exit.73

choice.next:                                      ; preds = %choice.exit
  %val.match17 = icmp eq i64 %var.load9, 92
  br i1 %val.match17, label %choice.case15, label %choice.next16

choice.case15:                                    ; preds = %choice.next
  %var.load18 = load ptr, ptr %var.lx, align 8
  %var.load19 = load i64, ptr %var.c, align 8
  call void @"lexer::on_str_esc"(ptr %var.load18, i64 %var.load19)
  br label %choice.exit10

choice.next16:                                    ; preds = %choice.next
  %var.load20 = load ptr, ptr %var.lx, align 8
  %var.load21 = load i64, ptr %var.c, align 8
  %call.res22 = call i64 @"lexer::adv"(ptr %var.load20, i64 %var.load21)
  br label %choice.exit10
}

define i64 @"lexer::scan_raw_body"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.is_esc = alloca i1, align 1
  %var.is_close = alloca i1, align 1
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.74 = alloca i64, align 8
  %loop.idx.74 = alloca i64, align 8
  %"var.closed'" = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  store i64 0, ptr %"var.closed'", align 8
  store i64 0, ptr %loop.idx.74, align 8
  br label %loop.header.74

loop.header.74:                                   ; preds = %loop.latch.74, %entry
  %counter.load = load i64, ptr %loop.idx.74, align 8
  br label %loop.body.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.74, align 8
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

loop.exit.nat.74:                                 ; No predecessors!
  br label %loop.exit.74

loop.latch.74:                                    ; preds = %choice.exit24
  %step.val = load i64, ptr %loop.step.74, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.74, align 8
  br label %loop.header.74

loop.exit.74:                                     ; preds = %choice.then23, %choice.then, %loop.exit.nat.74
  %var.load54 = load i64, ptr %"var.closed'", align 8
  ret i64 %var.load54

str_gen_check:                                    ; preds = %loop.body.74
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.74
  %cmptmp = icmp sge i64 %fld.load, %str.len.query5
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %loop.exit.74

choice.exit:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load8, i64 0)
  store i64 %call.res, ptr %var.c, align 8
  %var.load9 = load i64, ptr %var.c, align 8
  %cmptmp10 = icmp eq i64 %var.load9, 61
  br i1 %cmptmp10, label %and.75.then, label %and.75.else

and.75.then:                                      ; preds = %choice.exit
  %var.load11 = load ptr, ptr %var.lx, align 8
  %call.res12 = call i64 @"lexer::pk_off"(ptr %var.load11, i64 1)
  %cmptmp13 = icmp eq i64 %call.res12, 41
  br label %and.75.exit

and.75.else:                                      ; preds = %choice.exit
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %and.75.then
  %and.75.phi = phi i1 [ %cmptmp13, %and.75.then ], [ %cmptmp10, %and.75.else ]
  store i1 %and.75.phi, ptr %var.is_close, align 1
  %var.load14 = load i64, ptr %var.c, align 8
  %cmptmp15 = icmp eq i64 %var.load14, 61
  br i1 %cmptmp15, label %and.76.then, label %and.76.else

and.76.then:                                      ; preds = %and.75.exit
  %var.load16 = load ptr, ptr %var.lx, align 8
  %call.res17 = call i64 @"lexer::pk_off"(ptr %var.load16, i64 1)
  %cmptmp18 = icmp eq i64 %call.res17, 92
  br label %and.76.exit

and.76.else:                                      ; preds = %and.75.exit
  br label %and.76.exit

and.76.exit:                                      ; preds = %and.76.else, %and.76.then
  %and.76.phi = phi i1 [ %cmptmp18, %and.76.then ], [ %cmptmp15, %and.76.else ]
  br i1 %and.76.phi, label %and.77.then, label %and.77.else

and.77.then:                                      ; preds = %and.76.exit
  %var.load19 = load ptr, ptr %var.lx, align 8
  %call.res20 = call i64 @"lexer::pk_off"(ptr %var.load19, i64 2)
  %cmptmp21 = icmp eq i64 %call.res20, 41
  br label %and.77.exit

and.77.else:                                      ; preds = %and.76.exit
  br label %and.77.exit

and.77.exit:                                      ; preds = %and.77.else, %and.77.then
  %and.77.phi = phi i1 [ %cmptmp21, %and.77.then ], [ %and.76.phi, %and.77.else ]
  store i1 %and.77.phi, ptr %var.is_esc, align 1
  %var.load22 = load i1, ptr %var.is_close, align 1
  br i1 %var.load22, label %choice.then23, label %choice.else

choice.then23:                                    ; preds = %and.77.exit
  %var.load25 = load ptr, ptr %var.lx, align 8
  %var.load26 = load ptr, ptr %var.lx, align 8
  %call.res27 = call i64 @"lexer::pk"(ptr %var.load26, i64 0)
  %call.res28 = call i64 @"lexer::adv"(ptr %var.load25, i64 %call.res27)
  %var.load29 = load ptr, ptr %var.lx, align 8
  %var.load30 = load ptr, ptr %var.lx, align 8
  %call.res31 = call i64 @"lexer::pk"(ptr %var.load30, i64 0)
  %call.res32 = call i64 @"lexer::adv"(ptr %var.load29, i64 %call.res31)
  store i64 1, ptr %"var.closed'", align 8
  br label %loop.exit.74

choice.else:                                      ; preds = %and.77.exit
  %var.load33 = load i1, ptr %var.is_esc, align 1
  br i1 %var.load33, label %choice.then34, label %choice.else35

choice.exit24:                                    ; preds = %choice.exit36
  br label %loop.latch.74

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
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store i64 %1, ptr %var.i, align 8
  store i64 %2, ptr %var.n, align 8
  %var.load = load i64, ptr %var.i, align 8
  store i64 %var.load, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.header.78:                                   ; preds = %loop.latch.78, %entry
  %counter.load = load i64, ptr %loop.idx.78, align 8
  br label %loop.body.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.78, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load i64, ptr %"var.pos'", align 8
  %var.load2 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load1, %var.load2
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.78:                                 ; No predecessors!
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.78, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %choice.else, %choice.then, %loop.exit.nat.78
  %var.load17 = load i64, ptr %"var.pos'", align 8
  ret i64 %var.load17

choice.then:                                      ; preds = %loop.body.78
  br label %loop.exit.78

choice.exit:                                      ; preds = %loop.body.78
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
  br i1 %cmptmp11, label %or.79.then, label %or.79.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

or.79.then:                                       ; preds = %idx_ok
  br label %or.79.exit

or.79.else:                                       ; preds = %idx_ok
  %var.load12 = load i64, ptr %var.c, align 8
  %cmptmp13 = icmp eq i64 %var.load12, 9
  br label %or.79.exit

or.79.exit:                                       ; preds = %or.79.else, %or.79.then
  %or.79.phi = phi i1 [ %cmptmp11, %or.79.then ], [ %cmptmp13, %or.79.else ]
  br i1 %or.79.phi, label %choice.then14, label %choice.else

choice.then14:                                    ; preds = %or.79.exit
  %var.load16 = load i64, ptr %"var.pos'", align 8
  %addtmp = add i64 %var.load16, 1
  store i64 %addtmp, ptr %"var.pos'", align 8
  br label %choice.exit15

choice.else:                                      ; preds = %or.79.exit
  br label %loop.exit.78

choice.exit15:                                    ; preds = %choice.then14
  br label %loop.latch.78
}

define i64 @"lexer::skip_eol_comment"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.80 = alloca i64, align 8
  %loop.idx.80 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.header.80:                                   ; preds = %loop.latch.80, %entry
  %counter.load = load i64, ptr %loop.idx.80, align 8
  br label %loop.body.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.80, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load i64, ptr %"var.pos'", align 8
  %var.load2 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load1, %var.load2
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.80:                                 ; No predecessors!
  br label %loop.exit.80

loop.latch.80:                                    ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.80, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.exit.80:                                     ; preds = %choice.then14, %choice.then, %loop.exit.nat.80
  %var.load18 = load i64, ptr %"var.pos'", align 8
  ret i64 %var.load18

choice.then:                                      ; preds = %loop.body.80
  br label %loop.exit.80

choice.exit:                                      ; preds = %loop.body.80
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
  br i1 %cmptmp11, label %or.81.then, label %or.81.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

or.81.then:                                       ; preds = %idx_ok
  br label %or.81.exit

or.81.else:                                       ; preds = %idx_ok
  %var.load12 = load i64, ptr %var.c, align 8
  %cmptmp13 = icmp eq i64 %var.load12, 13
  br label %or.81.exit

or.81.exit:                                       ; preds = %or.81.else, %or.81.then
  %or.81.phi = phi i1 [ %cmptmp11, %or.81.then ], [ %cmptmp13, %or.81.else ]
  br i1 %or.81.phi, label %choice.then14, label %choice.exit15

choice.then14:                                    ; preds = %or.81.exit
  br label %loop.exit.80

choice.exit15:                                    ; preds = %or.81.exit
  %var.load16 = load i64, ptr %"var.pos'", align 8
  %addtmp17 = add i64 %var.load16, 1
  store i64 %addtmp17, ptr %"var.pos'", align 8
  br label %loop.latch.80
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
  br i1 %cmptmp, label %and.82.then, label %and.82.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.82.then:                                      ; preds = %str_ok
  %var.load14 = load ptr, ptr %var.lx, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %s.read.len17 = load i64, ptr %s.read.len, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %str.tag19 = lshr i64 %s.read.len17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

and.82.else:                                      ; preds = %str_ok
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %idx_ok
  %and.82.phi = phi i1 [ %cmptmp30, %idx_ok ], [ %cmptmp, %and.82.else ]
  br i1 %and.82.phi, label %and.83.then, label %and.83.else

str_gen_check21:                                  ; preds = %and.82.then
  %arena.gen24 = call ptr @dva_arena_current()
  %arena.gen25 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen24, i32 0, i32 4
  %arena.gen26 = load i64, ptr %arena.gen25, align 8
  %str.tag.match27 = icmp eq i64 %str.tag19, %arena.gen26
  br i1 %str.tag.match27, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %and.82.then
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
  br label %and.82.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok22
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.83.then:                                      ; preds = %and.82.exit
  %var.load31 = load ptr, ptr %var.lx, align 8
  %fld.gep32 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load31, i32 0, i32 0
  %fld.load33 = load ptr, ptr %fld.gep32, align 8
  %s.read.len34 = getelementptr inbounds { i64, ptr }, ptr %fld.load33, i32 0, i32 0
  %s.read.len35 = load i64, ptr %s.read.len34, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %str.tag37 = lshr i64 %s.read.len35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

and.83.else:                                      ; preds = %and.82.exit
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %idx_ok52
  %and.83.phi = phi i1 [ %cmptmp58, %idx_ok52 ], [ %and.82.phi, %and.83.else ]
  store i1 %and.83.phi, ptr %var.has_cm, align 1
  %var.load59 = load i1, ptr %var.has_cm, align 1
  br i1 %var.load59, label %choice.then, label %choice.else

str_gen_check39:                                  ; preds = %and.83.then
  %arena.gen42 = call ptr @dva_arena_current()
  %arena.gen43 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen42, i32 0, i32 4
  %arena.gen44 = load i64, ptr %arena.gen43, align 8
  %str.tag.match45 = icmp eq i64 %str.tag37, %arena.gen44
  br i1 %str.tag.match45, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %and.83.then
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
  br label %and.83.exit

idx_oob53:                                        ; preds = %idx_big_check51, %str_ok40
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok52

choice.then:                                      ; preds = %and.83.exit
  %var.load60 = load ptr, ptr %var.lx, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load60, i32 0, i32 0
  %fld.load62 = load ptr, ptr %fld.gep61, align 8
  %var.load63 = load i64, ptr %var.p1, align 8
  %var.load64 = load i64, ptr %var.n, align 8
  %call.res65 = call i64 @"lexer::skip_eol_comment"(ptr %fld.load62, i64 %var.load63, i64 %var.load64)
  br label %choice.exit

choice.else:                                      ; preds = %and.83.exit
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
  br i1 %cmptmp199, label %and.84.then, label %and.84.else

idx_oob191:                                       ; preds = %idx_big_check189, %str_ok179
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok190

and.84.then:                                      ; preds = %idx_ok190
  %var.load200 = load i64, ptr %var.p4, align 8
  %addtmp201 = add i64 %var.load200, 1
  %var.load202 = load i64, ptr %var.n, align 8
  %cmptmp203 = icmp slt i64 %addtmp201, %var.load202
  br label %and.84.exit

and.84.else:                                      ; preds = %idx_ok190
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %and.84.then
  %and.84.phi = phi i1 [ %cmptmp203, %and.84.then ], [ %cmptmp199, %and.84.else ]
  br i1 %and.84.phi, label %and.85.then, label %and.85.else

and.85.then:                                      ; preds = %and.84.exit
  %var.load204 = load ptr, ptr %var.lx, align 8
  %fld.gep205 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load204, i32 0, i32 0
  %fld.load206 = load ptr, ptr %fld.gep205, align 8
  %s.read.len207 = getelementptr inbounds { i64, ptr }, ptr %fld.load206, i32 0, i32 0
  %s.read.len208 = load i64, ptr %s.read.len207, align 8
  %s.read.len209 = and i64 %s.read.len208, 281474976710655
  %str.tag210 = lshr i64 %s.read.len208, 48
  %str.immortal211 = icmp eq i64 %str.tag210, 0
  br i1 %str.immortal211, label %str_ok213, label %str_gen_check212

and.85.else:                                      ; preds = %and.84.exit
  br label %and.85.exit

and.85.exit:                                      ; preds = %and.85.else, %idx_ok225
  %and.85.phi = phi i1 [ %cmptmp231, %idx_ok225 ], [ %and.84.phi, %and.85.else ]
  store i1 %and.85.phi, ptr %var.is_raw, align 1
  %var.load232 = load i1, ptr %var.is_quote, align 1
  br i1 %var.load232, label %or.86.then, label %or.86.else

str_gen_check212:                                 ; preds = %and.85.then
  %arena.gen215 = call ptr @dva_arena_current()
  %arena.gen216 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen215, i32 0, i32 4
  %arena.gen217 = load i64, ptr %arena.gen216, align 8
  %str.tag.match218 = icmp eq i64 %str.tag210, %arena.gen217
  br i1 %str.tag.match218, label %str_ok213, label %str_stale214

str_ok213:                                        ; preds = %str_stale214, %str_gen_check212, %and.85.then
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
  br label %and.85.exit

idx_oob226:                                       ; preds = %idx_big_check224, %str_ok213
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok225

or.86.then:                                       ; preds = %and.85.exit
  br label %or.86.exit

or.86.else:                                       ; preds = %and.85.exit
  %var.load233 = load i1, ptr %var.is_raw, align 1
  br label %or.86.exit

or.86.exit:                                       ; preds = %or.86.else, %or.86.then
  %or.86.phi = phi i1 [ %var.load232, %or.86.then ], [ %var.load233, %or.86.else ]
  br i1 %or.86.phi, label %choice.then234, label %choice.else235

choice.then234:                                   ; preds = %or.86.exit
  %var.load237 = load i64, ptr %var.p4, align 8
  br label %choice.exit236

choice.else235:                                   ; preds = %or.86.exit
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
  %loop.step.87 = alloca i64, align 8
  %loop.idx.87 = alloca i64, align 8
  %var.target = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.target, align 8
  store i64 0, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.header.87:                                   ; preds = %loop.latch.87, %entry
  %counter.load = load i64, ptr %loop.idx.87, align 8
  br label %loop.body.87

loop.body.87:                                     ; preds = %loop.header.87
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.87, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr %var.target, align 8
  %cmptmp = icmp slt i64 %fld.load, %var.load1
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.87:                                 ; No predecessors!
  br label %loop.exit.87

loop.latch.87:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.87, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.exit.87:                                     ; preds = %choice.else, %loop.exit.nat.87
  ret void

choice.then:                                      ; preds = %loop.body.87
  %var.load2 = load ptr, ptr %var.lx, align 8
  %var.load3 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load3, i64 0)
  %call.res4 = call i64 @"lexer::adv"(ptr %var.load2, i64 %call.res)
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.87
  br label %loop.exit.87

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.87
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
  br i1 %cmptmp, label %and.88.then, label %and.88.else

and.88.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res2 = call i64 @"lexer::pk_off"(ptr %var.load1, i64 1)
  %cmptmp3 = icmp eq i64 %call.res2, 61
  br label %and.88.exit

and.88.else:                                      ; preds = %entry
  br label %and.88.exit

and.88.exit:                                      ; preds = %and.88.else, %and.88.then
  %and.88.phi = phi i1 [ %cmptmp3, %and.88.then ], [ %cmptmp, %and.88.else ]
  store i1 %and.88.phi, ptr %var.is_raw, align 1
  %var.load4 = load i1, ptr %var.is_raw, align 1
  br i1 %var.load4, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.88.exit
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

choice.else:                                      ; preds = %and.88.exit
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
  %call.res30 = call i64 @"lexer::fail"(i64 1014, i64 %fld.load26, i64 %fld.load29, ptr @str.31.struct)
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
  %call.res83 = call i64 @"lexer::fail"(i64 1008, i64 %fld.load79, i64 %fld.load82, ptr @str.32.struct)
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
  %loop.step.89 = alloca i64, align 8
  %loop.idx.89 = alloca i64, align 8
  %"var.res'" = alloca ptr, align 8
  %var.text = alloca ptr, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store ptr %1, ptr %var.text, align 8
  %var.load = load ptr, ptr %var.text, align 8
  store ptr %var.load, ptr %"var.res'", align 8
  store i64 0, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.header.89:                                   ; preds = %loop.latch.89, %entry
  %counter.load = load i64, ptr %loop.idx.89, align 8
  br label %loop.body.89

loop.body.89:                                     ; preds = %loop.header.89
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.89, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::check_multiline_str"(ptr %var.load1)
  store i64 %call.res, ptr %var.target, align 8
  %var.load2 = load i64, ptr %var.target, align 8
  %val.match = icmp eq i64 %var.load2, 0
  br i1 %val.match, label %choice.case, label %choice.next

loop.exit.nat.89:                                 ; No predecessors!
  br label %loop.exit.89

loop.latch.89:                                    ; preds = %concat.tot.len30
  %step.val = load i64, ptr %loop.step.89, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.exit.89:                                     ; preds = %choice.case, %loop.exit.nat.89
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

choice.case:                                      ; preds = %loop.body.89
  br label %loop.exit.89

choice.next:                                      ; preds = %loop.body.89
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
  br label %loop.latch.89

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
  %call.res11 = call i64 @"lexer::fail"(i64 1008, i64 %var.load9, i64 %var.load10, ptr @str.32.struct)
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
  br i1 %cmptmp, label %or.90.then, label %or.90.else

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

or.90.then:                                       ; preds = %str_ok
  br label %or.90.exit

or.90.else:                                       ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.lx, align 8
  %call.res12 = call i64 @"lexer::pk"(ptr %var.load11, i64 0)
  %cmptmp13 = icmp eq i64 %call.res12, 39
  br label %or.90.exit

or.90.exit:                                       ; preds = %or.90.else, %or.90.then
  %or.90.phi = phi i1 [ %cmptmp, %or.90.then ], [ %cmptmp13, %or.90.else ]
  store i1 %or.90.phi, ptr %var.bad_head, align 1
  %var.load14 = load i1, ptr %var.bad_head, align 1
  br i1 %var.load14, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.90.exit
  %var.load15 = load i64, ptr %var.line, align 8
  %var.load16 = load i64, ptr %var.col, align 8
  %call.res17 = call i64 @"lexer::fail"(i64 1009, i64 %var.load15, i64 %var.load16, ptr @str.33.struct)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %or.90.exit
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
  %call.res57 = call i64 @"lexer::fail"(i64 1010, i64 %var.load55, i64 %var.load56, ptr @str.34.struct)
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
  %call.res15 = call i64 @"lexer::fail"(i64 1014, i64 %var.load13, i64 %var.load14, ptr @str.31.struct)
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
  %call.res = call i64 @"lexer::scan_while"(ptr %var.load, ptr @clo.const.49)
  ret i64 %call.res
}

define internal i1 @"$anon_fn.120"(i64 %0) #1 {
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
  %loop.step.91 = alloca i64, align 8
  %loop.idx.91 = alloca i64, align 8
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

loop.exit.nat.91:                                 ; No predecessors!
  br label %loop.exit.91

loop.latch.91:                                    ; preds = %choice.exit22
  %step.val = load i64, ptr %loop.step.91, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.exit.91:                                     ; preds = %choice.then21, %choice.then, %loop.exit.nat.91
  %var.load35 = load i1, ptr %"var.done'", align 1
  %nottmp = xor i1 %var.load35, true
  br i1 %nottmp, label %choice.then36, label %choice.exit37

str_gen_check:                                    ; preds = %loop.body.91
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen14
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.91
  %cmptmp = icmp sge i64 %fld.load, %str.len.query12
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %loop.exit.91

choice.exit:                                      ; preds = %str_ok
  %var.load15 = load ptr, ptr %var.lx, align 8
  %call.res16 = call i64 @"lexer::pk"(ptr %var.load15, i64 0)
  %cmptmp17 = icmp eq i64 %call.res16, 42
  br i1 %cmptmp17, label %and.92.then, label %and.92.else

and.92.then:                                      ; preds = %choice.exit
  %var.load18 = load ptr, ptr %var.lx, align 8
  %call.res19 = call i64 @"lexer::pk_off"(ptr %var.load18, i64 1)
  %cmptmp20 = icmp eq i64 %call.res19, 47
  br label %and.92.exit

and.92.else:                                      ; preds = %choice.exit
  br label %and.92.exit

and.92.exit:                                      ; preds = %and.92.else, %and.92.then
  %and.92.phi = phi i1 [ %cmptmp20, %and.92.then ], [ %cmptmp17, %and.92.else ]
  br i1 %and.92.phi, label %choice.then21, label %choice.else

choice.then21:                                    ; preds = %and.92.exit
  %var.load23 = load ptr, ptr %var.lx, align 8
  %var.load24 = load ptr, ptr %var.lx, align 8
  %call.res25 = call i64 @"lexer::pk"(ptr %var.load24, i64 0)
  %call.res26 = call i64 @"lexer::adv"(ptr %var.load23, i64 %call.res25)
  %var.load27 = load ptr, ptr %var.lx, align 8
  %var.load28 = load ptr, ptr %var.lx, align 8
  %call.res29 = call i64 @"lexer::pk"(ptr %var.load28, i64 0)
  %call.res30 = call i64 @"lexer::adv"(ptr %var.load27, i64 %call.res29)
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.91

choice.else:                                      ; preds = %and.92.exit
  %var.load31 = load ptr, ptr %var.lx, align 8
  %var.load32 = load ptr, ptr %var.lx, align 8
  %call.res33 = call i64 @"lexer::pk"(ptr %var.load32, i64 0)
  %call.res34 = call i64 @"lexer::adv"(ptr %var.load31, i64 %call.res33)
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else
  br label %loop.latch.91

choice.then36:                                    ; preds = %loop.exit.91
  %var.load38 = load i64, ptr %var.line, align 8
  %var.load39 = load i64, ptr %var.col, align 8
  %call.res40 = call i64 @"lexer::fail"(i64 1007, i64 %var.load38, i64 %var.load39, ptr @str.35.struct)
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.then36, %loop.exit.91
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
  %call.res5 = call i64 @"lexer::scan_while"(ptr %var.load4, ptr @clo.const.52)
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

define internal i1 @"$anon_fn.123"(i64 %0) #1 {
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
  %loop.step.93 = alloca i64, align 8
  %loop.idx.93 = alloca i64, align 8
  %"var.closed'" = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 0, ptr %"var.closed'", align 8
  store i64 0, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.header.93:                                   ; preds = %loop.latch.93, %entry
  %counter.load = load i64, ptr %loop.idx.93, align 8
  br label %loop.body.93

loop.body.93:                                     ; preds = %loop.header.93
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.93, align 8
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

loop.exit.nat.93:                                 ; No predecessors!
  br label %loop.exit.93

loop.latch.93:                                    ; preds = %choice.exit10
  %step.val = load i64, ptr %loop.step.93, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.exit.93:                                     ; preds = %choice.case, %choice.then, %loop.exit.nat.93
  %var.load29 = load i64, ptr %"var.closed'", align 8
  ret i64 %var.load29

str_gen_check:                                    ; preds = %loop.body.93
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.93
  %cmptmp = icmp sge i64 %fld.load, %str.len.query5
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %loop.exit.93

choice.exit:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load8, i64 0)
  store i64 %call.res, ptr %var.c, align 8
  %var.load9 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load9, 34
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit10:                                    ; preds = %choice.next16, %choice.case15
  br label %loop.latch.93

choice.case:                                      ; preds = %choice.exit
  %var.load11 = load ptr, ptr %var.lx, align 8
  %var.load12 = load ptr, ptr %var.lx, align 8
  %call.res13 = call i64 @"lexer::pk"(ptr %var.load12, i64 0)
  %call.res14 = call i64 @"lexer::adv"(ptr %var.load11, i64 %call.res13)
  store i64 1, ptr %"var.closed'", align 8
  br label %loop.exit.93

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
  %call.res10 = call i64 @"lexer::fail"(i64 1011, i64 %var.load8, i64 %var.load9, ptr @str.36.struct)
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
  br i1 %nottmp, label %and.94.then, label %and.94.else

and.94.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.r, align 8
  %call.res2 = call i1 @"lexer::is_nl"(i64 %var.load1)
  %nottmp3 = xor i1 %call.res2, true
  br label %and.94.exit

and.94.else:                                      ; preds = %entry
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %and.94.then
  %and.94.phi = phi i1 [ %nottmp3, %and.94.then ], [ %nottmp, %and.94.else ]
  br i1 %and.94.phi, label %and.95.then, label %and.95.else

and.95.then:                                      ; preds = %and.94.exit
  %var.load4 = load i64, ptr %var.r, align 8
  %cmptmp = icmp ne i64 %var.load4, 59
  br label %and.95.exit

and.95.else:                                      ; preds = %and.94.exit
  br label %and.95.exit

and.95.exit:                                      ; preds = %and.95.else, %and.95.then
  %and.95.phi = phi i1 [ %cmptmp, %and.95.then ], [ %and.94.phi, %and.95.else ]
  br i1 %and.95.phi, label %and.96.then, label %and.96.else

and.96.then:                                      ; preds = %and.95.exit
  %var.load5 = load i64, ptr %var.r, align 8
  %cmptmp6 = icmp ne i64 %var.load5, 34
  br label %and.96.exit

and.96.else:                                      ; preds = %and.95.exit
  br label %and.96.exit

and.96.exit:                                      ; preds = %and.96.else, %and.96.then
  %and.96.phi = phi i1 [ %cmptmp6, %and.96.then ], [ %and.95.phi, %and.96.else ]
  br i1 %and.96.phi, label %and.97.then, label %and.97.else

and.97.then:                                      ; preds = %and.96.exit
  %var.load7 = load i64, ptr %var.r, align 8
  %cmptmp8 = icmp ne i64 %var.load7, 0
  br label %and.97.exit

and.97.else:                                      ; preds = %and.96.exit
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %and.97.then
  %and.97.phi = phi i1 [ %cmptmp8, %and.97.then ], [ %and.96.phi, %and.97.else ]
  ret i1 %and.97.phi
}

define ptr @"lexer::scan_bare_path"(ptr %0, i64 %1) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.98 = alloca i64, align 8
  %loop.idx.98 = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.p, align 8
  store i64 0, ptr %loop.idx.98, align 8
  br label %loop.header.98

loop.header.98:                                   ; preds = %loop.latch.98, %entry
  %counter.load = load i64, ptr %loop.idx.98, align 8
  %loop.cond = icmp slt i64 %counter.load, 1000000
  br i1 %loop.cond, label %loop.body.98, label %loop.exit.nat.98

loop.body.98:                                     ; preds = %loop.header.98
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.98, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  store i64 %call.res, ptr %var.c, align 8
  %var.load2 = load i64, ptr %var.c, align 8
  %call.res3 = call i1 @"lexer::is_path_rune"(i64 %var.load2)
  %nottmp = xor i1 %call.res3, true
  br i1 %nottmp, label %or.99.then, label %or.99.else

loop.exit.nat.98:                                 ; preds = %loop.header.98
  br label %loop.exit.98

loop.latch.98:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.98, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.98, align 8
  br label %loop.header.98

loop.exit.98:                                     ; preds = %choice.then, %loop.exit.nat.98
  %var.load11 = load ptr, ptr %var.lx, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %str.tag = lshr i64 %s.read.len14, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

or.99.then:                                       ; preds = %loop.body.98
  br label %or.99.exit

or.99.else:                                       ; preds = %loop.body.98
  %var.load4 = load i64, ptr %var.c, align 8
  %cmptmp = icmp eq i64 %var.load4, 47
  br i1 %cmptmp, label %and.100.then, label %and.100.else

or.99.exit:                                       ; preds = %and.100.exit, %or.99.then
  %or.99.phi = phi i1 [ %nottmp, %or.99.then ], [ %and.100.phi, %and.100.exit ]
  br i1 %or.99.phi, label %choice.then, label %choice.exit

and.100.then:                                     ; preds = %or.99.else
  %var.load5 = load ptr, ptr %var.lx, align 8
  %call.res6 = call i64 @"lexer::pk_off"(ptr %var.load5, i64 1)
  %cmptmp7 = icmp eq i64 %call.res6, 47
  br label %and.100.exit

and.100.else:                                     ; preds = %or.99.else
  br label %and.100.exit

and.100.exit:                                     ; preds = %and.100.else, %and.100.then
  %and.100.phi = phi i1 [ %cmptmp7, %and.100.then ], [ %cmptmp, %and.100.else ]
  br label %or.99.exit

choice.then:                                      ; preds = %or.99.exit
  br label %loop.exit.98

choice.exit:                                      ; preds = %or.99.exit
  %var.load8 = load ptr, ptr %var.lx, align 8
  %var.load9 = load i64, ptr %var.c, align 8
  %call.res10 = call i64 @"lexer::adv"(ptr %var.load8, i64 %var.load9)
  br label %loop.latch.98

str_gen_check:                                    ; preds = %loop.exit.98
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen16 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen17 = load i64, ptr %arena.gen16, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen17
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.exit.98
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
  %var.rhs = alloca ptr, align 8
  %var.has_alias = alloca i1, align 1
  %var.first_seg = alloca ptr, align 8
  %var.word = alloca ptr, align 8
  %var.wstart = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._69 = alloca i64, align 8
  %var._i68 = alloca i64, align 8
  %loop.step.103 = alloca i64, align 8
  %loop.idx.103 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.102 = alloca i64, align 8
  %loop.idx.102 = alloca i64, align 8
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
  br i1 %cmptmp, label %and.101.then, label %and.101.else

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.101.then:                                     ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

and.101.else:                                     ; preds = %str_ok
  br label %and.101.exit

and.101.exit:                                     ; preds = %and.101.else, %str.eq.merge
  %and.101.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.101.else ]
  store i1 %and.101.phi, ptr %var.is_dash_dyn, align 1
  %var.load52 = load i1, ptr %var.is_dash_dyn, align 1
  br i1 %var.load52, label %choice.then, label %choice.else

str_gen_check15:                                  ; preds = %and.101.then
  %arena.gen18 = call ptr @dva_arena_current()
  %arena.gen19 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen18, i32 0, i32 4
  %arena.gen20 = load i64, ptr %arena.gen19, align 8
  %str.tag.match21 = icmp eq i64 %str.tag13, %arena.gen20
  br i1 %str.tag.match21, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %and.101.then
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
  %eq.rhs.len = load i64, ptr @str.37.struct, align 8
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
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data51, ptr %eq.rhs.data, i64 %eq.lhs.len31)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok45
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.101.exit

choice.then:                                      ; preds = %and.101.exit
  store i64 0, ptr %loop.idx.102, align 8
  br label %loop.header.102

choice.else:                                      ; preds = %and.101.exit
  %var.load56 = load ptr, ptr %var.lx, align 8
  %call.res57 = call i64 @"lexer::pk"(ptr %var.load56, i64 0)
  %cmptmp58 = icmp eq i64 %call.res57, 40
  br i1 %cmptmp58, label %choice.then59, label %choice.exit60

choice.exit:                                      ; preds = %choice.exit60, %loop.exit.102
  %var.load313 = load ptr, ptr %var.lx, align 8
  call void @"lexer::skip_hws"(ptr %var.load313, i64 0)
  %var.load314 = load ptr, ptr %var.lx, align 8
  %call.res315 = call i64 @"lexer::pk"(ptr %var.load314, i64 0)
  %cmptmp316 = icmp eq i64 %call.res315, 34
  br i1 %cmptmp316, label %choice.then317, label %choice.else318

loop.header.102:                                  ; preds = %loop.latch.102, %choice.then
  %counter.load = load i64, ptr %loop.idx.102, align 8
  %loop.cond = icmp slt i64 %counter.load, 8
  br i1 %loop.cond, label %loop.body.102, label %loop.exit.nat.102

loop.body.102:                                    ; preds = %loop.header.102
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.102, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load53 = load ptr, ptr %var.lx, align 8
  %var.load54 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load54, i64 0)
  %call.res55 = call i64 @"lexer::adv"(ptr %var.load53, i64 %call.res)
  br label %loop.latch.102

loop.exit.nat.102:                                ; preds = %loop.header.102
  br label %loop.exit.102

loop.latch.102:                                   ; preds = %loop.body.102
  %step.val = load i64, ptr %loop.step.102, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.102, align 8
  br label %loop.header.102

loop.exit.102:                                    ; preds = %loop.exit.nat.102
  store i1 true, ptr %"var.is_dyn'", align 1
  br label %choice.exit

choice.then59:                                    ; preds = %choice.else
  %var.load61 = load ptr, ptr %var.lx, align 8
  %var.load62 = load ptr, ptr %var.lx, align 8
  %call.res63 = call i64 @"lexer::pk"(ptr %var.load62, i64 0)
  %call.res64 = call i64 @"lexer::adv"(ptr %var.load61, i64 %call.res63)
  store i64 0, ptr %loop.idx.103, align 8
  br label %loop.header.103

choice.exit60:                                    ; preds = %loop.exit.103, %choice.else
  br label %choice.exit

loop.header.103:                                  ; preds = %loop.latch.103, %choice.then59
  %counter.load65 = load i64, ptr %loop.idx.103, align 8
  %loop.cond66 = icmp slt i64 %counter.load65, 100
  br i1 %loop.cond66, label %loop.body.103, label %loop.exit.nat.103

loop.body.103:                                    ; preds = %loop.header.103
  %loop.rel.i67 = sub i64 %counter.load65, 0
  store i64 1, ptr %loop.step.103, align 8
  store i64 %loop.rel.i67, ptr %var._i68, align 8
  store i64 %counter.load65, ptr %var._69, align 8
  %var.load70 = load ptr, ptr %var.lx, align 8
  %call.res71 = call i64 @"lexer::skip_ws"(ptr %var.load70, i64 0)
  %var.load72 = load ptr, ptr %var.lx, align 8
  %call.res73 = call i64 @"lexer::pk"(ptr %var.load72, i64 0)
  store i64 %call.res73, ptr %var.c, align 8
  %var.load74 = load i64, ptr %var.c, align 8
  %cmptmp75 = icmp eq i64 %var.load74, 41
  br i1 %cmptmp75, label %choice.then76, label %choice.exit77

loop.exit.nat.103:                                ; preds = %loop.header.103
  br label %loop.exit.103

loop.latch.103:                                   ; preds = %choice.exit306
  %step.val311 = load i64, ptr %loop.step.103, align 8
  %loop.next312 = add i64 %counter.load65, %step.val311
  store i64 %loop.next312, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.exit.103:                                    ; preds = %choice.then305, %choice.then85, %choice.then76, %loop.exit.nat.103
  br label %choice.exit60

choice.then76:                                    ; preds = %loop.body.103
  %var.load78 = load ptr, ptr %var.lx, align 8
  %var.load79 = load i64, ptr %var.c, align 8
  %call.res80 = call i64 @"lexer::adv"(ptr %var.load78, i64 %var.load79)
  br label %loop.exit.103

choice.exit77:                                    ; preds = %loop.body.103
  %var.load81 = load i64, ptr %var.c, align 8
  %cmptmp82 = icmp eq i64 %var.load81, 0
  br i1 %cmptmp82, label %or.104.then, label %or.104.else

or.104.then:                                      ; preds = %choice.exit77
  br label %or.104.exit

or.104.else:                                      ; preds = %choice.exit77
  %var.load83 = load i64, ptr %var.c, align 8
  %call.res84 = call i1 @"lexer::is_nl"(i64 %var.load83)
  br label %or.104.exit

or.104.exit:                                      ; preds = %or.104.else, %or.104.then
  %or.104.phi = phi i1 [ %cmptmp82, %or.104.then ], [ %call.res84, %or.104.else ]
  br i1 %or.104.phi, label %choice.then85, label %choice.exit86

choice.then85:                                    ; preds = %or.104.exit
  %var.load87 = load i64, ptr %var.line, align 8
  %var.load88 = load i64, ptr %var.col, align 8
  %call.res89 = call i64 @"lexer::fail"(i64 1015, i64 %var.load87, i64 %var.load88, ptr @str.38.struct)
  br label %loop.exit.103

choice.exit86:                                    ; preds = %or.104.exit
  %var.load90 = load ptr, ptr %var.lx, align 8
  %fld.gep91 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load90, i32 0, i32 1
  %fld.load92 = load i64, ptr %fld.gep91, align 8
  store i64 %fld.load92, ptr %var.wstart, align 8
  %var.load93 = load ptr, ptr %var.lx, align 8
  %call.res94 = call i64 @"lexer::scan_while"(ptr %var.load93, ptr @clo.const.59)
  %var.load95 = load ptr, ptr %var.lx, align 8
  %fld.gep96 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load95, i32 0, i32 0
  %fld.load97 = load ptr, ptr %fld.gep96, align 8
  %s.read.len98 = getelementptr inbounds { i64, ptr }, ptr %fld.load97, i32 0, i32 0
  %s.read.len99 = load i64, ptr %s.read.len98, align 8
  %s.read.len100 = and i64 %s.read.len99, 281474976710655
  %str.tag101 = lshr i64 %s.read.len99, 48
  %str.immortal102 = icmp eq i64 %str.tag101, 0
  br i1 %str.immortal102, label %str_ok104, label %str_gen_check103

str_gen_check103:                                 ; preds = %choice.exit86
  %arena.gen106 = call ptr @dva_arena_current()
  %arena.gen107 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen106, i32 0, i32 4
  %arena.gen108 = load i64, ptr %arena.gen107, align 8
  %str.tag.match109 = icmp eq i64 %str.tag101, %arena.gen108
  br i1 %str.tag.match109, label %str_ok104, label %str_stale105

str_ok104:                                        ; preds = %str_stale105, %str_gen_check103, %choice.exit86
  %s.read.data110 = getelementptr inbounds { i64, ptr }, ptr %fld.load97, i32 0, i32 1
  %s.read.data111 = load ptr, ptr %s.read.data110, align 8
  %var.load112 = load i64, ptr %var.wstart, align 8
  %var.load113 = load ptr, ptr %var.lx, align 8
  %fld.gep114 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load113, i32 0, i32 1
  %fld.load115 = load i64, ptr %fld.gep114, align 8
  %start.is_neg116 = icmp slt i64 %var.load112, 0
  %rel.start117 = add i64 %s.read.len100, %var.load112
  %norm.start118 = select i1 %start.is_neg116, i64 %rel.start117, i64 %var.load112
  %start.lt.0119 = icmp slt i64 %norm.start118, 0
  %c.start.0120 = select i1 %start.lt.0119, i64 0, i64 %norm.start118
  %start.gt.len121 = icmp sgt i64 %c.start.0120, %s.read.len100
  %final.start122 = select i1 %start.gt.len121, i64 %s.read.len100, i64 %c.start.0120
  %end.is_neg123 = icmp slt i64 %fld.load115, 0
  %rel.end124 = add i64 %s.read.len100, %fld.load115
  %norm.end125 = select i1 %end.is_neg123, i64 %rel.end124, i64 %fld.load115
  %end.lt.0126 = icmp slt i64 %norm.end125, 0
  %c.end.0127 = select i1 %end.lt.0126, i64 0, i64 %norm.end125
  %end.gt.len128 = icmp sgt i64 %c.end.0127, %s.read.len100
  %final.end129 = select i1 %end.gt.len128, i64 %s.read.len100, i64 %c.end.0127
  %view.empty130 = icmp sle i64 %final.end129, %final.start122
  %view.len.sub131 = sub i64 %final.end129, %final.start122
  %view.len132 = select i1 %view.empty130, i64 0, i64 %view.len.sub131
  %view.data133 = getelementptr i8, ptr %s.read.data111, i64 %final.start122
  %arena.cur134 = call ptr @dva_arena_current()
  %str.view135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 16)
  %str.build.len.gep136 = getelementptr inbounds { i64, ptr }, ptr %str.view135, i32 0, i32 0
  store i64 %view.len132, ptr %str.build.len.gep136, align 8
  %str.build.data.gep137 = getelementptr inbounds { i64, ptr }, ptr %str.view135, i32 0, i32 1
  store ptr %view.data133, ptr %str.build.data.gep137, align 8
  store ptr %str.view135, ptr %var.word, align 8
  %var.load138 = load ptr, ptr %var.word, align 8
  %eq.lhs.len140 = getelementptr inbounds { i64, ptr }, ptr %var.load138, i32 0, i32 0
  %eq.lhs.len141 = load i64, ptr %eq.lhs.len140, align 8
  %eq.lhs.len142 = and i64 %eq.lhs.len141, 281474976710655
  %str.tag143 = lshr i64 %eq.lhs.len141, 48
  %str.immortal144 = icmp eq i64 %str.tag143, 0
  br i1 %str.immortal144, label %str_ok146, label %str_gen_check145

str_stale105:                                     ; preds = %str_gen_check103
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok104

choice.exit139:                                   ; preds = %concat.tot.len278, %choice.case173, %choice.case
  %var.load289 = load ptr, ptr %var.lx, align 8
  %call.res290 = call i64 @"lexer::skip_ws"(ptr %var.load289, i64 0)
  %var.load291 = load ptr, ptr %var.lx, align 8
  %call.res292 = call i64 @"lexer::pk"(ptr %var.load291, i64 0)
  %cmptmp293 = icmp eq i64 %call.res292, 44
  br i1 %cmptmp293, label %choice.then294, label %choice.exit295

choice.case:                                      ; preds = %str.eq.merge166
  store i1 true, ptr %"var.is_dyn'", align 1
  br label %choice.exit139

choice.next:                                      ; preds = %str.eq.merge166
  %eq.lhs.len175 = getelementptr inbounds { i64, ptr }, ptr %var.load138, i32 0, i32 0
  %eq.lhs.len176 = load i64, ptr %eq.lhs.len175, align 8
  %eq.lhs.len177 = and i64 %eq.lhs.len176, 281474976710655
  %str.tag178 = lshr i64 %eq.lhs.len176, 48
  %str.immortal179 = icmp eq i64 %str.tag178, 0
  br i1 %str.immortal179, label %str_ok181, label %str_gen_check180

str_gen_check145:                                 ; preds = %str_ok104
  %arena.gen148 = call ptr @dva_arena_current()
  %arena.gen149 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen148, i32 0, i32 4
  %arena.gen150 = load i64, ptr %arena.gen149, align 8
  %str.tag.match151 = icmp eq i64 %str.tag143, %arena.gen150
  br i1 %str.tag.match151, label %str_ok146, label %str_stale147

str_ok146:                                        ; preds = %str_stale147, %str_gen_check145, %str_ok104
  %eq.rhs.len152 = load i64, ptr @str.39.struct, align 8
  %eq.rhs.len153 = and i64 %eq.rhs.len152, 281474976710655
  %str.tag154 = lshr i64 %eq.rhs.len152, 48
  %str.immortal155 = icmp eq i64 %str.tag154, 0
  br i1 %str.immortal155, label %str_ok157, label %str_gen_check156

str_stale147:                                     ; preds = %str_gen_check145
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok146

str_gen_check156:                                 ; preds = %str_ok146
  %arena.gen159 = call ptr @dva_arena_current()
  %arena.gen160 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen159, i32 0, i32 4
  %arena.gen161 = load i64, ptr %arena.gen160, align 8
  %str.tag.match162 = icmp eq i64 %str.tag154, %arena.gen161
  br i1 %str.tag.match162, label %str_ok157, label %str_stale158

str_ok157:                                        ; preds = %str_stale158, %str_gen_check156, %str_ok146
  %eq.len163 = icmp eq i64 %eq.lhs.len142, %eq.rhs.len153
  br i1 %eq.len163, label %str.eq.then164, label %str.eq.else165

str_stale158:                                     ; preds = %str_gen_check156
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok157

str.eq.then164:                                   ; preds = %str_ok157
  %eq.lhs.data167 = getelementptr inbounds { i64, ptr }, ptr %var.load138, i32 0, i32 1
  %eq.lhs.data168 = load ptr, ptr %eq.lhs.data167, align 8
  %eq.rhs.data169 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %eq.memcmp170 = call i32 @memcmp(ptr %eq.lhs.data168, ptr %eq.rhs.data169, i64 %eq.lhs.len142)
  %eq.cmp.zero171 = icmp eq i32 %eq.memcmp170, 0
  br label %str.eq.merge166

str.eq.else165:                                   ; preds = %str_ok157
  br label %str.eq.merge166

str.eq.merge166:                                  ; preds = %str.eq.else165, %str.eq.then164
  %str.eq.result172 = phi i1 [ %eq.cmp.zero171, %str.eq.then164 ], [ false, %str.eq.else165 ]
  br i1 %str.eq.result172, label %choice.case, label %choice.next

choice.case173:                                   ; preds = %str.eq.merge201
  store i1 true, ptr %"var.is_imp'", align 1
  br label %choice.exit139

choice.next174:                                   ; preds = %str.eq.merge201
  %var.load208 = load i64, ptr %var.line, align 8
  %var.load209 = load i64, ptr %var.col, align 8
  %var.load210 = load ptr, ptr %var.word, align 8
  %concat.lhs = load i64, ptr @str.41.struct, align 8
  %concat.lhs211 = and i64 %concat.lhs, 281474976710655
  %str.tag212 = lshr i64 %concat.lhs, 48
  %str.immortal213 = icmp eq i64 %str.tag212, 0
  br i1 %str.immortal213, label %str_ok215, label %str_gen_check214

str_gen_check180:                                 ; preds = %choice.next
  %arena.gen183 = call ptr @dva_arena_current()
  %arena.gen184 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen183, i32 0, i32 4
  %arena.gen185 = load i64, ptr %arena.gen184, align 8
  %str.tag.match186 = icmp eq i64 %str.tag178, %arena.gen185
  br i1 %str.tag.match186, label %str_ok181, label %str_stale182

str_ok181:                                        ; preds = %str_stale182, %str_gen_check180, %choice.next
  %eq.rhs.len187 = load i64, ptr @str.40.struct, align 8
  %eq.rhs.len188 = and i64 %eq.rhs.len187, 281474976710655
  %str.tag189 = lshr i64 %eq.rhs.len187, 48
  %str.immortal190 = icmp eq i64 %str.tag189, 0
  br i1 %str.immortal190, label %str_ok192, label %str_gen_check191

str_stale182:                                     ; preds = %str_gen_check180
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok181

str_gen_check191:                                 ; preds = %str_ok181
  %arena.gen194 = call ptr @dva_arena_current()
  %arena.gen195 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen194, i32 0, i32 4
  %arena.gen196 = load i64, ptr %arena.gen195, align 8
  %str.tag.match197 = icmp eq i64 %str.tag189, %arena.gen196
  br i1 %str.tag.match197, label %str_ok192, label %str_stale193

str_ok192:                                        ; preds = %str_stale193, %str_gen_check191, %str_ok181
  %eq.len198 = icmp eq i64 %eq.lhs.len177, %eq.rhs.len188
  br i1 %eq.len198, label %str.eq.then199, label %str.eq.else200

str_stale193:                                     ; preds = %str_gen_check191
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok192

str.eq.then199:                                   ; preds = %str_ok192
  %eq.lhs.data202 = getelementptr inbounds { i64, ptr }, ptr %var.load138, i32 0, i32 1
  %eq.lhs.data203 = load ptr, ptr %eq.lhs.data202, align 8
  %eq.rhs.data204 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.40.struct, i32 0, i32 1), align 8
  %eq.memcmp205 = call i32 @memcmp(ptr %eq.lhs.data203, ptr %eq.rhs.data204, i64 %eq.lhs.len177)
  %eq.cmp.zero206 = icmp eq i32 %eq.memcmp205, 0
  br label %str.eq.merge201

str.eq.else200:                                   ; preds = %str_ok192
  br label %str.eq.merge201

str.eq.merge201:                                  ; preds = %str.eq.else200, %str.eq.then199
  %str.eq.result207 = phi i1 [ %eq.cmp.zero206, %str.eq.then199 ], [ false, %str.eq.else200 ]
  br i1 %str.eq.result207, label %choice.case173, label %choice.next174

str_gen_check214:                                 ; preds = %choice.next174
  %arena.gen217 = call ptr @dva_arena_current()
  %arena.gen218 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen217, i32 0, i32 4
  %arena.gen219 = load i64, ptr %arena.gen218, align 8
  %str.tag.match220 = icmp eq i64 %str.tag212, %arena.gen219
  br i1 %str.tag.match220, label %str_ok215, label %str_stale216

str_ok215:                                        ; preds = %str_stale216, %str_gen_check214, %choice.next174
  %concat.lhs221 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load210, i32 0, i32 0
  %concat.rhs222 = load i64, ptr %concat.rhs, align 8
  %concat.rhs223 = and i64 %concat.rhs222, 281474976710655
  %str.tag224 = lshr i64 %concat.rhs222, 48
  %str.immortal225 = icmp eq i64 %str.tag224, 0
  br i1 %str.immortal225, label %str_ok227, label %str_gen_check226

str_stale216:                                     ; preds = %str_gen_check214
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok215

str_gen_check226:                                 ; preds = %str_ok215
  %arena.gen229 = call ptr @dva_arena_current()
  %arena.gen230 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen229, i32 0, i32 4
  %arena.gen231 = load i64, ptr %arena.gen230, align 8
  %str.tag.match232 = icmp eq i64 %str.tag224, %arena.gen231
  br i1 %str.tag.match232, label %str_ok227, label %str_stale228

str_ok227:                                        ; preds = %str_stale228, %str_gen_check226, %str_ok215
  %concat.rhs233 = getelementptr inbounds { i64, ptr }, ptr %var.load210, i32 0, i32 1
  %concat.rhs234 = load ptr, ptr %concat.rhs233, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs211, i64 %concat.rhs223)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len235

str_stale228:                                     ; preds = %str_gen_check226
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok227

concat.sum.len235:                                ; preds = %str_overflow_abort, %str_ok227
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum236 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf237 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf237, label %str_overflow_abort239, label %concat.tot.len238

str_overflow_abort:                               ; preds = %str_ok227
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len235

concat.tot.len238:                                ; preds = %str_overflow_abort239, %concat.sum.len235
  %arena.cur240 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 %sum236)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs221, i64 %concat.lhs211, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs211
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs234, i64 %concat.rhs223, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur241 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 16)
  %str.build.len.gep242 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep242, align 8
  %str.build.data.gep243 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep243, align 8
  %concat.lhs244 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs245 = load i64, ptr %concat.lhs244, align 8
  %concat.lhs246 = and i64 %concat.lhs245, 281474976710655
  %str.tag247 = lshr i64 %concat.lhs245, 48
  %str.immortal248 = icmp eq i64 %str.tag247, 0
  br i1 %str.immortal248, label %str_ok250, label %str_gen_check249

str_overflow_abort239:                            ; preds = %concat.sum.len235
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len238

str_gen_check249:                                 ; preds = %concat.tot.len238
  %arena.gen252 = call ptr @dva_arena_current()
  %arena.gen253 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen252, i32 0, i32 4
  %arena.gen254 = load i64, ptr %arena.gen253, align 8
  %str.tag.match255 = icmp eq i64 %str.tag247, %arena.gen254
  br i1 %str.tag.match255, label %str_ok250, label %str_stale251

str_ok250:                                        ; preds = %str_stale251, %str_gen_check249, %concat.tot.len238
  %concat.lhs256 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs257 = load ptr, ptr %concat.lhs256, align 8
  %concat.rhs258 = load i64, ptr @str.42.struct, align 8
  %concat.rhs259 = and i64 %concat.rhs258, 281474976710655
  %str.tag260 = lshr i64 %concat.rhs258, 48
  %str.immortal261 = icmp eq i64 %str.tag260, 0
  br i1 %str.immortal261, label %str_ok263, label %str_gen_check262

str_stale251:                                     ; preds = %str_gen_check249
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok250

str_gen_check262:                                 ; preds = %str_ok250
  %arena.gen265 = call ptr @dva_arena_current()
  %arena.gen266 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen265, i32 0, i32 4
  %arena.gen267 = load i64, ptr %arena.gen266, align 8
  %str.tag.match268 = icmp eq i64 %str.tag260, %arena.gen267
  br i1 %str.tag.match268, label %str_ok263, label %str_stale264

str_ok263:                                        ; preds = %str_stale264, %str_gen_check262, %str_ok250
  %concat.rhs269 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.42.struct, i32 0, i32 1), align 8
  %concat.sum.len270 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs246, i64 %concat.rhs259)
  %sum271 = extractvalue { i64, i1 } %concat.sum.len270, 0
  %ovf272 = extractvalue { i64, i1 } %concat.sum.len270, 1
  br i1 %ovf272, label %str_overflow_abort274, label %concat.sum.len273

str_stale264:                                     ; preds = %str_gen_check262
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok263

concat.sum.len273:                                ; preds = %str_overflow_abort274, %str_ok263
  %concat.tot.len275 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum271, i64 1)
  %sum276 = extractvalue { i64, i1 } %concat.tot.len275, 0
  %ovf277 = extractvalue { i64, i1 } %concat.tot.len275, 1
  br i1 %ovf277, label %str_overflow_abort279, label %concat.tot.len278

str_overflow_abort274:                            ; preds = %str_ok263
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len273

concat.tot.len278:                                ; preds = %str_overflow_abort279, %concat.sum.len273
  %arena.cur280 = call ptr @dva_arena_current()
  %concat.buf281 = call ptr @dva_arena_alloc(ptr %arena.cur280, i64 %sum276)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf281, ptr align 1 %concat.lhs257, i64 %concat.lhs246, i1 false)
  %concat.mid282 = getelementptr i8, ptr %concat.buf281, i64 %concat.lhs246
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid282, ptr align 1 %concat.rhs269, i64 %concat.rhs259, i1 false)
  %concat.nul283 = getelementptr i8, ptr %concat.buf281, i64 %sum271
  store i8 0, ptr %concat.nul283, align 1
  %arena.cur284 = call ptr @dva_arena_current()
  %concat.str285 = call ptr @dva_arena_alloc(ptr %arena.cur284, i64 16)
  %str.build.len.gep286 = getelementptr inbounds { i64, ptr }, ptr %concat.str285, i32 0, i32 0
  store i64 %sum271, ptr %str.build.len.gep286, align 8
  %str.build.data.gep287 = getelementptr inbounds { i64, ptr }, ptr %concat.str285, i32 0, i32 1
  store ptr %concat.buf281, ptr %str.build.data.gep287, align 8
  %call.res288 = call i64 @"lexer::fail"(i64 1015, i64 %var.load208, i64 %var.load209, ptr %concat.str285)
  br label %choice.exit139

str_overflow_abort279:                            ; preds = %concat.sum.len273
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len278

choice.then294:                                   ; preds = %choice.exit139
  %var.load296 = load ptr, ptr %var.lx, align 8
  %var.load297 = load ptr, ptr %var.lx, align 8
  %call.res298 = call i64 @"lexer::pk"(ptr %var.load297, i64 0)
  %call.res299 = call i64 @"lexer::adv"(ptr %var.load296, i64 %call.res298)
  br label %choice.exit295

choice.exit295:                                   ; preds = %choice.then294, %choice.exit139
  %var.load300 = load ptr, ptr %var.lx, align 8
  %call.res301 = call i64 @"lexer::skip_ws"(ptr %var.load300, i64 0)
  %var.load302 = load ptr, ptr %var.lx, align 8
  %call.res303 = call i64 @"lexer::pk"(ptr %var.load302, i64 0)
  %cmptmp304 = icmp eq i64 %call.res303, 41
  br i1 %cmptmp304, label %choice.then305, label %choice.exit306

choice.then305:                                   ; preds = %choice.exit295
  %var.load307 = load ptr, ptr %var.lx, align 8
  %var.load308 = load ptr, ptr %var.lx, align 8
  %call.res309 = call i64 @"lexer::pk"(ptr %var.load308, i64 0)
  %call.res310 = call i64 @"lexer::adv"(ptr %var.load307, i64 %call.res309)
  br label %loop.exit.103

choice.exit306:                                   ; preds = %choice.exit295
  br label %loop.latch.103

choice.then317:                                   ; preds = %choice.exit
  %var.load320 = load ptr, ptr %var.lx, align 8
  %var.load321 = load i64, ptr %var.line, align 8
  %var.load322 = load i64, ptr %var.col, align 8
  %call.res323 = call ptr @"lexer::scan_quoted_path"(ptr %var.load320, i64 %var.load321, i64 %var.load322)
  br label %choice.exit319

choice.else318:                                   ; preds = %choice.exit
  %var.load324 = load ptr, ptr %var.lx, align 8
  %var.load325 = load i64, ptr %var.line, align 8
  %call.res326 = call ptr @"lexer::scan_bare_path"(ptr %var.load324, i64 %var.load325)
  br label %choice.exit319

choice.exit319:                                   ; preds = %choice.else318, %choice.then317
  %choice.res = phi ptr [ %call.res323, %choice.then317 ], [ %call.res326, %choice.else318 ]
  store ptr %choice.res, ptr %var.first_seg, align 8
  %var.load327 = load ptr, ptr %var.first_seg, align 8
  %str.len.query328 = getelementptr inbounds { i64, ptr }, ptr %var.load327, i32 0, i32 0
  %str.len.query329 = load i64, ptr %str.len.query328, align 8
  %str.len.query330 = and i64 %str.len.query329, 281474976710655
  %str.tag331 = lshr i64 %str.len.query329, 48
  %str.immortal332 = icmp eq i64 %str.tag331, 0
  br i1 %str.immortal332, label %str_ok334, label %str_gen_check333

str_gen_check333:                                 ; preds = %choice.exit319
  %arena.gen336 = call ptr @dva_arena_current()
  %arena.gen337 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen336, i32 0, i32 4
  %arena.gen338 = load i64, ptr %arena.gen337, align 8
  %str.tag.match339 = icmp eq i64 %str.tag331, %arena.gen338
  br i1 %str.tag.match339, label %str_ok334, label %str_stale335

str_ok334:                                        ; preds = %str_stale335, %str_gen_check333, %choice.exit319
  %cmptmp340 = icmp eq i64 %str.len.query330, 0
  br i1 %cmptmp340, label %choice.then341, label %choice.exit342

str_stale335:                                     ; preds = %str_gen_check333
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok334

choice.then341:                                   ; preds = %str_ok334
  %var.load343 = load i64, ptr %var.line, align 8
  %var.load344 = load i64, ptr %var.col, align 8
  %call.res345 = call i64 @"lexer::fail"(i64 1015, i64 %var.load343, i64 %var.load344, ptr @str.43.struct)
  br label %choice.exit342

choice.exit342:                                   ; preds = %choice.then341, %str_ok334
  %var.load346 = load ptr, ptr %var.lx, align 8
  call void @"lexer::skip_hws"(ptr %var.load346, i64 0)
  %var.load347 = load ptr, ptr %var.lx, align 8
  %call.res348 = call i64 @"lexer::pk"(ptr %var.load347, i64 0)
  %cmptmp349 = icmp eq i64 %call.res348, 61
  br i1 %cmptmp349, label %and.106.then, label %and.106.else

and.106.then:                                     ; preds = %choice.exit342
  %var.load350 = load ptr, ptr %var.lx, align 8
  %call.res351 = call i64 @"lexer::pk_off"(ptr %var.load350, i64 1)
  %cmptmp352 = icmp ne i64 %call.res351, 61
  br label %and.106.exit

and.106.else:                                     ; preds = %choice.exit342
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %and.106.then
  %and.106.phi = phi i1 [ %cmptmp352, %and.106.then ], [ %cmptmp349, %and.106.else ]
  br i1 %and.106.phi, label %and.107.then, label %and.107.else

and.107.then:                                     ; preds = %and.106.exit
  %var.load353 = load ptr, ptr %var.lx, align 8
  %call.res354 = call i64 @"lexer::pk_off"(ptr %var.load353, i64 1)
  %cmptmp355 = icmp ne i64 %call.res354, 62
  br label %and.107.exit

and.107.else:                                     ; preds = %and.106.exit
  br label %and.107.exit

and.107.exit:                                     ; preds = %and.107.else, %and.107.then
  %and.107.phi = phi i1 [ %cmptmp355, %and.107.then ], [ %and.106.phi, %and.107.else ]
  store i1 %and.107.phi, ptr %var.has_alias, align 1
  %var.load356 = load i1, ptr %var.has_alias, align 1
  br i1 %var.load356, label %choice.then357, label %choice.else358

choice.then357:                                   ; preds = %and.107.exit
  %var.load360 = load ptr, ptr %var.lx, align 8
  %var.load361 = load ptr, ptr %var.lx, align 8
  %call.res362 = call i64 @"lexer::pk"(ptr %var.load361, i64 0)
  %call.res363 = call i64 @"lexer::adv"(ptr %var.load360, i64 %call.res362)
  %var.load364 = load ptr, ptr %var.lx, align 8
  call void @"lexer::skip_hws"(ptr %var.load364, i64 0)
  %var.load365 = load ptr, ptr %var.lx, align 8
  %call.res366 = call i64 @"lexer::pk"(ptr %var.load365, i64 0)
  %cmptmp367 = icmp eq i64 %call.res366, 34
  br i1 %cmptmp367, label %choice.then368, label %choice.else369

choice.else358:                                   ; preds = %and.107.exit
  %var.load490 = load ptr, ptr %var.first_seg, align 8
  br label %choice.exit359

choice.exit359:                                   ; preds = %choice.else358, %concat.tot.len480
  %choice.res491 = phi ptr [ %concat.str487, %concat.tot.len480 ], [ %var.load490, %choice.else358 ]
  store ptr %choice.res491, ptr %var.path, align 8
  %var.load492 = load i1, ptr %"var.is_dyn'", align 1
  br i1 %var.load492, label %and.108.then, label %and.108.else

choice.then368:                                   ; preds = %choice.then357
  %var.load371 = load ptr, ptr %var.lx, align 8
  %var.load372 = load i64, ptr %var.line, align 8
  %var.load373 = load i64, ptr %var.col, align 8
  %call.res374 = call ptr @"lexer::scan_quoted_path"(ptr %var.load371, i64 %var.load372, i64 %var.load373)
  br label %choice.exit370

choice.else369:                                   ; preds = %choice.then357
  %var.load375 = load ptr, ptr %var.lx, align 8
  %var.load376 = load i64, ptr %var.line, align 8
  %call.res377 = call ptr @"lexer::scan_bare_path"(ptr %var.load375, i64 %var.load376)
  br label %choice.exit370

choice.exit370:                                   ; preds = %choice.else369, %choice.then368
  %choice.res378 = phi ptr [ %call.res374, %choice.then368 ], [ %call.res377, %choice.else369 ]
  store ptr %choice.res378, ptr %var.rhs, align 8
  %var.load379 = load ptr, ptr %var.rhs, align 8
  %str.len.query380 = getelementptr inbounds { i64, ptr }, ptr %var.load379, i32 0, i32 0
  %str.len.query381 = load i64, ptr %str.len.query380, align 8
  %str.len.query382 = and i64 %str.len.query381, 281474976710655
  %str.tag383 = lshr i64 %str.len.query381, 48
  %str.immortal384 = icmp eq i64 %str.tag383, 0
  br i1 %str.immortal384, label %str_ok386, label %str_gen_check385

str_gen_check385:                                 ; preds = %choice.exit370
  %arena.gen388 = call ptr @dva_arena_current()
  %arena.gen389 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen388, i32 0, i32 4
  %arena.gen390 = load i64, ptr %arena.gen389, align 8
  %str.tag.match391 = icmp eq i64 %str.tag383, %arena.gen390
  br i1 %str.tag.match391, label %str_ok386, label %str_stale387

str_ok386:                                        ; preds = %str_stale387, %str_gen_check385, %choice.exit370
  %cmptmp392 = icmp eq i64 %str.len.query382, 0
  br i1 %cmptmp392, label %choice.then393, label %choice.exit394

str_stale387:                                     ; preds = %str_gen_check385
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok386

choice.then393:                                   ; preds = %str_ok386
  %var.load395 = load i64, ptr %var.line, align 8
  %var.load396 = load i64, ptr %var.col, align 8
  %call.res397 = call i64 @"lexer::fail"(i64 1015, i64 %var.load395, i64 %var.load396, ptr @str.44.struct)
  br label %choice.exit394

choice.exit394:                                   ; preds = %choice.then393, %str_ok386
  %var.load398 = load ptr, ptr %var.first_seg, align 8
  %concat.lhs399 = getelementptr inbounds { i64, ptr }, ptr %var.load398, i32 0, i32 0
  %concat.lhs400 = load i64, ptr %concat.lhs399, align 8
  %concat.lhs401 = and i64 %concat.lhs400, 281474976710655
  %str.tag402 = lshr i64 %concat.lhs400, 48
  %str.immortal403 = icmp eq i64 %str.tag402, 0
  br i1 %str.immortal403, label %str_ok405, label %str_gen_check404

str_gen_check404:                                 ; preds = %choice.exit394
  %arena.gen407 = call ptr @dva_arena_current()
  %arena.gen408 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen407, i32 0, i32 4
  %arena.gen409 = load i64, ptr %arena.gen408, align 8
  %str.tag.match410 = icmp eq i64 %str.tag402, %arena.gen409
  br i1 %str.tag.match410, label %str_ok405, label %str_stale406

str_ok405:                                        ; preds = %str_stale406, %str_gen_check404, %choice.exit394
  %concat.lhs411 = getelementptr inbounds { i64, ptr }, ptr %var.load398, i32 0, i32 1
  %concat.lhs412 = load ptr, ptr %concat.lhs411, align 8
  %concat.rhs413 = load i64, ptr @str.45.struct, align 8
  %concat.rhs414 = and i64 %concat.rhs413, 281474976710655
  %str.tag415 = lshr i64 %concat.rhs413, 48
  %str.immortal416 = icmp eq i64 %str.tag415, 0
  br i1 %str.immortal416, label %str_ok418, label %str_gen_check417

str_stale406:                                     ; preds = %str_gen_check404
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok405

str_gen_check417:                                 ; preds = %str_ok405
  %arena.gen420 = call ptr @dva_arena_current()
  %arena.gen421 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen420, i32 0, i32 4
  %arena.gen422 = load i64, ptr %arena.gen421, align 8
  %str.tag.match423 = icmp eq i64 %str.tag415, %arena.gen422
  br i1 %str.tag.match423, label %str_ok418, label %str_stale419

str_ok418:                                        ; preds = %str_stale419, %str_gen_check417, %str_ok405
  %concat.rhs424 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.45.struct, i32 0, i32 1), align 8
  %concat.sum.len425 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs401, i64 %concat.rhs414)
  %sum426 = extractvalue { i64, i1 } %concat.sum.len425, 0
  %ovf427 = extractvalue { i64, i1 } %concat.sum.len425, 1
  br i1 %ovf427, label %str_overflow_abort429, label %concat.sum.len428

str_stale419:                                     ; preds = %str_gen_check417
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok418

concat.sum.len428:                                ; preds = %str_overflow_abort429, %str_ok418
  %concat.tot.len430 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum426, i64 1)
  %sum431 = extractvalue { i64, i1 } %concat.tot.len430, 0
  %ovf432 = extractvalue { i64, i1 } %concat.tot.len430, 1
  br i1 %ovf432, label %str_overflow_abort434, label %concat.tot.len433

str_overflow_abort429:                            ; preds = %str_ok418
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len428

concat.tot.len433:                                ; preds = %str_overflow_abort434, %concat.sum.len428
  %arena.cur435 = call ptr @dva_arena_current()
  %concat.buf436 = call ptr @dva_arena_alloc(ptr %arena.cur435, i64 %sum431)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf436, ptr align 1 %concat.lhs412, i64 %concat.lhs401, i1 false)
  %concat.mid437 = getelementptr i8, ptr %concat.buf436, i64 %concat.lhs401
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid437, ptr align 1 %concat.rhs424, i64 %concat.rhs414, i1 false)
  %concat.nul438 = getelementptr i8, ptr %concat.buf436, i64 %sum426
  store i8 0, ptr %concat.nul438, align 1
  %arena.cur439 = call ptr @dva_arena_current()
  %concat.str440 = call ptr @dva_arena_alloc(ptr %arena.cur439, i64 16)
  %str.build.len.gep441 = getelementptr inbounds { i64, ptr }, ptr %concat.str440, i32 0, i32 0
  store i64 %sum426, ptr %str.build.len.gep441, align 8
  %str.build.data.gep442 = getelementptr inbounds { i64, ptr }, ptr %concat.str440, i32 0, i32 1
  store ptr %concat.buf436, ptr %str.build.data.gep442, align 8
  %var.load443 = load ptr, ptr %var.rhs, align 8
  %concat.lhs444 = getelementptr inbounds { i64, ptr }, ptr %concat.str440, i32 0, i32 0
  %concat.lhs445 = load i64, ptr %concat.lhs444, align 8
  %concat.lhs446 = and i64 %concat.lhs445, 281474976710655
  %str.tag447 = lshr i64 %concat.lhs445, 48
  %str.immortal448 = icmp eq i64 %str.tag447, 0
  br i1 %str.immortal448, label %str_ok450, label %str_gen_check449

str_overflow_abort434:                            ; preds = %concat.sum.len428
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len433

str_gen_check449:                                 ; preds = %concat.tot.len433
  %arena.gen452 = call ptr @dva_arena_current()
  %arena.gen453 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen452, i32 0, i32 4
  %arena.gen454 = load i64, ptr %arena.gen453, align 8
  %str.tag.match455 = icmp eq i64 %str.tag447, %arena.gen454
  br i1 %str.tag.match455, label %str_ok450, label %str_stale451

str_ok450:                                        ; preds = %str_stale451, %str_gen_check449, %concat.tot.len433
  %concat.lhs456 = getelementptr inbounds { i64, ptr }, ptr %concat.str440, i32 0, i32 1
  %concat.lhs457 = load ptr, ptr %concat.lhs456, align 8
  %concat.rhs458 = getelementptr inbounds { i64, ptr }, ptr %var.load443, i32 0, i32 0
  %concat.rhs459 = load i64, ptr %concat.rhs458, align 8
  %concat.rhs460 = and i64 %concat.rhs459, 281474976710655
  %str.tag461 = lshr i64 %concat.rhs459, 48
  %str.immortal462 = icmp eq i64 %str.tag461, 0
  br i1 %str.immortal462, label %str_ok464, label %str_gen_check463

str_stale451:                                     ; preds = %str_gen_check449
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok450

str_gen_check463:                                 ; preds = %str_ok450
  %arena.gen466 = call ptr @dva_arena_current()
  %arena.gen467 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen466, i32 0, i32 4
  %arena.gen468 = load i64, ptr %arena.gen467, align 8
  %str.tag.match469 = icmp eq i64 %str.tag461, %arena.gen468
  br i1 %str.tag.match469, label %str_ok464, label %str_stale465

str_ok464:                                        ; preds = %str_stale465, %str_gen_check463, %str_ok450
  %concat.rhs470 = getelementptr inbounds { i64, ptr }, ptr %var.load443, i32 0, i32 1
  %concat.rhs471 = load ptr, ptr %concat.rhs470, align 8
  %concat.sum.len472 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs446, i64 %concat.rhs460)
  %sum473 = extractvalue { i64, i1 } %concat.sum.len472, 0
  %ovf474 = extractvalue { i64, i1 } %concat.sum.len472, 1
  br i1 %ovf474, label %str_overflow_abort476, label %concat.sum.len475

str_stale465:                                     ; preds = %str_gen_check463
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok464

concat.sum.len475:                                ; preds = %str_overflow_abort476, %str_ok464
  %concat.tot.len477 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum473, i64 1)
  %sum478 = extractvalue { i64, i1 } %concat.tot.len477, 0
  %ovf479 = extractvalue { i64, i1 } %concat.tot.len477, 1
  br i1 %ovf479, label %str_overflow_abort481, label %concat.tot.len480

str_overflow_abort476:                            ; preds = %str_ok464
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len475

concat.tot.len480:                                ; preds = %str_overflow_abort481, %concat.sum.len475
  %arena.cur482 = call ptr @dva_arena_current()
  %concat.buf483 = call ptr @dva_arena_alloc(ptr %arena.cur482, i64 %sum478)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf483, ptr align 1 %concat.lhs457, i64 %concat.lhs446, i1 false)
  %concat.mid484 = getelementptr i8, ptr %concat.buf483, i64 %concat.lhs446
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid484, ptr align 1 %concat.rhs471, i64 %concat.rhs460, i1 false)
  %concat.nul485 = getelementptr i8, ptr %concat.buf483, i64 %sum473
  store i8 0, ptr %concat.nul485, align 1
  %arena.cur486 = call ptr @dva_arena_current()
  %concat.str487 = call ptr @dva_arena_alloc(ptr %arena.cur486, i64 16)
  %str.build.len.gep488 = getelementptr inbounds { i64, ptr }, ptr %concat.str487, i32 0, i32 0
  store i64 %sum473, ptr %str.build.len.gep488, align 8
  %str.build.data.gep489 = getelementptr inbounds { i64, ptr }, ptr %concat.str487, i32 0, i32 1
  store ptr %concat.buf483, ptr %str.build.data.gep489, align 8
  br label %choice.exit359

str_overflow_abort481:                            ; preds = %concat.sum.len475
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len480

and.108.then:                                     ; preds = %choice.exit359
  %var.load493 = load i1, ptr %"var.is_imp'", align 1
  br label %and.108.exit

and.108.else:                                     ; preds = %choice.exit359
  br label %and.108.exit

and.108.exit:                                     ; preds = %and.108.else, %and.108.then
  %and.108.phi = phi i1 [ %var.load493, %and.108.then ], [ %var.load492, %and.108.else ]
  br i1 %and.108.phi, label %choice.then494, label %choice.else495

choice.then494:                                   ; preds = %and.108.exit
  %arena.cur497 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur497, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 37, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit496

choice.else495:                                   ; preds = %and.108.exit
  %var.load498 = load i1, ptr %"var.is_dyn'", align 1
  br i1 %var.load498, label %choice.then499, label %choice.else500

choice.exit496:                                   ; preds = %choice.exit501, %choice.then494
  %choice.res520 = phi ptr [ %enum.alloc, %choice.then494 ], [ %choice.res519, %choice.exit501 ]
  store ptr %choice.res520, ptr %var.kind, align 8
  %var.load521 = load ptr, ptr %var.lx, align 8
  %var.load522 = load ptr, ptr %var.kind, align 8
  %var.load523 = load i64, ptr %var.hstart, align 8
  %var.load524 = load ptr, ptr %var.lx, align 8
  %fld.gep525 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load524, i32 0, i32 1
  %fld.load526 = load i64, ptr %fld.gep525, align 8
  %var.load527 = load i64, ptr %var.hstart, align 8
  %subtmp = sub i64 %fld.load526, %var.load527
  %var.load528 = load i64, ptr %var.line, align 8
  %var.load529 = load i64, ptr %var.col, align 8
  %var.load530 = load ptr, ptr %var.path, align 8
  %call.res531 = call ptr @"lexer::mktok"(ptr %var.load521, ptr %var.load522, i64 %var.load523, i64 %subtmp, i64 %var.load528, i64 %var.load529, ptr %var.load530)
  ret ptr %call.res531

choice.then499:                                   ; preds = %choice.else495
  %arena.cur502 = call ptr @dva_arena_current()
  %enum.alloc503 = call ptr @dva_arena_alloc(ptr %arena.cur502, i64 16)
  %tag.gep504 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc503, i32 0, i32 0
  store i64 34, ptr %tag.gep504, align 8
  %pay.gep505 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc503, i32 0, i32 1
  store ptr null, ptr %pay.gep505, align 8
  br label %choice.exit501

choice.else500:                                   ; preds = %choice.else495
  %var.load506 = load i1, ptr %"var.is_imp'", align 1
  br i1 %var.load506, label %choice.then507, label %choice.else508

choice.exit501:                                   ; preds = %choice.exit509, %choice.then499
  %choice.res519 = phi ptr [ %enum.alloc503, %choice.then499 ], [ %choice.res518, %choice.exit509 ]
  br label %choice.exit496

choice.then507:                                   ; preds = %choice.else500
  %arena.cur510 = call ptr @dva_arena_current()
  %enum.alloc511 = call ptr @dva_arena_alloc(ptr %arena.cur510, i64 16)
  %tag.gep512 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc511, i32 0, i32 0
  store i64 36, ptr %tag.gep512, align 8
  %pay.gep513 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc511, i32 0, i32 1
  store ptr null, ptr %pay.gep513, align 8
  br label %choice.exit509

choice.else508:                                   ; preds = %choice.else500
  %arena.cur514 = call ptr @dva_arena_current()
  %enum.alloc515 = call ptr @dva_arena_alloc(ptr %arena.cur514, i64 16)
  %tag.gep516 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc515, i32 0, i32 0
  store i64 19, ptr %tag.gep516, align 8
  %pay.gep517 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc515, i32 0, i32 1
  store ptr null, ptr %pay.gep517, align 8
  br label %choice.exit509

choice.exit509:                                   ; preds = %choice.else508, %choice.then507
  %choice.res518 = phi ptr [ %enum.alloc511, %choice.then507 ], [ %enum.alloc515, %choice.else508 ]
  br label %choice.exit501
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

define internal i1 @"$anon_fn.130"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_id_char"(i64 %var.load)
  ret i1 %call.res
}

define void @"lexer::skip_hws"(ptr %0, i64 %1) #1 {
entry:
  %var.is_hws = alloca i1, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.105 = alloca i64, align 8
  %loop.idx.105 = alloca i64, align 8
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  store i64 0, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.header.105:                                  ; preds = %loop.latch.105, %entry
  %counter.load = load i64, ptr %loop.idx.105, align 8
  br label %loop.body.105

loop.body.105:                                    ; preds = %loop.header.105
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.105, align 8
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

loop.exit.nat.105:                                ; No predecessors!
  br label %loop.exit.105

loop.latch.105:                                   ; preds = %choice.exit5
  %step.val = load i64, ptr %loop.step.105, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.exit.105:                                    ; preds = %choice.else, %loop.exit.nat.105
  ret void

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.is_hws, align 1
  %var.load4 = load i1, ptr %var.is_hws, align 1
  br i1 %var.load4, label %choice.then, label %choice.else

choice.case:                                      ; preds = %loop.body.105
  br label %choice.exit

choice.next:                                      ; preds = %loop.body.105
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
  br label %loop.exit.105

choice.exit5:                                     ; preds = %choice.then
  br label %loop.latch.105
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
  %concat.lhs = load i64, ptr @str.46.struct, align 8
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
  %concat.lhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.46.struct, i32 0, i32 1), align 8
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
  %concat.rhs40 = load i64, ptr @str.47.struct, align 8
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
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.47.struct, i32 0, i32 1), align 8
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
  br i1 %cmptmp, label %and.109.then, label %and.109.else

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.109.then:                                     ; preds = %str_ok
  %var.load9 = load ptr, ptr %var.lx, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load9, i32 0, i32 0
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load11, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %str.tag14 = lshr i64 %s.read.len12, 48
  %str.immortal15 = icmp eq i64 %str.tag14, 0
  br i1 %str.immortal15, label %str_ok17, label %str_gen_check16

and.109.else:                                     ; preds = %str_ok
  br label %and.109.exit

and.109.exit:                                     ; preds = %and.109.else, %str.eq.merge
  %and.109.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.109.else ]
  store i1 %and.109.phi, ptr %var.six, align 1
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

str_gen_check16:                                  ; preds = %and.109.then
  %arena.gen19 = call ptr @dva_arena_current()
  %arena.gen20 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen19, i32 0, i32 4
  %arena.gen21 = load i64, ptr %arena.gen20, align 8
  %str.tag.match22 = icmp eq i64 %str.tag14, %arena.gen21
  br i1 %str.tag.match22, label %str_ok17, label %str_stale18

str_ok17:                                         ; preds = %str_stale18, %str_gen_check16, %and.109.then
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
  %eq.rhs.len = load i64, ptr @str.48.struct, align 8
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
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.48.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data52, ptr %eq.rhs.data, i64 %eq.lhs.len32)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok46
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.109.exit

str_gen_check65:                                  ; preds = %and.109.exit
  %arena.gen68 = call ptr @dva_arena_current()
  %arena.gen69 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen68, i32 0, i32 4
  %arena.gen70 = load i64, ptr %arena.gen69, align 8
  %str.tag.match71 = icmp eq i64 %str.tag63, %arena.gen70
  br i1 %str.tag.match71, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %and.109.exit
  %cmptmp72 = icmp sle i64 %addtmp56, %str.len.query62
  br i1 %cmptmp72, label %and.110.then, label %and.110.else

str_stale67:                                      ; preds = %str_gen_check65
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok66

and.110.then:                                     ; preds = %str_ok66
  %var.load73 = load ptr, ptr %var.lx, align 8
  %fld.gep74 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load73, i32 0, i32 0
  %fld.load75 = load ptr, ptr %fld.gep74, align 8
  %s.read.len76 = getelementptr inbounds { i64, ptr }, ptr %fld.load75, i32 0, i32 0
  %s.read.len77 = load i64, ptr %s.read.len76, align 8
  %s.read.len78 = and i64 %s.read.len77, 281474976710655
  %str.tag79 = lshr i64 %s.read.len77, 48
  %str.immortal80 = icmp eq i64 %str.tag79, 0
  br i1 %str.immortal80, label %str_ok82, label %str_gen_check81

and.110.else:                                     ; preds = %str_ok66
  br label %and.110.exit

and.110.exit:                                     ; preds = %and.110.else, %str.eq.merge145
  %and.110.phi = phi i1 [ %str.eq.result151, %str.eq.merge145 ], [ %cmptmp72, %and.110.else ]
  store i1 %and.110.phi, ptr %var.sfp, align 1
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

str_gen_check81:                                  ; preds = %and.110.then
  %arena.gen84 = call ptr @dva_arena_current()
  %arena.gen85 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen84, i32 0, i32 4
  %arena.gen86 = load i64, ptr %arena.gen85, align 8
  %str.tag.match87 = icmp eq i64 %str.tag79, %arena.gen86
  br i1 %str.tag.match87, label %str_ok82, label %str_stale83

str_ok82:                                         ; preds = %str_stale83, %str_gen_check81, %and.110.then
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
  %eq.rhs.len131 = load i64, ptr @str.49.struct, align 8
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
  %eq.rhs.data148 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.49.struct, i32 0, i32 1), align 8
  %eq.memcmp149 = call i32 @memcmp(ptr %eq.lhs.data147, ptr %eq.rhs.data148, i64 %eq.lhs.len121)
  %eq.cmp.zero150 = icmp eq i32 %eq.memcmp149, 0
  br label %str.eq.merge145

str.eq.else144:                                   ; preds = %str_ok136
  br label %str.eq.merge145

str.eq.merge145:                                  ; preds = %str.eq.else144, %str.eq.then143
  %str.eq.result151 = phi i1 [ %eq.cmp.zero150, %str.eq.then143 ], [ false, %str.eq.else144 ]
  br label %and.110.exit

str_gen_check164:                                 ; preds = %and.110.exit
  %arena.gen167 = call ptr @dva_arena_current()
  %arena.gen168 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen167, i32 0, i32 4
  %arena.gen169 = load i64, ptr %arena.gen168, align 8
  %str.tag.match170 = icmp eq i64 %str.tag162, %arena.gen169
  br i1 %str.tag.match170, label %str_ok165, label %str_stale166

str_ok165:                                        ; preds = %str_stale166, %str_gen_check164, %and.110.exit
  %cmptmp171 = icmp sle i64 %addtmp155, %str.len.query161
  br i1 %cmptmp171, label %and.111.then, label %and.111.else

str_stale166:                                     ; preds = %str_gen_check164
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok165

and.111.then:                                     ; preds = %str_ok165
  %var.load172 = load ptr, ptr %var.lx, align 8
  %fld.gep173 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load172, i32 0, i32 0
  %fld.load174 = load ptr, ptr %fld.gep173, align 8
  %s.read.len175 = getelementptr inbounds { i64, ptr }, ptr %fld.load174, i32 0, i32 0
  %s.read.len176 = load i64, ptr %s.read.len175, align 8
  %s.read.len177 = and i64 %s.read.len176, 281474976710655
  %str.tag178 = lshr i64 %s.read.len176, 48
  %str.immortal179 = icmp eq i64 %str.tag178, 0
  br i1 %str.immortal179, label %str_ok181, label %str_gen_check180

and.111.else:                                     ; preds = %str_ok165
  br label %and.111.exit

and.111.exit:                                     ; preds = %and.111.else, %str.eq.merge244
  %and.111.phi = phi i1 [ %str.eq.result250, %str.eq.merge244 ], [ %cmptmp171, %and.111.else ]
  store i1 %and.111.phi, ptr %var.ssw, align 1
  %var.load251 = load i1, ptr %var.six, align 1
  br i1 %var.load251, label %or.112.then, label %or.112.else

str_gen_check180:                                 ; preds = %and.111.then
  %arena.gen183 = call ptr @dva_arena_current()
  %arena.gen184 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen183, i32 0, i32 4
  %arena.gen185 = load i64, ptr %arena.gen184, align 8
  %str.tag.match186 = icmp eq i64 %str.tag178, %arena.gen185
  br i1 %str.tag.match186, label %str_ok181, label %str_stale182

str_ok181:                                        ; preds = %str_stale182, %str_gen_check180, %and.111.then
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
  %eq.rhs.len230 = load i64, ptr @str.50.struct, align 8
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
  %eq.rhs.data247 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.50.struct, i32 0, i32 1), align 8
  %eq.memcmp248 = call i32 @memcmp(ptr %eq.lhs.data246, ptr %eq.rhs.data247, i64 %eq.lhs.len220)
  %eq.cmp.zero249 = icmp eq i32 %eq.memcmp248, 0
  br label %str.eq.merge244

str.eq.else243:                                   ; preds = %str_ok235
  br label %str.eq.merge244

str.eq.merge244:                                  ; preds = %str.eq.else243, %str.eq.then242
  %str.eq.result250 = phi i1 [ %eq.cmp.zero249, %str.eq.then242 ], [ false, %str.eq.else243 ]
  br label %and.111.exit

or.112.then:                                      ; preds = %and.111.exit
  br label %or.112.exit

or.112.else:                                      ; preds = %and.111.exit
  %var.load252 = load i1, ptr %var.sfp, align 1
  br label %or.112.exit

or.112.exit:                                      ; preds = %or.112.else, %or.112.then
  %or.112.phi = phi i1 [ %var.load251, %or.112.then ], [ %var.load252, %or.112.else ]
  br i1 %or.112.phi, label %or.113.then, label %or.113.else

or.113.then:                                      ; preds = %or.112.exit
  br label %or.113.exit

or.113.else:                                      ; preds = %or.112.exit
  %var.load253 = load i1, ptr %var.ssw, align 1
  br label %or.113.exit

or.113.exit:                                      ; preds = %or.113.else, %or.113.then
  %or.113.phi = phi i1 [ %or.112.phi, %or.113.then ], [ %var.load253, %or.113.else ]
  br i1 %or.113.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.113.exit
  %var.load254 = load ptr, ptr %var.lx, align 8
  %var.load255 = load i64, ptr %var.hstart, align 8
  %var.load256 = load i64, ptr %var.line, align 8
  %var.load257 = load i64, ptr %var.col, align 8
  %var.load258 = load i1, ptr %var.six, align 1
  %var.load259 = load i1, ptr %var.sfp, align 1
  %call.res260 = call ptr @"lexer::scan_pragma_body"(ptr %var.load254, i64 %var.load255, i64 %var.load256, i64 %var.load257, i1 %var.load258, i1 %var.load259)
  br label %choice.exit

choice.else:                                      ; preds = %or.113.exit
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
  br i1 %var.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.lx, align 8
  %var.load2 = load i64, ptr %var.hstart, align 8
  %var.load3 = load i64, ptr %var.line, align 8
  %var.load4 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"lexer::scan_pragma_number"(ptr %var.load1, i64 %var.load2, i64 %var.load3, i64 %var.load4)
  ret ptr %call.res

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load5 = load i1, ptr %var.is_fp, align 1
  br i1 %var.load5, label %choice.then6, label %choice.exit7

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then6:                                     ; preds = %choice.exit
  %var.load8 = load ptr, ptr %var.lx, align 8
  %var.load9 = load i64, ptr %var.hstart, align 8
  %var.load10 = load i64, ptr %var.line, align 8
  %var.load11 = load i64, ptr %var.col, align 8
  %call.res12 = call ptr @"lexer::scan_pragma_fp"(ptr %var.load8, i64 %var.load9, i64 %var.load10, i64 %var.load11)
  ret ptr %call.res12

choice.exit7:                                     ; preds = %ret.dead13, %choice.exit
  %var.load14 = load ptr, ptr %var.lx, align 8
  %var.load15 = load i64, ptr %var.hstart, align 8
  %var.load16 = load i64, ptr %var.line, align 8
  %var.load17 = load i64, ptr %var.col, align 8
  %call.res18 = call ptr @"lexer::scan_pragma_swizzle"(ptr %var.load14, i64 %var.load15, i64 %var.load16, i64 %var.load17)
  ret ptr %call.res18

ret.dead13:                                       ; No predecessors!
  br label %choice.exit7
}

define ptr @"lexer::scan_pragma_number"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.suffix = alloca ptr, align 8
  %var.word = alloca ptr, align 8
  %var.tstart = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca i64, align 8
  %loop.step.114 = alloca i64, align 8
  %loop.idx.114 = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.hstart, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  store i64 0, ptr %loop.idx.114, align 8
  br label %loop.header.114

loop.header.114:                                  ; preds = %loop.latch.114, %entry
  %counter.load = load i64, ptr %loop.idx.114, align 8
  %loop.cond = icmp slt i64 %counter.load, 6
  br i1 %loop.cond, label %loop.body.114, label %loop.exit.nat.114

loop.body.114:                                    ; preds = %loop.header.114
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.114, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  br label %loop.latch.114

loop.exit.nat.114:                                ; preds = %loop.header.114
  br label %loop.exit.114

loop.latch.114:                                   ; preds = %loop.body.114
  %step.val = load i64, ptr %loop.step.114, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.114, align 8
  br label %loop.header.114

loop.exit.114:                                    ; preds = %loop.exit.nat.114
  %var.load3 = load ptr, ptr %var.lx, align 8
  %call.res4 = call i64 @"lexer::skip_ws"(ptr %var.load3, i64 0)
  %var.load5 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.tstart, align 8
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

str_gen_check:                                    ; preds = %loop.exit.114
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen14
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.exit.114
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
  %choice.res = phi ptr [ @str.0.struct, %choice.case ], [ @str.9.struct, %choice.case43 ], [ @str.10.struct, %choice.case78 ], [ @str.11.struct, %choice.case113 ], [ @str.12.struct, %choice.case148 ], [ @str.13.struct, %choice.case183 ], [ @str.14.struct, %choice.case218 ], [ @str.15.struct, %choice.case253 ], [ @str.16.struct, %choice.case288 ], [ %call.res326, %choice.next289 ]
  store ptr %choice.res, ptr %var.suffix, align 8
  %var.load327 = load ptr, ptr %var.lx, align 8
  %var.load328 = load ptr, ptr %var.suffix, align 8
  %fld.gep329 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load327, i32 0, i32 11
  store ptr %var.load328, ptr %fld.gep329, align 8
  %var.load330 = load ptr, ptr %var.lx, align 8
  %call.res331 = call i64 @"lexer::scan_while"(ptr %var.load330, ptr @clo.const.64)
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
  %call.res341 = call ptr @"lexer::mktok"(ptr %var.load332, ptr %enum.alloc, i64 %var.load334, i64 %subtmp, i64 %var.load339, i64 %var.load340, ptr @str.52.struct)
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
  %eq.rhs.len = load i64, ptr @str.51.struct, align 8
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
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.51.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len57 = load i64, ptr @str.9.struct, align 8
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
  %eq.rhs.data74 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len92 = load i64, ptr @str.10.struct, align 8
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
  %eq.rhs.data109 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len127 = load i64, ptr @str.11.struct, align 8
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
  %eq.rhs.data144 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len162 = load i64, ptr @str.12.struct, align 8
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
  %eq.rhs.data179 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len197 = load i64, ptr @str.13.struct, align 8
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
  %eq.rhs.data214 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len232 = load i64, ptr @str.14.struct, align 8
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
  %eq.rhs.data249 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len267 = load i64, ptr @str.15.struct, align 8
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
  %eq.rhs.data284 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len302 = load i64, ptr @str.16.struct, align 8
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
  %eq.rhs.data319 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %eq.memcmp320 = call i32 @memcmp(ptr %eq.lhs.data318, ptr %eq.rhs.data319, i64 %eq.lhs.len292)
  %eq.cmp.zero321 = icmp eq i32 %eq.memcmp320, 0
  br label %str.eq.merge316

str.eq.else315:                                   ; preds = %str_ok307
  br label %str.eq.merge316

str.eq.merge316:                                  ; preds = %str.eq.else315, %str.eq.then314
  %str.eq.result322 = phi i1 [ %eq.cmp.zero321, %str.eq.then314 ], [ false, %str.eq.else315 ]
  br i1 %str.eq.result322, label %choice.case288, label %choice.next289
}

define internal i1 @"$anon_fn.136"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %call.res = call i1 @"lexer::is_ws"(i64 %var.load)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define internal i1 @"$anon_fn.137"(i64 %0) #1 {
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
  %loop.step.115 = alloca i64, align 8
  %loop.idx.115 = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.hstart, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  store i64 0, ptr %loop.idx.115, align 8
  br label %loop.header.115

loop.header.115:                                  ; preds = %loop.latch.115, %entry
  %counter.load = load i64, ptr %loop.idx.115, align 8
  %loop.cond = icmp slt i64 %counter.load, 6
  br i1 %loop.cond, label %loop.body.115, label %loop.exit.nat.115

loop.body.115:                                    ; preds = %loop.header.115
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.115, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  br label %loop.latch.115

loop.exit.nat.115:                                ; preds = %loop.header.115
  br label %loop.exit.115

loop.latch.115:                                   ; preds = %loop.body.115
  %step.val = load i64, ptr %loop.step.115, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.115, align 8
  br label %loop.header.115

loop.exit.115:                                    ; preds = %loop.exit.nat.115
  %var.load3 = load ptr, ptr %var.lx, align 8
  %call.res4 = call i64 @"lexer::skip_ws"(ptr %var.load3, i64 0)
  %var.load5 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.fstart, align 8
  %var.load6 = load ptr, ptr %var.lx, align 8
  %call.res7 = call i64 @"lexer::scan_while"(ptr %var.load6, ptr @clo.const.66)
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag = lshr i64 %s.read.len11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %loop.exit.115
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen14
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.exit.115
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
  %call.res82 = call i64 @"lexer::scan_while"(ptr %var.load81, ptr @clo.const.68)
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
  %eq.rhs.len = load i64, ptr @str.53.struct, align 8
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
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.53.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len55 = load i64, ptr @str.54.struct, align 8
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
  %eq.rhs.data72 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.54.struct, i32 0, i32 1), align 8
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

define internal i1 @"$anon_fn.139"(i64 %0) #1 {
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
  %concat.lhs = load i64, ptr @str.55.struct, align 8
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
  %concat.lhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.55.struct, i32 0, i32 1), align 8
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
  %concat.rhs40 = load i64, ptr @str.56.struct, align 8
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
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.56.struct, i32 0, i32 1), align 8
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

define internal i1 @"$anon_fn.141"(i64 %0) #1 {
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
  %loop.step.116 = alloca i64, align 8
  %loop.idx.116 = alloca i64, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.hstart = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.hstart, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  store i64 0, ptr %loop.idx.116, align 8
  br label %loop.header.116

loop.header.116:                                  ; preds = %loop.latch.116, %entry
  %counter.load = load i64, ptr %loop.idx.116, align 8
  %loop.cond = icmp slt i64 %counter.load, 7
  br i1 %loop.cond, label %loop.body.116, label %loop.exit.nat.116

loop.body.116:                                    ; preds = %loop.header.116
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.116, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::pk"(ptr %var.load1, i64 0)
  %call.res2 = call i64 @"lexer::adv"(ptr %var.load, i64 %call.res)
  br label %loop.latch.116

loop.exit.nat.116:                                ; preds = %loop.header.116
  br label %loop.exit.116

loop.latch.116:                                   ; preds = %loop.body.116
  %step.val = load i64, ptr %loop.step.116, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.116, align 8
  br label %loop.header.116

loop.exit.116:                                    ; preds = %loop.exit.nat.116
  %var.load3 = load ptr, ptr %var.lx, align 8
  %call.res4 = call i64 @"lexer::skip_ws"(ptr %var.load3, i64 0)
  %var.load5 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.sstart, align 8
  %var.load6 = load ptr, ptr %var.lx, align 8
  %call.res7 = call i64 @"lexer::scan_while"(ptr %var.load6, ptr @clo.const.70)
  %var.load8 = load ptr, ptr %var.lx, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag = lshr i64 %s.read.len11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %loop.exit.116
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen13 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen14 = load i64, ptr %arena.gen13, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen14
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.exit.116
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
  %call.res150 = call i64 @"lexer::scan_while"(ptr %var.load149, ptr @clo.const.72)
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
  %eq.rhs.len = load i64, ptr @str.53.struct, align 8
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
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.53.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len55 = load i64, ptr @str.57.struct, align 8
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
  %eq.rhs.data72 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.57.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len88 = load i64, ptr @str.58.struct, align 8
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
  %eq.rhs.data105 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.58.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len122 = load i64, ptr @str.54.struct, align 8
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
  %eq.rhs.data139 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.54.struct, i32 0, i32 1), align 8
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

define internal i1 @"$anon_fn.143"(i64 %0) #1 {
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
  %concat.lhs = load i64, ptr @str.59.struct, align 8
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
  %concat.lhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.59.struct, i32 0, i32 1), align 8
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
  %concat.rhs40 = load i64, ptr @str.60.struct, align 8
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
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.60.struct, i32 0, i32 1), align 8
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
  ret ptr @str.54.struct

str_overflow_abort61:                             ; preds = %concat.sum.len55
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len60
}

define internal i1 @"$anon_fn.145"(i64 %0) #1 {
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
  %call.res = call i64 @"lexer::fail"(i64 1013, i64 %var.load, i64 %var.load1, ptr @str.61.struct)
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
  %call.res6 = call ptr @"lexer::mktok"(ptr %var.load2, ptr %enum.alloc, i64 %var.load3, i64 0, i64 %var.load4, i64 %var.load5, ptr @str.52.struct)
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
  %eq.rhs.len = load i64, ptr @str.62.struct, align 8
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
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.62.struct, i32 0, i32 1), align 8
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
  %call.res = call ptr @"lexer::mktok"(ptr %var.load16, ptr %enum.alloc, i64 %var.load17, i64 %addtmp, i64 %var.load30, i64 %var.load31, ptr @str.63.struct)
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
  %eq.rhs.len46 = load i64, ptr @str.64.struct, align 8
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
  %eq.rhs.data63 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.64.struct, i32 0, i32 1), align 8
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
  %call.res89 = call ptr @"lexer::mktok"(ptr %var.load67, ptr %enum.alloc69, i64 %var.load72, i64 %addtmp86, i64 %var.load87, i64 %var.load88, ptr @str.65.struct)
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
  %eq.rhs.len104 = load i64, ptr @str.66.struct, align 8
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
  %eq.rhs.data121 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.66.struct, i32 0, i32 1), align 8
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
  %call.res147 = call ptr @"lexer::mktok"(ptr %var.load125, ptr %enum.alloc127, i64 %var.load130, i64 %addtmp144, i64 %var.load145, i64 %var.load146, ptr @str.67.struct)
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
  %eq.rhs.len162 = load i64, ptr @str.68.struct, align 8
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
  %eq.rhs.data179 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.68.struct, i32 0, i32 1), align 8
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
  %call.res205 = call ptr @"lexer::mktok"(ptr %var.load183, ptr %enum.alloc185, i64 %var.load188, i64 %addtmp202, i64 %var.load203, i64 %var.load204, ptr @str.69.struct)
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
  %eq.rhs.len220 = load i64, ptr @str.70.struct, align 8
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
  %eq.rhs.data237 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len253 = load i64, ptr @str.71.struct, align 8
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
  %eq.rhs.data270 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.71.struct, i32 0, i32 1), align 8
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
  %concat.lhs = load i64, ptr @str.72.struct, align 8
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
  %concat.lhs307 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.72.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len343 = load i64, ptr @str.73.struct, align 8
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
  %eq.rhs.data360 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.73.struct, i32 0, i32 1), align 8
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
  %call.res386 = call ptr @"lexer::mktok"(ptr %var.load364, ptr %enum.alloc366, i64 %var.load369, i64 %addtmp383, i64 %var.load384, i64 %var.load385, ptr @str.74.struct)
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
  %eq.rhs.len401 = load i64, ptr @str.75.struct, align 8
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
  %eq.rhs.data418 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.75.struct, i32 0, i32 1), align 8
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
  %call.res444 = call ptr @"lexer::mktok"(ptr %var.load422, ptr %enum.alloc424, i64 %var.load427, i64 %addtmp441, i64 %var.load442, i64 %var.load443, ptr @str.76.struct)
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
  %eq.rhs.len459 = load i64, ptr @str.77.struct, align 8
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
  %eq.rhs.data476 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.77.struct, i32 0, i32 1), align 8
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
  %call.res502 = call ptr @"lexer::mktok"(ptr %var.load480, ptr %enum.alloc482, i64 %var.load485, i64 %addtmp499, i64 %var.load500, i64 %var.load501, ptr @str.78.struct)
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
  %eq.rhs.len517 = load i64, ptr @str.79.struct, align 8
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
  %eq.rhs.data534 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.79.struct, i32 0, i32 1), align 8
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
  %call.res560 = call ptr @"lexer::mktok"(ptr %var.load538, ptr %enum.alloc540, i64 %var.load543, i64 %addtmp557, i64 %var.load558, i64 %var.load559, ptr @str.80.struct)
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
  %eq.rhs.len575 = load i64, ptr @str.81.struct, align 8
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
  %eq.rhs.data592 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.81.struct, i32 0, i32 1), align 8
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
  %call.res618 = call ptr @"lexer::mktok"(ptr %var.load596, ptr %enum.alloc598, i64 %var.load601, i64 %addtmp615, i64 %var.load616, i64 %var.load617, ptr @str.82.struct)
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
  %eq.rhs.len633 = load i64, ptr @str.83.struct, align 8
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
  %eq.rhs.data650 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.83.struct, i32 0, i32 1), align 8
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
  %call.res676 = call ptr @"lexer::mktok"(ptr %var.load654, ptr %enum.alloc656, i64 %var.load659, i64 %addtmp673, i64 %var.load674, i64 %var.load675, ptr @str.84.struct)
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
  %eq.rhs.len691 = load i64, ptr @str.85.struct, align 8
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
  %eq.rhs.data708 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.85.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len731 = load i64, ptr @str.86.struct, align 8
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
  %eq.rhs.data748 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.86.struct, i32 0, i32 1), align 8
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
  %concat.lhs780 = load i64, ptr @str.72.struct, align 8
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
  %concat.lhs791 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.72.struct, i32 0, i32 1), align 8
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
  %call.res11 = call ptr @"lexer::mktok"(ptr %var.load7, ptr %enum.alloc, i64 %subtmp, i64 2, i64 %var.load9, i64 %var.load10, ptr @str.87.struct)
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
  %call.res10 = call ptr @"lexer::mktok"(ptr %var.load6, ptr %enum.alloc, i64 %fld.load, i64 1, i64 %var.load8, i64 %var.load9, ptr @str.72.struct)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res5, %choice.then ], [ %call.res10, %choice.else ]
  ret ptr %choice.res
}

declare i1 @"unicode::is_alpha"(i64) #1

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
  store ptr @str.88.struct, ptr %rec.fld12, align 8
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
  store i64 1108, ptr %err.line.gep, align 8
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
  store i64 1108, ptr %err.line.gep11, align 8
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
  br i1 %cmptmp, label %choice.then52, label %choice.exit53

choice.then52:                                    ; preds = %choice.exit
  %var.load54 = load ptr, ptr %var.lx, align 8
  %arena.cur55 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 24)
  %arena.cur56 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %fld.gep57 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load54, i32 0, i32 8
  store ptr %a.new, ptr %fld.gep57, align 8
  %var.load58 = load ptr, ptr %var.lx, align 8
  %fld.gep59 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load58, i32 0, i32 9
  store i64 0, ptr %fld.gep59, align 8
  br label %choice.exit53

choice.exit53:                                    ; preds = %choice.then52, %choice.exit
  %var.load60 = load ptr, ptr %var.t, align 8
  ret ptr %var.load60
}

define void @"lexer::count_indent"(ptr %0, i64 %1) #1 {
entry:
  %var.depth = alloca i64, align 8
  %var.done = alloca i1, align 1
  %var.is_tab = alloca i1, align 1
  %var.is_sp = alloca i1, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.117 = alloca i64, align 8
  %loop.idx.117 = alloca i64, align 8
  %"var.tabs'" = alloca i64, align 8
  %"var.sp'" = alloca i64, align 8
  %var.q = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.q, align 8
  store i64 0, ptr %"var.sp'", align 8
  store i64 0, ptr %"var.tabs'", align 8
  store i64 0, ptr %loop.idx.117, align 8
  br label %loop.header.117

loop.header.117:                                  ; preds = %loop.latch.117, %entry
  %counter.load = load i64, ptr %loop.idx.117, align 8
  br label %loop.body.117

loop.body.117:                                    ; preds = %loop.header.117
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.117, align 8
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
  br i1 %var.load4, label %or.118.then, label %or.118.else

loop.exit.nat.117:                                ; No predecessors!
  br label %loop.exit.117

loop.latch.117:                                   ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.117, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.117, align 8
  br label %loop.header.117

loop.exit.117:                                    ; preds = %choice.then, %loop.exit.nat.117
  %var.load22 = load i64, ptr %"var.sp'", align 8
  %cmptmp23 = icmp sgt i64 %var.load22, 0
  br i1 %cmptmp23, label %and.119.then, label %and.119.else

or.118.then:                                      ; preds = %loop.body.117
  br label %or.118.exit

or.118.else:                                      ; preds = %loop.body.117
  %var.load5 = load i1, ptr %var.is_tab, align 1
  br label %or.118.exit

or.118.exit:                                      ; preds = %or.118.else, %or.118.then
  %or.118.phi = phi i1 [ %var.load4, %or.118.then ], [ %var.load5, %or.118.else ]
  %nottmp = xor i1 %or.118.phi, true
  store i1 %nottmp, ptr %var.done, align 1
  %var.load6 = load i1, ptr %var.done, align 1
  br i1 %var.load6, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.118.exit
  br label %loop.exit.117

choice.exit:                                      ; preds = %or.118.exit
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
  br label %loop.latch.117

and.119.then:                                     ; preds = %loop.exit.117
  %var.load24 = load i64, ptr %"var.tabs'", align 8
  %cmptmp25 = icmp sgt i64 %var.load24, 0
  br label %and.119.exit

and.119.else:                                     ; preds = %loop.exit.117
  br label %and.119.exit

and.119.exit:                                     ; preds = %and.119.else, %and.119.then
  %and.119.phi = phi i1 [ %cmptmp25, %and.119.then ], [ %cmptmp23, %and.119.else ]
  br i1 %and.119.phi, label %choice.then26, label %choice.exit27

choice.then26:                                    ; preds = %and.119.exit
  %var.load28 = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load28, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res29 = call i64 @"lexer::fail"(i64 1001, i64 %fld.load, i64 1, ptr @str.89.struct)
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.then26, %and.119.exit
  %var.load30 = load i64, ptr %"var.sp'", align 8
  %cmptmp31 = icmp sgt i64 %var.load30, 0
  br i1 %cmptmp31, label %and.120.then, label %and.120.else

and.120.then:                                     ; preds = %choice.exit27
  %var.load32 = load ptr, ptr %var.lx, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load32, i32 0, i32 5
  %fld.load34 = load i64, ptr %fld.gep33, align 8
  %cmptmp35 = icmp eq i64 %fld.load34, 0
  br label %and.120.exit

and.120.else:                                     ; preds = %choice.exit27
  br label %and.120.exit

and.120.exit:                                     ; preds = %and.120.else, %and.120.then
  %and.120.phi = phi i1 [ %cmptmp35, %and.120.then ], [ %cmptmp31, %and.120.else ]
  br i1 %and.120.phi, label %choice.then36, label %choice.exit37

choice.then36:                                    ; preds = %and.120.exit
  %var.load38 = load ptr, ptr %var.lx, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load38, i32 0, i32 5
  store i64 1, ptr %fld.gep39, align 8
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.then36, %and.120.exit
  %var.load40 = load i64, ptr %"var.tabs'", align 8
  %cmptmp41 = icmp sgt i64 %var.load40, 0
  br i1 %cmptmp41, label %and.121.then, label %and.121.else

and.121.then:                                     ; preds = %choice.exit37
  %var.load42 = load ptr, ptr %var.lx, align 8
  %fld.gep43 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load42, i32 0, i32 5
  %fld.load44 = load i64, ptr %fld.gep43, align 8
  %cmptmp45 = icmp eq i64 %fld.load44, 0
  br label %and.121.exit

and.121.else:                                     ; preds = %choice.exit37
  br label %and.121.exit

and.121.exit:                                     ; preds = %and.121.else, %and.121.then
  %and.121.phi = phi i1 [ %cmptmp45, %and.121.then ], [ %cmptmp41, %and.121.else ]
  br i1 %and.121.phi, label %choice.then46, label %choice.exit47

choice.then46:                                    ; preds = %and.121.exit
  %var.load48 = load ptr, ptr %var.lx, align 8
  %fld.gep49 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load48, i32 0, i32 5
  store i64 2, ptr %fld.gep49, align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.then46, %and.121.exit
  %var.load50 = load i64, ptr %"var.sp'", align 8
  %cmptmp51 = icmp sgt i64 %var.load50, 0
  br i1 %cmptmp51, label %and.122.then, label %and.122.else

and.122.then:                                     ; preds = %choice.exit47
  %var.load52 = load ptr, ptr %var.lx, align 8
  %fld.gep53 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load52, i32 0, i32 5
  %fld.load54 = load i64, ptr %fld.gep53, align 8
  %cmptmp55 = icmp eq i64 %fld.load54, 2
  br label %and.122.exit

and.122.else:                                     ; preds = %choice.exit47
  br label %and.122.exit

and.122.exit:                                     ; preds = %and.122.else, %and.122.then
  %and.122.phi = phi i1 [ %cmptmp55, %and.122.then ], [ %cmptmp51, %and.122.else ]
  br i1 %and.122.phi, label %choice.then56, label %choice.exit57

choice.then56:                                    ; preds = %and.122.exit
  %var.load58 = load ptr, ptr %var.lx, align 8
  %fld.gep59 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load58, i32 0, i32 2
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  %call.res61 = call i64 @"lexer::fail"(i64 1002, i64 %fld.load60, i64 1, ptr @str.90.struct)
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.then56, %and.122.exit
  %var.load62 = load i64, ptr %"var.tabs'", align 8
  %cmptmp63 = icmp sgt i64 %var.load62, 0
  br i1 %cmptmp63, label %and.123.then, label %and.123.else

and.123.then:                                     ; preds = %choice.exit57
  %var.load64 = load ptr, ptr %var.lx, align 8
  %fld.gep65 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load64, i32 0, i32 5
  %fld.load66 = load i64, ptr %fld.gep65, align 8
  %cmptmp67 = icmp eq i64 %fld.load66, 1
  br label %and.123.exit

and.123.else:                                     ; preds = %choice.exit57
  br label %and.123.exit

and.123.exit:                                     ; preds = %and.123.else, %and.123.then
  %and.123.phi = phi i1 [ %cmptmp67, %and.123.then ], [ %cmptmp63, %and.123.else ]
  br i1 %and.123.phi, label %choice.then68, label %choice.exit69

choice.then68:                                    ; preds = %and.123.exit
  %var.load70 = load ptr, ptr %var.lx, align 8
  %fld.gep71 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load70, i32 0, i32 2
  %fld.load72 = load i64, ptr %fld.gep71, align 8
  %call.res73 = call i64 @"lexer::fail"(i64 1003, i64 %fld.load72, i64 1, ptr @str.91.struct)
  br label %choice.exit69

choice.exit69:                                    ; preds = %choice.then68, %and.123.exit
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
  %loop.step.124 = alloca i64, align 8
  %loop.idx.124 = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.depth = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.depth, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 0, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.header.124:                                  ; preds = %loop.latch.124, %entry
  %counter.load = load i64, ptr %loop.idx.124, align 8
  br label %loop.body.124

loop.body.124:                                    ; preds = %loop.header.124
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.124, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp sgt i64 %fld.load, 1
  br i1 %cmptmp, label %and.125.then, label %and.125.else

loop.exit.nat.124:                                ; No predecessors!
  br label %loop.exit.124

loop.latch.124:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.124, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.exit.124:                                    ; preds = %choice.else, %loop.exit.nat.124
  %var.load6 = load ptr, ptr %var.lx, align 8
  %call.res7 = call i64 @"lexer::stack_top"(ptr %var.load6)
  %var.load8 = load i64, ptr %var.depth, align 8
  %cmptmp9 = icmp ne i64 %call.res7, %var.load8
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

and.125.then:                                     ; preds = %loop.body.124
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res = call i64 @"lexer::stack_top"(ptr %var.load1)
  %var.load2 = load i64, ptr %var.depth, align 8
  %cmptmp3 = icmp sgt i64 %call.res, %var.load2
  br label %and.125.exit

and.125.else:                                     ; preds = %loop.body.124
  br label %and.125.exit

and.125.exit:                                     ; preds = %and.125.else, %and.125.then
  %and.125.phi = phi i1 [ %cmptmp3, %and.125.then ], [ %cmptmp, %and.125.else ]
  br i1 %and.125.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.125.exit
  %var.load4 = load ptr, ptr %var.lx, align 8
  call void @"lexer::stack_pop"(ptr %var.load4, i64 0)
  %var.load5 = load ptr, ptr %var.lx, align 8
  call void @"lexer::queue_dedent"(ptr %var.load5, i64 0, i64 1)
  br label %choice.exit

choice.else:                                      ; preds = %and.125.exit
  br label %loop.exit.124

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.124

choice.then10:                                    ; preds = %loop.exit.124
  %var.load12 = load i64, ptr %var.line, align 8
  %var.load13 = load i64, ptr %var.depth, align 8
  %call.res14 = call ptr @"str::from_int"(i64 %var.load13)
  %concat.lhs = load i64, ptr @str.92.struct, align 8
  %concat.lhs15 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit11:                                    ; preds = %concat.tot.len72, %loop.exit.124
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
  %concat.lhs18 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.92.struct, i32 0, i32 1), align 8
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
  %concat.rhs52 = load i64, ptr @str.93.struct, align 8
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
  %concat.rhs63 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.93.struct, i32 0, i32 1), align 8
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
  br i1 %cmptmp, label %and.126.then, label %and.126.else

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit

and.126.then:                                     ; preds = %choice.exit
  %var.load4 = load ptr, ptr %var.lx, align 8
  %call.res5 = call i64 @"lexer::pk_off"(ptr %var.load4, i64 1)
  %cmptmp6 = icmp eq i64 %call.res5, 47
  br label %and.126.exit

and.126.else:                                     ; preds = %choice.exit
  br label %and.126.exit

and.126.exit:                                     ; preds = %and.126.else, %and.126.then
  %and.126.phi = phi i1 [ %cmptmp6, %and.126.then ], [ %cmptmp, %and.126.else ]
  store i1 %and.126.phi, ptr %var.cm, align 1
  %var.load7 = load i1, ptr %var.nl, align 1
  br i1 %var.load7, label %or.127.then, label %or.127.else

or.127.then:                                      ; preds = %and.126.exit
  br label %or.127.exit

or.127.else:                                      ; preds = %and.126.exit
  %var.load8 = load i1, ptr %var.cm, align 1
  br label %or.127.exit

or.127.exit:                                      ; preds = %or.127.else, %or.127.then
  %or.127.phi = phi i1 [ %var.load7, %or.127.then ], [ %var.load8, %or.127.else ]
  br i1 %or.127.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.127.exit
  %var.load10 = load ptr, ptr %var.lx, align 8
  %var.load11 = load i64, ptr %var.q, align 8
  %call.res12 = call ptr @"lexer::skip_blank"(ptr %var.load10, i64 %var.load11)
  br label %choice.exit9

choice.else:                                      ; preds = %or.127.exit
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
  br i1 %cmptmp, label %and.128.then, label %and.128.else

and.128.then:                                     ; preds = %entry
  %var.load1 = load ptr, ptr %var.lx, align 8
  %call.res2 = call i64 @"lexer::pk_off"(ptr %var.load1, i64 1)
  %cmptmp3 = icmp eq i64 %call.res2, 47
  br label %and.128.exit

and.128.else:                                     ; preds = %entry
  br label %and.128.exit

and.128.exit:                                     ; preds = %and.128.else, %and.128.then
  %and.128.phi = phi i1 [ %cmptmp3, %and.128.then ], [ %cmptmp, %and.128.else ]
  store i1 %and.128.phi, ptr %var.cm, align 1
  %var.load4 = load i1, ptr %var.cm, align 1
  br i1 %var.load4, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.128.exit
  %var.load5 = load ptr, ptr %var.lx, align 8
  %call.res6 = call i64 @"lexer::skip_line_comment"(ptr %var.load5, i64 0)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.128.exit
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
  %call.res7 = call ptr @"lexer::mktok"(ptr %var.load5, ptr %enum.alloc, i64 0, i64 0, i64 %var.load6, i64 1, ptr @str.94.struct)
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

choice.exit:                                      ; preds = %choice.next155, %choice.case154, %choice.case140, %choice.case126, %choice.case112, %choice.case98, %choice.case87, %choice.case75, %choice.case58, %choice.case41, %choice.case30, %choice.case19, %choice.case6, %choice.case
  %choice.res = phi ptr [ %call.res5, %choice.case ], [ %call.res18, %choice.case6 ], [ %call.res29, %choice.case19 ], [ %call.res40, %choice.case30 ], [ %call.res57, %choice.case41 ], [ %call.res74, %choice.case58 ], [ %call.res86, %choice.case75 ], [ %call.res97, %choice.case87 ], [ %call.res111, %choice.case98 ], [ %call.res125, %choice.case112 ], [ %call.res139, %choice.case126 ], [ %call.res153, %choice.case140 ], [ %call.res167, %choice.case154 ], [ %call.res175, %choice.next155 ]
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
  br i1 %cmptmp, label %and.130.then, label %and.130.else

choice.case6:                                     ; preds = %and.130.exit
  %var.load11 = load ptr, ptr %var.lx, align 8
  %var.load12 = load ptr, ptr %var.lx, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load12, i32 0, i32 2
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %var.load15 = load ptr, ptr %var.lx, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 3
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %call.res18 = call ptr @"lexer::comment_block"(ptr %var.load11, i64 %fld.load14, i64 %fld.load17)
  br label %choice.exit

choice.next7:                                     ; preds = %and.130.exit
  %cmptmp21 = icmp eq i64 %var.load2, 47
  br i1 %cmptmp21, label %and.131.then, label %and.131.else

and.130.then:                                     ; preds = %choice.next
  %var.load8 = load ptr, ptr %var.lx, align 8
  %call.res9 = call i64 @"lexer::pk_off"(ptr %var.load8, i64 1)
  %cmptmp10 = icmp eq i64 %call.res9, 42
  br label %and.130.exit

and.130.else:                                     ; preds = %choice.next
  br label %and.130.exit

and.130.exit:                                     ; preds = %and.130.else, %and.130.then
  %and.130.phi = phi i1 [ %cmptmp10, %and.130.then ], [ %cmptmp, %and.130.else ]
  br i1 %and.130.phi, label %choice.case6, label %choice.next7

choice.case19:                                    ; preds = %and.131.exit
  %var.load25 = load ptr, ptr %var.lx, align 8
  %var.load26 = load ptr, ptr %var.lx, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %call.res29 = call ptr @"lexer::comment_line"(ptr %var.load25, i64 %fld.load28)
  br label %choice.exit

choice.next20:                                    ; preds = %and.131.exit
  %val.match32 = icmp eq i64 %var.load2, 10
  br i1 %val.match32, label %choice.case30, label %choice.next31

and.131.then:                                     ; preds = %choice.next7
  %var.load22 = load ptr, ptr %var.lx, align 8
  %call.res23 = call i64 @"lexer::pk_off"(ptr %var.load22, i64 1)
  %cmptmp24 = icmp eq i64 %call.res23, 47
  br label %and.131.exit

and.131.else:                                     ; preds = %choice.next7
  br label %and.131.exit

and.131.exit:                                     ; preds = %and.131.else, %and.131.then
  %and.131.phi = phi i1 [ %cmptmp24, %and.131.then ], [ %cmptmp21, %and.131.else ]
  br i1 %and.131.phi, label %choice.case19, label %choice.next20

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
  br i1 %cmptmp43, label %and.132.then, label %and.132.else

choice.case41:                                    ; preds = %and.132.exit
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

choice.next42:                                    ; preds = %and.132.exit
  %cmptmp60 = icmp eq i64 %var.load2, 37
  br i1 %cmptmp60, label %and.133.then, label %and.133.else

and.132.then:                                     ; preds = %choice.next31
  %var.load44 = load ptr, ptr %var.lx, align 8
  %call.res45 = call i64 @"lexer::pk_off"(ptr %var.load44, i64 1)
  %cmptmp46 = icmp eq i64 %call.res45, 61
  br label %and.132.exit

and.132.else:                                     ; preds = %choice.next31
  br label %and.132.exit

and.132.exit:                                     ; preds = %and.132.else, %and.132.then
  %and.132.phi = phi i1 [ %cmptmp46, %and.132.then ], [ %cmptmp43, %and.132.else ]
  br i1 %and.132.phi, label %choice.case41, label %choice.next42

choice.case58:                                    ; preds = %and.133.exit
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

choice.next59:                                    ; preds = %and.133.exit
  %call.res77 = call i1 @"lexer::is_delim"(i64 %var.load2)
  br i1 %call.res77, label %choice.case75, label %choice.next76

and.133.then:                                     ; preds = %choice.next42
  %var.load61 = load ptr, ptr %var.lx, align 8
  %call.res62 = call i64 @"lexer::pk_off"(ptr %var.load61, i64 1)
  %call.res63 = call i1 @"lexer::is_id_start"(i64 %call.res62)
  br label %and.133.exit

and.133.else:                                     ; preds = %choice.next42
  br label %and.133.exit

and.133.exit:                                     ; preds = %and.133.else, %and.133.then
  %and.133.phi = phi i1 [ %call.res63, %and.133.then ], [ %cmptmp60, %and.133.else ]
  br i1 %and.133.phi, label %choice.case58, label %choice.next59

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
  %call.res142 = call i1 @"lexer::is_id_start"(i64 %var.load2)
  br i1 %call.res142, label %choice.case140, label %choice.next141

choice.case140:                                   ; preds = %choice.next127
  %var.load143 = load ptr, ptr %var.lx, align 8
  %var.load144 = load ptr, ptr %var.lx, align 8
  %fld.gep145 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load144, i32 0, i32 1
  %fld.load146 = load i64, ptr %fld.gep145, align 8
  %var.load147 = load ptr, ptr %var.lx, align 8
  %fld.gep148 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load147, i32 0, i32 2
  %fld.load149 = load i64, ptr %fld.gep148, align 8
  %var.load150 = load ptr, ptr %var.lx, align 8
  %fld.gep151 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load150, i32 0, i32 3
  %fld.load152 = load i64, ptr %fld.gep151, align 8
  %call.res153 = call ptr @"lexer::scan_ident"(ptr %var.load143, i64 %fld.load146, i64 %fld.load149, i64 %fld.load152)
  br label %choice.exit

choice.next141:                                   ; preds = %choice.next127
  %val.match156 = icmp eq i64 %var.load2, 34
  br i1 %val.match156, label %choice.case154, label %choice.next155

choice.case154:                                   ; preds = %choice.next141
  %var.load157 = load ptr, ptr %var.lx, align 8
  %var.load158 = load ptr, ptr %var.lx, align 8
  %fld.gep159 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load158, i32 0, i32 1
  %fld.load160 = load i64, ptr %fld.gep159, align 8
  %var.load161 = load ptr, ptr %var.lx, align 8
  %fld.gep162 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load161, i32 0, i32 2
  %fld.load163 = load i64, ptr %fld.gep162, align 8
  %var.load164 = load ptr, ptr %var.lx, align 8
  %fld.gep165 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load164, i32 0, i32 3
  %fld.load166 = load i64, ptr %fld.gep165, align 8
  %call.res167 = call ptr @"lexer::scan_string"(ptr %var.load157, i64 %fld.load160, i64 %fld.load163, i64 %fld.load166)
  br label %choice.exit

choice.next155:                                   ; preds = %choice.next141
  %var.load168 = load ptr, ptr %var.lx, align 8
  %var.load169 = load ptr, ptr %var.lx, align 8
  %fld.gep170 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load169, i32 0, i32 2
  %fld.load171 = load i64, ptr %fld.gep170, align 8
  %var.load172 = load ptr, ptr %var.lx, align 8
  %fld.gep173 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load172, i32 0, i32 3
  %fld.load174 = load i64, ptr %fld.gep173, align 8
  %call.res175 = call ptr @"lexer::eof_tok"(ptr %var.load168, i64 %fld.load171, i64 %fld.load174)
  br label %choice.exit
}

define ptr @"lexer::flush_indents"(ptr %0, i64 %1) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.129 = alloca i64, align 8
  %loop.idx.129 = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lx = alloca ptr, align 8
  store ptr %0, ptr %var.lx, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 0, ptr %loop.idx.129, align 8
  br label %loop.header.129

loop.header.129:                                  ; preds = %loop.latch.129, %entry
  %counter.load = load i64, ptr %loop.idx.129, align 8
  br label %loop.body.129

loop.body.129:                                    ; preds = %loop.header.129
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.129, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.lx, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp sgt i64 %fld.load, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.129:                                ; No predecessors!
  br label %loop.exit.129

loop.latch.129:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.129, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.129, align 8
  br label %loop.header.129

loop.exit.129:                                    ; preds = %choice.else, %loop.exit.nat.129
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

choice.then:                                      ; preds = %loop.body.129
  %var.load1 = load ptr, ptr %var.lx, align 8
  call void @"lexer::stack_pop"(ptr %var.load1, i64 0)
  %var.load2 = load ptr, ptr %var.lx, align 8
  %var.load3 = load ptr, ptr %var.lx, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 3
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  call void @"lexer::queue_dedent"(ptr %var.load2, i64 0, i64 %fld.load5)
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.129
  br label %loop.exit.129

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.129

choice.then14:                                    ; preds = %loop.exit.129
  %var.load17 = load ptr, ptr %var.lx, align 8
  %call.res = call ptr @"lexer::take_queued"(ptr %var.load17, i64 0)
  br label %choice.exit16

choice.else15:                                    ; preds = %loop.exit.129
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
  %call.res7 = call ptr @"lexer::mktok"(ptr %var.load4, ptr %enum.alloc, i64 0, i64 0, i64 %var.load5, i64 %var.load6, ptr @str.7.struct)
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
  %concat.lhs = load i64, ptr @str.95.struct, align 8
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
  %concat.lhs14 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.95.struct, i32 0, i32 1), align 8
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
  %eq.rhs.len = load i64, ptr @str.62.struct, align 8
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
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.62.struct, i32 0, i32 1), align 8
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
  %concat.rhs = load i64, ptr @str.119.struct, align 8
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
  %concat.rhs17 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.119.struct, i32 0, i32 1), align 8
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
  %concat.rhs87 = load i64, ptr @str.7.struct, align 8
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
  %concat.rhs98 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
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
  %choice.res = phi ptr [ @str.96.struct, %choice.case ], [ @str.97.struct, %choice.case1 ], [ @str.98.struct, %choice.case6 ], [ @str.99.struct, %choice.case11 ], [ @str.100.struct, %choice.case16 ], [ @str.101.struct, %choice.case21 ], [ @str.102.struct, %choice.case26 ], [ @str.103.struct, %choice.case31 ], [ @str.104.struct, %choice.case36 ], [ @str.105.struct, %choice.case41 ], [ @str.106.struct, %choice.case46 ], [ @str.107.struct, %choice.case51 ], [ @str.108.struct, %choice.case56 ], [ @str.109.struct, %choice.case61 ], [ @str.110.struct, %choice.case66 ], [ @str.111.struct, %choice.case71 ], [ @str.94.struct, %choice.case76 ], [ @str.88.struct, %choice.case81 ], [ @str.112.struct, %choice.case86 ], [ @str.113.struct, %choice.case91 ], [ @str.114.struct, %choice.case96 ], [ @str.115.struct, %choice.case101 ], [ @str.63.struct, %choice.case106 ], [ @str.65.struct, %choice.case111 ], [ @str.67.struct, %choice.case116 ], [ @str.69.struct, %choice.case121 ], [ @str.116.struct, %choice.case126 ], [ @str.74.struct, %choice.case131 ], [ @str.76.struct, %choice.case136 ], [ @str.78.struct, %choice.case141 ], [ @str.80.struct, %choice.case146 ], [ @str.82.struct, %choice.case151 ], [ @str.84.struct, %choice.case156 ], [ @str.52.struct, %choice.case161 ], [ @str.52.struct, %choice.case166 ], [ @str.87.struct, %choice.case171 ], [ @str.117.struct, %choice.case176 ], [ @str.118.struct, %choice.next177 ]
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
