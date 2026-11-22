; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_gen_tls = external thread_local global i64
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@var.cur_lex_failed = global i1 false
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
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
@expect.reason.165 = internal unnamed_addr constant [21 x i8] c"expect: missing src\0A\00"
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
@clo.const.8 = internal constant { ptr, ptr } { ptr @"lexer::has_more_on_line", ptr null }
@"var.lexer::has_more_on_line" = global ptr null
@str.4 = internal unnamed_addr constant [2 x i8] c"|\00"
@str.5 = internal unnamed_addr constant [3 x i8] c"!|\00"
@str.6 = internal unnamed_addr constant [3 x i8] c"=>\00"
@str.7 = internal unnamed_addr constant [4 x i8] c"!=>\00"
@str.8 = internal unnamed_addr constant [2 x i8] c"@\00"
@str.9 = internal unnamed_addr constant [3 x i8] c"@@\00"
@str.10 = internal unnamed_addr constant [3 x i8] c"@>\00"
@str.11 = internal unnamed_addr constant [4 x i8] c"@@>\00"
@str.12 = internal unnamed_addr constant [4 x i8] c">--\00"
@clo.const.9 = internal constant { ptr, ptr } { ptr @"lexer::is_inline_block_opener", ptr null }
@"var.lexer::is_inline_block_opener" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"lexer::stack_mark_inline", ptr null }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"lexer::mktok", ptr null }
@"var.lexer::mktok" = global ptr null
@"var.lexer::cur_lex_file" = global ptr null
@"var.lexer::cur_lex_failed" = global i1 false
@clo.const.12 = internal constant { ptr, ptr } { ptr @"lexer::lex_set_file", ptr null }
@"var.lexer::lex_set_file" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"lexer::lex_get_file", ptr null }
@"var.lexer::lex_get_file" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"lexer::lex_failed", ptr null }
@"var.lexer::lex_failed" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.13 = internal unnamed_addr constant [2 x i8] c":\00"
@str.14 = internal unnamed_addr constant [4 x i8] c": E\00"
@str.15 = internal unnamed_addr constant [3 x i8] c": \00"
@clo.const.15 = internal constant { ptr, ptr } { ptr @"lexer::fail", ptr null }
@"var.lexer::fail" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"lexer::esc_val", ptr null }
@"var.lexer::esc_val" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"lexer::hex_digit_val", ptr null }
@"var.lexer::hex_digit_val" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"lexer::scan_esc_rune", ptr null }
@"var.lexer::scan_esc_rune" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"lexer::scan_esc_byte_opt", ptr null }
@"var.lexer::scan_esc_byte_opt" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.20 = internal constant { ptr, ptr } { ptr @"lexer::decode_escapes", ptr null }
@"var.lexer::decode_escapes" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"lexer::is_delim", ptr null }
@"var.lexer::is_delim" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"lexer::is_id_start", ptr null }
@"var.lexer::is_id_start" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"lexer::is_id_char", ptr null }
@"var.lexer::is_id_char" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"lexer::is_special", ptr null }
@"var.lexer::is_special" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"lexer::scan_while", ptr null }
@"var.lexer::scan_while" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"$anon_fn.117", ptr null }
@clo.const.27 = internal constant { ptr, ptr } { ptr @"lexer::skip_digits", ptr null }
@"var.lexer::skip_digits" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"lexer::scan_id", ptr null }
@"var.lexer::scan_id" = global ptr null
@str.16 = internal unnamed_addr constant [3 x i8] c"i8\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.16 }
@str.17 = internal unnamed_addr constant [4 x i8] c"i16\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.17 }
@str.18 = internal unnamed_addr constant [4 x i8] c"i32\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.18 }
@str.19 = internal unnamed_addr constant [4 x i8] c"i64\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.19 }
@str.20 = internal unnamed_addr constant [3 x i8] c"u8\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.20 }
@str.21 = internal unnamed_addr constant [4 x i8] c"u16\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.21 }
@str.22 = internal unnamed_addr constant [4 x i8] c"u32\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.22 }
@str.23 = internal unnamed_addr constant [4 x i8] c"u64\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.23 }
@clo.const.29 = internal constant { ptr, ptr } { ptr @"lexer::scan_int_suffix", ptr null }
@"var.lexer::scan_int_suffix" = global ptr null
@str.24 = internal unnamed_addr constant [4 x i8] c"f32\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.24 }
@str.25 = internal unnamed_addr constant [4 x i8] c"f64\00"
@clo.const.30 = internal constant { ptr, ptr } { ptr @"lexer::scan_float_suffix", ptr null }
@"var.lexer::scan_float_suffix" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"lexer::radix_ok", ptr null }
@"var.lexer::radix_ok" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.32 = internal constant { ptr, ptr } { ptr @"lexer::try_scan_repeat", ptr null }
@"var.lexer::try_scan_repeat" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"lexer::finish_int", ptr null }
@"var.lexer::finish_int" = global ptr null
@str.26 = internal unnamed_addr constant [49 x i8] c"Underscore numeric separators are not supported.\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.26 }
@clo.const.34 = internal constant { ptr, ptr } { ptr @"lexer::scan_radix_rest", ptr null }
@"var.lexer::scan_radix_rest" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"lexer::finish_float", ptr null }
@"var.lexer::finish_float" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"lexer::pk_off", ptr null }
@clo.const.37 = internal constant { ptr, ptr } { ptr @"lexer::scan_frac_opt", ptr null }
@"var.lexer::scan_frac_opt" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"lexer::scan_exp_opt", ptr null }
@"var.lexer::scan_exp_opt" = global ptr null
@str.27 = internal unnamed_addr constant [57 x i8] c"Float literal requires a digit after the decimal point; \00"
@str.28 = internal unnamed_addr constant [53 x i8] c"padding zeros are mandatory (write '1.0', not '1.').\00"
@clo.const.39 = internal constant { ptr, ptr } { ptr @"lexer::scan_dec", ptr null }
@"var.lexer::scan_dec" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"lexer::scan_num", ptr null }
@"var.lexer::scan_num" = global ptr null
@"var.lexer::pk_off" = global ptr null
@str.29 = internal unnamed_addr constant [4 x i8] c"...\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.29 }
@str.30 = internal unnamed_addr constant [3 x i8] c"..\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.30 }
@str.31 = internal unnamed_addr constant [2 x i8] c"!\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.31 }
@str.32 = internal unnamed_addr constant [3 x i8] c"!!\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.32 }
@str.33 = internal unnamed_addr constant [4 x i8] c"--!\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.33 }
@str.34 = internal unnamed_addr constant [4 x i8] c"--|\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.34 }
@str.35 = internal unnamed_addr constant [3 x i8] c"~~\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.35 }
@str.36 = internal unnamed_addr constant [4 x i8] c".^.\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.36 }
@str.37 = internal unnamed_addr constant [5 x i8] c"|-->\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.37 }
@str.38 = internal unnamed_addr constant [5 x i8] c"|++>\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.38 }
@str.39 = internal unnamed_addr constant [4 x i8] c"|->\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.39 }
@str.40 = internal unnamed_addr constant [4 x i8] c"|+>\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.40 }
@clo.const.41 = internal constant { ptr, ptr } { ptr @"lexer::scan_op", ptr null }
@"var.lexer::scan_op" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"lexer::maybe_esc_adv", ptr null }
@"var.lexer::maybe_esc_adv" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"lexer::on_str_esc", ptr null }
@"var.lexer::on_str_esc" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"lexer::scan_string_body", ptr null }
@"var.lexer::scan_string_body" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"lexer::skip_multiline_ws", ptr null }
@"var.lexer::skip_multiline_ws" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"lexer::skip_eol_comment", ptr null }
@"var.lexer::skip_eol_comment" = global ptr null
@clo.const.47 = internal constant { ptr, ptr } { ptr @"lexer::stack_top", ptr null }
@clo.const.48 = internal constant { ptr, ptr } { ptr @"lexer::check_multiline_str", ptr null }
@"var.lexer::check_multiline_str" = global ptr null
@clo.const.49 = internal constant { ptr, ptr } { ptr @"lexer::adv_to", ptr null }
@"var.lexer::adv_to" = global ptr null
@clo.const.50 = internal constant { ptr, ptr } { ptr @"lexer::scan_next_str_part", ptr null }
@"var.lexer::scan_next_str_part" = global ptr null
@clo.const.51 = internal constant { ptr, ptr } { ptr @"lexer::concat_multiline_str", ptr null }
@"var.lexer::concat_multiline_str" = global ptr null
@clo.const.52 = internal constant { ptr, ptr } { ptr @"lexer::is_rune_forbidden_ws", ptr null }
@"var.lexer::is_rune_forbidden_ws" = global ptr null
@str.41 = internal unnamed_addr constant [66 x i8] c"Unterminated character literal \E2\80\94 expected a character after '''\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 65, ptr @str.41 }
@str.42 = internal unnamed_addr constant [134 x i8] c"Empty character literal \E2\80\94 bare ''' cannot be followed by whitespace; use ''\\s' for space (U+0020) or ''\\u{...}' for Unicode spaces.\00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 133, ptr @str.42 }
@str.43 = internal unnamed_addr constant [92 x i8] c"Unterminated character literal \E2\80\94 closing ''' is not allowed; write ''a' instead of ''a''.\00"
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 91, ptr @str.43 }
@clo.const.53 = internal constant { ptr, ptr } { ptr @"lexer::scan_rune", ptr null }
@"var.lexer::scan_rune" = global ptr null
@clo.const.54 = internal constant { ptr, ptr } { ptr @"$anon_fn.149", ptr null }
@clo.const.55 = internal constant { ptr, ptr } { ptr @"lexer::skip_line_comment", ptr null }
@"var.lexer::skip_line_comment" = global ptr null
@str.44 = internal unnamed_addr constant [51 x i8] c"Unterminated block comment -- missing closing '*/'\00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.44 }
@clo.const.56 = internal constant { ptr, ptr } { ptr @"lexer::skip_block_comment", ptr null }
@"var.lexer::skip_block_comment" = global ptr null
@clo.const.57 = internal constant { ptr, ptr } { ptr @"$anon_fn.152", ptr null }
@clo.const.58 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash_word", ptr null }
@"var.lexer::scan_hash_word" = global ptr null
@clo.const.59 = internal constant { ptr, ptr } { ptr @"lexer::scan_qp_body", ptr null }
@"var.lexer::scan_qp_body" = global ptr null
@str.45 = internal unnamed_addr constant [48 x i8] c"Unterminated import path -- missing closing '\22'\00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.45 }
@clo.const.60 = internal constant { ptr, ptr } { ptr @"lexer::scan_quoted_path", ptr null }
@"var.lexer::scan_quoted_path" = global ptr null
@clo.const.61 = internal constant { ptr, ptr } { ptr @"lexer::is_path_rune", ptr null }
@"var.lexer::is_path_rune" = global ptr null
@str.46 = internal unnamed_addr constant [70 x i8] c"Unterminated module argument list in '#use' \E2\80\94 expected closing ')'.\00"
@str.46.struct = internal unnamed_addr constant { i64, ptr } { i64 69, ptr @str.46 }
@clo.const.62 = internal constant { ptr, ptr } { ptr @"lexer::scan_use_args", ptr null }
@clo.const.63 = internal constant { ptr, ptr } { ptr @"lexer::scan_bare_path", ptr null }
@"var.lexer::scan_bare_path" = global ptr null
@"var.lexer::scan_use_args" = global ptr null
@clo.const.64 = internal constant { ptr, ptr } { ptr @"lexer::skip_ws", ptr null }
@str.47 = internal unnamed_addr constant [51 x i8] c"Unterminated '#use(...)' \E2\80\94 expected closing ')'.\00"
@str.47.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.47 }
@clo.const.65 = internal constant { ptr, ptr } { ptr @"$anon_fn.160", ptr null }
@str.48 = internal unnamed_addr constant [8 x i8] c"dynamic\00"
@str.49 = internal unnamed_addr constant [7 x i8] c"import\00"
@str.50 = internal unnamed_addr constant [22 x i8] c"Invalid #use option '\00"
@str.51 = internal unnamed_addr constant [38 x i8] c"' \E2\80\94 expected 'dynamic' or 'import'.\00"
@clo.const.66 = internal constant { ptr, ptr } { ptr @"lexer::skip_hws", ptr null }
@str.52 = internal unnamed_addr constant [96 x i8] c"Quotes are not allowed in '#use' paths \E2\80\94 use '#use ./module', '#use @pkg', or '#use std_mod'.\00"
@str.52.struct = internal unnamed_addr constant { i64, ptr } { i64 95, ptr @str.52 }
@str.53 = internal unnamed_addr constant [37 x i8] c"Expected a module path after '#use'.\00"
@str.53.struct = internal unnamed_addr constant { i64, ptr } { i64 36, ptr @str.53 }
@str.54 = internal unnamed_addr constant [34 x i8] c"Expected a module path after '='.\00"
@str.54.struct = internal unnamed_addr constant { i64, ptr } { i64 33, ptr @str.54 }
@str.55 = internal unnamed_addr constant [4 x i8] c" = \00"
@clo.const.67 = internal constant { ptr, ptr } { ptr @"lexer::scan_use_directive", ptr null }
@"var.lexer::scan_use_directive" = global ptr null
@"var.lexer::skip_ws" = global ptr null
@str.56 = internal unnamed_addr constant [33 x i8] c"Invalid '#pragma integer' type '\00"
@str.57 = internal unnamed_addr constant [62 x i8] c"' \E2\80\94 expected an integer type (i8/u8..i64/u64) or 'default'.\00"
@clo.const.68 = internal constant { ptr, ptr } { ptr @"lexer::pragma_int_fail", ptr null }
@"var.lexer::pragma_int_fail" = global ptr null
@str.58 = internal unnamed_addr constant [31 x i8] c"Invalid '#pragma float' type '\00"
@str.59 = internal unnamed_addr constant [53 x i8] c"' \E2\80\94 expected a float type (f32, f64) or 'default'.\00"
@clo.const.69 = internal constant { ptr, ptr } { ptr @"lexer::pragma_float_fail", ptr null }
@"var.lexer::pragma_float_fail" = global ptr null
@str.60 = internal unnamed_addr constant [54 x i8] c"Unterminated '#pragma(...)' \E2\80\94 expected closing ')'.\00"
@str.60.struct = internal unnamed_addr constant { i64, ptr } { i64 53, ptr @str.60 }
@clo.const.70 = internal constant { ptr, ptr } { ptr @"$anon_fn.166", ptr null }
@str.61 = internal unnamed_addr constant [44 x i8] c"Expected option name inside '#pragma(...)'.\00"
@str.61.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.61 }
@str.62 = internal unnamed_addr constant [38 x i8] c"Expected '=' after '#pragma' option '\00"
@str.63 = internal unnamed_addr constant [3 x i8] c"'.\00"
@clo.const.71 = internal constant { ptr, ptr } { ptr @"$anon_fn.167", ptr null }
@str.64 = internal unnamed_addr constant [8 x i8] c"integer\00"
@str.65 = internal unnamed_addr constant [8 x i8] c"default\00"
@str.66 = internal unnamed_addr constant [6 x i8] c"float\00"
@str.66.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.66 }
@str.67 = internal unnamed_addr constant [6 x i8] c"Float\00"
@str.68 = internal unnamed_addr constant [7 x i8] c"fpfast\00"
@str.69 = internal unnamed_addr constant [4 x i8] c"all\00"
@str.70 = internal unnamed_addr constant [5 x i8] c"none\00"
@str.71 = internal unnamed_addr constant [32 x i8] c"Invalid '#pragma fpfast' mode '\00"
@str.72 = internal unnamed_addr constant [32 x i8] c"' \E2\80\94 expected 'all' or 'none'.\00"
@clo.const.72 = internal constant { ptr, ptr } { ptr @"lexer::pragma_fp_fail", ptr null }
@str.73 = internal unnamed_addr constant [8 x i8] c"swizzle\00"
@str.74 = internal unnamed_addr constant [5 x i8] c"xyzw\00"
@str.75 = internal unnamed_addr constant [5 x i8] c"rgba\00"
@str.76 = internal unnamed_addr constant [33 x i8] c"Invalid '#pragma swizzle' mode '\00"
@str.77 = internal unnamed_addr constant [49 x i8] c"' \E2\80\94 expected 'all', 'xyzw', 'rgba', or 'none'.\00"
@clo.const.73 = internal constant { ptr, ptr } { ptr @"lexer::pragma_swizzle_fail", ptr null }
@str.78 = internal unnamed_addr constant [27 x i8] c"Unknown '#pragma' option '\00"
@str.79 = internal unnamed_addr constant [59 x i8] c"' \E2\80\94 expected 'integer', 'float', 'fpfast', or 'swizzle'.\00"
@str.80 = internal unnamed_addr constant [39 x i8] c"Expected ',' or ')' in '#pragma(...)'.\00"
@str.80.struct = internal unnamed_addr constant { i64, ptr } { i64 38, ptr @str.80 }
@str.81 = internal unnamed_addr constant [52 x i8] c"Expected at least one option inside '#pragma(...)'.\00"
@str.81.struct = internal unnamed_addr constant { i64, ptr } { i64 51, ptr @str.81 }
@str.82 = internal unnamed_addr constant [8 x i8] c"#pragma\00"
@str.82.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.82 }
@expect.reason.306 = internal unnamed_addr constant [22 x i8] c"expect: missing toks\0A\00"
@str.83 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.83.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.83 }
@expect.reason.309 = internal unnamed_addr constant [22 x i8] c"expect: missing toks\0A\00"
@clo.const.74 = internal constant { ptr, ptr } { ptr @"lexer::take_queued", ptr null }
@clo.const.75 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma_parens", ptr null }
@str.84 = internal unnamed_addr constant [63 x i8] c"Expected '#pragma(key = value, ...)' with no space before '('.\00"
@str.84.struct = internal unnamed_addr constant { i64, ptr } { i64 62, ptr @str.84 }
@clo.const.76 = internal constant { ptr, ptr } { ptr @"lexer::scan_pragma", ptr null }
@"var.lexer::scan_pragma" = global ptr null
@"var.lexer::scan_pragma_parens" = global ptr null
@"var.lexer::pragma_fp_fail" = global ptr null
@"var.lexer::pragma_swizzle_fail" = global ptr null
@str.85 = internal unnamed_addr constant [8 x i8] c"foreign\00"
@str.86 = internal unnamed_addr constant [9 x i8] c"#foreign\00"
@str.86.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.86 }
@str.87 = internal unnamed_addr constant [5 x i8] c"type\00"
@str.88 = internal unnamed_addr constant [6 x i8] c"#type\00"
@str.88.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.88 }
@str.89 = internal unnamed_addr constant [8 x i8] c"private\00"
@str.90 = internal unnamed_addr constant [9 x i8] c"#private\00"
@str.90.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.90 }
@str.91 = internal unnamed_addr constant [7 x i8] c"public\00"
@str.92 = internal unnamed_addr constant [4 x i8] c"pub\00"
@str.93 = internal unnamed_addr constant [2 x i8] c"#\00"
@str.93.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.93 }
@str.94 = internal unnamed_addr constant [7 x i8] c"export\00"
@str.95 = internal unnamed_addr constant [8 x i8] c"#export\00"
@str.95.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.95 }
@str.96 = internal unnamed_addr constant [6 x i8] c"error\00"
@str.97 = internal unnamed_addr constant [7 x i8] c"#error\00"
@str.97.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.97 }
@str.98 = internal unnamed_addr constant [5 x i8] c"warn\00"
@str.99 = internal unnamed_addr constant [6 x i8] c"#warn\00"
@str.99.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.99 }
@str.100 = internal unnamed_addr constant [7 x i8] c"pragma\00"
@str.101 = internal unnamed_addr constant [4 x i8] c"use\00"
@str.102 = internal unnamed_addr constant [6 x i8] c"param\00"
@str.103 = internal unnamed_addr constant [7 x i8] c"#param\00"
@str.103.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.103 }
@str.104 = internal unnamed_addr constant [6 x i8] c"const\00"
@str.105 = internal unnamed_addr constant [7 x i8] c"#const\00"
@str.105.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.105 }
@clo.const.77 = internal constant { ptr, ptr } { ptr @"lexer::scan_directive", ptr null }
@"var.lexer::scan_directive" = global ptr null
@clo.const.78 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash_name", ptr null }
@"var.lexer::scan_hash_name" = global ptr null
@clo.const.79 = internal constant { ptr, ptr } { ptr @"lexer::scan_hash", ptr null }
@"var.lexer::scan_hash" = global ptr null
@"var.lexer::stack_top" = global ptr null
@clo.const.80 = internal constant { ptr, ptr } { ptr @"lexer::stack_top_has_inline", ptr null }
@"var.lexer::stack_top_has_inline" = global ptr null
@"var.lexer::stack_mark_inline" = global ptr null
@clo.const.81 = internal constant { ptr, ptr } { ptr @"lexer::stack_clear_inline", ptr null }
@"var.lexer::stack_clear_inline" = global ptr null
@clo.const.82 = internal constant { ptr, ptr } { ptr @"lexer::stack_pop", ptr null }
@"var.lexer::stack_pop" = global ptr null
@clo.const.83 = internal constant { ptr, ptr } { ptr @"lexer::stack_append", ptr null }
@"var.lexer::stack_append" = global ptr null
@clo.const.84 = internal constant { ptr, ptr } { ptr @"lexer::stack_overwrite", ptr null }
@"var.lexer::stack_overwrite" = global ptr null
@clo.const.85 = internal constant { ptr, ptr } { ptr @"lexer::stack_push", ptr null }
@"var.lexer::stack_push" = global ptr null
@str.106 = internal unnamed_addr constant [7 x i8] c"DEDENT\00"
@str.106.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.106 }
@clo.const.86 = internal constant { ptr, ptr } { ptr @"lexer::queue_dedent", ptr null }
@"var.lexer::queue_dedent" = global ptr null
@str.107 = internal unnamed_addr constant [7 x i8] c"INDENT\00"
@str.107.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.107 }
@clo.const.87 = internal constant { ptr, ptr } { ptr @"lexer::queue_indent", ptr null }
@"var.lexer::queue_indent" = global ptr null
@"var.lexer::take_queued" = global ptr null
@str.108 = internal unnamed_addr constant [61 x i8] c"Mixed spaces and tabs in indentation are strictly forbidden.\00"
@str.108.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.108 }
@str.109 = internal unnamed_addr constant [55 x i8] c"Inconsistent indentation. Expected tabs, found spaces.\00"
@str.109.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.109 }
@str.110 = internal unnamed_addr constant [55 x i8] c"Inconsistent indentation. Expected spaces, found tabs.\00"
@str.110.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.110 }
@clo.const.88 = internal constant { ptr, ptr } { ptr @"lexer::count_indent", ptr null }
@"var.lexer::count_indent" = global ptr null
@str.111 = internal unnamed_addr constant [16 x i8] c"Unindent level \00"
@str.112 = internal unnamed_addr constant [45 x i8] c" does not match any outer indentation level.\00"
@clo.const.89 = internal constant { ptr, ptr } { ptr @"lexer::drain_to", ptr null }
@"var.lexer::drain_to" = global ptr null
@clo.const.90 = internal constant { ptr, ptr } { ptr @"lexer::skip_blank", ptr null }
@clo.const.91 = internal constant { ptr, ptr } { ptr @"lexer::flush_indents", ptr null }
@clo.const.92 = internal constant { ptr, ptr } { ptr @"lexer::comment_block", ptr null }
@clo.const.93 = internal constant { ptr, ptr } { ptr @"lexer::comment_line", ptr null }
@clo.const.94 = internal constant { ptr, ptr } { ptr @"lexer::nl_tok", ptr null }
@str.113 = internal unnamed_addr constant [2 x i8] c"%\00"
@clo.const.95 = internal constant { ptr, ptr } { ptr @"lexer::scan_intrinsic", ptr null }
@clo.const.96 = internal constant { ptr, ptr } { ptr @"lexer::scan_delim", ptr null }
@clo.const.97 = internal constant { ptr, ptr } { ptr @"lexer::scan_ident", ptr null }
@str.114 = internal unnamed_addr constant [4 x i8] c"\22\22\22\00"
@str.115 = internal unnamed_addr constant [68 x i8] c"Unterminated string literal -- missing closing '}' in interpolation\00"
@str.115.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.115 }
@clo.const.98 = internal constant { ptr, ptr } { ptr @"lexer::scan_str_expr", ptr null }
@expect.reason.348 = internal unnamed_addr constant [23 x i8] c"expect: missing lines\0A\00"
@expect.reason.351 = internal unnamed_addr constant [23 x i8] c"expect: missing lines\0A\00"
@expect.reason.354 = internal unnamed_addr constant [23 x i8] c"expect: missing lines\0A\00"
@expect.reason.361 = internal unnamed_addr constant [23 x i8] c"expect: missing parts\0A\00"
@expect.reason.364 = internal unnamed_addr constant [27 x i8] c"expect: missing assembled\0A\00"
@expect.reason.367 = internal unnamed_addr constant [27 x i8] c"expect: missing assembled\0A\00"
@expect.reason.370 = internal unnamed_addr constant [27 x i8] c"expect: missing assembled\0A\00"
@expect.reason.373 = internal unnamed_addr constant [24 x i8] c"expect: missing merged\0A\00"
@str.116 = internal unnamed_addr constant [2 x i8] c"(\00"
@str.116.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.116 }
@expect.reason.377 = internal unnamed_addr constant [24 x i8] c"expect: missing active\0A\00"
@str.117 = internal unnamed_addr constant [2 x i8] c"+\00"
@str.117.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.117 }
@str.118 = internal unnamed_addr constant [8 x i8] c"%to_str\00"
@str.118.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.118 }
@expect.reason.380 = internal unnamed_addr constant [22 x i8] c"expect: missing toks\0A\00"
@str.119 = internal unnamed_addr constant [2 x i8] c")\00"
@str.119.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.119 }
@clo.const.99 = internal constant { ptr, ptr } { ptr @"lexer::emit_interp_tokens", ptr null }
@clo.const.100 = internal constant { ptr, ptr } { ptr @"lexer::scan_multiline_string", ptr null }
@clo.const.101 = internal constant { ptr, ptr } { ptr @"lexer::scan_single_string", ptr null }
@clo.const.102 = internal constant { ptr, ptr } { ptr @"lexer::scan_string", ptr null }
@clo.const.103 = internal constant { ptr, ptr } { ptr @"lexer::eof_tok", ptr null }
@clo.const.104 = internal constant { ptr, ptr } { ptr @"lexer::dispatch_scan", ptr null }
@clo.const.105 = internal constant { ptr, ptr } { ptr @"lexer::dispatch_bol", ptr null }
@clo.const.106 = internal constant { ptr, ptr } { ptr @"lexer::next_tok", ptr null }
@clo.const.107 = internal constant { ptr, ptr } { ptr @"lexer::layout_step", ptr null }
@clo.const.108 = internal constant { ptr, ptr } { ptr @"lexer::line_token", ptr null }
@clo.const.109 = internal constant { ptr, ptr } { ptr @"lexer::layout", ptr null }
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
@clo.const.110 = internal constant { ptr, ptr } { ptr @"lexer::count_leading_indent", ptr null }
@"var.lexer::count_leading_indent" = global ptr null
@"var.lexer::scan_str_expr" = global ptr null
@"var.lexer::emit_interp_tokens" = global ptr null
@"var.lexer::scan_single_string" = global ptr null
@"var.lexer::scan_multiline_string" = global ptr null
@"var.lexer::scan_string" = global ptr null
@"var.lexer::dispatch_bol" = global ptr null
@"var.lexer::dispatch_scan" = global ptr null
@str.120 = internal unnamed_addr constant [3 x i8] c"id\00"
@str.120.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.120 }
@str.121 = internal unnamed_addr constant [4 x i8] c"int\00"
@str.121.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.121 }
@str.122 = internal unnamed_addr constant [4 x i8] c"str\00"
@str.122.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.122 }
@str.123 = internal unnamed_addr constant [5 x i8] c"rune\00"
@str.123.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.123 }
@str.124 = internal unnamed_addr constant [3 x i8] c"op\00"
@str.124.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.124 }
@str.125 = internal unnamed_addr constant [2 x i8] c"[\00"
@str.125.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.125 }
@str.126 = internal unnamed_addr constant [2 x i8] c"]\00"
@str.126.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.126 }
@str.127 = internal unnamed_addr constant [2 x i8] c"{\00"
@str.127.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.127 }
@str.128 = internal unnamed_addr constant [2 x i8] c"}\00"
@str.128.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.128 }
@str.129 = internal unnamed_addr constant [2 x i8] c",\00"
@str.129.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.129 }
@str.130 = internal unnamed_addr constant [2 x i8] c";\00"
@str.130.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.130 }
@str.131 = internal unnamed_addr constant [8 x i8] c"newline\00"
@str.131.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.131 }
@str.132 = internal unnamed_addr constant [5 x i8] c"#use\00"
@str.132.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.132 }
@str.133 = internal unnamed_addr constant [14 x i8] c"#use(dynamic)\00"
@str.133.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.133 }
@str.134 = internal unnamed_addr constant [13 x i8] c"#use(import)\00"
@str.134.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.134 }
@str.135 = internal unnamed_addr constant [22 x i8] c"#use(dynamic, import)\00"
@str.135.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.135 }
@str.136 = internal unnamed_addr constant [8 x i8] c"#public\00"
@str.136.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.136 }
@str.137 = internal unnamed_addr constant [4 x i8] c"eof\00"
@str.137.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.137 }
@str.138 = internal unnamed_addr constant [2 x i8] c"?\00"
@str.138.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.138 }
@clo.const.111 = internal constant { ptr, ptr } { ptr @"lexer::kind_name", ptr null }
@str.139 = internal unnamed_addr constant [2 x i8] c" \00"
@clo.const.112 = internal constant { ptr, ptr } { ptr @"lexer::show", ptr null }
@"var.lexer::show" = global ptr null
@"var.lexer::kind_name" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_lexer, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #1 {
entry:
  %align.add = add i64 %1, 15
  %aligned = and i64 %align.add, -16
  %cap = load i64, ptr %0, align 8
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

common.ret:                                       ; preds = %slow, %bump
  %common.ret.op = phi ptr [ %result, %bump ], [ %result.slow, %slow ]
  ret ptr %common.ret.op

bump:                                             ; preds = %entry
  %chunks = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 3
  %last = sub nuw i64 %nc, 1
  %slot = getelementptr [16384 x ptr], ptr %chunks, i64 0, i64 %last
  %chunk = load ptr, ptr %slot, align 8
  %result = getelementptr i8, ptr %chunk, i64 %off
  %next = add i64 %off, %aligned
  store i64 %next, ptr %off.ptr, align 8
  br label %common.ret

slow:                                             ; preds = %entry
  %result.slow = call ptr @dva_arena_alloc_slow(ptr %0, i64 %1)
  br label %common.ret
}

; Function Attrs: noinline
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #2

declare void @dva_arena_destroy(ptr) #3

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

define internal void @__dva_global_init_lexer() #3 {
entry:
  store ptr @clo.const, ptr @"var.lexer::lex_init", align 8
  store ptr @clo.const.1, ptr @"var.lexer::clone_stack", align 8
  store ptr @clo.const.2, ptr @"var.lexer::clone_queue", align 8
  store ptr @clo.const.3, ptr @"var.lexer::clone_lx", align 8
  store ptr @clo.const.4, ptr @"var.lexer::pk", align 8
  store ptr @clo.const.5, ptr @"var.lexer::is_nl", align 8
  store ptr @clo.const.6, ptr @"var.lexer::adv", align 8
  store ptr @clo.const.7, ptr @"var.lexer::is_ws", align 8
  store ptr @clo.const.8, ptr @"var.lexer::has_more_on_line", align 8
  store ptr @clo.const.9, ptr @"var.lexer::is_inline_block_opener", align 8
  store ptr @clo.const.11, ptr @"var.lexer::mktok", align 8
  store ptr @str.0.struct, ptr @"var.lexer::cur_lex_file", align 8
  store i1 false, ptr @"var.lexer::cur_lex_failed", align 1
  store ptr @clo.const.12, ptr @"var.lexer::lex_set_file", align 8
  store ptr @clo.const.13, ptr @"var.lexer::lex_get_file", align 8
  store ptr @clo.const.14, ptr @"var.lexer::lex_failed", align 8
  store ptr @clo.const.15, ptr @"var.lexer::fail", align 8
  store ptr @clo.const.16, ptr @"var.lexer::esc_val", align 8
  store ptr @clo.const.17, ptr @"var.lexer::hex_digit_val", align 8
  store ptr @clo.const.18, ptr @"var.lexer::scan_esc_rune", align 8
  store ptr @clo.const.19, ptr @"var.lexer::scan_esc_byte_opt", align 8
  store ptr @clo.const.20, ptr @"var.lexer::decode_escapes", align 8
  store ptr @clo.const.21, ptr @"var.lexer::is_delim", align 8
  store ptr @clo.const.22, ptr @"var.lexer::is_id_start", align 8
  store ptr @clo.const.23, ptr @"var.lexer::is_id_char", align 8
  store ptr @clo.const.24, ptr @"var.lexer::is_special", align 8
  store ptr @clo.const.25, ptr @"var.lexer::scan_while", align 8
  store ptr @clo.const.27, ptr @"var.lexer::skip_digits", align 8
  store ptr @clo.const.28, ptr @"var.lexer::scan_id", align 8
  store ptr @clo.const.29, ptr @"var.lexer::scan_int_suffix", align 8
  store ptr @clo.const.30, ptr @"var.lexer::scan_float_suffix", align 8
  store ptr @clo.const.31, ptr @"var.lexer::radix_ok", align 8
  store ptr @clo.const.32, ptr @"var.lexer::try_scan_repeat", align 8
  store ptr @clo.const.33, ptr @"var.lexer::finish_int", align 8
  store ptr @clo.const.34, ptr @"var.lexer::scan_radix_rest", align 8
  store ptr @clo.const.35, ptr @"var.lexer::finish_float", align 8
  store ptr @clo.const.37, ptr @"var.lexer::scan_frac_opt", align 8
  store ptr @clo.const.38, ptr @"var.lexer::scan_exp_opt", align 8
  store ptr @clo.const.39, ptr @"var.lexer::scan_dec", align 8
  store ptr @clo.const.40, ptr @"var.lexer::scan_num", align 8
  store ptr @clo.const.36, ptr @"var.lexer::pk_off", align 8
  store ptr @clo.const.41, ptr @"var.lexer::scan_op", align 8
  store ptr @clo.const.42, ptr @"var.lexer::maybe_esc_adv", align 8
  store ptr @clo.const.43, ptr @"var.lexer::on_str_esc", align 8
  store ptr @clo.const.44, ptr @"var.lexer::scan_string_body", align 8
  store ptr @clo.const.45, ptr @"var.lexer::skip_multiline_ws", align 8
  store ptr @clo.const.46, ptr @"var.lexer::skip_eol_comment", align 8
  store ptr @clo.const.48, ptr @"var.lexer::check_multiline_str", align 8
  store ptr @clo.const.49, ptr @"var.lexer::adv_to", align 8
  store ptr @clo.const.50, ptr @"var.lexer::scan_next_str_part", align 8
  store ptr @clo.const.51, ptr @"var.lexer::concat_multiline_str", align 8
  store ptr @clo.const.52, ptr @"var.lexer::is_rune_forbidden_ws", align 8
  store ptr @clo.const.53, ptr @"var.lexer::scan_rune", align 8
  store ptr @clo.const.55, ptr @"var.lexer::skip_line_comment", align 8
  store ptr @clo.const.56, ptr @"var.lexer::skip_block_comment", align 8
  store ptr @clo.const.58, ptr @"var.lexer::scan_hash_word", align 8
  store ptr @clo.const.59, ptr @"var.lexer::scan_qp_body", align 8
  store ptr @clo.const.60, ptr @"var.lexer::scan_quoted_path", align 8
  store ptr @clo.const.61, ptr @"var.lexer::is_path_rune", align 8
  store ptr @clo.const.63, ptr @"var.lexer::scan_bare_path", align 8
  store ptr @clo.const.62, ptr @"var.lexer::scan_use_args", align 8
  store ptr @clo.const.67, ptr @"var.lexer::scan_use_directive", align 8
  store ptr @clo.const.64, ptr @"var.lexer::skip_ws", align 8
  store ptr @clo.const.68, ptr @"var.lexer::pragma_int_fail", align 8
  store ptr @clo.const.69, ptr @"var.lexer::pragma_float_fail", align 8
  store ptr @clo.const.76, ptr @"var.lexer::scan_pragma", align 8
  store ptr @clo.const.75, ptr @"var.lexer::scan_pragma_parens", align 8
  store ptr @clo.const.72, ptr @"var.lexer::pragma_fp_fail", align 8
  store ptr @clo.const.73, ptr @"var.lexer::pragma_swizzle_fail", align 8
  store ptr @clo.const.77, ptr @"var.lexer::scan_directive", align 8
  store ptr @clo.const.78, ptr @"var.lexer::scan_hash_name", align 8
  store ptr @clo.const.79, ptr @"var.lexer::scan_hash", align 8
  store ptr @clo.const.47, ptr @"var.lexer::stack_top", align 8
  store ptr @clo.const.80, ptr @"var.lexer::stack_top_has_inline", align 8
  store ptr @clo.const.10, ptr @"var.lexer::stack_mark_inline", align 8
  store ptr @clo.const.81, ptr @"var.lexer::stack_clear_inline", align 8
  store ptr @clo.const.82, ptr @"var.lexer::stack_pop", align 8
  store ptr @clo.const.83, ptr @"var.lexer::stack_append", align 8
  store ptr @clo.const.84, ptr @"var.lexer::stack_overwrite", align 8
  store ptr @clo.const.85, ptr @"var.lexer::stack_push", align 8
  store ptr @clo.const.86, ptr @"var.lexer::queue_dedent", align 8
  store ptr @clo.const.87, ptr @"var.lexer::queue_indent", align 8
  store ptr @clo.const.74, ptr @"var.lexer::take_queued", align 8
  store ptr @clo.const.88, ptr @"var.lexer::count_indent", align 8
  store ptr @clo.const.89, ptr @"var.lexer::drain_to", align 8
  store ptr @clo.const.109, ptr @"var.lexer::layout", align 8
  store ptr @clo.const.108, ptr @"var.lexer::line_token", align 8
  store ptr @clo.const.90, ptr @"var.lexer::skip_blank", align 8
  store ptr @clo.const.107, ptr @"var.lexer::layout_step", align 8
  store ptr @clo.const.66, ptr @"var.lexer::skip_hws", align 8
  store ptr @clo.const.91, ptr @"var.lexer::flush_indents", align 8
  store ptr @clo.const.94, ptr @"var.lexer::nl_tok", align 8
  store ptr @clo.const.103, ptr @"var.lexer::eof_tok", align 8
  store ptr @clo.const.96, ptr @"var.lexer::scan_delim", align 8
  store ptr @clo.const.97, ptr @"var.lexer::scan_ident", align 8
  store ptr @clo.const.95, ptr @"var.lexer::scan_intrinsic", align 8
  store ptr @clo.const.92, ptr @"var.lexer::comment_block", align 8
  store ptr @clo.const.93, ptr @"var.lexer::comment_line", align 8
  store ptr @clo.const.106, ptr @"var.lexer::next_tok", align 8
  store ptr @clo.const.110, ptr @"var.lexer::count_leading_indent", align 8
  store ptr @clo.const.98, ptr @"var.lexer::scan_str_expr", align 8
  store ptr @clo.const.99, ptr @"var.lexer::emit_interp_tokens", align 8
  store ptr @clo.const.101, ptr @"var.lexer::scan_single_string", align 8
  store ptr @clo.const.100, ptr @"var.lexer::scan_multiline_string", align 8
  store ptr @clo.const.102, ptr @"var.lexer::scan_string", align 8
  store ptr @clo.const.105, ptr @"var.lexer::dispatch_bol", align 8
  store ptr @clo.const.104, ptr @"var.lexer::dispatch_scan", align 8
  store ptr @clo.const.112, ptr @"var.lexer::show", align 8
  store ptr @clo.const.111, ptr @"var.lexer::kind_name", align 8
  ret void
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

define ptr @"lexer::lex_init"(ptr %0) #3 {
entry:
  store i1 false, ptr @var.cur_lex_failed, align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.new3, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %0, ptr %rec.alloc, align 8
  %rec.fld10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 1, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 1, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 1, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 0, ptr %rec.fld14, align 8
  %rec.fld15 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store ptr %a.new, ptr %rec.fld15, align 8
  %rec.fld16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 1, ptr %rec.fld16, align 8
  %rec.fld17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store ptr %a.new3, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld18, align 8
  %rec.fld19 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 10
  store i1 false, ptr %rec.fld19, align 1
  %rec.fld20 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 11
  store ptr @str.0.struct, ptr %rec.fld20, align 8
  %rec.fld21 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 12
  store ptr @str.0.struct, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 13
  store i64 0, ptr %rec.fld22, align 8
  %rec.fld23 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 14
  store i64 0, ptr %rec.fld23, align 8
  %fld.load = load ptr, ptr %rec.fld15, align 8
  %a.null = icmp eq ptr %fld.load, null
  br i1 %a.null, label %a.create, label %a.check

a.create:                                         ; preds = %entry
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 24)
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 128)
  store i64 0, ptr %a.create26, align 8
  %a.data.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 1
  store ptr %a.buf28, ptr %a.data.gep30, align 8
  %a.cap.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 2
  store i64 16, ptr %a.cap.gep31, align 8
  br label %a.check

a.check:                                          ; preds = %entry, %a.create
  %var.st.0 = phi ptr [ %a.create26, %a.create ], [ %fld.load, %entry ]
  %a.len32 = load i64, ptr %var.st.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.st.0, i32 0, i32 2
  %a.cap33 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len32, %a.cap33
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.st.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.st.0, i32 0, i32 1
  %a.cur.data34 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len35 = load i64, ptr %var.st.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data34, i64 %a.cur.len35
  store i64 0, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len35, 1
  store i64 %a.next.len, ptr %var.st.0, align 8
  ret ptr %rec.alloc
}

define internal void @dva_array_grow(ptr %0) #3 {
entry:
  %a.len1 = load i64, ptr %0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.cap2, i64 2)
  %prod = extractvalue { i64, i1 } %a.cap24, 0
  %ovf = extractvalue { i64, i1 } %a.cap24, 1
  br i1 %ovf, label %arr_overflow_abort, label %a.cap25

a.cap25:                                          ; preds = %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  call void @dva_abort_arr_overflow_msg()
  unreachable

a.grow.bytes8:                                    ; preds = %a.cap25
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  store ptr %a.new.buf, ptr %a.data, align 8
  store i64 %a.new.cap, ptr %a.cap, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  call void @dva_abort_arr_overflow_msg()
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define void @"lexer::clone_stack"(ptr %0, ptr %1, i64 %2, i64 %3) #3 {
entry:
  %cmptmp = icmp slt i64 %3, %2
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.rd.check

choice.exit:                                      ; preds = %a.store, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.rd.check

a.rd.check:                                       ; preds = %choice.then, %a.create
  %var.src.0 = phi ptr [ %a.create3, %a.create ], [ %0, %choice.then ]
  %a.rd.len6 = load i64, ptr %var.src.0, align 8
  %a.rd.ge0 = icmp sge i64 %3, 0
  %a.rd.lt = icmp slt i64 %3, %a.rd.len6
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.src.0, i32 0, i32 1
  %a.rd.data7 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data7, i64 %3
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 56)
  store i64 4011, ptr %err.alloc10, align 8
  %err.msg.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 157, ptr %err.line.gep14, align 8
  %err.col.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 4
  store i64 25, ptr %err.col.gep15, align 8
  %err.ctx.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 5
  store i64 %3, ptr %err.ctx.gep16, align 8
  %err.ctx1.gep18 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 1
  store i64 %a.rd.len6, ptr %err.ctx1.gep18, align 8
  %err.p2i19 = ptrtoint ptr %err.alloc10 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i19, %a.rd.err.oob ]
  %a.rd.pay. = select i1 %a.rd.tag, i64 %a.rd.pay, i64 0
  %a.null27 = icmp eq ptr %1, null
  br i1 %a.null27, label %a.create28, label %a.check

a.create28:                                       ; preds = %a.rd.done
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 128)
  store i64 0, ptr %a.create31, align 8
  %a.data.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 1
  store ptr %a.buf33, ptr %a.data.gep35, align 8
  %a.cap.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 2
  store i64 16, ptr %a.cap.gep36, align 8
  br label %a.check

a.check:                                          ; preds = %a.rd.done, %a.create28
  %var.dst.0 = phi ptr [ %a.create31, %a.create28 ], [ %1, %a.rd.done ]
  %a.len38 = load i64, ptr %var.dst.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.dst.0, i32 0, i32 2
  %a.cap39 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len38, %a.cap39
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.dst.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.dst.0, i32 0, i32 1
  %a.cur.data40 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len41 = load i64, ptr %var.dst.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data40, i64 %a.cur.len41
  store i64 %a.rd.pay., ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len41, 1
  store i64 %a.next.len, ptr %var.dst.0, align 8
  %addtmp = add i64 %3, 1
  call void @"lexer::clone_stack"(ptr %var.src.0, ptr %var.dst.0, i64 %2, i64 %addtmp)
  br label %choice.exit
}

define void @"lexer::clone_queue"(ptr %0, ptr %1, i64 %2, i64 %3) #3 {
entry:
  %cmptmp = icmp slt i64 %3, %2
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.rd.check

choice.exit:                                      ; preds = %a.store, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.rd.check

a.rd.check:                                       ; preds = %choice.then, %a.create
  %var.src.0 = phi ptr [ %a.create3, %a.create ], [ %0, %choice.then ]
  %a.rd.len6 = load i64, ptr %var.src.0, align 8
  %a.rd.ge0 = icmp sge i64 %3, 0
  %a.rd.lt = icmp slt i64 %3, %a.rd.len6
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.src.0, i32 0, i32 1
  %a.rd.data7 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data7, i64 %3
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 56)
  store i64 4011, ptr %err.alloc10, align 8
  %err.msg.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 164, ptr %err.line.gep14, align 8
  %err.col.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 4
  store i64 23, ptr %err.col.gep15, align 8
  %err.ctx.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 5
  store i64 %3, ptr %err.ctx.gep16, align 8
  %err.ctx1.gep18 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 1
  store i64 %a.rd.len6, ptr %err.ctx1.gep18, align 8
  %err.p2i19 = ptrtoint ptr %err.alloc10 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i19, %a.rd.err.oob ]
  br i1 %a.rd.tag, label %unwrap.pos.164, label %unwrap.abort.164

unwrap.pos.164:                                   ; preds = %a.rd.done
  %a.null32 = icmp eq ptr %1, null
  br i1 %a.null32, label %a.create33, label %a.check

unwrap.abort.164:                                 ; preds = %a.rd.done
  %4 = call i64 @write(i32 2, ptr @expect.reason.165, i64 20)
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep21, align 8
  %err.file.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep22, align 8
  %err.line.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep23, align 8
  %err.col.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep24, align 8
  %err.msg.len25 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len26 = and i64 %err.msg.len25, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len26 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data27 = load ptr, ptr %err.msg.data, align 8
  %err.file.len28 = load i64, ptr %err.file.struct, align 8
  %err.file.len29 = and i64 %err.file.len28, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len29 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data30 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.164
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.164
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data27, i32 %err.file.len32, ptr %err.file.data30, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create33:                                       ; preds = %unwrap.pos.164
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 24)
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 128)
  store i64 0, ptr %a.create36, align 8
  %a.data.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create36, i32 0, i32 1
  store ptr %a.buf38, ptr %a.data.gep40, align 8
  %a.cap.gep41 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create36, i32 0, i32 2
  store i64 16, ptr %a.cap.gep41, align 8
  br label %a.check

a.check:                                          ; preds = %unwrap.pos.164, %a.create33
  %var.dst.0 = phi ptr [ %a.create36, %a.create33 ], [ %1, %unwrap.pos.164 ]
  %a.len43 = load i64, ptr %var.dst.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.dst.0, i32 0, i32 2
  %a.cap44 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len43, %a.cap44
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.dst.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.dst.0, i32 0, i32 1
  %a.cur.data45 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len46 = load i64, ptr %var.dst.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data45, i64 %a.cur.len46
  store i64 %a.rd.pay, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len46, 1
  store i64 %a.next.len, ptr %var.dst.0, align 8
  %addtmp = add i64 %3, 1
  call void @"lexer::clone_queue"(ptr %var.src.0, ptr %var.dst.0, i64 %2, i64 %addtmp)
  br label %choice.exit
}

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define ptr @"lexer::clone_lx"(ptr %0) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %fld.gep11 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %fld.gep18 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 7
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 128)
  store i64 0, ptr %a.new21, align 8
  %a.data.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new21, i32 0, i32 1
  store ptr %a.buf23, ptr %a.data.gep25, align 8
  %a.cap.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new21, i32 0, i32 2
  store i64 16, ptr %a.cap.gep26, align 8
  %fld.gep28 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 9
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %fld.gep31 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 10
  %fld.load32 = load i1, ptr %fld.gep31, align 1
  %fld.gep34 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 11
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %fld.gep37 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 12
  %fld.load38 = load ptr, ptr %fld.gep37, align 8
  %fld.gep40 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 13
  %fld.load41 = load i64, ptr %fld.gep40, align 8
  %fld.gep43 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 14
  %fld.load44 = load i64, ptr %fld.gep43, align 8
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %fld.load, ptr %rec.alloc, align 8
  %rec.fld46 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %fld.load3, ptr %rec.fld46, align 8
  %rec.fld47 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load6, ptr %rec.fld47, align 8
  %rec.fld48 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load9, ptr %rec.fld48, align 8
  %rec.fld49 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load12, ptr %rec.fld49, align 8
  %rec.fld50 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load15, ptr %rec.fld50, align 8
  %rec.fld51 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store ptr %a.new, ptr %rec.fld51, align 8
  %rec.fld52 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %fld.load19, ptr %rec.fld52, align 8
  %rec.fld53 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store ptr %a.new21, ptr %rec.fld53, align 8
  %rec.fld54 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 %fld.load29, ptr %rec.fld54, align 8
  %rec.fld55 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 10
  store i1 %fld.load32, ptr %rec.fld55, align 1
  %rec.fld56 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 11
  store ptr %fld.load35, ptr %rec.fld56, align 8
  %rec.fld57 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 12
  store ptr %fld.load38, ptr %rec.fld57, align 8
  %rec.fld58 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 13
  store i64 %fld.load41, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 14
  store i64 %fld.load44, ptr %rec.fld59, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 6
  %fld.load62 = load ptr, ptr %fld.gep61, align 8
  %fld.load65 = load ptr, ptr %rec.fld51, align 8
  %fld.load68 = load i64, ptr %fld.gep18, align 8
  call void @"lexer::clone_stack"(ptr %fld.load62, ptr %fld.load65, i64 %fld.load68, i64 0)
  %fld.gep70 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 8
  %fld.load71 = load ptr, ptr %fld.gep70, align 8
  %fld.load74 = load ptr, ptr %rec.fld53, align 8
  %a.len.query78 = load i64, ptr %fld.load71, align 8
  call void @"lexer::clone_queue"(ptr %fld.load71, ptr %fld.load74, i64 %a.len.query78, i64 0)
  ret ptr %rec.alloc
}

define i32 @"lexer::pk"(ptr %0, i64 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, %1
  %fld.load5 = load ptr, ptr %0, align 8
  %str.len.query6 = load i64, ptr %fld.load5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %subtmp = sub nsw i64 %str.len.query7, 1
  %cmptmp = icmp sle i64 %addtmp, %subtmp
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res = call i32 @"unicode::decode_rune"(ptr %fld.load5, i64 %addtmp)
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then
  %choice.res = phi i32 [ %call.res, %choice.then ], [ 0, %entry ]
  ret i32 %choice.res
}

declare i32 @"unicode::decode_rune"(ptr, i64) #3

define i1 @"lexer::is_nl"(i32 %0) #3 {
entry:
  %val.match = icmp eq i32 %0, 10
  ret i1 %val.match
}

define i32 @"lexer::adv"(ptr %0, i32 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %coerce.sext = sext i32 %1 to i64
  %r.cmp1 = icmp slt i64 %coerce.sext, 128
  %r.cmp2 = icmp slt i64 %coerce.sext, 2048
  %r.cmp3 = icmp slt i64 %coerce.sext, 65536
  %r.w3 = select i1 %r.cmp3, i64 3, i64 4
  %r.w2 = select i1 %r.cmp2, i64 2, i64 %r.w3
  %r.width = select i1 %r.cmp1, i64 1, i64 %r.w2
  %addtmp = add i64 %fld.load, %r.width
  store i64 %addtmp, ptr %fld.gep, align 8
  %call.res = call i1 @"lexer::is_nl"(i32 %1)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %addtmp9 = add i64 %fld.load8, 1
  store i64 %addtmp9, ptr %fld.gep7, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  store i64 1, ptr %fld.gep12, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %fld.gep15 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load16 = load i64, ptr %fld.gep15, align 8
  %addtmp17 = add i64 %fld.load16, 1
  store i64 %addtmp17, ptr %fld.gep15, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  ret i32 %1
}

define i1 @"lexer::is_ws"(i32 %0) #3 {
entry:
  switch i32 %0, label %choice.next [
    i32 32, label %choice.exit
    i32 13, label %choice.exit
    i32 10, label %choice.exit
    i32 9, label %choice.exit
  ]

choice.exit:                                      ; preds = %entry, %entry, %entry, %entry, %choice.next
  %choice.res = phi i1 [ false, %choice.next ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ]
  ret i1 %choice.res

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"lexer::has_more_on_line"(ptr %0) #3 {
entry:
  br label %loop.header.166

loop.header.166:                                  ; preds = %choice.then, %entry
  %"var.off'.0" = phi i64 [ 0, %entry ], [ %addtmp, %choice.then ]
  %loop.idx.166.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then ]
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 %"var.off'.0")
  switch i32 %call.res, label %choice.else [
    i32 32, label %choice.then
    i32 9, label %choice.then
  ]

choice.then:                                      ; preds = %loop.header.166, %loop.header.166
  %addtmp = add i64 %"var.off'.0", 1
  %loop.next = add i64 %loop.idx.166.0, 1
  br label %loop.header.166

choice.else:                                      ; preds = %loop.header.166
  %call.res8 = call i32 @"lexer::pk"(ptr %0, i64 %"var.off'.0")
  switch i32 %call.res8, label %or.167.else [
    i32 13, label %or.167.exit
    i32 10, label %or.167.exit
    i32 0, label %or.167.exit
  ]

or.167.else:                                      ; preds = %choice.else
  %coerce.sext = sext i32 %call.res8 to i64
  %cmptmp = icmp eq i64 %coerce.sext, 47
  br i1 %cmptmp, label %and.168.then, label %or.167.exit

or.167.exit:                                      ; preds = %choice.else, %choice.else, %choice.else, %and.168.then, %or.167.else
  %or.167.phi = phi i1 [ %cmptmp26, %and.168.then ], [ false, %or.167.else ], [ true, %choice.else ], [ true, %choice.else ], [ true, %choice.else ]
  %nottmp = xor i1 %or.167.phi, true
  ret i1 %nottmp

and.168.then:                                     ; preds = %or.167.else
  %addtmp23 = add i64 %"var.off'.0", 1
  %call.res24 = call i32 @"lexer::pk"(ptr %0, i64 %addtmp23)
  %coerce.sext25 = sext i32 %call.res24 to i64
  %cmptmp26 = icmp eq i64 %coerce.sext25, 47
  br label %or.167.exit
}

define i1 @"lexer::is_inline_block_opener"(ptr %0, ptr %1) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.next2 [
    i64 8, label %choice.exit
    i64 0, label %choice.case1
  ]

choice.exit:                                      ; preds = %str.eq.merge133, %entry, %choice.next2
  %choice.res141 = phi i1 [ false, %choice.next2 ], [ true, %entry ], [ %case.or140, %str.eq.merge133 ]
  ret i1 %choice.res141

choice.case1:                                     ; preds = %entry
  %eq.lhs.len10 = load i64, ptr %1, align 8
  %eq.lhs.len11 = and i64 %eq.lhs.len10, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len11, 1
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

choice.next2:                                     ; preds = %entry
  br label %choice.exit

str.eq.then:                                      ; preds = %choice.case1
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data13 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data13, ptr @str.4, i64 1)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %choice.case1, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %choice.case1 ]
  %eq.lhs.len15 = load i64, ptr %1, align 8
  %eq.lhs.len16 = and i64 %eq.lhs.len15, 281474976710655
  %eq.len19 = icmp eq i64 %eq.lhs.len16, 2
  br i1 %eq.len19, label %str.eq.then20, label %str.eq.merge22

str.eq.then20:                                    ; preds = %str.eq.merge
  %eq.lhs.data23 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data24 = load ptr, ptr %eq.lhs.data23, align 8
  %eq.memcmp26 = call i32 @memcmp(ptr %eq.lhs.data24, ptr @str.5, i64 2)
  %eq.cmp.zero27 = icmp eq i32 %eq.memcmp26, 0
  br label %str.eq.merge22

str.eq.merge22:                                   ; preds = %str.eq.merge, %str.eq.then20
  %str.eq.result28 = phi i1 [ %eq.cmp.zero27, %str.eq.then20 ], [ false, %str.eq.merge ]
  %case.or = or i1 %str.eq.result, %str.eq.result28
  %eq.lhs.len30 = load i64, ptr %1, align 8
  %eq.lhs.len31 = and i64 %eq.lhs.len30, 281474976710655
  %eq.len34 = icmp eq i64 %eq.lhs.len31, 2
  br i1 %eq.len34, label %str.eq.then35, label %str.eq.merge37

str.eq.then35:                                    ; preds = %str.eq.merge22
  %eq.lhs.data38 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data39 = load ptr, ptr %eq.lhs.data38, align 8
  %eq.memcmp41 = call i32 @memcmp(ptr %eq.lhs.data39, ptr @str.6, i64 2)
  %eq.cmp.zero42 = icmp eq i32 %eq.memcmp41, 0
  br label %str.eq.merge37

str.eq.merge37:                                   ; preds = %str.eq.merge22, %str.eq.then35
  %str.eq.result43 = phi i1 [ %eq.cmp.zero42, %str.eq.then35 ], [ false, %str.eq.merge22 ]
  %case.or44 = or i1 %case.or, %str.eq.result43
  %eq.lhs.len46 = load i64, ptr %1, align 8
  %eq.lhs.len47 = and i64 %eq.lhs.len46, 281474976710655
  %eq.len50 = icmp eq i64 %eq.lhs.len47, 3
  br i1 %eq.len50, label %str.eq.then51, label %str.eq.merge53

str.eq.then51:                                    ; preds = %str.eq.merge37
  %eq.lhs.data54 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data55 = load ptr, ptr %eq.lhs.data54, align 8
  %eq.memcmp57 = call i32 @memcmp(ptr %eq.lhs.data55, ptr @str.7, i64 3)
  %eq.cmp.zero58 = icmp eq i32 %eq.memcmp57, 0
  br label %str.eq.merge53

str.eq.merge53:                                   ; preds = %str.eq.merge37, %str.eq.then51
  %str.eq.result59 = phi i1 [ %eq.cmp.zero58, %str.eq.then51 ], [ false, %str.eq.merge37 ]
  %case.or60 = or i1 %case.or44, %str.eq.result59
  %eq.lhs.len62 = load i64, ptr %1, align 8
  %eq.lhs.len63 = and i64 %eq.lhs.len62, 281474976710655
  %eq.len66 = icmp eq i64 %eq.lhs.len63, 1
  br i1 %eq.len66, label %str.eq.then67, label %str.eq.merge69

str.eq.then67:                                    ; preds = %str.eq.merge53
  %eq.lhs.data70 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data71 = load ptr, ptr %eq.lhs.data70, align 8
  %eq.memcmp73 = call i32 @memcmp(ptr %eq.lhs.data71, ptr @str.8, i64 1)
  %eq.cmp.zero74 = icmp eq i32 %eq.memcmp73, 0
  br label %str.eq.merge69

str.eq.merge69:                                   ; preds = %str.eq.merge53, %str.eq.then67
  %str.eq.result75 = phi i1 [ %eq.cmp.zero74, %str.eq.then67 ], [ false, %str.eq.merge53 ]
  %case.or76 = or i1 %case.or60, %str.eq.result75
  %eq.lhs.len78 = load i64, ptr %1, align 8
  %eq.lhs.len79 = and i64 %eq.lhs.len78, 281474976710655
  %eq.len82 = icmp eq i64 %eq.lhs.len79, 2
  br i1 %eq.len82, label %str.eq.then83, label %str.eq.merge85

str.eq.then83:                                    ; preds = %str.eq.merge69
  %eq.lhs.data86 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data87 = load ptr, ptr %eq.lhs.data86, align 8
  %eq.memcmp89 = call i32 @memcmp(ptr %eq.lhs.data87, ptr @str.9, i64 2)
  %eq.cmp.zero90 = icmp eq i32 %eq.memcmp89, 0
  br label %str.eq.merge85

str.eq.merge85:                                   ; preds = %str.eq.merge69, %str.eq.then83
  %str.eq.result91 = phi i1 [ %eq.cmp.zero90, %str.eq.then83 ], [ false, %str.eq.merge69 ]
  %case.or92 = or i1 %case.or76, %str.eq.result91
  %eq.lhs.len94 = load i64, ptr %1, align 8
  %eq.lhs.len95 = and i64 %eq.lhs.len94, 281474976710655
  %eq.len98 = icmp eq i64 %eq.lhs.len95, 2
  br i1 %eq.len98, label %str.eq.then99, label %str.eq.merge101

str.eq.then99:                                    ; preds = %str.eq.merge85
  %eq.lhs.data102 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data103 = load ptr, ptr %eq.lhs.data102, align 8
  %eq.memcmp105 = call i32 @memcmp(ptr %eq.lhs.data103, ptr @str.10, i64 2)
  %eq.cmp.zero106 = icmp eq i32 %eq.memcmp105, 0
  br label %str.eq.merge101

str.eq.merge101:                                  ; preds = %str.eq.merge85, %str.eq.then99
  %str.eq.result107 = phi i1 [ %eq.cmp.zero106, %str.eq.then99 ], [ false, %str.eq.merge85 ]
  %case.or108 = or i1 %case.or92, %str.eq.result107
  %eq.lhs.len110 = load i64, ptr %1, align 8
  %eq.lhs.len111 = and i64 %eq.lhs.len110, 281474976710655
  %eq.len114 = icmp eq i64 %eq.lhs.len111, 3
  br i1 %eq.len114, label %str.eq.then115, label %str.eq.merge117

str.eq.then115:                                   ; preds = %str.eq.merge101
  %eq.lhs.data118 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data119 = load ptr, ptr %eq.lhs.data118, align 8
  %eq.memcmp121 = call i32 @memcmp(ptr %eq.lhs.data119, ptr @str.11, i64 3)
  %eq.cmp.zero122 = icmp eq i32 %eq.memcmp121, 0
  br label %str.eq.merge117

str.eq.merge117:                                  ; preds = %str.eq.merge101, %str.eq.then115
  %str.eq.result123 = phi i1 [ %eq.cmp.zero122, %str.eq.then115 ], [ false, %str.eq.merge101 ]
  %case.or124 = or i1 %case.or108, %str.eq.result123
  %eq.lhs.len126 = load i64, ptr %1, align 8
  %eq.lhs.len127 = and i64 %eq.lhs.len126, 281474976710655
  %eq.len130 = icmp eq i64 %eq.lhs.len127, 3
  br i1 %eq.len130, label %str.eq.then131, label %str.eq.merge133

str.eq.then131:                                   ; preds = %str.eq.merge117
  %eq.lhs.data134 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data135 = load ptr, ptr %eq.lhs.data134, align 8
  %eq.memcmp137 = call i32 @memcmp(ptr %eq.lhs.data135, ptr @str.12, i64 3)
  %eq.cmp.zero138 = icmp eq i32 %eq.memcmp137, 0
  br label %str.eq.merge133

str.eq.merge133:                                  ; preds = %str.eq.merge117, %str.eq.then131
  %str.eq.result139 = phi i1 [ %eq.cmp.zero138, %str.eq.then131 ], [ false, %str.eq.merge117 ]
  %case.or140 = or i1 %case.or124, %str.eq.result139
  br label %choice.exit
}

declare i32 @memcmp(ptr, ptr, i64) #3

define ptr @"lexer::mktok"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr %6) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 10
  %fld.load = load i1, ptr %fld.gep, align 1
  store i1 false, ptr %fld.gep, align 1
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res4 = call i1 @"lexer::is_ws"(i32 %call.res)
  %tag.id = load i64, ptr %1, align 8
  switch i64 %tag.id, label %choice.next7 [
    i64 17, label %choice.exit
    i64 23, label %choice.exit.fold.split
    i64 22, label %choice.exit.fold.split
    i64 20, label %choice.exit.fold.split
    i64 19, label %choice.exit.fold.split
    i64 14, label %choice.exit.fold.split
    i64 8, label %choice.exit.fold.split
    i64 7, label %choice.exit.fold.split
    i64 2, label %choice.exit.fold.split
    i64 0, label %choice.exit.fold.split
  ]

choice.exit.fold.split:                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.exit.fold.split, %choice.next7
  %choice.res = phi i1 [ false, %choice.next7 ], [ true, %entry ], [ %call.res4, %choice.exit.fold.split ]
  %call.res29 = call i1 @"lexer::is_inline_block_opener"(ptr %1, ptr %6)
  br i1 %call.res29, label %and.169.then, label %choice.exit32

choice.next7:                                     ; preds = %entry
  br label %choice.exit

and.169.then:                                     ; preds = %choice.exit
  %call.res31 = call i1 @"lexer::has_more_on_line"(ptr %0)
  br i1 %call.res31, label %choice.then, label %choice.exit32

choice.then:                                      ; preds = %and.169.then
  call void @"lexer::stack_mark_inline"(ptr %0)
  br label %choice.exit32

choice.exit32:                                    ; preds = %choice.exit, %choice.then, %and.169.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %1, ptr %rec.alloc, align 8
  %rec.fld42 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %2, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 %3, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %4, ptr %rec.fld44, align 8
  %rec.fld45 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store i64 %5, ptr %rec.fld45, align 8
  %rec.fld46 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 %fld.load, ptr %rec.fld46, align 1
  %rec.fld47 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store i1 %choice.res, ptr %rec.fld47, align 1
  %rec.fld48 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr %6, ptr %rec.fld48, align 8
  ret ptr %rec.alloc
}

define void @"lexer::stack_mark_inline"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load, 1
  %cmptmp = icmp sge i64 %subtmp, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 6
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load4, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.exit:                                      ; preds = %a.wr.done, %entry
  ret void

a.rd.check:                                       ; preds = %choice.then
  %a.rd.len6 = load i64, ptr %fld.load4, align 8
  %a.rd.lt = icmp slt i64 %subtmp, %a.rd.len6
  br i1 %a.rd.lt, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %a.rd.data7 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data7, i64 %subtmp
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 4011, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc9 = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 56)
  store i64 4011, ptr %err.alloc9, align 8
  %err.msg.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep11, align 8
  %err.file.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep12, align 8
  %err.line.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 3
  store i64 0, ptr %err.line.gep13, align 8
  %err.col.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 4
  store i64 0, ptr %err.col.gep14, align 8
  %err.ctx.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 5
  store i64 %subtmp, ptr %err.ctx.gep15, align 8
  %err.ctx1.gep17 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep15, i32 0, i32 1
  store i64 %a.rd.len6, ptr %err.ctx1.gep17, align 8
  %err.p2i18 = ptrtoint ptr %err.alloc9 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i18, %a.rd.err.oob ]
  %a.rd.pay. = select i1 %a.rd.tag, i64 %a.rd.pay, i64 0
  %fld.load27 = load ptr, ptr %fld.gep3, align 8
  %bortmp = or i64 %a.rd.pay., 65536
  %a.wr.nonnull = icmp ne ptr %fld.load27, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.rd.done
  %a.wr.len30 = load i64, ptr %fld.load27, align 8
  %a.wr.lt = icmp slt i64 %subtmp, %a.wr.len30
  br i1 %a.wr.lt, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load27, i32 0, i32 1
  %a.wr.data31 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data31, i64 %subtmp
  store i64 %bortmp, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.rd.done
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 56)
  store i64 4011, ptr %err.alloc33, align 8
  %err.msg.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep35, align 8
  %err.file.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep36, align 8
  %err.line.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 3
  store i64 0, ptr %err.line.gep37, align 8
  %err.col.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 4
  store i64 0, ptr %err.col.gep38, align 8
  %err.ctx.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep39, align 8
  %err.ctx1.gep41 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep39, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep41, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 56)
  store i64 4011, ptr %err.alloc43, align 8
  %err.msg.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep45, align 8
  %err.file.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep46, align 8
  %err.line.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 3
  store i64 0, ptr %err.line.gep47, align 8
  %err.col.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 4
  store i64 0, ptr %err.col.gep48, align 8
  %err.ctx.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 5
  store i64 %subtmp, ptr %err.ctx.gep49, align 8
  %err.ctx1.gep51 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep49, i32 0, i32 1
  store i64 %a.wr.len30, ptr %err.ctx1.gep51, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc33, %a.wr.err.null ], [ %err.alloc43, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.exit, label %choice.else53

choice.else53:                                    ; preds = %a.wr.done
  %err.code = load i64, ptr %a.wr.niche, align 8
  %err.msg.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep59, align 8
  %err.file.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep60, align 8
  %err.line.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep61, align 8
  %err.col.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep62, align 8
  %err.msg.len63 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len64 = and i64 %err.msg.len63, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len64 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data65 = load ptr, ptr %err.msg.data, align 8
  %err.file.len66 = load i64, ptr %err.file.struct, align 8
  %err.file.len67 = and i64 %err.file.len66, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len67 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data68 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %choice.else53
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else53
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data65, i32 %err.file.len32, ptr %err.file.data68, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable
}

define void @"lexer::lex_set_file"(ptr %0) #3 {
entry:
  store ptr %0, ptr @"var.lexer::cur_lex_file", align 8
  store i1 false, ptr @"var.lexer::cur_lex_failed", align 1
  ret void
}

define { i64, ptr } @"lexer::lex_get_file"() #3 {
entry:
  %var.load = load ptr, ptr @"var.lexer::cur_lex_file", align 8
  %ret.pack = load { i64, ptr }, ptr %var.load, align 8
  ret { i64, ptr } %ret.pack
}

define i1 @"lexer::lex_failed"() #3 {
entry:
  %var.load = load i1, ptr @"var.lexer::cur_lex_failed", align 1
  ret i1 %var.load
}

define i64 @"lexer::fail"(i64 %0, i64 %1, i64 %2, ptr %3) #3 {
entry:
  %call.res = call i1 @"diag::is_capturing"()
  br i1 %call.res, label %choice.then, label %b.buf.len5

choice.then:                                      ; preds = %entry
  store i1 true, ptr @"var.lexer::cur_lex_failed", align 1
  %var.load1 = load ptr, ptr @"var.lexer::cur_lex_file", align 8
  call void @"diag::record_diag"(i64 %0, ptr %var.load1, i64 %1, i64 %2, ptr %3, i1 false)
  ret i64 0

b.buf.len5:                                       ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 129)
  store i8 0, ptr %b.buf, align 1
  %var.load6 = load ptr, ptr @"var.lexer::cur_lex_file", align 8
  %eq.lhs.len7 = load i64, ptr %var.load6, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %b.buf.len5
  %eq.len = icmp eq i64 %eq.lhs.len8, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check:                                   ; preds = %b.buf.len5
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.lhs.data10 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data10, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then11, label %choice.exit13

choice.then11:                                    ; preds = %str.eq.merge
  %var.load14 = load ptr, ptr @"var.lexer::cur_lex_file", align 8
  %concat.lhs15 = load i64, ptr %var.load14, align 8
  %concat.lhs16 = and i64 %concat.lhs15, 281474976710655
  %str.tag17 = lshr i64 %concat.lhs15, 48
  %tag.immortal19 = icmp eq i64 %str.tag17, 0
  %active.gen20 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current21 = icmp eq i64 %str.tag17, %active.gen20
  %tag.fast.ok22 = or i1 %tag.immortal19, %tag.current21
  br i1 %tag.fast.ok22, label %str_ok18, label %tag.slow_check23

choice.exit13:                                    ; preds = %str.eq.merge, %str_ok18
  %choice.res = phi ptr [ %concat.str, %str_ok18 ], [ @str.0.struct, %str.eq.merge ]
  %b.str.len41 = load i64, ptr %choice.res, align 8
  %b.str.len42 = and i64 %b.str.len41, 281474976710655
  %str.tag43 = lshr i64 %b.str.len41, 48
  %tag.immortal45 = icmp eq i64 %str.tag43, 0
  %active.gen46 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current47 = icmp eq i64 %str.tag43, %active.gen46
  %tag.fast.ok48 = or i1 %tag.immortal45, %tag.current47
  br i1 %tag.fast.ok48, label %str_ok44, label %tag.slow_check49

str_ok18:                                         ; preds = %tag.slow_check23, %choice.then11
  %concat.lhs24 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %concat.lhs25 = load ptr, ptr %concat.lhs24, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs16, i64 1)
  %sum28 = extractvalue { i64, i1 } %concat.sum.len, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum28, i64 1)
  %sum33 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 %sum33)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs25, i64 %concat.lhs16, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 @str.13, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum28
  store i8 0, ptr %concat.nul, align 1
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum28, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit13

tag.slow_check23:                                 ; preds = %choice.then11
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag17)
  br label %str_ok18

str_ok44:                                         ; preds = %tag.slow_check49, %choice.exit13
  %call.res51 = call { i64, ptr } @"str::from_int"(i64 %1)
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  store { i64, ptr } %call.res51, ptr %ret.ub.alloc, align 8
  %b.str.len54 = load i64, ptr %ret.ub.alloc, align 8
  %b.str.len55 = and i64 %b.str.len54, 281474976710655
  %str.tag56 = lshr i64 %b.str.len54, 48
  %tag.immortal58 = icmp eq i64 %str.tag56, 0
  %active.gen59 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current60 = icmp eq i64 %str.tag56, %active.gen59
  %tag.fast.ok61 = or i1 %tag.immortal58, %tag.current60
  br i1 %tag.fast.ok61, label %str_ok57, label %tag.slow_check62

tag.slow_check49:                                 ; preds = %choice.exit13
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag43)
  br label %str_ok44

str_ok57:                                         ; preds = %tag.slow_check62, %str_ok44
  %b.add.len63 = add nuw nsw i64 %b.str.len42, %b.str.len55
  %b.add.len66 = add nuw nsw i64 %b.add.len63, 1
  %call.res68 = call { i64, ptr } @"str::from_int"(i64 %2)
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 16)
  store { i64, ptr } %call.res68, ptr %ret.ub.alloc70, align 8
  %b.str.len72 = load i64, ptr %ret.ub.alloc70, align 8
  %b.str.len73 = and i64 %b.str.len72, 281474976710655
  %str.tag74 = lshr i64 %b.str.len72, 48
  %tag.immortal76 = icmp eq i64 %str.tag74, 0
  %active.gen77 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current78 = icmp eq i64 %str.tag74, %active.gen77
  %tag.fast.ok79 = or i1 %tag.immortal76, %tag.current78
  br i1 %tag.fast.ok79, label %str_ok75, label %tag.slow_check80

tag.slow_check62:                                 ; preds = %str_ok44
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag56)
  br label %str_ok57

str_ok75:                                         ; preds = %tag.slow_check80, %str_ok57
  %b.add.len81 = add nuw nsw i64 %b.add.len66, %b.str.len73
  %b.add.len84 = add nuw nsw i64 %b.add.len81, 3
  %call.res86 = call { i64, ptr } @"str::from_int"(i64 %0)
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 16)
  store { i64, ptr } %call.res86, ptr %ret.ub.alloc88, align 8
  %b.str.len90 = load i64, ptr %ret.ub.alloc88, align 8
  %b.str.len91 = and i64 %b.str.len90, 281474976710655
  %str.tag92 = lshr i64 %b.str.len90, 48
  %tag.immortal94 = icmp eq i64 %str.tag92, 0
  %active.gen95 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current96 = icmp eq i64 %str.tag92, %active.gen95
  %tag.fast.ok97 = or i1 %tag.immortal94, %tag.current96
  br i1 %tag.fast.ok97, label %str_ok93, label %tag.slow_check98

tag.slow_check80:                                 ; preds = %str_ok57
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag74)
  br label %str_ok75

str_ok93:                                         ; preds = %tag.slow_check98, %str_ok75
  %b.add.len99 = add nuw nsw i64 %b.add.len84, %b.str.len91
  %b.add.len102 = add nuw nsw i64 %b.add.len99, 2
  %b.str.len105 = load i64, ptr %3, align 8
  %b.str.len106 = and i64 %b.str.len105, 281474976710655
  %str.tag107 = lshr i64 %b.str.len105, 48
  %tag.immortal109 = icmp eq i64 %str.tag107, 0
  %active.gen110 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current111 = icmp eq i64 %str.tag107, %active.gen110
  %tag.fast.ok112 = or i1 %tag.immortal109, %tag.current111
  br i1 %tag.fast.ok112, label %str_ok108, label %tag.slow_check113

tag.slow_check98:                                 ; preds = %str_ok75
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag92)
  br label %str_ok93

str_ok108:                                        ; preds = %tag.slow_check113, %str_ok93
  %b.add.len114 = add nuw nsw i64 %b.add.len102, %b.str.len106
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 0, i64 %b.add.len114)
  %sum116 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %b.need.grow = icmp slt i64 128, %sum116
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

tag.slow_check113:                                ; preds = %str_ok93
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag107)
  br label %str_ok108

b.grow2:                                          ; preds = %str_ok108
  %b.cap.need = icmp slt i64 256, %sum116
  %b.new.cap = select i1 %b.cap.need, i64 %sum116, i64 256
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 %sum124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.buf, i64 0, i1 false)
  store i8 0, ptr %b.new.buf2, align 1
  br label %b.grow_done

b.grow_done:                                      ; preds = %str_ok108, %b.grow2
  %builder.new.salloc.sroa.6.0 = phi ptr [ %b.new.buf2, %b.grow2 ], [ %b.buf, %str_ok108 ]
  %b.str.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %b.str.data131 = load ptr, ptr %b.str.data, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %builder.new.salloc.sroa.6.0, ptr align 1 %b.str.data131, i64 %b.str.len42, i1 false)
  %b.rec.dst132 = getelementptr i8, ptr %builder.new.salloc.sroa.6.0, i64 %b.str.len42
  %b.str.data133 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %b.str.data134 = load ptr, ptr %b.str.data133, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst132, ptr align 1 %b.str.data134, i64 %b.str.len55, i1 false)
  %b.rec.dst136 = getelementptr i8, ptr %builder.new.salloc.sroa.6.0, i64 %b.add.len63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst136, ptr align 1 @str.13, i64 1, i1 false)
  %b.rec.dst139 = getelementptr i8, ptr %builder.new.salloc.sroa.6.0, i64 %b.add.len66
  %b.str.data140 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc70, i32 0, i32 1
  %b.str.data141 = load ptr, ptr %b.str.data140, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst139, ptr align 1 %b.str.data141, i64 %b.str.len73, i1 false)
  %b.rec.dst143 = getelementptr i8, ptr %builder.new.salloc.sroa.6.0, i64 %b.add.len81
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst143, ptr align 1 @str.14, i64 3, i1 false)
  %b.rec.dst146 = getelementptr i8, ptr %builder.new.salloc.sroa.6.0, i64 %b.add.len84
  %b.str.data147 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc88, i32 0, i32 1
  %b.str.data148 = load ptr, ptr %b.str.data147, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst146, ptr align 1 %b.str.data148, i64 %b.str.len91, i1 false)
  %b.rec.dst150 = getelementptr i8, ptr %builder.new.salloc.sroa.6.0, i64 %b.add.len99
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst150, ptr align 1 @str.15, i64 2, i1 false)
  %b.rec.dst153 = getelementptr i8, ptr %builder.new.salloc.sroa.6.0, i64 %b.add.len102
  %b.str.data154 = getelementptr inbounds { i64, ptr }, ptr %3, i32 0, i32 1
  %b.str.data155 = load ptr, ptr %b.str.data154, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst153, ptr align 1 %b.str.data155, i64 %b.str.len106, i1 false)
  %b.rec.nul = getelementptr i8, ptr %builder.new.salloc.sroa.6.0, i64 %sum116
  store i8 0, ptr %b.rec.nul, align 1
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %b.grow_done
  %b.freeze.last.idx = sub nuw nsw i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %builder.new.salloc.sroa.6.0, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %builder.new.salloc.sroa.6.0, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %builder.new.salloc.sroa.6.0, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add nuw nsw i64 %sum116, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %builder.new.salloc.sroa.6.0, i64 %sum116, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %sum116
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data162 = phi ptr [ %builder.new.salloc.sroa.6.0, %b.grow_done ], [ %builder.new.salloc.sroa.6.0, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur163 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 16)
  %str.tag.gen165 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift166 = shl i64 %str.tag.gen165, 48
  %str.tagged.len167 = or i64 %sum116, %str.tag.shift166
  store i64 %str.tagged.len167, ptr %builder.freeze, align 8
  %str.build.data.gep168 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data162, ptr %str.build.data.gep168, align 8
  call void @"log::error"(ptr %builder.freeze)
  call void @dva_arena_destroy(ptr @global_arena)
  call void @exit(i32 1)
  unreachable
}

declare i1 @"diag::is_capturing"() #3

declare void @"diag::record_diag"(i64, ptr, i64, i64, ptr, i1) #3

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable
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
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_str_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable
}

declare { i64, ptr } @"str::from_int"(i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

declare void @"log::error"(ptr) #3

define i32 @"lexer::esc_val"(i32 %0) #3 {
entry:
  switch i32 %0, label %choice.next26 [
    i32 110, label %choice.exit
    i32 116, label %choice.case1
    i32 114, label %choice.case4
    i32 115, label %choice.case7
    i32 48, label %choice.case10
    i32 97, label %choice.case13
    i32 98, label %choice.case16
    i32 102, label %choice.case19
    i32 118, label %choice.case22
    i32 101, label %choice.case25
  ]

choice.exit:                                      ; preds = %entry, %choice.next26, %choice.case25, %choice.case22, %choice.case19, %choice.case16, %choice.case13, %choice.case10, %choice.case7, %choice.case4, %choice.case1
  %choice.res = phi i32 [ 9, %choice.case1 ], [ 13, %choice.case4 ], [ 32, %choice.case7 ], [ 0, %choice.case10 ], [ 7, %choice.case13 ], [ 8, %choice.case16 ], [ 12, %choice.case19 ], [ 11, %choice.case22 ], [ 27, %choice.case25 ], [ %0, %choice.next26 ], [ 10, %entry ]
  ret i32 %choice.res

choice.case1:                                     ; preds = %entry
  br label %choice.exit

choice.case4:                                     ; preds = %entry
  br label %choice.exit

choice.case7:                                     ; preds = %entry
  br label %choice.exit

choice.case10:                                    ; preds = %entry
  br label %choice.exit

choice.case13:                                    ; preds = %entry
  br label %choice.exit

choice.case16:                                    ; preds = %entry
  br label %choice.exit

choice.case19:                                    ; preds = %entry
  br label %choice.exit

choice.case22:                                    ; preds = %entry
  br label %choice.exit

choice.case25:                                    ; preds = %entry
  br label %choice.exit

choice.next26:                                    ; preds = %entry
  br label %choice.exit
}

define { i1, i64 } @"lexer::hex_digit_val"(i32 %0) #3 {
entry:
  %coerce.sext = sext i32 %0 to i64
  %cmptmp = icmp sge i64 %coerce.sext, 48
  %cmptmp2 = icmp sle i64 %coerce.sext, 57
  %and.171.phi = select i1 %cmptmp, i1 %cmptmp2, i1 false
  br i1 %and.171.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %subtmp = sub nuw nsw i64 %coerce.sext, 48
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp, 1
  br label %choice.exit3

choice.else:                                      ; preds = %entry
  %cmptmp9 = icmp sge i64 %coerce.sext, 97
  %cmptmp10 = icmp sle i64 %coerce.sext, 102
  %and.172.phi = select i1 %cmptmp9, i1 %cmptmp10, i1 false
  br i1 %and.172.phi, label %choice.then12, label %choice.else13

choice.exit3:                                     ; preds = %choice.then12, %choice.else13, %choice.then
  %choice.res34 = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %ram.pay17, %choice.then12 ], [ %choice.res32, %choice.else13 ]
  ret { i1, i64 } %choice.res34

choice.then12:                                    ; preds = %choice.else
  %subtmp16 = sub nuw nsw i64 %coerce.sext, 97
  %addtmp = add nuw nsw i64 %subtmp16, 10
  %ram.pay17 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %addtmp, 1
  br label %choice.exit3

choice.else13:                                    ; preds = %choice.else
  %cmptmp22 = icmp sge i64 %coerce.sext, 65
  %cmptmp23 = icmp sle i64 %coerce.sext, 70
  %and.173.phi = select i1 %cmptmp22, i1 %cmptmp23, i1 false
  %subtmp29 = sub nsw i64 %coerce.sext, 65
  %addtmp30 = add nsw i64 %subtmp29, 10
  %ram.pay31 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %addtmp30, 1
  %choice.res32 = select i1 %and.173.phi, { i1, i64 } %ram.pay31, { i1, i64 } zeroinitializer
  br label %choice.exit3
}

define i32 @"lexer::scan_esc_rune"(ptr %0) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res3 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  switch i32 %call.res, label %choice.next30 [
    i32 120, label %choice.case
    i32 117, label %choice.case29
  ]

choice.exit:                                      ; preds = %choice.then66, %loop.exit.174, %choice.case29, %choice.then13, %choice.then, %choice.case, %choice.next30
  %choice.res79 = phi i32 [ %call.res78, %choice.next30 ], [ 120, %choice.case ], [ %coerce.trunc, %choice.then13 ], [ 120, %choice.then ], [ 117, %choice.case29 ], [ %coerce.trunc74, %choice.then66 ], [ 117, %loop.exit.174 ]
  ret i32 %choice.res79

choice.case:                                      ; preds = %entry
  %call.res6 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res7 = call { i1, i64 } @"lexer::hex_digit_val"(i32 %call.res6)
  %ram.tag = extractvalue { i1, i64 } %call.res7, 0
  br i1 %ram.tag, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %choice.case
  %ram.pay = extractvalue { i1, i64 } %call.res7, 1
  %call.res10 = call i32 @"lexer::pk"(ptr %0, i64 1)
  %call.res11 = call { i1, i64 } @"lexer::hex_digit_val"(i32 %call.res10)
  %ram.tag12 = extractvalue { i1, i64 } %call.res11, 0
  br i1 %ram.tag12, label %choice.then13, label %choice.exit

choice.then13:                                    ; preds = %choice.then
  %ram.pay16 = extractvalue { i1, i64 } %call.res11, 1
  %call.res20 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res21 = call i32 @"lexer::adv"(ptr %0, i32 %call.res20)
  %call.res24 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res25 = call i32 @"lexer::adv"(ptr %0, i32 %call.res24)
  %shltmp = shl i64 %ram.pay, 4
  %bortmp = or i64 %shltmp, %ram.pay16
  %coerce.trunc = trunc i64 %bortmp to i32
  br label %choice.exit

choice.case29:                                    ; preds = %entry
  %call.res33 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res33 to i64
  %cmptmp = icmp eq i64 %coerce.sext, 123
  br i1 %cmptmp, label %choice.then34, label %choice.exit

choice.next30:                                    ; preds = %entry
  %call.res78 = call i32 @"lexer::esc_val"(i32 %call.res)
  br label %choice.exit

choice.then34:                                    ; preds = %choice.case29
  %call.res39 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res40 = call i32 @"lexer::adv"(ptr %0, i32 %call.res39)
  br label %loop.header.174

loop.header.174:                                  ; preds = %choice.then46, %choice.then34
  %"var.val'.0" = phi i64 [ 0, %choice.then34 ], [ %bortmp58, %choice.then46 ]
  %"var.ndig'.0" = phi i64 [ 0, %choice.then34 ], [ %addtmp, %choice.then46 ]
  %loop.idx.174.0 = phi i64 [ 0, %choice.then34 ], [ %loop.next, %choice.then46 ]
  %loop.cond = icmp slt i64 %loop.idx.174.0, 6
  br i1 %loop.cond, label %loop.body.174, label %loop.exit.174

loop.body.174:                                    ; preds = %loop.header.174
  %call.res43 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res44 = call { i1, i64 } @"lexer::hex_digit_val"(i32 %call.res43)
  %ram.tag45 = extractvalue { i1, i64 } %call.res44, 0
  br i1 %ram.tag45, label %choice.then46, label %loop.exit.174

loop.exit.174:                                    ; preds = %loop.body.174, %loop.header.174
  %call.res61 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext62 = sext i32 %call.res61 to i64
  %cmptmp63 = icmp eq i64 %coerce.sext62, 125
  %cmptmp65 = icmp sgt i64 %"var.ndig'.0", 0
  %and.175.phi = select i1 %cmptmp63, i1 %cmptmp65, i1 false
  br i1 %and.175.phi, label %choice.then66, label %choice.exit

choice.then46:                                    ; preds = %loop.body.174
  %ram.pay49 = extractvalue { i1, i64 } %call.res44, 1
  %call.res53 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res54 = call i32 @"lexer::adv"(ptr %0, i32 %call.res53)
  %shltmp56 = shl i64 %"var.val'.0", 4
  %bortmp58 = or i64 %shltmp56, %ram.pay49
  %addtmp = add i64 %"var.ndig'.0", 1
  %loop.next = add nsw i64 %loop.idx.174.0, 1
  br label %loop.header.174

choice.then66:                                    ; preds = %loop.exit.174
  %call.res71 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res72 = call i32 @"lexer::adv"(ptr %0, i32 %call.res71)
  %coerce.trunc74 = trunc i64 %"var.val'.0" to i32
  br label %choice.exit
}

define { i1, i64 } @"lexer::scan_esc_byte_opt"(ptr %0) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 120
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res2 = call i32 @"lexer::pk"(ptr %0, i64 1)
  %call.res3 = call { i1, i64 } @"lexer::hex_digit_val"(i32 %call.res2)
  %ram.tag = extractvalue { i1, i64 } %call.res3, 0
  br i1 %ram.tag, label %choice.then4, label %choice.exit

choice.exit:                                      ; preds = %choice.then11, %choice.then4, %choice.then, %entry
  %choice.res32 = phi { i1, i64 } [ zeroinitializer, %entry ], [ zeroinitializer, %choice.then ], [ %ram.pay30, %choice.then11 ], [ zeroinitializer, %choice.then4 ]
  ret { i1, i64 } %choice.res32

choice.then4:                                     ; preds = %choice.then
  %ram.pay = extractvalue { i1, i64 } %call.res3, 1
  %call.res8 = call i32 @"lexer::pk"(ptr %0, i64 2)
  %call.res9 = call { i1, i64 } @"lexer::hex_digit_val"(i32 %call.res8)
  %ram.tag10 = extractvalue { i1, i64 } %call.res9, 0
  br i1 %ram.tag10, label %choice.then11, label %choice.exit

choice.then11:                                    ; preds = %choice.then4
  %ram.pay14 = extractvalue { i1, i64 } %call.res9, 1
  %call.res18 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res19 = call i32 @"lexer::adv"(ptr %0, i32 %call.res18)
  %call.res22 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res23 = call i32 @"lexer::adv"(ptr %0, i32 %call.res22)
  %call.res26 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res27 = call i32 @"lexer::adv"(ptr %0, i32 %call.res26)
  %shltmp = shl i64 %ram.pay, 4
  %bortmp = or i64 %shltmp, %ram.pay14
  %ram.pay30 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %bortmp, 1
  br label %choice.exit
}

define { i64, ptr } @"lexer::decode_escapes"(ptr %0) #3 {
entry:
  %call.res = call ptr @"lexer::lex_init"(ptr %0)
  %str.len.query2 = load i64, ptr %0, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %str.len.query3, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  br label %loop.header.176

loop.header.176:                                  ; preds = %choice.exit17, %entry
  %builder.new.salloc.sroa.30.0 = phi i64 [ %str.len.query3, %entry ], [ %builder.new.salloc.sroa.30.1, %choice.exit17 ]
  %builder.new.salloc.sroa.15.0 = phi ptr [ %b.buf, %entry ], [ %builder.new.salloc.sroa.15.1, %choice.exit17 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %entry ], [ %builder.new.salloc.sroa.0.1, %choice.exit17 ]
  %loop.idx.176.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit17 ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %call.res, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.load8 = load ptr, ptr %call.res, align 8
  %str.len.query10 = load i64, ptr %fld.load8, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %cmptmp = icmp sge i64 %fld.load, %str.len.query11
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %loop.header.176
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %builder.new.salloc.sroa.15.0, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.exit:                                      ; preds = %loop.header.176
  %call.res13 = call i32 @"lexer::pk"(ptr %call.res, i64 0)
  %coerce.sext = sext i32 %call.res13 to i64
  %cmptmp15 = icmp eq i64 %coerce.sext, 92
  br i1 %cmptmp15, label %choice.then16, label %choice.else

choice.then16:                                    ; preds = %choice.exit
  %call.res20 = call i32 @"lexer::adv"(ptr %call.res, i32 %call.res13)
  %fld.load23 = load i64, ptr %fld.gep, align 8
  %fld.load26 = load ptr, ptr %call.res, align 8
  %str.len.query28 = load i64, ptr %fld.load26, align 8
  %str.len.query29 = and i64 %str.len.query28, 281474976710655
  %cmptmp30 = icmp slt i64 %fld.load23, %str.len.query29
  br i1 %cmptmp30, label %choice.then31, label %choice.else32

choice.else:                                      ; preds = %choice.exit
  %call.res128 = call i32 @"lexer::adv"(ptr %call.res, i32 %call.res13)
  %br.cmp1132 = icmp slt i64 %coerce.sext, 128
  %br.cmp2133 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3134 = icmp slt i64 %coerce.sext, 65536
  %br.w3135 = select i1 %br.cmp3134, i64 3, i64 4
  %br.w2136 = select i1 %br.cmp2133, i64 2, i64 %br.w3135
  %br.width137 = select i1 %br.cmp1132, i64 1, i64 %br.w2136
  %b.rn.new.len140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %br.width137)
  %sum141 = extractvalue { i64, i1 } %b.rn.new.len140, 0
  %ovf142 = extractvalue { i64, i1 } %b.rn.new.len140, 1
  br i1 %ovf142, label %str_overflow_abort144, label %b.rn.new.len143

choice.exit17:                                    ; preds = %b.push_done, %br.done.177, %b.grow_done94, %br.done.179
  %builder.new.salloc.sroa.30.1 = phi i64 [ %builder.new.salloc.sroa.30.7, %br.done.179 ], [ %builder.new.salloc.sroa.30.6, %b.grow_done94 ], [ %builder.new.salloc.sroa.30.4, %b.push_done ], [ %builder.new.salloc.sroa.30.5, %br.done.177 ]
  %builder.new.salloc.sroa.15.1 = phi ptr [ %builder.new.salloc.sroa.15.7, %br.done.179 ], [ %builder.new.salloc.sroa.15.6, %b.grow_done94 ], [ %builder.new.salloc.sroa.15.4, %b.push_done ], [ %builder.new.salloc.sroa.15.5, %br.done.177 ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum141, %br.done.179 ], [ %sum84, %b.grow_done94 ], [ %b.next.len, %b.push_done ], [ %sum60, %br.done.177 ]
  %loop.next = add i64 %loop.idx.176.0, 1
  br label %loop.header.176

choice.then31:                                    ; preds = %choice.then16
  %call.res35 = call { i1, i64 } @"lexer::scan_esc_byte_opt"(ptr %call.res)
  %ram.tag = extractvalue { i1, i64 } %call.res35, 0
  br i1 %ram.tag, label %choice.then36, label %choice.else37

choice.else32:                                    ; preds = %choice.then16
  %b.rn.new.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 1)
  %sum84 = extractvalue { i64, i1 } %b.rn.new.len83, 0
  %ovf85 = extractvalue { i64, i1 } %b.rn.new.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %b.rn.new.len86

choice.then36:                                    ; preds = %choice.then31
  %ram.pay = extractvalue { i1, i64 } %call.res35, 1
  %b.b.ge0 = icmp sge i64 %ram.pay, 0
  %b.b.le255 = icmp sle i64 %ram.pay, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else37:                                    ; preds = %choice.then31
  %call.res55 = call i32 @"lexer::scan_esc_rune"(ptr %call.res)
  %coerce.sext58 = sext i32 %call.res55 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext58, 128
  %br.cmp2 = icmp slt i64 %coerce.sext58, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext58, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %br.width)
  %sum60 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf61 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf61, label %str_overflow_abort63, label %b.rn.new.len62

b.byte_ok:                                        ; preds = %choice.then36
  %b.byte.i8 = trunc i64 %ram.pay to i8
  %b.needs.grow = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.30.0
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %choice.then36
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %builder.new.salloc.sroa.30.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum45 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf46 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf46, label %str_overflow_abort48, label %b.new.buf.len47

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len47
  %builder.new.salloc.sroa.30.4 = phi i64 [ %b.new.cap, %b.new.buf.len47 ], [ %builder.new.salloc.sroa.30.0, %b.byte_ok ]
  %builder.new.salloc.sroa.15.4 = phi ptr [ %b.new.buf, %b.new.buf.len47 ], [ %builder.new.salloc.sroa.15.0, %b.byte_ok ]
  %b.byte.gep = getelementptr i8, ptr %builder.new.salloc.sroa.15.4, i64 %builder.new.salloc.sroa.0.0
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul = getelementptr i8, ptr %builder.new.salloc.sroa.15.4, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  br label %choice.exit17

b.new.buf.len47:                                  ; preds = %b.grow
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum45)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %builder.new.salloc.sroa.15.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul, align 1
  br label %b.push_done

str_overflow_abort48:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len62:                                   ; preds = %choice.else37
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.30.0, %sum60
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort63:                             ; preds = %choice.else37
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.rn.new.len62
  %b.cap267 = mul i64 %builder.new.salloc.sroa.30.0, 2
  %b.cap.small68 = icmp slt i64 %b.cap267, 16
  %b.cap.grow = select i1 %b.cap.small68, i64 16, i64 %b.cap267
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum60
  %b.new.cap69 = select i1 %b.cap.need, i64 %sum60, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap69, i64 1)
  %sum72 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf73 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf73, label %str_overflow_abort75, label %b.new.buf.len274

b.grow_done:                                      ; preds = %b.rn.new.len62, %b.new.buf.len274
  %builder.new.salloc.sroa.30.5 = phi i64 [ %b.new.cap69, %b.new.buf.len274 ], [ %builder.new.salloc.sroa.30.0, %b.rn.new.len62 ]
  %builder.new.salloc.sroa.15.5 = phi ptr [ %b.new.buf2, %b.new.buf.len274 ], [ %builder.new.salloc.sroa.15.0, %b.rn.new.len62 ]
  %b.rn.dst = getelementptr i8, ptr %builder.new.salloc.sroa.15.5, i64 %builder.new.salloc.sroa.0.0
  br i1 %br.cmp1, label %br.b1.177, label %br.c2.177

b.new.buf.len274:                                 ; preds = %b.grow2
  %arena.cur77 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum72)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.15.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort75:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

br.b1.177:                                        ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext58 to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.177

br.c2.177:                                        ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.177, label %br.c3.177

br.b2.177:                                        ; preds = %br.c2.177
  %br.sh6 = lshr i64 %coerce.sext58, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext58, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.177

br.c3.177:                                        ; preds = %br.c2.177
  br i1 %br.cmp3, label %br.b3.177, label %br.b4.177

br.b3.177:                                        ; preds = %br.c3.177
  %br.sh12 = lshr i64 %coerce.sext58, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext58, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext58, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.177

br.b4.177:                                        ; preds = %br.c3.177
  %br.sh18 = lshr i64 %coerce.sext58, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext58, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext58, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext58, 63
  %br.b4.3 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.3 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4, align 1
  br label %br.done.177

br.done.177:                                      ; preds = %br.b4.177, %br.b3.177, %br.b2.177, %br.b1.177
  %br.nul = getelementptr i8, ptr %builder.new.salloc.sroa.15.5, i64 %sum60
  store i8 0, ptr %br.nul, align 1
  br label %choice.exit17

b.rn.new.len86:                                   ; preds = %choice.else32
  %b.need.grow91 = icmp slt i64 %builder.new.salloc.sroa.30.0, %sum84
  br i1 %b.need.grow91, label %b.grow292, label %b.grow_done94

str_overflow_abort87:                             ; preds = %choice.else32
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow292:                                        ; preds = %b.rn.new.len86
  %b.cap295 = mul i64 %builder.new.salloc.sroa.30.0, 2
  %b.cap.small96 = icmp slt i64 %b.cap295, 16
  %b.cap.grow97 = select i1 %b.cap.small96, i64 16, i64 %b.cap295
  %b.cap.need98 = icmp slt i64 %b.cap.grow97, %sum84
  %b.new.cap99 = select i1 %b.cap.need98, i64 %sum84, i64 %b.cap.grow97
  %b.new.buf.len2104 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap99, i64 1)
  %sum105 = extractvalue { i64, i1 } %b.new.buf.len2104, 0
  %ovf106 = extractvalue { i64, i1 } %b.new.buf.len2104, 1
  br i1 %ovf106, label %str_overflow_abort108, label %b.new.buf.len2107

b.grow_done94:                                    ; preds = %b.rn.new.len86, %b.new.buf.len2107
  %builder.new.salloc.sroa.30.6 = phi i64 [ %b.new.cap99, %b.new.buf.len2107 ], [ %builder.new.salloc.sroa.30.0, %b.rn.new.len86 ]
  %builder.new.salloc.sroa.15.6 = phi ptr [ %b.new.buf2111, %b.new.buf.len2107 ], [ %builder.new.salloc.sroa.15.0, %b.rn.new.len86 ]
  %b.rn.dst117 = getelementptr i8, ptr %builder.new.salloc.sroa.15.6, i64 %builder.new.salloc.sroa.0.0
  store i8 92, ptr %b.rn.dst117, align 1
  %br.nul124 = getelementptr i8, ptr %builder.new.salloc.sroa.15.6, i64 %sum84
  store i8 0, ptr %br.nul124, align 1
  br label %choice.exit17

b.new.buf.len2107:                                ; preds = %b.grow292
  %arena.cur110 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %sum105)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2111, ptr align 1 %builder.new.salloc.sroa.15.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul112 = getelementptr i8, ptr %b.new.buf2111, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul112, align 1
  br label %b.grow_done94

str_overflow_abort108:                            ; preds = %b.grow292
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len143:                                  ; preds = %choice.else
  %b.need.grow148 = icmp slt i64 %builder.new.salloc.sroa.30.0, %sum141
  br i1 %b.need.grow148, label %b.grow2149, label %b.grow_done151

str_overflow_abort144:                            ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2149:                                       ; preds = %b.rn.new.len143
  %b.cap2152 = mul i64 %builder.new.salloc.sroa.30.0, 2
  %b.cap.small153 = icmp slt i64 %b.cap2152, 16
  %b.cap.grow154 = select i1 %b.cap.small153, i64 16, i64 %b.cap2152
  %b.cap.need155 = icmp slt i64 %b.cap.grow154, %sum141
  %b.new.cap156 = select i1 %b.cap.need155, i64 %sum141, i64 %b.cap.grow154
  %b.new.buf.len2161 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap156, i64 1)
  %sum162 = extractvalue { i64, i1 } %b.new.buf.len2161, 0
  %ovf163 = extractvalue { i64, i1 } %b.new.buf.len2161, 1
  br i1 %ovf163, label %str_overflow_abort165, label %b.new.buf.len2164

b.grow_done151:                                   ; preds = %b.rn.new.len143, %b.new.buf.len2164
  %builder.new.salloc.sroa.30.7 = phi i64 [ %b.new.cap156, %b.new.buf.len2164 ], [ %builder.new.salloc.sroa.30.0, %b.rn.new.len143 ]
  %builder.new.salloc.sroa.15.7 = phi ptr [ %b.new.buf2168, %b.new.buf.len2164 ], [ %builder.new.salloc.sroa.15.0, %b.rn.new.len143 ]
  %b.rn.dst174 = getelementptr i8, ptr %builder.new.salloc.sroa.15.7, i64 %builder.new.salloc.sroa.0.0
  br i1 %br.cmp1132, label %br.b1.179, label %br.c2.179

b.new.buf.len2164:                                ; preds = %b.grow2149
  %arena.cur167 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 %sum162)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2168, ptr align 1 %builder.new.salloc.sroa.15.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul169 = getelementptr i8, ptr %b.new.buf2168, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul169, align 1
  br label %b.grow_done151

str_overflow_abort165:                            ; preds = %b.grow2149
  call void @dva_abort_str_overflow_msg()
  unreachable

br.b1.179:                                        ; preds = %b.grow_done151
  %br.b1.0175 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0175, ptr %b.rn.dst174, align 1
  br label %br.done.179

br.c2.179:                                        ; preds = %b.grow_done151
  br i1 %br.cmp2133, label %br.b2.179, label %br.c3.179

br.b2.179:                                        ; preds = %br.c2.179
  %br.sh6176 = lshr i64 %coerce.sext, 6
  %br.b2.0177 = or i64 %br.sh6176, 192
  %br.b2.0t178 = trunc i64 %br.b2.0177 to i8
  %br.m6179 = and i64 %coerce.sext, 63
  %br.b2.1180 = or i64 %br.m6179, 128
  %br.b2.1t181 = trunc i64 %br.b2.1180 to i8
  store i8 %br.b2.0t178, ptr %b.rn.dst174, align 1
  %br.dst1182 = getelementptr i8, ptr %b.rn.dst174, i64 1
  store i8 %br.b2.1t181, ptr %br.dst1182, align 1
  br label %br.done.179

br.c3.179:                                        ; preds = %br.c2.179
  br i1 %br.cmp3134, label %br.b3.179, label %br.b4.179

br.b3.179:                                        ; preds = %br.c3.179
  %br.sh12183 = lshr i64 %coerce.sext, 12
  %br.b3.0184 = or i64 %br.sh12183, 224
  %br.b3.0t185 = trunc i64 %br.b3.0184 to i8
  %br.sh6.3186 = lshr i64 %coerce.sext, 6
  %br.m6.3187 = and i64 %br.sh6.3186, 63
  %br.b3.1188 = or i64 %br.m6.3187, 128
  %br.b3.1t189 = trunc i64 %br.b3.1188 to i8
  %br.mend190 = and i64 %coerce.sext, 63
  %br.b3.2191 = or i64 %br.mend190, 128
  %br.b3.2t192 = trunc i64 %br.b3.2191 to i8
  store i8 %br.b3.0t185, ptr %b.rn.dst174, align 1
  %br.dst1.3193 = getelementptr i8, ptr %b.rn.dst174, i64 1
  store i8 %br.b3.1t189, ptr %br.dst1.3193, align 1
  %br.dst2.3194 = getelementptr i8, ptr %b.rn.dst174, i64 2
  store i8 %br.b3.2t192, ptr %br.dst2.3194, align 1
  br label %br.done.179

br.b4.179:                                        ; preds = %br.c3.179
  %br.sh18195 = lshr i64 %coerce.sext, 18
  %br.b4.0196 = or i64 %br.sh18195, 240
  %br.b4.0t197 = trunc i64 %br.b4.0196 to i8
  %br.sh12.4198 = lshr i64 %coerce.sext, 12
  %br.m12.4199 = and i64 %br.sh12.4198, 63
  %br.b4.1200 = or i64 %br.m12.4199, 128
  %br.b4.1t201 = trunc i64 %br.b4.1200 to i8
  %br.sh6.4202 = lshr i64 %coerce.sext, 6
  %br.m6.4203 = and i64 %br.sh6.4202, 63
  %br.b4.2204 = or i64 %br.m6.4203, 128
  %br.b4.2t205 = trunc i64 %br.b4.2204 to i8
  %br.mend4206 = and i64 %coerce.sext, 63
  %br.b4.3207 = or i64 %br.mend4206, 128
  %br.b4.3t208 = trunc i64 %br.b4.3207 to i8
  store i8 %br.b4.0t197, ptr %b.rn.dst174, align 1
  %br.dst1.4209 = getelementptr i8, ptr %b.rn.dst174, i64 1
  store i8 %br.b4.1t201, ptr %br.dst1.4209, align 1
  %br.dst2.4210 = getelementptr i8, ptr %b.rn.dst174, i64 2
  store i8 %br.b4.2t205, ptr %br.dst2.4210, align 1
  %br.dst3.4211 = getelementptr i8, ptr %b.rn.dst174, i64 3
  store i8 %br.b4.3t208, ptr %br.dst3.4211, align 1
  br label %br.done.179

br.done.179:                                      ; preds = %br.b4.179, %br.b3.179, %br.b2.179, %br.b1.179
  %br.nul212 = getelementptr i8, ptr %builder.new.salloc.sroa.15.7, i64 %sum141
  store i8 0, ptr %br.nul212, align 1
  br label %choice.exit17
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable
}

define i1 @"lexer::is_delim"(i32 %0) #3 {
entry:
  switch i32 %0, label %choice.next [
    i32 125, label %choice.exit
    i32 123, label %choice.exit
    i32 93, label %choice.exit
    i32 91, label %choice.exit
    i32 59, label %choice.exit
    i32 44, label %choice.exit
    i32 41, label %choice.exit
    i32 40, label %choice.exit
  ]

choice.exit:                                      ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %choice.next
  %choice.res = phi i1 [ false, %choice.next ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ]
  ret i1 %choice.res

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"lexer::is_id_start"(i32 %0) #3 {
entry:
  %call.res = call i1 @"unicode::is_id_start"(i32 %0)
  ret i1 %call.res
}

declare i1 @"unicode::is_id_start"(i32) #3

define i1 @"lexer::is_id_char"(i32 %0) #3 {
entry:
  %call.res = call i1 @"unicode::is_id_continue"(i32 %0)
  ret i1 %call.res
}

declare i1 @"unicode::is_id_continue"(i32) #3

define i1 @"lexer::is_special"(i32 %0) #3 {
entry:
  %val.match = icmp eq i32 %0, 34
  %val.match1 = icmp eq i32 %0, 39
  %case.or = or i1 %val.match, %val.match1
  %val.match2 = icmp eq i32 %0, 35
  %case.or3 = or i1 %case.or, %val.match2
  %val.match4 = icmp eq i32 %0, 0
  %case.or5 = or i1 %case.or3, %val.match4
  %call.res = call i1 @"lexer::is_delim"(i32 %0)
  %case.or6 = or i1 %case.or5, %call.res
  %call.res7 = call i1 @"lexer::is_ws"(i32 %0)
  %case.or8 = or i1 %case.or6, %call.res7
  %call.res9 = call i1 @"lexer::is_id_char"(i32 %0)
  %case.or10 = or i1 %case.or8, %call.res9
  %. = select i1 %case.or10, i1 false, i1 true
  ret i1 %.
}

define i64 @"lexer::scan_while"(ptr %0, ptr %1) #3 {
entry:
  br label %loop.header.180

loop.header.180:                                  ; preds = %choice.then7, %entry
  %loop.idx.180.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then7 ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.load3 = load ptr, ptr %0, align 8
  %str.len.query4 = load i64, ptr %fld.load3, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

loop.exit.180:                                    ; preds = %clo.merge, %str_ok
  %fld.load15 = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load15

str_ok:                                           ; preds = %tag.slow_check, %loop.header.180
  %cmptmp = icmp sge i64 %fld.load, %str.len.query5
  br i1 %cmptmp, label %loop.exit.180, label %choice.exit

tag.slow_check:                                   ; preds = %loop.header.180
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.exit:                                      ; preds = %str_ok
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %1, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

clo.cap:                                          ; preds = %choice.exit
  %clo.cap.res = call i1 %clo.fn.load(ptr %clo.env.load, i32 %call.res)
  br label %clo.merge

clo.plain:                                        ; preds = %choice.exit
  %clo.plain.res = call i1 %clo.fn.load(i32 %call.res)
  br label %clo.merge

clo.merge:                                        ; preds = %clo.plain, %clo.cap
  %clo.res = phi i1 [ %clo.cap.res, %clo.cap ], [ %clo.plain.res, %clo.plain ]
  br i1 %clo.res, label %choice.then7, label %loop.exit.180

choice.then7:                                     ; preds = %clo.merge
  %call.res11 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res12 = call i32 @"lexer::adv"(ptr %0, i32 %call.res11)
  %loop.next = add i64 %loop.idx.180.0, 1
  br label %loop.header.180
}

define i64 @"lexer::skip_digits"(ptr %0, i64 %1) #3 {
entry:
  %call.res = call i64 @"lexer::scan_while"(ptr %0, ptr @clo.const.26)
  ret i64 %call.res
}

define internal i1 @"$anon_fn.117"(i32 %0) #3 {
entry:
  %call.res = call i1 @"unicode::is_digit"(i32 %0)
  ret i1 %call.res
}

declare i1 @"unicode::is_digit"(i32) #3

define { i64, ptr } @"lexer::scan_id"(ptr %0, i64 %1) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query1 = load i64, ptr %fld.load, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  br label %loop.header.181

loop.header.181:                                  ; preds = %choice.then17, %entry
  %"var.i'.0" = phi i64 [ %fld.load5, %entry ], [ %addtmp, %choice.then17 ]
  %"var.ncol'.0" = phi i64 [ %fld.load8, %entry ], [ %addtmp22, %choice.then17 ]
  %loop.idx.181.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then17 ]
  %cmptmp = icmp sge i64 %"var.i'.0", %str.len.query2
  br i1 %cmptmp, label %loop.exit.181, label %choice.exit

loop.exit.181:                                    ; preds = %choice.exit, %loop.header.181
  br label %loop.header.182

choice.exit:                                      ; preds = %loop.header.181
  %fld.load13 = load ptr, ptr %0, align 8
  %call.res = call i32 @"unicode::decode_rune"(ptr %fld.load13, i64 %"var.i'.0")
  %call.res16 = call i1 @"lexer::is_id_char"(i32 %call.res)
  br i1 %call.res16, label %choice.then17, label %loop.exit.181

choice.then17:                                    ; preds = %choice.exit
  %coerce.sext = sext i32 %call.res to i64
  %r.cmp1 = icmp slt i64 %coerce.sext, 128
  %r.cmp2 = icmp slt i64 %coerce.sext, 2048
  %r.cmp3 = icmp slt i64 %coerce.sext, 65536
  %r.w3 = select i1 %r.cmp3, i64 3, i64 4
  %r.w2 = select i1 %r.cmp2, i64 2, i64 %r.w3
  %r.width = select i1 %r.cmp1, i64 1, i64 %r.w2
  %addtmp = add nsw i64 %"var.i'.0", %r.width
  %addtmp22 = add i64 %"var.ncol'.0", 1
  %loop.next = add i64 %loop.idx.181.0, 1
  br label %loop.header.181

loop.header.182:                                  ; preds = %choice.then40, %loop.exit.181
  %"var.i'.1" = phi i64 [ %"var.i'.0", %loop.exit.181 ], [ %addtmp44, %choice.then40 ]
  %"var.ncol'.1" = phi i64 [ %"var.ncol'.0", %loop.exit.181 ], [ %addtmp46, %choice.then40 ]
  %loop.idx.182.0 = phi i64 [ 0, %loop.exit.181 ], [ %loop.next48, %choice.then40 ]
  %cmptmp29 = icmp sge i64 %"var.i'.1", %str.len.query2
  br i1 %cmptmp29, label %loop.exit.182, label %choice.exit31

loop.exit.182:                                    ; preds = %choice.exit31, %loop.header.182
  store i64 %"var.i'.1", ptr %fld.gep4, align 8
  store i64 %"var.ncol'.1", ptr %fld.gep7, align 8
  %fld.load57 = load ptr, ptr %0, align 8
  %s.read.len58 = load i64, ptr %fld.load57, align 8
  %s.read.len59 = and i64 %s.read.len58, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load57, i32 0, i32 1
  %s.read.data60 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %1, 0
  %rel.start = add i64 %s.read.len59, %1
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %1
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len59
  %final.start = select i1 %start.gt.len, i64 %s.read.len59, i64 %c.start.0
  %end.is_neg = icmp slt i64 %"var.i'.1", 0
  %rel.end = add i64 %s.read.len59, %"var.i'.1"
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %"var.i'.1"
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len59
  %final.end = select i1 %end.gt.len, i64 %s.read.len59, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data60, i64 %final.start
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %view.len, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %view.data, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

choice.exit31:                                    ; preds = %loop.header.182
  %fld.load34 = load ptr, ptr %0, align 8
  %call.res36 = call i32 @"unicode::decode_rune"(ptr %fld.load34, i64 %"var.i'.1")
  %coerce.sext38 = sext i32 %call.res36 to i64
  %cmptmp39 = icmp eq i64 %coerce.sext38, 39
  br i1 %cmptmp39, label %choice.then40, label %loop.exit.182

choice.then40:                                    ; preds = %choice.exit31
  %addtmp44 = add nsw i64 %"var.i'.1", 1
  %addtmp46 = add i64 %"var.ncol'.1", 1
  %loop.next48 = add i64 %loop.idx.182.0, 1
  br label %loop.header.182
}

define i64 @"lexer::scan_int_suffix"(ptr %0, i64 %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr @str.16.struct, ptr %rec.alloc, align 8
  %rec.fld1 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr @str.17.struct, ptr %rec.fld1, align 8
  %rec.fld2 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.18.struct, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr @str.19.struct, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr @str.20.struct, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 5
  store ptr @str.21.struct, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr @str.22.struct, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.23.struct, ptr %rec.fld7, align 8
  br label %loop.header.183

loop.header.183:                                  ; preds = %choice.exit41, %entry
  %"var.got'.0" = phi i64 [ 0, %entry ], [ %"var.got'.1", %choice.exit41 ]
  %loop.idx.183.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit41 ]
  %loop.cond = icmp slt i64 %loop.idx.183.0, 8
  br i1 %loop.cond, label %loop.body.183, label %loop.exit.183

loop.body.183:                                    ; preds = %loop.header.183
  %rec.elem.gep = getelementptr ptr, ptr %rec.alloc, i64 %loop.idx.183.0
  %rec.elem.val = load ptr, ptr %rec.elem.gep, align 8
  %val.match = icmp eq i64 %"var.got'.0", 1
  br i1 %val.match, label %loop.exit.183, label %choice.next

loop.exit.183:                                    ; preds = %loop.body.183, %loop.header.183
  ret i64 %"var.got'.0"

choice.next:                                      ; preds = %loop.body.183
  %str.len.query10 = load i64, ptr %rec.elem.val, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, %str.len.query11
  %fld.load16 = load ptr, ptr %0, align 8
  %str.len.query18 = load i64, ptr %fld.load16, align 8
  %str.len.query19 = and i64 %str.len.query18, 281474976710655
  %cmptmp = icmp sle i64 %addtmp, %str.len.query19
  br i1 %cmptmp, label %and.184.then, label %choice.exit41

and.184.then:                                     ; preds = %choice.next
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %fld.load, 0
  %rel.start = add i64 %str.len.query19, %fld.load
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query19
  %final.start = select i1 %start.gt.len, i64 %str.len.query19, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add nsw i64 %str.len.query19, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %str.len.query19
  %final.end = select i1 %end.gt.len, i64 %str.len.query19, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data26, i64 %final.start
  %cmp.str38 = getelementptr inbounds { i64, ptr }, ptr %rec.elem.val, i32 0, i32 1
  %cmp.str39 = load ptr, ptr %cmp.str38, align 8
  %eq.len = icmp eq i64 %view.len, %str.len.query11
  br i1 %eq.len, label %str.eq.then, label %choice.exit41

str.eq.then:                                      ; preds = %and.184.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str39, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.exit41

choice.then:                                      ; preds = %str.eq.then
  %fld.load45 = load i64, ptr %fld.gep, align 8
  %addtmp47 = add i64 %fld.load45, %str.len.query11
  store i64 %addtmp47, ptr %fld.gep, align 8
  %fld.gep51 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load52 = load i64, ptr %fld.gep51, align 8
  %addtmp54 = add i64 %fld.load52, %str.len.query11
  store i64 %addtmp54, ptr %fld.gep51, align 8
  br label %choice.exit41

choice.exit41:                                    ; preds = %and.184.then, %choice.next, %choice.then, %str.eq.then
  %"var.got'.1" = phi i64 [ 1, %choice.then ], [ 0, %str.eq.then ], [ 0, %choice.next ], [ 0, %and.184.then ]
  %loop.next = add nsw i64 %loop.idx.183.0, 1
  br label %loop.header.183
}

define i64 @"lexer::scan_float_suffix"(ptr %0, i64 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 3
  %fld.load3 = load ptr, ptr %0, align 8
  %str.len.query4 = load i64, ptr %fld.load3, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %cmptmp = icmp sle i64 %addtmp, %str.len.query5
  br i1 %cmptmp, label %and.185.then, label %choice.else

and.185.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %fld.load, 0
  %rel.start = add i64 %str.len.query5, %fld.load
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query5
  %final.start = select i1 %start.gt.len, i64 %str.len.query5, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add nsw i64 %str.len.query5, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %str.len.query5
  %final.end = select i1 %end.gt.len, i64 %str.len.query5, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data11, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len19 = load i64, ptr %str.view, align 8
  %eq.lhs.len20 = and i64 %eq.lhs.len19, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len20, 3
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

str.eq.then:                                      ; preds = %and.185.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr @str.24, i64 3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %and.185.then, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %and.185.then ]
  %eq.lhs.len24 = load i64, ptr %str.view, align 8
  %eq.lhs.len25 = and i64 %eq.lhs.len24, 281474976710655
  %eq.len28 = icmp eq i64 %eq.lhs.len25, 3
  br i1 %eq.len28, label %str.eq.then29, label %str.eq.merge31

str.eq.then29:                                    ; preds = %str.eq.merge
  %eq.lhs.data33 = load ptr, ptr %str.build.data.gep, align 8
  %eq.memcmp35 = call i32 @memcmp(ptr %eq.lhs.data33, ptr @str.25, i64 3)
  %eq.cmp.zero36 = icmp eq i32 %eq.memcmp35, 0
  br label %str.eq.merge31

str.eq.merge31:                                   ; preds = %str.eq.merge, %str.eq.then29
  %str.eq.result37 = phi i1 [ %eq.cmp.zero36, %str.eq.then29 ], [ false, %str.eq.merge ]
  %case.or = or i1 %str.eq.result, %str.eq.result37
  br i1 %case.or, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge31
  %fld.load43 = load i64, ptr %fld.gep, align 8
  %addtmp44 = add i64 %fld.load43, 3
  store i64 %addtmp44, ptr %fld.gep, align 8
  %fld.gep48 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load49 = load i64, ptr %fld.gep48, align 8
  %addtmp50 = add i64 %fld.load49, 3
  store i64 %addtmp50, ptr %fld.gep48, align 8
  br label %choice.exit39

choice.else:                                      ; preds = %entry, %str.eq.merge31
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  switch i32 %call.res, label %choice.exit39 [
    i32 102, label %choice.case54
    i32 70, label %choice.case54
  ]

choice.exit39:                                    ; preds = %choice.else, %choice.case54, %choice.then
  %choice.res71 = phi i64 [ 1, %choice.then ], [ 1, %choice.case54 ], [ 0, %choice.else ]
  ret i64 %choice.res71

choice.case54:                                    ; preds = %choice.else, %choice.else
  %fld.load61 = load i64, ptr %fld.gep, align 8
  %addtmp62 = add i64 %fld.load61, 1
  store i64 %addtmp62, ptr %fld.gep, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  %addtmp68 = add i64 %fld.load67, 1
  store i64 %addtmp68, ptr %fld.gep66, align 8
  br label %choice.exit39
}

define i1 @"lexer::radix_ok"(i32 %0, i32 %1) #3 {
entry:
  %2 = sub i32 %1, 66
  %switch.and = and i32 %2, -33
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %3 = sub i32 %1, 79
  %switch.and44 = and i32 %3, -33
  %switch.selectcmp45 = icmp eq i32 %switch.and44, 0
  %4 = sub i32 %1, 88
  %switch.and46 = and i32 %4, -33
  %switch.selectcmp47 = icmp eq i32 %switch.and46, 0
  %coerce.sext = sext i32 %0 to i64
  %5 = sub i32 %0, 48
  %switch.and48 = and i32 %5, -2
  %switch.selectcmp49 = icmp eq i32 %switch.and48, 0
  %cmptmp = icmp sge i64 %coerce.sext, 48
  %cmptmp31 = icmp sle i64 %coerce.sext, 55
  %and.186.phi = select i1 %cmptmp, i1 %cmptmp31, i1 false
  %call.res = call i1 @"ascii::is_hex"(i64 %coerce.sext)
  %and.187.phi = select i1 %switch.selectcmp, i1 %switch.selectcmp49, i1 %switch.selectcmp
  %choice.res32.choice.res9 = select i1 %switch.selectcmp45, i1 %and.186.phi, i1 %switch.selectcmp45
  %or.188.phi = select i1 %and.187.phi, i1 %and.187.phi, i1 %choice.res32.choice.res9
  %call.res.choice.res17 = select i1 %switch.selectcmp47, i1 %call.res, i1 %switch.selectcmp47
  %or.190.phi = select i1 %or.188.phi, i1 %or.188.phi, i1 %call.res.choice.res17
  ret i1 %or.190.phi
}

declare i1 @"ascii::is_hex"(i64) #3

define i1 @"lexer::try_scan_repeat"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 1
  br label %loop.header.192

loop.header.192:                                  ; preds = %choice.then15, %entry
  %loop.idx.192.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then15 ]
  %"var.p'.0" = phi i64 [ %addtmp, %entry ], [ %addtmp18, %choice.then15 ]
  %fld.load4 = load ptr, ptr %0, align 8
  %str.len.query5 = load i64, ptr %fld.load4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %cmptmp = icmp sge i64 %"var.p'.0", %str.len.query6
  br i1 %cmptmp, label %loop.exit.192, label %choice.exit

loop.exit.192:                                    ; preds = %idx_ok, %loop.header.192
  %fld.load22 = load i64, ptr %fld.gep, align 8
  %addtmp23 = add i64 %fld.load22, 1
  %cmptmp24 = icmp sgt i64 %"var.p'.0", %addtmp23
  br i1 %cmptmp24, label %and.193.then, label %choice.exit52

choice.exit:                                      ; preds = %loop.header.192
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load4, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.p'.0", %str.len.query6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %"var.p'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ascii::is_digit"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then15, label %loop.exit.192

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then15:                                    ; preds = %idx_ok
  %addtmp18 = add nuw nsw i64 %"var.p'.0", 1
  %loop.next = add i64 %loop.idx.192.0, 1
  br label %loop.header.192

and.193.then:                                     ; preds = %loop.exit.192
  %fld.load28 = load ptr, ptr %0, align 8
  %str.len.query30 = load i64, ptr %fld.load28, align 8
  %str.len.query31 = and i64 %str.len.query30, 281474976710655
  %cmptmp32 = icmp slt i64 %"var.p'.0", %str.len.query31
  br i1 %cmptmp32, label %and.194.then, label %choice.exit52

and.194.then:                                     ; preds = %and.193.then
  %fld.load35 = load ptr, ptr %0, align 8
  %s.read.len37 = load i64, ptr %fld.load35, align 8
  %s.read.len38 = and i64 %s.read.len37, 281474976710655
  %s.read.data39 = getelementptr inbounds { i64, ptr }, ptr %fld.load35, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data39, align 8
  %idx.oob42 = icmp uge i64 %"var.p'.0", %s.read.len38
  br i1 %idx.oob42, label %idx_oob44, label %idx_ok43

idx_ok43:                                         ; preds = %and.194.then
  %s.byte.gep46 = getelementptr i8, ptr %s.read.data40, i64 %"var.p'.0"
  %s.byte47 = load i8, ptr %s.byte.gep46, align 1
  %s.byte.val48 = zext i8 %s.byte47 to i64
  %cmptmp49 = icmp eq i64 %s.byte.val48, 125
  br i1 %cmptmp49, label %choice.then50, label %choice.exit52

idx_oob44:                                        ; preds = %and.194.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then50:                                    ; preds = %idx_ok43
  %addtmp54 = add i64 %"var.p'.0", 1
  %fld.load57 = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %addtmp54, %fld.load57
  br label %loop.header.195

choice.exit52:                                    ; preds = %and.193.then, %loop.exit.192, %loop.header.195, %idx_ok43
  %choice.res = phi i1 [ false, %idx_ok43 ], [ true, %loop.header.195 ], [ false, %loop.exit.192 ], [ false, %and.193.then ]
  ret i1 %choice.res

loop.header.195:                                  ; preds = %loop.body.195, %choice.then50
  %loop.idx.195.0 = phi i64 [ 0, %choice.then50 ], [ %loop.next68, %loop.body.195 ]
  %loop.cond = icmp slt i64 %loop.idx.195.0, %subtmp
  br i1 %loop.cond, label %loop.body.195, label %choice.exit52

loop.body.195:                                    ; preds = %loop.header.195
  %call.res65 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res66 = call i32 @"lexer::adv"(ptr %0, i32 %call.res65)
  %loop.next68 = add i64 %loop.idx.195.0, 1
  br label %loop.header.195
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable
}

declare i1 @"ascii::is_digit"(i64) #3

define ptr @"lexer::finish_int"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i64 @"lexer::scan_int_suffix"(ptr %0, i64 0), !range !0
  %val.match = icmp eq i64 %call.res, 1
  br i1 %val.match, label %choice.exit, label %choice.next

choice.exit:                                      ; preds = %entry, %choice.next
  %choice.res = phi ptr [ %fld.load, %choice.next ], [ @str.0.struct, %entry ]
  %eq.lhs.len4 = load i64, ptr %choice.res, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, 0
  br i1 %eq.len, label %str.eq.then, label %choice.else

choice.next:                                      ; preds = %entry
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 11
  %fld.load = load ptr, ptr %fld.gep, align 8
  br label %choice.exit

str.eq.then:                                      ; preds = %choice.exit
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data7 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data7, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.then
  %fld.load11 = load ptr, ptr %0, align 8
  %s.read.len12 = load i64, ptr %fld.load11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load11, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %start.is_neg = icmp slt i64 %1, 0
  %rel.start = add i64 %s.read.len13, %1
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %1
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len13
  %final.start = select i1 %start.gt.len, i64 %s.read.len13, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load18, 0
  %rel.end = add i64 %s.read.len13, %fld.load18
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load18
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len13
  %final.end = select i1 %end.gt.len, i64 %s.read.len13, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit8

choice.else:                                      ; preds = %choice.exit, %str.eq.then
  %fld.load21 = load ptr, ptr %0, align 8
  %s.read.len23 = load i64, ptr %fld.load21, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data25 = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data25, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %start.is_neg31 = icmp slt i64 %1, 0
  %rel.start32 = add i64 %s.read.len24, %1
  %norm.start33 = select i1 %start.is_neg31, i64 %rel.start32, i64 %1
  %start.lt.034 = icmp slt i64 %norm.start33, 0
  %c.start.035 = select i1 %start.lt.034, i64 0, i64 %norm.start33
  %start.gt.len36 = icmp sgt i64 %c.start.035, %s.read.len24
  %final.start37 = select i1 %start.gt.len36, i64 %s.read.len24, i64 %c.start.035
  %end.is_neg38 = icmp slt i64 %fld.load30, 0
  %rel.end39 = add i64 %s.read.len24, %fld.load30
  %norm.end40 = select i1 %end.is_neg38, i64 %rel.end39, i64 %fld.load30
  %end.lt.041 = icmp slt i64 %norm.end40, 0
  %c.end.042 = select i1 %end.lt.041, i64 0, i64 %norm.end40
  %end.gt.len43 = icmp sgt i64 %c.end.042, %s.read.len24
  %final.end44 = select i1 %end.gt.len43, i64 %s.read.len24, i64 %c.end.042
  %view.empty45 = icmp sle i64 %final.end44, %final.start37
  %view.len.sub46 = sub i64 %final.end44, %final.start37
  %view.len47 = select i1 %view.empty45, i64 0, i64 %view.len.sub46
  %view.data48 = getelementptr i8, ptr %s.read.data26, i64 %final.start37
  %cat.seg50 = load i64, ptr %choice.res, align 8
  %cat.seg51 = and i64 %cat.seg50, 281474976710655
  %cat.seg52 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %cat.seg53 = load ptr, ptr %cat.seg52, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %view.len47, i64 %cat.seg51)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len54

choice.exit8:                                     ; preds = %concat.tot.len57, %choice.then
  %choice.res65 = phi ptr [ %str.view, %choice.then ], [ %concat.str, %concat.tot.len57 ]
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %str.len.query70 = load i64, ptr %choice.res65, align 8
  %str.len.query71 = and i64 %str.len.query70, 281474976710655
  %call.res75 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %1, i64 %str.len.query71, i64 %2, i64 %3, ptr %choice.res65)
  ret ptr %call.res75

cat.sum.len54:                                    ; preds = %choice.else
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum55 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf56 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf56, label %str_overflow_abort58, label %concat.tot.len57

str_overflow_abort:                               ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len57:                                 ; preds = %cat.sum.len54
  %arena.cur60 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum55)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %view.data48, i64 %view.len47, i1 false)
  %cat.dst61 = getelementptr i8, ptr %concat.buf, i64 %view.len47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst61, ptr align 1 %cat.seg53, i64 %cat.seg51, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep64 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep64, align 8
  br label %choice.exit8

str_overflow_abort58:                             ; preds = %cat.sum.len54
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define ptr @"lexer::scan_radix_rest"(ptr %0, i32 %1, i64 %2, i64 %3, i64 %4) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res2 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %call.res5 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res6 = call i32 @"lexer::adv"(ptr %0, i32 %call.res5)
  br label %loop.header.196

loop.header.196:                                  ; preds = %loop.latch.196, %entry
  %loop.idx.196.0 = phi i64 [ 0, %entry ], [ %loop.next, %loop.latch.196 ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.load10 = load ptr, ptr %0, align 8
  %str.len.query11 = load i64, ptr %fld.load10, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag = lshr i64 %str.len.query11, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

loop.latch.196:                                   ; preds = %and.198.then, %choice.then17
  %loop.next = add i64 %loop.idx.196.0, 1
  br label %loop.header.196

loop.exit.196:                                    ; preds = %and.197.then, %choice.exit27, %and.198.then, %str_ok
  %call.res49 = call ptr @"lexer::finish_int"(ptr %0, i64 %2, i64 %3, i64 %4)
  ret ptr %call.res49

str_ok:                                           ; preds = %tag.slow_check, %loop.header.196
  %cmptmp = icmp sge i64 %fld.load, %str.len.query12
  br i1 %cmptmp, label %loop.exit.196, label %choice.exit

tag.slow_check:                                   ; preds = %loop.header.196
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.exit:                                      ; preds = %str_ok
  %call.res14 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res16 = call i1 @"lexer::radix_ok"(i32 %call.res14, i32 %1)
  br i1 %call.res16, label %choice.then17, label %choice.else

choice.then17:                                    ; preds = %choice.exit
  %call.res21 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res22 = call i32 @"lexer::adv"(ptr %0, i32 %call.res21)
  br label %loop.latch.196

choice.else:                                      ; preds = %choice.exit
  %call.res24 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res24 to i64
  %cmptmp25 = icmp eq i64 %coerce.sext, 95
  br i1 %cmptmp25, label %choice.then26, label %choice.exit27

choice.then26:                                    ; preds = %choice.else
  %call.res30 = call i64 @"lexer::fail"(i64 1019, i64 %3, i64 %4, ptr @str.26.struct)
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.then26, %choice.else
  %call.res32 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext33 = sext i32 %call.res32 to i64
  %cmptmp34 = icmp eq i64 %coerce.sext33, 123
  br i1 %cmptmp34, label %and.197.then, label %loop.exit.196

and.197.then:                                     ; preds = %choice.exit27
  %fld.load37 = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %2, 2
  %cmptmp39 = icmp sgt i64 %fld.load37, %addtmp
  br i1 %cmptmp39, label %and.198.then, label %loop.exit.196

and.198.then:                                     ; preds = %and.197.then
  %call.res41 = call i1 @"lexer::try_scan_repeat"(ptr %0)
  br i1 %call.res41, label %loop.latch.196, label %loop.exit.196
}

define ptr @"lexer::finish_float"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i64 @"lexer::scan_float_suffix"(ptr %0, i64 0), !range !0
  %val.match = icmp eq i64 %call.res, 1
  br i1 %val.match, label %choice.exit, label %choice.next

choice.exit:                                      ; preds = %entry, %choice.next
  %choice.res = phi ptr [ %fld.load, %choice.next ], [ @str.0.struct, %entry ]
  %eq.lhs.len4 = load i64, ptr %choice.res, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, 0
  br i1 %eq.len, label %str.eq.then, label %choice.else

choice.next:                                      ; preds = %entry
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 12
  %fld.load = load ptr, ptr %fld.gep, align 8
  br label %choice.exit

str.eq.then:                                      ; preds = %choice.exit
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data7 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data7, ptr @str.0, i64 0)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.then
  %fld.load11 = load ptr, ptr %0, align 8
  %s.read.len12 = load i64, ptr %fld.load11, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load11, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %start.is_neg = icmp slt i64 %1, 0
  %rel.start = add i64 %s.read.len13, %1
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %1
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len13
  %final.start = select i1 %start.gt.len, i64 %s.read.len13, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load18, 0
  %rel.end = add i64 %s.read.len13, %fld.load18
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load18
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len13
  %final.end = select i1 %end.gt.len, i64 %s.read.len13, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit8

choice.else:                                      ; preds = %choice.exit, %str.eq.then
  %fld.load21 = load ptr, ptr %0, align 8
  %s.read.len23 = load i64, ptr %fld.load21, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data25 = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data25, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %start.is_neg31 = icmp slt i64 %1, 0
  %rel.start32 = add i64 %s.read.len24, %1
  %norm.start33 = select i1 %start.is_neg31, i64 %rel.start32, i64 %1
  %start.lt.034 = icmp slt i64 %norm.start33, 0
  %c.start.035 = select i1 %start.lt.034, i64 0, i64 %norm.start33
  %start.gt.len36 = icmp sgt i64 %c.start.035, %s.read.len24
  %final.start37 = select i1 %start.gt.len36, i64 %s.read.len24, i64 %c.start.035
  %end.is_neg38 = icmp slt i64 %fld.load30, 0
  %rel.end39 = add i64 %s.read.len24, %fld.load30
  %norm.end40 = select i1 %end.is_neg38, i64 %rel.end39, i64 %fld.load30
  %end.lt.041 = icmp slt i64 %norm.end40, 0
  %c.end.042 = select i1 %end.lt.041, i64 0, i64 %norm.end40
  %end.gt.len43 = icmp sgt i64 %c.end.042, %s.read.len24
  %final.end44 = select i1 %end.gt.len43, i64 %s.read.len24, i64 %c.end.042
  %view.empty45 = icmp sle i64 %final.end44, %final.start37
  %view.len.sub46 = sub i64 %final.end44, %final.start37
  %view.len47 = select i1 %view.empty45, i64 0, i64 %view.len.sub46
  %view.data48 = getelementptr i8, ptr %s.read.data26, i64 %final.start37
  %cat.seg50 = load i64, ptr %choice.res, align 8
  %cat.seg51 = and i64 %cat.seg50, 281474976710655
  %cat.seg52 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %cat.seg53 = load ptr, ptr %cat.seg52, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %view.len47, i64 %cat.seg51)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len54

choice.exit8:                                     ; preds = %concat.tot.len57, %choice.then
  %choice.res65 = phi ptr [ %str.view, %choice.then ], [ %concat.str, %concat.tot.len57 ]
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  store i64 4, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %str.len.query70 = load i64, ptr %choice.res65, align 8
  %str.len.query71 = and i64 %str.len.query70, 281474976710655
  %call.res75 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %1, i64 %str.len.query71, i64 %2, i64 %3, ptr %choice.res65)
  ret ptr %call.res75

cat.sum.len54:                                    ; preds = %choice.else
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum55 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf56 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf56, label %str_overflow_abort58, label %concat.tot.len57

str_overflow_abort:                               ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len57:                                 ; preds = %cat.sum.len54
  %arena.cur60 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum55)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %view.data48, i64 %view.len47, i1 false)
  %cat.dst61 = getelementptr i8, ptr %concat.buf, i64 %view.len47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst61, ptr align 1 %cat.seg53, i64 %cat.seg51, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep64 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep64, align 8
  br label %choice.exit8

str_overflow_abort58:                             ; preds = %cat.sum.len54
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define i1 @"lexer::scan_frac_opt"(ptr %0, i64 %1, i64 %2, i64 %3, i64 %4) #3 {
entry:
  %call.res = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp sge i64 %coerce.sext, 48
  %cmptmp3 = icmp sle i64 %coerce.sext, 57
  %and.199.phi = select i1 %cmptmp, i1 %cmptmp3, i1 false
  %call.res5 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext6 = sext i32 %call.res5 to i64
  %cmptmp7 = icmp eq i64 %coerce.sext6, 46
  br i1 %cmptmp7, label %and.200.then, label %and.200.exit

and.200.then:                                     ; preds = %entry
  %call.res9 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext10 = sext i32 %call.res9 to i64
  %cmptmp11 = icmp ne i64 %coerce.sext10, 46
  br label %and.200.exit

and.200.exit:                                     ; preds = %entry, %and.200.then
  %and.200.phi = phi i1 [ %cmptmp11, %and.200.then ], [ false, %entry ]
  %choice.res.and.200.phi = select i1 %and.200.phi, i1 %and.199.phi, i1 %and.200.phi
  br i1 %choice.res.and.200.phi, label %choice.then, label %choice.exit14

choice.then:                                      ; preds = %and.200.exit
  %call.res17 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res18 = call i32 @"lexer::adv"(ptr %0, i32 %call.res17)
  %call.res20 = call i64 @"lexer::skip_digits"(ptr %0, i64 0)
  %call.res22 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext23 = sext i32 %call.res22 to i64
  %cmptmp24 = icmp eq i64 %coerce.sext23, 95
  br i1 %cmptmp24, label %choice.then25, label %choice.exit14

choice.exit14:                                    ; preds = %choice.then, %choice.then25, %and.200.exit
  ret i1 %choice.res.and.200.phi

choice.then25:                                    ; preds = %choice.then
  %call.res29 = call i64 @"lexer::fail"(i64 1019, i64 %3, i64 %4, ptr @str.26.struct)
  br label %choice.exit14
}

define i32 @"lexer::pk_off"(ptr %0, i64 %1) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 %1)
  ret i32 %call.res
}

define i1 @"lexer::scan_exp_opt"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %4 = sub i32 %call.res, 69
  %switch.and = and i32 %4, -33
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  br i1 %switch.selectcmp, label %choice.then, label %choice.exit34

choice.then:                                      ; preds = %entry
  %call.res6 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res7 = call i32 @"lexer::adv"(ptr %0, i32 %call.res6)
  %call.res10 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res10 to i64
  %cmptmp = icmp eq i64 %coerce.sext, 43
  br i1 %cmptmp, label %choice.then16, label %or.203.else

or.203.else:                                      ; preds = %choice.then
  %call.res12 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext13 = sext i32 %call.res12 to i64
  %cmptmp14 = icmp eq i64 %coerce.sext13, 45
  br i1 %cmptmp14, label %choice.then16, label %choice.exit17

choice.then16:                                    ; preds = %choice.then, %or.203.else
  %call.res20 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res21 = call i32 @"lexer::adv"(ptr %0, i32 %call.res20)
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.then16, %or.203.else
  br i1 %switch.selectcmp, label %choice.then23, label %choice.exit34

choice.then23:                                    ; preds = %choice.exit17
  %call.res27 = call i64 @"lexer::skip_digits"(ptr %0, i64 %2)
  %call.res30 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext31 = sext i32 %call.res30 to i64
  %cmptmp32 = icmp eq i64 %coerce.sext31, 95
  br i1 %cmptmp32, label %choice.then33, label %choice.exit34

choice.then33:                                    ; preds = %choice.then23
  %call.res37 = call i64 @"lexer::fail"(i64 1019, i64 %2, i64 %3, ptr @str.26.struct)
  br label %choice.exit34

choice.exit34:                                    ; preds = %choice.exit17, %entry, %choice.then33, %choice.then23
  ret i1 %switch.selectcmp
}

define ptr @"lexer::scan_dec"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i64 @"lexer::skip_digits"(ptr %0, i64 0)
  %call.res2 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res2 to i64
  %cmptmp = icmp eq i64 %coerce.sext, 95
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res5 = call i64 @"lexer::fail"(i64 1019, i64 %2, i64 %3, ptr @str.26.struct)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  br label %loop.header.205

loop.header.205:                                  ; preds = %choice.then26, %choice.exit
  %loop.idx.205.0 = phi i64 [ 0, %choice.exit ], [ %loop.next, %choice.then26 ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.load9 = load ptr, ptr %0, align 8
  %str.len.query10 = load i64, ptr %fld.load9, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %str.tag = lshr i64 %str.len.query10, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

loop.exit.205:                                    ; preds = %and.206.then, %choice.exit14, %and.207.then, %str_ok
  %call.res34 = call i1 @"lexer::scan_frac_opt"(ptr %0, i64 0, i64 %1, i64 %2, i64 %3)
  %nottmp = xor i1 %call.res34, true
  br i1 %nottmp, label %and.208.then, label %choice.exit61

str_ok:                                           ; preds = %tag.slow_check, %loop.header.205
  %cmptmp12 = icmp sge i64 %fld.load, %str.len.query11
  br i1 %cmptmp12, label %loop.exit.205, label %choice.exit14

tag.slow_check:                                   ; preds = %loop.header.205
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.exit14:                                    ; preds = %str_ok
  %call.res16 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext17 = sext i32 %call.res16 to i64
  %cmptmp18 = icmp eq i64 %coerce.sext17, 123
  br i1 %cmptmp18, label %and.206.then, label %loop.exit.205

and.206.then:                                     ; preds = %choice.exit14
  %fld.load21 = load i64, ptr %fld.gep, align 8
  %cmptmp23 = icmp sgt i64 %fld.load21, %1
  br i1 %cmptmp23, label %and.207.then, label %loop.exit.205

and.207.then:                                     ; preds = %and.206.then
  %call.res25 = call i1 @"lexer::try_scan_repeat"(ptr %0)
  br i1 %call.res25, label %choice.then26, label %loop.exit.205

choice.then26:                                    ; preds = %and.207.then
  %call.res29 = call i64 @"lexer::skip_digits"(ptr %0, i64 0)
  %loop.next = add i64 %loop.idx.205.0, 1
  br label %loop.header.205

and.208.then:                                     ; preds = %loop.exit.205
  %call.res37 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext38 = sext i32 %call.res37 to i64
  %cmptmp39 = icmp eq i64 %coerce.sext38, 46
  br i1 %cmptmp39, label %and.209.then, label %choice.exit61

and.209.then:                                     ; preds = %and.208.then
  %call.res41 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext42 = sext i32 %call.res41 to i64
  %cmptmp43 = icmp ne i64 %coerce.sext42, 46
  br i1 %cmptmp43, label %and.210.then, label %choice.exit61

and.210.then:                                     ; preds = %and.209.then
  %call.res45 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %call.res46 = call i1 @"lexer::is_special"(i32 %call.res45)
  %nottmp47 = xor i1 %call.res46, true
  br i1 %nottmp47, label %and.211.then, label %choice.exit61

and.211.then:                                     ; preds = %and.210.then
  %cmptmp49 = icmp sgt i64 %1, 0
  br i1 %cmptmp49, label %and.212.then, label %and.212.exit

and.212.then:                                     ; preds = %and.211.then
  %fld.load52 = load ptr, ptr %0, align 8
  %s.read.len53 = load i64, ptr %fld.load52, align 8
  %s.read.len54 = and i64 %s.read.len53, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load52, i32 0, i32 1
  %s.read.data55 = load ptr, ptr %s.read.data, align 8
  %subtmp = sub nuw nsw i64 %1, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len54
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.212.exit:                                     ; preds = %and.211.then, %idx_ok
  %and.212.phi = phi i1 [ %cmptmp57, %idx_ok ], [ false, %and.211.then ]
  %nottmp58 = xor i1 %and.212.phi, true
  br i1 %nottmp58, label %concat.tot.len72, label %choice.exit61

idx_ok:                                           ; preds = %and.212.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data55, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp57 = icmp eq i64 %s.byte.val, 46
  br label %and.212.exit

idx_oob:                                          ; preds = %and.212.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit61:                                    ; preds = %and.210.then, %and.208.then, %loop.exit.205, %and.209.then, %concat.tot.len72, %and.212.exit
  %call.res79 = call i1 @"lexer::scan_exp_opt"(ptr %0, i64 0, i64 0, i64 %2)
  %call.res34.call.res79 = select i1 %call.res34, i1 %call.res34, i1 %call.res79
  br i1 %call.res34.call.res79, label %choice.then83, label %choice.else84

concat.tot.len72:                                 ; preds = %and.212.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 109)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.27, i64 56, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 @str.28, i64 52, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 108
  store i8 0, ptr %concat.nul, align 1
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 108, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res76 = call i64 @"lexer::fail"(i64 1012, i64 %2, i64 %3, ptr %concat.str)
  br label %choice.exit61

choice.then83:                                    ; preds = %choice.exit61
  %call.res90 = call ptr @"lexer::finish_float"(ptr %0, i64 %1, i64 %2, i64 %3)
  br label %choice.exit85

choice.else84:                                    ; preds = %choice.exit61
  %call.res95 = call ptr @"lexer::finish_int"(ptr %0, i64 %1, i64 %2, i64 %3)
  br label %choice.exit85

choice.exit85:                                    ; preds = %choice.else84, %choice.then83
  %choice.res = phi ptr [ %call.res90, %choice.then83 ], [ %call.res95, %choice.else84 ]
  ret ptr %choice.res
}

define ptr @"lexer::scan_num"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res2 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  switch i32 %call.res2, label %choice.next [
    i32 120, label %choice.exit
    i32 111, label %choice.exit
    i32 98, label %choice.exit
    i32 88, label %choice.exit
    i32 79, label %choice.exit
    i32 66, label %choice.exit
  ]

choice.exit:                                      ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %choice.next
  %choice.res = phi i1 [ false, %choice.next ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ]
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 48
  %choice.res. = select i1 %cmptmp, i1 %choice.res, i1 false
  br i1 %choice.res., label %choice.then, label %choice.else

choice.next:                                      ; preds = %entry
  br label %choice.exit

choice.then:                                      ; preds = %choice.exit
  %call.res17 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %call.res21 = call ptr @"lexer::scan_radix_rest"(ptr %0, i32 %call.res17, i64 %1, i64 %2, i64 %3)
  br label %choice.exit14

choice.else:                                      ; preds = %choice.exit
  %call.res26 = call ptr @"lexer::scan_dec"(ptr %0, i64 %1, i64 %2, i64 %3)
  br label %choice.exit14

choice.exit14:                                    ; preds = %choice.else, %choice.then
  %choice.res27 = phi ptr [ %call.res21, %choice.then ], [ %call.res26, %choice.else ]
  ret ptr %choice.res27
}

define ptr @"lexer::scan_op"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query1 = load i64, ptr %fld.load, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  br label %loop.header.215

loop.header.215:                                  ; preds = %choice.then17, %entry
  %"var.i'.0" = phi i64 [ %fld.load5, %entry ], [ %addtmp, %choice.then17 ]
  %"var.ncol'.0" = phi i64 [ %fld.load8, %entry ], [ %addtmp22, %choice.then17 ]
  %loop.idx.215.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then17 ]
  %cmptmp = icmp sge i64 %"var.i'.0", %str.len.query2
  br i1 %cmptmp, label %loop.exit.215, label %choice.exit

loop.exit.215:                                    ; preds = %choice.exit, %loop.header.215
  store i64 %"var.i'.0", ptr %fld.gep4, align 8
  store i64 %"var.ncol'.0", ptr %fld.gep7, align 8
  %subtmp = sub i64 %"var.i'.0", %1
  %cmptmp31 = icmp sge i64 %subtmp, 3
  br i1 %cmptmp31, label %and.216.then, label %choice.exit96

choice.exit:                                      ; preds = %loop.header.215
  %fld.load13 = load ptr, ptr %0, align 8
  %call.res = call i32 @"unicode::decode_rune"(ptr %fld.load13, i64 %"var.i'.0")
  %call.res16 = call i1 @"lexer::is_special"(i32 %call.res)
  br i1 %call.res16, label %choice.then17, label %loop.exit.215

choice.then17:                                    ; preds = %choice.exit
  %coerce.sext = sext i32 %call.res to i64
  %r.cmp1 = icmp slt i64 %coerce.sext, 128
  %r.cmp2 = icmp slt i64 %coerce.sext, 2048
  %r.cmp3 = icmp slt i64 %coerce.sext, 65536
  %r.w3 = select i1 %r.cmp3, i64 3, i64 4
  %r.w2 = select i1 %r.cmp2, i64 2, i64 %r.w3
  %r.width = select i1 %r.cmp1, i64 1, i64 %r.w2
  %addtmp = add nsw i64 %"var.i'.0", %r.width
  %addtmp22 = add i64 %"var.ncol'.0", 1
  %loop.next = add i64 %loop.idx.215.0, 1
  br label %loop.header.215

and.216.then:                                     ; preds = %loop.exit.215
  %fld.load34 = load ptr, ptr %0, align 8
  %s.read.len35 = load i64, ptr %fld.load34, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load34, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %1, %s.read.len36
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.216.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data37, i64 %1
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp39 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp39, label %and.217.then, label %choice.exit96

idx_oob:                                          ; preds = %and.216.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.217.then:                                     ; preds = %idx_ok
  %fld.load42 = load ptr, ptr %0, align 8
  %s.read.len44 = load i64, ptr %fld.load42, align 8
  %s.read.len45 = and i64 %s.read.len44, 281474976710655
  %s.read.data46 = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 1
  %s.read.data47 = load ptr, ptr %s.read.data46, align 8
  %addtmp49 = add i64 %1, 1
  %idx.oob50 = icmp uge i64 %addtmp49, %s.read.len45
  br i1 %idx.oob50, label %idx_oob52, label %idx_ok51

idx_ok51:                                         ; preds = %and.217.then
  %s.byte.gep54 = getelementptr i8, ptr %s.read.data47, i64 %addtmp49
  %s.byte55 = load i8, ptr %s.byte.gep54, align 1
  %s.byte.val56 = zext i8 %s.byte55 to i64
  %cmptmp57 = icmp eq i64 %s.byte.val56, 46
  br i1 %cmptmp57, label %and.218.then, label %choice.exit96

idx_oob52:                                        ; preds = %and.217.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.218.then:                                     ; preds = %idx_ok51
  %fld.load60 = load ptr, ptr %0, align 8
  %s.read.len62 = load i64, ptr %fld.load60, align 8
  %s.read.len63 = and i64 %s.read.len62, 281474976710655
  %s.read.data64 = getelementptr inbounds { i64, ptr }, ptr %fld.load60, i32 0, i32 1
  %s.read.data65 = load ptr, ptr %s.read.data64, align 8
  %addtmp67 = add i64 %1, 2
  %idx.oob68 = icmp uge i64 %addtmp67, %s.read.len63
  br i1 %idx.oob68, label %idx_oob70, label %idx_ok69

idx_ok69:                                         ; preds = %and.218.then
  %s.byte.gep72 = getelementptr i8, ptr %s.read.data65, i64 %addtmp67
  %s.byte73 = load i8, ptr %s.byte.gep72, align 1
  %s.byte.val74 = zext i8 %s.byte73 to i64
  switch i64 %s.byte.val74, label %choice.exit96 [
    i64 46, label %choice.then95
    i64 61, label %choice.then95
  ]

idx_oob70:                                        ; preds = %and.218.then
  call void @dva_abort_str_oob_msg()
  unreachable

common.ret:                                       ; preds = %choice.exit1147, %choice.then1146, %choice.then1068, %choice.then990, %choice.then894, %choice.then798, %choice.then720, %choice.then642, %choice.then582, %choice.then504, %choice.then426, %choice.then366, %choice.then150, %choice.then95
  %common.ret.op = phi ptr [ %call.res109, %choice.then95 ], [ %call.res168, %choice.then150 ], [ %call.res384, %choice.then366 ], [ %call.res444, %choice.then426 ], [ %call.res522, %choice.then504 ], [ %call.res600, %choice.then582 ], [ %call.res660, %choice.then642 ], [ %call.res738, %choice.then720 ], [ %call.res816, %choice.then798 ], [ %call.res912, %choice.then894 ], [ %call.res1008, %choice.then990 ], [ %call.res1086, %choice.then1068 ], [ %call.res1164, %choice.then1146 ], [ %call.res1188, %choice.exit1147 ]
  ret ptr %common.ret.op

choice.then95:                                    ; preds = %idx_ok69, %idx_ok69
  %addtmp99 = add i64 %1, 3
  store i64 %addtmp99, ptr %fld.gep4, align 8
  %addtmp103 = add i64 %3, 3
  store i64 %addtmp103, ptr %fld.gep7, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %call.res109 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %1, i64 3, i64 %2, i64 %3, ptr @str.29.struct)
  br label %common.ret

choice.exit96:                                    ; preds = %idx_ok51, %loop.exit.215, %idx_ok, %idx_ok69
  %cmptmp113 = icmp sgt i64 %subtmp, 2
  br i1 %cmptmp113, label %and.220.then, label %choice.exit151

and.220.then:                                     ; preds = %choice.exit96
  %fld.load116 = load ptr, ptr %0, align 8
  %s.read.len118 = load i64, ptr %fld.load116, align 8
  %s.read.len119 = and i64 %s.read.len118, 281474976710655
  %s.read.data120 = getelementptr inbounds { i64, ptr }, ptr %fld.load116, i32 0, i32 1
  %s.read.data121 = load ptr, ptr %s.read.data120, align 8
  %idx.oob123 = icmp uge i64 %1, %s.read.len119
  br i1 %idx.oob123, label %idx_oob125, label %idx_ok124

idx_ok124:                                        ; preds = %and.220.then
  %s.byte.gep127 = getelementptr i8, ptr %s.read.data121, i64 %1
  %s.byte128 = load i8, ptr %s.byte.gep127, align 1
  %s.byte.val129 = zext i8 %s.byte128 to i64
  %cmptmp130 = icmp eq i64 %s.byte.val129, 46
  br i1 %cmptmp130, label %and.221.then, label %choice.exit151

idx_oob125:                                       ; preds = %and.220.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.221.then:                                     ; preds = %idx_ok124
  %fld.load133 = load ptr, ptr %0, align 8
  %s.read.len135 = load i64, ptr %fld.load133, align 8
  %s.read.len136 = and i64 %s.read.len135, 281474976710655
  %s.read.data137 = getelementptr inbounds { i64, ptr }, ptr %fld.load133, i32 0, i32 1
  %s.read.data138 = load ptr, ptr %s.read.data137, align 8
  %addtmp140 = add i64 %1, 1
  %idx.oob141 = icmp uge i64 %addtmp140, %s.read.len136
  br i1 %idx.oob141, label %idx_oob143, label %idx_ok142

idx_ok142:                                        ; preds = %and.221.then
  %s.byte.gep145 = getelementptr i8, ptr %s.read.data138, i64 %addtmp140
  %s.byte146 = load i8, ptr %s.byte.gep145, align 1
  %s.byte.val147 = zext i8 %s.byte146 to i64
  %cmptmp148 = icmp eq i64 %s.byte.val147, 46
  br i1 %cmptmp148, label %choice.then150, label %choice.exit151

idx_oob143:                                       ; preds = %and.221.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then150:                                   ; preds = %idx_ok142
  %addtmp154 = add i64 %1, 2
  store i64 %addtmp154, ptr %fld.gep4, align 8
  %addtmp158 = add i64 %3, 2
  store i64 %addtmp158, ptr %fld.gep7, align 8
  %arena.cur161 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 16)
  store i64 0, ptr %enum.alloc162, align 8
  %pay.gep164 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc162, i32 0, i32 1
  store ptr null, ptr %pay.gep164, align 8
  %call.res168 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc162, i64 %1, i64 2, i64 %2, i64 %3, ptr @str.30.struct)
  br label %common.ret

choice.exit151:                                   ; preds = %idx_ok124, %choice.exit96, %idx_ok142
  %fld.load172 = load ptr, ptr %0, align 8
  %s.read.len174 = load i64, ptr %fld.load172, align 8
  %s.read.len175 = and i64 %s.read.len174, 281474976710655
  %s.read.data176 = getelementptr inbounds { i64, ptr }, ptr %fld.load172, i32 0, i32 1
  %s.read.data177 = load ptr, ptr %s.read.data176, align 8
  %idx.oob179 = icmp uge i64 %1, %s.read.len175
  br i1 %idx.oob179, label %idx_oob181, label %idx_ok180

idx_ok180:                                        ; preds = %choice.exit151
  %s.byte.gep183 = getelementptr i8, ptr %s.read.data177, i64 %1
  %s.byte184 = load i8, ptr %s.byte.gep183, align 1
  %s.byte.val185 = zext i8 %s.byte184 to i64
  %cmptmp186 = icmp eq i64 %s.byte.val185, 33
  br i1 %cmptmp186, label %and.222.then, label %choice.exit367

idx_oob181:                                       ; preds = %choice.exit151
  call void @dva_abort_str_oob_msg()
  unreachable

and.222.then:                                     ; preds = %idx_ok180
  br i1 %cmptmp31, label %and.223.then, label %or.225.else

and.223.then:                                     ; preds = %and.222.then
  %addtmp200 = add nuw nsw i64 %1, 1
  %idx.oob201 = icmp uge i64 %addtmp200, %s.read.len175
  br i1 %idx.oob201, label %idx_oob203, label %idx_ok202

idx_ok202:                                        ; preds = %and.223.then
  %s.byte.gep205 = getelementptr i8, ptr %s.read.data177, i64 %addtmp200
  %s.byte206 = load i8, ptr %s.byte.gep205, align 1
  %s.byte.val207 = zext i8 %s.byte206 to i64
  %cmptmp208 = icmp eq i64 %s.byte.val207, 33
  br i1 %cmptmp208, label %and.224.then, label %or.225.else

idx_oob203:                                       ; preds = %and.223.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.224.then:                                     ; preds = %idx_ok202
  %fld.load211 = load ptr, ptr %0, align 8
  %s.read.len213 = load i64, ptr %fld.load211, align 8
  %s.read.len214 = and i64 %s.read.len213, 281474976710655
  %s.read.data215 = getelementptr inbounds { i64, ptr }, ptr %fld.load211, i32 0, i32 1
  %s.read.data216 = load ptr, ptr %s.read.data215, align 8
  %addtmp218 = add nuw nsw i64 %1, 2
  %idx.oob219 = icmp uge i64 %addtmp218, %s.read.len214
  br i1 %idx.oob219, label %idx_oob221, label %idx_ok220

idx_ok220:                                        ; preds = %and.224.then
  %s.byte.gep223 = getelementptr i8, ptr %s.read.data216, i64 %addtmp218
  %s.byte224 = load i8, ptr %s.byte.gep223, align 1
  %s.byte.val225 = zext i8 %s.byte224 to i64
  %cmptmp226 = icmp eq i64 %s.byte.val225, 33
  br i1 %cmptmp226, label %choice.then366, label %or.225.else

idx_oob221:                                       ; preds = %and.224.then
  call void @dva_abort_str_oob_msg()
  unreachable

or.225.else:                                      ; preds = %idx_ok202, %and.222.then, %idx_ok220
  %cmptmp230 = icmp sge i64 %subtmp, 4
  br i1 %cmptmp230, label %and.226.then, label %or.229.else

and.226.then:                                     ; preds = %or.225.else
  %fld.load233 = load ptr, ptr %0, align 8
  %s.read.len235 = load i64, ptr %fld.load233, align 8
  %s.read.len236 = and i64 %s.read.len235, 281474976710655
  %s.read.data237 = getelementptr inbounds { i64, ptr }, ptr %fld.load233, i32 0, i32 1
  %s.read.data238 = load ptr, ptr %s.read.data237, align 8
  %addtmp240 = add nuw nsw i64 %1, 1
  %idx.oob241 = icmp uge i64 %addtmp240, %s.read.len236
  br i1 %idx.oob241, label %idx_oob243, label %idx_ok242

idx_ok242:                                        ; preds = %and.226.then
  %s.byte.gep245 = getelementptr i8, ptr %s.read.data238, i64 %addtmp240
  %s.byte246 = load i8, ptr %s.byte.gep245, align 1
  %s.byte.val247 = zext i8 %s.byte246 to i64
  %cmptmp248 = icmp eq i64 %s.byte.val247, 45
  br i1 %cmptmp248, label %and.227.then, label %or.229.else

idx_oob243:                                       ; preds = %and.226.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.227.then:                                     ; preds = %idx_ok242
  %fld.load251 = load ptr, ptr %0, align 8
  %s.read.len253 = load i64, ptr %fld.load251, align 8
  %s.read.len254 = and i64 %s.read.len253, 281474976710655
  %s.read.data255 = getelementptr inbounds { i64, ptr }, ptr %fld.load251, i32 0, i32 1
  %s.read.data256 = load ptr, ptr %s.read.data255, align 8
  %addtmp258 = add nuw nsw i64 %1, 2
  %idx.oob259 = icmp uge i64 %addtmp258, %s.read.len254
  br i1 %idx.oob259, label %idx_oob261, label %idx_ok260

idx_ok260:                                        ; preds = %and.227.then
  %s.byte.gep263 = getelementptr i8, ptr %s.read.data256, i64 %addtmp258
  %s.byte264 = load i8, ptr %s.byte.gep263, align 1
  %s.byte.val265 = zext i8 %s.byte264 to i64
  %cmptmp266 = icmp eq i64 %s.byte.val265, 45
  br i1 %cmptmp266, label %and.228.then, label %or.229.else

idx_oob261:                                       ; preds = %and.227.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.228.then:                                     ; preds = %idx_ok260
  %fld.load269 = load ptr, ptr %0, align 8
  %s.read.len271 = load i64, ptr %fld.load269, align 8
  %s.read.len272 = and i64 %s.read.len271, 281474976710655
  %s.read.data273 = getelementptr inbounds { i64, ptr }, ptr %fld.load269, i32 0, i32 1
  %s.read.data274 = load ptr, ptr %s.read.data273, align 8
  %addtmp276 = add nuw nsw i64 %1, 3
  %idx.oob277 = icmp uge i64 %addtmp276, %s.read.len272
  br i1 %idx.oob277, label %idx_oob279, label %idx_ok278

idx_ok278:                                        ; preds = %and.228.then
  %s.byte.gep281 = getelementptr i8, ptr %s.read.data274, i64 %addtmp276
  %s.byte282 = load i8, ptr %s.byte.gep281, align 1
  %s.byte.val283 = zext i8 %s.byte282 to i64
  %cmptmp284 = icmp eq i64 %s.byte.val283, 33
  br i1 %cmptmp284, label %choice.then366, label %or.229.else

idx_oob279:                                       ; preds = %and.228.then
  call void @dva_abort_str_oob_msg()
  unreachable

or.229.else:                                      ; preds = %idx_ok260, %or.225.else, %idx_ok242, %idx_ok278
  %cmptmp288 = icmp sge i64 %subtmp, 2
  br i1 %cmptmp288, label %and.230.then, label %or.232.else

and.230.then:                                     ; preds = %or.229.else
  %fld.load291 = load ptr, ptr %0, align 8
  %s.read.len293 = load i64, ptr %fld.load291, align 8
  %s.read.len294 = and i64 %s.read.len293, 281474976710655
  %s.read.data295 = getelementptr inbounds { i64, ptr }, ptr %fld.load291, i32 0, i32 1
  %s.read.data296 = load ptr, ptr %s.read.data295, align 8
  %addtmp298 = add nuw nsw i64 %1, 1
  %idx.oob299 = icmp uge i64 %addtmp298, %s.read.len294
  br i1 %idx.oob299, label %idx_oob301, label %idx_ok300

idx_ok300:                                        ; preds = %and.230.then
  %s.byte.gep303 = getelementptr i8, ptr %s.read.data296, i64 %addtmp298
  %s.byte304 = load i8, ptr %s.byte.gep303, align 1
  %s.byte.val305 = zext i8 %s.byte304 to i64
  switch i64 %s.byte.val305, label %or.232.else [
    i64 46, label %choice.then366
    i64 94, label %choice.then366
  ]

idx_oob301:                                       ; preds = %and.230.then
  call void @dva_abort_str_oob_msg()
  unreachable

or.232.else:                                      ; preds = %or.229.else, %idx_ok300
  br i1 %cmptmp31, label %and.233.then, label %choice.exit367

and.233.then:                                     ; preds = %or.232.else
  %fld.load331 = load ptr, ptr %0, align 8
  %s.read.len333 = load i64, ptr %fld.load331, align 8
  %s.read.len334 = and i64 %s.read.len333, 281474976710655
  %s.read.data335 = getelementptr inbounds { i64, ptr }, ptr %fld.load331, i32 0, i32 1
  %s.read.data336 = load ptr, ptr %s.read.data335, align 8
  %addtmp338 = add nuw nsw i64 %1, 1
  %idx.oob339 = icmp uge i64 %addtmp338, %s.read.len334
  br i1 %idx.oob339, label %idx_oob341, label %idx_ok340

idx_ok340:                                        ; preds = %and.233.then
  %s.byte.gep343 = getelementptr i8, ptr %s.read.data336, i64 %addtmp338
  %s.byte344 = load i8, ptr %s.byte.gep343, align 1
  %s.byte.val345 = zext i8 %s.byte344 to i64
  %cmptmp346 = icmp eq i64 %s.byte.val345, 60
  br i1 %cmptmp346, label %and.234.then, label %choice.exit367

idx_oob341:                                       ; preds = %and.233.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.234.then:                                     ; preds = %idx_ok340
  %fld.load349 = load ptr, ptr %0, align 8
  %s.read.len351 = load i64, ptr %fld.load349, align 8
  %s.read.len352 = and i64 %s.read.len351, 281474976710655
  %s.read.data353 = getelementptr inbounds { i64, ptr }, ptr %fld.load349, i32 0, i32 1
  %s.read.data354 = load ptr, ptr %s.read.data353, align 8
  %addtmp356 = add nuw nsw i64 %1, 2
  %idx.oob357 = icmp uge i64 %addtmp356, %s.read.len352
  br i1 %idx.oob357, label %idx_oob359, label %idx_ok358

idx_ok358:                                        ; preds = %and.234.then
  %s.byte.gep361 = getelementptr i8, ptr %s.read.data354, i64 %addtmp356
  %s.byte362 = load i8, ptr %s.byte.gep361, align 1
  %s.byte.val363 = zext i8 %s.byte362 to i64
  %cmptmp364 = icmp eq i64 %s.byte.val363, 62
  br i1 %cmptmp364, label %choice.then366, label %choice.exit367

idx_oob359:                                       ; preds = %and.234.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then366:                                   ; preds = %idx_ok300, %idx_ok300, %idx_ok220, %idx_ok278, %idx_ok358
  %addtmp370 = add nuw nsw i64 %1, 1
  store i64 %addtmp370, ptr %fld.gep4, align 8
  %addtmp374 = add i64 %3, 1
  store i64 %addtmp374, ptr %fld.gep7, align 8
  %arena.cur377 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 16)
  store i64 0, ptr %enum.alloc378, align 8
  %pay.gep380 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc378, i32 0, i32 1
  store ptr null, ptr %pay.gep380, align 8
  %call.res384 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc378, i64 %1, i64 1, i64 %2, i64 %3, ptr @str.31.struct)
  br label %common.ret

choice.exit367:                                   ; preds = %idx_ok340, %or.232.else, %idx_ok180, %idx_ok358
  br i1 %cmptmp113, label %and.235.then, label %choice.exit427

and.235.then:                                     ; preds = %choice.exit367
  %fld.load392 = load ptr, ptr %0, align 8
  %s.read.len394 = load i64, ptr %fld.load392, align 8
  %s.read.len395 = and i64 %s.read.len394, 281474976710655
  %s.read.data396 = getelementptr inbounds { i64, ptr }, ptr %fld.load392, i32 0, i32 1
  %s.read.data397 = load ptr, ptr %s.read.data396, align 8
  %idx.oob399 = icmp uge i64 %1, %s.read.len395
  br i1 %idx.oob399, label %idx_oob401, label %idx_ok400

idx_ok400:                                        ; preds = %and.235.then
  %s.byte.gep403 = getelementptr i8, ptr %s.read.data397, i64 %1
  %s.byte404 = load i8, ptr %s.byte.gep403, align 1
  %s.byte.val405 = zext i8 %s.byte404 to i64
  %cmptmp406 = icmp eq i64 %s.byte.val405, 33
  br i1 %cmptmp406, label %and.236.then, label %choice.exit427

idx_oob401:                                       ; preds = %and.235.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.236.then:                                     ; preds = %idx_ok400
  %fld.load409 = load ptr, ptr %0, align 8
  %s.read.len411 = load i64, ptr %fld.load409, align 8
  %s.read.len412 = and i64 %s.read.len411, 281474976710655
  %s.read.data413 = getelementptr inbounds { i64, ptr }, ptr %fld.load409, i32 0, i32 1
  %s.read.data414 = load ptr, ptr %s.read.data413, align 8
  %addtmp416 = add nuw nsw i64 %1, 1
  %idx.oob417 = icmp uge i64 %addtmp416, %s.read.len412
  br i1 %idx.oob417, label %idx_oob419, label %idx_ok418

idx_ok418:                                        ; preds = %and.236.then
  %s.byte.gep421 = getelementptr i8, ptr %s.read.data414, i64 %addtmp416
  %s.byte422 = load i8, ptr %s.byte.gep421, align 1
  %s.byte.val423 = zext i8 %s.byte422 to i64
  %cmptmp424 = icmp eq i64 %s.byte.val423, 33
  br i1 %cmptmp424, label %choice.then426, label %choice.exit427

idx_oob419:                                       ; preds = %and.236.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then426:                                   ; preds = %idx_ok418
  %addtmp430 = add nuw nsw i64 %1, 2
  store i64 %addtmp430, ptr %fld.gep4, align 8
  %addtmp434 = add i64 %3, 2
  store i64 %addtmp434, ptr %fld.gep7, align 8
  %arena.cur437 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc438 = call ptr @dva_arena_alloc(ptr %arena.cur437, i64 16)
  store i64 0, ptr %enum.alloc438, align 8
  %pay.gep440 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc438, i32 0, i32 1
  store ptr null, ptr %pay.gep440, align 8
  %call.res444 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc438, i64 %1, i64 2, i64 %2, i64 %3, ptr @str.32.struct)
  br label %common.ret

choice.exit427:                                   ; preds = %idx_ok400, %choice.exit367, %idx_ok418
  %cmptmp449 = icmp sgt i64 %subtmp, 3
  br i1 %cmptmp449, label %and.237.then, label %choice.exit583

and.237.then:                                     ; preds = %choice.exit427
  %fld.load452 = load ptr, ptr %0, align 8
  %s.read.len454 = load i64, ptr %fld.load452, align 8
  %s.read.len455 = and i64 %s.read.len454, 281474976710655
  %s.read.data456 = getelementptr inbounds { i64, ptr }, ptr %fld.load452, i32 0, i32 1
  %s.read.data457 = load ptr, ptr %s.read.data456, align 8
  %idx.oob459 = icmp uge i64 %1, %s.read.len455
  br i1 %idx.oob459, label %idx_oob461, label %idx_ok460

idx_ok460:                                        ; preds = %and.237.then
  %s.byte.gep463 = getelementptr i8, ptr %s.read.data457, i64 %1
  %s.byte464 = load i8, ptr %s.byte.gep463, align 1
  %s.byte.val465 = zext i8 %s.byte464 to i64
  %cmptmp466 = icmp eq i64 %s.byte.val465, 45
  br i1 %cmptmp466, label %and.238.then, label %choice.exit505

idx_oob461:                                       ; preds = %and.237.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.238.then:                                     ; preds = %idx_ok460
  %fld.load469 = load ptr, ptr %0, align 8
  %s.read.len471 = load i64, ptr %fld.load469, align 8
  %s.read.len472 = and i64 %s.read.len471, 281474976710655
  %s.read.data473 = getelementptr inbounds { i64, ptr }, ptr %fld.load469, i32 0, i32 1
  %s.read.data474 = load ptr, ptr %s.read.data473, align 8
  %addtmp476 = add nuw nsw i64 %1, 1
  %idx.oob477 = icmp uge i64 %addtmp476, %s.read.len472
  br i1 %idx.oob477, label %idx_oob479, label %idx_ok478

idx_ok478:                                        ; preds = %and.238.then
  %s.byte.gep481 = getelementptr i8, ptr %s.read.data474, i64 %addtmp476
  %s.byte482 = load i8, ptr %s.byte.gep481, align 1
  %s.byte.val483 = zext i8 %s.byte482 to i64
  %cmptmp484 = icmp eq i64 %s.byte.val483, 45
  br i1 %cmptmp484, label %and.239.then, label %choice.exit505

idx_oob479:                                       ; preds = %and.238.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.239.then:                                     ; preds = %idx_ok478
  %fld.load487 = load ptr, ptr %0, align 8
  %s.read.len489 = load i64, ptr %fld.load487, align 8
  %s.read.len490 = and i64 %s.read.len489, 281474976710655
  %s.read.data491 = getelementptr inbounds { i64, ptr }, ptr %fld.load487, i32 0, i32 1
  %s.read.data492 = load ptr, ptr %s.read.data491, align 8
  %addtmp494 = add nuw nsw i64 %1, 2
  %idx.oob495 = icmp uge i64 %addtmp494, %s.read.len490
  br i1 %idx.oob495, label %idx_oob497, label %idx_ok496

idx_ok496:                                        ; preds = %and.239.then
  %s.byte.gep499 = getelementptr i8, ptr %s.read.data492, i64 %addtmp494
  %s.byte500 = load i8, ptr %s.byte.gep499, align 1
  %s.byte.val501 = zext i8 %s.byte500 to i64
  %cmptmp502 = icmp eq i64 %s.byte.val501, 33
  br i1 %cmptmp502, label %choice.then504, label %choice.exit505

idx_oob497:                                       ; preds = %and.239.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then504:                                   ; preds = %idx_ok496
  %addtmp508 = add nuw nsw i64 %1, 3
  store i64 %addtmp508, ptr %fld.gep4, align 8
  %addtmp512 = add i64 %3, 3
  store i64 %addtmp512, ptr %fld.gep7, align 8
  %arena.cur515 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc516 = call ptr @dva_arena_alloc(ptr %arena.cur515, i64 16)
  store i64 0, ptr %enum.alloc516, align 8
  %pay.gep518 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc516, i32 0, i32 1
  store ptr null, ptr %pay.gep518, align 8
  %call.res522 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc516, i64 %1, i64 3, i64 %2, i64 %3, ptr @str.33.struct)
  br label %common.ret

choice.exit505:                                   ; preds = %idx_ok478, %idx_ok460, %idx_ok496
  br i1 %cmptmp449, label %and.240.then, label %choice.exit583

and.240.then:                                     ; preds = %choice.exit505
  %fld.load530 = load ptr, ptr %0, align 8
  %s.read.len532 = load i64, ptr %fld.load530, align 8
  %s.read.len533 = and i64 %s.read.len532, 281474976710655
  %s.read.data534 = getelementptr inbounds { i64, ptr }, ptr %fld.load530, i32 0, i32 1
  %s.read.data535 = load ptr, ptr %s.read.data534, align 8
  %idx.oob537 = icmp uge i64 %1, %s.read.len533
  br i1 %idx.oob537, label %idx_oob539, label %idx_ok538

idx_ok538:                                        ; preds = %and.240.then
  %s.byte.gep541 = getelementptr i8, ptr %s.read.data535, i64 %1
  %s.byte542 = load i8, ptr %s.byte.gep541, align 1
  %s.byte.val543 = zext i8 %s.byte542 to i64
  %cmptmp544 = icmp eq i64 %s.byte.val543, 45
  br i1 %cmptmp544, label %and.241.then, label %choice.exit583

idx_oob539:                                       ; preds = %and.240.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.241.then:                                     ; preds = %idx_ok538
  %fld.load547 = load ptr, ptr %0, align 8
  %s.read.len549 = load i64, ptr %fld.load547, align 8
  %s.read.len550 = and i64 %s.read.len549, 281474976710655
  %s.read.data551 = getelementptr inbounds { i64, ptr }, ptr %fld.load547, i32 0, i32 1
  %s.read.data552 = load ptr, ptr %s.read.data551, align 8
  %addtmp554 = add nuw nsw i64 %1, 1
  %idx.oob555 = icmp uge i64 %addtmp554, %s.read.len550
  br i1 %idx.oob555, label %idx_oob557, label %idx_ok556

idx_ok556:                                        ; preds = %and.241.then
  %s.byte.gep559 = getelementptr i8, ptr %s.read.data552, i64 %addtmp554
  %s.byte560 = load i8, ptr %s.byte.gep559, align 1
  %s.byte.val561 = zext i8 %s.byte560 to i64
  %cmptmp562 = icmp eq i64 %s.byte.val561, 45
  br i1 %cmptmp562, label %and.242.then, label %choice.exit583

idx_oob557:                                       ; preds = %and.241.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.242.then:                                     ; preds = %idx_ok556
  %fld.load565 = load ptr, ptr %0, align 8
  %s.read.len567 = load i64, ptr %fld.load565, align 8
  %s.read.len568 = and i64 %s.read.len567, 281474976710655
  %s.read.data569 = getelementptr inbounds { i64, ptr }, ptr %fld.load565, i32 0, i32 1
  %s.read.data570 = load ptr, ptr %s.read.data569, align 8
  %addtmp572 = add nuw nsw i64 %1, 2
  %idx.oob573 = icmp uge i64 %addtmp572, %s.read.len568
  br i1 %idx.oob573, label %idx_oob575, label %idx_ok574

idx_ok574:                                        ; preds = %and.242.then
  %s.byte.gep577 = getelementptr i8, ptr %s.read.data570, i64 %addtmp572
  %s.byte578 = load i8, ptr %s.byte.gep577, align 1
  %s.byte.val579 = zext i8 %s.byte578 to i64
  %cmptmp580 = icmp eq i64 %s.byte.val579, 124
  br i1 %cmptmp580, label %choice.then582, label %choice.exit583

idx_oob575:                                       ; preds = %and.242.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then582:                                   ; preds = %idx_ok574
  %addtmp586 = add nuw nsw i64 %1, 3
  store i64 %addtmp586, ptr %fld.gep4, align 8
  %addtmp590 = add i64 %3, 3
  store i64 %addtmp590, ptr %fld.gep7, align 8
  %arena.cur593 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc594 = call ptr @dva_arena_alloc(ptr %arena.cur593, i64 16)
  store i64 0, ptr %enum.alloc594, align 8
  %pay.gep596 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc594, i32 0, i32 1
  store ptr null, ptr %pay.gep596, align 8
  %call.res600 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc594, i64 %1, i64 3, i64 %2, i64 %3, ptr @str.34.struct)
  br label %common.ret

choice.exit583:                                   ; preds = %idx_ok556, %choice.exit505, %choice.exit427, %idx_ok538, %idx_ok574
  br i1 %cmptmp113, label %and.243.then, label %choice.exit643

and.243.then:                                     ; preds = %choice.exit583
  %fld.load608 = load ptr, ptr %0, align 8
  %s.read.len610 = load i64, ptr %fld.load608, align 8
  %s.read.len611 = and i64 %s.read.len610, 281474976710655
  %s.read.data612 = getelementptr inbounds { i64, ptr }, ptr %fld.load608, i32 0, i32 1
  %s.read.data613 = load ptr, ptr %s.read.data612, align 8
  %idx.oob615 = icmp uge i64 %1, %s.read.len611
  br i1 %idx.oob615, label %idx_oob617, label %idx_ok616

idx_ok616:                                        ; preds = %and.243.then
  %s.byte.gep619 = getelementptr i8, ptr %s.read.data613, i64 %1
  %s.byte620 = load i8, ptr %s.byte.gep619, align 1
  %s.byte.val621 = zext i8 %s.byte620 to i64
  %cmptmp622 = icmp eq i64 %s.byte.val621, 126
  br i1 %cmptmp622, label %and.244.then, label %choice.exit643

idx_oob617:                                       ; preds = %and.243.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.244.then:                                     ; preds = %idx_ok616
  %fld.load625 = load ptr, ptr %0, align 8
  %s.read.len627 = load i64, ptr %fld.load625, align 8
  %s.read.len628 = and i64 %s.read.len627, 281474976710655
  %s.read.data629 = getelementptr inbounds { i64, ptr }, ptr %fld.load625, i32 0, i32 1
  %s.read.data630 = load ptr, ptr %s.read.data629, align 8
  %addtmp632 = add nuw nsw i64 %1, 1
  %idx.oob633 = icmp uge i64 %addtmp632, %s.read.len628
  br i1 %idx.oob633, label %idx_oob635, label %idx_ok634

idx_ok634:                                        ; preds = %and.244.then
  %s.byte.gep637 = getelementptr i8, ptr %s.read.data630, i64 %addtmp632
  %s.byte638 = load i8, ptr %s.byte.gep637, align 1
  %s.byte.val639 = zext i8 %s.byte638 to i64
  %cmptmp640 = icmp eq i64 %s.byte.val639, 126
  br i1 %cmptmp640, label %choice.then642, label %choice.exit643

idx_oob635:                                       ; preds = %and.244.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then642:                                   ; preds = %idx_ok634
  %addtmp646 = add nuw nsw i64 %1, 2
  store i64 %addtmp646, ptr %fld.gep4, align 8
  %addtmp650 = add i64 %3, 2
  store i64 %addtmp650, ptr %fld.gep7, align 8
  %arena.cur653 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc654 = call ptr @dva_arena_alloc(ptr %arena.cur653, i64 16)
  store i64 0, ptr %enum.alloc654, align 8
  %pay.gep656 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc654, i32 0, i32 1
  store ptr null, ptr %pay.gep656, align 8
  %call.res660 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc654, i64 %1, i64 2, i64 %2, i64 %3, ptr @str.35.struct)
  br label %common.ret

choice.exit643:                                   ; preds = %idx_ok616, %choice.exit583, %idx_ok634
  br i1 %cmptmp449, label %and.245.then, label %choice.exit721

and.245.then:                                     ; preds = %choice.exit643
  %fld.load668 = load ptr, ptr %0, align 8
  %s.read.len670 = load i64, ptr %fld.load668, align 8
  %s.read.len671 = and i64 %s.read.len670, 281474976710655
  %s.read.data672 = getelementptr inbounds { i64, ptr }, ptr %fld.load668, i32 0, i32 1
  %s.read.data673 = load ptr, ptr %s.read.data672, align 8
  %idx.oob675 = icmp uge i64 %1, %s.read.len671
  br i1 %idx.oob675, label %idx_oob677, label %idx_ok676

idx_ok676:                                        ; preds = %and.245.then
  %s.byte.gep679 = getelementptr i8, ptr %s.read.data673, i64 %1
  %s.byte680 = load i8, ptr %s.byte.gep679, align 1
  %s.byte.val681 = zext i8 %s.byte680 to i64
  %cmptmp682 = icmp eq i64 %s.byte.val681, 46
  br i1 %cmptmp682, label %and.246.then, label %choice.exit721

idx_oob677:                                       ; preds = %and.245.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.246.then:                                     ; preds = %idx_ok676
  %fld.load685 = load ptr, ptr %0, align 8
  %s.read.len687 = load i64, ptr %fld.load685, align 8
  %s.read.len688 = and i64 %s.read.len687, 281474976710655
  %s.read.data689 = getelementptr inbounds { i64, ptr }, ptr %fld.load685, i32 0, i32 1
  %s.read.data690 = load ptr, ptr %s.read.data689, align 8
  %addtmp692 = add nuw nsw i64 %1, 1
  %idx.oob693 = icmp uge i64 %addtmp692, %s.read.len688
  br i1 %idx.oob693, label %idx_oob695, label %idx_ok694

idx_ok694:                                        ; preds = %and.246.then
  %s.byte.gep697 = getelementptr i8, ptr %s.read.data690, i64 %addtmp692
  %s.byte698 = load i8, ptr %s.byte.gep697, align 1
  %s.byte.val699 = zext i8 %s.byte698 to i64
  %cmptmp700 = icmp eq i64 %s.byte.val699, 94
  br i1 %cmptmp700, label %and.247.then, label %choice.exit721

idx_oob695:                                       ; preds = %and.246.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.247.then:                                     ; preds = %idx_ok694
  %fld.load703 = load ptr, ptr %0, align 8
  %s.read.len705 = load i64, ptr %fld.load703, align 8
  %s.read.len706 = and i64 %s.read.len705, 281474976710655
  %s.read.data707 = getelementptr inbounds { i64, ptr }, ptr %fld.load703, i32 0, i32 1
  %s.read.data708 = load ptr, ptr %s.read.data707, align 8
  %addtmp710 = add nuw nsw i64 %1, 2
  %idx.oob711 = icmp uge i64 %addtmp710, %s.read.len706
  br i1 %idx.oob711, label %idx_oob713, label %idx_ok712

idx_ok712:                                        ; preds = %and.247.then
  %s.byte.gep715 = getelementptr i8, ptr %s.read.data708, i64 %addtmp710
  %s.byte716 = load i8, ptr %s.byte.gep715, align 1
  %s.byte.val717 = zext i8 %s.byte716 to i64
  %cmptmp718 = icmp eq i64 %s.byte.val717, 46
  br i1 %cmptmp718, label %choice.then720, label %choice.exit721

idx_oob713:                                       ; preds = %and.247.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then720:                                   ; preds = %idx_ok712
  %addtmp724 = add nuw nsw i64 %1, 3
  store i64 %addtmp724, ptr %fld.gep4, align 8
  %addtmp728 = add i64 %3, 3
  store i64 %addtmp728, ptr %fld.gep7, align 8
  %arena.cur731 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc732 = call ptr @dva_arena_alloc(ptr %arena.cur731, i64 16)
  store i64 0, ptr %enum.alloc732, align 8
  %pay.gep734 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc732, i32 0, i32 1
  store ptr null, ptr %pay.gep734, align 8
  %call.res738 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc732, i64 %1, i64 3, i64 %2, i64 %3, ptr @str.36.struct)
  br label %common.ret

choice.exit721:                                   ; preds = %idx_ok694, %choice.exit643, %idx_ok676, %idx_ok712
  br i1 %cmptmp31, label %and.248.then, label %choice.exit799

and.248.then:                                     ; preds = %choice.exit721
  %fld.load746 = load ptr, ptr %0, align 8
  %s.read.len748 = load i64, ptr %fld.load746, align 8
  %s.read.len749 = and i64 %s.read.len748, 281474976710655
  %s.read.data750 = getelementptr inbounds { i64, ptr }, ptr %fld.load746, i32 0, i32 1
  %s.read.data751 = load ptr, ptr %s.read.data750, align 8
  %idx.oob753 = icmp uge i64 %1, %s.read.len749
  br i1 %idx.oob753, label %idx_oob755, label %idx_ok754

idx_ok754:                                        ; preds = %and.248.then
  %s.byte.gep757 = getelementptr i8, ptr %s.read.data751, i64 %1
  %s.byte758 = load i8, ptr %s.byte.gep757, align 1
  %s.byte.val759 = zext i8 %s.byte758 to i64
  %cmptmp760 = icmp eq i64 %s.byte.val759, 33
  br i1 %cmptmp760, label %and.249.then, label %choice.exit799

idx_oob755:                                       ; preds = %and.248.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.249.then:                                     ; preds = %idx_ok754
  %fld.load763 = load ptr, ptr %0, align 8
  %s.read.len765 = load i64, ptr %fld.load763, align 8
  %s.read.len766 = and i64 %s.read.len765, 281474976710655
  %s.read.data767 = getelementptr inbounds { i64, ptr }, ptr %fld.load763, i32 0, i32 1
  %s.read.data768 = load ptr, ptr %s.read.data767, align 8
  %addtmp770 = add nuw nsw i64 %1, 1
  %idx.oob771 = icmp uge i64 %addtmp770, %s.read.len766
  br i1 %idx.oob771, label %idx_oob773, label %idx_ok772

idx_ok772:                                        ; preds = %and.249.then
  %s.byte.gep775 = getelementptr i8, ptr %s.read.data768, i64 %addtmp770
  %s.byte776 = load i8, ptr %s.byte.gep775, align 1
  %s.byte.val777 = zext i8 %s.byte776 to i64
  %cmptmp778 = icmp eq i64 %s.byte.val777, 60
  br i1 %cmptmp778, label %and.250.then, label %choice.exit799

idx_oob773:                                       ; preds = %and.249.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.250.then:                                     ; preds = %idx_ok772
  %fld.load781 = load ptr, ptr %0, align 8
  %s.read.len783 = load i64, ptr %fld.load781, align 8
  %s.read.len784 = and i64 %s.read.len783, 281474976710655
  %s.read.data785 = getelementptr inbounds { i64, ptr }, ptr %fld.load781, i32 0, i32 1
  %s.read.data786 = load ptr, ptr %s.read.data785, align 8
  %addtmp788 = add nuw nsw i64 %1, 2
  %idx.oob789 = icmp uge i64 %addtmp788, %s.read.len784
  br i1 %idx.oob789, label %idx_oob791, label %idx_ok790

idx_ok790:                                        ; preds = %and.250.then
  %s.byte.gep793 = getelementptr i8, ptr %s.read.data786, i64 %addtmp788
  %s.byte794 = load i8, ptr %s.byte.gep793, align 1
  %s.byte.val795 = zext i8 %s.byte794 to i64
  %cmptmp796 = icmp eq i64 %s.byte.val795, 62
  br i1 %cmptmp796, label %choice.then798, label %choice.exit799

idx_oob791:                                       ; preds = %and.250.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then798:                                   ; preds = %idx_ok790
  %addtmp802 = add nuw nsw i64 %1, 1
  store i64 %addtmp802, ptr %fld.gep4, align 8
  %addtmp806 = add i64 %3, 1
  store i64 %addtmp806, ptr %fld.gep7, align 8
  %arena.cur809 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc810 = call ptr @dva_arena_alloc(ptr %arena.cur809, i64 16)
  store i64 0, ptr %enum.alloc810, align 8
  %pay.gep812 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc810, i32 0, i32 1
  store ptr null, ptr %pay.gep812, align 8
  %call.res816 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc810, i64 %1, i64 1, i64 %2, i64 %3, ptr @str.31.struct)
  br label %common.ret

choice.exit799:                                   ; preds = %idx_ok772, %choice.exit721, %idx_ok754, %idx_ok790
  %cmptmp821 = icmp sgt i64 %subtmp, 4
  br i1 %cmptmp821, label %and.251.then, label %choice.exit991

and.251.then:                                     ; preds = %choice.exit799
  %fld.load824 = load ptr, ptr %0, align 8
  %s.read.len826 = load i64, ptr %fld.load824, align 8
  %s.read.len827 = and i64 %s.read.len826, 281474976710655
  %s.read.data828 = getelementptr inbounds { i64, ptr }, ptr %fld.load824, i32 0, i32 1
  %s.read.data829 = load ptr, ptr %s.read.data828, align 8
  %idx.oob831 = icmp uge i64 %1, %s.read.len827
  br i1 %idx.oob831, label %idx_oob833, label %idx_ok832

idx_ok832:                                        ; preds = %and.251.then
  %s.byte.gep835 = getelementptr i8, ptr %s.read.data829, i64 %1
  %s.byte836 = load i8, ptr %s.byte.gep835, align 1
  %s.byte.val837 = zext i8 %s.byte836 to i64
  %cmptmp838 = icmp eq i64 %s.byte.val837, 124
  br i1 %cmptmp838, label %and.252.then, label %choice.exit895

idx_oob833:                                       ; preds = %and.251.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.252.then:                                     ; preds = %idx_ok832
  %fld.load841 = load ptr, ptr %0, align 8
  %s.read.len843 = load i64, ptr %fld.load841, align 8
  %s.read.len844 = and i64 %s.read.len843, 281474976710655
  %s.read.data845 = getelementptr inbounds { i64, ptr }, ptr %fld.load841, i32 0, i32 1
  %s.read.data846 = load ptr, ptr %s.read.data845, align 8
  %addtmp848 = add nuw nsw i64 %1, 1
  %idx.oob849 = icmp uge i64 %addtmp848, %s.read.len844
  br i1 %idx.oob849, label %idx_oob851, label %idx_ok850

idx_ok850:                                        ; preds = %and.252.then
  %s.byte.gep853 = getelementptr i8, ptr %s.read.data846, i64 %addtmp848
  %s.byte854 = load i8, ptr %s.byte.gep853, align 1
  %s.byte.val855 = zext i8 %s.byte854 to i64
  %cmptmp856 = icmp eq i64 %s.byte.val855, 45
  br i1 %cmptmp856, label %and.253.then, label %choice.exit895

idx_oob851:                                       ; preds = %and.252.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.253.then:                                     ; preds = %idx_ok850
  %fld.load859 = load ptr, ptr %0, align 8
  %s.read.len861 = load i64, ptr %fld.load859, align 8
  %s.read.len862 = and i64 %s.read.len861, 281474976710655
  %s.read.data863 = getelementptr inbounds { i64, ptr }, ptr %fld.load859, i32 0, i32 1
  %s.read.data864 = load ptr, ptr %s.read.data863, align 8
  %addtmp866 = add nuw nsw i64 %1, 2
  %idx.oob867 = icmp uge i64 %addtmp866, %s.read.len862
  br i1 %idx.oob867, label %idx_oob869, label %idx_ok868

idx_ok868:                                        ; preds = %and.253.then
  %s.byte.gep871 = getelementptr i8, ptr %s.read.data864, i64 %addtmp866
  %s.byte872 = load i8, ptr %s.byte.gep871, align 1
  %s.byte.val873 = zext i8 %s.byte872 to i64
  %cmptmp874 = icmp eq i64 %s.byte.val873, 45
  br i1 %cmptmp874, label %and.254.then, label %choice.exit895

idx_oob869:                                       ; preds = %and.253.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.254.then:                                     ; preds = %idx_ok868
  %fld.load877 = load ptr, ptr %0, align 8
  %s.read.len879 = load i64, ptr %fld.load877, align 8
  %s.read.len880 = and i64 %s.read.len879, 281474976710655
  %s.read.data881 = getelementptr inbounds { i64, ptr }, ptr %fld.load877, i32 0, i32 1
  %s.read.data882 = load ptr, ptr %s.read.data881, align 8
  %addtmp884 = add nuw nsw i64 %1, 3
  %idx.oob885 = icmp uge i64 %addtmp884, %s.read.len880
  br i1 %idx.oob885, label %idx_oob887, label %idx_ok886

idx_ok886:                                        ; preds = %and.254.then
  %s.byte.gep889 = getelementptr i8, ptr %s.read.data882, i64 %addtmp884
  %s.byte890 = load i8, ptr %s.byte.gep889, align 1
  %s.byte.val891 = zext i8 %s.byte890 to i64
  %cmptmp892 = icmp eq i64 %s.byte.val891, 62
  br i1 %cmptmp892, label %choice.then894, label %choice.exit895

idx_oob887:                                       ; preds = %and.254.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then894:                                   ; preds = %idx_ok886
  %addtmp898 = add nuw nsw i64 %1, 4
  store i64 %addtmp898, ptr %fld.gep4, align 8
  %addtmp902 = add i64 %3, 4
  store i64 %addtmp902, ptr %fld.gep7, align 8
  %arena.cur905 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc906 = call ptr @dva_arena_alloc(ptr %arena.cur905, i64 16)
  store i64 0, ptr %enum.alloc906, align 8
  %pay.gep908 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc906, i32 0, i32 1
  store ptr null, ptr %pay.gep908, align 8
  %call.res912 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc906, i64 %1, i64 4, i64 %2, i64 %3, ptr @str.37.struct)
  br label %common.ret

choice.exit895:                                   ; preds = %idx_ok868, %idx_ok832, %idx_ok850, %idx_ok886
  br i1 %cmptmp821, label %and.255.then, label %choice.exit991

and.255.then:                                     ; preds = %choice.exit895
  %fld.load920 = load ptr, ptr %0, align 8
  %s.read.len922 = load i64, ptr %fld.load920, align 8
  %s.read.len923 = and i64 %s.read.len922, 281474976710655
  %s.read.data924 = getelementptr inbounds { i64, ptr }, ptr %fld.load920, i32 0, i32 1
  %s.read.data925 = load ptr, ptr %s.read.data924, align 8
  %idx.oob927 = icmp uge i64 %1, %s.read.len923
  br i1 %idx.oob927, label %idx_oob929, label %idx_ok928

idx_ok928:                                        ; preds = %and.255.then
  %s.byte.gep931 = getelementptr i8, ptr %s.read.data925, i64 %1
  %s.byte932 = load i8, ptr %s.byte.gep931, align 1
  %s.byte.val933 = zext i8 %s.byte932 to i64
  %cmptmp934 = icmp eq i64 %s.byte.val933, 124
  br i1 %cmptmp934, label %and.256.then, label %choice.exit991

idx_oob929:                                       ; preds = %and.255.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.256.then:                                     ; preds = %idx_ok928
  %fld.load937 = load ptr, ptr %0, align 8
  %s.read.len939 = load i64, ptr %fld.load937, align 8
  %s.read.len940 = and i64 %s.read.len939, 281474976710655
  %s.read.data941 = getelementptr inbounds { i64, ptr }, ptr %fld.load937, i32 0, i32 1
  %s.read.data942 = load ptr, ptr %s.read.data941, align 8
  %addtmp944 = add nuw nsw i64 %1, 1
  %idx.oob945 = icmp uge i64 %addtmp944, %s.read.len940
  br i1 %idx.oob945, label %idx_oob947, label %idx_ok946

idx_ok946:                                        ; preds = %and.256.then
  %s.byte.gep949 = getelementptr i8, ptr %s.read.data942, i64 %addtmp944
  %s.byte950 = load i8, ptr %s.byte.gep949, align 1
  %s.byte.val951 = zext i8 %s.byte950 to i64
  %cmptmp952 = icmp eq i64 %s.byte.val951, 43
  br i1 %cmptmp952, label %and.257.then, label %choice.exit991

idx_oob947:                                       ; preds = %and.256.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.257.then:                                     ; preds = %idx_ok946
  %fld.load955 = load ptr, ptr %0, align 8
  %s.read.len957 = load i64, ptr %fld.load955, align 8
  %s.read.len958 = and i64 %s.read.len957, 281474976710655
  %s.read.data959 = getelementptr inbounds { i64, ptr }, ptr %fld.load955, i32 0, i32 1
  %s.read.data960 = load ptr, ptr %s.read.data959, align 8
  %addtmp962 = add nuw nsw i64 %1, 2
  %idx.oob963 = icmp uge i64 %addtmp962, %s.read.len958
  br i1 %idx.oob963, label %idx_oob965, label %idx_ok964

idx_ok964:                                        ; preds = %and.257.then
  %s.byte.gep967 = getelementptr i8, ptr %s.read.data960, i64 %addtmp962
  %s.byte968 = load i8, ptr %s.byte.gep967, align 1
  %s.byte.val969 = zext i8 %s.byte968 to i64
  %cmptmp970 = icmp eq i64 %s.byte.val969, 43
  br i1 %cmptmp970, label %and.258.then, label %choice.exit991

idx_oob965:                                       ; preds = %and.257.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.258.then:                                     ; preds = %idx_ok964
  %fld.load973 = load ptr, ptr %0, align 8
  %s.read.len975 = load i64, ptr %fld.load973, align 8
  %s.read.len976 = and i64 %s.read.len975, 281474976710655
  %s.read.data977 = getelementptr inbounds { i64, ptr }, ptr %fld.load973, i32 0, i32 1
  %s.read.data978 = load ptr, ptr %s.read.data977, align 8
  %addtmp980 = add nuw nsw i64 %1, 3
  %idx.oob981 = icmp uge i64 %addtmp980, %s.read.len976
  br i1 %idx.oob981, label %idx_oob983, label %idx_ok982

idx_ok982:                                        ; preds = %and.258.then
  %s.byte.gep985 = getelementptr i8, ptr %s.read.data978, i64 %addtmp980
  %s.byte986 = load i8, ptr %s.byte.gep985, align 1
  %s.byte.val987 = zext i8 %s.byte986 to i64
  %cmptmp988 = icmp eq i64 %s.byte.val987, 62
  br i1 %cmptmp988, label %choice.then990, label %choice.exit991

idx_oob983:                                       ; preds = %and.258.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then990:                                   ; preds = %idx_ok982
  %addtmp994 = add nuw nsw i64 %1, 4
  store i64 %addtmp994, ptr %fld.gep4, align 8
  %addtmp998 = add i64 %3, 4
  store i64 %addtmp998, ptr %fld.gep7, align 8
  %arena.cur1001 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1002 = call ptr @dva_arena_alloc(ptr %arena.cur1001, i64 16)
  store i64 0, ptr %enum.alloc1002, align 8
  %pay.gep1004 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1002, i32 0, i32 1
  store ptr null, ptr %pay.gep1004, align 8
  %call.res1008 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc1002, i64 %1, i64 4, i64 %2, i64 %3, ptr @str.38.struct)
  br label %common.ret

choice.exit991:                                   ; preds = %idx_ok964, %idx_ok928, %choice.exit799, %choice.exit895, %idx_ok946, %idx_ok982
  br i1 %cmptmp449, label %and.259.then, label %choice.exit1147

and.259.then:                                     ; preds = %choice.exit991
  %fld.load1016 = load ptr, ptr %0, align 8
  %s.read.len1018 = load i64, ptr %fld.load1016, align 8
  %s.read.len1019 = and i64 %s.read.len1018, 281474976710655
  %s.read.data1020 = getelementptr inbounds { i64, ptr }, ptr %fld.load1016, i32 0, i32 1
  %s.read.data1021 = load ptr, ptr %s.read.data1020, align 8
  %idx.oob1023 = icmp uge i64 %1, %s.read.len1019
  br i1 %idx.oob1023, label %idx_oob1025, label %idx_ok1024

idx_ok1024:                                       ; preds = %and.259.then
  %s.byte.gep1027 = getelementptr i8, ptr %s.read.data1021, i64 %1
  %s.byte1028 = load i8, ptr %s.byte.gep1027, align 1
  %s.byte.val1029 = zext i8 %s.byte1028 to i64
  %cmptmp1030 = icmp eq i64 %s.byte.val1029, 124
  br i1 %cmptmp1030, label %and.260.then, label %choice.exit1069

idx_oob1025:                                      ; preds = %and.259.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.260.then:                                     ; preds = %idx_ok1024
  %fld.load1033 = load ptr, ptr %0, align 8
  %s.read.len1035 = load i64, ptr %fld.load1033, align 8
  %s.read.len1036 = and i64 %s.read.len1035, 281474976710655
  %s.read.data1037 = getelementptr inbounds { i64, ptr }, ptr %fld.load1033, i32 0, i32 1
  %s.read.data1038 = load ptr, ptr %s.read.data1037, align 8
  %addtmp1040 = add nuw nsw i64 %1, 1
  %idx.oob1041 = icmp uge i64 %addtmp1040, %s.read.len1036
  br i1 %idx.oob1041, label %idx_oob1043, label %idx_ok1042

idx_ok1042:                                       ; preds = %and.260.then
  %s.byte.gep1045 = getelementptr i8, ptr %s.read.data1038, i64 %addtmp1040
  %s.byte1046 = load i8, ptr %s.byte.gep1045, align 1
  %s.byte.val1047 = zext i8 %s.byte1046 to i64
  %cmptmp1048 = icmp eq i64 %s.byte.val1047, 45
  br i1 %cmptmp1048, label %and.261.then, label %choice.exit1069

idx_oob1043:                                      ; preds = %and.260.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.261.then:                                     ; preds = %idx_ok1042
  %fld.load1051 = load ptr, ptr %0, align 8
  %s.read.len1053 = load i64, ptr %fld.load1051, align 8
  %s.read.len1054 = and i64 %s.read.len1053, 281474976710655
  %s.read.data1055 = getelementptr inbounds { i64, ptr }, ptr %fld.load1051, i32 0, i32 1
  %s.read.data1056 = load ptr, ptr %s.read.data1055, align 8
  %addtmp1058 = add nuw nsw i64 %1, 2
  %idx.oob1059 = icmp uge i64 %addtmp1058, %s.read.len1054
  br i1 %idx.oob1059, label %idx_oob1061, label %idx_ok1060

idx_ok1060:                                       ; preds = %and.261.then
  %s.byte.gep1063 = getelementptr i8, ptr %s.read.data1056, i64 %addtmp1058
  %s.byte1064 = load i8, ptr %s.byte.gep1063, align 1
  %s.byte.val1065 = zext i8 %s.byte1064 to i64
  %cmptmp1066 = icmp eq i64 %s.byte.val1065, 62
  br i1 %cmptmp1066, label %choice.then1068, label %choice.exit1069

idx_oob1061:                                      ; preds = %and.261.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then1068:                                  ; preds = %idx_ok1060
  %addtmp1072 = add nuw nsw i64 %1, 3
  store i64 %addtmp1072, ptr %fld.gep4, align 8
  %addtmp1076 = add i64 %3, 3
  store i64 %addtmp1076, ptr %fld.gep7, align 8
  %arena.cur1079 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1080 = call ptr @dva_arena_alloc(ptr %arena.cur1079, i64 16)
  store i64 0, ptr %enum.alloc1080, align 8
  %pay.gep1082 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1080, i32 0, i32 1
  store ptr null, ptr %pay.gep1082, align 8
  %call.res1086 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc1080, i64 %1, i64 3, i64 %2, i64 %3, ptr @str.39.struct)
  br label %common.ret

choice.exit1069:                                  ; preds = %idx_ok1042, %idx_ok1024, %idx_ok1060
  br i1 %cmptmp449, label %and.262.then, label %choice.exit1147

and.262.then:                                     ; preds = %choice.exit1069
  %fld.load1094 = load ptr, ptr %0, align 8
  %s.read.len1096 = load i64, ptr %fld.load1094, align 8
  %s.read.len1097 = and i64 %s.read.len1096, 281474976710655
  %s.read.data1098 = getelementptr inbounds { i64, ptr }, ptr %fld.load1094, i32 0, i32 1
  %s.read.data1099 = load ptr, ptr %s.read.data1098, align 8
  %idx.oob1101 = icmp uge i64 %1, %s.read.len1097
  br i1 %idx.oob1101, label %idx_oob1103, label %idx_ok1102

idx_ok1102:                                       ; preds = %and.262.then
  %s.byte.gep1105 = getelementptr i8, ptr %s.read.data1099, i64 %1
  %s.byte1106 = load i8, ptr %s.byte.gep1105, align 1
  %s.byte.val1107 = zext i8 %s.byte1106 to i64
  %cmptmp1108 = icmp eq i64 %s.byte.val1107, 124
  br i1 %cmptmp1108, label %and.263.then, label %choice.exit1147

idx_oob1103:                                      ; preds = %and.262.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.263.then:                                     ; preds = %idx_ok1102
  %fld.load1111 = load ptr, ptr %0, align 8
  %s.read.len1113 = load i64, ptr %fld.load1111, align 8
  %s.read.len1114 = and i64 %s.read.len1113, 281474976710655
  %s.read.data1115 = getelementptr inbounds { i64, ptr }, ptr %fld.load1111, i32 0, i32 1
  %s.read.data1116 = load ptr, ptr %s.read.data1115, align 8
  %addtmp1118 = add nuw nsw i64 %1, 1
  %idx.oob1119 = icmp uge i64 %addtmp1118, %s.read.len1114
  br i1 %idx.oob1119, label %idx_oob1121, label %idx_ok1120

idx_ok1120:                                       ; preds = %and.263.then
  %s.byte.gep1123 = getelementptr i8, ptr %s.read.data1116, i64 %addtmp1118
  %s.byte1124 = load i8, ptr %s.byte.gep1123, align 1
  %s.byte.val1125 = zext i8 %s.byte1124 to i64
  %cmptmp1126 = icmp eq i64 %s.byte.val1125, 43
  br i1 %cmptmp1126, label %and.264.then, label %choice.exit1147

idx_oob1121:                                      ; preds = %and.263.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.264.then:                                     ; preds = %idx_ok1120
  %fld.load1129 = load ptr, ptr %0, align 8
  %s.read.len1131 = load i64, ptr %fld.load1129, align 8
  %s.read.len1132 = and i64 %s.read.len1131, 281474976710655
  %s.read.data1133 = getelementptr inbounds { i64, ptr }, ptr %fld.load1129, i32 0, i32 1
  %s.read.data1134 = load ptr, ptr %s.read.data1133, align 8
  %addtmp1136 = add nuw nsw i64 %1, 2
  %idx.oob1137 = icmp uge i64 %addtmp1136, %s.read.len1132
  br i1 %idx.oob1137, label %idx_oob1139, label %idx_ok1138

idx_ok1138:                                       ; preds = %and.264.then
  %s.byte.gep1141 = getelementptr i8, ptr %s.read.data1134, i64 %addtmp1136
  %s.byte1142 = load i8, ptr %s.byte.gep1141, align 1
  %s.byte.val1143 = zext i8 %s.byte1142 to i64
  %cmptmp1144 = icmp eq i64 %s.byte.val1143, 62
  br i1 %cmptmp1144, label %choice.then1146, label %choice.exit1147

idx_oob1139:                                      ; preds = %and.264.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then1146:                                  ; preds = %idx_ok1138
  %addtmp1150 = add nuw nsw i64 %1, 3
  store i64 %addtmp1150, ptr %fld.gep4, align 8
  %addtmp1154 = add i64 %3, 3
  store i64 %addtmp1154, ptr %fld.gep7, align 8
  %arena.cur1157 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1158 = call ptr @dva_arena_alloc(ptr %arena.cur1157, i64 16)
  store i64 0, ptr %enum.alloc1158, align 8
  %pay.gep1160 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1158, i32 0, i32 1
  store ptr null, ptr %pay.gep1160, align 8
  %call.res1164 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc1158, i64 %1, i64 3, i64 %2, i64 %3, ptr @str.40.struct)
  br label %common.ret

choice.exit1147:                                  ; preds = %idx_ok1120, %choice.exit1069, %choice.exit991, %idx_ok1102, %idx_ok1138
  %arena.cur1167 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1168 = call ptr @dva_arena_alloc(ptr %arena.cur1167, i64 16)
  store i64 0, ptr %enum.alloc1168, align 8
  %pay.gep1170 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1168, i32 0, i32 1
  store ptr null, ptr %pay.gep1170, align 8
  %fld.load1179 = load ptr, ptr %0, align 8
  %s.read.len1181 = load i64, ptr %fld.load1179, align 8
  %s.read.len1182 = and i64 %s.read.len1181, 281474976710655
  %s.read.data1183 = getelementptr inbounds { i64, ptr }, ptr %fld.load1179, i32 0, i32 1
  %s.read.data1184 = load ptr, ptr %s.read.data1183, align 8
  %rel.start = add nuw nsw i64 %s.read.len1182, %1
  %norm.start = select i1 false, i64 %rel.start, i64 %1
  %c.start.0 = select i1 false, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len1182
  %final.start = select i1 %start.gt.len, i64 %s.read.len1182, i64 %c.start.0
  %end.is_neg = icmp slt i64 %"var.i'.0", 0
  %rel.end = add i64 %s.read.len1182, %"var.i'.0"
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %"var.i'.0"
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len1182
  %final.end = select i1 %end.gt.len, i64 %s.read.len1182, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data1184, i64 %final.start
  %arena.cur1187 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur1187, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %call.res1188 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc1168, i64 %1, i64 %subtmp, i64 %2, i64 %3, ptr %str.view)
  br label %common.ret
}

define void @"lexer::maybe_esc_adv"(ptr %0, i32 %1) #3 {
entry:
  %call.res = call i32 @"lexer::adv"(ptr %0, i32 %1)
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.load5 = load ptr, ptr %0, align 8
  %str.len.query6 = load i64, ptr %fld.load5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %cmptmp = icmp slt i64 %fld.load, %str.len.query7
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res10 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res11 = call i32 @"lexer::adv"(ptr %0, i32 %call.res10)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  ret void
}

define void @"lexer::on_str_esc"(ptr %0, i32 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 13
  store i64 1, ptr %fld.gep, align 8
  call void @"lexer::maybe_esc_adv"(ptr %0, i32 %1)
  ret void
}

define i64 @"lexer::scan_string_body"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  br label %loop.header.265

loop.header.265:                                  ; preds = %choice.exit8, %entry
  %loop.idx.265.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit8 ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.load3 = load ptr, ptr %0, align 8
  %str.len.query4 = load i64, ptr %fld.load3, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %cmptmp = icmp sge i64 %fld.load, %str.len.query5
  br i1 %cmptmp, label %loop.exit.265, label %choice.exit

loop.exit.265:                                    ; preds = %loop.header.265, %choice.case
  %"var.closed'.0" = phi i64 [ 1, %choice.case ], [ 0, %loop.header.265 ]
  ret i64 %"var.closed'.0"

choice.exit:                                      ; preds = %loop.header.265
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  switch i32 %call.res, label %choice.next14 [
    i32 34, label %choice.case
    i32 92, label %choice.case13
  ]

choice.exit8:                                     ; preds = %choice.next14, %choice.case13
  %loop.next = add i64 %loop.idx.265.0, 1
  br label %loop.header.265

choice.case:                                      ; preds = %choice.exit
  %call.res11 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res12 = call i32 @"lexer::adv"(ptr %0, i32 %call.res11)
  br label %loop.exit.265

choice.case13:                                    ; preds = %choice.exit
  call void @"lexer::on_str_esc"(ptr %0, i32 92)
  br label %choice.exit8

choice.next14:                                    ; preds = %choice.exit
  %call.res20 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  br label %choice.exit8
}

define i64 @"lexer::skip_multiline_ws"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  br label %loop.header.266

loop.header.266:                                  ; preds = %choice.case, %entry
  %"var.pos'.0" = phi i64 [ %1, %entry ], [ %addtmp, %choice.case ]
  %loop.idx.266.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.case ]
  %cmptmp = icmp sge i64 %"var.pos'.0", %2
  br i1 %cmptmp, label %loop.exit.266, label %choice.exit

loop.exit.266:                                    ; preds = %idx_ok, %loop.header.266
  ret i64 %"var.pos'.0"

choice.exit:                                      ; preds = %loop.header.266
  %s.read.len4 = load i64, ptr %0, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.pos'.0", %s.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %"var.pos'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %loop.exit.266 [
    i64 32, label %choice.case
    i64 9, label %choice.case
  ]

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

choice.case:                                      ; preds = %idx_ok, %idx_ok
  %addtmp = add nuw nsw i64 %"var.pos'.0", 1
  %loop.next = add i64 %loop.idx.266.0, 1
  br label %loop.header.266
}

define i64 @"lexer::skip_eol_comment"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %addtmp = add i64 %1, 2
  br label %loop.header.267

loop.header.267:                                  ; preds = %choice.next, %entry
  %"var.pos'.0" = phi i64 [ %addtmp, %entry ], [ %addtmp12, %choice.next ]
  %loop.idx.267.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.next ]
  %cmptmp = icmp sge i64 %"var.pos'.0", %2
  br i1 %cmptmp, label %loop.exit.267, label %choice.exit

loop.exit.267:                                    ; preds = %idx_ok, %idx_ok, %loop.header.267
  ret i64 %"var.pos'.0"

choice.exit:                                      ; preds = %loop.header.267
  %s.read.len4 = load i64, ptr %0, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.pos'.0", %s.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %"var.pos'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %choice.next [
    i64 13, label %loop.exit.267
    i64 10, label %loop.exit.267
  ]

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

choice.next:                                      ; preds = %idx_ok
  %addtmp12 = add nuw nsw i64 %"var.pos'.0", 1
  %loop.next = add i64 %loop.idx.267.0, 1
  br label %loop.header.267
}

define i64 @"lexer::check_multiline_str"(ptr %0) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query1 = load i64, ptr %fld.load, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %call.res = call i64 @"lexer::skip_multiline_ws"(ptr %fld.load, i64 %fld.load8, i64 %str.len.query2)
  %addtmp = add i64 %call.res, 1
  %cmptmp = icmp slt i64 %addtmp, %str.len.query2
  br i1 %cmptmp, label %and.268.then, label %choice.exit

and.268.then:                                     ; preds = %entry
  %fld.load14 = load ptr, ptr %0, align 8
  %s.read.len15 = load i64, ptr %fld.load14, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load14, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %s.read.len16
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.268.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp19, label %and.269.then, label %choice.exit

idx_oob:                                          ; preds = %and.268.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.269.then:                                     ; preds = %idx_ok
  %fld.load22 = load ptr, ptr %0, align 8
  %s.read.len24 = load i64, ptr %fld.load22, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %s.read.data26 = getelementptr inbounds { i64, ptr }, ptr %fld.load22, i32 0, i32 1
  %s.read.data27 = load ptr, ptr %s.read.data26, align 8
  %idx.oob30 = icmp uge i64 %addtmp, %s.read.len25
  br i1 %idx.oob30, label %idx_oob32, label %idx_ok31

idx_ok31:                                         ; preds = %and.269.then
  %s.byte.gep34 = getelementptr i8, ptr %s.read.data27, i64 %addtmp
  %s.byte35 = load i8, ptr %s.byte.gep34, align 1
  %s.byte.val36 = zext i8 %s.byte35 to i64
  %cmptmp37 = icmp eq i64 %s.byte.val36, 47
  br i1 %cmptmp37, label %choice.then, label %choice.exit

idx_oob32:                                        ; preds = %and.269.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then:                                      ; preds = %idx_ok31
  %fld.load41 = load ptr, ptr %0, align 8
  %call.res44 = call i64 @"lexer::skip_eol_comment"(ptr %fld.load41, i64 %call.res, i64 %str.len.query2)
  br label %choice.exit

choice.exit:                                      ; preds = %idx_ok, %entry, %idx_ok31, %choice.then
  %choice.res = phi i64 [ %call.res44, %choice.then ], [ %call.res, %idx_ok31 ], [ %call.res, %entry ], [ %call.res, %idx_ok ]
  %cmptmp48 = icmp sge i64 %choice.res, %str.len.query2
  br i1 %cmptmp48, label %choice.exit51, label %choice.else50

choice.else50:                                    ; preds = %choice.exit
  %fld.load54 = load ptr, ptr %0, align 8
  %s.read.len56 = load i64, ptr %fld.load54, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %s.read.data58 = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 1
  %s.read.data59 = load ptr, ptr %s.read.data58, align 8
  %idx.oob61 = icmp uge i64 %choice.res, %s.read.len57
  br i1 %idx.oob61, label %idx_oob63, label %idx_ok62

choice.exit51:                                    ; preds = %and.272.exit, %choice.else116, %choice.else103, %idx_ok94, %idx_ok62, %choice.exit
  %choice.res200 = phi i64 [ 0, %choice.exit ], [ 0, %idx_ok62 ], [ 0, %idx_ok94 ], [ 0, %choice.else103 ], [ %choice.res195, %and.272.exit ], [ 0, %choice.else116 ]
  ret i64 %choice.res200

idx_ok62:                                         ; preds = %choice.else50
  %s.byte.gep65 = getelementptr i8, ptr %s.read.data59, i64 %choice.res
  %s.byte66 = load i8, ptr %s.byte.gep65, align 1
  %s.byte.val67 = zext i8 %s.byte66 to i64
  %cmptmp69 = icmp eq i64 %s.byte.val67, 13
  %addtmp75 = add nuw nsw i64 %choice.res, 1
  %choice.res77 = select i1 %cmptmp69, i64 %addtmp75, i64 %choice.res
  %cmptmp80 = icmp sge i64 %choice.res77, %str.len.query2
  br i1 %cmptmp80, label %choice.exit51, label %choice.else82

idx_oob63:                                        ; preds = %choice.else50
  call void @dva_abort_str_oob_msg()
  unreachable

choice.else82:                                    ; preds = %idx_ok62
  %idx.oob93 = icmp uge i64 %choice.res77, %s.read.len57
  br i1 %idx.oob93, label %idx_oob95, label %idx_ok94

idx_ok94:                                         ; preds = %choice.else82
  %s.byte.gep97 = getelementptr i8, ptr %s.read.data59, i64 %choice.res77
  %s.byte98 = load i8, ptr %s.byte.gep97, align 1
  %s.byte.val99 = zext i8 %s.byte98 to i64
  %cmptmp101 = icmp ne i64 %s.byte.val99, 10
  br i1 %cmptmp101, label %choice.exit51, label %choice.else103

idx_oob95:                                        ; preds = %choice.else82
  call void @dva_abort_str_oob_msg()
  unreachable

choice.else103:                                   ; preds = %idx_ok94
  %addtmp109 = add nuw nsw i64 %choice.res77, 1
  %call.res111 = call i64 @"lexer::skip_multiline_ws"(ptr %fld.load54, i64 %addtmp109, i64 %str.len.query2)
  %cmptmp114 = icmp sge i64 %call.res111, %str.len.query2
  br i1 %cmptmp114, label %choice.exit51, label %choice.else116

choice.else116:                                   ; preds = %choice.else103
  %subtmp = sub i64 %call.res111, %addtmp109
  %call.res122 = call i64 @"lexer::stack_top"(ptr %0), !range !1
  %cmptmp125 = icmp sle i64 %subtmp, %call.res122
  br i1 %cmptmp125, label %choice.exit51, label %choice.else127

choice.else127:                                   ; preds = %choice.else116
  %fld.load131 = load ptr, ptr %0, align 8
  %s.read.len133 = load i64, ptr %fld.load131, align 8
  %s.read.len134 = and i64 %s.read.len133, 281474976710655
  %s.read.data135 = getelementptr inbounds { i64, ptr }, ptr %fld.load131, i32 0, i32 1
  %s.read.data136 = load ptr, ptr %s.read.data135, align 8
  %idx.oob138 = icmp uge i64 %call.res111, %s.read.len134
  br i1 %idx.oob138, label %idx_oob140, label %idx_ok139

idx_ok139:                                        ; preds = %choice.else127
  %s.byte.gep142 = getelementptr i8, ptr %s.read.data136, i64 %call.res111
  %s.byte143 = load i8, ptr %s.byte.gep142, align 1
  %s.byte.val144 = zext i8 %s.byte143 to i64
  %cmptmp146 = icmp eq i64 %s.byte.val144, 34
  %addtmp148 = add nuw nsw i64 %call.res111, 2
  %cmptmp150 = icmp slt i64 %addtmp148, %str.len.query2
  %and.270.phi = select i1 %cmptmp146, i1 %cmptmp150, i1 false
  br i1 %and.270.phi, label %and.271.then, label %and.272.exit

idx_oob140:                                       ; preds = %choice.else127
  call void @dva_abort_str_oob_msg()
  unreachable

and.271.then:                                     ; preds = %idx_ok139
  %addtmp160 = add nuw nsw i64 %call.res111, 1
  %idx.oob161 = icmp uge i64 %addtmp160, %s.read.len134
  br i1 %idx.oob161, label %idx_oob163, label %idx_ok162

idx_ok162:                                        ; preds = %and.271.then
  %s.byte.gep165 = getelementptr i8, ptr %s.read.data136, i64 %addtmp160
  %s.byte166 = load i8, ptr %s.byte.gep165, align 1
  %s.byte.val167 = zext i8 %s.byte166 to i64
  %cmptmp168 = icmp eq i64 %s.byte.val167, 34
  br i1 %cmptmp168, label %and.272.then, label %and.272.exit

idx_oob163:                                       ; preds = %and.271.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.272.then:                                     ; preds = %idx_ok162
  %fld.load171 = load ptr, ptr %0, align 8
  %s.read.len173 = load i64, ptr %fld.load171, align 8
  %s.read.len174 = and i64 %s.read.len173, 281474976710655
  %s.read.data175 = getelementptr inbounds { i64, ptr }, ptr %fld.load171, i32 0, i32 1
  %s.read.data176 = load ptr, ptr %s.read.data175, align 8
  %idx.oob179 = icmp uge i64 %addtmp148, %s.read.len174
  br i1 %idx.oob179, label %idx_oob181, label %idx_ok180

and.272.exit:                                     ; preds = %idx_ok139, %idx_ok162, %idx_ok180
  %and.272.phi = phi i1 [ %cmptmp186, %idx_ok180 ], [ false, %idx_ok162 ], [ false, %idx_ok139 ]
  %nottmp = xor i1 %and.272.phi, true
  %and.273.phi = select i1 %cmptmp146, i1 %nottmp, i1 false
  %choice.res195 = select i1 %and.273.phi, i64 %call.res111, i64 0
  br label %choice.exit51

idx_ok180:                                        ; preds = %and.272.then
  %s.byte.gep183 = getelementptr i8, ptr %s.read.data176, i64 %addtmp148
  %s.byte184 = load i8, ptr %s.byte.gep183, align 1
  %s.byte.val185 = zext i8 %s.byte184 to i64
  %cmptmp186 = icmp eq i64 %s.byte.val185, 34
  br label %and.272.exit

idx_oob181:                                       ; preds = %and.272.then
  call void @dva_abort_str_oob_msg()
  unreachable
}

define i64 @"lexer::stack_top"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %subtmp = sub i64 %fld.load3, 1
  %a.rd.nonnull = icmp ne ptr %fld.load, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %entry
  %a.rd.len4 = load i64, ptr %fld.load, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 4011, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 1222, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 21, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  store i64 4011, ptr %err.alloc7, align 8
  %err.msg.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep9, align 8
  %err.file.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep10, align 8
  %err.line.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 3
  store i64 1222, ptr %err.line.gep11, align 8
  %err.col.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 4
  store i64 21, ptr %err.col.gep12, align 8
  %err.ctx.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 5
  store i64 %subtmp, ptr %err.ctx.gep13, align 8
  %err.ctx1.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep13, i32 0, i32 1
  store i64 %a.rd.len4, ptr %err.ctx1.gep15, align 8
  %err.p2i16 = ptrtoint ptr %err.alloc7 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i16, %a.rd.err.oob ]
  %a.rd.pay. = select i1 %a.rd.tag, i64 %a.rd.pay, i64 0
  %bandtmp = and i64 %a.rd.pay., 65535
  ret i64 %bandtmp
}

define void @"lexer::adv_to"(ptr %0, i64 %1) #3 {
entry:
  br label %loop.header.274

loop.header.274:                                  ; preds = %choice.then, %entry
  %loop.idx.274.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp slt i64 %fld.load, %1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %loop.header.274
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res4 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %loop.next = add i64 %loop.idx.274.0, 1
  br label %loop.header.274

choice.else:                                      ; preds = %loop.header.274
  ret void
}

define { i64, ptr } @"lexer::scan_next_str_part"(ptr %0) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res2 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.gep6 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load7 = load i64, ptr %fld.gep6, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load10 = load i64, ptr %fld.gep9, align 8
  %call.res11 = call i64 @"lexer::scan_string_body"(ptr %0, i64 %fld.load7, i64 %fld.load10), !range !0
  %val.match = icmp eq i64 %call.res11, 0
  br i1 %val.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.case
  %fld.load23 = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load23, 1
  %fld.load26 = load ptr, ptr %0, align 8
  %s.read.len27 = load i64, ptr %fld.load26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load26, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %fld.load, 0
  %rel.start = add i64 %s.read.len28, %fld.load
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len28
  %final.start = select i1 %start.gt.len, i64 %s.read.len28, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp, 0
  %rel.end = add i64 %s.read.len28, %subtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len28
  %final.end = select i1 %end.gt.len, i64 %s.read.len28, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data29, i64 %final.start
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %view.len, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %fld.gep34 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 13
  %fld.load35 = load i64, ptr %fld.gep34, align 8
  %val.match39 = icmp eq i64 %fld.load35, 1
  br i1 %val.match39, label %choice.case37, label %choice.exit36

choice.case:                                      ; preds = %entry
  %fld.load15 = load i64, ptr %fld.gep6, align 8
  %fld.load18 = load i64, ptr %fld.gep9, align 8
  %call.res19 = call { i64, ptr } @"diag::E1008_string_unterminated"()
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res19, ptr %ret.ub.alloc, align 8
  %call.res20 = call i64 @"lexer::fail"(i64 1008, i64 %fld.load15, i64 %fld.load18, ptr %ret.ub.alloc)
  br label %choice.exit

choice.exit36:                                    ; preds = %choice.exit, %choice.case37
  %choice.res = phi ptr [ %ret.ub.alloc43, %choice.case37 ], [ %str.view, %choice.exit ]
  store i64 0, ptr %fld.gep34, align 8
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case37:                                    ; preds = %choice.exit
  %call.res41 = call { i64, ptr } @"lexer::decode_escapes"(ptr %str.view)
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 16)
  store { i64, ptr } %call.res41, ptr %ret.ub.alloc43, align 8
  br label %choice.exit36
}

declare { i64, ptr } @"diag::E1008_string_unterminated"() #3

define { i64, ptr } @"lexer::concat_multiline_str"(ptr %0, ptr %1) #3 {
entry:
  br label %loop.header.275

loop.header.275:                                  ; preds = %str_ok15, %entry
  %"var.res'.0" = phi ptr [ %1, %entry ], [ %concat.str, %str_ok15 ]
  %loop.idx.275.0 = phi i64 [ 0, %entry ], [ %loop.next, %str_ok15 ]
  %call.res = call i64 @"lexer::check_multiline_str"(ptr %0), !range !2
  %val.match = icmp eq i64 %call.res, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.case:                                      ; preds = %loop.header.275
  %ret.pack = load { i64, ptr }, ptr %"var.res'.0", align 8
  ret { i64, ptr } %ret.pack

choice.next:                                      ; preds = %loop.header.275
  call void @"lexer::adv_to"(ptr %0, i64 %call.res)
  %call.res7 = call { i64, ptr } @"lexer::scan_next_str_part"(ptr %0)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res7, ptr %ret.ub.alloc, align 8
  %concat.lhs8 = load i64, ptr %"var.res'.0", align 8
  %concat.lhs9 = and i64 %concat.lhs8, 281474976710655
  %str.tag = lshr i64 %concat.lhs8, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.next
  %concat.lhs10 = getelementptr inbounds { i64, ptr }, ptr %"var.res'.0", i32 0, i32 1
  %concat.lhs11 = load ptr, ptr %concat.lhs10, align 8
  %concat.rhs12 = load i64, ptr %ret.ub.alloc, align 8
  %concat.rhs13 = and i64 %concat.rhs12, 281474976710655
  %str.tag14 = lshr i64 %concat.rhs12, 48
  %tag.immortal16 = icmp eq i64 %str.tag14, 0
  %active.gen17 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current18 = icmp eq i64 %str.tag14, %active.gen17
  %tag.fast.ok19 = or i1 %tag.immortal16, %tag.current18
  br i1 %tag.fast.ok19, label %str_ok15, label %tag.slow_check20

tag.slow_check:                                   ; preds = %choice.next
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok15:                                         ; preds = %tag.slow_check20, %str_ok
  %concat.rhs21 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %concat.rhs22 = load ptr, ptr %concat.rhs21, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs9, i64 %concat.rhs13)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum24 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 %sum24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs11, i64 %concat.lhs9, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs22, i64 %concat.rhs13, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %loop.next = add i64 %loop.idx.275.0, 1
  br label %loop.header.275

tag.slow_check20:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag14)
  br label %str_ok15
}

define i1 @"lexer::is_rune_forbidden_ws"(i32 %0) #3 {
entry:
  %coerce.sext = sext i32 %0 to i64
  %cmptmp = icmp sge i64 %coerce.sext, 8192
  %cmptmp7 = icmp sle i64 %coerce.sext, 8202
  %and.276.phi = select i1 %cmptmp, i1 %cmptmp7, i1 false
  %1 = freeze i1 %and.276.phi
  br i1 %1, label %choice.exit, label %switch.early.test

switch.early.test:                                ; preds = %entry
  switch i64 %coerce.sext, label %choice.next [
    i64 12288, label %choice.exit
    i64 8287, label %choice.exit
    i64 8239, label %choice.exit
    i64 5760, label %choice.exit
    i64 160, label %choice.exit
    i64 32, label %choice.exit
    i64 9, label %choice.exit
  ]

choice.exit:                                      ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %entry, %choice.next
  %choice.res = phi i1 [ false, %choice.next ], [ true, %switch.early.test ], [ true, %entry ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ]
  ret i1 %choice.res

choice.next:                                      ; preds = %switch.early.test
  br label %choice.exit
}

define ptr @"lexer::scan_rune"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res2 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.load6 = load ptr, ptr %0, align 8
  %str.len.query7 = load i64, ptr %fld.load6, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag = lshr i64 %str.len.query7, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sge i64 %fld.load, %str.len.query8
  br i1 %cmptmp, label %choice.then, label %or.277.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

or.277.else:                                      ; preds = %str_ok
  %call.res10 = call i32 @"lexer::pk"(ptr %0, i64 0)
  switch i32 %call.res10, label %choice.exit12 [
    i32 13, label %choice.then
    i32 10, label %choice.then
  ]

choice.then:                                      ; preds = %str_ok, %or.277.else, %or.277.else
  %call.res15 = call i64 @"lexer::fail"(i64 1009, i64 %2, i64 %3, ptr @str.41.struct)
  br label %choice.exit12

choice.exit12:                                    ; preds = %or.277.else, %choice.then
  %call.res17 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res19 = call i1 @"lexer::is_rune_forbidden_ws"(i32 %call.res17)
  br i1 %call.res19, label %choice.then20, label %choice.exit21

choice.then20:                                    ; preds = %choice.exit12
  %call.res24 = call i64 @"lexer::fail"(i64 1009, i64 %2, i64 %3, ptr @str.42.struct)
  br label %choice.exit21

choice.exit21:                                    ; preds = %choice.then20, %choice.exit12
  %coerce.sext = sext i32 %call.res17 to i64
  %cmptmp26 = icmp eq i64 %coerce.sext, 92
  br i1 %cmptmp26, label %choice.then27, label %choice.else

choice.then27:                                    ; preds = %choice.exit21
  %call.res31 = call i32 @"lexer::adv"(ptr %0, i32 %call.res17)
  %call.res33 = call i32 @"lexer::scan_esc_rune"(ptr %0)
  br label %choice.exit28

choice.else:                                      ; preds = %choice.exit21
  %call.res36 = call i32 @"lexer::adv"(ptr %0, i32 %call.res17)
  br label %choice.exit28

choice.exit28:                                    ; preds = %choice.else, %choice.then27
  %choice.res37 = phi i32 [ %call.res33, %choice.then27 ], [ %call.res36, %choice.else ]
  %cmptmp40 = icmp ne i64 %coerce.sext, 39
  br i1 %cmptmp40, label %and.278.then, label %choice.exit46

and.278.then:                                     ; preds = %choice.exit28
  %call.res42 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext43 = sext i32 %call.res42 to i64
  %cmptmp44 = icmp eq i64 %coerce.sext43, 39
  br i1 %cmptmp44, label %choice.then45, label %choice.exit46

choice.then45:                                    ; preds = %and.278.then
  %call.res49 = call i64 @"lexer::fail"(i64 1010, i64 %2, i64 %3, ptr @str.43.struct)
  %call.res52 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res53 = call i32 @"lexer::adv"(ptr %0, i32 %call.res52)
  br label %choice.exit46

choice.exit46:                                    ; preds = %choice.exit28, %choice.then45, %and.278.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 6, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %fld.load58 = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load58, %1
  %coerce.sext63 = sext i32 %choice.res37 to i64
  %call.res64 = call { i64, ptr } @"str::from_int"(i64 %coerce.sext63)
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  store { i64, ptr } %call.res64, ptr %ret.ub.alloc, align 8
  %call.res66 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %1, i64 %subtmp, i64 %2, i64 %3, ptr %ret.ub.alloc)
  ret ptr %call.res66
}

define i64 @"lexer::skip_line_comment"(ptr %0, i64 %1) #3 {
entry:
  %call.res = call i64 @"lexer::scan_while"(ptr %0, ptr @clo.const.54)
  ret i64 %call.res
}

define internal i1 @"$anon_fn.149"(i32 %0) #3 {
entry:
  %call.res = call i1 @"lexer::is_nl"(i32 %0)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define void @"lexer::skip_block_comment"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res2 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %call.res5 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res6 = call i32 @"lexer::adv"(ptr %0, i32 %call.res5)
  br label %loop.header.279

loop.header.279:                                  ; preds = %choice.else, %entry
  %loop.idx.279.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.else ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.load10 = load ptr, ptr %0, align 8
  %str.len.query11 = load i64, ptr %fld.load10, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag = lshr i64 %str.len.query11, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

loop.exit.279:                                    ; preds = %str_ok, %choice.then20
  %"var.done'.0" = phi i1 [ true, %choice.then20 ], [ false, %str_ok ]
  %nottmp = xor i1 %"var.done'.0", true
  br i1 %nottmp, label %choice.then35, label %choice.exit36

str_ok:                                           ; preds = %tag.slow_check, %loop.header.279
  %cmptmp = icmp sge i64 %fld.load, %str.len.query12
  br i1 %cmptmp, label %loop.exit.279, label %choice.exit

tag.slow_check:                                   ; preds = %loop.header.279
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.exit:                                      ; preds = %str_ok
  %call.res14 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res14 to i64
  %cmptmp15 = icmp eq i64 %coerce.sext, 42
  br i1 %cmptmp15, label %and.280.then, label %choice.else

and.280.then:                                     ; preds = %choice.exit
  %call.res17 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext18 = sext i32 %call.res17 to i64
  %cmptmp19 = icmp eq i64 %coerce.sext18, 47
  br i1 %cmptmp19, label %choice.then20, label %choice.else

choice.then20:                                    ; preds = %and.280.then
  %call.res24 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res25 = call i32 @"lexer::adv"(ptr %0, i32 %call.res24)
  %call.res28 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res29 = call i32 @"lexer::adv"(ptr %0, i32 %call.res28)
  br label %loop.exit.279

choice.else:                                      ; preds = %choice.exit, %and.280.then
  %call.res32 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res33 = call i32 @"lexer::adv"(ptr %0, i32 %call.res32)
  %loop.next = add i64 %loop.idx.279.0, 1
  br label %loop.header.279

choice.then35:                                    ; preds = %loop.exit.279
  %call.res39 = call i64 @"lexer::fail"(i64 1007, i64 %1, i64 %2, ptr @str.44.struct)
  br label %choice.exit36

choice.exit36:                                    ; preds = %choice.then35, %loop.exit.279
  ret void
}

define { i64, ptr } @"lexer::scan_hash_word"(ptr %0, i64 %1) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res2 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res5 = call i64 @"lexer::scan_while"(ptr %0, ptr @clo.const.57)
  %fld.load8 = load ptr, ptr %0, align 8
  %s.read.len9 = load i64, ptr %fld.load8, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %fld.load15 = load i64, ptr %fld.gep, align 8
  %start.is_neg = icmp slt i64 %fld.load, 0
  %rel.start = add i64 %s.read.len10, %fld.load
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len10
  %final.start = select i1 %start.gt.len, i64 %s.read.len10, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load15, 0
  %rel.end = add i64 %s.read.len10, %fld.load15
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load15
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len10
  %final.end = select i1 %end.gt.len, i64 %s.read.len10, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data11, i64 %final.start
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %view.len, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %view.data, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

define internal i1 @"$anon_fn.152"(i32 %0) #3 {
entry:
  %call.res = call i1 @"lexer::is_id_char"(i32 %0)
  ret i1 %call.res
}

define i64 @"lexer::scan_qp_body"(ptr %0, i64 %1) #3 {
entry:
  br label %loop.header.281

loop.header.281:                                  ; preds = %choice.exit8, %entry
  %loop.idx.281.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit8 ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.load3 = load ptr, ptr %0, align 8
  %str.len.query4 = load i64, ptr %fld.load3, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %cmptmp = icmp sge i64 %fld.load, %str.len.query5
  br i1 %cmptmp, label %loop.exit.281, label %choice.exit

loop.exit.281:                                    ; preds = %loop.header.281, %choice.case
  %"var.closed'.0" = phi i64 [ 1, %choice.case ], [ 0, %loop.header.281 ]
  ret i64 %"var.closed'.0"

choice.exit:                                      ; preds = %loop.header.281
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  switch i32 %call.res, label %choice.next14 [
    i32 34, label %choice.case
    i32 92, label %choice.case13
  ]

choice.exit8:                                     ; preds = %choice.next14, %choice.case13
  %loop.next = add i64 %loop.idx.281.0, 1
  br label %loop.header.281

choice.case:                                      ; preds = %choice.exit
  %call.res11 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res12 = call i32 @"lexer::adv"(ptr %0, i32 %call.res11)
  br label %loop.exit.281

choice.case13:                                    ; preds = %choice.exit
  %call.res18 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res19 = call i32 @"lexer::adv"(ptr %0, i32 %call.res18)
  %call.res22 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res23 = call i32 @"lexer::adv"(ptr %0, i32 %call.res22)
  br label %choice.exit8

choice.next14:                                    ; preds = %choice.exit
  %call.res26 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  br label %choice.exit8
}

define { i64, ptr } @"lexer::scan_quoted_path"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res2 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res6 = call i64 @"lexer::scan_qp_body"(ptr %0, i64 %1), !range !0
  %val.match = icmp eq i64 %call.res6, 0
  br i1 %val.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.case
  %fld.load13 = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load13, 1
  %fld.load16 = load ptr, ptr %0, align 8
  %s.read.len17 = load i64, ptr %fld.load16, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %fld.load, 0
  %rel.start = add i64 %s.read.len18, %fld.load
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len18
  %final.start = select i1 %start.gt.len, i64 %s.read.len18, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp, 0
  %rel.end = add i64 %s.read.len18, %subtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len18
  %final.end = select i1 %end.gt.len, i64 %s.read.len18, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data19, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %view.len, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %entry
  %call.res10 = call i64 @"lexer::fail"(i64 1011, i64 %1, i64 %2, ptr @str.45.struct)
  br label %choice.exit
}

define i1 @"lexer::is_path_rune"(i32 %0) #3 {
entry:
  %call.res = call i1 @"lexer::is_ws"(i32 %0)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %and.282.then, label %and.282.exit

and.282.then:                                     ; preds = %entry
  %call.res2 = call i1 @"lexer::is_nl"(i32 %0)
  %nottmp3 = xor i1 %call.res2, true
  br label %and.282.exit

and.282.exit:                                     ; preds = %entry, %and.282.then
  %and.282.phi = phi i1 [ %nottmp3, %and.282.then ], [ false, %entry ]
  %coerce.sext = sext i32 %0 to i64
  %cmptmp = icmp ne i64 %coerce.sext, 59
  %and.283.phi = select i1 %and.282.phi, i1 %cmptmp, i1 %and.282.phi
  %cmptmp7 = icmp ne i64 %coerce.sext, 34
  %and.284.phi = select i1 %and.283.phi, i1 %cmptmp7, i1 %and.283.phi
  %cmptmp10 = icmp ne i64 %coerce.sext, 61
  %and.285.phi = select i1 %and.284.phi, i1 %cmptmp10, i1 %and.284.phi
  %cmptmp13 = icmp ne i64 %coerce.sext, 0
  %and.286.phi = select i1 %and.285.phi, i1 %cmptmp13, i1 %and.285.phi
  ret i1 %and.286.phi
}

define { i64, ptr } @"lexer::scan_bare_path"(ptr %0, i64 %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 65)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  br label %loop.header.287

loop.header.287:                                  ; preds = %choice.exit, %entry
  %loop.idx.287.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.287.0, 1000000
  br i1 %loop.cond, label %loop.body.287, label %loop.exit.287

loop.body.287:                                    ; preds = %loop.header.287
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 92
  br i1 %cmptmp, label %and.288.then, label %choice.else

loop.exit.287:                                    ; preds = %and.291.then, %choice.else, %loop.header.287
  %b.freeze.len103 = load i64, ptr %builder.new, align 8
  %b.freeze.data104 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

and.288.then:                                     ; preds = %loop.body.287
  %call.res5 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext6 = sext i32 %call.res5 to i64
  %cmptmp7 = icmp eq i64 %coerce.sext6, 32
  br i1 %cmptmp7, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.288.then
  %call.res10 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %call.res13 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res14 = call i32 @"lexer::adv"(ptr %0, i32 %call.res13)
  %b.rn.cur.len15 = load i64, ptr %builder.new, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len15, i64 1)
  %sum16 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf17 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf17, label %str_overflow_abort19, label %b.rn.new.len18

choice.else:                                      ; preds = %loop.body.287, %and.288.then
  %call.res33 = call i1 @"lexer::is_path_rune"(i32 %call.res)
  %nottmp = xor i1 %call.res33, true
  br i1 %nottmp, label %loop.exit.287, label %or.290.else

choice.exit:                                      ; preds = %br.done.292, %choice.then97, %b.grow_done
  %loop.next = add nsw i64 %loop.idx.287.0, 1
  br label %loop.header.287

b.rn.new.len18:                                   ; preds = %choice.then
  %b.cap21 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow = icmp slt i64 %b.cap21, %sum16
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort19:                             ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.rn.new.len18
  %b.cap2 = mul i64 %b.cap21, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum16
  %b.new.cap = select i1 %b.cap.need, i64 %sum16, i64 %b.cap.grow
  %b.cur.data223 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum24 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf25 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf25, label %str_overflow_abort27, label %b.new.buf.len226

b.grow_done:                                      ; preds = %b.rn.new.len18, %b.new.buf.len226
  %b.rn.data30 = load ptr, ptr %b.data.gep, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data30, i64 %b.rn.cur.len15
  store i8 32, ptr %b.rn.dst, align 1
  %br.nul = getelementptr i8, ptr %b.rn.data30, i64 %sum16
  store i8 0, ptr %br.nul, align 1
  store i64 %sum16, ptr %builder.new, align 8
  br label %choice.exit

b.new.buf.len226:                                 ; preds = %b.grow2
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 %sum24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data223, i64 %b.rn.cur.len15, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.rn.cur.len15
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.grow_done

str_overflow_abort27:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

or.290.else:                                      ; preds = %choice.else
  %cmptmp36 = icmp eq i64 %coerce.sext, 47
  br i1 %cmptmp36, label %and.291.then, label %choice.exit42

and.291.then:                                     ; preds = %or.290.else
  %call.res38 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext39 = sext i32 %call.res38 to i64
  %cmptmp40 = icmp eq i64 %coerce.sext39, 47
  br i1 %cmptmp40, label %loop.exit.287, label %choice.exit42

choice.exit42:                                    ; preds = %or.290.else, %and.291.then
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len47 = load i64, ptr %builder.new, align 8
  %b.rn.new.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len47, i64 %br.width)
  %sum49 = extractvalue { i64, i1 } %b.rn.new.len48, 0
  %ovf50 = extractvalue { i64, i1 } %b.rn.new.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %b.rn.new.len51

b.rn.new.len51:                                   ; preds = %choice.exit42
  %b.cap55 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow56 = icmp slt i64 %b.cap55, %sum49
  br i1 %b.need.grow56, label %b.grow257, label %b.grow_done59

str_overflow_abort52:                             ; preds = %choice.exit42
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow257:                                        ; preds = %b.rn.new.len51
  %b.cap260 = mul i64 %b.cap55, 2
  %b.cap.small61 = icmp slt i64 %b.cap260, 16
  %b.cap.grow62 = select i1 %b.cap.small61, i64 16, i64 %b.cap260
  %b.cap.need63 = icmp slt i64 %b.cap.grow62, %sum49
  %b.new.cap64 = select i1 %b.cap.need63, i64 %sum49, i64 %b.cap.grow62
  %b.cur.data268 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len269 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap64, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.new.buf.len269, 0
  %ovf71 = extractvalue { i64, i1 } %b.new.buf.len269, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.new.buf.len272

b.grow_done59:                                    ; preds = %b.rn.new.len51, %b.new.buf.len272
  %b.rn.data81 = load ptr, ptr %b.data.gep, align 8
  %b.rn.dst82 = getelementptr i8, ptr %b.rn.data81, i64 %b.rn.cur.len47
  br i1 %br.cmp1, label %br.b1.292, label %br.c2.292

b.new.buf.len272:                                 ; preds = %b.grow257
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf276 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %sum70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf276, ptr align 1 %b.cur.data268, i64 %b.rn.cur.len47, i1 false)
  %b.grow2.nul77 = getelementptr i8, ptr %b.new.buf276, i64 %b.rn.cur.len47
  store i8 0, ptr %b.grow2.nul77, align 1
  store ptr %b.new.buf276, ptr %b.data.gep, align 8
  store i64 %b.new.cap64, ptr %b.cap.gep, align 8
  br label %b.grow_done59

str_overflow_abort73:                             ; preds = %b.grow257
  call void @dva_abort_str_overflow_msg()
  unreachable

br.b1.292:                                        ; preds = %b.grow_done59
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst82, align 1
  br label %br.done.292

br.c2.292:                                        ; preds = %b.grow_done59
  br i1 %br.cmp2, label %br.b2.292, label %br.c3.292

br.b2.292:                                        ; preds = %br.c2.292
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst82, align 1
  %br.dst183 = getelementptr i8, ptr %b.rn.dst82, i64 1
  store i8 %br.b2.1t, ptr %br.dst183, align 1
  br label %br.done.292

br.c3.292:                                        ; preds = %br.c2.292
  br i1 %br.cmp3, label %br.b3.292, label %br.b4.292

br.b3.292:                                        ; preds = %br.c3.292
  %br.sh12 = lshr i64 %coerce.sext, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst82, align 1
  %br.dst1.384 = getelementptr i8, ptr %b.rn.dst82, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.384, align 1
  %br.dst2.385 = getelementptr i8, ptr %b.rn.dst82, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.385, align 1
  br label %br.done.292

br.b4.292:                                        ; preds = %br.c3.292
  %br.sh18 = lshr i64 %coerce.sext, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext, 63
  %br.b4.3 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.3 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst82, align 1
  %br.dst1.486 = getelementptr i8, ptr %b.rn.dst82, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.486, align 1
  %br.dst2.487 = getelementptr i8, ptr %b.rn.dst82, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.487, align 1
  %br.dst3.488 = getelementptr i8, ptr %b.rn.dst82, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.488, align 1
  br label %br.done.292

br.done.292:                                      ; preds = %br.b4.292, %br.b3.292, %br.b2.292, %br.b1.292
  %br.nul89 = getelementptr i8, ptr %b.rn.data81, i64 %sum49
  store i8 0, ptr %br.nul89, align 1
  store i64 %sum49, ptr %builder.new, align 8
  %call.res93 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %cmptmp96 = icmp eq i64 %coerce.sext, 40
  br i1 %cmptmp96, label %choice.then97, label %choice.exit

choice.then97:                                    ; preds = %br.done.292
  call void @"lexer::scan_use_args"(ptr %0, ptr %builder.new, i64 %1)
  br label %choice.exit

b.freeze.check:                                   ; preds = %loop.exit.287
  %b.freeze.last.idx = sub nuw nsw i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data104, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data104, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data104, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len103, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data104, i64 %b.freeze.len103, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len103
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.287
  %b.freeze.data106 = phi ptr [ %b.freeze.data104, %loop.exit.287 ], [ %b.freeze.data104, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur107 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len103, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data106, ptr %str.build.data.gep, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define void @"lexer::scan_use_args"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  br label %loop.header.293

loop.header.293:                                  ; preds = %choice.exit27, %entry
  %loop.idx.293.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit27 ]
  %loop.cond = icmp slt i64 %loop.idx.293.0, 1000000
  br i1 %loop.cond, label %loop.body.293, label %loop.exit.293

loop.body.293:                                    ; preds = %loop.header.293
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 0
  br i1 %cmptmp, label %choice.then, label %or.294.else

loop.exit.293:                                    ; preds = %br.done.295, %loop.header.293, %choice.then
  ret void

or.294.else:                                      ; preds = %loop.body.293
  %call.res3 = call i1 @"lexer::is_nl"(i32 %call.res)
  br i1 %call.res3, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %loop.body.293, %or.294.else
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res6 = call i64 @"lexer::fail"(i64 1015, i64 %2, i64 %fld.load, ptr @str.46.struct)
  br label %loop.exit.293

choice.exit:                                      ; preds = %or.294.else
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len9 = load i64, ptr %1, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len9, i64 %br.width)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len10

b.rn.new.len10:                                   ; preds = %choice.exit
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %1, i32 0, i32 2
  %b.cap11 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap11, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.rn.new.len10
  %b.cap2 = mul i64 %b.cap11, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %1, i32 0, i32 1
  %b.cur.data213 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum14 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf15 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf15, label %str_overflow_abort17, label %b.new.buf.len216

b.grow_done:                                      ; preds = %b.rn.new.len10, %b.new.buf.len216
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %1, i32 0, i32 1
  %b.rn.data19 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data19, i64 %b.rn.cur.len9
  br i1 %br.cmp1, label %br.b1.295, label %br.c2.295

b.new.buf.len216:                                 ; preds = %b.grow2
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum14)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data213, i64 %b.rn.cur.len9, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.rn.cur.len9
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.cur.data2, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.grow_done

str_overflow_abort17:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

br.b1.295:                                        ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.295

br.c2.295:                                        ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.295, label %br.c3.295

br.b2.295:                                        ; preds = %br.c2.295
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.295

br.c3.295:                                        ; preds = %br.c2.295
  br i1 %br.cmp3, label %br.b3.295, label %br.b4.295

br.b3.295:                                        ; preds = %br.c3.295
  %br.sh12 = lshr i64 %coerce.sext, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.295

br.b4.295:                                        ; preds = %br.c3.295
  %br.sh18 = lshr i64 %coerce.sext, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext, 63
  %br.b4.3 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.3 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4, align 1
  br label %br.done.295

br.done.295:                                      ; preds = %br.b4.295, %br.b3.295, %br.b2.295, %br.b1.295
  %br.nul = getelementptr i8, ptr %b.rn.data19, i64 %sum
  store i8 0, ptr %br.nul, align 1
  store i64 %sum, ptr %1, align 8
  %call.res22 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %cmptmp25 = icmp eq i64 %coerce.sext, 41
  br i1 %cmptmp25, label %loop.exit.293, label %choice.exit27

choice.exit27:                                    ; preds = %br.done.295
  %loop.next = add nsw i64 %loop.idx.293.0, 1
  br label %loop.header.293
}

define ptr @"lexer::scan_use_directive"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 40
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res3 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res4 = call i32 @"lexer::adv"(ptr %0, i32 %call.res3)
  br label %loop.header.296

choice.exit:                                      ; preds = %choice.then12, %choice.then22, %choice.then118, %loop.header.296, %entry
  %"var.is_dyn'.0" = phi i1 [ false, %entry ], [ %"var.is_dyn'.1", %choice.then12 ], [ %"var.is_dyn'.1", %choice.then22 ], [ %"var.is_dyn'.3", %choice.then118 ], [ %"var.is_dyn'.1", %loop.header.296 ]
  %"var.is_imp'.0" = phi i1 [ false, %entry ], [ %"var.is_imp'.1", %choice.then12 ], [ %"var.is_imp'.1", %choice.then22 ], [ %"var.is_imp'.3", %choice.then118 ], [ %"var.is_imp'.1", %loop.header.296 ]
  call void @"lexer::skip_hws"(ptr %0, i64 0)
  %call.res126 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext127 = sext i32 %call.res126 to i64
  %cmptmp128 = icmp eq i64 %coerce.sext127, 34
  br i1 %cmptmp128, label %choice.then129, label %choice.else

loop.header.296:                                  ; preds = %choice.exit119, %choice.then
  %"var.is_dyn'.1" = phi i1 [ false, %choice.then ], [ %"var.is_dyn'.3", %choice.exit119 ]
  %"var.is_imp'.1" = phi i1 [ false, %choice.then ], [ %"var.is_imp'.3", %choice.exit119 ]
  %loop.idx.296.0 = phi i64 [ 0, %choice.then ], [ %loop.next, %choice.exit119 ]
  %loop.cond = icmp slt i64 %loop.idx.296.0, 100
  br i1 %loop.cond, label %loop.body.296, label %choice.exit

loop.body.296:                                    ; preds = %loop.header.296
  %call.res6 = call i64 @"lexer::skip_ws"(ptr %0, i64 0)
  %call.res8 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext10 = sext i32 %call.res8 to i64
  switch i64 %coerce.sext10, label %or.297.else [
    i64 41, label %choice.then12
    i64 0, label %choice.then22
  ]

choice.then12:                                    ; preds = %loop.body.296
  %call.res16 = call i32 @"lexer::adv"(ptr %0, i32 %call.res8)
  br label %choice.exit

or.297.else:                                      ; preds = %loop.body.296
  %call.res21 = call i1 @"lexer::is_nl"(i32 %call.res8)
  br i1 %call.res21, label %choice.then22, label %choice.exit23

choice.then22:                                    ; preds = %loop.body.296, %or.297.else
  %call.res26 = call i64 @"lexer::fail"(i64 1015, i64 %2, i64 %3, ptr @str.47.struct)
  br label %choice.exit

choice.exit23:                                    ; preds = %or.297.else
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res29 = call i64 @"lexer::scan_while"(ptr %0, ptr @clo.const.65)
  %fld.load32 = load ptr, ptr %0, align 8
  %s.read.len33 = load i64, ptr %fld.load32, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load32, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data, align 8
  %fld.load39 = load i64, ptr %fld.gep, align 8
  %start.is_neg = icmp slt i64 %fld.load, 0
  %rel.start = add i64 %s.read.len34, %fld.load
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len34
  %final.start = select i1 %start.gt.len, i64 %s.read.len34, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load39, 0
  %rel.end = add i64 %s.read.len34, %fld.load39
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load39
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len34
  %final.end = select i1 %end.gt.len, i64 %s.read.len34, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data35, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %view.len, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len42 = load i64, ptr %str.view, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len42, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit41:                                    ; preds = %str.eq.then54, %str.eq.then, %str_ok69
  %"var.is_dyn'.3" = phi i1 [ %"var.is_dyn'.1", %str_ok69 ], [ true, %str.eq.then ], [ %"var.is_dyn'.1", %str.eq.then54 ]
  %"var.is_imp'.3" = phi i1 [ %"var.is_imp'.1", %str_ok69 ], [ %"var.is_imp'.1", %str.eq.then ], [ true, %str.eq.then54 ]
  %call.res101 = call i64 @"lexer::skip_ws"(ptr %0, i64 0)
  %call.res103 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext104 = sext i32 %call.res103 to i64
  %cmptmp105 = icmp eq i64 %coerce.sext104, 44
  br i1 %cmptmp105, label %choice.then106, label %choice.exit107

choice.next:                                      ; preds = %str_ok, %str.eq.then
  %eq.lhs.len49 = load i64, ptr %str.view, align 8
  %eq.lhs.len50 = and i64 %eq.lhs.len49, 281474976710655
  %eq.len53 = icmp eq i64 %eq.lhs.len50, 6
  br i1 %eq.len53, label %str.eq.then54, label %choice.next47

str_ok:                                           ; preds = %tag.slow_check, %choice.exit23
  %eq.len = icmp eq i64 %eq.lhs.len43, 7
  br i1 %eq.len, label %str.eq.then, label %choice.next

tag.slow_check:                                   ; preds = %choice.exit23
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data45 = load ptr, ptr %str.build.data.gep, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data45, ptr @str.48, i64 7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.exit41, label %choice.next

choice.next47:                                    ; preds = %choice.next, %str.eq.then54
  %cat.seg66 = load i64, ptr %str.view, align 8
  %cat.seg67 = and i64 %cat.seg66, 281474976710655
  %str.tag68 = lshr i64 %cat.seg66, 48
  %tag.immortal70 = icmp eq i64 %str.tag68, 0
  %active.gen71 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current72 = icmp eq i64 %str.tag68, %active.gen71
  %tag.fast.ok73 = or i1 %tag.immortal70, %tag.current72
  br i1 %tag.fast.ok73, label %str_ok69, label %tag.slow_check74

str.eq.then54:                                    ; preds = %choice.next
  %eq.lhs.data58 = load ptr, ptr %str.build.data.gep, align 8
  %eq.memcmp60 = call i32 @memcmp(ptr %eq.lhs.data58, ptr @str.49, i64 6)
  %eq.cmp.zero61 = icmp eq i32 %eq.memcmp60, 0
  br i1 %eq.cmp.zero61, label %choice.exit41, label %choice.next47

str_ok69:                                         ; preds = %tag.slow_check74, %choice.next47
  %cat.seg76 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 21, i64 %cat.seg67)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 37)
  %sum80 = extractvalue { i64, i1 } %cat.sum.len79, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum80, i64 1)
  %sum85 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 %sum85)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.50, i64 21, i1 false)
  %cat.dst91 = getelementptr i8, ptr %concat.buf, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst91, ptr align 1 %cat.seg76, i64 %cat.seg67, i1 false)
  %cat.off = add nuw nsw i64 21, %cat.seg67
  %cat.dst92 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst92, ptr align 1 @str.51, i64 37, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum80
  store i8 0, ptr %concat.nul, align 1
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 16)
  %str.tag.gen95 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift96 = shl i64 %str.tag.gen95, 48
  %str.tagged.len97 = or i64 %sum80, %str.tag.shift96
  store i64 %str.tagged.len97, ptr %concat.str, align 8
  %str.build.data.gep98 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep98, align 8
  %call.res99 = call i64 @"lexer::fail"(i64 1015, i64 %2, i64 %3, ptr %concat.str)
  br label %choice.exit41

tag.slow_check74:                                 ; preds = %choice.next47
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag68)
  br label %str_ok69

choice.then106:                                   ; preds = %choice.exit41
  %call.res110 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res111 = call i32 @"lexer::adv"(ptr %0, i32 %call.res110)
  br label %choice.exit107

choice.exit107:                                   ; preds = %choice.then106, %choice.exit41
  %call.res113 = call i64 @"lexer::skip_ws"(ptr %0, i64 0)
  %call.res115 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext116 = sext i32 %call.res115 to i64
  %cmptmp117 = icmp eq i64 %coerce.sext116, 41
  br i1 %cmptmp117, label %choice.then118, label %choice.exit119

choice.then118:                                   ; preds = %choice.exit107
  %call.res122 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res123 = call i32 @"lexer::adv"(ptr %0, i32 %call.res122)
  br label %choice.exit

choice.exit119:                                   ; preds = %choice.exit107
  %loop.next = add nsw i64 %loop.idx.296.0, 1
  br label %loop.header.296

choice.then129:                                   ; preds = %choice.exit
  %call.res133 = call i64 @"lexer::fail"(i64 1015, i64 %2, i64 %3, ptr @str.52.struct)
  %call.res137 = call { i64, ptr } @"lexer::scan_quoted_path"(ptr %0, i64 %2, i64 %3)
  %arena.cur138 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 16)
  store { i64, ptr } %call.res137, ptr %ret.ub.alloc, align 8
  br label %choice.exit130

choice.else:                                      ; preds = %choice.exit
  %call.res141 = call { i64, ptr } @"lexer::scan_bare_path"(ptr %0, i64 %2)
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 16)
  store { i64, ptr } %call.res141, ptr %ret.ub.alloc143, align 8
  br label %choice.exit130

choice.exit130:                                   ; preds = %choice.else, %choice.then129
  %choice.res = phi ptr [ %ret.ub.alloc, %choice.then129 ], [ %ret.ub.alloc143, %choice.else ]
  %str.len.query145 = load i64, ptr %choice.res, align 8
  %str.len.query146 = and i64 %str.len.query145, 281474976710655
  %str.tag147 = lshr i64 %str.len.query145, 48
  %tag.immortal149 = icmp eq i64 %str.tag147, 0
  %active.gen150 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current151 = icmp eq i64 %str.tag147, %active.gen150
  %tag.fast.ok152 = or i1 %tag.immortal149, %tag.current151
  br i1 %tag.fast.ok152, label %str_ok148, label %tag.slow_check153

str_ok148:                                        ; preds = %tag.slow_check153, %choice.exit130
  %cmptmp154 = icmp eq i64 %str.len.query146, 0
  br i1 %cmptmp154, label %choice.then155, label %choice.exit156

tag.slow_check153:                                ; preds = %choice.exit130
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag147)
  br label %str_ok148

choice.then155:                                   ; preds = %str_ok148
  %call.res159 = call i64 @"lexer::fail"(i64 1015, i64 %2, i64 %3, ptr @str.53.struct)
  br label %choice.exit156

choice.exit156:                                   ; preds = %choice.then155, %str_ok148
  call void @"lexer::skip_hws"(ptr %0, i64 0)
  %call.res162 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext163 = sext i32 %call.res162 to i64
  %cmptmp164 = icmp eq i64 %coerce.sext163, 61
  br i1 %cmptmp164, label %and.299.then, label %choice.exit176

and.299.then:                                     ; preds = %choice.exit156
  %call.res166 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext167 = sext i32 %call.res166 to i64
  %cmptmp168 = icmp ne i64 %coerce.sext167, 61
  br i1 %cmptmp168, label %and.300.then, label %choice.exit176

and.300.then:                                     ; preds = %and.299.then
  %call.res170 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext171 = sext i32 %call.res170 to i64
  %cmptmp172 = icmp ne i64 %coerce.sext171, 62
  br i1 %cmptmp172, label %choice.then174, label %choice.exit176

choice.then174:                                   ; preds = %and.300.then
  %call.res179 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res180 = call i32 @"lexer::adv"(ptr %0, i32 %call.res179)
  call void @"lexer::skip_hws"(ptr %0, i64 0)
  %call.res183 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext184 = sext i32 %call.res183 to i64
  %cmptmp185 = icmp eq i64 %coerce.sext184, 34
  br i1 %cmptmp185, label %choice.then186, label %choice.else187

choice.exit176:                                   ; preds = %and.299.then, %choice.exit156, %and.300.then, %str_ok240
  %choice.res282 = phi ptr [ %concat.str275, %str_ok240 ], [ %choice.res, %and.300.then ], [ %choice.res, %choice.exit156 ], [ %choice.res, %and.299.then ]
  %"var.is_imp'.0.var.is_dyn'.0" = select i1 %"var.is_dyn'.0", i1 %"var.is_imp'.0", i1 %"var.is_dyn'.0"
  br i1 %"var.is_imp'.0.var.is_dyn'.0", label %choice.then285, label %choice.else286

choice.then186:                                   ; preds = %choice.then174
  %call.res191 = call i64 @"lexer::fail"(i64 1015, i64 %2, i64 %3, ptr @str.52.struct)
  %call.res195 = call { i64, ptr } @"lexer::scan_quoted_path"(ptr %0, i64 %2, i64 %3)
  %arena.cur196 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 16)
  store { i64, ptr } %call.res195, ptr %ret.ub.alloc197, align 8
  br label %choice.exit188

choice.else187:                                   ; preds = %choice.then174
  %call.res200 = call { i64, ptr } @"lexer::scan_bare_path"(ptr %0, i64 %2)
  %arena.cur201 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 16)
  store { i64, ptr } %call.res200, ptr %ret.ub.alloc202, align 8
  br label %choice.exit188

choice.exit188:                                   ; preds = %choice.else187, %choice.then186
  %choice.res203 = phi ptr [ %ret.ub.alloc197, %choice.then186 ], [ %ret.ub.alloc202, %choice.else187 ]
  %str.len.query206 = load i64, ptr %choice.res203, align 8
  %str.len.query207 = and i64 %str.len.query206, 281474976710655
  %str.tag208 = lshr i64 %str.len.query206, 48
  %tag.immortal210 = icmp eq i64 %str.tag208, 0
  %active.gen211 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current212 = icmp eq i64 %str.tag208, %active.gen211
  %tag.fast.ok213 = or i1 %tag.immortal210, %tag.current212
  br i1 %tag.fast.ok213, label %str_ok209, label %tag.slow_check214

str_ok209:                                        ; preds = %tag.slow_check214, %choice.exit188
  %cmptmp215 = icmp eq i64 %str.len.query207, 0
  br i1 %cmptmp215, label %choice.then216, label %choice.exit217

tag.slow_check214:                                ; preds = %choice.exit188
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag208)
  br label %str_ok209

choice.then216:                                   ; preds = %str_ok209
  %call.res220 = call i64 @"lexer::fail"(i64 1015, i64 %2, i64 %3, ptr @str.54.struct)
  br label %choice.exit217

choice.exit217:                                   ; preds = %choice.then216, %str_ok209
  %cat.seg223 = load i64, ptr %choice.res, align 8
  %cat.seg224 = and i64 %cat.seg223, 281474976710655
  %str.tag225 = lshr i64 %cat.seg223, 48
  %tag.immortal227 = icmp eq i64 %str.tag225, 0
  %active.gen228 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current229 = icmp eq i64 %str.tag225, %active.gen228
  %tag.fast.ok230 = or i1 %tag.immortal227, %tag.current229
  br i1 %tag.fast.ok230, label %str_ok226, label %tag.slow_check231

str_ok226:                                        ; preds = %tag.slow_check231, %choice.exit217
  %cat.seg232 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %cat.seg233 = load ptr, ptr %cat.seg232, align 8
  %cat.seg237 = load i64, ptr %choice.res203, align 8
  %cat.seg238 = and i64 %cat.seg237, 281474976710655
  %str.tag239 = lshr i64 %cat.seg237, 48
  %tag.immortal241 = icmp eq i64 %str.tag239, 0
  %active.gen242 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current243 = icmp eq i64 %str.tag239, %active.gen242
  %tag.fast.ok244 = or i1 %tag.immortal241, %tag.current243
  br i1 %tag.fast.ok244, label %str_ok240, label %tag.slow_check245

tag.slow_check231:                                ; preds = %choice.exit217
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag225)
  br label %str_ok226

str_ok240:                                        ; preds = %tag.slow_check245, %str_ok226
  %cat.seg246 = getelementptr inbounds { i64, ptr }, ptr %choice.res203, i32 0, i32 1
  %cat.seg247 = load ptr, ptr %cat.seg246, align 8
  %cat.sum.len248 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg224, i64 3)
  %sum249 = extractvalue { i64, i1 } %cat.sum.len248, 0
  %cat.sum.len254 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum249, i64 %cat.seg238)
  %sum255 = extractvalue { i64, i1 } %cat.sum.len254, 0
  %concat.tot.len260 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum255, i64 1)
  %sum261 = extractvalue { i64, i1 } %concat.tot.len260, 0
  %arena.cur266 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 %sum261)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf267, ptr align 1 %cat.seg233, i64 %cat.seg224, i1 false)
  %cat.dst270 = getelementptr i8, ptr %concat.buf267, i64 %cat.seg224
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst270, ptr align 1 @str.55, i64 3, i1 false)
  %cat.off271 = add nuw nsw i64 %cat.seg224, 3
  %cat.dst272 = getelementptr i8, ptr %concat.buf267, i64 %cat.off271
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst272, ptr align 1 %cat.seg247, i64 %cat.seg238, i1 false)
  %concat.nul273 = getelementptr i8, ptr %concat.buf267, i64 %sum255
  store i8 0, ptr %concat.nul273, align 1
  %arena.cur274 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 16)
  %str.tag.gen277 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift278 = shl i64 %str.tag.gen277, 48
  %str.tagged.len279 = or i64 %sum255, %str.tag.shift278
  store i64 %str.tagged.len279, ptr %concat.str275, align 8
  %str.build.data.gep280 = getelementptr inbounds { i64, ptr }, ptr %concat.str275, i32 0, i32 1
  store ptr %concat.buf267, ptr %str.build.data.gep280, align 8
  br label %choice.exit176

tag.slow_check245:                                ; preds = %str_ok226
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag239)
  br label %str_ok240

choice.then285:                                   ; preds = %choice.exit176
  %arena.cur288 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur288, i64 16)
  store i64 31, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit287

choice.else286:                                   ; preds = %choice.exit176
  br i1 %"var.is_dyn'.0", label %choice.then290, label %choice.else291

choice.exit287:                                   ; preds = %choice.then298, %choice.else299, %choice.then290, %choice.then285
  %choice.res311 = phi ptr [ %enum.alloc, %choice.then285 ], [ %enum.alloc294, %choice.then290 ], [ %enum.alloc302, %choice.then298 ], [ %enum.alloc306, %choice.else299 ]
  %fld.gep316 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load317 = load i64, ptr %fld.gep316, align 8
  %subtmp = sub i64 %fld.load317, %1
  %call.res322 = call ptr @"lexer::mktok"(ptr %0, ptr %choice.res311, i64 %1, i64 %subtmp, i64 %2, i64 %3, ptr %choice.res282)
  ret ptr %call.res322

choice.then290:                                   ; preds = %choice.else286
  %arena.cur293 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 16)
  store i64 28, ptr %enum.alloc294, align 8
  %pay.gep296 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc294, i32 0, i32 1
  store ptr null, ptr %pay.gep296, align 8
  br label %choice.exit287

choice.else291:                                   ; preds = %choice.else286
  br i1 %"var.is_imp'.0", label %choice.then298, label %choice.else299

choice.then298:                                   ; preds = %choice.else291
  %arena.cur301 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc302 = call ptr @dva_arena_alloc(ptr %arena.cur301, i64 16)
  store i64 30, ptr %enum.alloc302, align 8
  %pay.gep304 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc302, i32 0, i32 1
  store ptr null, ptr %pay.gep304, align 8
  br label %choice.exit287

choice.else299:                                   ; preds = %choice.else291
  %arena.cur305 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc306 = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 16)
  store i64 18, ptr %enum.alloc306, align 8
  %pay.gep308 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc306, i32 0, i32 1
  store ptr null, ptr %pay.gep308, align 8
  br label %choice.exit287
}

define i64 @"lexer::skip_ws"(ptr %0, i64 %1) #3 {
entry:
  %var.load1 = load ptr, ptr @"var.lexer::is_ws", align 8
  %call.res = call i64 @"lexer::scan_while"(ptr %0, ptr %var.load1)
  ret i64 %call.res
}

define internal i1 @"$anon_fn.160"(i32 %0) #3 {
entry:
  %call.res = call i1 @"lexer::is_id_char"(i32 %0)
  ret i1 %call.res
}

define void @"lexer::skip_hws"(ptr %0, i64 %1) #3 {
entry:
  br label %loop.header.298

loop.header.298:                                  ; preds = %choice.then, %entry
  %loop.idx.298.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then ]
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  switch i32 %call.res, label %choice.else [
    i32 32, label %choice.then
    i32 13, label %choice.then
    i32 9, label %choice.then
  ]

choice.then:                                      ; preds = %loop.header.298, %loop.header.298, %loop.header.298
  %call.res8 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res9 = call i32 @"lexer::adv"(ptr %0, i32 %call.res8)
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 10
  store i1 true, ptr %fld.gep, align 1
  %loop.next = add i64 %loop.idx.298.0, 1
  br label %loop.header.298

choice.else:                                      ; preds = %loop.header.298
  ret void
}

define { i64, ptr } @"lexer::pragma_int_fail"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %cat.seg3 = load i64, ptr %0, align 8
  %cat.seg4 = and i64 %cat.seg3, 281474976710655
  %str.tag = lshr i64 %cat.seg3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg5 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %cat.seg6 = load ptr, ptr %cat.seg5, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 %cat.seg4)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 61)
  %sum10 = extractvalue { i64, i1 } %cat.sum.len9, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum10, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.56, i64 32, i1 false)
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 %cat.seg6, i64 %cat.seg4, i1 false)
  %cat.off = add nuw nsw i64 32, %cat.seg4
  %cat.dst21 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst21, ptr align 1 @str.57, i64 61, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum10
  store i8 0, ptr %concat.nul, align 1
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum10, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res = call i64 @"lexer::fail"(i64 1013, i64 %1, i64 %2, ptr %concat.str)
  ret { i64, ptr } { i64 0, ptr @str.0 }

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok
}

define { i64, ptr } @"lexer::pragma_float_fail"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %cat.seg3 = load i64, ptr %0, align 8
  %cat.seg4 = and i64 %cat.seg3, 281474976710655
  %str.tag = lshr i64 %cat.seg3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg5 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %cat.seg6 = load ptr, ptr %cat.seg5, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 30, i64 %cat.seg4)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 52)
  %sum10 = extractvalue { i64, i1 } %cat.sum.len9, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum10, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.58, i64 30, i1 false)
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 %cat.seg6, i64 %cat.seg4, i1 false)
  %cat.off = add nuw nsw i64 30, %cat.seg4
  %cat.dst21 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst21, ptr align 1 @str.59, i64 52, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum10
  store i8 0, ptr %concat.nul, align 1
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum10, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res = call i64 @"lexer::fail"(i64 1013, i64 %1, i64 %2, ptr %concat.str)
  ret { i64, ptr } { i64 0, ptr @str.0 }

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok
}

define ptr @"lexer::scan_pragma"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 40
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %call.res5 = call ptr @"lexer::scan_pragma_parens"(ptr %0, i64 %1, i64 %2, i64 %3)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %call.res8 = call i64 @"lexer::fail"(i64 1013, i64 %2, i64 %3, ptr @str.84.struct)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 23, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %call.res13 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %1, i64 0, i64 %2, i64 %3, ptr @str.82.struct)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res5, %choice.then ], [ %call.res13, %choice.else ]
  ret ptr %choice.res
}

define ptr @"lexer::scan_pragma_parens"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res2 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 @str.0, i64 0, i1 false)
  store i8 0, ptr %copy.buf, align 1
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  store i64 0, ptr %copy.str, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf11, ptr align 1 @str.0, i64 0, i1 false)
  store i8 0, ptr %copy.buf11, align 1
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  store i64 0, ptr %copy.str14, align 8
  %str.copy.data.gep16 = getelementptr inbounds { i64, ptr }, ptr %copy.str14, i32 0, i32 1
  store ptr %copy.buf11, ptr %str.copy.data.gep16, align 8
  br label %loop.header.302

loop.header.302:                                  ; preds = %choice.then657, %entry
  %"var.saw_any'.0" = phi i1 [ false, %entry ], [ true, %choice.then657 ]
  %"var.sw_val'.0" = phi ptr [ %copy.str14, %entry ], [ %"var.sw_val'.2", %choice.then657 ]
  %"var.fp_val'.0" = phi ptr [ %copy.str, %entry ], [ %"var.fp_val'.2", %choice.then657 ]
  %loop.idx.302.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then657 ]
  %loop.cond = icmp slt i64 %loop.idx.302.0, 100
  br i1 %loop.cond, label %loop.body.302, label %loop.exit.302

loop.body.302:                                    ; preds = %loop.header.302
  %call.res18 = call i64 @"lexer::skip_ws"(ptr %0, i64 0)
  %call.res20 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res20 to i64
  switch i64 %coerce.sext, label %choice.exit29 [
    i64 41, label %choice.then
    i64 0, label %choice.then28
  ]

loop.exit.302:                                    ; preds = %loop.header.302, %choice.else675, %choice.then674, %choice.then665, %str_ok70, %choice.then51, %choice.then28, %choice.then
  %"var.saw_any'.1" = phi i1 [ %"var.saw_any'.0", %choice.then ], [ %"var.saw_any'.0", %choice.then28 ], [ %"var.saw_any'.0", %choice.then51 ], [ %"var.saw_any'.0", %str_ok70 ], [ true, %choice.then665 ], [ true, %choice.then674 ], [ true, %choice.else675 ], [ %"var.saw_any'.0", %loop.header.302 ]
  %"var.sw_val'.1" = phi ptr [ %"var.sw_val'.0", %choice.then ], [ %"var.sw_val'.0", %choice.then28 ], [ %"var.sw_val'.0", %choice.then51 ], [ %"var.sw_val'.0", %str_ok70 ], [ %"var.sw_val'.2", %choice.then665 ], [ %"var.sw_val'.2", %choice.then674 ], [ %"var.sw_val'.2", %choice.else675 ], [ %"var.sw_val'.0", %loop.header.302 ]
  %"var.fp_val'.1" = phi ptr [ %"var.fp_val'.0", %choice.then ], [ %"var.fp_val'.0", %choice.then28 ], [ %"var.fp_val'.0", %choice.then51 ], [ %"var.fp_val'.0", %str_ok70 ], [ %"var.fp_val'.2", %choice.then665 ], [ %"var.fp_val'.2", %choice.then674 ], [ %"var.fp_val'.2", %choice.else675 ], [ %"var.fp_val'.0", %loop.header.302 ]
  %nottmp = xor i1 %"var.saw_any'.1", true
  br i1 %nottmp, label %choice.then684, label %choice.exit685

choice.then:                                      ; preds = %loop.body.302
  %call.res24 = call i32 @"lexer::adv"(ptr %0, i32 %call.res20)
  br label %loop.exit.302

choice.then28:                                    ; preds = %loop.body.302
  %call.res32 = call i64 @"lexer::fail"(i64 1013, i64 %2, i64 %3, ptr @str.60.struct)
  br label %loop.exit.302

choice.exit29:                                    ; preds = %loop.body.302
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res35 = call i64 @"lexer::scan_while"(ptr %0, ptr @clo.const.70)
  %fld.load38 = load ptr, ptr %0, align 8
  %s.read.len39 = load i64, ptr %fld.load38, align 8
  %s.read.len40 = and i64 %s.read.len39, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load38, i32 0, i32 1
  %s.read.data41 = load ptr, ptr %s.read.data, align 8
  %fld.load45 = load i64, ptr %fld.gep, align 8
  %start.is_neg = icmp slt i64 %fld.load, 0
  %rel.start = add i64 %s.read.len40, %fld.load
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len40
  %final.start = select i1 %start.gt.len, i64 %s.read.len40, i64 %c.start.0
  %end.is_neg = icmp slt i64 %fld.load45, 0
  %rel.end = add i64 %s.read.len40, %fld.load45
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %fld.load45
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len40
  %final.end = select i1 %end.gt.len, i64 %s.read.len40, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data41, i64 %final.start
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %view.len, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %str.len.query48 = load i64, ptr %str.view, align 8
  %str.len.query49 = and i64 %str.len.query48, 281474976710655
  %str.tag = lshr i64 %str.len.query48, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.exit29
  %cmptmp50 = icmp eq i64 %str.len.query49, 0
  br i1 %cmptmp50, label %choice.then51, label %choice.exit52

tag.slow_check:                                   ; preds = %choice.exit29
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then51:                                    ; preds = %str_ok
  %call.res55 = call i64 @"lexer::fail"(i64 1013, i64 %2, i64 %3, ptr @str.61.struct)
  br label %loop.exit.302

choice.exit52:                                    ; preds = %str_ok
  %call.res57 = call i64 @"lexer::skip_ws"(ptr %0, i64 0)
  %call.res59 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext60 = sext i32 %call.res59 to i64
  %cmptmp61 = icmp ne i64 %coerce.sext60, 61
  br i1 %cmptmp61, label %choice.then62, label %choice.exit63

choice.then62:                                    ; preds = %choice.exit52
  %cat.seg67 = load i64, ptr %str.view, align 8
  %cat.seg68 = and i64 %cat.seg67, 281474976710655
  %str.tag69 = lshr i64 %cat.seg67, 48
  %tag.immortal71 = icmp eq i64 %str.tag69, 0
  %active.gen72 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current73 = icmp eq i64 %str.tag69, %active.gen72
  %tag.fast.ok74 = or i1 %tag.immortal71, %tag.current73
  br i1 %tag.fast.ok74, label %str_ok70, label %tag.slow_check75

choice.exit63:                                    ; preds = %choice.exit52
  %call.res103 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res104 = call i32 @"lexer::adv"(ptr %0, i32 %call.res103)
  %call.res106 = call i64 @"lexer::skip_ws"(ptr %0, i64 0)
  %fld.load109 = load i64, ptr %fld.gep, align 8
  %call.res111 = call i64 @"lexer::scan_while"(ptr %0, ptr @clo.const.71)
  %fld.load114 = load ptr, ptr %0, align 8
  %s.read.len116 = load i64, ptr %fld.load114, align 8
  %s.read.len117 = and i64 %s.read.len116, 281474976710655
  %s.read.data118 = getelementptr inbounds { i64, ptr }, ptr %fld.load114, i32 0, i32 1
  %s.read.data119 = load ptr, ptr %s.read.data118, align 8
  %fld.load123 = load i64, ptr %fld.gep, align 8
  %start.is_neg124 = icmp slt i64 %fld.load109, 0
  %rel.start125 = add i64 %s.read.len117, %fld.load109
  %norm.start126 = select i1 %start.is_neg124, i64 %rel.start125, i64 %fld.load109
  %start.lt.0127 = icmp slt i64 %norm.start126, 0
  %c.start.0128 = select i1 %start.lt.0127, i64 0, i64 %norm.start126
  %start.gt.len129 = icmp sgt i64 %c.start.0128, %s.read.len117
  %final.start130 = select i1 %start.gt.len129, i64 %s.read.len117, i64 %c.start.0128
  %end.is_neg131 = icmp slt i64 %fld.load123, 0
  %rel.end132 = add i64 %s.read.len117, %fld.load123
  %norm.end133 = select i1 %end.is_neg131, i64 %rel.end132, i64 %fld.load123
  %end.lt.0134 = icmp slt i64 %norm.end133, 0
  %c.end.0135 = select i1 %end.lt.0134, i64 0, i64 %norm.end133
  %end.gt.len136 = icmp sgt i64 %c.end.0135, %s.read.len117
  %final.end137 = select i1 %end.gt.len136, i64 %s.read.len117, i64 %c.end.0135
  %view.empty138 = icmp sle i64 %final.end137, %final.start130
  %view.len.sub139 = sub i64 %final.end137, %final.start130
  %view.len140 = select i1 %view.empty138, i64 0, i64 %view.len.sub139
  %view.data141 = getelementptr i8, ptr %s.read.data119, i64 %final.start130
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 16)
  %str.tag.gen145 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift146 = shl i64 %str.tag.gen145, 48
  %str.tagged.len147 = or i64 %view.len140, %str.tag.shift146
  store i64 %str.tagged.len147, ptr %str.view143, align 8
  %str.build.data.gep148 = getelementptr inbounds { i64, ptr }, ptr %str.view143, i32 0, i32 1
  store ptr %view.data141, ptr %str.build.data.gep148, align 8
  %eq.lhs.len151 = load i64, ptr %str.view, align 8
  %eq.lhs.len152 = and i64 %eq.lhs.len151, 281474976710655
  %str.tag153 = lshr i64 %eq.lhs.len151, 48
  %tag.immortal155 = icmp eq i64 %str.tag153, 0
  %active.gen156 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current157 = icmp eq i64 %str.tag153, %active.gen156
  %tag.fast.ok158 = or i1 %tag.immortal155, %tag.current157
  br i1 %tag.fast.ok158, label %str_ok154, label %tag.slow_check159

str_ok70:                                         ; preds = %tag.slow_check75, %choice.then62
  %cat.seg77 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 37, i64 %cat.seg68)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len80 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 2)
  %sum81 = extractvalue { i64, i1 } %cat.sum.len80, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum81, i64 1)
  %sum86 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 %sum86)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.62, i64 37, i1 false)
  %cat.dst92 = getelementptr i8, ptr %concat.buf, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst92, ptr align 1 %cat.seg77, i64 %cat.seg68, i1 false)
  %cat.off = add nuw nsw i64 37, %cat.seg68
  %cat.dst93 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst93, ptr align 1 @str.63, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum81
  store i8 0, ptr %concat.nul, align 1
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 16)
  %str.tag.gen96 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift97 = shl i64 %str.tag.gen96, 48
  %str.tagged.len98 = or i64 %sum81, %str.tag.shift97
  store i64 %str.tagged.len98, ptr %concat.str, align 8
  %str.build.data.gep99 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep99, align 8
  %call.res100 = call i64 @"lexer::fail"(i64 1013, i64 %2, i64 %3, ptr %concat.str)
  br label %loop.exit.302

tag.slow_check75:                                 ; preds = %choice.then62
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag69)
  br label %str_ok70

choice.exit150:                                   ; preds = %str.eq.merge584, %choice.next521, %str.eq.merge485, %choice.next454, %str_ok608, %choice.exit350, %choice.exit163
  %"var.sw_val'.2" = phi ptr [ %"var.sw_val'.0", %choice.exit163 ], [ %"var.sw_val'.0", %choice.exit350 ], [ %"var.sw_val'.0", %str_ok608 ], [ %"var.sw_val'.0", %choice.next454 ], [ %"var.sw_val'.0", %str.eq.merge485 ], [ %ret.ub.alloc598, %choice.next521 ], [ %str.view143, %str.eq.merge584 ]
  %"var.fp_val'.2" = phi ptr [ %"var.fp_val'.0", %choice.exit163 ], [ %"var.fp_val'.0", %choice.exit350 ], [ %"var.fp_val'.0", %str_ok608 ], [ %ret.ub.alloc499, %choice.next454 ], [ %str.view143, %str.eq.merge485 ], [ %"var.fp_val'.0", %choice.next521 ], [ %"var.fp_val'.0", %str.eq.merge584 ]
  %call.res651 = call i64 @"lexer::skip_ws"(ptr %0, i64 0)
  %call.res653 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext655 = sext i32 %call.res653 to i64
  switch i64 %coerce.sext655, label %choice.else675 [
    i64 44, label %choice.then657
    i64 41, label %choice.then665
    i64 0, label %choice.then674
  ]

choice.case:                                      ; preds = %str.eq.then
  %eq.lhs.len167 = load i64, ptr %str.view143, align 8
  %eq.lhs.len168 = and i64 %eq.lhs.len167, 281474976710655
  %str.tag169 = lshr i64 %eq.lhs.len167, 48
  %tag.immortal171 = icmp eq i64 %str.tag169, 0
  %active.gen172 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current173 = icmp eq i64 %str.tag169, %active.gen172
  %tag.fast.ok174 = or i1 %tag.immortal171, %tag.current173
  br i1 %tag.fast.ok174, label %str_ok170, label %tag.slow_check175

choice.next:                                      ; preds = %str_ok154, %str.eq.then
  %eq.lhs.len335 = load i64, ptr %str.view, align 8
  %eq.lhs.len336 = and i64 %eq.lhs.len335, 281474976710655
  %eq.len339 = icmp eq i64 %eq.lhs.len336, 5
  br i1 %eq.len339, label %str.eq.then340, label %choice.next333

str_ok154:                                        ; preds = %tag.slow_check159, %choice.exit63
  %eq.len = icmp eq i64 %eq.lhs.len152, 7
  br i1 %eq.len, label %str.eq.then, label %choice.next

tag.slow_check159:                                ; preds = %choice.exit63
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag153)
  br label %str_ok154

str.eq.then:                                      ; preds = %str_ok154
  %eq.lhs.data161 = load ptr, ptr %str.build.data.gep, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data161, ptr @str.64, i64 7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.case, label %choice.next

choice.exit163:                                   ; preds = %str.eq.then315, %str.eq.then298, %str.eq.then281, %str.eq.then264, %str.eq.then247, %str.eq.then230, %str.eq.then213, %str.eq.then196, %str.eq.then179, %choice.next308
  %choice.res = phi ptr [ %ret.ub.alloc, %choice.next308 ], [ @str.0.struct, %str.eq.then179 ], [ @str.16.struct, %str.eq.then196 ], [ @str.17.struct, %str.eq.then213 ], [ @str.18.struct, %str.eq.then230 ], [ @str.19.struct, %str.eq.then247 ], [ @str.20.struct, %str.eq.then264 ], [ @str.21.struct, %str.eq.then281 ], [ @str.22.struct, %str.eq.then298 ], [ @str.23.struct, %str.eq.then315 ]
  %fld.gep331 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 11
  store ptr %choice.res, ptr %fld.gep331, align 8
  br label %choice.exit150

choice.next165:                                   ; preds = %str_ok170, %str.eq.then179
  %eq.lhs.len191 = load i64, ptr %str.view143, align 8
  %eq.lhs.len192 = and i64 %eq.lhs.len191, 281474976710655
  %eq.len195 = icmp eq i64 %eq.lhs.len192, 2
  br i1 %eq.len195, label %str.eq.then196, label %choice.next189

str_ok170:                                        ; preds = %tag.slow_check175, %choice.case
  %eq.len178 = icmp eq i64 %eq.lhs.len168, 7
  br i1 %eq.len178, label %str.eq.then179, label %choice.next165

tag.slow_check175:                                ; preds = %choice.case
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag169)
  br label %str_ok170

str.eq.then179:                                   ; preds = %str_ok170
  %eq.lhs.data183 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp185 = call i32 @memcmp(ptr %eq.lhs.data183, ptr @str.65, i64 7)
  %eq.cmp.zero186 = icmp eq i32 %eq.memcmp185, 0
  br i1 %eq.cmp.zero186, label %choice.exit163, label %choice.next165

choice.next189:                                   ; preds = %choice.next165, %str.eq.then196
  %eq.lhs.len208 = load i64, ptr %str.view143, align 8
  %eq.lhs.len209 = and i64 %eq.lhs.len208, 281474976710655
  %eq.len212 = icmp eq i64 %eq.lhs.len209, 3
  br i1 %eq.len212, label %str.eq.then213, label %choice.next206

str.eq.then196:                                   ; preds = %choice.next165
  %eq.lhs.data200 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp202 = call i32 @memcmp(ptr %eq.lhs.data200, ptr @str.16, i64 2)
  %eq.cmp.zero203 = icmp eq i32 %eq.memcmp202, 0
  br i1 %eq.cmp.zero203, label %choice.exit163, label %choice.next189

choice.next206:                                   ; preds = %choice.next189, %str.eq.then213
  %eq.lhs.len225 = load i64, ptr %str.view143, align 8
  %eq.lhs.len226 = and i64 %eq.lhs.len225, 281474976710655
  %eq.len229 = icmp eq i64 %eq.lhs.len226, 3
  br i1 %eq.len229, label %str.eq.then230, label %choice.next223

str.eq.then213:                                   ; preds = %choice.next189
  %eq.lhs.data217 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp219 = call i32 @memcmp(ptr %eq.lhs.data217, ptr @str.17, i64 3)
  %eq.cmp.zero220 = icmp eq i32 %eq.memcmp219, 0
  br i1 %eq.cmp.zero220, label %choice.exit163, label %choice.next206

choice.next223:                                   ; preds = %choice.next206, %str.eq.then230
  %eq.lhs.len242 = load i64, ptr %str.view143, align 8
  %eq.lhs.len243 = and i64 %eq.lhs.len242, 281474976710655
  %eq.len246 = icmp eq i64 %eq.lhs.len243, 3
  br i1 %eq.len246, label %str.eq.then247, label %choice.next240

str.eq.then230:                                   ; preds = %choice.next206
  %eq.lhs.data234 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp236 = call i32 @memcmp(ptr %eq.lhs.data234, ptr @str.18, i64 3)
  %eq.cmp.zero237 = icmp eq i32 %eq.memcmp236, 0
  br i1 %eq.cmp.zero237, label %choice.exit163, label %choice.next223

choice.next240:                                   ; preds = %choice.next223, %str.eq.then247
  %eq.lhs.len259 = load i64, ptr %str.view143, align 8
  %eq.lhs.len260 = and i64 %eq.lhs.len259, 281474976710655
  %eq.len263 = icmp eq i64 %eq.lhs.len260, 2
  br i1 %eq.len263, label %str.eq.then264, label %choice.next257

str.eq.then247:                                   ; preds = %choice.next223
  %eq.lhs.data251 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp253 = call i32 @memcmp(ptr %eq.lhs.data251, ptr @str.19, i64 3)
  %eq.cmp.zero254 = icmp eq i32 %eq.memcmp253, 0
  br i1 %eq.cmp.zero254, label %choice.exit163, label %choice.next240

choice.next257:                                   ; preds = %choice.next240, %str.eq.then264
  %eq.lhs.len276 = load i64, ptr %str.view143, align 8
  %eq.lhs.len277 = and i64 %eq.lhs.len276, 281474976710655
  %eq.len280 = icmp eq i64 %eq.lhs.len277, 3
  br i1 %eq.len280, label %str.eq.then281, label %choice.next274

str.eq.then264:                                   ; preds = %choice.next240
  %eq.lhs.data268 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp270 = call i32 @memcmp(ptr %eq.lhs.data268, ptr @str.20, i64 2)
  %eq.cmp.zero271 = icmp eq i32 %eq.memcmp270, 0
  br i1 %eq.cmp.zero271, label %choice.exit163, label %choice.next257

choice.next274:                                   ; preds = %choice.next257, %str.eq.then281
  %eq.lhs.len293 = load i64, ptr %str.view143, align 8
  %eq.lhs.len294 = and i64 %eq.lhs.len293, 281474976710655
  %eq.len297 = icmp eq i64 %eq.lhs.len294, 3
  br i1 %eq.len297, label %str.eq.then298, label %choice.next291

str.eq.then281:                                   ; preds = %choice.next257
  %eq.lhs.data285 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp287 = call i32 @memcmp(ptr %eq.lhs.data285, ptr @str.21, i64 3)
  %eq.cmp.zero288 = icmp eq i32 %eq.memcmp287, 0
  br i1 %eq.cmp.zero288, label %choice.exit163, label %choice.next274

choice.next291:                                   ; preds = %choice.next274, %str.eq.then298
  %eq.lhs.len310 = load i64, ptr %str.view143, align 8
  %eq.lhs.len311 = and i64 %eq.lhs.len310, 281474976710655
  %eq.len314 = icmp eq i64 %eq.lhs.len311, 3
  br i1 %eq.len314, label %str.eq.then315, label %choice.next308

str.eq.then298:                                   ; preds = %choice.next274
  %eq.lhs.data302 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp304 = call i32 @memcmp(ptr %eq.lhs.data302, ptr @str.22, i64 3)
  %eq.cmp.zero305 = icmp eq i32 %eq.memcmp304, 0
  br i1 %eq.cmp.zero305, label %choice.exit163, label %choice.next291

choice.next308:                                   ; preds = %choice.next291, %str.eq.then315
  %call.res327 = call { i64, ptr } @"lexer::pragma_int_fail"(ptr %str.view143, i64 %2, i64 %3)
  %arena.cur328 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur328, i64 16)
  store { i64, ptr } { i64 0, ptr @str.0 }, ptr %ret.ub.alloc, align 8
  br label %choice.exit163

str.eq.then315:                                   ; preds = %choice.next291
  %eq.lhs.data319 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp321 = call i32 @memcmp(ptr %eq.lhs.data319, ptr @str.23, i64 3)
  %eq.cmp.zero322 = icmp eq i32 %eq.memcmp321, 0
  br i1 %eq.cmp.zero322, label %choice.exit163, label %choice.next308

choice.case332:                                   ; preds = %str.eq.then340
  %eq.lhs.len354 = load i64, ptr %str.view143, align 8
  %eq.lhs.len355 = and i64 %eq.lhs.len354, 281474976710655
  %str.tag356 = lshr i64 %eq.lhs.len354, 48
  %tag.immortal358 = icmp eq i64 %str.tag356, 0
  %active.gen359 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current360 = icmp eq i64 %str.tag356, %active.gen359
  %tag.fast.ok361 = or i1 %tag.immortal358, %tag.current360
  br i1 %tag.fast.ok361, label %str_ok357, label %tag.slow_check362

choice.next333:                                   ; preds = %choice.next, %str.eq.then340
  %eq.lhs.len437 = load i64, ptr %str.view, align 8
  %eq.lhs.len438 = and i64 %eq.lhs.len437, 281474976710655
  %eq.len441 = icmp eq i64 %eq.lhs.len438, 6
  br i1 %eq.len441, label %str.eq.then442, label %choice.next435

str.eq.then340:                                   ; preds = %choice.next
  %eq.lhs.data344 = load ptr, ptr %str.build.data.gep, align 8
  %eq.memcmp346 = call i32 @memcmp(ptr %eq.lhs.data344, ptr @str.66, i64 5)
  %eq.cmp.zero347 = icmp eq i32 %eq.memcmp346, 0
  br i1 %eq.cmp.zero347, label %choice.case332, label %choice.next333

choice.exit350:                                   ; preds = %str.eq.then414, %str.eq.merge398, %choice.next407
  %choice.res429 = phi ptr [ %ret.ub.alloc428, %choice.next407 ], [ @str.0.struct, %str.eq.merge398 ], [ @str.24.struct, %str.eq.then414 ]
  %fld.gep433 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 12
  store ptr %choice.res429, ptr %fld.gep433, align 8
  br label %choice.exit150

choice.next352:                                   ; preds = %str.eq.merge398
  %eq.lhs.len409 = load i64, ptr %str.view143, align 8
  %eq.lhs.len410 = and i64 %eq.lhs.len409, 281474976710655
  %eq.len413 = icmp eq i64 %eq.lhs.len410, 3
  br i1 %eq.len413, label %str.eq.then414, label %choice.next407

str_ok357:                                        ; preds = %tag.slow_check362, %choice.case332
  %eq.len365 = icmp eq i64 %eq.lhs.len355, 7
  br i1 %eq.len365, label %str.eq.then366, label %str.eq.merge368

tag.slow_check362:                                ; preds = %choice.case332
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag356)
  br label %str_ok357

str.eq.then366:                                   ; preds = %str_ok357
  %eq.lhs.data370 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp372 = call i32 @memcmp(ptr %eq.lhs.data370, ptr @str.65, i64 7)
  %eq.cmp.zero373 = icmp eq i32 %eq.memcmp372, 0
  br label %str.eq.merge368

str.eq.merge368:                                  ; preds = %str_ok357, %str.eq.then366
  %str.eq.result374 = phi i1 [ %eq.cmp.zero373, %str.eq.then366 ], [ false, %str_ok357 ]
  %eq.lhs.len376 = load i64, ptr %str.view143, align 8
  %eq.lhs.len377 = and i64 %eq.lhs.len376, 281474976710655
  %eq.len380 = icmp eq i64 %eq.lhs.len377, 3
  br i1 %eq.len380, label %str.eq.then381, label %str.eq.merge383

str.eq.then381:                                   ; preds = %str.eq.merge368
  %eq.lhs.data385 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp387 = call i32 @memcmp(ptr %eq.lhs.data385, ptr @str.25, i64 3)
  %eq.cmp.zero388 = icmp eq i32 %eq.memcmp387, 0
  br label %str.eq.merge383

str.eq.merge383:                                  ; preds = %str.eq.merge368, %str.eq.then381
  %str.eq.result389 = phi i1 [ %eq.cmp.zero388, %str.eq.then381 ], [ false, %str.eq.merge368 ]
  %case.or = or i1 %str.eq.result374, %str.eq.result389
  %eq.lhs.len391 = load i64, ptr %str.view143, align 8
  %eq.lhs.len392 = and i64 %eq.lhs.len391, 281474976710655
  %eq.len395 = icmp eq i64 %eq.lhs.len392, 5
  br i1 %eq.len395, label %str.eq.then396, label %str.eq.merge398

str.eq.then396:                                   ; preds = %str.eq.merge383
  %eq.lhs.data400 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp402 = call i32 @memcmp(ptr %eq.lhs.data400, ptr @str.67, i64 5)
  %eq.cmp.zero403 = icmp eq i32 %eq.memcmp402, 0
  br label %str.eq.merge398

str.eq.merge398:                                  ; preds = %str.eq.merge383, %str.eq.then396
  %str.eq.result404 = phi i1 [ %eq.cmp.zero403, %str.eq.then396 ], [ false, %str.eq.merge383 ]
  %case.or405 = or i1 %case.or, %str.eq.result404
  br i1 %case.or405, label %choice.exit350, label %choice.next352

choice.next407:                                   ; preds = %choice.next352, %str.eq.then414
  %call.res426 = call { i64, ptr } @"lexer::pragma_float_fail"(ptr %str.view143, i64 %2, i64 %3)
  %arena.cur427 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc428 = call ptr @dva_arena_alloc(ptr %arena.cur427, i64 16)
  store { i64, ptr } { i64 0, ptr @str.0 }, ptr %ret.ub.alloc428, align 8
  br label %choice.exit350

str.eq.then414:                                   ; preds = %choice.next352
  %eq.lhs.data418 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp420 = call i32 @memcmp(ptr %eq.lhs.data418, ptr @str.24, i64 3)
  %eq.cmp.zero421 = icmp eq i32 %eq.memcmp420, 0
  br i1 %eq.cmp.zero421, label %choice.exit350, label %choice.next407

choice.case434:                                   ; preds = %str.eq.then442
  %eq.lhs.len456 = load i64, ptr %str.view143, align 8
  %eq.lhs.len457 = and i64 %eq.lhs.len456, 281474976710655
  %str.tag458 = lshr i64 %eq.lhs.len456, 48
  %tag.immortal460 = icmp eq i64 %str.tag458, 0
  %active.gen461 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current462 = icmp eq i64 %str.tag458, %active.gen461
  %tag.fast.ok463 = or i1 %tag.immortal460, %tag.current462
  br i1 %tag.fast.ok463, label %str_ok459, label %tag.slow_check464

choice.next435:                                   ; preds = %choice.next333, %str.eq.then442
  %eq.lhs.len504 = load i64, ptr %str.view, align 8
  %eq.lhs.len505 = and i64 %eq.lhs.len504, 281474976710655
  %eq.len508 = icmp eq i64 %eq.lhs.len505, 7
  br i1 %eq.len508, label %str.eq.then509, label %choice.next502

str.eq.then442:                                   ; preds = %choice.next333
  %eq.lhs.data446 = load ptr, ptr %str.build.data.gep, align 8
  %eq.memcmp448 = call i32 @memcmp(ptr %eq.lhs.data446, ptr @str.68, i64 6)
  %eq.cmp.zero449 = icmp eq i32 %eq.memcmp448, 0
  br i1 %eq.cmp.zero449, label %choice.case434, label %choice.next435

choice.next454:                                   ; preds = %str.eq.merge485
  %call.res497 = call { i64, ptr } @"lexer::pragma_fp_fail"(ptr %str.view143, i64 %2, i64 %3)
  %arena.cur498 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc499 = call ptr @dva_arena_alloc(ptr %arena.cur498, i64 16)
  store { i64, ptr } { i64 0, ptr @str.0 }, ptr %ret.ub.alloc499, align 8
  br label %choice.exit150

str_ok459:                                        ; preds = %tag.slow_check464, %choice.case434
  %eq.len467 = icmp eq i64 %eq.lhs.len457, 3
  br i1 %eq.len467, label %str.eq.then468, label %str.eq.merge470

tag.slow_check464:                                ; preds = %choice.case434
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag458)
  br label %str_ok459

str.eq.then468:                                   ; preds = %str_ok459
  %eq.lhs.data472 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp474 = call i32 @memcmp(ptr %eq.lhs.data472, ptr @str.69, i64 3)
  %eq.cmp.zero475 = icmp eq i32 %eq.memcmp474, 0
  br label %str.eq.merge470

str.eq.merge470:                                  ; preds = %str_ok459, %str.eq.then468
  %str.eq.result476 = phi i1 [ %eq.cmp.zero475, %str.eq.then468 ], [ false, %str_ok459 ]
  %eq.lhs.len478 = load i64, ptr %str.view143, align 8
  %eq.lhs.len479 = and i64 %eq.lhs.len478, 281474976710655
  %eq.len482 = icmp eq i64 %eq.lhs.len479, 4
  br i1 %eq.len482, label %str.eq.then483, label %str.eq.merge485

str.eq.then483:                                   ; preds = %str.eq.merge470
  %eq.lhs.data487 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp489 = call i32 @memcmp(ptr %eq.lhs.data487, ptr @str.70, i64 4)
  %eq.cmp.zero490 = icmp eq i32 %eq.memcmp489, 0
  br label %str.eq.merge485

str.eq.merge485:                                  ; preds = %str.eq.merge470, %str.eq.then483
  %str.eq.result491 = phi i1 [ %eq.cmp.zero490, %str.eq.then483 ], [ false, %str.eq.merge470 ]
  %case.or492 = or i1 %str.eq.result476, %str.eq.result491
  br i1 %case.or492, label %choice.exit150, label %choice.next454

choice.case501:                                   ; preds = %str.eq.then509
  %eq.lhs.len523 = load i64, ptr %str.view143, align 8
  %eq.lhs.len524 = and i64 %eq.lhs.len523, 281474976710655
  %str.tag525 = lshr i64 %eq.lhs.len523, 48
  %tag.immortal527 = icmp eq i64 %str.tag525, 0
  %active.gen528 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current529 = icmp eq i64 %str.tag525, %active.gen528
  %tag.fast.ok530 = or i1 %tag.immortal527, %tag.current529
  br i1 %tag.fast.ok530, label %str_ok526, label %tag.slow_check531

choice.next502:                                   ; preds = %choice.next435, %str.eq.then509
  %cat.seg605 = load i64, ptr %str.view, align 8
  %cat.seg606 = and i64 %cat.seg605, 281474976710655
  %str.tag607 = lshr i64 %cat.seg605, 48
  %tag.immortal609 = icmp eq i64 %str.tag607, 0
  %active.gen610 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current611 = icmp eq i64 %str.tag607, %active.gen610
  %tag.fast.ok612 = or i1 %tag.immortal609, %tag.current611
  br i1 %tag.fast.ok612, label %str_ok608, label %tag.slow_check613

str.eq.then509:                                   ; preds = %choice.next435
  %eq.lhs.data513 = load ptr, ptr %str.build.data.gep, align 8
  %eq.memcmp515 = call i32 @memcmp(ptr %eq.lhs.data513, ptr @str.73, i64 7)
  %eq.cmp.zero516 = icmp eq i32 %eq.memcmp515, 0
  br i1 %eq.cmp.zero516, label %choice.case501, label %choice.next502

choice.next521:                                   ; preds = %str.eq.merge584
  %call.res596 = call { i64, ptr } @"lexer::pragma_swizzle_fail"(ptr %str.view143, i64 %2, i64 %3)
  %arena.cur597 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc598 = call ptr @dva_arena_alloc(ptr %arena.cur597, i64 16)
  store { i64, ptr } { i64 4, ptr @str.70 }, ptr %ret.ub.alloc598, align 8
  br label %choice.exit150

str_ok526:                                        ; preds = %tag.slow_check531, %choice.case501
  %eq.len534 = icmp eq i64 %eq.lhs.len524, 3
  br i1 %eq.len534, label %str.eq.then535, label %str.eq.merge537

tag.slow_check531:                                ; preds = %choice.case501
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag525)
  br label %str_ok526

str.eq.then535:                                   ; preds = %str_ok526
  %eq.lhs.data539 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp541 = call i32 @memcmp(ptr %eq.lhs.data539, ptr @str.69, i64 3)
  %eq.cmp.zero542 = icmp eq i32 %eq.memcmp541, 0
  br label %str.eq.merge537

str.eq.merge537:                                  ; preds = %str_ok526, %str.eq.then535
  %str.eq.result543 = phi i1 [ %eq.cmp.zero542, %str.eq.then535 ], [ false, %str_ok526 ]
  %eq.lhs.len545 = load i64, ptr %str.view143, align 8
  %eq.lhs.len546 = and i64 %eq.lhs.len545, 281474976710655
  %eq.len549 = icmp eq i64 %eq.lhs.len546, 4
  br i1 %eq.len549, label %str.eq.then550, label %str.eq.merge552

str.eq.then550:                                   ; preds = %str.eq.merge537
  %eq.lhs.data554 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp556 = call i32 @memcmp(ptr %eq.lhs.data554, ptr @str.74, i64 4)
  %eq.cmp.zero557 = icmp eq i32 %eq.memcmp556, 0
  br label %str.eq.merge552

str.eq.merge552:                                  ; preds = %str.eq.merge537, %str.eq.then550
  %str.eq.result558 = phi i1 [ %eq.cmp.zero557, %str.eq.then550 ], [ false, %str.eq.merge537 ]
  %case.or559 = or i1 %str.eq.result543, %str.eq.result558
  %eq.lhs.len561 = load i64, ptr %str.view143, align 8
  %eq.lhs.len562 = and i64 %eq.lhs.len561, 281474976710655
  %eq.len565 = icmp eq i64 %eq.lhs.len562, 4
  br i1 %eq.len565, label %str.eq.then566, label %str.eq.merge568

str.eq.then566:                                   ; preds = %str.eq.merge552
  %eq.lhs.data570 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp572 = call i32 @memcmp(ptr %eq.lhs.data570, ptr @str.75, i64 4)
  %eq.cmp.zero573 = icmp eq i32 %eq.memcmp572, 0
  br label %str.eq.merge568

str.eq.merge568:                                  ; preds = %str.eq.merge552, %str.eq.then566
  %str.eq.result574 = phi i1 [ %eq.cmp.zero573, %str.eq.then566 ], [ false, %str.eq.merge552 ]
  %case.or575 = or i1 %case.or559, %str.eq.result574
  %eq.lhs.len577 = load i64, ptr %str.view143, align 8
  %eq.lhs.len578 = and i64 %eq.lhs.len577, 281474976710655
  %eq.len581 = icmp eq i64 %eq.lhs.len578, 4
  br i1 %eq.len581, label %str.eq.then582, label %str.eq.merge584

str.eq.then582:                                   ; preds = %str.eq.merge568
  %eq.lhs.data586 = load ptr, ptr %str.build.data.gep148, align 8
  %eq.memcmp588 = call i32 @memcmp(ptr %eq.lhs.data586, ptr @str.70, i64 4)
  %eq.cmp.zero589 = icmp eq i32 %eq.memcmp588, 0
  br label %str.eq.merge584

str.eq.merge584:                                  ; preds = %str.eq.merge568, %str.eq.then582
  %str.eq.result590 = phi i1 [ %eq.cmp.zero589, %str.eq.then582 ], [ false, %str.eq.merge568 ]
  %case.or591 = or i1 %case.or575, %str.eq.result590
  br i1 %case.or591, label %choice.exit150, label %choice.next521

str_ok608:                                        ; preds = %tag.slow_check613, %choice.next502
  %cat.seg615 = load ptr, ptr %str.build.data.gep, align 8
  %cat.sum.len617 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 26, i64 %cat.seg606)
  %sum618 = extractvalue { i64, i1 } %cat.sum.len617, 0
  %cat.sum.len623 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum618, i64 58)
  %sum624 = extractvalue { i64, i1 } %cat.sum.len623, 0
  %concat.tot.len629 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum624, i64 1)
  %sum630 = extractvalue { i64, i1 } %concat.tot.len629, 0
  %arena.cur635 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf636 = call ptr @dva_arena_alloc(ptr %arena.cur635, i64 %sum630)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf636, ptr align 1 @str.78, i64 26, i1 false)
  %cat.dst638 = getelementptr i8, ptr %concat.buf636, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst638, ptr align 1 %cat.seg615, i64 %cat.seg606, i1 false)
  %cat.off639 = add nuw nsw i64 26, %cat.seg606
  %cat.dst640 = getelementptr i8, ptr %concat.buf636, i64 %cat.off639
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst640, ptr align 1 @str.79, i64 58, i1 false)
  %concat.nul641 = getelementptr i8, ptr %concat.buf636, i64 %sum624
  store i8 0, ptr %concat.nul641, align 1
  %arena.cur642 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str643 = call ptr @dva_arena_alloc(ptr %arena.cur642, i64 16)
  %str.tag.gen645 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift646 = shl i64 %str.tag.gen645, 48
  %str.tagged.len647 = or i64 %sum624, %str.tag.shift646
  store i64 %str.tagged.len647, ptr %concat.str643, align 8
  %str.build.data.gep648 = getelementptr inbounds { i64, ptr }, ptr %concat.str643, i32 0, i32 1
  store ptr %concat.buf636, ptr %str.build.data.gep648, align 8
  %call.res649 = call i64 @"lexer::fail"(i64 1013, i64 %2, i64 %3, ptr %concat.str643)
  br label %choice.exit150

tag.slow_check613:                                ; preds = %choice.next502
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag607)
  br label %str_ok608

choice.then657:                                   ; preds = %choice.exit150
  %call.res661 = call i32 @"lexer::adv"(ptr %0, i32 %call.res653)
  %loop.next = add nsw i64 %loop.idx.302.0, 1
  br label %loop.header.302

choice.then665:                                   ; preds = %choice.exit150
  %call.res670 = call i32 @"lexer::adv"(ptr %0, i32 %call.res653)
  br label %loop.exit.302

choice.then674:                                   ; preds = %choice.exit150
  %call.res679 = call i64 @"lexer::fail"(i64 1013, i64 %2, i64 %3, ptr @str.60.struct)
  br label %loop.exit.302

choice.else675:                                   ; preds = %choice.exit150
  %call.res682 = call i64 @"lexer::fail"(i64 1013, i64 %2, i64 %3, ptr @str.80.struct)
  br label %loop.exit.302

choice.then684:                                   ; preds = %loop.exit.302
  %call.res688 = call i64 @"lexer::fail"(i64 1013, i64 %2, i64 %3, ptr @str.81.struct)
  br label %choice.exit685

choice.exit685:                                   ; preds = %choice.then684, %loop.exit.302
  %arena.cur689 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur689, i64 24)
  %arena.cur690 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur690, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %eq.lhs.len693 = load i64, ptr %"var.fp_val'.1", align 8
  %eq.lhs.len694 = and i64 %eq.lhs.len693, 281474976710655
  %str.tag695 = lshr i64 %eq.lhs.len693, 48
  %tag.immortal697 = icmp eq i64 %str.tag695, 0
  %active.gen698 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current699 = icmp eq i64 %str.tag695, %active.gen698
  %tag.fast.ok700 = or i1 %tag.immortal697, %tag.current699
  br i1 %tag.fast.ok700, label %str_ok696, label %tag.slow_check701

str_ok696:                                        ; preds = %tag.slow_check701, %choice.exit685
  %eq.len704 = icmp eq i64 %eq.lhs.len694, 0
  br i1 %eq.len704, label %str.eq.then705, label %str.eq.merge707

tag.slow_check701:                                ; preds = %choice.exit685
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag695)
  br label %str_ok696

str.eq.then705:                                   ; preds = %str_ok696
  %eq.lhs.data708 = getelementptr inbounds { i64, ptr }, ptr %"var.fp_val'.1", i32 0, i32 1
  %eq.lhs.data709 = load ptr, ptr %eq.lhs.data708, align 8
  %eq.memcmp711 = call i32 @memcmp(ptr %eq.lhs.data709, ptr @str.0, i64 0)
  %eq.cmp.zero712 = icmp eq i32 %eq.memcmp711, 0
  br label %str.eq.merge707

str.eq.merge707:                                  ; preds = %str_ok696, %str.eq.then705
  %str.eq.result713 = phi i1 [ %eq.cmp.zero712, %str.eq.then705 ], [ false, %str_ok696 ]
  %str.neq = xor i1 %str.eq.result713, true
  br i1 %str.neq, label %choice.then714, label %choice.exit715

choice.then714:                                   ; preds = %str.eq.merge707
  %arena.cur717 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur717, i64 16)
  store i64 26, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %fld.gep720 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load721 = load i64, ptr %fld.gep720, align 8
  %subtmp = sub i64 %fld.load721, %1
  %call.res726 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %1, i64 %subtmp, i64 %2, i64 %3, ptr %"var.fp_val'.1")
  %a.len734 = load i64, ptr %a.new, align 8
  %a.cap735 = load i64, ptr %a.cap.gep, align 8
  %a.needs.grow = icmp eq i64 %a.len734, %a.cap735
  br i1 %a.needs.grow, label %a.grow, label %a.store

choice.exit715:                                   ; preds = %a.store, %str.eq.merge707
  %eq.lhs.len740 = load i64, ptr %"var.sw_val'.1", align 8
  %eq.lhs.len741 = and i64 %eq.lhs.len740, 281474976710655
  %str.tag742 = lshr i64 %eq.lhs.len740, 48
  %tag.immortal744 = icmp eq i64 %str.tag742, 0
  %active.gen745 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current746 = icmp eq i64 %str.tag742, %active.gen745
  %tag.fast.ok747 = or i1 %tag.immortal744, %tag.current746
  br i1 %tag.fast.ok747, label %str_ok743, label %tag.slow_check748

a.grow:                                           ; preds = %choice.then714
  call void @dva_array_grow(ptr %a.new)
  br label %a.store

a.store:                                          ; preds = %a.grow, %choice.then714
  %a.cur.data736 = load ptr, ptr %a.data.gep, align 8
  %a.cur.len737 = load i64, ptr %a.new, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data736, i64 %a.cur.len737
  %slot.p2i = ptrtoint ptr %call.res726 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len737, 1
  store i64 %a.next.len, ptr %a.new, align 8
  br label %choice.exit715

str_ok743:                                        ; preds = %tag.slow_check748, %choice.exit715
  %eq.len751 = icmp eq i64 %eq.lhs.len741, 0
  br i1 %eq.len751, label %str.eq.then752, label %str.eq.merge754

tag.slow_check748:                                ; preds = %choice.exit715
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag742)
  br label %str_ok743

str.eq.then752:                                   ; preds = %str_ok743
  %eq.lhs.data755 = getelementptr inbounds { i64, ptr }, ptr %"var.sw_val'.1", i32 0, i32 1
  %eq.lhs.data756 = load ptr, ptr %eq.lhs.data755, align 8
  %eq.memcmp758 = call i32 @memcmp(ptr %eq.lhs.data756, ptr @str.0, i64 0)
  %eq.cmp.zero759 = icmp eq i32 %eq.memcmp758, 0
  br label %str.eq.merge754

str.eq.merge754:                                  ; preds = %str_ok743, %str.eq.then752
  %str.eq.result760 = phi i1 [ %eq.cmp.zero759, %str.eq.then752 ], [ false, %str_ok743 ]
  %str.neq761 = xor i1 %str.eq.result760, true
  br i1 %str.neq761, label %choice.then762, label %a.after811

choice.then762:                                   ; preds = %str.eq.merge754
  %arena.cur765 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc766 = call ptr @dva_arena_alloc(ptr %arena.cur765, i64 16)
  store i64 29, ptr %enum.alloc766, align 8
  %pay.gep768 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc766, i32 0, i32 1
  store ptr null, ptr %pay.gep768, align 8
  %fld.gep771 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load772 = load i64, ptr %fld.gep771, align 8
  %subtmp774 = sub i64 %fld.load772, %1
  %call.res778 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc766, i64 %1, i64 %subtmp774, i64 %2, i64 %3, ptr %"var.sw_val'.1")
  %a.len795 = load i64, ptr %a.new, align 8
  %a.cap797 = load i64, ptr %a.cap.gep, align 8
  %a.needs.grow798 = icmp eq i64 %a.len795, %a.cap797
  br i1 %a.needs.grow798, label %a.grow792, label %a.store793

a.grow792:                                        ; preds = %choice.then762
  call void @dva_array_grow(ptr %a.new)
  br label %a.store793

a.store793:                                       ; preds = %a.grow792, %choice.then762
  %a.cur.data800 = load ptr, ptr %a.data.gep, align 8
  %a.cur.len802 = load i64, ptr %a.new, align 8
  %a.elem.gep803 = getelementptr i64, ptr %a.cur.data800, i64 %a.cur.len802
  %slot.p2i804 = ptrtoint ptr %call.res778 to i64
  store i64 %slot.p2i804, ptr %a.elem.gep803, align 8
  %a.next.len805 = add i64 %a.cur.len802, 1
  store i64 %a.next.len805, ptr %a.new, align 8
  br label %a.after811

a.after811:                                       ; preds = %str.eq.merge754, %a.store793
  %a.len.query820 = load i64, ptr %a.new, align 8
  switch i64 %a.len.query820, label %choice.next839 [
    i64 0, label %choice.case822
    i64 1, label %a.rd.ok
  ]

choice.exit821:                                   ; preds = %loop.exit.307, %a.rd.ok, %choice.case822
  %choice.res1222 = phi ptr [ %call.res837, %choice.case822 ], [ %pay.ptr, %a.rd.ok ], [ %call.res1221, %loop.exit.307 ]
  ret ptr %choice.res1222

choice.case822:                                   ; preds = %a.after811
  %arena.cur825 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc826 = call ptr @dva_arena_alloc(ptr %arena.cur825, i64 16)
  store i64 23, ptr %enum.alloc826, align 8
  %pay.gep828 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc826, i32 0, i32 1
  store ptr null, ptr %pay.gep828, align 8
  %fld.gep831 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load832 = load i64, ptr %fld.gep831, align 8
  %subtmp834 = sub i64 %fld.load832, %1
  %call.res837 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc826, i64 %1, i64 %subtmp834, i64 %2, i64 %3, ptr @str.82.struct)
  br label %choice.exit821

choice.next839:                                   ; preds = %a.after811
  %fld.gep894 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 8
  %fld.load895 = load ptr, ptr %fld.gep894, align 8
  %a.rd.lt917 = icmp slt i64 0, %a.len.query820
  br i1 %a.rd.lt917, label %a.rd.ok911, label %a.rd.err.oob913

a.rd.ok:                                          ; preds = %a.after811
  %a.rd.data855 = load ptr, ptr %a.data.gep, align 8
  %a.rd.elem = load i64, ptr %a.rd.data855, align 8
  %pay.ptr = inttoptr i64 %a.rd.elem to ptr
  br label %choice.exit821

a.rd.ok911:                                       ; preds = %choice.next839
  %a.rd.data920 = load ptr, ptr %a.data.gep, align 8
  %a.rd.elem922 = load i64, ptr %a.rd.data920, align 8
  br label %a.rd.done914

a.rd.err.oob913:                                  ; preds = %choice.next839
  %arena.cur934 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc935 = call ptr @dva_arena_alloc(ptr %arena.cur934, i64 56)
  store i64 4011, ptr %err.alloc935, align 8
  %err.msg.gep937 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep937, align 8
  %err.file.gep938 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep938, align 8
  %err.line.gep939 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 3
  store i64 1154, ptr %err.line.gep939, align 8
  %err.col.gep940 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 4
  store i64 23, ptr %err.col.gep940, align 8
  %err.ctx.gep941 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep941, align 8
  %err.ctx1.gep943 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep941, i32 0, i32 1
  store i64 %a.len.query820, ptr %err.ctx1.gep943, align 8
  %err.p2i944 = ptrtoint ptr %err.alloc935 to i64
  br label %a.rd.done914

a.rd.done914:                                     ; preds = %a.rd.err.oob913, %a.rd.ok911
  %a.rd.tag945 = phi i1 [ true, %a.rd.ok911 ], [ false, %a.rd.err.oob913 ]
  %a.rd.pay946 = phi i64 [ %a.rd.elem922, %a.rd.ok911 ], [ %err.p2i944, %a.rd.err.oob913 ]
  br i1 %a.rd.tag945, label %unwrap.pos.305, label %unwrap.abort.305

unwrap.pos.305:                                   ; preds = %a.rd.done914
  %a.null998 = icmp eq ptr %fld.load895, null
  br i1 %a.null998, label %a.create999, label %a.check1009

unwrap.abort.305:                                 ; preds = %a.rd.done914
  %4 = call i64 @write(i32 2, ptr @expect.reason.306, i64 21)
  %err.ptr951 = inttoptr i64 %a.rd.pay946 to ptr
  %err.code953 = load i64, ptr %err.ptr951, align 8
  %err.msg.gep954 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr951, i32 0, i32 1
  %err.msg.struct955 = load ptr, ptr %err.msg.gep954, align 8
  %err.file.gep956 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr951, i32 0, i32 2
  %err.file.struct957 = load ptr, ptr %err.file.gep956, align 8
  %err.line.gep958 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr951, i32 0, i32 3
  %err.line959 = load i64, ptr %err.line.gep958, align 8
  %err.col.gep960 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr951, i32 0, i32 4
  %err.col961 = load i64, ptr %err.col.gep960, align 8
  %err.msg.len963 = load i64, ptr %err.msg.struct955, align 8
  %err.msg.len964 = and i64 %err.msg.len963, 281474976710655
  %str.tag965 = lshr i64 %err.msg.len963, 48
  %tag.immortal967 = icmp eq i64 %str.tag965, 0
  %active.gen968 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current969 = icmp eq i64 %str.tag965, %active.gen968
  %tag.fast.ok970 = or i1 %tag.immortal967, %tag.current969
  br i1 %tag.fast.ok970, label %str_ok966, label %tag.slow_check971

str_ok966:                                        ; preds = %tag.slow_check971, %unwrap.abort.305
  %err.msg.len32972 = trunc i64 %err.msg.len964 to i32
  %err.msg.data973 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct955, i32 0, i32 1
  %err.msg.data974 = load ptr, ptr %err.msg.data973, align 8
  %err.file.len976 = load i64, ptr %err.file.struct957, align 8
  %err.file.len977 = and i64 %err.file.len976, 281474976710655
  %str.tag978 = lshr i64 %err.file.len976, 48
  %tag.immortal980 = icmp eq i64 %str.tag978, 0
  %active.gen981 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current982 = icmp eq i64 %str.tag978, %active.gen981
  %tag.fast.ok983 = or i1 %tag.immortal980, %tag.current982
  br i1 %tag.fast.ok983, label %str_ok979, label %tag.slow_check984

tag.slow_check971:                                ; preds = %unwrap.abort.305
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag965)
  br label %str_ok966

str_ok979:                                        ; preds = %tag.slow_check984, %str_ok966
  %err.file.len32985 = trunc i64 %err.file.len977 to i32
  %err.file.data986 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct957, i32 0, i32 1
  %err.file.data987 = load ptr, ptr %err.file.data986, align 8
  %err.thread.rec988 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread989 = icmp ne ptr %err.thread.rec988, null
  br i1 %err.is.thread989, label %err.thread990, label %err.normal991

tag.slow_check984:                                ; preds = %str_ok966
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag978)
  br label %str_ok979

err.thread990:                                    ; preds = %str_ok979
  %err.haserr.gep992 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec988, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep992, align 8
  %err.err.gep993 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec988, i32 0, i32 7
  store ptr %err.ptr951, ptr %err.err.gep993, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal991:                                    ; preds = %str_ok979
  %err.panic.printf994 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code953, i32 %err.msg.len32972, ptr %err.msg.data974, i32 %err.file.len32985, ptr %err.file.data987, i64 %err.line959, i64 %err.col961)
  call void @exit(i32 1)
  unreachable

a.create999:                                      ; preds = %unwrap.pos.305
  %arena.cur1001 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1002 = call ptr @dva_arena_alloc(ptr %arena.cur1001, i64 24)
  %arena.cur1003 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1004 = call ptr @dva_arena_alloc(ptr %arena.cur1003, i64 128)
  store i64 0, ptr %a.create1002, align 8
  %a.data.gep1006 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1002, i32 0, i32 1
  store ptr %a.buf1004, ptr %a.data.gep1006, align 8
  %a.cap.gep1007 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1002, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1007, align 8
  br label %a.check1009

a.check1009:                                      ; preds = %unwrap.pos.305, %a.create999
  %var.qu.0 = phi ptr [ %a.create1002, %a.create999 ], [ %fld.load895, %unwrap.pos.305 ]
  %a.len1013 = load i64, ptr %var.qu.0, align 8
  %a.cap1014 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.0, i32 0, i32 2
  %a.cap1015 = load i64, ptr %a.cap1014, align 8
  %a.needs.grow1016 = icmp eq i64 %a.len1013, %a.cap1015
  br i1 %a.needs.grow1016, label %a.grow1010, label %a.store1011

a.grow1010:                                       ; preds = %a.check1009
  call void @dva_array_grow(ptr %var.qu.0)
  br label %a.store1011

a.store1011:                                      ; preds = %a.grow1010, %a.check1009
  %a.cur.data1017 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.0, i32 0, i32 1
  %a.cur.data1018 = load ptr, ptr %a.cur.data1017, align 8
  %a.cur.len1020 = load i64, ptr %var.qu.0, align 8
  %a.elem.gep1021 = getelementptr i64, ptr %a.cur.data1018, i64 %a.cur.len1020
  store i64 %a.rd.pay946, ptr %a.elem.gep1021, align 8
  %a.next.len1023 = add i64 %a.cur.len1020, 1
  store i64 %a.next.len1023, ptr %var.qu.0, align 8
  %a.len.query1039 = load i64, ptr %a.new, align 8
  br label %loop.header.307

loop.header.307:                                  ; preds = %a.store1204, %a.store1011
  %var.toks.8 = phi ptr [ %a.new, %a.store1011 ], [ %var.toks.8, %a.store1204 ]
  %var.qu.1 = phi ptr [ %var.qu.0, %a.store1011 ], [ %var.qu.1, %a.store1204 ]
  %loop.idx.307.0 = phi i64 [ 1, %a.store1011 ], [ %loop.next1219, %a.store1204 ]
  %loop.cond1041 = icmp slt i64 %loop.idx.307.0, %a.len.query1039
  br i1 %loop.cond1041, label %loop.body.307, label %loop.exit.307

loop.body.307:                                    ; preds = %loop.header.307
  %arena.cur1045 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1046 = call ptr @dva_arena_alloc(ptr %arena.cur1045, i64 16)
  store i64 17, ptr %enum.alloc1046, align 8
  %pay.gep1048 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1046, i32 0, i32 1
  store ptr null, ptr %pay.gep1048, align 8
  %arena.cur1052 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1052, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc1046, ptr %rec.alloc, align 8
  %rec.fld1053 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %1, ptr %rec.fld1053, align 8
  %rec.fld1054 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld1054, align 8
  %rec.fld1055 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %2, ptr %rec.fld1055, align 8
  %rec.fld1056 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store i64 %3, ptr %rec.fld1056, align 8
  %rec.fld1057 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld1057, align 1
  %rec.fld1058 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store i1 true, ptr %rec.fld1058, align 1
  %rec.fld1059 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.83.struct, ptr %rec.fld1059, align 8
  %a.len1076 = load i64, ptr %var.qu.1, align 8
  %a.cap1077 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.1, i32 0, i32 2
  %a.cap1078 = load i64, ptr %a.cap1077, align 8
  %a.needs.grow1079 = icmp eq i64 %a.len1076, %a.cap1078
  br i1 %a.needs.grow1079, label %a.grow1073, label %a.store1074

loop.exit.307:                                    ; preds = %loop.header.307
  %call.res1221 = call ptr @"lexer::take_queued"(ptr %0, i64 0)
  br label %choice.exit821

a.grow1073:                                       ; preds = %loop.body.307
  call void @dva_array_grow(ptr %var.qu.1)
  br label %a.store1074

a.store1074:                                      ; preds = %a.grow1073, %loop.body.307
  %a.cur.data1080 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.1, i32 0, i32 1
  %a.cur.data1081 = load ptr, ptr %a.cur.data1080, align 8
  %a.cur.len1083 = load i64, ptr %var.qu.1, align 8
  %a.elem.gep1084 = getelementptr i64, ptr %a.cur.data1081, i64 %a.cur.len1083
  %slot.p2i1085 = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i1085, ptr %a.elem.gep1084, align 8
  %a.next.len1086 = add i64 %a.cur.len1083, 1
  store i64 %a.next.len1086, ptr %var.qu.1, align 8
  %a.rd.len1109 = load i64, ptr %var.toks.8, align 8
  %a.rd.ge0 = icmp sge i64 %loop.idx.307.0, 0
  %a.rd.lt1110 = icmp slt i64 %loop.idx.307.0, %a.rd.len1109
  %a.rd.bounds1111 = and i1 %a.rd.ge0, %a.rd.lt1110
  br i1 %a.rd.bounds1111, label %a.rd.ok1104, label %a.rd.err.oob1106

a.rd.ok1104:                                      ; preds = %a.store1074
  %a.rd.data1112 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.toks.8, i32 0, i32 1
  %a.rd.data1113 = load ptr, ptr %a.rd.data1112, align 8
  %a.rd.elem.gep1114 = getelementptr i64, ptr %a.rd.data1113, i64 %loop.idx.307.0
  %a.rd.elem1115 = load i64, ptr %a.rd.elem.gep1114, align 8
  br label %a.rd.done1107

a.rd.err.oob1106:                                 ; preds = %a.store1074
  %arena.cur1127 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1128 = call ptr @dva_arena_alloc(ptr %arena.cur1127, i64 56)
  store i64 4011, ptr %err.alloc1128, align 8
  %err.msg.gep1130 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1128, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1130, align 8
  %err.file.gep1131 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1128, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1131, align 8
  %err.line.gep1132 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1128, i32 0, i32 3
  store i64 1157, ptr %err.line.gep1132, align 8
  %err.col.gep1133 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1128, i32 0, i32 4
  store i64 26, ptr %err.col.gep1133, align 8
  %err.ctx.gep1134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1128, i32 0, i32 5
  store i64 %loop.idx.307.0, ptr %err.ctx.gep1134, align 8
  %err.ctx1.gep1136 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1134, i32 0, i32 1
  store i64 %a.rd.len1109, ptr %err.ctx1.gep1136, align 8
  %err.p2i1137 = ptrtoint ptr %err.alloc1128 to i64
  br label %a.rd.done1107

a.rd.done1107:                                    ; preds = %a.rd.err.oob1106, %a.rd.ok1104
  %a.rd.tag1138 = phi i1 [ true, %a.rd.ok1104 ], [ false, %a.rd.err.oob1106 ]
  %a.rd.pay1139 = phi i64 [ %a.rd.elem1115, %a.rd.ok1104 ], [ %err.p2i1137, %a.rd.err.oob1106 ]
  br i1 %a.rd.tag1138, label %unwrap.pos.308, label %unwrap.abort.308

unwrap.pos.308:                                   ; preds = %a.rd.done1107
  %a.len1206 = load i64, ptr %var.qu.1, align 8
  %a.cap1208 = load i64, ptr %a.cap1077, align 8
  %a.needs.grow1209 = icmp eq i64 %a.len1206, %a.cap1208
  br i1 %a.needs.grow1209, label %a.grow1203, label %a.store1204

unwrap.abort.308:                                 ; preds = %a.rd.done1107
  %5 = call i64 @write(i32 2, ptr @expect.reason.309, i64 21)
  %err.ptr1144 = inttoptr i64 %a.rd.pay1139 to ptr
  %err.code1146 = load i64, ptr %err.ptr1144, align 8
  %err.msg.gep1147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1144, i32 0, i32 1
  %err.msg.struct1148 = load ptr, ptr %err.msg.gep1147, align 8
  %err.file.gep1149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1144, i32 0, i32 2
  %err.file.struct1150 = load ptr, ptr %err.file.gep1149, align 8
  %err.line.gep1151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1144, i32 0, i32 3
  %err.line1152 = load i64, ptr %err.line.gep1151, align 8
  %err.col.gep1153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1144, i32 0, i32 4
  %err.col1154 = load i64, ptr %err.col.gep1153, align 8
  %err.msg.len1156 = load i64, ptr %err.msg.struct1148, align 8
  %err.msg.len1157 = and i64 %err.msg.len1156, 281474976710655
  %str.tag1158 = lshr i64 %err.msg.len1156, 48
  %tag.immortal1160 = icmp eq i64 %str.tag1158, 0
  %active.gen1161 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1162 = icmp eq i64 %str.tag1158, %active.gen1161
  %tag.fast.ok1163 = or i1 %tag.immortal1160, %tag.current1162
  br i1 %tag.fast.ok1163, label %str_ok1159, label %tag.slow_check1164

str_ok1159:                                       ; preds = %tag.slow_check1164, %unwrap.abort.308
  %err.msg.len321165 = trunc i64 %err.msg.len1157 to i32
  %err.msg.data1166 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1148, i32 0, i32 1
  %err.msg.data1167 = load ptr, ptr %err.msg.data1166, align 8
  %err.file.len1169 = load i64, ptr %err.file.struct1150, align 8
  %err.file.len1170 = and i64 %err.file.len1169, 281474976710655
  %str.tag1171 = lshr i64 %err.file.len1169, 48
  %tag.immortal1173 = icmp eq i64 %str.tag1171, 0
  %active.gen1174 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1175 = icmp eq i64 %str.tag1171, %active.gen1174
  %tag.fast.ok1176 = or i1 %tag.immortal1173, %tag.current1175
  br i1 %tag.fast.ok1176, label %str_ok1172, label %tag.slow_check1177

tag.slow_check1164:                               ; preds = %unwrap.abort.308
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1158)
  br label %str_ok1159

str_ok1172:                                       ; preds = %tag.slow_check1177, %str_ok1159
  %err.file.len321178 = trunc i64 %err.file.len1170 to i32
  %err.file.data1179 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1150, i32 0, i32 1
  %err.file.data1180 = load ptr, ptr %err.file.data1179, align 8
  %err.thread.rec1181 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1182 = icmp ne ptr %err.thread.rec1181, null
  br i1 %err.is.thread1182, label %err.thread1183, label %err.normal1184

tag.slow_check1177:                               ; preds = %str_ok1159
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1171)
  br label %str_ok1172

err.thread1183:                                   ; preds = %str_ok1172
  %err.haserr.gep1185 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1181, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1185, align 8
  %err.err.gep1186 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1181, i32 0, i32 7
  store ptr %err.ptr1144, ptr %err.err.gep1186, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1184:                                   ; preds = %str_ok1172
  %err.panic.printf1187 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1146, i32 %err.msg.len321165, ptr %err.msg.data1167, i32 %err.file.len321178, ptr %err.file.data1180, i64 %err.line1152, i64 %err.col1154)
  call void @exit(i32 1)
  unreachable

a.grow1203:                                       ; preds = %unwrap.pos.308
  call void @dva_array_grow(ptr %var.qu.1)
  br label %a.store1204

a.store1204:                                      ; preds = %a.grow1203, %unwrap.pos.308
  %a.cur.data1211 = load ptr, ptr %a.cur.data1080, align 8
  %a.cur.len1213 = load i64, ptr %var.qu.1, align 8
  %a.elem.gep1214 = getelementptr i64, ptr %a.cur.data1211, i64 %a.cur.len1213
  store i64 %a.rd.pay1139, ptr %a.elem.gep1214, align 8
  %a.next.len1216 = add i64 %a.cur.len1213, 1
  store i64 %a.next.len1216, ptr %var.qu.1, align 8
  %loop.next1219 = add i64 %loop.idx.307.0, 1
  br label %loop.header.307
}

define internal i1 @"$anon_fn.166"(i32 %0) #3 {
entry:
  %call.res = call i1 @"lexer::is_id_char"(i32 %0)
  ret i1 %call.res
}

define internal i1 @"$anon_fn.167"(i32 %0) #3 {
entry:
  %call.res = call i1 @"lexer::is_id_char"(i32 %0)
  ret i1 %call.res
}

define { i64, ptr } @"lexer::pragma_fp_fail"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %cat.seg3 = load i64, ptr %0, align 8
  %cat.seg4 = and i64 %cat.seg3, 281474976710655
  %str.tag = lshr i64 %cat.seg3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg5 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %cat.seg6 = load ptr, ptr %cat.seg5, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 31, i64 %cat.seg4)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 31)
  %sum10 = extractvalue { i64, i1 } %cat.sum.len9, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum10, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.71, i64 31, i1 false)
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 %cat.seg6, i64 %cat.seg4, i1 false)
  %cat.off = add nuw nsw i64 31, %cat.seg4
  %cat.dst21 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst21, ptr align 1 @str.72, i64 31, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum10
  store i8 0, ptr %concat.nul, align 1
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum10, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res = call i64 @"lexer::fail"(i64 1013, i64 %1, i64 %2, ptr %concat.str)
  ret { i64, ptr } { i64 0, ptr @str.0 }

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok
}

define { i64, ptr } @"lexer::pragma_swizzle_fail"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %cat.seg3 = load i64, ptr %0, align 8
  %cat.seg4 = and i64 %cat.seg3, 281474976710655
  %str.tag = lshr i64 %cat.seg3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg5 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %cat.seg6 = load ptr, ptr %cat.seg5, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 %cat.seg4)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 48)
  %sum10 = extractvalue { i64, i1 } %cat.sum.len9, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum10, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.76, i64 32, i1 false)
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 %cat.seg6, i64 %cat.seg4, i1 false)
  %cat.off = add nuw nsw i64 32, %cat.seg4
  %cat.dst21 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst21, ptr align 1 @str.77, i64 48, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum10
  store i8 0, ptr %concat.nul, align 1
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum10, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res = call i64 @"lexer::fail"(i64 1013, i64 %1, i64 %2, ptr %concat.str)
  ret { i64, ptr } { i64 4, ptr @str.70 }

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok
}

define ptr @"lexer::take_queued"(ptr %0, i64 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 9
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %entry
  %a.rd.len4 = load i64, ptr %fld.load, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 4011, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 1282, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 26, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  store i64 4011, ptr %err.alloc7, align 8
  %err.msg.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep9, align 8
  %err.file.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep10, align 8
  %err.line.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 3
  store i64 1282, ptr %err.line.gep11, align 8
  %err.col.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 4
  store i64 26, ptr %err.col.gep12, align 8
  %err.ctx.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 5
  store i64 %fld.load3, ptr %err.ctx.gep13, align 8
  %err.ctx1.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep13, i32 0, i32 1
  store i64 %a.rd.len4, ptr %err.ctx1.gep15, align 8
  %err.p2i16 = ptrtoint ptr %err.alloc7 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i16, %a.rd.err.oob ]
  br i1 %a.rd.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  store i64 1, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load25 = load i64, ptr %fld.gep24, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %fld.gep30 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc, align 8
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
  %fld.load43 = load i64, ptr %fld.gep2, align 8
  %addtmp = add i64 %fld.load43, 1
  store i64 %addtmp, ptr %fld.gep2, align 8
  %fld.load50 = load ptr, ptr %fld.gep, align 8
  %a.len.query51 = load i64, ptr %fld.load50, align 8
  %cmptmp = icmp eq i64 %addtmp, %a.len.query51
  br i1 %cmptmp, label %choice.then52, label %choice.exit53

choice.then52:                                    ; preds = %choice.exit
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 24)
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %fld.gep, align 8
  store i64 0, ptr %fld.gep2, align 8
  br label %choice.exit53

choice.exit53:                                    ; preds = %choice.then52, %choice.exit
  ret ptr %choice.res
}

define ptr @"lexer::scan_directive"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4) #3 {
entry:
  %eq.lhs.len1 = load i64, ptr %1, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %str_ok432, %str_ok394, %str_ok356, %choice.case306, %choice.case284, %str_ok274, %str_ok236, %str_ok198, %str_ok153, %str_ok85, %str_ok47, %str_ok11
  %choice.res = phi ptr [ %call.res, %str_ok11 ], [ %call.res56, %str_ok47 ], [ %call.res94, %str_ok85 ], [ %call.res169, %str_ok153 ], [ %call.res207, %str_ok198 ], [ %call.res245, %str_ok236 ], [ %call.res283, %str_ok274 ], [ %call.res305, %choice.case284 ], [ %call.res327, %choice.case306 ], [ %call.res365, %str_ok356 ], [ %call.res403, %str_ok394 ], [ %call.res463, %str_ok432 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %str.eq.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 19, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %str.len.query8 = load i64, ptr %1, align 8
  %str.len.query9 = and i64 %str.len.query8, 281474976710655
  %str.tag10 = lshr i64 %str.len.query8, 48
  %tag.immortal12 = icmp eq i64 %str.tag10, 0
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current14 = icmp eq i64 %str.tag10, %active.gen13
  %tag.fast.ok15 = or i1 %tag.immortal12, %tag.current14
  br i1 %tag.fast.ok15, label %str_ok11, label %tag.slow_check16

choice.next:                                      ; preds = %str_ok, %str.eq.then
  %eq.lhs.len22 = load i64, ptr %1, align 8
  %eq.lhs.len23 = and i64 %eq.lhs.len22, 281474976710655
  %eq.len26 = icmp eq i64 %eq.lhs.len23, 4
  br i1 %eq.len26, label %str.eq.then27, label %choice.next20

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.len = icmp eq i64 %eq.lhs.len2, 7
  br i1 %eq.len, label %str.eq.then, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr @str.85, i64 7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.case, label %choice.next

str_ok11:                                         ; preds = %tag.slow_check16, %choice.case
  %addtmp = add nuw nsw i64 %str.len.query9, 1
  %call.res = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %2, i64 %addtmp, i64 %3, i64 %4, ptr @str.86.struct)
  br label %choice.exit

tag.slow_check16:                                 ; preds = %choice.case
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag10)
  br label %str_ok11

choice.case19:                                    ; preds = %str.eq.then27
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  store i64 20, ptr %enum.alloc38, align 8
  %pay.gep40 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc38, i32 0, i32 1
  store ptr null, ptr %pay.gep40, align 8
  %str.len.query44 = load i64, ptr %1, align 8
  %str.len.query45 = and i64 %str.len.query44, 281474976710655
  %str.tag46 = lshr i64 %str.len.query44, 48
  %tag.immortal48 = icmp eq i64 %str.tag46, 0
  %active.gen49 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current50 = icmp eq i64 %str.tag46, %active.gen49
  %tag.fast.ok51 = or i1 %tag.immortal48, %tag.current50
  br i1 %tag.fast.ok51, label %str_ok47, label %tag.slow_check52

choice.next20:                                    ; preds = %choice.next, %str.eq.then27
  %eq.lhs.len60 = load i64, ptr %1, align 8
  %eq.lhs.len61 = and i64 %eq.lhs.len60, 281474976710655
  %eq.len64 = icmp eq i64 %eq.lhs.len61, 7
  br i1 %eq.len64, label %str.eq.then65, label %choice.next58

str.eq.then27:                                    ; preds = %choice.next
  %eq.lhs.data30 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data31 = load ptr, ptr %eq.lhs.data30, align 8
  %eq.memcmp33 = call i32 @memcmp(ptr %eq.lhs.data31, ptr @str.87, i64 4)
  %eq.cmp.zero34 = icmp eq i32 %eq.memcmp33, 0
  br i1 %eq.cmp.zero34, label %choice.case19, label %choice.next20

str_ok47:                                         ; preds = %tag.slow_check52, %choice.case19
  %addtmp53 = add nuw nsw i64 %str.len.query45, 1
  %call.res56 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc38, i64 %2, i64 %addtmp53, i64 %3, i64 %4, ptr @str.88.struct)
  br label %choice.exit

tag.slow_check52:                                 ; preds = %choice.case19
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag46)
  br label %str_ok47

choice.case57:                                    ; preds = %str.eq.then65
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 16)
  store i64 21, ptr %enum.alloc76, align 8
  %pay.gep78 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc76, i32 0, i32 1
  store ptr null, ptr %pay.gep78, align 8
  %str.len.query82 = load i64, ptr %1, align 8
  %str.len.query83 = and i64 %str.len.query82, 281474976710655
  %str.tag84 = lshr i64 %str.len.query82, 48
  %tag.immortal86 = icmp eq i64 %str.tag84, 0
  %active.gen87 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current88 = icmp eq i64 %str.tag84, %active.gen87
  %tag.fast.ok89 = or i1 %tag.immortal86, %tag.current88
  br i1 %tag.fast.ok89, label %str_ok85, label %tag.slow_check90

choice.next58:                                    ; preds = %choice.next20, %str.eq.then65
  %eq.lhs.len98 = load i64, ptr %1, align 8
  %eq.lhs.len99 = and i64 %eq.lhs.len98, 281474976710655
  %eq.len102 = icmp eq i64 %eq.lhs.len99, 6
  br i1 %eq.len102, label %str.eq.then103, label %str.eq.merge105

str.eq.then65:                                    ; preds = %choice.next20
  %eq.lhs.data68 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data69 = load ptr, ptr %eq.lhs.data68, align 8
  %eq.memcmp71 = call i32 @memcmp(ptr %eq.lhs.data69, ptr @str.89, i64 7)
  %eq.cmp.zero72 = icmp eq i32 %eq.memcmp71, 0
  br i1 %eq.cmp.zero72, label %choice.case57, label %choice.next58

str_ok85:                                         ; preds = %tag.slow_check90, %choice.case57
  %addtmp91 = add nuw nsw i64 %str.len.query83, 1
  %call.res94 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc76, i64 %2, i64 %addtmp91, i64 %3, i64 %4, ptr @str.90.struct)
  br label %choice.exit

tag.slow_check90:                                 ; preds = %choice.case57
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag84)
  br label %str_ok85

choice.case95:                                    ; preds = %str.eq.merge120
  %arena.cur128 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 16)
  store i64 27, ptr %enum.alloc129, align 8
  %pay.gep131 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc129, i32 0, i32 1
  store ptr null, ptr %pay.gep131, align 8
  %str.len.query135 = load i64, ptr %1, align 8
  %str.len.query136 = and i64 %str.len.query135, 281474976710655
  %str.tag137 = lshr i64 %str.len.query135, 48
  %tag.immortal139 = icmp eq i64 %str.tag137, 0
  %active.gen140 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current141 = icmp eq i64 %str.tag137, %active.gen140
  %tag.fast.ok142 = or i1 %tag.immortal139, %tag.current141
  br i1 %tag.fast.ok142, label %str_ok138, label %tag.slow_check143

choice.next96:                                    ; preds = %str.eq.merge120
  %eq.lhs.len173 = load i64, ptr %1, align 8
  %eq.lhs.len174 = and i64 %eq.lhs.len173, 281474976710655
  %eq.len177 = icmp eq i64 %eq.lhs.len174, 6
  br i1 %eq.len177, label %str.eq.then178, label %choice.next171

str.eq.then103:                                   ; preds = %choice.next58
  %eq.lhs.data106 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data107 = load ptr, ptr %eq.lhs.data106, align 8
  %eq.memcmp109 = call i32 @memcmp(ptr %eq.lhs.data107, ptr @str.91, i64 6)
  %eq.cmp.zero110 = icmp eq i32 %eq.memcmp109, 0
  br label %str.eq.merge105

str.eq.merge105:                                  ; preds = %choice.next58, %str.eq.then103
  %str.eq.result111 = phi i1 [ %eq.cmp.zero110, %str.eq.then103 ], [ false, %choice.next58 ]
  %eq.lhs.len113 = load i64, ptr %1, align 8
  %eq.lhs.len114 = and i64 %eq.lhs.len113, 281474976710655
  %eq.len117 = icmp eq i64 %eq.lhs.len114, 3
  br i1 %eq.len117, label %str.eq.then118, label %str.eq.merge120

str.eq.then118:                                   ; preds = %str.eq.merge105
  %eq.lhs.data121 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data122 = load ptr, ptr %eq.lhs.data121, align 8
  %eq.memcmp124 = call i32 @memcmp(ptr %eq.lhs.data122, ptr @str.92, i64 3)
  %eq.cmp.zero125 = icmp eq i32 %eq.memcmp124, 0
  br label %str.eq.merge120

str.eq.merge120:                                  ; preds = %str.eq.merge105, %str.eq.then118
  %str.eq.result126 = phi i1 [ %eq.cmp.zero125, %str.eq.then118 ], [ false, %str.eq.merge105 ]
  %case.or = or i1 %str.eq.result111, %str.eq.result126
  br i1 %case.or, label %choice.case95, label %choice.next96

str_ok138:                                        ; preds = %tag.slow_check143, %choice.case95
  %addtmp144 = add nuw nsw i64 %str.len.query136, 1
  %concat.rhs150 = load i64, ptr %1, align 8
  %concat.rhs151 = and i64 %concat.rhs150, 281474976710655
  %str.tag152 = lshr i64 %concat.rhs150, 48
  %tag.immortal154 = icmp eq i64 %str.tag152, 0
  %active.gen155 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current156 = icmp eq i64 %str.tag152, %active.gen155
  %tag.fast.ok157 = or i1 %tag.immortal154, %tag.current156
  br i1 %tag.fast.ok157, label %str_ok153, label %tag.slow_check158

tag.slow_check143:                                ; preds = %choice.case95
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag137)
  br label %str_ok138

str_ok153:                                        ; preds = %tag.slow_check158, %str_ok138
  %concat.rhs159 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %concat.rhs160 = load ptr, ptr %concat.rhs159, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %concat.rhs151)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum162 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur167 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 %sum162)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.93, i64 1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs160, i64 %concat.rhs151, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur168 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res169 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc129, i64 %2, i64 %addtmp144, i64 %3, i64 %4, ptr %concat.str)
  br label %choice.exit

tag.slow_check158:                                ; preds = %str_ok138
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag152)
  br label %str_ok153

choice.case170:                                   ; preds = %str.eq.then178
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 16)
  store i64 22, ptr %enum.alloc189, align 8
  %pay.gep191 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc189, i32 0, i32 1
  store ptr null, ptr %pay.gep191, align 8
  %str.len.query195 = load i64, ptr %1, align 8
  %str.len.query196 = and i64 %str.len.query195, 281474976710655
  %str.tag197 = lshr i64 %str.len.query195, 48
  %tag.immortal199 = icmp eq i64 %str.tag197, 0
  %active.gen200 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current201 = icmp eq i64 %str.tag197, %active.gen200
  %tag.fast.ok202 = or i1 %tag.immortal199, %tag.current201
  br i1 %tag.fast.ok202, label %str_ok198, label %tag.slow_check203

choice.next171:                                   ; preds = %choice.next96, %str.eq.then178
  %eq.lhs.len211 = load i64, ptr %1, align 8
  %eq.lhs.len212 = and i64 %eq.lhs.len211, 281474976710655
  %eq.len215 = icmp eq i64 %eq.lhs.len212, 5
  br i1 %eq.len215, label %str.eq.then216, label %choice.next209

str.eq.then178:                                   ; preds = %choice.next96
  %eq.lhs.data181 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data182 = load ptr, ptr %eq.lhs.data181, align 8
  %eq.memcmp184 = call i32 @memcmp(ptr %eq.lhs.data182, ptr @str.94, i64 6)
  %eq.cmp.zero185 = icmp eq i32 %eq.memcmp184, 0
  br i1 %eq.cmp.zero185, label %choice.case170, label %choice.next171

str_ok198:                                        ; preds = %tag.slow_check203, %choice.case170
  %addtmp204 = add nuw nsw i64 %str.len.query196, 1
  %call.res207 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc189, i64 %2, i64 %addtmp204, i64 %3, i64 %4, ptr @str.95.struct)
  br label %choice.exit

tag.slow_check203:                                ; preds = %choice.case170
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag197)
  br label %str_ok198

choice.case208:                                   ; preds = %str.eq.then216
  %arena.cur226 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 16)
  store i64 24, ptr %enum.alloc227, align 8
  %pay.gep229 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc227, i32 0, i32 1
  store ptr null, ptr %pay.gep229, align 8
  %str.len.query233 = load i64, ptr %1, align 8
  %str.len.query234 = and i64 %str.len.query233, 281474976710655
  %str.tag235 = lshr i64 %str.len.query233, 48
  %tag.immortal237 = icmp eq i64 %str.tag235, 0
  %active.gen238 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current239 = icmp eq i64 %str.tag235, %active.gen238
  %tag.fast.ok240 = or i1 %tag.immortal237, %tag.current239
  br i1 %tag.fast.ok240, label %str_ok236, label %tag.slow_check241

choice.next209:                                   ; preds = %choice.next171, %str.eq.then216
  %eq.lhs.len249 = load i64, ptr %1, align 8
  %eq.lhs.len250 = and i64 %eq.lhs.len249, 281474976710655
  %eq.len253 = icmp eq i64 %eq.lhs.len250, 4
  br i1 %eq.len253, label %str.eq.then254, label %choice.next247

str.eq.then216:                                   ; preds = %choice.next171
  %eq.lhs.data219 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data220 = load ptr, ptr %eq.lhs.data219, align 8
  %eq.memcmp222 = call i32 @memcmp(ptr %eq.lhs.data220, ptr @str.96, i64 5)
  %eq.cmp.zero223 = icmp eq i32 %eq.memcmp222, 0
  br i1 %eq.cmp.zero223, label %choice.case208, label %choice.next209

str_ok236:                                        ; preds = %tag.slow_check241, %choice.case208
  %addtmp242 = add nuw nsw i64 %str.len.query234, 1
  %call.res245 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc227, i64 %2, i64 %addtmp242, i64 %3, i64 %4, ptr @str.97.struct)
  br label %choice.exit

tag.slow_check241:                                ; preds = %choice.case208
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag235)
  br label %str_ok236

choice.case246:                                   ; preds = %str.eq.then254
  %arena.cur264 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 16)
  store i64 25, ptr %enum.alloc265, align 8
  %pay.gep267 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc265, i32 0, i32 1
  store ptr null, ptr %pay.gep267, align 8
  %str.len.query271 = load i64, ptr %1, align 8
  %str.len.query272 = and i64 %str.len.query271, 281474976710655
  %str.tag273 = lshr i64 %str.len.query271, 48
  %tag.immortal275 = icmp eq i64 %str.tag273, 0
  %active.gen276 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current277 = icmp eq i64 %str.tag273, %active.gen276
  %tag.fast.ok278 = or i1 %tag.immortal275, %tag.current277
  br i1 %tag.fast.ok278, label %str_ok274, label %tag.slow_check279

choice.next247:                                   ; preds = %choice.next209, %str.eq.then254
  %eq.lhs.len287 = load i64, ptr %1, align 8
  %eq.lhs.len288 = and i64 %eq.lhs.len287, 281474976710655
  %eq.len291 = icmp eq i64 %eq.lhs.len288, 6
  br i1 %eq.len291, label %str.eq.then292, label %choice.next285

str.eq.then254:                                   ; preds = %choice.next209
  %eq.lhs.data257 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data258 = load ptr, ptr %eq.lhs.data257, align 8
  %eq.memcmp260 = call i32 @memcmp(ptr %eq.lhs.data258, ptr @str.98, i64 4)
  %eq.cmp.zero261 = icmp eq i32 %eq.memcmp260, 0
  br i1 %eq.cmp.zero261, label %choice.case246, label %choice.next247

str_ok274:                                        ; preds = %tag.slow_check279, %choice.case246
  %addtmp280 = add nuw nsw i64 %str.len.query272, 1
  %call.res283 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc265, i64 %2, i64 %addtmp280, i64 %3, i64 %4, ptr @str.99.struct)
  br label %choice.exit

tag.slow_check279:                                ; preds = %choice.case246
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag273)
  br label %str_ok274

choice.case284:                                   ; preds = %str.eq.then292
  %call.res305 = call ptr @"lexer::scan_pragma"(ptr %0, i64 %2, i64 %3, i64 %4)
  br label %choice.exit

choice.next285:                                   ; preds = %choice.next247, %str.eq.then292
  %eq.lhs.len309 = load i64, ptr %1, align 8
  %eq.lhs.len310 = and i64 %eq.lhs.len309, 281474976710655
  %eq.len313 = icmp eq i64 %eq.lhs.len310, 3
  br i1 %eq.len313, label %str.eq.then314, label %choice.next307

str.eq.then292:                                   ; preds = %choice.next247
  %eq.lhs.data295 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data296 = load ptr, ptr %eq.lhs.data295, align 8
  %eq.memcmp298 = call i32 @memcmp(ptr %eq.lhs.data296, ptr @str.100, i64 6)
  %eq.cmp.zero299 = icmp eq i32 %eq.memcmp298, 0
  br i1 %eq.cmp.zero299, label %choice.case284, label %choice.next285

choice.case306:                                   ; preds = %str.eq.then314
  %call.res327 = call ptr @"lexer::scan_use_directive"(ptr %0, i64 %2, i64 %3, i64 %4)
  br label %choice.exit

choice.next307:                                   ; preds = %choice.next285, %str.eq.then314
  %eq.lhs.len331 = load i64, ptr %1, align 8
  %eq.lhs.len332 = and i64 %eq.lhs.len331, 281474976710655
  %eq.len335 = icmp eq i64 %eq.lhs.len332, 5
  br i1 %eq.len335, label %str.eq.then336, label %choice.next329

str.eq.then314:                                   ; preds = %choice.next285
  %eq.lhs.data317 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data318 = load ptr, ptr %eq.lhs.data317, align 8
  %eq.memcmp320 = call i32 @memcmp(ptr %eq.lhs.data318, ptr @str.101, i64 3)
  %eq.cmp.zero321 = icmp eq i32 %eq.memcmp320, 0
  br i1 %eq.cmp.zero321, label %choice.case306, label %choice.next307

choice.case328:                                   ; preds = %str.eq.then336
  %arena.cur346 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc347 = call ptr @dva_arena_alloc(ptr %arena.cur346, i64 16)
  store i64 32, ptr %enum.alloc347, align 8
  %pay.gep349 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc347, i32 0, i32 1
  store ptr null, ptr %pay.gep349, align 8
  %str.len.query353 = load i64, ptr %1, align 8
  %str.len.query354 = and i64 %str.len.query353, 281474976710655
  %str.tag355 = lshr i64 %str.len.query353, 48
  %tag.immortal357 = icmp eq i64 %str.tag355, 0
  %active.gen358 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current359 = icmp eq i64 %str.tag355, %active.gen358
  %tag.fast.ok360 = or i1 %tag.immortal357, %tag.current359
  br i1 %tag.fast.ok360, label %str_ok356, label %tag.slow_check361

choice.next329:                                   ; preds = %choice.next307, %str.eq.then336
  %eq.lhs.len369 = load i64, ptr %1, align 8
  %eq.lhs.len370 = and i64 %eq.lhs.len369, 281474976710655
  %eq.len373 = icmp eq i64 %eq.lhs.len370, 5
  br i1 %eq.len373, label %str.eq.then374, label %choice.next367

str.eq.then336:                                   ; preds = %choice.next307
  %eq.lhs.data339 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data340 = load ptr, ptr %eq.lhs.data339, align 8
  %eq.memcmp342 = call i32 @memcmp(ptr %eq.lhs.data340, ptr @str.102, i64 5)
  %eq.cmp.zero343 = icmp eq i32 %eq.memcmp342, 0
  br i1 %eq.cmp.zero343, label %choice.case328, label %choice.next329

str_ok356:                                        ; preds = %tag.slow_check361, %choice.case328
  %addtmp362 = add nuw nsw i64 %str.len.query354, 1
  %call.res365 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc347, i64 %2, i64 %addtmp362, i64 %3, i64 %4, ptr @str.103.struct)
  br label %choice.exit

tag.slow_check361:                                ; preds = %choice.case328
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag355)
  br label %str_ok356

choice.case366:                                   ; preds = %str.eq.then374
  %arena.cur384 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc385 = call ptr @dva_arena_alloc(ptr %arena.cur384, i64 16)
  store i64 33, ptr %enum.alloc385, align 8
  %pay.gep387 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc385, i32 0, i32 1
  store ptr null, ptr %pay.gep387, align 8
  %str.len.query391 = load i64, ptr %1, align 8
  %str.len.query392 = and i64 %str.len.query391, 281474976710655
  %str.tag393 = lshr i64 %str.len.query391, 48
  %tag.immortal395 = icmp eq i64 %str.tag393, 0
  %active.gen396 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current397 = icmp eq i64 %str.tag393, %active.gen396
  %tag.fast.ok398 = or i1 %tag.immortal395, %tag.current397
  br i1 %tag.fast.ok398, label %str_ok394, label %tag.slow_check399

choice.next367:                                   ; preds = %choice.next329, %str.eq.then374
  %arena.cur405 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc406 = call ptr @dva_arena_alloc(ptr %arena.cur405, i64 16)
  store i64 2, ptr %enum.alloc406, align 8
  %pay.gep408 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc406, i32 0, i32 1
  store ptr null, ptr %pay.gep408, align 8
  %str.len.query412 = load i64, ptr %1, align 8
  %str.len.query413 = and i64 %str.len.query412, 281474976710655
  %str.tag414 = lshr i64 %str.len.query412, 48
  %tag.immortal416 = icmp eq i64 %str.tag414, 0
  %active.gen417 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current418 = icmp eq i64 %str.tag414, %active.gen417
  %tag.fast.ok419 = or i1 %tag.immortal416, %tag.current418
  br i1 %tag.fast.ok419, label %str_ok415, label %tag.slow_check420

str.eq.then374:                                   ; preds = %choice.next329
  %eq.lhs.data377 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.lhs.data378 = load ptr, ptr %eq.lhs.data377, align 8
  %eq.memcmp380 = call i32 @memcmp(ptr %eq.lhs.data378, ptr @str.104, i64 5)
  %eq.cmp.zero381 = icmp eq i32 %eq.memcmp380, 0
  br i1 %eq.cmp.zero381, label %choice.case366, label %choice.next367

str_ok394:                                        ; preds = %tag.slow_check399, %choice.case366
  %addtmp400 = add nuw nsw i64 %str.len.query392, 1
  %call.res403 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc385, i64 %2, i64 %addtmp400, i64 %3, i64 %4, ptr @str.105.struct)
  br label %choice.exit

tag.slow_check399:                                ; preds = %choice.case366
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag393)
  br label %str_ok394

str_ok415:                                        ; preds = %tag.slow_check420, %choice.next367
  %addtmp421 = add nuw nsw i64 %str.len.query413, 1
  %concat.rhs429 = load i64, ptr %1, align 8
  %concat.rhs430 = and i64 %concat.rhs429, 281474976710655
  %str.tag431 = lshr i64 %concat.rhs429, 48
  %tag.immortal433 = icmp eq i64 %str.tag431, 0
  %active.gen434 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current435 = icmp eq i64 %str.tag431, %active.gen434
  %tag.fast.ok436 = or i1 %tag.immortal433, %tag.current435
  br i1 %tag.fast.ok436, label %str_ok432, label %tag.slow_check437

tag.slow_check420:                                ; preds = %choice.next367
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag414)
  br label %str_ok415

str_ok432:                                        ; preds = %tag.slow_check437, %str_ok415
  %concat.rhs438 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %concat.rhs439 = load ptr, ptr %concat.rhs438, align 8
  %concat.sum.len440 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %concat.rhs430)
  %sum441 = extractvalue { i64, i1 } %concat.sum.len440, 0
  %concat.tot.len446 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum441, i64 1)
  %sum447 = extractvalue { i64, i1 } %concat.tot.len446, 0
  %arena.cur452 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf453 = call ptr @dva_arena_alloc(ptr %arena.cur452, i64 %sum447)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf453, ptr align 1 @str.93, i64 1, i1 false)
  %concat.mid454 = getelementptr i8, ptr %concat.buf453, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid454, ptr align 1 %concat.rhs439, i64 %concat.rhs430, i1 false)
  %concat.nul455 = getelementptr i8, ptr %concat.buf453, i64 %sum441
  store i8 0, ptr %concat.nul455, align 1
  %arena.cur456 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str457 = call ptr @dva_arena_alloc(ptr %arena.cur456, i64 16)
  %str.tag.gen459 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift460 = shl i64 %str.tag.gen459, 48
  %str.tagged.len461 = or i64 %sum441, %str.tag.shift460
  store i64 %str.tagged.len461, ptr %concat.str457, align 8
  %str.build.data.gep462 = getelementptr inbounds { i64, ptr }, ptr %concat.str457, i32 0, i32 1
  store ptr %concat.buf453, ptr %str.build.data.gep462, align 8
  %call.res463 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc406, i64 %2, i64 %addtmp421, i64 %3, i64 %4, ptr %concat.str457)
  br label %choice.exit

tag.slow_check437:                                ; preds = %str_ok415
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag431)
  br label %str_ok432
}

define ptr @"lexer::scan_hash_name"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %call.res = call { i64, ptr } @"lexer::scan_hash_word"(ptr %0, i64 0)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load, 1
  %str.len.query5 = load i64, ptr %ret.ub.alloc, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag = lshr i64 %str.len.query5, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %subtmp7 = sub i64 %subtmp, %str.len.query6
  %call.res10 = call ptr @"lexer::scan_directive"(ptr %0, ptr %ret.ub.alloc, i64 %subtmp7, i64 %1, i64 %2)
  ret ptr %call.res10

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok
}

define ptr @"lexer::scan_hash"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %call.res = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %call.res1 = call i1 @"unicode::is_alpha"(i32 %call.res)
  br i1 %call.res1, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %call.res5 = call ptr @"lexer::scan_hash_name"(ptr %0, i64 %1, i64 %2)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res9 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res10 = call i32 @"lexer::adv"(ptr %0, i32 %call.res9)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %call.res15 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %fld.load, i64 1, i64 %1, i64 %2, ptr @str.93.struct)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res5, %choice.then ], [ %call.res15, %choice.else ]
  ret ptr %choice.res
}

declare i1 @"unicode::is_alpha"(i32) #3

define i1 @"lexer::stack_top_has_inline"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %subtmp = sub i64 %fld.load3, 1
  %a.rd.nonnull = icmp ne ptr %fld.load, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %entry
  %a.rd.len4 = load i64, ptr %fld.load, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 4011, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 1226, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 22, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  store i64 4011, ptr %err.alloc7, align 8
  %err.msg.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep9, align 8
  %err.file.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep10, align 8
  %err.line.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 3
  store i64 1226, ptr %err.line.gep11, align 8
  %err.col.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 4
  store i64 22, ptr %err.col.gep12, align 8
  %err.ctx.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 5
  store i64 %subtmp, ptr %err.ctx.gep13, align 8
  %err.ctx1.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep13, i32 0, i32 1
  store i64 %a.rd.len4, ptr %err.ctx1.gep15, align 8
  %err.p2i16 = ptrtoint ptr %err.alloc7 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i16, %a.rd.err.oob ]
  %a.rd.pay. = select i1 %a.rd.tag, i64 %a.rd.pay, i64 0
  %bandtmp = and i64 %a.rd.pay., 65536
  %cmptmp = icmp ne i64 %bandtmp, 0
  ret i1 %cmptmp
}

define void @"lexer::stack_clear_inline"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load, 1
  %cmptmp = icmp sge i64 %subtmp, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 6
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load4, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.exit:                                      ; preds = %a.wr.done, %entry
  ret void

a.rd.check:                                       ; preds = %choice.then
  %a.rd.len6 = load i64, ptr %fld.load4, align 8
  %a.rd.lt = icmp slt i64 %subtmp, %a.rd.len6
  br i1 %a.rd.lt, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %a.rd.data7 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data7, i64 %subtmp
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 4011, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc9 = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 56)
  store i64 4011, ptr %err.alloc9, align 8
  %err.msg.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep11, align 8
  %err.file.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep12, align 8
  %err.line.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 3
  store i64 0, ptr %err.line.gep13, align 8
  %err.col.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 4
  store i64 0, ptr %err.col.gep14, align 8
  %err.ctx.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc9, i32 0, i32 5
  store i64 %subtmp, ptr %err.ctx.gep15, align 8
  %err.ctx1.gep17 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep15, i32 0, i32 1
  store i64 %a.rd.len6, ptr %err.ctx1.gep17, align 8
  %err.p2i18 = ptrtoint ptr %err.alloc9 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i18, %a.rd.err.oob ]
  %a.rd.pay. = select i1 %a.rd.tag, i64 %a.rd.pay, i64 0
  %fld.load27 = load ptr, ptr %fld.gep3, align 8
  %bandtmp = and i64 %a.rd.pay., 65535
  %a.wr.nonnull = icmp ne ptr %fld.load27, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.rd.done
  %a.wr.len30 = load i64, ptr %fld.load27, align 8
  %a.wr.lt = icmp slt i64 %subtmp, %a.wr.len30
  br i1 %a.wr.lt, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load27, i32 0, i32 1
  %a.wr.data31 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data31, i64 %subtmp
  store i64 %bandtmp, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.rd.done
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 56)
  store i64 4011, ptr %err.alloc33, align 8
  %err.msg.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep35, align 8
  %err.file.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep36, align 8
  %err.line.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 3
  store i64 0, ptr %err.line.gep37, align 8
  %err.col.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 4
  store i64 0, ptr %err.col.gep38, align 8
  %err.ctx.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep39, align 8
  %err.ctx1.gep41 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep39, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep41, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 56)
  store i64 4011, ptr %err.alloc43, align 8
  %err.msg.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep45, align 8
  %err.file.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep46, align 8
  %err.line.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 3
  store i64 0, ptr %err.line.gep47, align 8
  %err.col.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 4
  store i64 0, ptr %err.col.gep48, align 8
  %err.ctx.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 5
  store i64 %subtmp, ptr %err.ctx.gep49, align 8
  %err.ctx1.gep51 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep49, i32 0, i32 1
  store i64 %a.wr.len30, ptr %err.ctx1.gep51, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc33, %a.wr.err.null ], [ %err.alloc43, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.exit, label %choice.else53

choice.else53:                                    ; preds = %a.wr.done
  %err.code = load i64, ptr %a.wr.niche, align 8
  %err.msg.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep59, align 8
  %err.file.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep60, align 8
  %err.line.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep61, align 8
  %err.col.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep62, align 8
  %err.msg.len63 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len64 = and i64 %err.msg.len63, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len64 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data65 = load ptr, ptr %err.msg.data, align 8
  %err.file.len66 = load i64, ptr %err.file.struct, align 8
  %err.file.len67 = and i64 %err.file.len66, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len67 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data68 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %choice.else53
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else53
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data65, i32 %err.file.len32, ptr %err.file.data68, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable
}

define void @"lexer::stack_pop"(ptr %0, i64 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load, 1
  store i64 %subtmp, ptr %fld.gep, align 8
  ret void
}

define void @"lexer::stack_append"(ptr %0, i64 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.null = icmp eq ptr %fld.load, null
  br i1 %a.null, label %a.create, label %a.check

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  store i64 0, ptr %a.create2, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.check

a.check:                                          ; preds = %entry, %a.create
  %var.st.0 = phi ptr [ %a.create2, %a.create ], [ %fld.load, %entry ]
  %a.len4 = load i64, ptr %var.st.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.st.0, i32 0, i32 2
  %a.cap5 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len4, %a.cap5
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.st.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.st.0, i32 0, i32 1
  %a.cur.data6 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len7 = load i64, ptr %var.st.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data6, i64 %a.cur.len7
  store i64 %1, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len7, 1
  store i64 %a.next.len, ptr %var.st.0, align 8
  ret void
}

define void @"lexer::stack_overwrite"(ptr %0, i64 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %a.wr.nonnull = icmp ne ptr %fld.load, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %entry
  %a.wr.len5 = load i64, ptr %fld.load, align 8
  %a.wr.ge0 = icmp sge i64 %fld.load3, 0
  %a.wr.lt = icmp slt i64 %fld.load3, %a.wr.len5
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %a.wr.data6 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data6, i64 %fld.load3
  store i64 %1, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 4011, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 1259, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 19, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 56)
  store i64 4011, ptr %err.alloc8, align 8
  %err.msg.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep10, align 8
  %err.file.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep11, align 8
  %err.line.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 3
  store i64 1259, ptr %err.line.gep12, align 8
  %err.col.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 4
  store i64 19, ptr %err.col.gep13, align 8
  %err.ctx.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 5
  store i64 %fld.load3, ptr %err.ctx.gep14, align 8
  %err.ctx1.gep16 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep14, i32 0, i32 1
  store i64 %a.wr.len5, ptr %err.ctx1.gep16, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc, %a.wr.err.null ], [ %err.alloc8, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %a.wr.done
  %err.code = load i64, ptr %a.wr.niche, align 8
  %err.msg.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep20, align 8
  %err.file.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep21, align 8
  %err.line.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep22, align 8
  %err.col.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep23, align 8
  %err.msg.len24 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len25 = and i64 %err.msg.len24, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len25 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data26 = load ptr, ptr %err.msg.data, align 8
  %err.file.len27 = load i64, ptr %err.file.struct, align 8
  %err.file.len28 = and i64 %err.file.len27, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len28 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data29 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

choice.exit:                                      ; preds = %a.wr.done
  ret void

err.thread:                                       ; preds = %choice.else
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data26, i32 %err.file.len32, ptr %err.file.data29, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable
}

define void @"lexer::stack_push"(ptr %0, i64 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 6
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %a.len.query4 = load i64, ptr %fld.load3, align 8
  %cmptmp = icmp eq i64 %fld.load, %a.len.query4
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  call void @"lexer::stack_append"(ptr %0, i64 %1)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  %fld.load9 = load i64, ptr %fld.gep, align 8
  %fld.load12 = load ptr, ptr %fld.gep2, align 8
  %a.len.query14 = load i64, ptr %fld.load12, align 8
  %cmptmp15 = icmp slt i64 %fld.load9, %a.len.query14
  br i1 %cmptmp15, label %choice.then16, label %choice.exit17

choice.then16:                                    ; preds = %choice.exit
  call void @"lexer::stack_overwrite"(ptr %0, i64 %1)
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.then16, %choice.exit
  %fld.load23 = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load23, 1
  store i64 %addtmp, ptr %fld.gep, align 8
  ret void
}

define void @"lexer::queue_dedent"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 16, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc, align 8
  %rec.fld6 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load3, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store i64 %2, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld10, align 1
  %rec.fld11 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store i1 false, ptr %rec.fld11, align 1
  %rec.fld12 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.106.struct, ptr %rec.fld12, align 8
  %a.null = icmp eq ptr %fld.load, null
  br i1 %a.null, label %a.create, label %a.check

a.create:                                         ; preds = %entry
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 24)
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 128)
  store i64 0, ptr %a.create14, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.check

a.check:                                          ; preds = %entry, %a.create
  %var.qu.0 = phi ptr [ %a.create14, %a.create ], [ %fld.load, %entry ]
  %a.len16 = load i64, ptr %var.qu.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.0, i32 0, i32 2
  %a.cap17 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len16, %a.cap17
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.qu.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.0, i32 0, i32 1
  %a.cur.data18 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len19 = load i64, ptr %var.qu.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data18, i64 %a.cur.len19
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len19, 1
  store i64 %a.next.len, ptr %var.qu.0, align 8
  ret void
}

define void @"lexer::queue_indent"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 15, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc, align 8
  %rec.fld4 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %1, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store i64 %2, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld8, align 1
  %rec.fld9 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store i1 false, ptr %rec.fld9, align 1
  %rec.fld10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.107.struct, ptr %rec.fld10, align 8
  %a.null = icmp eq ptr %fld.load, null
  br i1 %a.null, label %a.create, label %a.check

a.create:                                         ; preds = %entry
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 24)
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 128)
  store i64 0, ptr %a.create12, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.check

a.check:                                          ; preds = %entry, %a.create
  %var.qu.0 = phi ptr [ %a.create12, %a.create ], [ %fld.load, %entry ]
  %a.len14 = load i64, ptr %var.qu.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.0, i32 0, i32 2
  %a.cap15 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len14, %a.cap15
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.qu.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.0, i32 0, i32 1
  %a.cur.data16 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len17 = load i64, ptr %var.qu.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data16, i64 %a.cur.len17
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len17, 1
  store i64 %a.next.len, ptr %var.qu.0, align 8
  ret void
}

define void @"lexer::count_indent"(ptr %0, i64 %1) #3 {
entry:
  br label %loop.header.310

loop.header.310:                                  ; preds = %choice.exit, %entry
  %"var.sp'.0" = phi i64 [ 0, %entry ], [ %addtmp, %choice.exit ]
  %"var.tabs'.0" = phi i64 [ 0, %entry ], [ %addtmp18, %choice.exit ]
  %loop.idx.310.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit ]
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 32
  %call.res2 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext3 = sext i32 %call.res2 to i64
  %cmptmp4 = icmp eq i64 %coerce.sext3, 9
  %or.311.phi = select i1 %cmptmp, i1 true, i1 %cmptmp4
  %nottmp = xor i1 %or.311.phi, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %loop.header.310
  %cmptmp24 = icmp sgt i64 %"var.sp'.0", 0
  %cmptmp26 = icmp sgt i64 %"var.tabs'.0", 0
  %and.312.phi = select i1 %cmptmp24, i1 %cmptmp26, i1 false
  br i1 %and.312.phi, label %choice.then27, label %choice.exit28

choice.exit:                                      ; preds = %loop.header.310
  %. = select i1 %cmptmp, i64 1, i64 0
  %addtmp = add i64 %"var.sp'.0", %.
  %choice.res17 = select i1 %cmptmp4, i64 1, i64 0
  %addtmp18 = add i64 %"var.tabs'.0", %choice.res17
  %call.res21 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res22 = call i32 @"lexer::adv"(ptr %0, i32 %call.res21)
  %loop.next = add i64 %loop.idx.310.0, 1
  br label %loop.header.310

choice.then27:                                    ; preds = %choice.then
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res30 = call i64 @"lexer::fail"(i64 1001, i64 %fld.load, i64 1, ptr @str.108.struct)
  br label %choice.exit28

choice.exit28:                                    ; preds = %choice.then27, %choice.then
  br i1 %cmptmp24, label %and.313.then, label %choice.exit38

and.313.then:                                     ; preds = %choice.exit28
  %fld.gep34 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load35 = load i64, ptr %fld.gep34, align 8
  %cmptmp36 = icmp eq i64 %fld.load35, 0
  br i1 %cmptmp36, label %choice.then37, label %choice.exit38

choice.then37:                                    ; preds = %and.313.then
  store i64 1, ptr %fld.gep34, align 8
  br label %choice.exit38

choice.exit38:                                    ; preds = %choice.exit28, %choice.then37, %and.313.then
  br i1 %cmptmp26, label %and.314.then, label %choice.exit48

and.314.then:                                     ; preds = %choice.exit38
  %fld.gep44 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  %cmptmp46 = icmp eq i64 %fld.load45, 0
  br i1 %cmptmp46, label %choice.then47, label %choice.exit48

choice.then47:                                    ; preds = %and.314.then
  store i64 2, ptr %fld.gep44, align 8
  br label %choice.exit48

choice.exit48:                                    ; preds = %choice.exit38, %choice.then47, %and.314.then
  br i1 %cmptmp24, label %and.315.then, label %choice.exit58

and.315.then:                                     ; preds = %choice.exit48
  %fld.gep54 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load55 = load i64, ptr %fld.gep54, align 8
  %cmptmp56 = icmp eq i64 %fld.load55, 2
  br i1 %cmptmp56, label %choice.then57, label %choice.exit58

choice.then57:                                    ; preds = %and.315.then
  %fld.gep60 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load61 = load i64, ptr %fld.gep60, align 8
  %call.res62 = call i64 @"lexer::fail"(i64 1002, i64 %fld.load61, i64 1, ptr @str.109.struct)
  br label %choice.exit58

choice.exit58:                                    ; preds = %choice.exit48, %choice.then57, %and.315.then
  br i1 %cmptmp26, label %and.316.then, label %choice.exit70

and.316.then:                                     ; preds = %choice.exit58
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 5
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  %cmptmp68 = icmp eq i64 %fld.load67, 1
  br i1 %cmptmp68, label %choice.then69, label %choice.exit70

choice.then69:                                    ; preds = %and.316.then
  %fld.gep72 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load73 = load i64, ptr %fld.gep72, align 8
  %call.res74 = call i64 @"lexer::fail"(i64 1003, i64 %fld.load73, i64 1, ptr @str.110.struct)
  br label %choice.exit70

choice.exit70:                                    ; preds = %choice.exit58, %choice.then69, %and.316.then
  %"var.sp'.0.var.tabs'.0" = select i1 %cmptmp24, i64 %"var.sp'.0", i64 %"var.tabs'.0"
  %fld.gep85 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 14
  store i64 %"var.sp'.0.var.tabs'.0", ptr %fld.gep85, align 8
  ret void
}

define ptr @"lexer::drain_to"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %cat.ibuf = alloca [24 x i8], align 1
  br label %loop.header.317

loop.header.317:                                  ; preds = %choice.then, %entry
  %loop.idx.317.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp sgt i64 %fld.load, 1
  br i1 %cmptmp, label %and.318.then, label %choice.else

and.318.then:                                     ; preds = %loop.header.317
  %call.res = call i64 @"lexer::stack_top"(ptr %0), !range !1
  %cmptmp3 = icmp sgt i64 %call.res, %1
  br i1 %cmptmp3, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.318.then
  call void @"lexer::stack_pop"(ptr %0, i64 0)
  call void @"lexer::queue_dedent"(ptr %0, i64 0, i64 1)
  %loop.next = add i64 %loop.idx.317.0, 1
  br label %loop.header.317

choice.else:                                      ; preds = %loop.header.317, %and.318.then
  %call.res7 = call i64 @"lexer::stack_top"(ptr %0), !range !1
  %cmptmp9 = icmp slt i64 %call.res7, %1
  br i1 %cmptmp9, label %and.319.then, label %choice.else13

and.319.then:                                     ; preds = %choice.else
  %call.res11 = call i1 @"lexer::stack_top_has_inline"(ptr %0)
  br i1 %call.res11, label %choice.then12, label %choice.else13

choice.then12:                                    ; preds = %and.319.then
  call void @"lexer::stack_clear_inline"(ptr %0)
  call void @"lexer::stack_push"(ptr %0, i64 %1)
  call void @"lexer::queue_indent"(ptr %0, i64 %2, i64 1)
  br label %choice.exit14

choice.else13:                                    ; preds = %choice.else, %and.319.then
  %call.res21 = call i64 @"lexer::stack_top"(ptr %0), !range !1
  %cmptmp23 = icmp ne i64 %call.res21, %1
  br i1 %cmptmp23, label %choice.then24, label %choice.exit14

choice.exit14:                                    ; preds = %choice.else13, %concat.tot.len38, %choice.then12
  %call.res46 = call ptr @"lexer::take_queued"(ptr %0, i64 0)
  ret ptr %call.res46

choice.then24:                                    ; preds = %choice.else13
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %1, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 15, i64 %cat.ilen)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len29

cat.sum.len29:                                    ; preds = %choice.then24
  %cat.sum.len30 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 44)
  %sum31 = extractvalue { i64, i1 } %cat.sum.len30, 0
  %ovf32 = extractvalue { i64, i1 } %cat.sum.len30, 1
  br i1 %ovf32, label %str_overflow_abort34, label %cat.sum.len33

str_overflow_abort:                               ; preds = %choice.then24
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len33:                                    ; preds = %cat.sum.len29
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum31, i64 1)
  %sum36 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf37 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf37, label %str_overflow_abort39, label %concat.tot.len38

str_overflow_abort34:                             ; preds = %cat.sum.len29
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len38:                                 ; preds = %cat.sum.len33
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.111, i64 15, i1 false)
  %cat.dst41 = getelementptr i8, ptr %concat.buf, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst41, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off = add i64 15, %cat.ilen
  %cat.dst42 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst42, ptr align 1 @str.112, i64 44, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum31
  store i8 0, ptr %concat.nul, align 1
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum31, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res44 = call i64 @"lexer::fail"(i64 1004, i64 %2, i64 1, ptr %concat.str)
  br label %choice.exit14

str_overflow_abort39:                             ; preds = %cat.sum.len33
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #3 {
entry:
  %fmt.tmp = alloca [24 x i8], align 1
  %fmt.is.zero = icmp eq i64 %1, 0
  br i1 %fmt.is.zero, label %zero, label %nonzero

common.ret:                                       ; preds = %done, %zero
  %common.ret.op = phi i64 [ 1, %zero ], [ %fmt.tot, %done ]
  ret i64 %common.ret.op

zero:                                             ; preds = %entry
  store i8 48, ptr %0, align 1
  %fmt.z.nul = getelementptr i8, ptr %0, i64 1
  store i8 0, ptr %fmt.z.nul, align 1
  br label %common.ret

nonzero:                                          ; preds = %entry
  %fmt.slt = icmp slt i64 %1, 0
  %fmt.is.neg = and i1 true, %fmt.slt
  %fmt.neg = sub i64 0, %1
  %fmt.abs = select i1 %fmt.is.neg, i64 %fmt.neg, i64 %1
  br label %divloop

divloop:                                          ; preds = %divloop, %nonzero
  %fmt.n = phi i64 [ %fmt.abs, %nonzero ], [ %fmt.quot, %divloop ]
  %fmt.k = phi i64 [ 0, %nonzero ], [ %fmt.k.next, %divloop ]
  %fmt.rem = urem i64 %fmt.n, 10
  %fmt.quot = udiv i64 %fmt.n, 10
  %fmt.r8 = trunc i64 %fmt.rem to i8
  %fmt.dig = add nuw nsw i8 %fmt.r8, 48
  %fmt.tslot = getelementptr i8, ptr %fmt.tmp, i64 %fmt.k
  store i8 %fmt.dig, ptr %fmt.tslot, align 1
  %fmt.k.next = add i64 %fmt.k, 1
  %fmt.more = icmp ne i64 %fmt.quot, 0
  br i1 %fmt.more, label %divloop, label %sign

sign:                                             ; preds = %divloop
  br i1 %fmt.is.neg, label %negstore, label %copypre

negstore:                                         ; preds = %sign
  store i8 45, ptr %0, align 1
  br label %copypre

copypre:                                          ; preds = %negstore, %sign
  %fmt.off = phi i64 [ 0, %sign ], [ 1, %negstore ]
  br label %copyloop

copyloop:                                         ; preds = %copyloop, %copypre
  %fmt.i = phi i64 [ 0, %copypre ], [ %fmt.i.next, %copyloop ]
  %fmt.sidx = sub i64 %fmt.k, %fmt.i
  %fmt.sptr = getelementptr i8, ptr %fmt.tmp, i64 %fmt.sidx
  %fmt.ch = load i8, ptr %fmt.sptr, align 1
  %fmt.didx = add i64 %fmt.off, %fmt.i
  %fmt.dptr = getelementptr i8, ptr %0, i64 %fmt.didx
  store i8 %fmt.ch, ptr %fmt.dptr, align 1
  %fmt.i.next = add i64 %fmt.i, 1
  %fmt.cmore = icmp ne i64 %fmt.i.next, %fmt.k.next
  br i1 %fmt.cmore, label %copyloop, label %done

done:                                             ; preds = %copyloop
  %fmt.tot = add i64 %fmt.off, %fmt.k.next
  %fmt.nul = getelementptr i8, ptr %0, i64 %fmt.tot
  store i8 0, ptr %fmt.nul, align 1
  br label %common.ret
}

define ptr @"lexer::layout"(ptr %0, i64 %1) #3 {
entry:
  call void @"lexer::count_indent"(ptr %0, i64 0)
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  store i64 0, ptr %fld.gep, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep3, align 8
  %fld.load6 = load ptr, ptr %0, align 8
  %str.len.query7 = load i64, ptr %fld.load6, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag = lshr i64 %str.len.query7, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sge i64 %fld.load, %str.len.query8
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %fld.gep11 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 14
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %call.res = call ptr @"lexer::drain_to"(ptr %0, i64 %fld.load12, i64 %fld.load15)
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %call.res18 = call ptr @"lexer::line_token"(ptr %0, i64 %1)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ %call.res18, %choice.else ]
  ret ptr %choice.res
}

define ptr @"lexer::line_token"(ptr %0, i64 %1) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %switch.selectcmp.case1 = icmp eq i32 %call.res, 13
  %switch.selectcmp.case2 = icmp eq i32 %call.res, 10
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %call.res3 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res3 to i64
  %cmptmp = icmp eq i64 %coerce.sext, 47
  br i1 %cmptmp, label %and.320.then, label %and.320.exit

and.320.then:                                     ; preds = %entry
  %call.res5 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext6 = sext i32 %call.res5 to i64
  %cmptmp7 = icmp eq i64 %coerce.sext6, 47
  br label %and.320.exit

and.320.exit:                                     ; preds = %entry, %and.320.then
  %and.320.phi = phi i1 [ %cmptmp7, %and.320.then ], [ false, %entry ]
  %choice.res.and.320.phi = select i1 %switch.selectcmp, i1 %switch.selectcmp, i1 %and.320.phi
  br i1 %choice.res.and.320.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.320.exit
  %call.res13 = call ptr @"lexer::skip_blank"(ptr %0, i64 %1)
  br label %choice.exit10

choice.else:                                      ; preds = %and.320.exit
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 14
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %call.res19 = call ptr @"lexer::layout_step"(ptr %0, i64 %fld.load, i64 %fld.load18)
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else, %choice.then
  %choice.res20 = phi ptr [ %call.res13, %choice.then ], [ %call.res19, %choice.else ]
  ret ptr %choice.res20
}

define ptr @"lexer::skip_blank"(ptr %0, i64 %1) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 47
  br i1 %cmptmp, label %and.322.then, label %choice.exit

and.322.then:                                     ; preds = %entry
  %call.res2 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext3 = sext i32 %call.res2 to i64
  %cmptmp4 = icmp eq i64 %coerce.sext3, 47
  br i1 %cmptmp4, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.322.then
  %call.res7 = call i64 @"lexer::skip_line_comment"(ptr %0, i64 0)
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then, %and.322.then
  %call.res9 = call i32 @"lexer::pk"(ptr %0, i64 0)
  switch i32 %call.res9, label %choice.exit14 [
    i32 13, label %choice.then13
    i32 10, label %choice.then13
  ]

choice.then13:                                    ; preds = %choice.exit, %choice.exit
  %call.res17 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res18 = call i32 @"lexer::adv"(ptr %0, i32 %call.res17)
  br label %choice.exit14

choice.exit14:                                    ; preds = %choice.exit, %choice.then13
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  store i64 1, ptr %fld.gep, align 8
  %call.res22 = call ptr @"lexer::layout"(ptr %0, i64 %1)
  ret ptr %call.res22
}

define ptr @"lexer::layout_step"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %call.res = call i64 @"lexer::stack_top"(ptr %0), !range !1
  %cmptmp = icmp sgt i64 %1, %call.res
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  call void @"lexer::stack_push"(ptr %0, i64 %1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 15, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %call.res7 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 0, i64 0, i64 %2, i64 1, ptr @str.107.struct)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %cmptmp10 = icmp slt i64 %1, %call.res
  br i1 %cmptmp10, label %choice.then11, label %choice.else12

choice.exit:                                      ; preds = %choice.then11, %choice.else12, %choice.then
  %choice.res21 = phi ptr [ %call.res7, %choice.then ], [ %call.res17, %choice.then11 ], [ %call.res20, %choice.else12 ]
  ret ptr %choice.res21

choice.then11:                                    ; preds = %choice.else
  %call.res17 = call ptr @"lexer::drain_to"(ptr %0, i64 %1, i64 %2)
  br label %choice.exit

choice.else12:                                    ; preds = %choice.else
  call void @"lexer::stack_clear_inline"(ptr %0)
  %call.res20 = call ptr @"lexer::next_tok"(ptr %0, i64 0)
  br label %choice.exit
}

define ptr @"lexer::next_tok"(ptr %0, i64 %1) #3 {
entry:
  %var.load = load i1, ptr @"var.lexer::cur_lex_failed", align 1
  br i1 %var.load, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query3 = load i64, ptr %fld.load, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %str.tag = lshr i64 %str.len.query3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else:                                      ; preds = %entry
  %fld.gep24 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 9
  %fld.load25 = load i64, ptr %fld.gep24, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 8
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %a.len.query29 = load i64, ptr %fld.load28, align 8
  %cmptmp = icmp slt i64 %fld.load25, %a.len.query29
  br i1 %cmptmp, label %choice.then30, label %choice.else31

choice.exit:                                      ; preds = %choice.then30, %choice.else31, %str_ok
  %choice.res37 = phi ptr [ %rec.alloc, %str_ok ], [ %call.res, %choice.then30 ], [ %call.res36, %choice.else31 ]
  ret ptr %choice.res37

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %fld.gep5 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  store i64 %str.len.query4, ptr %fld.gep5, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 1, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %fld.load8 = load i64, ptr %fld.gep5, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load11 = load i64, ptr %fld.gep10, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc, align 8
  %rec.fld16 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %fld.load8, ptr %rec.fld16, align 8
  %rec.fld17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %fld.load11, ptr %rec.fld18, align 8
  %rec.fld19 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load14, ptr %rec.fld19, align 8
  %rec.fld20 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld20, align 1
  %rec.fld21 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store i1 false, ptr %rec.fld21, align 1
  %rec.fld22 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.0.struct, ptr %rec.fld22, align 8
  br label %choice.exit

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then30:                                    ; preds = %choice.else
  %call.res = call ptr @"lexer::take_queued"(ptr %0, i64 0)
  br label %choice.exit

choice.else31:                                    ; preds = %choice.else
  %call.res36 = call ptr @"lexer::dispatch_bol"(ptr %0, i64 %1)
  br label %choice.exit
}

define ptr @"lexer::dispatch_bol"(ptr %0, i64 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %val.match = icmp eq i64 %fld.load, 1
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %call.res, %choice.case ], [ %call.res4, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %call.res = call ptr @"lexer::layout"(ptr %0, i64 %1)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %call.res4 = call ptr @"lexer::dispatch_scan"(ptr %0)
  br label %choice.exit
}

define ptr @"lexer::dispatch_scan"(ptr %0) #3 {
entry:
  call void @"lexer::skip_hws"(ptr %0, i64 0)
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %val.match = icmp eq i32 %call.res, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next142, %choice.case141, %choice.case127, %choice.case113, %choice.case99, %choice.case85, %choice.case74, %choice.case62, %choice.case44, %choice.case33, %choice.case20, %choice.case6, %choice.case
  %choice.res = phi ptr [ %call.res5, %choice.case ], [ %call.res19, %choice.case6 ], [ %call.res32, %choice.case20 ], [ %call.res43, %choice.case33 ], [ %call.res61, %choice.case44 ], [ %call.res73, %choice.case62 ], [ %call.res84, %choice.case74 ], [ %call.res98, %choice.case85 ], [ %call.res112, %choice.case99 ], [ %call.res126, %choice.case113 ], [ %call.res140, %choice.case127 ], [ %call.res154, %choice.case141 ], [ %call.res162, %choice.next142 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res5 = call ptr @"lexer::flush_indents"(ptr %0, i64 %fld.load)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 47
  br i1 %cmptmp, label %and.324.then, label %choice.next21

choice.case6:                                     ; preds = %and.324.then
  %fld.gep14 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %call.res19 = call ptr @"lexer::comment_block"(ptr %0, i64 %fld.load15, i64 %fld.load18)
  br label %choice.exit

and.324.then:                                     ; preds = %choice.next
  %call.res9 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext10 = sext i32 %call.res9 to i64
  %cmptmp11 = icmp eq i64 %coerce.sext10, 42
  br i1 %cmptmp11, label %choice.case6, label %and.325.then

choice.case20:                                    ; preds = %and.325.then
  %fld.gep30 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %call.res32 = call ptr @"lexer::comment_line"(ptr %0, i64 %fld.load31)
  br label %choice.exit

choice.next21:                                    ; preds = %choice.next, %and.325.then
  %val.match35 = icmp eq i32 %call.res, 10
  br i1 %val.match35, label %choice.case33, label %choice.next34

and.325.then:                                     ; preds = %and.324.then
  %call.res25 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext26 = sext i32 %call.res25 to i64
  %cmptmp27 = icmp eq i64 %coerce.sext26, 47
  br i1 %cmptmp27, label %choice.case20, label %choice.next21

choice.case33:                                    ; preds = %choice.next21
  %fld.gep38 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load39 = load i64, ptr %fld.gep38, align 8
  %fld.gep41 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load42 = load i64, ptr %fld.gep41, align 8
  %call.res43 = call ptr @"lexer::nl_tok"(ptr %0, i64 %fld.load39, i64 %fld.load42)
  br label %choice.exit

choice.next34:                                    ; preds = %choice.next21
  %cmptmp47 = icmp eq i64 %coerce.sext, 37
  br i1 %cmptmp47, label %and.326.then, label %choice.next45

choice.case44:                                    ; preds = %and.326.then
  %fld.gep53 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load54 = load i64, ptr %fld.gep53, align 8
  %fld.gep56 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load57 = load i64, ptr %fld.gep56, align 8
  %fld.gep59 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  %call.res61 = call ptr @"lexer::scan_intrinsic"(ptr %0, i64 %fld.load54, i64 %fld.load57, i64 %fld.load60)
  br label %choice.exit

choice.next45:                                    ; preds = %choice.next34, %and.326.then
  %call.res64 = call i1 @"lexer::is_delim"(i32 %call.res)
  br i1 %call.res64, label %choice.case62, label %choice.next63

and.326.then:                                     ; preds = %choice.next34
  %call.res49 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %call.res50 = call i1 @"lexer::is_id_start"(i32 %call.res49)
  br i1 %call.res50, label %choice.case44, label %choice.next45

choice.case62:                                    ; preds = %choice.next45
  %fld.gep68 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load69 = load i64, ptr %fld.gep68, align 8
  %fld.gep71 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load72 = load i64, ptr %fld.gep71, align 8
  %call.res73 = call ptr @"lexer::scan_delim"(ptr %0, i32 %call.res, i64 %fld.load69, i64 %fld.load72)
  br label %choice.exit

choice.next63:                                    ; preds = %choice.next45
  %val.match76 = icmp eq i32 %call.res, 35
  br i1 %val.match76, label %choice.case74, label %choice.next75

choice.case74:                                    ; preds = %choice.next63
  %fld.gep79 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load80 = load i64, ptr %fld.gep79, align 8
  %fld.gep82 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load83 = load i64, ptr %fld.gep82, align 8
  %call.res84 = call ptr @"lexer::scan_hash"(ptr %0, i64 %fld.load80, i64 %fld.load83)
  br label %choice.exit

choice.next75:                                    ; preds = %choice.next63
  %call.res87 = call i1 @"unicode::is_digit"(i32 %call.res)
  br i1 %call.res87, label %choice.case85, label %choice.next86

choice.case85:                                    ; preds = %choice.next75
  %fld.gep90 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load91 = load i64, ptr %fld.gep90, align 8
  %fld.gep93 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load94 = load i64, ptr %fld.gep93, align 8
  %fld.gep96 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load97 = load i64, ptr %fld.gep96, align 8
  %call.res98 = call ptr @"lexer::scan_num"(ptr %0, i64 %fld.load91, i64 %fld.load94, i64 %fld.load97)
  br label %choice.exit

choice.next86:                                    ; preds = %choice.next75
  %val.match101 = icmp eq i32 %call.res, 39
  br i1 %val.match101, label %choice.case99, label %choice.next100

choice.case99:                                    ; preds = %choice.next86
  %fld.gep104 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load105 = load i64, ptr %fld.gep104, align 8
  %fld.gep107 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load108 = load i64, ptr %fld.gep107, align 8
  %fld.gep110 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load111 = load i64, ptr %fld.gep110, align 8
  %call.res112 = call ptr @"lexer::scan_rune"(ptr %0, i64 %fld.load105, i64 %fld.load108, i64 %fld.load111)
  br label %choice.exit

choice.next100:                                   ; preds = %choice.next86
  %call.res115 = call i1 @"lexer::is_special"(i32 %call.res)
  br i1 %call.res115, label %choice.case113, label %choice.next114

choice.case113:                                   ; preds = %choice.next100
  %fld.gep118 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load119 = load i64, ptr %fld.gep118, align 8
  %fld.gep121 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load122 = load i64, ptr %fld.gep121, align 8
  %fld.gep124 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load125 = load i64, ptr %fld.gep124, align 8
  %call.res126 = call ptr @"lexer::scan_op"(ptr %0, i64 %fld.load119, i64 %fld.load122, i64 %fld.load125)
  br label %choice.exit

choice.next114:                                   ; preds = %choice.next100
  %call.res129 = call i1 @"lexer::is_id_start"(i32 %call.res)
  br i1 %call.res129, label %choice.case127, label %choice.next128

choice.case127:                                   ; preds = %choice.next114
  %fld.gep132 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load133 = load i64, ptr %fld.gep132, align 8
  %fld.gep135 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load136 = load i64, ptr %fld.gep135, align 8
  %fld.gep138 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load139 = load i64, ptr %fld.gep138, align 8
  %call.res140 = call ptr @"lexer::scan_ident"(ptr %0, i64 %fld.load133, i64 %fld.load136, i64 %fld.load139)
  br label %choice.exit

choice.next128:                                   ; preds = %choice.next114
  %val.match143 = icmp eq i32 %call.res, 34
  br i1 %val.match143, label %choice.case141, label %choice.next142

choice.case141:                                   ; preds = %choice.next128
  %fld.gep146 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load147 = load i64, ptr %fld.gep146, align 8
  %fld.gep149 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load150 = load i64, ptr %fld.gep149, align 8
  %fld.gep152 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load153 = load i64, ptr %fld.gep152, align 8
  %call.res154 = call ptr @"lexer::scan_string"(ptr %0, i64 %fld.load147, i64 %fld.load150, i64 %fld.load153)
  br label %choice.exit

choice.next142:                                   ; preds = %choice.next128
  %fld.gep157 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load158 = load i64, ptr %fld.gep157, align 8
  %fld.gep160 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load161 = load i64, ptr %fld.gep160, align 8
  %call.res162 = call ptr @"lexer::eof_tok"(ptr %0, i64 %fld.load158, i64 %fld.load161)
  br label %choice.exit
}

define ptr @"lexer::flush_indents"(ptr %0, i64 %1) #3 {
entry:
  br label %loop.header.323

loop.header.323:                                  ; preds = %choice.then, %entry
  %loop.idx.323.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 7
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp sgt i64 %fld.load, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %loop.header.323
  call void @"lexer::stack_pop"(ptr %0, i64 0)
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  call void @"lexer::queue_dedent"(ptr %0, i64 0, i64 %fld.load5)
  %loop.next = add i64 %loop.idx.323.0, 1
  br label %loop.header.323

choice.else:                                      ; preds = %loop.header.323
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 9
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 8
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %a.len.query12 = load i64, ptr %fld.load11, align 8
  %cmptmp13 = icmp slt i64 %fld.load8, %a.len.query12
  br i1 %cmptmp13, label %choice.then14, label %choice.else15

choice.then14:                                    ; preds = %choice.else
  %call.res = call ptr @"lexer::take_queued"(ptr %0, i64 0)
  br label %choice.exit16

choice.else15:                                    ; preds = %choice.else
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 1, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %fld.gep19 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load24 = load i64, ptr %fld.gep23, align 8
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc, align 8
  %rec.fld26 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %fld.load20, ptr %rec.fld26, align 8
  %rec.fld27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld27, align 8
  %rec.fld28 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %1, ptr %rec.fld28, align 8
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

define ptr @"lexer::comment_block"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 10
  store i1 false, ptr %fld.gep, align 1
  call void @"lexer::skip_block_comment"(ptr %0, i64 %1, i64 %2)
  %call.res = call ptr @"lexer::next_tok"(ptr %0, i64 0)
  ret ptr %call.res
}

define ptr @"lexer::comment_line"(ptr %0, i64 %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 10
  store i1 false, ptr %fld.gep, align 1
  %call.res = call i64 @"lexer::skip_line_comment"(ptr %0, i64 0)
  %call.res3 = call ptr @"lexer::next_tok"(ptr %0, i64 0)
  ret ptr %call.res3
}

define ptr @"lexer::nl_tok"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res2 = call i32 @"lexer::adv"(ptr %0, i32 %call.res)
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 4
  store i64 1, ptr %fld.gep, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 17, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %call.res7 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 0, i64 0, i64 %1, i64 %2, ptr @str.83.struct)
  ret ptr %call.res7
}

define ptr @"lexer::scan_intrinsic"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i32 @"lexer::adv"(ptr %0, i32 37)
  %addtmp = add i64 %1, 1
  %call.res3 = call { i64, ptr } @"lexer::scan_id"(ptr %0, i64 %addtmp)
  %call.res3.fca.0.extract = extractvalue { i64, ptr } %call.res3, 0
  %call.res3.fca.1.extract = extractvalue { i64, ptr } %call.res3, 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 2, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load, %1
  %concat.rhs14 = and i64 %call.res3.fca.0.extract, 281474976710655
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %concat.rhs14)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum18 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %sum18)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.113, i64 1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %call.res3.fca.1.extract, i64 %concat.rhs14, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res25 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %1, i64 %subtmp, i64 %2, i64 %3, ptr %concat.str)
  ret ptr %call.res25
}

define ptr @"lexer::scan_delim"(ptr %0, i32 %1, i64 %2, i64 %3) #3 {
entry:
  switch i32 %1, label %choice.next44 [
    i32 40, label %choice.case
    i32 41, label %choice.case1
    i32 91, label %choice.case8
    i32 93, label %choice.case15
    i32 123, label %choice.case22
    i32 125, label %choice.case29
    i32 44, label %choice.case36
    i32 59, label %choice.case43
  ]

choice.exit:                                      ; preds = %choice.next44, %choice.case43, %choice.case36, %choice.case29, %choice.case22, %choice.case15, %choice.case8, %choice.case1, %choice.case
  %choice.res = phi ptr [ %enum.alloc, %choice.case ], [ %enum.alloc5, %choice.case1 ], [ %enum.alloc12, %choice.case8 ], [ %enum.alloc19, %choice.case15 ], [ %enum.alloc26, %choice.case22 ], [ %enum.alloc33, %choice.case29 ], [ %enum.alloc40, %choice.case36 ], [ %enum.alloc47, %choice.case43 ], [ %enum.alloc51, %choice.next44 ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i32 @"lexer::adv"(ptr %0, i32 %1)
  %fld.load64 = load ptr, ptr %0, align 8
  %s.read.len65 = load i64, ptr %fld.load64, align 8
  %s.read.len66 = and i64 %s.read.len65, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load64, i32 0, i32 1
  %s.read.data67 = load ptr, ptr %s.read.data, align 8
  %addtmp = add i64 %fld.load, 1
  %start.is_neg = icmp slt i64 %fld.load, 0
  %rel.start = add i64 %s.read.len66, %fld.load
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load
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
  %view.data = getelementptr i8, ptr %s.read.data67, i64 %final.start
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %call.res71 = call ptr @"lexer::mktok"(ptr %0, ptr %choice.res, i64 %fld.load, i64 1, i64 %2, i64 %3, ptr %str.view)
  ret ptr %call.res71

choice.case:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 9, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  br label %choice.exit

choice.case1:                                     ; preds = %entry
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  store i64 10, ptr %enum.alloc5, align 8
  %pay.gep7 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc5, i32 0, i32 1
  store ptr null, ptr %pay.gep7, align 8
  br label %choice.exit

choice.case8:                                     ; preds = %entry
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  store i64 7, ptr %enum.alloc12, align 8
  %pay.gep14 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc12, i32 0, i32 1
  store ptr null, ptr %pay.gep14, align 8
  br label %choice.exit

choice.case15:                                    ; preds = %entry
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  store i64 8, ptr %enum.alloc19, align 8
  %pay.gep21 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc19, i32 0, i32 1
  store ptr null, ptr %pay.gep21, align 8
  br label %choice.exit

choice.case22:                                    ; preds = %entry
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  store i64 11, ptr %enum.alloc26, align 8
  %pay.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc26, i32 0, i32 1
  store ptr null, ptr %pay.gep28, align 8
  br label %choice.exit

choice.case29:                                    ; preds = %entry
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  store i64 12, ptr %enum.alloc33, align 8
  %pay.gep35 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc33, i32 0, i32 1
  store ptr null, ptr %pay.gep35, align 8
  br label %choice.exit

choice.case36:                                    ; preds = %entry
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  store i64 13, ptr %enum.alloc40, align 8
  %pay.gep42 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc40, i32 0, i32 1
  store ptr null, ptr %pay.gep42, align 8
  br label %choice.exit

choice.case43:                                    ; preds = %entry
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  store i64 14, ptr %enum.alloc47, align 8
  %pay.gep49 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc47, i32 0, i32 1
  store ptr null, ptr %pay.gep49, align 8
  br label %choice.exit

choice.next44:                                    ; preds = %entry
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  store i64 0, ptr %enum.alloc51, align 8
  %pay.gep53 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc51, i32 0, i32 1
  store ptr null, ptr %pay.gep53, align 8
  br label %choice.exit
}

define ptr @"lexer::scan_ident"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call { i64, ptr } @"lexer::scan_id"(ptr %0, i64 %1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 16)
  store i64 2, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load, %1
  %call.res10 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %1, i64 %subtmp, i64 %2, i64 %3, ptr %ret.ub.alloc)
  ret ptr %call.res10
}

define ptr @"lexer::scan_string"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %call.res = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 34
  br i1 %cmptmp, label %and.327.then, label %and.327.exit

and.327.then:                                     ; preds = %entry
  %call.res2 = call i32 @"lexer::pk_off"(ptr %0, i64 2)
  %coerce.sext3 = sext i32 %call.res2 to i64
  %cmptmp4 = icmp eq i64 %coerce.sext3, 34
  br label %and.327.exit

and.327.exit:                                     ; preds = %entry, %and.327.then
  %and.327.phi = phi i1 [ %cmptmp4, %and.327.then ], [ false, %entry ]
  br i1 %and.327.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.327.exit
  %call.res8 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res9 = call i32 @"lexer::adv"(ptr %0, i32 %call.res8)
  %call.res12 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res13 = call i32 @"lexer::adv"(ptr %0, i32 %call.res12)
  %call.res16 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res17 = call i32 @"lexer::adv"(ptr %0, i32 %call.res16)
  br label %choice.exit

choice.else:                                      ; preds = %and.327.exit
  %call.res20 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res21 = call i32 @"lexer::adv"(ptr %0, i32 %call.res20)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %call.res23 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext24 = sext i32 %call.res23 to i64
  %cmptmp25 = icmp eq i64 %coerce.sext24, 10
  br i1 %cmptmp25, label %choice.then35, label %or.328.else

or.328.else:                                      ; preds = %choice.exit
  %call.res27 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext28 = sext i32 %call.res27 to i64
  %cmptmp29 = icmp eq i64 %coerce.sext28, 13
  br i1 %cmptmp29, label %and.329.then, label %choice.else36

and.329.then:                                     ; preds = %or.328.else
  %call.res31 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext32 = sext i32 %call.res31 to i64
  %cmptmp33 = icmp eq i64 %coerce.sext32, 10
  br i1 %cmptmp33, label %choice.then35, label %choice.else36

choice.then35:                                    ; preds = %choice.exit, %and.329.then
  %call.res43 = call ptr @"lexer::scan_multiline_string"(ptr %0, i64 %1, i64 %2, i64 %3, i1 %and.327.phi)
  br label %choice.exit37

choice.else36:                                    ; preds = %or.328.else, %and.329.then
  %call.res49 = call ptr @"lexer::scan_single_string"(ptr %0, i64 %1, i64 %2, i64 %3, i1 %and.327.phi)
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.else36, %choice.then35
  %choice.res = phi ptr [ %call.res43, %choice.then35 ], [ %call.res49, %choice.else36 ]
  ret ptr %choice.res
}

define ptr @"lexer::scan_multiline_string"(ptr %0, i64 %1, i64 %2, i64 %3, i1 %4) #3 {
entry:
  %call.res = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp eq i64 %coerce.sext, 13
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res3 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res4 = call i32 @"lexer::adv"(ptr %0, i32 %call.res3)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  %call.res7 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res8 = call i32 @"lexer::adv"(ptr %0, i32 %call.res7)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 24)
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  store i64 0, ptr %a.new11, align 8
  %a.data.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new11, i32 0, i32 1
  store ptr %a.buf13, ptr %a.data.gep15, align 8
  %a.cap.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep16, align 8
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 257)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 256, ptr %b.cap.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  br label %loop.header.330

loop.header.330:                                  ; preds = %choice.exit40, %choice.exit
  %loop.idx.330.0 = phi i64 [ 0, %choice.exit ], [ %loop.next, %choice.exit40 ]
  %"var.cur_indent'.0" = phi i64 [ 0, %choice.exit ], [ %"var.cur_indent'.1", %choice.exit40 ]
  %"var.cur_is_blank'.0" = phi i1 [ true, %choice.exit ], [ %"var.cur_is_blank'.1", %choice.exit40 ]
  %"var.cur_line_num'.0" = phi i64 [ %fld.load, %choice.exit ], [ %"var.cur_line_num'.1", %choice.exit40 ]
  %"var.cur_text'.0" = phi ptr [ %builder.new, %choice.exit ], [ %"var.cur_text'.1", %choice.exit40 ]
  %"var.cur_parts'.0" = phi ptr [ %a.new11, %choice.exit ], [ %"var.cur_parts'.1", %choice.exit40 ]
  %var.lines.0 = phi ptr [ %a.new, %choice.exit ], [ %var.lines.2, %choice.exit40 ]
  %fld.gep22 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  %fld.load26 = load ptr, ptr %0, align 8
  %str.len.query27 = load i64, ptr %fld.load26, align 8
  %str.len.query28 = and i64 %str.len.query27, 281474976710655
  %str.tag = lshr i64 %str.len.query27, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

loop.exit.330:                                    ; preds = %choice.then68, %choice.else69, %a.store170, %choice.then30
  %"var.closed_on_last_line'.0" = phi i1 [ false, %choice.then30 ], [ true, %a.store170 ], [ false, %choice.else69 ], [ false, %choice.then68 ]
  %var.lines.1 = phi ptr [ %var.lines.0, %choice.then30 ], [ %var.lines.3, %a.store170 ], [ %var.lines.0, %choice.else69 ], [ %var.lines.0, %choice.then68 ]
  %a.null1189 = icmp eq ptr %var.lines.1, null
  br i1 %a.null1189, label %a.create1190, label %a.after1191

str_ok:                                           ; preds = %tag.slow_check, %loop.header.330
  %cmptmp29 = icmp sge i64 %fld.load23, %str.len.query28
  br i1 %cmptmp29, label %choice.then30, label %choice.exit31

tag.slow_check:                                   ; preds = %loop.header.330
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then30:                                    ; preds = %str_ok
  %call.res34 = call { i64, ptr } @"diag::E1018_multiline_unterminated"()
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 16)
  store { i64, ptr } %call.res34, ptr %ret.ub.alloc, align 8
  %call.res36 = call i64 @"lexer::fail"(i64 1018, i64 %2, i64 %3, ptr %ret.ub.alloc)
  br label %loop.exit.330

choice.exit31:                                    ; preds = %str_ok
  %call.res38 = call i32 @"lexer::pk"(ptr %0, i64 0)
  switch i32 %call.res38, label %choice.next917 [
    i32 34, label %choice.case
    i32 92, label %choice.case206
    i32 36, label %choice.case704
    i32 13, label %choice.case916
    i32 10, label %choice.case916
  ]

choice.exit40:                                    ; preds = %br.done.345, %choice.case1178, %a.store849, %b.grow_done884, %b.push_done, %br.done.342, %b.grow_done555, %b.grow_done494, %b.grow_done442, %a.store359, %a.store1050, %b.grow_done
  %"var.cur_indent'.1" = phi i64 [ %"var.cur_indent'.0", %b.grow_done ], [ 0, %a.store1050 ], [ 0, %a.store359 ], [ %"var.cur_indent'.0", %b.grow_done442 ], [ %"var.cur_indent'.0", %b.grow_done494 ], [ %"var.cur_indent'.0", %b.grow_done555 ], [ %"var.cur_indent'.0", %br.done.342 ], [ %"var.cur_indent'.0", %b.push_done ], [ %"var.cur_indent'.0", %b.grow_done884 ], [ %"var.cur_indent'.0", %a.store849 ], [ %spec.select, %choice.case1178 ], [ %"var.cur_indent'.0", %br.done.345 ]
  %"var.cur_is_blank'.1" = phi i1 [ false, %b.grow_done ], [ true, %a.store1050 ], [ true, %a.store359 ], [ false, %b.grow_done442 ], [ false, %b.grow_done494 ], [ false, %b.grow_done555 ], [ false, %br.done.342 ], [ false, %b.push_done ], [ false, %b.grow_done884 ], [ false, %a.store849 ], [ %"var.cur_is_blank'.0", %choice.case1178 ], [ false, %br.done.345 ]
  %"var.cur_line_num'.1" = phi i64 [ %"var.cur_line_num'.0", %b.grow_done ], [ %fld.load1087, %a.store1050 ], [ %fld.load396, %a.store359 ], [ %"var.cur_line_num'.0", %b.grow_done442 ], [ %"var.cur_line_num'.0", %b.grow_done494 ], [ %"var.cur_line_num'.0", %b.grow_done555 ], [ %"var.cur_line_num'.0", %br.done.342 ], [ %"var.cur_line_num'.0", %b.push_done ], [ %fld.load865, %a.store849 ], [ %"var.cur_line_num'.0", %b.grow_done884 ], [ %"var.cur_line_num'.0", %choice.case1178 ], [ %"var.cur_line_num'.0", %br.done.345 ]
  %"var.cur_text'.1" = phi ptr [ %"var.cur_text'.0", %b.grow_done ], [ %builder.new1072, %a.store1050 ], [ %builder.new381, %a.store359 ], [ %"var.cur_text'.0", %b.grow_done442 ], [ %"var.cur_text'.0", %b.grow_done494 ], [ %"var.cur_text'.0", %b.grow_done555 ], [ %"var.cur_text'.0", %br.done.342 ], [ %"var.cur_text'.0", %b.push_done ], [ %builder.new803, %a.store849 ], [ %"var.cur_text'.0", %b.grow_done884 ], [ %"var.cur_text'.0", %choice.case1178 ], [ %"var.cur_text'.0", %br.done.345 ]
  %"var.cur_parts'.1" = phi ptr [ %"var.cur_parts'.0", %b.grow_done ], [ %a.new1065, %a.store1050 ], [ %a.new374, %a.store359 ], [ %"var.cur_parts'.0", %b.grow_done442 ], [ %"var.cur_parts'.0", %b.grow_done494 ], [ %"var.cur_parts'.0", %b.grow_done555 ], [ %"var.cur_parts'.0", %br.done.342 ], [ %"var.cur_parts'.0", %b.push_done ], [ %"var.cur_parts'.12", %a.store849 ], [ %"var.cur_parts'.0", %b.grow_done884 ], [ %"var.cur_parts'.0", %choice.case1178 ], [ %"var.cur_parts'.0", %br.done.345 ]
  %var.lines.2 = phi ptr [ %var.lines.0, %b.grow_done ], [ %var.lines.6, %a.store1050 ], [ %var.lines.5, %a.store359 ], [ %var.lines.0, %b.grow_done442 ], [ %var.lines.0, %b.grow_done494 ], [ %var.lines.0, %b.grow_done555 ], [ %var.lines.0, %br.done.342 ], [ %var.lines.0, %b.push_done ], [ %var.lines.0, %b.grow_done884 ], [ %var.lines.0, %a.store849 ], [ %var.lines.0, %choice.case1178 ], [ %var.lines.0, %br.done.345 ]
  %loop.next = add i64 %loop.idx.330.0, 1
  br label %loop.header.330

choice.case:                                      ; preds = %choice.exit31
  %nottmp = xor i1 %4, true
  br i1 %nottmp, label %choice.then55, label %or.331.else

or.331.else:                                      ; preds = %choice.case
  %call.res43 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext44 = sext i32 %call.res43 to i64
  %cmptmp45 = icmp eq i64 %coerce.sext44, 34
  br i1 %cmptmp45, label %and.332.then, label %choice.else

and.332.then:                                     ; preds = %or.331.else
  %call.res47 = call i32 @"lexer::pk_off"(ptr %0, i64 2)
  %coerce.sext48 = sext i32 %call.res47 to i64
  %cmptmp49 = icmp eq i64 %coerce.sext48, 34
  br i1 %cmptmp49, label %and.333.then, label %choice.else

and.333.then:                                     ; preds = %and.332.then
  %call.res51 = call i32 @"lexer::pk_off"(ptr %0, i64 3)
  %coerce.sext52 = sext i32 %call.res51 to i64
  %cmptmp53 = icmp ne i64 %coerce.sext52, 34
  br i1 %cmptmp53, label %choice.then55, label %choice.else

choice.then55:                                    ; preds = %choice.case, %and.333.then
  %b.freeze.len58 = load i64, ptr %"var.cur_text'.0", align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.freeze.data59 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else:                                      ; preds = %and.332.then, %or.331.else, %and.333.then
  %call.res186 = call i32 @"lexer::adv"(ptr %0, i32 34)
  %b.rn.cur.len189 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len189, i64 1)
  %sum190 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf191 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf191, label %str_overflow_abort193, label %b.rn.new.len192

b.freeze.check:                                   ; preds = %choice.then55
  %b.freeze.last.idx = sub nuw nsw i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data59, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data59, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data59, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len58, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data59, i64 %b.freeze.len58, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len58
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then55
  %b.freeze.data61 = phi ptr [ %b.freeze.data59, %choice.then55 ], [ %b.freeze.data59, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len58, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data61, ptr %str.build.data.gep, align 8
  store i64 0, ptr %"var.cur_text'.0", align 8
  store ptr null, ptr %b.freeze.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br i1 %"var.cur_is_blank'.0", label %choice.then64, label %choice.else65

choice.then64:                                    ; preds = %b.freeze.done
  br i1 %4, label %choice.then68, label %choice.else69

choice.else65:                                    ; preds = %b.freeze.done
  br i1 %4, label %choice.then88, label %choice.else89

choice.then68:                                    ; preds = %choice.then64
  %call.res73 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res74 = call i32 @"lexer::adv"(ptr %0, i32 %call.res73)
  %call.res77 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res78 = call i32 @"lexer::adv"(ptr %0, i32 %call.res77)
  %call.res81 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res82 = call i32 @"lexer::adv"(ptr %0, i32 %call.res81)
  br label %loop.exit.330

choice.else69:                                    ; preds = %choice.then64
  %call.res85 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res86 = call i32 @"lexer::adv"(ptr %0, i32 %call.res85)
  br label %loop.exit.330

choice.then88:                                    ; preds = %choice.else65
  %call.res93 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res94 = call i32 @"lexer::adv"(ptr %0, i32 %call.res93)
  %call.res97 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res98 = call i32 @"lexer::adv"(ptr %0, i32 %call.res97)
  %call.res101 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res102 = call i32 @"lexer::adv"(ptr %0, i32 %call.res101)
  br label %choice.exit90

choice.else89:                                    ; preds = %choice.else65
  %call.res105 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res106 = call i32 @"lexer::adv"(ptr %0, i32 %call.res105)
  br label %choice.exit90

choice.exit90:                                    ; preds = %choice.else89, %choice.then88
  %str.len.query109 = load i64, ptr %builder.freeze, align 8
  %str.len.query110 = and i64 %str.len.query109, 281474976710655
  %str.tag111 = lshr i64 %str.len.query109, 48
  %tag.immortal113 = icmp eq i64 %str.tag111, 0
  %active.gen114 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current115 = icmp eq i64 %str.tag111, %active.gen114
  %tag.fast.ok116 = or i1 %tag.immortal113, %tag.current115
  br i1 %tag.fast.ok116, label %str_ok112, label %tag.slow_check117

str_ok112:                                        ; preds = %tag.slow_check117, %choice.exit90
  %cmptmp118 = icmp sgt i64 %str.len.query110, 0
  br i1 %cmptmp118, label %choice.then119, label %choice.exit120

tag.slow_check117:                                ; preds = %choice.exit90
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag111)
  br label %str_ok112

choice.then119:                                   ; preds = %str_ok112
  %arena.cur121 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr %builder.freeze, ptr %pay.gep, align 8
  %a.null = icmp eq ptr %"var.cur_parts'.0", null
  br i1 %a.null, label %a.create, label %a.check

choice.exit120:                                   ; preds = %a.store, %str_ok112
  %"var.cur_parts'.2" = phi ptr [ %"var.cur_parts'.3", %a.store ], [ %"var.cur_parts'.0", %str_ok112 ]
  %a.null137 = icmp eq ptr %"var.cur_parts'.2", null
  br i1 %a.null137, label %a.create138, label %a.after139

a.create:                                         ; preds = %choice.then119
  %arena.cur123 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 24)
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 128)
  store i64 0, ptr %a.create124, align 8
  %a.data.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create124, i32 0, i32 1
  store ptr %a.buf126, ptr %a.data.gep128, align 8
  %a.cap.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create124, i32 0, i32 2
  store i64 16, ptr %a.cap.gep129, align 8
  br label %a.check

a.check:                                          ; preds = %choice.then119, %a.create
  %"var.cur_parts'.3" = phi ptr [ %a.create124, %a.create ], [ %"var.cur_parts'.0", %choice.then119 ]
  %a.len130 = load i64, ptr %"var.cur_parts'.3", align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.3", i32 0, i32 2
  %a.cap131 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len130, %a.cap131
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %"var.cur_parts'.3")
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.3", i32 0, i32 1
  %a.cur.data132 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len133 = load i64, ptr %"var.cur_parts'.3", align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data132, i64 %a.cur.len133
  %slot.p2i = ptrtoint ptr %enum.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len133, 1
  store i64 %a.next.len, ptr %"var.cur_parts'.3", align 8
  br label %choice.exit120

a.create138:                                      ; preds = %choice.exit120
  %arena.cur140 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 24)
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 128)
  store i64 0, ptr %a.create141, align 8
  %a.data.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 1
  store ptr %a.buf143, ptr %a.data.gep145, align 8
  %a.cap.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 2
  store i64 16, ptr %a.cap.gep146, align 8
  br label %a.after139

a.after139:                                       ; preds = %a.create138, %choice.exit120
  %"var.cur_parts'.4" = phi ptr [ %a.create141, %a.create138 ], [ %"var.cur_parts'.2", %choice.exit120 ]
  %arena.cur151 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i64, i1, i64 }, ptr null, i32 1) to i64))
  store ptr %"var.cur_parts'.4", ptr %rec.alloc, align 8
  %rec.fld152 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i1 false, ptr %rec.fld152, align 1
  %rec.fld153 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %"var.cur_line_num'.0", ptr %rec.fld153, align 8
  %rec.fld154 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld154, align 1
  %rec.fld155 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %"var.cur_indent'.0", ptr %rec.fld155, align 8
  %a.null157 = icmp eq ptr %var.lines.0, null
  br i1 %a.null157, label %a.create158, label %a.check168

a.create158:                                      ; preds = %a.after139
  %arena.cur160 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 24)
  %arena.cur162 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf163 = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 128)
  store i64 0, ptr %a.create161, align 8
  %a.data.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create161, i32 0, i32 1
  store ptr %a.buf163, ptr %a.data.gep165, align 8
  %a.cap.gep166 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create161, i32 0, i32 2
  store i64 16, ptr %a.cap.gep166, align 8
  br label %a.check168

a.check168:                                       ; preds = %a.after139, %a.create158
  %var.lines.3 = phi ptr [ %a.create161, %a.create158 ], [ %var.lines.0, %a.after139 ]
  %a.len172 = load i64, ptr %var.lines.3, align 8
  %a.cap173 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.lines.3, i32 0, i32 2
  %a.cap174 = load i64, ptr %a.cap173, align 8
  %a.needs.grow175 = icmp eq i64 %a.len172, %a.cap174
  br i1 %a.needs.grow175, label %a.grow169, label %a.store170

a.grow169:                                        ; preds = %a.check168
  call void @dva_array_grow(ptr %var.lines.3)
  br label %a.store170

a.store170:                                       ; preds = %a.grow169, %a.check168
  %a.cur.data176 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.lines.3, i32 0, i32 1
  %a.cur.data177 = load ptr, ptr %a.cur.data176, align 8
  %a.cur.len179 = load i64, ptr %var.lines.3, align 8
  %a.elem.gep180 = getelementptr i64, ptr %a.cur.data177, i64 %a.cur.len179
  %slot.p2i181 = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i181, ptr %a.elem.gep180, align 8
  %a.next.len182 = add i64 %a.cur.len179, 1
  store i64 %a.next.len182, ptr %var.lines.3, align 8
  br label %loop.exit.330

b.rn.new.len192:                                  ; preds = %choice.else
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap195 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap195, %sum190
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort193:                            ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.rn.new.len192
  %b.cap2 = mul i64 %b.cap195, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum190
  %b.new.cap = select i1 %b.cap.need, i64 %sum190, i64 %b.cap.grow
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2197 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum198 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf199 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf199, label %str_overflow_abort201, label %b.new.buf.len2200

b.grow_done:                                      ; preds = %b.rn.new.len192, %b.new.buf.len2200
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data204 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data204, i64 %b.rn.cur.len189
  store i8 34, ptr %b.rn.dst, align 1
  %br.nul = getelementptr i8, ptr %b.rn.data204, i64 %sum190
  store i8 0, ptr %br.nul, align 1
  store i64 %sum190, ptr %"var.cur_text'.0", align 8
  br label %choice.exit40

b.new.buf.len2200:                                ; preds = %b.grow2
  %arena.cur203 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 %sum198)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2197, i64 %b.rn.cur.len189, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.rn.cur.len189
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.cur.data2, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.grow_done

str_overflow_abort201:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case206:                                   ; preds = %choice.exit31
  %call.res210 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext211 = sext i32 %call.res210 to i64
  %cmptmp212 = icmp eq i64 %coerce.sext211, 10
  br i1 %cmptmp212, label %choice.then222, label %or.335.else

or.335.else:                                      ; preds = %choice.case206
  %call.res214 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext215 = sext i32 %call.res214 to i64
  %cmptmp216 = icmp eq i64 %coerce.sext215, 13
  br i1 %cmptmp216, label %and.336.then, label %choice.else223

and.336.then:                                     ; preds = %or.335.else
  %call.res218 = call i32 @"lexer::pk_off"(ptr %0, i64 2)
  %coerce.sext219 = sext i32 %call.res218 to i64
  %cmptmp220 = icmp eq i64 %coerce.sext219, 10
  br i1 %cmptmp220, label %choice.then222, label %choice.else223

choice.then222:                                   ; preds = %choice.case206, %and.336.then
  %call.res227 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res228 = call i32 @"lexer::adv"(ptr %0, i32 %call.res227)
  %call.res230 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %coerce.sext231 = sext i32 %call.res230 to i64
  %cmptmp232 = icmp eq i64 %coerce.sext231, 13
  br i1 %cmptmp232, label %choice.then233, label %choice.exit234

choice.else223:                                   ; preds = %or.335.else, %and.336.then
  br i1 %4, label %and.337.then, label %choice.else411

choice.then233:                                   ; preds = %choice.then222
  %call.res237 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res238 = call i32 @"lexer::adv"(ptr %0, i32 %call.res237)
  br label %choice.exit234

choice.exit234:                                   ; preds = %choice.then233, %choice.then222
  %call.res241 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res242 = call i32 @"lexer::adv"(ptr %0, i32 %call.res241)
  %b.len244 = load i64, ptr %"var.cur_text'.0", align 8
  %cmptmp245 = icmp sgt i64 %b.len244, 0
  br i1 %cmptmp245, label %choice.then246, label %choice.exit247

choice.then246:                                   ; preds = %choice.exit234
  %arena.cur248 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 16)
  store i64 0, ptr %enum.alloc249, align 8
  %pay.gep251 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc249, i32 0, i32 1
  %b.freeze.len254 = load i64, ptr %"var.cur_text'.0", align 8
  %b.freeze.data255 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.freeze.data256 = load ptr, ptr %b.freeze.data255, align 8
  %b.freeze.arena257 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep258 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena257, i32 0, i32 1
  %b.freeze.nc259 = load i64, ptr %b.freeze.nc.gep258, align 8
  %b.freeze.has.chunk260 = icmp sgt i64 %b.freeze.nc259, 0
  br i1 %b.freeze.has.chunk260, label %b.freeze.check261, label %b.freeze.done263

choice.exit247:                                   ; preds = %a.store308, %choice.exit234
  %"var.cur_parts'.6" = phi ptr [ %"var.cur_parts'.7", %a.store308 ], [ %"var.cur_parts'.0", %choice.exit234 ]
  %a.null324 = icmp eq ptr %"var.cur_parts'.6", null
  br i1 %a.null324, label %a.create325, label %a.after326

b.freeze.check261:                                ; preds = %choice.then246
  %b.freeze.last.idx264 = sub nuw nsw i64 %b.freeze.nc259, 1
  %b.freeze.chunks.gep265 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena257, i32 0, i32 3
  %b.freeze.chunk.slot266 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep265, i64 0, i64 %b.freeze.last.idx264
  %b.freeze.last.chunk267 = load ptr, ptr %b.freeze.chunk.slot266, align 8
  %b.freeze.off.gep268 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena257, i32 0, i32 2
  %b.freeze.off269 = load i64, ptr %b.freeze.off.gep268, align 8
  %b.freeze.bump270 = getelementptr i8, ptr %b.freeze.last.chunk267, i64 %b.freeze.off269
  %b.freeze.cap272 = load i64, ptr %b.freeze.arena257, align 8
  %b.freeze.chunk.end273 = getelementptr i8, ptr %b.freeze.last.chunk267, i64 %b.freeze.cap272
  %b.freeze.ge.chunk274 = icmp uge ptr %b.freeze.data256, %b.freeze.last.chunk267
  %b.freeze.lt.end275 = icmp ult ptr %b.freeze.data256, %b.freeze.chunk.end273
  %b.freeze.in.chunk276 = and i1 %b.freeze.ge.chunk274, %b.freeze.lt.end275
  %b.freeze.ge.bump277 = icmp uge ptr %b.freeze.data256, %b.freeze.bump270
  %b.freeze.reaped278 = and i1 %b.freeze.in.chunk276, %b.freeze.ge.bump277
  br i1 %b.freeze.reaped278, label %b.freeze.copy262, label %b.freeze.done263

b.freeze.copy262:                                 ; preds = %b.freeze.check261
  %b.freeze.alen279 = add i64 %b.freeze.len254, 1
  %b.freeze.fresh281 = call ptr @dva_arena_alloc(ptr %b.freeze.arena257, i64 %b.freeze.alen279)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh281, ptr align 1 %b.freeze.data256, i64 %b.freeze.len254, i1 false)
  %b.freeze.nul282 = getelementptr i8, ptr %b.freeze.fresh281, i64 %b.freeze.len254
  store i8 0, ptr %b.freeze.nul282, align 1
  br label %b.freeze.done263

b.freeze.done263:                                 ; preds = %b.freeze.copy262, %b.freeze.check261, %choice.then246
  %b.freeze.data283 = phi ptr [ %b.freeze.data256, %choice.then246 ], [ %b.freeze.data256, %b.freeze.check261 ], [ %b.freeze.fresh281, %b.freeze.copy262 ]
  %arena.cur284 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze285 = call ptr @dva_arena_alloc(ptr %arena.cur284, i64 16)
  %str.tag.gen287 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift288 = shl i64 %str.tag.gen287, 48
  %str.tagged.len289 = or i64 %b.freeze.len254, %str.tag.shift288
  store i64 %str.tagged.len289, ptr %builder.freeze285, align 8
  %str.build.data.gep290 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze285, i32 0, i32 1
  store ptr %b.freeze.data283, ptr %str.build.data.gep290, align 8
  store i64 0, ptr %"var.cur_text'.0", align 8
  store ptr null, ptr %b.freeze.data255, align 8
  %b.freeze.rst.cap293 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap293, align 8
  store ptr %builder.freeze285, ptr %pay.gep251, align 8
  %a.null295 = icmp eq ptr %"var.cur_parts'.0", null
  br i1 %a.null295, label %a.create296, label %a.check306

a.create296:                                      ; preds = %b.freeze.done263
  %arena.cur298 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create299 = call ptr @dva_arena_alloc(ptr %arena.cur298, i64 24)
  %arena.cur300 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 128)
  store i64 0, ptr %a.create299, align 8
  %a.data.gep303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create299, i32 0, i32 1
  store ptr %a.buf301, ptr %a.data.gep303, align 8
  %a.cap.gep304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create299, i32 0, i32 2
  store i64 16, ptr %a.cap.gep304, align 8
  br label %a.check306

a.check306:                                       ; preds = %b.freeze.done263, %a.create296
  %"var.cur_parts'.7" = phi ptr [ %a.create299, %a.create296 ], [ %"var.cur_parts'.0", %b.freeze.done263 ]
  %a.len310 = load i64, ptr %"var.cur_parts'.7", align 8
  %a.cap311 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.7", i32 0, i32 2
  %a.cap312 = load i64, ptr %a.cap311, align 8
  %a.needs.grow313 = icmp eq i64 %a.len310, %a.cap312
  br i1 %a.needs.grow313, label %a.grow307, label %a.store308

a.grow307:                                        ; preds = %a.check306
  call void @dva_array_grow(ptr %"var.cur_parts'.7")
  br label %a.store308

a.store308:                                       ; preds = %a.grow307, %a.check306
  %a.cur.data314 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.7", i32 0, i32 1
  %a.cur.data315 = load ptr, ptr %a.cur.data314, align 8
  %a.cur.len317 = load i64, ptr %"var.cur_parts'.7", align 8
  %a.elem.gep318 = getelementptr i64, ptr %a.cur.data315, i64 %a.cur.len317
  %slot.p2i319 = ptrtoint ptr %enum.alloc249 to i64
  store i64 %slot.p2i319, ptr %a.elem.gep318, align 8
  %a.next.len320 = add i64 %a.cur.len317, 1
  store i64 %a.next.len320, ptr %"var.cur_parts'.7", align 8
  br label %choice.exit247

a.create325:                                      ; preds = %choice.exit247
  %arena.cur327 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create328 = call ptr @dva_arena_alloc(ptr %arena.cur327, i64 24)
  %arena.cur329 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf330 = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 128)
  store i64 0, ptr %a.create328, align 8
  %a.data.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create328, i32 0, i32 1
  store ptr %a.buf330, ptr %a.data.gep332, align 8
  %a.cap.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create328, i32 0, i32 2
  store i64 16, ptr %a.cap.gep333, align 8
  br label %a.after326

a.after326:                                       ; preds = %a.create325, %choice.exit247
  %"var.cur_parts'.8" = phi ptr [ %a.create328, %a.create325 ], [ %"var.cur_parts'.6", %choice.exit247 ]
  %arena.cur338 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc339 = call ptr @dva_arena_alloc(ptr %arena.cur338, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i64, i1, i64 }, ptr null, i32 1) to i64))
  store ptr %"var.cur_parts'.8", ptr %rec.alloc339, align 8
  %rec.fld341 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc339, i32 0, i32 1
  store i1 %"var.cur_is_blank'.0", ptr %rec.fld341, align 1
  %rec.fld342 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc339, i32 0, i32 2
  store i64 %"var.cur_line_num'.0", ptr %rec.fld342, align 8
  %rec.fld343 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc339, i32 0, i32 3
  store i1 true, ptr %rec.fld343, align 1
  %rec.fld344 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc339, i32 0, i32 4
  store i64 %"var.cur_indent'.0", ptr %rec.fld344, align 8
  %a.null346 = icmp eq ptr %var.lines.0, null
  br i1 %a.null346, label %a.create347, label %a.check357

a.create347:                                      ; preds = %a.after326
  %arena.cur349 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create350 = call ptr @dva_arena_alloc(ptr %arena.cur349, i64 24)
  %arena.cur351 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 128)
  store i64 0, ptr %a.create350, align 8
  %a.data.gep354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create350, i32 0, i32 1
  store ptr %a.buf352, ptr %a.data.gep354, align 8
  %a.cap.gep355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create350, i32 0, i32 2
  store i64 16, ptr %a.cap.gep355, align 8
  br label %a.check357

a.check357:                                       ; preds = %a.after326, %a.create347
  %var.lines.5 = phi ptr [ %a.create350, %a.create347 ], [ %var.lines.0, %a.after326 ]
  %a.len361 = load i64, ptr %var.lines.5, align 8
  %a.cap362 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.lines.5, i32 0, i32 2
  %a.cap363 = load i64, ptr %a.cap362, align 8
  %a.needs.grow364 = icmp eq i64 %a.len361, %a.cap363
  br i1 %a.needs.grow364, label %a.grow358, label %a.store359

a.grow358:                                        ; preds = %a.check357
  call void @dva_array_grow(ptr %var.lines.5)
  br label %a.store359

a.store359:                                       ; preds = %a.grow358, %a.check357
  %a.cur.data365 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.lines.5, i32 0, i32 1
  %a.cur.data366 = load ptr, ptr %a.cur.data365, align 8
  %a.cur.len368 = load i64, ptr %var.lines.5, align 8
  %a.elem.gep369 = getelementptr i64, ptr %a.cur.data366, i64 %a.cur.len368
  %slot.p2i370 = ptrtoint ptr %rec.alloc339 to i64
  store i64 %slot.p2i370, ptr %a.elem.gep369, align 8
  %a.next.len371 = add i64 %a.cur.len368, 1
  store i64 %a.next.len371, ptr %var.lines.5, align 8
  %arena.cur373 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new374 = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 24)
  %arena.cur375 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf376 = call ptr @dva_arena_alloc(ptr %arena.cur375, i64 128)
  store i64 0, ptr %a.new374, align 8
  %a.data.gep378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new374, i32 0, i32 1
  store ptr %a.buf376, ptr %a.data.gep378, align 8
  %a.cap.gep379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new374, i32 0, i32 2
  store i64 16, ptr %a.cap.gep379, align 8
  %arena.cur380 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new381 = call ptr @dva_arena_alloc(ptr %arena.cur380, i64 24)
  %b.data.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new381, i32 0, i32 1
  %b.cap.gep384 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new381, i32 0, i32 2
  %arena.cur391 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf392 = call ptr @dva_arena_alloc(ptr %arena.cur391, i64 257)
  store i8 0, ptr %b.buf392, align 1
  store i64 0, ptr %builder.new381, align 8
  store ptr %b.buf392, ptr %b.data.gep382, align 8
  store i64 256, ptr %b.cap.gep384, align 8
  %fld.load396 = load i64, ptr %fld.gep, align 8
  br label %choice.exit40

and.337.then:                                     ; preds = %choice.else223
  %call.res399 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext400 = sext i32 %call.res399 to i64
  %cmptmp401 = icmp eq i64 %coerce.sext400, 34
  br i1 %cmptmp401, label %and.338.then, label %choice.else411

and.338.then:                                     ; preds = %and.337.then
  %call.res403 = call i32 @"lexer::pk_off"(ptr %0, i64 2)
  %coerce.sext404 = sext i32 %call.res403 to i64
  %cmptmp405 = icmp eq i64 %coerce.sext404, 34
  br i1 %cmptmp405, label %and.339.then, label %choice.else411

and.339.then:                                     ; preds = %and.338.then
  %call.res407 = call i32 @"lexer::pk_off"(ptr %0, i64 3)
  %coerce.sext408 = sext i32 %call.res407 to i64
  %cmptmp409 = icmp eq i64 %coerce.sext408, 34
  br i1 %cmptmp409, label %choice.then410, label %choice.else411

choice.then410:                                   ; preds = %and.339.then
  %call.res415 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res416 = call i32 @"lexer::adv"(ptr %0, i32 %call.res415)
  %call.res419 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res420 = call i32 @"lexer::adv"(ptr %0, i32 %call.res419)
  %call.res423 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res424 = call i32 @"lexer::adv"(ptr %0, i32 %call.res423)
  %call.res427 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res428 = call i32 @"lexer::adv"(ptr %0, i32 %call.res427)
  %b.app.cur.len431 = load i64, ptr %"var.cur_text'.0", align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len431, i64 3)
  %sum432 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf433 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf433, label %str_overflow_abort435, label %b.app.new.len434

choice.else411:                                   ; preds = %and.338.then, %choice.else223, %and.337.then, %and.339.then
  %call.res466 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext467 = sext i32 %call.res466 to i64
  %cmptmp468 = icmp eq i64 %coerce.sext467, 36
  br i1 %cmptmp468, label %choice.then469, label %choice.else470

b.app.new.len434:                                 ; preds = %choice.then410
  %b.cap437 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap438 = load i64, ptr %b.cap437, align 8
  %b.need.grow439 = icmp slt i64 %b.cap438, %sum432
  br i1 %b.need.grow439, label %b.grow2440, label %b.grow_done442

str_overflow_abort435:                            ; preds = %choice.then410
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2440:                                       ; preds = %b.app.new.len434
  %b.cap2443 = mul i64 %b.cap438, 2
  %b.cap.small444 = icmp slt i64 %b.cap2443, 16
  %b.cap.grow445 = select i1 %b.cap.small444, i64 16, i64 %b.cap2443
  %b.cap.need446 = icmp slt i64 %b.cap.grow445, %sum432
  %b.new.cap447 = select i1 %b.cap.need446, i64 %sum432, i64 %b.cap.grow445
  %b.cur.data2450 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2451 = load ptr, ptr %b.cur.data2450, align 8
  %b.new.buf.len2452 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap447, i64 1)
  %sum453 = extractvalue { i64, i1 } %b.new.buf.len2452, 0
  %ovf454 = extractvalue { i64, i1 } %b.new.buf.len2452, 1
  br i1 %ovf454, label %str_overflow_abort456, label %b.new.buf.len2455

b.grow_done442:                                   ; preds = %b.app.new.len434, %b.new.buf.len2455
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.app.data463 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data463, i64 %b.app.cur.len431
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 @str.114, i64 3, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data463, i64 %sum432
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum432, ptr %"var.cur_text'.0", align 8
  br label %choice.exit40

b.new.buf.len2455:                                ; preds = %b.grow2440
  %arena.cur458 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2459 = call ptr @dva_arena_alloc(ptr %arena.cur458, i64 %sum453)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2459, ptr align 1 %b.cur.data2451, i64 %b.app.cur.len431, i1 false)
  %b.grow2.nul460 = getelementptr i8, ptr %b.new.buf2459, i64 %b.app.cur.len431
  store i8 0, ptr %b.grow2.nul460, align 1
  store ptr %b.new.buf2459, ptr %b.cur.data2450, align 8
  store i64 %b.new.cap447, ptr %b.cap437, align 8
  br label %b.grow_done442

str_overflow_abort456:                            ; preds = %b.grow2440
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then469:                                   ; preds = %choice.else411
  %call.res474 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res475 = call i32 @"lexer::adv"(ptr %0, i32 %call.res474)
  %call.res478 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res479 = call i32 @"lexer::adv"(ptr %0, i32 %call.res478)
  %b.rn.cur.len482 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len483 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len482, i64 1)
  %sum484 = extractvalue { i64, i1 } %b.rn.new.len483, 0
  %ovf485 = extractvalue { i64, i1 } %b.rn.new.len483, 1
  br i1 %ovf485, label %str_overflow_abort487, label %b.rn.new.len486

choice.else470:                                   ; preds = %choice.else411
  %call.res527 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext528 = sext i32 %call.res527 to i64
  %cmptmp529 = icmp eq i64 %coerce.sext528, 34
  br i1 %cmptmp529, label %choice.then530, label %choice.else531

b.rn.new.len486:                                  ; preds = %choice.then469
  %b.cap489 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap490 = load i64, ptr %b.cap489, align 8
  %b.need.grow491 = icmp slt i64 %b.cap490, %sum484
  br i1 %b.need.grow491, label %b.grow2492, label %b.grow_done494

str_overflow_abort487:                            ; preds = %choice.then469
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2492:                                       ; preds = %b.rn.new.len486
  %b.cap2495 = mul i64 %b.cap490, 2
  %b.cap.small496 = icmp slt i64 %b.cap2495, 16
  %b.cap.grow497 = select i1 %b.cap.small496, i64 16, i64 %b.cap2495
  %b.cap.need498 = icmp slt i64 %b.cap.grow497, %sum484
  %b.new.cap499 = select i1 %b.cap.need498, i64 %sum484, i64 %b.cap.grow497
  %b.cur.data2502 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2503 = load ptr, ptr %b.cur.data2502, align 8
  %b.new.buf.len2504 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap499, i64 1)
  %sum505 = extractvalue { i64, i1 } %b.new.buf.len2504, 0
  %ovf506 = extractvalue { i64, i1 } %b.new.buf.len2504, 1
  br i1 %ovf506, label %str_overflow_abort508, label %b.new.buf.len2507

b.grow_done494:                                   ; preds = %b.rn.new.len486, %b.new.buf.len2507
  %b.rn.data515 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data516 = load ptr, ptr %b.rn.data515, align 8
  %b.rn.dst517 = getelementptr i8, ptr %b.rn.data516, i64 %b.rn.cur.len482
  store i8 36, ptr %b.rn.dst517, align 1
  %br.nul524 = getelementptr i8, ptr %b.rn.data516, i64 %sum484
  store i8 0, ptr %br.nul524, align 1
  store i64 %sum484, ptr %"var.cur_text'.0", align 8
  br label %choice.exit40

b.new.buf.len2507:                                ; preds = %b.grow2492
  %arena.cur510 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2511 = call ptr @dva_arena_alloc(ptr %arena.cur510, i64 %sum505)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2511, ptr align 1 %b.cur.data2503, i64 %b.rn.cur.len482, i1 false)
  %b.grow2.nul512 = getelementptr i8, ptr %b.new.buf2511, i64 %b.rn.cur.len482
  store i8 0, ptr %b.grow2.nul512, align 1
  store ptr %b.new.buf2511, ptr %b.cur.data2502, align 8
  store i64 %b.new.cap499, ptr %b.cap489, align 8
  br label %b.grow_done494

str_overflow_abort508:                            ; preds = %b.grow2492
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then530:                                   ; preds = %choice.else470
  %call.res535 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res536 = call i32 @"lexer::adv"(ptr %0, i32 %call.res535)
  %call.res539 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res540 = call i32 @"lexer::adv"(ptr %0, i32 %call.res539)
  %b.rn.cur.len543 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len544 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len543, i64 1)
  %sum545 = extractvalue { i64, i1 } %b.rn.new.len544, 0
  %ovf546 = extractvalue { i64, i1 } %b.rn.new.len544, 1
  br i1 %ovf546, label %str_overflow_abort548, label %b.rn.new.len547

choice.else531:                                   ; preds = %choice.else470
  %call.res589 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res590 = call i32 @"lexer::adv"(ptr %0, i32 %call.res589)
  %call.res592 = call { i1, i64 } @"lexer::scan_esc_byte_opt"(ptr %0)
  %ram.tag = extractvalue { i1, i64 } %call.res592, 0
  br i1 %ram.tag, label %choice.then593, label %choice.else594

b.rn.new.len547:                                  ; preds = %choice.then530
  %b.cap550 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap551 = load i64, ptr %b.cap550, align 8
  %b.need.grow552 = icmp slt i64 %b.cap551, %sum545
  br i1 %b.need.grow552, label %b.grow2553, label %b.grow_done555

str_overflow_abort548:                            ; preds = %choice.then530
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2553:                                       ; preds = %b.rn.new.len547
  %b.cap2556 = mul i64 %b.cap551, 2
  %b.cap.small557 = icmp slt i64 %b.cap2556, 16
  %b.cap.grow558 = select i1 %b.cap.small557, i64 16, i64 %b.cap2556
  %b.cap.need559 = icmp slt i64 %b.cap.grow558, %sum545
  %b.new.cap560 = select i1 %b.cap.need559, i64 %sum545, i64 %b.cap.grow558
  %b.cur.data2563 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2564 = load ptr, ptr %b.cur.data2563, align 8
  %b.new.buf.len2565 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap560, i64 1)
  %sum566 = extractvalue { i64, i1 } %b.new.buf.len2565, 0
  %ovf567 = extractvalue { i64, i1 } %b.new.buf.len2565, 1
  br i1 %ovf567, label %str_overflow_abort569, label %b.new.buf.len2568

b.grow_done555:                                   ; preds = %b.rn.new.len547, %b.new.buf.len2568
  %b.rn.data576 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data577 = load ptr, ptr %b.rn.data576, align 8
  %b.rn.dst578 = getelementptr i8, ptr %b.rn.data577, i64 %b.rn.cur.len543
  store i8 34, ptr %b.rn.dst578, align 1
  %br.nul585 = getelementptr i8, ptr %b.rn.data577, i64 %sum545
  store i8 0, ptr %br.nul585, align 1
  store i64 %sum545, ptr %"var.cur_text'.0", align 8
  br label %choice.exit40

b.new.buf.len2568:                                ; preds = %b.grow2553
  %arena.cur571 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2572 = call ptr @dva_arena_alloc(ptr %arena.cur571, i64 %sum566)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2572, ptr align 1 %b.cur.data2564, i64 %b.rn.cur.len543, i1 false)
  %b.grow2.nul573 = getelementptr i8, ptr %b.new.buf2572, i64 %b.rn.cur.len543
  store i8 0, ptr %b.grow2.nul573, align 1
  store ptr %b.new.buf2572, ptr %b.cur.data2563, align 8
  store i64 %b.new.cap560, ptr %b.cap550, align 8
  br label %b.grow_done555

str_overflow_abort569:                            ; preds = %b.grow2553
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then593:                                   ; preds = %choice.else531
  %ram.pay = extractvalue { i1, i64 } %call.res592, 1
  %b.b.ge0 = icmp sge i64 %ram.pay, 0
  %b.b.le255 = icmp sle i64 %ram.pay, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else594:                                   ; preds = %choice.else531
  %call.res618 = call i32 @"lexer::scan_esc_rune"(ptr %0)
  %coerce.sext621 = sext i32 %call.res618 to i64
  %br.cmp1622 = icmp slt i64 %coerce.sext621, 128
  %br.cmp2623 = icmp slt i64 %coerce.sext621, 2048
  %br.cmp3624 = icmp slt i64 %coerce.sext621, 65536
  %br.w3625 = select i1 %br.cmp3624, i64 3, i64 4
  %br.w2626 = select i1 %br.cmp2623, i64 2, i64 %br.w3625
  %br.width627 = select i1 %br.cmp1622, i64 1, i64 %br.w2626
  %b.rn.cur.len629 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len630 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len629, i64 %br.width627)
  %sum631 = extractvalue { i64, i1 } %b.rn.new.len630, 0
  %ovf632 = extractvalue { i64, i1 } %b.rn.new.len630, 1
  br i1 %ovf632, label %str_overflow_abort634, label %b.rn.new.len633

b.byte_ok:                                        ; preds = %choice.then593
  %b.byte.i8 = trunc i64 %ram.pay to i8
  %b.len601 = load i64, ptr %"var.cur_text'.0", align 8
  %b.cap602 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap603 = load i64, ptr %b.cap602, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.data604 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len601, %b.cap603
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %choice.then593
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2605 = mul i64 %b.cap603, 2
  %b.cap.small606 = icmp slt i64 %b.cap2605, 16
  %b.new.cap607 = select i1 %b.cap.small606, i64 16, i64 %b.cap2605
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap607, i64 1)
  %sum608 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf609 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf609, label %str_overflow_abort611, label %b.new.buf.len610

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len610
  %b.cur.data614 = load ptr, ptr %b.data, align 8
  %b.cur.len615 = load i64, ptr %"var.cur_text'.0", align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data614, i64 %b.cur.len615
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len615, 1
  %b.nul = getelementptr i8, ptr %b.cur.data614, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  store i64 %b.next.len, ptr %"var.cur_text'.0", align 8
  br label %choice.exit40

b.new.buf.len610:                                 ; preds = %b.grow
  %arena.cur613 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur613, i64 %sum608)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data604, i64 %b.len601, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len601
  store i8 0, ptr %b.grow.nul, align 1
  store ptr %b.new.buf, ptr %b.data, align 8
  store i64 %b.new.cap607, ptr %b.cap602, align 8
  br label %b.push_done

str_overflow_abort611:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len633:                                  ; preds = %choice.else594
  %b.cap636 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap637 = load i64, ptr %b.cap636, align 8
  %b.need.grow638 = icmp slt i64 %b.cap637, %sum631
  br i1 %b.need.grow638, label %b.grow2639, label %b.grow_done641

str_overflow_abort634:                            ; preds = %choice.else594
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2639:                                       ; preds = %b.rn.new.len633
  %b.cap2642 = mul i64 %b.cap637, 2
  %b.cap.small643 = icmp slt i64 %b.cap2642, 16
  %b.cap.grow644 = select i1 %b.cap.small643, i64 16, i64 %b.cap2642
  %b.cap.need645 = icmp slt i64 %b.cap.grow644, %sum631
  %b.new.cap646 = select i1 %b.cap.need645, i64 %sum631, i64 %b.cap.grow644
  %b.cur.data2649 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2650 = load ptr, ptr %b.cur.data2649, align 8
  %b.new.buf.len2651 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap646, i64 1)
  %sum652 = extractvalue { i64, i1 } %b.new.buf.len2651, 0
  %ovf653 = extractvalue { i64, i1 } %b.new.buf.len2651, 1
  br i1 %ovf653, label %str_overflow_abort655, label %b.new.buf.len2654

b.grow_done641:                                   ; preds = %b.rn.new.len633, %b.new.buf.len2654
  %b.rn.data662 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data663 = load ptr, ptr %b.rn.data662, align 8
  %b.rn.dst664 = getelementptr i8, ptr %b.rn.data663, i64 %b.rn.cur.len629
  br i1 %br.cmp1622, label %br.b1.342, label %br.c2.342

b.new.buf.len2654:                                ; preds = %b.grow2639
  %arena.cur657 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2658 = call ptr @dva_arena_alloc(ptr %arena.cur657, i64 %sum652)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2658, ptr align 1 %b.cur.data2650, i64 %b.rn.cur.len629, i1 false)
  %b.grow2.nul659 = getelementptr i8, ptr %b.new.buf2658, i64 %b.rn.cur.len629
  store i8 0, ptr %b.grow2.nul659, align 1
  store ptr %b.new.buf2658, ptr %b.cur.data2649, align 8
  store i64 %b.new.cap646, ptr %b.cap636, align 8
  br label %b.grow_done641

str_overflow_abort655:                            ; preds = %b.grow2639
  call void @dva_abort_str_overflow_msg()
  unreachable

br.b1.342:                                        ; preds = %b.grow_done641
  %br.b1.0665 = trunc i64 %coerce.sext621 to i8
  store i8 %br.b1.0665, ptr %b.rn.dst664, align 1
  br label %br.done.342

br.c2.342:                                        ; preds = %b.grow_done641
  br i1 %br.cmp2623, label %br.b2.342, label %br.c3.342

br.b2.342:                                        ; preds = %br.c2.342
  %br.sh6666 = lshr i64 %coerce.sext621, 6
  %br.b2.0667 = or i64 %br.sh6666, 192
  %br.b2.0t668 = trunc i64 %br.b2.0667 to i8
  %br.m6669 = and i64 %coerce.sext621, 63
  %br.b2.1670 = or i64 %br.m6669, 128
  %br.b2.1t671 = trunc i64 %br.b2.1670 to i8
  store i8 %br.b2.0t668, ptr %b.rn.dst664, align 1
  %br.dst1672 = getelementptr i8, ptr %b.rn.dst664, i64 1
  store i8 %br.b2.1t671, ptr %br.dst1672, align 1
  br label %br.done.342

br.c3.342:                                        ; preds = %br.c2.342
  br i1 %br.cmp3624, label %br.b3.342, label %br.b4.342

br.b3.342:                                        ; preds = %br.c3.342
  %br.sh12673 = lshr i64 %coerce.sext621, 12
  %br.b3.0674 = or i64 %br.sh12673, 224
  %br.b3.0t675 = trunc i64 %br.b3.0674 to i8
  %br.sh6.3676 = lshr i64 %coerce.sext621, 6
  %br.m6.3677 = and i64 %br.sh6.3676, 63
  %br.b3.1678 = or i64 %br.m6.3677, 128
  %br.b3.1t679 = trunc i64 %br.b3.1678 to i8
  %br.mend680 = and i64 %coerce.sext621, 63
  %br.b3.2681 = or i64 %br.mend680, 128
  %br.b3.2t682 = trunc i64 %br.b3.2681 to i8
  store i8 %br.b3.0t675, ptr %b.rn.dst664, align 1
  %br.dst1.3683 = getelementptr i8, ptr %b.rn.dst664, i64 1
  store i8 %br.b3.1t679, ptr %br.dst1.3683, align 1
  %br.dst2.3684 = getelementptr i8, ptr %b.rn.dst664, i64 2
  store i8 %br.b3.2t682, ptr %br.dst2.3684, align 1
  br label %br.done.342

br.b4.342:                                        ; preds = %br.c3.342
  %br.sh18685 = lshr i64 %coerce.sext621, 18
  %br.b4.0686 = or i64 %br.sh18685, 240
  %br.b4.0t687 = trunc i64 %br.b4.0686 to i8
  %br.sh12.4688 = lshr i64 %coerce.sext621, 12
  %br.m12.4689 = and i64 %br.sh12.4688, 63
  %br.b4.1690 = or i64 %br.m12.4689, 128
  %br.b4.1t691 = trunc i64 %br.b4.1690 to i8
  %br.sh6.4692 = lshr i64 %coerce.sext621, 6
  %br.m6.4693 = and i64 %br.sh6.4692, 63
  %br.b4.2694 = or i64 %br.m6.4693, 128
  %br.b4.2t695 = trunc i64 %br.b4.2694 to i8
  %br.mend4696 = and i64 %coerce.sext621, 63
  %br.b4.3697 = or i64 %br.mend4696, 128
  %br.b4.3t698 = trunc i64 %br.b4.3697 to i8
  store i8 %br.b4.0t687, ptr %b.rn.dst664, align 1
  %br.dst1.4699 = getelementptr i8, ptr %b.rn.dst664, i64 1
  store i8 %br.b4.1t691, ptr %br.dst1.4699, align 1
  %br.dst2.4700 = getelementptr i8, ptr %b.rn.dst664, i64 2
  store i8 %br.b4.2t695, ptr %br.dst2.4700, align 1
  %br.dst3.4701 = getelementptr i8, ptr %b.rn.dst664, i64 3
  store i8 %br.b4.3t698, ptr %br.dst3.4701, align 1
  br label %br.done.342

br.done.342:                                      ; preds = %br.b4.342, %br.b3.342, %br.b2.342, %br.b1.342
  %br.nul702 = getelementptr i8, ptr %b.rn.data663, i64 %sum631
  store i8 0, ptr %br.nul702, align 1
  store i64 %sum631, ptr %"var.cur_text'.0", align 8
  br label %choice.exit40

choice.case704:                                   ; preds = %choice.exit31
  %call.res708 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext709 = sext i32 %call.res708 to i64
  %cmptmp710 = icmp eq i64 %coerce.sext709, 123
  br i1 %cmptmp710, label %choice.then711, label %choice.else712

choice.then711:                                   ; preds = %choice.case704
  %call.res716 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res717 = call i32 @"lexer::adv"(ptr %0, i32 %call.res716)
  %call.res720 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res721 = call i32 @"lexer::adv"(ptr %0, i32 %call.res720)
  %b.len724 = load i64, ptr %"var.cur_text'.0", align 8
  %cmptmp725 = icmp sgt i64 %b.len724, 0
  br i1 %cmptmp725, label %choice.then726, label %choice.exit727

choice.else712:                                   ; preds = %choice.case704
  %call.res868 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res869 = call i32 @"lexer::adv"(ptr %0, i32 %call.res868)
  %b.rn.cur.len872 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len873 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len872, i64 1)
  %sum874 = extractvalue { i64, i1 } %b.rn.new.len873, 0
  %ovf875 = extractvalue { i64, i1 } %b.rn.new.len873, 1
  br i1 %ovf875, label %str_overflow_abort877, label %b.rn.new.len876

choice.then726:                                   ; preds = %choice.then711
  %arena.cur728 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc729 = call ptr @dva_arena_alloc(ptr %arena.cur728, i64 16)
  store i64 0, ptr %enum.alloc729, align 8
  %pay.gep731 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc729, i32 0, i32 1
  %b.freeze.len734 = load i64, ptr %"var.cur_text'.0", align 8
  %b.freeze.data735 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.freeze.data736 = load ptr, ptr %b.freeze.data735, align 8
  %b.freeze.arena737 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep738 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena737, i32 0, i32 1
  %b.freeze.nc739 = load i64, ptr %b.freeze.nc.gep738, align 8
  %b.freeze.has.chunk740 = icmp sgt i64 %b.freeze.nc739, 0
  br i1 %b.freeze.has.chunk740, label %b.freeze.check741, label %b.freeze.done743

choice.exit727:                                   ; preds = %a.store788, %choice.then711
  %"var.cur_parts'.10" = phi ptr [ %"var.cur_parts'.11", %a.store788 ], [ %"var.cur_parts'.0", %choice.then711 ]
  %arena.cur802 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new803 = call ptr @dva_arena_alloc(ptr %arena.cur802, i64 24)
  %b.data.gep804 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new803, i32 0, i32 1
  %b.cap.gep806 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new803, i32 0, i32 2
  %arena.cur813 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf814 = call ptr @dva_arena_alloc(ptr %arena.cur813, i64 257)
  store i8 0, ptr %b.buf814, align 1
  store i64 0, ptr %builder.new803, align 8
  store ptr %b.buf814, ptr %b.data.gep804, align 8
  store i64 256, ptr %b.cap.gep806, align 8
  %call.res817 = call ptr @"lexer::scan_str_expr"(ptr %0, i1 true)
  %arena.cur818 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc819 = call ptr @dva_arena_alloc(ptr %arena.cur818, i64 16)
  store i64 1, ptr %enum.alloc819, align 8
  %pay.gep821 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc819, i32 0, i32 1
  %a.null824 = icmp eq ptr %call.res817, null
  br i1 %a.null824, label %a.create825, label %a.after826

b.freeze.check741:                                ; preds = %choice.then726
  %b.freeze.last.idx744 = sub nuw nsw i64 %b.freeze.nc739, 1
  %b.freeze.chunks.gep745 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena737, i32 0, i32 3
  %b.freeze.chunk.slot746 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep745, i64 0, i64 %b.freeze.last.idx744
  %b.freeze.last.chunk747 = load ptr, ptr %b.freeze.chunk.slot746, align 8
  %b.freeze.off.gep748 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena737, i32 0, i32 2
  %b.freeze.off749 = load i64, ptr %b.freeze.off.gep748, align 8
  %b.freeze.bump750 = getelementptr i8, ptr %b.freeze.last.chunk747, i64 %b.freeze.off749
  %b.freeze.cap752 = load i64, ptr %b.freeze.arena737, align 8
  %b.freeze.chunk.end753 = getelementptr i8, ptr %b.freeze.last.chunk747, i64 %b.freeze.cap752
  %b.freeze.ge.chunk754 = icmp uge ptr %b.freeze.data736, %b.freeze.last.chunk747
  %b.freeze.lt.end755 = icmp ult ptr %b.freeze.data736, %b.freeze.chunk.end753
  %b.freeze.in.chunk756 = and i1 %b.freeze.ge.chunk754, %b.freeze.lt.end755
  %b.freeze.ge.bump757 = icmp uge ptr %b.freeze.data736, %b.freeze.bump750
  %b.freeze.reaped758 = and i1 %b.freeze.in.chunk756, %b.freeze.ge.bump757
  br i1 %b.freeze.reaped758, label %b.freeze.copy742, label %b.freeze.done743

b.freeze.copy742:                                 ; preds = %b.freeze.check741
  %b.freeze.alen759 = add i64 %b.freeze.len734, 1
  %b.freeze.fresh761 = call ptr @dva_arena_alloc(ptr %b.freeze.arena737, i64 %b.freeze.alen759)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh761, ptr align 1 %b.freeze.data736, i64 %b.freeze.len734, i1 false)
  %b.freeze.nul762 = getelementptr i8, ptr %b.freeze.fresh761, i64 %b.freeze.len734
  store i8 0, ptr %b.freeze.nul762, align 1
  br label %b.freeze.done743

b.freeze.done743:                                 ; preds = %b.freeze.copy742, %b.freeze.check741, %choice.then726
  %b.freeze.data763 = phi ptr [ %b.freeze.data736, %choice.then726 ], [ %b.freeze.data736, %b.freeze.check741 ], [ %b.freeze.fresh761, %b.freeze.copy742 ]
  %arena.cur764 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze765 = call ptr @dva_arena_alloc(ptr %arena.cur764, i64 16)
  %str.tag.gen767 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift768 = shl i64 %str.tag.gen767, 48
  %str.tagged.len769 = or i64 %b.freeze.len734, %str.tag.shift768
  store i64 %str.tagged.len769, ptr %builder.freeze765, align 8
  %str.build.data.gep770 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze765, i32 0, i32 1
  store ptr %b.freeze.data763, ptr %str.build.data.gep770, align 8
  store i64 0, ptr %"var.cur_text'.0", align 8
  store ptr null, ptr %b.freeze.data735, align 8
  %b.freeze.rst.cap773 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap773, align 8
  store ptr %builder.freeze765, ptr %pay.gep731, align 8
  %a.null775 = icmp eq ptr %"var.cur_parts'.0", null
  br i1 %a.null775, label %a.create776, label %a.check786

a.create776:                                      ; preds = %b.freeze.done743
  %arena.cur778 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create779 = call ptr @dva_arena_alloc(ptr %arena.cur778, i64 24)
  %arena.cur780 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf781 = call ptr @dva_arena_alloc(ptr %arena.cur780, i64 128)
  store i64 0, ptr %a.create779, align 8
  %a.data.gep783 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create779, i32 0, i32 1
  store ptr %a.buf781, ptr %a.data.gep783, align 8
  %a.cap.gep784 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create779, i32 0, i32 2
  store i64 16, ptr %a.cap.gep784, align 8
  br label %a.check786

a.check786:                                       ; preds = %b.freeze.done743, %a.create776
  %"var.cur_parts'.11" = phi ptr [ %a.create779, %a.create776 ], [ %"var.cur_parts'.0", %b.freeze.done743 ]
  %a.len790 = load i64, ptr %"var.cur_parts'.11", align 8
  %a.cap791 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.11", i32 0, i32 2
  %a.cap792 = load i64, ptr %a.cap791, align 8
  %a.needs.grow793 = icmp eq i64 %a.len790, %a.cap792
  br i1 %a.needs.grow793, label %a.grow787, label %a.store788

a.grow787:                                        ; preds = %a.check786
  call void @dva_array_grow(ptr %"var.cur_parts'.11")
  br label %a.store788

a.store788:                                       ; preds = %a.grow787, %a.check786
  %a.cur.data794 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.11", i32 0, i32 1
  %a.cur.data795 = load ptr, ptr %a.cur.data794, align 8
  %a.cur.len797 = load i64, ptr %"var.cur_parts'.11", align 8
  %a.elem.gep798 = getelementptr i64, ptr %a.cur.data795, i64 %a.cur.len797
  %slot.p2i799 = ptrtoint ptr %enum.alloc729 to i64
  store i64 %slot.p2i799, ptr %a.elem.gep798, align 8
  %a.next.len800 = add i64 %a.cur.len797, 1
  store i64 %a.next.len800, ptr %"var.cur_parts'.11", align 8
  br label %choice.exit727

a.create825:                                      ; preds = %choice.exit727
  %arena.cur827 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create828 = call ptr @dva_arena_alloc(ptr %arena.cur827, i64 24)
  %arena.cur829 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf830 = call ptr @dva_arena_alloc(ptr %arena.cur829, i64 128)
  store i64 0, ptr %a.create828, align 8
  %a.data.gep832 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create828, i32 0, i32 1
  store ptr %a.buf830, ptr %a.data.gep832, align 8
  %a.cap.gep833 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create828, i32 0, i32 2
  store i64 16, ptr %a.cap.gep833, align 8
  br label %a.after826

a.after826:                                       ; preds = %a.create825, %choice.exit727
  %var.etoks.0 = phi ptr [ %a.create828, %a.create825 ], [ %call.res817, %choice.exit727 ]
  store ptr %var.etoks.0, ptr %pay.gep821, align 8
  %a.null836 = icmp eq ptr %"var.cur_parts'.10", null
  br i1 %a.null836, label %a.create837, label %a.check847

a.create837:                                      ; preds = %a.after826
  %arena.cur839 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create840 = call ptr @dva_arena_alloc(ptr %arena.cur839, i64 24)
  %arena.cur841 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf842 = call ptr @dva_arena_alloc(ptr %arena.cur841, i64 128)
  store i64 0, ptr %a.create840, align 8
  %a.data.gep844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create840, i32 0, i32 1
  store ptr %a.buf842, ptr %a.data.gep844, align 8
  %a.cap.gep845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create840, i32 0, i32 2
  store i64 16, ptr %a.cap.gep845, align 8
  br label %a.check847

a.check847:                                       ; preds = %a.after826, %a.create837
  %"var.cur_parts'.12" = phi ptr [ %a.create840, %a.create837 ], [ %"var.cur_parts'.10", %a.after826 ]
  %a.len851 = load i64, ptr %"var.cur_parts'.12", align 8
  %a.cap852 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.12", i32 0, i32 2
  %a.cap853 = load i64, ptr %a.cap852, align 8
  %a.needs.grow854 = icmp eq i64 %a.len851, %a.cap853
  br i1 %a.needs.grow854, label %a.grow848, label %a.store849

a.grow848:                                        ; preds = %a.check847
  call void @dva_array_grow(ptr %"var.cur_parts'.12")
  br label %a.store849

a.store849:                                       ; preds = %a.grow848, %a.check847
  %a.cur.data855 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.12", i32 0, i32 1
  %a.cur.data856 = load ptr, ptr %a.cur.data855, align 8
  %a.cur.len858 = load i64, ptr %"var.cur_parts'.12", align 8
  %a.elem.gep859 = getelementptr i64, ptr %a.cur.data856, i64 %a.cur.len858
  %slot.p2i860 = ptrtoint ptr %enum.alloc819 to i64
  store i64 %slot.p2i860, ptr %a.elem.gep859, align 8
  %a.next.len861 = add i64 %a.cur.len858, 1
  store i64 %a.next.len861, ptr %"var.cur_parts'.12", align 8
  %fld.load865 = load i64, ptr %fld.gep, align 8
  br label %choice.exit40

b.rn.new.len876:                                  ; preds = %choice.else712
  %b.cap879 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap880 = load i64, ptr %b.cap879, align 8
  %b.need.grow881 = icmp slt i64 %b.cap880, %sum874
  br i1 %b.need.grow881, label %b.grow2882, label %b.grow_done884

str_overflow_abort877:                            ; preds = %choice.else712
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2882:                                       ; preds = %b.rn.new.len876
  %b.cap2885 = mul i64 %b.cap880, 2
  %b.cap.small886 = icmp slt i64 %b.cap2885, 16
  %b.cap.grow887 = select i1 %b.cap.small886, i64 16, i64 %b.cap2885
  %b.cap.need888 = icmp slt i64 %b.cap.grow887, %sum874
  %b.new.cap889 = select i1 %b.cap.need888, i64 %sum874, i64 %b.cap.grow887
  %b.cur.data2892 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2893 = load ptr, ptr %b.cur.data2892, align 8
  %b.new.buf.len2894 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap889, i64 1)
  %sum895 = extractvalue { i64, i1 } %b.new.buf.len2894, 0
  %ovf896 = extractvalue { i64, i1 } %b.new.buf.len2894, 1
  br i1 %ovf896, label %str_overflow_abort898, label %b.new.buf.len2897

b.grow_done884:                                   ; preds = %b.rn.new.len876, %b.new.buf.len2897
  %b.rn.data905 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data906 = load ptr, ptr %b.rn.data905, align 8
  %b.rn.dst907 = getelementptr i8, ptr %b.rn.data906, i64 %b.rn.cur.len872
  store i8 36, ptr %b.rn.dst907, align 1
  %br.nul914 = getelementptr i8, ptr %b.rn.data906, i64 %sum874
  store i8 0, ptr %br.nul914, align 1
  store i64 %sum874, ptr %"var.cur_text'.0", align 8
  br label %choice.exit40

b.new.buf.len2897:                                ; preds = %b.grow2882
  %arena.cur900 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2901 = call ptr @dva_arena_alloc(ptr %arena.cur900, i64 %sum895)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2901, ptr align 1 %b.cur.data2893, i64 %b.rn.cur.len872, i1 false)
  %b.grow2.nul902 = getelementptr i8, ptr %b.new.buf2901, i64 %b.rn.cur.len872
  store i8 0, ptr %b.grow2.nul902, align 1
  store ptr %b.new.buf2901, ptr %b.cur.data2892, align 8
  store i64 %b.new.cap889, ptr %b.cap879, align 8
  br label %b.grow_done884

str_overflow_abort898:                            ; preds = %b.grow2882
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case916:                                   ; preds = %choice.exit31, %choice.exit31
  %coerce.sext921 = sext i32 %call.res38 to i64
  %cmptmp922 = icmp eq i64 %coerce.sext921, 13
  br i1 %cmptmp922, label %choice.then923, label %choice.exit924

choice.next917:                                   ; preds = %choice.exit31
  %call.res1090 = call i32 @"lexer::adv"(ptr %0, i32 %call.res38)
  %coerce.sext1093 = sext i32 %call.res38 to i64
  %br.cmp11094 = icmp slt i64 %coerce.sext1093, 128
  %br.cmp21095 = icmp slt i64 %coerce.sext1093, 2048
  %br.cmp31096 = icmp slt i64 %coerce.sext1093, 65536
  %br.w31097 = select i1 %br.cmp31096, i64 3, i64 4
  %br.w21098 = select i1 %br.cmp21095, i64 2, i64 %br.w31097
  %br.width1099 = select i1 %br.cmp11094, i64 1, i64 %br.w21098
  %b.rn.cur.len1101 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len1102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1101, i64 %br.width1099)
  %sum1103 = extractvalue { i64, i1 } %b.rn.new.len1102, 0
  %ovf1104 = extractvalue { i64, i1 } %b.rn.new.len1102, 1
  br i1 %ovf1104, label %str_overflow_abort1106, label %b.rn.new.len1105

choice.then923:                                   ; preds = %choice.case916
  %call.res927 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res928 = call i32 @"lexer::adv"(ptr %0, i32 %call.res927)
  br label %choice.exit924

choice.exit924:                                   ; preds = %choice.then923, %choice.case916
  %call.res931 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res932 = call i32 @"lexer::adv"(ptr %0, i32 %call.res931)
  %b.len935 = load i64, ptr %"var.cur_text'.0", align 8
  %cmptmp936 = icmp sgt i64 %b.len935, 0
  br i1 %cmptmp936, label %choice.then937, label %choice.exit938

choice.then937:                                   ; preds = %choice.exit924
  %arena.cur939 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc940 = call ptr @dva_arena_alloc(ptr %arena.cur939, i64 16)
  store i64 0, ptr %enum.alloc940, align 8
  %pay.gep942 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc940, i32 0, i32 1
  %b.freeze.len945 = load i64, ptr %"var.cur_text'.0", align 8
  %b.freeze.data946 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.freeze.data947 = load ptr, ptr %b.freeze.data946, align 8
  %b.freeze.arena948 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep949 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena948, i32 0, i32 1
  %b.freeze.nc950 = load i64, ptr %b.freeze.nc.gep949, align 8
  %b.freeze.has.chunk951 = icmp sgt i64 %b.freeze.nc950, 0
  br i1 %b.freeze.has.chunk951, label %b.freeze.check952, label %b.freeze.done954

choice.exit938:                                   ; preds = %a.store999, %choice.exit924
  %"var.cur_parts'.13" = phi ptr [ %"var.cur_parts'.14", %a.store999 ], [ %"var.cur_parts'.0", %choice.exit924 ]
  %a.null1015 = icmp eq ptr %"var.cur_parts'.13", null
  br i1 %a.null1015, label %a.create1016, label %a.after1017

b.freeze.check952:                                ; preds = %choice.then937
  %b.freeze.last.idx955 = sub nuw nsw i64 %b.freeze.nc950, 1
  %b.freeze.chunks.gep956 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena948, i32 0, i32 3
  %b.freeze.chunk.slot957 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep956, i64 0, i64 %b.freeze.last.idx955
  %b.freeze.last.chunk958 = load ptr, ptr %b.freeze.chunk.slot957, align 8
  %b.freeze.off.gep959 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena948, i32 0, i32 2
  %b.freeze.off960 = load i64, ptr %b.freeze.off.gep959, align 8
  %b.freeze.bump961 = getelementptr i8, ptr %b.freeze.last.chunk958, i64 %b.freeze.off960
  %b.freeze.cap963 = load i64, ptr %b.freeze.arena948, align 8
  %b.freeze.chunk.end964 = getelementptr i8, ptr %b.freeze.last.chunk958, i64 %b.freeze.cap963
  %b.freeze.ge.chunk965 = icmp uge ptr %b.freeze.data947, %b.freeze.last.chunk958
  %b.freeze.lt.end966 = icmp ult ptr %b.freeze.data947, %b.freeze.chunk.end964
  %b.freeze.in.chunk967 = and i1 %b.freeze.ge.chunk965, %b.freeze.lt.end966
  %b.freeze.ge.bump968 = icmp uge ptr %b.freeze.data947, %b.freeze.bump961
  %b.freeze.reaped969 = and i1 %b.freeze.in.chunk967, %b.freeze.ge.bump968
  br i1 %b.freeze.reaped969, label %b.freeze.copy953, label %b.freeze.done954

b.freeze.copy953:                                 ; preds = %b.freeze.check952
  %b.freeze.alen970 = add i64 %b.freeze.len945, 1
  %b.freeze.fresh972 = call ptr @dva_arena_alloc(ptr %b.freeze.arena948, i64 %b.freeze.alen970)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh972, ptr align 1 %b.freeze.data947, i64 %b.freeze.len945, i1 false)
  %b.freeze.nul973 = getelementptr i8, ptr %b.freeze.fresh972, i64 %b.freeze.len945
  store i8 0, ptr %b.freeze.nul973, align 1
  br label %b.freeze.done954

b.freeze.done954:                                 ; preds = %b.freeze.copy953, %b.freeze.check952, %choice.then937
  %b.freeze.data974 = phi ptr [ %b.freeze.data947, %choice.then937 ], [ %b.freeze.data947, %b.freeze.check952 ], [ %b.freeze.fresh972, %b.freeze.copy953 ]
  %arena.cur975 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze976 = call ptr @dva_arena_alloc(ptr %arena.cur975, i64 16)
  %str.tag.gen978 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift979 = shl i64 %str.tag.gen978, 48
  %str.tagged.len980 = or i64 %b.freeze.len945, %str.tag.shift979
  store i64 %str.tagged.len980, ptr %builder.freeze976, align 8
  %str.build.data.gep981 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze976, i32 0, i32 1
  store ptr %b.freeze.data974, ptr %str.build.data.gep981, align 8
  store i64 0, ptr %"var.cur_text'.0", align 8
  store ptr null, ptr %b.freeze.data946, align 8
  %b.freeze.rst.cap984 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap984, align 8
  store ptr %builder.freeze976, ptr %pay.gep942, align 8
  %a.null986 = icmp eq ptr %"var.cur_parts'.0", null
  br i1 %a.null986, label %a.create987, label %a.check997

a.create987:                                      ; preds = %b.freeze.done954
  %arena.cur989 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create990 = call ptr @dva_arena_alloc(ptr %arena.cur989, i64 24)
  %arena.cur991 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf992 = call ptr @dva_arena_alloc(ptr %arena.cur991, i64 128)
  store i64 0, ptr %a.create990, align 8
  %a.data.gep994 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create990, i32 0, i32 1
  store ptr %a.buf992, ptr %a.data.gep994, align 8
  %a.cap.gep995 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create990, i32 0, i32 2
  store i64 16, ptr %a.cap.gep995, align 8
  br label %a.check997

a.check997:                                       ; preds = %b.freeze.done954, %a.create987
  %"var.cur_parts'.14" = phi ptr [ %a.create990, %a.create987 ], [ %"var.cur_parts'.0", %b.freeze.done954 ]
  %a.len1001 = load i64, ptr %"var.cur_parts'.14", align 8
  %a.cap1002 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.14", i32 0, i32 2
  %a.cap1003 = load i64, ptr %a.cap1002, align 8
  %a.needs.grow1004 = icmp eq i64 %a.len1001, %a.cap1003
  br i1 %a.needs.grow1004, label %a.grow998, label %a.store999

a.grow998:                                        ; preds = %a.check997
  call void @dva_array_grow(ptr %"var.cur_parts'.14")
  br label %a.store999

a.store999:                                       ; preds = %a.grow998, %a.check997
  %a.cur.data1005 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.14", i32 0, i32 1
  %a.cur.data1006 = load ptr, ptr %a.cur.data1005, align 8
  %a.cur.len1008 = load i64, ptr %"var.cur_parts'.14", align 8
  %a.elem.gep1009 = getelementptr i64, ptr %a.cur.data1006, i64 %a.cur.len1008
  %slot.p2i1010 = ptrtoint ptr %enum.alloc940 to i64
  store i64 %slot.p2i1010, ptr %a.elem.gep1009, align 8
  %a.next.len1011 = add i64 %a.cur.len1008, 1
  store i64 %a.next.len1011, ptr %"var.cur_parts'.14", align 8
  br label %choice.exit938

a.create1016:                                     ; preds = %choice.exit938
  %arena.cur1018 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1019 = call ptr @dva_arena_alloc(ptr %arena.cur1018, i64 24)
  %arena.cur1020 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1021 = call ptr @dva_arena_alloc(ptr %arena.cur1020, i64 128)
  store i64 0, ptr %a.create1019, align 8
  %a.data.gep1023 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1019, i32 0, i32 1
  store ptr %a.buf1021, ptr %a.data.gep1023, align 8
  %a.cap.gep1024 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1019, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1024, align 8
  br label %a.after1017

a.after1017:                                      ; preds = %a.create1016, %choice.exit938
  %"var.cur_parts'.15" = phi ptr [ %a.create1019, %a.create1016 ], [ %"var.cur_parts'.13", %choice.exit938 ]
  %arena.cur1029 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1030 = call ptr @dva_arena_alloc(ptr %arena.cur1029, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i64, i1, i64 }, ptr null, i32 1) to i64))
  store ptr %"var.cur_parts'.15", ptr %rec.alloc1030, align 8
  %rec.fld1032 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc1030, i32 0, i32 1
  store i1 %"var.cur_is_blank'.0", ptr %rec.fld1032, align 1
  %rec.fld1033 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc1030, i32 0, i32 2
  store i64 %"var.cur_line_num'.0", ptr %rec.fld1033, align 8
  %rec.fld1034 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc1030, i32 0, i32 3
  store i1 false, ptr %rec.fld1034, align 1
  %rec.fld1035 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %rec.alloc1030, i32 0, i32 4
  store i64 %"var.cur_indent'.0", ptr %rec.fld1035, align 8
  %a.null1037 = icmp eq ptr %var.lines.0, null
  br i1 %a.null1037, label %a.create1038, label %a.check1048

a.create1038:                                     ; preds = %a.after1017
  %arena.cur1040 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1041 = call ptr @dva_arena_alloc(ptr %arena.cur1040, i64 24)
  %arena.cur1042 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1043 = call ptr @dva_arena_alloc(ptr %arena.cur1042, i64 128)
  store i64 0, ptr %a.create1041, align 8
  %a.data.gep1045 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1041, i32 0, i32 1
  store ptr %a.buf1043, ptr %a.data.gep1045, align 8
  %a.cap.gep1046 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1041, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1046, align 8
  br label %a.check1048

a.check1048:                                      ; preds = %a.after1017, %a.create1038
  %var.lines.6 = phi ptr [ %a.create1041, %a.create1038 ], [ %var.lines.0, %a.after1017 ]
  %a.len1052 = load i64, ptr %var.lines.6, align 8
  %a.cap1053 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.lines.6, i32 0, i32 2
  %a.cap1054 = load i64, ptr %a.cap1053, align 8
  %a.needs.grow1055 = icmp eq i64 %a.len1052, %a.cap1054
  br i1 %a.needs.grow1055, label %a.grow1049, label %a.store1050

a.grow1049:                                       ; preds = %a.check1048
  call void @dva_array_grow(ptr %var.lines.6)
  br label %a.store1050

a.store1050:                                      ; preds = %a.grow1049, %a.check1048
  %a.cur.data1056 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.lines.6, i32 0, i32 1
  %a.cur.data1057 = load ptr, ptr %a.cur.data1056, align 8
  %a.cur.len1059 = load i64, ptr %var.lines.6, align 8
  %a.elem.gep1060 = getelementptr i64, ptr %a.cur.data1057, i64 %a.cur.len1059
  %slot.p2i1061 = ptrtoint ptr %rec.alloc1030 to i64
  store i64 %slot.p2i1061, ptr %a.elem.gep1060, align 8
  %a.next.len1062 = add i64 %a.cur.len1059, 1
  store i64 %a.next.len1062, ptr %var.lines.6, align 8
  %arena.cur1064 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new1065 = call ptr @dva_arena_alloc(ptr %arena.cur1064, i64 24)
  %arena.cur1066 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1067 = call ptr @dva_arena_alloc(ptr %arena.cur1066, i64 128)
  store i64 0, ptr %a.new1065, align 8
  %a.data.gep1069 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1065, i32 0, i32 1
  store ptr %a.buf1067, ptr %a.data.gep1069, align 8
  %a.cap.gep1070 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1065, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1070, align 8
  %arena.cur1071 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new1072 = call ptr @dva_arena_alloc(ptr %arena.cur1071, i64 24)
  %b.data.gep1073 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new1072, i32 0, i32 1
  %b.cap.gep1075 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new1072, i32 0, i32 2
  %arena.cur1082 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf1083 = call ptr @dva_arena_alloc(ptr %arena.cur1082, i64 257)
  store i8 0, ptr %b.buf1083, align 1
  store i64 0, ptr %builder.new1072, align 8
  store ptr %b.buf1083, ptr %b.data.gep1073, align 8
  store i64 256, ptr %b.cap.gep1075, align 8
  %fld.load1087 = load i64, ptr %fld.gep, align 8
  br label %choice.exit40

b.rn.new.len1105:                                 ; preds = %choice.next917
  %b.cap1108 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap1109 = load i64, ptr %b.cap1108, align 8
  %b.need.grow1110 = icmp slt i64 %b.cap1109, %sum1103
  br i1 %b.need.grow1110, label %b.grow21111, label %b.grow_done1113

str_overflow_abort1106:                           ; preds = %choice.next917
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow21111:                                      ; preds = %b.rn.new.len1105
  %b.cap21114 = mul i64 %b.cap1109, 2
  %b.cap.small1115 = icmp slt i64 %b.cap21114, 16
  %b.cap.grow1116 = select i1 %b.cap.small1115, i64 16, i64 %b.cap21114
  %b.cap.need1117 = icmp slt i64 %b.cap.grow1116, %sum1103
  %b.new.cap1118 = select i1 %b.cap.need1117, i64 %sum1103, i64 %b.cap.grow1116
  %b.cur.data21121 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data21122 = load ptr, ptr %b.cur.data21121, align 8
  %b.new.buf.len21123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1118, i64 1)
  %sum1124 = extractvalue { i64, i1 } %b.new.buf.len21123, 0
  %ovf1125 = extractvalue { i64, i1 } %b.new.buf.len21123, 1
  br i1 %ovf1125, label %str_overflow_abort1127, label %b.new.buf.len21126

b.grow_done1113:                                  ; preds = %b.rn.new.len1105, %b.new.buf.len21126
  %b.rn.data1134 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data1135 = load ptr, ptr %b.rn.data1134, align 8
  %b.rn.dst1136 = getelementptr i8, ptr %b.rn.data1135, i64 %b.rn.cur.len1101
  br i1 %br.cmp11094, label %br.b1.345, label %br.c2.345

b.new.buf.len21126:                               ; preds = %b.grow21111
  %arena.cur1129 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21130 = call ptr @dva_arena_alloc(ptr %arena.cur1129, i64 %sum1124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21130, ptr align 1 %b.cur.data21122, i64 %b.rn.cur.len1101, i1 false)
  %b.grow2.nul1131 = getelementptr i8, ptr %b.new.buf21130, i64 %b.rn.cur.len1101
  store i8 0, ptr %b.grow2.nul1131, align 1
  store ptr %b.new.buf21130, ptr %b.cur.data21121, align 8
  store i64 %b.new.cap1118, ptr %b.cap1108, align 8
  br label %b.grow_done1113

str_overflow_abort1127:                           ; preds = %b.grow21111
  call void @dva_abort_str_overflow_msg()
  unreachable

br.b1.345:                                        ; preds = %b.grow_done1113
  %br.b1.01137 = trunc i64 %coerce.sext1093 to i8
  store i8 %br.b1.01137, ptr %b.rn.dst1136, align 1
  br label %br.done.345

br.c2.345:                                        ; preds = %b.grow_done1113
  br i1 %br.cmp21095, label %br.b2.345, label %br.c3.345

br.b2.345:                                        ; preds = %br.c2.345
  %br.sh61138 = lshr i64 %coerce.sext1093, 6
  %br.b2.01139 = or i64 %br.sh61138, 192
  %br.b2.0t1140 = trunc i64 %br.b2.01139 to i8
  %br.m61141 = and i64 %coerce.sext1093, 63
  %br.b2.11142 = or i64 %br.m61141, 128
  %br.b2.1t1143 = trunc i64 %br.b2.11142 to i8
  store i8 %br.b2.0t1140, ptr %b.rn.dst1136, align 1
  %br.dst11144 = getelementptr i8, ptr %b.rn.dst1136, i64 1
  store i8 %br.b2.1t1143, ptr %br.dst11144, align 1
  br label %br.done.345

br.c3.345:                                        ; preds = %br.c2.345
  br i1 %br.cmp31096, label %br.b3.345, label %br.b4.345

br.b3.345:                                        ; preds = %br.c3.345
  %br.sh121145 = lshr i64 %coerce.sext1093, 12
  %br.b3.01146 = or i64 %br.sh121145, 224
  %br.b3.0t1147 = trunc i64 %br.b3.01146 to i8
  %br.sh6.31148 = lshr i64 %coerce.sext1093, 6
  %br.m6.31149 = and i64 %br.sh6.31148, 63
  %br.b3.11150 = or i64 %br.m6.31149, 128
  %br.b3.1t1151 = trunc i64 %br.b3.11150 to i8
  %br.mend1152 = and i64 %coerce.sext1093, 63
  %br.b3.21153 = or i64 %br.mend1152, 128
  %br.b3.2t1154 = trunc i64 %br.b3.21153 to i8
  store i8 %br.b3.0t1147, ptr %b.rn.dst1136, align 1
  %br.dst1.31155 = getelementptr i8, ptr %b.rn.dst1136, i64 1
  store i8 %br.b3.1t1151, ptr %br.dst1.31155, align 1
  %br.dst2.31156 = getelementptr i8, ptr %b.rn.dst1136, i64 2
  store i8 %br.b3.2t1154, ptr %br.dst2.31156, align 1
  br label %br.done.345

br.b4.345:                                        ; preds = %br.c3.345
  %br.sh181157 = lshr i64 %coerce.sext1093, 18
  %br.b4.01158 = or i64 %br.sh181157, 240
  %br.b4.0t1159 = trunc i64 %br.b4.01158 to i8
  %br.sh12.41160 = lshr i64 %coerce.sext1093, 12
  %br.m12.41161 = and i64 %br.sh12.41160, 63
  %br.b4.11162 = or i64 %br.m12.41161, 128
  %br.b4.1t1163 = trunc i64 %br.b4.11162 to i8
  %br.sh6.41164 = lshr i64 %coerce.sext1093, 6
  %br.m6.41165 = and i64 %br.sh6.41164, 63
  %br.b4.21166 = or i64 %br.m6.41165, 128
  %br.b4.2t1167 = trunc i64 %br.b4.21166 to i8
  %br.mend41168 = and i64 %coerce.sext1093, 63
  %br.b4.31169 = or i64 %br.mend41168, 128
  %br.b4.3t1170 = trunc i64 %br.b4.31169 to i8
  store i8 %br.b4.0t1159, ptr %b.rn.dst1136, align 1
  %br.dst1.41171 = getelementptr i8, ptr %b.rn.dst1136, i64 1
  store i8 %br.b4.1t1163, ptr %br.dst1.41171, align 1
  %br.dst2.41172 = getelementptr i8, ptr %b.rn.dst1136, i64 2
  store i8 %br.b4.2t1167, ptr %br.dst2.41172, align 1
  %br.dst3.41173 = getelementptr i8, ptr %b.rn.dst1136, i64 3
  store i8 %br.b4.3t1170, ptr %br.dst3.41173, align 1
  br label %br.done.345

br.done.345:                                      ; preds = %br.b4.345, %br.b3.345, %br.b2.345, %br.b1.345
  %br.nul1174 = getelementptr i8, ptr %b.rn.data1135, i64 %sum1103
  store i8 0, ptr %br.nul1174, align 1
  store i64 %sum1103, ptr %"var.cur_text'.0", align 8
  switch i32 %call.res38, label %choice.exit40 [
    i32 32, label %choice.case1178
    i32 9, label %choice.case1178
  ]

choice.case1178:                                  ; preds = %br.done.345, %br.done.345
  %addtmp = add i64 %"var.cur_indent'.0", 1
  %spec.select = select i1 %"var.cur_is_blank'.0", i64 %addtmp, i64 %"var.cur_indent'.0"
  br label %choice.exit40

a.create1190:                                     ; preds = %loop.exit.330
  %arena.cur1192 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1193 = call ptr @dva_arena_alloc(ptr %arena.cur1192, i64 24)
  %arena.cur1194 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1195 = call ptr @dva_arena_alloc(ptr %arena.cur1194, i64 128)
  store i64 0, ptr %a.create1193, align 8
  %a.data.gep1197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1193, i32 0, i32 1
  store ptr %a.buf1195, ptr %a.data.gep1197, align 8
  %a.cap.gep1198 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1193, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1198, align 8
  br label %a.after1191

a.after1191:                                      ; preds = %a.create1190, %loop.exit.330
  %var.lines.7 = phi ptr [ %a.create1193, %a.create1190 ], [ %var.lines.1, %loop.exit.330 ]
  %a.len.query1200 = load i64, ptr %var.lines.7, align 8
  %cmptmp1202 = icmp eq i64 %a.len.query1200, 0
  br i1 %cmptmp1202, label %choice.then1203, label %loop.header.346

choice.then1203:                                  ; preds = %a.after1191
  %arena.cur1207 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1208 = call ptr @dva_arena_alloc(ptr %arena.cur1207, i64 16)
  store i64 5, ptr %enum.alloc1208, align 8
  %pay.gep1210 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1208, i32 0, i32 1
  store ptr null, ptr %pay.gep1210, align 8
  %fld.load1214 = load i64, ptr %fld.gep22, align 8
  %subtmp = sub i64 %fld.load1214, %1
  %call.res1218 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc1208, i64 %1, i64 %subtmp, i64 %2, i64 %3, ptr @str.0.struct)
  br label %choice.exit1205

choice.exit1205:                                  ; preds = %b.freeze.done2369, %a.after2420, %choice.then1203
  %choice.res2433 = phi ptr [ %call.res1218, %choice.then1203 ], [ %call.res2414, %b.freeze.done2369 ], [ %call.res2432, %a.after2420 ]
  ret ptr %choice.res2433

loop.header.346:                                  ; preds = %a.after1191, %unwrap.pos.347
  %"var.first_nb_idx'.0" = phi i64 [ %spec.select2469, %unwrap.pos.347 ], [ -1, %a.after1191 ]
  %loop.idx.346.0 = phi i64 [ %loop.next1289, %unwrap.pos.347 ], [ 0, %a.after1191 ]
  %var.lines.8 = phi ptr [ %var.lines.8, %unwrap.pos.347 ], [ %var.lines.7, %a.after1191 ]
  %loop.cond = icmp slt i64 %loop.idx.346.0, %a.len.query1200
  br i1 %loop.cond, label %a.rd.check, label %loop.exit.346

loop.exit.346:                                    ; preds = %loop.header.346
  %cmptmp1291 = icmp sge i64 %"var.first_nb_idx'.0", 0
  br i1 %cmptmp1291, label %a.rd.check1309, label %choice.exit1293

a.rd.check:                                       ; preds = %loop.header.346
  %a.rd.len1238 = load i64, ptr %var.lines.8, align 8
  %a.rd.ge0 = icmp sge i64 %loop.idx.346.0, 0
  %a.rd.lt = icmp slt i64 %loop.idx.346.0, %a.rd.len1238
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.lines.8, i32 0, i32 1
  %a.rd.data1239 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data1239, i64 %loop.idx.346.0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur1241 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1242 = call ptr @dva_arena_alloc(ptr %arena.cur1241, i64 56)
  store i64 4011, ptr %err.alloc1242, align 8
  %err.msg.gep1244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1242, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1244, align 8
  %err.file.gep1245 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1242, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1245, align 8
  %err.line.gep1246 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1242, i32 0, i32 3
  store i64 1809, ptr %err.line.gep1246, align 8
  %err.col.gep1247 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1242, i32 0, i32 4
  store i64 28, ptr %err.col.gep1247, align 8
  %err.ctx.gep1248 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1242, i32 0, i32 5
  store i64 %loop.idx.346.0, ptr %err.ctx.gep1248, align 8
  %err.ctx1.gep1250 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1248, i32 0, i32 1
  store i64 %a.rd.len1238, ptr %err.ctx1.gep1250, align 8
  %err.p2i1251 = ptrtoint ptr %err.alloc1242 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i1251, %a.rd.err.oob ]
  br i1 %a.rd.tag, label %unwrap.pos.347, label %unwrap.abort.347

unwrap.pos.347:                                   ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %fld.gep1280 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %pay.ptr, i32 0, i32 1
  %fld.load1281 = load i1, ptr %fld.gep1280, align 1
  %nottmp1282 = xor i1 %fld.load1281, true
  %cmptmp1284 = icmp eq i64 %"var.first_nb_idx'.0", -1
  %spec.select2470 = select i1 %nottmp1282, i1 %cmptmp1284, i1 false
  %spec.select2469 = select i1 %spec.select2470, i64 %loop.idx.346.0, i64 %"var.first_nb_idx'.0"
  %loop.next1289 = add i64 %loop.idx.346.0, 1
  br label %loop.header.346

unwrap.abort.347:                                 ; preds = %a.rd.done
  %5 = call i64 @write(i32 2, ptr @expect.reason.348, i64 22)
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep1255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep1255, align 8
  %err.file.gep1256 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep1256, align 8
  %err.line.gep1257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep1257, align 8
  %err.col.gep1258 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep1258, align 8
  %err.msg.len1259 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len1260 = and i64 %err.msg.len1259, 281474976710655
  %str.tag1261 = lshr i64 %err.msg.len1259, 48
  %tag.immortal1263 = icmp eq i64 %str.tag1261, 0
  %active.gen1264 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1265 = icmp eq i64 %str.tag1261, %active.gen1264
  %tag.fast.ok1266 = or i1 %tag.immortal1263, %tag.current1265
  br i1 %tag.fast.ok1266, label %str_ok1262, label %tag.slow_check1267

str_ok1262:                                       ; preds = %tag.slow_check1267, %unwrap.abort.347
  %err.msg.len32 = trunc i64 %err.msg.len1260 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data1268 = load ptr, ptr %err.msg.data, align 8
  %err.file.len1269 = load i64, ptr %err.file.struct, align 8
  %err.file.len1270 = and i64 %err.file.len1269, 281474976710655
  %str.tag1271 = lshr i64 %err.file.len1269, 48
  %tag.immortal1273 = icmp eq i64 %str.tag1271, 0
  %active.gen1274 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1275 = icmp eq i64 %str.tag1271, %active.gen1274
  %tag.fast.ok1276 = or i1 %tag.immortal1273, %tag.current1275
  br i1 %tag.fast.ok1276, label %str_ok1272, label %tag.slow_check1277

tag.slow_check1267:                               ; preds = %unwrap.abort.347
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1261)
  br label %str_ok1262

str_ok1272:                                       ; preds = %tag.slow_check1277, %str_ok1262
  %err.file.len32 = trunc i64 %err.file.len1270 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data1278 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check1277:                               ; preds = %str_ok1262
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1271)
  br label %str_ok1272

err.thread:                                       ; preds = %str_ok1272
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok1272
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data1268, i32 %err.file.len32, ptr %err.file.data1278, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.exit1293:                                  ; preds = %unwrap.pos.350, %choice.then1402, %loop.exit.346
  %"var.margin'.0" = phi i64 [ 0, %loop.exit.346 ], [ 0, %choice.then1402 ], [ %fld.load1399, %unwrap.pos.350 ]
  %arena.cur1412 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new1413 = call ptr @dva_arena_alloc(ptr %arena.cur1412, i64 24)
  %arena.cur1414 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1415 = call ptr @dva_arena_alloc(ptr %arena.cur1414, i64 128)
  store i64 0, ptr %a.new1413, align 8
  %a.data.gep1417 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1413, i32 0, i32 1
  store ptr %a.buf1415, ptr %a.data.gep1417, align 8
  %a.cap.gep1418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1413, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1418, align 8
  br label %loop.header.352

a.rd.check1309:                                   ; preds = %loop.exit.346
  %a.rd.len1315 = load i64, ptr %var.lines.8, align 8
  %a.rd.lt1317 = icmp slt i64 %"var.first_nb_idx'.0", %a.rd.len1315
  br i1 %a.rd.lt1317, label %a.rd.ok1310, label %a.rd.err.oob1312

a.rd.ok1310:                                      ; preds = %a.rd.check1309
  %a.rd.data1319 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.lines.8, i32 0, i32 1
  %a.rd.data1320 = load ptr, ptr %a.rd.data1319, align 8
  %a.rd.elem.gep1321 = getelementptr i64, ptr %a.rd.data1320, i64 %"var.first_nb_idx'.0"
  %a.rd.elem1322 = load i64, ptr %a.rd.elem.gep1321, align 8
  br label %a.rd.done1313

a.rd.err.oob1312:                                 ; preds = %a.rd.check1309
  %arena.cur1334 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1335 = call ptr @dva_arena_alloc(ptr %arena.cur1334, i64 56)
  store i64 4011, ptr %err.alloc1335, align 8
  %err.msg.gep1337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1335, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1337, align 8
  %err.file.gep1338 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1335, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1338, align 8
  %err.line.gep1339 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1335, i32 0, i32 3
  store i64 1815, ptr %err.line.gep1339, align 8
  %err.col.gep1340 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1335, i32 0, i32 4
  store i64 41, ptr %err.col.gep1340, align 8
  %err.ctx.gep1341 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1335, i32 0, i32 5
  store i64 %"var.first_nb_idx'.0", ptr %err.ctx.gep1341, align 8
  %err.ctx1.gep1343 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1341, i32 0, i32 1
  store i64 %a.rd.len1315, ptr %err.ctx1.gep1343, align 8
  %err.p2i1344 = ptrtoint ptr %err.alloc1335 to i64
  br label %a.rd.done1313

a.rd.done1313:                                    ; preds = %a.rd.err.oob1312, %a.rd.ok1310
  %a.rd.tag1345 = phi i1 [ true, %a.rd.ok1310 ], [ false, %a.rd.err.oob1312 ]
  %a.rd.pay1346 = phi i64 [ %a.rd.elem1322, %a.rd.ok1310 ], [ %err.p2i1344, %a.rd.err.oob1312 ]
  br i1 %a.rd.tag1345, label %unwrap.pos.350, label %unwrap.abort.350

unwrap.pos.350:                                   ; preds = %a.rd.done1313
  %pay.ptr1396 = inttoptr i64 %a.rd.pay1346 to ptr
  %fld.gep1398 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %pay.ptr1396, i32 0, i32 4
  %fld.load1399 = load i64, ptr %fld.gep1398, align 8
  %cmptmp1401 = icmp eq i64 %fld.load1399, 0
  br i1 %cmptmp1401, label %choice.then1402, label %choice.exit1293

unwrap.abort.350:                                 ; preds = %a.rd.done1313
  %6 = call i64 @write(i32 2, ptr @expect.reason.351, i64 22)
  %err.ptr1351 = inttoptr i64 %a.rd.pay1346 to ptr
  %err.code1353 = load i64, ptr %err.ptr1351, align 8
  %err.msg.gep1354 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1351, i32 0, i32 1
  %err.msg.struct1355 = load ptr, ptr %err.msg.gep1354, align 8
  %err.file.gep1356 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1351, i32 0, i32 2
  %err.file.struct1357 = load ptr, ptr %err.file.gep1356, align 8
  %err.line.gep1358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1351, i32 0, i32 3
  %err.line1359 = load i64, ptr %err.line.gep1358, align 8
  %err.col.gep1360 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1351, i32 0, i32 4
  %err.col1361 = load i64, ptr %err.col.gep1360, align 8
  %err.msg.len1363 = load i64, ptr %err.msg.struct1355, align 8
  %err.msg.len1364 = and i64 %err.msg.len1363, 281474976710655
  %str.tag1365 = lshr i64 %err.msg.len1363, 48
  %tag.immortal1367 = icmp eq i64 %str.tag1365, 0
  %active.gen1368 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1369 = icmp eq i64 %str.tag1365, %active.gen1368
  %tag.fast.ok1370 = or i1 %tag.immortal1367, %tag.current1369
  br i1 %tag.fast.ok1370, label %str_ok1366, label %tag.slow_check1371

str_ok1366:                                       ; preds = %tag.slow_check1371, %unwrap.abort.350
  %err.msg.len321372 = trunc i64 %err.msg.len1364 to i32
  %err.msg.data1373 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1355, i32 0, i32 1
  %err.msg.data1374 = load ptr, ptr %err.msg.data1373, align 8
  %err.file.len1376 = load i64, ptr %err.file.struct1357, align 8
  %err.file.len1377 = and i64 %err.file.len1376, 281474976710655
  %str.tag1378 = lshr i64 %err.file.len1376, 48
  %tag.immortal1380 = icmp eq i64 %str.tag1378, 0
  %active.gen1381 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1382 = icmp eq i64 %str.tag1378, %active.gen1381
  %tag.fast.ok1383 = or i1 %tag.immortal1380, %tag.current1382
  br i1 %tag.fast.ok1383, label %str_ok1379, label %tag.slow_check1384

tag.slow_check1371:                               ; preds = %unwrap.abort.350
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1365)
  br label %str_ok1366

str_ok1379:                                       ; preds = %tag.slow_check1384, %str_ok1366
  %err.file.len321385 = trunc i64 %err.file.len1377 to i32
  %err.file.data1386 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1357, i32 0, i32 1
  %err.file.data1387 = load ptr, ptr %err.file.data1386, align 8
  %err.thread.rec1388 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1389 = icmp ne ptr %err.thread.rec1388, null
  br i1 %err.is.thread1389, label %err.thread1390, label %err.normal1391

tag.slow_check1384:                               ; preds = %str_ok1366
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1378)
  br label %str_ok1379

err.thread1390:                                   ; preds = %str_ok1379
  %err.haserr.gep1392 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1388, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1392, align 8
  %err.err.gep1393 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1388, i32 0, i32 7
  store ptr %err.ptr1351, ptr %err.err.gep1393, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1391:                                   ; preds = %str_ok1379
  %err.panic.printf1394 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1353, i32 %err.msg.len321372, ptr %err.msg.data1374, i32 %err.file.len321385, ptr %err.file.data1387, i64 %err.line1359, i64 %err.col1361)
  call void @exit(i32 1)
  unreachable

choice.then1402:                                  ; preds = %unwrap.pos.350
  %fld.gep1405 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %pay.ptr1396, i32 0, i32 2
  %fld.load1406 = load i64, ptr %fld.gep1405, align 8
  %call.res1407 = call { i64, ptr } @"diag::E1017_multiline_under_indented"()
  %arena.cur1408 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1409 = call ptr @dva_arena_alloc(ptr %arena.cur1408, i64 16)
  store { i64, ptr } %call.res1407, ptr %ret.ub.alloc1409, align 8
  %call.res1410 = call i64 @"lexer::fail"(i64 1017, i64 %fld.load1406, i64 1, ptr %ret.ub.alloc1409)
  br label %choice.exit1293

loop.header.352:                                  ; preds = %choice.exit1547, %choice.exit1293
  %var.assembled.0 = phi ptr [ %a.new1413, %choice.exit1293 ], [ %var.assembled.1, %choice.exit1547 ]
  %var.lines.12 = phi ptr [ %var.lines.8, %choice.exit1293 ], [ %var.lines.12, %choice.exit1547 ]
  %loop.idx.352.0 = phi i64 [ 0, %choice.exit1293 ], [ %loop.next2015, %choice.exit1547 ]
  %loop.cond1421 = icmp slt i64 %loop.idx.352.0, %a.len.query1200
  br i1 %loop.cond1421, label %a.rd.check1441, label %loop.exit.352

loop.exit.352:                                    ; preds = %loop.header.352
  %a.null2018 = icmp eq ptr %var.assembled.0, null
  br i1 %a.null2018, label %a.create2019, label %a.after2020

a.rd.check1441:                                   ; preds = %loop.header.352
  %a.rd.len1447 = load i64, ptr %var.lines.12, align 8
  %a.rd.ge01448 = icmp sge i64 %loop.idx.352.0, 0
  %a.rd.lt1449 = icmp slt i64 %loop.idx.352.0, %a.rd.len1447
  %a.rd.bounds1450 = and i1 %a.rd.ge01448, %a.rd.lt1449
  br i1 %a.rd.bounds1450, label %a.rd.ok1442, label %a.rd.err.oob1444

a.rd.ok1442:                                      ; preds = %a.rd.check1441
  %a.rd.data1451 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.lines.12, i32 0, i32 1
  %a.rd.data1452 = load ptr, ptr %a.rd.data1451, align 8
  %a.rd.elem.gep1453 = getelementptr i64, ptr %a.rd.data1452, i64 %loop.idx.352.0
  %a.rd.elem1454 = load i64, ptr %a.rd.elem.gep1453, align 8
  br label %a.rd.done1445

a.rd.err.oob1444:                                 ; preds = %a.rd.check1441
  %arena.cur1466 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1467 = call ptr @dva_arena_alloc(ptr %arena.cur1466, i64 56)
  store i64 4011, ptr %err.alloc1467, align 8
  %err.msg.gep1469 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1467, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1469, align 8
  %err.file.gep1470 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1467, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1470, align 8
  %err.line.gep1471 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1467, i32 0, i32 3
  store i64 1823, ptr %err.line.gep1471, align 8
  %err.col.gep1472 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1467, i32 0, i32 4
  store i64 28, ptr %err.col.gep1472, align 8
  %err.ctx.gep1473 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1467, i32 0, i32 5
  store i64 %loop.idx.352.0, ptr %err.ctx.gep1473, align 8
  %err.ctx1.gep1475 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1473, i32 0, i32 1
  store i64 %a.rd.len1447, ptr %err.ctx1.gep1475, align 8
  %err.p2i1476 = ptrtoint ptr %err.alloc1467 to i64
  br label %a.rd.done1445

a.rd.done1445:                                    ; preds = %a.rd.err.oob1444, %a.rd.ok1442
  %a.rd.tag1477 = phi i1 [ true, %a.rd.ok1442 ], [ false, %a.rd.err.oob1444 ]
  %a.rd.pay1478 = phi i64 [ %a.rd.elem1454, %a.rd.ok1442 ], [ %err.p2i1476, %a.rd.err.oob1444 ]
  br i1 %a.rd.tag1477, label %unwrap.pos.353, label %unwrap.abort.353

unwrap.pos.353:                                   ; preds = %a.rd.done1445
  %pay.ptr1528 = inttoptr i64 %a.rd.pay1478 to ptr
  %subtmp1532 = sub i64 %a.len.query1200, 1
  %cmptmp1533 = icmp eq i64 %loop.idx.352.0, %subtmp1532
  %fld.gep1535 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %pay.ptr1528, i32 0, i32 3
  %fld.load1536 = load i1, ptr %fld.gep1535, align 1
  %nottmp1537 = xor i1 %fld.load1536, true
  br i1 %nottmp1537, label %and.355.then, label %and.355.exit

unwrap.abort.353:                                 ; preds = %a.rd.done1445
  %7 = call i64 @write(i32 2, ptr @expect.reason.354, i64 22)
  %err.ptr1483 = inttoptr i64 %a.rd.pay1478 to ptr
  %err.code1485 = load i64, ptr %err.ptr1483, align 8
  %err.msg.gep1486 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1483, i32 0, i32 1
  %err.msg.struct1487 = load ptr, ptr %err.msg.gep1486, align 8
  %err.file.gep1488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1483, i32 0, i32 2
  %err.file.struct1489 = load ptr, ptr %err.file.gep1488, align 8
  %err.line.gep1490 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1483, i32 0, i32 3
  %err.line1491 = load i64, ptr %err.line.gep1490, align 8
  %err.col.gep1492 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1483, i32 0, i32 4
  %err.col1493 = load i64, ptr %err.col.gep1492, align 8
  %err.msg.len1495 = load i64, ptr %err.msg.struct1487, align 8
  %err.msg.len1496 = and i64 %err.msg.len1495, 281474976710655
  %str.tag1497 = lshr i64 %err.msg.len1495, 48
  %tag.immortal1499 = icmp eq i64 %str.tag1497, 0
  %active.gen1500 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1501 = icmp eq i64 %str.tag1497, %active.gen1500
  %tag.fast.ok1502 = or i1 %tag.immortal1499, %tag.current1501
  br i1 %tag.fast.ok1502, label %str_ok1498, label %tag.slow_check1503

str_ok1498:                                       ; preds = %tag.slow_check1503, %unwrap.abort.353
  %err.msg.len321504 = trunc i64 %err.msg.len1496 to i32
  %err.msg.data1505 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1487, i32 0, i32 1
  %err.msg.data1506 = load ptr, ptr %err.msg.data1505, align 8
  %err.file.len1508 = load i64, ptr %err.file.struct1489, align 8
  %err.file.len1509 = and i64 %err.file.len1508, 281474976710655
  %str.tag1510 = lshr i64 %err.file.len1508, 48
  %tag.immortal1512 = icmp eq i64 %str.tag1510, 0
  %active.gen1513 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1514 = icmp eq i64 %str.tag1510, %active.gen1513
  %tag.fast.ok1515 = or i1 %tag.immortal1512, %tag.current1514
  br i1 %tag.fast.ok1515, label %str_ok1511, label %tag.slow_check1516

tag.slow_check1503:                               ; preds = %unwrap.abort.353
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1497)
  br label %str_ok1498

str_ok1511:                                       ; preds = %tag.slow_check1516, %str_ok1498
  %err.file.len321517 = trunc i64 %err.file.len1509 to i32
  %err.file.data1518 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1489, i32 0, i32 1
  %err.file.data1519 = load ptr, ptr %err.file.data1518, align 8
  %err.thread.rec1520 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1521 = icmp ne ptr %err.thread.rec1520, null
  br i1 %err.is.thread1521, label %err.thread1522, label %err.normal1523

tag.slow_check1516:                               ; preds = %str_ok1498
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1510)
  br label %str_ok1511

err.thread1522:                                   ; preds = %str_ok1511
  %err.haserr.gep1524 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1520, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1524, align 8
  %err.err.gep1525 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1520, i32 0, i32 7
  store ptr %err.ptr1483, ptr %err.err.gep1525, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1523:                                   ; preds = %str_ok1511
  %err.panic.printf1526 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1485, i32 %err.msg.len321504, ptr %err.msg.data1506, i32 %err.file.len321517, ptr %err.file.data1519, i64 %err.line1491, i64 %err.col1493)
  call void @exit(i32 1)
  unreachable

and.355.then:                                     ; preds = %unwrap.pos.353
  %nottmp1539 = xor i1 %cmptmp1533, true
  %nottmp1541 = xor i1 %"var.closed_on_last_line'.0", true
  %or.356.phi = select i1 %nottmp1539, i1 true, i1 %nottmp1541
  br label %and.355.exit

and.355.exit:                                     ; preds = %unwrap.pos.353, %and.355.then
  %and.355.phi = phi i1 [ %or.356.phi, %and.355.then ], [ false, %unwrap.pos.353 ]
  %fld.gep1543 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %pay.ptr1528, i32 0, i32 1
  %fld.load1544 = load i1, ptr %fld.gep1543, align 1
  br i1 %fld.load1544, label %choice.then1545, label %choice.else1546

choice.then1545:                                  ; preds = %and.355.exit
  br i1 %and.355.phi, label %choice.then1549, label %choice.exit1547

choice.else1546:                                  ; preds = %and.355.exit
  %fld.gep1584 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %pay.ptr1528, i32 0, i32 4
  %fld.load1585 = load i64, ptr %fld.gep1584, align 8
  %cmptmp1589 = icmp slt i64 %fld.load1585, %"var.margin'.0"
  br i1 %cmptmp1589, label %choice.then1590, label %choice.exit1591

choice.exit1547:                                  ; preds = %choice.else1609, %a.store2000, %loop.exit.359, %a.store1965, %choice.then1545, %a.store1569
  %var.assembled.1 = phi ptr [ %var.assembled.3, %a.store1569 ], [ %var.assembled.0, %choice.then1545 ], [ %var.assembled.12, %a.store1965 ], [ %var.assembled.9, %loop.exit.359 ], [ %var.assembled.14, %a.store2000 ], [ %var.assembled.0, %choice.else1609 ]
  %loop.next2015 = add i64 %loop.idx.352.0, 1
  br label %loop.header.352

choice.then1549:                                  ; preds = %choice.then1545
  %arena.cur1551 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1552 = call ptr @dva_arena_alloc(ptr %arena.cur1551, i64 16)
  store i64 0, ptr %enum.alloc1552, align 8
  %pay.gep1554 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1552, i32 0, i32 1
  store ptr @str.83.struct, ptr %pay.gep1554, align 8
  %a.null1556 = icmp eq ptr %var.assembled.0, null
  br i1 %a.null1556, label %a.create1557, label %a.check1567

a.create1557:                                     ; preds = %choice.then1549
  %arena.cur1559 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1560 = call ptr @dva_arena_alloc(ptr %arena.cur1559, i64 24)
  %arena.cur1561 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1562 = call ptr @dva_arena_alloc(ptr %arena.cur1561, i64 128)
  store i64 0, ptr %a.create1560, align 8
  %a.data.gep1564 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1560, i32 0, i32 1
  store ptr %a.buf1562, ptr %a.data.gep1564, align 8
  %a.cap.gep1565 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1560, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1565, align 8
  br label %a.check1567

a.check1567:                                      ; preds = %choice.then1549, %a.create1557
  %var.assembled.3 = phi ptr [ %a.create1560, %a.create1557 ], [ %var.assembled.0, %choice.then1549 ]
  %a.len1571 = load i64, ptr %var.assembled.3, align 8
  %a.cap1572 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.3, i32 0, i32 2
  %a.cap1573 = load i64, ptr %a.cap1572, align 8
  %a.needs.grow1574 = icmp eq i64 %a.len1571, %a.cap1573
  br i1 %a.needs.grow1574, label %a.grow1568, label %a.store1569

a.grow1568:                                       ; preds = %a.check1567
  call void @dva_array_grow(ptr %var.assembled.3)
  br label %a.store1569

a.store1569:                                      ; preds = %a.grow1568, %a.check1567
  %a.cur.data1575 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.3, i32 0, i32 1
  %a.cur.data1576 = load ptr, ptr %a.cur.data1575, align 8
  %a.cur.len1578 = load i64, ptr %var.assembled.3, align 8
  %a.elem.gep1579 = getelementptr i64, ptr %a.cur.data1576, i64 %a.cur.len1578
  %slot.p2i1580 = ptrtoint ptr %enum.alloc1552 to i64
  store i64 %slot.p2i1580, ptr %a.elem.gep1579, align 8
  %a.next.len1581 = add i64 %a.cur.len1578, 1
  store i64 %a.next.len1581, ptr %var.assembled.3, align 8
  br label %choice.exit1547

choice.then1590:                                  ; preds = %choice.else1546
  %fld.gep1593 = getelementptr inbounds { ptr, i1, i64, i1, i64 }, ptr %pay.ptr1528, i32 0, i32 2
  %fld.load1594 = load i64, ptr %fld.gep1593, align 8
  %addtmp1596 = add i64 %fld.load1585, 1
  %call.res1597 = call { i64, ptr } @"diag::E1017_multiline_under_indented"()
  %arena.cur1598 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1599 = call ptr @dva_arena_alloc(ptr %arena.cur1598, i64 16)
  store { i64, ptr } %call.res1597, ptr %ret.ub.alloc1599, align 8
  %call.res1600 = call i64 @"lexer::fail"(i64 1017, i64 %fld.load1594, i64 %addtmp1596, ptr %ret.ub.alloc1599)
  br label %choice.exit1591

choice.exit1591:                                  ; preds = %choice.then1590, %choice.else1546
  %fld.load1603 = load ptr, ptr %pay.ptr1528, align 8
  %a.len.query1605 = load i64, ptr %fld.load1603, align 8
  %cmptmp1607 = icmp sgt i64 %a.len.query1605, 0
  br i1 %cmptmp1607, label %a.rd.ok1616, label %choice.else1609

choice.else1609:                                  ; preds = %choice.exit1591
  br i1 %and.355.phi, label %choice.then1980, label %choice.exit1547

a.rd.ok1616:                                      ; preds = %choice.exit1591
  %a.rd.data1624 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1603, i32 0, i32 1
  %a.rd.data1625 = load ptr, ptr %a.rd.data1624, align 8
  %a.rd.elem1627 = load i64, ptr %a.rd.data1625, align 8
  %pay.ptr1701 = inttoptr i64 %a.rd.elem1627 to ptr
  %tag.id = load i64, ptr %pay.ptr1701, align 8
  switch i64 %tag.id, label %choice.exit1703 [
    i64 0, label %choice.case1704
    i64 1, label %choice.case1778
  ]

choice.exit1703:                                  ; preds = %a.rd.ok1616, %str_ok1736, %a.store1764, %a.store1801
  %var.assembled.5 = phi ptr [ %var.assembled.8, %a.store1801 ], [ %var.assembled.7, %a.store1764 ], [ %var.assembled.0, %str_ok1736 ], [ %var.assembled.0, %a.rd.ok1616 ]
  br label %loop.header.359

choice.case1704:                                  ; preds = %a.rd.ok1616
  %pay.gep1707 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr1701, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep1707, align 8
  %s.read.len1710 = load i64, ptr %payload.ptr, align 8
  %s.read.len1711 = and i64 %s.read.len1710, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %payload.ptr, i32 0, i32 1
  %s.read.data1712 = load ptr, ptr %s.read.data, align 8
  %str.tag1718 = lshr i64 %s.read.len1710, 48
  %tag.immortal1720 = icmp eq i64 %str.tag1718, 0
  %active.gen1721 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1722 = icmp eq i64 %str.tag1718, %active.gen1721
  %tag.fast.ok1723 = or i1 %tag.immortal1720, %tag.current1722
  br i1 %tag.fast.ok1723, label %str_ok1719, label %tag.slow_check1724

str_ok1719:                                       ; preds = %tag.slow_check1724, %choice.case1704
  %start.is_neg = icmp slt i64 %"var.margin'.0", 0
  %rel.start = add i64 %s.read.len1711, %"var.margin'.0"
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %"var.margin'.0"
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len1711
  %final.start = select i1 %start.gt.len, i64 %s.read.len1711, i64 %c.start.0
  %view.empty = icmp sle i64 %s.read.len1711, %final.start
  %view.len.sub = sub i64 %s.read.len1711, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data1712, i64 %final.start
  %arena.cur1725 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur1725, i64 16)
  %str.tag.gen1727 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1728 = shl i64 %str.tag.gen1727, 48
  %str.tagged.len1729 = or i64 %view.len, %str.tag.shift1728
  store i64 %str.tagged.len1729, ptr %str.view, align 8
  %str.build.data.gep1730 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep1730, align 8
  %str.len.query1733 = load i64, ptr %str.view, align 8
  %str.len.query1734 = and i64 %str.len.query1733, 281474976710655
  %str.tag1735 = lshr i64 %str.len.query1733, 48
  %tag.immortal1737 = icmp eq i64 %str.tag1735, 0
  %active.gen1738 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1739 = icmp eq i64 %str.tag1735, %active.gen1738
  %tag.fast.ok1740 = or i1 %tag.immortal1737, %tag.current1739
  br i1 %tag.fast.ok1740, label %str_ok1736, label %tag.slow_check1741

tag.slow_check1724:                               ; preds = %choice.case1704
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1718)
  br label %str_ok1719

str_ok1736:                                       ; preds = %tag.slow_check1741, %str_ok1719
  %cmptmp1742 = icmp sgt i64 %str.len.query1734, 0
  br i1 %cmptmp1742, label %choice.then1743, label %choice.exit1703

tag.slow_check1741:                               ; preds = %str_ok1719
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1735)
  br label %str_ok1736

choice.then1743:                                  ; preds = %str_ok1736
  %arena.cur1745 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1746 = call ptr @dva_arena_alloc(ptr %arena.cur1745, i64 16)
  store i64 0, ptr %enum.alloc1746, align 8
  %pay.gep1748 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1746, i32 0, i32 1
  store ptr %str.view, ptr %pay.gep1748, align 8
  %a.null1751 = icmp eq ptr %var.assembled.0, null
  br i1 %a.null1751, label %a.create1752, label %a.check1762

a.create1752:                                     ; preds = %choice.then1743
  %arena.cur1754 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1755 = call ptr @dva_arena_alloc(ptr %arena.cur1754, i64 24)
  %arena.cur1756 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1757 = call ptr @dva_arena_alloc(ptr %arena.cur1756, i64 128)
  store i64 0, ptr %a.create1755, align 8
  %a.data.gep1759 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1755, i32 0, i32 1
  store ptr %a.buf1757, ptr %a.data.gep1759, align 8
  %a.cap.gep1760 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1755, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1760, align 8
  br label %a.check1762

a.check1762:                                      ; preds = %choice.then1743, %a.create1752
  %var.assembled.7 = phi ptr [ %a.create1755, %a.create1752 ], [ %var.assembled.0, %choice.then1743 ]
  %a.len1766 = load i64, ptr %var.assembled.7, align 8
  %a.cap1767 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.7, i32 0, i32 2
  %a.cap1768 = load i64, ptr %a.cap1767, align 8
  %a.needs.grow1769 = icmp eq i64 %a.len1766, %a.cap1768
  br i1 %a.needs.grow1769, label %a.grow1763, label %a.store1764

a.grow1763:                                       ; preds = %a.check1762
  call void @dva_array_grow(ptr %var.assembled.7)
  br label %a.store1764

a.store1764:                                      ; preds = %a.grow1763, %a.check1762
  %a.cur.data1770 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.7, i32 0, i32 1
  %a.cur.data1771 = load ptr, ptr %a.cur.data1770, align 8
  %a.cur.len1773 = load i64, ptr %var.assembled.7, align 8
  %a.elem.gep1774 = getelementptr i64, ptr %a.cur.data1771, i64 %a.cur.len1773
  %slot.p2i1775 = ptrtoint ptr %enum.alloc1746 to i64
  store i64 %slot.p2i1775, ptr %a.elem.gep1774, align 8
  %a.next.len1776 = add i64 %a.cur.len1773, 1
  store i64 %a.next.len1776, ptr %var.assembled.7, align 8
  br label %choice.exit1703

choice.case1778:                                  ; preds = %a.rd.ok1616
  %a.null1788 = icmp eq ptr %var.assembled.0, null
  br i1 %a.null1788, label %a.create1789, label %a.check1799

a.create1789:                                     ; preds = %choice.case1778
  %arena.cur1791 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1792 = call ptr @dva_arena_alloc(ptr %arena.cur1791, i64 24)
  %arena.cur1793 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1794 = call ptr @dva_arena_alloc(ptr %arena.cur1793, i64 128)
  store i64 0, ptr %a.create1792, align 8
  %a.data.gep1796 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1792, i32 0, i32 1
  store ptr %a.buf1794, ptr %a.data.gep1796, align 8
  %a.cap.gep1797 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1792, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1797, align 8
  br label %a.check1799

a.check1799:                                      ; preds = %choice.case1778, %a.create1789
  %var.assembled.8 = phi ptr [ %a.create1792, %a.create1789 ], [ %var.assembled.0, %choice.case1778 ]
  %a.len1803 = load i64, ptr %var.assembled.8, align 8
  %a.cap1804 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.8, i32 0, i32 2
  %a.cap1805 = load i64, ptr %a.cap1804, align 8
  %a.needs.grow1806 = icmp eq i64 %a.len1803, %a.cap1805
  br i1 %a.needs.grow1806, label %a.grow1800, label %a.store1801

a.grow1800:                                       ; preds = %a.check1799
  call void @dva_array_grow(ptr %var.assembled.8)
  br label %a.store1801

a.store1801:                                      ; preds = %a.grow1800, %a.check1799
  %a.cur.data1807 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.8, i32 0, i32 1
  %a.cur.data1808 = load ptr, ptr %a.cur.data1807, align 8
  %a.cur.len1810 = load i64, ptr %var.assembled.8, align 8
  %a.elem.gep1811 = getelementptr i64, ptr %a.cur.data1808, i64 %a.cur.len1810
  store i64 %a.rd.elem1627, ptr %a.elem.gep1811, align 8
  %a.next.len1813 = add i64 %a.cur.len1810, 1
  store i64 %a.next.len1813, ptr %var.assembled.8, align 8
  br label %choice.exit1703

loop.header.359:                                  ; preds = %a.store1928, %choice.exit1703
  %var.assembled.9 = phi ptr [ %var.assembled.5, %choice.exit1703 ], [ %var.assembled.10, %a.store1928 ]
  %loop.idx.359.0 = phi i64 [ 1, %choice.exit1703 ], [ %loop.next1943, %a.store1928 ]
  %loop.cond1817 = icmp slt i64 %loop.idx.359.0, %a.len.query1605
  br i1 %loop.cond1817, label %loop.body.359, label %loop.exit.359

loop.body.359:                                    ; preds = %loop.header.359
  %fld.load1823 = load ptr, ptr %pay.ptr1528, align 8
  %a.rd.nonnull1825 = icmp ne ptr %fld.load1823, null
  br i1 %a.rd.nonnull1825, label %a.rd.check1826, label %a.rd.err.null1828

loop.exit.359:                                    ; preds = %loop.header.359
  br i1 %and.355.phi, label %choice.then1945, label %choice.exit1547

a.rd.check1826:                                   ; preds = %loop.body.359
  %a.rd.len1832 = load i64, ptr %fld.load1823, align 8
  %a.rd.ge01833 = icmp sge i64 %loop.idx.359.0, 0
  %a.rd.lt1834 = icmp slt i64 %loop.idx.359.0, %a.rd.len1832
  %a.rd.bounds1835 = and i1 %a.rd.ge01833, %a.rd.lt1834
  br i1 %a.rd.bounds1835, label %a.rd.ok1827, label %a.rd.err.oob1829

a.rd.ok1827:                                      ; preds = %a.rd.check1826
  %a.rd.data1836 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1823, i32 0, i32 1
  %a.rd.data1837 = load ptr, ptr %a.rd.data1836, align 8
  %a.rd.elem.gep1838 = getelementptr i64, ptr %a.rd.data1837, i64 %loop.idx.359.0
  %a.rd.elem1839 = load i64, ptr %a.rd.elem.gep1838, align 8
  br label %a.rd.done1830

a.rd.err.null1828:                                ; preds = %loop.body.359
  %arena.cur1840 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1841 = call ptr @dva_arena_alloc(ptr %arena.cur1840, i64 56)
  store i64 4011, ptr %err.alloc1841, align 8
  %err.msg.gep1843 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1841, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1843, align 8
  %err.file.gep1844 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1841, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1844, align 8
  %err.line.gep1845 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1841, i32 0, i32 3
  store i64 0, ptr %err.line.gep1845, align 8
  %err.col.gep1846 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1841, i32 0, i32 4
  store i64 0, ptr %err.col.gep1846, align 8
  %err.ctx.gep1847 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1841, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep1847, align 8
  %err.ctx1.gep1849 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1847, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1849, align 8
  %err.p2i1850 = ptrtoint ptr %err.alloc1841 to i64
  br label %a.rd.done1830

a.rd.err.oob1829:                                 ; preds = %a.rd.check1826
  %arena.cur1851 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1852 = call ptr @dva_arena_alloc(ptr %arena.cur1851, i64 56)
  store i64 4011, ptr %err.alloc1852, align 8
  %err.msg.gep1854 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1852, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1854, align 8
  %err.file.gep1855 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1852, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1855, align 8
  %err.line.gep1856 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1852, i32 0, i32 3
  store i64 0, ptr %err.line.gep1856, align 8
  %err.col.gep1857 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1852, i32 0, i32 4
  store i64 0, ptr %err.col.gep1857, align 8
  %err.ctx.gep1858 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1852, i32 0, i32 5
  store i64 %loop.idx.359.0, ptr %err.ctx.gep1858, align 8
  %err.ctx1.gep1860 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1858, i32 0, i32 1
  store i64 %a.rd.len1832, ptr %err.ctx1.gep1860, align 8
  %err.p2i1861 = ptrtoint ptr %err.alloc1852 to i64
  br label %a.rd.done1830

a.rd.done1830:                                    ; preds = %a.rd.err.oob1829, %a.rd.err.null1828, %a.rd.ok1827
  %a.rd.tag1862 = phi i1 [ true, %a.rd.ok1827 ], [ false, %a.rd.err.null1828 ], [ false, %a.rd.err.oob1829 ]
  %a.rd.pay1863 = phi i64 [ %a.rd.elem1839, %a.rd.ok1827 ], [ %err.p2i1850, %a.rd.err.null1828 ], [ %err.p2i1861, %a.rd.err.oob1829 ]
  br i1 %a.rd.tag1862, label %unwrap.pos.360, label %unwrap.abort.360

unwrap.pos.360:                                   ; preds = %a.rd.done1830
  %a.null1915 = icmp eq ptr %var.assembled.9, null
  br i1 %a.null1915, label %a.create1916, label %a.check1926

unwrap.abort.360:                                 ; preds = %a.rd.done1830
  %8 = call i64 @write(i32 2, ptr @expect.reason.361, i64 22)
  %err.ptr1868 = inttoptr i64 %a.rd.pay1863 to ptr
  %err.code1870 = load i64, ptr %err.ptr1868, align 8
  %err.msg.gep1871 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1868, i32 0, i32 1
  %err.msg.struct1872 = load ptr, ptr %err.msg.gep1871, align 8
  %err.file.gep1873 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1868, i32 0, i32 2
  %err.file.struct1874 = load ptr, ptr %err.file.gep1873, align 8
  %err.line.gep1875 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1868, i32 0, i32 3
  %err.line1876 = load i64, ptr %err.line.gep1875, align 8
  %err.col.gep1877 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1868, i32 0, i32 4
  %err.col1878 = load i64, ptr %err.col.gep1877, align 8
  %err.msg.len1880 = load i64, ptr %err.msg.struct1872, align 8
  %err.msg.len1881 = and i64 %err.msg.len1880, 281474976710655
  %str.tag1882 = lshr i64 %err.msg.len1880, 48
  %tag.immortal1884 = icmp eq i64 %str.tag1882, 0
  %active.gen1885 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1886 = icmp eq i64 %str.tag1882, %active.gen1885
  %tag.fast.ok1887 = or i1 %tag.immortal1884, %tag.current1886
  br i1 %tag.fast.ok1887, label %str_ok1883, label %tag.slow_check1888

str_ok1883:                                       ; preds = %tag.slow_check1888, %unwrap.abort.360
  %err.msg.len321889 = trunc i64 %err.msg.len1881 to i32
  %err.msg.data1890 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1872, i32 0, i32 1
  %err.msg.data1891 = load ptr, ptr %err.msg.data1890, align 8
  %err.file.len1893 = load i64, ptr %err.file.struct1874, align 8
  %err.file.len1894 = and i64 %err.file.len1893, 281474976710655
  %str.tag1895 = lshr i64 %err.file.len1893, 48
  %tag.immortal1897 = icmp eq i64 %str.tag1895, 0
  %active.gen1898 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1899 = icmp eq i64 %str.tag1895, %active.gen1898
  %tag.fast.ok1900 = or i1 %tag.immortal1897, %tag.current1899
  br i1 %tag.fast.ok1900, label %str_ok1896, label %tag.slow_check1901

tag.slow_check1888:                               ; preds = %unwrap.abort.360
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1882)
  br label %str_ok1883

str_ok1896:                                       ; preds = %tag.slow_check1901, %str_ok1883
  %err.file.len321902 = trunc i64 %err.file.len1894 to i32
  %err.file.data1903 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1874, i32 0, i32 1
  %err.file.data1904 = load ptr, ptr %err.file.data1903, align 8
  %err.thread.rec1905 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1906 = icmp ne ptr %err.thread.rec1905, null
  br i1 %err.is.thread1906, label %err.thread1907, label %err.normal1908

tag.slow_check1901:                               ; preds = %str_ok1883
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1895)
  br label %str_ok1896

err.thread1907:                                   ; preds = %str_ok1896
  %err.haserr.gep1909 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1905, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1909, align 8
  %err.err.gep1910 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1905, i32 0, i32 7
  store ptr %err.ptr1868, ptr %err.err.gep1910, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1908:                                   ; preds = %str_ok1896
  %err.panic.printf1911 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1870, i32 %err.msg.len321889, ptr %err.msg.data1891, i32 %err.file.len321902, ptr %err.file.data1904, i64 %err.line1876, i64 %err.col1878)
  call void @exit(i32 1)
  unreachable

a.create1916:                                     ; preds = %unwrap.pos.360
  %arena.cur1918 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1919 = call ptr @dva_arena_alloc(ptr %arena.cur1918, i64 24)
  %arena.cur1920 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1921 = call ptr @dva_arena_alloc(ptr %arena.cur1920, i64 128)
  store i64 0, ptr %a.create1919, align 8
  %a.data.gep1923 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1919, i32 0, i32 1
  store ptr %a.buf1921, ptr %a.data.gep1923, align 8
  %a.cap.gep1924 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1919, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1924, align 8
  br label %a.check1926

a.check1926:                                      ; preds = %unwrap.pos.360, %a.create1916
  %var.assembled.10 = phi ptr [ %a.create1919, %a.create1916 ], [ %var.assembled.9, %unwrap.pos.360 ]
  %a.len1930 = load i64, ptr %var.assembled.10, align 8
  %a.cap1931 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.10, i32 0, i32 2
  %a.cap1932 = load i64, ptr %a.cap1931, align 8
  %a.needs.grow1933 = icmp eq i64 %a.len1930, %a.cap1932
  br i1 %a.needs.grow1933, label %a.grow1927, label %a.store1928

a.grow1927:                                       ; preds = %a.check1926
  call void @dva_array_grow(ptr %var.assembled.10)
  br label %a.store1928

a.store1928:                                      ; preds = %a.grow1927, %a.check1926
  %a.cur.data1934 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.10, i32 0, i32 1
  %a.cur.data1935 = load ptr, ptr %a.cur.data1934, align 8
  %a.cur.len1937 = load i64, ptr %var.assembled.10, align 8
  %a.elem.gep1938 = getelementptr i64, ptr %a.cur.data1935, i64 %a.cur.len1937
  store i64 %a.rd.pay1863, ptr %a.elem.gep1938, align 8
  %a.next.len1940 = add i64 %a.cur.len1937, 1
  store i64 %a.next.len1940, ptr %var.assembled.10, align 8
  %loop.next1943 = add nsw i64 %loop.idx.359.0, 1
  br label %loop.header.359

choice.then1945:                                  ; preds = %loop.exit.359
  %arena.cur1947 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1948 = call ptr @dva_arena_alloc(ptr %arena.cur1947, i64 16)
  store i64 0, ptr %enum.alloc1948, align 8
  %pay.gep1950 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1948, i32 0, i32 1
  store ptr @str.83.struct, ptr %pay.gep1950, align 8
  %a.null1952 = icmp eq ptr %var.assembled.9, null
  br i1 %a.null1952, label %a.create1953, label %a.check1963

a.create1953:                                     ; preds = %choice.then1945
  %arena.cur1955 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1956 = call ptr @dva_arena_alloc(ptr %arena.cur1955, i64 24)
  %arena.cur1957 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1958 = call ptr @dva_arena_alloc(ptr %arena.cur1957, i64 128)
  store i64 0, ptr %a.create1956, align 8
  %a.data.gep1960 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1956, i32 0, i32 1
  store ptr %a.buf1958, ptr %a.data.gep1960, align 8
  %a.cap.gep1961 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1956, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1961, align 8
  br label %a.check1963

a.check1963:                                      ; preds = %choice.then1945, %a.create1953
  %var.assembled.12 = phi ptr [ %a.create1956, %a.create1953 ], [ %var.assembled.9, %choice.then1945 ]
  %a.len1967 = load i64, ptr %var.assembled.12, align 8
  %a.cap1968 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.12, i32 0, i32 2
  %a.cap1969 = load i64, ptr %a.cap1968, align 8
  %a.needs.grow1970 = icmp eq i64 %a.len1967, %a.cap1969
  br i1 %a.needs.grow1970, label %a.grow1964, label %a.store1965

a.grow1964:                                       ; preds = %a.check1963
  call void @dva_array_grow(ptr %var.assembled.12)
  br label %a.store1965

a.store1965:                                      ; preds = %a.grow1964, %a.check1963
  %a.cur.data1971 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.12, i32 0, i32 1
  %a.cur.data1972 = load ptr, ptr %a.cur.data1971, align 8
  %a.cur.len1974 = load i64, ptr %var.assembled.12, align 8
  %a.elem.gep1975 = getelementptr i64, ptr %a.cur.data1972, i64 %a.cur.len1974
  %slot.p2i1976 = ptrtoint ptr %enum.alloc1948 to i64
  store i64 %slot.p2i1976, ptr %a.elem.gep1975, align 8
  %a.next.len1977 = add i64 %a.cur.len1974, 1
  store i64 %a.next.len1977, ptr %var.assembled.12, align 8
  br label %choice.exit1547

choice.then1980:                                  ; preds = %choice.else1609
  %arena.cur1982 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1983 = call ptr @dva_arena_alloc(ptr %arena.cur1982, i64 16)
  store i64 0, ptr %enum.alloc1983, align 8
  %pay.gep1985 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1983, i32 0, i32 1
  store ptr @str.83.struct, ptr %pay.gep1985, align 8
  %a.null1987 = icmp eq ptr %var.assembled.0, null
  br i1 %a.null1987, label %a.create1988, label %a.check1998

a.create1988:                                     ; preds = %choice.then1980
  %arena.cur1990 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1991 = call ptr @dva_arena_alloc(ptr %arena.cur1990, i64 24)
  %arena.cur1992 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1993 = call ptr @dva_arena_alloc(ptr %arena.cur1992, i64 128)
  store i64 0, ptr %a.create1991, align 8
  %a.data.gep1995 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1991, i32 0, i32 1
  store ptr %a.buf1993, ptr %a.data.gep1995, align 8
  %a.cap.gep1996 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1991, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1996, align 8
  br label %a.check1998

a.check1998:                                      ; preds = %choice.then1980, %a.create1988
  %var.assembled.14 = phi ptr [ %a.create1991, %a.create1988 ], [ %var.assembled.0, %choice.then1980 ]
  %a.len2002 = load i64, ptr %var.assembled.14, align 8
  %a.cap2003 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.14, i32 0, i32 2
  %a.cap2004 = load i64, ptr %a.cap2003, align 8
  %a.needs.grow2005 = icmp eq i64 %a.len2002, %a.cap2004
  br i1 %a.needs.grow2005, label %a.grow1999, label %a.store2000

a.grow1999:                                       ; preds = %a.check1998
  call void @dva_array_grow(ptr %var.assembled.14)
  br label %a.store2000

a.store2000:                                      ; preds = %a.grow1999, %a.check1998
  %a.cur.data2006 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.14, i32 0, i32 1
  %a.cur.data2007 = load ptr, ptr %a.cur.data2006, align 8
  %a.cur.len2009 = load i64, ptr %var.assembled.14, align 8
  %a.elem.gep2010 = getelementptr i64, ptr %a.cur.data2007, i64 %a.cur.len2009
  %slot.p2i2011 = ptrtoint ptr %enum.alloc1983 to i64
  store i64 %slot.p2i2011, ptr %a.elem.gep2010, align 8
  %a.next.len2012 = add i64 %a.cur.len2009, 1
  store i64 %a.next.len2012, ptr %var.assembled.14, align 8
  br label %choice.exit1547

a.create2019:                                     ; preds = %loop.exit.352
  %arena.cur2021 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2022 = call ptr @dva_arena_alloc(ptr %arena.cur2021, i64 24)
  %arena.cur2023 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf2024 = call ptr @dva_arena_alloc(ptr %arena.cur2023, i64 128)
  store i64 0, ptr %a.create2022, align 8
  %a.data.gep2026 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2022, i32 0, i32 1
  store ptr %a.buf2024, ptr %a.data.gep2026, align 8
  %a.cap.gep2027 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2022, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2027, align 8
  br label %a.after2020

a.after2020:                                      ; preds = %a.create2019, %loop.exit.352
  %var.assembled.15 = phi ptr [ %a.create2022, %a.create2019 ], [ %var.assembled.0, %loop.exit.352 ]
  %a.len.query2030 = load i64, ptr %var.assembled.15, align 8
  br label %loop.header.362

loop.header.362:                                  ; preds = %unwrap.pos.363, %a.after2020
  %var.assembled.16 = phi ptr [ %var.assembled.15, %a.after2020 ], [ %var.assembled.16, %unwrap.pos.363 ]
  %"var.expr_count'.0" = phi i64 [ 0, %a.after2020 ], [ %spec.select2471, %unwrap.pos.363 ]
  %loop.idx.362.0 = phi i64 [ 0, %a.after2020 ], [ %loop.next2151, %unwrap.pos.363 ]
  %loop.cond2032 = icmp slt i64 %loop.idx.362.0, %a.len.query2030
  br i1 %loop.cond2032, label %a.rd.check2051, label %loop.exit.362

loop.exit.362:                                    ; preds = %loop.header.362
  %cmptmp2153 = icmp eq i64 %"var.expr_count'.0", 0
  br i1 %cmptmp2153, label %b.buf.len2163, label %a.after2420

a.rd.check2051:                                   ; preds = %loop.header.362
  %a.rd.len2057 = load i64, ptr %var.assembled.16, align 8
  %a.rd.ge02058 = icmp sge i64 %loop.idx.362.0, 0
  %a.rd.lt2059 = icmp slt i64 %loop.idx.362.0, %a.rd.len2057
  %a.rd.bounds2060 = and i1 %a.rd.ge02058, %a.rd.lt2059
  br i1 %a.rd.bounds2060, label %a.rd.ok2052, label %a.rd.err.oob2054

a.rd.ok2052:                                      ; preds = %a.rd.check2051
  %a.rd.data2061 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.16, i32 0, i32 1
  %a.rd.data2062 = load ptr, ptr %a.rd.data2061, align 8
  %a.rd.elem.gep2063 = getelementptr i64, ptr %a.rd.data2062, i64 %loop.idx.362.0
  %a.rd.elem2064 = load i64, ptr %a.rd.elem.gep2063, align 8
  br label %a.rd.done2055

a.rd.err.oob2054:                                 ; preds = %a.rd.check2051
  %arena.cur2076 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc2077 = call ptr @dva_arena_alloc(ptr %arena.cur2076, i64 56)
  store i64 4011, ptr %err.alloc2077, align 8
  %err.msg.gep2079 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2077, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep2079, align 8
  %err.file.gep2080 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2077, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep2080, align 8
  %err.line.gep2081 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2077, i32 0, i32 3
  store i64 1851, ptr %err.line.gep2081, align 8
  %err.col.gep2082 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2077, i32 0, i32 4
  store i64 25, ptr %err.col.gep2082, align 8
  %err.ctx.gep2083 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2077, i32 0, i32 5
  store i64 %loop.idx.362.0, ptr %err.ctx.gep2083, align 8
  %err.ctx1.gep2085 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep2083, i32 0, i32 1
  store i64 %a.rd.len2057, ptr %err.ctx1.gep2085, align 8
  %err.p2i2086 = ptrtoint ptr %err.alloc2077 to i64
  br label %a.rd.done2055

a.rd.done2055:                                    ; preds = %a.rd.err.oob2054, %a.rd.ok2052
  %a.rd.tag2087 = phi i1 [ true, %a.rd.ok2052 ], [ false, %a.rd.err.oob2054 ]
  %a.rd.pay2088 = phi i64 [ %a.rd.elem2064, %a.rd.ok2052 ], [ %err.p2i2086, %a.rd.err.oob2054 ]
  br i1 %a.rd.tag2087, label %unwrap.pos.363, label %unwrap.abort.363

unwrap.pos.363:                                   ; preds = %a.rd.done2055
  %pay.ptr2138 = inttoptr i64 %a.rd.pay2088 to ptr
  %tag.id2143 = load i64, ptr %pay.ptr2138, align 8
  %tag.match2144 = icmp eq i64 %tag.id2143, 1
  %addtmp2149 = add i64 %"var.expr_count'.0", 1
  %spec.select2471 = select i1 %tag.match2144, i64 %addtmp2149, i64 %"var.expr_count'.0"
  %loop.next2151 = add i64 %loop.idx.362.0, 1
  br label %loop.header.362

unwrap.abort.363:                                 ; preds = %a.rd.done2055
  %9 = call i64 @write(i32 2, ptr @expect.reason.364, i64 26)
  %err.ptr2093 = inttoptr i64 %a.rd.pay2088 to ptr
  %err.code2095 = load i64, ptr %err.ptr2093, align 8
  %err.msg.gep2096 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr2093, i32 0, i32 1
  %err.msg.struct2097 = load ptr, ptr %err.msg.gep2096, align 8
  %err.file.gep2098 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr2093, i32 0, i32 2
  %err.file.struct2099 = load ptr, ptr %err.file.gep2098, align 8
  %err.line.gep2100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr2093, i32 0, i32 3
  %err.line2101 = load i64, ptr %err.line.gep2100, align 8
  %err.col.gep2102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr2093, i32 0, i32 4
  %err.col2103 = load i64, ptr %err.col.gep2102, align 8
  %err.msg.len2105 = load i64, ptr %err.msg.struct2097, align 8
  %err.msg.len2106 = and i64 %err.msg.len2105, 281474976710655
  %str.tag2107 = lshr i64 %err.msg.len2105, 48
  %tag.immortal2109 = icmp eq i64 %str.tag2107, 0
  %active.gen2110 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2111 = icmp eq i64 %str.tag2107, %active.gen2110
  %tag.fast.ok2112 = or i1 %tag.immortal2109, %tag.current2111
  br i1 %tag.fast.ok2112, label %str_ok2108, label %tag.slow_check2113

str_ok2108:                                       ; preds = %tag.slow_check2113, %unwrap.abort.363
  %err.msg.len322114 = trunc i64 %err.msg.len2106 to i32
  %err.msg.data2115 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct2097, i32 0, i32 1
  %err.msg.data2116 = load ptr, ptr %err.msg.data2115, align 8
  %err.file.len2118 = load i64, ptr %err.file.struct2099, align 8
  %err.file.len2119 = and i64 %err.file.len2118, 281474976710655
  %str.tag2120 = lshr i64 %err.file.len2118, 48
  %tag.immortal2122 = icmp eq i64 %str.tag2120, 0
  %active.gen2123 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2124 = icmp eq i64 %str.tag2120, %active.gen2123
  %tag.fast.ok2125 = or i1 %tag.immortal2122, %tag.current2124
  br i1 %tag.fast.ok2125, label %str_ok2121, label %tag.slow_check2126

tag.slow_check2113:                               ; preds = %unwrap.abort.363
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2107)
  br label %str_ok2108

str_ok2121:                                       ; preds = %tag.slow_check2126, %str_ok2108
  %err.file.len322127 = trunc i64 %err.file.len2119 to i32
  %err.file.data2128 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct2099, i32 0, i32 1
  %err.file.data2129 = load ptr, ptr %err.file.data2128, align 8
  %err.thread.rec2130 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread2131 = icmp ne ptr %err.thread.rec2130, null
  br i1 %err.is.thread2131, label %err.thread2132, label %err.normal2133

tag.slow_check2126:                               ; preds = %str_ok2108
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2120)
  br label %str_ok2121

err.thread2132:                                   ; preds = %str_ok2121
  %err.haserr.gep2134 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec2130, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep2134, align 8
  %err.err.gep2135 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec2130, i32 0, i32 7
  store ptr %err.ptr2093, ptr %err.err.gep2135, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal2133:                                   ; preds = %str_ok2121
  %err.panic.printf2136 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code2095, i32 %err.msg.len322114, ptr %err.msg.data2116, i32 %err.file.len322127, ptr %err.file.data2129, i64 %err.line2101, i64 %err.col2103)
  call void @exit(i32 1)
  unreachable

b.buf.len2163:                                    ; preds = %loop.exit.362
  %arena.cur2166 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf2167 = call ptr @dva_arena_alloc(ptr %arena.cur2166, i64 513)
  store i8 0, ptr %b.buf2167, align 1
  %a.len.query2183 = load i64, ptr %var.assembled.16, align 8
  br label %loop.header.365

loop.header.365:                                  ; preds = %choice.exit2293, %b.buf.len2163
  %builder.new.salloc.sroa.12.0 = phi i64 [ 512, %b.buf.len2163 ], [ %builder.new.salloc.sroa.12.1, %choice.exit2293 ]
  %builder.new.salloc.sroa.6.0 = phi ptr [ %b.buf2167, %b.buf.len2163 ], [ %builder.new.salloc.sroa.6.1, %choice.exit2293 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %b.buf.len2163 ], [ %builder.new.salloc.sroa.0.1, %choice.exit2293 ]
  %var.assembled.19 = phi ptr [ %var.assembled.16, %b.buf.len2163 ], [ %var.assembled.19, %choice.exit2293 ]
  %loop.idx.365.0 = phi i64 [ 0, %b.buf.len2163 ], [ %loop.next2357, %choice.exit2293 ]
  %loop.cond2185 = icmp slt i64 %loop.idx.365.0, %a.len.query2183
  br i1 %loop.cond2185, label %a.rd.check2205, label %loop.exit.365

loop.exit.365:                                    ; preds = %loop.header.365
  %b.freeze.arena2363 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep2364 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena2363, i32 0, i32 1
  %b.freeze.nc2365 = load i64, ptr %b.freeze.nc.gep2364, align 8
  %b.freeze.has.chunk2366 = icmp sgt i64 %b.freeze.nc2365, 0
  br i1 %b.freeze.has.chunk2366, label %b.freeze.check2367, label %b.freeze.done2369

a.rd.check2205:                                   ; preds = %loop.header.365
  %a.rd.len2211 = load i64, ptr %var.assembled.19, align 8
  %a.rd.ge02212 = icmp sge i64 %loop.idx.365.0, 0
  %a.rd.lt2213 = icmp slt i64 %loop.idx.365.0, %a.rd.len2211
  %a.rd.bounds2214 = and i1 %a.rd.ge02212, %a.rd.lt2213
  br i1 %a.rd.bounds2214, label %a.rd.ok2206, label %a.rd.err.oob2208

a.rd.ok2206:                                      ; preds = %a.rd.check2205
  %a.rd.data2215 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.19, i32 0, i32 1
  %a.rd.data2216 = load ptr, ptr %a.rd.data2215, align 8
  %a.rd.elem.gep2217 = getelementptr i64, ptr %a.rd.data2216, i64 %loop.idx.365.0
  %a.rd.elem2218 = load i64, ptr %a.rd.elem.gep2217, align 8
  br label %a.rd.done2209

a.rd.err.oob2208:                                 ; preds = %a.rd.check2205
  %arena.cur2230 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc2231 = call ptr @dva_arena_alloc(ptr %arena.cur2230, i64 56)
  store i64 4011, ptr %err.alloc2231, align 8
  %err.msg.gep2233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2231, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep2233, align 8
  %err.file.gep2234 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2231, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep2234, align 8
  %err.line.gep2235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2231, i32 0, i32 3
  store i64 1858, ptr %err.line.gep2235, align 8
  %err.col.gep2236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2231, i32 0, i32 4
  store i64 31, ptr %err.col.gep2236, align 8
  %err.ctx.gep2237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2231, i32 0, i32 5
  store i64 %loop.idx.365.0, ptr %err.ctx.gep2237, align 8
  %err.ctx1.gep2239 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep2237, i32 0, i32 1
  store i64 %a.rd.len2211, ptr %err.ctx1.gep2239, align 8
  %err.p2i2240 = ptrtoint ptr %err.alloc2231 to i64
  br label %a.rd.done2209

a.rd.done2209:                                    ; preds = %a.rd.err.oob2208, %a.rd.ok2206
  %a.rd.tag2241 = phi i1 [ true, %a.rd.ok2206 ], [ false, %a.rd.err.oob2208 ]
  %a.rd.pay2242 = phi i64 [ %a.rd.elem2218, %a.rd.ok2206 ], [ %err.p2i2240, %a.rd.err.oob2208 ]
  br i1 %a.rd.tag2241, label %unwrap.pos.366, label %unwrap.abort.366

unwrap.pos.366:                                   ; preds = %a.rd.done2209
  %pay.ptr2292 = inttoptr i64 %a.rd.pay2242 to ptr
  %tag.id2297 = load i64, ptr %pay.ptr2292, align 8
  %tag.match2298 = icmp eq i64 %tag.id2297, 0
  br i1 %tag.match2298, label %choice.case2294, label %choice.exit2293

unwrap.abort.366:                                 ; preds = %a.rd.done2209
  %10 = call i64 @write(i32 2, ptr @expect.reason.367, i64 26)
  %err.ptr2247 = inttoptr i64 %a.rd.pay2242 to ptr
  %err.code2249 = load i64, ptr %err.ptr2247, align 8
  %err.msg.gep2250 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr2247, i32 0, i32 1
  %err.msg.struct2251 = load ptr, ptr %err.msg.gep2250, align 8
  %err.file.gep2252 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr2247, i32 0, i32 2
  %err.file.struct2253 = load ptr, ptr %err.file.gep2252, align 8
  %err.line.gep2254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr2247, i32 0, i32 3
  %err.line2255 = load i64, ptr %err.line.gep2254, align 8
  %err.col.gep2256 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr2247, i32 0, i32 4
  %err.col2257 = load i64, ptr %err.col.gep2256, align 8
  %err.msg.len2259 = load i64, ptr %err.msg.struct2251, align 8
  %err.msg.len2260 = and i64 %err.msg.len2259, 281474976710655
  %str.tag2261 = lshr i64 %err.msg.len2259, 48
  %tag.immortal2263 = icmp eq i64 %str.tag2261, 0
  %active.gen2264 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2265 = icmp eq i64 %str.tag2261, %active.gen2264
  %tag.fast.ok2266 = or i1 %tag.immortal2263, %tag.current2265
  br i1 %tag.fast.ok2266, label %str_ok2262, label %tag.slow_check2267

str_ok2262:                                       ; preds = %tag.slow_check2267, %unwrap.abort.366
  %err.msg.len322268 = trunc i64 %err.msg.len2260 to i32
  %err.msg.data2269 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct2251, i32 0, i32 1
  %err.msg.data2270 = load ptr, ptr %err.msg.data2269, align 8
  %err.file.len2272 = load i64, ptr %err.file.struct2253, align 8
  %err.file.len2273 = and i64 %err.file.len2272, 281474976710655
  %str.tag2274 = lshr i64 %err.file.len2272, 48
  %tag.immortal2276 = icmp eq i64 %str.tag2274, 0
  %active.gen2277 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2278 = icmp eq i64 %str.tag2274, %active.gen2277
  %tag.fast.ok2279 = or i1 %tag.immortal2276, %tag.current2278
  br i1 %tag.fast.ok2279, label %str_ok2275, label %tag.slow_check2280

tag.slow_check2267:                               ; preds = %unwrap.abort.366
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2261)
  br label %str_ok2262

str_ok2275:                                       ; preds = %tag.slow_check2280, %str_ok2262
  %err.file.len322281 = trunc i64 %err.file.len2273 to i32
  %err.file.data2282 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct2253, i32 0, i32 1
  %err.file.data2283 = load ptr, ptr %err.file.data2282, align 8
  %err.thread.rec2284 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread2285 = icmp ne ptr %err.thread.rec2284, null
  br i1 %err.is.thread2285, label %err.thread2286, label %err.normal2287

tag.slow_check2280:                               ; preds = %str_ok2262
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2274)
  br label %str_ok2275

err.thread2286:                                   ; preds = %str_ok2275
  %err.haserr.gep2288 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec2284, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep2288, align 8
  %err.err.gep2289 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec2284, i32 0, i32 7
  store ptr %err.ptr2247, ptr %err.err.gep2289, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal2287:                                   ; preds = %str_ok2275
  %err.panic.printf2290 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code2249, i32 %err.msg.len322268, ptr %err.msg.data2270, i32 %err.file.len322281, ptr %err.file.data2283, i64 %err.line2255, i64 %err.col2257)
  call void @exit(i32 1)
  unreachable

choice.exit2293:                                  ; preds = %unwrap.pos.366, %b.grow_done2330
  %builder.new.salloc.sroa.12.1 = phi i64 [ %builder.new.salloc.sroa.12.2, %b.grow_done2330 ], [ %builder.new.salloc.sroa.12.0, %unwrap.pos.366 ]
  %builder.new.salloc.sroa.6.1 = phi ptr [ %builder.new.salloc.sroa.6.2, %b.grow_done2330 ], [ %builder.new.salloc.sroa.6.0, %unwrap.pos.366 ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum2320, %b.grow_done2330 ], [ %builder.new.salloc.sroa.0.0, %unwrap.pos.366 ]
  %loop.next2357 = add i64 %loop.idx.365.0, 1
  br label %loop.header.365

choice.case2294:                                  ; preds = %unwrap.pos.366
  %pay.gep2299 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr2292, i32 0, i32 1
  %payload.ptr2300 = load ptr, ptr %pay.gep2299, align 8
  %app.str.len2306 = load i64, ptr %payload.ptr2300, align 8
  %app.str.len2307 = and i64 %app.str.len2306, 281474976710655
  %str.tag2308 = lshr i64 %app.str.len2306, 48
  %tag.immortal2310 = icmp eq i64 %str.tag2308, 0
  %active.gen2311 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current2312 = icmp eq i64 %str.tag2308, %active.gen2311
  %tag.fast.ok2313 = or i1 %tag.immortal2310, %tag.current2312
  br i1 %tag.fast.ok2313, label %str_ok2309, label %tag.slow_check2314

str_ok2309:                                       ; preds = %tag.slow_check2314, %choice.case2294
  %app.str.data2315 = getelementptr inbounds { i64, ptr }, ptr %payload.ptr2300, i32 0, i32 1
  %app.str.data2316 = load ptr, ptr %app.str.data2315, align 8
  %b.app.new.len2319 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len2307)
  %sum2320 = extractvalue { i64, i1 } %b.app.new.len2319, 0
  %ovf2321 = extractvalue { i64, i1 } %b.app.new.len2319, 1
  br i1 %ovf2321, label %str_overflow_abort2323, label %b.app.new.len2322

tag.slow_check2314:                               ; preds = %choice.case2294
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag2308)
  br label %str_ok2309

b.app.new.len2322:                                ; preds = %str_ok2309
  %b.need.grow2327 = icmp slt i64 %builder.new.salloc.sroa.12.0, %sum2320
  br i1 %b.need.grow2327, label %b.grow22328, label %b.grow_done2330

str_overflow_abort2323:                           ; preds = %str_ok2309
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow22328:                                      ; preds = %b.app.new.len2322
  %b.cap22331 = mul i64 %builder.new.salloc.sroa.12.0, 2
  %b.cap.small2332 = icmp slt i64 %b.cap22331, 16
  %b.cap.grow2333 = select i1 %b.cap.small2332, i64 16, i64 %b.cap22331
  %b.cap.need2334 = icmp slt i64 %b.cap.grow2333, %sum2320
  %b.new.cap2335 = select i1 %b.cap.need2334, i64 %sum2320, i64 %b.cap.grow2333
  %b.new.buf.len22340 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap2335, i64 1)
  %sum2341 = extractvalue { i64, i1 } %b.new.buf.len22340, 0
  %ovf2342 = extractvalue { i64, i1 } %b.new.buf.len22340, 1
  br i1 %ovf2342, label %str_overflow_abort2344, label %b.new.buf.len22343

b.grow_done2330:                                  ; preds = %b.app.new.len2322, %b.new.buf.len22343
  %builder.new.salloc.sroa.12.2 = phi i64 [ %b.new.cap2335, %b.new.buf.len22343 ], [ %builder.new.salloc.sroa.12.0, %b.app.new.len2322 ]
  %builder.new.salloc.sroa.6.2 = phi ptr [ %b.new.buf22347, %b.new.buf.len22343 ], [ %builder.new.salloc.sroa.6.0, %b.app.new.len2322 ]
  %b.app.dst2353 = getelementptr i8, ptr %builder.new.salloc.sroa.6.2, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst2353, ptr align 1 %app.str.data2316, i64 %app.str.len2307, i1 false)
  %b.app.nul2354 = getelementptr i8, ptr %builder.new.salloc.sroa.6.2, i64 %sum2320
  store i8 0, ptr %b.app.nul2354, align 1
  br label %choice.exit2293

b.new.buf.len22343:                               ; preds = %b.grow22328
  %arena.cur2346 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf22347 = call ptr @dva_arena_alloc(ptr %arena.cur2346, i64 %sum2341)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf22347, ptr align 1 %builder.new.salloc.sroa.6.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul2348 = getelementptr i8, ptr %b.new.buf22347, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul2348, align 1
  br label %b.grow_done2330

str_overflow_abort2344:                           ; preds = %b.grow22328
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check2367:                               ; preds = %loop.exit.365
  %b.freeze.last.idx2370 = sub nuw nsw i64 %b.freeze.nc2365, 1
  %b.freeze.chunks.gep2371 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena2363, i32 0, i32 3
  %b.freeze.chunk.slot2372 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep2371, i64 0, i64 %b.freeze.last.idx2370
  %b.freeze.last.chunk2373 = load ptr, ptr %b.freeze.chunk.slot2372, align 8
  %b.freeze.off.gep2374 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena2363, i32 0, i32 2
  %b.freeze.off2375 = load i64, ptr %b.freeze.off.gep2374, align 8
  %b.freeze.bump2376 = getelementptr i8, ptr %b.freeze.last.chunk2373, i64 %b.freeze.off2375
  %b.freeze.cap2378 = load i64, ptr %b.freeze.arena2363, align 8
  %b.freeze.chunk.end2379 = getelementptr i8, ptr %b.freeze.last.chunk2373, i64 %b.freeze.cap2378
  %b.freeze.ge.chunk2380 = icmp uge ptr %builder.new.salloc.sroa.6.0, %b.freeze.last.chunk2373
  %b.freeze.lt.end2381 = icmp ult ptr %builder.new.salloc.sroa.6.0, %b.freeze.chunk.end2379
  %b.freeze.in.chunk2382 = and i1 %b.freeze.ge.chunk2380, %b.freeze.lt.end2381
  %b.freeze.ge.bump2383 = icmp uge ptr %builder.new.salloc.sroa.6.0, %b.freeze.bump2376
  %b.freeze.reaped2384 = and i1 %b.freeze.in.chunk2382, %b.freeze.ge.bump2383
  br i1 %b.freeze.reaped2384, label %b.freeze.copy2368, label %b.freeze.done2369

b.freeze.copy2368:                                ; preds = %b.freeze.check2367
  %b.freeze.alen2385 = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.freeze.fresh2387 = call ptr @dva_arena_alloc(ptr %b.freeze.arena2363, i64 %b.freeze.alen2385)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh2387, ptr align 1 %builder.new.salloc.sroa.6.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.freeze.nul2388 = getelementptr i8, ptr %b.freeze.fresh2387, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.freeze.nul2388, align 1
  br label %b.freeze.done2369

b.freeze.done2369:                                ; preds = %b.freeze.copy2368, %b.freeze.check2367, %loop.exit.365
  %b.freeze.data2389 = phi ptr [ %builder.new.salloc.sroa.6.0, %loop.exit.365 ], [ %builder.new.salloc.sroa.6.0, %b.freeze.check2367 ], [ %b.freeze.fresh2387, %b.freeze.copy2368 ]
  %arena.cur2390 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze2391 = call ptr @dva_arena_alloc(ptr %arena.cur2390, i64 16)
  %str.tag.gen2393 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift2394 = shl i64 %str.tag.gen2393, 48
  %str.tagged.len2395 = or i64 %builder.new.salloc.sroa.0.0, %str.tag.shift2394
  store i64 %str.tagged.len2395, ptr %builder.freeze2391, align 8
  %str.build.data.gep2396 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze2391, i32 0, i32 1
  store ptr %b.freeze.data2389, ptr %str.build.data.gep2396, align 8
  %arena.cur2401 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2402 = call ptr @dva_arena_alloc(ptr %arena.cur2401, i64 16)
  store i64 5, ptr %enum.alloc2402, align 8
  %pay.gep2404 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2402, i32 0, i32 1
  store ptr null, ptr %pay.gep2404, align 8
  %fld.load2408 = load i64, ptr %fld.gep22, align 8
  %subtmp2410 = sub i64 %fld.load2408, %1
  %call.res2414 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc2402, i64 %1, i64 %subtmp2410, i64 %2, i64 %3, ptr %builder.freeze2391)
  br label %choice.exit1205

a.after2420:                                      ; preds = %loop.exit.362
  %call.res2432 = call ptr @"lexer::emit_interp_tokens"(ptr %0, ptr %var.assembled.16, i64 %1, i64 %2, i64 %3)
  br label %choice.exit1205
}

declare { i64, ptr } @"diag::E1018_multiline_unterminated"() #3

define ptr @"lexer::scan_str_expr"(ptr %0, i1 %1) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %call.res = call ptr @"lexer::lex_init"(ptr %fld.load)
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %call.res, i32 0, i32 1
  store i64 %fld.load4, ptr %fld.gep5, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %call.res, i32 0, i32 2
  store i64 %fld.load9, ptr %fld.gep10, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %call.res, i32 0, i32 3
  store i64 %fld.load14, ptr %fld.gep15, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %call.res, i32 0, i32 4
  store i64 0, ptr %fld.gep17, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 11
  %fld.load21 = load ptr, ptr %fld.gep20, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %call.res, i32 0, i32 11
  store ptr %fld.load21, ptr %fld.gep22, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 12
  %fld.load26 = load ptr, ptr %fld.gep25, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %call.res, i32 0, i32 12
  store ptr %fld.load26, ptr %fld.gep27, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %loop.header.343

loop.header.343:                                  ; preds = %loop.latch.343, %entry
  %var.etoks.0 = phi ptr [ %a.new, %entry ], [ %var.etoks.1, %loop.latch.343 ]
  %"var.nesting'.0" = phi i64 [ 0, %entry ], [ %"var.nesting'.1", %loop.latch.343 ]
  %loop.idx.343.0 = phi i64 [ 0, %entry ], [ %loop.next, %loop.latch.343 ]
  %call.res30 = call ptr @"lexer::next_tok"(ptr %call.res, i64 0)
  %fld.load33 = load ptr, ptr %call.res30, align 8
  %tag.id = load i64, ptr %fld.load33, align 8
  switch i64 %tag.id, label %choice.next80 [
    i64 1, label %choice.case
    i64 17, label %choice.case41
    i64 16, label %loop.latch.343
    i64 15, label %loop.latch.343
    i64 11, label %choice.case61
    i64 12, label %choice.case79
  ]

loop.latch.343:                                   ; preds = %loop.header.343, %loop.header.343, %choice.case41, %a.store, %a.store103, %a.store132
  %var.etoks.1 = phi ptr [ %var.etoks.3, %a.store ], [ %var.etoks.4, %a.store103 ], [ %var.etoks.5, %a.store132 ], [ %var.etoks.0, %choice.case41 ], [ %var.etoks.0, %loop.header.343 ], [ %var.etoks.0, %loop.header.343 ]
  %"var.nesting'.1" = phi i64 [ %addtmp, %a.store ], [ %subtmp, %a.store103 ], [ %"var.nesting'.0", %a.store132 ], [ %"var.nesting'.0", %choice.case41 ], [ %"var.nesting'.0", %loop.header.343 ], [ %"var.nesting'.0", %loop.header.343 ]
  %loop.next = add i64 %loop.idx.343.0, 1
  br label %loop.header.343

loop.exit.343:                                    ; preds = %choice.case79, %choice.then, %choice.case
  %fld.load149 = load i64, ptr %fld.gep5, align 8
  store i64 %fld.load149, ptr %fld.gep3, align 8
  %fld.load154 = load i64, ptr %fld.gep10, align 8
  store i64 %fld.load154, ptr %fld.gep8, align 8
  %fld.load159 = load i64, ptr %fld.gep15, align 8
  store i64 %fld.load159, ptr %fld.gep13, align 8
  %a.null163 = icmp eq ptr %var.etoks.0, null
  br i1 %a.null163, label %a.create164, label %a.after165

choice.case:                                      ; preds = %loop.header.343
  %fld.load36 = load i64, ptr %fld.gep8, align 8
  %fld.load39 = load i64, ptr %fld.gep13, align 8
  %call.res40 = call i64 @"lexer::fail"(i64 1018, i64 %fld.load36, i64 %fld.load39, ptr @str.115.struct)
  br label %loop.exit.343

choice.case41:                                    ; preds = %loop.header.343
  %nottmp = xor i1 %1, true
  br i1 %nottmp, label %choice.then, label %loop.latch.343

choice.then:                                      ; preds = %choice.case41
  %fld.load50 = load i64, ptr %fld.gep8, align 8
  %fld.load53 = load i64, ptr %fld.gep13, align 8
  %call.res54 = call i64 @"lexer::fail"(i64 1018, i64 %fld.load50, i64 %fld.load53, ptr @str.115.struct)
  br label %loop.exit.343

choice.case61:                                    ; preds = %loop.header.343
  %addtmp = add i64 %"var.nesting'.0", 1
  %a.null = icmp eq ptr %var.etoks.0, null
  br i1 %a.null, label %a.create, label %a.check

a.create:                                         ; preds = %choice.case61
  %arena.cur68 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 24)
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 128)
  store i64 0, ptr %a.create69, align 8
  %a.data.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create69, i32 0, i32 1
  store ptr %a.buf71, ptr %a.data.gep73, align 8
  %a.cap.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create69, i32 0, i32 2
  store i64 16, ptr %a.cap.gep74, align 8
  br label %a.check

a.check:                                          ; preds = %choice.case61, %a.create
  %var.etoks.3 = phi ptr [ %a.create69, %a.create ], [ %var.etoks.0, %choice.case61 ]
  %a.len75 = load i64, ptr %var.etoks.3, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.etoks.3, i32 0, i32 2
  %a.cap76 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len75, %a.cap76
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.etoks.3)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.etoks.3, i32 0, i32 1
  %a.cur.data77 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len78 = load i64, ptr %var.etoks.3, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data77, i64 %a.cur.len78
  %slot.p2i = ptrtoint ptr %call.res30 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len78, 1
  store i64 %a.next.len, ptr %var.etoks.3, align 8
  br label %loop.latch.343

choice.case79:                                    ; preds = %loop.header.343
  %cmptmp = icmp eq i64 %"var.nesting'.0", 0
  br i1 %cmptmp, label %loop.exit.343, label %choice.else

choice.next80:                                    ; preds = %loop.header.343
  %a.null119 = icmp eq ptr %var.etoks.0, null
  br i1 %a.null119, label %a.create120, label %a.check130

choice.else:                                      ; preds = %choice.case79
  %subtmp = sub nuw i64 %"var.nesting'.0", 1
  %a.null90 = icmp eq ptr %var.etoks.0, null
  br i1 %a.null90, label %a.create91, label %a.check101

a.create91:                                       ; preds = %choice.else
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 24)
  %arena.cur95 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 128)
  store i64 0, ptr %a.create94, align 8
  %a.data.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 1
  store ptr %a.buf96, ptr %a.data.gep98, align 8
  %a.cap.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 2
  store i64 16, ptr %a.cap.gep99, align 8
  br label %a.check101

a.check101:                                       ; preds = %choice.else, %a.create91
  %var.etoks.4 = phi ptr [ %a.create94, %a.create91 ], [ %var.etoks.0, %choice.else ]
  %a.len105 = load i64, ptr %var.etoks.4, align 8
  %a.cap106 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.etoks.4, i32 0, i32 2
  %a.cap107 = load i64, ptr %a.cap106, align 8
  %a.needs.grow108 = icmp eq i64 %a.len105, %a.cap107
  br i1 %a.needs.grow108, label %a.grow102, label %a.store103

a.grow102:                                        ; preds = %a.check101
  call void @dva_array_grow(ptr %var.etoks.4)
  br label %a.store103

a.store103:                                       ; preds = %a.grow102, %a.check101
  %a.cur.data109 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.etoks.4, i32 0, i32 1
  %a.cur.data110 = load ptr, ptr %a.cur.data109, align 8
  %a.cur.len112 = load i64, ptr %var.etoks.4, align 8
  %a.elem.gep113 = getelementptr i64, ptr %a.cur.data110, i64 %a.cur.len112
  %slot.p2i114 = ptrtoint ptr %call.res30 to i64
  store i64 %slot.p2i114, ptr %a.elem.gep113, align 8
  %a.next.len115 = add i64 %a.cur.len112, 1
  store i64 %a.next.len115, ptr %var.etoks.4, align 8
  br label %loop.latch.343

a.create120:                                      ; preds = %choice.next80
  %arena.cur122 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 24)
  %arena.cur124 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf125 = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 128)
  store i64 0, ptr %a.create123, align 8
  %a.data.gep127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create123, i32 0, i32 1
  store ptr %a.buf125, ptr %a.data.gep127, align 8
  %a.cap.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create123, i32 0, i32 2
  store i64 16, ptr %a.cap.gep128, align 8
  br label %a.check130

a.check130:                                       ; preds = %choice.next80, %a.create120
  %var.etoks.5 = phi ptr [ %a.create123, %a.create120 ], [ %var.etoks.0, %choice.next80 ]
  %a.len134 = load i64, ptr %var.etoks.5, align 8
  %a.cap135 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.etoks.5, i32 0, i32 2
  %a.cap136 = load i64, ptr %a.cap135, align 8
  %a.needs.grow137 = icmp eq i64 %a.len134, %a.cap136
  br i1 %a.needs.grow137, label %a.grow131, label %a.store132

a.grow131:                                        ; preds = %a.check130
  call void @dva_array_grow(ptr %var.etoks.5)
  br label %a.store132

a.store132:                                       ; preds = %a.grow131, %a.check130
  %a.cur.data138 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.etoks.5, i32 0, i32 1
  %a.cur.data139 = load ptr, ptr %a.cur.data138, align 8
  %a.cur.len141 = load i64, ptr %var.etoks.5, align 8
  %a.elem.gep142 = getelementptr i64, ptr %a.cur.data139, i64 %a.cur.len141
  %slot.p2i143 = ptrtoint ptr %call.res30 to i64
  store i64 %slot.p2i143, ptr %a.elem.gep142, align 8
  %a.next.len144 = add i64 %a.cur.len141, 1
  store i64 %a.next.len144, ptr %var.etoks.5, align 8
  br label %loop.latch.343

a.create164:                                      ; preds = %loop.exit.343
  %arena.cur166 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 24)
  %arena.cur168 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 128)
  store i64 0, ptr %a.create167, align 8
  %a.data.gep171 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 1
  store ptr %a.buf169, ptr %a.data.gep171, align 8
  %a.cap.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create167, i32 0, i32 2
  store i64 16, ptr %a.cap.gep172, align 8
  br label %a.after165

a.after165:                                       ; preds = %a.create164, %loop.exit.343
  %var.etoks.6 = phi ptr [ %a.create167, %a.create164 ], [ %var.etoks.0, %loop.exit.343 ]
  ret ptr %var.etoks.6
}

declare { i64, ptr } @"diag::E1017_multiline_under_indented"() #3

define ptr @"lexer::emit_interp_tokens"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 257)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 256, ptr %b.cap.gep, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  store i64 0, ptr %a.create6, align 8
  %a.data.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf8, ptr %a.data.gep10, align 8
  %a.cap.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep11, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.assembled.0 = phi ptr [ %a.create6, %a.create ], [ %1, %entry ]
  %a.len.query12 = load i64, ptr %var.assembled.0, align 8
  br label %loop.header.368

loop.header.368:                                  ; preds = %choice.exit, %a.after
  %loop.idx.368.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit ]
  %"var.has_text'.0" = phi i1 [ false, %a.after ], [ %"var.has_text'.1", %choice.exit ]
  %var.text_buf.0 = phi ptr [ %builder.new, %a.after ], [ %var.text_buf.1, %choice.exit ]
  %var.merged.0 = phi ptr [ %a.new, %a.after ], [ %var.merged.1, %choice.exit ]
  %var.assembled.1 = phi ptr [ %var.assembled.0, %a.after ], [ %var.assembled.1, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.368.0, %a.len.query12
  br i1 %loop.cond, label %a.rd.check, label %loop.exit.368

loop.exit.368:                                    ; preds = %loop.header.368
  br i1 %"var.has_text'.0", label %choice.then155, label %choice.exit156

a.rd.check:                                       ; preds = %loop.header.368
  %a.rd.len27 = load i64, ptr %var.assembled.1, align 8
  %a.rd.ge0 = icmp sge i64 %loop.idx.368.0, 0
  %a.rd.lt = icmp slt i64 %loop.idx.368.0, %a.rd.len27
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.assembled.1, i32 0, i32 1
  %a.rd.data28 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data28, i64 %loop.idx.368.0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 56)
  store i64 4011, ptr %err.alloc31, align 8
  %err.msg.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep33, align 8
  %err.file.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep34, align 8
  %err.line.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 3
  store i64 1527, ptr %err.line.gep35, align 8
  %err.col.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 4
  store i64 26, ptr %err.col.gep36, align 8
  %err.ctx.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc31, i32 0, i32 5
  store i64 %loop.idx.368.0, ptr %err.ctx.gep37, align 8
  %err.ctx1.gep39 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep37, i32 0, i32 1
  store i64 %a.rd.len27, ptr %err.ctx1.gep39, align 8
  %err.p2i40 = ptrtoint ptr %err.alloc31 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i40, %a.rd.err.oob ]
  br i1 %a.rd.tag, label %unwrap.pos.369, label %unwrap.abort.369

unwrap.pos.369:                                   ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %tag.id = load i64, ptr %pay.ptr, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 0, label %choice.case
    i64 1, label %choice.case75
  ]

unwrap.abort.369:                                 ; preds = %a.rd.done
  %5 = call i64 @write(i32 2, ptr @expect.reason.370, i64 26)
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep42 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep42, align 8
  %err.file.gep43 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep43, align 8
  %err.line.gep44 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep44, align 8
  %err.col.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep45, align 8
  %err.msg.len46 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len47 = and i64 %err.msg.len46, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len47 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data48 = load ptr, ptr %err.msg.data, align 8
  %err.file.len49 = load i64, ptr %err.file.struct, align 8
  %err.file.len50 = and i64 %err.file.len49, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len50 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data51 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.369
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.369
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data48, i32 %err.file.len32, ptr %err.file.data51, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.exit:                                      ; preds = %unwrap.pos.369, %a.store140, %b.grow_done
  %"var.has_text'.1" = phi i1 [ true, %b.grow_done ], [ false, %a.store140 ], [ %"var.has_text'.0", %unwrap.pos.369 ]
  %var.text_buf.1 = phi ptr [ %var.text_buf.0, %b.grow_done ], [ %var.text_buf.2, %a.store140 ], [ %var.text_buf.0, %unwrap.pos.369 ]
  %var.merged.1 = phi ptr [ %var.merged.0, %b.grow_done ], [ %var.merged.4, %a.store140 ], [ %var.merged.0, %unwrap.pos.369 ]
  %loop.next = add i64 %loop.idx.368.0, 1
  br label %loop.header.368

choice.case:                                      ; preds = %unwrap.pos.369
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %app.str.len55 = load i64, ptr %payload.ptr, align 8
  %app.str.len56 = and i64 %app.str.len55, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %payload.ptr, i32 0, i32 1
  %app.str.data57 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len58 = load i64, ptr %var.text_buf.0, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len58, i64 %app.str.len56)
  %sum59 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf60 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf60, label %str_overflow_abort62, label %b.app.new.len61

b.app.new.len61:                                  ; preds = %choice.case
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.text_buf.0, i32 0, i32 2
  %b.cap64 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap64, %sum59
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort62:                             ; preds = %choice.case
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len61
  %b.cap2 = mul i64 %b.cap64, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum59
  %b.new.cap = select i1 %b.cap.need, i64 %sum59, i64 %b.cap.grow
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.text_buf.0, i32 0, i32 1
  %b.cur.data266 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum67 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf68 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf68, label %str_overflow_abort70, label %b.new.buf.len269

b.grow_done:                                      ; preds = %b.app.new.len61, %b.new.buf.len269
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.text_buf.0, i32 0, i32 1
  %b.app.data73 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data73, i64 %b.app.cur.len58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data57, i64 %app.str.len56, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data73, i64 %sum59
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum59, ptr %var.text_buf.0, align 8
  br label %choice.exit

b.new.buf.len269:                                 ; preds = %b.grow2
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %sum67)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data266, i64 %b.app.cur.len58, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.app.cur.len58
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.cur.data2, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.grow_done

str_overflow_abort70:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case75:                                    ; preds = %unwrap.pos.369
  br i1 %"var.has_text'.0", label %choice.then, label %choice.exit84

choice.then:                                      ; preds = %choice.case75
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep87 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %b.freeze.len89 = load i64, ptr %var.text_buf.0, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.text_buf.0, i32 0, i32 1
  %b.freeze.data90 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit84:                                    ; preds = %a.store, %choice.case75
  %var.text_buf.2 = phi ptr [ %builder.new112, %a.store ], [ %var.text_buf.0, %choice.case75 ]
  %var.merged.2 = phi ptr [ %var.merged.3, %a.store ], [ %var.merged.0, %choice.case75 ]
  %a.null127 = icmp eq ptr %var.merged.2, null
  br i1 %a.null127, label %a.create128, label %a.check138

b.freeze.check:                                   ; preds = %choice.then
  %b.freeze.last.idx = sub nuw nsw i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data90, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data90, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data90, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len89, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data90, i64 %b.freeze.len89, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len89
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then
  %b.freeze.data92 = phi ptr [ %b.freeze.data90, %choice.then ], [ %b.freeze.data90, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 16)
  store i64 %b.freeze.len89, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data92, ptr %str.build.data.gep, align 8
  store i64 0, ptr %var.text_buf.0, align 8
  store ptr null, ptr %b.freeze.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.text_buf.0, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %pay.gep87, align 8
  %a.null95 = icmp eq ptr %var.merged.0, null
  br i1 %a.null95, label %a.create96, label %a.check

a.create96:                                       ; preds = %b.freeze.done
  %arena.cur98 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 24)
  %arena.cur100 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 128)
  store i64 0, ptr %a.create99, align 8
  %a.data.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 1
  store ptr %a.buf101, ptr %a.data.gep103, align 8
  %a.cap.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 2
  store i64 16, ptr %a.cap.gep104, align 8
  br label %a.check

a.check:                                          ; preds = %b.freeze.done, %a.create96
  %var.merged.3 = phi ptr [ %a.create99, %a.create96 ], [ %var.merged.0, %b.freeze.done ]
  %a.len106 = load i64, ptr %var.merged.3, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.merged.3, i32 0, i32 2
  %a.cap107 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len106, %a.cap107
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.merged.3)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.merged.3, i32 0, i32 1
  %a.cur.data108 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len109 = load i64, ptr %var.merged.3, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data108, i64 %a.cur.len109
  %slot.p2i = ptrtoint ptr %enum.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len109, 1
  store i64 %a.next.len, ptr %var.merged.3, align 8
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 24)
  %b.data.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new112, i32 0, i32 1
  %b.cap.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new112, i32 0, i32 2
  %arena.cur122 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 257)
  store i8 0, ptr %b.buf123, align 1
  store i64 0, ptr %builder.new112, align 8
  store ptr %b.buf123, ptr %b.data.gep113, align 8
  store i64 256, ptr %b.cap.gep115, align 8
  br label %choice.exit84

a.create128:                                      ; preds = %choice.exit84
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 24)
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 128)
  store i64 0, ptr %a.create131, align 8
  %a.data.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 1
  store ptr %a.buf133, ptr %a.data.gep135, align 8
  %a.cap.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 2
  store i64 16, ptr %a.cap.gep136, align 8
  br label %a.check138

a.check138:                                       ; preds = %choice.exit84, %a.create128
  %var.merged.4 = phi ptr [ %a.create131, %a.create128 ], [ %var.merged.2, %choice.exit84 ]
  %a.len142 = load i64, ptr %var.merged.4, align 8
  %a.cap143 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.merged.4, i32 0, i32 2
  %a.cap144 = load i64, ptr %a.cap143, align 8
  %a.needs.grow145 = icmp eq i64 %a.len142, %a.cap144
  br i1 %a.needs.grow145, label %a.grow139, label %a.store140

a.grow139:                                        ; preds = %a.check138
  call void @dva_array_grow(ptr %var.merged.4)
  br label %a.store140

a.store140:                                       ; preds = %a.grow139, %a.check138
  %a.cur.data146 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.merged.4, i32 0, i32 1
  %a.cur.data147 = load ptr, ptr %a.cur.data146, align 8
  %a.cur.len149 = load i64, ptr %var.merged.4, align 8
  %a.elem.gep150 = getelementptr i64, ptr %a.cur.data147, i64 %a.cur.len149
  store i64 %a.rd.pay, ptr %a.elem.gep150, align 8
  %a.next.len152 = add i64 %a.cur.len149, 1
  store i64 %a.next.len152, ptr %var.merged.4, align 8
  br label %choice.exit

choice.then155:                                   ; preds = %loop.exit.368
  %arena.cur157 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 16)
  store i64 0, ptr %enum.alloc158, align 8
  %pay.gep160 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc158, i32 0, i32 1
  %b.freeze.len163 = load i64, ptr %var.text_buf.0, align 8
  %b.freeze.data164 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.text_buf.0, i32 0, i32 1
  %b.freeze.data165 = load ptr, ptr %b.freeze.data164, align 8
  %b.freeze.arena166 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep167 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena166, i32 0, i32 1
  %b.freeze.nc168 = load i64, ptr %b.freeze.nc.gep167, align 8
  %b.freeze.has.chunk169 = icmp sgt i64 %b.freeze.nc168, 0
  br i1 %b.freeze.has.chunk169, label %b.freeze.check170, label %b.freeze.done172

choice.exit156:                                   ; preds = %a.store214, %loop.exit.368
  %var.merged.5 = phi ptr [ %var.merged.6, %a.store214 ], [ %var.merged.0, %loop.exit.368 ]
  %arena.cur228 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new229 = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 24)
  %arena.cur230 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf231 = call ptr @dva_arena_alloc(ptr %arena.cur230, i64 128)
  store i64 0, ptr %a.new229, align 8
  %a.data.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new229, i32 0, i32 1
  store ptr %a.buf231, ptr %a.data.gep233, align 8
  %a.cap.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new229, i32 0, i32 2
  store i64 16, ptr %a.cap.gep234, align 8
  %a.null237 = icmp eq ptr %var.merged.5, null
  br i1 %a.null237, label %a.create238, label %a.after239

b.freeze.check170:                                ; preds = %choice.then155
  %b.freeze.last.idx173 = sub nuw nsw i64 %b.freeze.nc168, 1
  %b.freeze.chunks.gep174 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena166, i32 0, i32 3
  %b.freeze.chunk.slot175 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep174, i64 0, i64 %b.freeze.last.idx173
  %b.freeze.last.chunk176 = load ptr, ptr %b.freeze.chunk.slot175, align 8
  %b.freeze.off.gep177 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena166, i32 0, i32 2
  %b.freeze.off178 = load i64, ptr %b.freeze.off.gep177, align 8
  %b.freeze.bump179 = getelementptr i8, ptr %b.freeze.last.chunk176, i64 %b.freeze.off178
  %b.freeze.cap181 = load i64, ptr %b.freeze.arena166, align 8
  %b.freeze.chunk.end182 = getelementptr i8, ptr %b.freeze.last.chunk176, i64 %b.freeze.cap181
  %b.freeze.ge.chunk183 = icmp uge ptr %b.freeze.data165, %b.freeze.last.chunk176
  %b.freeze.lt.end184 = icmp ult ptr %b.freeze.data165, %b.freeze.chunk.end182
  %b.freeze.in.chunk185 = and i1 %b.freeze.ge.chunk183, %b.freeze.lt.end184
  %b.freeze.ge.bump186 = icmp uge ptr %b.freeze.data165, %b.freeze.bump179
  %b.freeze.reaped187 = and i1 %b.freeze.in.chunk185, %b.freeze.ge.bump186
  br i1 %b.freeze.reaped187, label %b.freeze.copy171, label %b.freeze.done172

b.freeze.copy171:                                 ; preds = %b.freeze.check170
  %b.freeze.alen188 = add i64 %b.freeze.len163, 1
  %b.freeze.fresh190 = call ptr @dva_arena_alloc(ptr %b.freeze.arena166, i64 %b.freeze.alen188)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh190, ptr align 1 %b.freeze.data165, i64 %b.freeze.len163, i1 false)
  %b.freeze.nul191 = getelementptr i8, ptr %b.freeze.fresh190, i64 %b.freeze.len163
  store i8 0, ptr %b.freeze.nul191, align 1
  br label %b.freeze.done172

b.freeze.done172:                                 ; preds = %b.freeze.copy171, %b.freeze.check170, %choice.then155
  %b.freeze.data192 = phi ptr [ %b.freeze.data165, %choice.then155 ], [ %b.freeze.data165, %b.freeze.check170 ], [ %b.freeze.fresh190, %b.freeze.copy171 ]
  %arena.cur193 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 16)
  store i64 %b.freeze.len163, ptr %builder.freeze194, align 8
  %str.build.data.gep196 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze194, i32 0, i32 1
  store ptr %b.freeze.data192, ptr %str.build.data.gep196, align 8
  store i64 0, ptr %var.text_buf.0, align 8
  store ptr null, ptr %b.freeze.data164, align 8
  %b.freeze.rst.cap199 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.text_buf.0, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap199, align 8
  store ptr %builder.freeze194, ptr %pay.gep160, align 8
  %a.null201 = icmp eq ptr %var.merged.0, null
  br i1 %a.null201, label %a.create202, label %a.check212

a.create202:                                      ; preds = %b.freeze.done172
  %arena.cur204 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 24)
  %arena.cur206 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 128)
  store i64 0, ptr %a.create205, align 8
  %a.data.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 1
  store ptr %a.buf207, ptr %a.data.gep209, align 8
  %a.cap.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 2
  store i64 16, ptr %a.cap.gep210, align 8
  br label %a.check212

a.check212:                                       ; preds = %b.freeze.done172, %a.create202
  %var.merged.6 = phi ptr [ %a.create205, %a.create202 ], [ %var.merged.0, %b.freeze.done172 ]
  %a.len216 = load i64, ptr %var.merged.6, align 8
  %a.cap217 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.merged.6, i32 0, i32 2
  %a.cap218 = load i64, ptr %a.cap217, align 8
  %a.needs.grow219 = icmp eq i64 %a.len216, %a.cap218
  br i1 %a.needs.grow219, label %a.grow213, label %a.store214

a.grow213:                                        ; preds = %a.check212
  call void @dva_array_grow(ptr %var.merged.6)
  br label %a.store214

a.store214:                                       ; preds = %a.grow213, %a.check212
  %a.cur.data220 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.merged.6, i32 0, i32 1
  %a.cur.data221 = load ptr, ptr %a.cur.data220, align 8
  %a.cur.len223 = load i64, ptr %var.merged.6, align 8
  %a.elem.gep224 = getelementptr i64, ptr %a.cur.data221, i64 %a.cur.len223
  %slot.p2i225 = ptrtoint ptr %enum.alloc158 to i64
  store i64 %slot.p2i225, ptr %a.elem.gep224, align 8
  %a.next.len226 = add i64 %a.cur.len223, 1
  store i64 %a.next.len226, ptr %var.merged.6, align 8
  br label %choice.exit156

a.create238:                                      ; preds = %choice.exit156
  %arena.cur240 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create241 = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 24)
  %arena.cur242 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 128)
  store i64 0, ptr %a.create241, align 8
  %a.data.gep245 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create241, i32 0, i32 1
  store ptr %a.buf243, ptr %a.data.gep245, align 8
  %a.cap.gep246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create241, i32 0, i32 2
  store i64 16, ptr %a.cap.gep246, align 8
  br label %a.after239

a.after239:                                       ; preds = %a.create238, %choice.exit156
  %var.merged.7 = phi ptr [ %a.create241, %a.create238 ], [ %var.merged.5, %choice.exit156 ]
  %a.len.query249 = load i64, ptr %var.merged.7, align 8
  br label %loop.header.371

loop.header.371:                                  ; preds = %choice.exit347, %a.after239
  %var.active.0 = phi ptr [ %a.new229, %a.after239 ], [ %var.active.1, %choice.exit347 ]
  %loop.idx.371.0 = phi i64 [ 0, %a.after239 ], [ %loop.next445, %choice.exit347 ]
  %var.merged.8 = phi ptr [ %var.merged.7, %a.after239 ], [ %var.merged.8, %choice.exit347 ]
  %loop.cond251 = icmp slt i64 %loop.idx.371.0, %a.len.query249
  br i1 %loop.cond251, label %a.rd.check271, label %loop.exit.371

loop.exit.371:                                    ; preds = %loop.header.371
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arena.cur447 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc448 = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 16)
  store i64 9, ptr %enum.alloc448, align 8
  %pay.gep450 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc448, i32 0, i32 1
  store ptr null, ptr %pay.gep450, align 8
  %arena.cur454 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc448, ptr %rec.alloc, align 8
  %rec.fld455 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %2, ptr %rec.fld455, align 8
  %rec.fld456 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 1, ptr %rec.fld456, align 8
  %rec.fld457 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i64 %3, ptr %rec.fld457, align 8
  %rec.fld458 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store i64 %4, ptr %rec.fld458, align 8
  %rec.fld459 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld459, align 1
  %rec.fld460 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 6
  store i1 false, ptr %rec.fld460, align 1
  %rec.fld461 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc, i32 0, i32 7
  store ptr @str.116.struct, ptr %rec.fld461, align 8
  %a.null463 = icmp eq ptr %fld.load, null
  br i1 %a.null463, label %a.create464, label %a.check474

a.rd.check271:                                    ; preds = %loop.header.371
  %a.rd.len277 = load i64, ptr %var.merged.8, align 8
  %a.rd.ge0278 = icmp sge i64 %loop.idx.371.0, 0
  %a.rd.lt279 = icmp slt i64 %loop.idx.371.0, %a.rd.len277
  %a.rd.bounds280 = and i1 %a.rd.ge0278, %a.rd.lt279
  br i1 %a.rd.bounds280, label %a.rd.ok272, label %a.rd.err.oob274

a.rd.ok272:                                       ; preds = %a.rd.check271
  %a.rd.data281 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.merged.8, i32 0, i32 1
  %a.rd.data282 = load ptr, ptr %a.rd.data281, align 8
  %a.rd.elem.gep283 = getelementptr i64, ptr %a.rd.data282, i64 %loop.idx.371.0
  %a.rd.elem284 = load i64, ptr %a.rd.elem.gep283, align 8
  br label %a.rd.done275

a.rd.err.oob274:                                  ; preds = %a.rd.check271
  %arena.cur296 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 56)
  store i64 4011, ptr %err.alloc297, align 8
  %err.msg.gep299 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep299, align 8
  %err.file.gep300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep300, align 8
  %err.line.gep301 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 3
  store i64 1543, ptr %err.line.gep301, align 8
  %err.col.gep302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 4
  store i64 23, ptr %err.col.gep302, align 8
  %err.ctx.gep303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 5
  store i64 %loop.idx.371.0, ptr %err.ctx.gep303, align 8
  %err.ctx1.gep305 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep303, i32 0, i32 1
  store i64 %a.rd.len277, ptr %err.ctx1.gep305, align 8
  %err.p2i306 = ptrtoint ptr %err.alloc297 to i64
  br label %a.rd.done275

a.rd.done275:                                     ; preds = %a.rd.err.oob274, %a.rd.ok272
  %a.rd.tag307 = phi i1 [ true, %a.rd.ok272 ], [ false, %a.rd.err.oob274 ]
  %a.rd.pay308 = phi i64 [ %a.rd.elem284, %a.rd.ok272 ], [ %err.p2i306, %a.rd.err.oob274 ]
  br i1 %a.rd.tag307, label %unwrap.pos.372, label %unwrap.abort.372

unwrap.pos.372:                                   ; preds = %a.rd.done275
  %pay.ptr344 = inttoptr i64 %a.rd.pay308 to ptr
  %tag.id351 = load i64, ptr %pay.ptr344, align 8
  switch i64 %tag.id351, label %choice.exit347 [
    i64 0, label %choice.case348
    i64 1, label %choice.case407
  ]

unwrap.abort.372:                                 ; preds = %a.rd.done275
  %6 = call i64 @write(i32 2, ptr @expect.reason.373, i64 23)
  %err.ptr313 = inttoptr i64 %a.rd.pay308 to ptr
  %err.code315 = load i64, ptr %err.ptr313, align 8
  %err.msg.gep316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr313, i32 0, i32 1
  %err.msg.struct317 = load ptr, ptr %err.msg.gep316, align 8
  %err.file.gep318 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr313, i32 0, i32 2
  %err.file.struct319 = load ptr, ptr %err.file.gep318, align 8
  %err.line.gep320 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr313, i32 0, i32 3
  %err.line321 = load i64, ptr %err.line.gep320, align 8
  %err.col.gep322 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr313, i32 0, i32 4
  %err.col323 = load i64, ptr %err.col.gep322, align 8
  %err.msg.len325 = load i64, ptr %err.msg.struct317, align 8
  %err.msg.len326 = and i64 %err.msg.len325, 281474976710655
  %err.msg.len32327 = trunc i64 %err.msg.len326 to i32
  %err.msg.data328 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct317, i32 0, i32 1
  %err.msg.data329 = load ptr, ptr %err.msg.data328, align 8
  %err.file.len331 = load i64, ptr %err.file.struct319, align 8
  %err.file.len332 = and i64 %err.file.len331, 281474976710655
  %err.file.len32333 = trunc i64 %err.file.len332 to i32
  %err.file.data334 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct319, i32 0, i32 1
  %err.file.data335 = load ptr, ptr %err.file.data334, align 8
  %err.thread.rec336 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread337 = icmp ne ptr %err.thread.rec336, null
  br i1 %err.is.thread337, label %err.thread338, label %err.normal339

err.thread338:                                    ; preds = %unwrap.abort.372
  %err.haserr.gep340 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec336, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep340, align 8
  %err.err.gep341 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec336, i32 0, i32 7
  store ptr %err.ptr313, ptr %err.err.gep341, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal339:                                    ; preds = %unwrap.abort.372
  %err.panic.printf342 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code315, i32 %err.msg.len32327, ptr %err.msg.data329, i32 %err.file.len32333, ptr %err.file.data335, i64 %err.line321, i64 %err.col323)
  call void @exit(i32 1)
  unreachable

choice.exit347:                                   ; preds = %unwrap.pos.372, %a.after364, %a.store393, %a.store430
  %var.active.1 = phi ptr [ %var.active.4, %a.store430 ], [ %var.active.3, %a.store393 ], [ %var.active.0, %a.after364 ], [ %var.active.0, %unwrap.pos.372 ]
  %loop.next445 = add i64 %loop.idx.371.0, 1
  br label %loop.header.371

choice.case348:                                   ; preds = %unwrap.pos.372
  %pay.gep353 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr344, i32 0, i32 1
  %payload.ptr354 = load ptr, ptr %pay.gep353, align 8
  %str.len.query358 = load i64, ptr %payload.ptr354, align 8
  %str.len.query359 = and i64 %str.len.query358, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query359, 0
  br i1 %cmptmp, label %choice.then376, label %a.after364

a.after364:                                       ; preds = %choice.case348
  %a.len.query374 = load i64, ptr %var.merged.8, align 8
  %cmptmp375 = icmp eq i64 %a.len.query374, 1
  br i1 %cmptmp375, label %choice.then376, label %choice.exit347

choice.then376:                                   ; preds = %choice.case348, %a.after364
  %a.null380 = icmp eq ptr %var.active.0, null
  br i1 %a.null380, label %a.create381, label %a.check391

a.create381:                                      ; preds = %choice.then376
  %arena.cur383 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create384 = call ptr @dva_arena_alloc(ptr %arena.cur383, i64 24)
  %arena.cur385 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf386 = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 128)
  store i64 0, ptr %a.create384, align 8
  %a.data.gep388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create384, i32 0, i32 1
  store ptr %a.buf386, ptr %a.data.gep388, align 8
  %a.cap.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create384, i32 0, i32 2
  store i64 16, ptr %a.cap.gep389, align 8
  br label %a.check391

a.check391:                                       ; preds = %choice.then376, %a.create381
  %var.active.3 = phi ptr [ %a.create384, %a.create381 ], [ %var.active.0, %choice.then376 ]
  %a.len395 = load i64, ptr %var.active.3, align 8
  %a.cap396 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.active.3, i32 0, i32 2
  %a.cap397 = load i64, ptr %a.cap396, align 8
  %a.needs.grow398 = icmp eq i64 %a.len395, %a.cap397
  br i1 %a.needs.grow398, label %a.grow392, label %a.store393

a.grow392:                                        ; preds = %a.check391
  call void @dva_array_grow(ptr %var.active.3)
  br label %a.store393

a.store393:                                       ; preds = %a.grow392, %a.check391
  %a.cur.data399 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.active.3, i32 0, i32 1
  %a.cur.data400 = load ptr, ptr %a.cur.data399, align 8
  %a.cur.len402 = load i64, ptr %var.active.3, align 8
  %a.elem.gep403 = getelementptr i64, ptr %a.cur.data400, i64 %a.cur.len402
  store i64 %a.rd.pay308, ptr %a.elem.gep403, align 8
  %a.next.len405 = add i64 %a.cur.len402, 1
  store i64 %a.next.len405, ptr %var.active.3, align 8
  br label %choice.exit347

choice.case407:                                   ; preds = %unwrap.pos.372
  %a.null417 = icmp eq ptr %var.active.0, null
  br i1 %a.null417, label %a.create418, label %a.check428

a.create418:                                      ; preds = %choice.case407
  %arena.cur420 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create421 = call ptr @dva_arena_alloc(ptr %arena.cur420, i64 24)
  %arena.cur422 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf423 = call ptr @dva_arena_alloc(ptr %arena.cur422, i64 128)
  store i64 0, ptr %a.create421, align 8
  %a.data.gep425 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create421, i32 0, i32 1
  store ptr %a.buf423, ptr %a.data.gep425, align 8
  %a.cap.gep426 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create421, i32 0, i32 2
  store i64 16, ptr %a.cap.gep426, align 8
  br label %a.check428

a.check428:                                       ; preds = %choice.case407, %a.create418
  %var.active.4 = phi ptr [ %a.create421, %a.create418 ], [ %var.active.0, %choice.case407 ]
  %a.len432 = load i64, ptr %var.active.4, align 8
  %a.cap433 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.active.4, i32 0, i32 2
  %a.cap434 = load i64, ptr %a.cap433, align 8
  %a.needs.grow435 = icmp eq i64 %a.len432, %a.cap434
  br i1 %a.needs.grow435, label %a.grow429, label %a.store430

a.grow429:                                        ; preds = %a.check428
  call void @dva_array_grow(ptr %var.active.4)
  br label %a.store430

a.store430:                                       ; preds = %a.grow429, %a.check428
  %a.cur.data436 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.active.4, i32 0, i32 1
  %a.cur.data437 = load ptr, ptr %a.cur.data436, align 8
  %a.cur.len439 = load i64, ptr %var.active.4, align 8
  %a.elem.gep440 = getelementptr i64, ptr %a.cur.data437, i64 %a.cur.len439
  store i64 %a.rd.pay308, ptr %a.elem.gep440, align 8
  %a.next.len442 = add i64 %a.cur.len439, 1
  store i64 %a.next.len442, ptr %var.active.4, align 8
  br label %choice.exit347

a.create464:                                      ; preds = %loop.exit.371
  %arena.cur466 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create467 = call ptr @dva_arena_alloc(ptr %arena.cur466, i64 24)
  %arena.cur468 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf469 = call ptr @dva_arena_alloc(ptr %arena.cur468, i64 128)
  store i64 0, ptr %a.create467, align 8
  %a.data.gep471 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create467, i32 0, i32 1
  store ptr %a.buf469, ptr %a.data.gep471, align 8
  %a.cap.gep472 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create467, i32 0, i32 2
  store i64 16, ptr %a.cap.gep472, align 8
  br label %a.check474

a.check474:                                       ; preds = %loop.exit.371, %a.create464
  %var.qu.0 = phi ptr [ %a.create467, %a.create464 ], [ %fld.load, %loop.exit.371 ]
  %a.len478 = load i64, ptr %var.qu.0, align 8
  %a.cap479 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.0, i32 0, i32 2
  %a.cap480 = load i64, ptr %a.cap479, align 8
  %a.needs.grow481 = icmp eq i64 %a.len478, %a.cap480
  br i1 %a.needs.grow481, label %a.grow475, label %a.store476

a.grow475:                                        ; preds = %a.check474
  call void @dva_array_grow(ptr %var.qu.0)
  br label %a.store476

a.store476:                                       ; preds = %a.grow475, %a.check474
  %a.cur.data482 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.0, i32 0, i32 1
  %a.cur.data483 = load ptr, ptr %a.cur.data482, align 8
  %a.cur.len485 = load i64, ptr %var.qu.0, align 8
  %a.elem.gep486 = getelementptr i64, ptr %a.cur.data483, i64 %a.cur.len485
  %slot.p2i487 = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i487, ptr %a.elem.gep486, align 8
  %a.next.len488 = add i64 %a.cur.len485, 1
  store i64 %a.next.len488, ptr %var.qu.0, align 8
  %arena.cur490 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc491 = call ptr @dva_arena_alloc(ptr %arena.cur490, i64 16)
  store i64 5, ptr %enum.alloc491, align 8
  %pay.gep493 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc491, i32 0, i32 1
  store ptr null, ptr %pay.gep493, align 8
  %arena.cur497 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc498 = call ptr @dva_arena_alloc(ptr %arena.cur497, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc491, ptr %rec.alloc498, align 8
  %rec.fld500 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc498, i32 0, i32 1
  store i64 %2, ptr %rec.fld500, align 8
  %rec.fld501 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc498, i32 0, i32 2
  store i64 0, ptr %rec.fld501, align 8
  %rec.fld502 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc498, i32 0, i32 3
  store i64 %3, ptr %rec.fld502, align 8
  %rec.fld503 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc498, i32 0, i32 4
  store i64 %4, ptr %rec.fld503, align 8
  %rec.fld504 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc498, i32 0, i32 5
  store i1 false, ptr %rec.fld504, align 1
  %rec.fld505 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc498, i32 0, i32 6
  store i1 false, ptr %rec.fld505, align 1
  %rec.fld506 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc498, i32 0, i32 7
  store ptr @str.0.struct, ptr %rec.fld506, align 8
  %a.len523 = load i64, ptr %var.qu.0, align 8
  %a.cap525 = load i64, ptr %a.cap479, align 8
  %a.needs.grow526 = icmp eq i64 %a.len523, %a.cap525
  br i1 %a.needs.grow526, label %a.grow520, label %a.store521

a.grow520:                                        ; preds = %a.store476
  call void @dva_array_grow(ptr %var.qu.0)
  br label %a.store521

a.store521:                                       ; preds = %a.grow520, %a.store476
  %a.cur.data528 = load ptr, ptr %a.cur.data482, align 8
  %a.cur.len530 = load i64, ptr %var.qu.0, align 8
  %a.elem.gep531 = getelementptr i64, ptr %a.cur.data528, i64 %a.cur.len530
  %slot.p2i532 = ptrtoint ptr %rec.alloc498 to i64
  store i64 %slot.p2i532, ptr %a.elem.gep531, align 8
  %a.next.len533 = add i64 %a.cur.len530, 1
  store i64 %a.next.len533, ptr %var.qu.0, align 8
  %a.null537 = icmp eq ptr %var.active.0, null
  br i1 %a.null537, label %a.create538, label %a.after539

a.create538:                                      ; preds = %a.store521
  %arena.cur540 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create541 = call ptr @dva_arena_alloc(ptr %arena.cur540, i64 24)
  %arena.cur542 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf543 = call ptr @dva_arena_alloc(ptr %arena.cur542, i64 128)
  store i64 0, ptr %a.create541, align 8
  %a.data.gep545 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create541, i32 0, i32 1
  store ptr %a.buf543, ptr %a.data.gep545, align 8
  %a.cap.gep546 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create541, i32 0, i32 2
  store i64 16, ptr %a.cap.gep546, align 8
  br label %a.after539

a.after539:                                       ; preds = %a.create538, %a.store521
  %var.active.5 = phi ptr [ %a.create541, %a.create538 ], [ %var.active.0, %a.store521 ]
  %a.len.query549 = load i64, ptr %var.active.5, align 8
  br label %loop.header.375

loop.header.375:                                  ; preds = %choice.exit647, %a.after539
  %var.active.6 = phi ptr [ %var.active.5, %a.after539 ], [ %var.active.6, %choice.exit647 ]
  %var.qu.2 = phi ptr [ %var.qu.0, %a.after539 ], [ %var.qu.3, %choice.exit647 ]
  %loop.idx.375.0 = phi i64 [ 0, %a.after539 ], [ %loop.next1087, %choice.exit647 ]
  %loop.cond551 = icmp slt i64 %loop.idx.375.0, %a.len.query549
  br i1 %loop.cond551, label %a.rd.check571, label %loop.exit.375

loop.exit.375:                                    ; preds = %loop.header.375
  %arena.cur1088 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1089 = call ptr @dva_arena_alloc(ptr %arena.cur1088, i64 16)
  store i64 10, ptr %enum.alloc1089, align 8
  %pay.gep1091 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1089, i32 0, i32 1
  store ptr null, ptr %pay.gep1091, align 8
  %arena.cur1095 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1096 = call ptr @dva_arena_alloc(ptr %arena.cur1095, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc1089, ptr %rec.alloc1096, align 8
  %rec.fld1098 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1096, i32 0, i32 1
  store i64 %2, ptr %rec.fld1098, align 8
  %rec.fld1099 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1096, i32 0, i32 2
  store i64 1, ptr %rec.fld1099, align 8
  %rec.fld1100 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1096, i32 0, i32 3
  store i64 %3, ptr %rec.fld1100, align 8
  %rec.fld1101 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1096, i32 0, i32 4
  store i64 %4, ptr %rec.fld1101, align 8
  %rec.fld1102 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1096, i32 0, i32 5
  store i1 false, ptr %rec.fld1102, align 1
  %rec.fld1103 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1096, i32 0, i32 6
  store i1 false, ptr %rec.fld1103, align 1
  %rec.fld1104 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1096, i32 0, i32 7
  store ptr @str.119.struct, ptr %rec.fld1104, align 8
  %a.null1106 = icmp eq ptr %var.qu.2, null
  br i1 %a.null1106, label %a.create1107, label %a.check1117

a.rd.check571:                                    ; preds = %loop.header.375
  %a.rd.len577 = load i64, ptr %var.active.6, align 8
  %a.rd.ge0578 = icmp sge i64 %loop.idx.375.0, 0
  %a.rd.lt579 = icmp slt i64 %loop.idx.375.0, %a.rd.len577
  %a.rd.bounds580 = and i1 %a.rd.ge0578, %a.rd.lt579
  br i1 %a.rd.bounds580, label %a.rd.ok572, label %a.rd.err.oob574

a.rd.ok572:                                       ; preds = %a.rd.check571
  %a.rd.data581 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.active.6, i32 0, i32 1
  %a.rd.data582 = load ptr, ptr %a.rd.data581, align 8
  %a.rd.elem.gep583 = getelementptr i64, ptr %a.rd.data582, i64 %loop.idx.375.0
  %a.rd.elem584 = load i64, ptr %a.rd.elem.gep583, align 8
  br label %a.rd.done575

a.rd.err.oob574:                                  ; preds = %a.rd.check571
  %arena.cur596 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc597 = call ptr @dva_arena_alloc(ptr %arena.cur596, i64 56)
  store i64 4011, ptr %err.alloc597, align 8
  %err.msg.gep599 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc597, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep599, align 8
  %err.file.gep600 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc597, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep600, align 8
  %err.line.gep601 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc597, i32 0, i32 3
  store i64 1554, ptr %err.line.gep601, align 8
  %err.col.gep602 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc597, i32 0, i32 4
  store i64 23, ptr %err.col.gep602, align 8
  %err.ctx.gep603 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc597, i32 0, i32 5
  store i64 %loop.idx.375.0, ptr %err.ctx.gep603, align 8
  %err.ctx1.gep605 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep603, i32 0, i32 1
  store i64 %a.rd.len577, ptr %err.ctx1.gep605, align 8
  %err.p2i606 = ptrtoint ptr %err.alloc597 to i64
  br label %a.rd.done575

a.rd.done575:                                     ; preds = %a.rd.err.oob574, %a.rd.ok572
  %a.rd.tag607 = phi i1 [ true, %a.rd.ok572 ], [ false, %a.rd.err.oob574 ]
  %a.rd.pay608 = phi i64 [ %a.rd.elem584, %a.rd.ok572 ], [ %err.p2i606, %a.rd.err.oob574 ]
  br i1 %a.rd.tag607, label %unwrap.pos.376, label %unwrap.abort.376

unwrap.pos.376:                                   ; preds = %a.rd.done575
  %pay.ptr644 = inttoptr i64 %a.rd.pay608 to ptr
  %tag.id651 = load i64, ptr %pay.ptr644, align 8
  switch i64 %tag.id651, label %choice.exit647 [
    i64 0, label %choice.case648
    i64 1, label %choice.case759
  ]

unwrap.abort.376:                                 ; preds = %a.rd.done575
  %7 = call i64 @write(i32 2, ptr @expect.reason.377, i64 23)
  %err.ptr613 = inttoptr i64 %a.rd.pay608 to ptr
  %err.code615 = load i64, ptr %err.ptr613, align 8
  %err.msg.gep616 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr613, i32 0, i32 1
  %err.msg.struct617 = load ptr, ptr %err.msg.gep616, align 8
  %err.file.gep618 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr613, i32 0, i32 2
  %err.file.struct619 = load ptr, ptr %err.file.gep618, align 8
  %err.line.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr613, i32 0, i32 3
  %err.line621 = load i64, ptr %err.line.gep620, align 8
  %err.col.gep622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr613, i32 0, i32 4
  %err.col623 = load i64, ptr %err.col.gep622, align 8
  %err.msg.len625 = load i64, ptr %err.msg.struct617, align 8
  %err.msg.len626 = and i64 %err.msg.len625, 281474976710655
  %err.msg.len32627 = trunc i64 %err.msg.len626 to i32
  %err.msg.data628 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct617, i32 0, i32 1
  %err.msg.data629 = load ptr, ptr %err.msg.data628, align 8
  %err.file.len631 = load i64, ptr %err.file.struct619, align 8
  %err.file.len632 = and i64 %err.file.len631, 281474976710655
  %err.file.len32633 = trunc i64 %err.file.len632 to i32
  %err.file.data634 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct619, i32 0, i32 1
  %err.file.data635 = load ptr, ptr %err.file.data634, align 8
  %err.thread.rec636 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread637 = icmp ne ptr %err.thread.rec636, null
  br i1 %err.is.thread637, label %err.thread638, label %err.normal639

err.thread638:                                    ; preds = %unwrap.abort.376
  %err.haserr.gep640 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec636, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep640, align 8
  %err.err.gep641 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec636, i32 0, i32 7
  store ptr %err.ptr613, ptr %err.err.gep641, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal639:                                    ; preds = %unwrap.abort.376
  %err.panic.printf642 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code615, i32 %err.msg.len32627, ptr %err.msg.data629, i32 %err.file.len32633, ptr %err.file.data635, i64 %err.line621, i64 %err.col623)
  call void @exit(i32 1)
  unreachable

choice.exit647:                                   ; preds = %unwrap.pos.376, %choice.case648, %a.store745, %a.store1072
  %var.qu.3 = phi ptr [ %var.qu.10, %a.store1072 ], [ %var.qu.5, %a.store745 ], [ %var.qu.2, %choice.case648 ], [ %var.qu.2, %unwrap.pos.376 ]
  %loop.next1087 = add i64 %loop.idx.375.0, 1
  br label %loop.header.375

choice.case648:                                   ; preds = %unwrap.pos.376
  %pay.gep653 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr644, i32 0, i32 1
  %payload.ptr654 = load ptr, ptr %pay.gep653, align 8
  %str.len.query659 = load i64, ptr %payload.ptr654, align 8
  %str.len.query660 = and i64 %str.len.query659, 281474976710655
  %cmptmp661 = icmp sgt i64 %str.len.query660, 0
  br i1 %cmptmp661, label %choice.then662, label %choice.exit647

choice.then662:                                   ; preds = %choice.case648
  %arena.cur664 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc665 = call ptr @dva_arena_alloc(ptr %arena.cur664, i64 16)
  store i64 0, ptr %enum.alloc665, align 8
  %pay.gep667 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc665, i32 0, i32 1
  store ptr null, ptr %pay.gep667, align 8
  %arena.cur671 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc672 = call ptr @dva_arena_alloc(ptr %arena.cur671, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc665, ptr %rec.alloc672, align 8
  %rec.fld674 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc672, i32 0, i32 1
  store i64 %2, ptr %rec.fld674, align 8
  %rec.fld675 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc672, i32 0, i32 2
  store i64 1, ptr %rec.fld675, align 8
  %rec.fld676 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc672, i32 0, i32 3
  store i64 %3, ptr %rec.fld676, align 8
  %rec.fld677 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc672, i32 0, i32 4
  store i64 %4, ptr %rec.fld677, align 8
  %rec.fld678 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc672, i32 0, i32 5
  store i1 false, ptr %rec.fld678, align 1
  %rec.fld679 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc672, i32 0, i32 6
  store i1 false, ptr %rec.fld679, align 1
  %rec.fld680 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc672, i32 0, i32 7
  store ptr @str.117.struct, ptr %rec.fld680, align 8
  %a.null682 = icmp eq ptr %var.qu.2, null
  br i1 %a.null682, label %a.create683, label %a.check693

a.create683:                                      ; preds = %choice.then662
  %arena.cur685 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create686 = call ptr @dva_arena_alloc(ptr %arena.cur685, i64 24)
  %arena.cur687 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf688 = call ptr @dva_arena_alloc(ptr %arena.cur687, i64 128)
  store i64 0, ptr %a.create686, align 8
  %a.data.gep690 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create686, i32 0, i32 1
  store ptr %a.buf688, ptr %a.data.gep690, align 8
  %a.cap.gep691 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create686, i32 0, i32 2
  store i64 16, ptr %a.cap.gep691, align 8
  br label %a.check693

a.check693:                                       ; preds = %choice.then662, %a.create683
  %var.qu.5 = phi ptr [ %a.create686, %a.create683 ], [ %var.qu.2, %choice.then662 ]
  %a.len697 = load i64, ptr %var.qu.5, align 8
  %a.cap698 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.5, i32 0, i32 2
  %a.cap699 = load i64, ptr %a.cap698, align 8
  %a.needs.grow700 = icmp eq i64 %a.len697, %a.cap699
  br i1 %a.needs.grow700, label %a.grow694, label %a.store695

a.grow694:                                        ; preds = %a.check693
  call void @dva_array_grow(ptr %var.qu.5)
  br label %a.store695

a.store695:                                       ; preds = %a.grow694, %a.check693
  %a.cur.data701 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.5, i32 0, i32 1
  %a.cur.data702 = load ptr, ptr %a.cur.data701, align 8
  %a.cur.len704 = load i64, ptr %var.qu.5, align 8
  %a.elem.gep705 = getelementptr i64, ptr %a.cur.data702, i64 %a.cur.len704
  %slot.p2i706 = ptrtoint ptr %rec.alloc672 to i64
  store i64 %slot.p2i706, ptr %a.elem.gep705, align 8
  %a.next.len707 = add i64 %a.cur.len704, 1
  store i64 %a.next.len707, ptr %var.qu.5, align 8
  %arena.cur709 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc710 = call ptr @dva_arena_alloc(ptr %arena.cur709, i64 16)
  store i64 5, ptr %enum.alloc710, align 8
  %pay.gep712 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc710, i32 0, i32 1
  store ptr null, ptr %pay.gep712, align 8
  %str.len.query716 = load i64, ptr %payload.ptr654, align 8
  %str.len.query717 = and i64 %str.len.query716, 281474976710655
  %arena.cur721 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc722 = call ptr @dva_arena_alloc(ptr %arena.cur721, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc710, ptr %rec.alloc722, align 8
  %rec.fld724 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc722, i32 0, i32 1
  store i64 %2, ptr %rec.fld724, align 8
  %rec.fld725 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc722, i32 0, i32 2
  store i64 %str.len.query717, ptr %rec.fld725, align 8
  %rec.fld726 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc722, i32 0, i32 3
  store i64 %3, ptr %rec.fld726, align 8
  %rec.fld727 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc722, i32 0, i32 4
  store i64 %4, ptr %rec.fld727, align 8
  %rec.fld728 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc722, i32 0, i32 5
  store i1 false, ptr %rec.fld728, align 1
  %rec.fld729 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc722, i32 0, i32 6
  store i1 false, ptr %rec.fld729, align 1
  %rec.fld730 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc722, i32 0, i32 7
  store ptr %payload.ptr654, ptr %rec.fld730, align 8
  %a.len747 = load i64, ptr %var.qu.5, align 8
  %a.cap749 = load i64, ptr %a.cap698, align 8
  %a.needs.grow750 = icmp eq i64 %a.len747, %a.cap749
  br i1 %a.needs.grow750, label %a.grow744, label %a.store745

a.grow744:                                        ; preds = %a.store695
  call void @dva_array_grow(ptr %var.qu.5)
  br label %a.store745

a.store745:                                       ; preds = %a.grow744, %a.store695
  %a.cur.data752 = load ptr, ptr %a.cur.data701, align 8
  %a.cur.len754 = load i64, ptr %var.qu.5, align 8
  %a.elem.gep755 = getelementptr i64, ptr %a.cur.data752, i64 %a.cur.len754
  %slot.p2i756 = ptrtoint ptr %rec.alloc722 to i64
  store i64 %slot.p2i756, ptr %a.elem.gep755, align 8
  %a.next.len757 = add i64 %a.cur.len754, 1
  store i64 %a.next.len757, ptr %var.qu.5, align 8
  br label %choice.exit647

choice.case759:                                   ; preds = %unwrap.pos.376
  %pay.gep764 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr644, i32 0, i32 1
  %payload.ptr765 = load ptr, ptr %pay.gep764, align 8
  %arena.cur767 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc768 = call ptr @dva_arena_alloc(ptr %arena.cur767, i64 16)
  store i64 0, ptr %enum.alloc768, align 8
  %pay.gep770 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc768, i32 0, i32 1
  store ptr null, ptr %pay.gep770, align 8
  %arena.cur774 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc775 = call ptr @dva_arena_alloc(ptr %arena.cur774, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc768, ptr %rec.alloc775, align 8
  %rec.fld777 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc775, i32 0, i32 1
  store i64 %2, ptr %rec.fld777, align 8
  %rec.fld778 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc775, i32 0, i32 2
  store i64 1, ptr %rec.fld778, align 8
  %rec.fld779 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc775, i32 0, i32 3
  store i64 %3, ptr %rec.fld779, align 8
  %rec.fld780 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc775, i32 0, i32 4
  store i64 %4, ptr %rec.fld780, align 8
  %rec.fld781 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc775, i32 0, i32 5
  store i1 false, ptr %rec.fld781, align 1
  %rec.fld782 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc775, i32 0, i32 6
  store i1 false, ptr %rec.fld782, align 1
  %rec.fld783 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc775, i32 0, i32 7
  store ptr @str.117.struct, ptr %rec.fld783, align 8
  %a.null785 = icmp eq ptr %var.qu.2, null
  br i1 %a.null785, label %a.create786, label %a.check796

a.create786:                                      ; preds = %choice.case759
  %arena.cur788 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create789 = call ptr @dva_arena_alloc(ptr %arena.cur788, i64 24)
  %arena.cur790 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf791 = call ptr @dva_arena_alloc(ptr %arena.cur790, i64 128)
  store i64 0, ptr %a.create789, align 8
  %a.data.gep793 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create789, i32 0, i32 1
  store ptr %a.buf791, ptr %a.data.gep793, align 8
  %a.cap.gep794 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create789, i32 0, i32 2
  store i64 16, ptr %a.cap.gep794, align 8
  br label %a.check796

a.check796:                                       ; preds = %choice.case759, %a.create786
  %var.qu.7 = phi ptr [ %a.create789, %a.create786 ], [ %var.qu.2, %choice.case759 ]
  %a.len800 = load i64, ptr %var.qu.7, align 8
  %a.cap801 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.7, i32 0, i32 2
  %a.cap802 = load i64, ptr %a.cap801, align 8
  %a.needs.grow803 = icmp eq i64 %a.len800, %a.cap802
  br i1 %a.needs.grow803, label %a.grow797, label %a.store798

a.grow797:                                        ; preds = %a.check796
  call void @dva_array_grow(ptr %var.qu.7)
  br label %a.store798

a.store798:                                       ; preds = %a.grow797, %a.check796
  %a.cur.data804 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.7, i32 0, i32 1
  %a.cur.data805 = load ptr, ptr %a.cur.data804, align 8
  %a.cur.len807 = load i64, ptr %var.qu.7, align 8
  %a.elem.gep808 = getelementptr i64, ptr %a.cur.data805, i64 %a.cur.len807
  %slot.p2i809 = ptrtoint ptr %rec.alloc775 to i64
  store i64 %slot.p2i809, ptr %a.elem.gep808, align 8
  %a.next.len810 = add i64 %a.cur.len807, 1
  store i64 %a.next.len810, ptr %var.qu.7, align 8
  %arena.cur812 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc813 = call ptr @dva_arena_alloc(ptr %arena.cur812, i64 16)
  store i64 2, ptr %enum.alloc813, align 8
  %pay.gep815 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc813, i32 0, i32 1
  store ptr null, ptr %pay.gep815, align 8
  %arena.cur819 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc820 = call ptr @dva_arena_alloc(ptr %arena.cur819, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc813, ptr %rec.alloc820, align 8
  %rec.fld822 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc820, i32 0, i32 1
  store i64 %2, ptr %rec.fld822, align 8
  %rec.fld823 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc820, i32 0, i32 2
  store i64 7, ptr %rec.fld823, align 8
  %rec.fld824 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc820, i32 0, i32 3
  store i64 %3, ptr %rec.fld824, align 8
  %rec.fld825 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc820, i32 0, i32 4
  store i64 %4, ptr %rec.fld825, align 8
  %rec.fld826 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc820, i32 0, i32 5
  store i1 false, ptr %rec.fld826, align 1
  %rec.fld827 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc820, i32 0, i32 6
  store i1 false, ptr %rec.fld827, align 1
  %rec.fld828 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc820, i32 0, i32 7
  store ptr @str.118.struct, ptr %rec.fld828, align 8
  %a.len845 = load i64, ptr %var.qu.7, align 8
  %a.cap847 = load i64, ptr %a.cap801, align 8
  %a.needs.grow848 = icmp eq i64 %a.len845, %a.cap847
  br i1 %a.needs.grow848, label %a.grow842, label %a.store843

a.grow842:                                        ; preds = %a.store798
  call void @dva_array_grow(ptr %var.qu.7)
  br label %a.store843

a.store843:                                       ; preds = %a.grow842, %a.store798
  %a.cur.data850 = load ptr, ptr %a.cur.data804, align 8
  %a.cur.len852 = load i64, ptr %var.qu.7, align 8
  %a.elem.gep853 = getelementptr i64, ptr %a.cur.data850, i64 %a.cur.len852
  %slot.p2i854 = ptrtoint ptr %rec.alloc820 to i64
  store i64 %slot.p2i854, ptr %a.elem.gep853, align 8
  %a.next.len855 = add i64 %a.cur.len852, 1
  store i64 %a.next.len855, ptr %var.qu.7, align 8
  %arena.cur857 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc858 = call ptr @dva_arena_alloc(ptr %arena.cur857, i64 16)
  store i64 9, ptr %enum.alloc858, align 8
  %pay.gep860 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc858, i32 0, i32 1
  store ptr null, ptr %pay.gep860, align 8
  %arena.cur864 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc865 = call ptr @dva_arena_alloc(ptr %arena.cur864, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc858, ptr %rec.alloc865, align 8
  %rec.fld867 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc865, i32 0, i32 1
  store i64 %2, ptr %rec.fld867, align 8
  %rec.fld868 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc865, i32 0, i32 2
  store i64 1, ptr %rec.fld868, align 8
  %rec.fld869 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc865, i32 0, i32 3
  store i64 %3, ptr %rec.fld869, align 8
  %rec.fld870 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc865, i32 0, i32 4
  store i64 %4, ptr %rec.fld870, align 8
  %rec.fld871 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc865, i32 0, i32 5
  store i1 false, ptr %rec.fld871, align 1
  %rec.fld872 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc865, i32 0, i32 6
  store i1 false, ptr %rec.fld872, align 1
  %rec.fld873 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc865, i32 0, i32 7
  store ptr @str.116.struct, ptr %rec.fld873, align 8
  %a.len890 = load i64, ptr %var.qu.7, align 8
  %a.cap892 = load i64, ptr %a.cap801, align 8
  %a.needs.grow893 = icmp eq i64 %a.len890, %a.cap892
  br i1 %a.needs.grow893, label %a.grow887, label %a.store888

a.grow887:                                        ; preds = %a.store843
  call void @dva_array_grow(ptr %var.qu.7)
  br label %a.store888

a.store888:                                       ; preds = %a.grow887, %a.store843
  %a.cur.data895 = load ptr, ptr %a.cur.data804, align 8
  %a.cur.len897 = load i64, ptr %var.qu.7, align 8
  %a.elem.gep898 = getelementptr i64, ptr %a.cur.data895, i64 %a.cur.len897
  %slot.p2i899 = ptrtoint ptr %rec.alloc865 to i64
  store i64 %slot.p2i899, ptr %a.elem.gep898, align 8
  %a.next.len900 = add i64 %a.cur.len897, 1
  store i64 %a.next.len900, ptr %var.qu.7, align 8
  %a.null904 = icmp eq ptr %payload.ptr765, null
  br i1 %a.null904, label %a.create905, label %a.after906

a.create905:                                      ; preds = %a.store888
  %arena.cur907 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create908 = call ptr @dva_arena_alloc(ptr %arena.cur907, i64 24)
  %arena.cur909 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf910 = call ptr @dva_arena_alloc(ptr %arena.cur909, i64 128)
  store i64 0, ptr %a.create908, align 8
  %a.data.gep912 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create908, i32 0, i32 1
  store ptr %a.buf910, ptr %a.data.gep912, align 8
  %a.cap.gep913 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create908, i32 0, i32 2
  store i64 16, ptr %a.cap.gep913, align 8
  br label %a.after906

a.after906:                                       ; preds = %a.create905, %a.store888
  %var.toks.0 = phi ptr [ %a.create908, %a.create905 ], [ %payload.ptr765, %a.store888 ]
  %a.len.query916 = load i64, ptr %var.toks.0, align 8
  br label %loop.header.378

loop.header.378:                                  ; preds = %a.store1025, %a.after906
  %var.qu.10 = phi ptr [ %var.qu.7, %a.after906 ], [ %var.qu.10, %a.store1025 ]
  %var.toks.1 = phi ptr [ %var.toks.0, %a.after906 ], [ %var.toks.1, %a.store1025 ]
  %loop.idx.378.0 = phi i64 [ 0, %a.after906 ], [ %loop.next1040, %a.store1025 ]
  %loop.cond918 = icmp slt i64 %loop.idx.378.0, %a.len.query916
  br i1 %loop.cond918, label %a.rd.check937, label %loop.exit.378

loop.exit.378:                                    ; preds = %loop.header.378
  %arena.cur1041 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc1042 = call ptr @dva_arena_alloc(ptr %arena.cur1041, i64 16)
  store i64 10, ptr %enum.alloc1042, align 8
  %pay.gep1044 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc1042, i32 0, i32 1
  store ptr null, ptr %pay.gep1044, align 8
  %arena.cur1048 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1049 = call ptr @dva_arena_alloc(ptr %arena.cur1048, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc1042, ptr %rec.alloc1049, align 8
  %rec.fld1051 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1049, i32 0, i32 1
  store i64 %2, ptr %rec.fld1051, align 8
  %rec.fld1052 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1049, i32 0, i32 2
  store i64 1, ptr %rec.fld1052, align 8
  %rec.fld1053 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1049, i32 0, i32 3
  store i64 %3, ptr %rec.fld1053, align 8
  %rec.fld1054 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1049, i32 0, i32 4
  store i64 %4, ptr %rec.fld1054, align 8
  %rec.fld1055 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1049, i32 0, i32 5
  store i1 false, ptr %rec.fld1055, align 1
  %rec.fld1056 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1049, i32 0, i32 6
  store i1 false, ptr %rec.fld1056, align 1
  %rec.fld1057 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %rec.alloc1049, i32 0, i32 7
  store ptr @str.119.struct, ptr %rec.fld1057, align 8
  %a.len1074 = load i64, ptr %var.qu.10, align 8
  %a.cap1075 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.10, i32 0, i32 2
  %a.cap1076 = load i64, ptr %a.cap1075, align 8
  %a.needs.grow1077 = icmp eq i64 %a.len1074, %a.cap1076
  br i1 %a.needs.grow1077, label %a.grow1071, label %a.store1072

a.rd.check937:                                    ; preds = %loop.header.378
  %a.rd.len943 = load i64, ptr %var.toks.1, align 8
  %a.rd.ge0944 = icmp sge i64 %loop.idx.378.0, 0
  %a.rd.lt945 = icmp slt i64 %loop.idx.378.0, %a.rd.len943
  %a.rd.bounds946 = and i1 %a.rd.ge0944, %a.rd.lt945
  br i1 %a.rd.bounds946, label %a.rd.ok938, label %a.rd.err.oob940

a.rd.ok938:                                       ; preds = %a.rd.check937
  %a.rd.data947 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.toks.1, i32 0, i32 1
  %a.rd.data948 = load ptr, ptr %a.rd.data947, align 8
  %a.rd.elem.gep949 = getelementptr i64, ptr %a.rd.data948, i64 %loop.idx.378.0
  %a.rd.elem950 = load i64, ptr %a.rd.elem.gep949, align 8
  br label %a.rd.done941

a.rd.err.oob940:                                  ; preds = %a.rd.check937
  %arena.cur962 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc963 = call ptr @dva_arena_alloc(ptr %arena.cur962, i64 56)
  store i64 4011, ptr %err.alloc963, align 8
  %err.msg.gep965 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc963, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep965, align 8
  %err.file.gep966 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc963, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep966, align 8
  %err.line.gep967 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc963, i32 0, i32 3
  store i64 1570, ptr %err.line.gep967, align 8
  %err.col.gep968 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc963, i32 0, i32 4
  store i64 29, ptr %err.col.gep968, align 8
  %err.ctx.gep969 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc963, i32 0, i32 5
  store i64 %loop.idx.378.0, ptr %err.ctx.gep969, align 8
  %err.ctx1.gep971 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep969, i32 0, i32 1
  store i64 %a.rd.len943, ptr %err.ctx1.gep971, align 8
  %err.p2i972 = ptrtoint ptr %err.alloc963 to i64
  br label %a.rd.done941

a.rd.done941:                                     ; preds = %a.rd.err.oob940, %a.rd.ok938
  %a.rd.tag973 = phi i1 [ true, %a.rd.ok938 ], [ false, %a.rd.err.oob940 ]
  %a.rd.pay974 = phi i64 [ %a.rd.elem950, %a.rd.ok938 ], [ %err.p2i972, %a.rd.err.oob940 ]
  br i1 %a.rd.tag973, label %a.check1023, label %unwrap.abort.379

unwrap.abort.379:                                 ; preds = %a.rd.done941
  %8 = call i64 @write(i32 2, ptr @expect.reason.380, i64 21)
  %err.ptr979 = inttoptr i64 %a.rd.pay974 to ptr
  %err.code981 = load i64, ptr %err.ptr979, align 8
  %err.msg.gep982 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr979, i32 0, i32 1
  %err.msg.struct983 = load ptr, ptr %err.msg.gep982, align 8
  %err.file.gep984 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr979, i32 0, i32 2
  %err.file.struct985 = load ptr, ptr %err.file.gep984, align 8
  %err.line.gep986 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr979, i32 0, i32 3
  %err.line987 = load i64, ptr %err.line.gep986, align 8
  %err.col.gep988 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr979, i32 0, i32 4
  %err.col989 = load i64, ptr %err.col.gep988, align 8
  %err.msg.len991 = load i64, ptr %err.msg.struct983, align 8
  %err.msg.len992 = and i64 %err.msg.len991, 281474976710655
  %err.msg.len32993 = trunc i64 %err.msg.len992 to i32
  %err.msg.data994 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct983, i32 0, i32 1
  %err.msg.data995 = load ptr, ptr %err.msg.data994, align 8
  %err.file.len997 = load i64, ptr %err.file.struct985, align 8
  %err.file.len998 = and i64 %err.file.len997, 281474976710655
  %err.file.len32999 = trunc i64 %err.file.len998 to i32
  %err.file.data1000 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct985, i32 0, i32 1
  %err.file.data1001 = load ptr, ptr %err.file.data1000, align 8
  %err.thread.rec1002 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1003 = icmp ne ptr %err.thread.rec1002, null
  br i1 %err.is.thread1003, label %err.thread1004, label %err.normal1005

err.thread1004:                                   ; preds = %unwrap.abort.379
  %err.haserr.gep1006 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1002, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1006, align 8
  %err.err.gep1007 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1002, i32 0, i32 7
  store ptr %err.ptr979, ptr %err.err.gep1007, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1005:                                   ; preds = %unwrap.abort.379
  %err.panic.printf1008 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code981, i32 %err.msg.len32993, ptr %err.msg.data995, i32 %err.file.len32999, ptr %err.file.data1001, i64 %err.line987, i64 %err.col989)
  call void @exit(i32 1)
  unreachable

a.check1023:                                      ; preds = %a.rd.done941
  %a.len1027 = load i64, ptr %var.qu.10, align 8
  %a.cap1028 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.10, i32 0, i32 2
  %a.cap1029 = load i64, ptr %a.cap1028, align 8
  %a.needs.grow1030 = icmp eq i64 %a.len1027, %a.cap1029
  br i1 %a.needs.grow1030, label %a.grow1024, label %a.store1025

a.grow1024:                                       ; preds = %a.check1023
  call void @dva_array_grow(ptr %var.qu.10)
  br label %a.store1025

a.store1025:                                      ; preds = %a.grow1024, %a.check1023
  %a.cur.data1031 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.10, i32 0, i32 1
  %a.cur.data1032 = load ptr, ptr %a.cur.data1031, align 8
  %a.cur.len1034 = load i64, ptr %var.qu.10, align 8
  %a.elem.gep1035 = getelementptr i64, ptr %a.cur.data1032, i64 %a.cur.len1034
  store i64 %a.rd.pay974, ptr %a.elem.gep1035, align 8
  %a.next.len1037 = add i64 %a.cur.len1034, 1
  store i64 %a.next.len1037, ptr %var.qu.10, align 8
  %loop.next1040 = add i64 %loop.idx.378.0, 1
  br label %loop.header.378

a.grow1071:                                       ; preds = %loop.exit.378
  call void @dva_array_grow(ptr %var.qu.10)
  br label %a.store1072

a.store1072:                                      ; preds = %a.grow1071, %loop.exit.378
  %a.cur.data1078 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.10, i32 0, i32 1
  %a.cur.data1079 = load ptr, ptr %a.cur.data1078, align 8
  %a.cur.len1081 = load i64, ptr %var.qu.10, align 8
  %a.elem.gep1082 = getelementptr i64, ptr %a.cur.data1079, i64 %a.cur.len1081
  %slot.p2i1083 = ptrtoint ptr %rec.alloc1049 to i64
  store i64 %slot.p2i1083, ptr %a.elem.gep1082, align 8
  %a.next.len1084 = add i64 %a.cur.len1081, 1
  store i64 %a.next.len1084, ptr %var.qu.10, align 8
  br label %choice.exit647

a.create1107:                                     ; preds = %loop.exit.375
  %arena.cur1109 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1110 = call ptr @dva_arena_alloc(ptr %arena.cur1109, i64 24)
  %arena.cur1111 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1112 = call ptr @dva_arena_alloc(ptr %arena.cur1111, i64 128)
  store i64 0, ptr %a.create1110, align 8
  %a.data.gep1114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1110, i32 0, i32 1
  store ptr %a.buf1112, ptr %a.data.gep1114, align 8
  %a.cap.gep1115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1110, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1115, align 8
  br label %a.check1117

a.check1117:                                      ; preds = %loop.exit.375, %a.create1107
  %var.qu.13 = phi ptr [ %a.create1110, %a.create1107 ], [ %var.qu.2, %loop.exit.375 ]
  %a.len1121 = load i64, ptr %var.qu.13, align 8
  %a.cap1122 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.13, i32 0, i32 2
  %a.cap1123 = load i64, ptr %a.cap1122, align 8
  %a.needs.grow1124 = icmp eq i64 %a.len1121, %a.cap1123
  br i1 %a.needs.grow1124, label %a.grow1118, label %a.store1119

a.grow1118:                                       ; preds = %a.check1117
  call void @dva_array_grow(ptr %var.qu.13)
  br label %a.store1119

a.store1119:                                      ; preds = %a.grow1118, %a.check1117
  %a.cur.data1125 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.qu.13, i32 0, i32 1
  %a.cur.data1126 = load ptr, ptr %a.cur.data1125, align 8
  %a.cur.len1128 = load i64, ptr %var.qu.13, align 8
  %a.elem.gep1129 = getelementptr i64, ptr %a.cur.data1126, i64 %a.cur.len1128
  %slot.p2i1130 = ptrtoint ptr %rec.alloc1096 to i64
  store i64 %slot.p2i1130, ptr %a.elem.gep1129, align 8
  %a.next.len1131 = add i64 %a.cur.len1128, 1
  store i64 %a.next.len1131, ptr %var.qu.13, align 8
  %call.res = call ptr @"lexer::take_queued"(ptr %0, i64 0)
  ret ptr %call.res
}

define ptr @"lexer::scan_single_string"(ptr %0, i64 %1, i64 %2, i64 %3, i1 %4) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 257)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 256, ptr %b.cap.gep, align 8
  br label %loop.header.381

loop.header.381:                                  ; preds = %choice.exit17, %entry
  %"var.cur_parts'.0" = phi ptr [ %a.new, %entry ], [ %"var.cur_parts'.2", %choice.exit17 ]
  %"var.cur_text'.0" = phi ptr [ %builder.new, %entry ], [ %"var.cur_text'.1", %choice.exit17 ]
  %"var.expr_count'.0" = phi i64 [ 0, %entry ], [ %"var.expr_count'.1", %choice.exit17 ]
  %loop.idx.381.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit17 ]
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.load7 = load ptr, ptr %0, align 8
  %str.len.query8 = load i64, ptr %fld.load7, align 8
  %str.len.query9 = and i64 %str.len.query8, 281474976710655
  %str.tag = lshr i64 %str.len.query8, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

loop.exit.381:                                    ; preds = %choice.else103, %a.store177, %choice.then33, %a.store, %choice.case191, %choice.then
  %"var.cur_parts'.1" = phi ptr [ %"var.cur_parts'.0", %choice.then ], [ %"var.cur_parts'.0", %choice.case191 ], [ %"var.cur_parts'.4", %a.store ], [ %"var.cur_parts'.0", %choice.then33 ], [ %"var.cur_parts'.6", %a.store177 ], [ %"var.cur_parts'.0", %choice.else103 ]
  %cmptmp814 = icmp eq i64 %"var.expr_count'.0", 0
  br i1 %cmptmp814, label %choice.then815, label %choice.else816

str_ok:                                           ; preds = %tag.slow_check, %loop.header.381
  %cmptmp = icmp sge i64 %fld.load, %str.len.query9
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %loop.header.381
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %call.res = call { i64, ptr } @"diag::E1008_string_unterminated"()
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %call.res13 = call i64 @"lexer::fail"(i64 1008, i64 %2, i64 %3, ptr %ret.ub.alloc)
  br label %loop.exit.381

choice.exit:                                      ; preds = %str_ok
  %call.res15 = call i32 @"lexer::pk"(ptr %0, i64 0)
  switch i32 %call.res15, label %choice.next516 [
    i32 34, label %choice.case
    i32 13, label %choice.case191
    i32 10, label %choice.case191
    i32 92, label %choice.case205
    i32 36, label %choice.case515
  ]

choice.exit17:                                    ; preds = %a.store660, %b.grow_done693, %b.push_done, %br.done.390, %b.grow_done366, %b.grow_done305, %b.grow_done253, %b.grow_done, %choice.then102, %br.done.392
  %"var.cur_parts'.2" = phi ptr [ %"var.cur_parts'.0", %br.done.392 ], [ %"var.cur_parts'.0", %choice.then102 ], [ %"var.cur_parts'.0", %b.grow_done ], [ %"var.cur_parts'.0", %b.grow_done253 ], [ %"var.cur_parts'.0", %b.grow_done305 ], [ %"var.cur_parts'.0", %b.grow_done366 ], [ %"var.cur_parts'.0", %br.done.390 ], [ %"var.cur_parts'.0", %b.push_done ], [ %"var.cur_parts'.10", %a.store660 ], [ %"var.cur_parts'.0", %b.grow_done693 ]
  %"var.cur_text'.1" = phi ptr [ %"var.cur_text'.0", %br.done.392 ], [ %"var.cur_text'.0", %choice.then102 ], [ %"var.cur_text'.0", %b.grow_done ], [ %"var.cur_text'.0", %b.grow_done253 ], [ %"var.cur_text'.0", %b.grow_done305 ], [ %"var.cur_text'.0", %b.grow_done366 ], [ %"var.cur_text'.0", %br.done.390 ], [ %"var.cur_text'.0", %b.push_done ], [ %builder.new614, %a.store660 ], [ %"var.cur_text'.0", %b.grow_done693 ]
  %"var.expr_count'.1" = phi i64 [ %"var.expr_count'.0", %br.done.392 ], [ %"var.expr_count'.0", %choice.then102 ], [ %"var.expr_count'.0", %b.grow_done ], [ %"var.expr_count'.0", %b.grow_done253 ], [ %"var.expr_count'.0", %b.grow_done305 ], [ %"var.expr_count'.0", %b.grow_done366 ], [ %"var.expr_count'.0", %br.done.390 ], [ %"var.expr_count'.0", %b.push_done ], [ %addtmp, %a.store660 ], [ %"var.expr_count'.0", %b.grow_done693 ]
  %loop.next = add i64 %loop.idx.381.0, 1
  br label %loop.header.381

choice.case:                                      ; preds = %choice.exit
  br i1 %4, label %choice.then19, label %choice.else

choice.then19:                                    ; preds = %choice.case
  %call.res22 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext = sext i32 %call.res22 to i64
  %cmptmp23 = icmp eq i64 %coerce.sext, 34
  br i1 %cmptmp23, label %and.382.then, label %choice.else34

choice.else:                                      ; preds = %choice.case
  %call.res96 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res97 = call i32 @"lexer::adv"(ptr %0, i32 %call.res96)
  %call.res99 = call i64 @"lexer::check_multiline_str"(ptr %0), !range !2
  %cmptmp101 = icmp ne i64 %call.res99, 0
  br i1 %cmptmp101, label %choice.then102, label %choice.else103

and.382.then:                                     ; preds = %choice.then19
  %call.res25 = call i32 @"lexer::pk_off"(ptr %0, i64 2)
  %coerce.sext26 = sext i32 %call.res25 to i64
  %cmptmp27 = icmp eq i64 %coerce.sext26, 34
  br i1 %cmptmp27, label %and.383.then, label %choice.else34

and.383.then:                                     ; preds = %and.382.then
  %call.res29 = call i32 @"lexer::pk_off"(ptr %0, i64 3)
  %coerce.sext30 = sext i32 %call.res29 to i64
  %cmptmp31 = icmp ne i64 %coerce.sext30, 34
  br i1 %cmptmp31, label %choice.then33, label %choice.else34

choice.then33:                                    ; preds = %and.383.then
  %call.res38 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res39 = call i32 @"lexer::adv"(ptr %0, i32 %call.res38)
  %call.res42 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res43 = call i32 @"lexer::adv"(ptr %0, i32 %call.res42)
  %call.res46 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res47 = call i32 @"lexer::adv"(ptr %0, i32 %call.res46)
  %b.len49 = load i64, ptr %"var.cur_text'.0", align 8
  %cmptmp50 = icmp sgt i64 %b.len49, 0
  br i1 %cmptmp50, label %choice.then51, label %loop.exit.381

choice.else34:                                    ; preds = %and.382.then, %choice.then19, %and.383.then
  %call.res74 = call i32 @"lexer::adv"(ptr %0, i32 34)
  %b.rn.cur.len77 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len77, i64 1)
  %sum78 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf79 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf79, label %str_overflow_abort81, label %b.rn.new.len80

choice.then51:                                    ; preds = %choice.then33
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %b.freeze.len55 = load i64, ptr %"var.cur_text'.0", align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.freeze.data56 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %choice.then51
  %b.freeze.last.idx = sub nuw nsw i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data56, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data56, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data56, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len55, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data56, i64 %b.freeze.len55, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len55
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then51
  %b.freeze.data58 = phi ptr [ %b.freeze.data56, %choice.then51 ], [ %b.freeze.data56, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len55, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data58, ptr %str.build.data.gep, align 8
  store i64 0, ptr %"var.cur_text'.0", align 8
  store ptr null, ptr %b.freeze.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %pay.gep, align 8
  %a.null = icmp eq ptr %"var.cur_parts'.0", null
  br i1 %a.null, label %a.create, label %a.check

a.create:                                         ; preds = %b.freeze.done
  %arena.cur60 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 24)
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 128)
  store i64 0, ptr %a.create61, align 8
  %a.data.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 1
  store ptr %a.buf63, ptr %a.data.gep65, align 8
  %a.cap.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 2
  store i64 16, ptr %a.cap.gep66, align 8
  br label %a.check

a.check:                                          ; preds = %b.freeze.done, %a.create
  %"var.cur_parts'.4" = phi ptr [ %a.create61, %a.create ], [ %"var.cur_parts'.0", %b.freeze.done ]
  %a.len67 = load i64, ptr %"var.cur_parts'.4", align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.4", i32 0, i32 2
  %a.cap68 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len67, %a.cap68
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %"var.cur_parts'.4")
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.4", i32 0, i32 1
  %a.cur.data69 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len70 = load i64, ptr %"var.cur_parts'.4", align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data69, i64 %a.cur.len70
  %slot.p2i = ptrtoint ptr %enum.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len70, 1
  store i64 %a.next.len, ptr %"var.cur_parts'.4", align 8
  br label %loop.exit.381

b.rn.new.len80:                                   ; preds = %choice.else34
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap83 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap83, %sum78
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort81:                             ; preds = %choice.else34
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.rn.new.len80
  %b.cap2 = mul i64 %b.cap83, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum78
  %b.new.cap = select i1 %b.cap.need, i64 %sum78, i64 %b.cap.grow
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data285 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum86 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf87 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf87, label %str_overflow_abort89, label %b.new.buf.len288

b.grow_done:                                      ; preds = %b.rn.new.len80, %b.new.buf.len288
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data92 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data92, i64 %b.rn.cur.len77
  store i8 34, ptr %b.rn.dst, align 1
  %br.nul = getelementptr i8, ptr %b.rn.data92, i64 %sum78
  store i8 0, ptr %br.nul, align 1
  store i64 %sum78, ptr %"var.cur_text'.0", align 8
  br label %choice.exit17

b.new.buf.len288:                                 ; preds = %b.grow2
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 %sum86)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data285, i64 %b.rn.cur.len77, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.rn.cur.len77
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.cur.data2, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.grow_done

str_overflow_abort89:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then102:                                   ; preds = %choice.else
  call void @"lexer::adv_to"(ptr %0, i64 %call.res99)
  %call.res109 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res110 = call i32 @"lexer::adv"(ptr %0, i32 %call.res109)
  br label %choice.exit17

choice.else103:                                   ; preds = %choice.else
  %b.len113 = load i64, ptr %"var.cur_text'.0", align 8
  %cmptmp114 = icmp sgt i64 %b.len113, 0
  br i1 %cmptmp114, label %choice.then115, label %loop.exit.381

choice.then115:                                   ; preds = %choice.else103
  %arena.cur117 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 16)
  store i64 0, ptr %enum.alloc118, align 8
  %pay.gep120 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc118, i32 0, i32 1
  %b.freeze.len123 = load i64, ptr %"var.cur_text'.0", align 8
  %b.freeze.data124 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.freeze.data125 = load ptr, ptr %b.freeze.data124, align 8
  %b.freeze.arena126 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep127 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena126, i32 0, i32 1
  %b.freeze.nc128 = load i64, ptr %b.freeze.nc.gep127, align 8
  %b.freeze.has.chunk129 = icmp sgt i64 %b.freeze.nc128, 0
  br i1 %b.freeze.has.chunk129, label %b.freeze.check130, label %b.freeze.done132

b.freeze.check130:                                ; preds = %choice.then115
  %b.freeze.last.idx133 = sub nuw nsw i64 %b.freeze.nc128, 1
  %b.freeze.chunks.gep134 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena126, i32 0, i32 3
  %b.freeze.chunk.slot135 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep134, i64 0, i64 %b.freeze.last.idx133
  %b.freeze.last.chunk136 = load ptr, ptr %b.freeze.chunk.slot135, align 8
  %b.freeze.off.gep137 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena126, i32 0, i32 2
  %b.freeze.off138 = load i64, ptr %b.freeze.off.gep137, align 8
  %b.freeze.bump139 = getelementptr i8, ptr %b.freeze.last.chunk136, i64 %b.freeze.off138
  %b.freeze.cap141 = load i64, ptr %b.freeze.arena126, align 8
  %b.freeze.chunk.end142 = getelementptr i8, ptr %b.freeze.last.chunk136, i64 %b.freeze.cap141
  %b.freeze.ge.chunk143 = icmp uge ptr %b.freeze.data125, %b.freeze.last.chunk136
  %b.freeze.lt.end144 = icmp ult ptr %b.freeze.data125, %b.freeze.chunk.end142
  %b.freeze.in.chunk145 = and i1 %b.freeze.ge.chunk143, %b.freeze.lt.end144
  %b.freeze.ge.bump146 = icmp uge ptr %b.freeze.data125, %b.freeze.bump139
  %b.freeze.reaped147 = and i1 %b.freeze.in.chunk145, %b.freeze.ge.bump146
  br i1 %b.freeze.reaped147, label %b.freeze.copy131, label %b.freeze.done132

b.freeze.copy131:                                 ; preds = %b.freeze.check130
  %b.freeze.alen148 = add i64 %b.freeze.len123, 1
  %b.freeze.fresh150 = call ptr @dva_arena_alloc(ptr %b.freeze.arena126, i64 %b.freeze.alen148)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh150, ptr align 1 %b.freeze.data125, i64 %b.freeze.len123, i1 false)
  %b.freeze.nul151 = getelementptr i8, ptr %b.freeze.fresh150, i64 %b.freeze.len123
  store i8 0, ptr %b.freeze.nul151, align 1
  br label %b.freeze.done132

b.freeze.done132:                                 ; preds = %b.freeze.copy131, %b.freeze.check130, %choice.then115
  %b.freeze.data152 = phi ptr [ %b.freeze.data125, %choice.then115 ], [ %b.freeze.data125, %b.freeze.check130 ], [ %b.freeze.fresh150, %b.freeze.copy131 ]
  %arena.cur153 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 16)
  %str.tag.gen156 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift157 = shl i64 %str.tag.gen156, 48
  %str.tagged.len158 = or i64 %b.freeze.len123, %str.tag.shift157
  store i64 %str.tagged.len158, ptr %builder.freeze154, align 8
  %str.build.data.gep159 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze154, i32 0, i32 1
  store ptr %b.freeze.data152, ptr %str.build.data.gep159, align 8
  store i64 0, ptr %"var.cur_text'.0", align 8
  store ptr null, ptr %b.freeze.data124, align 8
  %b.freeze.rst.cap162 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap162, align 8
  store ptr %builder.freeze154, ptr %pay.gep120, align 8
  %a.null164 = icmp eq ptr %"var.cur_parts'.0", null
  br i1 %a.null164, label %a.create165, label %a.check175

a.create165:                                      ; preds = %b.freeze.done132
  %arena.cur167 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 24)
  %arena.cur169 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf170 = call ptr @dva_arena_alloc(ptr %arena.cur169, i64 128)
  store i64 0, ptr %a.create168, align 8
  %a.data.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create168, i32 0, i32 1
  store ptr %a.buf170, ptr %a.data.gep172, align 8
  %a.cap.gep173 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create168, i32 0, i32 2
  store i64 16, ptr %a.cap.gep173, align 8
  br label %a.check175

a.check175:                                       ; preds = %b.freeze.done132, %a.create165
  %"var.cur_parts'.6" = phi ptr [ %a.create168, %a.create165 ], [ %"var.cur_parts'.0", %b.freeze.done132 ]
  %a.len179 = load i64, ptr %"var.cur_parts'.6", align 8
  %a.cap180 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.6", i32 0, i32 2
  %a.cap181 = load i64, ptr %a.cap180, align 8
  %a.needs.grow182 = icmp eq i64 %a.len179, %a.cap181
  br i1 %a.needs.grow182, label %a.grow176, label %a.store177

a.grow176:                                        ; preds = %a.check175
  call void @dva_array_grow(ptr %"var.cur_parts'.6")
  br label %a.store177

a.store177:                                       ; preds = %a.grow176, %a.check175
  %a.cur.data183 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.6", i32 0, i32 1
  %a.cur.data184 = load ptr, ptr %a.cur.data183, align 8
  %a.cur.len186 = load i64, ptr %"var.cur_parts'.6", align 8
  %a.elem.gep187 = getelementptr i64, ptr %a.cur.data184, i64 %a.cur.len186
  %slot.p2i188 = ptrtoint ptr %enum.alloc118 to i64
  store i64 %slot.p2i188, ptr %a.elem.gep187, align 8
  %a.next.len189 = add i64 %a.cur.len186, 1
  store i64 %a.next.len189, ptr %"var.cur_parts'.6", align 8
  br label %loop.exit.381

choice.case191:                                   ; preds = %choice.exit, %choice.exit
  %fld.gep196 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 2
  %fld.load197 = load i64, ptr %fld.gep196, align 8
  %fld.gep199 = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 3
  %fld.load200 = load i64, ptr %fld.gep199, align 8
  %call.res201 = call { i64, ptr } @"diag::E1008_string_unterminated"()
  %arena.cur202 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc203 = call ptr @dva_arena_alloc(ptr %arena.cur202, i64 16)
  store { i64, ptr } %call.res201, ptr %ret.ub.alloc203, align 8
  %call.res204 = call i64 @"lexer::fail"(i64 1008, i64 %fld.load197, i64 %fld.load200, ptr %ret.ub.alloc203)
  br label %loop.exit.381

choice.case205:                                   ; preds = %choice.exit
  br i1 %4, label %and.385.then, label %choice.else222

and.385.then:                                     ; preds = %choice.case205
  %call.res210 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext211 = sext i32 %call.res210 to i64
  %cmptmp212 = icmp eq i64 %coerce.sext211, 34
  br i1 %cmptmp212, label %and.386.then, label %choice.else222

and.386.then:                                     ; preds = %and.385.then
  %call.res214 = call i32 @"lexer::pk_off"(ptr %0, i64 2)
  %coerce.sext215 = sext i32 %call.res214 to i64
  %cmptmp216 = icmp eq i64 %coerce.sext215, 34
  br i1 %cmptmp216, label %and.387.then, label %choice.else222

and.387.then:                                     ; preds = %and.386.then
  %call.res218 = call i32 @"lexer::pk_off"(ptr %0, i64 3)
  %coerce.sext219 = sext i32 %call.res218 to i64
  %cmptmp220 = icmp eq i64 %coerce.sext219, 34
  br i1 %cmptmp220, label %choice.then221, label %choice.else222

choice.then221:                                   ; preds = %and.387.then
  %call.res226 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res227 = call i32 @"lexer::adv"(ptr %0, i32 %call.res226)
  %call.res230 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res231 = call i32 @"lexer::adv"(ptr %0, i32 %call.res230)
  %call.res234 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res235 = call i32 @"lexer::adv"(ptr %0, i32 %call.res234)
  %call.res238 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res239 = call i32 @"lexer::adv"(ptr %0, i32 %call.res238)
  %b.app.cur.len242 = load i64, ptr %"var.cur_text'.0", align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len242, i64 3)
  %sum243 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf244 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf244, label %str_overflow_abort246, label %b.app.new.len245

choice.else222:                                   ; preds = %and.386.then, %choice.case205, %and.385.then, %and.387.then
  %call.res277 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext278 = sext i32 %call.res277 to i64
  %cmptmp279 = icmp eq i64 %coerce.sext278, 36
  br i1 %cmptmp279, label %choice.then280, label %choice.else281

b.app.new.len245:                                 ; preds = %choice.then221
  %b.cap248 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap249 = load i64, ptr %b.cap248, align 8
  %b.need.grow250 = icmp slt i64 %b.cap249, %sum243
  br i1 %b.need.grow250, label %b.grow2251, label %b.grow_done253

str_overflow_abort246:                            ; preds = %choice.then221
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2251:                                       ; preds = %b.app.new.len245
  %b.cap2254 = mul i64 %b.cap249, 2
  %b.cap.small255 = icmp slt i64 %b.cap2254, 16
  %b.cap.grow256 = select i1 %b.cap.small255, i64 16, i64 %b.cap2254
  %b.cap.need257 = icmp slt i64 %b.cap.grow256, %sum243
  %b.new.cap258 = select i1 %b.cap.need257, i64 %sum243, i64 %b.cap.grow256
  %b.cur.data2261 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2262 = load ptr, ptr %b.cur.data2261, align 8
  %b.new.buf.len2263 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap258, i64 1)
  %sum264 = extractvalue { i64, i1 } %b.new.buf.len2263, 0
  %ovf265 = extractvalue { i64, i1 } %b.new.buf.len2263, 1
  br i1 %ovf265, label %str_overflow_abort267, label %b.new.buf.len2266

b.grow_done253:                                   ; preds = %b.app.new.len245, %b.new.buf.len2266
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.app.data274 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data274, i64 %b.app.cur.len242
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 @str.114, i64 3, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data274, i64 %sum243
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum243, ptr %"var.cur_text'.0", align 8
  br label %choice.exit17

b.new.buf.len2266:                                ; preds = %b.grow2251
  %arena.cur269 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 %sum264)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2270, ptr align 1 %b.cur.data2262, i64 %b.app.cur.len242, i1 false)
  %b.grow2.nul271 = getelementptr i8, ptr %b.new.buf2270, i64 %b.app.cur.len242
  store i8 0, ptr %b.grow2.nul271, align 1
  store ptr %b.new.buf2270, ptr %b.cur.data2261, align 8
  store i64 %b.new.cap258, ptr %b.cap248, align 8
  br label %b.grow_done253

str_overflow_abort267:                            ; preds = %b.grow2251
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then280:                                   ; preds = %choice.else222
  %call.res285 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res286 = call i32 @"lexer::adv"(ptr %0, i32 %call.res285)
  %call.res289 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res290 = call i32 @"lexer::adv"(ptr %0, i32 %call.res289)
  %b.rn.cur.len293 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len294 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len293, i64 1)
  %sum295 = extractvalue { i64, i1 } %b.rn.new.len294, 0
  %ovf296 = extractvalue { i64, i1 } %b.rn.new.len294, 1
  br i1 %ovf296, label %str_overflow_abort298, label %b.rn.new.len297

choice.else281:                                   ; preds = %choice.else222
  %call.res338 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext339 = sext i32 %call.res338 to i64
  %cmptmp340 = icmp eq i64 %coerce.sext339, 34
  br i1 %cmptmp340, label %choice.then341, label %choice.else342

b.rn.new.len297:                                  ; preds = %choice.then280
  %b.cap300 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap301 = load i64, ptr %b.cap300, align 8
  %b.need.grow302 = icmp slt i64 %b.cap301, %sum295
  br i1 %b.need.grow302, label %b.grow2303, label %b.grow_done305

str_overflow_abort298:                            ; preds = %choice.then280
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2303:                                       ; preds = %b.rn.new.len297
  %b.cap2306 = mul i64 %b.cap301, 2
  %b.cap.small307 = icmp slt i64 %b.cap2306, 16
  %b.cap.grow308 = select i1 %b.cap.small307, i64 16, i64 %b.cap2306
  %b.cap.need309 = icmp slt i64 %b.cap.grow308, %sum295
  %b.new.cap310 = select i1 %b.cap.need309, i64 %sum295, i64 %b.cap.grow308
  %b.cur.data2313 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2314 = load ptr, ptr %b.cur.data2313, align 8
  %b.new.buf.len2315 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap310, i64 1)
  %sum316 = extractvalue { i64, i1 } %b.new.buf.len2315, 0
  %ovf317 = extractvalue { i64, i1 } %b.new.buf.len2315, 1
  br i1 %ovf317, label %str_overflow_abort319, label %b.new.buf.len2318

b.grow_done305:                                   ; preds = %b.rn.new.len297, %b.new.buf.len2318
  %b.rn.data326 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data327 = load ptr, ptr %b.rn.data326, align 8
  %b.rn.dst328 = getelementptr i8, ptr %b.rn.data327, i64 %b.rn.cur.len293
  store i8 36, ptr %b.rn.dst328, align 1
  %br.nul335 = getelementptr i8, ptr %b.rn.data327, i64 %sum295
  store i8 0, ptr %br.nul335, align 1
  store i64 %sum295, ptr %"var.cur_text'.0", align 8
  br label %choice.exit17

b.new.buf.len2318:                                ; preds = %b.grow2303
  %arena.cur321 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 %sum316)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2322, ptr align 1 %b.cur.data2314, i64 %b.rn.cur.len293, i1 false)
  %b.grow2.nul323 = getelementptr i8, ptr %b.new.buf2322, i64 %b.rn.cur.len293
  store i8 0, ptr %b.grow2.nul323, align 1
  store ptr %b.new.buf2322, ptr %b.cur.data2313, align 8
  store i64 %b.new.cap310, ptr %b.cap300, align 8
  br label %b.grow_done305

str_overflow_abort319:                            ; preds = %b.grow2303
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then341:                                   ; preds = %choice.else281
  %call.res346 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res347 = call i32 @"lexer::adv"(ptr %0, i32 %call.res346)
  %call.res350 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res351 = call i32 @"lexer::adv"(ptr %0, i32 %call.res350)
  %b.rn.cur.len354 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len355 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len354, i64 1)
  %sum356 = extractvalue { i64, i1 } %b.rn.new.len355, 0
  %ovf357 = extractvalue { i64, i1 } %b.rn.new.len355, 1
  br i1 %ovf357, label %str_overflow_abort359, label %b.rn.new.len358

choice.else342:                                   ; preds = %choice.else281
  %call.res400 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res401 = call i32 @"lexer::adv"(ptr %0, i32 %call.res400)
  %call.res403 = call { i1, i64 } @"lexer::scan_esc_byte_opt"(ptr %0)
  %ram.tag = extractvalue { i1, i64 } %call.res403, 0
  br i1 %ram.tag, label %choice.then404, label %choice.else405

b.rn.new.len358:                                  ; preds = %choice.then341
  %b.cap361 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap362 = load i64, ptr %b.cap361, align 8
  %b.need.grow363 = icmp slt i64 %b.cap362, %sum356
  br i1 %b.need.grow363, label %b.grow2364, label %b.grow_done366

str_overflow_abort359:                            ; preds = %choice.then341
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2364:                                       ; preds = %b.rn.new.len358
  %b.cap2367 = mul i64 %b.cap362, 2
  %b.cap.small368 = icmp slt i64 %b.cap2367, 16
  %b.cap.grow369 = select i1 %b.cap.small368, i64 16, i64 %b.cap2367
  %b.cap.need370 = icmp slt i64 %b.cap.grow369, %sum356
  %b.new.cap371 = select i1 %b.cap.need370, i64 %sum356, i64 %b.cap.grow369
  %b.cur.data2374 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2375 = load ptr, ptr %b.cur.data2374, align 8
  %b.new.buf.len2376 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap371, i64 1)
  %sum377 = extractvalue { i64, i1 } %b.new.buf.len2376, 0
  %ovf378 = extractvalue { i64, i1 } %b.new.buf.len2376, 1
  br i1 %ovf378, label %str_overflow_abort380, label %b.new.buf.len2379

b.grow_done366:                                   ; preds = %b.rn.new.len358, %b.new.buf.len2379
  %b.rn.data387 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data388 = load ptr, ptr %b.rn.data387, align 8
  %b.rn.dst389 = getelementptr i8, ptr %b.rn.data388, i64 %b.rn.cur.len354
  store i8 34, ptr %b.rn.dst389, align 1
  %br.nul396 = getelementptr i8, ptr %b.rn.data388, i64 %sum356
  store i8 0, ptr %br.nul396, align 1
  store i64 %sum356, ptr %"var.cur_text'.0", align 8
  br label %choice.exit17

b.new.buf.len2379:                                ; preds = %b.grow2364
  %arena.cur382 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2383 = call ptr @dva_arena_alloc(ptr %arena.cur382, i64 %sum377)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2383, ptr align 1 %b.cur.data2375, i64 %b.rn.cur.len354, i1 false)
  %b.grow2.nul384 = getelementptr i8, ptr %b.new.buf2383, i64 %b.rn.cur.len354
  store i8 0, ptr %b.grow2.nul384, align 1
  store ptr %b.new.buf2383, ptr %b.cur.data2374, align 8
  store i64 %b.new.cap371, ptr %b.cap361, align 8
  br label %b.grow_done366

str_overflow_abort380:                            ; preds = %b.grow2364
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then404:                                   ; preds = %choice.else342
  %ram.pay = extractvalue { i1, i64 } %call.res403, 1
  %b.b.ge0 = icmp sge i64 %ram.pay, 0
  %b.b.le255 = icmp sle i64 %ram.pay, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else405:                                   ; preds = %choice.else342
  %call.res429 = call i32 @"lexer::scan_esc_rune"(ptr %0)
  %coerce.sext432 = sext i32 %call.res429 to i64
  %br.cmp1433 = icmp slt i64 %coerce.sext432, 128
  %br.cmp2434 = icmp slt i64 %coerce.sext432, 2048
  %br.cmp3435 = icmp slt i64 %coerce.sext432, 65536
  %br.w3436 = select i1 %br.cmp3435, i64 3, i64 4
  %br.w2437 = select i1 %br.cmp2434, i64 2, i64 %br.w3436
  %br.width438 = select i1 %br.cmp1433, i64 1, i64 %br.w2437
  %b.rn.cur.len440 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len441 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len440, i64 %br.width438)
  %sum442 = extractvalue { i64, i1 } %b.rn.new.len441, 0
  %ovf443 = extractvalue { i64, i1 } %b.rn.new.len441, 1
  br i1 %ovf443, label %str_overflow_abort445, label %b.rn.new.len444

b.byte_ok:                                        ; preds = %choice.then404
  %b.byte.i8 = trunc i64 %ram.pay to i8
  %b.len412 = load i64, ptr %"var.cur_text'.0", align 8
  %b.cap413 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap414 = load i64, ptr %b.cap413, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.data415 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len412, %b.cap414
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %choice.then404
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2416 = mul i64 %b.cap414, 2
  %b.cap.small417 = icmp slt i64 %b.cap2416, 16
  %b.new.cap418 = select i1 %b.cap.small417, i64 16, i64 %b.cap2416
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap418, i64 1)
  %sum419 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf420 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf420, label %str_overflow_abort422, label %b.new.buf.len421

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len421
  %b.cur.data425 = load ptr, ptr %b.data, align 8
  %b.cur.len426 = load i64, ptr %"var.cur_text'.0", align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data425, i64 %b.cur.len426
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len426, 1
  %b.nul = getelementptr i8, ptr %b.cur.data425, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  store i64 %b.next.len, ptr %"var.cur_text'.0", align 8
  br label %choice.exit17

b.new.buf.len421:                                 ; preds = %b.grow
  %arena.cur424 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur424, i64 %sum419)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data415, i64 %b.len412, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len412
  store i8 0, ptr %b.grow.nul, align 1
  store ptr %b.new.buf, ptr %b.data, align 8
  store i64 %b.new.cap418, ptr %b.cap413, align 8
  br label %b.push_done

str_overflow_abort422:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len444:                                  ; preds = %choice.else405
  %b.cap447 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap448 = load i64, ptr %b.cap447, align 8
  %b.need.grow449 = icmp slt i64 %b.cap448, %sum442
  br i1 %b.need.grow449, label %b.grow2450, label %b.grow_done452

str_overflow_abort445:                            ; preds = %choice.else405
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2450:                                       ; preds = %b.rn.new.len444
  %b.cap2453 = mul i64 %b.cap448, 2
  %b.cap.small454 = icmp slt i64 %b.cap2453, 16
  %b.cap.grow455 = select i1 %b.cap.small454, i64 16, i64 %b.cap2453
  %b.cap.need456 = icmp slt i64 %b.cap.grow455, %sum442
  %b.new.cap457 = select i1 %b.cap.need456, i64 %sum442, i64 %b.cap.grow455
  %b.cur.data2460 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2461 = load ptr, ptr %b.cur.data2460, align 8
  %b.new.buf.len2462 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap457, i64 1)
  %sum463 = extractvalue { i64, i1 } %b.new.buf.len2462, 0
  %ovf464 = extractvalue { i64, i1 } %b.new.buf.len2462, 1
  br i1 %ovf464, label %str_overflow_abort466, label %b.new.buf.len2465

b.grow_done452:                                   ; preds = %b.rn.new.len444, %b.new.buf.len2465
  %b.rn.data473 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data474 = load ptr, ptr %b.rn.data473, align 8
  %b.rn.dst475 = getelementptr i8, ptr %b.rn.data474, i64 %b.rn.cur.len440
  br i1 %br.cmp1433, label %br.b1.390, label %br.c2.390

b.new.buf.len2465:                                ; preds = %b.grow2450
  %arena.cur468 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2469 = call ptr @dva_arena_alloc(ptr %arena.cur468, i64 %sum463)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2469, ptr align 1 %b.cur.data2461, i64 %b.rn.cur.len440, i1 false)
  %b.grow2.nul470 = getelementptr i8, ptr %b.new.buf2469, i64 %b.rn.cur.len440
  store i8 0, ptr %b.grow2.nul470, align 1
  store ptr %b.new.buf2469, ptr %b.cur.data2460, align 8
  store i64 %b.new.cap457, ptr %b.cap447, align 8
  br label %b.grow_done452

str_overflow_abort466:                            ; preds = %b.grow2450
  call void @dva_abort_str_overflow_msg()
  unreachable

br.b1.390:                                        ; preds = %b.grow_done452
  %br.b1.0476 = trunc i64 %coerce.sext432 to i8
  store i8 %br.b1.0476, ptr %b.rn.dst475, align 1
  br label %br.done.390

br.c2.390:                                        ; preds = %b.grow_done452
  br i1 %br.cmp2434, label %br.b2.390, label %br.c3.390

br.b2.390:                                        ; preds = %br.c2.390
  %br.sh6477 = lshr i64 %coerce.sext432, 6
  %br.b2.0478 = or i64 %br.sh6477, 192
  %br.b2.0t479 = trunc i64 %br.b2.0478 to i8
  %br.m6480 = and i64 %coerce.sext432, 63
  %br.b2.1481 = or i64 %br.m6480, 128
  %br.b2.1t482 = trunc i64 %br.b2.1481 to i8
  store i8 %br.b2.0t479, ptr %b.rn.dst475, align 1
  %br.dst1483 = getelementptr i8, ptr %b.rn.dst475, i64 1
  store i8 %br.b2.1t482, ptr %br.dst1483, align 1
  br label %br.done.390

br.c3.390:                                        ; preds = %br.c2.390
  br i1 %br.cmp3435, label %br.b3.390, label %br.b4.390

br.b3.390:                                        ; preds = %br.c3.390
  %br.sh12484 = lshr i64 %coerce.sext432, 12
  %br.b3.0485 = or i64 %br.sh12484, 224
  %br.b3.0t486 = trunc i64 %br.b3.0485 to i8
  %br.sh6.3487 = lshr i64 %coerce.sext432, 6
  %br.m6.3488 = and i64 %br.sh6.3487, 63
  %br.b3.1489 = or i64 %br.m6.3488, 128
  %br.b3.1t490 = trunc i64 %br.b3.1489 to i8
  %br.mend491 = and i64 %coerce.sext432, 63
  %br.b3.2492 = or i64 %br.mend491, 128
  %br.b3.2t493 = trunc i64 %br.b3.2492 to i8
  store i8 %br.b3.0t486, ptr %b.rn.dst475, align 1
  %br.dst1.3494 = getelementptr i8, ptr %b.rn.dst475, i64 1
  store i8 %br.b3.1t490, ptr %br.dst1.3494, align 1
  %br.dst2.3495 = getelementptr i8, ptr %b.rn.dst475, i64 2
  store i8 %br.b3.2t493, ptr %br.dst2.3495, align 1
  br label %br.done.390

br.b4.390:                                        ; preds = %br.c3.390
  %br.sh18496 = lshr i64 %coerce.sext432, 18
  %br.b4.0497 = or i64 %br.sh18496, 240
  %br.b4.0t498 = trunc i64 %br.b4.0497 to i8
  %br.sh12.4499 = lshr i64 %coerce.sext432, 12
  %br.m12.4500 = and i64 %br.sh12.4499, 63
  %br.b4.1501 = or i64 %br.m12.4500, 128
  %br.b4.1t502 = trunc i64 %br.b4.1501 to i8
  %br.sh6.4503 = lshr i64 %coerce.sext432, 6
  %br.m6.4504 = and i64 %br.sh6.4503, 63
  %br.b4.2505 = or i64 %br.m6.4504, 128
  %br.b4.2t506 = trunc i64 %br.b4.2505 to i8
  %br.mend4507 = and i64 %coerce.sext432, 63
  %br.b4.3508 = or i64 %br.mend4507, 128
  %br.b4.3t509 = trunc i64 %br.b4.3508 to i8
  store i8 %br.b4.0t498, ptr %b.rn.dst475, align 1
  %br.dst1.4510 = getelementptr i8, ptr %b.rn.dst475, i64 1
  store i8 %br.b4.1t502, ptr %br.dst1.4510, align 1
  %br.dst2.4511 = getelementptr i8, ptr %b.rn.dst475, i64 2
  store i8 %br.b4.2t506, ptr %br.dst2.4511, align 1
  %br.dst3.4512 = getelementptr i8, ptr %b.rn.dst475, i64 3
  store i8 %br.b4.3t509, ptr %br.dst3.4512, align 1
  br label %br.done.390

br.done.390:                                      ; preds = %br.b4.390, %br.b3.390, %br.b2.390, %br.b1.390
  %br.nul513 = getelementptr i8, ptr %b.rn.data474, i64 %sum442
  store i8 0, ptr %br.nul513, align 1
  store i64 %sum442, ptr %"var.cur_text'.0", align 8
  br label %choice.exit17

choice.case515:                                   ; preds = %choice.exit
  %call.res519 = call i32 @"lexer::pk_off"(ptr %0, i64 1)
  %coerce.sext520 = sext i32 %call.res519 to i64
  %cmptmp521 = icmp eq i64 %coerce.sext520, 123
  br i1 %cmptmp521, label %choice.then522, label %choice.else523

choice.next516:                                   ; preds = %choice.exit
  %call.res727 = call i32 @"lexer::adv"(ptr %0, i32 %call.res15)
  %coerce.sext730 = sext i32 %call.res15 to i64
  %br.cmp1731 = icmp slt i64 %coerce.sext730, 128
  %br.cmp2732 = icmp slt i64 %coerce.sext730, 2048
  %br.cmp3733 = icmp slt i64 %coerce.sext730, 65536
  %br.w3734 = select i1 %br.cmp3733, i64 3, i64 4
  %br.w2735 = select i1 %br.cmp2732, i64 2, i64 %br.w3734
  %br.width736 = select i1 %br.cmp1731, i64 1, i64 %br.w2735
  %b.rn.cur.len738 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len739 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len738, i64 %br.width736)
  %sum740 = extractvalue { i64, i1 } %b.rn.new.len739, 0
  %ovf741 = extractvalue { i64, i1 } %b.rn.new.len739, 1
  br i1 %ovf741, label %str_overflow_abort743, label %b.rn.new.len742

choice.then522:                                   ; preds = %choice.case515
  %call.res527 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res528 = call i32 @"lexer::adv"(ptr %0, i32 %call.res527)
  %call.res531 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res532 = call i32 @"lexer::adv"(ptr %0, i32 %call.res531)
  %b.len535 = load i64, ptr %"var.cur_text'.0", align 8
  %cmptmp536 = icmp sgt i64 %b.len535, 0
  br i1 %cmptmp536, label %choice.then537, label %choice.exit538

choice.else523:                                   ; preds = %choice.case515
  %call.res677 = call i32 @"lexer::pk"(ptr %0, i64 0)
  %call.res678 = call i32 @"lexer::adv"(ptr %0, i32 %call.res677)
  %b.rn.cur.len681 = load i64, ptr %"var.cur_text'.0", align 8
  %b.rn.new.len682 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len681, i64 1)
  %sum683 = extractvalue { i64, i1 } %b.rn.new.len682, 0
  %ovf684 = extractvalue { i64, i1 } %b.rn.new.len682, 1
  br i1 %ovf684, label %str_overflow_abort686, label %b.rn.new.len685

choice.then537:                                   ; preds = %choice.then522
  %arena.cur539 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc540 = call ptr @dva_arena_alloc(ptr %arena.cur539, i64 16)
  store i64 0, ptr %enum.alloc540, align 8
  %pay.gep542 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc540, i32 0, i32 1
  %b.freeze.len545 = load i64, ptr %"var.cur_text'.0", align 8
  %b.freeze.data546 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.freeze.data547 = load ptr, ptr %b.freeze.data546, align 8
  %b.freeze.arena548 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep549 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena548, i32 0, i32 1
  %b.freeze.nc550 = load i64, ptr %b.freeze.nc.gep549, align 8
  %b.freeze.has.chunk551 = icmp sgt i64 %b.freeze.nc550, 0
  br i1 %b.freeze.has.chunk551, label %b.freeze.check552, label %b.freeze.done554

choice.exit538:                                   ; preds = %a.store599, %choice.then522
  %"var.cur_parts'.8" = phi ptr [ %"var.cur_parts'.9", %a.store599 ], [ %"var.cur_parts'.0", %choice.then522 ]
  %arena.cur613 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new614 = call ptr @dva_arena_alloc(ptr %arena.cur613, i64 24)
  %b.data.gep615 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new614, i32 0, i32 1
  %b.cap.gep617 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new614, i32 0, i32 2
  %arena.cur624 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf625 = call ptr @dva_arena_alloc(ptr %arena.cur624, i64 257)
  store i8 0, ptr %b.buf625, align 1
  store i64 0, ptr %builder.new614, align 8
  store ptr %b.buf625, ptr %b.data.gep615, align 8
  store i64 256, ptr %b.cap.gep617, align 8
  %call.res628 = call ptr @"lexer::scan_str_expr"(ptr %0, i1 false)
  %arena.cur629 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc630 = call ptr @dva_arena_alloc(ptr %arena.cur629, i64 16)
  store i64 1, ptr %enum.alloc630, align 8
  %pay.gep632 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc630, i32 0, i32 1
  %a.null635 = icmp eq ptr %call.res628, null
  br i1 %a.null635, label %a.create636, label %a.after637

b.freeze.check552:                                ; preds = %choice.then537
  %b.freeze.last.idx555 = sub nuw nsw i64 %b.freeze.nc550, 1
  %b.freeze.chunks.gep556 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena548, i32 0, i32 3
  %b.freeze.chunk.slot557 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep556, i64 0, i64 %b.freeze.last.idx555
  %b.freeze.last.chunk558 = load ptr, ptr %b.freeze.chunk.slot557, align 8
  %b.freeze.off.gep559 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena548, i32 0, i32 2
  %b.freeze.off560 = load i64, ptr %b.freeze.off.gep559, align 8
  %b.freeze.bump561 = getelementptr i8, ptr %b.freeze.last.chunk558, i64 %b.freeze.off560
  %b.freeze.cap563 = load i64, ptr %b.freeze.arena548, align 8
  %b.freeze.chunk.end564 = getelementptr i8, ptr %b.freeze.last.chunk558, i64 %b.freeze.cap563
  %b.freeze.ge.chunk565 = icmp uge ptr %b.freeze.data547, %b.freeze.last.chunk558
  %b.freeze.lt.end566 = icmp ult ptr %b.freeze.data547, %b.freeze.chunk.end564
  %b.freeze.in.chunk567 = and i1 %b.freeze.ge.chunk565, %b.freeze.lt.end566
  %b.freeze.ge.bump568 = icmp uge ptr %b.freeze.data547, %b.freeze.bump561
  %b.freeze.reaped569 = and i1 %b.freeze.in.chunk567, %b.freeze.ge.bump568
  br i1 %b.freeze.reaped569, label %b.freeze.copy553, label %b.freeze.done554

b.freeze.copy553:                                 ; preds = %b.freeze.check552
  %b.freeze.alen570 = add i64 %b.freeze.len545, 1
  %b.freeze.fresh572 = call ptr @dva_arena_alloc(ptr %b.freeze.arena548, i64 %b.freeze.alen570)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh572, ptr align 1 %b.freeze.data547, i64 %b.freeze.len545, i1 false)
  %b.freeze.nul573 = getelementptr i8, ptr %b.freeze.fresh572, i64 %b.freeze.len545
  store i8 0, ptr %b.freeze.nul573, align 1
  br label %b.freeze.done554

b.freeze.done554:                                 ; preds = %b.freeze.copy553, %b.freeze.check552, %choice.then537
  %b.freeze.data574 = phi ptr [ %b.freeze.data547, %choice.then537 ], [ %b.freeze.data547, %b.freeze.check552 ], [ %b.freeze.fresh572, %b.freeze.copy553 ]
  %arena.cur575 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze576 = call ptr @dva_arena_alloc(ptr %arena.cur575, i64 16)
  %str.tag.gen578 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift579 = shl i64 %str.tag.gen578, 48
  %str.tagged.len580 = or i64 %b.freeze.len545, %str.tag.shift579
  store i64 %str.tagged.len580, ptr %builder.freeze576, align 8
  %str.build.data.gep581 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze576, i32 0, i32 1
  store ptr %b.freeze.data574, ptr %str.build.data.gep581, align 8
  store i64 0, ptr %"var.cur_text'.0", align 8
  store ptr null, ptr %b.freeze.data546, align 8
  %b.freeze.rst.cap584 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap584, align 8
  store ptr %builder.freeze576, ptr %pay.gep542, align 8
  %a.null586 = icmp eq ptr %"var.cur_parts'.0", null
  br i1 %a.null586, label %a.create587, label %a.check597

a.create587:                                      ; preds = %b.freeze.done554
  %arena.cur589 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create590 = call ptr @dva_arena_alloc(ptr %arena.cur589, i64 24)
  %arena.cur591 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf592 = call ptr @dva_arena_alloc(ptr %arena.cur591, i64 128)
  store i64 0, ptr %a.create590, align 8
  %a.data.gep594 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create590, i32 0, i32 1
  store ptr %a.buf592, ptr %a.data.gep594, align 8
  %a.cap.gep595 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create590, i32 0, i32 2
  store i64 16, ptr %a.cap.gep595, align 8
  br label %a.check597

a.check597:                                       ; preds = %b.freeze.done554, %a.create587
  %"var.cur_parts'.9" = phi ptr [ %a.create590, %a.create587 ], [ %"var.cur_parts'.0", %b.freeze.done554 ]
  %a.len601 = load i64, ptr %"var.cur_parts'.9", align 8
  %a.cap602 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.9", i32 0, i32 2
  %a.cap603 = load i64, ptr %a.cap602, align 8
  %a.needs.grow604 = icmp eq i64 %a.len601, %a.cap603
  br i1 %a.needs.grow604, label %a.grow598, label %a.store599

a.grow598:                                        ; preds = %a.check597
  call void @dva_array_grow(ptr %"var.cur_parts'.9")
  br label %a.store599

a.store599:                                       ; preds = %a.grow598, %a.check597
  %a.cur.data605 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.9", i32 0, i32 1
  %a.cur.data606 = load ptr, ptr %a.cur.data605, align 8
  %a.cur.len608 = load i64, ptr %"var.cur_parts'.9", align 8
  %a.elem.gep609 = getelementptr i64, ptr %a.cur.data606, i64 %a.cur.len608
  %slot.p2i610 = ptrtoint ptr %enum.alloc540 to i64
  store i64 %slot.p2i610, ptr %a.elem.gep609, align 8
  %a.next.len611 = add i64 %a.cur.len608, 1
  store i64 %a.next.len611, ptr %"var.cur_parts'.9", align 8
  br label %choice.exit538

a.create636:                                      ; preds = %choice.exit538
  %arena.cur638 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create639 = call ptr @dva_arena_alloc(ptr %arena.cur638, i64 24)
  %arena.cur640 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf641 = call ptr @dva_arena_alloc(ptr %arena.cur640, i64 128)
  store i64 0, ptr %a.create639, align 8
  %a.data.gep643 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create639, i32 0, i32 1
  store ptr %a.buf641, ptr %a.data.gep643, align 8
  %a.cap.gep644 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create639, i32 0, i32 2
  store i64 16, ptr %a.cap.gep644, align 8
  br label %a.after637

a.after637:                                       ; preds = %a.create636, %choice.exit538
  %var.etoks.0 = phi ptr [ %a.create639, %a.create636 ], [ %call.res628, %choice.exit538 ]
  store ptr %var.etoks.0, ptr %pay.gep632, align 8
  %a.null647 = icmp eq ptr %"var.cur_parts'.8", null
  br i1 %a.null647, label %a.create648, label %a.check658

a.create648:                                      ; preds = %a.after637
  %arena.cur650 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create651 = call ptr @dva_arena_alloc(ptr %arena.cur650, i64 24)
  %arena.cur652 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf653 = call ptr @dva_arena_alloc(ptr %arena.cur652, i64 128)
  store i64 0, ptr %a.create651, align 8
  %a.data.gep655 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create651, i32 0, i32 1
  store ptr %a.buf653, ptr %a.data.gep655, align 8
  %a.cap.gep656 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create651, i32 0, i32 2
  store i64 16, ptr %a.cap.gep656, align 8
  br label %a.check658

a.check658:                                       ; preds = %a.after637, %a.create648
  %"var.cur_parts'.10" = phi ptr [ %a.create651, %a.create648 ], [ %"var.cur_parts'.8", %a.after637 ]
  %a.len662 = load i64, ptr %"var.cur_parts'.10", align 8
  %a.cap663 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.10", i32 0, i32 2
  %a.cap664 = load i64, ptr %a.cap663, align 8
  %a.needs.grow665 = icmp eq i64 %a.len662, %a.cap664
  br i1 %a.needs.grow665, label %a.grow659, label %a.store660

a.grow659:                                        ; preds = %a.check658
  call void @dva_array_grow(ptr %"var.cur_parts'.10")
  br label %a.store660

a.store660:                                       ; preds = %a.grow659, %a.check658
  %a.cur.data666 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.10", i32 0, i32 1
  %a.cur.data667 = load ptr, ptr %a.cur.data666, align 8
  %a.cur.len669 = load i64, ptr %"var.cur_parts'.10", align 8
  %a.elem.gep670 = getelementptr i64, ptr %a.cur.data667, i64 %a.cur.len669
  %slot.p2i671 = ptrtoint ptr %enum.alloc630 to i64
  store i64 %slot.p2i671, ptr %a.elem.gep670, align 8
  %a.next.len672 = add i64 %a.cur.len669, 1
  store i64 %a.next.len672, ptr %"var.cur_parts'.10", align 8
  %addtmp = add i64 %"var.expr_count'.0", 1
  br label %choice.exit17

b.rn.new.len685:                                  ; preds = %choice.else523
  %b.cap688 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap689 = load i64, ptr %b.cap688, align 8
  %b.need.grow690 = icmp slt i64 %b.cap689, %sum683
  br i1 %b.need.grow690, label %b.grow2691, label %b.grow_done693

str_overflow_abort686:                            ; preds = %choice.else523
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2691:                                       ; preds = %b.rn.new.len685
  %b.cap2694 = mul i64 %b.cap689, 2
  %b.cap.small695 = icmp slt i64 %b.cap2694, 16
  %b.cap.grow696 = select i1 %b.cap.small695, i64 16, i64 %b.cap2694
  %b.cap.need697 = icmp slt i64 %b.cap.grow696, %sum683
  %b.new.cap698 = select i1 %b.cap.need697, i64 %sum683, i64 %b.cap.grow696
  %b.cur.data2701 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2702 = load ptr, ptr %b.cur.data2701, align 8
  %b.new.buf.len2703 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap698, i64 1)
  %sum704 = extractvalue { i64, i1 } %b.new.buf.len2703, 0
  %ovf705 = extractvalue { i64, i1 } %b.new.buf.len2703, 1
  br i1 %ovf705, label %str_overflow_abort707, label %b.new.buf.len2706

b.grow_done693:                                   ; preds = %b.rn.new.len685, %b.new.buf.len2706
  %b.rn.data714 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data715 = load ptr, ptr %b.rn.data714, align 8
  %b.rn.dst716 = getelementptr i8, ptr %b.rn.data715, i64 %b.rn.cur.len681
  store i8 36, ptr %b.rn.dst716, align 1
  %br.nul723 = getelementptr i8, ptr %b.rn.data715, i64 %sum683
  store i8 0, ptr %br.nul723, align 1
  store i64 %sum683, ptr %"var.cur_text'.0", align 8
  br label %choice.exit17

b.new.buf.len2706:                                ; preds = %b.grow2691
  %arena.cur709 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2710 = call ptr @dva_arena_alloc(ptr %arena.cur709, i64 %sum704)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2710, ptr align 1 %b.cur.data2702, i64 %b.rn.cur.len681, i1 false)
  %b.grow2.nul711 = getelementptr i8, ptr %b.new.buf2710, i64 %b.rn.cur.len681
  store i8 0, ptr %b.grow2.nul711, align 1
  store ptr %b.new.buf2710, ptr %b.cur.data2701, align 8
  store i64 %b.new.cap698, ptr %b.cap688, align 8
  br label %b.grow_done693

str_overflow_abort707:                            ; preds = %b.grow2691
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len742:                                  ; preds = %choice.next516
  %b.cap745 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 2
  %b.cap746 = load i64, ptr %b.cap745, align 8
  %b.need.grow747 = icmp slt i64 %b.cap746, %sum740
  br i1 %b.need.grow747, label %b.grow2748, label %b.grow_done750

str_overflow_abort743:                            ; preds = %choice.next516
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2748:                                       ; preds = %b.rn.new.len742
  %b.cap2751 = mul i64 %b.cap746, 2
  %b.cap.small752 = icmp slt i64 %b.cap2751, 16
  %b.cap.grow753 = select i1 %b.cap.small752, i64 16, i64 %b.cap2751
  %b.cap.need754 = icmp slt i64 %b.cap.grow753, %sum740
  %b.new.cap755 = select i1 %b.cap.need754, i64 %sum740, i64 %b.cap.grow753
  %b.cur.data2758 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.cur.data2759 = load ptr, ptr %b.cur.data2758, align 8
  %b.new.buf.len2760 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap755, i64 1)
  %sum761 = extractvalue { i64, i1 } %b.new.buf.len2760, 0
  %ovf762 = extractvalue { i64, i1 } %b.new.buf.len2760, 1
  br i1 %ovf762, label %str_overflow_abort764, label %b.new.buf.len2763

b.grow_done750:                                   ; preds = %b.rn.new.len742, %b.new.buf.len2763
  %b.rn.data771 = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_text'.0", i32 0, i32 1
  %b.rn.data772 = load ptr, ptr %b.rn.data771, align 8
  %b.rn.dst773 = getelementptr i8, ptr %b.rn.data772, i64 %b.rn.cur.len738
  br i1 %br.cmp1731, label %br.b1.392, label %br.c2.392

b.new.buf.len2763:                                ; preds = %b.grow2748
  %arena.cur766 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2767 = call ptr @dva_arena_alloc(ptr %arena.cur766, i64 %sum761)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2767, ptr align 1 %b.cur.data2759, i64 %b.rn.cur.len738, i1 false)
  %b.grow2.nul768 = getelementptr i8, ptr %b.new.buf2767, i64 %b.rn.cur.len738
  store i8 0, ptr %b.grow2.nul768, align 1
  store ptr %b.new.buf2767, ptr %b.cur.data2758, align 8
  store i64 %b.new.cap755, ptr %b.cap745, align 8
  br label %b.grow_done750

str_overflow_abort764:                            ; preds = %b.grow2748
  call void @dva_abort_str_overflow_msg()
  unreachable

br.b1.392:                                        ; preds = %b.grow_done750
  %br.b1.0774 = trunc i64 %coerce.sext730 to i8
  store i8 %br.b1.0774, ptr %b.rn.dst773, align 1
  br label %br.done.392

br.c2.392:                                        ; preds = %b.grow_done750
  br i1 %br.cmp2732, label %br.b2.392, label %br.c3.392

br.b2.392:                                        ; preds = %br.c2.392
  %br.sh6775 = lshr i64 %coerce.sext730, 6
  %br.b2.0776 = or i64 %br.sh6775, 192
  %br.b2.0t777 = trunc i64 %br.b2.0776 to i8
  %br.m6778 = and i64 %coerce.sext730, 63
  %br.b2.1779 = or i64 %br.m6778, 128
  %br.b2.1t780 = trunc i64 %br.b2.1779 to i8
  store i8 %br.b2.0t777, ptr %b.rn.dst773, align 1
  %br.dst1781 = getelementptr i8, ptr %b.rn.dst773, i64 1
  store i8 %br.b2.1t780, ptr %br.dst1781, align 1
  br label %br.done.392

br.c3.392:                                        ; preds = %br.c2.392
  br i1 %br.cmp3733, label %br.b3.392, label %br.b4.392

br.b3.392:                                        ; preds = %br.c3.392
  %br.sh12782 = lshr i64 %coerce.sext730, 12
  %br.b3.0783 = or i64 %br.sh12782, 224
  %br.b3.0t784 = trunc i64 %br.b3.0783 to i8
  %br.sh6.3785 = lshr i64 %coerce.sext730, 6
  %br.m6.3786 = and i64 %br.sh6.3785, 63
  %br.b3.1787 = or i64 %br.m6.3786, 128
  %br.b3.1t788 = trunc i64 %br.b3.1787 to i8
  %br.mend789 = and i64 %coerce.sext730, 63
  %br.b3.2790 = or i64 %br.mend789, 128
  %br.b3.2t791 = trunc i64 %br.b3.2790 to i8
  store i8 %br.b3.0t784, ptr %b.rn.dst773, align 1
  %br.dst1.3792 = getelementptr i8, ptr %b.rn.dst773, i64 1
  store i8 %br.b3.1t788, ptr %br.dst1.3792, align 1
  %br.dst2.3793 = getelementptr i8, ptr %b.rn.dst773, i64 2
  store i8 %br.b3.2t791, ptr %br.dst2.3793, align 1
  br label %br.done.392

br.b4.392:                                        ; preds = %br.c3.392
  %br.sh18794 = lshr i64 %coerce.sext730, 18
  %br.b4.0795 = or i64 %br.sh18794, 240
  %br.b4.0t796 = trunc i64 %br.b4.0795 to i8
  %br.sh12.4797 = lshr i64 %coerce.sext730, 12
  %br.m12.4798 = and i64 %br.sh12.4797, 63
  %br.b4.1799 = or i64 %br.m12.4798, 128
  %br.b4.1t800 = trunc i64 %br.b4.1799 to i8
  %br.sh6.4801 = lshr i64 %coerce.sext730, 6
  %br.m6.4802 = and i64 %br.sh6.4801, 63
  %br.b4.2803 = or i64 %br.m6.4802, 128
  %br.b4.2t804 = trunc i64 %br.b4.2803 to i8
  %br.mend4805 = and i64 %coerce.sext730, 63
  %br.b4.3806 = or i64 %br.mend4805, 128
  %br.b4.3t807 = trunc i64 %br.b4.3806 to i8
  store i8 %br.b4.0t796, ptr %b.rn.dst773, align 1
  %br.dst1.4808 = getelementptr i8, ptr %b.rn.dst773, i64 1
  store i8 %br.b4.1t800, ptr %br.dst1.4808, align 1
  %br.dst2.4809 = getelementptr i8, ptr %b.rn.dst773, i64 2
  store i8 %br.b4.2t804, ptr %br.dst2.4809, align 1
  %br.dst3.4810 = getelementptr i8, ptr %b.rn.dst773, i64 3
  store i8 %br.b4.3t807, ptr %br.dst3.4810, align 1
  br label %br.done.392

br.done.392:                                      ; preds = %br.b4.392, %br.b3.392, %br.b2.392, %br.b1.392
  %br.nul811 = getelementptr i8, ptr %b.rn.data772, i64 %sum740
  store i8 0, ptr %br.nul811, align 1
  store i64 %sum740, ptr %"var.cur_text'.0", align 8
  br label %choice.exit17

choice.then815:                                   ; preds = %loop.exit.381
  %a.null820 = icmp eq ptr %"var.cur_parts'.1", null
  br i1 %a.null820, label %a.create821, label %a.after822

choice.else816:                                   ; preds = %loop.exit.381
  %a.null915 = icmp eq ptr %"var.cur_parts'.1", null
  br i1 %a.null915, label %a.create916, label %a.after917

choice.exit817:                                   ; preds = %a.after917, %choice.exit835
  %choice.res930 = phi ptr [ %call.res911, %choice.exit835 ], [ %call.res929, %a.after917 ]
  ret ptr %choice.res930

a.create821:                                      ; preds = %choice.then815
  %arena.cur823 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create824 = call ptr @dva_arena_alloc(ptr %arena.cur823, i64 24)
  %arena.cur825 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf826 = call ptr @dva_arena_alloc(ptr %arena.cur825, i64 128)
  store i64 0, ptr %a.create824, align 8
  %a.data.gep828 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create824, i32 0, i32 1
  store ptr %a.buf826, ptr %a.data.gep828, align 8
  %a.cap.gep829 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create824, i32 0, i32 2
  store i64 16, ptr %a.cap.gep829, align 8
  br label %a.after822

a.after822:                                       ; preds = %a.create821, %choice.then815
  %"var.cur_parts'.11" = phi ptr [ %a.create824, %a.create821 ], [ %"var.cur_parts'.1", %choice.then815 ]
  %a.len.query831 = load i64, ptr %"var.cur_parts'.11", align 8
  %cmptmp832 = icmp sgt i64 %a.len.query831, 0
  br i1 %cmptmp832, label %a.rd.ok, label %choice.exit835

choice.exit835:                                   ; preds = %a.rd.ok, %choice.case891, %a.after822
  %choice.res897 = phi ptr [ @str.0.struct, %a.after822 ], [ %payload.ptr, %choice.case891 ], [ @str.0.struct, %a.rd.ok ]
  %arena.cur899 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc900 = call ptr @dva_arena_alloc(ptr %arena.cur899, i64 16)
  store i64 5, ptr %enum.alloc900, align 8
  %pay.gep902 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc900, i32 0, i32 1
  store ptr null, ptr %pay.gep902, align 8
  %fld.load906 = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %fld.load906, %1
  %call.res911 = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc900, i64 %1, i64 %subtmp, i64 %2, i64 %3, ptr %choice.res897)
  br label %choice.exit817

a.rd.ok:                                          ; preds = %a.after822
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %"var.cur_parts'.11", i32 0, i32 1
  %a.rd.data850 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem = load i64, ptr %a.rd.data850, align 8
  %pay.ptr = inttoptr i64 %a.rd.elem to ptr
  %tag.id = load i64, ptr %pay.ptr, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case891, label %choice.exit835

choice.case891:                                   ; preds = %a.rd.ok
  %pay.gep894 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep894, align 8
  br label %choice.exit835

a.create916:                                      ; preds = %choice.else816
  %arena.cur918 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create919 = call ptr @dva_arena_alloc(ptr %arena.cur918, i64 24)
  %arena.cur920 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf921 = call ptr @dva_arena_alloc(ptr %arena.cur920, i64 128)
  store i64 0, ptr %a.create919, align 8
  %a.data.gep923 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create919, i32 0, i32 1
  store ptr %a.buf921, ptr %a.data.gep923, align 8
  %a.cap.gep924 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create919, i32 0, i32 2
  store i64 16, ptr %a.cap.gep924, align 8
  br label %a.after917

a.after917:                                       ; preds = %a.create916, %choice.else816
  %"var.cur_parts'.13" = phi ptr [ %a.create919, %a.create916 ], [ %"var.cur_parts'.1", %choice.else816 ]
  %call.res929 = call ptr @"lexer::emit_interp_tokens"(ptr %0, ptr %"var.cur_parts'.13", i64 %1, i64 %2, i64 %3)
  br label %choice.exit817
}

define ptr @"lexer::eof_tok"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 1, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call ptr @"lexer::mktok"(ptr %0, ptr %enum.alloc, i64 %fld.load, i64 0, i64 %1, i64 %2, ptr @str.0.struct)
  ret ptr %call.res
}

define i64 @"lexer::count_leading_indent"(ptr %0) #3 {
entry:
  br label %loop.header.395

loop.header.395:                                  ; preds = %choice.case, %entry
  %"var.sp'.0" = phi i64 [ 0, %entry ], [ %addtmp, %choice.case ]
  %loop.idx.395.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.case ]
  %str.len.query2 = load i64, ptr %0, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp sge i64 %"var.sp'.0", %str.len.query3
  br i1 %cmptmp, label %loop.exit.395, label %choice.exit

loop.exit.395:                                    ; preds = %idx_ok, %loop.header.395
  ret i64 %"var.sp'.0"

choice.exit:                                      ; preds = %loop.header.395
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.sp'.0", %str.len.query3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %"var.sp'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %loop.exit.395 [
    i64 32, label %choice.case
    i64 9, label %choice.case
  ]

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

choice.case:                                      ; preds = %idx_ok, %idx_ok
  %addtmp = add nuw nsw i64 %"var.sp'.0", 1
  %loop.next = add i64 %loop.idx.395.0, 1
  br label %loop.header.395
}

define i64 @"lexer::show"(ptr %0) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %call.res = call { i64, ptr } @"lexer::kind_name"(ptr %fld.load)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %cat.seg2 = and i64 %call.res.fca.0.extract, 281474976710655
  %fld.gep6 = getelementptr inbounds { ptr, i64, i64, i64, i64, i1, i1, ptr }, ptr %0, i32 0, i32 7
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %cat.seg9 = load i64, ptr %fld.load7, align 8
  %cat.seg10 = and i64 %cat.seg9, 281474976710655
  %cat.seg11 = getelementptr inbounds { i64, ptr }, ptr %fld.load7, i32 0, i32 1
  %cat.seg12 = load ptr, ptr %cat.seg11, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg2, i64 1)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %cat.sum.len15 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.seg10)
  %sum16 = extractvalue { i64, i1 } %cat.sum.len15, 0
  %cat.sum.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum16, i64 1)
  %sum22 = extractvalue { i64, i1 } %cat.sum.len21, 0
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum22, i64 1)
  %sum27 = extractvalue { i64, i1 } %concat.tot.len, 0
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum27)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %call.res.fca.1.extract, i64 %cat.seg2, i1 false)
  %cat.dst32 = getelementptr i8, ptr %concat.buf, i64 %cat.seg2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst32, ptr align 1 @str.139, i64 1, i1 false)
  %cat.off33 = add nuw nsw i64 %cat.seg2, 1
  %cat.dst34 = getelementptr i8, ptr %concat.buf, i64 %cat.off33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst34, ptr align 1 %cat.seg12, i64 %cat.seg10, i1 false)
  %cat.off35 = add nuw nsw i64 %cat.off33, %cat.seg10
  %cat.dst36 = getelementptr i8, ptr %concat.buf, i64 %cat.off35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst36, ptr align 1 @str.83, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum22
  store i8 0, ptr %concat.nul, align 1
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  store i64 %sum22, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %arg.str.ptr41 = load i64, ptr %concat.str, align 8
  %arg.str.ptr42 = and i64 %arg.str.ptr41, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %concat.buf, i64 %arg.str.ptr42
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

nulcopy:                                          ; preds = %entry
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr42, i64 1)
  %sum44 = extractvalue { i64, i1 } %nulcopy.len, 0
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 %sum44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %concat.buf, i64 %arg.str.ptr42, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr42
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

nulmerge:                                         ; preds = %entry, %nulcopy
  %arg.str.ptr50 = phi ptr [ %nulcopy.buf, %nulcopy ], [ %concat.buf, %entry ]
  %str.len.query52 = load i64, ptr %concat.str, align 8
  %str.len.query53 = and i64 %str.len.query52, 281474976710655
  %call.res54 = call i64 @write(i32 2, ptr %arg.str.ptr50, i64 %str.len.query53)
  ret i64 %call.res54
}

define { i64, ptr } @"lexer::kind_name"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.next157 [
    i64 2, label %choice.exit
    i64 3, label %choice.case1
    i64 4, label %choice.case6
    i64 5, label %choice.case11
    i64 6, label %choice.case16
    i64 0, label %choice.case21
    i64 9, label %choice.case26
    i64 10, label %choice.case31
    i64 7, label %choice.case36
    i64 8, label %choice.case41
    i64 11, label %choice.case46
    i64 12, label %choice.case51
    i64 13, label %choice.case56
    i64 14, label %choice.case61
    i64 17, label %choice.case66
    i64 15, label %choice.case71
    i64 16, label %choice.case76
    i64 18, label %choice.case81
    i64 28, label %choice.case86
    i64 30, label %choice.case91
    i64 31, label %choice.case96
    i64 32, label %choice.case101
    i64 19, label %choice.case106
    i64 20, label %choice.case111
    i64 21, label %choice.case116
    i64 27, label %choice.case121
    i64 22, label %choice.case126
    i64 24, label %choice.case131
    i64 25, label %choice.case136
    i64 23, label %choice.case141
    i64 29, label %choice.case146
    i64 33, label %choice.case151
    i64 1, label %choice.case156
  ]

choice.exit:                                      ; preds = %entry, %choice.next157, %choice.case156, %choice.case151, %choice.case146, %choice.case141, %choice.case136, %choice.case131, %choice.case126, %choice.case121, %choice.case116, %choice.case111, %choice.case106, %choice.case101, %choice.case96, %choice.case91, %choice.case86, %choice.case81, %choice.case76, %choice.case71, %choice.case66, %choice.case61, %choice.case56, %choice.case51, %choice.case46, %choice.case41, %choice.case36, %choice.case31, %choice.case26, %choice.case21, %choice.case16, %choice.case11, %choice.case6, %choice.case1
  %choice.res = phi ptr [ @str.121.struct, %choice.case1 ], [ @str.66.struct, %choice.case6 ], [ @str.122.struct, %choice.case11 ], [ @str.123.struct, %choice.case16 ], [ @str.124.struct, %choice.case21 ], [ @str.116.struct, %choice.case26 ], [ @str.119.struct, %choice.case31 ], [ @str.125.struct, %choice.case36 ], [ @str.126.struct, %choice.case41 ], [ @str.127.struct, %choice.case46 ], [ @str.128.struct, %choice.case51 ], [ @str.129.struct, %choice.case56 ], [ @str.130.struct, %choice.case61 ], [ @str.131.struct, %choice.case66 ], [ @str.107.struct, %choice.case71 ], [ @str.106.struct, %choice.case76 ], [ @str.132.struct, %choice.case81 ], [ @str.133.struct, %choice.case86 ], [ @str.134.struct, %choice.case91 ], [ @str.135.struct, %choice.case96 ], [ @str.103.struct, %choice.case101 ], [ @str.86.struct, %choice.case106 ], [ @str.88.struct, %choice.case111 ], [ @str.90.struct, %choice.case116 ], [ @str.136.struct, %choice.case121 ], [ @str.95.struct, %choice.case126 ], [ @str.97.struct, %choice.case131 ], [ @str.99.struct, %choice.case136 ], [ @str.82.struct, %choice.case141 ], [ @str.82.struct, %choice.case146 ], [ @str.105.struct, %choice.case151 ], [ @str.137.struct, %choice.case156 ], [ @str.138.struct, %choice.next157 ], [ @str.120.struct, %entry ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case1:                                     ; preds = %entry
  br label %choice.exit

choice.case6:                                     ; preds = %entry
  br label %choice.exit

choice.case11:                                    ; preds = %entry
  br label %choice.exit

choice.case16:                                    ; preds = %entry
  br label %choice.exit

choice.case21:                                    ; preds = %entry
  br label %choice.exit

choice.case26:                                    ; preds = %entry
  br label %choice.exit

choice.case31:                                    ; preds = %entry
  br label %choice.exit

choice.case36:                                    ; preds = %entry
  br label %choice.exit

choice.case41:                                    ; preds = %entry
  br label %choice.exit

choice.case46:                                    ; preds = %entry
  br label %choice.exit

choice.case51:                                    ; preds = %entry
  br label %choice.exit

choice.case56:                                    ; preds = %entry
  br label %choice.exit

choice.case61:                                    ; preds = %entry
  br label %choice.exit

choice.case66:                                    ; preds = %entry
  br label %choice.exit

choice.case71:                                    ; preds = %entry
  br label %choice.exit

choice.case76:                                    ; preds = %entry
  br label %choice.exit

choice.case81:                                    ; preds = %entry
  br label %choice.exit

choice.case86:                                    ; preds = %entry
  br label %choice.exit

choice.case91:                                    ; preds = %entry
  br label %choice.exit

choice.case96:                                    ; preds = %entry
  br label %choice.exit

choice.case101:                                   ; preds = %entry
  br label %choice.exit

choice.case106:                                   ; preds = %entry
  br label %choice.exit

choice.case111:                                   ; preds = %entry
  br label %choice.exit

choice.case116:                                   ; preds = %entry
  br label %choice.exit

choice.case121:                                   ; preds = %entry
  br label %choice.exit

choice.case126:                                   ; preds = %entry
  br label %choice.exit

choice.case131:                                   ; preds = %entry
  br label %choice.exit

choice.case136:                                   ; preds = %entry
  br label %choice.exit

choice.case141:                                   ; preds = %entry
  br label %choice.exit

choice.case146:                                   ; preds = %entry
  br label %choice.exit

choice.case151:                                   ; preds = %entry
  br label %choice.exit

choice.case156:                                   ; preds = %entry
  br label %choice.exit

choice.next157:                                   ; preds = %entry
  br label %choice.exit
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline "nounwind" }

!0 = !{i64 0, i64 2}
!1 = !{i64 0, i64 65536}
!2 = !{i64 0, i64 281474976710655}
