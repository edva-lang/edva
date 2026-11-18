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
@sys_argc_global = external global i64
@sys_argv_global = external global ptr
@"var.diag::capture_enabled" = external global i1
@"var.diag::captured_diags" = external global ptr
@"var.const::pi" = external global double
@"var.const::tau" = external global double
@"var.const::e" = external global double
@"var.const::phi" = external global double
@"var.const::inv_phi" = external global double
@"var.const::sqrt2" = external global double
@"var.const::sqrt3" = external global double
@"var.const::ln2" = external global double
@"var.const::ln10" = external global double
@"var.const::max_i64" = external global i64
@"var.const::min_i64" = external global i64
@"var.const::max_safe_int" = external global i64
@"var.const::max_i32" = external global i32
@"var.const::min_i32" = external global i32
@"var.const::max_i16" = external global i16
@"var.const::min_i16" = external global i16
@"var.const::max_i8" = external global i8
@"var.const::min_i8" = external global i8
@"var.const::max_u64" = external global i64
@"var.const::max_u32" = external global i32
@"var.const::max_u16" = external global i16
@"var.const::max_u8" = external global i8
@"var.const::inf_f64" = external global double
@"var.const::nan_f64" = external global double
@"var.const::max_f64" = external global double
@"var.const::min_f64" = external global double
@"var.const::sub_f64" = external global double
@"var.const::eps_f64" = external global double
@"var.const::inf_f32" = external global float
@"var.const::nan_f32" = external global float
@"var.const::max_f32" = external global float
@"var.const::min_f32" = external global float
@"var.const::sub_f32" = external global float
@"var.const::eps_f32" = external global float
@"var.sys::STDIN" = external global i64
@"var.sys::STDOUT" = external global i64
@"var.sys::STDERR" = external global i64
@"var.sys::addr_null" = external global ptr
@"var.time::CLOCK_REALTIME" = external global i64
@"var.time::CLOCK_MONOTONIC" = external global i64
@"var.time::NS_PER_US" = external global i64
@"var.time::NS_PER_MS" = external global i64
@"var.time::NS_PER_SEC" = external global i64
@"var.time::SEC_PER_MIN" = external global i64
@"var.time::SEC_PER_HOUR" = external global i64
@"var.time::SEC_PER_DAY" = external global i64
@"var.log::#owned_fd" = external global i64
@"var.log::#O_LOG_APPEND" = external global i64
@"var.lexer::cur_lex_file" = external global ptr
@"var.lexer::cur_lex_failed" = external global i1
@"var.ast::cell_var_names" = external global ptr
@"var.path::SEP" = external global i32
@"var.path::SEP_STR" = external global ptr
@"var.path::LIST_SEP" = external global i32
@"var.path::LIST_SEP_STR" = external global ptr
@"var.path::IS_WIN" = external global i1
@"var.parser::cur_target_triple" = external global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"formatter::is_space_or_tab", ptr null }
@"var.formatter::is_space_or_tab" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"formatter::is_id_byte", ptr null }
@"var.formatter::is_id_byte" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"formatter::scan_line_state", ptr null }
@"var.formatter::scan_line_state" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"formatter::strip_cr_and_trailing_ws", ptr null }
@"var.formatter::strip_cr_and_trailing_ws" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"formatter::strip_cr_only", ptr null }
@"var.formatter::strip_cr_only" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.5 = internal constant { ptr, ptr } { ptr @"formatter::split_source_lines", ptr null }
@"var.formatter::split_source_lines" = global ptr null
@str.0 = internal unnamed_addr constant [4 x i8] c"|->\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.0 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"formatter::starts_with_str", ptr null }
@str.1 = internal unnamed_addr constant [4 x i8] c"|+>\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.1 }
@str.2 = internal unnamed_addr constant [5 x i8] c"|-->\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.2 }
@str.3 = internal unnamed_addr constant [5 x i8] c"|++>\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.3 }
@str.4 = internal unnamed_addr constant [4 x i8] c"|_|\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.4 }
@str.5 = internal unnamed_addr constant [3 x i8] c"!|\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
@str.6 = internal unnamed_addr constant [3 x i8] c"| \00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.6 }
@str.7 = internal unnamed_addr constant [4 x i8] c"!| \00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.7 }
@str.8 = internal unnamed_addr constant [3 x i8] c"![\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.8 }
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@str.9 = internal unnamed_addr constant [3 x i8] c"/*\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.9 }
@str.10 = internal unnamed_addr constant [4 x i8] c"\22\22\22\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.10 }
@str.11 = internal unnamed_addr constant [3 x i8] c": \00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.11 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"formatter::format_code_body", ptr null }
@"var.formatter::format_code_body" = global ptr null
@str.12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.12 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"formatter::make_spaces", ptr null }
@"var.formatter::make_spaces" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"formatter::strip_leading_ws", ptr null }
@"var.formatter::strip_leading_ws" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"formatter::strip_code_comment", ptr null }
@"var.formatter::strip_code_comment" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"formatter::ends_with_str", ptr null }
@"var.formatter::ends_with_str" = global ptr null
@"var.formatter::starts_with_str" = global ptr null
@str.13 = internal unnamed_addr constant [3 x i8] c"$>\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.13 }
@str.14 = internal unnamed_addr constant [4 x i8] c"$>>\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.14 }
@str.15 = internal unnamed_addr constant [4 x i8] c"$+>\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.15 }
@str.16 = internal unnamed_addr constant [4 x i8] c"$->\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.16 }
@str.17 = internal unnamed_addr constant [3 x i8] c".>\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.17 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"formatter::starts_with_choice_sep", ptr null }
@"var.formatter::starts_with_choice_sep" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"formatter::is_inline_pipe_arm", ptr null }
@"var.formatter::is_inline_pipe_arm" = global ptr null
@str.18 = internal unnamed_addr constant [2 x i8] c"|\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.18 }
@str.19 = internal unnamed_addr constant [8 x i8] c"#public\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.19 }
@str.20 = internal unnamed_addr constant [9 x i8] c"#private\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.20 }
@str.21 = internal unnamed_addr constant [8 x i8] c"#export\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.21 }
@str.22 = internal unnamed_addr constant [9 x i8] c"#foreign\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.22 }
@str.23 = internal unnamed_addr constant [10 x i8] c"#foreign \00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.23 }
@str.24 = internal unnamed_addr constant [10 x i8] c"#foreign(\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.24 }
@str.25 = internal unnamed_addr constant [2 x i8] c")\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.25 }
@str.26 = internal unnamed_addr constant [9 x i8] c"#export(\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.26 }
@str.27 = internal unnamed_addr constant [3 x i8] c"=>\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.27 }
@str.28 = internal unnamed_addr constant [4 x i8] c"!=>\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.28 }
@str.29 = internal unnamed_addr constant [2 x i8] c"@\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.29 }
@str.30 = internal unnamed_addr constant [3 x i8] c"@@\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.30 }
@str.31 = internal unnamed_addr constant [3 x i8] c"@>\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.31 }
@str.32 = internal unnamed_addr constant [4 x i8] c"@@>\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.32 }
@str.33 = internal unnamed_addr constant [4 x i8] c">--\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.33 }
@str.34 = internal unnamed_addr constant [2 x i8] c"(\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.34 }
@str.35 = internal unnamed_addr constant [2 x i8] c"{\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.35 }
@str.36 = internal unnamed_addr constant [7 x i8] c"#type \00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.36 }
@str.37 = internal unnamed_addr constant [7 x i8] c"#type(\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.37 }
@str.38 = internal unnamed_addr constant [2 x i8] c"<\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.38 }
@str.39 = internal unnamed_addr constant [2 x i8] c"]\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.39 }
@str.40 = internal unnamed_addr constant [2 x i8] c"=\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.40 }
@str.41 = internal unnamed_addr constant [3 x i8] c"==\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.41 }
@str.42 = internal unnamed_addr constant [3 x i8] c"!=\00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.42 }
@str.43 = internal unnamed_addr constant [3 x i8] c"^=\00"
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.43 }
@str.44 = internal unnamed_addr constant [3 x i8] c"<=\00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.44 }
@str.45 = internal unnamed_addr constant [3 x i8] c">=\00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.45 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"formatter::ends_with_block_opener", ptr null }
@"var.formatter::ends_with_block_opener" = global ptr null
@str.46 = internal unnamed_addr constant [2 x i8] c"+\00"
@str.46.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.46 }
@str.47 = internal unnamed_addr constant [3 x i8] c"++\00"
@str.47.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.47 }
@str.48 = internal unnamed_addr constant [4 x i8] c"<+>\00"
@str.48.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.48 }
@str.49 = internal unnamed_addr constant [5 x i8] c"<++>\00"
@str.49.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.49 }
@str.50 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.50.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.50 }
@str.51 = internal unnamed_addr constant [3 x i8] c"--\00"
@str.51.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.51 }
@str.52 = internal unnamed_addr constant [4 x i8] c"<->\00"
@str.52.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.52 }
@str.53 = internal unnamed_addr constant [5 x i8] c"<-->\00"
@str.53.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.53 }
@str.54 = internal unnamed_addr constant [2 x i8] c"*\00"
@str.54.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.54 }
@str.55 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.55.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.55 }
@str.56 = internal unnamed_addr constant [2 x i8] c"%\00"
@str.56.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.56 }
@str.57 = internal unnamed_addr constant [3 x i8] c"&&\00"
@str.57.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.57 }
@str.58 = internal unnamed_addr constant [3 x i8] c"||\00"
@str.58.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.58 }
@str.59 = internal unnamed_addr constant [3 x i8] c"!<\00"
@str.59.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.59 }
@str.60 = internal unnamed_addr constant [3 x i8] c"!>\00"
@str.60.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.60 }
@str.61 = internal unnamed_addr constant [2 x i8] c",\00"
@str.61.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.61 }
@str.62 = internal unnamed_addr constant [2 x i8] c";\00"
@str.62.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.62 }
@str.63 = internal unnamed_addr constant [2 x i8] c"$\00"
@str.63.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.63 }
@str.64 = internal unnamed_addr constant [4 x i8] c".&.\00"
@str.64.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.64 }
@str.65 = internal unnamed_addr constant [4 x i8] c".|.\00"
@str.65.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.65 }
@str.66 = internal unnamed_addr constant [4 x i8] c".^.\00"
@str.66.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.66 }
@clo.const.15 = internal constant { ptr, ptr } { ptr @"formatter::ends_with_cont_op", ptr null }
@"var.formatter::ends_with_cont_op" = global ptr null
@str.67 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.67.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.67 }
@str.68 = internal unnamed_addr constant [14 x i8] c"formatter.dva\00"
@str.68.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.68 }
@str.69 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.69.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.69 }
@dva_thread_rec = external thread_local global ptr
@clo.const.16 = internal constant { ptr, ptr } { ptr @"formatter::has_intermediate_dedent", ptr null }
@"var.formatter::has_intermediate_dedent" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"formatter::compute_child_delta", ptr null }
@"var.formatter::compute_child_delta" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"formatter::find_stack_level", ptr null }
@"var.formatter::find_stack_level" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"formatter::format_lines", ptr null }
@"var.formatter::format_lines" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"formatter::format_safe_fallback", ptr null }
@"var.formatter::format_safe_fallback" = global ptr null
@str.70 = internal unnamed_addr constant [2 x i8] c":\00"
@str.70.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.70 }
@str.71 = internal unnamed_addr constant [4 x i8] c": E\00"
@str.71.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.71 }
@str.72 = internal unnamed_addr constant [15 x i8] c": syntax error\00"
@str.72.struct = internal unnamed_addr constant { i64, ptr } { i64 14, ptr @str.72 }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"formatter::parse_ast_signature", ptr null }
@"var.formatter::parse_ast_signature" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"formatter::format_source", ptr null }
@"var.formatter::format_source" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"formatter::sort_names", ptr null }
@"var.formatter::sort_names" = global ptr null
@str.73 = internal unnamed_addr constant [5 x i8] c".dva\00"
@str.73.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.73 }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"formatter::collect_dva_files", ptr null }
@"var.formatter::collect_dva_files" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"formatter::read_stdin_all", ptr null }
@"var.formatter::read_stdin_all" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"formatter::write_stdout", ptr null }
@"var.formatter::write_stdout" = global ptr null
@str.74 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.74.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.74 }
@clo.const.27 = internal constant { ptr, ptr } { ptr @"formatter::print_line", ptr null }
@"var.formatter::print_line" = global ptr null
@str.75 = internal unnamed_addr constant [46 x i8] c"Usage: edva fmt [options] [file.dva | dir...]\00"
@str.75.struct = internal unnamed_addr constant { i64, ptr } { i64 45, ptr @str.75 }
@str.76 = internal unnamed_addr constant [9 x i8] c"Options:\00"
@str.76.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.76 }
@str.77 = internal unnamed_addr constant [70 x i8] c"  --check     Check if files are formatted (exit 1 if changes needed)\00"
@str.77.struct = internal unnamed_addr constant { i64, ptr } { i64 69, ptr @str.77 }
@str.78 = internal unnamed_addr constant [74 x i8] c"  --stdout    Write formatted output to stdout instead of modifying files\00"
@str.78.struct = internal unnamed_addr constant { i64, ptr } { i64 73, ptr @str.78 }
@str.79 = internal unnamed_addr constant [74 x i8] c"  --stdin     Read source from stdin and write formatted output to stdout\00"
@str.79.struct = internal unnamed_addr constant { i64, ptr } { i64 73, ptr @str.79 }
@str.80 = internal unnamed_addr constant [49 x i8] c"  -h, --help  Display this help message and exit\00"
@str.80.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.80 }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"formatter::print_fmt_help", ptr null }
@"var.formatter::print_fmt_help" = global ptr null
@str.81 = internal unnamed_addr constant [3 x i8] c"-h\00"
@str.81.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.81 }
@str.82 = internal unnamed_addr constant [7 x i8] c"--help\00"
@str.82.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.82 }
@str.83 = internal unnamed_addr constant [8 x i8] c"--check\00"
@str.83.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.83 }
@str.84 = internal unnamed_addr constant [9 x i8] c"--stdout\00"
@str.84.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.84 }
@str.85 = internal unnamed_addr constant [8 x i8] c"--stdin\00"
@str.85.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.85 }
@str.86 = internal unnamed_addr constant [27 x i8] c"edva fmt: unknown option '\00"
@str.86.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.86 }
@str.87 = internal unnamed_addr constant [2 x i8] c"'\00"
@str.87.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.87 }
@str.88 = internal unnamed_addr constant [8 x i8] c"<stdin>\00"
@str.88.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.88 }
@str.89 = internal unnamed_addr constant [2 x i8] c".\00"
@str.89.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.89 }
@str.90 = internal unnamed_addr constant [17 x i8] c"edva fmt: path '\00"
@str.90.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.90 }
@str.91 = internal unnamed_addr constant [17 x i8] c"' does not exist\00"
@str.91.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.91 }
@str.92 = internal unnamed_addr constant [30 x i8] c"edva fmt: no .dva files found\00"
@str.92.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.92 }
@str.93 = internal unnamed_addr constant [28 x i8] c"edva fmt: could not write '\00"
@str.93.struct = internal unnamed_addr constant { i64, ptr } { i64 27, ptr @str.93 }
@str.94 = internal unnamed_addr constant [27 x i8] c"edva fmt: could not read '\00"
@str.94.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.94 }
@clo.const.29 = internal constant { ptr, ptr } { ptr @"formatter::main", ptr null }
@"var.formatter::main" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_formatter, ptr null }]

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

define internal void @__dva_global_init_formatter() #0 {
entry:
  store ptr @clo.const, ptr @"var.formatter::is_space_or_tab", align 8
  store ptr @clo.const.1, ptr @"var.formatter::is_id_byte", align 8
  store ptr @clo.const.2, ptr @"var.formatter::scan_line_state", align 8
  store ptr @clo.const.3, ptr @"var.formatter::strip_cr_and_trailing_ws", align 8
  store ptr @clo.const.4, ptr @"var.formatter::strip_cr_only", align 8
  store ptr @clo.const.5, ptr @"var.formatter::split_source_lines", align 8
  store ptr @clo.const.7, ptr @"var.formatter::format_code_body", align 8
  store ptr @clo.const.8, ptr @"var.formatter::make_spaces", align 8
  store ptr @clo.const.9, ptr @"var.formatter::strip_leading_ws", align 8
  store ptr @clo.const.10, ptr @"var.formatter::strip_code_comment", align 8
  store ptr @clo.const.11, ptr @"var.formatter::ends_with_str", align 8
  store ptr @clo.const.6, ptr @"var.formatter::starts_with_str", align 8
  store ptr @clo.const.12, ptr @"var.formatter::starts_with_choice_sep", align 8
  store ptr @clo.const.13, ptr @"var.formatter::is_inline_pipe_arm", align 8
  store ptr @clo.const.14, ptr @"var.formatter::ends_with_block_opener", align 8
  store ptr @clo.const.15, ptr @"var.formatter::ends_with_cont_op", align 8
  store ptr @clo.const.16, ptr @"var.formatter::has_intermediate_dedent", align 8
  store ptr @clo.const.17, ptr @"var.formatter::compute_child_delta", align 8
  store ptr @clo.const.18, ptr @"var.formatter::find_stack_level", align 8
  store ptr @clo.const.19, ptr @"var.formatter::format_lines", align 8
  store ptr @clo.const.20, ptr @"var.formatter::format_safe_fallback", align 8
  store ptr @clo.const.21, ptr @"var.formatter::parse_ast_signature", align 8
  store ptr @clo.const.22, ptr @"var.formatter::format_source", align 8
  store ptr @clo.const.23, ptr @"var.formatter::sort_names", align 8
  store ptr @clo.const.24, ptr @"var.formatter::collect_dva_files", align 8
  store ptr @clo.const.25, ptr @"var.formatter::read_stdin_all", align 8
  store ptr @clo.const.26, ptr @"var.formatter::write_stdout", align 8
  store ptr @clo.const.27, ptr @"var.formatter::print_line", align 8
  store ptr @clo.const.28, ptr @"var.formatter::print_fmt_help", align 8
  store ptr @clo.const.29, ptr @"var.formatter::main", align 8
  ret void
}

declare i32 @open(ptr, i32)

declare i64 @creat(ptr, i64)

declare i32 @close(i32)

declare i64 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @waitpid(i64, ptr, i64)

declare i64 @read(i32, ptr, i64)

declare i64 @lseek(i32, i64, i64)

declare i64 @write(i32, ptr, i64)

declare i64 @writev(i32, ptr, i64)

declare i32 @ioctl(i32, i64, i64, ...)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

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

declare i64 @getifaddrs(ptr)

declare void @freeifaddrs(ptr)

declare ptr @memset(ptr, i64, i64)

declare i64 @atoi(ptr)

declare ptr @opendir(ptr)

declare ptr @readdir(ptr)

declare i64 @closedir(ptr)

declare i64 @strlen(ptr) #0

declare i64 @strcmp(ptr, ptr)

declare ptr @memcpy(ptr, ptr, i64)

declare ptr @memmove(ptr, ptr, i64)

declare i64 @stat(ptr, ptr)

declare i64 @fstat(i32, ptr)

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

declare i64 @epoll_create1(i32)

declare i64 @epoll_ctl(i64, i64, i32, ptr)

declare i64 @epoll_wait(i64, ptr, i64, i64)

declare i64 @time(ptr)

declare ptr @signal(i64, ptr)

declare i64 @raise(i64)

declare i64 @getrlimit(i64, ptr)

declare i64 @setrlimit(i64, ptr)

declare i64 @uname(ptr)

declare i32 @nanosleep(ptr, ptr)

declare ptr @localtime_r(ptr, ptr)

declare ptr @strptime(ptr, ptr, ptr)

define i1 @"formatter::is_space_or_tab"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 32
  %val.match1 = icmp eq i64 %var.load, 9
  %case.or = or i1 %val.match, %val.match1
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"formatter::is_id_byte"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %cmptmp = icmp sge i64 %var.load, 97
  br i1 %cmptmp, label %and.510.then, label %and.510.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %and.512.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.512.exit
  br label %choice.exit

and.510.then:                                     ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 122
  br label %and.510.exit

and.510.else:                                     ; preds = %entry
  br label %and.510.exit

and.510.exit:                                     ; preds = %and.510.else, %and.510.then
  %and.510.phi = phi i1 [ %cmptmp1, %and.510.then ], [ %cmptmp, %and.510.else ]
  %cmptmp2 = icmp sge i64 %var.load, 65
  br i1 %cmptmp2, label %and.511.then, label %and.511.else

and.511.then:                                     ; preds = %and.510.exit
  %cmptmp3 = icmp sle i64 %var.load, 90
  br label %and.511.exit

and.511.else:                                     ; preds = %and.510.exit
  br label %and.511.exit

and.511.exit:                                     ; preds = %and.511.else, %and.511.then
  %and.511.phi = phi i1 [ %cmptmp3, %and.511.then ], [ %cmptmp2, %and.511.else ]
  %case.or = or i1 %and.510.phi, %and.511.phi
  %cmptmp4 = icmp sge i64 %var.load, 48
  br i1 %cmptmp4, label %and.512.then, label %and.512.else

and.512.then:                                     ; preds = %and.511.exit
  %cmptmp5 = icmp sle i64 %var.load, 57
  br label %and.512.exit

and.512.else:                                     ; preds = %and.511.exit
  br label %and.512.exit

and.512.exit:                                     ; preds = %and.512.else, %and.512.then
  %and.512.phi = phi i1 [ %cmptmp5, %and.512.then ], [ %cmptmp4, %and.512.else ]
  %case.or6 = or i1 %case.or, %and.512.phi
  %val.match = icmp eq i64 %var.load, 95
  %case.or7 = or i1 %case.or6, %val.match
  br i1 %case.or7, label %choice.case, label %choice.next
}

define i64 @"formatter::scan_line_state"(ptr %0, i64 %1) #0 {
entry:
  %var.step = alloca i64, align 8
  %var.prev_b = alloca i64, align 8
  %var.c2 = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.513 = alloca i64, align 8
  %loop.idx.513 = alloca i64, align 8
  %"var.str_triple'" = alloca i1, align 1
  %"var.in_str'" = alloca i1, align 1
  %"var.i'" = alloca i64, align 8
  %"var.st'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.init_state = alloca i64, align 8
  %var.line = alloca ptr, align 8
  store ptr %0, ptr %var.line, align 8
  store i64 %1, ptr %var.init_state, align 8
  %var.load = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.init_state, align 8
  store i64 %var.load3, ptr %"var.st'", align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  store i64 0, ptr %loop.idx.513, align 8
  br label %loop.header.513

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.513:                                  ; preds = %loop.latch.513, %str_ok
  %counter.load = load i64, ptr %loop.idx.513, align 8
  br label %loop.body.513

loop.body.513:                                    ; preds = %loop.header.513
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.513, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.i'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.513:                                ; No predecessors!
  br label %loop.exit.513

loop.latch.513:                                   ; preds = %choice.exit55
  %step.val = load i64, ptr %loop.step.513, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.513, align 8
  br label %loop.header.513

loop.exit.513:                                    ; preds = %choice.then, %loop.exit.nat.513
  %var.load248 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load248, label %choice.then249, label %choice.else250

choice.then:                                      ; preds = %loop.body.513
  br label %loop.exit.513

choice.exit:                                      ; preds = %loop.body.513
  %var.load6 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %"var.i'", align 8
  %idx.oob = icmp uge i64 %var.load10, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load11 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load11, 1
  %var.load12 = load i64, ptr %var.n, align 8
  %cmptmp13 = icmp slt i64 %addtmp, %var.load12
  br i1 %cmptmp13, label %choice.then14, label %choice.else

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then14:                                    ; preds = %idx_ok
  %var.load16 = load ptr, ptr %var.line, align 8
  %s.read.len17 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len17, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data20 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data20, align 8
  %var.load22 = load i64, ptr %"var.i'", align 8
  %addtmp23 = add i64 %var.load22, 1
  %idx.oob24 = icmp uge i64 %addtmp23, %s.read.len19
  br i1 %idx.oob24, label %idx_oob26, label %idx_ok25

choice.else:                                      ; preds = %idx_ok
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else, %idx_ok25
  %choice.res = phi i64 [ %s.byte.val30, %idx_ok25 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.c1, align 8
  %var.load31 = load i64, ptr %"var.i'", align 8
  %addtmp32 = add i64 %var.load31, 2
  %var.load33 = load i64, ptr %var.n, align 8
  %cmptmp34 = icmp slt i64 %addtmp32, %var.load33
  br i1 %cmptmp34, label %choice.then35, label %choice.else36

idx_ok25:                                         ; preds = %abort.dead27, %choice.then14
  %s.byte.gep28 = getelementptr i8, ptr %s.read.data21, i64 %addtmp23
  %s.byte29 = load i8, ptr %s.byte.gep28, align 1
  %s.byte.val30 = zext i8 %s.byte29 to i64
  br label %choice.exit15

idx_oob26:                                        ; preds = %choice.then14
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %idx_ok25

choice.then35:                                    ; preds = %choice.exit15
  %var.load38 = load ptr, ptr %var.line, align 8
  %s.read.len39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %s.read.len40 = load i64, ptr %s.read.len39, align 8
  %s.read.len41 = and i64 %s.read.len40, 281474976710655
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %var.load44 = load i64, ptr %"var.i'", align 8
  %addtmp45 = add i64 %var.load44, 2
  %idx.oob46 = icmp uge i64 %addtmp45, %s.read.len41
  br i1 %idx.oob46, label %idx_oob48, label %idx_ok47

choice.else36:                                    ; preds = %choice.exit15
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.else36, %idx_ok47
  %choice.res53 = phi i64 [ %s.byte.val52, %idx_ok47 ], [ 0, %choice.else36 ]
  store i64 %choice.res53, ptr %var.c2, align 8
  %var.load54 = load i64, ptr %"var.st'", align 8
  %val.match = icmp eq i64 %var.load54, 1
  br i1 %val.match, label %choice.case, label %choice.next

idx_ok47:                                         ; preds = %abort.dead49, %choice.then35
  %s.byte.gep50 = getelementptr i8, ptr %s.read.data43, i64 %addtmp45
  %s.byte51 = load i8, ptr %s.byte.gep50, align 1
  %s.byte.val52 = zext i8 %s.byte51 to i64
  br label %choice.exit37

idx_oob48:                                        ; preds = %choice.then35
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %idx_ok47

choice.exit55:                                    ; preds = %choice.exit112, %choice.exit93, %choice.exit74, %choice.exit62
  br label %loop.latch.513

choice.case:                                      ; preds = %choice.exit37
  %var.load56 = load i64, ptr %var.c, align 8
  %cmptmp57 = icmp eq i64 %var.load56, 42
  br i1 %cmptmp57, label %and.514.then, label %and.514.else

choice.next:                                      ; preds = %choice.exit37
  %val.match69 = icmp eq i64 %var.load54, 2
  br i1 %val.match69, label %choice.case67, label %choice.next68

and.514.then:                                     ; preds = %choice.case
  %var.load58 = load i64, ptr %var.c1, align 8
  %cmptmp59 = icmp eq i64 %var.load58, 47
  br label %and.514.exit

and.514.else:                                     ; preds = %choice.case
  br label %and.514.exit

and.514.exit:                                     ; preds = %and.514.else, %and.514.then
  %and.514.phi = phi i1 [ %cmptmp59, %and.514.then ], [ %cmptmp57, %and.514.else ]
  br i1 %and.514.phi, label %choice.then60, label %choice.else61

choice.then60:                                    ; preds = %and.514.exit
  store i64 0, ptr %"var.st'", align 8
  %var.load63 = load i64, ptr %"var.i'", align 8
  %addtmp64 = add i64 %var.load63, 2
  store i64 %addtmp64, ptr %"var.i'", align 8
  br label %choice.exit62

choice.else61:                                    ; preds = %and.514.exit
  %var.load65 = load i64, ptr %"var.i'", align 8
  %addtmp66 = add i64 %var.load65, 1
  store i64 %addtmp66, ptr %"var.i'", align 8
  br label %choice.exit62

choice.exit62:                                    ; preds = %choice.else61, %choice.then60
  br label %choice.exit55

choice.case67:                                    ; preds = %choice.next
  %var.load70 = load i64, ptr %var.c, align 8
  %cmptmp71 = icmp eq i64 %var.load70, 92
  br i1 %cmptmp71, label %choice.then72, label %choice.else73

choice.next68:                                    ; preds = %choice.next
  %val.match88 = icmp eq i64 %var.load54, 3
  br i1 %val.match88, label %choice.case86, label %choice.next87

choice.then72:                                    ; preds = %choice.case67
  %var.load75 = load i64, ptr %"var.i'", align 8
  %addtmp76 = add i64 %var.load75, 2
  store i64 %addtmp76, ptr %"var.i'", align 8
  br label %choice.exit74

choice.else73:                                    ; preds = %choice.case67
  %var.load77 = load i64, ptr %var.c, align 8
  %cmptmp78 = icmp eq i64 %var.load77, 34
  br i1 %cmptmp78, label %choice.then79, label %choice.else80

choice.exit74:                                    ; preds = %choice.exit81, %choice.then72
  br label %choice.exit55

choice.then79:                                    ; preds = %choice.else73
  store i64 0, ptr %"var.st'", align 8
  %var.load82 = load i64, ptr %"var.i'", align 8
  %addtmp83 = add i64 %var.load82, 1
  store i64 %addtmp83, ptr %"var.i'", align 8
  br label %choice.exit81

choice.else80:                                    ; preds = %choice.else73
  %var.load84 = load i64, ptr %"var.i'", align 8
  %addtmp85 = add i64 %var.load84, 1
  store i64 %addtmp85, ptr %"var.i'", align 8
  br label %choice.exit81

choice.exit81:                                    ; preds = %choice.else80, %choice.then79
  br label %choice.exit74

choice.case86:                                    ; preds = %choice.next68
  %var.load89 = load i64, ptr %var.c, align 8
  %cmptmp90 = icmp eq i64 %var.load89, 92
  br i1 %cmptmp90, label %choice.then91, label %choice.else92

choice.next87:                                    ; preds = %choice.next68
  %var.load109 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load109, label %choice.then110, label %choice.else111

choice.then91:                                    ; preds = %choice.case86
  %var.load94 = load i64, ptr %"var.i'", align 8
  %addtmp95 = add i64 %var.load94, 2
  store i64 %addtmp95, ptr %"var.i'", align 8
  br label %choice.exit93

choice.else92:                                    ; preds = %choice.case86
  %var.load96 = load i64, ptr %var.c, align 8
  %cmptmp97 = icmp eq i64 %var.load96, 34
  br i1 %cmptmp97, label %and.515.then, label %and.515.else

choice.exit93:                                    ; preds = %choice.exit104, %choice.then91
  br label %choice.exit55

and.515.then:                                     ; preds = %choice.else92
  %var.load98 = load i64, ptr %var.c1, align 8
  %cmptmp99 = icmp eq i64 %var.load98, 34
  br label %and.515.exit

and.515.else:                                     ; preds = %choice.else92
  br label %and.515.exit

and.515.exit:                                     ; preds = %and.515.else, %and.515.then
  %and.515.phi = phi i1 [ %cmptmp99, %and.515.then ], [ %cmptmp97, %and.515.else ]
  br i1 %and.515.phi, label %and.516.then, label %and.516.else

and.516.then:                                     ; preds = %and.515.exit
  %var.load100 = load i64, ptr %var.c2, align 8
  %cmptmp101 = icmp eq i64 %var.load100, 34
  br label %and.516.exit

and.516.else:                                     ; preds = %and.515.exit
  br label %and.516.exit

and.516.exit:                                     ; preds = %and.516.else, %and.516.then
  %and.516.phi = phi i1 [ %cmptmp101, %and.516.then ], [ %and.515.phi, %and.516.else ]
  br i1 %and.516.phi, label %choice.then102, label %choice.else103

choice.then102:                                   ; preds = %and.516.exit
  store i64 0, ptr %"var.st'", align 8
  %var.load105 = load i64, ptr %"var.i'", align 8
  %addtmp106 = add i64 %var.load105, 3
  store i64 %addtmp106, ptr %"var.i'", align 8
  br label %choice.exit104

choice.else103:                                   ; preds = %and.516.exit
  %var.load107 = load i64, ptr %"var.i'", align 8
  %addtmp108 = add i64 %var.load107, 1
  store i64 %addtmp108, ptr %"var.i'", align 8
  br label %choice.exit104

choice.exit104:                                   ; preds = %choice.else103, %choice.then102
  br label %choice.exit93

choice.then110:                                   ; preds = %choice.next87
  %var.load113 = load i64, ptr %var.c, align 8
  %cmptmp114 = icmp eq i64 %var.load113, 92
  br i1 %cmptmp114, label %choice.then115, label %choice.else116

choice.else111:                                   ; preds = %choice.next87
  %var.load146 = load i64, ptr %var.c, align 8
  %cmptmp147 = icmp eq i64 %var.load146, 47
  br i1 %cmptmp147, label %and.519.then, label %and.519.else

choice.exit112:                                   ; preds = %choice.exit152, %choice.exit117
  br label %choice.exit55

choice.then115:                                   ; preds = %choice.then110
  %var.load118 = load i64, ptr %"var.i'", align 8
  %addtmp119 = add i64 %var.load118, 2
  store i64 %addtmp119, ptr %"var.i'", align 8
  br label %choice.exit117

choice.else116:                                   ; preds = %choice.then110
  %var.load120 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load120, label %choice.then121, label %choice.else122

choice.exit117:                                   ; preds = %choice.exit123, %choice.then115
  br label %choice.exit112

choice.then121:                                   ; preds = %choice.else116
  %var.load124 = load i64, ptr %var.c, align 8
  %cmptmp125 = icmp eq i64 %var.load124, 34
  br i1 %cmptmp125, label %and.517.then, label %and.517.else

choice.else122:                                   ; preds = %choice.else116
  %var.load137 = load i64, ptr %var.c, align 8
  %cmptmp138 = icmp eq i64 %var.load137, 34
  br i1 %cmptmp138, label %choice.then139, label %choice.else140

choice.exit123:                                   ; preds = %choice.exit141, %choice.exit132
  br label %choice.exit117

and.517.then:                                     ; preds = %choice.then121
  %var.load126 = load i64, ptr %var.c1, align 8
  %cmptmp127 = icmp eq i64 %var.load126, 34
  br label %and.517.exit

and.517.else:                                     ; preds = %choice.then121
  br label %and.517.exit

and.517.exit:                                     ; preds = %and.517.else, %and.517.then
  %and.517.phi = phi i1 [ %cmptmp127, %and.517.then ], [ %cmptmp125, %and.517.else ]
  br i1 %and.517.phi, label %and.518.then, label %and.518.else

and.518.then:                                     ; preds = %and.517.exit
  %var.load128 = load i64, ptr %var.c2, align 8
  %cmptmp129 = icmp eq i64 %var.load128, 34
  br label %and.518.exit

and.518.else:                                     ; preds = %and.517.exit
  br label %and.518.exit

and.518.exit:                                     ; preds = %and.518.else, %and.518.then
  %and.518.phi = phi i1 [ %cmptmp129, %and.518.then ], [ %and.517.phi, %and.518.else ]
  br i1 %and.518.phi, label %choice.then130, label %choice.else131

choice.then130:                                   ; preds = %and.518.exit
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load133 = load i64, ptr %"var.i'", align 8
  %addtmp134 = add i64 %var.load133, 3
  store i64 %addtmp134, ptr %"var.i'", align 8
  br label %choice.exit132

choice.else131:                                   ; preds = %and.518.exit
  %var.load135 = load i64, ptr %"var.i'", align 8
  %addtmp136 = add i64 %var.load135, 1
  store i64 %addtmp136, ptr %"var.i'", align 8
  br label %choice.exit132

choice.exit132:                                   ; preds = %choice.else131, %choice.then130
  br label %choice.exit123

choice.then139:                                   ; preds = %choice.else122
  store i1 false, ptr %"var.in_str'", align 1
  %var.load142 = load i64, ptr %"var.i'", align 8
  %addtmp143 = add i64 %var.load142, 1
  store i64 %addtmp143, ptr %"var.i'", align 8
  br label %choice.exit141

choice.else140:                                   ; preds = %choice.else122
  %var.load144 = load i64, ptr %"var.i'", align 8
  %addtmp145 = add i64 %var.load144, 1
  store i64 %addtmp145, ptr %"var.i'", align 8
  br label %choice.exit141

choice.exit141:                                   ; preds = %choice.else140, %choice.then139
  br label %choice.exit123

and.519.then:                                     ; preds = %choice.else111
  %var.load148 = load i64, ptr %var.c1, align 8
  %cmptmp149 = icmp eq i64 %var.load148, 47
  br label %and.519.exit

and.519.else:                                     ; preds = %choice.else111
  br label %and.519.exit

and.519.exit:                                     ; preds = %and.519.else, %and.519.then
  %and.519.phi = phi i1 [ %cmptmp149, %and.519.then ], [ %cmptmp147, %and.519.else ]
  br i1 %and.519.phi, label %choice.then150, label %choice.else151

choice.then150:                                   ; preds = %and.519.exit
  %var.load153 = load i64, ptr %var.n, align 8
  store i64 %var.load153, ptr %"var.i'", align 8
  br label %choice.exit152

choice.else151:                                   ; preds = %and.519.exit
  %var.load154 = load i64, ptr %var.c, align 8
  %cmptmp155 = icmp eq i64 %var.load154, 47
  br i1 %cmptmp155, label %and.520.then, label %and.520.else

choice.exit152:                                   ; preds = %choice.exit160, %choice.then150
  br label %choice.exit112

and.520.then:                                     ; preds = %choice.else151
  %var.load156 = load i64, ptr %var.c1, align 8
  %cmptmp157 = icmp eq i64 %var.load156, 42
  br label %and.520.exit

and.520.else:                                     ; preds = %choice.else151
  br label %and.520.exit

and.520.exit:                                     ; preds = %and.520.else, %and.520.then
  %and.520.phi = phi i1 [ %cmptmp157, %and.520.then ], [ %cmptmp155, %and.520.else ]
  br i1 %and.520.phi, label %choice.then158, label %choice.else159

choice.then158:                                   ; preds = %and.520.exit
  store i64 1, ptr %"var.st'", align 8
  %var.load161 = load i64, ptr %"var.i'", align 8
  %addtmp162 = add i64 %var.load161, 2
  store i64 %addtmp162, ptr %"var.i'", align 8
  br label %choice.exit160

choice.else159:                                   ; preds = %and.520.exit
  %var.load163 = load i64, ptr %var.c, align 8
  %cmptmp164 = icmp eq i64 %var.load163, 39
  br i1 %cmptmp164, label %choice.then165, label %choice.else166

choice.exit160:                                   ; preds = %choice.exit167, %choice.then158
  br label %choice.exit152

choice.then165:                                   ; preds = %choice.else159
  %var.load168 = load i64, ptr %"var.i'", align 8
  %cmptmp169 = icmp sgt i64 %var.load168, 0
  br i1 %cmptmp169, label %choice.then170, label %choice.else171

choice.else166:                                   ; preds = %choice.else159
  %var.load214 = load i64, ptr %var.c, align 8
  %cmptmp215 = icmp eq i64 %var.load214, 34
  br i1 %cmptmp215, label %choice.then216, label %choice.else217

choice.exit167:                                   ; preds = %choice.exit218, %choice.exit191
  br label %choice.exit160

choice.then170:                                   ; preds = %choice.then165
  %var.load173 = load ptr, ptr %var.line, align 8
  %s.read.len174 = getelementptr inbounds { i64, ptr }, ptr %var.load173, i32 0, i32 0
  %s.read.len175 = load i64, ptr %s.read.len174, align 8
  %s.read.len176 = and i64 %s.read.len175, 281474976710655
  %s.read.data177 = getelementptr inbounds { i64, ptr }, ptr %var.load173, i32 0, i32 1
  %s.read.data178 = load ptr, ptr %s.read.data177, align 8
  %var.load179 = load i64, ptr %"var.i'", align 8
  %subtmp = sub i64 %var.load179, 1
  %idx.oob180 = icmp uge i64 %subtmp, %s.read.len176
  br i1 %idx.oob180, label %idx_oob182, label %idx_ok181

choice.else171:                                   ; preds = %choice.then165
  br label %choice.exit172

choice.exit172:                                   ; preds = %choice.else171, %idx_ok181
  %choice.res187 = phi i64 [ %s.byte.val186, %idx_ok181 ], [ 0, %choice.else171 ]
  store i64 %choice.res187, ptr %var.prev_b, align 8
  %var.load188 = load i64, ptr %var.prev_b, align 8
  %call.res = call i1 @"formatter::is_id_byte"(i64 %var.load188)
  br i1 %call.res, label %choice.then189, label %choice.else190

idx_ok181:                                        ; preds = %abort.dead183, %choice.then170
  %s.byte.gep184 = getelementptr i8, ptr %s.read.data178, i64 %subtmp
  %s.byte185 = load i8, ptr %s.byte.gep184, align 1
  %s.byte.val186 = zext i8 %s.byte185 to i64
  br label %choice.exit172

idx_oob182:                                       ; preds = %choice.then170
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead183:                                    ; No predecessors!
  br label %idx_ok181

choice.then189:                                   ; preds = %choice.exit172
  br label %choice.exit191

choice.else190:                                   ; preds = %choice.exit172
  %var.load192 = load i64, ptr %var.c1, align 8
  %cmptmp193 = icmp eq i64 %var.load192, 92
  br i1 %cmptmp193, label %and.521.then, label %and.521.else

choice.exit191:                                   ; preds = %choice.exit200, %choice.then189
  %choice.res210 = phi i64 [ 1, %choice.then189 ], [ %choice.res209, %choice.exit200 ]
  store i64 %choice.res210, ptr %var.step, align 8
  %var.load211 = load i64, ptr %"var.i'", align 8
  %var.load212 = load i64, ptr %var.step, align 8
  %addtmp213 = add i64 %var.load211, %var.load212
  store i64 %addtmp213, ptr %"var.i'", align 8
  br label %choice.exit167

and.521.then:                                     ; preds = %choice.else190
  %var.load194 = load i64, ptr %"var.i'", align 8
  %addtmp195 = add i64 %var.load194, 2
  %var.load196 = load i64, ptr %var.n, align 8
  %cmptmp197 = icmp slt i64 %addtmp195, %var.load196
  br label %and.521.exit

and.521.else:                                     ; preds = %choice.else190
  br label %and.521.exit

and.521.exit:                                     ; preds = %and.521.else, %and.521.then
  %and.521.phi = phi i1 [ %cmptmp197, %and.521.then ], [ %cmptmp193, %and.521.else ]
  br i1 %and.521.phi, label %choice.then198, label %choice.else199

choice.then198:                                   ; preds = %and.521.exit
  br label %choice.exit200

choice.else199:                                   ; preds = %and.521.exit
  %var.load201 = load i64, ptr %"var.i'", align 8
  %addtmp202 = add i64 %var.load201, 1
  %var.load203 = load i64, ptr %var.n, align 8
  %cmptmp204 = icmp slt i64 %addtmp202, %var.load203
  br i1 %cmptmp204, label %choice.then205, label %choice.else206

choice.exit200:                                   ; preds = %choice.exit207, %choice.then198
  %choice.res209 = phi i64 [ 3, %choice.then198 ], [ %choice.res208, %choice.exit207 ]
  br label %choice.exit191

choice.then205:                                   ; preds = %choice.else199
  br label %choice.exit207

choice.else206:                                   ; preds = %choice.else199
  br label %choice.exit207

choice.exit207:                                   ; preds = %choice.else206, %choice.then205
  %choice.res208 = phi i64 [ 2, %choice.then205 ], [ 1, %choice.else206 ]
  br label %choice.exit200

choice.then216:                                   ; preds = %choice.else166
  %var.load219 = load i64, ptr %var.c1, align 8
  %cmptmp220 = icmp eq i64 %var.load219, 34
  br i1 %cmptmp220, label %and.522.then, label %and.522.else

choice.else217:                                   ; preds = %choice.else166
  %var.load246 = load i64, ptr %"var.i'", align 8
  %addtmp247 = add i64 %var.load246, 1
  store i64 %addtmp247, ptr %"var.i'", align 8
  br label %choice.exit218

choice.exit218:                                   ; preds = %choice.else217, %choice.exit225
  br label %choice.exit167

and.522.then:                                     ; preds = %choice.then216
  %var.load221 = load i64, ptr %var.c2, align 8
  %cmptmp222 = icmp eq i64 %var.load221, 34
  br label %and.522.exit

and.522.else:                                     ; preds = %choice.then216
  br label %and.522.exit

and.522.exit:                                     ; preds = %and.522.else, %and.522.then
  %and.522.phi = phi i1 [ %cmptmp222, %and.522.then ], [ %cmptmp220, %and.522.else ]
  br i1 %and.522.phi, label %choice.then223, label %choice.else224

choice.then223:                                   ; preds = %and.522.exit
  %var.load226 = load i64, ptr %"var.i'", align 8
  %addtmp227 = add i64 %var.load226, 3
  %var.load228 = load i64, ptr %var.n, align 8
  %cmptmp229 = icmp eq i64 %addtmp227, %var.load228
  br i1 %cmptmp229, label %choice.then230, label %choice.else231

choice.else224:                                   ; preds = %and.522.exit
  %var.load236 = load i64, ptr %"var.i'", align 8
  %addtmp237 = add i64 %var.load236, 1
  %var.load238 = load i64, ptr %var.n, align 8
  %cmptmp239 = icmp eq i64 %addtmp237, %var.load238
  br i1 %cmptmp239, label %choice.then240, label %choice.else241

choice.exit225:                                   ; preds = %choice.exit242, %choice.exit232
  br label %choice.exit218

choice.then230:                                   ; preds = %choice.then223
  store i64 3, ptr %"var.st'", align 8
  %var.load233 = load i64, ptr %var.n, align 8
  store i64 %var.load233, ptr %"var.i'", align 8
  br label %choice.exit232

choice.else231:                                   ; preds = %choice.then223
  store i1 true, ptr %"var.in_str'", align 1
  store i1 true, ptr %"var.str_triple'", align 1
  %var.load234 = load i64, ptr %"var.i'", align 8
  %addtmp235 = add i64 %var.load234, 3
  store i64 %addtmp235, ptr %"var.i'", align 8
  br label %choice.exit232

choice.exit232:                                   ; preds = %choice.else231, %choice.then230
  br label %choice.exit225

choice.then240:                                   ; preds = %choice.else224
  store i64 2, ptr %"var.st'", align 8
  %var.load243 = load i64, ptr %var.n, align 8
  store i64 %var.load243, ptr %"var.i'", align 8
  br label %choice.exit242

choice.else241:                                   ; preds = %choice.else224
  store i1 true, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load244 = load i64, ptr %"var.i'", align 8
  %addtmp245 = add i64 %var.load244, 1
  store i64 %addtmp245, ptr %"var.i'", align 8
  br label %choice.exit242

choice.exit242:                                   ; preds = %choice.else241, %choice.then240
  br label %choice.exit225

choice.then249:                                   ; preds = %loop.exit.513
  %var.load252 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load252, label %choice.then253, label %choice.else254

choice.else250:                                   ; preds = %loop.exit.513
  %var.load257 = load i64, ptr %"var.st'", align 8
  br label %choice.exit251

choice.exit251:                                   ; preds = %choice.else250, %choice.exit255
  %choice.res258 = phi i64 [ %choice.res256, %choice.exit255 ], [ %var.load257, %choice.else250 ]
  ret i64 %choice.res258

choice.then253:                                   ; preds = %choice.then249
  br label %choice.exit255

choice.else254:                                   ; preds = %choice.then249
  br label %choice.exit255

choice.exit255:                                   ; preds = %choice.else254, %choice.then253
  %choice.res256 = phi i64 [ 3, %choice.then253 ], [ 2, %choice.else254 ]
  br label %choice.exit251
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #5 {
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
define internal void @dva_abort_stale_str_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define { i64, ptr } @"formatter::strip_cr_and_trailing_ws"(ptr %0) #0 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.523 = alloca i64, align 8
  %loop.idx.523 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.523, align 8
  br label %loop.header.523

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.523:                                  ; preds = %loop.latch.523, %str_ok
  %counter.load = load i64, ptr %loop.idx.523, align 8
  br label %loop.body.523

loop.body.523:                                    ; preds = %loop.header.523
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.523, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load3 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sle i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.523:                                ; No predecessors!
  br label %loop.exit.523

loop.latch.523:                                   ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.523, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.523, align 8
  br label %loop.header.523

loop.exit.523:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.523
  %var.load18 = load ptr, ptr %var.s, align 8
  %s.read.len19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len19, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %s.read.data22 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data22, align 8
  %var.load24 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len21, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len21
  %final.start = select i1 %start.gt.len, i64 %s.read.len21, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load24, 0
  %rel.end = add i64 %s.read.len21, %var.load24
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load24
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len21
  %final.end = select i1 %end.gt.len, i64 %s.read.len21, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data23, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

choice.then:                                      ; preds = %loop.body.523
  br label %loop.exit.523

choice.exit:                                      ; preds = %loop.body.523
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load8, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load9 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load9, 32
  %val.match11 = icmp eq i64 %var.load9, 9
  %case.or = or i1 %val.match, %val.match11
  %val.match12 = icmp eq i64 %var.load9, 13
  %case.or13 = or i1 %case.or, %val.match12
  br i1 %case.or13, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit10:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then14, label %choice.else

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit10

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit10

choice.then14:                                    ; preds = %choice.exit10
  %var.load16 = load i64, ptr %"var.end'", align 8
  %subtmp17 = sub i64 %var.load16, 1
  store i64 %subtmp17, ptr %"var.end'", align 8
  br label %choice.exit15

choice.else:                                      ; preds = %choice.exit10
  br label %loop.exit.523

choice.exit15:                                    ; preds = %choice.then14
  br label %loop.latch.523
}

define { i64, ptr } @"formatter::strip_cr_only"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.524.then, label %and.524.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.524.then:                                     ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %var.load7 = load ptr, ptr %var.s, align 8
  %str.len.query8 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %str.len.query9 = load i64, ptr %str.len.query8, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %str.tag11 = lshr i64 %str.len.query9, 48
  %tag.immortal13 = icmp eq i64 %str.tag11, 0
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current15 = icmp eq i64 %str.tag11, %active.gen14
  %tag.fast.ok16 = or i1 %tag.immortal13, %tag.current15
  br i1 %tag.fast.ok16, label %str_ok12, label %tag.slow_check17

and.524.else:                                     ; preds = %str_ok
  br label %and.524.exit

and.524.exit:                                     ; preds = %and.524.else, %idx_ok
  %and.524.phi = phi i1 [ %cmptmp18, %idx_ok ], [ %cmptmp, %and.524.else ]
  br i1 %and.524.phi, label %choice.then, label %choice.else

str_ok12:                                         ; preds = %tag.slow_check17, %and.524.then
  %subtmp = sub i64 %str.len.query10, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

tag.slow_check17:                                 ; preds = %and.524.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag11)
  br label %str_ok12

idx_ok:                                           ; preds = %abort.dead, %str_ok12
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp18 = icmp eq i64 %s.byte.val, 13
  br label %and.524.exit

idx_oob:                                          ; preds = %str_ok12
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.524.exit
  %var.load19 = load ptr, ptr %var.s, align 8
  %s.read.len20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len21 = load i64, ptr %s.read.len20, align 8
  %s.read.len22 = and i64 %s.read.len21, 281474976710655
  %s.read.data23 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data23, align 8
  %var.load25 = load ptr, ptr %var.s, align 8
  %str.len.query26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %str.len.query27 = load i64, ptr %str.len.query26, align 8
  %str.len.query28 = and i64 %str.len.query27, 281474976710655
  %str.tag29 = lshr i64 %str.len.query27, 48
  %tag.immortal31 = icmp eq i64 %str.tag29, 0
  %active.gen32 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current33 = icmp eq i64 %str.tag29, %active.gen32
  %tag.fast.ok34 = or i1 %tag.immortal31, %tag.current33
  br i1 %tag.fast.ok34, label %str_ok30, label %tag.slow_check35

choice.else:                                      ; preds = %and.524.exit
  %var.load37 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok30
  %choice.res = phi ptr [ %str.view, %str_ok30 ], [ %var.load37, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

str_ok30:                                         ; preds = %tag.slow_check35, %choice.then
  %subtmp36 = sub i64 %str.len.query28, 1
  %rel.start = add i64 %s.read.len22, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len22
  %final.start = select i1 %start.gt.len, i64 %s.read.len22, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp36, 0
  %rel.end = add i64 %s.read.len22, %subtmp36
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp36
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len22
  %final.end = select i1 %end.gt.len, i64 %s.read.len22, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data24, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

tag.slow_check35:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag29)
  br label %str_ok30
}

define ptr @"formatter::split_source_lines"(ptr %0) #0 {
entry:
  %var.next_st = alloca i64, align 8
  %var.is_comm = alloca i1, align 1
  %var.is_blank = alloca i1, align 1
  %var.eff_indent = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._69 = alloca i64, align 8
  %var._i68 = alloca i64, align 8
  %loop.step.530 = alloca i64, align 8
  %loop.idx.530 = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %"var.tabs'" = alloca i64, align 8
  %"var.sp'" = alloca i64, align 8
  %var.cleaned = alloca ptr, align 8
  %var.raw_slice = alloca ptr, align 8
  %var._10 = alloca i64, align 8
  %var._i9 = alloca i64, align 8
  %loop.step.527 = alloca i64, align 8
  %loop.idx.527 = alloca i64, align 8
  %var.line_start = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.526 = alloca i64, align 8
  %loop.idx.526 = alloca i64, align 8
  %"var.st'" = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
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
  store ptr %a.new, ptr %var.res, align 8
  %var.load = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %"var.st'", align 8
  store i64 0, ptr %loop.idx.526, align 8
  br label %loop.header.526

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.526:                                  ; preds = %loop.latch.526, %str_ok
  %counter.load = load i64, ptr %loop.idx.526, align 8
  br label %loop.body.526

loop.body.526:                                    ; preds = %loop.header.526
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.526, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.pos'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.526:                                ; No predecessors!
  br label %loop.exit.526

loop.latch.526:                                   ; preds = %a.store
  %step.val210 = load i64, ptr %loop.step.526, align 8
  %loop.next211 = add i64 %counter.load, %step.val210
  store i64 %loop.next211, ptr %loop.idx.526, align 8
  br label %loop.header.526

loop.exit.526:                                    ; preds = %choice.then, %loop.exit.nat.526
  %var.load212 = load ptr, ptr %var.res, align 8
  %a.load213 = load ptr, ptr %var.res, align 8
  %a.null214 = icmp eq ptr %a.load213, null
  br i1 %a.null214, label %a.create215, label %a.after216

choice.then:                                      ; preds = %loop.body.526
  br label %loop.exit.526

choice.exit:                                      ; preds = %loop.body.526
  %var.load6 = load i64, ptr %"var.pos'", align 8
  store i64 %var.load6, ptr %var.line_start, align 8
  store i64 0, ptr %loop.idx.527, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.527

loop.header.527:                                  ; preds = %loop.latch.527, %choice.exit
  %counter.load7 = load i64, ptr %loop.idx.527, align 8
  br label %loop.body.527

loop.body.527:                                    ; preds = %loop.header.527
  %loop.rel.i8 = sub i64 %counter.load7, 0
  store i64 1, ptr %loop.step.527, align 8
  store i64 %loop.rel.i8, ptr %var._i9, align 8
  store i64 %counter.load7, ptr %var._10, align 8
  %var.load11 = load i64, ptr %"var.pos'", align 8
  %var.load12 = load i64, ptr %var.n, align 8
  %cmptmp13 = icmp sge i64 %var.load11, %var.load12
  br i1 %cmptmp13, label %or.528.then, label %or.528.else

loop.exit.nat.527:                                ; No predecessors!
  br label %loop.exit.527

loop.latch.527:                                   ; preds = %choice.exit21
  %step.val = load i64, ptr %loop.step.527, align 8
  %loop.next = add i64 %counter.load7, %step.val
  store i64 %loop.next, ptr %loop.idx.527, align 8
  br label %loop.header.527

loop.exit.527:                                    ; preds = %choice.then20, %loop.exit.nat.527
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load23 = load ptr, ptr %var.src, align 8
  %s.read.len24 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %s.read.len25 = load i64, ptr %s.read.len24, align 8
  %s.read.len26 = and i64 %s.read.len25, 281474976710655
  %s.read.data27 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data27, align 8
  %var.load29 = load i64, ptr %var.line_start, align 8
  %var.load30 = load i64, ptr %"var.pos'", align 8
  %start.is_neg = icmp slt i64 %var.load29, 0
  %rel.start = add i64 %s.read.len26, %var.load29
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load29
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len26
  %final.start = select i1 %start.gt.len, i64 %s.read.len26, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load30, 0
  %rel.end = add i64 %s.read.len26, %var.load30
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load30
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len26
  %final.end = select i1 %end.gt.len, i64 %s.read.len26, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data28, i64 %final.start
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw_slice, align 8
  %var.load32 = load i64, ptr %"var.pos'", align 8
  %var.load33 = load i64, ptr %var.n, align 8
  %cmptmp34 = icmp slt i64 %var.load32, %var.load33
  br i1 %cmptmp34, label %and.529.then, label %and.529.else

or.528.then:                                      ; preds = %loop.body.527
  br label %or.528.exit

or.528.else:                                      ; preds = %loop.body.527
  %var.load14 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %"var.pos'", align 8
  %idx.oob = icmp uge i64 %var.load18, %s.read.len16
  br i1 %idx.oob, label %idx_oob, label %idx_ok

or.528.exit:                                      ; preds = %idx_ok, %or.528.then
  %or.528.phi = phi i1 [ %cmptmp13, %or.528.then ], [ %cmptmp19, %idx_ok ]
  br i1 %or.528.phi, label %choice.then20, label %choice.exit21

idx_ok:                                           ; preds = %abort.dead, %or.528.else
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp eq i64 %s.byte.val, 10
  br label %or.528.exit

idx_oob:                                          ; preds = %or.528.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then20:                                    ; preds = %or.528.exit
  br label %loop.exit.527

choice.exit21:                                    ; preds = %or.528.exit
  %var.load22 = load i64, ptr %"var.pos'", align 8
  %addtmp = add i64 %var.load22, 1
  store i64 %addtmp, ptr %"var.pos'", align 8
  br label %loop.latch.527

and.529.then:                                     ; preds = %loop.exit.527
  %var.load35 = load ptr, ptr %var.src, align 8
  %s.read.len36 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %s.read.len37 = load i64, ptr %s.read.len36, align 8
  %s.read.len38 = and i64 %s.read.len37, 281474976710655
  %s.read.data39 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data39, align 8
  %var.load41 = load i64, ptr %"var.pos'", align 8
  %idx.oob42 = icmp uge i64 %var.load41, %s.read.len38
  br i1 %idx.oob42, label %idx_oob44, label %idx_ok43

and.529.else:                                     ; preds = %loop.exit.527
  br label %and.529.exit

and.529.exit:                                     ; preds = %and.529.else, %idx_ok43
  %and.529.phi = phi i1 [ %cmptmp49, %idx_ok43 ], [ %cmptmp34, %and.529.else ]
  br i1 %and.529.phi, label %choice.then50, label %choice.exit51

idx_ok43:                                         ; preds = %abort.dead45, %and.529.then
  %s.byte.gep46 = getelementptr i8, ptr %s.read.data40, i64 %var.load41
  %s.byte47 = load i8, ptr %s.byte.gep46, align 1
  %s.byte.val48 = zext i8 %s.byte47 to i64
  %cmptmp49 = icmp eq i64 %s.byte.val48, 10
  br label %and.529.exit

idx_oob44:                                        ; preds = %and.529.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %idx_ok43

choice.then50:                                    ; preds = %and.529.exit
  %var.load52 = load i64, ptr %"var.pos'", align 8
  %addtmp53 = add i64 %var.load52, 1
  store i64 %addtmp53, ptr %"var.pos'", align 8
  br label %choice.exit51

choice.exit51:                                    ; preds = %choice.then50, %and.529.exit
  %var.load54 = load i64, ptr %"var.st'", align 8
  %cmptmp55 = icmp eq i64 %var.load54, 0
  br i1 %cmptmp55, label %choice.then56, label %choice.else

choice.then56:                                    ; preds = %choice.exit51
  %var.load58 = load ptr, ptr %var.raw_slice, align 8
  %call.res = call { i64, ptr } @"formatter::strip_cr_and_trailing_ws"(ptr %var.load58)
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  br label %choice.exit57

choice.else:                                      ; preds = %choice.exit51
  %var.load60 = load ptr, ptr %var.raw_slice, align 8
  %call.res61 = call { i64, ptr } @"formatter::strip_cr_only"(ptr %var.load60)
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  store { i64, ptr } %call.res61, ptr %ret.ub.alloc63, align 8
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.else, %choice.then56
  %choice.res = phi ptr [ %ret.ub.alloc, %choice.then56 ], [ %ret.ub.alloc63, %choice.else ]
  store ptr %choice.res, ptr %var.cleaned, align 8
  store i64 0, ptr %"var.sp'", align 8
  store i64 0, ptr %"var.tabs'", align 8
  store i64 0, ptr %"var.idx'", align 8
  store i64 0, ptr %loop.idx.530, align 8
  %cycle.prev.u64 = load i64, ptr %var._, align 8
  %cycle.prev.i65 = load i64, ptr %var._i, align 8
  br label %loop.header.530

loop.header.530:                                  ; preds = %loop.latch.530, %choice.exit57
  %counter.load66 = load i64, ptr %loop.idx.530, align 8
  br label %loop.body.530

loop.body.530:                                    ; preds = %loop.header.530
  %loop.rel.i67 = sub i64 %counter.load66, 0
  store i64 1, ptr %loop.step.530, align 8
  store i64 %loop.rel.i67, ptr %var._i68, align 8
  store i64 %counter.load66, ptr %var._69, align 8
  %var.load70 = load i64, ptr %"var.idx'", align 8
  %var.load71 = load ptr, ptr %var.cleaned, align 8
  %str.len.query72 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %str.len.query73 = load i64, ptr %str.len.query72, align 8
  %str.len.query74 = and i64 %str.len.query73, 281474976710655
  %cmptmp75 = icmp sge i64 %var.load70, %str.len.query74
  br i1 %cmptmp75, label %choice.then76, label %choice.exit77

loop.exit.nat.530:                                ; No predecessors!
  br label %loop.exit.530

loop.latch.530:                                   ; preds = %choice.exit96
  %step.val110 = load i64, ptr %loop.step.530, align 8
  %loop.next111 = add i64 %counter.load66, %step.val110
  store i64 %loop.next111, ptr %loop.idx.530, align 8
  br label %loop.header.530

loop.exit.530:                                    ; preds = %choice.else104, %choice.then76, %loop.exit.nat.530
  store i64 %cycle.prev.u64, ptr %var._, align 8
  store i64 %cycle.prev.i65, ptr %var._i, align 8
  %var.load112 = load i64, ptr %"var.sp'", align 8
  %var.load113 = load i64, ptr %"var.tabs'", align 8
  %multmp = mul i64 %var.load113, 3
  %addtmp114 = add i64 %var.load112, %multmp
  store i64 %addtmp114, ptr %var.eff_indent, align 8
  %var.load115 = load i64, ptr %"var.st'", align 8
  %cmptmp116 = icmp eq i64 %var.load115, 0
  br i1 %cmptmp116, label %and.531.then, label %and.531.else

choice.then76:                                    ; preds = %loop.body.530
  br label %loop.exit.530

choice.exit77:                                    ; preds = %loop.body.530
  %var.load78 = load ptr, ptr %var.cleaned, align 8
  %s.read.len79 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 0
  %s.read.len80 = load i64, ptr %s.read.len79, align 8
  %s.read.len81 = and i64 %s.read.len80, 281474976710655
  %s.read.data82 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %s.read.data83 = load ptr, ptr %s.read.data82, align 8
  %var.load84 = load i64, ptr %"var.idx'", align 8
  %idx.oob85 = icmp uge i64 %var.load84, %s.read.len81
  br i1 %idx.oob85, label %idx_oob87, label %idx_ok86

idx_ok86:                                         ; preds = %abort.dead88, %choice.exit77
  %s.byte.gep89 = getelementptr i8, ptr %s.read.data83, i64 %var.load84
  %s.byte90 = load i8, ptr %s.byte.gep89, align 1
  %s.byte.val91 = zext i8 %s.byte90 to i64
  store i64 %s.byte.val91, ptr %var.c, align 8
  %var.load92 = load i64, ptr %var.c, align 8
  %cmptmp93 = icmp eq i64 %var.load92, 32
  br i1 %cmptmp93, label %choice.then94, label %choice.else95

idx_oob87:                                        ; preds = %choice.exit77
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %idx_ok86

choice.then94:                                    ; preds = %idx_ok86
  %var.load97 = load i64, ptr %"var.sp'", align 8
  %addtmp98 = add i64 %var.load97, 1
  store i64 %addtmp98, ptr %"var.sp'", align 8
  %var.load99 = load i64, ptr %"var.idx'", align 8
  %addtmp100 = add i64 %var.load99, 1
  store i64 %addtmp100, ptr %"var.idx'", align 8
  br label %choice.exit96

choice.else95:                                    ; preds = %idx_ok86
  %var.load101 = load i64, ptr %var.c, align 8
  %cmptmp102 = icmp eq i64 %var.load101, 9
  br i1 %cmptmp102, label %choice.then103, label %choice.else104

choice.exit96:                                    ; preds = %choice.exit105, %choice.then94
  br label %loop.latch.530

choice.then103:                                   ; preds = %choice.else95
  %var.load106 = load i64, ptr %"var.tabs'", align 8
  %addtmp107 = add i64 %var.load106, 1
  store i64 %addtmp107, ptr %"var.tabs'", align 8
  %var.load108 = load i64, ptr %"var.idx'", align 8
  %addtmp109 = add i64 %var.load108, 1
  store i64 %addtmp109, ptr %"var.idx'", align 8
  br label %choice.exit105

choice.else104:                                   ; preds = %choice.else95
  br label %loop.exit.530

choice.exit105:                                   ; preds = %choice.then103
  br label %choice.exit96

and.531.then:                                     ; preds = %loop.exit.530
  %var.load117 = load i64, ptr %"var.idx'", align 8
  %var.load118 = load ptr, ptr %var.cleaned, align 8
  %str.len.query119 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %str.len.query120 = load i64, ptr %str.len.query119, align 8
  %str.len.query121 = and i64 %str.len.query120, 281474976710655
  %cmptmp122 = icmp eq i64 %var.load117, %str.len.query121
  br label %and.531.exit

and.531.else:                                     ; preds = %loop.exit.530
  br label %and.531.exit

and.531.exit:                                     ; preds = %and.531.else, %and.531.then
  %and.531.phi = phi i1 [ %cmptmp122, %and.531.then ], [ %cmptmp116, %and.531.else ]
  store i1 %and.531.phi, ptr %var.is_blank, align 1
  %var.load123 = load i64, ptr %"var.st'", align 8
  %cmptmp124 = icmp eq i64 %var.load123, 0
  br i1 %cmptmp124, label %and.532.then, label %and.532.else

and.532.then:                                     ; preds = %and.531.exit
  %var.load125 = load i1, ptr %var.is_blank, align 1
  %nottmp = xor i1 %var.load125, true
  br label %and.532.exit

and.532.else:                                     ; preds = %and.531.exit
  br label %and.532.exit

and.532.exit:                                     ; preds = %and.532.else, %and.532.then
  %and.532.phi = phi i1 [ %nottmp, %and.532.then ], [ %cmptmp124, %and.532.else ]
  br i1 %and.532.phi, label %and.533.then, label %and.533.else

and.533.then:                                     ; preds = %and.532.exit
  %var.load126 = load i64, ptr %"var.idx'", align 8
  %addtmp127 = add i64 %var.load126, 1
  %var.load128 = load ptr, ptr %var.cleaned, align 8
  %str.len.query129 = getelementptr inbounds { i64, ptr }, ptr %var.load128, i32 0, i32 0
  %str.len.query130 = load i64, ptr %str.len.query129, align 8
  %str.len.query131 = and i64 %str.len.query130, 281474976710655
  %cmptmp132 = icmp slt i64 %addtmp127, %str.len.query131
  br label %and.533.exit

and.533.else:                                     ; preds = %and.532.exit
  br label %and.533.exit

and.533.exit:                                     ; preds = %and.533.else, %and.533.then
  %and.533.phi = phi i1 [ %cmptmp132, %and.533.then ], [ %and.532.phi, %and.533.else ]
  br i1 %and.533.phi, label %and.534.then, label %and.534.else

and.534.then:                                     ; preds = %and.533.exit
  %var.load133 = load ptr, ptr %var.cleaned, align 8
  %s.read.len134 = getelementptr inbounds { i64, ptr }, ptr %var.load133, i32 0, i32 0
  %s.read.len135 = load i64, ptr %s.read.len134, align 8
  %s.read.len136 = and i64 %s.read.len135, 281474976710655
  %s.read.data137 = getelementptr inbounds { i64, ptr }, ptr %var.load133, i32 0, i32 1
  %s.read.data138 = load ptr, ptr %s.read.data137, align 8
  %var.load139 = load i64, ptr %"var.idx'", align 8
  %idx.oob140 = icmp uge i64 %var.load139, %s.read.len136
  br i1 %idx.oob140, label %idx_oob142, label %idx_ok141

and.534.else:                                     ; preds = %and.533.exit
  br label %and.534.exit

and.534.exit:                                     ; preds = %and.534.else, %idx_ok141
  %and.534.phi = phi i1 [ %cmptmp147, %idx_ok141 ], [ %and.533.phi, %and.534.else ]
  br i1 %and.534.phi, label %and.535.then, label %and.535.else

idx_ok141:                                        ; preds = %abort.dead143, %and.534.then
  %s.byte.gep144 = getelementptr i8, ptr %s.read.data138, i64 %var.load139
  %s.byte145 = load i8, ptr %s.byte.gep144, align 1
  %s.byte.val146 = zext i8 %s.byte145 to i64
  %cmptmp147 = icmp eq i64 %s.byte.val146, 47
  br label %and.534.exit

idx_oob142:                                       ; preds = %and.534.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead143:                                    ; No predecessors!
  br label %idx_ok141

and.535.then:                                     ; preds = %and.534.exit
  %var.load148 = load ptr, ptr %var.cleaned, align 8
  %s.read.len149 = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 0
  %s.read.len150 = load i64, ptr %s.read.len149, align 8
  %s.read.len151 = and i64 %s.read.len150, 281474976710655
  %s.read.data152 = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 1
  %s.read.data153 = load ptr, ptr %s.read.data152, align 8
  %var.load154 = load i64, ptr %"var.idx'", align 8
  %addtmp155 = add i64 %var.load154, 1
  %idx.oob156 = icmp uge i64 %addtmp155, %s.read.len151
  br i1 %idx.oob156, label %idx_oob158, label %idx_ok157

and.535.else:                                     ; preds = %and.534.exit
  br label %and.535.exit

and.535.exit:                                     ; preds = %and.535.else, %or.536.exit
  %and.535.phi = phi i1 [ %or.536.phi, %or.536.exit ], [ %and.534.phi, %and.535.else ]
  store i1 %and.535.phi, ptr %var.is_comm, align 1
  %var.load180 = load ptr, ptr %var.cleaned, align 8
  %var.load181 = load i64, ptr %"var.st'", align 8
  %call.res182 = call i64 @"formatter::scan_line_state"(ptr %var.load180, i64 %var.load181)
  store i64 %call.res182, ptr %var.next_st, align 8
  %var.load183 = load ptr, ptr %var.cleaned, align 8
  %var.load184 = load i64, ptr %"var.st'", align 8
  %var.load185 = load i64, ptr %var.next_st, align 8
  %var.load186 = load i64, ptr %var.eff_indent, align 8
  %var.load187 = load i64, ptr %"var.tabs'", align 8
  %cmptmp188 = icmp sgt i64 %var.load187, 0
  %var.load189 = load i1, ptr %var.is_blank, align 1
  %var.load190 = load i1, ptr %var.is_comm, align 1
  %arena.cur191 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load183, ptr %rec.fld, align 8
  %rec.fld192 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load184, ptr %rec.fld192, align 8
  %rec.fld193 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load185, ptr %rec.fld193, align 8
  %rec.fld194 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load186, ptr %rec.fld194, align 8
  %rec.fld195 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i1 %cmptmp188, ptr %rec.fld195, align 1
  %rec.fld196 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load189, ptr %rec.fld196, align 1
  %rec.fld197 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 %var.load190, ptr %rec.fld197, align 1
  %a.load = load ptr, ptr %var.res, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

idx_ok157:                                        ; preds = %abort.dead159, %and.535.then
  %s.byte.gep160 = getelementptr i8, ptr %s.read.data153, i64 %addtmp155
  %s.byte161 = load i8, ptr %s.byte.gep160, align 1
  %s.byte.val162 = zext i8 %s.byte161 to i64
  %cmptmp163 = icmp eq i64 %s.byte.val162, 47
  br i1 %cmptmp163, label %or.536.then, label %or.536.else

idx_oob158:                                       ; preds = %and.535.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead159:                                    ; No predecessors!
  br label %idx_ok157

or.536.then:                                      ; preds = %idx_ok157
  br label %or.536.exit

or.536.else:                                      ; preds = %idx_ok157
  %var.load164 = load ptr, ptr %var.cleaned, align 8
  %s.read.len165 = getelementptr inbounds { i64, ptr }, ptr %var.load164, i32 0, i32 0
  %s.read.len166 = load i64, ptr %s.read.len165, align 8
  %s.read.len167 = and i64 %s.read.len166, 281474976710655
  %s.read.data168 = getelementptr inbounds { i64, ptr }, ptr %var.load164, i32 0, i32 1
  %s.read.data169 = load ptr, ptr %s.read.data168, align 8
  %var.load170 = load i64, ptr %"var.idx'", align 8
  %addtmp171 = add i64 %var.load170, 1
  %idx.oob172 = icmp uge i64 %addtmp171, %s.read.len167
  br i1 %idx.oob172, label %idx_oob174, label %idx_ok173

or.536.exit:                                      ; preds = %idx_ok173, %or.536.then
  %or.536.phi = phi i1 [ %cmptmp163, %or.536.then ], [ %cmptmp179, %idx_ok173 ]
  br label %and.535.exit

idx_ok173:                                        ; preds = %abort.dead175, %or.536.else
  %s.byte.gep176 = getelementptr i8, ptr %s.read.data169, i64 %addtmp171
  %s.byte177 = load i8, ptr %s.byte.gep176, align 1
  %s.byte.val178 = zext i8 %s.byte177 to i64
  %cmptmp179 = icmp eq i64 %s.byte.val178, 42
  br label %or.536.exit

idx_oob174:                                       ; preds = %or.536.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead175:                                    ; No predecessors!
  br label %idx_ok173

a.create:                                         ; preds = %and.535.exit
  %arena.cur198 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 24)
  %arena.cur200 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 128)
  %a.len.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 0
  store i64 0, ptr %a.len.gep202, align 8
  %a.data.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 1
  store ptr %a.buf201, ptr %a.data.gep203, align 8
  %a.cap.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 2
  store i64 16, ptr %a.cap.gep204, align 8
  store ptr %a.create199, ptr %var.res, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.535.exit
  %a.load2 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len205 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap206 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len205, %a.cap206
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data207 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len208 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data207, i64 %a.cur.len208
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len208, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load209 = load i64, ptr %var.next_st, align 8
  store i64 %var.load209, ptr %"var.st'", align 8
  br label %loop.latch.526

a.create215:                                      ; preds = %loop.exit.526
  %arena.cur217 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create218 = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 24)
  %arena.cur219 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf220 = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 128)
  %a.len.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create218, i32 0, i32 0
  store i64 0, ptr %a.len.gep221, align 8
  %a.data.gep222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create218, i32 0, i32 1
  store ptr %a.buf220, ptr %a.data.gep222, align 8
  %a.cap.gep223 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create218, i32 0, i32 2
  store i64 16, ptr %a.cap.gep223, align 8
  store ptr %a.create218, ptr %var.res, align 8
  br label %a.after216

a.after216:                                       ; preds = %a.create215, %loop.exit.526
  %a.load2224 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2224
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
define internal void @dva_abort_arr_overflow_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"formatter::format_code_body"(ptr %0) #0 {
entry:
  %var.is_annot_colon = alloca i1, align 1
  %var.prev_c = alloca i64, align 8
  %var.need_sp = alloca i1, align 1
  %var.prev_b = alloca i64, align 8
  %var.c2 = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.550 = alloca i64, align 8
  %loop.idx.550 = alloca i64, align 8
  %"var.in_blk_comm'" = alloca i1, align 1
  %"var.str_triple'" = alloca i1, align 1
  %"var.in_str'" = alloca i1, align 1
  %"var.guard_closed'" = alloca i1, align 1
  %"var.bracket_depth'" = alloca i64, align 8
  %var.has_lead_guard = alloca i1, align 1
  %var.has_lead_neg_pipe = alloca i1, align 1
  %var.has_lead_pipe = alloca i1, align 1
  %"var.i'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.body = alloca ptr, align 8
  store ptr %0, ptr %var.body, align 8
  %var.load = load ptr, ptr %var.body, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  %addtmp = add i64 %var.load3, 16
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.buf.len4:                                       ; preds = %abort.dead, %str_ok
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  store i64 0, ptr %"var.i'", align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %var.load6, 1
  br i1 %cmptmp, label %and.537.then, label %and.537.else

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len4

and.537.then:                                     ; preds = %b.buf.len4
  %var.load7 = load ptr, ptr %var.body, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.537.else:                                     ; preds = %b.buf.len4
  br label %and.537.exit

and.537.exit:                                     ; preds = %and.537.else, %idx_ok
  %and.537.phi = phi i1 [ %cmptmp12, %idx_ok ], [ %cmptmp, %and.537.else ]
  br i1 %and.537.phi, label %and.538.then, label %and.538.else

idx_ok:                                           ; preds = %abort.dead11, %and.537.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp12 = icmp eq i64 %s.byte.val, 124
  br label %and.537.exit

idx_oob:                                          ; preds = %and.537.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %idx_ok

and.538.then:                                     ; preds = %and.537.exit
  %var.load13 = load ptr, ptr %var.body, align 8
  %s.read.len14 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len14, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data17 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data17, align 8
  %idx.oob19 = icmp uge i64 1, %s.read.len16
  br i1 %idx.oob19, label %idx_oob21, label %idx_ok20

and.538.else:                                     ; preds = %and.537.exit
  br label %and.538.exit

and.538.exit:                                     ; preds = %and.538.else, %idx_ok20
  %and.538.phi = phi i1 [ %cmptmp26, %idx_ok20 ], [ %and.537.phi, %and.538.else ]
  br i1 %and.538.phi, label %and.539.then, label %and.539.else

idx_ok20:                                         ; preds = %abort.dead22, %and.538.then
  %s.byte.gep23 = getelementptr i8, ptr %s.read.data18, i64 1
  %s.byte24 = load i8, ptr %s.byte.gep23, align 1
  %s.byte.val25 = zext i8 %s.byte24 to i64
  %cmptmp26 = icmp ne i64 %s.byte.val25, 124
  br label %and.538.exit

idx_oob21:                                        ; preds = %and.538.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead22:                                     ; No predecessors!
  br label %idx_ok20

and.539.then:                                     ; preds = %and.538.exit
  %var.load27 = load ptr, ptr %var.body, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load27, ptr @str.0.struct)
  %nottmp = xor i1 %call.res, true
  br label %and.539.exit

and.539.else:                                     ; preds = %and.538.exit
  br label %and.539.exit

and.539.exit:                                     ; preds = %and.539.else, %and.539.then
  %and.539.phi = phi i1 [ %nottmp, %and.539.then ], [ %and.538.phi, %and.539.else ]
  br i1 %and.539.phi, label %and.541.then, label %and.541.else

and.541.then:                                     ; preds = %and.539.exit
  %var.load28 = load ptr, ptr %var.body, align 8
  %call.res29 = call i1 @"formatter::starts_with_str"(ptr %var.load28, ptr @str.1.struct)
  %nottmp30 = xor i1 %call.res29, true
  br label %and.541.exit

and.541.else:                                     ; preds = %and.539.exit
  br label %and.541.exit

and.541.exit:                                     ; preds = %and.541.else, %and.541.then
  %and.541.phi = phi i1 [ %nottmp30, %and.541.then ], [ %and.539.phi, %and.541.else ]
  br i1 %and.541.phi, label %and.542.then, label %and.542.else

and.542.then:                                     ; preds = %and.541.exit
  %var.load31 = load ptr, ptr %var.body, align 8
  %call.res32 = call i1 @"formatter::starts_with_str"(ptr %var.load31, ptr @str.2.struct)
  %nottmp33 = xor i1 %call.res32, true
  br label %and.542.exit

and.542.else:                                     ; preds = %and.541.exit
  br label %and.542.exit

and.542.exit:                                     ; preds = %and.542.else, %and.542.then
  %and.542.phi = phi i1 [ %nottmp33, %and.542.then ], [ %and.541.phi, %and.542.else ]
  br i1 %and.542.phi, label %and.543.then, label %and.543.else

and.543.then:                                     ; preds = %and.542.exit
  %var.load34 = load ptr, ptr %var.body, align 8
  %call.res35 = call i1 @"formatter::starts_with_str"(ptr %var.load34, ptr @str.3.struct)
  %nottmp36 = xor i1 %call.res35, true
  br label %and.543.exit

and.543.else:                                     ; preds = %and.542.exit
  br label %and.543.exit

and.543.exit:                                     ; preds = %and.543.else, %and.543.then
  %and.543.phi = phi i1 [ %nottmp36, %and.543.then ], [ %and.542.phi, %and.543.else ]
  br i1 %and.543.phi, label %and.544.then, label %and.544.else

and.544.then:                                     ; preds = %and.543.exit
  %var.load37 = load ptr, ptr %var.body, align 8
  %call.res38 = call i1 @"formatter::starts_with_str"(ptr %var.load37, ptr @str.4.struct)
  %nottmp39 = xor i1 %call.res38, true
  br label %and.544.exit

and.544.else:                                     ; preds = %and.543.exit
  br label %and.544.exit

and.544.exit:                                     ; preds = %and.544.else, %and.544.then
  %and.544.phi = phi i1 [ %nottmp39, %and.544.then ], [ %and.543.phi, %and.544.else ]
  br i1 %and.544.phi, label %and.545.then, label %and.545.else

and.545.then:                                     ; preds = %and.544.exit
  %var.load40 = load ptr, ptr %var.body, align 8
  %s.read.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len42 = load i64, ptr %s.read.len41, align 8
  %s.read.len43 = and i64 %s.read.len42, 281474976710655
  %s.read.data44 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data45 = load ptr, ptr %s.read.data44, align 8
  %idx.oob46 = icmp uge i64 1, %s.read.len43
  br i1 %idx.oob46, label %idx_oob48, label %idx_ok47

and.545.else:                                     ; preds = %and.544.exit
  br label %and.545.exit

and.545.exit:                                     ; preds = %and.545.else, %choice.exit
  %and.545.phi = phi i1 [ %nottmp54, %choice.exit ], [ %and.544.phi, %and.545.else ]
  store i1 %and.545.phi, ptr %var.has_lead_pipe, align 1
  %var.load55 = load i64, ptr %var.n, align 8
  %cmptmp56 = icmp sgt i64 %var.load55, 2
  br i1 %cmptmp56, label %and.546.then, label %and.546.else

idx_ok47:                                         ; preds = %abort.dead49, %and.545.then
  %s.byte.gep50 = getelementptr i8, ptr %s.read.data45, i64 1
  %s.byte51 = load i8, ptr %s.byte.gep50, align 1
  %s.byte.val52 = zext i8 %s.byte51 to i64
  %val.match = icmp eq i64 %s.byte.val52, 32
  %val.match53 = icmp eq i64 %s.byte.val52, 9
  %case.or = or i1 %val.match, %val.match53
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob48:                                        ; preds = %and.545.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %idx_ok47

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp54 = xor i1 %choice.res, true
  br label %and.545.exit

choice.case:                                      ; preds = %idx_ok47
  br label %choice.exit

choice.next:                                      ; preds = %idx_ok47
  br label %choice.exit

and.546.then:                                     ; preds = %and.545.exit
  %var.load57 = load ptr, ptr %var.body, align 8
  %call.res58 = call i1 @"formatter::starts_with_str"(ptr %var.load57, ptr @str.5.struct)
  br label %and.546.exit

and.546.else:                                     ; preds = %and.545.exit
  br label %and.546.exit

and.546.exit:                                     ; preds = %and.546.else, %and.546.then
  %and.546.phi = phi i1 [ %call.res58, %and.546.then ], [ %cmptmp56, %and.546.else ]
  br i1 %and.546.phi, label %and.547.then, label %and.547.else

and.547.then:                                     ; preds = %and.546.exit
  %var.load59 = load ptr, ptr %var.body, align 8
  %s.read.len60 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 0
  %s.read.len61 = load i64, ptr %s.read.len60, align 8
  %s.read.len62 = and i64 %s.read.len61, 281474976710655
  %s.read.data63 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 1
  %s.read.data64 = load ptr, ptr %s.read.data63, align 8
  %idx.oob65 = icmp uge i64 2, %s.read.len62
  br i1 %idx.oob65, label %idx_oob67, label %idx_ok66

and.547.else:                                     ; preds = %and.546.exit
  br label %and.547.exit

and.547.exit:                                     ; preds = %and.547.else, %choice.exit72
  %and.547.phi = phi i1 [ %nottmp79, %choice.exit72 ], [ %and.546.phi, %and.547.else ]
  store i1 %and.547.phi, ptr %var.has_lead_neg_pipe, align 1
  %var.load80 = load i1, ptr %var.has_lead_pipe, align 1
  br i1 %var.load80, label %choice.then, label %choice.else

idx_ok66:                                         ; preds = %abort.dead68, %and.547.then
  %s.byte.gep69 = getelementptr i8, ptr %s.read.data64, i64 2
  %s.byte70 = load i8, ptr %s.byte.gep69, align 1
  %s.byte.val71 = zext i8 %s.byte70 to i64
  %val.match75 = icmp eq i64 %s.byte.val71, 32
  %val.match76 = icmp eq i64 %s.byte.val71, 9
  %case.or77 = or i1 %val.match75, %val.match76
  br i1 %case.or77, label %choice.case73, label %choice.next74

idx_oob67:                                        ; preds = %and.547.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead68:                                     ; No predecessors!
  br label %idx_ok66

choice.exit72:                                    ; preds = %choice.next74, %choice.case73
  %choice.res78 = phi i1 [ true, %choice.case73 ], [ false, %choice.next74 ]
  %nottmp79 = xor i1 %choice.res78, true
  br label %and.547.exit

choice.case73:                                    ; preds = %idx_ok66
  br label %choice.exit72

choice.next74:                                    ; preds = %idx_ok66
  br label %choice.exit72

choice.then:                                      ; preds = %and.547.exit
  %b.load = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.6.struct, align 8
  %app.str.len82 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len83 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len83, i64 %app.str.len82)
  %sum84 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf85 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf85, label %str_overflow_abort87, label %b.app.new.len86

choice.else:                                      ; preds = %and.547.exit
  %var.load100 = load i1, ptr %var.has_lead_neg_pipe, align 1
  br i1 %var.load100, label %choice.then101, label %choice.exit102

choice.exit81:                                    ; preds = %choice.exit102, %b.grow_done
  %var.load146 = load i64, ptr %var.n, align 8
  %cmptmp147 = icmp sgt i64 %var.load146, 0
  br i1 %cmptmp147, label %and.548.then, label %and.548.else

b.app.new.len86:                                  ; preds = %abort.dead88, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap89 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap89, %sum84
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort87:                             ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %b.app.new.len86

b.grow2:                                          ; preds = %b.app.new.len86
  %b.cap2 = mul i64 %b.cap89, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum84
  %b.new.cap = select i1 %b.cap.need, i64 %sum84, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len290 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data291 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum92 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf93 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf93, label %str_overflow_abort95, label %b.new.buf.len294

b.nogrow2:                                        ; preds = %b.app.new.len86
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len294
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data98 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data98, i64 %b.app.cur.len83
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len82, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data98, i64 %sum84
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum84, ptr %b.len.gep99, align 8
  store i64 1, ptr %"var.i'", align 8
  br label %choice.exit81

b.new.buf.len294:                                 ; preds = %abort.dead96, %b.grow2
  %arena.cur97 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 %sum92)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data291, i64 %b.cur.len290, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len290
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort95:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %b.new.buf.len294

choice.then101:                                   ; preds = %choice.else
  %b.load103 = load ptr, ptr %var.b, align 8
  %app.str.len104 = load i64, ptr @str.7.struct, align 8
  %app.str.len105 = and i64 %app.str.len104, 281474976710655
  %app.str.data106 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %b.app.cur.len107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load103, i32 0, i32 0
  %b.app.cur.len108 = load i64, ptr %b.app.cur.len107, align 8
  %b.app.new.len109 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len108, i64 %app.str.len105)
  %sum110 = extractvalue { i64, i1 } %b.app.new.len109, 0
  %ovf111 = extractvalue { i64, i1 } %b.app.new.len109, 1
  br i1 %ovf111, label %str_overflow_abort113, label %b.app.new.len112

choice.exit102:                                   ; preds = %b.grow_done120, %choice.else
  br label %choice.exit81

b.app.new.len112:                                 ; preds = %abort.dead114, %choice.then101
  %b.cap115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load103, i32 0, i32 2
  %b.cap116 = load i64, ptr %b.cap115, align 8
  %b.need.grow117 = icmp slt i64 %b.cap116, %sum110
  br i1 %b.need.grow117, label %b.grow2118, label %b.nogrow2119

str_overflow_abort113:                            ; preds = %choice.then101
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead114:                                    ; No predecessors!
  br label %b.app.new.len112

b.grow2118:                                       ; preds = %b.app.new.len112
  %b.cap2121 = mul i64 %b.cap116, 2
  %b.cap.small122 = icmp slt i64 %b.cap2121, 16
  %b.cap.grow123 = select i1 %b.cap.small122, i64 16, i64 %b.cap2121
  %b.cap.need124 = icmp slt i64 %b.cap.grow123, %sum110
  %b.new.cap125 = select i1 %b.cap.need124, i64 %sum110, i64 %b.cap.grow123
  %b.cur.len2126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load103, i32 0, i32 0
  %b.cur.len2127 = load i64, ptr %b.cur.len2126, align 8
  %b.cur.data2128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load103, i32 0, i32 1
  %b.cur.data2129 = load ptr, ptr %b.cur.data2128, align 8
  %b.new.buf.len2130 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap125, i64 1)
  %sum131 = extractvalue { i64, i1 } %b.new.buf.len2130, 0
  %ovf132 = extractvalue { i64, i1 } %b.new.buf.len2130, 1
  br i1 %ovf132, label %str_overflow_abort134, label %b.new.buf.len2133

b.nogrow2119:                                     ; preds = %b.app.new.len112
  br label %b.grow_done120

b.grow_done120:                                   ; preds = %b.nogrow2119, %b.new.buf.len2133
  %b.app.data141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load103, i32 0, i32 1
  %b.app.data142 = load ptr, ptr %b.app.data141, align 8
  %b.app.dst143 = getelementptr i8, ptr %b.app.data142, i64 %b.app.cur.len108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst143, ptr align 1 %app.str.data106, i64 %app.str.len105, i1 false)
  %b.app.nul144 = getelementptr i8, ptr %b.app.data142, i64 %sum110
  store i8 0, ptr %b.app.nul144, align 1
  %b.len.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load103, i32 0, i32 0
  store i64 %sum110, ptr %b.len.gep145, align 8
  store i64 2, ptr %"var.i'", align 8
  br label %choice.exit102

b.new.buf.len2133:                                ; preds = %abort.dead135, %b.grow2118
  %arena.cur136 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 %sum131)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2137, ptr align 1 %b.cur.data2129, i64 %b.cur.len2127, i1 false)
  %b.grow2.nul138 = getelementptr i8, ptr %b.new.buf2137, i64 %b.cur.len2127
  store i8 0, ptr %b.grow2.nul138, align 1
  %b.new.data2.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load103, i32 0, i32 1
  store ptr %b.new.buf2137, ptr %b.new.data2.gep139, align 8
  %b.new.cap2.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load103, i32 0, i32 2
  store i64 %b.new.cap125, ptr %b.new.cap2.gep140, align 8
  br label %b.grow_done120

str_overflow_abort134:                            ; preds = %b.grow2118
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead135:                                    ; No predecessors!
  br label %b.new.buf.len2133

and.548.then:                                     ; preds = %choice.exit81
  %var.load148 = load ptr, ptr %var.body, align 8
  %s.read.len149 = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 0
  %s.read.len150 = load i64, ptr %s.read.len149, align 8
  %s.read.len151 = and i64 %s.read.len150, 281474976710655
  %s.read.data152 = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 1
  %s.read.data153 = load ptr, ptr %s.read.data152, align 8
  %idx.oob154 = icmp uge i64 0, %s.read.len151
  br i1 %idx.oob154, label %idx_oob156, label %idx_ok155

and.548.else:                                     ; preds = %choice.exit81
  br label %and.548.exit

and.548.exit:                                     ; preds = %and.548.else, %or.549.exit
  %and.548.phi = phi i1 [ %or.549.phi, %or.549.exit ], [ %cmptmp147, %and.548.else ]
  store i1 %and.548.phi, ptr %var.has_lead_guard, align 1
  store i64 0, ptr %"var.bracket_depth'", align 8
  store i1 false, ptr %"var.guard_closed'", align 1
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  store i1 false, ptr %"var.in_blk_comm'", align 1
  store i64 0, ptr %loop.idx.550, align 8
  br label %loop.header.550

idx_ok155:                                        ; preds = %abort.dead157, %and.548.then
  %s.byte.gep158 = getelementptr i8, ptr %s.read.data153, i64 0
  %s.byte159 = load i8, ptr %s.byte.gep158, align 1
  %s.byte.val160 = zext i8 %s.byte159 to i64
  %cmptmp161 = icmp eq i64 %s.byte.val160, 91
  br i1 %cmptmp161, label %or.549.then, label %or.549.else

idx_oob156:                                       ; preds = %and.548.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead157:                                    ; No predecessors!
  br label %idx_ok155

or.549.then:                                      ; preds = %idx_ok155
  br label %or.549.exit

or.549.else:                                      ; preds = %idx_ok155
  %var.load162 = load ptr, ptr %var.body, align 8
  %call.res163 = call i1 @"formatter::starts_with_str"(ptr %var.load162, ptr @str.8.struct)
  br label %or.549.exit

or.549.exit:                                      ; preds = %or.549.else, %or.549.then
  %or.549.phi = phi i1 [ %cmptmp161, %or.549.then ], [ %call.res163, %or.549.else ]
  br label %and.548.exit

loop.header.550:                                  ; preds = %loop.latch.550, %and.548.exit
  %counter.load = load i64, ptr %loop.idx.550, align 8
  br label %loop.body.550

loop.body.550:                                    ; preds = %loop.header.550
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.550, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load164 = load i64, ptr %"var.i'", align 8
  %var.load165 = load i64, ptr %var.n, align 8
  %cmptmp166 = icmp sge i64 %var.load164, %var.load165
  br i1 %cmptmp166, label %choice.then167, label %choice.exit168

loop.exit.nat.550:                                ; No predecessors!
  br label %loop.exit.550

loop.latch.550:                                   ; preds = %choice.exit232
  %step.val = load i64, ptr %loop.step.550, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.550, align 8
  br label %loop.header.550

loop.exit.550:                                    ; preds = %choice.then167, %loop.exit.nat.550
  %var.load1381 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1381, i32 0, i32 0
  %b.freeze.len1382 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1381, i32 0, i32 1
  %b.freeze.data1383 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then167:                                   ; preds = %loop.body.550
  br label %loop.exit.550

choice.exit168:                                   ; preds = %loop.body.550
  %var.load169 = load ptr, ptr %var.body, align 8
  %s.read.len170 = getelementptr inbounds { i64, ptr }, ptr %var.load169, i32 0, i32 0
  %s.read.len171 = load i64, ptr %s.read.len170, align 8
  %s.read.len172 = and i64 %s.read.len171, 281474976710655
  %s.read.data173 = getelementptr inbounds { i64, ptr }, ptr %var.load169, i32 0, i32 1
  %s.read.data174 = load ptr, ptr %s.read.data173, align 8
  %var.load175 = load i64, ptr %"var.i'", align 8
  %idx.oob176 = icmp uge i64 %var.load175, %s.read.len172
  br i1 %idx.oob176, label %idx_oob178, label %idx_ok177

idx_ok177:                                        ; preds = %abort.dead179, %choice.exit168
  %s.byte.gep180 = getelementptr i8, ptr %s.read.data174, i64 %var.load175
  %s.byte181 = load i8, ptr %s.byte.gep180, align 1
  %s.byte.val182 = zext i8 %s.byte181 to i64
  store i64 %s.byte.val182, ptr %var.c, align 8
  %var.load183 = load i64, ptr %"var.i'", align 8
  %addtmp184 = add i64 %var.load183, 1
  %var.load185 = load i64, ptr %var.n, align 8
  %cmptmp186 = icmp slt i64 %addtmp184, %var.load185
  br i1 %cmptmp186, label %choice.then187, label %choice.else188

idx_oob178:                                       ; preds = %choice.exit168
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead179:                                    ; No predecessors!
  br label %idx_ok177

choice.then187:                                   ; preds = %idx_ok177
  %var.load190 = load ptr, ptr %var.body, align 8
  %s.read.len191 = getelementptr inbounds { i64, ptr }, ptr %var.load190, i32 0, i32 0
  %s.read.len192 = load i64, ptr %s.read.len191, align 8
  %s.read.len193 = and i64 %s.read.len192, 281474976710655
  %s.read.data194 = getelementptr inbounds { i64, ptr }, ptr %var.load190, i32 0, i32 1
  %s.read.data195 = load ptr, ptr %s.read.data194, align 8
  %var.load196 = load i64, ptr %"var.i'", align 8
  %addtmp197 = add i64 %var.load196, 1
  %idx.oob198 = icmp uge i64 %addtmp197, %s.read.len193
  br i1 %idx.oob198, label %idx_oob200, label %idx_ok199

choice.else188:                                   ; preds = %idx_ok177
  br label %choice.exit189

choice.exit189:                                   ; preds = %choice.else188, %idx_ok199
  %choice.res205 = phi i64 [ %s.byte.val204, %idx_ok199 ], [ 0, %choice.else188 ]
  store i64 %choice.res205, ptr %var.c1, align 8
  %var.load206 = load i64, ptr %"var.i'", align 8
  %addtmp207 = add i64 %var.load206, 2
  %var.load208 = load i64, ptr %var.n, align 8
  %cmptmp209 = icmp slt i64 %addtmp207, %var.load208
  br i1 %cmptmp209, label %choice.then210, label %choice.else211

idx_ok199:                                        ; preds = %abort.dead201, %choice.then187
  %s.byte.gep202 = getelementptr i8, ptr %s.read.data195, i64 %addtmp197
  %s.byte203 = load i8, ptr %s.byte.gep202, align 1
  %s.byte.val204 = zext i8 %s.byte203 to i64
  br label %choice.exit189

idx_oob200:                                       ; preds = %choice.then187
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead201:                                    ; No predecessors!
  br label %idx_ok199

choice.then210:                                   ; preds = %choice.exit189
  %var.load213 = load ptr, ptr %var.body, align 8
  %s.read.len214 = getelementptr inbounds { i64, ptr }, ptr %var.load213, i32 0, i32 0
  %s.read.len215 = load i64, ptr %s.read.len214, align 8
  %s.read.len216 = and i64 %s.read.len215, 281474976710655
  %s.read.data217 = getelementptr inbounds { i64, ptr }, ptr %var.load213, i32 0, i32 1
  %s.read.data218 = load ptr, ptr %s.read.data217, align 8
  %var.load219 = load i64, ptr %"var.i'", align 8
  %addtmp220 = add i64 %var.load219, 2
  %idx.oob221 = icmp uge i64 %addtmp220, %s.read.len216
  br i1 %idx.oob221, label %idx_oob223, label %idx_ok222

choice.else211:                                   ; preds = %choice.exit189
  br label %choice.exit212

choice.exit212:                                   ; preds = %choice.else211, %idx_ok222
  %choice.res228 = phi i64 [ %s.byte.val227, %idx_ok222 ], [ 0, %choice.else211 ]
  store i64 %choice.res228, ptr %var.c2, align 8
  %var.load229 = load i1, ptr %"var.in_blk_comm'", align 1
  br i1 %var.load229, label %choice.then230, label %choice.else231

idx_ok222:                                        ; preds = %abort.dead224, %choice.then210
  %s.byte.gep225 = getelementptr i8, ptr %s.read.data218, i64 %addtmp220
  %s.byte226 = load i8, ptr %s.byte.gep225, align 1
  %s.byte.val227 = zext i8 %s.byte226 to i64
  br label %choice.exit212

idx_oob223:                                       ; preds = %choice.then210
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead224:                                    ; No predecessors!
  br label %idx_ok222

choice.then230:                                   ; preds = %choice.exit212
  %b.load233 = load ptr, ptr %var.b, align 8
  %var.load234 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load234, 0
  %b.b.le255 = icmp sle i64 %var.load234, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else231:                                   ; preds = %choice.exit212
  %var.load304 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load304, label %choice.then305, label %choice.else306

choice.exit232:                                   ; preds = %choice.exit307, %choice.exit258
  br label %loop.latch.550

b.byte_ok:                                        ; preds = %abort.dead235, %choice.then230
  %b.byte.i8 = trunc i64 %var.load234 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 0
  %b.len236 = load i64, ptr %b.len, align 8
  %b.cap237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 2
  %b.cap238 = load i64, ptr %b.cap237, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 1
  %b.data239 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len236, %b.cap238
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then230
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead235:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2240 = mul i64 %b.cap238, 2
  %b.cap.small241 = icmp slt i64 %b.cap2240, 16
  %b.new.cap242 = select i1 %b.cap.small241, i64 16, i64 %b.cap2240
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap242, i64 1)
  %sum243 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf244 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf244, label %str_overflow_abort246, label %b.new.buf.len245

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len245
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 1
  %b.cur.data249 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 0
  %b.cur.len250 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data249, i64 %b.cur.len250
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len250, 1
  %b.nul = getelementptr i8, ptr %b.cur.data249, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep251, align 8
  %var.load252 = load i64, ptr %var.c, align 8
  %cmptmp253 = icmp eq i64 %var.load252, 42
  br i1 %cmptmp253, label %and.551.then, label %and.551.else

b.new.buf.len245:                                 ; preds = %abort.dead247, %b.grow
  %arena.cur248 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 %sum243)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data239, i64 %b.len236, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len236
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 2
  store i64 %b.new.cap242, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort246:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead247:                                    ; No predecessors!
  br label %b.new.buf.len245

and.551.then:                                     ; preds = %b.push_done
  %var.load254 = load i64, ptr %var.c1, align 8
  %cmptmp255 = icmp eq i64 %var.load254, 47
  br label %and.551.exit

and.551.else:                                     ; preds = %b.push_done
  br label %and.551.exit

and.551.exit:                                     ; preds = %and.551.else, %and.551.then
  %and.551.phi = phi i1 [ %cmptmp255, %and.551.then ], [ %cmptmp253, %and.551.else ]
  br i1 %and.551.phi, label %choice.then256, label %choice.else257

choice.then256:                                   ; preds = %and.551.exit
  %b.load259 = load ptr, ptr %var.b, align 8
  %var.load260 = load i64, ptr %var.c1, align 8
  %b.b.ge0261 = icmp sge i64 %var.load260, 0
  %b.b.le255262 = icmp sle i64 %var.load260, 255
  %b.byte.range263 = and i1 %b.b.ge0261, %b.b.le255262
  br i1 %b.byte.range263, label %b.byte_ok264, label %b.byte_err265

choice.else257:                                   ; preds = %and.551.exit
  %var.load302 = load i64, ptr %"var.i'", align 8
  %addtmp303 = add i64 %var.load302, 1
  store i64 %addtmp303, ptr %"var.i'", align 8
  br label %choice.exit258

choice.exit258:                                   ; preds = %choice.else257, %b.push_done277
  br label %choice.exit232

b.byte_ok264:                                     ; preds = %abort.dead266, %choice.then256
  %b.byte.i8267 = trunc i64 %var.load260 to i8
  %b.len268 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load259, i32 0, i32 0
  %b.len269 = load i64, ptr %b.len268, align 8
  %b.cap270 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load259, i32 0, i32 2
  %b.cap271 = load i64, ptr %b.cap270, align 8
  %b.data272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load259, i32 0, i32 1
  %b.data273 = load ptr, ptr %b.data272, align 8
  %b.needs.grow274 = icmp eq i64 %b.len269, %b.cap271
  br i1 %b.needs.grow274, label %b.grow275, label %b.nogrow276

b.byte_err265:                                    ; preds = %choice.then256
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead266:                                    ; No predecessors!
  br label %b.byte_ok264

b.grow275:                                        ; preds = %b.byte_ok264
  %b.cap2278 = mul i64 %b.cap271, 2
  %b.cap.small279 = icmp slt i64 %b.cap2278, 16
  %b.new.cap280 = select i1 %b.cap.small279, i64 16, i64 %b.cap2278
  %b.new.buf.len281 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap280, i64 1)
  %sum282 = extractvalue { i64, i1 } %b.new.buf.len281, 0
  %ovf283 = extractvalue { i64, i1 } %b.new.buf.len281, 1
  br i1 %ovf283, label %str_overflow_abort285, label %b.new.buf.len284

b.nogrow276:                                      ; preds = %b.byte_ok264
  br label %b.push_done277

b.push_done277:                                   ; preds = %b.nogrow276, %b.new.buf.len284
  %b.cur.data292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load259, i32 0, i32 1
  %b.cur.data293 = load ptr, ptr %b.cur.data292, align 8
  %b.cur.len294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load259, i32 0, i32 0
  %b.cur.len295 = load i64, ptr %b.cur.len294, align 8
  %b.byte.gep296 = getelementptr i8, ptr %b.cur.data293, i64 %b.cur.len295
  store i8 %b.byte.i8267, ptr %b.byte.gep296, align 1
  %b.next.len297 = add i64 %b.cur.len295, 1
  %b.nul298 = getelementptr i8, ptr %b.cur.data293, i64 %b.next.len297
  store i8 0, ptr %b.nul298, align 1
  %b.len.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load259, i32 0, i32 0
  store i64 %b.next.len297, ptr %b.len.gep299, align 8
  store i1 false, ptr %"var.in_blk_comm'", align 1
  %var.load300 = load i64, ptr %"var.i'", align 8
  %addtmp301 = add i64 %var.load300, 2
  store i64 %addtmp301, ptr %"var.i'", align 8
  br label %choice.exit258

b.new.buf.len284:                                 ; preds = %abort.dead286, %b.grow275
  %arena.cur287 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 %sum282)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf288, ptr align 1 %b.data273, i64 %b.len269, i1 false)
  %b.grow.nul289 = getelementptr i8, ptr %b.new.buf288, i64 %b.len269
  store i8 0, ptr %b.grow.nul289, align 1
  %b.new.data.gep290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load259, i32 0, i32 1
  store ptr %b.new.buf288, ptr %b.new.data.gep290, align 8
  %b.new.cap.gep291 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load259, i32 0, i32 2
  store i64 %b.new.cap280, ptr %b.new.cap.gep291, align 8
  br label %b.push_done277

str_overflow_abort285:                            ; preds = %b.grow275
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead286:                                    ; No predecessors!
  br label %b.new.buf.len284

choice.then305:                                   ; preds = %choice.else231
  %b.load308 = load ptr, ptr %var.b, align 8
  %var.load309 = load i64, ptr %var.c, align 8
  %b.b.ge0310 = icmp sge i64 %var.load309, 0
  %b.b.le255311 = icmp sle i64 %var.load309, 255
  %b.byte.range312 = and i1 %b.b.ge0310, %b.b.le255311
  br i1 %b.byte.range312, label %b.byte_ok313, label %b.byte_err314

choice.else306:                                   ; preds = %choice.else231
  %var.load506 = load i64, ptr %var.c, align 8
  %cmptmp507 = icmp eq i64 %var.load506, 47
  br i1 %cmptmp507, label %and.555.then, label %and.555.else

choice.exit307:                                   ; preds = %choice.exit512, %choice.exit357
  br label %choice.exit232

b.byte_ok313:                                     ; preds = %abort.dead315, %choice.then305
  %b.byte.i8316 = trunc i64 %var.load309 to i8
  %b.len317 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load308, i32 0, i32 0
  %b.len318 = load i64, ptr %b.len317, align 8
  %b.cap319 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load308, i32 0, i32 2
  %b.cap320 = load i64, ptr %b.cap319, align 8
  %b.data321 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load308, i32 0, i32 1
  %b.data322 = load ptr, ptr %b.data321, align 8
  %b.needs.grow323 = icmp eq i64 %b.len318, %b.cap320
  br i1 %b.needs.grow323, label %b.grow324, label %b.nogrow325

b.byte_err314:                                    ; preds = %choice.then305
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead315:                                    ; No predecessors!
  br label %b.byte_ok313

b.grow324:                                        ; preds = %b.byte_ok313
  %b.cap2327 = mul i64 %b.cap320, 2
  %b.cap.small328 = icmp slt i64 %b.cap2327, 16
  %b.new.cap329 = select i1 %b.cap.small328, i64 16, i64 %b.cap2327
  %b.new.buf.len330 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap329, i64 1)
  %sum331 = extractvalue { i64, i1 } %b.new.buf.len330, 0
  %ovf332 = extractvalue { i64, i1 } %b.new.buf.len330, 1
  br i1 %ovf332, label %str_overflow_abort334, label %b.new.buf.len333

b.nogrow325:                                      ; preds = %b.byte_ok313
  br label %b.push_done326

b.push_done326:                                   ; preds = %b.nogrow325, %b.new.buf.len333
  %b.cur.data341 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load308, i32 0, i32 1
  %b.cur.data342 = load ptr, ptr %b.cur.data341, align 8
  %b.cur.len343 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load308, i32 0, i32 0
  %b.cur.len344 = load i64, ptr %b.cur.len343, align 8
  %b.byte.gep345 = getelementptr i8, ptr %b.cur.data342, i64 %b.cur.len344
  store i8 %b.byte.i8316, ptr %b.byte.gep345, align 1
  %b.next.len346 = add i64 %b.cur.len344, 1
  %b.nul347 = getelementptr i8, ptr %b.cur.data342, i64 %b.next.len346
  store i8 0, ptr %b.nul347, align 1
  %b.len.gep348 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load308, i32 0, i32 0
  store i64 %b.next.len346, ptr %b.len.gep348, align 8
  %var.load349 = load i64, ptr %var.c, align 8
  %cmptmp350 = icmp eq i64 %var.load349, 92
  br i1 %cmptmp350, label %and.552.then, label %and.552.else

b.new.buf.len333:                                 ; preds = %abort.dead335, %b.grow324
  %arena.cur336 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf337 = call ptr @dva_arena_alloc(ptr %arena.cur336, i64 %sum331)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf337, ptr align 1 %b.data322, i64 %b.len318, i1 false)
  %b.grow.nul338 = getelementptr i8, ptr %b.new.buf337, i64 %b.len318
  store i8 0, ptr %b.grow.nul338, align 1
  %b.new.data.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load308, i32 0, i32 1
  store ptr %b.new.buf337, ptr %b.new.data.gep339, align 8
  %b.new.cap.gep340 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load308, i32 0, i32 2
  store i64 %b.new.cap329, ptr %b.new.cap.gep340, align 8
  br label %b.push_done326

str_overflow_abort334:                            ; preds = %b.grow324
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead335:                                    ; No predecessors!
  br label %b.new.buf.len333

and.552.then:                                     ; preds = %b.push_done326
  %var.load351 = load i64, ptr %"var.i'", align 8
  %addtmp352 = add i64 %var.load351, 1
  %var.load353 = load i64, ptr %var.n, align 8
  %cmptmp354 = icmp slt i64 %addtmp352, %var.load353
  br label %and.552.exit

and.552.else:                                     ; preds = %b.push_done326
  br label %and.552.exit

and.552.exit:                                     ; preds = %and.552.else, %and.552.then
  %and.552.phi = phi i1 [ %cmptmp354, %and.552.then ], [ %cmptmp350, %and.552.else ]
  br i1 %and.552.phi, label %choice.then355, label %choice.else356

choice.then355:                                   ; preds = %and.552.exit
  %b.load358 = load ptr, ptr %var.b, align 8
  %var.load359 = load i64, ptr %var.c1, align 8
  %b.b.ge0360 = icmp sge i64 %var.load359, 0
  %b.b.le255361 = icmp sle i64 %var.load359, 255
  %b.byte.range362 = and i1 %b.b.ge0360, %b.b.le255361
  br i1 %b.byte.range362, label %b.byte_ok363, label %b.byte_err364

choice.else356:                                   ; preds = %and.552.exit
  %var.load401 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load401, label %choice.then402, label %choice.else403

choice.exit357:                                   ; preds = %choice.exit404, %b.push_done376
  br label %choice.exit307

b.byte_ok363:                                     ; preds = %abort.dead365, %choice.then355
  %b.byte.i8366 = trunc i64 %var.load359 to i8
  %b.len367 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load358, i32 0, i32 0
  %b.len368 = load i64, ptr %b.len367, align 8
  %b.cap369 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load358, i32 0, i32 2
  %b.cap370 = load i64, ptr %b.cap369, align 8
  %b.data371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load358, i32 0, i32 1
  %b.data372 = load ptr, ptr %b.data371, align 8
  %b.needs.grow373 = icmp eq i64 %b.len368, %b.cap370
  br i1 %b.needs.grow373, label %b.grow374, label %b.nogrow375

b.byte_err364:                                    ; preds = %choice.then355
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead365:                                    ; No predecessors!
  br label %b.byte_ok363

b.grow374:                                        ; preds = %b.byte_ok363
  %b.cap2377 = mul i64 %b.cap370, 2
  %b.cap.small378 = icmp slt i64 %b.cap2377, 16
  %b.new.cap379 = select i1 %b.cap.small378, i64 16, i64 %b.cap2377
  %b.new.buf.len380 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap379, i64 1)
  %sum381 = extractvalue { i64, i1 } %b.new.buf.len380, 0
  %ovf382 = extractvalue { i64, i1 } %b.new.buf.len380, 1
  br i1 %ovf382, label %str_overflow_abort384, label %b.new.buf.len383

b.nogrow375:                                      ; preds = %b.byte_ok363
  br label %b.push_done376

b.push_done376:                                   ; preds = %b.nogrow375, %b.new.buf.len383
  %b.cur.data391 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load358, i32 0, i32 1
  %b.cur.data392 = load ptr, ptr %b.cur.data391, align 8
  %b.cur.len393 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load358, i32 0, i32 0
  %b.cur.len394 = load i64, ptr %b.cur.len393, align 8
  %b.byte.gep395 = getelementptr i8, ptr %b.cur.data392, i64 %b.cur.len394
  store i8 %b.byte.i8366, ptr %b.byte.gep395, align 1
  %b.next.len396 = add i64 %b.cur.len394, 1
  %b.nul397 = getelementptr i8, ptr %b.cur.data392, i64 %b.next.len396
  store i8 0, ptr %b.nul397, align 1
  %b.len.gep398 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load358, i32 0, i32 0
  store i64 %b.next.len396, ptr %b.len.gep398, align 8
  %var.load399 = load i64, ptr %"var.i'", align 8
  %addtmp400 = add i64 %var.load399, 2
  store i64 %addtmp400, ptr %"var.i'", align 8
  br label %choice.exit357

b.new.buf.len383:                                 ; preds = %abort.dead385, %b.grow374
  %arena.cur386 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf387 = call ptr @dva_arena_alloc(ptr %arena.cur386, i64 %sum381)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf387, ptr align 1 %b.data372, i64 %b.len368, i1 false)
  %b.grow.nul388 = getelementptr i8, ptr %b.new.buf387, i64 %b.len368
  store i8 0, ptr %b.grow.nul388, align 1
  %b.new.data.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load358, i32 0, i32 1
  store ptr %b.new.buf387, ptr %b.new.data.gep389, align 8
  %b.new.cap.gep390 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load358, i32 0, i32 2
  store i64 %b.new.cap379, ptr %b.new.cap.gep390, align 8
  br label %b.push_done376

str_overflow_abort384:                            ; preds = %b.grow374
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead385:                                    ; No predecessors!
  br label %b.new.buf.len383

choice.then402:                                   ; preds = %choice.else356
  %var.load405 = load i64, ptr %var.c, align 8
  %cmptmp406 = icmp eq i64 %var.load405, 34
  br i1 %cmptmp406, label %and.553.then, label %and.553.else

choice.else403:                                   ; preds = %choice.else356
  %var.load500 = load i64, ptr %var.c, align 8
  %cmptmp501 = icmp eq i64 %var.load500, 34
  br i1 %cmptmp501, label %choice.then502, label %choice.exit503

choice.exit404:                                   ; preds = %choice.exit503, %choice.exit413
  br label %choice.exit357

and.553.then:                                     ; preds = %choice.then402
  %var.load407 = load i64, ptr %var.c1, align 8
  %cmptmp408 = icmp eq i64 %var.load407, 34
  br label %and.553.exit

and.553.else:                                     ; preds = %choice.then402
  br label %and.553.exit

and.553.exit:                                     ; preds = %and.553.else, %and.553.then
  %and.553.phi = phi i1 [ %cmptmp408, %and.553.then ], [ %cmptmp406, %and.553.else ]
  br i1 %and.553.phi, label %and.554.then, label %and.554.else

and.554.then:                                     ; preds = %and.553.exit
  %var.load409 = load i64, ptr %var.c2, align 8
  %cmptmp410 = icmp eq i64 %var.load409, 34
  br label %and.554.exit

and.554.else:                                     ; preds = %and.553.exit
  br label %and.554.exit

and.554.exit:                                     ; preds = %and.554.else, %and.554.then
  %and.554.phi = phi i1 [ %cmptmp410, %and.554.then ], [ %and.553.phi, %and.554.else ]
  br i1 %and.554.phi, label %choice.then411, label %choice.else412

choice.then411:                                   ; preds = %and.554.exit
  %b.load414 = load ptr, ptr %var.b, align 8
  %var.load415 = load i64, ptr %var.c1, align 8
  %b.b.ge0416 = icmp sge i64 %var.load415, 0
  %b.b.le255417 = icmp sle i64 %var.load415, 255
  %b.byte.range418 = and i1 %b.b.ge0416, %b.b.le255417
  br i1 %b.byte.range418, label %b.byte_ok419, label %b.byte_err420

choice.else412:                                   ; preds = %and.554.exit
  %var.load498 = load i64, ptr %"var.i'", align 8
  %addtmp499 = add i64 %var.load498, 1
  store i64 %addtmp499, ptr %"var.i'", align 8
  br label %choice.exit413

choice.exit413:                                   ; preds = %choice.else412, %b.push_done473
  br label %choice.exit404

b.byte_ok419:                                     ; preds = %abort.dead421, %choice.then411
  %b.byte.i8422 = trunc i64 %var.load415 to i8
  %b.len423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load414, i32 0, i32 0
  %b.len424 = load i64, ptr %b.len423, align 8
  %b.cap425 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load414, i32 0, i32 2
  %b.cap426 = load i64, ptr %b.cap425, align 8
  %b.data427 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load414, i32 0, i32 1
  %b.data428 = load ptr, ptr %b.data427, align 8
  %b.needs.grow429 = icmp eq i64 %b.len424, %b.cap426
  br i1 %b.needs.grow429, label %b.grow430, label %b.nogrow431

b.byte_err420:                                    ; preds = %choice.then411
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead421:                                    ; No predecessors!
  br label %b.byte_ok419

b.grow430:                                        ; preds = %b.byte_ok419
  %b.cap2433 = mul i64 %b.cap426, 2
  %b.cap.small434 = icmp slt i64 %b.cap2433, 16
  %b.new.cap435 = select i1 %b.cap.small434, i64 16, i64 %b.cap2433
  %b.new.buf.len436 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap435, i64 1)
  %sum437 = extractvalue { i64, i1 } %b.new.buf.len436, 0
  %ovf438 = extractvalue { i64, i1 } %b.new.buf.len436, 1
  br i1 %ovf438, label %str_overflow_abort440, label %b.new.buf.len439

b.nogrow431:                                      ; preds = %b.byte_ok419
  br label %b.push_done432

b.push_done432:                                   ; preds = %b.nogrow431, %b.new.buf.len439
  %b.cur.data447 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load414, i32 0, i32 1
  %b.cur.data448 = load ptr, ptr %b.cur.data447, align 8
  %b.cur.len449 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load414, i32 0, i32 0
  %b.cur.len450 = load i64, ptr %b.cur.len449, align 8
  %b.byte.gep451 = getelementptr i8, ptr %b.cur.data448, i64 %b.cur.len450
  store i8 %b.byte.i8422, ptr %b.byte.gep451, align 1
  %b.next.len452 = add i64 %b.cur.len450, 1
  %b.nul453 = getelementptr i8, ptr %b.cur.data448, i64 %b.next.len452
  store i8 0, ptr %b.nul453, align 1
  %b.len.gep454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load414, i32 0, i32 0
  store i64 %b.next.len452, ptr %b.len.gep454, align 8
  %b.load455 = load ptr, ptr %var.b, align 8
  %var.load456 = load i64, ptr %var.c2, align 8
  %b.b.ge0457 = icmp sge i64 %var.load456, 0
  %b.b.le255458 = icmp sle i64 %var.load456, 255
  %b.byte.range459 = and i1 %b.b.ge0457, %b.b.le255458
  br i1 %b.byte.range459, label %b.byte_ok460, label %b.byte_err461

b.new.buf.len439:                                 ; preds = %abort.dead441, %b.grow430
  %arena.cur442 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf443 = call ptr @dva_arena_alloc(ptr %arena.cur442, i64 %sum437)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf443, ptr align 1 %b.data428, i64 %b.len424, i1 false)
  %b.grow.nul444 = getelementptr i8, ptr %b.new.buf443, i64 %b.len424
  store i8 0, ptr %b.grow.nul444, align 1
  %b.new.data.gep445 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load414, i32 0, i32 1
  store ptr %b.new.buf443, ptr %b.new.data.gep445, align 8
  %b.new.cap.gep446 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load414, i32 0, i32 2
  store i64 %b.new.cap435, ptr %b.new.cap.gep446, align 8
  br label %b.push_done432

str_overflow_abort440:                            ; preds = %b.grow430
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead441:                                    ; No predecessors!
  br label %b.new.buf.len439

b.byte_ok460:                                     ; preds = %abort.dead462, %b.push_done432
  %b.byte.i8463 = trunc i64 %var.load456 to i8
  %b.len464 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load455, i32 0, i32 0
  %b.len465 = load i64, ptr %b.len464, align 8
  %b.cap466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load455, i32 0, i32 2
  %b.cap467 = load i64, ptr %b.cap466, align 8
  %b.data468 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load455, i32 0, i32 1
  %b.data469 = load ptr, ptr %b.data468, align 8
  %b.needs.grow470 = icmp eq i64 %b.len465, %b.cap467
  br i1 %b.needs.grow470, label %b.grow471, label %b.nogrow472

b.byte_err461:                                    ; preds = %b.push_done432
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead462:                                    ; No predecessors!
  br label %b.byte_ok460

b.grow471:                                        ; preds = %b.byte_ok460
  %b.cap2474 = mul i64 %b.cap467, 2
  %b.cap.small475 = icmp slt i64 %b.cap2474, 16
  %b.new.cap476 = select i1 %b.cap.small475, i64 16, i64 %b.cap2474
  %b.new.buf.len477 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap476, i64 1)
  %sum478 = extractvalue { i64, i1 } %b.new.buf.len477, 0
  %ovf479 = extractvalue { i64, i1 } %b.new.buf.len477, 1
  br i1 %ovf479, label %str_overflow_abort481, label %b.new.buf.len480

b.nogrow472:                                      ; preds = %b.byte_ok460
  br label %b.push_done473

b.push_done473:                                   ; preds = %b.nogrow472, %b.new.buf.len480
  %b.cur.data488 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load455, i32 0, i32 1
  %b.cur.data489 = load ptr, ptr %b.cur.data488, align 8
  %b.cur.len490 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load455, i32 0, i32 0
  %b.cur.len491 = load i64, ptr %b.cur.len490, align 8
  %b.byte.gep492 = getelementptr i8, ptr %b.cur.data489, i64 %b.cur.len491
  store i8 %b.byte.i8463, ptr %b.byte.gep492, align 1
  %b.next.len493 = add i64 %b.cur.len491, 1
  %b.nul494 = getelementptr i8, ptr %b.cur.data489, i64 %b.next.len493
  store i8 0, ptr %b.nul494, align 1
  %b.len.gep495 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load455, i32 0, i32 0
  store i64 %b.next.len493, ptr %b.len.gep495, align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load496 = load i64, ptr %"var.i'", align 8
  %addtmp497 = add i64 %var.load496, 3
  store i64 %addtmp497, ptr %"var.i'", align 8
  br label %choice.exit413

b.new.buf.len480:                                 ; preds = %abort.dead482, %b.grow471
  %arena.cur483 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf484 = call ptr @dva_arena_alloc(ptr %arena.cur483, i64 %sum478)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf484, ptr align 1 %b.data469, i64 %b.len465, i1 false)
  %b.grow.nul485 = getelementptr i8, ptr %b.new.buf484, i64 %b.len465
  store i8 0, ptr %b.grow.nul485, align 1
  %b.new.data.gep486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load455, i32 0, i32 1
  store ptr %b.new.buf484, ptr %b.new.data.gep486, align 8
  %b.new.cap.gep487 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load455, i32 0, i32 2
  store i64 %b.new.cap476, ptr %b.new.cap.gep487, align 8
  br label %b.push_done473

str_overflow_abort481:                            ; preds = %b.grow471
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead482:                                    ; No predecessors!
  br label %b.new.buf.len480

choice.then502:                                   ; preds = %choice.else403
  store i1 false, ptr %"var.in_str'", align 1
  br label %choice.exit503

choice.exit503:                                   ; preds = %choice.then502, %choice.else403
  %var.load504 = load i64, ptr %"var.i'", align 8
  %addtmp505 = add i64 %var.load504, 1
  store i64 %addtmp505, ptr %"var.i'", align 8
  br label %choice.exit404

and.555.then:                                     ; preds = %choice.else306
  %var.load508 = load i64, ptr %var.c1, align 8
  %cmptmp509 = icmp eq i64 %var.load508, 47
  br label %and.555.exit

and.555.else:                                     ; preds = %choice.else306
  br label %and.555.exit

and.555.exit:                                     ; preds = %and.555.else, %and.555.then
  %and.555.phi = phi i1 [ %cmptmp509, %and.555.then ], [ %cmptmp507, %and.555.else ]
  br i1 %and.555.phi, label %choice.then510, label %choice.else511

choice.then510:                                   ; preds = %and.555.exit
  %b.load513 = load ptr, ptr %var.b, align 8
  %var.load514 = load ptr, ptr %var.body, align 8
  %s.read.len515 = getelementptr inbounds { i64, ptr }, ptr %var.load514, i32 0, i32 0
  %s.read.len516 = load i64, ptr %s.read.len515, align 8
  %s.read.len517 = and i64 %s.read.len516, 281474976710655
  %s.read.data518 = getelementptr inbounds { i64, ptr }, ptr %var.load514, i32 0, i32 1
  %s.read.data519 = load ptr, ptr %s.read.data518, align 8
  %var.load520 = load i64, ptr %"var.i'", align 8
  %var.load521 = load i64, ptr %var.n, align 8
  %start.is_neg = icmp slt i64 %var.load520, 0
  %rel.start = add i64 %s.read.len517, %var.load520
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load520
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len517
  %final.start = select i1 %start.gt.len, i64 %s.read.len517, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load521, 0
  %rel.end = add i64 %s.read.len517, %var.load521
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load521
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len517
  %final.end = select i1 %end.gt.len, i64 %s.read.len517, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data519, i64 %final.start
  %b.app.cur.len522 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 0
  %b.app.cur.len523 = load i64, ptr %b.app.cur.len522, align 8
  %b.app.new.len524 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len523, i64 %view.len)
  %sum525 = extractvalue { i64, i1 } %b.app.new.len524, 0
  %ovf526 = extractvalue { i64, i1 } %b.app.new.len524, 1
  br i1 %ovf526, label %str_overflow_abort528, label %b.app.new.len527

choice.else511:                                   ; preds = %and.555.exit
  %var.load562 = load i64, ptr %var.c, align 8
  %cmptmp563 = icmp eq i64 %var.load562, 47
  br i1 %cmptmp563, label %and.556.then, label %and.556.else

choice.exit512:                                   ; preds = %choice.exit568, %b.grow_done535
  br label %choice.exit307

b.app.new.len527:                                 ; preds = %abort.dead529, %choice.then510
  %b.cap530 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 2
  %b.cap531 = load i64, ptr %b.cap530, align 8
  %b.need.grow532 = icmp slt i64 %b.cap531, %sum525
  br i1 %b.need.grow532, label %b.grow2533, label %b.nogrow2534

str_overflow_abort528:                            ; preds = %choice.then510
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead529:                                    ; No predecessors!
  br label %b.app.new.len527

b.grow2533:                                       ; preds = %b.app.new.len527
  %b.cap2536 = mul i64 %b.cap531, 2
  %b.cap.small537 = icmp slt i64 %b.cap2536, 16
  %b.cap.grow538 = select i1 %b.cap.small537, i64 16, i64 %b.cap2536
  %b.cap.need539 = icmp slt i64 %b.cap.grow538, %sum525
  %b.new.cap540 = select i1 %b.cap.need539, i64 %sum525, i64 %b.cap.grow538
  %b.cur.len2541 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 0
  %b.cur.len2542 = load i64, ptr %b.cur.len2541, align 8
  %b.cur.data2543 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 1
  %b.cur.data2544 = load ptr, ptr %b.cur.data2543, align 8
  %b.new.buf.len2545 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap540, i64 1)
  %sum546 = extractvalue { i64, i1 } %b.new.buf.len2545, 0
  %ovf547 = extractvalue { i64, i1 } %b.new.buf.len2545, 1
  br i1 %ovf547, label %str_overflow_abort549, label %b.new.buf.len2548

b.nogrow2534:                                     ; preds = %b.app.new.len527
  br label %b.grow_done535

b.grow_done535:                                   ; preds = %b.nogrow2534, %b.new.buf.len2548
  %b.app.data556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 1
  %b.app.data557 = load ptr, ptr %b.app.data556, align 8
  %b.app.dst558 = getelementptr i8, ptr %b.app.data557, i64 %b.app.cur.len523
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst558, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul559 = getelementptr i8, ptr %b.app.data557, i64 %sum525
  store i8 0, ptr %b.app.nul559, align 1
  %b.len.gep560 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 0
  store i64 %sum525, ptr %b.len.gep560, align 8
  %var.load561 = load i64, ptr %var.n, align 8
  store i64 %var.load561, ptr %"var.i'", align 8
  br label %choice.exit512

b.new.buf.len2548:                                ; preds = %abort.dead550, %b.grow2533
  %arena.cur551 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2552 = call ptr @dva_arena_alloc(ptr %arena.cur551, i64 %sum546)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2552, ptr align 1 %b.cur.data2544, i64 %b.cur.len2542, i1 false)
  %b.grow2.nul553 = getelementptr i8, ptr %b.new.buf2552, i64 %b.cur.len2542
  store i8 0, ptr %b.grow2.nul553, align 1
  %b.new.data2.gep554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 1
  store ptr %b.new.buf2552, ptr %b.new.data2.gep554, align 8
  %b.new.cap2.gep555 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 2
  store i64 %b.new.cap540, ptr %b.new.cap2.gep555, align 8
  br label %b.grow_done535

str_overflow_abort549:                            ; preds = %b.grow2533
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead550:                                    ; No predecessors!
  br label %b.new.buf.len2548

and.556.then:                                     ; preds = %choice.else511
  %var.load564 = load i64, ptr %var.c1, align 8
  %cmptmp565 = icmp eq i64 %var.load564, 42
  br label %and.556.exit

and.556.else:                                     ; preds = %choice.else511
  br label %and.556.exit

and.556.exit:                                     ; preds = %and.556.else, %and.556.then
  %and.556.phi = phi i1 [ %cmptmp565, %and.556.then ], [ %cmptmp563, %and.556.else ]
  br i1 %and.556.phi, label %choice.then566, label %choice.else567

choice.then566:                                   ; preds = %and.556.exit
  %b.load569 = load ptr, ptr %var.b, align 8
  %app.str.len570 = load i64, ptr @str.9.struct, align 8
  %app.str.len571 = and i64 %app.str.len570, 281474976710655
  %app.str.data572 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %b.app.cur.len573 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load569, i32 0, i32 0
  %b.app.cur.len574 = load i64, ptr %b.app.cur.len573, align 8
  %b.app.new.len575 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len574, i64 %app.str.len571)
  %sum576 = extractvalue { i64, i1 } %b.app.new.len575, 0
  %ovf577 = extractvalue { i64, i1 } %b.app.new.len575, 1
  br i1 %ovf577, label %str_overflow_abort579, label %b.app.new.len578

choice.else567:                                   ; preds = %and.556.exit
  %var.load614 = load i64, ptr %var.c, align 8
  %cmptmp615 = icmp eq i64 %var.load614, 39
  br i1 %cmptmp615, label %choice.then616, label %choice.else617

choice.exit568:                                   ; preds = %choice.exit618, %b.grow_done586
  br label %choice.exit512

b.app.new.len578:                                 ; preds = %abort.dead580, %choice.then566
  %b.cap581 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load569, i32 0, i32 2
  %b.cap582 = load i64, ptr %b.cap581, align 8
  %b.need.grow583 = icmp slt i64 %b.cap582, %sum576
  br i1 %b.need.grow583, label %b.grow2584, label %b.nogrow2585

str_overflow_abort579:                            ; preds = %choice.then566
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead580:                                    ; No predecessors!
  br label %b.app.new.len578

b.grow2584:                                       ; preds = %b.app.new.len578
  %b.cap2587 = mul i64 %b.cap582, 2
  %b.cap.small588 = icmp slt i64 %b.cap2587, 16
  %b.cap.grow589 = select i1 %b.cap.small588, i64 16, i64 %b.cap2587
  %b.cap.need590 = icmp slt i64 %b.cap.grow589, %sum576
  %b.new.cap591 = select i1 %b.cap.need590, i64 %sum576, i64 %b.cap.grow589
  %b.cur.len2592 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load569, i32 0, i32 0
  %b.cur.len2593 = load i64, ptr %b.cur.len2592, align 8
  %b.cur.data2594 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load569, i32 0, i32 1
  %b.cur.data2595 = load ptr, ptr %b.cur.data2594, align 8
  %b.new.buf.len2596 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap591, i64 1)
  %sum597 = extractvalue { i64, i1 } %b.new.buf.len2596, 0
  %ovf598 = extractvalue { i64, i1 } %b.new.buf.len2596, 1
  br i1 %ovf598, label %str_overflow_abort600, label %b.new.buf.len2599

b.nogrow2585:                                     ; preds = %b.app.new.len578
  br label %b.grow_done586

b.grow_done586:                                   ; preds = %b.nogrow2585, %b.new.buf.len2599
  %b.app.data607 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load569, i32 0, i32 1
  %b.app.data608 = load ptr, ptr %b.app.data607, align 8
  %b.app.dst609 = getelementptr i8, ptr %b.app.data608, i64 %b.app.cur.len574
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst609, ptr align 1 %app.str.data572, i64 %app.str.len571, i1 false)
  %b.app.nul610 = getelementptr i8, ptr %b.app.data608, i64 %sum576
  store i8 0, ptr %b.app.nul610, align 1
  %b.len.gep611 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load569, i32 0, i32 0
  store i64 %sum576, ptr %b.len.gep611, align 8
  store i1 true, ptr %"var.in_blk_comm'", align 1
  %var.load612 = load i64, ptr %"var.i'", align 8
  %addtmp613 = add i64 %var.load612, 2
  store i64 %addtmp613, ptr %"var.i'", align 8
  br label %choice.exit568

b.new.buf.len2599:                                ; preds = %abort.dead601, %b.grow2584
  %arena.cur602 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2603 = call ptr @dva_arena_alloc(ptr %arena.cur602, i64 %sum597)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2603, ptr align 1 %b.cur.data2595, i64 %b.cur.len2593, i1 false)
  %b.grow2.nul604 = getelementptr i8, ptr %b.new.buf2603, i64 %b.cur.len2593
  store i8 0, ptr %b.grow2.nul604, align 1
  %b.new.data2.gep605 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load569, i32 0, i32 1
  store ptr %b.new.buf2603, ptr %b.new.data2.gep605, align 8
  %b.new.cap2.gep606 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load569, i32 0, i32 2
  store i64 %b.new.cap591, ptr %b.new.cap2.gep606, align 8
  br label %b.grow_done586

str_overflow_abort600:                            ; preds = %b.grow2584
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead601:                                    ; No predecessors!
  br label %b.new.buf.len2599

choice.then616:                                   ; preds = %choice.else567
  %var.load619 = load i64, ptr %"var.i'", align 8
  %cmptmp620 = icmp sgt i64 %var.load619, 0
  br i1 %cmptmp620, label %choice.then621, label %choice.else622

choice.else617:                                   ; preds = %choice.else567
  %var.load832 = load i64, ptr %var.c, align 8
  %cmptmp833 = icmp eq i64 %var.load832, 34
  br i1 %cmptmp833, label %choice.then834, label %choice.else835

choice.exit618:                                   ; preds = %choice.exit836, %choice.exit684
  br label %choice.exit568

choice.then621:                                   ; preds = %choice.then616
  %var.load624 = load ptr, ptr %var.body, align 8
  %s.read.len625 = getelementptr inbounds { i64, ptr }, ptr %var.load624, i32 0, i32 0
  %s.read.len626 = load i64, ptr %s.read.len625, align 8
  %s.read.len627 = and i64 %s.read.len626, 281474976710655
  %s.read.data628 = getelementptr inbounds { i64, ptr }, ptr %var.load624, i32 0, i32 1
  %s.read.data629 = load ptr, ptr %s.read.data628, align 8
  %var.load630 = load i64, ptr %"var.i'", align 8
  %subtmp = sub i64 %var.load630, 1
  %idx.oob631 = icmp uge i64 %subtmp, %s.read.len627
  br i1 %idx.oob631, label %idx_oob633, label %idx_ok632

choice.else622:                                   ; preds = %choice.then616
  br label %choice.exit623

choice.exit623:                                   ; preds = %choice.else622, %idx_ok632
  %choice.res638 = phi i64 [ %s.byte.val637, %idx_ok632 ], [ 0, %choice.else622 ]
  store i64 %choice.res638, ptr %var.prev_b, align 8
  %b.load639 = load ptr, ptr %var.b, align 8
  %var.load640 = load i64, ptr %var.c, align 8
  %b.b.ge0641 = icmp sge i64 %var.load640, 0
  %b.b.le255642 = icmp sle i64 %var.load640, 255
  %b.byte.range643 = and i1 %b.b.ge0641, %b.b.le255642
  br i1 %b.byte.range643, label %b.byte_ok644, label %b.byte_err645

idx_ok632:                                        ; preds = %abort.dead634, %choice.then621
  %s.byte.gep635 = getelementptr i8, ptr %s.read.data629, i64 %subtmp
  %s.byte636 = load i8, ptr %s.byte.gep635, align 1
  %s.byte.val637 = zext i8 %s.byte636 to i64
  br label %choice.exit623

idx_oob633:                                       ; preds = %choice.then621
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead634:                                    ; No predecessors!
  br label %idx_ok632

b.byte_ok644:                                     ; preds = %abort.dead646, %choice.exit623
  %b.byte.i8647 = trunc i64 %var.load640 to i8
  %b.len648 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load639, i32 0, i32 0
  %b.len649 = load i64, ptr %b.len648, align 8
  %b.cap650 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load639, i32 0, i32 2
  %b.cap651 = load i64, ptr %b.cap650, align 8
  %b.data652 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load639, i32 0, i32 1
  %b.data653 = load ptr, ptr %b.data652, align 8
  %b.needs.grow654 = icmp eq i64 %b.len649, %b.cap651
  br i1 %b.needs.grow654, label %b.grow655, label %b.nogrow656

b.byte_err645:                                    ; preds = %choice.exit623
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead646:                                    ; No predecessors!
  br label %b.byte_ok644

b.grow655:                                        ; preds = %b.byte_ok644
  %b.cap2658 = mul i64 %b.cap651, 2
  %b.cap.small659 = icmp slt i64 %b.cap2658, 16
  %b.new.cap660 = select i1 %b.cap.small659, i64 16, i64 %b.cap2658
  %b.new.buf.len661 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap660, i64 1)
  %sum662 = extractvalue { i64, i1 } %b.new.buf.len661, 0
  %ovf663 = extractvalue { i64, i1 } %b.new.buf.len661, 1
  br i1 %ovf663, label %str_overflow_abort665, label %b.new.buf.len664

b.nogrow656:                                      ; preds = %b.byte_ok644
  br label %b.push_done657

b.push_done657:                                   ; preds = %b.nogrow656, %b.new.buf.len664
  %b.cur.data672 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load639, i32 0, i32 1
  %b.cur.data673 = load ptr, ptr %b.cur.data672, align 8
  %b.cur.len674 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load639, i32 0, i32 0
  %b.cur.len675 = load i64, ptr %b.cur.len674, align 8
  %b.byte.gep676 = getelementptr i8, ptr %b.cur.data673, i64 %b.cur.len675
  store i8 %b.byte.i8647, ptr %b.byte.gep676, align 1
  %b.next.len677 = add i64 %b.cur.len675, 1
  %b.nul678 = getelementptr i8, ptr %b.cur.data673, i64 %b.next.len677
  store i8 0, ptr %b.nul678, align 1
  %b.len.gep679 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load639, i32 0, i32 0
  store i64 %b.next.len677, ptr %b.len.gep679, align 8
  %var.load680 = load i64, ptr %var.prev_b, align 8
  %call.res681 = call i1 @"formatter::is_id_byte"(i64 %var.load680)
  br i1 %call.res681, label %choice.then682, label %choice.else683

b.new.buf.len664:                                 ; preds = %abort.dead666, %b.grow655
  %arena.cur667 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf668 = call ptr @dva_arena_alloc(ptr %arena.cur667, i64 %sum662)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf668, ptr align 1 %b.data653, i64 %b.len649, i1 false)
  %b.grow.nul669 = getelementptr i8, ptr %b.new.buf668, i64 %b.len649
  store i8 0, ptr %b.grow.nul669, align 1
  %b.new.data.gep670 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load639, i32 0, i32 1
  store ptr %b.new.buf668, ptr %b.new.data.gep670, align 8
  %b.new.cap.gep671 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load639, i32 0, i32 2
  store i64 %b.new.cap660, ptr %b.new.cap.gep671, align 8
  br label %b.push_done657

str_overflow_abort665:                            ; preds = %b.grow655
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead666:                                    ; No predecessors!
  br label %b.new.buf.len664

choice.then682:                                   ; preds = %b.push_done657
  %var.load685 = load i64, ptr %"var.i'", align 8
  %addtmp686 = add i64 %var.load685, 1
  store i64 %addtmp686, ptr %"var.i'", align 8
  br label %choice.exit684

choice.else683:                                   ; preds = %b.push_done657
  %var.load687 = load i64, ptr %var.c1, align 8
  %cmptmp688 = icmp eq i64 %var.load687, 92
  br i1 %cmptmp688, label %and.557.then, label %and.557.else

choice.exit684:                                   ; preds = %choice.exit695, %choice.then682
  br label %choice.exit618

and.557.then:                                     ; preds = %choice.else683
  %var.load689 = load i64, ptr %"var.i'", align 8
  %addtmp690 = add i64 %var.load689, 2
  %var.load691 = load i64, ptr %var.n, align 8
  %cmptmp692 = icmp slt i64 %addtmp690, %var.load691
  br label %and.557.exit

and.557.else:                                     ; preds = %choice.else683
  br label %and.557.exit

and.557.exit:                                     ; preds = %and.557.else, %and.557.then
  %and.557.phi = phi i1 [ %cmptmp692, %and.557.then ], [ %cmptmp688, %and.557.else ]
  br i1 %and.557.phi, label %choice.then693, label %choice.else694

choice.then693:                                   ; preds = %and.557.exit
  %b.load696 = load ptr, ptr %var.b, align 8
  %var.load697 = load i64, ptr %var.c1, align 8
  %b.b.ge0698 = icmp sge i64 %var.load697, 0
  %b.b.le255699 = icmp sle i64 %var.load697, 255
  %b.byte.range700 = and i1 %b.b.ge0698, %b.b.le255699
  br i1 %b.byte.range700, label %b.byte_ok701, label %b.byte_err702

choice.else694:                                   ; preds = %and.557.exit
  %var.load780 = load i64, ptr %"var.i'", align 8
  %addtmp781 = add i64 %var.load780, 1
  %var.load782 = load i64, ptr %var.n, align 8
  %cmptmp783 = icmp slt i64 %addtmp781, %var.load782
  br i1 %cmptmp783, label %choice.then784, label %choice.else785

choice.exit695:                                   ; preds = %choice.exit786, %b.push_done755
  br label %choice.exit684

b.byte_ok701:                                     ; preds = %abort.dead703, %choice.then693
  %b.byte.i8704 = trunc i64 %var.load697 to i8
  %b.len705 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load696, i32 0, i32 0
  %b.len706 = load i64, ptr %b.len705, align 8
  %b.cap707 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load696, i32 0, i32 2
  %b.cap708 = load i64, ptr %b.cap707, align 8
  %b.data709 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load696, i32 0, i32 1
  %b.data710 = load ptr, ptr %b.data709, align 8
  %b.needs.grow711 = icmp eq i64 %b.len706, %b.cap708
  br i1 %b.needs.grow711, label %b.grow712, label %b.nogrow713

b.byte_err702:                                    ; preds = %choice.then693
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead703:                                    ; No predecessors!
  br label %b.byte_ok701

b.grow712:                                        ; preds = %b.byte_ok701
  %b.cap2715 = mul i64 %b.cap708, 2
  %b.cap.small716 = icmp slt i64 %b.cap2715, 16
  %b.new.cap717 = select i1 %b.cap.small716, i64 16, i64 %b.cap2715
  %b.new.buf.len718 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap717, i64 1)
  %sum719 = extractvalue { i64, i1 } %b.new.buf.len718, 0
  %ovf720 = extractvalue { i64, i1 } %b.new.buf.len718, 1
  br i1 %ovf720, label %str_overflow_abort722, label %b.new.buf.len721

b.nogrow713:                                      ; preds = %b.byte_ok701
  br label %b.push_done714

b.push_done714:                                   ; preds = %b.nogrow713, %b.new.buf.len721
  %b.cur.data729 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load696, i32 0, i32 1
  %b.cur.data730 = load ptr, ptr %b.cur.data729, align 8
  %b.cur.len731 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load696, i32 0, i32 0
  %b.cur.len732 = load i64, ptr %b.cur.len731, align 8
  %b.byte.gep733 = getelementptr i8, ptr %b.cur.data730, i64 %b.cur.len732
  store i8 %b.byte.i8704, ptr %b.byte.gep733, align 1
  %b.next.len734 = add i64 %b.cur.len732, 1
  %b.nul735 = getelementptr i8, ptr %b.cur.data730, i64 %b.next.len734
  store i8 0, ptr %b.nul735, align 1
  %b.len.gep736 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load696, i32 0, i32 0
  store i64 %b.next.len734, ptr %b.len.gep736, align 8
  %b.load737 = load ptr, ptr %var.b, align 8
  %var.load738 = load i64, ptr %var.c2, align 8
  %b.b.ge0739 = icmp sge i64 %var.load738, 0
  %b.b.le255740 = icmp sle i64 %var.load738, 255
  %b.byte.range741 = and i1 %b.b.ge0739, %b.b.le255740
  br i1 %b.byte.range741, label %b.byte_ok742, label %b.byte_err743

b.new.buf.len721:                                 ; preds = %abort.dead723, %b.grow712
  %arena.cur724 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf725 = call ptr @dva_arena_alloc(ptr %arena.cur724, i64 %sum719)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf725, ptr align 1 %b.data710, i64 %b.len706, i1 false)
  %b.grow.nul726 = getelementptr i8, ptr %b.new.buf725, i64 %b.len706
  store i8 0, ptr %b.grow.nul726, align 1
  %b.new.data.gep727 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load696, i32 0, i32 1
  store ptr %b.new.buf725, ptr %b.new.data.gep727, align 8
  %b.new.cap.gep728 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load696, i32 0, i32 2
  store i64 %b.new.cap717, ptr %b.new.cap.gep728, align 8
  br label %b.push_done714

str_overflow_abort722:                            ; preds = %b.grow712
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead723:                                    ; No predecessors!
  br label %b.new.buf.len721

b.byte_ok742:                                     ; preds = %abort.dead744, %b.push_done714
  %b.byte.i8745 = trunc i64 %var.load738 to i8
  %b.len746 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load737, i32 0, i32 0
  %b.len747 = load i64, ptr %b.len746, align 8
  %b.cap748 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load737, i32 0, i32 2
  %b.cap749 = load i64, ptr %b.cap748, align 8
  %b.data750 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load737, i32 0, i32 1
  %b.data751 = load ptr, ptr %b.data750, align 8
  %b.needs.grow752 = icmp eq i64 %b.len747, %b.cap749
  br i1 %b.needs.grow752, label %b.grow753, label %b.nogrow754

b.byte_err743:                                    ; preds = %b.push_done714
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead744:                                    ; No predecessors!
  br label %b.byte_ok742

b.grow753:                                        ; preds = %b.byte_ok742
  %b.cap2756 = mul i64 %b.cap749, 2
  %b.cap.small757 = icmp slt i64 %b.cap2756, 16
  %b.new.cap758 = select i1 %b.cap.small757, i64 16, i64 %b.cap2756
  %b.new.buf.len759 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap758, i64 1)
  %sum760 = extractvalue { i64, i1 } %b.new.buf.len759, 0
  %ovf761 = extractvalue { i64, i1 } %b.new.buf.len759, 1
  br i1 %ovf761, label %str_overflow_abort763, label %b.new.buf.len762

b.nogrow754:                                      ; preds = %b.byte_ok742
  br label %b.push_done755

b.push_done755:                                   ; preds = %b.nogrow754, %b.new.buf.len762
  %b.cur.data770 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load737, i32 0, i32 1
  %b.cur.data771 = load ptr, ptr %b.cur.data770, align 8
  %b.cur.len772 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load737, i32 0, i32 0
  %b.cur.len773 = load i64, ptr %b.cur.len772, align 8
  %b.byte.gep774 = getelementptr i8, ptr %b.cur.data771, i64 %b.cur.len773
  store i8 %b.byte.i8745, ptr %b.byte.gep774, align 1
  %b.next.len775 = add i64 %b.cur.len773, 1
  %b.nul776 = getelementptr i8, ptr %b.cur.data771, i64 %b.next.len775
  store i8 0, ptr %b.nul776, align 1
  %b.len.gep777 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load737, i32 0, i32 0
  store i64 %b.next.len775, ptr %b.len.gep777, align 8
  %var.load778 = load i64, ptr %"var.i'", align 8
  %addtmp779 = add i64 %var.load778, 3
  store i64 %addtmp779, ptr %"var.i'", align 8
  br label %choice.exit695

b.new.buf.len762:                                 ; preds = %abort.dead764, %b.grow753
  %arena.cur765 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf766 = call ptr @dva_arena_alloc(ptr %arena.cur765, i64 %sum760)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf766, ptr align 1 %b.data751, i64 %b.len747, i1 false)
  %b.grow.nul767 = getelementptr i8, ptr %b.new.buf766, i64 %b.len747
  store i8 0, ptr %b.grow.nul767, align 1
  %b.new.data.gep768 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load737, i32 0, i32 1
  store ptr %b.new.buf766, ptr %b.new.data.gep768, align 8
  %b.new.cap.gep769 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load737, i32 0, i32 2
  store i64 %b.new.cap758, ptr %b.new.cap.gep769, align 8
  br label %b.push_done755

str_overflow_abort763:                            ; preds = %b.grow753
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead764:                                    ; No predecessors!
  br label %b.new.buf.len762

choice.then784:                                   ; preds = %choice.else694
  %b.load787 = load ptr, ptr %var.b, align 8
  %var.load788 = load i64, ptr %var.c1, align 8
  %b.b.ge0789 = icmp sge i64 %var.load788, 0
  %b.b.le255790 = icmp sle i64 %var.load788, 255
  %b.byte.range791 = and i1 %b.b.ge0789, %b.b.le255790
  br i1 %b.byte.range791, label %b.byte_ok792, label %b.byte_err793

choice.else785:                                   ; preds = %choice.else694
  %var.load830 = load i64, ptr %"var.i'", align 8
  %addtmp831 = add i64 %var.load830, 1
  store i64 %addtmp831, ptr %"var.i'", align 8
  br label %choice.exit786

choice.exit786:                                   ; preds = %choice.else785, %b.push_done805
  br label %choice.exit695

b.byte_ok792:                                     ; preds = %abort.dead794, %choice.then784
  %b.byte.i8795 = trunc i64 %var.load788 to i8
  %b.len796 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 0
  %b.len797 = load i64, ptr %b.len796, align 8
  %b.cap798 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 2
  %b.cap799 = load i64, ptr %b.cap798, align 8
  %b.data800 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 1
  %b.data801 = load ptr, ptr %b.data800, align 8
  %b.needs.grow802 = icmp eq i64 %b.len797, %b.cap799
  br i1 %b.needs.grow802, label %b.grow803, label %b.nogrow804

b.byte_err793:                                    ; preds = %choice.then784
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead794:                                    ; No predecessors!
  br label %b.byte_ok792

b.grow803:                                        ; preds = %b.byte_ok792
  %b.cap2806 = mul i64 %b.cap799, 2
  %b.cap.small807 = icmp slt i64 %b.cap2806, 16
  %b.new.cap808 = select i1 %b.cap.small807, i64 16, i64 %b.cap2806
  %b.new.buf.len809 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap808, i64 1)
  %sum810 = extractvalue { i64, i1 } %b.new.buf.len809, 0
  %ovf811 = extractvalue { i64, i1 } %b.new.buf.len809, 1
  br i1 %ovf811, label %str_overflow_abort813, label %b.new.buf.len812

b.nogrow804:                                      ; preds = %b.byte_ok792
  br label %b.push_done805

b.push_done805:                                   ; preds = %b.nogrow804, %b.new.buf.len812
  %b.cur.data820 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 1
  %b.cur.data821 = load ptr, ptr %b.cur.data820, align 8
  %b.cur.len822 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 0
  %b.cur.len823 = load i64, ptr %b.cur.len822, align 8
  %b.byte.gep824 = getelementptr i8, ptr %b.cur.data821, i64 %b.cur.len823
  store i8 %b.byte.i8795, ptr %b.byte.gep824, align 1
  %b.next.len825 = add i64 %b.cur.len823, 1
  %b.nul826 = getelementptr i8, ptr %b.cur.data821, i64 %b.next.len825
  store i8 0, ptr %b.nul826, align 1
  %b.len.gep827 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 0
  store i64 %b.next.len825, ptr %b.len.gep827, align 8
  %var.load828 = load i64, ptr %"var.i'", align 8
  %addtmp829 = add i64 %var.load828, 2
  store i64 %addtmp829, ptr %"var.i'", align 8
  br label %choice.exit786

b.new.buf.len812:                                 ; preds = %abort.dead814, %b.grow803
  %arena.cur815 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf816 = call ptr @dva_arena_alloc(ptr %arena.cur815, i64 %sum810)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf816, ptr align 1 %b.data801, i64 %b.len797, i1 false)
  %b.grow.nul817 = getelementptr i8, ptr %b.new.buf816, i64 %b.len797
  store i8 0, ptr %b.grow.nul817, align 1
  %b.new.data.gep818 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 1
  store ptr %b.new.buf816, ptr %b.new.data.gep818, align 8
  %b.new.cap.gep819 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 2
  store i64 %b.new.cap808, ptr %b.new.cap.gep819, align 8
  br label %b.push_done805

str_overflow_abort813:                            ; preds = %b.grow803
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead814:                                    ; No predecessors!
  br label %b.new.buf.len812

choice.then834:                                   ; preds = %choice.else617
  %var.load837 = load i64, ptr %var.c1, align 8
  %cmptmp838 = icmp eq i64 %var.load837, 34
  br i1 %cmptmp838, label %and.558.then, label %and.558.else

choice.else835:                                   ; preds = %choice.else617
  %var.load932 = load i64, ptr %var.c, align 8
  %val.match936 = icmp eq i64 %var.load932, 44
  %val.match937 = icmp eq i64 %var.load932, 59
  %case.or938 = or i1 %val.match936, %val.match937
  br i1 %case.or938, label %choice.case934, label %choice.next935

choice.exit836:                                   ; preds = %choice.exit942, %choice.exit843
  br label %choice.exit618

and.558.then:                                     ; preds = %choice.then834
  %var.load839 = load i64, ptr %var.c2, align 8
  %cmptmp840 = icmp eq i64 %var.load839, 34
  br label %and.558.exit

and.558.else:                                     ; preds = %choice.then834
  br label %and.558.exit

and.558.exit:                                     ; preds = %and.558.else, %and.558.then
  %and.558.phi = phi i1 [ %cmptmp840, %and.558.then ], [ %cmptmp838, %and.558.else ]
  br i1 %and.558.phi, label %choice.then841, label %choice.else842

choice.then841:                                   ; preds = %and.558.exit
  %b.load844 = load ptr, ptr %var.b, align 8
  %app.str.len845 = load i64, ptr @str.10.struct, align 8
  %app.str.len846 = and i64 %app.str.len845, 281474976710655
  %app.str.data847 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %b.app.cur.len848 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load844, i32 0, i32 0
  %b.app.cur.len849 = load i64, ptr %b.app.cur.len848, align 8
  %b.app.new.len850 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len849, i64 %app.str.len846)
  %sum851 = extractvalue { i64, i1 } %b.app.new.len850, 0
  %ovf852 = extractvalue { i64, i1 } %b.app.new.len850, 1
  br i1 %ovf852, label %str_overflow_abort854, label %b.app.new.len853

choice.else842:                                   ; preds = %and.558.exit
  %b.load889 = load ptr, ptr %var.b, align 8
  %var.load890 = load i64, ptr %var.c, align 8
  %b.b.ge0891 = icmp sge i64 %var.load890, 0
  %b.b.le255892 = icmp sle i64 %var.load890, 255
  %b.byte.range893 = and i1 %b.b.ge0891, %b.b.le255892
  br i1 %b.byte.range893, label %b.byte_ok894, label %b.byte_err895

choice.exit843:                                   ; preds = %b.push_done907, %b.grow_done861
  br label %choice.exit836

b.app.new.len853:                                 ; preds = %abort.dead855, %choice.then841
  %b.cap856 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load844, i32 0, i32 2
  %b.cap857 = load i64, ptr %b.cap856, align 8
  %b.need.grow858 = icmp slt i64 %b.cap857, %sum851
  br i1 %b.need.grow858, label %b.grow2859, label %b.nogrow2860

str_overflow_abort854:                            ; preds = %choice.then841
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead855:                                    ; No predecessors!
  br label %b.app.new.len853

b.grow2859:                                       ; preds = %b.app.new.len853
  %b.cap2862 = mul i64 %b.cap857, 2
  %b.cap.small863 = icmp slt i64 %b.cap2862, 16
  %b.cap.grow864 = select i1 %b.cap.small863, i64 16, i64 %b.cap2862
  %b.cap.need865 = icmp slt i64 %b.cap.grow864, %sum851
  %b.new.cap866 = select i1 %b.cap.need865, i64 %sum851, i64 %b.cap.grow864
  %b.cur.len2867 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load844, i32 0, i32 0
  %b.cur.len2868 = load i64, ptr %b.cur.len2867, align 8
  %b.cur.data2869 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load844, i32 0, i32 1
  %b.cur.data2870 = load ptr, ptr %b.cur.data2869, align 8
  %b.new.buf.len2871 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap866, i64 1)
  %sum872 = extractvalue { i64, i1 } %b.new.buf.len2871, 0
  %ovf873 = extractvalue { i64, i1 } %b.new.buf.len2871, 1
  br i1 %ovf873, label %str_overflow_abort875, label %b.new.buf.len2874

b.nogrow2860:                                     ; preds = %b.app.new.len853
  br label %b.grow_done861

b.grow_done861:                                   ; preds = %b.nogrow2860, %b.new.buf.len2874
  %b.app.data882 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load844, i32 0, i32 1
  %b.app.data883 = load ptr, ptr %b.app.data882, align 8
  %b.app.dst884 = getelementptr i8, ptr %b.app.data883, i64 %b.app.cur.len849
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst884, ptr align 1 %app.str.data847, i64 %app.str.len846, i1 false)
  %b.app.nul885 = getelementptr i8, ptr %b.app.data883, i64 %sum851
  store i8 0, ptr %b.app.nul885, align 1
  %b.len.gep886 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load844, i32 0, i32 0
  store i64 %sum851, ptr %b.len.gep886, align 8
  store i1 true, ptr %"var.in_str'", align 1
  store i1 true, ptr %"var.str_triple'", align 1
  %var.load887 = load i64, ptr %"var.i'", align 8
  %addtmp888 = add i64 %var.load887, 3
  store i64 %addtmp888, ptr %"var.i'", align 8
  br label %choice.exit843

b.new.buf.len2874:                                ; preds = %abort.dead876, %b.grow2859
  %arena.cur877 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2878 = call ptr @dva_arena_alloc(ptr %arena.cur877, i64 %sum872)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2878, ptr align 1 %b.cur.data2870, i64 %b.cur.len2868, i1 false)
  %b.grow2.nul879 = getelementptr i8, ptr %b.new.buf2878, i64 %b.cur.len2868
  store i8 0, ptr %b.grow2.nul879, align 1
  %b.new.data2.gep880 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load844, i32 0, i32 1
  store ptr %b.new.buf2878, ptr %b.new.data2.gep880, align 8
  %b.new.cap2.gep881 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load844, i32 0, i32 2
  store i64 %b.new.cap866, ptr %b.new.cap2.gep881, align 8
  br label %b.grow_done861

str_overflow_abort875:                            ; preds = %b.grow2859
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead876:                                    ; No predecessors!
  br label %b.new.buf.len2874

b.byte_ok894:                                     ; preds = %abort.dead896, %choice.else842
  %b.byte.i8897 = trunc i64 %var.load890 to i8
  %b.len898 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 0
  %b.len899 = load i64, ptr %b.len898, align 8
  %b.cap900 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 2
  %b.cap901 = load i64, ptr %b.cap900, align 8
  %b.data902 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 1
  %b.data903 = load ptr, ptr %b.data902, align 8
  %b.needs.grow904 = icmp eq i64 %b.len899, %b.cap901
  br i1 %b.needs.grow904, label %b.grow905, label %b.nogrow906

b.byte_err895:                                    ; preds = %choice.else842
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead896:                                    ; No predecessors!
  br label %b.byte_ok894

b.grow905:                                        ; preds = %b.byte_ok894
  %b.cap2908 = mul i64 %b.cap901, 2
  %b.cap.small909 = icmp slt i64 %b.cap2908, 16
  %b.new.cap910 = select i1 %b.cap.small909, i64 16, i64 %b.cap2908
  %b.new.buf.len911 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap910, i64 1)
  %sum912 = extractvalue { i64, i1 } %b.new.buf.len911, 0
  %ovf913 = extractvalue { i64, i1 } %b.new.buf.len911, 1
  br i1 %ovf913, label %str_overflow_abort915, label %b.new.buf.len914

b.nogrow906:                                      ; preds = %b.byte_ok894
  br label %b.push_done907

b.push_done907:                                   ; preds = %b.nogrow906, %b.new.buf.len914
  %b.cur.data922 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 1
  %b.cur.data923 = load ptr, ptr %b.cur.data922, align 8
  %b.cur.len924 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 0
  %b.cur.len925 = load i64, ptr %b.cur.len924, align 8
  %b.byte.gep926 = getelementptr i8, ptr %b.cur.data923, i64 %b.cur.len925
  store i8 %b.byte.i8897, ptr %b.byte.gep926, align 1
  %b.next.len927 = add i64 %b.cur.len925, 1
  %b.nul928 = getelementptr i8, ptr %b.cur.data923, i64 %b.next.len927
  store i8 0, ptr %b.nul928, align 1
  %b.len.gep929 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 0
  store i64 %b.next.len927, ptr %b.len.gep929, align 8
  store i1 true, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load930 = load i64, ptr %"var.i'", align 8
  %addtmp931 = add i64 %var.load930, 1
  store i64 %addtmp931, ptr %"var.i'", align 8
  br label %choice.exit843

b.new.buf.len914:                                 ; preds = %abort.dead916, %b.grow905
  %arena.cur917 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf918 = call ptr @dva_arena_alloc(ptr %arena.cur917, i64 %sum912)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf918, ptr align 1 %b.data903, i64 %b.len899, i1 false)
  %b.grow.nul919 = getelementptr i8, ptr %b.new.buf918, i64 %b.len899
  store i8 0, ptr %b.grow.nul919, align 1
  %b.new.data.gep920 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 1
  store ptr %b.new.buf918, ptr %b.new.data.gep920, align 8
  %b.new.cap.gep921 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 2
  store i64 %b.new.cap910, ptr %b.new.cap.gep921, align 8
  br label %b.push_done907

str_overflow_abort915:                            ; preds = %b.grow905
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead916:                                    ; No predecessors!
  br label %b.new.buf.len914

choice.exit933:                                   ; preds = %choice.next935, %choice.case934
  %choice.res939 = phi i1 [ true, %choice.case934 ], [ false, %choice.next935 ]
  br i1 %choice.res939, label %choice.then940, label %choice.else941

choice.case934:                                   ; preds = %choice.else835
  br label %choice.exit933

choice.next935:                                   ; preds = %choice.else835
  br label %choice.exit933

choice.then940:                                   ; preds = %choice.exit933
  %b.load943 = load ptr, ptr %var.b, align 8
  %var.load944 = load i64, ptr %var.c, align 8
  %b.b.ge0945 = icmp sge i64 %var.load944, 0
  %b.b.le255946 = icmp sle i64 %var.load944, 255
  %b.byte.range947 = and i1 %b.b.ge0945, %b.b.le255946
  br i1 %b.byte.range947, label %b.byte_ok948, label %b.byte_err949

choice.else941:                                   ; preds = %choice.exit933
  %var.load1047 = load i1, ptr %var.has_lead_guard, align 1
  br i1 %var.load1047, label %and.561.then, label %and.561.else

choice.exit942:                                   ; preds = %choice.exit1054, %choice.exit1009
  br label %choice.exit836

b.byte_ok948:                                     ; preds = %abort.dead950, %choice.then940
  %b.byte.i8951 = trunc i64 %var.load944 to i8
  %b.len952 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 0
  %b.len953 = load i64, ptr %b.len952, align 8
  %b.cap954 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 2
  %b.cap955 = load i64, ptr %b.cap954, align 8
  %b.data956 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 1
  %b.data957 = load ptr, ptr %b.data956, align 8
  %b.needs.grow958 = icmp eq i64 %b.len953, %b.cap955
  br i1 %b.needs.grow958, label %b.grow959, label %b.nogrow960

b.byte_err949:                                    ; preds = %choice.then940
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead950:                                    ; No predecessors!
  br label %b.byte_ok948

b.grow959:                                        ; preds = %b.byte_ok948
  %b.cap2962 = mul i64 %b.cap955, 2
  %b.cap.small963 = icmp slt i64 %b.cap2962, 16
  %b.new.cap964 = select i1 %b.cap.small963, i64 16, i64 %b.cap2962
  %b.new.buf.len965 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap964, i64 1)
  %sum966 = extractvalue { i64, i1 } %b.new.buf.len965, 0
  %ovf967 = extractvalue { i64, i1 } %b.new.buf.len965, 1
  br i1 %ovf967, label %str_overflow_abort969, label %b.new.buf.len968

b.nogrow960:                                      ; preds = %b.byte_ok948
  br label %b.push_done961

b.push_done961:                                   ; preds = %b.nogrow960, %b.new.buf.len968
  %b.cur.data976 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 1
  %b.cur.data977 = load ptr, ptr %b.cur.data976, align 8
  %b.cur.len978 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 0
  %b.cur.len979 = load i64, ptr %b.cur.len978, align 8
  %b.byte.gep980 = getelementptr i8, ptr %b.cur.data977, i64 %b.cur.len979
  store i8 %b.byte.i8951, ptr %b.byte.gep980, align 1
  %b.next.len981 = add i64 %b.cur.len979, 1
  %b.nul982 = getelementptr i8, ptr %b.cur.data977, i64 %b.next.len981
  store i8 0, ptr %b.nul982, align 1
  %b.len.gep983 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 0
  store i64 %b.next.len981, ptr %b.len.gep983, align 8
  %var.load984 = load i64, ptr %"var.i'", align 8
  %addtmp985 = add i64 %var.load984, 1
  %var.load986 = load i64, ptr %var.n, align 8
  %cmptmp987 = icmp slt i64 %addtmp985, %var.load986
  br i1 %cmptmp987, label %and.559.then, label %and.559.else

b.new.buf.len968:                                 ; preds = %abort.dead970, %b.grow959
  %arena.cur971 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf972 = call ptr @dva_arena_alloc(ptr %arena.cur971, i64 %sum966)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf972, ptr align 1 %b.data957, i64 %b.len953, i1 false)
  %b.grow.nul973 = getelementptr i8, ptr %b.new.buf972, i64 %b.len953
  store i8 0, ptr %b.grow.nul973, align 1
  %b.new.data.gep974 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 1
  store ptr %b.new.buf972, ptr %b.new.data.gep974, align 8
  %b.new.cap.gep975 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 2
  store i64 %b.new.cap964, ptr %b.new.cap.gep975, align 8
  br label %b.push_done961

str_overflow_abort969:                            ; preds = %b.grow959
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead970:                                    ; No predecessors!
  br label %b.new.buf.len968

and.559.then:                                     ; preds = %b.push_done961
  %var.load988 = load i64, ptr %var.c1, align 8
  %val.match992 = icmp eq i64 %var.load988, 32
  %val.match993 = icmp eq i64 %var.load988, 9
  %case.or994 = or i1 %val.match992, %val.match993
  %val.match995 = icmp eq i64 %var.load988, 41
  %case.or996 = or i1 %case.or994, %val.match995
  %val.match997 = icmp eq i64 %var.load988, 93
  %case.or998 = or i1 %case.or996, %val.match997
  %val.match999 = icmp eq i64 %var.load988, 125
  %case.or1000 = or i1 %case.or998, %val.match999
  %val.match1001 = icmp eq i64 %var.load988, 44
  %case.or1002 = or i1 %case.or1000, %val.match1001
  %val.match1003 = icmp eq i64 %var.load988, 59
  %case.or1004 = or i1 %case.or1002, %val.match1003
  br i1 %case.or1004, label %choice.case990, label %choice.next991

and.559.else:                                     ; preds = %b.push_done961
  br label %and.559.exit

and.559.exit:                                     ; preds = %and.559.else, %choice.exit989
  %and.559.phi = phi i1 [ %nottmp1006, %choice.exit989 ], [ %cmptmp987, %and.559.else ]
  store i1 %and.559.phi, ptr %var.need_sp, align 1
  %var.load1007 = load i1, ptr %var.need_sp, align 1
  br i1 %var.load1007, label %choice.then1008, label %choice.exit1009

choice.exit989:                                   ; preds = %choice.next991, %choice.case990
  %choice.res1005 = phi i1 [ true, %choice.case990 ], [ false, %choice.next991 ]
  %nottmp1006 = xor i1 %choice.res1005, true
  br label %and.559.exit

choice.case990:                                   ; preds = %and.559.then
  br label %choice.exit989

choice.next991:                                   ; preds = %and.559.then
  br label %choice.exit989

choice.then1008:                                  ; preds = %and.559.exit
  %b.load1010 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1010, i32 0, i32 0
  %b.rn.cur.len1011 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1011, i64 1)
  %sum1012 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf1013 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf1013, label %str_overflow_abort1015, label %b.rn.new.len1014

choice.exit1009:                                  ; preds = %br.done.560, %and.559.exit
  %var.load1045 = load i64, ptr %"var.i'", align 8
  %addtmp1046 = add i64 %var.load1045, 1
  store i64 %addtmp1046, ptr %"var.i'", align 8
  br label %choice.exit942

b.rn.new.len1014:                                 ; preds = %abort.dead1016, %choice.then1008
  %b.cap1017 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1010, i32 0, i32 2
  %b.cap1018 = load i64, ptr %b.cap1017, align 8
  %b.need.grow1019 = icmp slt i64 %b.cap1018, %sum1012
  br i1 %b.need.grow1019, label %b.grow21020, label %b.nogrow21021

str_overflow_abort1015:                           ; preds = %choice.then1008
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1016:                                   ; No predecessors!
  br label %b.rn.new.len1014

b.grow21020:                                      ; preds = %b.rn.new.len1014
  %b.cap21023 = mul i64 %b.cap1018, 2
  %b.cap.small1024 = icmp slt i64 %b.cap21023, 16
  %b.cap.grow1025 = select i1 %b.cap.small1024, i64 16, i64 %b.cap21023
  %b.cap.need1026 = icmp slt i64 %b.cap.grow1025, %sum1012
  %b.new.cap1027 = select i1 %b.cap.need1026, i64 %sum1012, i64 %b.cap.grow1025
  %b.cur.len21028 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1010, i32 0, i32 0
  %b.cur.len21029 = load i64, ptr %b.cur.len21028, align 8
  %b.cur.data21030 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1010, i32 0, i32 1
  %b.cur.data21031 = load ptr, ptr %b.cur.data21030, align 8
  %b.new.buf.len21032 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1027, i64 1)
  %sum1033 = extractvalue { i64, i1 } %b.new.buf.len21032, 0
  %ovf1034 = extractvalue { i64, i1 } %b.new.buf.len21032, 1
  br i1 %ovf1034, label %str_overflow_abort1036, label %b.new.buf.len21035

b.nogrow21021:                                    ; preds = %b.rn.new.len1014
  br label %b.grow_done1022

b.grow_done1022:                                  ; preds = %b.nogrow21021, %b.new.buf.len21035
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1010, i32 0, i32 1
  %b.rn.data1043 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data1043, i64 %b.rn.cur.len1011
  br i1 true, label %br.b1.560, label %br.c2.560

b.new.buf.len21035:                               ; preds = %abort.dead1037, %b.grow21020
  %arena.cur1038 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21039 = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 %sum1033)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21039, ptr align 1 %b.cur.data21031, i64 %b.cur.len21029, i1 false)
  %b.grow2.nul1040 = getelementptr i8, ptr %b.new.buf21039, i64 %b.cur.len21029
  store i8 0, ptr %b.grow2.nul1040, align 1
  %b.new.data2.gep1041 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1010, i32 0, i32 1
  store ptr %b.new.buf21039, ptr %b.new.data2.gep1041, align 8
  %b.new.cap2.gep1042 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1010, i32 0, i32 2
  store i64 %b.new.cap1027, ptr %b.new.cap2.gep1042, align 8
  br label %b.grow_done1022

str_overflow_abort1036:                           ; preds = %b.grow21020
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1037:                                   ; No predecessors!
  br label %b.new.buf.len21035

br.b1.560:                                        ; preds = %b.grow_done1022
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.560

br.c2.560:                                        ; preds = %b.grow_done1022
  br i1 true, label %br.b2.560, label %br.c3.560

br.b2.560:                                        ; preds = %br.c2.560
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.560

br.c3.560:                                        ; preds = %br.c2.560
  br i1 true, label %br.b3.560, label %br.b4.560

br.b3.560:                                        ; preds = %br.c3.560
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.560

br.b4.560:                                        ; preds = %br.c3.560
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.560

br.done.560:                                      ; preds = %br.b4.560, %br.b3.560, %br.b2.560, %br.b1.560
  %br.nul = getelementptr i8, ptr %b.rn.data1043, i64 %sum1012
  store i8 0, ptr %br.nul, align 1
  %b.len.gep1044 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1010, i32 0, i32 0
  store i64 %sum1012, ptr %b.len.gep1044, align 8
  br label %choice.exit1009

and.561.then:                                     ; preds = %choice.else941
  %var.load1048 = load i1, ptr %"var.guard_closed'", align 1
  %nottmp1049 = xor i1 %var.load1048, true
  br label %and.561.exit

and.561.else:                                     ; preds = %choice.else941
  br label %and.561.exit

and.561.exit:                                     ; preds = %and.561.else, %and.561.then
  %and.561.phi = phi i1 [ %nottmp1049, %and.561.then ], [ %var.load1047, %and.561.else ]
  br i1 %and.561.phi, label %and.562.then, label %and.562.else

and.562.then:                                     ; preds = %and.561.exit
  %var.load1050 = load i64, ptr %var.c, align 8
  %cmptmp1051 = icmp eq i64 %var.load1050, 91
  br label %and.562.exit

and.562.else:                                     ; preds = %and.561.exit
  br label %and.562.exit

and.562.exit:                                     ; preds = %and.562.else, %and.562.then
  %and.562.phi = phi i1 [ %cmptmp1051, %and.562.then ], [ %and.561.phi, %and.562.else ]
  br i1 %and.562.phi, label %choice.then1052, label %choice.else1053

choice.then1052:                                  ; preds = %and.562.exit
  %var.load1055 = load i64, ptr %"var.bracket_depth'", align 8
  %addtmp1056 = add i64 %var.load1055, 1
  store i64 %addtmp1056, ptr %"var.bracket_depth'", align 8
  %b.load1057 = load ptr, ptr %var.b, align 8
  %var.load1058 = load i64, ptr %var.c, align 8
  %b.b.ge01059 = icmp sge i64 %var.load1058, 0
  %b.b.le2551060 = icmp sle i64 %var.load1058, 255
  %b.byte.range1061 = and i1 %b.b.ge01059, %b.b.le2551060
  br i1 %b.byte.range1061, label %b.byte_ok1062, label %b.byte_err1063

choice.else1053:                                  ; preds = %and.562.exit
  %var.load1100 = load i1, ptr %var.has_lead_guard, align 1
  br i1 %var.load1100, label %and.563.then, label %and.563.else

choice.exit1054:                                  ; preds = %choice.exit1107, %b.push_done1075
  br label %choice.exit942

b.byte_ok1062:                                    ; preds = %abort.dead1064, %choice.then1052
  %b.byte.i81065 = trunc i64 %var.load1058 to i8
  %b.len1066 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1057, i32 0, i32 0
  %b.len1067 = load i64, ptr %b.len1066, align 8
  %b.cap1068 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1057, i32 0, i32 2
  %b.cap1069 = load i64, ptr %b.cap1068, align 8
  %b.data1070 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1057, i32 0, i32 1
  %b.data1071 = load ptr, ptr %b.data1070, align 8
  %b.needs.grow1072 = icmp eq i64 %b.len1067, %b.cap1069
  br i1 %b.needs.grow1072, label %b.grow1073, label %b.nogrow1074

b.byte_err1063:                                   ; preds = %choice.then1052
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead1064:                                   ; No predecessors!
  br label %b.byte_ok1062

b.grow1073:                                       ; preds = %b.byte_ok1062
  %b.cap21076 = mul i64 %b.cap1069, 2
  %b.cap.small1077 = icmp slt i64 %b.cap21076, 16
  %b.new.cap1078 = select i1 %b.cap.small1077, i64 16, i64 %b.cap21076
  %b.new.buf.len1079 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1078, i64 1)
  %sum1080 = extractvalue { i64, i1 } %b.new.buf.len1079, 0
  %ovf1081 = extractvalue { i64, i1 } %b.new.buf.len1079, 1
  br i1 %ovf1081, label %str_overflow_abort1083, label %b.new.buf.len1082

b.nogrow1074:                                     ; preds = %b.byte_ok1062
  br label %b.push_done1075

b.push_done1075:                                  ; preds = %b.nogrow1074, %b.new.buf.len1082
  %b.cur.data1090 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1057, i32 0, i32 1
  %b.cur.data1091 = load ptr, ptr %b.cur.data1090, align 8
  %b.cur.len1092 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1057, i32 0, i32 0
  %b.cur.len1093 = load i64, ptr %b.cur.len1092, align 8
  %b.byte.gep1094 = getelementptr i8, ptr %b.cur.data1091, i64 %b.cur.len1093
  store i8 %b.byte.i81065, ptr %b.byte.gep1094, align 1
  %b.next.len1095 = add i64 %b.cur.len1093, 1
  %b.nul1096 = getelementptr i8, ptr %b.cur.data1091, i64 %b.next.len1095
  store i8 0, ptr %b.nul1096, align 1
  %b.len.gep1097 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1057, i32 0, i32 0
  store i64 %b.next.len1095, ptr %b.len.gep1097, align 8
  %var.load1098 = load i64, ptr %"var.i'", align 8
  %addtmp1099 = add i64 %var.load1098, 1
  store i64 %addtmp1099, ptr %"var.i'", align 8
  br label %choice.exit1054

b.new.buf.len1082:                                ; preds = %abort.dead1084, %b.grow1073
  %arena.cur1085 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf1086 = call ptr @dva_arena_alloc(ptr %arena.cur1085, i64 %sum1080)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1086, ptr align 1 %b.data1071, i64 %b.len1067, i1 false)
  %b.grow.nul1087 = getelementptr i8, ptr %b.new.buf1086, i64 %b.len1067
  store i8 0, ptr %b.grow.nul1087, align 1
  %b.new.data.gep1088 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1057, i32 0, i32 1
  store ptr %b.new.buf1086, ptr %b.new.data.gep1088, align 8
  %b.new.cap.gep1089 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1057, i32 0, i32 2
  store i64 %b.new.cap1078, ptr %b.new.cap.gep1089, align 8
  br label %b.push_done1075

str_overflow_abort1083:                           ; preds = %b.grow1073
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1084:                                   ; No predecessors!
  br label %b.new.buf.len1082

and.563.then:                                     ; preds = %choice.else1053
  %var.load1101 = load i1, ptr %"var.guard_closed'", align 1
  %nottmp1102 = xor i1 %var.load1101, true
  br label %and.563.exit

and.563.else:                                     ; preds = %choice.else1053
  br label %and.563.exit

and.563.exit:                                     ; preds = %and.563.else, %and.563.then
  %and.563.phi = phi i1 [ %nottmp1102, %and.563.then ], [ %var.load1100, %and.563.else ]
  br i1 %and.563.phi, label %and.564.then, label %and.564.else

and.564.then:                                     ; preds = %and.563.exit
  %var.load1103 = load i64, ptr %var.c, align 8
  %cmptmp1104 = icmp eq i64 %var.load1103, 93
  br label %and.564.exit

and.564.else:                                     ; preds = %and.563.exit
  br label %and.564.exit

and.564.exit:                                     ; preds = %and.564.else, %and.564.then
  %and.564.phi = phi i1 [ %cmptmp1104, %and.564.then ], [ %and.563.phi, %and.564.else ]
  br i1 %and.564.phi, label %choice.then1105, label %choice.else1106

choice.then1105:                                  ; preds = %and.564.exit
  %var.load1108 = load i64, ptr %"var.bracket_depth'", align 8
  %subtmp1109 = sub i64 %var.load1108, 1
  store i64 %subtmp1109, ptr %"var.bracket_depth'", align 8
  %b.load1110 = load ptr, ptr %var.b, align 8
  %var.load1111 = load i64, ptr %var.c, align 8
  %b.b.ge01112 = icmp sge i64 %var.load1111, 0
  %b.b.le2551113 = icmp sle i64 %var.load1111, 255
  %b.byte.range1114 = and i1 %b.b.ge01112, %b.b.le2551113
  br i1 %b.byte.range1114, label %b.byte_ok1115, label %b.byte_err1116

choice.else1106:                                  ; preds = %and.564.exit
  %var.load1230 = load i64, ptr %"var.i'", align 8
  %cmptmp1231 = icmp sgt i64 %var.load1230, 0
  br i1 %cmptmp1231, label %choice.then1232, label %choice.else1233

choice.exit1107:                                  ; preds = %choice.exit1292, %choice.exit1154
  br label %choice.exit1054

b.byte_ok1115:                                    ; preds = %abort.dead1117, %choice.then1105
  %b.byte.i81118 = trunc i64 %var.load1111 to i8
  %b.len1119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1110, i32 0, i32 0
  %b.len1120 = load i64, ptr %b.len1119, align 8
  %b.cap1121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1110, i32 0, i32 2
  %b.cap1122 = load i64, ptr %b.cap1121, align 8
  %b.data1123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1110, i32 0, i32 1
  %b.data1124 = load ptr, ptr %b.data1123, align 8
  %b.needs.grow1125 = icmp eq i64 %b.len1120, %b.cap1122
  br i1 %b.needs.grow1125, label %b.grow1126, label %b.nogrow1127

b.byte_err1116:                                   ; preds = %choice.then1105
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead1117:                                   ; No predecessors!
  br label %b.byte_ok1115

b.grow1126:                                       ; preds = %b.byte_ok1115
  %b.cap21129 = mul i64 %b.cap1122, 2
  %b.cap.small1130 = icmp slt i64 %b.cap21129, 16
  %b.new.cap1131 = select i1 %b.cap.small1130, i64 16, i64 %b.cap21129
  %b.new.buf.len1132 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1131, i64 1)
  %sum1133 = extractvalue { i64, i1 } %b.new.buf.len1132, 0
  %ovf1134 = extractvalue { i64, i1 } %b.new.buf.len1132, 1
  br i1 %ovf1134, label %str_overflow_abort1136, label %b.new.buf.len1135

b.nogrow1127:                                     ; preds = %b.byte_ok1115
  br label %b.push_done1128

b.push_done1128:                                  ; preds = %b.nogrow1127, %b.new.buf.len1135
  %b.cur.data1143 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1110, i32 0, i32 1
  %b.cur.data1144 = load ptr, ptr %b.cur.data1143, align 8
  %b.cur.len1145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1110, i32 0, i32 0
  %b.cur.len1146 = load i64, ptr %b.cur.len1145, align 8
  %b.byte.gep1147 = getelementptr i8, ptr %b.cur.data1144, i64 %b.cur.len1146
  store i8 %b.byte.i81118, ptr %b.byte.gep1147, align 1
  %b.next.len1148 = add i64 %b.cur.len1146, 1
  %b.nul1149 = getelementptr i8, ptr %b.cur.data1144, i64 %b.next.len1148
  store i8 0, ptr %b.nul1149, align 1
  %b.len.gep1150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1110, i32 0, i32 0
  store i64 %b.next.len1148, ptr %b.len.gep1150, align 8
  %var.load1151 = load i64, ptr %"var.bracket_depth'", align 8
  %cmptmp1152 = icmp sle i64 %var.load1151, 0
  br i1 %cmptmp1152, label %choice.then1153, label %choice.exit1154

b.new.buf.len1135:                                ; preds = %abort.dead1137, %b.grow1126
  %arena.cur1138 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf1139 = call ptr @dva_arena_alloc(ptr %arena.cur1138, i64 %sum1133)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1139, ptr align 1 %b.data1124, i64 %b.len1120, i1 false)
  %b.grow.nul1140 = getelementptr i8, ptr %b.new.buf1139, i64 %b.len1120
  store i8 0, ptr %b.grow.nul1140, align 1
  %b.new.data.gep1141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1110, i32 0, i32 1
  store ptr %b.new.buf1139, ptr %b.new.data.gep1141, align 8
  %b.new.cap.gep1142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1110, i32 0, i32 2
  store i64 %b.new.cap1131, ptr %b.new.cap.gep1142, align 8
  br label %b.push_done1128

str_overflow_abort1136:                           ; preds = %b.grow1126
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1137:                                   ; No predecessors!
  br label %b.new.buf.len1135

choice.then1153:                                  ; preds = %b.push_done1128
  store i1 true, ptr %"var.guard_closed'", align 1
  %var.load1155 = load i64, ptr %"var.i'", align 8
  %addtmp1156 = add i64 %var.load1155, 1
  %var.load1157 = load i64, ptr %var.n, align 8
  %cmptmp1158 = icmp slt i64 %addtmp1156, %var.load1157
  br i1 %cmptmp1158, label %and.565.then, label %and.565.else

choice.exit1154:                                  ; preds = %choice.exit1181, %b.push_done1128
  %var.load1228 = load i64, ptr %"var.i'", align 8
  %addtmp1229 = add i64 %var.load1228, 1
  store i64 %addtmp1229, ptr %"var.i'", align 8
  br label %choice.exit1107

and.565.then:                                     ; preds = %choice.then1153
  %var.load1159 = load i64, ptr %var.c1, align 8
  %val.match1163 = icmp eq i64 %var.load1159, 32
  %val.match1164 = icmp eq i64 %var.load1159, 9
  %case.or1165 = or i1 %val.match1163, %val.match1164
  %val.match1166 = icmp eq i64 %var.load1159, 41
  %case.or1167 = or i1 %case.or1165, %val.match1166
  %val.match1168 = icmp eq i64 %var.load1159, 93
  %case.or1169 = or i1 %case.or1167, %val.match1168
  %val.match1170 = icmp eq i64 %var.load1159, 125
  %case.or1171 = or i1 %case.or1169, %val.match1170
  %val.match1172 = icmp eq i64 %var.load1159, 44
  %case.or1173 = or i1 %case.or1171, %val.match1172
  %val.match1174 = icmp eq i64 %var.load1159, 59
  %case.or1175 = or i1 %case.or1173, %val.match1174
  %val.match1176 = icmp eq i64 %var.load1159, 46
  %case.or1177 = or i1 %case.or1175, %val.match1176
  br i1 %case.or1177, label %choice.case1161, label %choice.next1162

and.565.else:                                     ; preds = %choice.then1153
  br label %and.565.exit

and.565.exit:                                     ; preds = %and.565.else, %choice.exit1160
  %and.565.phi = phi i1 [ %nottmp1179, %choice.exit1160 ], [ %cmptmp1158, %and.565.else ]
  br i1 %and.565.phi, label %choice.then1180, label %choice.exit1181

choice.exit1160:                                  ; preds = %choice.next1162, %choice.case1161
  %choice.res1178 = phi i1 [ true, %choice.case1161 ], [ false, %choice.next1162 ]
  %nottmp1179 = xor i1 %choice.res1178, true
  br label %and.565.exit

choice.case1161:                                  ; preds = %and.565.then
  br label %choice.exit1160

choice.next1162:                                  ; preds = %and.565.then
  br label %choice.exit1160

choice.then1180:                                  ; preds = %and.565.exit
  %b.load1182 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len1183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1182, i32 0, i32 0
  %b.rn.cur.len1184 = load i64, ptr %b.rn.cur.len1183, align 8
  %b.rn.new.len1185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1184, i64 1)
  %sum1186 = extractvalue { i64, i1 } %b.rn.new.len1185, 0
  %ovf1187 = extractvalue { i64, i1 } %b.rn.new.len1185, 1
  br i1 %ovf1187, label %str_overflow_abort1189, label %b.rn.new.len1188

choice.exit1181:                                  ; preds = %br.done.566, %and.565.exit
  br label %choice.exit1154

b.rn.new.len1188:                                 ; preds = %abort.dead1190, %choice.then1180
  %b.cap1191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1182, i32 0, i32 2
  %b.cap1192 = load i64, ptr %b.cap1191, align 8
  %b.need.grow1193 = icmp slt i64 %b.cap1192, %sum1186
  br i1 %b.need.grow1193, label %b.grow21194, label %b.nogrow21195

str_overflow_abort1189:                           ; preds = %choice.then1180
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1190:                                   ; No predecessors!
  br label %b.rn.new.len1188

b.grow21194:                                      ; preds = %b.rn.new.len1188
  %b.cap21197 = mul i64 %b.cap1192, 2
  %b.cap.small1198 = icmp slt i64 %b.cap21197, 16
  %b.cap.grow1199 = select i1 %b.cap.small1198, i64 16, i64 %b.cap21197
  %b.cap.need1200 = icmp slt i64 %b.cap.grow1199, %sum1186
  %b.new.cap1201 = select i1 %b.cap.need1200, i64 %sum1186, i64 %b.cap.grow1199
  %b.cur.len21202 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1182, i32 0, i32 0
  %b.cur.len21203 = load i64, ptr %b.cur.len21202, align 8
  %b.cur.data21204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1182, i32 0, i32 1
  %b.cur.data21205 = load ptr, ptr %b.cur.data21204, align 8
  %b.new.buf.len21206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1201, i64 1)
  %sum1207 = extractvalue { i64, i1 } %b.new.buf.len21206, 0
  %ovf1208 = extractvalue { i64, i1 } %b.new.buf.len21206, 1
  br i1 %ovf1208, label %str_overflow_abort1210, label %b.new.buf.len21209

b.nogrow21195:                                    ; preds = %b.rn.new.len1188
  br label %b.grow_done1196

b.grow_done1196:                                  ; preds = %b.nogrow21195, %b.new.buf.len21209
  %b.rn.data1217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1182, i32 0, i32 1
  %b.rn.data1218 = load ptr, ptr %b.rn.data1217, align 8
  %b.rn.dst1219 = getelementptr i8, ptr %b.rn.data1218, i64 %b.rn.cur.len1184
  br i1 true, label %br.b1.566, label %br.c2.566

b.new.buf.len21209:                               ; preds = %abort.dead1211, %b.grow21194
  %arena.cur1212 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21213 = call ptr @dva_arena_alloc(ptr %arena.cur1212, i64 %sum1207)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21213, ptr align 1 %b.cur.data21205, i64 %b.cur.len21203, i1 false)
  %b.grow2.nul1214 = getelementptr i8, ptr %b.new.buf21213, i64 %b.cur.len21203
  store i8 0, ptr %b.grow2.nul1214, align 1
  %b.new.data2.gep1215 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1182, i32 0, i32 1
  store ptr %b.new.buf21213, ptr %b.new.data2.gep1215, align 8
  %b.new.cap2.gep1216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1182, i32 0, i32 2
  store i64 %b.new.cap1201, ptr %b.new.cap2.gep1216, align 8
  br label %b.grow_done1196

str_overflow_abort1210:                           ; preds = %b.grow21194
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1211:                                   ; No predecessors!
  br label %b.new.buf.len21209

br.b1.566:                                        ; preds = %b.grow_done1196
  store i8 32, ptr %b.rn.dst1219, align 1
  br label %br.done.566

br.c2.566:                                        ; preds = %b.grow_done1196
  br i1 true, label %br.b2.566, label %br.c3.566

br.b2.566:                                        ; preds = %br.c2.566
  store i8 -64, ptr %b.rn.dst1219, align 1
  %br.dst11220 = getelementptr i8, ptr %b.rn.dst1219, i64 1
  store i8 -96, ptr %br.dst11220, align 1
  br label %br.done.566

br.c3.566:                                        ; preds = %br.c2.566
  br i1 true, label %br.b3.566, label %br.b4.566

br.b3.566:                                        ; preds = %br.c3.566
  store i8 -32, ptr %b.rn.dst1219, align 1
  %br.dst1.31221 = getelementptr i8, ptr %b.rn.dst1219, i64 1
  store i8 -128, ptr %br.dst1.31221, align 1
  %br.dst2.31222 = getelementptr i8, ptr %b.rn.dst1219, i64 2
  store i8 -96, ptr %br.dst2.31222, align 1
  br label %br.done.566

br.b4.566:                                        ; preds = %br.c3.566
  store i8 -16, ptr %b.rn.dst1219, align 1
  %br.dst1.41223 = getelementptr i8, ptr %b.rn.dst1219, i64 1
  store i8 -128, ptr %br.dst1.41223, align 1
  %br.dst2.41224 = getelementptr i8, ptr %b.rn.dst1219, i64 2
  store i8 -128, ptr %br.dst2.41224, align 1
  %br.dst3.41225 = getelementptr i8, ptr %b.rn.dst1219, i64 3
  store i8 -96, ptr %br.dst3.41225, align 1
  br label %br.done.566

br.done.566:                                      ; preds = %br.b4.566, %br.b3.566, %br.b2.566, %br.b1.566
  %br.nul1226 = getelementptr i8, ptr %b.rn.data1218, i64 %sum1186
  store i8 0, ptr %br.nul1226, align 1
  %b.len.gep1227 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1182, i32 0, i32 0
  store i64 %sum1186, ptr %b.len.gep1227, align 8
  br label %choice.exit1181

choice.then1232:                                  ; preds = %choice.else1106
  %var.load1235 = load ptr, ptr %var.body, align 8
  %s.read.len1236 = getelementptr inbounds { i64, ptr }, ptr %var.load1235, i32 0, i32 0
  %s.read.len1237 = load i64, ptr %s.read.len1236, align 8
  %s.read.len1238 = and i64 %s.read.len1237, 281474976710655
  %s.read.data1239 = getelementptr inbounds { i64, ptr }, ptr %var.load1235, i32 0, i32 1
  %s.read.data1240 = load ptr, ptr %s.read.data1239, align 8
  %var.load1241 = load i64, ptr %"var.i'", align 8
  %subtmp1242 = sub i64 %var.load1241, 1
  %idx.oob1243 = icmp uge i64 %subtmp1242, %s.read.len1238
  br i1 %idx.oob1243, label %idx_oob1245, label %idx_ok1244

choice.else1233:                                  ; preds = %choice.else1106
  br label %choice.exit1234

choice.exit1234:                                  ; preds = %choice.else1233, %idx_ok1244
  %choice.res1250 = phi i64 [ %s.byte.val1249, %idx_ok1244 ], [ 0, %choice.else1233 ]
  store i64 %choice.res1250, ptr %var.prev_c, align 8
  %var.load1251 = load i64, ptr %var.c, align 8
  %cmptmp1252 = icmp eq i64 %var.load1251, 58
  br i1 %cmptmp1252, label %and.567.then, label %and.567.else

idx_ok1244:                                       ; preds = %abort.dead1246, %choice.then1232
  %s.byte.gep1247 = getelementptr i8, ptr %s.read.data1240, i64 %subtmp1242
  %s.byte1248 = load i8, ptr %s.byte.gep1247, align 1
  %s.byte.val1249 = zext i8 %s.byte1248 to i64
  br label %choice.exit1234

idx_oob1245:                                      ; preds = %choice.then1232
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead1246:                                   ; No predecessors!
  br label %idx_ok1244

and.567.then:                                     ; preds = %choice.exit1234
  %var.load1253 = load i64, ptr %var.prev_c, align 8
  %val.match1257 = icmp eq i64 %var.load1253, 58
  %val.match1258 = icmp eq i64 %var.load1253, 45
  %case.or1259 = or i1 %val.match1257, %val.match1258
  %val.match1260 = icmp eq i64 %var.load1253, 32
  %case.or1261 = or i1 %case.or1259, %val.match1260
  %val.match1262 = icmp eq i64 %var.load1253, 9
  %case.or1263 = or i1 %case.or1261, %val.match1262
  br i1 %case.or1263, label %choice.case1255, label %choice.next1256

and.567.else:                                     ; preds = %choice.exit1234
  br label %and.567.exit

and.567.exit:                                     ; preds = %and.567.else, %choice.exit1254
  %and.567.phi = phi i1 [ %nottmp1265, %choice.exit1254 ], [ %cmptmp1252, %and.567.else ]
  br i1 %and.567.phi, label %and.568.then, label %and.568.else

choice.exit1254:                                  ; preds = %choice.next1256, %choice.case1255
  %choice.res1264 = phi i1 [ true, %choice.case1255 ], [ false, %choice.next1256 ]
  %nottmp1265 = xor i1 %choice.res1264, true
  br label %and.567.exit

choice.case1255:                                  ; preds = %and.567.then
  br label %choice.exit1254

choice.next1256:                                  ; preds = %and.567.then
  br label %choice.exit1254

and.568.then:                                     ; preds = %and.567.exit
  %var.load1266 = load i64, ptr %var.c1, align 8
  %val.match1270 = icmp eq i64 %var.load1266, 58
  %val.match1271 = icmp eq i64 %var.load1266, 61
  %case.or1272 = or i1 %val.match1270, %val.match1271
  %val.match1273 = icmp eq i64 %var.load1266, 32
  %case.or1274 = or i1 %case.or1272, %val.match1273
  %val.match1275 = icmp eq i64 %var.load1266, 9
  %case.or1276 = or i1 %case.or1274, %val.match1275
  %val.match1277 = icmp eq i64 %var.load1266, 41
  %case.or1278 = or i1 %case.or1276, %val.match1277
  %val.match1279 = icmp eq i64 %var.load1266, 93
  %case.or1280 = or i1 %case.or1278, %val.match1279
  %val.match1281 = icmp eq i64 %var.load1266, 125
  %case.or1282 = or i1 %case.or1280, %val.match1281
  %val.match1283 = icmp eq i64 %var.load1266, 44
  %case.or1284 = or i1 %case.or1282, %val.match1283
  %val.match1285 = icmp eq i64 %var.load1266, 59
  %case.or1286 = or i1 %case.or1284, %val.match1285
  br i1 %case.or1286, label %choice.case1268, label %choice.next1269

and.568.else:                                     ; preds = %and.567.exit
  br label %and.568.exit

and.568.exit:                                     ; preds = %and.568.else, %choice.exit1267
  %and.568.phi = phi i1 [ %nottmp1288, %choice.exit1267 ], [ %and.567.phi, %and.568.else ]
  store i1 %and.568.phi, ptr %var.is_annot_colon, align 1
  %var.load1289 = load i1, ptr %var.is_annot_colon, align 1
  br i1 %var.load1289, label %choice.then1290, label %choice.else1291

choice.exit1267:                                  ; preds = %choice.next1269, %choice.case1268
  %choice.res1287 = phi i1 [ true, %choice.case1268 ], [ false, %choice.next1269 ]
  %nottmp1288 = xor i1 %choice.res1287, true
  br label %and.568.exit

choice.case1268:                                  ; preds = %and.568.then
  br label %choice.exit1267

choice.next1269:                                  ; preds = %and.568.then
  br label %choice.exit1267

choice.then1290:                                  ; preds = %and.568.exit
  %b.load1293 = load ptr, ptr %var.b, align 8
  %app.str.len1294 = load i64, ptr @str.11.struct, align 8
  %app.str.len1295 = and i64 %app.str.len1294, 281474976710655
  %app.str.data1296 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %b.app.cur.len1297 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1293, i32 0, i32 0
  %b.app.cur.len1298 = load i64, ptr %b.app.cur.len1297, align 8
  %b.app.new.len1299 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len1298, i64 %app.str.len1295)
  %sum1300 = extractvalue { i64, i1 } %b.app.new.len1299, 0
  %ovf1301 = extractvalue { i64, i1 } %b.app.new.len1299, 1
  br i1 %ovf1301, label %str_overflow_abort1303, label %b.app.new.len1302

choice.else1291:                                  ; preds = %and.568.exit
  %b.load1338 = load ptr, ptr %var.b, align 8
  %var.load1339 = load i64, ptr %var.c, align 8
  %b.b.ge01340 = icmp sge i64 %var.load1339, 0
  %b.b.le2551341 = icmp sle i64 %var.load1339, 255
  %b.byte.range1342 = and i1 %b.b.ge01340, %b.b.le2551341
  br i1 %b.byte.range1342, label %b.byte_ok1343, label %b.byte_err1344

choice.exit1292:                                  ; preds = %b.push_done1356, %b.grow_done1310
  br label %choice.exit1107

b.app.new.len1302:                                ; preds = %abort.dead1304, %choice.then1290
  %b.cap1305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1293, i32 0, i32 2
  %b.cap1306 = load i64, ptr %b.cap1305, align 8
  %b.need.grow1307 = icmp slt i64 %b.cap1306, %sum1300
  br i1 %b.need.grow1307, label %b.grow21308, label %b.nogrow21309

str_overflow_abort1303:                           ; preds = %choice.then1290
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1304:                                   ; No predecessors!
  br label %b.app.new.len1302

b.grow21308:                                      ; preds = %b.app.new.len1302
  %b.cap21311 = mul i64 %b.cap1306, 2
  %b.cap.small1312 = icmp slt i64 %b.cap21311, 16
  %b.cap.grow1313 = select i1 %b.cap.small1312, i64 16, i64 %b.cap21311
  %b.cap.need1314 = icmp slt i64 %b.cap.grow1313, %sum1300
  %b.new.cap1315 = select i1 %b.cap.need1314, i64 %sum1300, i64 %b.cap.grow1313
  %b.cur.len21316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1293, i32 0, i32 0
  %b.cur.len21317 = load i64, ptr %b.cur.len21316, align 8
  %b.cur.data21318 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1293, i32 0, i32 1
  %b.cur.data21319 = load ptr, ptr %b.cur.data21318, align 8
  %b.new.buf.len21320 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1315, i64 1)
  %sum1321 = extractvalue { i64, i1 } %b.new.buf.len21320, 0
  %ovf1322 = extractvalue { i64, i1 } %b.new.buf.len21320, 1
  br i1 %ovf1322, label %str_overflow_abort1324, label %b.new.buf.len21323

b.nogrow21309:                                    ; preds = %b.app.new.len1302
  br label %b.grow_done1310

b.grow_done1310:                                  ; preds = %b.nogrow21309, %b.new.buf.len21323
  %b.app.data1331 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1293, i32 0, i32 1
  %b.app.data1332 = load ptr, ptr %b.app.data1331, align 8
  %b.app.dst1333 = getelementptr i8, ptr %b.app.data1332, i64 %b.app.cur.len1298
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1333, ptr align 1 %app.str.data1296, i64 %app.str.len1295, i1 false)
  %b.app.nul1334 = getelementptr i8, ptr %b.app.data1332, i64 %sum1300
  store i8 0, ptr %b.app.nul1334, align 1
  %b.len.gep1335 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1293, i32 0, i32 0
  store i64 %sum1300, ptr %b.len.gep1335, align 8
  %var.load1336 = load i64, ptr %"var.i'", align 8
  %addtmp1337 = add i64 %var.load1336, 1
  store i64 %addtmp1337, ptr %"var.i'", align 8
  br label %choice.exit1292

b.new.buf.len21323:                               ; preds = %abort.dead1325, %b.grow21308
  %arena.cur1326 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21327 = call ptr @dva_arena_alloc(ptr %arena.cur1326, i64 %sum1321)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21327, ptr align 1 %b.cur.data21319, i64 %b.cur.len21317, i1 false)
  %b.grow2.nul1328 = getelementptr i8, ptr %b.new.buf21327, i64 %b.cur.len21317
  store i8 0, ptr %b.grow2.nul1328, align 1
  %b.new.data2.gep1329 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1293, i32 0, i32 1
  store ptr %b.new.buf21327, ptr %b.new.data2.gep1329, align 8
  %b.new.cap2.gep1330 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1293, i32 0, i32 2
  store i64 %b.new.cap1315, ptr %b.new.cap2.gep1330, align 8
  br label %b.grow_done1310

str_overflow_abort1324:                           ; preds = %b.grow21308
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1325:                                   ; No predecessors!
  br label %b.new.buf.len21323

b.byte_ok1343:                                    ; preds = %abort.dead1345, %choice.else1291
  %b.byte.i81346 = trunc i64 %var.load1339 to i8
  %b.len1347 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1338, i32 0, i32 0
  %b.len1348 = load i64, ptr %b.len1347, align 8
  %b.cap1349 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1338, i32 0, i32 2
  %b.cap1350 = load i64, ptr %b.cap1349, align 8
  %b.data1351 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1338, i32 0, i32 1
  %b.data1352 = load ptr, ptr %b.data1351, align 8
  %b.needs.grow1353 = icmp eq i64 %b.len1348, %b.cap1350
  br i1 %b.needs.grow1353, label %b.grow1354, label %b.nogrow1355

b.byte_err1344:                                   ; preds = %choice.else1291
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead1345:                                   ; No predecessors!
  br label %b.byte_ok1343

b.grow1354:                                       ; preds = %b.byte_ok1343
  %b.cap21357 = mul i64 %b.cap1350, 2
  %b.cap.small1358 = icmp slt i64 %b.cap21357, 16
  %b.new.cap1359 = select i1 %b.cap.small1358, i64 16, i64 %b.cap21357
  %b.new.buf.len1360 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1359, i64 1)
  %sum1361 = extractvalue { i64, i1 } %b.new.buf.len1360, 0
  %ovf1362 = extractvalue { i64, i1 } %b.new.buf.len1360, 1
  br i1 %ovf1362, label %str_overflow_abort1364, label %b.new.buf.len1363

b.nogrow1355:                                     ; preds = %b.byte_ok1343
  br label %b.push_done1356

b.push_done1356:                                  ; preds = %b.nogrow1355, %b.new.buf.len1363
  %b.cur.data1371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1338, i32 0, i32 1
  %b.cur.data1372 = load ptr, ptr %b.cur.data1371, align 8
  %b.cur.len1373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1338, i32 0, i32 0
  %b.cur.len1374 = load i64, ptr %b.cur.len1373, align 8
  %b.byte.gep1375 = getelementptr i8, ptr %b.cur.data1372, i64 %b.cur.len1374
  store i8 %b.byte.i81346, ptr %b.byte.gep1375, align 1
  %b.next.len1376 = add i64 %b.cur.len1374, 1
  %b.nul1377 = getelementptr i8, ptr %b.cur.data1372, i64 %b.next.len1376
  store i8 0, ptr %b.nul1377, align 1
  %b.len.gep1378 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1338, i32 0, i32 0
  store i64 %b.next.len1376, ptr %b.len.gep1378, align 8
  %var.load1379 = load i64, ptr %"var.i'", align 8
  %addtmp1380 = add i64 %var.load1379, 1
  store i64 %addtmp1380, ptr %"var.i'", align 8
  br label %choice.exit1292

b.new.buf.len1363:                                ; preds = %abort.dead1365, %b.grow1354
  %arena.cur1366 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf1367 = call ptr @dva_arena_alloc(ptr %arena.cur1366, i64 %sum1361)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1367, ptr align 1 %b.data1352, i64 %b.len1348, i1 false)
  %b.grow.nul1368 = getelementptr i8, ptr %b.new.buf1367, i64 %b.len1348
  store i8 0, ptr %b.grow.nul1368, align 1
  %b.new.data.gep1369 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1338, i32 0, i32 1
  store ptr %b.new.buf1367, ptr %b.new.data.gep1369, align 8
  %b.new.cap.gep1370 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1338, i32 0, i32 2
  store i64 %b.new.cap1359, ptr %b.new.cap.gep1370, align 8
  br label %b.push_done1356

str_overflow_abort1364:                           ; preds = %b.grow1354
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1365:                                   ; No predecessors!
  br label %b.new.buf.len1363

b.freeze.check:                                   ; preds = %loop.exit.550
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data1383, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data1383, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data1383, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len1382, 1
  %arena.cur1384 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur1384, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data1383, i64 %b.freeze.len1382, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len1382
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.550
  %b.freeze.data1385 = phi ptr [ %b.freeze.data1383, %loop.exit.550 ], [ %b.freeze.data1383, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur1386 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur1386, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len1382, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data1385, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1381, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1381, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1381, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define i1 @"formatter::starts_with_str"(ptr %0, ptr %1) #0 {
entry:
  %var.pfx = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.pfx, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %var.load3 = load ptr, ptr %var.pfx, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  %active.gen10 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current11 = icmp eq i64 %str.tag7, %active.gen10
  %tag.fast.ok12 = or i1 %tag.immortal9, %tag.current11
  br i1 %tag.fast.ok12, label %str_ok8, label %tag.slow_check13

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok8:                                          ; preds = %tag.slow_check13, %str_ok
  %cmptmp = icmp sge i64 %str.len.query2, %str.len.query6
  br i1 %cmptmp, label %and.540.then, label %and.540.else

tag.slow_check13:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

and.540.then:                                     ; preds = %str_ok8
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.chk.len15 = load i64, ptr %s.chk.len, align 8
  %s.chk.len16 = and i64 %s.chk.len15, 281474976710655
  %str.tag17 = lshr i64 %s.chk.len15, 48
  %tag.immortal19 = icmp eq i64 %str.tag17, 0
  %active.gen20 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current21 = icmp eq i64 %str.tag17, %active.gen20
  %tag.fast.ok22 = or i1 %tag.immortal19, %tag.current21
  br i1 %tag.fast.ok22, label %str_ok18, label %tag.slow_check23

and.540.else:                                     ; preds = %str_ok8
  br label %and.540.exit

and.540.exit:                                     ; preds = %and.540.else, %str.eq.merge
  %and.540.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.540.else ]
  ret i1 %and.540.phi

str_ok18:                                         ; preds = %tag.slow_check23, %and.540.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data, align 8
  %var.load27 = load ptr, ptr %var.pfx, align 8
  %str.len.query28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query28, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %str.tag31 = lshr i64 %str.len.query29, 48
  %tag.immortal33 = icmp eq i64 %str.tag31, 0
  %active.gen34 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current35 = icmp eq i64 %str.tag31, %active.gen34
  %tag.fast.ok36 = or i1 %tag.immortal33, %tag.current35
  br i1 %tag.fast.ok36, label %str_ok32, label %tag.slow_check37

tag.slow_check23:                                 ; preds = %and.540.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag17)
  br label %str_ok18

str_ok32:                                         ; preds = %tag.slow_check37, %str_ok18
  %rel.start = add i64 %s.read.len25, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len25
  %final.start = select i1 %start.gt.len, i64 %s.read.len25, i64 %c.start.0
  %end.is_neg = icmp slt i64 %str.len.query30, 0
  %rel.end = add i64 %s.read.len25, %str.len.query30
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %str.len.query30
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len25
  %final.end = select i1 %end.gt.len, i64 %s.read.len25, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data26, i64 %final.start
  %var.load38 = load ptr, ptr %var.pfx, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %cmp.str39 = load i64, ptr %cmp.str, align 8
  %cmp.str40 = and i64 %cmp.str39, 281474976710655
  %str.tag41 = lshr i64 %cmp.str39, 48
  %tag.immortal43 = icmp eq i64 %str.tag41, 0
  %active.gen44 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current45 = icmp eq i64 %str.tag41, %active.gen44
  %tag.fast.ok46 = or i1 %tag.immortal43, %tag.current45
  br i1 %tag.fast.ok46, label %str_ok42, label %tag.slow_check47

tag.slow_check37:                                 ; preds = %str_ok18
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag31)
  br label %str_ok32

str_ok42:                                         ; preds = %tag.slow_check47, %str_ok32
  %cmp.str48 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %cmp.str49 = load ptr, ptr %cmp.str48, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str40
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check47:                                 ; preds = %str_ok32
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag41)
  br label %str_ok42

str.eq.then:                                      ; preds = %str_ok42
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str49, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok42
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.540.exit
}

declare i32 @memcmp(ptr, ptr, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"formatter::make_spaces"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.569 = alloca i64, align 8
  %loop.idx.569 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.count = alloca i64, align 8
  store i64 %0, ptr %var.count, align 8
  %var.load = load i64, ptr %var.count, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.12.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.count, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load1, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load1
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len2:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load4 = load i64, ptr %var.count, align 8
  store i64 0, ptr %loop.idx.569, align 8
  br label %loop.header.569

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

loop.header.569:                                  ; preds = %loop.latch.569, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.569, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load4
  br i1 %loop.cond, label %loop.body.569, label %loop.exit.nat.569

loop.body.569:                                    ; preds = %loop.header.569
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.569, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len5 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len5, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf7 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.rn.new.len8

loop.exit.nat.569:                                ; preds = %loop.header.569
  br label %loop.exit.569

loop.latch.569:                                   ; preds = %br.done.570
  %step.val = load i64, ptr %loop.step.569, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.569, align 8
  br label %loop.header.569

loop.exit.569:                                    ; preds = %loop.exit.nat.569
  %var.load22 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 0
  %b.freeze.len23 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 1
  %b.freeze.data24 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len8:                                    ; preds = %abort.dead10, %loop.body.569
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap11 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap11, %sum6
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort9:                              ; preds = %loop.body.569
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %b.rn.new.len8

b.grow2:                                          ; preds = %b.rn.new.len8
  %b.cap2 = mul i64 %b.cap11, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum6
  %b.new.cap = select i1 %b.cap.need, i64 %sum6, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len212 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data213 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum14 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf15 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf15, label %str_overflow_abort17, label %b.new.buf.len216

b.nogrow2:                                        ; preds = %b.rn.new.len8
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len216
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data20 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data20, i64 %b.rn.cur.len5
  br i1 true, label %br.b1.570, label %br.c2.570

b.new.buf.len216:                                 ; preds = %abort.dead18, %b.grow2
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum14)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data213, i64 %b.cur.len212, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len212
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort17:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %b.new.buf.len216

br.b1.570:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.570

br.c2.570:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.570, label %br.c3.570

br.b2.570:                                        ; preds = %br.c2.570
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.570

br.c3.570:                                        ; preds = %br.c2.570
  br i1 true, label %br.b3.570, label %br.b4.570

br.b3.570:                                        ; preds = %br.c3.570
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.570

br.b4.570:                                        ; preds = %br.c3.570
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.570

br.done.570:                                      ; preds = %br.b4.570, %br.b3.570, %br.b2.570, %br.b1.570
  %br.nul = getelementptr i8, ptr %b.rn.data20, i64 %sum6
  store i8 0, ptr %br.nul, align 1
  %b.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum6, ptr %b.len.gep21, align 8
  br label %loop.latch.569

b.freeze.check:                                   ; preds = %loop.exit.569
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data24, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data24, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data24, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len23, 1
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data24, i64 %b.freeze.len23, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len23
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.569
  %b.freeze.data26 = phi ptr [ %b.freeze.data24, %loop.exit.569 ], [ %b.freeze.data24, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len23, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data26, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack28 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack28
}

define { i64, ptr } @"formatter::strip_leading_ws"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.571 = alloca i64, align 8
  %loop.idx.571 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 0, ptr %"var.i'", align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.571, align 8
  br label %loop.header.571

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.571:                                  ; preds = %loop.latch.571, %str_ok
  %counter.load = load i64, ptr %loop.idx.571, align 8
  br label %loop.body.571

loop.body.571:                                    ; preds = %loop.header.571
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.571, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load3 = load i64, ptr %"var.i'", align 8
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.571:                                ; No predecessors!
  br label %loop.exit.571

loop.latch.571:                                   ; preds = %choice.exit13
  %step.val = load i64, ptr %loop.step.571, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.571, align 8
  br label %loop.header.571

loop.exit.571:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.571
  %var.load15 = load ptr, ptr %var.s, align 8
  %s.read.len16 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len17 = load i64, ptr %s.read.len16, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %s.read.data19 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data19, align 8
  %var.load21 = load i64, ptr %"var.i'", align 8
  %var.load22 = load i64, ptr %var.n, align 8
  %start.is_neg = icmp slt i64 %var.load21, 0
  %rel.start = add i64 %s.read.len18, %var.load21
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load21
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len18
  %final.start = select i1 %start.gt.len, i64 %s.read.len18, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load22, 0
  %rel.end = add i64 %s.read.len18, %var.load22
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load22
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len18
  %final.end = select i1 %end.gt.len, i64 %s.read.len18, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data20, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

choice.then:                                      ; preds = %loop.body.571
  br label %loop.exit.571

choice.exit:                                      ; preds = %loop.body.571
  %var.load5 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  %var.load9 = load i64, ptr %"var.i'", align 8
  %idx.oob = icmp uge i64 %var.load9, %s.read.len7
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 %var.load9
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 32
  %val.match11 = icmp eq i64 %s.byte.val, 9
  %case.or = or i1 %val.match, %val.match11
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit10:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then12, label %choice.else

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit10

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit10

choice.then12:                                    ; preds = %choice.exit10
  %var.load14 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load14, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit13

choice.else:                                      ; preds = %choice.exit10
  br label %loop.exit.571

choice.exit13:                                    ; preds = %choice.then12
  br label %loop.latch.571
}

define { i64, ptr } @"formatter::strip_code_comment"(ptr %0) #0 {
entry:
  %var._123 = alloca i64, align 8
  %var._i122 = alloca i64, align 8
  %loop.step.576 = alloca i64, align 8
  %loop.idx.576 = alloca i64, align 8
  %var.step = alloca i64, align 8
  %var.prev_b = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.572 = alloca i64, align 8
  %loop.idx.572 = alloca i64, align 8
  %"var.end_idx'" = alloca i64, align 8
  %"var.in_str'" = alloca i1, align 1
  %"var.i'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.body = alloca ptr, align 8
  store ptr %0, ptr %var.body, align 8
  %var.load = load ptr, ptr %var.body, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  %var.load3 = load i64, ptr %var.n, align 8
  store i64 %var.load3, ptr %"var.end_idx'", align 8
  store i64 0, ptr %loop.idx.572, align 8
  br label %loop.header.572

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.572:                                  ; preds = %loop.latch.572, %str_ok
  %counter.load = load i64, ptr %loop.idx.572, align 8
  br label %loop.body.572

loop.body.572:                                    ; preds = %loop.header.572
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.572, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.i'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.572:                                ; No predecessors!
  br label %loop.exit.572

loop.latch.572:                                   ; preds = %choice.exit34
  %step.val = load i64, ptr %loop.step.572, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.572, align 8
  br label %loop.header.572

loop.exit.572:                                    ; preds = %choice.then56, %choice.then, %loop.exit.nat.572
  store i64 0, ptr %loop.idx.576, align 8
  br label %loop.header.576

choice.then:                                      ; preds = %loop.body.572
  br label %loop.exit.572

choice.exit:                                      ; preds = %loop.body.572
  %var.load6 = load ptr, ptr %var.body, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %"var.i'", align 8
  %idx.oob = icmp uge i64 %var.load10, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load11 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load11, 1
  %var.load12 = load i64, ptr %var.n, align 8
  %cmptmp13 = icmp slt i64 %addtmp, %var.load12
  br i1 %cmptmp13, label %choice.then14, label %choice.else

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then14:                                    ; preds = %idx_ok
  %var.load16 = load ptr, ptr %var.body, align 8
  %s.read.len17 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len17, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data20 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data20, align 8
  %var.load22 = load i64, ptr %"var.i'", align 8
  %addtmp23 = add i64 %var.load22, 1
  %idx.oob24 = icmp uge i64 %addtmp23, %s.read.len19
  br i1 %idx.oob24, label %idx_oob26, label %idx_ok25

choice.else:                                      ; preds = %idx_ok
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else, %idx_ok25
  %choice.res = phi i64 [ %s.byte.val30, %idx_ok25 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.c1, align 8
  %var.load31 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load31, label %choice.then32, label %choice.else33

idx_ok25:                                         ; preds = %abort.dead27, %choice.then14
  %s.byte.gep28 = getelementptr i8, ptr %s.read.data21, i64 %addtmp23
  %s.byte29 = load i8, ptr %s.byte.gep28, align 1
  %s.byte.val30 = zext i8 %s.byte29 to i64
  br label %choice.exit15

idx_oob26:                                        ; preds = %choice.then14
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %idx_ok25

choice.then32:                                    ; preds = %choice.exit15
  %var.load35 = load i64, ptr %var.c, align 8
  %cmptmp36 = icmp eq i64 %var.load35, 92
  br i1 %cmptmp36, label %and.573.then, label %and.573.else

choice.else33:                                    ; preds = %choice.exit15
  %var.load52 = load i64, ptr %var.c, align 8
  %cmptmp53 = icmp eq i64 %var.load52, 47
  br i1 %cmptmp53, label %and.574.then, label %and.574.else

choice.exit34:                                    ; preds = %choice.exit58, %choice.exit43
  br label %loop.latch.572

and.573.then:                                     ; preds = %choice.then32
  %var.load37 = load i64, ptr %"var.i'", align 8
  %addtmp38 = add i64 %var.load37, 1
  %var.load39 = load i64, ptr %var.n, align 8
  %cmptmp40 = icmp slt i64 %addtmp38, %var.load39
  br label %and.573.exit

and.573.else:                                     ; preds = %choice.then32
  br label %and.573.exit

and.573.exit:                                     ; preds = %and.573.else, %and.573.then
  %and.573.phi = phi i1 [ %cmptmp40, %and.573.then ], [ %cmptmp36, %and.573.else ]
  br i1 %and.573.phi, label %choice.then41, label %choice.else42

choice.then41:                                    ; preds = %and.573.exit
  %var.load44 = load i64, ptr %"var.i'", align 8
  %addtmp45 = add i64 %var.load44, 2
  store i64 %addtmp45, ptr %"var.i'", align 8
  br label %choice.exit43

choice.else42:                                    ; preds = %and.573.exit
  %var.load46 = load i64, ptr %var.c, align 8
  %cmptmp47 = icmp eq i64 %var.load46, 34
  br i1 %cmptmp47, label %choice.then48, label %choice.exit49

choice.exit43:                                    ; preds = %choice.exit49, %choice.then41
  br label %choice.exit34

choice.then48:                                    ; preds = %choice.else42
  store i1 false, ptr %"var.in_str'", align 1
  br label %choice.exit49

choice.exit49:                                    ; preds = %choice.then48, %choice.else42
  %var.load50 = load i64, ptr %"var.i'", align 8
  %addtmp51 = add i64 %var.load50, 1
  store i64 %addtmp51, ptr %"var.i'", align 8
  br label %choice.exit43

and.574.then:                                     ; preds = %choice.else33
  %var.load54 = load i64, ptr %var.c1, align 8
  %cmptmp55 = icmp eq i64 %var.load54, 47
  br label %and.574.exit

and.574.else:                                     ; preds = %choice.else33
  br label %and.574.exit

and.574.exit:                                     ; preds = %and.574.else, %and.574.then
  %and.574.phi = phi i1 [ %cmptmp55, %and.574.then ], [ %cmptmp53, %and.574.else ]
  br i1 %and.574.phi, label %choice.then56, label %choice.else57

choice.then56:                                    ; preds = %and.574.exit
  %var.load59 = load i64, ptr %"var.i'", align 8
  store i64 %var.load59, ptr %"var.end_idx'", align 8
  br label %loop.exit.572

choice.else57:                                    ; preds = %and.574.exit
  %var.load60 = load i64, ptr %var.c, align 8
  %cmptmp61 = icmp eq i64 %var.load60, 39
  br i1 %cmptmp61, label %choice.then62, label %choice.else63

choice.exit58:                                    ; preds = %choice.exit64
  br label %choice.exit34

choice.then62:                                    ; preds = %choice.else57
  %var.load65 = load i64, ptr %"var.i'", align 8
  %cmptmp66 = icmp sgt i64 %var.load65, 0
  br i1 %cmptmp66, label %choice.then67, label %choice.else68

choice.else63:                                    ; preds = %choice.else57
  %var.load111 = load i64, ptr %var.c, align 8
  %cmptmp112 = icmp eq i64 %var.load111, 34
  br i1 %cmptmp112, label %choice.then113, label %choice.else114

choice.exit64:                                    ; preds = %choice.exit115, %choice.exit88
  br label %choice.exit58

choice.then67:                                    ; preds = %choice.then62
  %var.load70 = load ptr, ptr %var.body, align 8
  %s.read.len71 = getelementptr inbounds { i64, ptr }, ptr %var.load70, i32 0, i32 0
  %s.read.len72 = load i64, ptr %s.read.len71, align 8
  %s.read.len73 = and i64 %s.read.len72, 281474976710655
  %s.read.data74 = getelementptr inbounds { i64, ptr }, ptr %var.load70, i32 0, i32 1
  %s.read.data75 = load ptr, ptr %s.read.data74, align 8
  %var.load76 = load i64, ptr %"var.i'", align 8
  %subtmp = sub i64 %var.load76, 1
  %idx.oob77 = icmp uge i64 %subtmp, %s.read.len73
  br i1 %idx.oob77, label %idx_oob79, label %idx_ok78

choice.else68:                                    ; preds = %choice.then62
  br label %choice.exit69

choice.exit69:                                    ; preds = %choice.else68, %idx_ok78
  %choice.res84 = phi i64 [ %s.byte.val83, %idx_ok78 ], [ 0, %choice.else68 ]
  store i64 %choice.res84, ptr %var.prev_b, align 8
  %var.load85 = load i64, ptr %var.prev_b, align 8
  %call.res = call i1 @"formatter::is_id_byte"(i64 %var.load85)
  br i1 %call.res, label %choice.then86, label %choice.else87

idx_ok78:                                         ; preds = %abort.dead80, %choice.then67
  %s.byte.gep81 = getelementptr i8, ptr %s.read.data75, i64 %subtmp
  %s.byte82 = load i8, ptr %s.byte.gep81, align 1
  %s.byte.val83 = zext i8 %s.byte82 to i64
  br label %choice.exit69

idx_oob79:                                        ; preds = %choice.then67
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %idx_ok78

choice.then86:                                    ; preds = %choice.exit69
  br label %choice.exit88

choice.else87:                                    ; preds = %choice.exit69
  %var.load89 = load i64, ptr %var.c1, align 8
  %cmptmp90 = icmp eq i64 %var.load89, 92
  br i1 %cmptmp90, label %and.575.then, label %and.575.else

choice.exit88:                                    ; preds = %choice.exit97, %choice.then86
  %choice.res107 = phi i64 [ 1, %choice.then86 ], [ %choice.res106, %choice.exit97 ]
  store i64 %choice.res107, ptr %var.step, align 8
  %var.load108 = load i64, ptr %"var.i'", align 8
  %var.load109 = load i64, ptr %var.step, align 8
  %addtmp110 = add i64 %var.load108, %var.load109
  store i64 %addtmp110, ptr %"var.i'", align 8
  br label %choice.exit64

and.575.then:                                     ; preds = %choice.else87
  %var.load91 = load i64, ptr %"var.i'", align 8
  %addtmp92 = add i64 %var.load91, 2
  %var.load93 = load i64, ptr %var.n, align 8
  %cmptmp94 = icmp slt i64 %addtmp92, %var.load93
  br label %and.575.exit

and.575.else:                                     ; preds = %choice.else87
  br label %and.575.exit

and.575.exit:                                     ; preds = %and.575.else, %and.575.then
  %and.575.phi = phi i1 [ %cmptmp94, %and.575.then ], [ %cmptmp90, %and.575.else ]
  br i1 %and.575.phi, label %choice.then95, label %choice.else96

choice.then95:                                    ; preds = %and.575.exit
  br label %choice.exit97

choice.else96:                                    ; preds = %and.575.exit
  %var.load98 = load i64, ptr %"var.i'", align 8
  %addtmp99 = add i64 %var.load98, 1
  %var.load100 = load i64, ptr %var.n, align 8
  %cmptmp101 = icmp slt i64 %addtmp99, %var.load100
  br i1 %cmptmp101, label %choice.then102, label %choice.else103

choice.exit97:                                    ; preds = %choice.exit104, %choice.then95
  %choice.res106 = phi i64 [ 3, %choice.then95 ], [ %choice.res105, %choice.exit104 ]
  br label %choice.exit88

choice.then102:                                   ; preds = %choice.else96
  br label %choice.exit104

choice.else103:                                   ; preds = %choice.else96
  br label %choice.exit104

choice.exit104:                                   ; preds = %choice.else103, %choice.then102
  %choice.res105 = phi i64 [ 2, %choice.then102 ], [ 1, %choice.else103 ]
  br label %choice.exit97

choice.then113:                                   ; preds = %choice.else63
  store i1 true, ptr %"var.in_str'", align 1
  %var.load116 = load i64, ptr %"var.i'", align 8
  %addtmp117 = add i64 %var.load116, 1
  store i64 %addtmp117, ptr %"var.i'", align 8
  br label %choice.exit115

choice.else114:                                   ; preds = %choice.else63
  %var.load118 = load i64, ptr %"var.i'", align 8
  %addtmp119 = add i64 %var.load118, 1
  store i64 %addtmp119, ptr %"var.i'", align 8
  br label %choice.exit115

choice.exit115:                                   ; preds = %choice.else114, %choice.then113
  br label %choice.exit64

loop.header.576:                                  ; preds = %loop.latch.576, %loop.exit.572
  %counter.load120 = load i64, ptr %loop.idx.576, align 8
  br label %loop.body.576

loop.body.576:                                    ; preds = %loop.header.576
  %loop.rel.i121 = sub i64 %counter.load120, 0
  store i64 1, ptr %loop.step.576, align 8
  store i64 %loop.rel.i121, ptr %var._i122, align 8
  store i64 %counter.load120, ptr %var._123, align 8
  %var.load124 = load i64, ptr %"var.end_idx'", align 8
  %cmptmp125 = icmp sgt i64 %var.load124, 0
  br i1 %cmptmp125, label %and.577.then, label %and.577.else

loop.exit.nat.576:                                ; No predecessors!
  br label %loop.exit.576

loop.latch.576:                                   ; preds = %choice.exit146
  %step.val149 = load i64, ptr %loop.step.576, align 8
  %loop.next150 = add i64 %counter.load120, %step.val149
  store i64 %loop.next150, ptr %loop.idx.576, align 8
  br label %loop.header.576

loop.exit.576:                                    ; preds = %choice.else145, %loop.exit.nat.576
  %var.load151 = load ptr, ptr %var.body, align 8
  %s.read.len152 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 0
  %s.read.len153 = load i64, ptr %s.read.len152, align 8
  %s.read.len154 = and i64 %s.read.len153, 281474976710655
  %s.read.data155 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 1
  %s.read.data156 = load ptr, ptr %s.read.data155, align 8
  %var.load157 = load i64, ptr %"var.end_idx'", align 8
  %rel.start = add i64 %s.read.len154, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len154
  %final.start = select i1 %start.gt.len, i64 %s.read.len154, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load157, 0
  %rel.end = add i64 %s.read.len154, %var.load157
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load157
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len154
  %final.end = select i1 %end.gt.len, i64 %s.read.len154, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data156, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

and.577.then:                                     ; preds = %loop.body.576
  %var.load126 = load ptr, ptr %var.body, align 8
  %s.read.len127 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 0
  %s.read.len128 = load i64, ptr %s.read.len127, align 8
  %s.read.len129 = and i64 %s.read.len128, 281474976710655
  %s.read.data130 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 1
  %s.read.data131 = load ptr, ptr %s.read.data130, align 8
  %var.load132 = load i64, ptr %"var.end_idx'", align 8
  %subtmp133 = sub i64 %var.load132, 1
  %idx.oob134 = icmp uge i64 %subtmp133, %s.read.len129
  br i1 %idx.oob134, label %idx_oob136, label %idx_ok135

and.577.else:                                     ; preds = %loop.body.576
  br label %and.577.exit

and.577.exit:                                     ; preds = %and.577.else, %choice.exit141
  %and.577.phi = phi i1 [ %choice.res143, %choice.exit141 ], [ %cmptmp125, %and.577.else ]
  br i1 %and.577.phi, label %choice.then144, label %choice.else145

idx_ok135:                                        ; preds = %abort.dead137, %and.577.then
  %s.byte.gep138 = getelementptr i8, ptr %s.read.data131, i64 %subtmp133
  %s.byte139 = load i8, ptr %s.byte.gep138, align 1
  %s.byte.val140 = zext i8 %s.byte139 to i64
  %val.match = icmp eq i64 %s.byte.val140, 32
  %val.match142 = icmp eq i64 %s.byte.val140, 9
  %case.or = or i1 %val.match, %val.match142
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob136:                                       ; preds = %and.577.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead137:                                    ; No predecessors!
  br label %idx_ok135

choice.exit141:                                   ; preds = %choice.next, %choice.case
  %choice.res143 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.577.exit

choice.case:                                      ; preds = %idx_ok135
  br label %choice.exit141

choice.next:                                      ; preds = %idx_ok135
  br label %choice.exit141

choice.then144:                                   ; preds = %and.577.exit
  %var.load147 = load i64, ptr %"var.end_idx'", align 8
  %subtmp148 = sub i64 %var.load147, 1
  store i64 %subtmp148, ptr %"var.end_idx'", align 8
  br label %choice.exit146

choice.else145:                                   ; preds = %and.577.exit
  br label %loop.exit.576

choice.exit146:                                   ; preds = %choice.then144
  br label %loop.latch.576
}

define i1 @"formatter::ends_with_str"(ptr %0, ptr %1) #0 {
entry:
  %var.suf = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.suf, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %var.load3 = load ptr, ptr %var.suf, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  %active.gen10 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current11 = icmp eq i64 %str.tag7, %active.gen10
  %tag.fast.ok12 = or i1 %tag.immortal9, %tag.current11
  br i1 %tag.fast.ok12, label %str_ok8, label %tag.slow_check13

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok8:                                          ; preds = %tag.slow_check13, %str_ok
  %cmptmp = icmp sge i64 %str.len.query2, %str.len.query6
  br i1 %cmptmp, label %and.578.then, label %and.578.else

tag.slow_check13:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

and.578.then:                                     ; preds = %str_ok8
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.chk.len15 = load i64, ptr %s.chk.len, align 8
  %s.chk.len16 = and i64 %s.chk.len15, 281474976710655
  %str.tag17 = lshr i64 %s.chk.len15, 48
  %tag.immortal19 = icmp eq i64 %str.tag17, 0
  %active.gen20 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current21 = icmp eq i64 %str.tag17, %active.gen20
  %tag.fast.ok22 = or i1 %tag.immortal19, %tag.current21
  br i1 %tag.fast.ok22, label %str_ok18, label %tag.slow_check23

and.578.else:                                     ; preds = %str_ok8
  br label %and.578.exit

and.578.exit:                                     ; preds = %and.578.else, %str.eq.merge
  %and.578.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.578.else ]
  ret i1 %and.578.phi

str_ok18:                                         ; preds = %tag.slow_check23, %and.578.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data, align 8
  %var.load27 = load ptr, ptr %var.s, align 8
  %str.len.query28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query28, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %str.tag31 = lshr i64 %str.len.query29, 48
  %tag.immortal33 = icmp eq i64 %str.tag31, 0
  %active.gen34 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current35 = icmp eq i64 %str.tag31, %active.gen34
  %tag.fast.ok36 = or i1 %tag.immortal33, %tag.current35
  br i1 %tag.fast.ok36, label %str_ok32, label %tag.slow_check37

tag.slow_check23:                                 ; preds = %and.578.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag17)
  br label %str_ok18

str_ok32:                                         ; preds = %tag.slow_check37, %str_ok18
  %var.load38 = load ptr, ptr %var.suf, align 8
  %str.len.query39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %str.len.query40 = load i64, ptr %str.len.query39, align 8
  %str.len.query41 = and i64 %str.len.query40, 281474976710655
  %str.tag42 = lshr i64 %str.len.query40, 48
  %tag.immortal44 = icmp eq i64 %str.tag42, 0
  %active.gen45 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current46 = icmp eq i64 %str.tag42, %active.gen45
  %tag.fast.ok47 = or i1 %tag.immortal44, %tag.current46
  br i1 %tag.fast.ok47, label %str_ok43, label %tag.slow_check48

tag.slow_check37:                                 ; preds = %str_ok18
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag31)
  br label %str_ok32

str_ok43:                                         ; preds = %tag.slow_check48, %str_ok32
  %subtmp = sub i64 %str.len.query30, %str.len.query41
  %var.load49 = load ptr, ptr %var.s, align 8
  %str.len.query50 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %str.len.query51 = load i64, ptr %str.len.query50, align 8
  %str.len.query52 = and i64 %str.len.query51, 281474976710655
  %str.tag53 = lshr i64 %str.len.query51, 48
  %tag.immortal55 = icmp eq i64 %str.tag53, 0
  %active.gen56 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current57 = icmp eq i64 %str.tag53, %active.gen56
  %tag.fast.ok58 = or i1 %tag.immortal55, %tag.current57
  br i1 %tag.fast.ok58, label %str_ok54, label %tag.slow_check59

tag.slow_check48:                                 ; preds = %str_ok32
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag42)
  br label %str_ok43

str_ok54:                                         ; preds = %tag.slow_check59, %str_ok43
  %start.is_neg = icmp slt i64 %subtmp, 0
  %rel.start = add i64 %s.read.len25, %subtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %subtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len25
  %final.start = select i1 %start.gt.len, i64 %s.read.len25, i64 %c.start.0
  %end.is_neg = icmp slt i64 %str.len.query52, 0
  %rel.end = add i64 %s.read.len25, %str.len.query52
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %str.len.query52
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len25
  %final.end = select i1 %end.gt.len, i64 %s.read.len25, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data26, i64 %final.start
  %var.load60 = load ptr, ptr %var.suf, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 0
  %cmp.str61 = load i64, ptr %cmp.str, align 8
  %cmp.str62 = and i64 %cmp.str61, 281474976710655
  %str.tag63 = lshr i64 %cmp.str61, 48
  %tag.immortal65 = icmp eq i64 %str.tag63, 0
  %active.gen66 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current67 = icmp eq i64 %str.tag63, %active.gen66
  %tag.fast.ok68 = or i1 %tag.immortal65, %tag.current67
  br i1 %tag.fast.ok68, label %str_ok64, label %tag.slow_check69

tag.slow_check59:                                 ; preds = %str_ok43
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag53)
  br label %str_ok54

str_ok64:                                         ; preds = %tag.slow_check69, %str_ok54
  %cmp.str70 = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 1
  %cmp.str71 = load ptr, ptr %cmp.str70, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str62
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check69:                                 ; preds = %str_ok54
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag63)
  br label %str_ok64

str.eq.then:                                      ; preds = %str_ok64
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str71, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok64
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.578.exit
}

define i1 @"formatter::starts_with_choice_sep"(ptr %0) #0 {
entry:
  %var.c0 = alloca i64, align 8
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.code, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c0, align 8
  %var.load7 = load i64, ptr %var.c0, align 8
  %cmptmp8 = icmp eq i64 %var.load7, 91
  br i1 %cmptmp8, label %choice.then9, label %choice.exit10

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then9:                                     ; preds = %idx_ok
  ret i1 true

choice.exit10:                                    ; preds = %ret.dead11, %idx_ok
  %var.load12 = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load12, ptr @str.8.struct)
  br i1 %call.res, label %choice.then13, label %choice.exit14

ret.dead11:                                       ; No predecessors!
  br label %choice.exit10

choice.then13:                                    ; preds = %choice.exit10
  ret i1 true

choice.exit14:                                    ; preds = %ret.dead15, %choice.exit10
  %var.load16 = load ptr, ptr %var.code, align 8
  %call.res17 = call i1 @"formatter::starts_with_str"(ptr %var.load16, ptr @str.5.struct)
  br i1 %call.res17, label %choice.then18, label %choice.exit19

ret.dead15:                                       ; No predecessors!
  br label %choice.exit14

choice.then18:                                    ; preds = %choice.exit14
  ret i1 true

choice.exit19:                                    ; preds = %ret.dead20, %choice.exit14
  %var.load21 = load ptr, ptr %var.code, align 8
  %call.res22 = call i1 @"formatter::starts_with_str"(ptr %var.load21, ptr @str.13.struct)
  br i1 %call.res22, label %or.579.then, label %or.579.else

ret.dead20:                                       ; No predecessors!
  br label %choice.exit19

or.579.then:                                      ; preds = %choice.exit19
  br label %or.579.exit

or.579.else:                                      ; preds = %choice.exit19
  %var.load23 = load ptr, ptr %var.code, align 8
  %call.res24 = call i1 @"formatter::starts_with_str"(ptr %var.load23, ptr @str.14.struct)
  br label %or.579.exit

or.579.exit:                                      ; preds = %or.579.else, %or.579.then
  %or.579.phi = phi i1 [ %call.res22, %or.579.then ], [ %call.res24, %or.579.else ]
  br i1 %or.579.phi, label %or.580.then, label %or.580.else

or.580.then:                                      ; preds = %or.579.exit
  br label %or.580.exit

or.580.else:                                      ; preds = %or.579.exit
  %var.load25 = load ptr, ptr %var.code, align 8
  %call.res26 = call i1 @"formatter::starts_with_str"(ptr %var.load25, ptr @str.15.struct)
  br label %or.580.exit

or.580.exit:                                      ; preds = %or.580.else, %or.580.then
  %or.580.phi = phi i1 [ %or.579.phi, %or.580.then ], [ %call.res26, %or.580.else ]
  br i1 %or.580.phi, label %or.581.then, label %or.581.else

or.581.then:                                      ; preds = %or.580.exit
  br label %or.581.exit

or.581.else:                                      ; preds = %or.580.exit
  %var.load27 = load ptr, ptr %var.code, align 8
  %call.res28 = call i1 @"formatter::starts_with_str"(ptr %var.load27, ptr @str.16.struct)
  br label %or.581.exit

or.581.exit:                                      ; preds = %or.581.else, %or.581.then
  %or.581.phi = phi i1 [ %or.580.phi, %or.581.then ], [ %call.res28, %or.581.else ]
  br i1 %or.581.phi, label %or.582.then, label %or.582.else

or.582.then:                                      ; preds = %or.581.exit
  br label %or.582.exit

or.582.else:                                      ; preds = %or.581.exit
  %var.load29 = load ptr, ptr %var.code, align 8
  %call.res30 = call i1 @"formatter::starts_with_str"(ptr %var.load29, ptr @str.4.struct)
  br label %or.582.exit

or.582.exit:                                      ; preds = %or.582.else, %or.582.then
  %or.582.phi = phi i1 [ %or.581.phi, %or.582.then ], [ %call.res30, %or.582.else ]
  br i1 %or.582.phi, label %or.583.then, label %or.583.else

or.583.then:                                      ; preds = %or.582.exit
  br label %or.583.exit

or.583.else:                                      ; preds = %or.582.exit
  %var.load31 = load ptr, ptr %var.code, align 8
  %call.res32 = call i1 @"formatter::starts_with_str"(ptr %var.load31, ptr @str.17.struct)
  br label %or.583.exit

or.583.exit:                                      ; preds = %or.583.else, %or.583.then
  %or.583.phi = phi i1 [ %or.582.phi, %or.583.then ], [ %call.res32, %or.583.else ]
  br i1 %or.583.phi, label %choice.then33, label %choice.exit34

choice.then33:                                    ; preds = %or.583.exit
  ret i1 true

choice.exit34:                                    ; preds = %ret.dead35, %or.583.exit
  %var.load36 = load i64, ptr %var.c0, align 8
  %cmptmp37 = icmp eq i64 %var.load36, 124
  br i1 %cmptmp37, label %and.584.then, label %and.584.else

ret.dead35:                                       ; No predecessors!
  br label %choice.exit34

and.584.then:                                     ; preds = %choice.exit34
  %var.load38 = load ptr, ptr %var.code, align 8
  %str.len.query39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %str.len.query40 = load i64, ptr %str.len.query39, align 8
  %str.len.query41 = and i64 %str.len.query40, 281474976710655
  %str.tag42 = lshr i64 %str.len.query40, 48
  %tag.immortal44 = icmp eq i64 %str.tag42, 0
  %active.gen45 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current46 = icmp eq i64 %str.tag42, %active.gen45
  %tag.fast.ok47 = or i1 %tag.immortal44, %tag.current46
  br i1 %tag.fast.ok47, label %str_ok43, label %tag.slow_check48

and.584.else:                                     ; preds = %choice.exit34
  br label %and.584.exit

and.584.exit:                                     ; preds = %and.584.else, %or.585.exit
  %and.584.phi = phi i1 [ %or.585.phi, %or.585.exit ], [ %cmptmp37, %and.584.else ]
  ret i1 %and.584.phi

str_ok43:                                         ; preds = %tag.slow_check48, %and.584.then
  %cmptmp49 = icmp eq i64 %str.len.query41, 1
  br i1 %cmptmp49, label %or.585.then, label %or.585.else

tag.slow_check48:                                 ; preds = %and.584.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag42)
  br label %str_ok43

or.585.then:                                      ; preds = %str_ok43
  br label %or.585.exit

or.585.else:                                      ; preds = %str_ok43
  %var.load50 = load ptr, ptr %var.code, align 8
  %s.read.len51 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len51, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %s.read.data54 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %s.read.data55 = load ptr, ptr %s.read.data54, align 8
  %idx.oob56 = icmp uge i64 1, %s.read.len53
  br i1 %idx.oob56, label %idx_oob58, label %idx_ok57

or.585.exit:                                      ; preds = %idx_ok57, %or.585.then
  %or.585.phi = phi i1 [ %cmptmp49, %or.585.then ], [ %cmptmp63, %idx_ok57 ]
  br label %and.584.exit

idx_ok57:                                         ; preds = %abort.dead59, %or.585.else
  %s.byte.gep60 = getelementptr i8, ptr %s.read.data55, i64 1
  %s.byte61 = load i8, ptr %s.byte.gep60, align 1
  %s.byte.val62 = zext i8 %s.byte61 to i64
  %cmptmp63 = icmp ne i64 %s.byte.val62, 124
  br label %or.585.exit

idx_oob58:                                        ; preds = %or.585.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead59:                                     ; No predecessors!
  br label %idx_ok57
}

define i1 @"formatter::is_inline_pipe_arm"(ptr %0) #0 {
entry:
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load, ptr @str.0.struct)
  br i1 %call.res, label %or.586.then, label %or.586.else

or.586.then:                                      ; preds = %entry
  br label %or.586.exit

or.586.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.code, align 8
  %call.res2 = call i1 @"formatter::starts_with_str"(ptr %var.load1, ptr @str.1.struct)
  br label %or.586.exit

or.586.exit:                                      ; preds = %or.586.else, %or.586.then
  %or.586.phi = phi i1 [ %call.res, %or.586.then ], [ %call.res2, %or.586.else ]
  br i1 %or.586.phi, label %or.587.then, label %or.587.else

or.587.then:                                      ; preds = %or.586.exit
  br label %or.587.exit

or.587.else:                                      ; preds = %or.586.exit
  %var.load3 = load ptr, ptr %var.code, align 8
  %call.res4 = call i1 @"formatter::starts_with_str"(ptr %var.load3, ptr @str.2.struct)
  br label %or.587.exit

or.587.exit:                                      ; preds = %or.587.else, %or.587.then
  %or.587.phi = phi i1 [ %or.586.phi, %or.587.then ], [ %call.res4, %or.587.else ]
  br i1 %or.587.phi, label %or.588.then, label %or.588.else

or.588.then:                                      ; preds = %or.587.exit
  br label %or.588.exit

or.588.else:                                      ; preds = %or.587.exit
  %var.load5 = load ptr, ptr %var.code, align 8
  %call.res6 = call i1 @"formatter::starts_with_str"(ptr %var.load5, ptr @str.3.struct)
  br label %or.588.exit

or.588.exit:                                      ; preds = %or.588.else, %or.588.then
  %or.588.phi = phi i1 [ %or.587.phi, %or.588.then ], [ %call.res6, %or.588.else ]
  br i1 %or.588.phi, label %or.589.then, label %or.589.else

or.589.then:                                      ; preds = %or.588.exit
  br label %or.589.exit

or.589.else:                                      ; preds = %or.588.exit
  %var.load7 = load ptr, ptr %var.code, align 8
  %call.res8 = call i1 @"formatter::starts_with_str"(ptr %var.load7, ptr @str.4.struct)
  br label %or.589.exit

or.589.exit:                                      ; preds = %or.589.else, %or.589.then
  %or.589.phi = phi i1 [ %or.588.phi, %or.589.then ], [ %call.res8, %or.589.else ]
  br i1 %or.589.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.589.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.589.exit
  %var.load9 = load ptr, ptr %var.code, align 8
  %call.res10 = call i1 @"formatter::starts_with_str"(ptr %var.load9, ptr @str.5.struct)
  br i1 %call.res10, label %choice.then11, label %choice.else12

choice.exit:                                      ; preds = %choice.exit13, %choice.then
  %choice.res48 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit13 ]
  ret i1 %choice.res48

choice.then11:                                    ; preds = %choice.else
  %var.load14 = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %str.len.query15 = load i64, ptr %str.len.query, align 8
  %str.len.query16 = and i64 %str.len.query15, 281474976710655
  %str.tag = lshr i64 %str.len.query15, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else12:                                    ; preds = %choice.else
  %var.load17 = load ptr, ptr %var.code, align 8
  %str.len.query18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %str.len.query19 = load i64, ptr %str.len.query18, align 8
  %str.len.query20 = and i64 %str.len.query19, 281474976710655
  %str.tag21 = lshr i64 %str.len.query19, 48
  %tag.immortal23 = icmp eq i64 %str.tag21, 0
  %active.gen24 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current25 = icmp eq i64 %str.tag21, %active.gen24
  %tag.fast.ok26 = or i1 %tag.immortal23, %tag.current25
  br i1 %tag.fast.ok26, label %str_ok22, label %tag.slow_check27

choice.exit13:                                    ; preds = %and.591.exit, %str_ok
  %choice.res = phi i1 [ %cmptmp, %str_ok ], [ %and.591.phi, %and.591.exit ]
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %choice.then11
  %cmptmp = icmp sgt i64 %str.len.query16, 2
  br label %choice.exit13

tag.slow_check:                                   ; preds = %choice.then11
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok22:                                         ; preds = %tag.slow_check27, %choice.else12
  %cmptmp28 = icmp sgt i64 %str.len.query20, 1
  br i1 %cmptmp28, label %and.590.then, label %and.590.else

tag.slow_check27:                                 ; preds = %choice.else12
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag21)
  br label %str_ok22

and.590.then:                                     ; preds = %str_ok22
  %var.load29 = load ptr, ptr %var.code, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %s.read.len30 = load i64, ptr %s.read.len, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %s.read.data32 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len31
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.590.else:                                     ; preds = %str_ok22
  br label %and.590.exit

and.590.exit:                                     ; preds = %and.590.else, %idx_ok
  %and.590.phi = phi i1 [ %cmptmp33, %idx_ok ], [ %cmptmp28, %and.590.else ]
  br i1 %and.590.phi, label %and.591.then, label %and.591.else

idx_ok:                                           ; preds = %abort.dead, %and.590.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data32, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp33 = icmp eq i64 %s.byte.val, 124
  br label %and.590.exit

idx_oob:                                          ; preds = %and.590.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.591.then:                                     ; preds = %and.590.exit
  %var.load34 = load ptr, ptr %var.code, align 8
  %s.read.len35 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %s.read.len36 = load i64, ptr %s.read.len35, align 8
  %s.read.len37 = and i64 %s.read.len36, 281474976710655
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %idx.oob40 = icmp uge i64 1, %s.read.len37
  br i1 %idx.oob40, label %idx_oob42, label %idx_ok41

and.591.else:                                     ; preds = %and.590.exit
  br label %and.591.exit

and.591.exit:                                     ; preds = %and.591.else, %idx_ok41
  %and.591.phi = phi i1 [ %cmptmp47, %idx_ok41 ], [ %and.590.phi, %and.591.else ]
  br label %choice.exit13

idx_ok41:                                         ; preds = %abort.dead43, %and.591.then
  %s.byte.gep44 = getelementptr i8, ptr %s.read.data39, i64 1
  %s.byte45 = load i8, ptr %s.byte.gep44, align 1
  %s.byte.val46 = zext i8 %s.byte45 to i64
  %cmptmp47 = icmp ne i64 %s.byte.val46, 124
  br label %and.591.exit

idx_oob42:                                        ; preds = %and.591.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %idx_ok41
}

define i1 @"formatter::ends_with_block_opener"(ptr %0) #0 {
entry:
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.code, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag7 = lshr i64 %eq.lhs.len5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  %active.gen10 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current11 = icmp eq i64 %str.tag7, %active.gen10
  %tag.fast.ok12 = or i1 %tag.immortal9, %tag.current11
  br i1 %tag.fast.ok12, label %str_ok8, label %tag.slow_check13

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.exit4:                                     ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then130, label %choice.exit131

choice.case:                                      ; preds = %str.eq.merge122
  br label %choice.exit4

choice.next:                                      ; preds = %str.eq.merge122
  br label %choice.exit4

str_ok8:                                          ; preds = %tag.slow_check13, %choice.exit
  %eq.rhs.len = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len14 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check13:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

str.eq.then:                                      ; preds = %str_ok8
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len16 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len17 = load i64, ptr %eq.lhs.len16, align 8
  %eq.lhs.len18 = and i64 %eq.lhs.len17, 281474976710655
  %str.tag19 = lshr i64 %eq.lhs.len17, 48
  %tag.immortal21 = icmp eq i64 %str.tag19, 0
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current23 = icmp eq i64 %str.tag19, %active.gen22
  %tag.fast.ok24 = or i1 %tag.immortal21, %tag.current23
  br i1 %tag.fast.ok24, label %str_ok20, label %tag.slow_check25

str_ok20:                                         ; preds = %tag.slow_check25, %str.eq.merge
  %eq.rhs.len26 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len27 = and i64 %eq.rhs.len26, 281474976710655
  %eq.len28 = icmp eq i64 %eq.lhs.len18, %eq.rhs.len27
  br i1 %eq.len28, label %str.eq.then29, label %str.eq.else30

tag.slow_check25:                                 ; preds = %str.eq.merge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag19)
  br label %str_ok20

str.eq.then29:                                    ; preds = %str_ok20
  %eq.lhs.data32 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data33 = load ptr, ptr %eq.lhs.data32, align 8
  %eq.rhs.data34 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp35 = call i32 @memcmp(ptr %eq.lhs.data33, ptr %eq.rhs.data34, i64 %eq.lhs.len18)
  %eq.cmp.zero36 = icmp eq i32 %eq.memcmp35, 0
  br label %str.eq.merge31

str.eq.else30:                                    ; preds = %str_ok20
  br label %str.eq.merge31

str.eq.merge31:                                   ; preds = %str.eq.else30, %str.eq.then29
  %str.eq.result37 = phi i1 [ %eq.cmp.zero36, %str.eq.then29 ], [ false, %str.eq.else30 ]
  %case.or = or i1 %str.eq.result, %str.eq.result37
  %eq.lhs.len38 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len39 = load i64, ptr %eq.lhs.len38, align 8
  %eq.lhs.len40 = and i64 %eq.lhs.len39, 281474976710655
  %str.tag41 = lshr i64 %eq.lhs.len39, 48
  %tag.immortal43 = icmp eq i64 %str.tag41, 0
  %active.gen44 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current45 = icmp eq i64 %str.tag41, %active.gen44
  %tag.fast.ok46 = or i1 %tag.immortal43, %tag.current45
  br i1 %tag.fast.ok46, label %str_ok42, label %tag.slow_check47

str_ok42:                                         ; preds = %tag.slow_check47, %str.eq.merge31
  %eq.rhs.len48 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len49 = and i64 %eq.rhs.len48, 281474976710655
  %eq.len50 = icmp eq i64 %eq.lhs.len40, %eq.rhs.len49
  br i1 %eq.len50, label %str.eq.then51, label %str.eq.else52

tag.slow_check47:                                 ; preds = %str.eq.merge31
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag41)
  br label %str_ok42

str.eq.then51:                                    ; preds = %str_ok42
  %eq.lhs.data54 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data55 = load ptr, ptr %eq.lhs.data54, align 8
  %eq.rhs.data56 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp57 = call i32 @memcmp(ptr %eq.lhs.data55, ptr %eq.rhs.data56, i64 %eq.lhs.len40)
  %eq.cmp.zero58 = icmp eq i32 %eq.memcmp57, 0
  br label %str.eq.merge53

str.eq.else52:                                    ; preds = %str_ok42
  br label %str.eq.merge53

str.eq.merge53:                                   ; preds = %str.eq.else52, %str.eq.then51
  %str.eq.result59 = phi i1 [ %eq.cmp.zero58, %str.eq.then51 ], [ false, %str.eq.else52 ]
  %case.or60 = or i1 %case.or, %str.eq.result59
  %eq.lhs.len61 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len62 = load i64, ptr %eq.lhs.len61, align 8
  %eq.lhs.len63 = and i64 %eq.lhs.len62, 281474976710655
  %str.tag64 = lshr i64 %eq.lhs.len62, 48
  %tag.immortal66 = icmp eq i64 %str.tag64, 0
  %active.gen67 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current68 = icmp eq i64 %str.tag64, %active.gen67
  %tag.fast.ok69 = or i1 %tag.immortal66, %tag.current68
  br i1 %tag.fast.ok69, label %str_ok65, label %tag.slow_check70

str_ok65:                                         ; preds = %tag.slow_check70, %str.eq.merge53
  %eq.rhs.len71 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len72 = and i64 %eq.rhs.len71, 281474976710655
  %eq.len73 = icmp eq i64 %eq.lhs.len63, %eq.rhs.len72
  br i1 %eq.len73, label %str.eq.then74, label %str.eq.else75

tag.slow_check70:                                 ; preds = %str.eq.merge53
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag64)
  br label %str_ok65

str.eq.then74:                                    ; preds = %str_ok65
  %eq.lhs.data77 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data78 = load ptr, ptr %eq.lhs.data77, align 8
  %eq.rhs.data79 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp80 = call i32 @memcmp(ptr %eq.lhs.data78, ptr %eq.rhs.data79, i64 %eq.lhs.len63)
  %eq.cmp.zero81 = icmp eq i32 %eq.memcmp80, 0
  br label %str.eq.merge76

str.eq.else75:                                    ; preds = %str_ok65
  br label %str.eq.merge76

str.eq.merge76:                                   ; preds = %str.eq.else75, %str.eq.then74
  %str.eq.result82 = phi i1 [ %eq.cmp.zero81, %str.eq.then74 ], [ false, %str.eq.else75 ]
  %case.or83 = or i1 %case.or60, %str.eq.result82
  %eq.lhs.len84 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len85 = load i64, ptr %eq.lhs.len84, align 8
  %eq.lhs.len86 = and i64 %eq.lhs.len85, 281474976710655
  %str.tag87 = lshr i64 %eq.lhs.len85, 48
  %tag.immortal89 = icmp eq i64 %str.tag87, 0
  %active.gen90 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current91 = icmp eq i64 %str.tag87, %active.gen90
  %tag.fast.ok92 = or i1 %tag.immortal89, %tag.current91
  br i1 %tag.fast.ok92, label %str_ok88, label %tag.slow_check93

str_ok88:                                         ; preds = %tag.slow_check93, %str.eq.merge76
  %eq.rhs.len94 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len95 = and i64 %eq.rhs.len94, 281474976710655
  %eq.len96 = icmp eq i64 %eq.lhs.len86, %eq.rhs.len95
  br i1 %eq.len96, label %str.eq.then97, label %str.eq.else98

tag.slow_check93:                                 ; preds = %str.eq.merge76
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag87)
  br label %str_ok88

str.eq.then97:                                    ; preds = %str_ok88
  %eq.lhs.data100 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data101 = load ptr, ptr %eq.lhs.data100, align 8
  %eq.rhs.data102 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp103 = call i32 @memcmp(ptr %eq.lhs.data101, ptr %eq.rhs.data102, i64 %eq.lhs.len86)
  %eq.cmp.zero104 = icmp eq i32 %eq.memcmp103, 0
  br label %str.eq.merge99

str.eq.else98:                                    ; preds = %str_ok88
  br label %str.eq.merge99

str.eq.merge99:                                   ; preds = %str.eq.else98, %str.eq.then97
  %str.eq.result105 = phi i1 [ %eq.cmp.zero104, %str.eq.then97 ], [ false, %str.eq.else98 ]
  %case.or106 = or i1 %case.or83, %str.eq.result105
  %eq.lhs.len107 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len108 = load i64, ptr %eq.lhs.len107, align 8
  %eq.lhs.len109 = and i64 %eq.lhs.len108, 281474976710655
  %str.tag110 = lshr i64 %eq.lhs.len108, 48
  %tag.immortal112 = icmp eq i64 %str.tag110, 0
  %active.gen113 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current114 = icmp eq i64 %str.tag110, %active.gen113
  %tag.fast.ok115 = or i1 %tag.immortal112, %tag.current114
  br i1 %tag.fast.ok115, label %str_ok111, label %tag.slow_check116

str_ok111:                                        ; preds = %tag.slow_check116, %str.eq.merge99
  %eq.rhs.len117 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len118 = and i64 %eq.rhs.len117, 281474976710655
  %eq.len119 = icmp eq i64 %eq.lhs.len109, %eq.rhs.len118
  br i1 %eq.len119, label %str.eq.then120, label %str.eq.else121

tag.slow_check116:                                ; preds = %str.eq.merge99
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag110)
  br label %str_ok111

str.eq.then120:                                   ; preds = %str_ok111
  %eq.lhs.data123 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data124 = load ptr, ptr %eq.lhs.data123, align 8
  %eq.rhs.data125 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp126 = call i32 @memcmp(ptr %eq.lhs.data124, ptr %eq.rhs.data125, i64 %eq.lhs.len109)
  %eq.cmp.zero127 = icmp eq i32 %eq.memcmp126, 0
  br label %str.eq.merge122

str.eq.else121:                                   ; preds = %str_ok111
  br label %str.eq.merge122

str.eq.merge122:                                  ; preds = %str.eq.else121, %str.eq.then120
  %str.eq.result128 = phi i1 [ %eq.cmp.zero127, %str.eq.then120 ], [ false, %str.eq.else121 ]
  %case.or129 = or i1 %case.or106, %str.eq.result128
  br i1 %case.or129, label %choice.case, label %choice.next

choice.then130:                                   ; preds = %choice.exit4
  ret i1 true

choice.exit131:                                   ; preds = %ret.dead132, %choice.exit4
  %var.load133 = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load133, ptr @str.23.struct)
  br i1 %call.res, label %or.592.then, label %or.592.else

ret.dead132:                                      ; No predecessors!
  br label %choice.exit131

or.592.then:                                      ; preds = %choice.exit131
  br label %or.592.exit

or.592.else:                                      ; preds = %choice.exit131
  %var.load134 = load ptr, ptr %var.code, align 8
  %call.res135 = call i1 @"formatter::starts_with_str"(ptr %var.load134, ptr @str.24.struct)
  br i1 %call.res135, label %and.593.then, label %and.593.else

or.592.exit:                                      ; preds = %and.593.exit, %or.592.then
  %or.592.phi = phi i1 [ %call.res, %or.592.then ], [ %and.593.phi, %and.593.exit ]
  br i1 %or.592.phi, label %choice.then138, label %choice.exit139

and.593.then:                                     ; preds = %or.592.else
  %var.load136 = load ptr, ptr %var.code, align 8
  %call.res137 = call i1 @"formatter::ends_with_str"(ptr %var.load136, ptr @str.25.struct)
  br label %and.593.exit

and.593.else:                                     ; preds = %or.592.else
  br label %and.593.exit

and.593.exit:                                     ; preds = %and.593.else, %and.593.then
  %and.593.phi = phi i1 [ %call.res137, %and.593.then ], [ %call.res135, %and.593.else ]
  br label %or.592.exit

choice.then138:                                   ; preds = %or.592.exit
  ret i1 true

choice.exit139:                                   ; preds = %ret.dead140, %or.592.exit
  %var.load141 = load ptr, ptr %var.code, align 8
  %call.res142 = call i1 @"formatter::starts_with_str"(ptr %var.load141, ptr @str.26.struct)
  br i1 %call.res142, label %and.594.then, label %and.594.else

ret.dead140:                                      ; No predecessors!
  br label %choice.exit139

and.594.then:                                     ; preds = %choice.exit139
  %var.load143 = load ptr, ptr %var.code, align 8
  %call.res144 = call i1 @"formatter::ends_with_str"(ptr %var.load143, ptr @str.25.struct)
  br label %and.594.exit

and.594.else:                                     ; preds = %choice.exit139
  br label %and.594.exit

and.594.exit:                                     ; preds = %and.594.else, %and.594.then
  %and.594.phi = phi i1 [ %call.res144, %and.594.then ], [ %call.res142, %and.594.else ]
  br i1 %and.594.phi, label %choice.then145, label %choice.exit146

choice.then145:                                   ; preds = %and.594.exit
  ret i1 true

choice.exit146:                                   ; preds = %ret.dead147, %and.594.exit
  %var.load148 = load ptr, ptr %var.code, align 8
  %call.res149 = call i1 @"formatter::ends_with_str"(ptr %var.load148, ptr @str.27.struct)
  br i1 %call.res149, label %or.595.then, label %or.595.else

ret.dead147:                                      ; No predecessors!
  br label %choice.exit146

or.595.then:                                      ; preds = %choice.exit146
  br label %or.595.exit

or.595.else:                                      ; preds = %choice.exit146
  %var.load150 = load ptr, ptr %var.code, align 8
  %call.res151 = call i1 @"formatter::ends_with_str"(ptr %var.load150, ptr @str.28.struct)
  br label %or.595.exit

or.595.exit:                                      ; preds = %or.595.else, %or.595.then
  %or.595.phi = phi i1 [ %call.res149, %or.595.then ], [ %call.res151, %or.595.else ]
  br i1 %or.595.phi, label %choice.then152, label %choice.exit153

choice.then152:                                   ; preds = %or.595.exit
  ret i1 true

choice.exit153:                                   ; preds = %ret.dead154, %or.595.exit
  %var.load155 = load ptr, ptr %var.code, align 8
  %call.res156 = call i1 @"formatter::ends_with_str"(ptr %var.load155, ptr @str.29.struct)
  br i1 %call.res156, label %or.596.then, label %or.596.else

ret.dead154:                                      ; No predecessors!
  br label %choice.exit153

or.596.then:                                      ; preds = %choice.exit153
  br label %or.596.exit

or.596.else:                                      ; preds = %choice.exit153
  %var.load157 = load ptr, ptr %var.code, align 8
  %call.res158 = call i1 @"formatter::ends_with_str"(ptr %var.load157, ptr @str.30.struct)
  br label %or.596.exit

or.596.exit:                                      ; preds = %or.596.else, %or.596.then
  %or.596.phi = phi i1 [ %call.res156, %or.596.then ], [ %call.res158, %or.596.else ]
  br i1 %or.596.phi, label %or.597.then, label %or.597.else

or.597.then:                                      ; preds = %or.596.exit
  br label %or.597.exit

or.597.else:                                      ; preds = %or.596.exit
  %var.load159 = load ptr, ptr %var.code, align 8
  %call.res160 = call i1 @"formatter::ends_with_str"(ptr %var.load159, ptr @str.31.struct)
  br label %or.597.exit

or.597.exit:                                      ; preds = %or.597.else, %or.597.then
  %or.597.phi = phi i1 [ %or.596.phi, %or.597.then ], [ %call.res160, %or.597.else ]
  br i1 %or.597.phi, label %or.598.then, label %or.598.else

or.598.then:                                      ; preds = %or.597.exit
  br label %or.598.exit

or.598.else:                                      ; preds = %or.597.exit
  %var.load161 = load ptr, ptr %var.code, align 8
  %call.res162 = call i1 @"formatter::ends_with_str"(ptr %var.load161, ptr @str.32.struct)
  br label %or.598.exit

or.598.exit:                                      ; preds = %or.598.else, %or.598.then
  %or.598.phi = phi i1 [ %or.597.phi, %or.598.then ], [ %call.res162, %or.598.else ]
  br i1 %or.598.phi, label %or.599.then, label %or.599.else

or.599.then:                                      ; preds = %or.598.exit
  br label %or.599.exit

or.599.else:                                      ; preds = %or.598.exit
  %var.load163 = load ptr, ptr %var.code, align 8
  %call.res164 = call i1 @"formatter::ends_with_str"(ptr %var.load163, ptr @str.33.struct)
  br label %or.599.exit

or.599.exit:                                      ; preds = %or.599.else, %or.599.then
  %or.599.phi = phi i1 [ %or.598.phi, %or.599.then ], [ %call.res164, %or.599.else ]
  br i1 %or.599.phi, label %choice.then165, label %choice.exit166

choice.then165:                                   ; preds = %or.599.exit
  ret i1 true

choice.exit166:                                   ; preds = %ret.dead167, %or.599.exit
  %var.load168 = load ptr, ptr %var.code, align 8
  %call.res169 = call i1 @"formatter::ends_with_str"(ptr %var.load168, ptr @str.34.struct)
  br i1 %call.res169, label %or.600.then, label %or.600.else

ret.dead167:                                      ; No predecessors!
  br label %choice.exit166

or.600.then:                                      ; preds = %choice.exit166
  br label %or.600.exit

or.600.else:                                      ; preds = %choice.exit166
  %var.load170 = load ptr, ptr %var.code, align 8
  %call.res171 = call i1 @"formatter::ends_with_str"(ptr %var.load170, ptr @str.35.struct)
  br label %or.600.exit

or.600.exit:                                      ; preds = %or.600.else, %or.600.then
  %or.600.phi = phi i1 [ %call.res169, %or.600.then ], [ %call.res171, %or.600.else ]
  br i1 %or.600.phi, label %choice.then172, label %choice.exit173

choice.then172:                                   ; preds = %or.600.exit
  ret i1 true

choice.exit173:                                   ; preds = %ret.dead174, %or.600.exit
  %var.load175 = load ptr, ptr %var.code, align 8
  %call.res176 = call i1 @"formatter::starts_with_str"(ptr %var.load175, ptr @str.36.struct)
  br i1 %call.res176, label %or.601.then, label %or.601.else

ret.dead174:                                      ; No predecessors!
  br label %choice.exit173

or.601.then:                                      ; preds = %choice.exit173
  br label %or.601.exit

or.601.else:                                      ; preds = %choice.exit173
  %var.load177 = load ptr, ptr %var.code, align 8
  %call.res178 = call i1 @"formatter::starts_with_str"(ptr %var.load177, ptr @str.37.struct)
  br label %or.601.exit

or.601.exit:                                      ; preds = %or.601.else, %or.601.then
  %or.601.phi = phi i1 [ %call.res176, %or.601.then ], [ %call.res178, %or.601.else ]
  br i1 %or.601.phi, label %and.602.then, label %and.602.else

and.602.then:                                     ; preds = %or.601.exit
  %var.load179 = load ptr, ptr %var.code, align 8
  %call.res180 = call i1 @"formatter::ends_with_str"(ptr %var.load179, ptr @str.38.struct)
  br label %and.602.exit

and.602.else:                                     ; preds = %or.601.exit
  br label %and.602.exit

and.602.exit:                                     ; preds = %and.602.else, %and.602.then
  %and.602.phi = phi i1 [ %call.res180, %and.602.then ], [ %or.601.phi, %and.602.else ]
  br i1 %and.602.phi, label %choice.then181, label %choice.exit182

choice.then181:                                   ; preds = %and.602.exit
  ret i1 true

choice.exit182:                                   ; preds = %ret.dead183, %and.602.exit
  %var.load184 = load ptr, ptr %var.code, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load184, i32 0, i32 0
  %s.read.len185 = load i64, ptr %s.read.len, align 8
  %s.read.len186 = and i64 %s.read.len185, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load184, i32 0, i32 1
  %s.read.data187 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len186
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead183:                                      ; No predecessors!
  br label %choice.exit182

idx_ok:                                           ; preds = %abort.dead, %choice.exit182
  %s.byte.gep = getelementptr i8, ptr %s.read.data187, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp188 = icmp eq i64 %s.byte.val, 91
  br i1 %cmptmp188, label %or.603.then, label %or.603.else

idx_oob:                                          ; preds = %choice.exit182
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

or.603.then:                                      ; preds = %idx_ok
  br label %or.603.exit

or.603.else:                                      ; preds = %idx_ok
  %var.load189 = load ptr, ptr %var.code, align 8
  %call.res190 = call i1 @"formatter::starts_with_str"(ptr %var.load189, ptr @str.8.struct)
  br label %or.603.exit

or.603.exit:                                      ; preds = %or.603.else, %or.603.then
  %or.603.phi = phi i1 [ %cmptmp188, %or.603.then ], [ %call.res190, %or.603.else ]
  br i1 %or.603.phi, label %and.604.then, label %and.604.else

and.604.then:                                     ; preds = %or.603.exit
  %var.load191 = load ptr, ptr %var.code, align 8
  %call.res192 = call i1 @"formatter::ends_with_str"(ptr %var.load191, ptr @str.39.struct)
  br label %and.604.exit

and.604.else:                                     ; preds = %or.603.exit
  br label %and.604.exit

and.604.exit:                                     ; preds = %and.604.else, %and.604.then
  %and.604.phi = phi i1 [ %call.res192, %and.604.then ], [ %or.603.phi, %and.604.else ]
  br i1 %and.604.phi, label %choice.then193, label %choice.exit194

choice.then193:                                   ; preds = %and.604.exit
  ret i1 true

choice.exit194:                                   ; preds = %ret.dead195, %and.604.exit
  %var.load196 = load ptr, ptr %var.code, align 8
  %call.res197 = call i1 @"formatter::ends_with_str"(ptr %var.load196, ptr @str.40.struct)
  br i1 %call.res197, label %and.605.then, label %and.605.else

ret.dead195:                                      ; No predecessors!
  br label %choice.exit194

and.605.then:                                     ; preds = %choice.exit194
  %var.load198 = load ptr, ptr %var.code, align 8
  %call.res199 = call i1 @"formatter::ends_with_str"(ptr %var.load198, ptr @str.41.struct)
  %nottmp = xor i1 %call.res199, true
  br label %and.605.exit

and.605.else:                                     ; preds = %choice.exit194
  br label %and.605.exit

and.605.exit:                                     ; preds = %and.605.else, %and.605.then
  %and.605.phi = phi i1 [ %nottmp, %and.605.then ], [ %call.res197, %and.605.else ]
  br i1 %and.605.phi, label %and.606.then, label %and.606.else

and.606.then:                                     ; preds = %and.605.exit
  %var.load200 = load ptr, ptr %var.code, align 8
  %call.res201 = call i1 @"formatter::ends_with_str"(ptr %var.load200, ptr @str.42.struct)
  %nottmp202 = xor i1 %call.res201, true
  br label %and.606.exit

and.606.else:                                     ; preds = %and.605.exit
  br label %and.606.exit

and.606.exit:                                     ; preds = %and.606.else, %and.606.then
  %and.606.phi = phi i1 [ %nottmp202, %and.606.then ], [ %and.605.phi, %and.606.else ]
  br i1 %and.606.phi, label %and.607.then, label %and.607.else

and.607.then:                                     ; preds = %and.606.exit
  %var.load203 = load ptr, ptr %var.code, align 8
  %call.res204 = call i1 @"formatter::ends_with_str"(ptr %var.load203, ptr @str.43.struct)
  %nottmp205 = xor i1 %call.res204, true
  br label %and.607.exit

and.607.else:                                     ; preds = %and.606.exit
  br label %and.607.exit

and.607.exit:                                     ; preds = %and.607.else, %and.607.then
  %and.607.phi = phi i1 [ %nottmp205, %and.607.then ], [ %and.606.phi, %and.607.else ]
  br i1 %and.607.phi, label %and.608.then, label %and.608.else

and.608.then:                                     ; preds = %and.607.exit
  %var.load206 = load ptr, ptr %var.code, align 8
  %call.res207 = call i1 @"formatter::ends_with_str"(ptr %var.load206, ptr @str.44.struct)
  %nottmp208 = xor i1 %call.res207, true
  br label %and.608.exit

and.608.else:                                     ; preds = %and.607.exit
  br label %and.608.exit

and.608.exit:                                     ; preds = %and.608.else, %and.608.then
  %and.608.phi = phi i1 [ %nottmp208, %and.608.then ], [ %and.607.phi, %and.608.else ]
  br i1 %and.608.phi, label %and.609.then, label %and.609.else

and.609.then:                                     ; preds = %and.608.exit
  %var.load209 = load ptr, ptr %var.code, align 8
  %call.res210 = call i1 @"formatter::ends_with_str"(ptr %var.load209, ptr @str.45.struct)
  %nottmp211 = xor i1 %call.res210, true
  br label %and.609.exit

and.609.else:                                     ; preds = %and.608.exit
  br label %and.609.exit

and.609.exit:                                     ; preds = %and.609.else, %and.609.then
  %and.609.phi = phi i1 [ %nottmp211, %and.609.then ], [ %and.608.phi, %and.609.else ]
  ret i1 %and.609.phi
}

define i1 @"formatter::ends_with_cont_op"(ptr %0) #0 {
entry:
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %or.610.then, label %or.610.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

or.610.then:                                      ; preds = %str_ok
  br label %or.610.exit

or.610.else:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::ends_with_block_opener"(ptr %var.load3)
  br label %or.610.exit

or.610.exit:                                      ; preds = %or.610.else, %or.610.then
  %or.610.phi = phi i1 [ %cmptmp, %or.610.then ], [ %call.res, %or.610.else ]
  br i1 %or.610.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.610.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.610.exit
  %var.load4 = load ptr, ptr %var.code, align 8
  %call.res5 = call i1 @"formatter::ends_with_str"(ptr %var.load4, ptr @str.46.struct)
  br i1 %call.res5, label %and.611.then, label %and.611.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.611.then:                                     ; preds = %choice.exit
  %var.load6 = load ptr, ptr %var.code, align 8
  %call.res7 = call i1 @"formatter::ends_with_str"(ptr %var.load6, ptr @str.47.struct)
  %nottmp = xor i1 %call.res7, true
  br label %and.611.exit

and.611.else:                                     ; preds = %choice.exit
  br label %and.611.exit

and.611.exit:                                     ; preds = %and.611.else, %and.611.then
  %and.611.phi = phi i1 [ %nottmp, %and.611.then ], [ %call.res5, %and.611.else ]
  br i1 %and.611.phi, label %and.612.then, label %and.612.else

and.612.then:                                     ; preds = %and.611.exit
  %var.load8 = load ptr, ptr %var.code, align 8
  %call.res9 = call i1 @"formatter::ends_with_str"(ptr %var.load8, ptr @str.48.struct)
  %nottmp10 = xor i1 %call.res9, true
  br label %and.612.exit

and.612.else:                                     ; preds = %and.611.exit
  br label %and.612.exit

and.612.exit:                                     ; preds = %and.612.else, %and.612.then
  %and.612.phi = phi i1 [ %nottmp10, %and.612.then ], [ %and.611.phi, %and.612.else ]
  br i1 %and.612.phi, label %and.613.then, label %and.613.else

and.613.then:                                     ; preds = %and.612.exit
  %var.load11 = load ptr, ptr %var.code, align 8
  %call.res12 = call i1 @"formatter::ends_with_str"(ptr %var.load11, ptr @str.49.struct)
  %nottmp13 = xor i1 %call.res12, true
  br label %and.613.exit

and.613.else:                                     ; preds = %and.612.exit
  br label %and.613.exit

and.613.exit:                                     ; preds = %and.613.else, %and.613.then
  %and.613.phi = phi i1 [ %nottmp13, %and.613.then ], [ %and.612.phi, %and.613.else ]
  br i1 %and.613.phi, label %choice.then14, label %choice.exit15

choice.then14:                                    ; preds = %and.613.exit
  ret i1 true

choice.exit15:                                    ; preds = %ret.dead16, %and.613.exit
  %var.load17 = load ptr, ptr %var.code, align 8
  %call.res18 = call i1 @"formatter::ends_with_str"(ptr %var.load17, ptr @str.50.struct)
  br i1 %call.res18, label %and.614.then, label %and.614.else

ret.dead16:                                       ; No predecessors!
  br label %choice.exit15

and.614.then:                                     ; preds = %choice.exit15
  %var.load19 = load ptr, ptr %var.code, align 8
  %call.res20 = call i1 @"formatter::ends_with_str"(ptr %var.load19, ptr @str.51.struct)
  %nottmp21 = xor i1 %call.res20, true
  br label %and.614.exit

and.614.else:                                     ; preds = %choice.exit15
  br label %and.614.exit

and.614.exit:                                     ; preds = %and.614.else, %and.614.then
  %and.614.phi = phi i1 [ %nottmp21, %and.614.then ], [ %call.res18, %and.614.else ]
  br i1 %and.614.phi, label %and.615.then, label %and.615.else

and.615.then:                                     ; preds = %and.614.exit
  %var.load22 = load ptr, ptr %var.code, align 8
  %call.res23 = call i1 @"formatter::ends_with_str"(ptr %var.load22, ptr @str.52.struct)
  %nottmp24 = xor i1 %call.res23, true
  br label %and.615.exit

and.615.else:                                     ; preds = %and.614.exit
  br label %and.615.exit

and.615.exit:                                     ; preds = %and.615.else, %and.615.then
  %and.615.phi = phi i1 [ %nottmp24, %and.615.then ], [ %and.614.phi, %and.615.else ]
  br i1 %and.615.phi, label %and.616.then, label %and.616.else

and.616.then:                                     ; preds = %and.615.exit
  %var.load25 = load ptr, ptr %var.code, align 8
  %call.res26 = call i1 @"formatter::ends_with_str"(ptr %var.load25, ptr @str.53.struct)
  %nottmp27 = xor i1 %call.res26, true
  br label %and.616.exit

and.616.else:                                     ; preds = %and.615.exit
  br label %and.616.exit

and.616.exit:                                     ; preds = %and.616.else, %and.616.then
  %and.616.phi = phi i1 [ %nottmp27, %and.616.then ], [ %and.615.phi, %and.616.else ]
  br i1 %and.616.phi, label %choice.then28, label %choice.exit29

choice.then28:                                    ; preds = %and.616.exit
  ret i1 true

choice.exit29:                                    ; preds = %ret.dead30, %and.616.exit
  %var.load31 = load ptr, ptr %var.code, align 8
  %call.res32 = call i1 @"formatter::ends_with_str"(ptr %var.load31, ptr @str.54.struct)
  br i1 %call.res32, label %or.617.then, label %or.617.else

ret.dead30:                                       ; No predecessors!
  br label %choice.exit29

or.617.then:                                      ; preds = %choice.exit29
  br label %or.617.exit

or.617.else:                                      ; preds = %choice.exit29
  %var.load33 = load ptr, ptr %var.code, align 8
  %call.res34 = call i1 @"formatter::ends_with_str"(ptr %var.load33, ptr @str.55.struct)
  br label %or.617.exit

or.617.exit:                                      ; preds = %or.617.else, %or.617.then
  %or.617.phi = phi i1 [ %call.res32, %or.617.then ], [ %call.res34, %or.617.else ]
  br i1 %or.617.phi, label %or.618.then, label %or.618.else

or.618.then:                                      ; preds = %or.617.exit
  br label %or.618.exit

or.618.else:                                      ; preds = %or.617.exit
  %var.load35 = load ptr, ptr %var.code, align 8
  %call.res36 = call i1 @"formatter::ends_with_str"(ptr %var.load35, ptr @str.56.struct)
  br label %or.618.exit

or.618.exit:                                      ; preds = %or.618.else, %or.618.then
  %or.618.phi = phi i1 [ %or.617.phi, %or.618.then ], [ %call.res36, %or.618.else ]
  br i1 %or.618.phi, label %or.619.then, label %or.619.else

or.619.then:                                      ; preds = %or.618.exit
  br label %or.619.exit

or.619.else:                                      ; preds = %or.618.exit
  %var.load37 = load ptr, ptr %var.code, align 8
  %call.res38 = call i1 @"formatter::ends_with_str"(ptr %var.load37, ptr @str.57.struct)
  br label %or.619.exit

or.619.exit:                                      ; preds = %or.619.else, %or.619.then
  %or.619.phi = phi i1 [ %or.618.phi, %or.619.then ], [ %call.res38, %or.619.else ]
  br i1 %or.619.phi, label %or.620.then, label %or.620.else

or.620.then:                                      ; preds = %or.619.exit
  br label %or.620.exit

or.620.else:                                      ; preds = %or.619.exit
  %var.load39 = load ptr, ptr %var.code, align 8
  %call.res40 = call i1 @"formatter::ends_with_str"(ptr %var.load39, ptr @str.58.struct)
  br label %or.620.exit

or.620.exit:                                      ; preds = %or.620.else, %or.620.then
  %or.620.phi = phi i1 [ %or.619.phi, %or.620.then ], [ %call.res40, %or.620.else ]
  br i1 %or.620.phi, label %or.621.then, label %or.621.else

or.621.then:                                      ; preds = %or.620.exit
  br label %or.621.exit

or.621.else:                                      ; preds = %or.620.exit
  %var.load41 = load ptr, ptr %var.code, align 8
  %call.res42 = call i1 @"formatter::ends_with_str"(ptr %var.load41, ptr @str.41.struct)
  br label %or.621.exit

or.621.exit:                                      ; preds = %or.621.else, %or.621.then
  %or.621.phi = phi i1 [ %or.620.phi, %or.621.then ], [ %call.res42, %or.621.else ]
  br i1 %or.621.phi, label %or.622.then, label %or.622.else

or.622.then:                                      ; preds = %or.621.exit
  br label %or.622.exit

or.622.else:                                      ; preds = %or.621.exit
  %var.load43 = load ptr, ptr %var.code, align 8
  %call.res44 = call i1 @"formatter::ends_with_str"(ptr %var.load43, ptr @str.42.struct)
  br label %or.622.exit

or.622.exit:                                      ; preds = %or.622.else, %or.622.then
  %or.622.phi = phi i1 [ %or.621.phi, %or.622.then ], [ %call.res44, %or.622.else ]
  br i1 %or.622.phi, label %or.623.then, label %or.623.else

or.623.then:                                      ; preds = %or.622.exit
  br label %or.623.exit

or.623.else:                                      ; preds = %or.622.exit
  %var.load45 = load ptr, ptr %var.code, align 8
  %call.res46 = call i1 @"formatter::ends_with_str"(ptr %var.load45, ptr @str.59.struct)
  br label %or.623.exit

or.623.exit:                                      ; preds = %or.623.else, %or.623.then
  %or.623.phi = phi i1 [ %or.622.phi, %or.623.then ], [ %call.res46, %or.623.else ]
  br i1 %or.623.phi, label %or.624.then, label %or.624.else

or.624.then:                                      ; preds = %or.623.exit
  br label %or.624.exit

or.624.else:                                      ; preds = %or.623.exit
  %var.load47 = load ptr, ptr %var.code, align 8
  %call.res48 = call i1 @"formatter::ends_with_str"(ptr %var.load47, ptr @str.60.struct)
  br label %or.624.exit

or.624.exit:                                      ; preds = %or.624.else, %or.624.then
  %or.624.phi = phi i1 [ %or.623.phi, %or.624.then ], [ %call.res48, %or.624.else ]
  br i1 %or.624.phi, label %or.625.then, label %or.625.else

or.625.then:                                      ; preds = %or.624.exit
  br label %or.625.exit

or.625.else:                                      ; preds = %or.624.exit
  %var.load49 = load ptr, ptr %var.code, align 8
  %call.res50 = call i1 @"formatter::ends_with_str"(ptr %var.load49, ptr @str.61.struct)
  br label %or.625.exit

or.625.exit:                                      ; preds = %or.625.else, %or.625.then
  %or.625.phi = phi i1 [ %or.624.phi, %or.625.then ], [ %call.res50, %or.625.else ]
  br i1 %or.625.phi, label %or.626.then, label %or.626.else

or.626.then:                                      ; preds = %or.625.exit
  br label %or.626.exit

or.626.else:                                      ; preds = %or.625.exit
  %var.load51 = load ptr, ptr %var.code, align 8
  %call.res52 = call i1 @"formatter::ends_with_str"(ptr %var.load51, ptr @str.62.struct)
  br label %or.626.exit

or.626.exit:                                      ; preds = %or.626.else, %or.626.then
  %or.626.phi = phi i1 [ %or.625.phi, %or.626.then ], [ %call.res52, %or.626.else ]
  br i1 %or.626.phi, label %or.627.then, label %or.627.else

or.627.then:                                      ; preds = %or.626.exit
  br label %or.627.exit

or.627.else:                                      ; preds = %or.626.exit
  %var.load53 = load ptr, ptr %var.code, align 8
  %call.res54 = call i1 @"formatter::ends_with_str"(ptr %var.load53, ptr @str.63.struct)
  br label %or.627.exit

or.627.exit:                                      ; preds = %or.627.else, %or.627.then
  %or.627.phi = phi i1 [ %or.626.phi, %or.627.then ], [ %call.res54, %or.627.else ]
  br i1 %or.627.phi, label %or.628.then, label %or.628.else

or.628.then:                                      ; preds = %or.627.exit
  br label %or.628.exit

or.628.else:                                      ; preds = %or.627.exit
  %var.load55 = load ptr, ptr %var.code, align 8
  %call.res56 = call i1 @"formatter::ends_with_str"(ptr %var.load55, ptr @str.13.struct)
  br label %or.628.exit

or.628.exit:                                      ; preds = %or.628.else, %or.628.then
  %or.628.phi = phi i1 [ %or.627.phi, %or.628.then ], [ %call.res56, %or.628.else ]
  br i1 %or.628.phi, label %or.629.then, label %or.629.else

or.629.then:                                      ; preds = %or.628.exit
  br label %or.629.exit

or.629.else:                                      ; preds = %or.628.exit
  %var.load57 = load ptr, ptr %var.code, align 8
  %call.res58 = call i1 @"formatter::ends_with_str"(ptr %var.load57, ptr @str.14.struct)
  br label %or.629.exit

or.629.exit:                                      ; preds = %or.629.else, %or.629.then
  %or.629.phi = phi i1 [ %or.628.phi, %or.629.then ], [ %call.res58, %or.629.else ]
  br i1 %or.629.phi, label %or.630.then, label %or.630.else

or.630.then:                                      ; preds = %or.629.exit
  br label %or.630.exit

or.630.else:                                      ; preds = %or.629.exit
  %var.load59 = load ptr, ptr %var.code, align 8
  %call.res60 = call i1 @"formatter::ends_with_str"(ptr %var.load59, ptr @str.15.struct)
  br label %or.630.exit

or.630.exit:                                      ; preds = %or.630.else, %or.630.then
  %or.630.phi = phi i1 [ %or.629.phi, %or.630.then ], [ %call.res60, %or.630.else ]
  br i1 %or.630.phi, label %or.631.then, label %or.631.else

or.631.then:                                      ; preds = %or.630.exit
  br label %or.631.exit

or.631.else:                                      ; preds = %or.630.exit
  %var.load61 = load ptr, ptr %var.code, align 8
  %call.res62 = call i1 @"formatter::ends_with_str"(ptr %var.load61, ptr @str.16.struct)
  br label %or.631.exit

or.631.exit:                                      ; preds = %or.631.else, %or.631.then
  %or.631.phi = phi i1 [ %or.630.phi, %or.631.then ], [ %call.res62, %or.631.else ]
  br i1 %or.631.phi, label %or.632.then, label %or.632.else

or.632.then:                                      ; preds = %or.631.exit
  br label %or.632.exit

or.632.else:                                      ; preds = %or.631.exit
  %var.load63 = load ptr, ptr %var.code, align 8
  %call.res64 = call i1 @"formatter::ends_with_str"(ptr %var.load63, ptr @str.4.struct)
  br label %or.632.exit

or.632.exit:                                      ; preds = %or.632.else, %or.632.then
  %or.632.phi = phi i1 [ %or.631.phi, %or.632.then ], [ %call.res64, %or.632.else ]
  br i1 %or.632.phi, label %or.633.then, label %or.633.else

or.633.then:                                      ; preds = %or.632.exit
  br label %or.633.exit

or.633.else:                                      ; preds = %or.632.exit
  %var.load65 = load ptr, ptr %var.code, align 8
  %call.res66 = call i1 @"formatter::ends_with_str"(ptr %var.load65, ptr @str.17.struct)
  br label %or.633.exit

or.633.exit:                                      ; preds = %or.633.else, %or.633.then
  %or.633.phi = phi i1 [ %or.632.phi, %or.633.then ], [ %call.res66, %or.633.else ]
  br i1 %or.633.phi, label %or.634.then, label %or.634.else

or.634.then:                                      ; preds = %or.633.exit
  br label %or.634.exit

or.634.else:                                      ; preds = %or.633.exit
  %var.load67 = load ptr, ptr %var.code, align 8
  %call.res68 = call i1 @"formatter::ends_with_str"(ptr %var.load67, ptr @str.64.struct)
  br label %or.634.exit

or.634.exit:                                      ; preds = %or.634.else, %or.634.then
  %or.634.phi = phi i1 [ %or.633.phi, %or.634.then ], [ %call.res68, %or.634.else ]
  br i1 %or.634.phi, label %or.635.then, label %or.635.else

or.635.then:                                      ; preds = %or.634.exit
  br label %or.635.exit

or.635.else:                                      ; preds = %or.634.exit
  %var.load69 = load ptr, ptr %var.code, align 8
  %call.res70 = call i1 @"formatter::ends_with_str"(ptr %var.load69, ptr @str.65.struct)
  br label %or.635.exit

or.635.exit:                                      ; preds = %or.635.else, %or.635.then
  %or.635.phi = phi i1 [ %or.634.phi, %or.635.then ], [ %call.res70, %or.635.else ]
  br i1 %or.635.phi, label %or.636.then, label %or.636.else

or.636.then:                                      ; preds = %or.635.exit
  br label %or.636.exit

or.636.else:                                      ; preds = %or.635.exit
  %var.load71 = load ptr, ptr %var.code, align 8
  %call.res72 = call i1 @"formatter::ends_with_str"(ptr %var.load71, ptr @str.66.struct)
  br label %or.636.exit

or.636.exit:                                      ; preds = %or.636.else, %or.636.then
  %or.636.phi = phi i1 [ %or.635.phi, %or.636.then ], [ %call.res72, %or.636.else ]
  ret i1 %or.636.phi
}

define i1 @"formatter::has_intermediate_dedent"(ptr %0, i64 %1, i64 %2, i64 %3) #0 {
entry:
  %var.r = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.637 = alloca i64, align 8
  %loop.idx.637 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.child_raw = alloca i64, align 8
  %var.parent_raw = alloca i64, align 8
  %var.start_idx = alloca i64, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  store i64 %1, ptr %var.start_idx, align 8
  store i64 %2, ptr %var.parent_raw, align 8
  store i64 %3, ptr %var.child_raw, align 8
  store i1 false, ptr %"var.found'", align 1
  %var.load = load i64, ptr %var.start_idx, align 8
  %addtmp = add i64 %var.load, 1
  store i64 %addtmp, ptr %"var.idx'", align 8
  %var.load1 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create2, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.lines, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query4 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query4, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.637, align 8
  br label %loop.header.637

loop.header.637:                                  ; preds = %loop.latch.637, %a.after
  %counter.load = load i64, ptr %loop.idx.637, align 8
  br label %loop.body.637

loop.body.637:                                    ; preds = %loop.header.637
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.637, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.idx'", align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.637:                                ; No predecessors!
  br label %loop.exit.637

loop.latch.637:                                   ; preds = %choice.exit56
  %step.val = load i64, ptr %loop.step.637, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.637, align 8
  br label %loop.header.637

loop.exit.637:                                    ; preds = %choice.then68, %choice.then63, %choice.then, %loop.exit.nat.637
  %var.load72 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load72

choice.then:                                      ; preds = %loop.body.637
  br label %loop.exit.637

choice.exit:                                      ; preds = %loop.body.637
  %var.load7 = load ptr, ptr %var.lines, align 8
  %a.load8 = load ptr, ptr %var.lines, align 8
  %a.null9 = icmp eq ptr %a.load8, null
  br i1 %a.null9, label %a.create10, label %a.after11

a.create10:                                       ; preds = %choice.exit
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 24)
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 128)
  %a.len.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create13, i32 0, i32 0
  store i64 0, ptr %a.len.gep16, align 8
  %a.data.gep17 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create13, i32 0, i32 1
  store ptr %a.buf15, ptr %a.data.gep17, align 8
  %a.cap.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create13, i32 0, i32 2
  store i64 16, ptr %a.cap.gep18, align 8
  store ptr %a.create13, ptr %var.lines, align 8
  br label %a.after11

a.after11:                                        ; preds = %a.create10, %choice.exit
  %a.load219 = load ptr, ptr %var.lines, align 8
  %var.load20 = load i64, ptr %"var.idx'", align 8
  %a.rd.nonnull = icmp ne ptr %a.load219, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after11
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load219, i32 0, i32 0
  %a.rd.len21 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load20, 0
  %a.rd.lt = icmp slt i64 %var.load20, %a.rd.len21
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load219, i32 0, i32 1
  %a.rd.data22 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data22, i64 %var.load20
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after11
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 492, ptr %err.line.gep, align 8
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
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 56)
  %err.code.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 0
  store i64 4011, ptr %err.code.gep26, align 8
  %err.msg.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep27, align 8
  %err.file.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep28, align 8
  %err.line.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 3
  store i64 492, ptr %err.line.gep29, align 8
  %err.col.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 4
  store i64 23, ptr %err.col.gep30, align 8
  %err.ctx.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 5
  %err.ctx0.gep32 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep31, i32 0, i32 0
  store i64 %var.load20, ptr %err.ctx0.gep32, align 8
  %err.ctx1.gep33 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep31, i32 0, i32 1
  store i64 %a.rd.len21, ptr %err.ctx1.gep33, align 8
  %err.p2i34 = ptrtoint ptr %err.alloc25 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i34, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.638, label %unwrap.abort.638

unwrap.pos.638:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.ln, align 8
  %var.load46 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load46, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp47 = icmp eq i64 %fld.load, 0
  br i1 %cmptmp47, label %and.639.then, label %and.639.else

unwrap.abort.638:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep35, align 8
  %err.msg.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep36, align 8
  %err.file.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep37, align 8
  %err.line.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep38, align 8
  %err.col.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep39, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len40 = load i64, ptr %err.msg.len, align 8
  %err.msg.len41 = and i64 %err.msg.len40, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len41 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data42 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len43 = load i64, ptr %err.file.len, align 8
  %err.file.len44 = and i64 %err.file.len43, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len44 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data45 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.638
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.638
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data42, i32 %err.file.len32, ptr %err.file.data45, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

and.639.then:                                     ; preds = %unwrap.pos.638
  %var.load48 = load ptr, ptr %var.ln, align 8
  %fld.gep49 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load48, i32 0, i32 5
  %fld.load50 = load i1, ptr %fld.gep49, align 1
  %nottmp = xor i1 %fld.load50, true
  br label %and.639.exit

and.639.else:                                     ; preds = %unwrap.pos.638
  br label %and.639.exit

and.639.exit:                                     ; preds = %and.639.else, %and.639.then
  %and.639.phi = phi i1 [ %nottmp, %and.639.then ], [ %cmptmp47, %and.639.else ]
  br i1 %and.639.phi, label %and.640.then, label %and.640.else

and.640.then:                                     ; preds = %and.639.exit
  %var.load51 = load ptr, ptr %var.ln, align 8
  %fld.gep52 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load51, i32 0, i32 6
  %fld.load53 = load i1, ptr %fld.gep52, align 1
  %nottmp54 = xor i1 %fld.load53, true
  br label %and.640.exit

and.640.else:                                     ; preds = %and.639.exit
  br label %and.640.exit

and.640.exit:                                     ; preds = %and.640.else, %and.640.then
  %and.640.phi = phi i1 [ %nottmp54, %and.640.then ], [ %and.639.phi, %and.640.else ]
  br i1 %and.640.phi, label %choice.then55, label %choice.exit56

choice.then55:                                    ; preds = %and.640.exit
  %var.load57 = load ptr, ptr %var.ln, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load57, i32 0, i32 3
  %fld.load59 = load i64, ptr %fld.gep58, align 8
  store i64 %fld.load59, ptr %var.r, align 8
  %var.load60 = load i64, ptr %var.r, align 8
  %var.load61 = load i64, ptr %var.parent_raw, align 8
  %cmptmp62 = icmp sle i64 %var.load60, %var.load61
  br i1 %cmptmp62, label %choice.then63, label %choice.exit64

choice.exit56:                                    ; preds = %choice.exit69, %and.640.exit
  %var.load70 = load i64, ptr %"var.idx'", align 8
  %addtmp71 = add i64 %var.load70, 1
  store i64 %addtmp71, ptr %"var.idx'", align 8
  br label %loop.latch.637

choice.then63:                                    ; preds = %choice.then55
  br label %loop.exit.637

choice.exit64:                                    ; preds = %choice.then55
  %var.load65 = load i64, ptr %var.r, align 8
  %var.load66 = load i64, ptr %var.child_raw, align 8
  %cmptmp67 = icmp slt i64 %var.load65, %var.load66
  br i1 %cmptmp67, label %choice.then68, label %choice.exit69

choice.then68:                                    ; preds = %choice.exit64
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.637

choice.exit69:                                    ; preds = %choice.exit64
  br label %choice.exit56
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define i64 @"formatter::compute_child_delta"(ptr %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5) #0 {
entry:
  %var.child_raw = alloca i64, align 8
  %var.parent_raw = alloca i64, align 8
  %var.child_code = alloca ptr, align 8
  %var.parent_code = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  store i64 %1, ptr %var.idx, align 8
  store ptr %2, ptr %var.parent_code, align 8
  store ptr %3, ptr %var.child_code, align 8
  store i64 %4, ptr %var.parent_raw, align 8
  store i64 %5, ptr %var.child_raw, align 8
  %var.load = load ptr, ptr %var.child_code, align 8
  %call.res = call i1 @"formatter::starts_with_choice_sep"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i64 3

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load ptr, ptr %var.parent_code, align 8
  %call.res2 = call i1 @"formatter::is_inline_pipe_arm"(ptr %var.load1)
  br i1 %call.res2, label %and.641.then, label %and.641.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.641.then:                                     ; preds = %choice.exit
  %var.load3 = load ptr, ptr %var.parent_code, align 8
  %call.res4 = call i1 @"formatter::ends_with_block_opener"(ptr %var.load3)
  %nottmp = xor i1 %call.res4, true
  br label %and.641.exit

and.641.else:                                     ; preds = %choice.exit
  br label %and.641.exit

and.641.exit:                                     ; preds = %and.641.else, %and.641.then
  %and.641.phi = phi i1 [ %nottmp, %and.641.then ], [ %call.res2, %and.641.else ]
  br i1 %and.641.phi, label %choice.then5, label %choice.else

choice.then5:                                     ; preds = %and.641.exit
  %var.load7 = load ptr, ptr %var.parent_code, align 8
  %call.res8 = call i1 @"formatter::ends_with_cont_op"(ptr %var.load7)
  br i1 %call.res8, label %and.642.then, label %and.642.else

choice.else:                                      ; preds = %and.641.exit
  %var.load19 = load ptr, ptr %var.parent_code, align 8
  %call.res20 = call i1 @"formatter::ends_with_cont_op"(ptr %var.load19)
  br i1 %call.res20, label %choice.then21, label %choice.else22

choice.exit6:                                     ; preds = %choice.exit23, %choice.exit18
  %choice.res25 = phi i64 [ %choice.res, %choice.exit18 ], [ %choice.res24, %choice.exit23 ]
  ret i64 %choice.res25

and.642.then:                                     ; preds = %choice.then5
  %var.load9 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.642.else:                                     ; preds = %choice.then5
  br label %and.642.exit

and.642.exit:                                     ; preds = %and.642.else, %a.after
  %and.642.phi = phi i1 [ %call.res15, %a.after ], [ %call.res8, %and.642.else ]
  br i1 %and.642.phi, label %choice.then16, label %choice.else17

a.create:                                         ; preds = %and.642.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create10, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.642.then
  %a.load2 = load ptr, ptr %var.lines, align 8
  %var.load12 = load i64, ptr %var.idx, align 8
  %var.load13 = load i64, ptr %var.parent_raw, align 8
  %var.load14 = load i64, ptr %var.child_raw, align 8
  %call.res15 = call i1 @"formatter::has_intermediate_dedent"(ptr %a.load2, i64 %var.load12, i64 %var.load13, i64 %var.load14)
  br label %and.642.exit

choice.then16:                                    ; preds = %and.642.exit
  br label %choice.exit18

choice.else17:                                    ; preds = %and.642.exit
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else17, %choice.then16
  %choice.res = phi i64 [ 4, %choice.then16 ], [ 2, %choice.else17 ]
  br label %choice.exit6

choice.then21:                                    ; preds = %choice.else
  br label %choice.exit23

choice.else22:                                    ; preds = %choice.else
  br label %choice.exit23

choice.exit23:                                    ; preds = %choice.else22, %choice.then21
  %choice.res24 = phi i64 [ 2, %choice.then21 ], [ 3, %choice.else22 ]
  br label %choice.exit6
}

define i64 @"formatter::find_stack_level"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var.v = alloca i64, align 8
  %var._26 = alloca ptr, align 8
  %var._24 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.643 = alloca i64, align 8
  %loop.idx.643 = alloca i64, align 8
  %"var.found'" = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %var.raw = alloca i64, align 8
  %var.top = alloca i64, align 8
  %var.stack = alloca ptr, align 8
  store ptr %0, ptr %var.stack, align 8
  store i64 %1, ptr %var.top, align 8
  store i64 %2, ptr %var.raw, align 8
  %var.load = load i64, ptr %var.top, align 8
  %subtmp = sub i64 %var.load, 1
  store i64 %subtmp, ptr %"var.idx'", align 8
  store i64 0, ptr %"var.found'", align 8
  store i64 0, ptr %loop.idx.643, align 8
  br label %loop.header.643

loop.header.643:                                  ; preds = %loop.latch.643, %entry
  %counter.load = load i64, ptr %loop.idx.643, align 8
  br label %loop.body.643

loop.body.643:                                    ; preds = %loop.header.643
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.643, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load i64, ptr %"var.idx'", align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.643:                                ; No predecessors!
  br label %loop.exit.643

loop.latch.643:                                   ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.643, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.643, align 8
  br label %loop.header.643

loop.exit.643:                                    ; preds = %choice.then30, %choice.then, %loop.exit.nat.643
  %var.load36 = load i64, ptr %"var.found'", align 8
  ret i64 %var.load36

choice.then:                                      ; preds = %loop.body.643
  br label %loop.exit.643

choice.exit:                                      ; preds = %loop.body.643
  %var.load2 = load ptr, ptr %var.stack, align 8
  %a.load = load ptr, ptr %var.stack, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.stack, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.exit
  %a.load2 = load ptr, ptr %var.stack, align 8
  %var.load5 = load i64, ptr %"var.idx'", align 8
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
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 522, ptr %err.line.gep, align 8
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
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 56)
  %err.code.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 0
  store i64 4011, ptr %err.code.gep11, align 8
  %err.msg.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 522, ptr %err.line.gep14, align 8
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
  %ram.tag20 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag20, label %choice.then21, label %choice.else

choice.then21:                                    ; preds = %a.rd.done
  %ram.pay23 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay23, ptr %var._24, align 8
  br label %choice.exit22

choice.else:                                      ; preds = %a.rd.done
  %ram.pay25 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay25 to ptr
  store ptr %pay.ptr, ptr %var._26, align 8
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else, %choice.then21
  %choice.res = phi i64 [ %ram.pay23, %choice.then21 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.v, align 8
  %var.load27 = load i64, ptr %var.v, align 8
  %var.load28 = load i64, ptr %var.raw, align 8
  %cmptmp29 = icmp sle i64 %var.load27, %var.load28
  br i1 %cmptmp29, label %choice.then30, label %choice.else31

choice.then30:                                    ; preds = %choice.exit22
  %var.load33 = load i64, ptr %"var.idx'", align 8
  store i64 %var.load33, ptr %"var.found'", align 8
  br label %loop.exit.643

choice.else31:                                    ; preds = %choice.exit22
  %var.load34 = load i64, ptr %"var.idx'", align 8
  %subtmp35 = sub i64 %var.load34, 1
  store i64 %subtmp35, ptr %"var.idx'", align 8
  br label %choice.exit32

choice.exit32:                                    ; preds = %choice.else31
  br label %loop.latch.643
}

define { i64, ptr } @"formatter::format_lines"(ptr %0) #0 {
entry:
  %var._2143 = alloca i64, align 8
  %var._i2142 = alloca i64, align 8
  %loop.step.652 = alloca i64, align 8
  %loop.idx.652 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var.canon_indent = alloca i64, align 8
  %var._1982 = alloca ptr, align 8
  %var._1979 = alloca i64, align 8
  %var._1887 = alloca ptr, align 8
  %var._1886 = alloca ptr, align 8
  %var._1885 = alloca ptr, align 8
  %var._1796 = alloca ptr, align 8
  %var._1795 = alloca ptr, align 8
  %var._1794 = alloca ptr, align 8
  %var._1708 = alloca ptr, align 8
  %var._1707 = alloca ptr, align 8
  %var._1706 = alloca ptr, align 8
  %var._1621 = alloca ptr, align 8
  %var._1620 = alloca ptr, align 8
  %var._1619 = alloca ptr, align 8
  %var.new_canon1459 = alloca i64, align 8
  %var.delta1455 = alloca i64, align 8
  %var.p_code1435 = alloca ptr, align 8
  %var._1433 = alloca ptr, align 8
  %var._1430 = alloca ptr, align 8
  %var.p_canon1367 = alloca i64, align 8
  %var._1365 = alloca ptr, align 8
  %var._1362 = alloca i64, align 8
  %var.matched_raw = alloca i64, align 8
  %var._1293 = alloca ptr, align 8
  %var._1290 = alloca i64, align 8
  %var._1220 = alloca ptr, align 8
  %var._1217 = alloca i64, align 8
  %var._1153 = alloca i64, align 8
  %var._i1152 = alloca i64, align 8
  %loop.step.649 = alloca i64, align 8
  %loop.idx.649 = alloca i64, align 8
  %var._1117 = alloca ptr, align 8
  %var._1116 = alloca ptr, align 8
  %var._1115 = alloca ptr, align 8
  %var._1029 = alloca ptr, align 8
  %var._1028 = alloca ptr, align 8
  %var._1027 = alloca ptr, align 8
  %var._961 = alloca ptr, align 8
  %var._960 = alloca ptr, align 8
  %var._959 = alloca ptr, align 8
  %var.new_canon = alloca i64, align 8
  %var.delta = alloca i64, align 8
  %var.p_code792 = alloca ptr, align 8
  %var._790 = alloca ptr, align 8
  %var._787 = alloca ptr, align 8
  %var.p_canon = alloca i64, align 8
  %var._723 = alloca ptr, align 8
  %var._720 = alloca i64, align 8
  %var.top_raw = alloca i64, align 8
  %var._651 = alloca ptr, align 8
  %var._648 = alloca i64, align 8
  %var.cur_code = alloca ptr, align 8
  %var.raw = alloca i64, align 8
  %var.c_indent = alloca i64, align 8
  %var.p_code = alloca ptr, align 8
  %var._418 = alloca ptr, align 8
  %var._415 = alloca ptr, align 8
  %var.base_r = alloca i64, align 8
  %var._352 = alloca ptr, align 8
  %var._349 = alloca i64, align 8
  %var.base_c = alloca i64, align 8
  %var._287 = alloca ptr, align 8
  %var._285 = alloca i64, align 8
  %var.lvl = alloca i64, align 8
  %var.body = alloca ptr, align 8
  %var.max_blanks = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %loop.step.644 = alloca i64, align 8
  %loop.idx.644 = alloca i64, align 8
  %"var.cur_canon_indent'" = alloca i64, align 8
  %"var.started'" = alloca i1, align 1
  %"var.blank_run'" = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %"var.top'" = alloca i64, align 8
  %var.body_stack = alloca ptr, align 8
  %var.canon_stack = alloca ptr, align 8
  %var.raw_stack = alloca ptr, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
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
  store ptr %a.new, ptr %var.raw_stack, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  store ptr %a.new3, ptr %var.canon_stack, align 8
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 0
  store i64 0, ptr %a.len.gep13, align 8
  %a.data.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 1
  store ptr %a.buf12, ptr %a.data.gep14, align 8
  %a.cap.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep15, align 8
  store ptr %a.new10, ptr %var.body_stack, align 8
  %a.load = load ptr, ptr %var.raw_stack, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.create17, ptr %var.raw_stack, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.raw_stack, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len23 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap24 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len23, %a.cap24
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data25 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len26 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data25, i64 %a.cur.len26
  store i64 0, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len26, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %a.load27 = load ptr, ptr %var.canon_stack, align 8
  %a.null28 = icmp eq ptr %a.load27, null
  br i1 %a.null28, label %a.create29, label %a.after30

a.create29:                                       ; preds = %a.store
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 24)
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 128)
  %a.len.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 0
  store i64 0, ptr %a.len.gep35, align 8
  %a.data.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 1
  store ptr %a.buf34, ptr %a.data.gep36, align 8
  %a.cap.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 2
  store i64 16, ptr %a.cap.gep37, align 8
  store ptr %a.create32, ptr %var.canon_stack, align 8
  br label %a.after30

a.after30:                                        ; preds = %a.create29, %a.store
  %a.load238 = load ptr, ptr %var.canon_stack, align 8
  br label %a.check39

a.check39:                                        ; preds = %a.after30
  %a.len42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 0
  %a.len43 = load i64, ptr %a.len42, align 8
  %a.cap44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 2
  %a.cap45 = load i64, ptr %a.cap44, align 8
  %a.needs.grow46 = icmp eq i64 %a.len43, %a.cap45
  br i1 %a.needs.grow46, label %a.grow40, label %a.store41

a.grow40:                                         ; preds = %a.check39
  call void @dva_array_grow(ptr %a.load238)
  br label %a.store41

a.store41:                                        ; preds = %a.grow40, %a.check39
  %a.cur.data47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 1
  %a.cur.data48 = load ptr, ptr %a.cur.data47, align 8
  %a.cur.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 0
  %a.cur.len50 = load i64, ptr %a.cur.len49, align 8
  %a.elem.gep51 = getelementptr i64, ptr %a.cur.data48, i64 %a.cur.len50
  store i64 0, ptr %a.elem.gep51, align 8
  %a.next.len52 = add i64 %a.cur.len50, 1
  %b.len.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 0
  store i64 %a.next.len52, ptr %b.len.gep53, align 8
  %a.load54 = load ptr, ptr %var.body_stack, align 8
  %a.null55 = icmp eq ptr %a.load54, null
  br i1 %a.null55, label %a.create56, label %a.after57

a.create56:                                       ; preds = %a.store41
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 24)
  %arena.cur60 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 128)
  %a.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 0
  store i64 0, ptr %a.len.gep62, align 8
  %a.data.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 1
  store ptr %a.buf61, ptr %a.data.gep63, align 8
  %a.cap.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 2
  store i64 16, ptr %a.cap.gep64, align 8
  store ptr %a.create59, ptr %var.body_stack, align 8
  br label %a.after57

a.after57:                                        ; preds = %a.create56, %a.store41
  %a.load265 = load ptr, ptr %var.body_stack, align 8
  br label %a.check66

a.check66:                                        ; preds = %a.after57
  %a.len69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 0
  %a.len70 = load i64, ptr %a.len69, align 8
  %a.cap71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 2
  %a.cap72 = load i64, ptr %a.cap71, align 8
  %a.needs.grow73 = icmp eq i64 %a.len70, %a.cap72
  br i1 %a.needs.grow73, label %a.grow67, label %a.store68

a.grow67:                                         ; preds = %a.check66
  call void @dva_array_grow(ptr %a.load265)
  br label %a.store68

a.store68:                                        ; preds = %a.grow67, %a.check66
  %a.cur.data74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 1
  %a.cur.data75 = load ptr, ptr %a.cur.data74, align 8
  %a.cur.len76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 0
  %a.cur.len77 = load i64, ptr %a.cur.len76, align 8
  %a.elem.gep78 = getelementptr i64, ptr %a.cur.data75, i64 %a.cur.len77
  store i64 ptrtoint (ptr @str.12.struct to i64), ptr %a.elem.gep78, align 8
  %a.next.len79 = add i64 %a.cur.len77, 1
  %b.len.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 0
  store i64 %a.next.len79, ptr %b.len.gep80, align 8
  store i64 1, ptr %"var.top'", align 8
  %arena.cur81 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len83

b.buf.len83:                                      ; preds = %abort.dead, %a.store68
  %arena.cur84 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep82, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  store i64 0, ptr %"var.blank_run'", align 8
  store i1 false, ptr %"var.started'", align 1
  store i64 0, ptr %"var.cur_canon_indent'", align 8
  %var.load = load ptr, ptr %var.lines, align 8
  %a.load85 = load ptr, ptr %var.lines, align 8
  %a.null86 = icmp eq ptr %a.load85, null
  br i1 %a.null86, label %a.create87, label %a.after88

str_overflow_abort:                               ; preds = %a.store68
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len83

a.create87:                                       ; preds = %b.buf.len83
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 24)
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 128)
  %a.len.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 0
  store i64 0, ptr %a.len.gep93, align 8
  %a.data.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 1
  store ptr %a.buf92, ptr %a.data.gep94, align 8
  %a.cap.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 2
  store i64 16, ptr %a.cap.gep95, align 8
  store ptr %a.create90, ptr %var.lines, align 8
  br label %a.after88

a.after88:                                        ; preds = %a.create87, %b.buf.len83
  %a.load296 = load ptr, ptr %var.lines, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load296, i32 0, i32 0
  %arr.cycle.len97 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load296, i32 0, i32 1
  %arr.cycle.data98 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.644, align 8
  store i64 0, ptr %var.idx, align 8
  br label %loop.header.644

loop.header.644:                                  ; preds = %loop.latch.644, %a.after88
  %counter.load = load i64, ptr %loop.idx.644, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len97
  br i1 %loop.cond, label %loop.body.644, label %loop.exit.nat.644

loop.body.644:                                    ; preds = %loop.header.644
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.644, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data98, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ln, align 8
  store i64 %loop.rel.i, ptr %var.idx, align 8
  %var.load99 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load99, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp ne i64 %fld.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.644:                                ; preds = %loop.header.644
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.idx, align 8
  br label %loop.exit.644

loop.latch.644:                                   ; preds = %choice.exit
  %step.val2129 = load i64, ptr %loop.step.644, align 8
  %loop.next2130 = add i64 %counter.load, %step.val2129
  store i64 %loop.next2130, ptr %loop.idx.644, align 8
  br label %loop.header.644

loop.exit.644:                                    ; preds = %loop.exit.nat.644
  %var.load2131 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2131, i32 0, i32 0
  %b.freeze.len2132 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2131, i32 0, i32 1
  %b.freeze.data2133 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then:                                      ; preds = %loop.body.644
  store i1 true, ptr %"var.started'", align 1
  store i64 0, ptr %"var.blank_run'", align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load100 = load ptr, ptr %var.ln, align 8
  %fld.gep101 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load100, i32 0, i32 0
  %fld.load102 = load ptr, ptr %fld.gep101, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load102, i32 0, i32 0
  %app.str.len103 = load i64, ptr %app.str.len, align 8
  %app.str.len104 = and i64 %app.str.len103, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load102, i32 0, i32 1
  %app.str.data105 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len106 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len106, i64 %app.str.len104)
  %sum107 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf108 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf108, label %str_overflow_abort110, label %b.app.new.len109

choice.else:                                      ; preds = %loop.body.644
  %var.load158 = load ptr, ptr %var.ln, align 8
  %fld.gep159 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load158, i32 0, i32 5
  %fld.load160 = load i1, ptr %fld.gep159, align 1
  br i1 %fld.load160, label %choice.then161, label %choice.else162

choice.exit:                                      ; preds = %choice.exit163, %br.done.645
  br label %loop.latch.644

b.app.new.len109:                                 ; preds = %abort.dead111, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap112 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap112, %sum107
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort110:                            ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead111:                                    ; No predecessors!
  br label %b.app.new.len109

b.grow2:                                          ; preds = %b.app.new.len109
  %b.cap2 = mul i64 %b.cap112, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum107
  %b.new.cap = select i1 %b.cap.need, i64 %sum107, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2113 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2114 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum115 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf116 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf116, label %str_overflow_abort118, label %b.new.buf.len2117

b.nogrow2:                                        ; preds = %b.app.new.len109
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2117
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data121 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data121, i64 %b.app.cur.len106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data105, i64 %app.str.len104, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data121, i64 %sum107
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum107, ptr %b.len.gep122, align 8
  %b.load123 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 0
  %b.rn.cur.len124 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len124, i64 1)
  %sum125 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf126 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf126, label %str_overflow_abort128, label %b.rn.new.len127

b.new.buf.len2117:                                ; preds = %abort.dead119, %b.grow2
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 %sum115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2114, i64 %b.cur.len2113, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2113
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort118:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %b.new.buf.len2117

b.rn.new.len127:                                  ; preds = %abort.dead129, %b.grow_done
  %b.cap130 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 2
  %b.cap131 = load i64, ptr %b.cap130, align 8
  %b.need.grow132 = icmp slt i64 %b.cap131, %sum125
  br i1 %b.need.grow132, label %b.grow2133, label %b.nogrow2134

str_overflow_abort128:                            ; preds = %b.grow_done
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead129:                                    ; No predecessors!
  br label %b.rn.new.len127

b.grow2133:                                       ; preds = %b.rn.new.len127
  %b.cap2136 = mul i64 %b.cap131, 2
  %b.cap.small137 = icmp slt i64 %b.cap2136, 16
  %b.cap.grow138 = select i1 %b.cap.small137, i64 16, i64 %b.cap2136
  %b.cap.need139 = icmp slt i64 %b.cap.grow138, %sum125
  %b.new.cap140 = select i1 %b.cap.need139, i64 %sum125, i64 %b.cap.grow138
  %b.cur.len2141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 0
  %b.cur.len2142 = load i64, ptr %b.cur.len2141, align 8
  %b.cur.data2143 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 1
  %b.cur.data2144 = load ptr, ptr %b.cur.data2143, align 8
  %b.new.buf.len2145 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap140, i64 1)
  %sum146 = extractvalue { i64, i1 } %b.new.buf.len2145, 0
  %ovf147 = extractvalue { i64, i1 } %b.new.buf.len2145, 1
  br i1 %ovf147, label %str_overflow_abort149, label %b.new.buf.len2148

b.nogrow2134:                                     ; preds = %b.rn.new.len127
  br label %b.grow_done135

b.grow_done135:                                   ; preds = %b.nogrow2134, %b.new.buf.len2148
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 1
  %b.rn.data156 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data156, i64 %b.rn.cur.len124
  br i1 true, label %br.b1.645, label %br.c2.645

b.new.buf.len2148:                                ; preds = %abort.dead150, %b.grow2133
  %arena.cur151 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 %sum146)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2152, ptr align 1 %b.cur.data2144, i64 %b.cur.len2142, i1 false)
  %b.grow2.nul153 = getelementptr i8, ptr %b.new.buf2152, i64 %b.cur.len2142
  store i8 0, ptr %b.grow2.nul153, align 1
  %b.new.data2.gep154 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 1
  store ptr %b.new.buf2152, ptr %b.new.data2.gep154, align 8
  %b.new.cap2.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 2
  store i64 %b.new.cap140, ptr %b.new.cap2.gep155, align 8
  br label %b.grow_done135

str_overflow_abort149:                            ; preds = %b.grow2133
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead150:                                    ; No predecessors!
  br label %b.new.buf.len2148

br.b1.645:                                        ; preds = %b.grow_done135
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.645

br.c2.645:                                        ; preds = %b.grow_done135
  br i1 true, label %br.b2.645, label %br.c3.645

br.b2.645:                                        ; preds = %br.c2.645
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.645

br.c3.645:                                        ; preds = %br.c2.645
  br i1 true, label %br.b3.645, label %br.b4.645

br.b3.645:                                        ; preds = %br.c3.645
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.645

br.b4.645:                                        ; preds = %br.c3.645
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.645

br.done.645:                                      ; preds = %br.b4.645, %br.b3.645, %br.b2.645, %br.b1.645
  %br.nul = getelementptr i8, ptr %b.rn.data156, i64 %sum125
  store i8 0, ptr %br.nul, align 1
  %b.len.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 0
  store i64 %sum125, ptr %b.len.gep157, align 8
  br label %choice.exit

choice.then161:                                   ; preds = %choice.else
  %var.load164 = load i1, ptr %"var.started'", align 1
  br i1 %var.load164, label %choice.then165, label %choice.exit166

choice.else162:                                   ; preds = %choice.else
  store i1 true, ptr %"var.started'", align 1
  store i64 0, ptr %"var.blank_run'", align 8
  %var.load224 = load ptr, ptr %var.ln, align 8
  %fld.gep225 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load224, i32 0, i32 0
  %fld.load226 = load ptr, ptr %fld.gep225, align 8
  %call.res = call { i64, ptr } @"formatter::strip_leading_ws"(ptr %fld.load226)
  %arena.cur227 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.body, align 8
  %var.load228 = load ptr, ptr %var.ln, align 8
  %fld.gep229 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load228, i32 0, i32 6
  %fld.load230 = load i1, ptr %fld.gep229, align 1
  br i1 %fld.load230, label %choice.then231, label %choice.else232

choice.exit163:                                   ; preds = %choice.exit233, %choice.exit166
  br label %choice.exit

choice.then165:                                   ; preds = %choice.then161
  %var.load167 = load i64, ptr %"var.blank_run'", align 8
  %addtmp = add i64 %var.load167, 1
  store i64 %addtmp, ptr %"var.blank_run'", align 8
  %var.load168 = load i64, ptr %"var.cur_canon_indent'", align 8
  %cmptmp169 = icmp eq i64 %var.load168, 0
  br i1 %cmptmp169, label %choice.then170, label %choice.else171

choice.exit166:                                   ; preds = %choice.exit177, %choice.then161
  br label %choice.exit163

choice.then170:                                   ; preds = %choice.then165
  br label %choice.exit172

choice.else171:                                   ; preds = %choice.then165
  br label %choice.exit172

choice.exit172:                                   ; preds = %choice.else171, %choice.then170
  %choice.res = phi i64 [ 2, %choice.then170 ], [ 1, %choice.else171 ]
  store i64 %choice.res, ptr %var.max_blanks, align 8
  %var.load173 = load i64, ptr %"var.blank_run'", align 8
  %var.load174 = load i64, ptr %var.max_blanks, align 8
  %cmptmp175 = icmp sle i64 %var.load173, %var.load174
  br i1 %cmptmp175, label %choice.then176, label %choice.exit177

choice.then176:                                   ; preds = %choice.exit172
  %b.load178 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  %b.rn.cur.len180 = load i64, ptr %b.rn.cur.len179, align 8
  %b.rn.new.len181 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len180, i64 1)
  %sum182 = extractvalue { i64, i1 } %b.rn.new.len181, 0
  %ovf183 = extractvalue { i64, i1 } %b.rn.new.len181, 1
  br i1 %ovf183, label %str_overflow_abort185, label %b.rn.new.len184

choice.exit177:                                   ; preds = %br.done.646, %choice.exit172
  br label %choice.exit166

b.rn.new.len184:                                  ; preds = %abort.dead186, %choice.then176
  %b.cap187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 2
  %b.cap188 = load i64, ptr %b.cap187, align 8
  %b.need.grow189 = icmp slt i64 %b.cap188, %sum182
  br i1 %b.need.grow189, label %b.grow2190, label %b.nogrow2191

str_overflow_abort185:                            ; preds = %choice.then176
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead186:                                    ; No predecessors!
  br label %b.rn.new.len184

b.grow2190:                                       ; preds = %b.rn.new.len184
  %b.cap2193 = mul i64 %b.cap188, 2
  %b.cap.small194 = icmp slt i64 %b.cap2193, 16
  %b.cap.grow195 = select i1 %b.cap.small194, i64 16, i64 %b.cap2193
  %b.cap.need196 = icmp slt i64 %b.cap.grow195, %sum182
  %b.new.cap197 = select i1 %b.cap.need196, i64 %sum182, i64 %b.cap.grow195
  %b.cur.len2198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  %b.cur.len2199 = load i64, ptr %b.cur.len2198, align 8
  %b.cur.data2200 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 1
  %b.cur.data2201 = load ptr, ptr %b.cur.data2200, align 8
  %b.new.buf.len2202 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap197, i64 1)
  %sum203 = extractvalue { i64, i1 } %b.new.buf.len2202, 0
  %ovf204 = extractvalue { i64, i1 } %b.new.buf.len2202, 1
  br i1 %ovf204, label %str_overflow_abort206, label %b.new.buf.len2205

b.nogrow2191:                                     ; preds = %b.rn.new.len184
  br label %b.grow_done192

b.grow_done192:                                   ; preds = %b.nogrow2191, %b.new.buf.len2205
  %b.rn.data213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 1
  %b.rn.data214 = load ptr, ptr %b.rn.data213, align 8
  %b.rn.dst215 = getelementptr i8, ptr %b.rn.data214, i64 %b.rn.cur.len180
  br i1 true, label %br.b1.646, label %br.c2.646

b.new.buf.len2205:                                ; preds = %abort.dead207, %b.grow2190
  %arena.cur208 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 %sum203)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2209, ptr align 1 %b.cur.data2201, i64 %b.cur.len2199, i1 false)
  %b.grow2.nul210 = getelementptr i8, ptr %b.new.buf2209, i64 %b.cur.len2199
  store i8 0, ptr %b.grow2.nul210, align 1
  %b.new.data2.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 1
  store ptr %b.new.buf2209, ptr %b.new.data2.gep211, align 8
  %b.new.cap2.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 2
  store i64 %b.new.cap197, ptr %b.new.cap2.gep212, align 8
  br label %b.grow_done192

str_overflow_abort206:                            ; preds = %b.grow2190
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead207:                                    ; No predecessors!
  br label %b.new.buf.len2205

br.b1.646:                                        ; preds = %b.grow_done192
  store i8 10, ptr %b.rn.dst215, align 1
  br label %br.done.646

br.c2.646:                                        ; preds = %b.grow_done192
  br i1 true, label %br.b2.646, label %br.c3.646

br.b2.646:                                        ; preds = %br.c2.646
  store i8 -64, ptr %b.rn.dst215, align 1
  %br.dst1216 = getelementptr i8, ptr %b.rn.dst215, i64 1
  store i8 -118, ptr %br.dst1216, align 1
  br label %br.done.646

br.c3.646:                                        ; preds = %br.c2.646
  br i1 true, label %br.b3.646, label %br.b4.646

br.b3.646:                                        ; preds = %br.c3.646
  store i8 -32, ptr %b.rn.dst215, align 1
  %br.dst1.3217 = getelementptr i8, ptr %b.rn.dst215, i64 1
  store i8 -128, ptr %br.dst1.3217, align 1
  %br.dst2.3218 = getelementptr i8, ptr %b.rn.dst215, i64 2
  store i8 -118, ptr %br.dst2.3218, align 1
  br label %br.done.646

br.b4.646:                                        ; preds = %br.c3.646
  store i8 -16, ptr %b.rn.dst215, align 1
  %br.dst1.4219 = getelementptr i8, ptr %b.rn.dst215, i64 1
  store i8 -128, ptr %br.dst1.4219, align 1
  %br.dst2.4220 = getelementptr i8, ptr %b.rn.dst215, i64 2
  store i8 -128, ptr %br.dst2.4220, align 1
  %br.dst3.4221 = getelementptr i8, ptr %b.rn.dst215, i64 3
  store i8 -118, ptr %br.dst3.4221, align 1
  br label %br.done.646

br.done.646:                                      ; preds = %br.b4.646, %br.b3.646, %br.b2.646, %br.b1.646
  %br.nul222 = getelementptr i8, ptr %b.rn.data214, i64 %sum182
  store i8 0, ptr %br.nul222, align 1
  %b.len.gep223 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  store i64 %sum182, ptr %b.len.gep223, align 8
  br label %choice.exit177

choice.then231:                                   ; preds = %choice.else162
  %var.load234 = load ptr, ptr %var.raw_stack, align 8
  %a.load235 = load ptr, ptr %var.raw_stack, align 8
  %a.null236 = icmp eq ptr %a.load235, null
  br i1 %a.null236, label %a.create237, label %a.after238

choice.else232:                                   ; preds = %choice.else162
  %var.load581 = load ptr, ptr %var.ln, align 8
  %fld.gep582 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load581, i32 0, i32 3
  %fld.load583 = load i64, ptr %fld.gep582, align 8
  store i64 %fld.load583, ptr %var.raw, align 8
  %var.load584 = load ptr, ptr %var.body, align 8
  %call.res585 = call { i64, ptr } @"formatter::strip_code_comment"(ptr %var.load584)
  %arena.cur586 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc587 = call ptr @dva_arena_alloc(ptr %arena.cur586, i64 16)
  store { i64, ptr } %call.res585, ptr %ret.ub.alloc587, align 8
  store ptr %ret.ub.alloc587, ptr %var.cur_code, align 8
  %var.load588 = load ptr, ptr %var.raw_stack, align 8
  %a.load589 = load ptr, ptr %var.raw_stack, align 8
  %a.null590 = icmp eq ptr %a.load589, null
  br i1 %a.null590, label %a.create591, label %a.after592

choice.exit233:                                   ; preds = %br.done.651, %br.done.648
  br label %choice.exit163

a.create237:                                      ; preds = %choice.then231
  %arena.cur239 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 24)
  %arena.cur241 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf242 = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 128)
  %a.len.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create240, i32 0, i32 0
  store i64 0, ptr %a.len.gep243, align 8
  %a.data.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create240, i32 0, i32 1
  store ptr %a.buf242, ptr %a.data.gep244, align 8
  %a.cap.gep245 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create240, i32 0, i32 2
  store i64 16, ptr %a.cap.gep245, align 8
  store ptr %a.create240, ptr %var.raw_stack, align 8
  br label %a.after238

a.after238:                                       ; preds = %a.create237, %choice.then231
  %a.load2246 = load ptr, ptr %var.raw_stack, align 8
  %var.load247 = load i64, ptr %"var.top'", align 8
  %var.load248 = load ptr, ptr %var.ln, align 8
  %fld.gep249 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load248, i32 0, i32 3
  %fld.load250 = load i64, ptr %fld.gep249, align 8
  %call.res251 = call i64 @"formatter::find_stack_level"(ptr %a.load2246, i64 %var.load247, i64 %fld.load250)
  store i64 %call.res251, ptr %var.lvl, align 8
  %var.load252 = load ptr, ptr %var.canon_stack, align 8
  %a.load253 = load ptr, ptr %var.canon_stack, align 8
  %a.null254 = icmp eq ptr %a.load253, null
  br i1 %a.null254, label %a.create255, label %a.after256

a.create255:                                      ; preds = %a.after238
  %arena.cur257 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 24)
  %arena.cur259 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 128)
  %a.len.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create258, i32 0, i32 0
  store i64 0, ptr %a.len.gep261, align 8
  %a.data.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create258, i32 0, i32 1
  store ptr %a.buf260, ptr %a.data.gep262, align 8
  %a.cap.gep263 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create258, i32 0, i32 2
  store i64 16, ptr %a.cap.gep263, align 8
  store ptr %a.create258, ptr %var.canon_stack, align 8
  br label %a.after256

a.after256:                                       ; preds = %a.create255, %a.after238
  %a.load2264 = load ptr, ptr %var.canon_stack, align 8
  %var.load265 = load i64, ptr %var.lvl, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2264, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after256
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2264, i32 0, i32 0
  %a.rd.len266 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load265, 0
  %a.rd.lt = icmp slt i64 %var.load265, %a.rd.len266
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2264, i32 0, i32 1
  %a.rd.data267 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data267, i64 %var.load265
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after256
  %arena.cur268 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 570, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 51, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur269 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 56)
  %err.code.gep271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 0
  store i64 4011, ptr %err.code.gep271, align 8
  %err.msg.gep272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep272, align 8
  %err.file.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep273, align 8
  %err.line.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 3
  store i64 570, ptr %err.line.gep274, align 8
  %err.col.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 4
  store i64 51, ptr %err.col.gep275, align 8
  %err.ctx.gep276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 5
  %err.ctx0.gep277 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep276, i32 0, i32 0
  store i64 %var.load265, ptr %err.ctx0.gep277, align 8
  %err.ctx1.gep278 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep276, i32 0, i32 1
  store i64 %a.rd.len266, ptr %err.ctx1.gep278, align 8
  %err.p2i279 = ptrtoint ptr %err.alloc270 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i279, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag280 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag280, label %choice.then281, label %choice.else282

choice.then281:                                   ; preds = %a.rd.done
  %ram.pay284 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay284, ptr %var._285, align 8
  br label %choice.exit283

choice.else282:                                   ; preds = %a.rd.done
  %ram.pay286 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay286 to ptr
  store ptr %pay.ptr, ptr %var._287, align 8
  br label %choice.exit283

choice.exit283:                                   ; preds = %choice.else282, %choice.then281
  %choice.res288 = phi i64 [ %ram.pay284, %choice.then281 ], [ 0, %choice.else282 ]
  store i64 %choice.res288, ptr %var.base_c, align 8
  %var.load289 = load ptr, ptr %var.raw_stack, align 8
  %a.load290 = load ptr, ptr %var.raw_stack, align 8
  %a.null291 = icmp eq ptr %a.load290, null
  br i1 %a.null291, label %a.create292, label %a.after293

a.create292:                                      ; preds = %choice.exit283
  %arena.cur294 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create295 = call ptr @dva_arena_alloc(ptr %arena.cur294, i64 24)
  %arena.cur296 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 128)
  %a.len.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create295, i32 0, i32 0
  store i64 0, ptr %a.len.gep298, align 8
  %a.data.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create295, i32 0, i32 1
  store ptr %a.buf297, ptr %a.data.gep299, align 8
  %a.cap.gep300 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create295, i32 0, i32 2
  store i64 16, ptr %a.cap.gep300, align 8
  store ptr %a.create295, ptr %var.raw_stack, align 8
  br label %a.after293

a.after293:                                       ; preds = %a.create292, %choice.exit283
  %a.load2301 = load ptr, ptr %var.raw_stack, align 8
  %var.load302 = load i64, ptr %var.lvl, align 8
  %a.rd.nonnull303 = icmp ne ptr %a.load2301, null
  br i1 %a.rd.nonnull303, label %a.rd.check304, label %a.rd.err.null306

a.rd.check304:                                    ; preds = %a.after293
  %a.rd.len309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2301, i32 0, i32 0
  %a.rd.len310 = load i64, ptr %a.rd.len309, align 8
  %a.rd.ge0311 = icmp sge i64 %var.load302, 0
  %a.rd.lt312 = icmp slt i64 %var.load302, %a.rd.len310
  %a.rd.bounds313 = and i1 %a.rd.ge0311, %a.rd.lt312
  br i1 %a.rd.bounds313, label %a.rd.ok305, label %a.rd.err.oob307

a.rd.ok305:                                       ; preds = %a.rd.check304
  %a.rd.data314 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2301, i32 0, i32 1
  %a.rd.data315 = load ptr, ptr %a.rd.data314, align 8
  %a.rd.elem.gep316 = getelementptr i64, ptr %a.rd.data315, i64 %var.load302
  %a.rd.elem317 = load i64, ptr %a.rd.elem.gep316, align 8
  br label %a.rd.done308

a.rd.err.null306:                                 ; preds = %a.after293
  %arena.cur318 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc319 = call ptr @dva_arena_alloc(ptr %arena.cur318, i64 56)
  %err.code.gep320 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc319, i32 0, i32 0
  store i64 4011, ptr %err.code.gep320, align 8
  %err.msg.gep321 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc319, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep321, align 8
  %err.file.gep322 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc319, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep322, align 8
  %err.line.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc319, i32 0, i32 3
  store i64 571, ptr %err.line.gep323, align 8
  %err.col.gep324 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc319, i32 0, i32 4
  store i64 49, ptr %err.col.gep324, align 8
  %err.ctx.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc319, i32 0, i32 5
  %err.ctx0.gep326 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep325, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep326, align 8
  %err.ctx1.gep327 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep325, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep327, align 8
  %err.p2i328 = ptrtoint ptr %err.alloc319 to i64
  br label %a.rd.done308

a.rd.err.oob307:                                  ; preds = %a.rd.check304
  %arena.cur329 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc330 = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 56)
  %err.code.gep331 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc330, i32 0, i32 0
  store i64 4011, ptr %err.code.gep331, align 8
  %err.msg.gep332 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc330, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep332, align 8
  %err.file.gep333 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc330, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep333, align 8
  %err.line.gep334 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc330, i32 0, i32 3
  store i64 571, ptr %err.line.gep334, align 8
  %err.col.gep335 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc330, i32 0, i32 4
  store i64 49, ptr %err.col.gep335, align 8
  %err.ctx.gep336 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc330, i32 0, i32 5
  %err.ctx0.gep337 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep336, i32 0, i32 0
  store i64 %var.load302, ptr %err.ctx0.gep337, align 8
  %err.ctx1.gep338 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep336, i32 0, i32 1
  store i64 %a.rd.len310, ptr %err.ctx1.gep338, align 8
  %err.p2i339 = ptrtoint ptr %err.alloc330 to i64
  br label %a.rd.done308

a.rd.done308:                                     ; preds = %a.rd.err.oob307, %a.rd.err.null306, %a.rd.ok305
  %a.rd.tag340 = phi i1 [ true, %a.rd.ok305 ], [ false, %a.rd.err.null306 ], [ false, %a.rd.err.oob307 ]
  %a.rd.pay341 = phi i64 [ %a.rd.elem317, %a.rd.ok305 ], [ %err.p2i328, %a.rd.err.null306 ], [ %err.p2i339, %a.rd.err.oob307 ]
  %ram.tag342 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag340, 0
  %ram.pay343 = insertvalue { i1, i64 } %ram.tag342, i64 %a.rd.pay341, 1
  %ram.tag344 = extractvalue { i1, i64 } %ram.pay343, 0
  br i1 %ram.tag344, label %choice.then345, label %choice.else346

choice.then345:                                   ; preds = %a.rd.done308
  %ram.pay348 = extractvalue { i1, i64 } %ram.pay343, 1
  store i64 %ram.pay348, ptr %var._349, align 8
  br label %choice.exit347

choice.else346:                                   ; preds = %a.rd.done308
  %ram.pay350 = extractvalue { i1, i64 } %ram.pay343, 1
  %pay.ptr351 = inttoptr i64 %ram.pay350 to ptr
  store ptr %pay.ptr351, ptr %var._352, align 8
  br label %choice.exit347

choice.exit347:                                   ; preds = %choice.else346, %choice.then345
  %choice.res353 = phi i64 [ %ram.pay348, %choice.then345 ], [ 0, %choice.else346 ]
  store i64 %choice.res353, ptr %var.base_r, align 8
  %var.load354 = load ptr, ptr %var.body_stack, align 8
  %a.load355 = load ptr, ptr %var.body_stack, align 8
  %a.null356 = icmp eq ptr %a.load355, null
  br i1 %a.null356, label %a.create357, label %a.after358

a.create357:                                      ; preds = %choice.exit347
  %arena.cur359 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create360 = call ptr @dva_arena_alloc(ptr %arena.cur359, i64 24)
  %arena.cur361 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf362 = call ptr @dva_arena_alloc(ptr %arena.cur361, i64 128)
  %a.len.gep363 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create360, i32 0, i32 0
  store i64 0, ptr %a.len.gep363, align 8
  %a.data.gep364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create360, i32 0, i32 1
  store ptr %a.buf362, ptr %a.data.gep364, align 8
  %a.cap.gep365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create360, i32 0, i32 2
  store i64 16, ptr %a.cap.gep365, align 8
  store ptr %a.create360, ptr %var.body_stack, align 8
  br label %a.after358

a.after358:                                       ; preds = %a.create357, %choice.exit347
  %a.load2366 = load ptr, ptr %var.body_stack, align 8
  %var.load367 = load i64, ptr %var.lvl, align 8
  %a.rd.nonnull368 = icmp ne ptr %a.load2366, null
  br i1 %a.rd.nonnull368, label %a.rd.check369, label %a.rd.err.null371

a.rd.check369:                                    ; preds = %a.after358
  %a.rd.len374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2366, i32 0, i32 0
  %a.rd.len375 = load i64, ptr %a.rd.len374, align 8
  %a.rd.ge0376 = icmp sge i64 %var.load367, 0
  %a.rd.lt377 = icmp slt i64 %var.load367, %a.rd.len375
  %a.rd.bounds378 = and i1 %a.rd.ge0376, %a.rd.lt377
  br i1 %a.rd.bounds378, label %a.rd.ok370, label %a.rd.err.oob372

a.rd.ok370:                                       ; preds = %a.rd.check369
  %a.rd.data379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2366, i32 0, i32 1
  %a.rd.data380 = load ptr, ptr %a.rd.data379, align 8
  %a.rd.elem.gep381 = getelementptr i64, ptr %a.rd.data380, i64 %var.load367
  %a.rd.elem382 = load i64, ptr %a.rd.elem.gep381, align 8
  br label %a.rd.done373

a.rd.err.null371:                                 ; preds = %a.after358
  %arena.cur383 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc384 = call ptr @dva_arena_alloc(ptr %arena.cur383, i64 56)
  %err.code.gep385 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 0
  store i64 4011, ptr %err.code.gep385, align 8
  %err.msg.gep386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep386, align 8
  %err.file.gep387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep387, align 8
  %err.line.gep388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 3
  store i64 572, ptr %err.line.gep388, align 8
  %err.col.gep389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 4
  store i64 50, ptr %err.col.gep389, align 8
  %err.ctx.gep390 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 5
  %err.ctx0.gep391 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep390, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep391, align 8
  %err.ctx1.gep392 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep390, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep392, align 8
  %err.p2i393 = ptrtoint ptr %err.alloc384 to i64
  br label %a.rd.done373

a.rd.err.oob372:                                  ; preds = %a.rd.check369
  %arena.cur394 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc395 = call ptr @dva_arena_alloc(ptr %arena.cur394, i64 56)
  %err.code.gep396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 0
  store i64 4011, ptr %err.code.gep396, align 8
  %err.msg.gep397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep397, align 8
  %err.file.gep398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep398, align 8
  %err.line.gep399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 3
  store i64 572, ptr %err.line.gep399, align 8
  %err.col.gep400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 4
  store i64 50, ptr %err.col.gep400, align 8
  %err.ctx.gep401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 5
  %err.ctx0.gep402 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep401, i32 0, i32 0
  store i64 %var.load367, ptr %err.ctx0.gep402, align 8
  %err.ctx1.gep403 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep401, i32 0, i32 1
  store i64 %a.rd.len375, ptr %err.ctx1.gep403, align 8
  %err.p2i404 = ptrtoint ptr %err.alloc395 to i64
  br label %a.rd.done373

a.rd.done373:                                     ; preds = %a.rd.err.oob372, %a.rd.err.null371, %a.rd.ok370
  %a.rd.tag405 = phi i1 [ true, %a.rd.ok370 ], [ false, %a.rd.err.null371 ], [ false, %a.rd.err.oob372 ]
  %a.rd.pay406 = phi i64 [ %a.rd.elem382, %a.rd.ok370 ], [ %err.p2i393, %a.rd.err.null371 ], [ %err.p2i404, %a.rd.err.oob372 ]
  %ram.tag407 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag405, 0
  %ram.pay408 = insertvalue { i1, i64 } %ram.tag407, i64 %a.rd.pay406, 1
  %ram.tag409 = extractvalue { i1, i64 } %ram.pay408, 0
  br i1 %ram.tag409, label %choice.then410, label %choice.else411

choice.then410:                                   ; preds = %a.rd.done373
  %ram.pay413 = extractvalue { i1, i64 } %ram.pay408, 1
  %pay.ptr414 = inttoptr i64 %ram.pay413 to ptr
  store ptr %pay.ptr414, ptr %var._415, align 8
  br label %choice.exit412

choice.else411:                                   ; preds = %a.rd.done373
  %ram.pay416 = extractvalue { i1, i64 } %ram.pay408, 1
  %pay.ptr417 = inttoptr i64 %ram.pay416 to ptr
  store ptr %pay.ptr417, ptr %var._418, align 8
  br label %choice.exit412

choice.exit412:                                   ; preds = %choice.else411, %choice.then410
  %choice.res419 = phi ptr [ %pay.ptr414, %choice.then410 ], [ @str.12.struct, %choice.else411 ]
  store ptr %choice.res419, ptr %var.p_code, align 8
  %var.load420 = load ptr, ptr %var.ln, align 8
  %fld.gep421 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load420, i32 0, i32 3
  %fld.load422 = load i64, ptr %fld.gep421, align 8
  %var.load423 = load i64, ptr %var.base_r, align 8
  %cmptmp424 = icmp sgt i64 %fld.load422, %var.load423
  br i1 %cmptmp424, label %choice.then425, label %choice.else426

choice.then425:                                   ; preds = %choice.exit412
  %var.load428 = load i64, ptr %var.base_c, align 8
  %var.load429 = load ptr, ptr %var.p_code, align 8
  %call.res430 = call i1 @"formatter::is_inline_pipe_arm"(ptr %var.load429)
  br i1 %call.res430, label %and.647.then, label %and.647.else

choice.else426:                                   ; preds = %choice.exit412
  %var.load438 = load i64, ptr %var.base_c, align 8
  br label %choice.exit427

choice.exit427:                                   ; preds = %choice.else426, %choice.exit435
  %choice.res439 = phi i64 [ %addtmp437, %choice.exit435 ], [ %var.load438, %choice.else426 ]
  store i64 %choice.res439, ptr %var.c_indent, align 8
  %b.load440 = load ptr, ptr %var.out, align 8
  %var.load441 = load i64, ptr %var.c_indent, align 8
  %call.res442 = call { i64, ptr } @"formatter::make_spaces"(i64 %var.load441)
  %arena.cur443 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc444 = call ptr @dva_arena_alloc(ptr %arena.cur443, i64 16)
  store { i64, ptr } %call.res442, ptr %ret.ub.alloc444, align 8
  %app.str.len445 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc444, i32 0, i32 0
  %app.str.len446 = load i64, ptr %app.str.len445, align 8
  %app.str.len447 = and i64 %app.str.len446, 281474976710655
  %app.str.data448 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc444, i32 0, i32 1
  %app.str.data449 = load ptr, ptr %app.str.data448, align 8
  %b.app.cur.len450 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load440, i32 0, i32 0
  %b.app.cur.len451 = load i64, ptr %b.app.cur.len450, align 8
  %b.app.new.len452 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len451, i64 %app.str.len447)
  %sum453 = extractvalue { i64, i1 } %b.app.new.len452, 0
  %ovf454 = extractvalue { i64, i1 } %b.app.new.len452, 1
  br i1 %ovf454, label %str_overflow_abort456, label %b.app.new.len455

and.647.then:                                     ; preds = %choice.then425
  %var.load431 = load ptr, ptr %var.p_code, align 8
  %call.res432 = call i1 @"formatter::ends_with_block_opener"(ptr %var.load431)
  %nottmp = xor i1 %call.res432, true
  br label %and.647.exit

and.647.else:                                     ; preds = %choice.then425
  br label %and.647.exit

and.647.exit:                                     ; preds = %and.647.else, %and.647.then
  %and.647.phi = phi i1 [ %nottmp, %and.647.then ], [ %call.res430, %and.647.else ]
  br i1 %and.647.phi, label %choice.then433, label %choice.else434

choice.then433:                                   ; preds = %and.647.exit
  br label %choice.exit435

choice.else434:                                   ; preds = %and.647.exit
  br label %choice.exit435

choice.exit435:                                   ; preds = %choice.else434, %choice.then433
  %choice.res436 = phi i64 [ 2, %choice.then433 ], [ 3, %choice.else434 ]
  %addtmp437 = add i64 %var.load428, %choice.res436
  br label %choice.exit427

b.app.new.len455:                                 ; preds = %abort.dead457, %choice.exit427
  %b.cap458 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load440, i32 0, i32 2
  %b.cap459 = load i64, ptr %b.cap458, align 8
  %b.need.grow460 = icmp slt i64 %b.cap459, %sum453
  br i1 %b.need.grow460, label %b.grow2461, label %b.nogrow2462

str_overflow_abort456:                            ; preds = %choice.exit427
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead457:                                    ; No predecessors!
  br label %b.app.new.len455

b.grow2461:                                       ; preds = %b.app.new.len455
  %b.cap2464 = mul i64 %b.cap459, 2
  %b.cap.small465 = icmp slt i64 %b.cap2464, 16
  %b.cap.grow466 = select i1 %b.cap.small465, i64 16, i64 %b.cap2464
  %b.cap.need467 = icmp slt i64 %b.cap.grow466, %sum453
  %b.new.cap468 = select i1 %b.cap.need467, i64 %sum453, i64 %b.cap.grow466
  %b.cur.len2469 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load440, i32 0, i32 0
  %b.cur.len2470 = load i64, ptr %b.cur.len2469, align 8
  %b.cur.data2471 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load440, i32 0, i32 1
  %b.cur.data2472 = load ptr, ptr %b.cur.data2471, align 8
  %b.new.buf.len2473 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap468, i64 1)
  %sum474 = extractvalue { i64, i1 } %b.new.buf.len2473, 0
  %ovf475 = extractvalue { i64, i1 } %b.new.buf.len2473, 1
  br i1 %ovf475, label %str_overflow_abort477, label %b.new.buf.len2476

b.nogrow2462:                                     ; preds = %b.app.new.len455
  br label %b.grow_done463

b.grow_done463:                                   ; preds = %b.nogrow2462, %b.new.buf.len2476
  %b.app.data484 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load440, i32 0, i32 1
  %b.app.data485 = load ptr, ptr %b.app.data484, align 8
  %b.app.dst486 = getelementptr i8, ptr %b.app.data485, i64 %b.app.cur.len451
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst486, ptr align 1 %app.str.data449, i64 %app.str.len447, i1 false)
  %b.app.nul487 = getelementptr i8, ptr %b.app.data485, i64 %sum453
  store i8 0, ptr %b.app.nul487, align 1
  %b.len.gep488 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load440, i32 0, i32 0
  store i64 %sum453, ptr %b.len.gep488, align 8
  %b.load489 = load ptr, ptr %var.out, align 8
  %var.load490 = load ptr, ptr %var.body, align 8
  %app.str.len491 = getelementptr inbounds { i64, ptr }, ptr %var.load490, i32 0, i32 0
  %app.str.len492 = load i64, ptr %app.str.len491, align 8
  %app.str.len493 = and i64 %app.str.len492, 281474976710655
  %app.str.data494 = getelementptr inbounds { i64, ptr }, ptr %var.load490, i32 0, i32 1
  %app.str.data495 = load ptr, ptr %app.str.data494, align 8
  %b.app.cur.len496 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load489, i32 0, i32 0
  %b.app.cur.len497 = load i64, ptr %b.app.cur.len496, align 8
  %b.app.new.len498 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len497, i64 %app.str.len493)
  %sum499 = extractvalue { i64, i1 } %b.app.new.len498, 0
  %ovf500 = extractvalue { i64, i1 } %b.app.new.len498, 1
  br i1 %ovf500, label %str_overflow_abort502, label %b.app.new.len501

b.new.buf.len2476:                                ; preds = %abort.dead478, %b.grow2461
  %arena.cur479 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2480 = call ptr @dva_arena_alloc(ptr %arena.cur479, i64 %sum474)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2480, ptr align 1 %b.cur.data2472, i64 %b.cur.len2470, i1 false)
  %b.grow2.nul481 = getelementptr i8, ptr %b.new.buf2480, i64 %b.cur.len2470
  store i8 0, ptr %b.grow2.nul481, align 1
  %b.new.data2.gep482 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load440, i32 0, i32 1
  store ptr %b.new.buf2480, ptr %b.new.data2.gep482, align 8
  %b.new.cap2.gep483 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load440, i32 0, i32 2
  store i64 %b.new.cap468, ptr %b.new.cap2.gep483, align 8
  br label %b.grow_done463

str_overflow_abort477:                            ; preds = %b.grow2461
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead478:                                    ; No predecessors!
  br label %b.new.buf.len2476

b.app.new.len501:                                 ; preds = %abort.dead503, %b.grow_done463
  %b.cap504 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load489, i32 0, i32 2
  %b.cap505 = load i64, ptr %b.cap504, align 8
  %b.need.grow506 = icmp slt i64 %b.cap505, %sum499
  br i1 %b.need.grow506, label %b.grow2507, label %b.nogrow2508

str_overflow_abort502:                            ; preds = %b.grow_done463
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead503:                                    ; No predecessors!
  br label %b.app.new.len501

b.grow2507:                                       ; preds = %b.app.new.len501
  %b.cap2510 = mul i64 %b.cap505, 2
  %b.cap.small511 = icmp slt i64 %b.cap2510, 16
  %b.cap.grow512 = select i1 %b.cap.small511, i64 16, i64 %b.cap2510
  %b.cap.need513 = icmp slt i64 %b.cap.grow512, %sum499
  %b.new.cap514 = select i1 %b.cap.need513, i64 %sum499, i64 %b.cap.grow512
  %b.cur.len2515 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load489, i32 0, i32 0
  %b.cur.len2516 = load i64, ptr %b.cur.len2515, align 8
  %b.cur.data2517 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load489, i32 0, i32 1
  %b.cur.data2518 = load ptr, ptr %b.cur.data2517, align 8
  %b.new.buf.len2519 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap514, i64 1)
  %sum520 = extractvalue { i64, i1 } %b.new.buf.len2519, 0
  %ovf521 = extractvalue { i64, i1 } %b.new.buf.len2519, 1
  br i1 %ovf521, label %str_overflow_abort523, label %b.new.buf.len2522

b.nogrow2508:                                     ; preds = %b.app.new.len501
  br label %b.grow_done509

b.grow_done509:                                   ; preds = %b.nogrow2508, %b.new.buf.len2522
  %b.app.data530 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load489, i32 0, i32 1
  %b.app.data531 = load ptr, ptr %b.app.data530, align 8
  %b.app.dst532 = getelementptr i8, ptr %b.app.data531, i64 %b.app.cur.len497
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst532, ptr align 1 %app.str.data495, i64 %app.str.len493, i1 false)
  %b.app.nul533 = getelementptr i8, ptr %b.app.data531, i64 %sum499
  store i8 0, ptr %b.app.nul533, align 1
  %b.len.gep534 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load489, i32 0, i32 0
  store i64 %sum499, ptr %b.len.gep534, align 8
  %b.load535 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len536 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load535, i32 0, i32 0
  %b.rn.cur.len537 = load i64, ptr %b.rn.cur.len536, align 8
  %b.rn.new.len538 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len537, i64 1)
  %sum539 = extractvalue { i64, i1 } %b.rn.new.len538, 0
  %ovf540 = extractvalue { i64, i1 } %b.rn.new.len538, 1
  br i1 %ovf540, label %str_overflow_abort542, label %b.rn.new.len541

b.new.buf.len2522:                                ; preds = %abort.dead524, %b.grow2507
  %arena.cur525 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2526 = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 %sum520)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2526, ptr align 1 %b.cur.data2518, i64 %b.cur.len2516, i1 false)
  %b.grow2.nul527 = getelementptr i8, ptr %b.new.buf2526, i64 %b.cur.len2516
  store i8 0, ptr %b.grow2.nul527, align 1
  %b.new.data2.gep528 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load489, i32 0, i32 1
  store ptr %b.new.buf2526, ptr %b.new.data2.gep528, align 8
  %b.new.cap2.gep529 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load489, i32 0, i32 2
  store i64 %b.new.cap514, ptr %b.new.cap2.gep529, align 8
  br label %b.grow_done509

str_overflow_abort523:                            ; preds = %b.grow2507
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead524:                                    ; No predecessors!
  br label %b.new.buf.len2522

b.rn.new.len541:                                  ; preds = %abort.dead543, %b.grow_done509
  %b.cap544 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load535, i32 0, i32 2
  %b.cap545 = load i64, ptr %b.cap544, align 8
  %b.need.grow546 = icmp slt i64 %b.cap545, %sum539
  br i1 %b.need.grow546, label %b.grow2547, label %b.nogrow2548

str_overflow_abort542:                            ; preds = %b.grow_done509
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead543:                                    ; No predecessors!
  br label %b.rn.new.len541

b.grow2547:                                       ; preds = %b.rn.new.len541
  %b.cap2550 = mul i64 %b.cap545, 2
  %b.cap.small551 = icmp slt i64 %b.cap2550, 16
  %b.cap.grow552 = select i1 %b.cap.small551, i64 16, i64 %b.cap2550
  %b.cap.need553 = icmp slt i64 %b.cap.grow552, %sum539
  %b.new.cap554 = select i1 %b.cap.need553, i64 %sum539, i64 %b.cap.grow552
  %b.cur.len2555 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load535, i32 0, i32 0
  %b.cur.len2556 = load i64, ptr %b.cur.len2555, align 8
  %b.cur.data2557 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load535, i32 0, i32 1
  %b.cur.data2558 = load ptr, ptr %b.cur.data2557, align 8
  %b.new.buf.len2559 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap554, i64 1)
  %sum560 = extractvalue { i64, i1 } %b.new.buf.len2559, 0
  %ovf561 = extractvalue { i64, i1 } %b.new.buf.len2559, 1
  br i1 %ovf561, label %str_overflow_abort563, label %b.new.buf.len2562

b.nogrow2548:                                     ; preds = %b.rn.new.len541
  br label %b.grow_done549

b.grow_done549:                                   ; preds = %b.nogrow2548, %b.new.buf.len2562
  %b.rn.data570 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load535, i32 0, i32 1
  %b.rn.data571 = load ptr, ptr %b.rn.data570, align 8
  %b.rn.dst572 = getelementptr i8, ptr %b.rn.data571, i64 %b.rn.cur.len537
  br i1 true, label %br.b1.648, label %br.c2.648

b.new.buf.len2562:                                ; preds = %abort.dead564, %b.grow2547
  %arena.cur565 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2566 = call ptr @dva_arena_alloc(ptr %arena.cur565, i64 %sum560)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2566, ptr align 1 %b.cur.data2558, i64 %b.cur.len2556, i1 false)
  %b.grow2.nul567 = getelementptr i8, ptr %b.new.buf2566, i64 %b.cur.len2556
  store i8 0, ptr %b.grow2.nul567, align 1
  %b.new.data2.gep568 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load535, i32 0, i32 1
  store ptr %b.new.buf2566, ptr %b.new.data2.gep568, align 8
  %b.new.cap2.gep569 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load535, i32 0, i32 2
  store i64 %b.new.cap554, ptr %b.new.cap2.gep569, align 8
  br label %b.grow_done549

str_overflow_abort563:                            ; preds = %b.grow2547
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead564:                                    ; No predecessors!
  br label %b.new.buf.len2562

br.b1.648:                                        ; preds = %b.grow_done549
  store i8 10, ptr %b.rn.dst572, align 1
  br label %br.done.648

br.c2.648:                                        ; preds = %b.grow_done549
  br i1 true, label %br.b2.648, label %br.c3.648

br.b2.648:                                        ; preds = %br.c2.648
  store i8 -64, ptr %b.rn.dst572, align 1
  %br.dst1573 = getelementptr i8, ptr %b.rn.dst572, i64 1
  store i8 -118, ptr %br.dst1573, align 1
  br label %br.done.648

br.c3.648:                                        ; preds = %br.c2.648
  br i1 true, label %br.b3.648, label %br.b4.648

br.b3.648:                                        ; preds = %br.c3.648
  store i8 -32, ptr %b.rn.dst572, align 1
  %br.dst1.3574 = getelementptr i8, ptr %b.rn.dst572, i64 1
  store i8 -128, ptr %br.dst1.3574, align 1
  %br.dst2.3575 = getelementptr i8, ptr %b.rn.dst572, i64 2
  store i8 -118, ptr %br.dst2.3575, align 1
  br label %br.done.648

br.b4.648:                                        ; preds = %br.c3.648
  store i8 -16, ptr %b.rn.dst572, align 1
  %br.dst1.4576 = getelementptr i8, ptr %b.rn.dst572, i64 1
  store i8 -128, ptr %br.dst1.4576, align 1
  %br.dst2.4577 = getelementptr i8, ptr %b.rn.dst572, i64 2
  store i8 -128, ptr %br.dst2.4577, align 1
  %br.dst3.4578 = getelementptr i8, ptr %b.rn.dst572, i64 3
  store i8 -118, ptr %br.dst3.4578, align 1
  br label %br.done.648

br.done.648:                                      ; preds = %br.b4.648, %br.b3.648, %br.b2.648, %br.b1.648
  %br.nul579 = getelementptr i8, ptr %b.rn.data571, i64 %sum539
  store i8 0, ptr %br.nul579, align 1
  %b.len.gep580 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load535, i32 0, i32 0
  store i64 %sum539, ptr %b.len.gep580, align 8
  br label %choice.exit233

a.create591:                                      ; preds = %choice.else232
  %arena.cur593 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create594 = call ptr @dva_arena_alloc(ptr %arena.cur593, i64 24)
  %arena.cur595 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf596 = call ptr @dva_arena_alloc(ptr %arena.cur595, i64 128)
  %a.len.gep597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create594, i32 0, i32 0
  store i64 0, ptr %a.len.gep597, align 8
  %a.data.gep598 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create594, i32 0, i32 1
  store ptr %a.buf596, ptr %a.data.gep598, align 8
  %a.cap.gep599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create594, i32 0, i32 2
  store i64 16, ptr %a.cap.gep599, align 8
  store ptr %a.create594, ptr %var.raw_stack, align 8
  br label %a.after592

a.after592:                                       ; preds = %a.create591, %choice.else232
  %a.load2600 = load ptr, ptr %var.raw_stack, align 8
  %var.load601 = load i64, ptr %"var.top'", align 8
  %subtmp = sub i64 %var.load601, 1
  %a.rd.nonnull602 = icmp ne ptr %a.load2600, null
  br i1 %a.rd.nonnull602, label %a.rd.check603, label %a.rd.err.null605

a.rd.check603:                                    ; preds = %a.after592
  %a.rd.len608 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2600, i32 0, i32 0
  %a.rd.len609 = load i64, ptr %a.rd.len608, align 8
  %a.rd.ge0610 = icmp sge i64 %subtmp, 0
  %a.rd.lt611 = icmp slt i64 %subtmp, %a.rd.len609
  %a.rd.bounds612 = and i1 %a.rd.ge0610, %a.rd.lt611
  br i1 %a.rd.bounds612, label %a.rd.ok604, label %a.rd.err.oob606

a.rd.ok604:                                       ; preds = %a.rd.check603
  %a.rd.data613 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2600, i32 0, i32 1
  %a.rd.data614 = load ptr, ptr %a.rd.data613, align 8
  %a.rd.elem.gep615 = getelementptr i64, ptr %a.rd.data614, i64 %subtmp
  %a.rd.elem616 = load i64, ptr %a.rd.elem.gep615, align 8
  br label %a.rd.done607

a.rd.err.null605:                                 ; preds = %a.after592
  %arena.cur617 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc618 = call ptr @dva_arena_alloc(ptr %arena.cur617, i64 56)
  %err.code.gep619 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 0
  store i64 4011, ptr %err.code.gep619, align 8
  %err.msg.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep620, align 8
  %err.file.gep621 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep621, align 8
  %err.line.gep622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 3
  store i64 582, ptr %err.line.gep622, align 8
  %err.col.gep623 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 4
  store i64 55, ptr %err.col.gep623, align 8
  %err.ctx.gep624 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 5
  %err.ctx0.gep625 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep624, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep625, align 8
  %err.ctx1.gep626 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep624, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep626, align 8
  %err.p2i627 = ptrtoint ptr %err.alloc618 to i64
  br label %a.rd.done607

a.rd.err.oob606:                                  ; preds = %a.rd.check603
  %arena.cur628 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc629 = call ptr @dva_arena_alloc(ptr %arena.cur628, i64 56)
  %err.code.gep630 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc629, i32 0, i32 0
  store i64 4011, ptr %err.code.gep630, align 8
  %err.msg.gep631 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc629, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep631, align 8
  %err.file.gep632 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc629, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep632, align 8
  %err.line.gep633 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc629, i32 0, i32 3
  store i64 582, ptr %err.line.gep633, align 8
  %err.col.gep634 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc629, i32 0, i32 4
  store i64 55, ptr %err.col.gep634, align 8
  %err.ctx.gep635 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc629, i32 0, i32 5
  %err.ctx0.gep636 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep635, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep636, align 8
  %err.ctx1.gep637 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep635, i32 0, i32 1
  store i64 %a.rd.len609, ptr %err.ctx1.gep637, align 8
  %err.p2i638 = ptrtoint ptr %err.alloc629 to i64
  br label %a.rd.done607

a.rd.done607:                                     ; preds = %a.rd.err.oob606, %a.rd.err.null605, %a.rd.ok604
  %a.rd.tag639 = phi i1 [ true, %a.rd.ok604 ], [ false, %a.rd.err.null605 ], [ false, %a.rd.err.oob606 ]
  %a.rd.pay640 = phi i64 [ %a.rd.elem616, %a.rd.ok604 ], [ %err.p2i627, %a.rd.err.null605 ], [ %err.p2i638, %a.rd.err.oob606 ]
  %ram.tag641 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag639, 0
  %ram.pay642 = insertvalue { i1, i64 } %ram.tag641, i64 %a.rd.pay640, 1
  %ram.tag643 = extractvalue { i1, i64 } %ram.pay642, 0
  br i1 %ram.tag643, label %choice.then644, label %choice.else645

choice.then644:                                   ; preds = %a.rd.done607
  %ram.pay647 = extractvalue { i1, i64 } %ram.pay642, 1
  store i64 %ram.pay647, ptr %var._648, align 8
  br label %choice.exit646

choice.else645:                                   ; preds = %a.rd.done607
  %ram.pay649 = extractvalue { i1, i64 } %ram.pay642, 1
  %pay.ptr650 = inttoptr i64 %ram.pay649 to ptr
  store ptr %pay.ptr650, ptr %var._651, align 8
  br label %choice.exit646

choice.exit646:                                   ; preds = %choice.else645, %choice.then644
  %choice.res652 = phi i64 [ %ram.pay647, %choice.then644 ], [ 0, %choice.else645 ]
  store i64 %choice.res652, ptr %var.top_raw, align 8
  %var.load653 = load i64, ptr %var.raw, align 8
  %var.load654 = load i64, ptr %var.top_raw, align 8
  %cmptmp655 = icmp sgt i64 %var.load653, %var.load654
  br i1 %cmptmp655, label %choice.then656, label %choice.else657

choice.then656:                                   ; preds = %choice.exit646
  %var.load659 = load ptr, ptr %var.canon_stack, align 8
  %a.load660 = load ptr, ptr %var.canon_stack, align 8
  %a.null661 = icmp eq ptr %a.load660, null
  br i1 %a.null661, label %a.create662, label %a.after663

choice.else657:                                   ; preds = %choice.exit646
  store i64 0, ptr %loop.idx.649, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.649

choice.exit658:                                   ; preds = %choice.exit1300, %choice.exit833
  %var.load1918 = load ptr, ptr %var.canon_stack, align 8
  %a.load1919 = load ptr, ptr %var.canon_stack, align 8
  %a.null1920 = icmp eq ptr %a.load1919, null
  br i1 %a.null1920, label %a.create1921, label %a.after1922

a.create662:                                      ; preds = %choice.then656
  %arena.cur664 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create665 = call ptr @dva_arena_alloc(ptr %arena.cur664, i64 24)
  %arena.cur666 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf667 = call ptr @dva_arena_alloc(ptr %arena.cur666, i64 128)
  %a.len.gep668 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create665, i32 0, i32 0
  store i64 0, ptr %a.len.gep668, align 8
  %a.data.gep669 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create665, i32 0, i32 1
  store ptr %a.buf667, ptr %a.data.gep669, align 8
  %a.cap.gep670 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create665, i32 0, i32 2
  store i64 16, ptr %a.cap.gep670, align 8
  store ptr %a.create665, ptr %var.canon_stack, align 8
  br label %a.after663

a.after663:                                       ; preds = %a.create662, %choice.then656
  %a.load2671 = load ptr, ptr %var.canon_stack, align 8
  %var.load672 = load i64, ptr %"var.top'", align 8
  %subtmp673 = sub i64 %var.load672, 1
  %a.rd.nonnull674 = icmp ne ptr %a.load2671, null
  br i1 %a.rd.nonnull674, label %a.rd.check675, label %a.rd.err.null677

a.rd.check675:                                    ; preds = %a.after663
  %a.rd.len680 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2671, i32 0, i32 0
  %a.rd.len681 = load i64, ptr %a.rd.len680, align 8
  %a.rd.ge0682 = icmp sge i64 %subtmp673, 0
  %a.rd.lt683 = icmp slt i64 %subtmp673, %a.rd.len681
  %a.rd.bounds684 = and i1 %a.rd.ge0682, %a.rd.lt683
  br i1 %a.rd.bounds684, label %a.rd.ok676, label %a.rd.err.oob678

a.rd.ok676:                                       ; preds = %a.rd.check675
  %a.rd.data685 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2671, i32 0, i32 1
  %a.rd.data686 = load ptr, ptr %a.rd.data685, align 8
  %a.rd.elem.gep687 = getelementptr i64, ptr %a.rd.data686, i64 %subtmp673
  %a.rd.elem688 = load i64, ptr %a.rd.elem.gep687, align 8
  br label %a.rd.done679

a.rd.err.null677:                                 ; preds = %a.after663
  %arena.cur689 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc690 = call ptr @dva_arena_alloc(ptr %arena.cur689, i64 56)
  %err.code.gep691 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc690, i32 0, i32 0
  store i64 4011, ptr %err.code.gep691, align 8
  %err.msg.gep692 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc690, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep692, align 8
  %err.file.gep693 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc690, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep693, align 8
  %err.line.gep694 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc690, i32 0, i32 3
  store i64 585, ptr %err.line.gep694, align 8
  %err.col.gep695 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc690, i32 0, i32 4
  store i64 63, ptr %err.col.gep695, align 8
  %err.ctx.gep696 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc690, i32 0, i32 5
  %err.ctx0.gep697 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep696, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep697, align 8
  %err.ctx1.gep698 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep696, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep698, align 8
  %err.p2i699 = ptrtoint ptr %err.alloc690 to i64
  br label %a.rd.done679

a.rd.err.oob678:                                  ; preds = %a.rd.check675
  %arena.cur700 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc701 = call ptr @dva_arena_alloc(ptr %arena.cur700, i64 56)
  %err.code.gep702 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc701, i32 0, i32 0
  store i64 4011, ptr %err.code.gep702, align 8
  %err.msg.gep703 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc701, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep703, align 8
  %err.file.gep704 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc701, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep704, align 8
  %err.line.gep705 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc701, i32 0, i32 3
  store i64 585, ptr %err.line.gep705, align 8
  %err.col.gep706 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc701, i32 0, i32 4
  store i64 63, ptr %err.col.gep706, align 8
  %err.ctx.gep707 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc701, i32 0, i32 5
  %err.ctx0.gep708 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep707, i32 0, i32 0
  store i64 %subtmp673, ptr %err.ctx0.gep708, align 8
  %err.ctx1.gep709 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep707, i32 0, i32 1
  store i64 %a.rd.len681, ptr %err.ctx1.gep709, align 8
  %err.p2i710 = ptrtoint ptr %err.alloc701 to i64
  br label %a.rd.done679

a.rd.done679:                                     ; preds = %a.rd.err.oob678, %a.rd.err.null677, %a.rd.ok676
  %a.rd.tag711 = phi i1 [ true, %a.rd.ok676 ], [ false, %a.rd.err.null677 ], [ false, %a.rd.err.oob678 ]
  %a.rd.pay712 = phi i64 [ %a.rd.elem688, %a.rd.ok676 ], [ %err.p2i699, %a.rd.err.null677 ], [ %err.p2i710, %a.rd.err.oob678 ]
  %ram.tag713 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag711, 0
  %ram.pay714 = insertvalue { i1, i64 } %ram.tag713, i64 %a.rd.pay712, 1
  %ram.tag715 = extractvalue { i1, i64 } %ram.pay714, 0
  br i1 %ram.tag715, label %choice.then716, label %choice.else717

choice.then716:                                   ; preds = %a.rd.done679
  %ram.pay719 = extractvalue { i1, i64 } %ram.pay714, 1
  store i64 %ram.pay719, ptr %var._720, align 8
  br label %choice.exit718

choice.else717:                                   ; preds = %a.rd.done679
  %ram.pay721 = extractvalue { i1, i64 } %ram.pay714, 1
  %pay.ptr722 = inttoptr i64 %ram.pay721 to ptr
  store ptr %pay.ptr722, ptr %var._723, align 8
  br label %choice.exit718

choice.exit718:                                   ; preds = %choice.else717, %choice.then716
  %choice.res724 = phi i64 [ %ram.pay719, %choice.then716 ], [ 0, %choice.else717 ]
  store i64 %choice.res724, ptr %var.p_canon, align 8
  %var.load725 = load ptr, ptr %var.body_stack, align 8
  %a.load726 = load ptr, ptr %var.body_stack, align 8
  %a.null727 = icmp eq ptr %a.load726, null
  br i1 %a.null727, label %a.create728, label %a.after729

a.create728:                                      ; preds = %choice.exit718
  %arena.cur730 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create731 = call ptr @dva_arena_alloc(ptr %arena.cur730, i64 24)
  %arena.cur732 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf733 = call ptr @dva_arena_alloc(ptr %arena.cur732, i64 128)
  %a.len.gep734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create731, i32 0, i32 0
  store i64 0, ptr %a.len.gep734, align 8
  %a.data.gep735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create731, i32 0, i32 1
  store ptr %a.buf733, ptr %a.data.gep735, align 8
  %a.cap.gep736 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create731, i32 0, i32 2
  store i64 16, ptr %a.cap.gep736, align 8
  store ptr %a.create731, ptr %var.body_stack, align 8
  br label %a.after729

a.after729:                                       ; preds = %a.create728, %choice.exit718
  %a.load2737 = load ptr, ptr %var.body_stack, align 8
  %var.load738 = load i64, ptr %"var.top'", align 8
  %subtmp739 = sub i64 %var.load738, 1
  %a.rd.nonnull740 = icmp ne ptr %a.load2737, null
  br i1 %a.rd.nonnull740, label %a.rd.check741, label %a.rd.err.null743

a.rd.check741:                                    ; preds = %a.after729
  %a.rd.len746 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2737, i32 0, i32 0
  %a.rd.len747 = load i64, ptr %a.rd.len746, align 8
  %a.rd.ge0748 = icmp sge i64 %subtmp739, 0
  %a.rd.lt749 = icmp slt i64 %subtmp739, %a.rd.len747
  %a.rd.bounds750 = and i1 %a.rd.ge0748, %a.rd.lt749
  br i1 %a.rd.bounds750, label %a.rd.ok742, label %a.rd.err.oob744

a.rd.ok742:                                       ; preds = %a.rd.check741
  %a.rd.data751 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2737, i32 0, i32 1
  %a.rd.data752 = load ptr, ptr %a.rd.data751, align 8
  %a.rd.elem.gep753 = getelementptr i64, ptr %a.rd.data752, i64 %subtmp739
  %a.rd.elem754 = load i64, ptr %a.rd.elem.gep753, align 8
  br label %a.rd.done745

a.rd.err.null743:                                 ; preds = %a.after729
  %arena.cur755 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc756 = call ptr @dva_arena_alloc(ptr %arena.cur755, i64 56)
  %err.code.gep757 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 0
  store i64 4011, ptr %err.code.gep757, align 8
  %err.msg.gep758 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep758, align 8
  %err.file.gep759 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep759, align 8
  %err.line.gep760 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 3
  store i64 586, ptr %err.line.gep760, align 8
  %err.col.gep761 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 4
  store i64 61, ptr %err.col.gep761, align 8
  %err.ctx.gep762 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 5
  %err.ctx0.gep763 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep762, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep763, align 8
  %err.ctx1.gep764 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep762, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep764, align 8
  %err.p2i765 = ptrtoint ptr %err.alloc756 to i64
  br label %a.rd.done745

a.rd.err.oob744:                                  ; preds = %a.rd.check741
  %arena.cur766 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc767 = call ptr @dva_arena_alloc(ptr %arena.cur766, i64 56)
  %err.code.gep768 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 0
  store i64 4011, ptr %err.code.gep768, align 8
  %err.msg.gep769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep769, align 8
  %err.file.gep770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep770, align 8
  %err.line.gep771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 3
  store i64 586, ptr %err.line.gep771, align 8
  %err.col.gep772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 4
  store i64 61, ptr %err.col.gep772, align 8
  %err.ctx.gep773 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 5
  %err.ctx0.gep774 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep773, i32 0, i32 0
  store i64 %subtmp739, ptr %err.ctx0.gep774, align 8
  %err.ctx1.gep775 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep773, i32 0, i32 1
  store i64 %a.rd.len747, ptr %err.ctx1.gep775, align 8
  %err.p2i776 = ptrtoint ptr %err.alloc767 to i64
  br label %a.rd.done745

a.rd.done745:                                     ; preds = %a.rd.err.oob744, %a.rd.err.null743, %a.rd.ok742
  %a.rd.tag777 = phi i1 [ true, %a.rd.ok742 ], [ false, %a.rd.err.null743 ], [ false, %a.rd.err.oob744 ]
  %a.rd.pay778 = phi i64 [ %a.rd.elem754, %a.rd.ok742 ], [ %err.p2i765, %a.rd.err.null743 ], [ %err.p2i776, %a.rd.err.oob744 ]
  %ram.tag779 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag777, 0
  %ram.pay780 = insertvalue { i1, i64 } %ram.tag779, i64 %a.rd.pay778, 1
  %ram.tag781 = extractvalue { i1, i64 } %ram.pay780, 0
  br i1 %ram.tag781, label %choice.then782, label %choice.else783

choice.then782:                                   ; preds = %a.rd.done745
  %ram.pay785 = extractvalue { i1, i64 } %ram.pay780, 1
  %pay.ptr786 = inttoptr i64 %ram.pay785 to ptr
  store ptr %pay.ptr786, ptr %var._787, align 8
  br label %choice.exit784

choice.else783:                                   ; preds = %a.rd.done745
  %ram.pay788 = extractvalue { i1, i64 } %ram.pay780, 1
  %pay.ptr789 = inttoptr i64 %ram.pay788 to ptr
  store ptr %pay.ptr789, ptr %var._790, align 8
  br label %choice.exit784

choice.exit784:                                   ; preds = %choice.else783, %choice.then782
  %choice.res791 = phi ptr [ %pay.ptr786, %choice.then782 ], [ @str.12.struct, %choice.else783 ]
  store ptr %choice.res791, ptr %var.p_code792, align 8
  %var.load793 = load ptr, ptr %var.lines, align 8
  %a.load794 = load ptr, ptr %var.lines, align 8
  %a.null795 = icmp eq ptr %a.load794, null
  br i1 %a.null795, label %a.create796, label %a.after797

a.create796:                                      ; preds = %choice.exit784
  %arena.cur798 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create799 = call ptr @dva_arena_alloc(ptr %arena.cur798, i64 24)
  %arena.cur800 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf801 = call ptr @dva_arena_alloc(ptr %arena.cur800, i64 128)
  %a.len.gep802 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create799, i32 0, i32 0
  store i64 0, ptr %a.len.gep802, align 8
  %a.data.gep803 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create799, i32 0, i32 1
  store ptr %a.buf801, ptr %a.data.gep803, align 8
  %a.cap.gep804 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create799, i32 0, i32 2
  store i64 16, ptr %a.cap.gep804, align 8
  store ptr %a.create799, ptr %var.lines, align 8
  br label %a.after797

a.after797:                                       ; preds = %a.create796, %choice.exit784
  %a.load2805 = load ptr, ptr %var.lines, align 8
  %var.load806 = load i64, ptr %var.idx, align 8
  %var.load807 = load ptr, ptr %var.p_code792, align 8
  %var.load808 = load ptr, ptr %var.cur_code, align 8
  %var.load809 = load i64, ptr %var.top_raw, align 8
  %var.load810 = load i64, ptr %var.raw, align 8
  %call.res811 = call i64 @"formatter::compute_child_delta"(ptr %a.load2805, i64 %var.load806, ptr %var.load807, ptr %var.load808, i64 %var.load809, i64 %var.load810)
  store i64 %call.res811, ptr %var.delta, align 8
  %var.load812 = load i64, ptr %var.p_canon, align 8
  %var.load813 = load i64, ptr %var.delta, align 8
  %addtmp814 = add i64 %var.load812, %var.load813
  store i64 %addtmp814, ptr %var.new_canon, align 8
  %var.load815 = load i64, ptr %"var.top'", align 8
  %var.load816 = load ptr, ptr %var.raw_stack, align 8
  %a.load817 = load ptr, ptr %var.raw_stack, align 8
  %a.null818 = icmp eq ptr %a.load817, null
  br i1 %a.null818, label %a.create819, label %a.after820

a.create819:                                      ; preds = %a.after797
  %arena.cur821 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create822 = call ptr @dva_arena_alloc(ptr %arena.cur821, i64 24)
  %arena.cur823 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf824 = call ptr @dva_arena_alloc(ptr %arena.cur823, i64 128)
  %a.len.gep825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create822, i32 0, i32 0
  store i64 0, ptr %a.len.gep825, align 8
  %a.data.gep826 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create822, i32 0, i32 1
  store ptr %a.buf824, ptr %a.data.gep826, align 8
  %a.cap.gep827 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create822, i32 0, i32 2
  store i64 16, ptr %a.cap.gep827, align 8
  store ptr %a.create822, ptr %var.raw_stack, align 8
  br label %a.after820

a.after820:                                       ; preds = %a.create819, %a.after797
  %a.load2828 = load ptr, ptr %var.raw_stack, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2828, i32 0, i32 0
  %a.len.query829 = load i64, ptr %a.len.query, align 8
  %cmptmp830 = icmp eq i64 %var.load815, %a.len.query829
  br i1 %cmptmp830, label %choice.then831, label %choice.else832

choice.then831:                                   ; preds = %a.after820
  %var.load834 = load i64, ptr %var.raw, align 8
  %a.load835 = load ptr, ptr %var.raw_stack, align 8
  %a.null836 = icmp eq ptr %a.load835, null
  br i1 %a.null836, label %a.create837, label %a.after838

choice.else832:                                   ; preds = %a.after820
  %var.load918 = load ptr, ptr %var.raw_stack, align 8
  %a.load919 = load ptr, ptr %var.raw_stack, align 8
  %a.null920 = icmp eq ptr %a.load919, null
  br i1 %a.null920, label %a.create921, label %a.after922

choice.exit833:                                   ; preds = %choice.exit1114, %a.store905
  %var.load1148 = load i64, ptr %"var.top'", align 8
  %addtmp1149 = add i64 %var.load1148, 1
  store i64 %addtmp1149, ptr %"var.top'", align 8
  br label %choice.exit658

a.create837:                                      ; preds = %choice.then831
  %arena.cur839 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create840 = call ptr @dva_arena_alloc(ptr %arena.cur839, i64 24)
  %arena.cur841 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf842 = call ptr @dva_arena_alloc(ptr %arena.cur841, i64 128)
  %a.len.gep843 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create840, i32 0, i32 0
  store i64 0, ptr %a.len.gep843, align 8
  %a.data.gep844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create840, i32 0, i32 1
  store ptr %a.buf842, ptr %a.data.gep844, align 8
  %a.cap.gep845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create840, i32 0, i32 2
  store i64 16, ptr %a.cap.gep845, align 8
  store ptr %a.create840, ptr %var.raw_stack, align 8
  br label %a.after838

a.after838:                                       ; preds = %a.create837, %choice.then831
  %a.load2846 = load ptr, ptr %var.raw_stack, align 8
  br label %a.check847

a.check847:                                       ; preds = %a.after838
  %a.len850 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2846, i32 0, i32 0
  %a.len851 = load i64, ptr %a.len850, align 8
  %a.cap852 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2846, i32 0, i32 2
  %a.cap853 = load i64, ptr %a.cap852, align 8
  %a.needs.grow854 = icmp eq i64 %a.len851, %a.cap853
  br i1 %a.needs.grow854, label %a.grow848, label %a.store849

a.grow848:                                        ; preds = %a.check847
  call void @dva_array_grow(ptr %a.load2846)
  br label %a.store849

a.store849:                                       ; preds = %a.grow848, %a.check847
  %a.cur.data855 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2846, i32 0, i32 1
  %a.cur.data856 = load ptr, ptr %a.cur.data855, align 8
  %a.cur.len857 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2846, i32 0, i32 0
  %a.cur.len858 = load i64, ptr %a.cur.len857, align 8
  %a.elem.gep859 = getelementptr i64, ptr %a.cur.data856, i64 %a.cur.len858
  store i64 %var.load834, ptr %a.elem.gep859, align 8
  %a.next.len860 = add i64 %a.cur.len858, 1
  %b.len.gep861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2846, i32 0, i32 0
  store i64 %a.next.len860, ptr %b.len.gep861, align 8
  %var.load862 = load i64, ptr %var.new_canon, align 8
  %a.load863 = load ptr, ptr %var.canon_stack, align 8
  %a.null864 = icmp eq ptr %a.load863, null
  br i1 %a.null864, label %a.create865, label %a.after866

a.create865:                                      ; preds = %a.store849
  %arena.cur867 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create868 = call ptr @dva_arena_alloc(ptr %arena.cur867, i64 24)
  %arena.cur869 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf870 = call ptr @dva_arena_alloc(ptr %arena.cur869, i64 128)
  %a.len.gep871 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create868, i32 0, i32 0
  store i64 0, ptr %a.len.gep871, align 8
  %a.data.gep872 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create868, i32 0, i32 1
  store ptr %a.buf870, ptr %a.data.gep872, align 8
  %a.cap.gep873 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create868, i32 0, i32 2
  store i64 16, ptr %a.cap.gep873, align 8
  store ptr %a.create868, ptr %var.canon_stack, align 8
  br label %a.after866

a.after866:                                       ; preds = %a.create865, %a.store849
  %a.load2874 = load ptr, ptr %var.canon_stack, align 8
  br label %a.check875

a.check875:                                       ; preds = %a.after866
  %a.len878 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2874, i32 0, i32 0
  %a.len879 = load i64, ptr %a.len878, align 8
  %a.cap880 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2874, i32 0, i32 2
  %a.cap881 = load i64, ptr %a.cap880, align 8
  %a.needs.grow882 = icmp eq i64 %a.len879, %a.cap881
  br i1 %a.needs.grow882, label %a.grow876, label %a.store877

a.grow876:                                        ; preds = %a.check875
  call void @dva_array_grow(ptr %a.load2874)
  br label %a.store877

a.store877:                                       ; preds = %a.grow876, %a.check875
  %a.cur.data883 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2874, i32 0, i32 1
  %a.cur.data884 = load ptr, ptr %a.cur.data883, align 8
  %a.cur.len885 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2874, i32 0, i32 0
  %a.cur.len886 = load i64, ptr %a.cur.len885, align 8
  %a.elem.gep887 = getelementptr i64, ptr %a.cur.data884, i64 %a.cur.len886
  store i64 %var.load862, ptr %a.elem.gep887, align 8
  %a.next.len888 = add i64 %a.cur.len886, 1
  %b.len.gep889 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2874, i32 0, i32 0
  store i64 %a.next.len888, ptr %b.len.gep889, align 8
  %var.load890 = load ptr, ptr %var.cur_code, align 8
  %a.load891 = load ptr, ptr %var.body_stack, align 8
  %a.null892 = icmp eq ptr %a.load891, null
  br i1 %a.null892, label %a.create893, label %a.after894

a.create893:                                      ; preds = %a.store877
  %arena.cur895 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create896 = call ptr @dva_arena_alloc(ptr %arena.cur895, i64 24)
  %arena.cur897 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf898 = call ptr @dva_arena_alloc(ptr %arena.cur897, i64 128)
  %a.len.gep899 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create896, i32 0, i32 0
  store i64 0, ptr %a.len.gep899, align 8
  %a.data.gep900 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create896, i32 0, i32 1
  store ptr %a.buf898, ptr %a.data.gep900, align 8
  %a.cap.gep901 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create896, i32 0, i32 2
  store i64 16, ptr %a.cap.gep901, align 8
  store ptr %a.create896, ptr %var.body_stack, align 8
  br label %a.after894

a.after894:                                       ; preds = %a.create893, %a.store877
  %a.load2902 = load ptr, ptr %var.body_stack, align 8
  br label %a.check903

a.check903:                                       ; preds = %a.after894
  %a.len906 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2902, i32 0, i32 0
  %a.len907 = load i64, ptr %a.len906, align 8
  %a.cap908 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2902, i32 0, i32 2
  %a.cap909 = load i64, ptr %a.cap908, align 8
  %a.needs.grow910 = icmp eq i64 %a.len907, %a.cap909
  br i1 %a.needs.grow910, label %a.grow904, label %a.store905

a.grow904:                                        ; preds = %a.check903
  call void @dva_array_grow(ptr %a.load2902)
  br label %a.store905

a.store905:                                       ; preds = %a.grow904, %a.check903
  %a.cur.data911 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2902, i32 0, i32 1
  %a.cur.data912 = load ptr, ptr %a.cur.data911, align 8
  %a.cur.len913 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2902, i32 0, i32 0
  %a.cur.len914 = load i64, ptr %a.cur.len913, align 8
  %a.elem.gep915 = getelementptr i64, ptr %a.cur.data912, i64 %a.cur.len914
  %slot.p2i = ptrtoint ptr %var.load890 to i64
  store i64 %slot.p2i, ptr %a.elem.gep915, align 8
  %a.next.len916 = add i64 %a.cur.len914, 1
  %b.len.gep917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2902, i32 0, i32 0
  store i64 %a.next.len916, ptr %b.len.gep917, align 8
  br label %choice.exit833

a.create921:                                      ; preds = %choice.else832
  %arena.cur923 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create924 = call ptr @dva_arena_alloc(ptr %arena.cur923, i64 24)
  %arena.cur925 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf926 = call ptr @dva_arena_alloc(ptr %arena.cur925, i64 128)
  %a.len.gep927 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create924, i32 0, i32 0
  store i64 0, ptr %a.len.gep927, align 8
  %a.data.gep928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create924, i32 0, i32 1
  store ptr %a.buf926, ptr %a.data.gep928, align 8
  %a.cap.gep929 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create924, i32 0, i32 2
  store i64 16, ptr %a.cap.gep929, align 8
  store ptr %a.create924, ptr %var.raw_stack, align 8
  br label %a.after922

a.after922:                                       ; preds = %a.create921, %choice.else832
  %a.load2930 = load ptr, ptr %var.raw_stack, align 8
  %var.load931 = load i64, ptr %"var.top'", align 8
  %var.load932 = load i64, ptr %var.raw, align 8
  %a.wr.nonnull = icmp ne ptr %a.load2930, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after922
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2930, i32 0, i32 0
  %a.wr.len933 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load931, 0
  %a.wr.lt = icmp slt i64 %var.load931, %a.wr.len933
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2930, i32 0, i32 1
  %a.wr.data934 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep935 = getelementptr i64, ptr %a.wr.data934, i64 %var.load931
  store i64 %var.load932, ptr %a.elem.gep935, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after922
  %arena.cur936 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc937 = call ptr @dva_arena_alloc(ptr %arena.cur936, i64 56)
  %err.code.gep938 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc937, i32 0, i32 0
  store i64 4011, ptr %err.code.gep938, align 8
  %err.msg.gep939 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc937, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep939, align 8
  %err.file.gep940 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc937, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep940, align 8
  %err.line.gep941 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc937, i32 0, i32 3
  store i64 0, ptr %err.line.gep941, align 8
  %err.col.gep942 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc937, i32 0, i32 4
  store i64 0, ptr %err.col.gep942, align 8
  %err.ctx.gep943 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc937, i32 0, i32 5
  %err.ctx0.gep944 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep943, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep944, align 8
  %err.ctx1.gep945 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep943, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep945, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur946 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc947 = call ptr @dva_arena_alloc(ptr %arena.cur946, i64 56)
  %err.code.gep948 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc947, i32 0, i32 0
  store i64 4011, ptr %err.code.gep948, align 8
  %err.msg.gep949 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc947, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep949, align 8
  %err.file.gep950 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc947, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep950, align 8
  %err.line.gep951 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc947, i32 0, i32 3
  store i64 0, ptr %err.line.gep951, align 8
  %err.col.gep952 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc947, i32 0, i32 4
  store i64 0, ptr %err.col.gep952, align 8
  %err.ctx.gep953 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc947, i32 0, i32 5
  %err.ctx0.gep954 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep953, i32 0, i32 0
  store i64 %var.load931, ptr %err.ctx0.gep954, align 8
  %err.ctx1.gep955 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep953, i32 0, i32 1
  store i64 %a.wr.len933, ptr %err.ctx1.gep955, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc937, %a.wr.err.null ], [ %err.alloc947, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then956, label %choice.else957

choice.then956:                                   ; preds = %a.wr.done
  br label %choice.exit958

choice.else957:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._959, align 8
  store ptr %a.wr.niche, ptr %var._960, align 8
  store ptr %a.wr.niche, ptr %var._961, align 8
  %err.code.gep962 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep962, align 8
  %err.msg.gep963 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep963, align 8
  %err.file.gep964 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep964, align 8
  %err.line.gep965 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep965, align 8
  %err.col.gep966 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep966, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len967 = load i64, ptr %err.msg.len, align 8
  %err.msg.len968 = and i64 %err.msg.len967, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len968 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data969 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len970 = load i64, ptr %err.file.len, align 8
  %err.file.len971 = and i64 %err.file.len970, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len971 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data972 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

choice.exit958:                                   ; preds = %err.abort, %choice.then956
  %var.load973 = load ptr, ptr %var.canon_stack, align 8
  %a.load974 = load ptr, ptr %var.canon_stack, align 8
  %a.null975 = icmp eq ptr %a.load974, null
  br i1 %a.null975, label %a.create976, label %a.after977

err.thread:                                       ; preds = %choice.else957
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else957
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data969, i32 %err.file.len32, ptr %err.file.data972, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit958

a.create976:                                      ; preds = %choice.exit958
  %arena.cur978 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create979 = call ptr @dva_arena_alloc(ptr %arena.cur978, i64 24)
  %arena.cur980 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf981 = call ptr @dva_arena_alloc(ptr %arena.cur980, i64 128)
  %a.len.gep982 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create979, i32 0, i32 0
  store i64 0, ptr %a.len.gep982, align 8
  %a.data.gep983 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create979, i32 0, i32 1
  store ptr %a.buf981, ptr %a.data.gep983, align 8
  %a.cap.gep984 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create979, i32 0, i32 2
  store i64 16, ptr %a.cap.gep984, align 8
  store ptr %a.create979, ptr %var.canon_stack, align 8
  br label %a.after977

a.after977:                                       ; preds = %a.create976, %choice.exit958
  %a.load2985 = load ptr, ptr %var.canon_stack, align 8
  %var.load986 = load i64, ptr %"var.top'", align 8
  %var.load987 = load i64, ptr %var.new_canon, align 8
  %a.wr.nonnull988 = icmp ne ptr %a.load2985, null
  br i1 %a.wr.nonnull988, label %a.wr.check989, label %a.wr.err.null991

a.wr.check989:                                    ; preds = %a.after977
  %a.wr.len994 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2985, i32 0, i32 0
  %a.wr.len995 = load i64, ptr %a.wr.len994, align 8
  %a.wr.ge0996 = icmp sge i64 %var.load986, 0
  %a.wr.lt997 = icmp slt i64 %var.load986, %a.wr.len995
  %a.wr.bounds998 = and i1 %a.wr.ge0996, %a.wr.lt997
  br i1 %a.wr.bounds998, label %a.wr.ok990, label %a.wr.err.oob992

a.wr.ok990:                                       ; preds = %a.wr.check989
  %a.wr.data999 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2985, i32 0, i32 1
  %a.wr.data1000 = load ptr, ptr %a.wr.data999, align 8
  %a.elem.gep1001 = getelementptr i64, ptr %a.wr.data1000, i64 %var.load986
  store i64 %var.load987, ptr %a.elem.gep1001, align 8
  br label %a.wr.done993

a.wr.err.null991:                                 ; preds = %a.after977
  %arena.cur1002 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1003 = call ptr @dva_arena_alloc(ptr %arena.cur1002, i64 56)
  %err.code.gep1004 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1003, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1004, align 8
  %err.msg.gep1005 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1003, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1005, align 8
  %err.file.gep1006 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1003, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1006, align 8
  %err.line.gep1007 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1003, i32 0, i32 3
  store i64 0, ptr %err.line.gep1007, align 8
  %err.col.gep1008 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1003, i32 0, i32 4
  store i64 0, ptr %err.col.gep1008, align 8
  %err.ctx.gep1009 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1003, i32 0, i32 5
  %err.ctx0.gep1010 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1009, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1010, align 8
  %err.ctx1.gep1011 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1009, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1011, align 8
  br label %a.wr.done993

a.wr.err.oob992:                                  ; preds = %a.wr.check989
  %arena.cur1012 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1013 = call ptr @dva_arena_alloc(ptr %arena.cur1012, i64 56)
  %err.code.gep1014 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1013, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1014, align 8
  %err.msg.gep1015 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1013, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1015, align 8
  %err.file.gep1016 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1013, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1016, align 8
  %err.line.gep1017 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1013, i32 0, i32 3
  store i64 0, ptr %err.line.gep1017, align 8
  %err.col.gep1018 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1013, i32 0, i32 4
  store i64 0, ptr %err.col.gep1018, align 8
  %err.ctx.gep1019 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1013, i32 0, i32 5
  %err.ctx0.gep1020 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1019, i32 0, i32 0
  store i64 %var.load986, ptr %err.ctx0.gep1020, align 8
  %err.ctx1.gep1021 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1019, i32 0, i32 1
  store i64 %a.wr.len995, ptr %err.ctx1.gep1021, align 8
  br label %a.wr.done993

a.wr.done993:                                     ; preds = %a.wr.err.oob992, %a.wr.err.null991, %a.wr.ok990
  %a.wr.niche1022 = phi ptr [ null, %a.wr.ok990 ], [ %err.alloc1003, %a.wr.err.null991 ], [ %err.alloc1013, %a.wr.err.oob992 ]
  %niche.eq.null1023 = icmp eq ptr %a.wr.niche1022, null
  br i1 %niche.eq.null1023, label %choice.then1024, label %choice.else1025

choice.then1024:                                  ; preds = %a.wr.done993
  br label %choice.exit1026

choice.else1025:                                  ; preds = %a.wr.done993
  store ptr %a.wr.niche1022, ptr %var._1027, align 8
  store ptr %a.wr.niche1022, ptr %var._1028, align 8
  store ptr %a.wr.niche1022, ptr %var._1029, align 8
  %err.code.gep1030 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1022, i32 0, i32 0
  %err.code1031 = load i64, ptr %err.code.gep1030, align 8
  %err.msg.gep1032 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1022, i32 0, i32 1
  %err.msg.struct1033 = load ptr, ptr %err.msg.gep1032, align 8
  %err.file.gep1034 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1022, i32 0, i32 2
  %err.file.struct1035 = load ptr, ptr %err.file.gep1034, align 8
  %err.line.gep1036 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1022, i32 0, i32 3
  %err.line1037 = load i64, ptr %err.line.gep1036, align 8
  %err.col.gep1038 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1022, i32 0, i32 4
  %err.col1039 = load i64, ptr %err.col.gep1038, align 8
  %err.msg.len1040 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1033, i32 0, i32 0
  %err.msg.len1041 = load i64, ptr %err.msg.len1040, align 8
  %err.msg.len1042 = and i64 %err.msg.len1041, 281474976710655
  %err.msg.len321043 = trunc i64 %err.msg.len1042 to i32
  %err.msg.data1044 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1033, i32 0, i32 1
  %err.msg.data1045 = load ptr, ptr %err.msg.data1044, align 8
  %err.file.len1046 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1035, i32 0, i32 0
  %err.file.len1047 = load i64, ptr %err.file.len1046, align 8
  %err.file.len1048 = and i64 %err.file.len1047, 281474976710655
  %err.file.len321049 = trunc i64 %err.file.len1048 to i32
  %err.file.data1050 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1035, i32 0, i32 1
  %err.file.data1051 = load ptr, ptr %err.file.data1050, align 8
  %err.thread.rec1052 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1053 = icmp ne ptr %err.thread.rec1052, null
  br i1 %err.is.thread1053, label %err.thread1054, label %err.normal1055

choice.exit1026:                                  ; preds = %err.abort1059, %choice.then1024
  %var.load1060 = load ptr, ptr %var.body_stack, align 8
  %a.load1061 = load ptr, ptr %var.body_stack, align 8
  %a.null1062 = icmp eq ptr %a.load1061, null
  br i1 %a.null1062, label %a.create1063, label %a.after1064

err.thread1054:                                   ; preds = %choice.else1025
  %err.haserr.gep1056 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1052, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1056, align 8
  %err.err.gep1057 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1052, i32 0, i32 7
  store ptr %a.wr.niche1022, ptr %err.err.gep1057, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1055:                                   ; preds = %choice.else1025
  %err.panic.printf1058 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1031, i32 %err.msg.len321043, ptr %err.msg.data1045, i32 %err.file.len321049, ptr %err.file.data1051, i64 %err.line1037, i64 %err.col1039)
  call void @exit(i32 1)
  unreachable

err.abort1059:                                    ; No predecessors!
  br label %choice.exit1026

a.create1063:                                     ; preds = %choice.exit1026
  %arena.cur1065 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1066 = call ptr @dva_arena_alloc(ptr %arena.cur1065, i64 24)
  %arena.cur1067 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1068 = call ptr @dva_arena_alloc(ptr %arena.cur1067, i64 128)
  %a.len.gep1069 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1066, i32 0, i32 0
  store i64 0, ptr %a.len.gep1069, align 8
  %a.data.gep1070 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1066, i32 0, i32 1
  store ptr %a.buf1068, ptr %a.data.gep1070, align 8
  %a.cap.gep1071 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1066, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1071, align 8
  store ptr %a.create1066, ptr %var.body_stack, align 8
  br label %a.after1064

a.after1064:                                      ; preds = %a.create1063, %choice.exit1026
  %a.load21072 = load ptr, ptr %var.body_stack, align 8
  %var.load1073 = load i64, ptr %"var.top'", align 8
  %var.load1074 = load ptr, ptr %var.cur_code, align 8
  %slot.p2i1075 = ptrtoint ptr %var.load1074 to i64
  %a.wr.nonnull1076 = icmp ne ptr %a.load21072, null
  br i1 %a.wr.nonnull1076, label %a.wr.check1077, label %a.wr.err.null1079

a.wr.check1077:                                   ; preds = %a.after1064
  %a.wr.len1082 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21072, i32 0, i32 0
  %a.wr.len1083 = load i64, ptr %a.wr.len1082, align 8
  %a.wr.ge01084 = icmp sge i64 %var.load1073, 0
  %a.wr.lt1085 = icmp slt i64 %var.load1073, %a.wr.len1083
  %a.wr.bounds1086 = and i1 %a.wr.ge01084, %a.wr.lt1085
  br i1 %a.wr.bounds1086, label %a.wr.ok1078, label %a.wr.err.oob1080

a.wr.ok1078:                                      ; preds = %a.wr.check1077
  %a.wr.data1087 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21072, i32 0, i32 1
  %a.wr.data1088 = load ptr, ptr %a.wr.data1087, align 8
  %a.elem.gep1089 = getelementptr i64, ptr %a.wr.data1088, i64 %var.load1073
  store i64 %slot.p2i1075, ptr %a.elem.gep1089, align 8
  br label %a.wr.done1081

a.wr.err.null1079:                                ; preds = %a.after1064
  %arena.cur1090 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1091 = call ptr @dva_arena_alloc(ptr %arena.cur1090, i64 56)
  %err.code.gep1092 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1091, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1092, align 8
  %err.msg.gep1093 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1091, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1093, align 8
  %err.file.gep1094 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1091, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1094, align 8
  %err.line.gep1095 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1091, i32 0, i32 3
  store i64 0, ptr %err.line.gep1095, align 8
  %err.col.gep1096 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1091, i32 0, i32 4
  store i64 0, ptr %err.col.gep1096, align 8
  %err.ctx.gep1097 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1091, i32 0, i32 5
  %err.ctx0.gep1098 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1097, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1098, align 8
  %err.ctx1.gep1099 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1097, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1099, align 8
  br label %a.wr.done1081

a.wr.err.oob1080:                                 ; preds = %a.wr.check1077
  %arena.cur1100 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1101 = call ptr @dva_arena_alloc(ptr %arena.cur1100, i64 56)
  %err.code.gep1102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1101, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1102, align 8
  %err.msg.gep1103 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1101, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1103, align 8
  %err.file.gep1104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1101, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1104, align 8
  %err.line.gep1105 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1101, i32 0, i32 3
  store i64 0, ptr %err.line.gep1105, align 8
  %err.col.gep1106 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1101, i32 0, i32 4
  store i64 0, ptr %err.col.gep1106, align 8
  %err.ctx.gep1107 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1101, i32 0, i32 5
  %err.ctx0.gep1108 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1107, i32 0, i32 0
  store i64 %var.load1073, ptr %err.ctx0.gep1108, align 8
  %err.ctx1.gep1109 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1107, i32 0, i32 1
  store i64 %a.wr.len1083, ptr %err.ctx1.gep1109, align 8
  br label %a.wr.done1081

a.wr.done1081:                                    ; preds = %a.wr.err.oob1080, %a.wr.err.null1079, %a.wr.ok1078
  %a.wr.niche1110 = phi ptr [ null, %a.wr.ok1078 ], [ %err.alloc1091, %a.wr.err.null1079 ], [ %err.alloc1101, %a.wr.err.oob1080 ]
  %niche.eq.null1111 = icmp eq ptr %a.wr.niche1110, null
  br i1 %niche.eq.null1111, label %choice.then1112, label %choice.else1113

choice.then1112:                                  ; preds = %a.wr.done1081
  br label %choice.exit1114

choice.else1113:                                  ; preds = %a.wr.done1081
  store ptr %a.wr.niche1110, ptr %var._1115, align 8
  store ptr %a.wr.niche1110, ptr %var._1116, align 8
  store ptr %a.wr.niche1110, ptr %var._1117, align 8
  %err.code.gep1118 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1110, i32 0, i32 0
  %err.code1119 = load i64, ptr %err.code.gep1118, align 8
  %err.msg.gep1120 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1110, i32 0, i32 1
  %err.msg.struct1121 = load ptr, ptr %err.msg.gep1120, align 8
  %err.file.gep1122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1110, i32 0, i32 2
  %err.file.struct1123 = load ptr, ptr %err.file.gep1122, align 8
  %err.line.gep1124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1110, i32 0, i32 3
  %err.line1125 = load i64, ptr %err.line.gep1124, align 8
  %err.col.gep1126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1110, i32 0, i32 4
  %err.col1127 = load i64, ptr %err.col.gep1126, align 8
  %err.msg.len1128 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1121, i32 0, i32 0
  %err.msg.len1129 = load i64, ptr %err.msg.len1128, align 8
  %err.msg.len1130 = and i64 %err.msg.len1129, 281474976710655
  %err.msg.len321131 = trunc i64 %err.msg.len1130 to i32
  %err.msg.data1132 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1121, i32 0, i32 1
  %err.msg.data1133 = load ptr, ptr %err.msg.data1132, align 8
  %err.file.len1134 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1123, i32 0, i32 0
  %err.file.len1135 = load i64, ptr %err.file.len1134, align 8
  %err.file.len1136 = and i64 %err.file.len1135, 281474976710655
  %err.file.len321137 = trunc i64 %err.file.len1136 to i32
  %err.file.data1138 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1123, i32 0, i32 1
  %err.file.data1139 = load ptr, ptr %err.file.data1138, align 8
  %err.thread.rec1140 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1141 = icmp ne ptr %err.thread.rec1140, null
  br i1 %err.is.thread1141, label %err.thread1142, label %err.normal1143

choice.exit1114:                                  ; preds = %err.abort1147, %choice.then1112
  br label %choice.exit833

err.thread1142:                                   ; preds = %choice.else1113
  %err.haserr.gep1144 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1140, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1144, align 8
  %err.err.gep1145 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1140, i32 0, i32 7
  store ptr %a.wr.niche1110, ptr %err.err.gep1145, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1143:                                   ; preds = %choice.else1113
  %err.panic.printf1146 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1119, i32 %err.msg.len321131, ptr %err.msg.data1133, i32 %err.file.len321137, ptr %err.file.data1139, i64 %err.line1125, i64 %err.col1127)
  call void @exit(i32 1)
  unreachable

err.abort1147:                                    ; No predecessors!
  br label %choice.exit1114

loop.header.649:                                  ; preds = %loop.latch.649, %choice.else657
  %counter.load1150 = load i64, ptr %loop.idx.649, align 8
  br label %loop.body.649

loop.body.649:                                    ; preds = %loop.header.649
  %loop.rel.i1151 = sub i64 %counter.load1150, 0
  store i64 1, ptr %loop.step.649, align 8
  store i64 %loop.rel.i1151, ptr %var._i1152, align 8
  store i64 %counter.load1150, ptr %var._1153, align 8
  %var.load1154 = load i64, ptr %"var.top'", align 8
  %cmptmp1155 = icmp sgt i64 %var.load1154, 1
  br i1 %cmptmp1155, label %and.650.then, label %and.650.else

loop.exit.nat.649:                                ; No predecessors!
  br label %loop.exit.649

loop.latch.649:                                   ; preds = %choice.exit1226
  %step.val = load i64, ptr %loop.step.649, align 8
  %loop.next = add i64 %counter.load1150, %step.val
  store i64 %loop.next, ptr %loop.idx.649, align 8
  br label %loop.header.649

loop.exit.649:                                    ; preds = %choice.else1225, %loop.exit.nat.649
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load1229 = load ptr, ptr %var.raw_stack, align 8
  %a.load1230 = load ptr, ptr %var.raw_stack, align 8
  %a.null1231 = icmp eq ptr %a.load1230, null
  br i1 %a.null1231, label %a.create1232, label %a.after1233

and.650.then:                                     ; preds = %loop.body.649
  %var.load1156 = load ptr, ptr %var.raw_stack, align 8
  %a.load1157 = load ptr, ptr %var.raw_stack, align 8
  %a.null1158 = icmp eq ptr %a.load1157, null
  br i1 %a.null1158, label %a.create1159, label %a.after1160

and.650.else:                                     ; preds = %loop.body.649
  br label %and.650.exit

and.650.exit:                                     ; preds = %and.650.else, %choice.exit1215
  %and.650.phi = phi i1 [ %cmptmp1223, %choice.exit1215 ], [ %cmptmp1155, %and.650.else ]
  br i1 %and.650.phi, label %choice.then1224, label %choice.else1225

a.create1159:                                     ; preds = %and.650.then
  %arena.cur1161 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1162 = call ptr @dva_arena_alloc(ptr %arena.cur1161, i64 24)
  %arena.cur1163 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1164 = call ptr @dva_arena_alloc(ptr %arena.cur1163, i64 128)
  %a.len.gep1165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1162, i32 0, i32 0
  store i64 0, ptr %a.len.gep1165, align 8
  %a.data.gep1166 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1162, i32 0, i32 1
  store ptr %a.buf1164, ptr %a.data.gep1166, align 8
  %a.cap.gep1167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1162, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1167, align 8
  store ptr %a.create1162, ptr %var.raw_stack, align 8
  br label %a.after1160

a.after1160:                                      ; preds = %a.create1159, %and.650.then
  %a.load21168 = load ptr, ptr %var.raw_stack, align 8
  %var.load1169 = load i64, ptr %"var.top'", align 8
  %subtmp1170 = sub i64 %var.load1169, 1
  %a.rd.nonnull1171 = icmp ne ptr %a.load21168, null
  br i1 %a.rd.nonnull1171, label %a.rd.check1172, label %a.rd.err.null1174

a.rd.check1172:                                   ; preds = %a.after1160
  %a.rd.len1177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21168, i32 0, i32 0
  %a.rd.len1178 = load i64, ptr %a.rd.len1177, align 8
  %a.rd.ge01179 = icmp sge i64 %subtmp1170, 0
  %a.rd.lt1180 = icmp slt i64 %subtmp1170, %a.rd.len1178
  %a.rd.bounds1181 = and i1 %a.rd.ge01179, %a.rd.lt1180
  br i1 %a.rd.bounds1181, label %a.rd.ok1173, label %a.rd.err.oob1175

a.rd.ok1173:                                      ; preds = %a.rd.check1172
  %a.rd.data1182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21168, i32 0, i32 1
  %a.rd.data1183 = load ptr, ptr %a.rd.data1182, align 8
  %a.rd.elem.gep1184 = getelementptr i64, ptr %a.rd.data1183, i64 %subtmp1170
  %a.rd.elem1185 = load i64, ptr %a.rd.elem.gep1184, align 8
  br label %a.rd.done1176

a.rd.err.null1174:                                ; preds = %a.after1160
  %arena.cur1186 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1187 = call ptr @dva_arena_alloc(ptr %arena.cur1186, i64 56)
  %err.code.gep1188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1187, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1188, align 8
  %err.msg.gep1189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1187, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1189, align 8
  %err.file.gep1190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1187, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1190, align 8
  %err.line.gep1191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1187, i32 0, i32 3
  store i64 601, ptr %err.line.gep1191, align 8
  %err.col.gep1192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1187, i32 0, i32 4
  store i64 68, ptr %err.col.gep1192, align 8
  %err.ctx.gep1193 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1187, i32 0, i32 5
  %err.ctx0.gep1194 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1193, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1194, align 8
  %err.ctx1.gep1195 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1193, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1195, align 8
  %err.p2i1196 = ptrtoint ptr %err.alloc1187 to i64
  br label %a.rd.done1176

a.rd.err.oob1175:                                 ; preds = %a.rd.check1172
  %arena.cur1197 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1198 = call ptr @dva_arena_alloc(ptr %arena.cur1197, i64 56)
  %err.code.gep1199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1198, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1199, align 8
  %err.msg.gep1200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1198, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1200, align 8
  %err.file.gep1201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1198, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1201, align 8
  %err.line.gep1202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1198, i32 0, i32 3
  store i64 601, ptr %err.line.gep1202, align 8
  %err.col.gep1203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1198, i32 0, i32 4
  store i64 68, ptr %err.col.gep1203, align 8
  %err.ctx.gep1204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1198, i32 0, i32 5
  %err.ctx0.gep1205 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1204, i32 0, i32 0
  store i64 %subtmp1170, ptr %err.ctx0.gep1205, align 8
  %err.ctx1.gep1206 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1204, i32 0, i32 1
  store i64 %a.rd.len1178, ptr %err.ctx1.gep1206, align 8
  %err.p2i1207 = ptrtoint ptr %err.alloc1198 to i64
  br label %a.rd.done1176

a.rd.done1176:                                    ; preds = %a.rd.err.oob1175, %a.rd.err.null1174, %a.rd.ok1173
  %a.rd.tag1208 = phi i1 [ true, %a.rd.ok1173 ], [ false, %a.rd.err.null1174 ], [ false, %a.rd.err.oob1175 ]
  %a.rd.pay1209 = phi i64 [ %a.rd.elem1185, %a.rd.ok1173 ], [ %err.p2i1196, %a.rd.err.null1174 ], [ %err.p2i1207, %a.rd.err.oob1175 ]
  %ram.tag1210 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1208, 0
  %ram.pay1211 = insertvalue { i1, i64 } %ram.tag1210, i64 %a.rd.pay1209, 1
  %ram.tag1212 = extractvalue { i1, i64 } %ram.pay1211, 0
  br i1 %ram.tag1212, label %choice.then1213, label %choice.else1214

choice.then1213:                                  ; preds = %a.rd.done1176
  %ram.pay1216 = extractvalue { i1, i64 } %ram.pay1211, 1
  store i64 %ram.pay1216, ptr %var._1217, align 8
  br label %choice.exit1215

choice.else1214:                                  ; preds = %a.rd.done1176
  %ram.pay1218 = extractvalue { i1, i64 } %ram.pay1211, 1
  %pay.ptr1219 = inttoptr i64 %ram.pay1218 to ptr
  store ptr %pay.ptr1219, ptr %var._1220, align 8
  br label %choice.exit1215

choice.exit1215:                                  ; preds = %choice.else1214, %choice.then1213
  %choice.res1221 = phi i64 [ %ram.pay1216, %choice.then1213 ], [ 0, %choice.else1214 ]
  %var.load1222 = load i64, ptr %var.raw, align 8
  %cmptmp1223 = icmp sgt i64 %choice.res1221, %var.load1222
  br label %and.650.exit

choice.then1224:                                  ; preds = %and.650.exit
  %var.load1227 = load i64, ptr %"var.top'", align 8
  %subtmp1228 = sub i64 %var.load1227, 1
  store i64 %subtmp1228, ptr %"var.top'", align 8
  br label %choice.exit1226

choice.else1225:                                  ; preds = %and.650.exit
  br label %loop.exit.649

choice.exit1226:                                  ; preds = %choice.then1224
  br label %loop.latch.649

a.create1232:                                     ; preds = %loop.exit.649
  %arena.cur1234 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1235 = call ptr @dva_arena_alloc(ptr %arena.cur1234, i64 24)
  %arena.cur1236 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1237 = call ptr @dva_arena_alloc(ptr %arena.cur1236, i64 128)
  %a.len.gep1238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1235, i32 0, i32 0
  store i64 0, ptr %a.len.gep1238, align 8
  %a.data.gep1239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1235, i32 0, i32 1
  store ptr %a.buf1237, ptr %a.data.gep1239, align 8
  %a.cap.gep1240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1235, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1240, align 8
  store ptr %a.create1235, ptr %var.raw_stack, align 8
  br label %a.after1233

a.after1233:                                      ; preds = %a.create1232, %loop.exit.649
  %a.load21241 = load ptr, ptr %var.raw_stack, align 8
  %var.load1242 = load i64, ptr %"var.top'", align 8
  %subtmp1243 = sub i64 %var.load1242, 1
  %a.rd.nonnull1244 = icmp ne ptr %a.load21241, null
  br i1 %a.rd.nonnull1244, label %a.rd.check1245, label %a.rd.err.null1247

a.rd.check1245:                                   ; preds = %a.after1233
  %a.rd.len1250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21241, i32 0, i32 0
  %a.rd.len1251 = load i64, ptr %a.rd.len1250, align 8
  %a.rd.ge01252 = icmp sge i64 %subtmp1243, 0
  %a.rd.lt1253 = icmp slt i64 %subtmp1243, %a.rd.len1251
  %a.rd.bounds1254 = and i1 %a.rd.ge01252, %a.rd.lt1253
  br i1 %a.rd.bounds1254, label %a.rd.ok1246, label %a.rd.err.oob1248

a.rd.ok1246:                                      ; preds = %a.rd.check1245
  %a.rd.data1255 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21241, i32 0, i32 1
  %a.rd.data1256 = load ptr, ptr %a.rd.data1255, align 8
  %a.rd.elem.gep1257 = getelementptr i64, ptr %a.rd.data1256, i64 %subtmp1243
  %a.rd.elem1258 = load i64, ptr %a.rd.elem.gep1257, align 8
  br label %a.rd.done1249

a.rd.err.null1247:                                ; preds = %a.after1233
  %arena.cur1259 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1260 = call ptr @dva_arena_alloc(ptr %arena.cur1259, i64 56)
  %err.code.gep1261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1260, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1261, align 8
  %err.msg.gep1262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1260, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1262, align 8
  %err.file.gep1263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1260, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1263, align 8
  %err.line.gep1264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1260, i32 0, i32 3
  store i64 604, ptr %err.line.gep1264, align 8
  %err.col.gep1265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1260, i32 0, i32 4
  store i64 65, ptr %err.col.gep1265, align 8
  %err.ctx.gep1266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1260, i32 0, i32 5
  %err.ctx0.gep1267 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1266, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1267, align 8
  %err.ctx1.gep1268 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1266, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1268, align 8
  %err.p2i1269 = ptrtoint ptr %err.alloc1260 to i64
  br label %a.rd.done1249

a.rd.err.oob1248:                                 ; preds = %a.rd.check1245
  %arena.cur1270 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1271 = call ptr @dva_arena_alloc(ptr %arena.cur1270, i64 56)
  %err.code.gep1272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1272, align 8
  %err.msg.gep1273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1273, align 8
  %err.file.gep1274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1274, align 8
  %err.line.gep1275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 3
  store i64 604, ptr %err.line.gep1275, align 8
  %err.col.gep1276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 4
  store i64 65, ptr %err.col.gep1276, align 8
  %err.ctx.gep1277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1271, i32 0, i32 5
  %err.ctx0.gep1278 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1277, i32 0, i32 0
  store i64 %subtmp1243, ptr %err.ctx0.gep1278, align 8
  %err.ctx1.gep1279 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1277, i32 0, i32 1
  store i64 %a.rd.len1251, ptr %err.ctx1.gep1279, align 8
  %err.p2i1280 = ptrtoint ptr %err.alloc1271 to i64
  br label %a.rd.done1249

a.rd.done1249:                                    ; preds = %a.rd.err.oob1248, %a.rd.err.null1247, %a.rd.ok1246
  %a.rd.tag1281 = phi i1 [ true, %a.rd.ok1246 ], [ false, %a.rd.err.null1247 ], [ false, %a.rd.err.oob1248 ]
  %a.rd.pay1282 = phi i64 [ %a.rd.elem1258, %a.rd.ok1246 ], [ %err.p2i1269, %a.rd.err.null1247 ], [ %err.p2i1280, %a.rd.err.oob1248 ]
  %ram.tag1283 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1281, 0
  %ram.pay1284 = insertvalue { i1, i64 } %ram.tag1283, i64 %a.rd.pay1282, 1
  %ram.tag1285 = extractvalue { i1, i64 } %ram.pay1284, 0
  br i1 %ram.tag1285, label %choice.then1286, label %choice.else1287

choice.then1286:                                  ; preds = %a.rd.done1249
  %ram.pay1289 = extractvalue { i1, i64 } %ram.pay1284, 1
  store i64 %ram.pay1289, ptr %var._1290, align 8
  br label %choice.exit1288

choice.else1287:                                  ; preds = %a.rd.done1249
  %ram.pay1291 = extractvalue { i1, i64 } %ram.pay1284, 1
  %pay.ptr1292 = inttoptr i64 %ram.pay1291 to ptr
  store ptr %pay.ptr1292, ptr %var._1293, align 8
  br label %choice.exit1288

choice.exit1288:                                  ; preds = %choice.else1287, %choice.then1286
  %choice.res1294 = phi i64 [ %ram.pay1289, %choice.then1286 ], [ 0, %choice.else1287 ]
  store i64 %choice.res1294, ptr %var.matched_raw, align 8
  %var.load1295 = load i64, ptr %var.raw, align 8
  %var.load1296 = load i64, ptr %var.matched_raw, align 8
  %cmptmp1297 = icmp sgt i64 %var.load1295, %var.load1296
  br i1 %cmptmp1297, label %choice.then1298, label %choice.else1299

choice.then1298:                                  ; preds = %choice.exit1288
  %var.load1301 = load ptr, ptr %var.canon_stack, align 8
  %a.load1302 = load ptr, ptr %var.canon_stack, align 8
  %a.null1303 = icmp eq ptr %a.load1302, null
  br i1 %a.null1303, label %a.create1304, label %a.after1305

choice.else1299:                                  ; preds = %choice.exit1288
  %var.load1829 = load ptr, ptr %var.body_stack, align 8
  %a.load1830 = load ptr, ptr %var.body_stack, align 8
  %a.null1831 = icmp eq ptr %a.load1830, null
  br i1 %a.null1831, label %a.create1832, label %a.after1833

choice.exit1300:                                  ; preds = %choice.exit1884, %choice.exit1479
  br label %choice.exit658

a.create1304:                                     ; preds = %choice.then1298
  %arena.cur1306 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1307 = call ptr @dva_arena_alloc(ptr %arena.cur1306, i64 24)
  %arena.cur1308 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1309 = call ptr @dva_arena_alloc(ptr %arena.cur1308, i64 128)
  %a.len.gep1310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1307, i32 0, i32 0
  store i64 0, ptr %a.len.gep1310, align 8
  %a.data.gep1311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1307, i32 0, i32 1
  store ptr %a.buf1309, ptr %a.data.gep1311, align 8
  %a.cap.gep1312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1307, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1312, align 8
  store ptr %a.create1307, ptr %var.canon_stack, align 8
  br label %a.after1305

a.after1305:                                      ; preds = %a.create1304, %choice.then1298
  %a.load21313 = load ptr, ptr %var.canon_stack, align 8
  %var.load1314 = load i64, ptr %"var.top'", align 8
  %subtmp1315 = sub i64 %var.load1314, 1
  %a.rd.nonnull1316 = icmp ne ptr %a.load21313, null
  br i1 %a.rd.nonnull1316, label %a.rd.check1317, label %a.rd.err.null1319

a.rd.check1317:                                   ; preds = %a.after1305
  %a.rd.len1322 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21313, i32 0, i32 0
  %a.rd.len1323 = load i64, ptr %a.rd.len1322, align 8
  %a.rd.ge01324 = icmp sge i64 %subtmp1315, 0
  %a.rd.lt1325 = icmp slt i64 %subtmp1315, %a.rd.len1323
  %a.rd.bounds1326 = and i1 %a.rd.ge01324, %a.rd.lt1325
  br i1 %a.rd.bounds1326, label %a.rd.ok1318, label %a.rd.err.oob1320

a.rd.ok1318:                                      ; preds = %a.rd.check1317
  %a.rd.data1327 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21313, i32 0, i32 1
  %a.rd.data1328 = load ptr, ptr %a.rd.data1327, align 8
  %a.rd.elem.gep1329 = getelementptr i64, ptr %a.rd.data1328, i64 %subtmp1315
  %a.rd.elem1330 = load i64, ptr %a.rd.elem.gep1329, align 8
  br label %a.rd.done1321

a.rd.err.null1319:                                ; preds = %a.after1305
  %arena.cur1331 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1332 = call ptr @dva_arena_alloc(ptr %arena.cur1331, i64 56)
  %err.code.gep1333 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1332, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1333, align 8
  %err.msg.gep1334 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1332, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1334, align 8
  %err.file.gep1335 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1332, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1335, align 8
  %err.line.gep1336 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1332, i32 0, i32 3
  store i64 608, ptr %err.line.gep1336, align 8
  %err.col.gep1337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1332, i32 0, i32 4
  store i64 69, ptr %err.col.gep1337, align 8
  %err.ctx.gep1338 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1332, i32 0, i32 5
  %err.ctx0.gep1339 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1338, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1339, align 8
  %err.ctx1.gep1340 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1338, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1340, align 8
  %err.p2i1341 = ptrtoint ptr %err.alloc1332 to i64
  br label %a.rd.done1321

a.rd.err.oob1320:                                 ; preds = %a.rd.check1317
  %arena.cur1342 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1343 = call ptr @dva_arena_alloc(ptr %arena.cur1342, i64 56)
  %err.code.gep1344 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1343, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1344, align 8
  %err.msg.gep1345 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1343, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1345, align 8
  %err.file.gep1346 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1343, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1346, align 8
  %err.line.gep1347 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1343, i32 0, i32 3
  store i64 608, ptr %err.line.gep1347, align 8
  %err.col.gep1348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1343, i32 0, i32 4
  store i64 69, ptr %err.col.gep1348, align 8
  %err.ctx.gep1349 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1343, i32 0, i32 5
  %err.ctx0.gep1350 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1349, i32 0, i32 0
  store i64 %subtmp1315, ptr %err.ctx0.gep1350, align 8
  %err.ctx1.gep1351 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1349, i32 0, i32 1
  store i64 %a.rd.len1323, ptr %err.ctx1.gep1351, align 8
  %err.p2i1352 = ptrtoint ptr %err.alloc1343 to i64
  br label %a.rd.done1321

a.rd.done1321:                                    ; preds = %a.rd.err.oob1320, %a.rd.err.null1319, %a.rd.ok1318
  %a.rd.tag1353 = phi i1 [ true, %a.rd.ok1318 ], [ false, %a.rd.err.null1319 ], [ false, %a.rd.err.oob1320 ]
  %a.rd.pay1354 = phi i64 [ %a.rd.elem1330, %a.rd.ok1318 ], [ %err.p2i1341, %a.rd.err.null1319 ], [ %err.p2i1352, %a.rd.err.oob1320 ]
  %ram.tag1355 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1353, 0
  %ram.pay1356 = insertvalue { i1, i64 } %ram.tag1355, i64 %a.rd.pay1354, 1
  %ram.tag1357 = extractvalue { i1, i64 } %ram.pay1356, 0
  br i1 %ram.tag1357, label %choice.then1358, label %choice.else1359

choice.then1358:                                  ; preds = %a.rd.done1321
  %ram.pay1361 = extractvalue { i1, i64 } %ram.pay1356, 1
  store i64 %ram.pay1361, ptr %var._1362, align 8
  br label %choice.exit1360

choice.else1359:                                  ; preds = %a.rd.done1321
  %ram.pay1363 = extractvalue { i1, i64 } %ram.pay1356, 1
  %pay.ptr1364 = inttoptr i64 %ram.pay1363 to ptr
  store ptr %pay.ptr1364, ptr %var._1365, align 8
  br label %choice.exit1360

choice.exit1360:                                  ; preds = %choice.else1359, %choice.then1358
  %choice.res1366 = phi i64 [ %ram.pay1361, %choice.then1358 ], [ 0, %choice.else1359 ]
  store i64 %choice.res1366, ptr %var.p_canon1367, align 8
  %var.load1368 = load ptr, ptr %var.body_stack, align 8
  %a.load1369 = load ptr, ptr %var.body_stack, align 8
  %a.null1370 = icmp eq ptr %a.load1369, null
  br i1 %a.null1370, label %a.create1371, label %a.after1372

a.create1371:                                     ; preds = %choice.exit1360
  %arena.cur1373 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1374 = call ptr @dva_arena_alloc(ptr %arena.cur1373, i64 24)
  %arena.cur1375 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1376 = call ptr @dva_arena_alloc(ptr %arena.cur1375, i64 128)
  %a.len.gep1377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1374, i32 0, i32 0
  store i64 0, ptr %a.len.gep1377, align 8
  %a.data.gep1378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1374, i32 0, i32 1
  store ptr %a.buf1376, ptr %a.data.gep1378, align 8
  %a.cap.gep1379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1374, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1379, align 8
  store ptr %a.create1374, ptr %var.body_stack, align 8
  br label %a.after1372

a.after1372:                                      ; preds = %a.create1371, %choice.exit1360
  %a.load21380 = load ptr, ptr %var.body_stack, align 8
  %var.load1381 = load i64, ptr %"var.top'", align 8
  %subtmp1382 = sub i64 %var.load1381, 1
  %a.rd.nonnull1383 = icmp ne ptr %a.load21380, null
  br i1 %a.rd.nonnull1383, label %a.rd.check1384, label %a.rd.err.null1386

a.rd.check1384:                                   ; preds = %a.after1372
  %a.rd.len1389 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21380, i32 0, i32 0
  %a.rd.len1390 = load i64, ptr %a.rd.len1389, align 8
  %a.rd.ge01391 = icmp sge i64 %subtmp1382, 0
  %a.rd.lt1392 = icmp slt i64 %subtmp1382, %a.rd.len1390
  %a.rd.bounds1393 = and i1 %a.rd.ge01391, %a.rd.lt1392
  br i1 %a.rd.bounds1393, label %a.rd.ok1385, label %a.rd.err.oob1387

a.rd.ok1385:                                      ; preds = %a.rd.check1384
  %a.rd.data1394 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21380, i32 0, i32 1
  %a.rd.data1395 = load ptr, ptr %a.rd.data1394, align 8
  %a.rd.elem.gep1396 = getelementptr i64, ptr %a.rd.data1395, i64 %subtmp1382
  %a.rd.elem1397 = load i64, ptr %a.rd.elem.gep1396, align 8
  br label %a.rd.done1388

a.rd.err.null1386:                                ; preds = %a.after1372
  %arena.cur1398 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1399 = call ptr @dva_arena_alloc(ptr %arena.cur1398, i64 56)
  %err.code.gep1400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1399, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1400, align 8
  %err.msg.gep1401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1399, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1401, align 8
  %err.file.gep1402 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1399, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1402, align 8
  %err.line.gep1403 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1399, i32 0, i32 3
  store i64 609, ptr %err.line.gep1403, align 8
  %err.col.gep1404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1399, i32 0, i32 4
  store i64 67, ptr %err.col.gep1404, align 8
  %err.ctx.gep1405 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1399, i32 0, i32 5
  %err.ctx0.gep1406 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1405, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1406, align 8
  %err.ctx1.gep1407 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1405, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1407, align 8
  %err.p2i1408 = ptrtoint ptr %err.alloc1399 to i64
  br label %a.rd.done1388

a.rd.err.oob1387:                                 ; preds = %a.rd.check1384
  %arena.cur1409 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1410 = call ptr @dva_arena_alloc(ptr %arena.cur1409, i64 56)
  %err.code.gep1411 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1410, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1411, align 8
  %err.msg.gep1412 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1410, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1412, align 8
  %err.file.gep1413 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1410, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1413, align 8
  %err.line.gep1414 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1410, i32 0, i32 3
  store i64 609, ptr %err.line.gep1414, align 8
  %err.col.gep1415 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1410, i32 0, i32 4
  store i64 67, ptr %err.col.gep1415, align 8
  %err.ctx.gep1416 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1410, i32 0, i32 5
  %err.ctx0.gep1417 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1416, i32 0, i32 0
  store i64 %subtmp1382, ptr %err.ctx0.gep1417, align 8
  %err.ctx1.gep1418 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1416, i32 0, i32 1
  store i64 %a.rd.len1390, ptr %err.ctx1.gep1418, align 8
  %err.p2i1419 = ptrtoint ptr %err.alloc1410 to i64
  br label %a.rd.done1388

a.rd.done1388:                                    ; preds = %a.rd.err.oob1387, %a.rd.err.null1386, %a.rd.ok1385
  %a.rd.tag1420 = phi i1 [ true, %a.rd.ok1385 ], [ false, %a.rd.err.null1386 ], [ false, %a.rd.err.oob1387 ]
  %a.rd.pay1421 = phi i64 [ %a.rd.elem1397, %a.rd.ok1385 ], [ %err.p2i1408, %a.rd.err.null1386 ], [ %err.p2i1419, %a.rd.err.oob1387 ]
  %ram.tag1422 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1420, 0
  %ram.pay1423 = insertvalue { i1, i64 } %ram.tag1422, i64 %a.rd.pay1421, 1
  %ram.tag1424 = extractvalue { i1, i64 } %ram.pay1423, 0
  br i1 %ram.tag1424, label %choice.then1425, label %choice.else1426

choice.then1425:                                  ; preds = %a.rd.done1388
  %ram.pay1428 = extractvalue { i1, i64 } %ram.pay1423, 1
  %pay.ptr1429 = inttoptr i64 %ram.pay1428 to ptr
  store ptr %pay.ptr1429, ptr %var._1430, align 8
  br label %choice.exit1427

choice.else1426:                                  ; preds = %a.rd.done1388
  %ram.pay1431 = extractvalue { i1, i64 } %ram.pay1423, 1
  %pay.ptr1432 = inttoptr i64 %ram.pay1431 to ptr
  store ptr %pay.ptr1432, ptr %var._1433, align 8
  br label %choice.exit1427

choice.exit1427:                                  ; preds = %choice.else1426, %choice.then1425
  %choice.res1434 = phi ptr [ %pay.ptr1429, %choice.then1425 ], [ @str.12.struct, %choice.else1426 ]
  store ptr %choice.res1434, ptr %var.p_code1435, align 8
  %var.load1436 = load ptr, ptr %var.lines, align 8
  %a.load1437 = load ptr, ptr %var.lines, align 8
  %a.null1438 = icmp eq ptr %a.load1437, null
  br i1 %a.null1438, label %a.create1439, label %a.after1440

a.create1439:                                     ; preds = %choice.exit1427
  %arena.cur1441 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1442 = call ptr @dva_arena_alloc(ptr %arena.cur1441, i64 24)
  %arena.cur1443 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1444 = call ptr @dva_arena_alloc(ptr %arena.cur1443, i64 128)
  %a.len.gep1445 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1442, i32 0, i32 0
  store i64 0, ptr %a.len.gep1445, align 8
  %a.data.gep1446 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1442, i32 0, i32 1
  store ptr %a.buf1444, ptr %a.data.gep1446, align 8
  %a.cap.gep1447 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1442, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1447, align 8
  store ptr %a.create1442, ptr %var.lines, align 8
  br label %a.after1440

a.after1440:                                      ; preds = %a.create1439, %choice.exit1427
  %a.load21448 = load ptr, ptr %var.lines, align 8
  %var.load1449 = load i64, ptr %var.idx, align 8
  %var.load1450 = load ptr, ptr %var.p_code1435, align 8
  %var.load1451 = load ptr, ptr %var.cur_code, align 8
  %var.load1452 = load i64, ptr %var.matched_raw, align 8
  %var.load1453 = load i64, ptr %var.raw, align 8
  %call.res1454 = call i64 @"formatter::compute_child_delta"(ptr %a.load21448, i64 %var.load1449, ptr %var.load1450, ptr %var.load1451, i64 %var.load1452, i64 %var.load1453)
  store i64 %call.res1454, ptr %var.delta1455, align 8
  %var.load1456 = load i64, ptr %var.p_canon1367, align 8
  %var.load1457 = load i64, ptr %var.delta1455, align 8
  %addtmp1458 = add i64 %var.load1456, %var.load1457
  store i64 %addtmp1458, ptr %var.new_canon1459, align 8
  %var.load1460 = load i64, ptr %"var.top'", align 8
  %var.load1461 = load ptr, ptr %var.raw_stack, align 8
  %a.load1462 = load ptr, ptr %var.raw_stack, align 8
  %a.null1463 = icmp eq ptr %a.load1462, null
  br i1 %a.null1463, label %a.create1464, label %a.after1465

a.create1464:                                     ; preds = %a.after1440
  %arena.cur1466 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1467 = call ptr @dva_arena_alloc(ptr %arena.cur1466, i64 24)
  %arena.cur1468 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1469 = call ptr @dva_arena_alloc(ptr %arena.cur1468, i64 128)
  %a.len.gep1470 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1467, i32 0, i32 0
  store i64 0, ptr %a.len.gep1470, align 8
  %a.data.gep1471 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1467, i32 0, i32 1
  store ptr %a.buf1469, ptr %a.data.gep1471, align 8
  %a.cap.gep1472 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1467, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1472, align 8
  store ptr %a.create1467, ptr %var.raw_stack, align 8
  br label %a.after1465

a.after1465:                                      ; preds = %a.create1464, %a.after1440
  %a.load21473 = load ptr, ptr %var.raw_stack, align 8
  %a.len.query1474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21473, i32 0, i32 0
  %a.len.query1475 = load i64, ptr %a.len.query1474, align 8
  %cmptmp1476 = icmp eq i64 %var.load1460, %a.len.query1475
  br i1 %cmptmp1476, label %choice.then1477, label %choice.else1478

choice.then1477:                                  ; preds = %a.after1465
  %var.load1480 = load i64, ptr %var.raw, align 8
  %a.load1481 = load ptr, ptr %var.raw_stack, align 8
  %a.null1482 = icmp eq ptr %a.load1481, null
  br i1 %a.null1482, label %a.create1483, label %a.after1484

choice.else1478:                                  ; preds = %a.after1465
  %var.load1565 = load ptr, ptr %var.raw_stack, align 8
  %a.load1566 = load ptr, ptr %var.raw_stack, align 8
  %a.null1567 = icmp eq ptr %a.load1566, null
  br i1 %a.null1567, label %a.create1568, label %a.after1569

choice.exit1479:                                  ; preds = %choice.exit1793, %a.store1551
  %var.load1827 = load i64, ptr %"var.top'", align 8
  %addtmp1828 = add i64 %var.load1827, 1
  store i64 %addtmp1828, ptr %"var.top'", align 8
  br label %choice.exit1300

a.create1483:                                     ; preds = %choice.then1477
  %arena.cur1485 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1486 = call ptr @dva_arena_alloc(ptr %arena.cur1485, i64 24)
  %arena.cur1487 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1488 = call ptr @dva_arena_alloc(ptr %arena.cur1487, i64 128)
  %a.len.gep1489 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1486, i32 0, i32 0
  store i64 0, ptr %a.len.gep1489, align 8
  %a.data.gep1490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1486, i32 0, i32 1
  store ptr %a.buf1488, ptr %a.data.gep1490, align 8
  %a.cap.gep1491 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1486, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1491, align 8
  store ptr %a.create1486, ptr %var.raw_stack, align 8
  br label %a.after1484

a.after1484:                                      ; preds = %a.create1483, %choice.then1477
  %a.load21492 = load ptr, ptr %var.raw_stack, align 8
  br label %a.check1493

a.check1493:                                      ; preds = %a.after1484
  %a.len1496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21492, i32 0, i32 0
  %a.len1497 = load i64, ptr %a.len1496, align 8
  %a.cap1498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21492, i32 0, i32 2
  %a.cap1499 = load i64, ptr %a.cap1498, align 8
  %a.needs.grow1500 = icmp eq i64 %a.len1497, %a.cap1499
  br i1 %a.needs.grow1500, label %a.grow1494, label %a.store1495

a.grow1494:                                       ; preds = %a.check1493
  call void @dva_array_grow(ptr %a.load21492)
  br label %a.store1495

a.store1495:                                      ; preds = %a.grow1494, %a.check1493
  %a.cur.data1501 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21492, i32 0, i32 1
  %a.cur.data1502 = load ptr, ptr %a.cur.data1501, align 8
  %a.cur.len1503 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21492, i32 0, i32 0
  %a.cur.len1504 = load i64, ptr %a.cur.len1503, align 8
  %a.elem.gep1505 = getelementptr i64, ptr %a.cur.data1502, i64 %a.cur.len1504
  store i64 %var.load1480, ptr %a.elem.gep1505, align 8
  %a.next.len1506 = add i64 %a.cur.len1504, 1
  %b.len.gep1507 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21492, i32 0, i32 0
  store i64 %a.next.len1506, ptr %b.len.gep1507, align 8
  %var.load1508 = load i64, ptr %var.new_canon1459, align 8
  %a.load1509 = load ptr, ptr %var.canon_stack, align 8
  %a.null1510 = icmp eq ptr %a.load1509, null
  br i1 %a.null1510, label %a.create1511, label %a.after1512

a.create1511:                                     ; preds = %a.store1495
  %arena.cur1513 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1514 = call ptr @dva_arena_alloc(ptr %arena.cur1513, i64 24)
  %arena.cur1515 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1516 = call ptr @dva_arena_alloc(ptr %arena.cur1515, i64 128)
  %a.len.gep1517 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1514, i32 0, i32 0
  store i64 0, ptr %a.len.gep1517, align 8
  %a.data.gep1518 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1514, i32 0, i32 1
  store ptr %a.buf1516, ptr %a.data.gep1518, align 8
  %a.cap.gep1519 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1514, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1519, align 8
  store ptr %a.create1514, ptr %var.canon_stack, align 8
  br label %a.after1512

a.after1512:                                      ; preds = %a.create1511, %a.store1495
  %a.load21520 = load ptr, ptr %var.canon_stack, align 8
  br label %a.check1521

a.check1521:                                      ; preds = %a.after1512
  %a.len1524 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21520, i32 0, i32 0
  %a.len1525 = load i64, ptr %a.len1524, align 8
  %a.cap1526 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21520, i32 0, i32 2
  %a.cap1527 = load i64, ptr %a.cap1526, align 8
  %a.needs.grow1528 = icmp eq i64 %a.len1525, %a.cap1527
  br i1 %a.needs.grow1528, label %a.grow1522, label %a.store1523

a.grow1522:                                       ; preds = %a.check1521
  call void @dva_array_grow(ptr %a.load21520)
  br label %a.store1523

a.store1523:                                      ; preds = %a.grow1522, %a.check1521
  %a.cur.data1529 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21520, i32 0, i32 1
  %a.cur.data1530 = load ptr, ptr %a.cur.data1529, align 8
  %a.cur.len1531 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21520, i32 0, i32 0
  %a.cur.len1532 = load i64, ptr %a.cur.len1531, align 8
  %a.elem.gep1533 = getelementptr i64, ptr %a.cur.data1530, i64 %a.cur.len1532
  store i64 %var.load1508, ptr %a.elem.gep1533, align 8
  %a.next.len1534 = add i64 %a.cur.len1532, 1
  %b.len.gep1535 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21520, i32 0, i32 0
  store i64 %a.next.len1534, ptr %b.len.gep1535, align 8
  %var.load1536 = load ptr, ptr %var.cur_code, align 8
  %a.load1537 = load ptr, ptr %var.body_stack, align 8
  %a.null1538 = icmp eq ptr %a.load1537, null
  br i1 %a.null1538, label %a.create1539, label %a.after1540

a.create1539:                                     ; preds = %a.store1523
  %arena.cur1541 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1542 = call ptr @dva_arena_alloc(ptr %arena.cur1541, i64 24)
  %arena.cur1543 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1544 = call ptr @dva_arena_alloc(ptr %arena.cur1543, i64 128)
  %a.len.gep1545 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1542, i32 0, i32 0
  store i64 0, ptr %a.len.gep1545, align 8
  %a.data.gep1546 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1542, i32 0, i32 1
  store ptr %a.buf1544, ptr %a.data.gep1546, align 8
  %a.cap.gep1547 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1542, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1547, align 8
  store ptr %a.create1542, ptr %var.body_stack, align 8
  br label %a.after1540

a.after1540:                                      ; preds = %a.create1539, %a.store1523
  %a.load21548 = load ptr, ptr %var.body_stack, align 8
  br label %a.check1549

a.check1549:                                      ; preds = %a.after1540
  %a.len1552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21548, i32 0, i32 0
  %a.len1553 = load i64, ptr %a.len1552, align 8
  %a.cap1554 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21548, i32 0, i32 2
  %a.cap1555 = load i64, ptr %a.cap1554, align 8
  %a.needs.grow1556 = icmp eq i64 %a.len1553, %a.cap1555
  br i1 %a.needs.grow1556, label %a.grow1550, label %a.store1551

a.grow1550:                                       ; preds = %a.check1549
  call void @dva_array_grow(ptr %a.load21548)
  br label %a.store1551

a.store1551:                                      ; preds = %a.grow1550, %a.check1549
  %a.cur.data1557 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21548, i32 0, i32 1
  %a.cur.data1558 = load ptr, ptr %a.cur.data1557, align 8
  %a.cur.len1559 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21548, i32 0, i32 0
  %a.cur.len1560 = load i64, ptr %a.cur.len1559, align 8
  %a.elem.gep1561 = getelementptr i64, ptr %a.cur.data1558, i64 %a.cur.len1560
  %slot.p2i1562 = ptrtoint ptr %var.load1536 to i64
  store i64 %slot.p2i1562, ptr %a.elem.gep1561, align 8
  %a.next.len1563 = add i64 %a.cur.len1560, 1
  %b.len.gep1564 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21548, i32 0, i32 0
  store i64 %a.next.len1563, ptr %b.len.gep1564, align 8
  br label %choice.exit1479

a.create1568:                                     ; preds = %choice.else1478
  %arena.cur1570 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1571 = call ptr @dva_arena_alloc(ptr %arena.cur1570, i64 24)
  %arena.cur1572 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1573 = call ptr @dva_arena_alloc(ptr %arena.cur1572, i64 128)
  %a.len.gep1574 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1571, i32 0, i32 0
  store i64 0, ptr %a.len.gep1574, align 8
  %a.data.gep1575 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1571, i32 0, i32 1
  store ptr %a.buf1573, ptr %a.data.gep1575, align 8
  %a.cap.gep1576 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1571, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1576, align 8
  store ptr %a.create1571, ptr %var.raw_stack, align 8
  br label %a.after1569

a.after1569:                                      ; preds = %a.create1568, %choice.else1478
  %a.load21577 = load ptr, ptr %var.raw_stack, align 8
  %var.load1578 = load i64, ptr %"var.top'", align 8
  %var.load1579 = load i64, ptr %var.raw, align 8
  %a.wr.nonnull1580 = icmp ne ptr %a.load21577, null
  br i1 %a.wr.nonnull1580, label %a.wr.check1581, label %a.wr.err.null1583

a.wr.check1581:                                   ; preds = %a.after1569
  %a.wr.len1586 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21577, i32 0, i32 0
  %a.wr.len1587 = load i64, ptr %a.wr.len1586, align 8
  %a.wr.ge01588 = icmp sge i64 %var.load1578, 0
  %a.wr.lt1589 = icmp slt i64 %var.load1578, %a.wr.len1587
  %a.wr.bounds1590 = and i1 %a.wr.ge01588, %a.wr.lt1589
  br i1 %a.wr.bounds1590, label %a.wr.ok1582, label %a.wr.err.oob1584

a.wr.ok1582:                                      ; preds = %a.wr.check1581
  %a.wr.data1591 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21577, i32 0, i32 1
  %a.wr.data1592 = load ptr, ptr %a.wr.data1591, align 8
  %a.elem.gep1593 = getelementptr i64, ptr %a.wr.data1592, i64 %var.load1578
  store i64 %var.load1579, ptr %a.elem.gep1593, align 8
  br label %a.wr.done1585

a.wr.err.null1583:                                ; preds = %a.after1569
  %arena.cur1594 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1595 = call ptr @dva_arena_alloc(ptr %arena.cur1594, i64 56)
  %err.code.gep1596 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1596, align 8
  %err.msg.gep1597 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1597, align 8
  %err.file.gep1598 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1598, align 8
  %err.line.gep1599 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 3
  store i64 0, ptr %err.line.gep1599, align 8
  %err.col.gep1600 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 4
  store i64 0, ptr %err.col.gep1600, align 8
  %err.ctx.gep1601 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1595, i32 0, i32 5
  %err.ctx0.gep1602 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1601, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1602, align 8
  %err.ctx1.gep1603 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1601, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1603, align 8
  br label %a.wr.done1585

a.wr.err.oob1584:                                 ; preds = %a.wr.check1581
  %arena.cur1604 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1605 = call ptr @dva_arena_alloc(ptr %arena.cur1604, i64 56)
  %err.code.gep1606 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1605, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1606, align 8
  %err.msg.gep1607 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1605, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1607, align 8
  %err.file.gep1608 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1605, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1608, align 8
  %err.line.gep1609 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1605, i32 0, i32 3
  store i64 0, ptr %err.line.gep1609, align 8
  %err.col.gep1610 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1605, i32 0, i32 4
  store i64 0, ptr %err.col.gep1610, align 8
  %err.ctx.gep1611 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1605, i32 0, i32 5
  %err.ctx0.gep1612 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1611, i32 0, i32 0
  store i64 %var.load1578, ptr %err.ctx0.gep1612, align 8
  %err.ctx1.gep1613 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1611, i32 0, i32 1
  store i64 %a.wr.len1587, ptr %err.ctx1.gep1613, align 8
  br label %a.wr.done1585

a.wr.done1585:                                    ; preds = %a.wr.err.oob1584, %a.wr.err.null1583, %a.wr.ok1582
  %a.wr.niche1614 = phi ptr [ null, %a.wr.ok1582 ], [ %err.alloc1595, %a.wr.err.null1583 ], [ %err.alloc1605, %a.wr.err.oob1584 ]
  %niche.eq.null1615 = icmp eq ptr %a.wr.niche1614, null
  br i1 %niche.eq.null1615, label %choice.then1616, label %choice.else1617

choice.then1616:                                  ; preds = %a.wr.done1585
  br label %choice.exit1618

choice.else1617:                                  ; preds = %a.wr.done1585
  store ptr %a.wr.niche1614, ptr %var._1619, align 8
  store ptr %a.wr.niche1614, ptr %var._1620, align 8
  store ptr %a.wr.niche1614, ptr %var._1621, align 8
  %err.code.gep1622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1614, i32 0, i32 0
  %err.code1623 = load i64, ptr %err.code.gep1622, align 8
  %err.msg.gep1624 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1614, i32 0, i32 1
  %err.msg.struct1625 = load ptr, ptr %err.msg.gep1624, align 8
  %err.file.gep1626 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1614, i32 0, i32 2
  %err.file.struct1627 = load ptr, ptr %err.file.gep1626, align 8
  %err.line.gep1628 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1614, i32 0, i32 3
  %err.line1629 = load i64, ptr %err.line.gep1628, align 8
  %err.col.gep1630 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1614, i32 0, i32 4
  %err.col1631 = load i64, ptr %err.col.gep1630, align 8
  %err.msg.len1632 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1625, i32 0, i32 0
  %err.msg.len1633 = load i64, ptr %err.msg.len1632, align 8
  %err.msg.len1634 = and i64 %err.msg.len1633, 281474976710655
  %err.msg.len321635 = trunc i64 %err.msg.len1634 to i32
  %err.msg.data1636 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1625, i32 0, i32 1
  %err.msg.data1637 = load ptr, ptr %err.msg.data1636, align 8
  %err.file.len1638 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1627, i32 0, i32 0
  %err.file.len1639 = load i64, ptr %err.file.len1638, align 8
  %err.file.len1640 = and i64 %err.file.len1639, 281474976710655
  %err.file.len321641 = trunc i64 %err.file.len1640 to i32
  %err.file.data1642 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1627, i32 0, i32 1
  %err.file.data1643 = load ptr, ptr %err.file.data1642, align 8
  %err.thread.rec1644 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1645 = icmp ne ptr %err.thread.rec1644, null
  br i1 %err.is.thread1645, label %err.thread1646, label %err.normal1647

choice.exit1618:                                  ; preds = %err.abort1651, %choice.then1616
  %var.load1652 = load ptr, ptr %var.canon_stack, align 8
  %a.load1653 = load ptr, ptr %var.canon_stack, align 8
  %a.null1654 = icmp eq ptr %a.load1653, null
  br i1 %a.null1654, label %a.create1655, label %a.after1656

err.thread1646:                                   ; preds = %choice.else1617
  %err.haserr.gep1648 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1644, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1648, align 8
  %err.err.gep1649 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1644, i32 0, i32 7
  store ptr %a.wr.niche1614, ptr %err.err.gep1649, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1647:                                   ; preds = %choice.else1617
  %err.panic.printf1650 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1623, i32 %err.msg.len321635, ptr %err.msg.data1637, i32 %err.file.len321641, ptr %err.file.data1643, i64 %err.line1629, i64 %err.col1631)
  call void @exit(i32 1)
  unreachable

err.abort1651:                                    ; No predecessors!
  br label %choice.exit1618

a.create1655:                                     ; preds = %choice.exit1618
  %arena.cur1657 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1658 = call ptr @dva_arena_alloc(ptr %arena.cur1657, i64 24)
  %arena.cur1659 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1660 = call ptr @dva_arena_alloc(ptr %arena.cur1659, i64 128)
  %a.len.gep1661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1658, i32 0, i32 0
  store i64 0, ptr %a.len.gep1661, align 8
  %a.data.gep1662 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1658, i32 0, i32 1
  store ptr %a.buf1660, ptr %a.data.gep1662, align 8
  %a.cap.gep1663 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1658, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1663, align 8
  store ptr %a.create1658, ptr %var.canon_stack, align 8
  br label %a.after1656

a.after1656:                                      ; preds = %a.create1655, %choice.exit1618
  %a.load21664 = load ptr, ptr %var.canon_stack, align 8
  %var.load1665 = load i64, ptr %"var.top'", align 8
  %var.load1666 = load i64, ptr %var.new_canon1459, align 8
  %a.wr.nonnull1667 = icmp ne ptr %a.load21664, null
  br i1 %a.wr.nonnull1667, label %a.wr.check1668, label %a.wr.err.null1670

a.wr.check1668:                                   ; preds = %a.after1656
  %a.wr.len1673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21664, i32 0, i32 0
  %a.wr.len1674 = load i64, ptr %a.wr.len1673, align 8
  %a.wr.ge01675 = icmp sge i64 %var.load1665, 0
  %a.wr.lt1676 = icmp slt i64 %var.load1665, %a.wr.len1674
  %a.wr.bounds1677 = and i1 %a.wr.ge01675, %a.wr.lt1676
  br i1 %a.wr.bounds1677, label %a.wr.ok1669, label %a.wr.err.oob1671

a.wr.ok1669:                                      ; preds = %a.wr.check1668
  %a.wr.data1678 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21664, i32 0, i32 1
  %a.wr.data1679 = load ptr, ptr %a.wr.data1678, align 8
  %a.elem.gep1680 = getelementptr i64, ptr %a.wr.data1679, i64 %var.load1665
  store i64 %var.load1666, ptr %a.elem.gep1680, align 8
  br label %a.wr.done1672

a.wr.err.null1670:                                ; preds = %a.after1656
  %arena.cur1681 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1682 = call ptr @dva_arena_alloc(ptr %arena.cur1681, i64 56)
  %err.code.gep1683 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1682, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1683, align 8
  %err.msg.gep1684 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1682, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1684, align 8
  %err.file.gep1685 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1682, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1685, align 8
  %err.line.gep1686 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1682, i32 0, i32 3
  store i64 0, ptr %err.line.gep1686, align 8
  %err.col.gep1687 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1682, i32 0, i32 4
  store i64 0, ptr %err.col.gep1687, align 8
  %err.ctx.gep1688 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1682, i32 0, i32 5
  %err.ctx0.gep1689 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1688, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1689, align 8
  %err.ctx1.gep1690 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1688, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1690, align 8
  br label %a.wr.done1672

a.wr.err.oob1671:                                 ; preds = %a.wr.check1668
  %arena.cur1691 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1692 = call ptr @dva_arena_alloc(ptr %arena.cur1691, i64 56)
  %err.code.gep1693 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1692, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1693, align 8
  %err.msg.gep1694 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1692, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1694, align 8
  %err.file.gep1695 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1692, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1695, align 8
  %err.line.gep1696 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1692, i32 0, i32 3
  store i64 0, ptr %err.line.gep1696, align 8
  %err.col.gep1697 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1692, i32 0, i32 4
  store i64 0, ptr %err.col.gep1697, align 8
  %err.ctx.gep1698 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1692, i32 0, i32 5
  %err.ctx0.gep1699 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1698, i32 0, i32 0
  store i64 %var.load1665, ptr %err.ctx0.gep1699, align 8
  %err.ctx1.gep1700 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1698, i32 0, i32 1
  store i64 %a.wr.len1674, ptr %err.ctx1.gep1700, align 8
  br label %a.wr.done1672

a.wr.done1672:                                    ; preds = %a.wr.err.oob1671, %a.wr.err.null1670, %a.wr.ok1669
  %a.wr.niche1701 = phi ptr [ null, %a.wr.ok1669 ], [ %err.alloc1682, %a.wr.err.null1670 ], [ %err.alloc1692, %a.wr.err.oob1671 ]
  %niche.eq.null1702 = icmp eq ptr %a.wr.niche1701, null
  br i1 %niche.eq.null1702, label %choice.then1703, label %choice.else1704

choice.then1703:                                  ; preds = %a.wr.done1672
  br label %choice.exit1705

choice.else1704:                                  ; preds = %a.wr.done1672
  store ptr %a.wr.niche1701, ptr %var._1706, align 8
  store ptr %a.wr.niche1701, ptr %var._1707, align 8
  store ptr %a.wr.niche1701, ptr %var._1708, align 8
  %err.code.gep1709 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1701, i32 0, i32 0
  %err.code1710 = load i64, ptr %err.code.gep1709, align 8
  %err.msg.gep1711 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1701, i32 0, i32 1
  %err.msg.struct1712 = load ptr, ptr %err.msg.gep1711, align 8
  %err.file.gep1713 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1701, i32 0, i32 2
  %err.file.struct1714 = load ptr, ptr %err.file.gep1713, align 8
  %err.line.gep1715 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1701, i32 0, i32 3
  %err.line1716 = load i64, ptr %err.line.gep1715, align 8
  %err.col.gep1717 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1701, i32 0, i32 4
  %err.col1718 = load i64, ptr %err.col.gep1717, align 8
  %err.msg.len1719 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1712, i32 0, i32 0
  %err.msg.len1720 = load i64, ptr %err.msg.len1719, align 8
  %err.msg.len1721 = and i64 %err.msg.len1720, 281474976710655
  %err.msg.len321722 = trunc i64 %err.msg.len1721 to i32
  %err.msg.data1723 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1712, i32 0, i32 1
  %err.msg.data1724 = load ptr, ptr %err.msg.data1723, align 8
  %err.file.len1725 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1714, i32 0, i32 0
  %err.file.len1726 = load i64, ptr %err.file.len1725, align 8
  %err.file.len1727 = and i64 %err.file.len1726, 281474976710655
  %err.file.len321728 = trunc i64 %err.file.len1727 to i32
  %err.file.data1729 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1714, i32 0, i32 1
  %err.file.data1730 = load ptr, ptr %err.file.data1729, align 8
  %err.thread.rec1731 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1732 = icmp ne ptr %err.thread.rec1731, null
  br i1 %err.is.thread1732, label %err.thread1733, label %err.normal1734

choice.exit1705:                                  ; preds = %err.abort1738, %choice.then1703
  %var.load1739 = load ptr, ptr %var.body_stack, align 8
  %a.load1740 = load ptr, ptr %var.body_stack, align 8
  %a.null1741 = icmp eq ptr %a.load1740, null
  br i1 %a.null1741, label %a.create1742, label %a.after1743

err.thread1733:                                   ; preds = %choice.else1704
  %err.haserr.gep1735 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1731, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1735, align 8
  %err.err.gep1736 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1731, i32 0, i32 7
  store ptr %a.wr.niche1701, ptr %err.err.gep1736, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1734:                                   ; preds = %choice.else1704
  %err.panic.printf1737 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1710, i32 %err.msg.len321722, ptr %err.msg.data1724, i32 %err.file.len321728, ptr %err.file.data1730, i64 %err.line1716, i64 %err.col1718)
  call void @exit(i32 1)
  unreachable

err.abort1738:                                    ; No predecessors!
  br label %choice.exit1705

a.create1742:                                     ; preds = %choice.exit1705
  %arena.cur1744 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1745 = call ptr @dva_arena_alloc(ptr %arena.cur1744, i64 24)
  %arena.cur1746 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1747 = call ptr @dva_arena_alloc(ptr %arena.cur1746, i64 128)
  %a.len.gep1748 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1745, i32 0, i32 0
  store i64 0, ptr %a.len.gep1748, align 8
  %a.data.gep1749 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1745, i32 0, i32 1
  store ptr %a.buf1747, ptr %a.data.gep1749, align 8
  %a.cap.gep1750 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1745, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1750, align 8
  store ptr %a.create1745, ptr %var.body_stack, align 8
  br label %a.after1743

a.after1743:                                      ; preds = %a.create1742, %choice.exit1705
  %a.load21751 = load ptr, ptr %var.body_stack, align 8
  %var.load1752 = load i64, ptr %"var.top'", align 8
  %var.load1753 = load ptr, ptr %var.cur_code, align 8
  %slot.p2i1754 = ptrtoint ptr %var.load1753 to i64
  %a.wr.nonnull1755 = icmp ne ptr %a.load21751, null
  br i1 %a.wr.nonnull1755, label %a.wr.check1756, label %a.wr.err.null1758

a.wr.check1756:                                   ; preds = %a.after1743
  %a.wr.len1761 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21751, i32 0, i32 0
  %a.wr.len1762 = load i64, ptr %a.wr.len1761, align 8
  %a.wr.ge01763 = icmp sge i64 %var.load1752, 0
  %a.wr.lt1764 = icmp slt i64 %var.load1752, %a.wr.len1762
  %a.wr.bounds1765 = and i1 %a.wr.ge01763, %a.wr.lt1764
  br i1 %a.wr.bounds1765, label %a.wr.ok1757, label %a.wr.err.oob1759

a.wr.ok1757:                                      ; preds = %a.wr.check1756
  %a.wr.data1766 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21751, i32 0, i32 1
  %a.wr.data1767 = load ptr, ptr %a.wr.data1766, align 8
  %a.elem.gep1768 = getelementptr i64, ptr %a.wr.data1767, i64 %var.load1752
  store i64 %slot.p2i1754, ptr %a.elem.gep1768, align 8
  br label %a.wr.done1760

a.wr.err.null1758:                                ; preds = %a.after1743
  %arena.cur1769 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1770 = call ptr @dva_arena_alloc(ptr %arena.cur1769, i64 56)
  %err.code.gep1771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1770, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1771, align 8
  %err.msg.gep1772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1770, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1772, align 8
  %err.file.gep1773 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1770, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1773, align 8
  %err.line.gep1774 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1770, i32 0, i32 3
  store i64 0, ptr %err.line.gep1774, align 8
  %err.col.gep1775 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1770, i32 0, i32 4
  store i64 0, ptr %err.col.gep1775, align 8
  %err.ctx.gep1776 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1770, i32 0, i32 5
  %err.ctx0.gep1777 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1776, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1777, align 8
  %err.ctx1.gep1778 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1776, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1778, align 8
  br label %a.wr.done1760

a.wr.err.oob1759:                                 ; preds = %a.wr.check1756
  %arena.cur1779 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1780 = call ptr @dva_arena_alloc(ptr %arena.cur1779, i64 56)
  %err.code.gep1781 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1780, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1781, align 8
  %err.msg.gep1782 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1780, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1782, align 8
  %err.file.gep1783 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1780, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1783, align 8
  %err.line.gep1784 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1780, i32 0, i32 3
  store i64 0, ptr %err.line.gep1784, align 8
  %err.col.gep1785 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1780, i32 0, i32 4
  store i64 0, ptr %err.col.gep1785, align 8
  %err.ctx.gep1786 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1780, i32 0, i32 5
  %err.ctx0.gep1787 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1786, i32 0, i32 0
  store i64 %var.load1752, ptr %err.ctx0.gep1787, align 8
  %err.ctx1.gep1788 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1786, i32 0, i32 1
  store i64 %a.wr.len1762, ptr %err.ctx1.gep1788, align 8
  br label %a.wr.done1760

a.wr.done1760:                                    ; preds = %a.wr.err.oob1759, %a.wr.err.null1758, %a.wr.ok1757
  %a.wr.niche1789 = phi ptr [ null, %a.wr.ok1757 ], [ %err.alloc1770, %a.wr.err.null1758 ], [ %err.alloc1780, %a.wr.err.oob1759 ]
  %niche.eq.null1790 = icmp eq ptr %a.wr.niche1789, null
  br i1 %niche.eq.null1790, label %choice.then1791, label %choice.else1792

choice.then1791:                                  ; preds = %a.wr.done1760
  br label %choice.exit1793

choice.else1792:                                  ; preds = %a.wr.done1760
  store ptr %a.wr.niche1789, ptr %var._1794, align 8
  store ptr %a.wr.niche1789, ptr %var._1795, align 8
  store ptr %a.wr.niche1789, ptr %var._1796, align 8
  %err.code.gep1797 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1789, i32 0, i32 0
  %err.code1798 = load i64, ptr %err.code.gep1797, align 8
  %err.msg.gep1799 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1789, i32 0, i32 1
  %err.msg.struct1800 = load ptr, ptr %err.msg.gep1799, align 8
  %err.file.gep1801 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1789, i32 0, i32 2
  %err.file.struct1802 = load ptr, ptr %err.file.gep1801, align 8
  %err.line.gep1803 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1789, i32 0, i32 3
  %err.line1804 = load i64, ptr %err.line.gep1803, align 8
  %err.col.gep1805 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1789, i32 0, i32 4
  %err.col1806 = load i64, ptr %err.col.gep1805, align 8
  %err.msg.len1807 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1800, i32 0, i32 0
  %err.msg.len1808 = load i64, ptr %err.msg.len1807, align 8
  %err.msg.len1809 = and i64 %err.msg.len1808, 281474976710655
  %err.msg.len321810 = trunc i64 %err.msg.len1809 to i32
  %err.msg.data1811 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1800, i32 0, i32 1
  %err.msg.data1812 = load ptr, ptr %err.msg.data1811, align 8
  %err.file.len1813 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1802, i32 0, i32 0
  %err.file.len1814 = load i64, ptr %err.file.len1813, align 8
  %err.file.len1815 = and i64 %err.file.len1814, 281474976710655
  %err.file.len321816 = trunc i64 %err.file.len1815 to i32
  %err.file.data1817 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1802, i32 0, i32 1
  %err.file.data1818 = load ptr, ptr %err.file.data1817, align 8
  %err.thread.rec1819 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1820 = icmp ne ptr %err.thread.rec1819, null
  br i1 %err.is.thread1820, label %err.thread1821, label %err.normal1822

choice.exit1793:                                  ; preds = %err.abort1826, %choice.then1791
  br label %choice.exit1479

err.thread1821:                                   ; preds = %choice.else1792
  %err.haserr.gep1823 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1819, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1823, align 8
  %err.err.gep1824 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1819, i32 0, i32 7
  store ptr %a.wr.niche1789, ptr %err.err.gep1824, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1822:                                   ; preds = %choice.else1792
  %err.panic.printf1825 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1798, i32 %err.msg.len321810, ptr %err.msg.data1812, i32 %err.file.len321816, ptr %err.file.data1818, i64 %err.line1804, i64 %err.col1806)
  call void @exit(i32 1)
  unreachable

err.abort1826:                                    ; No predecessors!
  br label %choice.exit1793

a.create1832:                                     ; preds = %choice.else1299
  %arena.cur1834 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1835 = call ptr @dva_arena_alloc(ptr %arena.cur1834, i64 24)
  %arena.cur1836 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1837 = call ptr @dva_arena_alloc(ptr %arena.cur1836, i64 128)
  %a.len.gep1838 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1835, i32 0, i32 0
  store i64 0, ptr %a.len.gep1838, align 8
  %a.data.gep1839 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1835, i32 0, i32 1
  store ptr %a.buf1837, ptr %a.data.gep1839, align 8
  %a.cap.gep1840 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1835, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1840, align 8
  store ptr %a.create1835, ptr %var.body_stack, align 8
  br label %a.after1833

a.after1833:                                      ; preds = %a.create1832, %choice.else1299
  %a.load21841 = load ptr, ptr %var.body_stack, align 8
  %var.load1842 = load i64, ptr %"var.top'", align 8
  %subtmp1843 = sub i64 %var.load1842, 1
  %var.load1844 = load ptr, ptr %var.cur_code, align 8
  %slot.p2i1845 = ptrtoint ptr %var.load1844 to i64
  %a.wr.nonnull1846 = icmp ne ptr %a.load21841, null
  br i1 %a.wr.nonnull1846, label %a.wr.check1847, label %a.wr.err.null1849

a.wr.check1847:                                   ; preds = %a.after1833
  %a.wr.len1852 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21841, i32 0, i32 0
  %a.wr.len1853 = load i64, ptr %a.wr.len1852, align 8
  %a.wr.ge01854 = icmp sge i64 %subtmp1843, 0
  %a.wr.lt1855 = icmp slt i64 %subtmp1843, %a.wr.len1853
  %a.wr.bounds1856 = and i1 %a.wr.ge01854, %a.wr.lt1855
  br i1 %a.wr.bounds1856, label %a.wr.ok1848, label %a.wr.err.oob1850

a.wr.ok1848:                                      ; preds = %a.wr.check1847
  %a.wr.data1857 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21841, i32 0, i32 1
  %a.wr.data1858 = load ptr, ptr %a.wr.data1857, align 8
  %a.elem.gep1859 = getelementptr i64, ptr %a.wr.data1858, i64 %subtmp1843
  store i64 %slot.p2i1845, ptr %a.elem.gep1859, align 8
  br label %a.wr.done1851

a.wr.err.null1849:                                ; preds = %a.after1833
  %arena.cur1860 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1861 = call ptr @dva_arena_alloc(ptr %arena.cur1860, i64 56)
  %err.code.gep1862 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1861, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1862, align 8
  %err.msg.gep1863 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1861, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1863, align 8
  %err.file.gep1864 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1861, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1864, align 8
  %err.line.gep1865 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1861, i32 0, i32 3
  store i64 0, ptr %err.line.gep1865, align 8
  %err.col.gep1866 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1861, i32 0, i32 4
  store i64 0, ptr %err.col.gep1866, align 8
  %err.ctx.gep1867 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1861, i32 0, i32 5
  %err.ctx0.gep1868 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1867, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1868, align 8
  %err.ctx1.gep1869 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1867, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1869, align 8
  br label %a.wr.done1851

a.wr.err.oob1850:                                 ; preds = %a.wr.check1847
  %arena.cur1870 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1871 = call ptr @dva_arena_alloc(ptr %arena.cur1870, i64 56)
  %err.code.gep1872 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1871, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1872, align 8
  %err.msg.gep1873 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1871, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1873, align 8
  %err.file.gep1874 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1871, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1874, align 8
  %err.line.gep1875 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1871, i32 0, i32 3
  store i64 0, ptr %err.line.gep1875, align 8
  %err.col.gep1876 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1871, i32 0, i32 4
  store i64 0, ptr %err.col.gep1876, align 8
  %err.ctx.gep1877 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1871, i32 0, i32 5
  %err.ctx0.gep1878 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1877, i32 0, i32 0
  store i64 %subtmp1843, ptr %err.ctx0.gep1878, align 8
  %err.ctx1.gep1879 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1877, i32 0, i32 1
  store i64 %a.wr.len1853, ptr %err.ctx1.gep1879, align 8
  br label %a.wr.done1851

a.wr.done1851:                                    ; preds = %a.wr.err.oob1850, %a.wr.err.null1849, %a.wr.ok1848
  %a.wr.niche1880 = phi ptr [ null, %a.wr.ok1848 ], [ %err.alloc1861, %a.wr.err.null1849 ], [ %err.alloc1871, %a.wr.err.oob1850 ]
  %niche.eq.null1881 = icmp eq ptr %a.wr.niche1880, null
  br i1 %niche.eq.null1881, label %choice.then1882, label %choice.else1883

choice.then1882:                                  ; preds = %a.wr.done1851
  br label %choice.exit1884

choice.else1883:                                  ; preds = %a.wr.done1851
  store ptr %a.wr.niche1880, ptr %var._1885, align 8
  store ptr %a.wr.niche1880, ptr %var._1886, align 8
  store ptr %a.wr.niche1880, ptr %var._1887, align 8
  %err.code.gep1888 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1880, i32 0, i32 0
  %err.code1889 = load i64, ptr %err.code.gep1888, align 8
  %err.msg.gep1890 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1880, i32 0, i32 1
  %err.msg.struct1891 = load ptr, ptr %err.msg.gep1890, align 8
  %err.file.gep1892 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1880, i32 0, i32 2
  %err.file.struct1893 = load ptr, ptr %err.file.gep1892, align 8
  %err.line.gep1894 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1880, i32 0, i32 3
  %err.line1895 = load i64, ptr %err.line.gep1894, align 8
  %err.col.gep1896 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1880, i32 0, i32 4
  %err.col1897 = load i64, ptr %err.col.gep1896, align 8
  %err.msg.len1898 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1891, i32 0, i32 0
  %err.msg.len1899 = load i64, ptr %err.msg.len1898, align 8
  %err.msg.len1900 = and i64 %err.msg.len1899, 281474976710655
  %err.msg.len321901 = trunc i64 %err.msg.len1900 to i32
  %err.msg.data1902 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1891, i32 0, i32 1
  %err.msg.data1903 = load ptr, ptr %err.msg.data1902, align 8
  %err.file.len1904 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1893, i32 0, i32 0
  %err.file.len1905 = load i64, ptr %err.file.len1904, align 8
  %err.file.len1906 = and i64 %err.file.len1905, 281474976710655
  %err.file.len321907 = trunc i64 %err.file.len1906 to i32
  %err.file.data1908 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1893, i32 0, i32 1
  %err.file.data1909 = load ptr, ptr %err.file.data1908, align 8
  %err.thread.rec1910 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1911 = icmp ne ptr %err.thread.rec1910, null
  br i1 %err.is.thread1911, label %err.thread1912, label %err.normal1913

choice.exit1884:                                  ; preds = %err.abort1917, %choice.then1882
  br label %choice.exit1300

err.thread1912:                                   ; preds = %choice.else1883
  %err.haserr.gep1914 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1910, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1914, align 8
  %err.err.gep1915 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1910, i32 0, i32 7
  store ptr %a.wr.niche1880, ptr %err.err.gep1915, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1913:                                   ; preds = %choice.else1883
  %err.panic.printf1916 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1889, i32 %err.msg.len321901, ptr %err.msg.data1903, i32 %err.file.len321907, ptr %err.file.data1909, i64 %err.line1895, i64 %err.col1897)
  call void @exit(i32 1)
  unreachable

err.abort1917:                                    ; No predecessors!
  br label %choice.exit1884

a.create1921:                                     ; preds = %choice.exit658
  %arena.cur1923 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1924 = call ptr @dva_arena_alloc(ptr %arena.cur1923, i64 24)
  %arena.cur1925 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1926 = call ptr @dva_arena_alloc(ptr %arena.cur1925, i64 128)
  %a.len.gep1927 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1924, i32 0, i32 0
  store i64 0, ptr %a.len.gep1927, align 8
  %a.data.gep1928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1924, i32 0, i32 1
  store ptr %a.buf1926, ptr %a.data.gep1928, align 8
  %a.cap.gep1929 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1924, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1929, align 8
  store ptr %a.create1924, ptr %var.canon_stack, align 8
  br label %a.after1922

a.after1922:                                      ; preds = %a.create1921, %choice.exit658
  %a.load21930 = load ptr, ptr %var.canon_stack, align 8
  %var.load1931 = load i64, ptr %"var.top'", align 8
  %subtmp1932 = sub i64 %var.load1931, 1
  %a.rd.nonnull1933 = icmp ne ptr %a.load21930, null
  br i1 %a.rd.nonnull1933, label %a.rd.check1934, label %a.rd.err.null1936

a.rd.check1934:                                   ; preds = %a.after1922
  %a.rd.len1939 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21930, i32 0, i32 0
  %a.rd.len1940 = load i64, ptr %a.rd.len1939, align 8
  %a.rd.ge01941 = icmp sge i64 %subtmp1932, 0
  %a.rd.lt1942 = icmp slt i64 %subtmp1932, %a.rd.len1940
  %a.rd.bounds1943 = and i1 %a.rd.ge01941, %a.rd.lt1942
  br i1 %a.rd.bounds1943, label %a.rd.ok1935, label %a.rd.err.oob1937

a.rd.ok1935:                                      ; preds = %a.rd.check1934
  %a.rd.data1944 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21930, i32 0, i32 1
  %a.rd.data1945 = load ptr, ptr %a.rd.data1944, align 8
  %a.rd.elem.gep1946 = getelementptr i64, ptr %a.rd.data1945, i64 %subtmp1932
  %a.rd.elem1947 = load i64, ptr %a.rd.elem.gep1946, align 8
  br label %a.rd.done1938

a.rd.err.null1936:                                ; preds = %a.after1922
  %arena.cur1948 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1949 = call ptr @dva_arena_alloc(ptr %arena.cur1948, i64 56)
  %err.code.gep1950 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1949, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1950, align 8
  %err.msg.gep1951 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1949, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1951, align 8
  %err.file.gep1952 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1949, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1952, align 8
  %err.line.gep1953 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1949, i32 0, i32 3
  store i64 624, ptr %err.line.gep1953, align 8
  %err.col.gep1954 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1949, i32 0, i32 4
  store i64 62, ptr %err.col.gep1954, align 8
  %err.ctx.gep1955 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1949, i32 0, i32 5
  %err.ctx0.gep1956 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1955, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1956, align 8
  %err.ctx1.gep1957 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1955, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1957, align 8
  %err.p2i1958 = ptrtoint ptr %err.alloc1949 to i64
  br label %a.rd.done1938

a.rd.err.oob1937:                                 ; preds = %a.rd.check1934
  %arena.cur1959 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1960 = call ptr @dva_arena_alloc(ptr %arena.cur1959, i64 56)
  %err.code.gep1961 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1960, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1961, align 8
  %err.msg.gep1962 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1960, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1962, align 8
  %err.file.gep1963 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1960, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1963, align 8
  %err.line.gep1964 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1960, i32 0, i32 3
  store i64 624, ptr %err.line.gep1964, align 8
  %err.col.gep1965 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1960, i32 0, i32 4
  store i64 62, ptr %err.col.gep1965, align 8
  %err.ctx.gep1966 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1960, i32 0, i32 5
  %err.ctx0.gep1967 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1966, i32 0, i32 0
  store i64 %subtmp1932, ptr %err.ctx0.gep1967, align 8
  %err.ctx1.gep1968 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1966, i32 0, i32 1
  store i64 %a.rd.len1940, ptr %err.ctx1.gep1968, align 8
  %err.p2i1969 = ptrtoint ptr %err.alloc1960 to i64
  br label %a.rd.done1938

a.rd.done1938:                                    ; preds = %a.rd.err.oob1937, %a.rd.err.null1936, %a.rd.ok1935
  %a.rd.tag1970 = phi i1 [ true, %a.rd.ok1935 ], [ false, %a.rd.err.null1936 ], [ false, %a.rd.err.oob1937 ]
  %a.rd.pay1971 = phi i64 [ %a.rd.elem1947, %a.rd.ok1935 ], [ %err.p2i1958, %a.rd.err.null1936 ], [ %err.p2i1969, %a.rd.err.oob1937 ]
  %ram.tag1972 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1970, 0
  %ram.pay1973 = insertvalue { i1, i64 } %ram.tag1972, i64 %a.rd.pay1971, 1
  %ram.tag1974 = extractvalue { i1, i64 } %ram.pay1973, 0
  br i1 %ram.tag1974, label %choice.then1975, label %choice.else1976

choice.then1975:                                  ; preds = %a.rd.done1938
  %ram.pay1978 = extractvalue { i1, i64 } %ram.pay1973, 1
  store i64 %ram.pay1978, ptr %var._1979, align 8
  br label %choice.exit1977

choice.else1976:                                  ; preds = %a.rd.done1938
  %ram.pay1980 = extractvalue { i1, i64 } %ram.pay1973, 1
  %pay.ptr1981 = inttoptr i64 %ram.pay1980 to ptr
  store ptr %pay.ptr1981, ptr %var._1982, align 8
  br label %choice.exit1977

choice.exit1977:                                  ; preds = %choice.else1976, %choice.then1975
  %choice.res1983 = phi i64 [ %ram.pay1978, %choice.then1975 ], [ 0, %choice.else1976 ]
  store i64 %choice.res1983, ptr %var.canon_indent, align 8
  %var.load1984 = load i64, ptr %var.canon_indent, align 8
  store i64 %var.load1984, ptr %"var.cur_canon_indent'", align 8
  %b.load1985 = load ptr, ptr %var.out, align 8
  %var.load1986 = load i64, ptr %var.canon_indent, align 8
  %call.res1987 = call { i64, ptr } @"formatter::make_spaces"(i64 %var.load1986)
  %arena.cur1988 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1989 = call ptr @dva_arena_alloc(ptr %arena.cur1988, i64 16)
  store { i64, ptr } %call.res1987, ptr %ret.ub.alloc1989, align 8
  %app.str.len1990 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1989, i32 0, i32 0
  %app.str.len1991 = load i64, ptr %app.str.len1990, align 8
  %app.str.len1992 = and i64 %app.str.len1991, 281474976710655
  %app.str.data1993 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1989, i32 0, i32 1
  %app.str.data1994 = load ptr, ptr %app.str.data1993, align 8
  %b.app.cur.len1995 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1985, i32 0, i32 0
  %b.app.cur.len1996 = load i64, ptr %b.app.cur.len1995, align 8
  %b.app.new.len1997 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len1996, i64 %app.str.len1992)
  %sum1998 = extractvalue { i64, i1 } %b.app.new.len1997, 0
  %ovf1999 = extractvalue { i64, i1 } %b.app.new.len1997, 1
  br i1 %ovf1999, label %str_overflow_abort2001, label %b.app.new.len2000

b.app.new.len2000:                                ; preds = %abort.dead2002, %choice.exit1977
  %b.cap2003 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1985, i32 0, i32 2
  %b.cap2004 = load i64, ptr %b.cap2003, align 8
  %b.need.grow2005 = icmp slt i64 %b.cap2004, %sum1998
  br i1 %b.need.grow2005, label %b.grow22006, label %b.nogrow22007

str_overflow_abort2001:                           ; preds = %choice.exit1977
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2002:                                   ; No predecessors!
  br label %b.app.new.len2000

b.grow22006:                                      ; preds = %b.app.new.len2000
  %b.cap22009 = mul i64 %b.cap2004, 2
  %b.cap.small2010 = icmp slt i64 %b.cap22009, 16
  %b.cap.grow2011 = select i1 %b.cap.small2010, i64 16, i64 %b.cap22009
  %b.cap.need2012 = icmp slt i64 %b.cap.grow2011, %sum1998
  %b.new.cap2013 = select i1 %b.cap.need2012, i64 %sum1998, i64 %b.cap.grow2011
  %b.cur.len22014 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1985, i32 0, i32 0
  %b.cur.len22015 = load i64, ptr %b.cur.len22014, align 8
  %b.cur.data22016 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1985, i32 0, i32 1
  %b.cur.data22017 = load ptr, ptr %b.cur.data22016, align 8
  %b.new.buf.len22018 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap2013, i64 1)
  %sum2019 = extractvalue { i64, i1 } %b.new.buf.len22018, 0
  %ovf2020 = extractvalue { i64, i1 } %b.new.buf.len22018, 1
  br i1 %ovf2020, label %str_overflow_abort2022, label %b.new.buf.len22021

b.nogrow22007:                                    ; preds = %b.app.new.len2000
  br label %b.grow_done2008

b.grow_done2008:                                  ; preds = %b.nogrow22007, %b.new.buf.len22021
  %b.app.data2029 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1985, i32 0, i32 1
  %b.app.data2030 = load ptr, ptr %b.app.data2029, align 8
  %b.app.dst2031 = getelementptr i8, ptr %b.app.data2030, i64 %b.app.cur.len1996
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst2031, ptr align 1 %app.str.data1994, i64 %app.str.len1992, i1 false)
  %b.app.nul2032 = getelementptr i8, ptr %b.app.data2030, i64 %sum1998
  store i8 0, ptr %b.app.nul2032, align 1
  %b.len.gep2033 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1985, i32 0, i32 0
  store i64 %sum1998, ptr %b.len.gep2033, align 8
  %b.load2034 = load ptr, ptr %var.out, align 8
  %var.load2035 = load ptr, ptr %var.body, align 8
  %call.res2036 = call { i64, ptr } @"formatter::format_code_body"(ptr %var.load2035)
  %arena.cur2037 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2038 = call ptr @dva_arena_alloc(ptr %arena.cur2037, i64 16)
  store { i64, ptr } %call.res2036, ptr %ret.ub.alloc2038, align 8
  %app.str.len2039 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2038, i32 0, i32 0
  %app.str.len2040 = load i64, ptr %app.str.len2039, align 8
  %app.str.len2041 = and i64 %app.str.len2040, 281474976710655
  %app.str.data2042 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2038, i32 0, i32 1
  %app.str.data2043 = load ptr, ptr %app.str.data2042, align 8
  %b.app.cur.len2044 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2034, i32 0, i32 0
  %b.app.cur.len2045 = load i64, ptr %b.app.cur.len2044, align 8
  %b.app.new.len2046 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len2045, i64 %app.str.len2041)
  %sum2047 = extractvalue { i64, i1 } %b.app.new.len2046, 0
  %ovf2048 = extractvalue { i64, i1 } %b.app.new.len2046, 1
  br i1 %ovf2048, label %str_overflow_abort2050, label %b.app.new.len2049

b.new.buf.len22021:                               ; preds = %abort.dead2023, %b.grow22006
  %arena.cur2024 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf22025 = call ptr @dva_arena_alloc(ptr %arena.cur2024, i64 %sum2019)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf22025, ptr align 1 %b.cur.data22017, i64 %b.cur.len22015, i1 false)
  %b.grow2.nul2026 = getelementptr i8, ptr %b.new.buf22025, i64 %b.cur.len22015
  store i8 0, ptr %b.grow2.nul2026, align 1
  %b.new.data2.gep2027 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1985, i32 0, i32 1
  store ptr %b.new.buf22025, ptr %b.new.data2.gep2027, align 8
  %b.new.cap2.gep2028 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1985, i32 0, i32 2
  store i64 %b.new.cap2013, ptr %b.new.cap2.gep2028, align 8
  br label %b.grow_done2008

str_overflow_abort2022:                           ; preds = %b.grow22006
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2023:                                   ; No predecessors!
  br label %b.new.buf.len22021

b.app.new.len2049:                                ; preds = %abort.dead2051, %b.grow_done2008
  %b.cap2052 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2034, i32 0, i32 2
  %b.cap2053 = load i64, ptr %b.cap2052, align 8
  %b.need.grow2054 = icmp slt i64 %b.cap2053, %sum2047
  br i1 %b.need.grow2054, label %b.grow22055, label %b.nogrow22056

str_overflow_abort2050:                           ; preds = %b.grow_done2008
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2051:                                   ; No predecessors!
  br label %b.app.new.len2049

b.grow22055:                                      ; preds = %b.app.new.len2049
  %b.cap22058 = mul i64 %b.cap2053, 2
  %b.cap.small2059 = icmp slt i64 %b.cap22058, 16
  %b.cap.grow2060 = select i1 %b.cap.small2059, i64 16, i64 %b.cap22058
  %b.cap.need2061 = icmp slt i64 %b.cap.grow2060, %sum2047
  %b.new.cap2062 = select i1 %b.cap.need2061, i64 %sum2047, i64 %b.cap.grow2060
  %b.cur.len22063 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2034, i32 0, i32 0
  %b.cur.len22064 = load i64, ptr %b.cur.len22063, align 8
  %b.cur.data22065 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2034, i32 0, i32 1
  %b.cur.data22066 = load ptr, ptr %b.cur.data22065, align 8
  %b.new.buf.len22067 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap2062, i64 1)
  %sum2068 = extractvalue { i64, i1 } %b.new.buf.len22067, 0
  %ovf2069 = extractvalue { i64, i1 } %b.new.buf.len22067, 1
  br i1 %ovf2069, label %str_overflow_abort2071, label %b.new.buf.len22070

b.nogrow22056:                                    ; preds = %b.app.new.len2049
  br label %b.grow_done2057

b.grow_done2057:                                  ; preds = %b.nogrow22056, %b.new.buf.len22070
  %b.app.data2078 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2034, i32 0, i32 1
  %b.app.data2079 = load ptr, ptr %b.app.data2078, align 8
  %b.app.dst2080 = getelementptr i8, ptr %b.app.data2079, i64 %b.app.cur.len2045
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst2080, ptr align 1 %app.str.data2043, i64 %app.str.len2041, i1 false)
  %b.app.nul2081 = getelementptr i8, ptr %b.app.data2079, i64 %sum2047
  store i8 0, ptr %b.app.nul2081, align 1
  %b.len.gep2082 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2034, i32 0, i32 0
  store i64 %sum2047, ptr %b.len.gep2082, align 8
  %b.load2083 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len2084 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2083, i32 0, i32 0
  %b.rn.cur.len2085 = load i64, ptr %b.rn.cur.len2084, align 8
  %b.rn.new.len2086 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len2085, i64 1)
  %sum2087 = extractvalue { i64, i1 } %b.rn.new.len2086, 0
  %ovf2088 = extractvalue { i64, i1 } %b.rn.new.len2086, 1
  br i1 %ovf2088, label %str_overflow_abort2090, label %b.rn.new.len2089

b.new.buf.len22070:                               ; preds = %abort.dead2072, %b.grow22055
  %arena.cur2073 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf22074 = call ptr @dva_arena_alloc(ptr %arena.cur2073, i64 %sum2068)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf22074, ptr align 1 %b.cur.data22066, i64 %b.cur.len22064, i1 false)
  %b.grow2.nul2075 = getelementptr i8, ptr %b.new.buf22074, i64 %b.cur.len22064
  store i8 0, ptr %b.grow2.nul2075, align 1
  %b.new.data2.gep2076 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2034, i32 0, i32 1
  store ptr %b.new.buf22074, ptr %b.new.data2.gep2076, align 8
  %b.new.cap2.gep2077 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2034, i32 0, i32 2
  store i64 %b.new.cap2062, ptr %b.new.cap2.gep2077, align 8
  br label %b.grow_done2057

str_overflow_abort2071:                           ; preds = %b.grow22055
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2072:                                   ; No predecessors!
  br label %b.new.buf.len22070

b.rn.new.len2089:                                 ; preds = %abort.dead2091, %b.grow_done2057
  %b.cap2092 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2083, i32 0, i32 2
  %b.cap2093 = load i64, ptr %b.cap2092, align 8
  %b.need.grow2094 = icmp slt i64 %b.cap2093, %sum2087
  br i1 %b.need.grow2094, label %b.grow22095, label %b.nogrow22096

str_overflow_abort2090:                           ; preds = %b.grow_done2057
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2091:                                   ; No predecessors!
  br label %b.rn.new.len2089

b.grow22095:                                      ; preds = %b.rn.new.len2089
  %b.cap22098 = mul i64 %b.cap2093, 2
  %b.cap.small2099 = icmp slt i64 %b.cap22098, 16
  %b.cap.grow2100 = select i1 %b.cap.small2099, i64 16, i64 %b.cap22098
  %b.cap.need2101 = icmp slt i64 %b.cap.grow2100, %sum2087
  %b.new.cap2102 = select i1 %b.cap.need2101, i64 %sum2087, i64 %b.cap.grow2100
  %b.cur.len22103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2083, i32 0, i32 0
  %b.cur.len22104 = load i64, ptr %b.cur.len22103, align 8
  %b.cur.data22105 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2083, i32 0, i32 1
  %b.cur.data22106 = load ptr, ptr %b.cur.data22105, align 8
  %b.new.buf.len22107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap2102, i64 1)
  %sum2108 = extractvalue { i64, i1 } %b.new.buf.len22107, 0
  %ovf2109 = extractvalue { i64, i1 } %b.new.buf.len22107, 1
  br i1 %ovf2109, label %str_overflow_abort2111, label %b.new.buf.len22110

b.nogrow22096:                                    ; preds = %b.rn.new.len2089
  br label %b.grow_done2097

b.grow_done2097:                                  ; preds = %b.nogrow22096, %b.new.buf.len22110
  %b.rn.data2118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2083, i32 0, i32 1
  %b.rn.data2119 = load ptr, ptr %b.rn.data2118, align 8
  %b.rn.dst2120 = getelementptr i8, ptr %b.rn.data2119, i64 %b.rn.cur.len2085
  br i1 true, label %br.b1.651, label %br.c2.651

b.new.buf.len22110:                               ; preds = %abort.dead2112, %b.grow22095
  %arena.cur2113 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf22114 = call ptr @dva_arena_alloc(ptr %arena.cur2113, i64 %sum2108)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf22114, ptr align 1 %b.cur.data22106, i64 %b.cur.len22104, i1 false)
  %b.grow2.nul2115 = getelementptr i8, ptr %b.new.buf22114, i64 %b.cur.len22104
  store i8 0, ptr %b.grow2.nul2115, align 1
  %b.new.data2.gep2116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2083, i32 0, i32 1
  store ptr %b.new.buf22114, ptr %b.new.data2.gep2116, align 8
  %b.new.cap2.gep2117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2083, i32 0, i32 2
  store i64 %b.new.cap2102, ptr %b.new.cap2.gep2117, align 8
  br label %b.grow_done2097

str_overflow_abort2111:                           ; preds = %b.grow22095
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2112:                                   ; No predecessors!
  br label %b.new.buf.len22110

br.b1.651:                                        ; preds = %b.grow_done2097
  store i8 10, ptr %b.rn.dst2120, align 1
  br label %br.done.651

br.c2.651:                                        ; preds = %b.grow_done2097
  br i1 true, label %br.b2.651, label %br.c3.651

br.b2.651:                                        ; preds = %br.c2.651
  store i8 -64, ptr %b.rn.dst2120, align 1
  %br.dst12121 = getelementptr i8, ptr %b.rn.dst2120, i64 1
  store i8 -118, ptr %br.dst12121, align 1
  br label %br.done.651

br.c3.651:                                        ; preds = %br.c2.651
  br i1 true, label %br.b3.651, label %br.b4.651

br.b3.651:                                        ; preds = %br.c3.651
  store i8 -32, ptr %b.rn.dst2120, align 1
  %br.dst1.32122 = getelementptr i8, ptr %b.rn.dst2120, i64 1
  store i8 -128, ptr %br.dst1.32122, align 1
  %br.dst2.32123 = getelementptr i8, ptr %b.rn.dst2120, i64 2
  store i8 -118, ptr %br.dst2.32123, align 1
  br label %br.done.651

br.b4.651:                                        ; preds = %br.c3.651
  store i8 -16, ptr %b.rn.dst2120, align 1
  %br.dst1.42124 = getelementptr i8, ptr %b.rn.dst2120, i64 1
  store i8 -128, ptr %br.dst1.42124, align 1
  %br.dst2.42125 = getelementptr i8, ptr %b.rn.dst2120, i64 2
  store i8 -128, ptr %br.dst2.42125, align 1
  %br.dst3.42126 = getelementptr i8, ptr %b.rn.dst2120, i64 3
  store i8 -118, ptr %br.dst3.42126, align 1
  br label %br.done.651

br.done.651:                                      ; preds = %br.b4.651, %br.b3.651, %br.b2.651, %br.b1.651
  %br.nul2127 = getelementptr i8, ptr %b.rn.data2119, i64 %sum2087
  store i8 0, ptr %br.nul2127, align 1
  %b.len.gep2128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2083, i32 0, i32 0
  store i64 %sum2087, ptr %b.len.gep2128, align 8
  br label %choice.exit233

b.freeze.check:                                   ; preds = %loop.exit.644
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data2133, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data2133, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data2133, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len2132, 1
  %arena.cur2134 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur2134, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data2133, i64 %b.freeze.len2132, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len2132
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.644
  %b.freeze.data2135 = phi ptr [ %b.freeze.data2133, %loop.exit.644 ], [ %b.freeze.data2133, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur2136 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur2136, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len2132, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data2135, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2131, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2131, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2131, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.res, align 8
  %var.load2137 = load ptr, ptr %var.res, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2137, i32 0, i32 0
  %str.len.query2138 = load i64, ptr %str.len.query, align 8
  %str.len.query2139 = and i64 %str.len.query2138, 281474976710655
  %str.tag = lshr i64 %str.len.query2138, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %b.freeze.done
  store i64 %str.len.query2139, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.652, align 8
  br label %loop.header.652

tag.slow_check:                                   ; preds = %b.freeze.done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.652:                                  ; preds = %loop.latch.652, %str_ok
  %counter.load2140 = load i64, ptr %loop.idx.652, align 8
  br label %loop.body.652

loop.body.652:                                    ; preds = %loop.header.652
  %loop.rel.i2141 = sub i64 %counter.load2140, 0
  store i64 1, ptr %loop.step.652, align 8
  store i64 %loop.rel.i2141, ptr %var._i2142, align 8
  store i64 %counter.load2140, ptr %var._2143, align 8
  %var.load2144 = load i64, ptr %"var.end'", align 8
  %cmptmp2145 = icmp sgt i64 %var.load2144, 1
  br i1 %cmptmp2145, label %and.653.then, label %and.653.else

loop.exit.nat.652:                                ; No predecessors!
  br label %loop.exit.652

loop.latch.652:                                   ; preds = %choice.exit2172
  %step.val2175 = load i64, ptr %loop.step.652, align 8
  %loop.next2176 = add i64 %counter.load2140, %step.val2175
  store i64 %loop.next2176, ptr %loop.idx.652, align 8
  br label %loop.header.652

loop.exit.652:                                    ; preds = %choice.else2171, %loop.exit.nat.652
  %var.load2177 = load ptr, ptr %var.res, align 8
  %s.read.len2178 = getelementptr inbounds { i64, ptr }, ptr %var.load2177, i32 0, i32 0
  %s.read.len2179 = load i64, ptr %s.read.len2178, align 8
  %s.read.len2180 = and i64 %s.read.len2179, 281474976710655
  %s.read.data2181 = getelementptr inbounds { i64, ptr }, ptr %var.load2177, i32 0, i32 1
  %s.read.data2182 = load ptr, ptr %s.read.data2181, align 8
  %var.load2183 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len2180, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len2180
  %final.start = select i1 %start.gt.len, i64 %s.read.len2180, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load2183, 0
  %rel.end = add i64 %s.read.len2180, %var.load2183
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load2183
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len2180
  %final.end = select i1 %end.gt.len, i64 %s.read.len2180, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data2182, i64 %final.start
  %arena.cur2184 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur2184, i64 16)
  %str.build.len.gep2185 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep2185, align 8
  %str.build.data.gep2186 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep2186, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

and.653.then:                                     ; preds = %loop.body.652
  %var.load2146 = load ptr, ptr %var.res, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2146, i32 0, i32 0
  %s.read.len2147 = load i64, ptr %s.read.len, align 8
  %s.read.len2148 = and i64 %s.read.len2147, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2146, i32 0, i32 1
  %s.read.data2149 = load ptr, ptr %s.read.data, align 8
  %var.load2150 = load i64, ptr %"var.end'", align 8
  %subtmp2151 = sub i64 %var.load2150, 1
  %idx.oob = icmp uge i64 %subtmp2151, %s.read.len2148
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.653.else:                                     ; preds = %loop.body.652
  br label %and.653.exit

and.653.exit:                                     ; preds = %and.653.else, %idx_ok
  %and.653.phi = phi i1 [ %cmptmp2153, %idx_ok ], [ %cmptmp2145, %and.653.else ]
  br i1 %and.653.phi, label %and.654.then, label %and.654.else

idx_ok:                                           ; preds = %abort.dead2152, %and.653.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data2149, i64 %subtmp2151
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp2153 = icmp eq i64 %s.byte.val, 10
  br label %and.653.exit

idx_oob:                                          ; preds = %and.653.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead2152:                                   ; No predecessors!
  br label %idx_ok

and.654.then:                                     ; preds = %and.653.exit
  %var.load2154 = load ptr, ptr %var.res, align 8
  %s.read.len2155 = getelementptr inbounds { i64, ptr }, ptr %var.load2154, i32 0, i32 0
  %s.read.len2156 = load i64, ptr %s.read.len2155, align 8
  %s.read.len2157 = and i64 %s.read.len2156, 281474976710655
  %s.read.data2158 = getelementptr inbounds { i64, ptr }, ptr %var.load2154, i32 0, i32 1
  %s.read.data2159 = load ptr, ptr %s.read.data2158, align 8
  %var.load2160 = load i64, ptr %"var.end'", align 8
  %subtmp2161 = sub i64 %var.load2160, 2
  %idx.oob2162 = icmp uge i64 %subtmp2161, %s.read.len2157
  br i1 %idx.oob2162, label %idx_oob2164, label %idx_ok2163

and.654.else:                                     ; preds = %and.653.exit
  br label %and.654.exit

and.654.exit:                                     ; preds = %and.654.else, %idx_ok2163
  %and.654.phi = phi i1 [ %cmptmp2169, %idx_ok2163 ], [ %and.653.phi, %and.654.else ]
  br i1 %and.654.phi, label %choice.then2170, label %choice.else2171

idx_ok2163:                                       ; preds = %abort.dead2165, %and.654.then
  %s.byte.gep2166 = getelementptr i8, ptr %s.read.data2159, i64 %subtmp2161
  %s.byte2167 = load i8, ptr %s.byte.gep2166, align 1
  %s.byte.val2168 = zext i8 %s.byte2167 to i64
  %cmptmp2169 = icmp eq i64 %s.byte.val2168, 10
  br label %and.654.exit

idx_oob2164:                                      ; preds = %and.654.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead2165:                                   ; No predecessors!
  br label %idx_ok2163

choice.then2170:                                  ; preds = %and.654.exit
  %var.load2173 = load i64, ptr %"var.end'", align 8
  %subtmp2174 = sub i64 %var.load2173, 1
  store i64 %subtmp2174, ptr %"var.end'", align 8
  br label %choice.exit2172

choice.else2171:                                  ; preds = %and.654.exit
  br label %loop.exit.652

choice.exit2172:                                  ; preds = %choice.then2170
  br label %loop.latch.652
}

define { i64, ptr } @"formatter::format_safe_fallback"(ptr %0) #0 {
entry:
  %var._76 = alloca i64, align 8
  %var._i75 = alloca i64, align 8
  %loop.step.657 = alloca i64, align 8
  %loop.idx.657 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %loop.step.655 = alloca i64, align 8
  %loop.idx.655 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

a.create:                                         ; preds = %b.buf.len1
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create4, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.buf.len1
  %a.load2 = load ptr, ptr %var.lines, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len6 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data7 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.655, align 8
  br label %loop.header.655

loop.header.655:                                  ; preds = %loop.latch.655, %a.after
  %counter.load = load i64, ptr %loop.idx.655, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len6
  br i1 %loop.cond, label %loop.body.655, label %loop.exit.nat.655

loop.body.655:                                    ; preds = %loop.header.655
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.655, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data7, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ln, align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load8 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load8, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %app.str.len9 = load i64, ptr %app.str.len, align 8
  %app.str.len10 = and i64 %app.str.len9, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %app.str.data11 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len12 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len12, i64 %app.str.len10)
  %sum13 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf14 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %b.app.new.len15

loop.exit.nat.655:                                ; preds = %loop.header.655
  br label %loop.exit.655

loop.latch.655:                                   ; preds = %br.done.656
  %step.val = load i64, ptr %loop.step.655, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.655, align 8
  br label %loop.header.655

loop.exit.655:                                    ; preds = %loop.exit.nat.655
  %var.load64 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load64, i32 0, i32 0
  %b.freeze.len65 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load64, i32 0, i32 1
  %b.freeze.data66 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.app.new.len15:                                  ; preds = %abort.dead17, %loop.body.655
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap18 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap18, %sum13
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort16:                             ; preds = %loop.body.655
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %b.app.new.len15

b.grow2:                                          ; preds = %b.app.new.len15
  %b.cap2 = mul i64 %b.cap18, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum13
  %b.new.cap = select i1 %b.cap.need, i64 %sum13, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len219 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data220 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum21 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf22 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf22, label %str_overflow_abort24, label %b.new.buf.len223

b.nogrow2:                                        ; preds = %b.app.new.len15
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len223
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data27 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data27, i64 %b.app.cur.len12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data11, i64 %app.str.len10, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data27, i64 %sum13
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum13, ptr %b.len.gep28, align 8
  %b.load29 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  %b.rn.cur.len30 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len30, i64 1)
  %sum31 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf32 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf32, label %str_overflow_abort34, label %b.rn.new.len33

b.new.buf.len223:                                 ; preds = %abort.dead25, %b.grow2
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data220, i64 %b.cur.len219, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len219
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort24:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %b.new.buf.len223

b.rn.new.len33:                                   ; preds = %abort.dead35, %b.grow_done
  %b.cap36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap36, align 8
  %b.need.grow38 = icmp slt i64 %b.cap37, %sum31
  br i1 %b.need.grow38, label %b.grow239, label %b.nogrow240

str_overflow_abort34:                             ; preds = %b.grow_done
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %b.rn.new.len33

b.grow239:                                        ; preds = %b.rn.new.len33
  %b.cap242 = mul i64 %b.cap37, 2
  %b.cap.small43 = icmp slt i64 %b.cap242, 16
  %b.cap.grow44 = select i1 %b.cap.small43, i64 16, i64 %b.cap242
  %b.cap.need45 = icmp slt i64 %b.cap.grow44, %sum31
  %b.new.cap46 = select i1 %b.cap.need45, i64 %sum31, i64 %b.cap.grow44
  %b.cur.len247 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  %b.cur.len248 = load i64, ptr %b.cur.len247, align 8
  %b.cur.data249 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  %b.cur.data250 = load ptr, ptr %b.cur.data249, align 8
  %b.new.buf.len251 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap46, i64 1)
  %sum52 = extractvalue { i64, i1 } %b.new.buf.len251, 0
  %ovf53 = extractvalue { i64, i1 } %b.new.buf.len251, 1
  br i1 %ovf53, label %str_overflow_abort55, label %b.new.buf.len254

b.nogrow240:                                      ; preds = %b.rn.new.len33
  br label %b.grow_done41

b.grow_done41:                                    ; preds = %b.nogrow240, %b.new.buf.len254
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  %b.rn.data62 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data62, i64 %b.rn.cur.len30
  br i1 true, label %br.b1.656, label %br.c2.656

b.new.buf.len254:                                 ; preds = %abort.dead56, %b.grow239
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf258 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 %sum52)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf258, ptr align 1 %b.cur.data250, i64 %b.cur.len248, i1 false)
  %b.grow2.nul59 = getelementptr i8, ptr %b.new.buf258, i64 %b.cur.len248
  store i8 0, ptr %b.grow2.nul59, align 1
  %b.new.data2.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  store ptr %b.new.buf258, ptr %b.new.data2.gep60, align 8
  %b.new.cap2.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 2
  store i64 %b.new.cap46, ptr %b.new.cap2.gep61, align 8
  br label %b.grow_done41

str_overflow_abort55:                             ; preds = %b.grow239
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %b.new.buf.len254

br.b1.656:                                        ; preds = %b.grow_done41
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.656

br.c2.656:                                        ; preds = %b.grow_done41
  br i1 true, label %br.b2.656, label %br.c3.656

br.b2.656:                                        ; preds = %br.c2.656
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.656

br.c3.656:                                        ; preds = %br.c2.656
  br i1 true, label %br.b3.656, label %br.b4.656

br.b3.656:                                        ; preds = %br.c3.656
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.656

br.b4.656:                                        ; preds = %br.c3.656
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.656

br.done.656:                                      ; preds = %br.b4.656, %br.b3.656, %br.b2.656, %br.b1.656
  %br.nul = getelementptr i8, ptr %b.rn.data62, i64 %sum31
  store i8 0, ptr %br.nul, align 1
  %b.len.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  store i64 %sum31, ptr %b.len.gep63, align 8
  br label %loop.latch.655

b.freeze.check:                                   ; preds = %loop.exit.655
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data66, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data66, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data66, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len65, 1
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data66, i64 %b.freeze.len65, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len65
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.655
  %b.freeze.data68 = phi ptr [ %b.freeze.data66, %loop.exit.655 ], [ %b.freeze.data66, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len65, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data68, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load64, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load64, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load64, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.res, align 8
  %var.load70 = load ptr, ptr %var.res, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load70, i32 0, i32 0
  %str.len.query71 = load i64, ptr %str.len.query, align 8
  %str.len.query72 = and i64 %str.len.query71, 281474976710655
  %str.tag = lshr i64 %str.len.query71, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %b.freeze.done
  store i64 %str.len.query72, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.657, align 8
  br label %loop.header.657

tag.slow_check:                                   ; preds = %b.freeze.done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.657:                                  ; preds = %loop.latch.657, %str_ok
  %counter.load73 = load i64, ptr %loop.idx.657, align 8
  br label %loop.body.657

loop.body.657:                                    ; preds = %loop.header.657
  %loop.rel.i74 = sub i64 %counter.load73, 0
  store i64 1, ptr %loop.step.657, align 8
  store i64 %loop.rel.i74, ptr %var._i75, align 8
  store i64 %counter.load73, ptr %var._76, align 8
  %var.load77 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sgt i64 %var.load77, 1
  br i1 %cmptmp, label %and.658.then, label %and.658.else

loop.exit.nat.657:                                ; No predecessors!
  br label %loop.exit.657

loop.latch.657:                                   ; preds = %choice.exit
  %step.val103 = load i64, ptr %loop.step.657, align 8
  %loop.next104 = add i64 %counter.load73, %step.val103
  store i64 %loop.next104, ptr %loop.idx.657, align 8
  br label %loop.header.657

loop.exit.657:                                    ; preds = %choice.else, %loop.exit.nat.657
  %var.load105 = load ptr, ptr %var.res, align 8
  %s.read.len106 = getelementptr inbounds { i64, ptr }, ptr %var.load105, i32 0, i32 0
  %s.read.len107 = load i64, ptr %s.read.len106, align 8
  %s.read.len108 = and i64 %s.read.len107, 281474976710655
  %s.read.data109 = getelementptr inbounds { i64, ptr }, ptr %var.load105, i32 0, i32 1
  %s.read.data110 = load ptr, ptr %s.read.data109, align 8
  %var.load111 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len108, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len108
  %final.start = select i1 %start.gt.len, i64 %s.read.len108, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load111, 0
  %rel.end = add i64 %s.read.len108, %var.load111
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load111
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len108
  %final.end = select i1 %end.gt.len, i64 %s.read.len108, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data110, i64 %final.start
  %arena.cur112 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 16)
  %str.build.len.gep113 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep113, align 8
  %str.build.data.gep114 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep114, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

and.658.then:                                     ; preds = %loop.body.657
  %var.load78 = load ptr, ptr %var.res, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 0
  %s.read.len79 = load i64, ptr %s.read.len, align 8
  %s.read.len80 = and i64 %s.read.len79, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %s.read.data81 = load ptr, ptr %s.read.data, align 8
  %var.load82 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load82, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len80
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.658.else:                                     ; preds = %loop.body.657
  br label %and.658.exit

and.658.exit:                                     ; preds = %and.658.else, %idx_ok
  %and.658.phi = phi i1 [ %cmptmp84, %idx_ok ], [ %cmptmp, %and.658.else ]
  br i1 %and.658.phi, label %and.659.then, label %and.659.else

idx_ok:                                           ; preds = %abort.dead83, %and.658.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data81, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp84 = icmp eq i64 %s.byte.val, 10
  br label %and.658.exit

idx_oob:                                          ; preds = %and.658.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead83:                                     ; No predecessors!
  br label %idx_ok

and.659.then:                                     ; preds = %and.658.exit
  %var.load85 = load ptr, ptr %var.res, align 8
  %s.read.len86 = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 0
  %s.read.len87 = load i64, ptr %s.read.len86, align 8
  %s.read.len88 = and i64 %s.read.len87, 281474976710655
  %s.read.data89 = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 1
  %s.read.data90 = load ptr, ptr %s.read.data89, align 8
  %var.load91 = load i64, ptr %"var.end'", align 8
  %subtmp92 = sub i64 %var.load91, 2
  %idx.oob93 = icmp uge i64 %subtmp92, %s.read.len88
  br i1 %idx.oob93, label %idx_oob95, label %idx_ok94

and.659.else:                                     ; preds = %and.658.exit
  br label %and.659.exit

and.659.exit:                                     ; preds = %and.659.else, %idx_ok94
  %and.659.phi = phi i1 [ %cmptmp100, %idx_ok94 ], [ %and.658.phi, %and.659.else ]
  br i1 %and.659.phi, label %choice.then, label %choice.else

idx_ok94:                                         ; preds = %abort.dead96, %and.659.then
  %s.byte.gep97 = getelementptr i8, ptr %s.read.data90, i64 %subtmp92
  %s.byte98 = load i8, ptr %s.byte.gep97, align 1
  %s.byte.val99 = zext i8 %s.byte98 to i64
  %cmptmp100 = icmp eq i64 %s.byte.val99, 10
  br label %and.659.exit

idx_oob95:                                        ; preds = %and.659.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %idx_ok94

choice.then:                                      ; preds = %and.659.exit
  %var.load101 = load i64, ptr %"var.end'", align 8
  %subtmp102 = sub i64 %var.load101, 1
  store i64 %subtmp102, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.659.exit
  br label %loop.exit.657

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.657
}

define { i1, i64 } @"formatter::parse_ast_signature"(ptr %0, ptr %1) #0 {
entry:
  %cat.ibuf438 = alloca [24 x i8], align 1
  %cat.ibuf432 = alloca [24 x i8], align 1
  %cat.ibuf426 = alloca [24 x i8], align 1
  %var.fn409 = alloca ptr, align 8
  %var.d340 = alloca ptr, align 8
  %cat.ibuf128 = alloca [24 x i8], align 1
  %cat.ibuf122 = alloca [24 x i8], align 1
  %cat.ibuf = alloca [24 x i8], align 1
  %var.fn = alloca ptr, align 8
  %var.d = alloca ptr, align 8
  %var.prog = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.diags = alloca ptr, align 8
  %var.prog_res = alloca { i1, i64 }, align 8
  %var.ppr = alloca ptr, align 8
  %var.filename = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr %1, ptr %var.filename, align 8
  call void @"diag::enable_capture"()
  %var.load = load ptr, ptr %var.filename, align 8
  call void @"lexer::lex_set_file"(ptr %var.load)
  %var.load1 = load ptr, ptr %var.src, align 8
  %call.res = call ptr @"parser::parse_init"(ptr %var.load1)
  store ptr %call.res, ptr %var.ppr, align 8
  %var.load2 = load ptr, ptr %var.ppr, align 8
  %var.load3 = load ptr, ptr %var.filename, align 8
  call void @"parser::parser_set_file"(ptr %var.load2, ptr %var.load3)
  %var.load4 = load ptr, ptr %var.ppr, align 8
  %fld.gep = getelementptr inbounds { { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, { ptr, i64, i64, i64, i64, i1, i1, ptr }, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i1, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64, i1, i1, i1, ptr, i1, ptr, ptr, ptr, ptr, i1, i1, i1 }, ptr %var.load4, i32 0, i32 16
  store i1 true, ptr %fld.gep, align 1
  %var.load5 = load ptr, ptr %var.ppr, align 8
  %call.res6 = call { i1, i64 } @"parser::parse_program"(ptr %var.load5)
  store { i1, i64 } %call.res6, ptr %var.prog_res, align 8
  %call.res7 = call ptr @"diag::get_captured"()
  store ptr %call.res7, ptr %var.diags, align 8
  call void @"diag::disable_capture"()
  %var.load8 = load { i1, i64 }, ptr %var.prog_res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load8, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load8, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.prog, align 8
  %var.load9 = load ptr, ptr %var.diags, align 8
  %a.load = load ptr, ptr %var.diags, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %entry
  %var.load220 = load ptr, ptr %var.diags, align 8
  %a.load221 = load ptr, ptr %var.diags, align 8
  %a.null222 = icmp eq ptr %a.load221, null
  br i1 %a.null222, label %a.create223, label %a.after224

choice.exit:                                      ; preds = %choice.exit238, %choice.exit15
  %choice.res567 = phi { i1, i64 } [ %choice.res219, %choice.exit15 ], [ %choice.res566, %choice.exit238 ]
  ret { i1, i64 } %choice.res567

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create10, ptr %var.diags, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.diags, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query12 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query12, 0
  br i1 %cmptmp, label %choice.then13, label %choice.else14

choice.then13:                                    ; preds = %a.after
  %var.load16 = load ptr, ptr %var.diags, align 8
  %a.load17 = load ptr, ptr %var.diags, align 8
  %a.null18 = icmp eq ptr %a.load17, null
  br i1 %a.null18, label %a.create19, label %a.after20

choice.else14:                                    ; preds = %a.after
  %var.load214 = load ptr, ptr %var.prog, align 8
  %call.res215 = call { i64, ptr } @"show::show_expr"(ptr %var.load214)
  %arena.cur216 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 16)
  store { i64, ptr } %call.res215, ptr %ret.ub.alloc, align 8
  %p.to.i64217 = ptrtoint ptr %ret.ub.alloc to i64
  %ram.pay218 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64217, 1
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %concat.tot.len190
  %choice.res219 = phi { i1, i64 } [ %ram.pay213, %concat.tot.len190 ], [ %ram.pay218, %choice.else14 ]
  br label %choice.exit

a.create19:                                       ; preds = %choice.then13
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 128)
  %a.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 0
  store i64 0, ptr %a.len.gep25, align 8
  %a.data.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 1
  store ptr %a.buf24, ptr %a.data.gep26, align 8
  %a.cap.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 2
  store i64 16, ptr %a.cap.gep27, align 8
  store ptr %a.create22, ptr %var.diags, align 8
  br label %a.after20

a.after20:                                        ; preds = %a.create19, %choice.then13
  %a.load228 = load ptr, ptr %var.diags, align 8
  %a.rd.nonnull = icmp ne ptr %a.load228, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after20
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 0
  %a.rd.len29 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len29
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 1
  %a.rd.data30 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data30, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after20
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 668, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 28, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 56)
  %err.code.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 0
  store i64 4011, ptr %err.code.gep34, align 8
  %err.msg.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep35, align 8
  %err.file.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep36, align 8
  %err.line.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 3
  store i64 668, ptr %err.line.gep37, align 8
  %err.col.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 4
  store i64 28, ptr %err.col.gep38, align 8
  %err.ctx.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 5
  %err.ctx0.gep40 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep39, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep40, align 8
  %err.ctx1.gep41 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep39, i32 0, i32 1
  store i64 %a.rd.len29, ptr %err.ctx1.gep41, align 8
  %err.p2i42 = ptrtoint ptr %err.alloc33 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i42, %a.rd.err.oob ]
  %ram.tag43 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay44 = insertvalue { i1, i64 } %ram.tag43, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay44, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.661, label %unwrap.abort.661

unwrap.pos.661:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay44, 1
  %pay.ptr63 = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr63, ptr %var.d, align 8
  %var.load64 = load ptr, ptr %var.d, align 8
  %fld.gep65 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load64, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep65, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len66 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len67 = and i64 %eq.lhs.len66, 281474976710655
  %str.tag68 = lshr i64 %eq.lhs.len66, 48
  %tag.immortal70 = icmp eq i64 %str.tag68, 0
  %active.gen71 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current72 = icmp eq i64 %str.tag68, %active.gen71
  %tag.fast.ok73 = or i1 %tag.immortal70, %tag.current72
  br i1 %tag.fast.ok73, label %str_ok69, label %tag.slow_check74

unwrap.abort.661:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay44, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep45, align 8
  %err.msg.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep46, align 8
  %err.file.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep47, align 8
  %err.line.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep48, align 8
  %err.col.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep49, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len50 = load i64, ptr %err.msg.len, align 8
  %err.msg.len51 = and i64 %err.msg.len50, 281474976710655
  %str.tag = lshr i64 %err.msg.len50, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %unwrap.abort.661
  %err.msg.len32 = trunc i64 %err.msg.len51 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data52 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len53 = load i64, ptr %err.file.len, align 8
  %err.file.len54 = and i64 %err.file.len53, 281474976710655
  %str.tag55 = lshr i64 %err.file.len53, 48
  %tag.immortal57 = icmp eq i64 %str.tag55, 0
  %active.gen58 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current59 = icmp eq i64 %str.tag55, %active.gen58
  %tag.fast.ok60 = or i1 %tag.immortal57, %tag.current59
  br i1 %tag.fast.ok60, label %str_ok56, label %tag.slow_check61

tag.slow_check:                                   ; preds = %unwrap.abort.661
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok56:                                         ; preds = %tag.slow_check61, %str_ok
  %err.file.len32 = trunc i64 %err.file.len54 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data62 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check61:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag55)
  br label %str_ok56

err.thread:                                       ; preds = %str_ok56
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok56
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data52, i32 %err.file.len32, ptr %err.file.data62, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_ok69:                                         ; preds = %tag.slow_check74, %unwrap.pos.661
  %eq.rhs.len = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len75 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len67, %eq.rhs.len75
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check74:                                 ; preds = %unwrap.pos.661
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag68)
  br label %str_ok69

str.eq.then:                                      ; preds = %str_ok69
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data76 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data76, ptr %eq.rhs.data, i64 %eq.lhs.len67)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok69
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then77, label %choice.else78

choice.then77:                                    ; preds = %str.eq.merge
  %var.load80 = load ptr, ptr %var.d, align 8
  %fld.gep81 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load80, i32 0, i32 1
  %fld.load82 = load ptr, ptr %fld.gep81, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load82, i32 0, i32 0
  %concat.lhs83 = load i64, ptr %concat.lhs, align 8
  %concat.lhs84 = and i64 %concat.lhs83, 281474976710655
  %str.tag85 = lshr i64 %concat.lhs83, 48
  %tag.immortal87 = icmp eq i64 %str.tag85, 0
  %active.gen88 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current89 = icmp eq i64 %str.tag85, %active.gen88
  %tag.fast.ok90 = or i1 %tag.immortal87, %tag.current89
  br i1 %tag.fast.ok90, label %str_ok86, label %tag.slow_check91

choice.else78:                                    ; preds = %str.eq.merge
  br label %choice.exit79

choice.exit79:                                    ; preds = %choice.else78, %concat.tot.len99
  %choice.res = phi ptr [ %concat.str, %concat.tot.len99 ], [ @str.12.struct, %choice.else78 ]
  store ptr %choice.res, ptr %var.fn, align 8
  %var.load104 = load ptr, ptr %var.fn, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load104, i32 0, i32 0
  %cat.seg105 = load i64, ptr %cat.seg, align 8
  %cat.seg106 = and i64 %cat.seg105, 281474976710655
  %str.tag107 = lshr i64 %cat.seg105, 48
  %tag.immortal109 = icmp eq i64 %str.tag107, 0
  %active.gen110 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current111 = icmp eq i64 %str.tag107, %active.gen110
  %tag.fast.ok112 = or i1 %tag.immortal109, %tag.current111
  br i1 %tag.fast.ok112, label %str_ok108, label %tag.slow_check113

str_ok86:                                         ; preds = %tag.slow_check91, %choice.then77
  %concat.lhs92 = getelementptr inbounds { i64, ptr }, ptr %fld.load82, i32 0, i32 1
  %concat.lhs93 = load ptr, ptr %concat.lhs92, align 8
  %concat.rhs = load i64, ptr @str.70.struct, align 8
  %concat.rhs94 = and i64 %concat.rhs, 281474976710655
  %concat.rhs95 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs84, i64 %concat.rhs94)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len96

tag.slow_check91:                                 ; preds = %choice.then77
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag85)
  br label %str_ok86

concat.sum.len96:                                 ; preds = %abort.dead, %str_ok86
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum97 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf98 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf98, label %str_overflow_abort100, label %concat.tot.len99

str_overflow_abort:                               ; preds = %str_ok86
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len96

concat.tot.len99:                                 ; preds = %abort.dead101, %concat.sum.len96
  %arena.cur102 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 %sum97)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs93, i64 %concat.lhs84, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs84
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs95, i64 %concat.rhs94, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur103 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit79

str_overflow_abort100:                            ; preds = %concat.sum.len96
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %concat.tot.len99

str_ok108:                                        ; preds = %tag.slow_check113, %choice.exit79
  %cat.seg114 = getelementptr inbounds { i64, ptr }, ptr %var.load104, i32 0, i32 1
  %cat.seg115 = load ptr, ptr %cat.seg114, align 8
  %var.load116 = load ptr, ptr %var.d, align 8
  %fld.gep117 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load116, i32 0, i32 2
  %fld.load118 = load i64, ptr %fld.gep117, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %fld.load118, i1 false)
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %var.load119 = load ptr, ptr %var.d, align 8
  %fld.gep120 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load119, i32 0, i32 3
  %fld.load121 = load i64, ptr %fld.gep120, align 8
  %cat.ilen123 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf122, i64 %fld.load121, i1 false)
  %cat.lit.data124 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.71.struct, i32 0, i32 1), align 8
  %var.load125 = load ptr, ptr %var.d, align 8
  %fld.gep126 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load125, i32 0, i32 0
  %fld.load127 = load i64, ptr %fld.gep126, align 8
  %cat.ilen129 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf128, i64 %fld.load127, i1 false)
  %cat.lit.data130 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %var.load131 = load ptr, ptr %var.d, align 8
  %fld.gep132 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load131, i32 0, i32 4
  %fld.load133 = load ptr, ptr %fld.gep132, align 8
  %cat.seg134 = getelementptr inbounds { i64, ptr }, ptr %fld.load133, i32 0, i32 0
  %cat.seg135 = load i64, ptr %cat.seg134, align 8
  %cat.seg136 = and i64 %cat.seg135, 281474976710655
  %str.tag137 = lshr i64 %cat.seg135, 48
  %tag.immortal139 = icmp eq i64 %str.tag137, 0
  %active.gen140 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current141 = icmp eq i64 %str.tag137, %active.gen140
  %tag.fast.ok142 = or i1 %tag.immortal139, %tag.current141
  br i1 %tag.fast.ok142, label %str_ok138, label %tag.slow_check143

tag.slow_check113:                                ; preds = %choice.exit79
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag107)
  br label %str_ok108

str_ok138:                                        ; preds = %tag.slow_check143, %str_ok108
  %cat.seg144 = getelementptr inbounds { i64, ptr }, ptr %fld.load133, i32 0, i32 1
  %cat.seg145 = load ptr, ptr %cat.seg144, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg106, i64 %cat.ilen)
  %sum146 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf147 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf147, label %str_overflow_abort149, label %cat.sum.len148

tag.slow_check143:                                ; preds = %str_ok108
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag137)
  br label %str_ok138

cat.sum.len148:                                   ; preds = %abort.dead150, %str_ok138
  %cat.sum.len151 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum146, i64 1)
  %sum152 = extractvalue { i64, i1 } %cat.sum.len151, 0
  %ovf153 = extractvalue { i64, i1 } %cat.sum.len151, 1
  br i1 %ovf153, label %str_overflow_abort155, label %cat.sum.len154

str_overflow_abort149:                            ; preds = %str_ok138
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead150:                                    ; No predecessors!
  br label %cat.sum.len148

cat.sum.len154:                                   ; preds = %abort.dead156, %cat.sum.len148
  %cat.sum.len157 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum152, i64 %cat.ilen123)
  %sum158 = extractvalue { i64, i1 } %cat.sum.len157, 0
  %ovf159 = extractvalue { i64, i1 } %cat.sum.len157, 1
  br i1 %ovf159, label %str_overflow_abort161, label %cat.sum.len160

str_overflow_abort155:                            ; preds = %cat.sum.len148
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead156:                                    ; No predecessors!
  br label %cat.sum.len154

cat.sum.len160:                                   ; preds = %abort.dead162, %cat.sum.len154
  %cat.sum.len163 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum158, i64 3)
  %sum164 = extractvalue { i64, i1 } %cat.sum.len163, 0
  %ovf165 = extractvalue { i64, i1 } %cat.sum.len163, 1
  br i1 %ovf165, label %str_overflow_abort167, label %cat.sum.len166

str_overflow_abort161:                            ; preds = %cat.sum.len154
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead162:                                    ; No predecessors!
  br label %cat.sum.len160

cat.sum.len166:                                   ; preds = %abort.dead168, %cat.sum.len160
  %cat.sum.len169 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum164, i64 %cat.ilen129)
  %sum170 = extractvalue { i64, i1 } %cat.sum.len169, 0
  %ovf171 = extractvalue { i64, i1 } %cat.sum.len169, 1
  br i1 %ovf171, label %str_overflow_abort173, label %cat.sum.len172

str_overflow_abort167:                            ; preds = %cat.sum.len160
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead168:                                    ; No predecessors!
  br label %cat.sum.len166

cat.sum.len172:                                   ; preds = %abort.dead174, %cat.sum.len166
  %cat.sum.len175 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum170, i64 2)
  %sum176 = extractvalue { i64, i1 } %cat.sum.len175, 0
  %ovf177 = extractvalue { i64, i1 } %cat.sum.len175, 1
  br i1 %ovf177, label %str_overflow_abort179, label %cat.sum.len178

str_overflow_abort173:                            ; preds = %cat.sum.len166
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead174:                                    ; No predecessors!
  br label %cat.sum.len172

cat.sum.len178:                                   ; preds = %abort.dead180, %cat.sum.len172
  %cat.sum.len181 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum176, i64 %cat.seg136)
  %sum182 = extractvalue { i64, i1 } %cat.sum.len181, 0
  %ovf183 = extractvalue { i64, i1 } %cat.sum.len181, 1
  br i1 %ovf183, label %str_overflow_abort185, label %cat.sum.len184

str_overflow_abort179:                            ; preds = %cat.sum.len172
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead180:                                    ; No predecessors!
  br label %cat.sum.len178

cat.sum.len184:                                   ; preds = %abort.dead186, %cat.sum.len178
  %concat.tot.len187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum182, i64 1)
  %sum188 = extractvalue { i64, i1 } %concat.tot.len187, 0
  %ovf189 = extractvalue { i64, i1 } %concat.tot.len187, 1
  br i1 %ovf189, label %str_overflow_abort191, label %concat.tot.len190

str_overflow_abort185:                            ; preds = %cat.sum.len178
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead186:                                    ; No predecessors!
  br label %cat.sum.len184

concat.tot.len190:                                ; preds = %abort.dead192, %cat.sum.len184
  %arena.cur193 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 %sum188)
  %cat.dst = getelementptr i8, ptr %concat.buf194, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg115, i64 %cat.seg106, i1 false)
  %cat.off = add i64 0, %cat.seg106
  %cat.dst195 = getelementptr i8, ptr %concat.buf194, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst195, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off196 = add i64 %cat.off, %cat.ilen
  %cat.dst197 = getelementptr i8, ptr %concat.buf194, i64 %cat.off196
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst197, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.off198 = add i64 %cat.off196, 1
  %cat.dst199 = getelementptr i8, ptr %concat.buf194, i64 %cat.off198
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst199, ptr align 1 %cat.ibuf122, i64 %cat.ilen123, i1 false)
  %cat.off200 = add i64 %cat.off198, %cat.ilen123
  %cat.dst201 = getelementptr i8, ptr %concat.buf194, i64 %cat.off200
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst201, ptr align 1 %cat.lit.data124, i64 3, i1 false)
  %cat.off202 = add i64 %cat.off200, 3
  %cat.dst203 = getelementptr i8, ptr %concat.buf194, i64 %cat.off202
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst203, ptr align 1 %cat.ibuf128, i64 %cat.ilen129, i1 false)
  %cat.off204 = add i64 %cat.off202, %cat.ilen129
  %cat.dst205 = getelementptr i8, ptr %concat.buf194, i64 %cat.off204
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst205, ptr align 1 %cat.lit.data130, i64 2, i1 false)
  %cat.off206 = add i64 %cat.off204, 2
  %cat.dst207 = getelementptr i8, ptr %concat.buf194, i64 %cat.off206
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst207, ptr align 1 %cat.seg145, i64 %cat.seg136, i1 false)
  %concat.nul208 = getelementptr i8, ptr %concat.buf194, i64 %sum182
  store i8 0, ptr %concat.nul208, align 1
  %arena.cur209 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 16)
  %str.build.len.gep211 = getelementptr inbounds { i64, ptr }, ptr %concat.str210, i32 0, i32 0
  store i64 %sum182, ptr %str.build.len.gep211, align 8
  %str.build.data.gep212 = getelementptr inbounds { i64, ptr }, ptr %concat.str210, i32 0, i32 1
  store ptr %concat.buf194, ptr %str.build.data.gep212, align 8
  %p.to.i64 = ptrtoint ptr %concat.str210 to i64
  %ram.pay213 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit15

str_overflow_abort191:                            ; preds = %cat.sum.len184
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead192:                                    ; No predecessors!
  br label %concat.tot.len190

a.create223:                                      ; preds = %choice.else
  %arena.cur225 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 24)
  %arena.cur227 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf228 = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 128)
  %a.len.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create226, i32 0, i32 0
  store i64 0, ptr %a.len.gep229, align 8
  %a.data.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create226, i32 0, i32 1
  store ptr %a.buf228, ptr %a.data.gep230, align 8
  %a.cap.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create226, i32 0, i32 2
  store i64 16, ptr %a.cap.gep231, align 8
  store ptr %a.create226, ptr %var.diags, align 8
  br label %a.after224

a.after224:                                       ; preds = %a.create223, %choice.else
  %a.load2232 = load ptr, ptr %var.diags, align 8
  %a.len.query233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2232, i32 0, i32 0
  %a.len.query234 = load i64, ptr %a.len.query233, align 8
  %cmptmp235 = icmp sgt i64 %a.len.query234, 0
  br i1 %cmptmp235, label %choice.then236, label %choice.else237

choice.then236:                                   ; preds = %a.after224
  %var.load239 = load ptr, ptr %var.diags, align 8
  %a.load240 = load ptr, ptr %var.diags, align 8
  %a.null241 = icmp eq ptr %a.load240, null
  br i1 %a.null241, label %a.create242, label %a.after243

choice.else237:                                   ; preds = %a.after224
  %var.load528 = load ptr, ptr %var.filename, align 8
  %concat.lhs529 = getelementptr inbounds { i64, ptr }, ptr %var.load528, i32 0, i32 0
  %concat.lhs530 = load i64, ptr %concat.lhs529, align 8
  %concat.lhs531 = and i64 %concat.lhs530, 281474976710655
  %str.tag532 = lshr i64 %concat.lhs530, 48
  %tag.immortal534 = icmp eq i64 %str.tag532, 0
  %active.gen535 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current536 = icmp eq i64 %str.tag532, %active.gen535
  %tag.fast.ok537 = or i1 %tag.immortal534, %tag.current536
  br i1 %tag.fast.ok537, label %str_ok533, label %tag.slow_check538

choice.exit238:                                   ; preds = %concat.tot.len553, %concat.tot.len501
  %choice.res566 = phi { i1, i64 } [ %ram.pay527, %concat.tot.len501 ], [ %ram.pay565, %concat.tot.len553 ]
  br label %choice.exit

a.create242:                                      ; preds = %choice.then236
  %arena.cur244 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create245 = call ptr @dva_arena_alloc(ptr %arena.cur244, i64 24)
  %arena.cur246 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf247 = call ptr @dva_arena_alloc(ptr %arena.cur246, i64 128)
  %a.len.gep248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create245, i32 0, i32 0
  store i64 0, ptr %a.len.gep248, align 8
  %a.data.gep249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create245, i32 0, i32 1
  store ptr %a.buf247, ptr %a.data.gep249, align 8
  %a.cap.gep250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create245, i32 0, i32 2
  store i64 16, ptr %a.cap.gep250, align 8
  store ptr %a.create245, ptr %var.diags, align 8
  br label %a.after243

a.after243:                                       ; preds = %a.create242, %choice.then236
  %a.load2251 = load ptr, ptr %var.diags, align 8
  %a.rd.nonnull252 = icmp ne ptr %a.load2251, null
  br i1 %a.rd.nonnull252, label %a.rd.check253, label %a.rd.err.null255

a.rd.check253:                                    ; preds = %a.after243
  %a.rd.len258 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2251, i32 0, i32 0
  %a.rd.len259 = load i64, ptr %a.rd.len258, align 8
  %a.rd.lt260 = icmp slt i64 0, %a.rd.len259
  %a.rd.bounds261 = and i1 true, %a.rd.lt260
  br i1 %a.rd.bounds261, label %a.rd.ok254, label %a.rd.err.oob256

a.rd.ok254:                                       ; preds = %a.rd.check253
  %a.rd.data262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2251, i32 0, i32 1
  %a.rd.data263 = load ptr, ptr %a.rd.data262, align 8
  %a.rd.elem.gep264 = getelementptr i64, ptr %a.rd.data263, i64 0
  %a.rd.elem265 = load i64, ptr %a.rd.elem.gep264, align 8
  br label %a.rd.done257

a.rd.err.null255:                                 ; preds = %a.after243
  %arena.cur266 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 56)
  %err.code.gep268 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 0
  store i64 4011, ptr %err.code.gep268, align 8
  %err.msg.gep269 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep269, align 8
  %err.file.gep270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep270, align 8
  %err.line.gep271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 3
  store i64 676, ptr %err.line.gep271, align 8
  %err.col.gep272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 4
  store i64 28, ptr %err.col.gep272, align 8
  %err.ctx.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc267, i32 0, i32 5
  %err.ctx0.gep274 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep273, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep274, align 8
  %err.ctx1.gep275 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep273, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep275, align 8
  %err.p2i276 = ptrtoint ptr %err.alloc267 to i64
  br label %a.rd.done257

a.rd.err.oob256:                                  ; preds = %a.rd.check253
  %arena.cur277 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 56)
  %err.code.gep279 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 0
  store i64 4011, ptr %err.code.gep279, align 8
  %err.msg.gep280 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep280, align 8
  %err.file.gep281 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep281, align 8
  %err.line.gep282 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 3
  store i64 676, ptr %err.line.gep282, align 8
  %err.col.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 4
  store i64 28, ptr %err.col.gep283, align 8
  %err.ctx.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc278, i32 0, i32 5
  %err.ctx0.gep285 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep284, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep285, align 8
  %err.ctx1.gep286 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep284, i32 0, i32 1
  store i64 %a.rd.len259, ptr %err.ctx1.gep286, align 8
  %err.p2i287 = ptrtoint ptr %err.alloc278 to i64
  br label %a.rd.done257

a.rd.done257:                                     ; preds = %a.rd.err.oob256, %a.rd.err.null255, %a.rd.ok254
  %a.rd.tag288 = phi i1 [ true, %a.rd.ok254 ], [ false, %a.rd.err.null255 ], [ false, %a.rd.err.oob256 ]
  %a.rd.pay289 = phi i64 [ %a.rd.elem265, %a.rd.ok254 ], [ %err.p2i276, %a.rd.err.null255 ], [ %err.p2i287, %a.rd.err.oob256 ]
  %ram.tag290 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag288, 0
  %ram.pay291 = insertvalue { i1, i64 } %ram.tag290, i64 %a.rd.pay289, 1
  %unwrap.is_pos292 = extractvalue { i1, i64 } %ram.pay291, 0
  br i1 %unwrap.is_pos292, label %unwrap.pos.662, label %unwrap.abort.662

unwrap.pos.662:                                   ; preds = %a.rd.done257
  %unwrap.pay.pos338 = extractvalue { i1, i64 } %ram.pay291, 1
  %pay.ptr339 = inttoptr i64 %unwrap.pay.pos338 to ptr
  store ptr %pay.ptr339, ptr %var.d340, align 8
  %var.load341 = load ptr, ptr %var.d340, align 8
  %fld.gep342 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load341, i32 0, i32 1
  %fld.load343 = load ptr, ptr %fld.gep342, align 8
  %eq.lhs.len344 = getelementptr inbounds { i64, ptr }, ptr %fld.load343, i32 0, i32 0
  %eq.lhs.len345 = load i64, ptr %eq.lhs.len344, align 8
  %eq.lhs.len346 = and i64 %eq.lhs.len345, 281474976710655
  %str.tag347 = lshr i64 %eq.lhs.len345, 48
  %tag.immortal349 = icmp eq i64 %str.tag347, 0
  %active.gen350 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current351 = icmp eq i64 %str.tag347, %active.gen350
  %tag.fast.ok352 = or i1 %tag.immortal349, %tag.current351
  br i1 %tag.fast.ok352, label %str_ok348, label %tag.slow_check353

unwrap.abort.662:                                 ; preds = %a.rd.done257
  %unwrap.pay.abort293 = extractvalue { i1, i64 } %ram.pay291, 1
  %err.ptr294 = inttoptr i64 %unwrap.pay.abort293 to ptr
  %err.code.gep295 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr294, i32 0, i32 0
  %err.code296 = load i64, ptr %err.code.gep295, align 8
  %err.msg.gep297 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr294, i32 0, i32 1
  %err.msg.struct298 = load ptr, ptr %err.msg.gep297, align 8
  %err.file.gep299 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr294, i32 0, i32 2
  %err.file.struct300 = load ptr, ptr %err.file.gep299, align 8
  %err.line.gep301 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr294, i32 0, i32 3
  %err.line302 = load i64, ptr %err.line.gep301, align 8
  %err.col.gep303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr294, i32 0, i32 4
  %err.col304 = load i64, ptr %err.col.gep303, align 8
  %err.msg.len305 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct298, i32 0, i32 0
  %err.msg.len306 = load i64, ptr %err.msg.len305, align 8
  %err.msg.len307 = and i64 %err.msg.len306, 281474976710655
  %str.tag308 = lshr i64 %err.msg.len306, 48
  %tag.immortal310 = icmp eq i64 %str.tag308, 0
  %active.gen311 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current312 = icmp eq i64 %str.tag308, %active.gen311
  %tag.fast.ok313 = or i1 %tag.immortal310, %tag.current312
  br i1 %tag.fast.ok313, label %str_ok309, label %tag.slow_check314

str_ok309:                                        ; preds = %tag.slow_check314, %unwrap.abort.662
  %err.msg.len32315 = trunc i64 %err.msg.len307 to i32
  %err.msg.data316 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct298, i32 0, i32 1
  %err.msg.data317 = load ptr, ptr %err.msg.data316, align 8
  %err.file.len318 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct300, i32 0, i32 0
  %err.file.len319 = load i64, ptr %err.file.len318, align 8
  %err.file.len320 = and i64 %err.file.len319, 281474976710655
  %str.tag321 = lshr i64 %err.file.len319, 48
  %tag.immortal323 = icmp eq i64 %str.tag321, 0
  %active.gen324 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current325 = icmp eq i64 %str.tag321, %active.gen324
  %tag.fast.ok326 = or i1 %tag.immortal323, %tag.current325
  br i1 %tag.fast.ok326, label %str_ok322, label %tag.slow_check327

tag.slow_check314:                                ; preds = %unwrap.abort.662
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag308)
  br label %str_ok309

str_ok322:                                        ; preds = %tag.slow_check327, %str_ok309
  %err.file.len32328 = trunc i64 %err.file.len320 to i32
  %err.file.data329 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct300, i32 0, i32 1
  %err.file.data330 = load ptr, ptr %err.file.data329, align 8
  %err.thread.rec331 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread332 = icmp ne ptr %err.thread.rec331, null
  br i1 %err.is.thread332, label %err.thread333, label %err.normal334

tag.slow_check327:                                ; preds = %str_ok309
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag321)
  br label %str_ok322

err.thread333:                                    ; preds = %str_ok322
  %err.haserr.gep335 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec331, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep335, align 8
  %err.err.gep336 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec331, i32 0, i32 7
  store ptr %err.ptr294, ptr %err.err.gep336, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal334:                                    ; preds = %str_ok322
  %err.panic.printf337 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code296, i32 %err.msg.len32315, ptr %err.msg.data317, i32 %err.file.len32328, ptr %err.file.data330, i64 %err.line302, i64 %err.col304)
  call void @exit(i32 1)
  unreachable

str_ok348:                                        ; preds = %tag.slow_check353, %unwrap.pos.662
  %eq.rhs.len354 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len355 = and i64 %eq.rhs.len354, 281474976710655
  %eq.len356 = icmp eq i64 %eq.lhs.len346, %eq.rhs.len355
  br i1 %eq.len356, label %str.eq.then357, label %str.eq.else358

tag.slow_check353:                                ; preds = %unwrap.pos.662
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag347)
  br label %str_ok348

str.eq.then357:                                   ; preds = %str_ok348
  %eq.lhs.data360 = getelementptr inbounds { i64, ptr }, ptr %fld.load343, i32 0, i32 1
  %eq.lhs.data361 = load ptr, ptr %eq.lhs.data360, align 8
  %eq.rhs.data362 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp363 = call i32 @memcmp(ptr %eq.lhs.data361, ptr %eq.rhs.data362, i64 %eq.lhs.len346)
  %eq.cmp.zero364 = icmp eq i32 %eq.memcmp363, 0
  br label %str.eq.merge359

str.eq.else358:                                   ; preds = %str_ok348
  br label %str.eq.merge359

str.eq.merge359:                                  ; preds = %str.eq.else358, %str.eq.then357
  %str.eq.result365 = phi i1 [ %eq.cmp.zero364, %str.eq.then357 ], [ false, %str.eq.else358 ]
  %str.neq366 = xor i1 %str.eq.result365, true
  br i1 %str.neq366, label %choice.then367, label %choice.else368

choice.then367:                                   ; preds = %str.eq.merge359
  %var.load370 = load ptr, ptr %var.d340, align 8
  %fld.gep371 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load370, i32 0, i32 1
  %fld.load372 = load ptr, ptr %fld.gep371, align 8
  %concat.lhs373 = getelementptr inbounds { i64, ptr }, ptr %fld.load372, i32 0, i32 0
  %concat.lhs374 = load i64, ptr %concat.lhs373, align 8
  %concat.lhs375 = and i64 %concat.lhs374, 281474976710655
  %str.tag376 = lshr i64 %concat.lhs374, 48
  %tag.immortal378 = icmp eq i64 %str.tag376, 0
  %active.gen379 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current380 = icmp eq i64 %str.tag376, %active.gen379
  %tag.fast.ok381 = or i1 %tag.immortal378, %tag.current380
  br i1 %tag.fast.ok381, label %str_ok377, label %tag.slow_check382

choice.else368:                                   ; preds = %str.eq.merge359
  br label %choice.exit369

choice.exit369:                                   ; preds = %choice.else368, %concat.tot.len397
  %choice.res408 = phi ptr [ %concat.str405, %concat.tot.len397 ], [ @str.12.struct, %choice.else368 ]
  store ptr %choice.res408, ptr %var.fn409, align 8
  %var.load410 = load ptr, ptr %var.fn409, align 8
  %cat.seg411 = getelementptr inbounds { i64, ptr }, ptr %var.load410, i32 0, i32 0
  %cat.seg412 = load i64, ptr %cat.seg411, align 8
  %cat.seg413 = and i64 %cat.seg412, 281474976710655
  %str.tag414 = lshr i64 %cat.seg412, 48
  %tag.immortal416 = icmp eq i64 %str.tag414, 0
  %active.gen417 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current418 = icmp eq i64 %str.tag414, %active.gen417
  %tag.fast.ok419 = or i1 %tag.immortal416, %tag.current418
  br i1 %tag.fast.ok419, label %str_ok415, label %tag.slow_check420

str_ok377:                                        ; preds = %tag.slow_check382, %choice.then367
  %concat.lhs383 = getelementptr inbounds { i64, ptr }, ptr %fld.load372, i32 0, i32 1
  %concat.lhs384 = load ptr, ptr %concat.lhs383, align 8
  %concat.rhs385 = load i64, ptr @str.70.struct, align 8
  %concat.rhs386 = and i64 %concat.rhs385, 281474976710655
  %concat.rhs387 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %concat.sum.len388 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs375, i64 %concat.rhs386)
  %sum389 = extractvalue { i64, i1 } %concat.sum.len388, 0
  %ovf390 = extractvalue { i64, i1 } %concat.sum.len388, 1
  br i1 %ovf390, label %str_overflow_abort392, label %concat.sum.len391

tag.slow_check382:                                ; preds = %choice.then367
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag376)
  br label %str_ok377

concat.sum.len391:                                ; preds = %abort.dead393, %str_ok377
  %concat.tot.len394 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum389, i64 1)
  %sum395 = extractvalue { i64, i1 } %concat.tot.len394, 0
  %ovf396 = extractvalue { i64, i1 } %concat.tot.len394, 1
  br i1 %ovf396, label %str_overflow_abort398, label %concat.tot.len397

str_overflow_abort392:                            ; preds = %str_ok377
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead393:                                    ; No predecessors!
  br label %concat.sum.len391

concat.tot.len397:                                ; preds = %abort.dead399, %concat.sum.len391
  %arena.cur400 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf401 = call ptr @dva_arena_alloc(ptr %arena.cur400, i64 %sum395)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf401, ptr align 1 %concat.lhs384, i64 %concat.lhs375, i1 false)
  %concat.mid402 = getelementptr i8, ptr %concat.buf401, i64 %concat.lhs375
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid402, ptr align 1 %concat.rhs387, i64 %concat.rhs386, i1 false)
  %concat.nul403 = getelementptr i8, ptr %concat.buf401, i64 %sum389
  store i8 0, ptr %concat.nul403, align 1
  %arena.cur404 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str405 = call ptr @dva_arena_alloc(ptr %arena.cur404, i64 16)
  %str.build.len.gep406 = getelementptr inbounds { i64, ptr }, ptr %concat.str405, i32 0, i32 0
  store i64 %sum389, ptr %str.build.len.gep406, align 8
  %str.build.data.gep407 = getelementptr inbounds { i64, ptr }, ptr %concat.str405, i32 0, i32 1
  store ptr %concat.buf401, ptr %str.build.data.gep407, align 8
  br label %choice.exit369

str_overflow_abort398:                            ; preds = %concat.sum.len391
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead399:                                    ; No predecessors!
  br label %concat.tot.len397

str_ok415:                                        ; preds = %tag.slow_check420, %choice.exit369
  %cat.seg421 = getelementptr inbounds { i64, ptr }, ptr %var.load410, i32 0, i32 1
  %cat.seg422 = load ptr, ptr %cat.seg421, align 8
  %var.load423 = load ptr, ptr %var.d340, align 8
  %fld.gep424 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load423, i32 0, i32 2
  %fld.load425 = load i64, ptr %fld.gep424, align 8
  %cat.ilen427 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf426, i64 %fld.load425, i1 false)
  %cat.lit.data428 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %var.load429 = load ptr, ptr %var.d340, align 8
  %fld.gep430 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load429, i32 0, i32 3
  %fld.load431 = load i64, ptr %fld.gep430, align 8
  %cat.ilen433 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf432, i64 %fld.load431, i1 false)
  %cat.lit.data434 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.71.struct, i32 0, i32 1), align 8
  %var.load435 = load ptr, ptr %var.d340, align 8
  %fld.gep436 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load435, i32 0, i32 0
  %fld.load437 = load i64, ptr %fld.gep436, align 8
  %cat.ilen439 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf438, i64 %fld.load437, i1 false)
  %cat.lit.data440 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %var.load441 = load ptr, ptr %var.d340, align 8
  %fld.gep442 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load441, i32 0, i32 4
  %fld.load443 = load ptr, ptr %fld.gep442, align 8
  %cat.seg444 = getelementptr inbounds { i64, ptr }, ptr %fld.load443, i32 0, i32 0
  %cat.seg445 = load i64, ptr %cat.seg444, align 8
  %cat.seg446 = and i64 %cat.seg445, 281474976710655
  %str.tag447 = lshr i64 %cat.seg445, 48
  %tag.immortal449 = icmp eq i64 %str.tag447, 0
  %active.gen450 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current451 = icmp eq i64 %str.tag447, %active.gen450
  %tag.fast.ok452 = or i1 %tag.immortal449, %tag.current451
  br i1 %tag.fast.ok452, label %str_ok448, label %tag.slow_check453

tag.slow_check420:                                ; preds = %choice.exit369
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag414)
  br label %str_ok415

str_ok448:                                        ; preds = %tag.slow_check453, %str_ok415
  %cat.seg454 = getelementptr inbounds { i64, ptr }, ptr %fld.load443, i32 0, i32 1
  %cat.seg455 = load ptr, ptr %cat.seg454, align 8
  %cat.sum.len456 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg413, i64 %cat.ilen427)
  %sum457 = extractvalue { i64, i1 } %cat.sum.len456, 0
  %ovf458 = extractvalue { i64, i1 } %cat.sum.len456, 1
  br i1 %ovf458, label %str_overflow_abort460, label %cat.sum.len459

tag.slow_check453:                                ; preds = %str_ok415
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag447)
  br label %str_ok448

cat.sum.len459:                                   ; preds = %abort.dead461, %str_ok448
  %cat.sum.len462 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum457, i64 1)
  %sum463 = extractvalue { i64, i1 } %cat.sum.len462, 0
  %ovf464 = extractvalue { i64, i1 } %cat.sum.len462, 1
  br i1 %ovf464, label %str_overflow_abort466, label %cat.sum.len465

str_overflow_abort460:                            ; preds = %str_ok448
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead461:                                    ; No predecessors!
  br label %cat.sum.len459

cat.sum.len465:                                   ; preds = %abort.dead467, %cat.sum.len459
  %cat.sum.len468 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum463, i64 %cat.ilen433)
  %sum469 = extractvalue { i64, i1 } %cat.sum.len468, 0
  %ovf470 = extractvalue { i64, i1 } %cat.sum.len468, 1
  br i1 %ovf470, label %str_overflow_abort472, label %cat.sum.len471

str_overflow_abort466:                            ; preds = %cat.sum.len459
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead467:                                    ; No predecessors!
  br label %cat.sum.len465

cat.sum.len471:                                   ; preds = %abort.dead473, %cat.sum.len465
  %cat.sum.len474 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum469, i64 3)
  %sum475 = extractvalue { i64, i1 } %cat.sum.len474, 0
  %ovf476 = extractvalue { i64, i1 } %cat.sum.len474, 1
  br i1 %ovf476, label %str_overflow_abort478, label %cat.sum.len477

str_overflow_abort472:                            ; preds = %cat.sum.len465
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead473:                                    ; No predecessors!
  br label %cat.sum.len471

cat.sum.len477:                                   ; preds = %abort.dead479, %cat.sum.len471
  %cat.sum.len480 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum475, i64 %cat.ilen439)
  %sum481 = extractvalue { i64, i1 } %cat.sum.len480, 0
  %ovf482 = extractvalue { i64, i1 } %cat.sum.len480, 1
  br i1 %ovf482, label %str_overflow_abort484, label %cat.sum.len483

str_overflow_abort478:                            ; preds = %cat.sum.len471
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead479:                                    ; No predecessors!
  br label %cat.sum.len477

cat.sum.len483:                                   ; preds = %abort.dead485, %cat.sum.len477
  %cat.sum.len486 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum481, i64 2)
  %sum487 = extractvalue { i64, i1 } %cat.sum.len486, 0
  %ovf488 = extractvalue { i64, i1 } %cat.sum.len486, 1
  br i1 %ovf488, label %str_overflow_abort490, label %cat.sum.len489

str_overflow_abort484:                            ; preds = %cat.sum.len477
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead485:                                    ; No predecessors!
  br label %cat.sum.len483

cat.sum.len489:                                   ; preds = %abort.dead491, %cat.sum.len483
  %cat.sum.len492 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum487, i64 %cat.seg446)
  %sum493 = extractvalue { i64, i1 } %cat.sum.len492, 0
  %ovf494 = extractvalue { i64, i1 } %cat.sum.len492, 1
  br i1 %ovf494, label %str_overflow_abort496, label %cat.sum.len495

str_overflow_abort490:                            ; preds = %cat.sum.len483
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead491:                                    ; No predecessors!
  br label %cat.sum.len489

cat.sum.len495:                                   ; preds = %abort.dead497, %cat.sum.len489
  %concat.tot.len498 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum493, i64 1)
  %sum499 = extractvalue { i64, i1 } %concat.tot.len498, 0
  %ovf500 = extractvalue { i64, i1 } %concat.tot.len498, 1
  br i1 %ovf500, label %str_overflow_abort502, label %concat.tot.len501

str_overflow_abort496:                            ; preds = %cat.sum.len489
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead497:                                    ; No predecessors!
  br label %cat.sum.len495

concat.tot.len501:                                ; preds = %abort.dead503, %cat.sum.len495
  %arena.cur504 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf505 = call ptr @dva_arena_alloc(ptr %arena.cur504, i64 %sum499)
  %cat.dst506 = getelementptr i8, ptr %concat.buf505, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst506, ptr align 1 %cat.seg422, i64 %cat.seg413, i1 false)
  %cat.off507 = add i64 0, %cat.seg413
  %cat.dst508 = getelementptr i8, ptr %concat.buf505, i64 %cat.off507
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst508, ptr align 1 %cat.ibuf426, i64 %cat.ilen427, i1 false)
  %cat.off509 = add i64 %cat.off507, %cat.ilen427
  %cat.dst510 = getelementptr i8, ptr %concat.buf505, i64 %cat.off509
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst510, ptr align 1 %cat.lit.data428, i64 1, i1 false)
  %cat.off511 = add i64 %cat.off509, 1
  %cat.dst512 = getelementptr i8, ptr %concat.buf505, i64 %cat.off511
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst512, ptr align 1 %cat.ibuf432, i64 %cat.ilen433, i1 false)
  %cat.off513 = add i64 %cat.off511, %cat.ilen433
  %cat.dst514 = getelementptr i8, ptr %concat.buf505, i64 %cat.off513
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst514, ptr align 1 %cat.lit.data434, i64 3, i1 false)
  %cat.off515 = add i64 %cat.off513, 3
  %cat.dst516 = getelementptr i8, ptr %concat.buf505, i64 %cat.off515
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst516, ptr align 1 %cat.ibuf438, i64 %cat.ilen439, i1 false)
  %cat.off517 = add i64 %cat.off515, %cat.ilen439
  %cat.dst518 = getelementptr i8, ptr %concat.buf505, i64 %cat.off517
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst518, ptr align 1 %cat.lit.data440, i64 2, i1 false)
  %cat.off519 = add i64 %cat.off517, 2
  %cat.dst520 = getelementptr i8, ptr %concat.buf505, i64 %cat.off519
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst520, ptr align 1 %cat.seg455, i64 %cat.seg446, i1 false)
  %concat.nul521 = getelementptr i8, ptr %concat.buf505, i64 %sum493
  store i8 0, ptr %concat.nul521, align 1
  %arena.cur522 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str523 = call ptr @dva_arena_alloc(ptr %arena.cur522, i64 16)
  %str.build.len.gep524 = getelementptr inbounds { i64, ptr }, ptr %concat.str523, i32 0, i32 0
  store i64 %sum493, ptr %str.build.len.gep524, align 8
  %str.build.data.gep525 = getelementptr inbounds { i64, ptr }, ptr %concat.str523, i32 0, i32 1
  store ptr %concat.buf505, ptr %str.build.data.gep525, align 8
  %p.to.i64526 = ptrtoint ptr %concat.str523 to i64
  %ram.pay527 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64526, 1
  br label %choice.exit238

str_overflow_abort502:                            ; preds = %cat.sum.len495
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead503:                                    ; No predecessors!
  br label %concat.tot.len501

str_ok533:                                        ; preds = %tag.slow_check538, %choice.else237
  %concat.lhs539 = getelementptr inbounds { i64, ptr }, ptr %var.load528, i32 0, i32 1
  %concat.lhs540 = load ptr, ptr %concat.lhs539, align 8
  %concat.rhs541 = load i64, ptr @str.72.struct, align 8
  %concat.rhs542 = and i64 %concat.rhs541, 281474976710655
  %concat.rhs543 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.72.struct, i32 0, i32 1), align 8
  %concat.sum.len544 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs531, i64 %concat.rhs542)
  %sum545 = extractvalue { i64, i1 } %concat.sum.len544, 0
  %ovf546 = extractvalue { i64, i1 } %concat.sum.len544, 1
  br i1 %ovf546, label %str_overflow_abort548, label %concat.sum.len547

tag.slow_check538:                                ; preds = %choice.else237
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag532)
  br label %str_ok533

concat.sum.len547:                                ; preds = %abort.dead549, %str_ok533
  %concat.tot.len550 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum545, i64 1)
  %sum551 = extractvalue { i64, i1 } %concat.tot.len550, 0
  %ovf552 = extractvalue { i64, i1 } %concat.tot.len550, 1
  br i1 %ovf552, label %str_overflow_abort554, label %concat.tot.len553

str_overflow_abort548:                            ; preds = %str_ok533
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead549:                                    ; No predecessors!
  br label %concat.sum.len547

concat.tot.len553:                                ; preds = %abort.dead555, %concat.sum.len547
  %arena.cur556 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf557 = call ptr @dva_arena_alloc(ptr %arena.cur556, i64 %sum551)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf557, ptr align 1 %concat.lhs540, i64 %concat.lhs531, i1 false)
  %concat.mid558 = getelementptr i8, ptr %concat.buf557, i64 %concat.lhs531
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid558, ptr align 1 %concat.rhs543, i64 %concat.rhs542, i1 false)
  %concat.nul559 = getelementptr i8, ptr %concat.buf557, i64 %sum545
  store i8 0, ptr %concat.nul559, align 1
  %arena.cur560 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str561 = call ptr @dva_arena_alloc(ptr %arena.cur560, i64 16)
  %str.build.len.gep562 = getelementptr inbounds { i64, ptr }, ptr %concat.str561, i32 0, i32 0
  store i64 %sum545, ptr %str.build.len.gep562, align 8
  %str.build.data.gep563 = getelementptr inbounds { i64, ptr }, ptr %concat.str561, i32 0, i32 1
  store ptr %concat.buf557, ptr %str.build.data.gep563, align 8
  %p.to.i64564 = ptrtoint ptr %concat.str561 to i64
  %ram.pay565 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64564, 1
  br label %choice.exit238

str_overflow_abort554:                            ; preds = %concat.sum.len547
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead555:                                    ; No predecessors!
  br label %concat.tot.len553
}

declare void @"diag::enable_capture"() #0

declare void @"lexer::lex_set_file"(ptr) #0

declare ptr @"parser::parse_init"(ptr) #0

declare void @"parser::parser_set_file"(ptr, ptr) #0

declare { i1, i64 } @"parser::parse_program"(ptr) #0

declare ptr @"diag::get_captured"() #0

declare void @"diag::disable_capture"() #0

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #0 {
entry:
  %fmt.tmp = alloca [24 x i8], align 1
  %fmt.is.zero = icmp eq i64 %1, 0
  br i1 %fmt.is.zero, label %zero, label %nonzero

zero:                                             ; preds = %entry
  store i8 48, ptr %0, align 1
  %fmt.z.nul = getelementptr i8, ptr %0, i64 1
  store i8 0, ptr %fmt.z.nul, align 1
  ret i64 1

nonzero:                                          ; preds = %entry
  %fmt.slt = icmp slt i64 %1, 0
  %fmt.not.u = xor i1 %2, true
  %fmt.is.neg = and i1 %fmt.not.u, %fmt.slt
  %fmt.neg = sub i64 0, %1
  %fmt.abs = select i1 %fmt.is.neg, i64 %fmt.neg, i64 %1
  br label %divloop

divloop:                                          ; preds = %divloop, %nonzero
  %fmt.n = phi i64 [ %fmt.abs, %nonzero ], [ %fmt.quot, %divloop ]
  %fmt.k = phi i64 [ 0, %nonzero ], [ %fmt.k.next, %divloop ]
  %fmt.rem = urem i64 %fmt.n, 10
  %fmt.quot = udiv i64 %fmt.n, 10
  %fmt.r8 = trunc i64 %fmt.rem to i8
  %fmt.dig = add i8 %fmt.r8, 48
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
  %fmt.km1 = sub i64 %fmt.k.next, 1
  %fmt.sidx = sub i64 %fmt.km1, %fmt.i
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
  ret i64 %fmt.tot
}

declare { i64, ptr } @"show::show_expr"(ptr) #0

define { i1, i64 } @"formatter::format_source"(ptr %0, ptr %1) #0 {
entry:
  %var.err = alloca ptr, align 8
  %var._216 = alloca ptr, align 8
  %var._208 = alloca ptr, align 8
  %var.fb_sig162 = alloca ptr, align 8
  %var._161 = alloca ptr, align 8
  %var.fb_sig_res153 = alloca { i1, i64 }, align 8
  %var.fb149 = alloca ptr, align 8
  %var._132 = alloca ptr, align 8
  %var._124 = alloca ptr, align 8
  %var.fb_sig = alloca ptr, align 8
  %var._79 = alloca ptr, align 8
  %var.fb_sig_res = alloca { i1, i64 }, align 8
  %var.fb = alloca ptr, align 8
  %var.cand_sig = alloca ptr, align 8
  %var._25 = alloca ptr, align 8
  %var.cand_sig_res = alloca { i1, i64 }, align 8
  %var.candidate = alloca ptr, align 8
  %var.lines = alloca ptr, align 8
  %var.orig_sig = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.orig_sig_res = alloca { i1, i64 }, align 8
  %var.filename = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr %1, ptr %var.filename, align 8
  %var.load = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret { i1, i64 } { i1 true, i64 ptrtoint (ptr @str.12.struct to i64) }

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.src, align 8
  %var.load4 = load ptr, ptr %var.filename, align 8
  %call.res = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load3, ptr %var.load4)
  store { i1, i64 } %call.res, ptr %var.orig_sig_res, align 8
  %var.load5 = load { i1, i64 }, ptr %var.orig_sig_res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load5, 0
  br i1 %ram.tag, label %choice.then6, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then6:                                     ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %var.load5, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.orig_sig, align 8
  %var.load8 = load ptr, ptr %var.src, align 8
  %call.res9 = call ptr @"formatter::split_source_lines"(ptr %var.load8)
  store ptr %call.res9, ptr %var.lines, align 8
  %var.load10 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %choice.exit
  %ram.pay214 = extractvalue { i1, i64 } %var.load5, 1
  %pay.ptr215 = inttoptr i64 %ram.pay214 to ptr
  store ptr %pay.ptr215, ptr %var._216, align 8
  store ptr %pay.ptr215, ptr %var.err, align 8
  %var.load217 = load ptr, ptr %var.err, align 8
  %p.to.i64218 = ptrtoint ptr %var.load217 to i64
  %ram.pay219 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64218, 1
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else, %choice.exit22
  %choice.res220 = phi { i1, i64 } [ %choice.res213, %choice.exit22 ], [ %ram.pay219, %choice.else ]
  ret { i1, i64 } %choice.res220

a.create:                                         ; preds = %choice.then6
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create11 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create11, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then6
  %a.load2 = load ptr, ptr %var.lines, align 8
  %call.res13 = call { i64, ptr } @"formatter::format_lines"(ptr %a.load2)
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 16)
  store { i64, ptr } %call.res13, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.candidate, align 8
  %var.load15 = load ptr, ptr %var.candidate, align 8
  %var.load16 = load ptr, ptr %var.filename, align 8
  %call.res17 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load15, ptr %var.load16)
  store { i1, i64 } %call.res17, ptr %var.cand_sig_res, align 8
  %var.load18 = load { i1, i64 }, ptr %var.cand_sig_res, align 8
  %ram.tag19 = extractvalue { i1, i64 } %var.load18, 0
  br i1 %ram.tag19, label %choice.then20, label %choice.else21

choice.then20:                                    ; preds = %a.after
  %ram.pay23 = extractvalue { i1, i64 } %var.load18, 1
  %pay.ptr24 = inttoptr i64 %ram.pay23 to ptr
  store ptr %pay.ptr24, ptr %var._25, align 8
  store ptr %pay.ptr24, ptr %var.cand_sig, align 8
  %var.load26 = load ptr, ptr %var.cand_sig, align 8
  %var.load27 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %eq.lhs.len28 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len29 = and i64 %eq.lhs.len28, 281474976710655
  %str.tag30 = lshr i64 %eq.lhs.len28, 48
  %tag.immortal32 = icmp eq i64 %str.tag30, 0
  %active.gen33 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current34 = icmp eq i64 %str.tag30, %active.gen33
  %tag.fast.ok35 = or i1 %tag.immortal32, %tag.current34
  br i1 %tag.fast.ok35, label %str_ok31, label %tag.slow_check36

choice.else21:                                    ; preds = %a.after
  %ram.pay130 = extractvalue { i1, i64 } %var.load18, 1
  %pay.ptr131 = inttoptr i64 %ram.pay130 to ptr
  store ptr %pay.ptr131, ptr %var._132, align 8
  %var.load133 = load ptr, ptr %var.lines, align 8
  %a.load134 = load ptr, ptr %var.lines, align 8
  %a.null135 = icmp eq ptr %a.load134, null
  br i1 %a.null135, label %a.create136, label %a.after137

choice.exit22:                                    ; preds = %choice.exit158, %choice.exit50
  %choice.res213 = phi { i1, i64 } [ %choice.res129, %choice.exit50 ], [ %choice.res212, %choice.exit158 ]
  br label %choice.exit7

str_ok31:                                         ; preds = %tag.slow_check36, %choice.then20
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %eq.rhs.len37 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len38 = and i64 %eq.rhs.len37, 281474976710655
  %str.tag39 = lshr i64 %eq.rhs.len37, 48
  %tag.immortal41 = icmp eq i64 %str.tag39, 0
  %active.gen42 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current43 = icmp eq i64 %str.tag39, %active.gen42
  %tag.fast.ok44 = or i1 %tag.immortal41, %tag.current43
  br i1 %tag.fast.ok44, label %str_ok40, label %tag.slow_check45

tag.slow_check36:                                 ; preds = %choice.then20
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag30)
  br label %str_ok31

str_ok40:                                         ; preds = %tag.slow_check45, %str_ok31
  %eq.len = icmp eq i64 %eq.lhs.len29, %eq.rhs.len38
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check45:                                 ; preds = %str_ok31
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag39)
  br label %str_ok40

str.eq.then:                                      ; preds = %str_ok40
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %eq.lhs.data46 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %eq.rhs.data47 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data46, ptr %eq.rhs.data47, i64 %eq.lhs.len29)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok40
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then48, label %choice.else49

choice.then48:                                    ; preds = %str.eq.merge
  %var.load51 = load ptr, ptr %var.candidate, align 8
  %p.to.i64 = ptrtoint ptr %var.load51 to i64
  %ram.pay52 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit50

choice.else49:                                    ; preds = %str.eq.merge
  %var.load53 = load ptr, ptr %var.lines, align 8
  %a.load54 = load ptr, ptr %var.lines, align 8
  %a.null55 = icmp eq ptr %a.load54, null
  br i1 %a.null55, label %a.create56, label %a.after57

choice.exit50:                                    ; preds = %choice.exit76, %choice.then48
  %choice.res129 = phi { i1, i64 } [ %ram.pay52, %choice.then48 ], [ %choice.res128, %choice.exit76 ]
  br label %choice.exit22

a.create56:                                       ; preds = %choice.else49
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 24)
  %arena.cur60 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 128)
  %a.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 0
  store i64 0, ptr %a.len.gep62, align 8
  %a.data.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 1
  store ptr %a.buf61, ptr %a.data.gep63, align 8
  %a.cap.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 2
  store i64 16, ptr %a.cap.gep64, align 8
  store ptr %a.create59, ptr %var.lines, align 8
  br label %a.after57

a.after57:                                        ; preds = %a.create56, %choice.else49
  %a.load265 = load ptr, ptr %var.lines, align 8
  %call.res66 = call { i64, ptr } @"formatter::format_safe_fallback"(ptr %a.load265)
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  store { i64, ptr } %call.res66, ptr %ret.ub.alloc68, align 8
  store ptr %ret.ub.alloc68, ptr %var.fb, align 8
  %var.load69 = load ptr, ptr %var.fb, align 8
  %var.load70 = load ptr, ptr %var.filename, align 8
  %call.res71 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load69, ptr %var.load70)
  store { i1, i64 } %call.res71, ptr %var.fb_sig_res, align 8
  %var.load72 = load { i1, i64 }, ptr %var.fb_sig_res, align 8
  %ram.tag73 = extractvalue { i1, i64 } %var.load72, 0
  br i1 %ram.tag73, label %choice.then74, label %choice.else75

choice.then74:                                    ; preds = %a.after57
  %ram.pay77 = extractvalue { i1, i64 } %var.load72, 1
  %pay.ptr78 = inttoptr i64 %ram.pay77 to ptr
  store ptr %pay.ptr78, ptr %var._79, align 8
  store ptr %pay.ptr78, ptr %var.fb_sig, align 8
  %var.load80 = load ptr, ptr %var.fb_sig, align 8
  %var.load81 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len82 = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 0
  %eq.lhs.len83 = load i64, ptr %eq.lhs.len82, align 8
  %eq.lhs.len84 = and i64 %eq.lhs.len83, 281474976710655
  %str.tag85 = lshr i64 %eq.lhs.len83, 48
  %tag.immortal87 = icmp eq i64 %str.tag85, 0
  %active.gen88 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current89 = icmp eq i64 %str.tag85, %active.gen88
  %tag.fast.ok90 = or i1 %tag.immortal87, %tag.current89
  br i1 %tag.fast.ok90, label %str_ok86, label %tag.slow_check91

choice.else75:                                    ; preds = %a.after57
  %ram.pay122 = extractvalue { i1, i64 } %var.load72, 1
  %pay.ptr123 = inttoptr i64 %ram.pay122 to ptr
  store ptr %pay.ptr123, ptr %var._124, align 8
  %var.load125 = load ptr, ptr %var.src, align 8
  %p.to.i64126 = ptrtoint ptr %var.load125 to i64
  %ram.pay127 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64126, 1
  br label %choice.exit76

choice.exit76:                                    ; preds = %choice.else75, %choice.exit115
  %choice.res128 = phi { i1, i64 } [ %choice.res, %choice.exit115 ], [ %ram.pay127, %choice.else75 ]
  br label %choice.exit50

str_ok86:                                         ; preds = %tag.slow_check91, %choice.then74
  %eq.rhs.len92 = getelementptr inbounds { i64, ptr }, ptr %var.load81, i32 0, i32 0
  %eq.rhs.len93 = load i64, ptr %eq.rhs.len92, align 8
  %eq.rhs.len94 = and i64 %eq.rhs.len93, 281474976710655
  %str.tag95 = lshr i64 %eq.rhs.len93, 48
  %tag.immortal97 = icmp eq i64 %str.tag95, 0
  %active.gen98 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current99 = icmp eq i64 %str.tag95, %active.gen98
  %tag.fast.ok100 = or i1 %tag.immortal97, %tag.current99
  br i1 %tag.fast.ok100, label %str_ok96, label %tag.slow_check101

tag.slow_check91:                                 ; preds = %choice.then74
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag85)
  br label %str_ok86

str_ok96:                                         ; preds = %tag.slow_check101, %str_ok86
  %eq.len102 = icmp eq i64 %eq.lhs.len84, %eq.rhs.len94
  br i1 %eq.len102, label %str.eq.then103, label %str.eq.else104

tag.slow_check101:                                ; preds = %str_ok86
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag95)
  br label %str_ok96

str.eq.then103:                                   ; preds = %str_ok96
  %eq.lhs.data106 = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 1
  %eq.lhs.data107 = load ptr, ptr %eq.lhs.data106, align 8
  %eq.rhs.data108 = getelementptr inbounds { i64, ptr }, ptr %var.load81, i32 0, i32 1
  %eq.rhs.data109 = load ptr, ptr %eq.rhs.data108, align 8
  %eq.memcmp110 = call i32 @memcmp(ptr %eq.lhs.data107, ptr %eq.rhs.data109, i64 %eq.lhs.len84)
  %eq.cmp.zero111 = icmp eq i32 %eq.memcmp110, 0
  br label %str.eq.merge105

str.eq.else104:                                   ; preds = %str_ok96
  br label %str.eq.merge105

str.eq.merge105:                                  ; preds = %str.eq.else104, %str.eq.then103
  %str.eq.result112 = phi i1 [ %eq.cmp.zero111, %str.eq.then103 ], [ false, %str.eq.else104 ]
  br i1 %str.eq.result112, label %choice.then113, label %choice.else114

choice.then113:                                   ; preds = %str.eq.merge105
  %var.load116 = load ptr, ptr %var.fb, align 8
  %p.to.i64117 = ptrtoint ptr %var.load116 to i64
  %ram.pay118 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64117, 1
  br label %choice.exit115

choice.else114:                                   ; preds = %str.eq.merge105
  %var.load119 = load ptr, ptr %var.src, align 8
  %p.to.i64120 = ptrtoint ptr %var.load119 to i64
  %ram.pay121 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64120, 1
  br label %choice.exit115

choice.exit115:                                   ; preds = %choice.else114, %choice.then113
  %choice.res = phi { i1, i64 } [ %ram.pay118, %choice.then113 ], [ %ram.pay121, %choice.else114 ]
  br label %choice.exit76

a.create136:                                      ; preds = %choice.else21
  %arena.cur138 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 24)
  %arena.cur140 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 128)
  %a.len.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create139, i32 0, i32 0
  store i64 0, ptr %a.len.gep142, align 8
  %a.data.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create139, i32 0, i32 1
  store ptr %a.buf141, ptr %a.data.gep143, align 8
  %a.cap.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create139, i32 0, i32 2
  store i64 16, ptr %a.cap.gep144, align 8
  store ptr %a.create139, ptr %var.lines, align 8
  br label %a.after137

a.after137:                                       ; preds = %a.create136, %choice.else21
  %a.load2145 = load ptr, ptr %var.lines, align 8
  %call.res146 = call { i64, ptr } @"formatter::format_safe_fallback"(ptr %a.load2145)
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 16)
  store { i64, ptr } %call.res146, ptr %ret.ub.alloc148, align 8
  store ptr %ret.ub.alloc148, ptr %var.fb149, align 8
  %var.load150 = load ptr, ptr %var.fb149, align 8
  %var.load151 = load ptr, ptr %var.filename, align 8
  %call.res152 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load150, ptr %var.load151)
  store { i1, i64 } %call.res152, ptr %var.fb_sig_res153, align 8
  %var.load154 = load { i1, i64 }, ptr %var.fb_sig_res153, align 8
  %ram.tag155 = extractvalue { i1, i64 } %var.load154, 0
  br i1 %ram.tag155, label %choice.then156, label %choice.else157

choice.then156:                                   ; preds = %a.after137
  %ram.pay159 = extractvalue { i1, i64 } %var.load154, 1
  %pay.ptr160 = inttoptr i64 %ram.pay159 to ptr
  store ptr %pay.ptr160, ptr %var._161, align 8
  store ptr %pay.ptr160, ptr %var.fb_sig162, align 8
  %var.load163 = load ptr, ptr %var.fb_sig162, align 8
  %var.load164 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len165 = getelementptr inbounds { i64, ptr }, ptr %var.load163, i32 0, i32 0
  %eq.lhs.len166 = load i64, ptr %eq.lhs.len165, align 8
  %eq.lhs.len167 = and i64 %eq.lhs.len166, 281474976710655
  %str.tag168 = lshr i64 %eq.lhs.len166, 48
  %tag.immortal170 = icmp eq i64 %str.tag168, 0
  %active.gen171 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current172 = icmp eq i64 %str.tag168, %active.gen171
  %tag.fast.ok173 = or i1 %tag.immortal170, %tag.current172
  br i1 %tag.fast.ok173, label %str_ok169, label %tag.slow_check174

choice.else157:                                   ; preds = %a.after137
  %ram.pay206 = extractvalue { i1, i64 } %var.load154, 1
  %pay.ptr207 = inttoptr i64 %ram.pay206 to ptr
  store ptr %pay.ptr207, ptr %var._208, align 8
  %var.load209 = load ptr, ptr %var.src, align 8
  %p.to.i64210 = ptrtoint ptr %var.load209 to i64
  %ram.pay211 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64210, 1
  br label %choice.exit158

choice.exit158:                                   ; preds = %choice.else157, %choice.exit198
  %choice.res212 = phi { i1, i64 } [ %choice.res205, %choice.exit198 ], [ %ram.pay211, %choice.else157 ]
  br label %choice.exit22

str_ok169:                                        ; preds = %tag.slow_check174, %choice.then156
  %eq.rhs.len175 = getelementptr inbounds { i64, ptr }, ptr %var.load164, i32 0, i32 0
  %eq.rhs.len176 = load i64, ptr %eq.rhs.len175, align 8
  %eq.rhs.len177 = and i64 %eq.rhs.len176, 281474976710655
  %str.tag178 = lshr i64 %eq.rhs.len176, 48
  %tag.immortal180 = icmp eq i64 %str.tag178, 0
  %active.gen181 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current182 = icmp eq i64 %str.tag178, %active.gen181
  %tag.fast.ok183 = or i1 %tag.immortal180, %tag.current182
  br i1 %tag.fast.ok183, label %str_ok179, label %tag.slow_check184

tag.slow_check174:                                ; preds = %choice.then156
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag168)
  br label %str_ok169

str_ok179:                                        ; preds = %tag.slow_check184, %str_ok169
  %eq.len185 = icmp eq i64 %eq.lhs.len167, %eq.rhs.len177
  br i1 %eq.len185, label %str.eq.then186, label %str.eq.else187

tag.slow_check184:                                ; preds = %str_ok169
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag178)
  br label %str_ok179

str.eq.then186:                                   ; preds = %str_ok179
  %eq.lhs.data189 = getelementptr inbounds { i64, ptr }, ptr %var.load163, i32 0, i32 1
  %eq.lhs.data190 = load ptr, ptr %eq.lhs.data189, align 8
  %eq.rhs.data191 = getelementptr inbounds { i64, ptr }, ptr %var.load164, i32 0, i32 1
  %eq.rhs.data192 = load ptr, ptr %eq.rhs.data191, align 8
  %eq.memcmp193 = call i32 @memcmp(ptr %eq.lhs.data190, ptr %eq.rhs.data192, i64 %eq.lhs.len167)
  %eq.cmp.zero194 = icmp eq i32 %eq.memcmp193, 0
  br label %str.eq.merge188

str.eq.else187:                                   ; preds = %str_ok179
  br label %str.eq.merge188

str.eq.merge188:                                  ; preds = %str.eq.else187, %str.eq.then186
  %str.eq.result195 = phi i1 [ %eq.cmp.zero194, %str.eq.then186 ], [ false, %str.eq.else187 ]
  br i1 %str.eq.result195, label %choice.then196, label %choice.else197

choice.then196:                                   ; preds = %str.eq.merge188
  %var.load199 = load ptr, ptr %var.fb149, align 8
  %p.to.i64200 = ptrtoint ptr %var.load199 to i64
  %ram.pay201 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64200, 1
  br label %choice.exit198

choice.else197:                                   ; preds = %str.eq.merge188
  %var.load202 = load ptr, ptr %var.src, align 8
  %p.to.i64203 = ptrtoint ptr %var.load202 to i64
  %ram.pay204 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64203, 1
  br label %choice.exit198

choice.exit198:                                   ; preds = %choice.else197, %choice.then196
  %choice.res205 = phi { i1, i64 } [ %ram.pay201, %choice.then196 ], [ %ram.pay204, %choice.else197 ]
  br label %choice.exit158
}

define void @"formatter::sort_names"(ptr %0) #0 {
entry:
  %var._227 = alloca ptr, align 8
  %var._226 = alloca ptr, align 8
  %var._225 = alloca ptr, align 8
  %var._157 = alloca ptr, align 8
  %var._156 = alloca ptr, align 8
  %var._155 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._109 = alloca ptr, align 8
  %var._106 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._44 = alloca ptr, align 8
  %var._41 = alloca ptr, align 8
  %var._10 = alloca i64, align 8
  %var._i9 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.664 = alloca i64, align 8
  %loop.idx.664 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.663 = alloca i64, align 8
  %loop.idx.663 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.names = alloca ptr, align 8
  store ptr %0, ptr %var.names, align 8
  %var.load = load ptr, ptr %var.names, align 8
  %a.load = load ptr, ptr %var.names, align 8
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
  store ptr %a.create1, ptr %var.names, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.663, align 8
  br label %loop.header.663

loop.header.663:                                  ; preds = %loop.latch.663, %a.after
  %counter.load = load i64, ptr %loop.idx.663, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load4
  br i1 %loop.cond, label %loop.body.663, label %loop.exit.nat.663

loop.body.663:                                    ; preds = %loop.header.663
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.663, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load5, 1
  store i64 0, ptr %loop.idx.664, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.664

loop.exit.nat.663:                                ; preds = %loop.header.663
  br label %loop.exit.663

loop.latch.663:                                   ; preds = %loop.exit.664
  %step.val258 = load i64, ptr %loop.step.663, align 8
  %loop.next259 = add i64 %counter.load, %step.val258
  store i64 %loop.next259, ptr %loop.idx.663, align 8
  br label %loop.header.663

loop.exit.663:                                    ; preds = %loop.exit.nat.663
  ret void

loop.header.664:                                  ; preds = %loop.latch.664, %loop.body.663
  %counter.load6 = load i64, ptr %loop.idx.664, align 8
  %loop.cond7 = icmp slt i64 %counter.load6, %subtmp
  br i1 %loop.cond7, label %loop.body.664, label %loop.exit.nat.664

loop.body.664:                                    ; preds = %loop.header.664
  %loop.rel.i8 = sub i64 %counter.load6, 0
  store i64 1, ptr %loop.step.664, align 8
  store i64 %loop.rel.i8, ptr %var._i9, align 8
  store i64 %counter.load6, ptr %var._10, align 8
  store i64 %counter.load6, ptr %var.j, align 8
  %var.load11 = load ptr, ptr %var.names, align 8
  %a.load12 = load ptr, ptr %var.names, align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

loop.exit.nat.664:                                ; preds = %loop.header.664
  br label %loop.exit.664

loop.latch.664:                                   ; preds = %choice.exit114
  %step.val = load i64, ptr %loop.step.664, align 8
  %loop.next = add i64 %counter.load6, %step.val
  store i64 %loop.next, ptr %loop.idx.664, align 8
  br label %loop.header.664

loop.exit.664:                                    ; preds = %loop.exit.nat.664
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  br label %loop.latch.663

a.create14:                                       ; preds = %loop.body.664
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.create17, ptr %var.names, align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %loop.body.664
  %a.load223 = load ptr, ptr %var.names, align 8
  %var.load24 = load i64, ptr %var.j, align 8
  %a.rd.nonnull = icmp ne ptr %a.load223, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after15
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  %a.rd.len25 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load24, 0
  %a.rd.lt = icmp slt i64 %var.load24, %a.rd.len25
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 1
  %a.rd.data26 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data26, i64 %var.load24
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after15
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 717, ptr %err.line.gep, align 8
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
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 56)
  %err.code.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 0
  store i64 4011, ptr %err.code.gep30, align 8
  %err.msg.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep31, align 8
  %err.file.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep32, align 8
  %err.line.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 3
  store i64 717, ptr %err.line.gep33, align 8
  %err.col.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 4
  store i64 23, ptr %err.col.gep34, align 8
  %err.ctx.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 5
  %err.ctx0.gep36 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep35, i32 0, i32 0
  store i64 %var.load24, ptr %err.ctx0.gep36, align 8
  %err.ctx1.gep37 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep35, i32 0, i32 1
  store i64 %a.rd.len25, ptr %err.ctx1.gep37, align 8
  %err.p2i38 = ptrtoint ptr %err.alloc29 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i38, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag39 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag39, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay40 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay40 to ptr
  store ptr %pay.ptr, ptr %var._41, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay42 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr43 = inttoptr i64 %ram.pay42 to ptr
  store ptr %pay.ptr43, ptr %var._44, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ @str.12.struct, %choice.else ]
  store ptr %choice.res, ptr %var.a, align 8
  %var.load45 = load ptr, ptr %var.names, align 8
  %a.load46 = load ptr, ptr %var.names, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

a.create48:                                       ; preds = %choice.exit
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 128)
  %a.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 0
  store i64 0, ptr %a.len.gep54, align 8
  %a.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 1
  store ptr %a.buf53, ptr %a.data.gep55, align 8
  %a.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 2
  store i64 16, ptr %a.cap.gep56, align 8
  store ptr %a.create51, ptr %var.names, align 8
  br label %a.after49

a.after49:                                        ; preds = %a.create48, %choice.exit
  %a.load257 = load ptr, ptr %var.names, align 8
  %var.load58 = load i64, ptr %var.j, align 8
  %addtmp = add i64 %var.load58, 1
  %a.rd.nonnull59 = icmp ne ptr %a.load257, null
  br i1 %a.rd.nonnull59, label %a.rd.check60, label %a.rd.err.null62

a.rd.check60:                                     ; preds = %a.after49
  %a.rd.len65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.rd.len66 = load i64, ptr %a.rd.len65, align 8
  %a.rd.ge067 = icmp sge i64 %addtmp, 0
  %a.rd.lt68 = icmp slt i64 %addtmp, %a.rd.len66
  %a.rd.bounds69 = and i1 %a.rd.ge067, %a.rd.lt68
  br i1 %a.rd.bounds69, label %a.rd.ok61, label %a.rd.err.oob63

a.rd.ok61:                                        ; preds = %a.rd.check60
  %a.rd.data70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 1
  %a.rd.data71 = load ptr, ptr %a.rd.data70, align 8
  %a.rd.elem.gep72 = getelementptr i64, ptr %a.rd.data71, i64 %addtmp
  %a.rd.elem73 = load i64, ptr %a.rd.elem.gep72, align 8
  br label %a.rd.done64

a.rd.err.null62:                                  ; preds = %a.after49
  %arena.cur74 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 56)
  %err.code.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 0
  store i64 4011, ptr %err.code.gep76, align 8
  %err.msg.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep77, align 8
  %err.file.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep78, align 8
  %err.line.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 3
  store i64 718, ptr %err.line.gep79, align 8
  %err.col.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 4
  store i64 27, ptr %err.col.gep80, align 8
  %err.ctx.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 5
  %err.ctx0.gep82 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep81, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep82, align 8
  %err.ctx1.gep83 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep81, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep83, align 8
  %err.p2i84 = ptrtoint ptr %err.alloc75 to i64
  br label %a.rd.done64

a.rd.err.oob63:                                   ; preds = %a.rd.check60
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 56)
  %err.code.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 0
  store i64 4011, ptr %err.code.gep87, align 8
  %err.msg.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep88, align 8
  %err.file.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep89, align 8
  %err.line.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 3
  store i64 718, ptr %err.line.gep90, align 8
  %err.col.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 4
  store i64 27, ptr %err.col.gep91, align 8
  %err.ctx.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 5
  %err.ctx0.gep93 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep92, i32 0, i32 0
  store i64 %addtmp, ptr %err.ctx0.gep93, align 8
  %err.ctx1.gep94 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep92, i32 0, i32 1
  store i64 %a.rd.len66, ptr %err.ctx1.gep94, align 8
  %err.p2i95 = ptrtoint ptr %err.alloc86 to i64
  br label %a.rd.done64

a.rd.done64:                                      ; preds = %a.rd.err.oob63, %a.rd.err.null62, %a.rd.ok61
  %a.rd.tag96 = phi i1 [ true, %a.rd.ok61 ], [ false, %a.rd.err.null62 ], [ false, %a.rd.err.oob63 ]
  %a.rd.pay97 = phi i64 [ %a.rd.elem73, %a.rd.ok61 ], [ %err.p2i84, %a.rd.err.null62 ], [ %err.p2i95, %a.rd.err.oob63 ]
  %ram.tag98 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag96, 0
  %ram.pay99 = insertvalue { i1, i64 } %ram.tag98, i64 %a.rd.pay97, 1
  %ram.tag100 = extractvalue { i1, i64 } %ram.pay99, 0
  br i1 %ram.tag100, label %choice.then101, label %choice.else102

choice.then101:                                   ; preds = %a.rd.done64
  %ram.pay104 = extractvalue { i1, i64 } %ram.pay99, 1
  %pay.ptr105 = inttoptr i64 %ram.pay104 to ptr
  store ptr %pay.ptr105, ptr %var._106, align 8
  br label %choice.exit103

choice.else102:                                   ; preds = %a.rd.done64
  %ram.pay107 = extractvalue { i1, i64 } %ram.pay99, 1
  %pay.ptr108 = inttoptr i64 %ram.pay107 to ptr
  store ptr %pay.ptr108, ptr %var._109, align 8
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.else102, %choice.then101
  %choice.res110 = phi ptr [ %pay.ptr105, %choice.then101 ], [ @str.12.struct, %choice.else102 ]
  store ptr %choice.res110, ptr %var.b, align 8
  %var.load111 = load ptr, ptr %var.a, align 8
  %var.load112 = load ptr, ptr %var.b, align 8
  %call.res = call i64 @"str::cmp"(ptr %var.load111, ptr %var.load112)
  %cmptmp = icmp sgt i64 %call.res, 0
  br i1 %cmptmp, label %choice.then113, label %choice.exit114

choice.then113:                                   ; preds = %choice.exit103
  %var.load115 = load ptr, ptr %var.names, align 8
  %a.load116 = load ptr, ptr %var.names, align 8
  %a.null117 = icmp eq ptr %a.load116, null
  br i1 %a.null117, label %a.create118, label %a.after119

choice.exit114:                                   ; preds = %choice.exit224, %choice.exit103
  br label %loop.latch.664

a.create118:                                      ; preds = %choice.then113
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 24)
  %arena.cur122 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 128)
  %a.len.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create121, i32 0, i32 0
  store i64 0, ptr %a.len.gep124, align 8
  %a.data.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create121, i32 0, i32 1
  store ptr %a.buf123, ptr %a.data.gep125, align 8
  %a.cap.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create121, i32 0, i32 2
  store i64 16, ptr %a.cap.gep126, align 8
  store ptr %a.create121, ptr %var.names, align 8
  br label %a.after119

a.after119:                                       ; preds = %a.create118, %choice.then113
  %a.load2127 = load ptr, ptr %var.names, align 8
  %var.load128 = load i64, ptr %var.j, align 8
  %var.load129 = load ptr, ptr %var.b, align 8
  %slot.p2i = ptrtoint ptr %var.load129 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2127, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after119
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 0
  %a.wr.len130 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load128, 0
  %a.wr.lt = icmp slt i64 %var.load128, %a.wr.len130
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 1
  %a.wr.data131 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data131, i64 %var.load128
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after119
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 56)
  %err.code.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 0
  store i64 4011, ptr %err.code.gep134, align 8
  %err.msg.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep135, align 8
  %err.file.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep136, align 8
  %err.line.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 3
  store i64 0, ptr %err.line.gep137, align 8
  %err.col.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 4
  store i64 0, ptr %err.col.gep138, align 8
  %err.ctx.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 5
  %err.ctx0.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep140, align 8
  %err.ctx1.gep141 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep141, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 56)
  %err.code.gep144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 0
  store i64 4011, ptr %err.code.gep144, align 8
  %err.msg.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep145, align 8
  %err.file.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep146, align 8
  %err.line.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 3
  store i64 0, ptr %err.line.gep147, align 8
  %err.col.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 4
  store i64 0, ptr %err.col.gep148, align 8
  %err.ctx.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 5
  %err.ctx0.gep150 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 0
  store i64 %var.load128, ptr %err.ctx0.gep150, align 8
  %err.ctx1.gep151 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 1
  store i64 %a.wr.len130, ptr %err.ctx1.gep151, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc133, %a.wr.err.null ], [ %err.alloc143, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then152, label %choice.else153

choice.then152:                                   ; preds = %a.wr.done
  br label %choice.exit154

choice.else153:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._155, align 8
  store ptr %a.wr.niche, ptr %var._156, align 8
  store ptr %a.wr.niche, ptr %var._157, align 8
  %err.code.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep158, align 8
  %err.msg.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep159, align 8
  %err.file.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep160, align 8
  %err.line.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep161, align 8
  %err.col.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep162, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len163 = load i64, ptr %err.msg.len, align 8
  %err.msg.len164 = and i64 %err.msg.len163, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len164 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data165 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len166 = load i64, ptr %err.file.len, align 8
  %err.file.len167 = and i64 %err.file.len166, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len167 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data168 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

choice.exit154:                                   ; preds = %err.abort, %choice.then152
  %var.load169 = load ptr, ptr %var.names, align 8
  %a.load170 = load ptr, ptr %var.names, align 8
  %a.null171 = icmp eq ptr %a.load170, null
  br i1 %a.null171, label %a.create172, label %a.after173

err.thread:                                       ; preds = %choice.else153
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else153
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data165, i32 %err.file.len32, ptr %err.file.data168, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit154

a.create172:                                      ; preds = %choice.exit154
  %arena.cur174 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 24)
  %arena.cur176 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf177 = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 128)
  %a.len.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 0
  store i64 0, ptr %a.len.gep178, align 8
  %a.data.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 1
  store ptr %a.buf177, ptr %a.data.gep179, align 8
  %a.cap.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create175, i32 0, i32 2
  store i64 16, ptr %a.cap.gep180, align 8
  store ptr %a.create175, ptr %var.names, align 8
  br label %a.after173

a.after173:                                       ; preds = %a.create172, %choice.exit154
  %a.load2181 = load ptr, ptr %var.names, align 8
  %var.load182 = load i64, ptr %var.j, align 8
  %addtmp183 = add i64 %var.load182, 1
  %var.load184 = load ptr, ptr %var.a, align 8
  %slot.p2i185 = ptrtoint ptr %var.load184 to i64
  %a.wr.nonnull186 = icmp ne ptr %a.load2181, null
  br i1 %a.wr.nonnull186, label %a.wr.check187, label %a.wr.err.null189

a.wr.check187:                                    ; preds = %a.after173
  %a.wr.len192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2181, i32 0, i32 0
  %a.wr.len193 = load i64, ptr %a.wr.len192, align 8
  %a.wr.ge0194 = icmp sge i64 %addtmp183, 0
  %a.wr.lt195 = icmp slt i64 %addtmp183, %a.wr.len193
  %a.wr.bounds196 = and i1 %a.wr.ge0194, %a.wr.lt195
  br i1 %a.wr.bounds196, label %a.wr.ok188, label %a.wr.err.oob190

a.wr.ok188:                                       ; preds = %a.wr.check187
  %a.wr.data197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2181, i32 0, i32 1
  %a.wr.data198 = load ptr, ptr %a.wr.data197, align 8
  %a.elem.gep199 = getelementptr i64, ptr %a.wr.data198, i64 %addtmp183
  store i64 %slot.p2i185, ptr %a.elem.gep199, align 8
  br label %a.wr.done191

a.wr.err.null189:                                 ; preds = %a.after173
  %arena.cur200 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 56)
  %err.code.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 0
  store i64 4011, ptr %err.code.gep202, align 8
  %err.msg.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep203, align 8
  %err.file.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep204, align 8
  %err.line.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 3
  store i64 0, ptr %err.line.gep205, align 8
  %err.col.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 4
  store i64 0, ptr %err.col.gep206, align 8
  %err.ctx.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc201, i32 0, i32 5
  %err.ctx0.gep208 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep207, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep208, align 8
  %err.ctx1.gep209 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep207, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep209, align 8
  br label %a.wr.done191

a.wr.err.oob190:                                  ; preds = %a.wr.check187
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 56)
  %err.code.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 0
  store i64 4011, ptr %err.code.gep212, align 8
  %err.msg.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep213, align 8
  %err.file.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep214, align 8
  %err.line.gep215 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 3
  store i64 0, ptr %err.line.gep215, align 8
  %err.col.gep216 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 4
  store i64 0, ptr %err.col.gep216, align 8
  %err.ctx.gep217 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 5
  %err.ctx0.gep218 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep217, i32 0, i32 0
  store i64 %addtmp183, ptr %err.ctx0.gep218, align 8
  %err.ctx1.gep219 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep217, i32 0, i32 1
  store i64 %a.wr.len193, ptr %err.ctx1.gep219, align 8
  br label %a.wr.done191

a.wr.done191:                                     ; preds = %a.wr.err.oob190, %a.wr.err.null189, %a.wr.ok188
  %a.wr.niche220 = phi ptr [ null, %a.wr.ok188 ], [ %err.alloc201, %a.wr.err.null189 ], [ %err.alloc211, %a.wr.err.oob190 ]
  %niche.eq.null221 = icmp eq ptr %a.wr.niche220, null
  br i1 %niche.eq.null221, label %choice.then222, label %choice.else223

choice.then222:                                   ; preds = %a.wr.done191
  br label %choice.exit224

choice.else223:                                   ; preds = %a.wr.done191
  store ptr %a.wr.niche220, ptr %var._225, align 8
  store ptr %a.wr.niche220, ptr %var._226, align 8
  store ptr %a.wr.niche220, ptr %var._227, align 8
  %err.code.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche220, i32 0, i32 0
  %err.code229 = load i64, ptr %err.code.gep228, align 8
  %err.msg.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche220, i32 0, i32 1
  %err.msg.struct231 = load ptr, ptr %err.msg.gep230, align 8
  %err.file.gep232 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche220, i32 0, i32 2
  %err.file.struct233 = load ptr, ptr %err.file.gep232, align 8
  %err.line.gep234 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche220, i32 0, i32 3
  %err.line235 = load i64, ptr %err.line.gep234, align 8
  %err.col.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche220, i32 0, i32 4
  %err.col237 = load i64, ptr %err.col.gep236, align 8
  %err.msg.len238 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct231, i32 0, i32 0
  %err.msg.len239 = load i64, ptr %err.msg.len238, align 8
  %err.msg.len240 = and i64 %err.msg.len239, 281474976710655
  %err.msg.len32241 = trunc i64 %err.msg.len240 to i32
  %err.msg.data242 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct231, i32 0, i32 1
  %err.msg.data243 = load ptr, ptr %err.msg.data242, align 8
  %err.file.len244 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct233, i32 0, i32 0
  %err.file.len245 = load i64, ptr %err.file.len244, align 8
  %err.file.len246 = and i64 %err.file.len245, 281474976710655
  %err.file.len32247 = trunc i64 %err.file.len246 to i32
  %err.file.data248 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct233, i32 0, i32 1
  %err.file.data249 = load ptr, ptr %err.file.data248, align 8
  %err.thread.rec250 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread251 = icmp ne ptr %err.thread.rec250, null
  br i1 %err.is.thread251, label %err.thread252, label %err.normal253

choice.exit224:                                   ; preds = %err.abort257, %choice.then222
  br label %choice.exit114

err.thread252:                                    ; preds = %choice.else223
  %err.haserr.gep254 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec250, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep254, align 8
  %err.err.gep255 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec250, i32 0, i32 7
  store ptr %a.wr.niche220, ptr %err.err.gep255, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal253:                                    ; preds = %choice.else223
  %err.panic.printf256 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code229, i32 %err.msg.len32241, ptr %err.msg.data243, i32 %err.file.len32247, ptr %err.file.data249, i64 %err.line235, i64 %err.col237)
  call void @exit(i32 1)
  unreachable

err.abort257:                                     ; No predecessors!
  br label %choice.exit224
}

declare i64 @"str::cmp"(ptr, ptr) #0

define void @"formatter::collect_dva_files"(ptr %0, ptr %1) #0 {
entry:
  %var.sub = alloca ptr, align 8
  %var._123 = alloca ptr, align 8
  %var._i122 = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %loop.step.666 = alloca i64, align 8
  %loop.idx.666 = alloca i64, align 8
  %var.names = alloca ptr, align 8
  %var._map_v_810 = alloca ptr, align 8
  %var._43 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.ent = alloca ptr, align 8
  %loop.step.665 = alloca i64, align 8
  %loop.idx.665 = alloca i64, align 8
  %var._map_out_810 = alloca ptr, align 8
  %var.out = alloca ptr, align 8
  %var.target = alloca ptr, align 8
  store ptr %0, ptr %var.target, align 8
  store ptr %1, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.target, align 8
  %call.res = call i1 @"fs::is_file"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.target, align 8
  %call.res2 = call { i64, ptr } @"fs::ext"(ptr %var.load1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res2, ptr %ret.ub.alloc, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len3 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len4 = and i64 %eq.lhs.len3, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else:                                      ; preds = %entry
  %var.load17 = load ptr, ptr %var.target, align 8
  %call.res18 = call i1 @"fs::is_dir"(ptr %var.load17)
  br i1 %call.res18, label %choice.then19, label %choice.exit20

choice.exit:                                      ; preds = %choice.exit20, %choice.exit8
  ret void

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %eq.rhs.len = load i64, ptr @str.73.struct, align 8
  %eq.rhs.len5 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len4, %eq.rhs.len5
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data6 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.73.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data6, ptr %eq.rhs.data, i64 %eq.lhs.len4)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then7, label %choice.exit8

choice.then7:                                     ; preds = %str.eq.merge
  %var.load9 = load ptr, ptr %var.target, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit8:                                     ; preds = %a.store, %str.eq.merge
  br label %choice.exit

a.create:                                         ; preds = %choice.then7
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 24)
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create11, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then7
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len13 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap14 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len13, %a.cap14
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data15 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len16 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data15, i64 %a.cur.len16
  %slot.p2i = ptrtoint ptr %var.load9 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len16, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit8

choice.then19:                                    ; preds = %choice.else
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 128)
  %a.len.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep24, align 8
  %a.data.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf23, ptr %a.data.gep25, align 8
  %a.cap.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep26, align 8
  store ptr %a.new, ptr %var._map_out_810, align 8
  %var.load27 = load ptr, ptr %var.target, align 8
  %call.res28 = call ptr @"fs::read_dir"(ptr %var.load27)
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %call.res28, i32 0, i32 0
  %arr.cycle.len29 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %call.res28, i32 0, i32 1
  %arr.cycle.data30 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.665, align 8
  br label %loop.header.665

choice.exit20:                                    ; preds = %loop.exit.666, %choice.else
  br label %choice.exit

loop.header.665:                                  ; preds = %loop.latch.665, %choice.then19
  %counter.load = load i64, ptr %loop.idx.665, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len29
  br i1 %loop.cond, label %loop.body.665, label %loop.exit.nat.665

loop.body.665:                                    ; preds = %loop.header.665
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.665, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data30, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ent, align 8
  %var.load31 = load ptr, ptr %var.ent, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load31, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len33
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.665:                                ; preds = %loop.header.665
  br label %loop.exit.665

loop.latch.665:                                   ; preds = %choice.exit42
  %step.val = load i64, ptr %loop.step.665, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.665, align 8
  br label %loop.header.665

loop.exit.665:                                    ; preds = %loop.exit.nat.665
  %var.load73 = load ptr, ptr %var._map_out_810, align 8
  %a.load74 = load ptr, ptr %var._map_out_810, align 8
  %a.null75 = icmp eq ptr %a.load74, null
  br i1 %a.null75, label %a.create76, label %a.after77

idx_ok:                                           ; preds = %abort.dead, %loop.body.665
  %s.byte.gep = getelementptr i8, ptr %s.read.data34, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp ne i64 %s.byte.val, 46
  br i1 %cmptmp, label %choice.then35, label %choice.else36

idx_oob:                                          ; preds = %loop.body.665
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then35:                                    ; preds = %idx_ok
  %var.load38 = load ptr, ptr %var.ent, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load38, i32 0, i32 0
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  br label %choice.exit37

choice.else36:                                    ; preds = %idx_ok
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.else36, %choice.then35
  %choice.res = phi ptr [ %fld.load40, %choice.then35 ], [ null, %choice.else36 ]
  %niche.ne.null = icmp ne ptr %choice.res, null
  br i1 %niche.ne.null, label %choice.then41, label %choice.exit42

choice.then41:                                    ; preds = %choice.exit37
  store ptr %choice.res, ptr %var._43, align 8
  store ptr %choice.res, ptr %var._map_v_810, align 8
  %var.load44 = load ptr, ptr %var._map_v_810, align 8
  %a.load45 = load ptr, ptr %var._map_out_810, align 8
  %a.null46 = icmp eq ptr %a.load45, null
  br i1 %a.null46, label %a.create47, label %a.after48

choice.exit42:                                    ; preds = %a.store59, %choice.exit37
  br label %loop.latch.665

a.create47:                                       ; preds = %choice.then41
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create50 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 24)
  %arena.cur51 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 128)
  %a.len.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create50, i32 0, i32 0
  store i64 0, ptr %a.len.gep53, align 8
  %a.data.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create50, i32 0, i32 1
  store ptr %a.buf52, ptr %a.data.gep54, align 8
  %a.cap.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create50, i32 0, i32 2
  store i64 16, ptr %a.cap.gep55, align 8
  store ptr %a.create50, ptr %var._map_out_810, align 8
  br label %a.after48

a.after48:                                        ; preds = %a.create47, %choice.then41
  %a.load256 = load ptr, ptr %var._map_out_810, align 8
  br label %a.check57

a.check57:                                        ; preds = %a.after48
  %a.len60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load256, i32 0, i32 0
  %a.len61 = load i64, ptr %a.len60, align 8
  %a.cap62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load256, i32 0, i32 2
  %a.cap63 = load i64, ptr %a.cap62, align 8
  %a.needs.grow64 = icmp eq i64 %a.len61, %a.cap63
  br i1 %a.needs.grow64, label %a.grow58, label %a.store59

a.grow58:                                         ; preds = %a.check57
  call void @dva_array_grow(ptr %a.load256)
  br label %a.store59

a.store59:                                        ; preds = %a.grow58, %a.check57
  %a.cur.data65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load256, i32 0, i32 1
  %a.cur.data66 = load ptr, ptr %a.cur.data65, align 8
  %a.cur.len67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load256, i32 0, i32 0
  %a.cur.len68 = load i64, ptr %a.cur.len67, align 8
  %a.elem.gep69 = getelementptr i64, ptr %a.cur.data66, i64 %a.cur.len68
  %slot.p2i70 = ptrtoint ptr %var.load44 to i64
  store i64 %slot.p2i70, ptr %a.elem.gep69, align 8
  %a.next.len71 = add i64 %a.cur.len68, 1
  %b.len.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load256, i32 0, i32 0
  store i64 %a.next.len71, ptr %b.len.gep72, align 8
  br label %choice.exit42

a.create76:                                       ; preds = %loop.exit.665
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 24)
  %arena.cur80 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 128)
  %a.len.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create79, i32 0, i32 0
  store i64 0, ptr %a.len.gep82, align 8
  %a.data.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create79, i32 0, i32 1
  store ptr %a.buf81, ptr %a.data.gep83, align 8
  %a.cap.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create79, i32 0, i32 2
  store i64 16, ptr %a.cap.gep84, align 8
  store ptr %a.create79, ptr %var._map_out_810, align 8
  br label %a.after77

a.after77:                                        ; preds = %a.create76, %loop.exit.665
  %a.load285 = load ptr, ptr %var._map_out_810, align 8
  store ptr %a.load285, ptr %var.names, align 8
  %var.load86 = load ptr, ptr %var.names, align 8
  %a.load87 = load ptr, ptr %var.names, align 8
  %a.null88 = icmp eq ptr %a.load87, null
  br i1 %a.null88, label %a.create89, label %a.after90

a.create89:                                       ; preds = %a.after77
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 24)
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 128)
  %a.len.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create92, i32 0, i32 0
  store i64 0, ptr %a.len.gep95, align 8
  %a.data.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create92, i32 0, i32 1
  store ptr %a.buf94, ptr %a.data.gep96, align 8
  %a.cap.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create92, i32 0, i32 2
  store i64 16, ptr %a.cap.gep97, align 8
  store ptr %a.create92, ptr %var.names, align 8
  br label %a.after90

a.after90:                                        ; preds = %a.create89, %a.after77
  %a.load298 = load ptr, ptr %var.names, align 8
  call void @"formatter::sort_names"(ptr %a.load298)
  %var.load99 = load ptr, ptr %var.names, align 8
  %a.load100 = load ptr, ptr %var.names, align 8
  %a.null101 = icmp eq ptr %a.load100, null
  br i1 %a.null101, label %a.create102, label %a.after103

a.create102:                                      ; preds = %a.after90
  %arena.cur104 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 24)
  %arena.cur106 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 128)
  %a.len.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create105, i32 0, i32 0
  store i64 0, ptr %a.len.gep108, align 8
  %a.data.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create105, i32 0, i32 1
  store ptr %a.buf107, ptr %a.data.gep109, align 8
  %a.cap.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create105, i32 0, i32 2
  store i64 16, ptr %a.cap.gep110, align 8
  store ptr %a.create105, ptr %var.names, align 8
  br label %a.after103

a.after103:                                       ; preds = %a.create102, %a.after90
  %a.load2111 = load ptr, ptr %var.names, align 8
  %arr.cycle.len112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2111, i32 0, i32 0
  %arr.cycle.len113 = load i64, ptr %arr.cycle.len112, align 8
  %arr.cycle.data114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2111, i32 0, i32 1
  %arr.cycle.data115 = load ptr, ptr %arr.cycle.data114, align 8
  store i64 0, ptr %loop.idx.666, align 8
  br label %loop.header.666

loop.header.666:                                  ; preds = %loop.latch.666, %a.after103
  %counter.load116 = load i64, ptr %loop.idx.666, align 8
  %loop.cond117 = icmp slt i64 %counter.load116, %arr.cycle.len113
  br i1 %loop.cond117, label %loop.body.666, label %loop.exit.nat.666

loop.body.666:                                    ; preds = %loop.header.666
  %loop.rel.i118 = sub i64 %counter.load116, 0
  store i64 1, ptr %loop.step.666, align 8
  %arr.elem.gep119 = getelementptr i64, ptr %arr.cycle.data115, i64 %counter.load116
  %arr.elem.raw120 = load i64, ptr %arr.elem.gep119, align 8
  %slot.i2p121 = inttoptr i64 %arr.elem.raw120 to ptr
  store i64 %loop.rel.i118, ptr %var._i122, align 8
  store ptr %slot.i2p121, ptr %var._123, align 8
  store ptr %slot.i2p121, ptr %var.name, align 8
  %var.load124 = load ptr, ptr %var.target, align 8
  %var.load125 = load ptr, ptr %var.name, align 8
  %call.res126 = call { i64, ptr } @"fs::join"(ptr %var.load124, ptr %var.load125)
  %arena.cur127 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 16)
  store { i64, ptr } %call.res126, ptr %ret.ub.alloc128, align 8
  store ptr %ret.ub.alloc128, ptr %var.sub, align 8
  %var.load129 = load ptr, ptr %var.sub, align 8
  %var.load130 = load ptr, ptr %var.out, align 8
  %a.load131 = load ptr, ptr %var.out, align 8
  %a.null132 = icmp eq ptr %a.load131, null
  br i1 %a.null132, label %a.create133, label %a.after134

loop.exit.nat.666:                                ; preds = %loop.header.666
  br label %loop.exit.666

loop.latch.666:                                   ; preds = %a.after134
  %step.val143 = load i64, ptr %loop.step.666, align 8
  %loop.next144 = add i64 %counter.load116, %step.val143
  store i64 %loop.next144, ptr %loop.idx.666, align 8
  br label %loop.header.666

loop.exit.666:                                    ; preds = %loop.exit.nat.666
  br label %choice.exit20

a.create133:                                      ; preds = %loop.body.666
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 24)
  %arena.cur137 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 128)
  %a.len.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create136, i32 0, i32 0
  store i64 0, ptr %a.len.gep139, align 8
  %a.data.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create136, i32 0, i32 1
  store ptr %a.buf138, ptr %a.data.gep140, align 8
  %a.cap.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create136, i32 0, i32 2
  store i64 16, ptr %a.cap.gep141, align 8
  store ptr %a.create136, ptr %var.out, align 8
  br label %a.after134

a.after134:                                       ; preds = %a.create133, %loop.body.666
  %a.load2142 = load ptr, ptr %var.out, align 8
  call void @"formatter::collect_dva_files"(ptr %var.load129, ptr %a.load2142)
  br label %loop.latch.666
}

declare i1 @"fs::is_file"(ptr) #0

declare { i64, ptr } @"fs::ext"(ptr) #0

declare i1 @"fs::is_dir"(ptr) #0

declare ptr @"fs::read_dir"(ptr) #0

declare { i64, ptr } @"fs::join"(ptr, ptr) #0

define { i64, ptr } @"formatter::read_stdin_all"() #0 {
entry:
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.667 = alloca i64, align 8
  %loop.idx.667 = alloca i64, align 8
  %var.chunk = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %b.data.gep5 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 1
  %b.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 0
  %b.cap.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 2
  %b.buf.len8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum9 = extractvalue { i64, i1 } %b.buf.len8, 0
  %ovf10 = extractvalue { i64, i1 } %b.buf.len8, 1
  br i1 %ovf10, label %str_overflow_abort12, label %b.buf.len11

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.buf.len11:                                      ; preds = %abort.dead13, %b.buf.len1
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 %sum9)
  %b.nul016 = getelementptr i8, ptr %b.buf15, i64 0
  store i8 0, ptr %b.nul016, align 1
  store i64 0, ptr %b.len.gep6, align 8
  store ptr %b.buf15, ptr %b.data.gep5, align 8
  store i64 4096, ptr %b.cap.gep7, align 8
  store ptr %builder.new4, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.667, align 8
  br label %loop.header.667

str_overflow_abort12:                             ; preds = %b.buf.len1
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %b.buf.len11

loop.header.667:                                  ; preds = %loop.latch.667, %b.buf.len11
  %counter.load = load i64, ptr %loop.idx.667, align 8
  br label %loop.body.667

loop.body.667:                                    ; preds = %loop.header.667
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.667, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.chunk, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %b.ptr17 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr17 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @read(i32 0, ptr %addr.ffi.clean, i64 4096)
  store i64 %call.res, ptr %var.n, align 8
  %var.load18 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load18, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.667:                                ; No predecessors!
  br label %loop.exit.667

loop.latch.667:                                   ; preds = %b.grow_done
  %step.val = load i64, ptr %loop.step.667, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.667, align 8
  br label %loop.header.667

loop.exit.667:                                    ; preds = %choice.then, %loop.exit.nat.667
  %var.load51 = load ptr, ptr %var.b, align 8
  %b.freeze.len52 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 0
  %b.freeze.len53 = load i64, ptr %b.freeze.len52, align 8
  %b.freeze.data54 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 1
  %b.freeze.data55 = load ptr, ptr %b.freeze.data54, align 8
  %b.freeze.arena56 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep57 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena56, i32 0, i32 1
  %b.freeze.nc58 = load i64, ptr %b.freeze.nc.gep57, align 8
  %b.freeze.has.chunk59 = icmp sgt i64 %b.freeze.nc58, 0
  br i1 %b.freeze.has.chunk59, label %b.freeze.check60, label %b.freeze.done62

choice.then:                                      ; preds = %loop.body.667
  br label %loop.exit.667

choice.exit:                                      ; preds = %loop.body.667
  %var.load19 = load i64, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.chunk, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap20 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load19, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

b.len_big_check:                                  ; preds = %choice.exit
  %b.len.big = icmp sgt i64 %var.load19, %b.cap20
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead21, %b.len_big_check
  %b.len.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load19, ptr %b.len.gep22, align 8
  %b.load23 = load ptr, ptr %var.b, align 8
  %var.load24 = load ptr, ptr %var.chunk, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load24, i32 0, i32 0
  %b.freeze.len25 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load24, i32 0, i32 1
  %b.freeze.data26 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %b.len_ok

b.freeze.check:                                   ; preds = %b.len_ok
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data26, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data26, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data26, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len25, 1
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data26, i64 %b.freeze.len25, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len25
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data28 = phi ptr [ %b.freeze.data26, %b.len_ok ], [ %b.freeze.data26, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len25, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data28, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load24, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load24, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load24, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %app.str.len30 = load i64, ptr %app.str.len, align 8
  %app.str.len31 = and i64 %app.str.len30, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  %app.str.data32 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 0
  %b.app.cur.len33 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len33, i64 %app.str.len31)
  %sum34 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf35 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf35, label %str_overflow_abort37, label %b.app.new.len36

b.app.new.len36:                                  ; preds = %abort.dead38, %b.freeze.done
  %b.cap39 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 2
  %b.cap40 = load i64, ptr %b.cap39, align 8
  %b.need.grow = icmp slt i64 %b.cap40, %sum34
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort37:                             ; preds = %b.freeze.done
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %b.app.new.len36

b.grow2:                                          ; preds = %b.app.new.len36
  %b.cap2 = mul i64 %b.cap40, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum34
  %b.new.cap = select i1 %b.cap.need, i64 %sum34, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 0
  %b.cur.len241 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 1
  %b.cur.data242 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum43 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf44 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf44, label %str_overflow_abort46, label %b.new.buf.len245

b.nogrow2:                                        ; preds = %b.app.new.len36
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len245
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 1
  %b.app.data49 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data49, i64 %b.app.cur.len33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data32, i64 %app.str.len31, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data49, i64 %sum34
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 0
  store i64 %sum34, ptr %b.len.gep50, align 8
  br label %loop.latch.667

b.new.buf.len245:                                 ; preds = %abort.dead47, %b.grow2
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %sum43)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data242, i64 %b.cur.len241, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len241
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort46:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %b.new.buf.len245

b.freeze.check60:                                 ; preds = %loop.exit.667
  %b.freeze.last.idx63 = sub i64 %b.freeze.nc58, 1
  %b.freeze.chunks.gep64 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena56, i32 0, i32 3
  %b.freeze.chunk.slot65 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep64, i64 0, i64 %b.freeze.last.idx63
  %b.freeze.last.chunk66 = load ptr, ptr %b.freeze.chunk.slot65, align 8
  %b.freeze.off.gep67 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena56, i32 0, i32 2
  %b.freeze.off68 = load i64, ptr %b.freeze.off.gep67, align 8
  %b.freeze.bump69 = getelementptr i8, ptr %b.freeze.last.chunk66, i64 %b.freeze.off68
  %b.freeze.cap.gep70 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena56, i32 0, i32 0
  %b.freeze.cap71 = load i64, ptr %b.freeze.cap.gep70, align 8
  %b.freeze.chunk.end72 = getelementptr i8, ptr %b.freeze.last.chunk66, i64 %b.freeze.cap71
  %b.freeze.ge.chunk73 = icmp uge ptr %b.freeze.data55, %b.freeze.last.chunk66
  %b.freeze.lt.end74 = icmp ult ptr %b.freeze.data55, %b.freeze.chunk.end72
  %b.freeze.in.chunk75 = and i1 %b.freeze.ge.chunk73, %b.freeze.lt.end74
  %b.freeze.ge.bump76 = icmp uge ptr %b.freeze.data55, %b.freeze.bump69
  %b.freeze.reaped77 = and i1 %b.freeze.in.chunk75, %b.freeze.ge.bump76
  br i1 %b.freeze.reaped77, label %b.freeze.copy61, label %b.freeze.done62

b.freeze.copy61:                                  ; preds = %b.freeze.check60
  %b.freeze.alen78 = add i64 %b.freeze.len53, 1
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %b.freeze.alen78)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh80, ptr align 1 %b.freeze.data55, i64 %b.freeze.len53, i1 false)
  %b.freeze.nul81 = getelementptr i8, ptr %b.freeze.fresh80, i64 %b.freeze.len53
  store i8 0, ptr %b.freeze.nul81, align 1
  br label %b.freeze.done62

b.freeze.done62:                                  ; preds = %b.freeze.copy61, %b.freeze.check60, %loop.exit.667
  %b.freeze.data82 = phi ptr [ %b.freeze.data55, %loop.exit.667 ], [ %b.freeze.data55, %b.freeze.check60 ], [ %b.freeze.fresh80, %b.freeze.copy61 ]
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 16)
  %str.build.len.gep85 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze84, i32 0, i32 0
  store i64 %b.freeze.len53, ptr %str.build.len.gep85, align 8
  %str.build.data.gep86 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze84, i32 0, i32 1
  store ptr %b.freeze.data82, ptr %str.build.data.gep86, align 8
  %b.freeze.rst.len87 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len87, align 8
  %b.freeze.rst.data88 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data88, align 8
  %b.freeze.rst.cap89 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap89, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze84, align 8
  ret { i64, ptr } %ret.pack
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_builder_len_oob_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define void @"formatter::write_stdout"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.s, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %arg.str.ptr4 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr5 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %arg.str.ptr6 = load i64, ptr %arg.str.ptr5, align 8
  %arg.str.ptr7 = and i64 %arg.str.ptr6, 281474976710655
  %str.tag8 = lshr i64 %arg.str.ptr6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

choice.exit:                                      ; preds = %str_ok23, %str_ok
  ret void

str_ok9:                                          ; preds = %tag.slow_check14, %choice.then
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr4, i64 %arg.str.ptr7
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr15, label %nulcopy

tag.slow_check14:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

arg.str.ptr15:                                    ; preds = %str_ok9
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok9
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr7, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len16

nulmerge:                                         ; preds = %nulcopy.len16, %arg.str.ptr15
  %arg.str.ptr17 = phi ptr [ %arg.str.ptr4, %arg.str.ptr15 ], [ %nulcopy.buf, %nulcopy.len16 ]
  %var.load18 = load ptr, ptr %var.s, align 8
  %str.len.query19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %str.len.query20 = load i64, ptr %str.len.query19, align 8
  %str.len.query21 = and i64 %str.len.query20, 281474976710655
  %str.tag22 = lshr i64 %str.len.query20, 48
  %tag.immortal24 = icmp eq i64 %str.tag22, 0
  %active.gen25 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current26 = icmp eq i64 %str.tag22, %active.gen25
  %tag.fast.ok27 = or i1 %tag.immortal24, %tag.current26
  br i1 %tag.fast.ok27, label %str_ok23, label %tag.slow_check28

nulcopy.len16:                                    ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr4, i64 %arg.str.ptr7, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr7
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len16

str_ok23:                                         ; preds = %tag.slow_check28, %nulmerge
  %call.res = call i64 @write(i32 1, ptr %arg.str.ptr17, i64 %str.len.query21)
  br label %choice.exit

tag.slow_check28:                                 ; preds = %nulmerge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag22)
  br label %str_ok23
}

define void @"formatter::print_line"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = load i64, ptr @str.74.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %concat.rhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.74.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len7

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

concat.sum.len7:                                  ; preds = %abort.dead, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum8 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf9 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf9, label %str_overflow_abort11, label %concat.tot.len10

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len7

concat.tot.len10:                                 ; preds = %abort.dead12, %concat.sum.len7
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum8)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs6, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"formatter::write_stdout"(ptr %concat.str)
  ret void

str_overflow_abort11:                             ; preds = %concat.sum.len7
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %concat.tot.len10
}

define void @"formatter::print_fmt_help"() #0 {
entry:
  call void @"formatter::print_line"(ptr @str.75.struct)
  call void @"formatter::print_line"(ptr @str.12.struct)
  call void @"formatter::print_line"(ptr @str.76.struct)
  call void @"formatter::print_line"(ptr @str.77.struct)
  call void @"formatter::print_line"(ptr @str.78.struct)
  call void @"formatter::print_line"(ptr @str.79.struct)
  call void @"formatter::print_line"(ptr @str.80.struct)
  ret void
}

define i64 @"formatter::main"(i64 %0) #0 {
entry:
  %var.err455 = alloca ptr, align 8
  %var._454 = alloca ptr, align 8
  %var.formatted373 = alloca ptr, align 8
  %var._372 = alloca ptr, align 8
  %var.res364 = alloca { i1, i64 }, align 8
  %var.src360 = alloca ptr, align 8
  %var._359 = alloca ptr, align 8
  %var.src_opt = alloca ptr, align 8
  %var._351 = alloca ptr, align 8
  %var._i350 = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.671 = alloca i64, align 8
  %loop.idx.671 = alloca i64, align 8
  %"var.unformatted'" = alloca i64, align 8
  %"var.had_err'" = alloca i1, align 1
  %var._249 = alloca ptr, align 8
  %var._i248 = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %loop.step.670 = alloca i64, align 8
  %loop.idx.670 = alloca i64, align 8
  %var.files = alloca ptr, align 8
  %var.err = alloca ptr, align 8
  %var._177 = alloca ptr, align 8
  %var.formatted = alloca ptr, align 8
  %var._139 = alloca ptr, align 8
  %var.res = alloca { i1, i64 }, align 8
  %var.src = alloca ptr, align 8
  %var.arg = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.668 = alloca i64, align 8
  %loop.idx.668 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.targets = alloca ptr, align 8
  %"var.from_stdin'" = alloca i1, align 1
  %"var.to_stdout'" = alloca i1, align 1
  %"var.check_only'" = alloca i1, align 1
  %var.start_idx = alloca i64, align 8
  store i64 %0, ptr %var.start_idx, align 8
  store i1 false, ptr %"var.check_only'", align 1
  store i1 false, ptr %"var.to_stdout'", align 1
  store i1 false, ptr %"var.from_stdin'", align 1
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
  store ptr %a.new, ptr %var.targets, align 8
  %var.load = load i64, ptr %var.start_idx, align 8
  store i64 %var.load, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.668, align 8
  br label %loop.header.668

loop.header.668:                                  ; preds = %loop.latch.668, %entry
  %counter.load = load i64, ptr %loop.idx.668, align 8
  br label %loop.body.668

loop.body.668:                                    ; preds = %loop.header.668
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.668, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load2 = load i64, ptr %"var.i'", align 8
  %var.load3 = load i64, ptr @sys_argc_global, align 8
  %cmptmp = icmp sge i64 %var.load2, %var.load3
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.668:                                ; No predecessors!
  br label %loop.exit.668

loop.latch.668:                                   ; preds = %choice.exit7
  %step.val = load i64, ptr %loop.step.668, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.668, align 8
  br label %loop.header.668

loop.exit.668:                                    ; preds = %choice.then, %loop.exit.nat.668
  %var.load126 = load i1, ptr %"var.from_stdin'", align 1
  br i1 %var.load126, label %choice.then127, label %choice.else128

choice.then:                                      ; preds = %loop.body.668
  br label %loop.exit.668

choice.exit:                                      ; preds = %loop.body.668
  %var.load4 = load i64, ptr %"var.i'", align 8
  %call.res = call { i64, ptr } @"sys::argv_string"(i64 %var.load4)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.arg, align 8
  %var.load6 = load ptr, ptr %var.arg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.lhs.len8 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len9 = and i64 %eq.lhs.len8, 281474976710655
  %eq.rhs.len = load i64, ptr @str.81.struct, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len9, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.exit7:                                     ; preds = %choice.exit88, %choice.case61, %choice.case44, %choice.case27, %ret.dead
  %var.load125 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load125, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %loop.latch.668

choice.case:                                      ; preds = %str.eq.merge20
  call void @"formatter::print_fmt_help"()
  ret i64 0

choice.next:                                      ; preds = %str.eq.merge20
  %eq.lhs.len29 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.lhs.len30 = load i64, ptr %eq.lhs.len29, align 8
  %eq.lhs.len31 = and i64 %eq.lhs.len30, 281474976710655
  %eq.rhs.len32 = load i64, ptr @str.83.struct, align 8
  %eq.rhs.len33 = and i64 %eq.rhs.len32, 281474976710655
  %eq.len34 = icmp eq i64 %eq.lhs.len31, %eq.rhs.len33
  br i1 %eq.len34, label %str.eq.then35, label %str.eq.else36

str.eq.then:                                      ; preds = %choice.exit
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.81.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len9)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.lhs.len13 = load i64, ptr %eq.lhs.len12, align 8
  %eq.lhs.len14 = and i64 %eq.lhs.len13, 281474976710655
  %eq.rhs.len15 = load i64, ptr @str.82.struct, align 8
  %eq.rhs.len16 = and i64 %eq.rhs.len15, 281474976710655
  %eq.len17 = icmp eq i64 %eq.lhs.len14, %eq.rhs.len16
  br i1 %eq.len17, label %str.eq.then18, label %str.eq.else19

str.eq.then18:                                    ; preds = %str.eq.merge
  %eq.lhs.data21 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.lhs.data22 = load ptr, ptr %eq.lhs.data21, align 8
  %eq.rhs.data23 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.82.struct, i32 0, i32 1), align 8
  %eq.memcmp24 = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data23, i64 %eq.lhs.len14)
  %eq.cmp.zero25 = icmp eq i32 %eq.memcmp24, 0
  br label %str.eq.merge20

str.eq.else19:                                    ; preds = %str.eq.merge
  br label %str.eq.merge20

str.eq.merge20:                                   ; preds = %str.eq.else19, %str.eq.then18
  %str.eq.result26 = phi i1 [ %eq.cmp.zero25, %str.eq.then18 ], [ false, %str.eq.else19 ]
  %case.or = or i1 %str.eq.result, %str.eq.result26
  br i1 %case.or, label %choice.case, label %choice.next

ret.dead:                                         ; No predecessors!
  br label %choice.exit7

choice.case27:                                    ; preds = %str.eq.merge37
  store i1 true, ptr %"var.check_only'", align 1
  br label %choice.exit7

choice.next28:                                    ; preds = %str.eq.merge37
  %eq.lhs.len46 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.lhs.len47 = load i64, ptr %eq.lhs.len46, align 8
  %eq.lhs.len48 = and i64 %eq.lhs.len47, 281474976710655
  %eq.rhs.len49 = load i64, ptr @str.84.struct, align 8
  %eq.rhs.len50 = and i64 %eq.rhs.len49, 281474976710655
  %eq.len51 = icmp eq i64 %eq.lhs.len48, %eq.rhs.len50
  br i1 %eq.len51, label %str.eq.then52, label %str.eq.else53

str.eq.then35:                                    ; preds = %choice.next
  %eq.lhs.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.lhs.data39 = load ptr, ptr %eq.lhs.data38, align 8
  %eq.rhs.data40 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.83.struct, i32 0, i32 1), align 8
  %eq.memcmp41 = call i32 @memcmp(ptr %eq.lhs.data39, ptr %eq.rhs.data40, i64 %eq.lhs.len31)
  %eq.cmp.zero42 = icmp eq i32 %eq.memcmp41, 0
  br label %str.eq.merge37

str.eq.else36:                                    ; preds = %choice.next
  br label %str.eq.merge37

str.eq.merge37:                                   ; preds = %str.eq.else36, %str.eq.then35
  %str.eq.result43 = phi i1 [ %eq.cmp.zero42, %str.eq.then35 ], [ false, %str.eq.else36 ]
  br i1 %str.eq.result43, label %choice.case27, label %choice.next28

choice.case44:                                    ; preds = %str.eq.merge54
  store i1 true, ptr %"var.to_stdout'", align 1
  br label %choice.exit7

choice.next45:                                    ; preds = %str.eq.merge54
  %eq.lhs.len63 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.lhs.len64 = load i64, ptr %eq.lhs.len63, align 8
  %eq.lhs.len65 = and i64 %eq.lhs.len64, 281474976710655
  %eq.rhs.len66 = load i64, ptr @str.85.struct, align 8
  %eq.rhs.len67 = and i64 %eq.rhs.len66, 281474976710655
  %eq.len68 = icmp eq i64 %eq.lhs.len65, %eq.rhs.len67
  br i1 %eq.len68, label %str.eq.then69, label %str.eq.else70

str.eq.then52:                                    ; preds = %choice.next28
  %eq.lhs.data55 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.lhs.data56 = load ptr, ptr %eq.lhs.data55, align 8
  %eq.rhs.data57 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.84.struct, i32 0, i32 1), align 8
  %eq.memcmp58 = call i32 @memcmp(ptr %eq.lhs.data56, ptr %eq.rhs.data57, i64 %eq.lhs.len48)
  %eq.cmp.zero59 = icmp eq i32 %eq.memcmp58, 0
  br label %str.eq.merge54

str.eq.else53:                                    ; preds = %choice.next28
  br label %str.eq.merge54

str.eq.merge54:                                   ; preds = %str.eq.else53, %str.eq.then52
  %str.eq.result60 = phi i1 [ %eq.cmp.zero59, %str.eq.then52 ], [ false, %str.eq.else53 ]
  br i1 %str.eq.result60, label %choice.case44, label %choice.next45

choice.case61:                                    ; preds = %str.eq.merge71
  store i1 true, ptr %"var.from_stdin'", align 1
  br label %choice.exit7

choice.next62:                                    ; preds = %str.eq.merge71
  %var.load78 = load ptr, ptr %var.arg, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 0
  %str.len.query79 = load i64, ptr %str.len.query, align 8
  %str.len.query80 = and i64 %str.len.query79, 281474976710655
  %cmptmp81 = icmp sgt i64 %str.len.query80, 0
  br i1 %cmptmp81, label %and.669.then, label %and.669.else

str.eq.then69:                                    ; preds = %choice.next45
  %eq.lhs.data72 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.lhs.data73 = load ptr, ptr %eq.lhs.data72, align 8
  %eq.rhs.data74 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.85.struct, i32 0, i32 1), align 8
  %eq.memcmp75 = call i32 @memcmp(ptr %eq.lhs.data73, ptr %eq.rhs.data74, i64 %eq.lhs.len65)
  %eq.cmp.zero76 = icmp eq i32 %eq.memcmp75, 0
  br label %str.eq.merge71

str.eq.else70:                                    ; preds = %choice.next45
  br label %str.eq.merge71

str.eq.merge71:                                   ; preds = %str.eq.else70, %str.eq.then69
  %str.eq.result77 = phi i1 [ %eq.cmp.zero76, %str.eq.then69 ], [ false, %str.eq.else70 ]
  br i1 %str.eq.result77, label %choice.case61, label %choice.next62

and.669.then:                                     ; preds = %choice.next62
  %var.load82 = load ptr, ptr %var.arg, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %s.read.len83 = load i64, ptr %s.read.len, align 8
  %s.read.len84 = and i64 %s.read.len83, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %s.read.data85 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len84
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.669.else:                                     ; preds = %choice.next62
  br label %and.669.exit

and.669.exit:                                     ; preds = %and.669.else, %idx_ok
  %and.669.phi = phi i1 [ %cmptmp86, %idx_ok ], [ %cmptmp81, %and.669.else ]
  br i1 %and.669.phi, label %choice.then87, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.669.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data85, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp86 = icmp eq i64 %s.byte.val, 45
  br label %and.669.exit

idx_oob:                                          ; preds = %and.669.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then87:                                    ; preds = %and.669.exit
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.86.struct, i32 0, i32 1), align 8
  %var.load89 = load ptr, ptr %var.arg, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 0
  %cat.seg90 = load i64, ptr %cat.seg, align 8
  %cat.seg91 = and i64 %cat.seg90, 281474976710655
  %cat.seg92 = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 1
  %cat.seg93 = load ptr, ptr %cat.seg92, align 8
  %cat.lit.data94 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.87.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 26, i64 %cat.seg91)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len95

choice.else:                                      ; preds = %and.669.exit
  %var.load113 = load ptr, ptr %var.arg, align 8
  %a.load = load ptr, ptr %var.targets, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit88:                                    ; preds = %a.store, %ret.dead112
  br label %choice.exit7

cat.sum.len95:                                    ; preds = %abort.dead96, %choice.then87
  %cat.sum.len97 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum98 = extractvalue { i64, i1 } %cat.sum.len97, 0
  %ovf99 = extractvalue { i64, i1 } %cat.sum.len97, 1
  br i1 %ovf99, label %str_overflow_abort101, label %cat.sum.len100

str_overflow_abort:                               ; preds = %choice.then87
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %cat.sum.len95

cat.sum.len100:                                   ; preds = %abort.dead102, %cat.sum.len95
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum98, i64 1)
  %sum103 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf104 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf104, label %str_overflow_abort106, label %concat.tot.len105

str_overflow_abort101:                            ; preds = %cat.sum.len95
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead102:                                    ; No predecessors!
  br label %cat.sum.len100

concat.tot.len105:                                ; preds = %abort.dead107, %cat.sum.len100
  %arena.cur108 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 %sum103)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 26, i1 false)
  %cat.dst109 = getelementptr i8, ptr %concat.buf, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst109, ptr align 1 %cat.seg93, i64 %cat.seg91, i1 false)
  %cat.off = add i64 26, %cat.seg91
  %cat.dst110 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst110, ptr align 1 %cat.lit.data94, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum98
  store i8 0, ptr %concat.nul, align 1
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum98, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"log::error"(ptr %concat.str)
  ret i64 1

str_overflow_abort106:                            ; preds = %cat.sum.len100
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead107:                                    ; No predecessors!
  br label %concat.tot.len105

ret.dead112:                                      ; No predecessors!
  br label %choice.exit88

a.create:                                         ; preds = %choice.else
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 24)
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 128)
  %a.len.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 0
  store i64 0, ptr %a.len.gep118, align 8
  %a.data.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 1
  store ptr %a.buf117, ptr %a.data.gep119, align 8
  %a.cap.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 2
  store i64 16, ptr %a.cap.gep120, align 8
  store ptr %a.create115, ptr %var.targets, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.targets, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len121 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap122 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len121, %a.cap122
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data123 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len124 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data123, i64 %a.cur.len124
  %slot.p2i = ptrtoint ptr %var.load113 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len124, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit88

choice.then127:                                   ; preds = %loop.exit.668
  %call.res130 = call { i64, ptr } @"formatter::read_stdin_all"()
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 16)
  store { i64, ptr } %call.res130, ptr %ret.ub.alloc132, align 8
  store ptr %ret.ub.alloc132, ptr %var.src, align 8
  %var.load133 = load ptr, ptr %var.src, align 8
  %call.res134 = call { i1, i64 } @"formatter::format_source"(ptr %var.load133, ptr @str.88.struct)
  store { i1, i64 } %call.res134, ptr %var.res, align 8
  %var.load135 = load { i1, i64 }, ptr %var.res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load135, 0
  br i1 %ram.tag, label %choice.then136, label %choice.else137

choice.else128:                                   ; preds = %loop.exit.668
  %var.load180 = load ptr, ptr %var.targets, align 8
  %a.load181 = load ptr, ptr %var.targets, align 8
  %a.null182 = icmp eq ptr %a.load181, null
  br i1 %a.null182, label %a.create183, label %a.after184

choice.exit129:                                   ; preds = %choice.exit326, %choice.exit138
  %choice.res504 = phi i64 [ %choice.res179, %choice.exit138 ], [ %choice.res503, %choice.exit326 ]
  ret i64 %choice.res504

choice.then136:                                   ; preds = %choice.then127
  %ram.pay = extractvalue { i1, i64 } %var.load135, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._139, align 8
  store ptr %pay.ptr, ptr %var.formatted, align 8
  %var.load140 = load i1, ptr %"var.check_only'", align 1
  br i1 %var.load140, label %choice.then141, label %choice.else142

choice.else137:                                   ; preds = %choice.then127
  %ram.pay175 = extractvalue { i1, i64 } %var.load135, 1
  %pay.ptr176 = inttoptr i64 %ram.pay175 to ptr
  store ptr %pay.ptr176, ptr %var._177, align 8
  store ptr %pay.ptr176, ptr %var.err, align 8
  %var.load178 = load ptr, ptr %var.err, align 8
  call void @"log::error"(ptr %var.load178)
  br label %choice.exit138

choice.exit138:                                   ; preds = %choice.else137, %choice.exit143
  %choice.res179 = phi i64 [ %choice.res174, %choice.exit143 ], [ 1, %choice.else137 ]
  br label %choice.exit129

choice.then141:                                   ; preds = %choice.then136
  %var.load144 = load ptr, ptr %var.formatted, align 8
  %var.load145 = load ptr, ptr %var.src, align 8
  %eq.lhs.len146 = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 0
  %eq.lhs.len147 = load i64, ptr %eq.lhs.len146, align 8
  %eq.lhs.len148 = and i64 %eq.lhs.len147, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len147, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else142:                                   ; preds = %choice.then136
  %var.load173 = load ptr, ptr %var.formatted, align 8
  call void @"formatter::write_stdout"(ptr %var.load173)
  br label %choice.exit143

choice.exit143:                                   ; preds = %choice.else142, %choice.exit172
  %choice.res174 = phi i64 [ %choice.res, %choice.exit172 ], [ 0, %choice.else142 ]
  br label %choice.exit138

str_ok:                                           ; preds = %tag.slow_check, %choice.then141
  %eq.rhs.len149 = getelementptr inbounds { i64, ptr }, ptr %var.load145, i32 0, i32 0
  %eq.rhs.len150 = load i64, ptr %eq.rhs.len149, align 8
  %eq.rhs.len151 = and i64 %eq.rhs.len150, 281474976710655
  %str.tag152 = lshr i64 %eq.rhs.len150, 48
  %tag.immortal154 = icmp eq i64 %str.tag152, 0
  %active.gen155 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current156 = icmp eq i64 %str.tag152, %active.gen155
  %tag.fast.ok157 = or i1 %tag.immortal154, %tag.current156
  br i1 %tag.fast.ok157, label %str_ok153, label %tag.slow_check158

tag.slow_check:                                   ; preds = %choice.then141
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok153:                                        ; preds = %tag.slow_check158, %str_ok
  %eq.len159 = icmp eq i64 %eq.lhs.len148, %eq.rhs.len151
  br i1 %eq.len159, label %str.eq.then160, label %str.eq.else161

tag.slow_check158:                                ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag152)
  br label %str_ok153

str.eq.then160:                                   ; preds = %str_ok153
  %eq.lhs.data163 = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 1
  %eq.lhs.data164 = load ptr, ptr %eq.lhs.data163, align 8
  %eq.rhs.data165 = getelementptr inbounds { i64, ptr }, ptr %var.load145, i32 0, i32 1
  %eq.rhs.data166 = load ptr, ptr %eq.rhs.data165, align 8
  %eq.memcmp167 = call i32 @memcmp(ptr %eq.lhs.data164, ptr %eq.rhs.data166, i64 %eq.lhs.len148)
  %eq.cmp.zero168 = icmp eq i32 %eq.memcmp167, 0
  br label %str.eq.merge162

str.eq.else161:                                   ; preds = %str_ok153
  br label %str.eq.merge162

str.eq.merge162:                                  ; preds = %str.eq.else161, %str.eq.then160
  %str.eq.result169 = phi i1 [ %eq.cmp.zero168, %str.eq.then160 ], [ false, %str.eq.else161 ]
  br i1 %str.eq.result169, label %choice.then170, label %choice.else171

choice.then170:                                   ; preds = %str.eq.merge162
  br label %choice.exit172

choice.else171:                                   ; preds = %str.eq.merge162
  br label %choice.exit172

choice.exit172:                                   ; preds = %choice.else171, %choice.then170
  %choice.res = phi i64 [ 0, %choice.then170 ], [ 1, %choice.else171 ]
  br label %choice.exit143

a.create183:                                      ; preds = %choice.else128
  %arena.cur185 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 24)
  %arena.cur187 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 128)
  %a.len.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 0
  store i64 0, ptr %a.len.gep189, align 8
  %a.data.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 1
  store ptr %a.buf188, ptr %a.data.gep190, align 8
  %a.cap.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 2
  store i64 16, ptr %a.cap.gep191, align 8
  store ptr %a.create186, ptr %var.targets, align 8
  br label %a.after184

a.after184:                                       ; preds = %a.create183, %choice.else128
  %a.load2192 = load ptr, ptr %var.targets, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2192, i32 0, i32 0
  %a.len.query193 = load i64, ptr %a.len.query, align 8
  %cmptmp194 = icmp eq i64 %a.len.query193, 0
  br i1 %cmptmp194, label %choice.then195, label %choice.exit196

choice.then195:                                   ; preds = %a.after184
  %a.load197 = load ptr, ptr %var.targets, align 8
  %a.null198 = icmp eq ptr %a.load197, null
  br i1 %a.null198, label %a.create199, label %a.after200

choice.exit196:                                   ; preds = %a.store211, %a.after184
  %arena.cur224 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new225 = call ptr @dva_arena_alloc(ptr %arena.cur224, i64 24)
  %arena.cur226 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 128)
  %a.len.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new225, i32 0, i32 0
  store i64 0, ptr %a.len.gep228, align 8
  %a.data.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new225, i32 0, i32 1
  store ptr %a.buf227, ptr %a.data.gep229, align 8
  %a.cap.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new225, i32 0, i32 2
  store i64 16, ptr %a.cap.gep230, align 8
  store ptr %a.new225, ptr %var.files, align 8
  %var.load231 = load ptr, ptr %var.targets, align 8
  %a.load232 = load ptr, ptr %var.targets, align 8
  %a.null233 = icmp eq ptr %a.load232, null
  br i1 %a.null233, label %a.create234, label %a.after235

a.create199:                                      ; preds = %choice.then195
  %arena.cur201 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 24)
  %arena.cur203 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 128)
  %a.len.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 0
  store i64 0, ptr %a.len.gep205, align 8
  %a.data.gep206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 1
  store ptr %a.buf204, ptr %a.data.gep206, align 8
  %a.cap.gep207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 2
  store i64 16, ptr %a.cap.gep207, align 8
  store ptr %a.create202, ptr %var.targets, align 8
  br label %a.after200

a.after200:                                       ; preds = %a.create199, %choice.then195
  %a.load2208 = load ptr, ptr %var.targets, align 8
  br label %a.check209

a.check209:                                       ; preds = %a.after200
  %a.len212 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2208, i32 0, i32 0
  %a.len213 = load i64, ptr %a.len212, align 8
  %a.cap214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2208, i32 0, i32 2
  %a.cap215 = load i64, ptr %a.cap214, align 8
  %a.needs.grow216 = icmp eq i64 %a.len213, %a.cap215
  br i1 %a.needs.grow216, label %a.grow210, label %a.store211

a.grow210:                                        ; preds = %a.check209
  call void @dva_array_grow(ptr %a.load2208)
  br label %a.store211

a.store211:                                       ; preds = %a.grow210, %a.check209
  %a.cur.data217 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2208, i32 0, i32 1
  %a.cur.data218 = load ptr, ptr %a.cur.data217, align 8
  %a.cur.len219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2208, i32 0, i32 0
  %a.cur.len220 = load i64, ptr %a.cur.len219, align 8
  %a.elem.gep221 = getelementptr i64, ptr %a.cur.data218, i64 %a.cur.len220
  store i64 ptrtoint (ptr @str.89.struct to i64), ptr %a.elem.gep221, align 8
  %a.next.len222 = add i64 %a.cur.len220, 1
  %b.len.gep223 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2208, i32 0, i32 0
  store i64 %a.next.len222, ptr %b.len.gep223, align 8
  br label %choice.exit196

a.create234:                                      ; preds = %choice.exit196
  %arena.cur236 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 24)
  %arena.cur238 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 128)
  %a.len.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 0
  store i64 0, ptr %a.len.gep240, align 8
  %a.data.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 1
  store ptr %a.buf239, ptr %a.data.gep241, align 8
  %a.cap.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 2
  store i64 16, ptr %a.cap.gep242, align 8
  store ptr %a.create237, ptr %var.targets, align 8
  br label %a.after235

a.after235:                                       ; preds = %a.create234, %choice.exit196
  %a.load2243 = load ptr, ptr %var.targets, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2243, i32 0, i32 0
  %arr.cycle.len244 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2243, i32 0, i32 1
  %arr.cycle.data245 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.670, align 8
  br label %loop.header.670

loop.header.670:                                  ; preds = %loop.latch.670, %a.after235
  %counter.load246 = load i64, ptr %loop.idx.670, align 8
  %loop.cond = icmp slt i64 %counter.load246, %arr.cycle.len244
  br i1 %loop.cond, label %loop.body.670, label %loop.exit.nat.670

loop.body.670:                                    ; preds = %loop.header.670
  %loop.rel.i247 = sub i64 %counter.load246, 0
  store i64 1, ptr %loop.step.670, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data245, i64 %counter.load246
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i247, ptr %var._i248, align 8
  store ptr %slot.i2p, ptr %var._249, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  %var.load250 = load ptr, ptr %var.t, align 8
  %call.res251 = call i1 @"fs::exists"(ptr %var.load250)
  %nottmp = xor i1 %call.res251, true
  br i1 %nottmp, label %choice.then252, label %choice.exit253

loop.exit.nat.670:                                ; preds = %loop.header.670
  br label %loop.exit.670

loop.latch.670:                                   ; preds = %a.after297
  %step.val306 = load i64, ptr %loop.step.670, align 8
  %loop.next307 = add i64 %counter.load246, %step.val306
  store i64 %loop.next307, ptr %loop.idx.670, align 8
  br label %loop.header.670

loop.exit.670:                                    ; preds = %loop.exit.nat.670
  %var.load308 = load ptr, ptr %var.files, align 8
  %a.load309 = load ptr, ptr %var.files, align 8
  %a.null310 = icmp eq ptr %a.load309, null
  br i1 %a.null310, label %a.create311, label %a.after312

choice.then252:                                   ; preds = %loop.body.670
  %cat.lit.data254 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.90.struct, i32 0, i32 1), align 8
  %var.load255 = load ptr, ptr %var.t, align 8
  %cat.seg256 = getelementptr inbounds { i64, ptr }, ptr %var.load255, i32 0, i32 0
  %cat.seg257 = load i64, ptr %cat.seg256, align 8
  %cat.seg258 = and i64 %cat.seg257, 281474976710655
  %cat.seg259 = getelementptr inbounds { i64, ptr }, ptr %var.load255, i32 0, i32 1
  %cat.seg260 = load ptr, ptr %cat.seg259, align 8
  %cat.lit.data261 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.91.struct, i32 0, i32 1), align 8
  %cat.sum.len262 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 %cat.seg258)
  %sum263 = extractvalue { i64, i1 } %cat.sum.len262, 0
  %ovf264 = extractvalue { i64, i1 } %cat.sum.len262, 1
  br i1 %ovf264, label %str_overflow_abort266, label %cat.sum.len265

choice.exit253:                                   ; preds = %ret.dead291, %loop.body.670
  %var.load292 = load ptr, ptr %var.t, align 8
  %var.load293 = load ptr, ptr %var.files, align 8
  %a.load294 = load ptr, ptr %var.files, align 8
  %a.null295 = icmp eq ptr %a.load294, null
  br i1 %a.null295, label %a.create296, label %a.after297

cat.sum.len265:                                   ; preds = %abort.dead267, %choice.then252
  %cat.sum.len268 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum263, i64 16)
  %sum269 = extractvalue { i64, i1 } %cat.sum.len268, 0
  %ovf270 = extractvalue { i64, i1 } %cat.sum.len268, 1
  br i1 %ovf270, label %str_overflow_abort272, label %cat.sum.len271

str_overflow_abort266:                            ; preds = %choice.then252
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead267:                                    ; No predecessors!
  br label %cat.sum.len265

cat.sum.len271:                                   ; preds = %abort.dead273, %cat.sum.len265
  %concat.tot.len274 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum269, i64 1)
  %sum275 = extractvalue { i64, i1 } %concat.tot.len274, 0
  %ovf276 = extractvalue { i64, i1 } %concat.tot.len274, 1
  br i1 %ovf276, label %str_overflow_abort278, label %concat.tot.len277

str_overflow_abort272:                            ; preds = %cat.sum.len265
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead273:                                    ; No predecessors!
  br label %cat.sum.len271

concat.tot.len277:                                ; preds = %abort.dead279, %cat.sum.len271
  %arena.cur280 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf281 = call ptr @dva_arena_alloc(ptr %arena.cur280, i64 %sum275)
  %cat.dst282 = getelementptr i8, ptr %concat.buf281, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst282, ptr align 1 %cat.lit.data254, i64 16, i1 false)
  %cat.dst283 = getelementptr i8, ptr %concat.buf281, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst283, ptr align 1 %cat.seg260, i64 %cat.seg258, i1 false)
  %cat.off284 = add i64 16, %cat.seg258
  %cat.dst285 = getelementptr i8, ptr %concat.buf281, i64 %cat.off284
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst285, ptr align 1 %cat.lit.data261, i64 16, i1 false)
  %concat.nul286 = getelementptr i8, ptr %concat.buf281, i64 %sum269
  store i8 0, ptr %concat.nul286, align 1
  %arena.cur287 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 16)
  %str.build.len.gep289 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 0
  store i64 %sum269, ptr %str.build.len.gep289, align 8
  %str.build.data.gep290 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 1
  store ptr %concat.buf281, ptr %str.build.data.gep290, align 8
  call void @"log::error"(ptr %concat.str288)
  ret i64 1

str_overflow_abort278:                            ; preds = %cat.sum.len271
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead279:                                    ; No predecessors!
  br label %concat.tot.len277

ret.dead291:                                      ; No predecessors!
  br label %choice.exit253

a.create296:                                      ; preds = %choice.exit253
  %arena.cur298 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create299 = call ptr @dva_arena_alloc(ptr %arena.cur298, i64 24)
  %arena.cur300 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 128)
  %a.len.gep302 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create299, i32 0, i32 0
  store i64 0, ptr %a.len.gep302, align 8
  %a.data.gep303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create299, i32 0, i32 1
  store ptr %a.buf301, ptr %a.data.gep303, align 8
  %a.cap.gep304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create299, i32 0, i32 2
  store i64 16, ptr %a.cap.gep304, align 8
  store ptr %a.create299, ptr %var.files, align 8
  br label %a.after297

a.after297:                                       ; preds = %a.create296, %choice.exit253
  %a.load2305 = load ptr, ptr %var.files, align 8
  call void @"formatter::collect_dva_files"(ptr %var.load292, ptr %a.load2305)
  br label %loop.latch.670

a.create311:                                      ; preds = %loop.exit.670
  %arena.cur313 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create314 = call ptr @dva_arena_alloc(ptr %arena.cur313, i64 24)
  %arena.cur315 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf316 = call ptr @dva_arena_alloc(ptr %arena.cur315, i64 128)
  %a.len.gep317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create314, i32 0, i32 0
  store i64 0, ptr %a.len.gep317, align 8
  %a.data.gep318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create314, i32 0, i32 1
  store ptr %a.buf316, ptr %a.data.gep318, align 8
  %a.cap.gep319 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create314, i32 0, i32 2
  store i64 16, ptr %a.cap.gep319, align 8
  store ptr %a.create314, ptr %var.files, align 8
  br label %a.after312

a.after312:                                       ; preds = %a.create311, %loop.exit.670
  %a.load2320 = load ptr, ptr %var.files, align 8
  %a.len.query321 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2320, i32 0, i32 0
  %a.len.query322 = load i64, ptr %a.len.query321, align 8
  %cmptmp323 = icmp eq i64 %a.len.query322, 0
  br i1 %cmptmp323, label %choice.then324, label %choice.else325

choice.then324:                                   ; preds = %a.after312
  call void @"log::error"(ptr @str.92.struct)
  br label %choice.exit326

choice.else325:                                   ; preds = %a.after312
  store i1 false, ptr %"var.had_err'", align 1
  store i64 0, ptr %"var.unformatted'", align 8
  %var.load327 = load ptr, ptr %var.files, align 8
  %a.load328 = load ptr, ptr %var.files, align 8
  %a.null329 = icmp eq ptr %a.load328, null
  br i1 %a.null329, label %a.create330, label %a.after331

choice.exit326:                                   ; preds = %choice.exit501, %choice.then324
  %choice.res503 = phi i64 [ 1, %choice.then324 ], [ %choice.res502, %choice.exit501 ]
  br label %choice.exit129

a.create330:                                      ; preds = %choice.else325
  %arena.cur332 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create333 = call ptr @dva_arena_alloc(ptr %arena.cur332, i64 24)
  %arena.cur334 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf335 = call ptr @dva_arena_alloc(ptr %arena.cur334, i64 128)
  %a.len.gep336 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create333, i32 0, i32 0
  store i64 0, ptr %a.len.gep336, align 8
  %a.data.gep337 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create333, i32 0, i32 1
  store ptr %a.buf335, ptr %a.data.gep337, align 8
  %a.cap.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create333, i32 0, i32 2
  store i64 16, ptr %a.cap.gep338, align 8
  store ptr %a.create333, ptr %var.files, align 8
  br label %a.after331

a.after331:                                       ; preds = %a.create330, %choice.else325
  %a.load2339 = load ptr, ptr %var.files, align 8
  %arr.cycle.len340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2339, i32 0, i32 0
  %arr.cycle.len341 = load i64, ptr %arr.cycle.len340, align 8
  %arr.cycle.data342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2339, i32 0, i32 1
  %arr.cycle.data343 = load ptr, ptr %arr.cycle.data342, align 8
  store i64 0, ptr %loop.idx.671, align 8
  br label %loop.header.671

loop.header.671:                                  ; preds = %loop.latch.671, %a.after331
  %counter.load344 = load i64, ptr %loop.idx.671, align 8
  %loop.cond345 = icmp slt i64 %counter.load344, %arr.cycle.len341
  br i1 %loop.cond345, label %loop.body.671, label %loop.exit.nat.671

loop.body.671:                                    ; preds = %loop.header.671
  %loop.rel.i346 = sub i64 %counter.load344, 0
  store i64 1, ptr %loop.step.671, align 8
  %arr.elem.gep347 = getelementptr i64, ptr %arr.cycle.data343, i64 %counter.load344
  %arr.elem.raw348 = load i64, ptr %arr.elem.gep347, align 8
  %slot.i2p349 = inttoptr i64 %arr.elem.raw348 to ptr
  store i64 %loop.rel.i346, ptr %var._i350, align 8
  store ptr %slot.i2p349, ptr %var._351, align 8
  store ptr %slot.i2p349, ptr %var.f, align 8
  %var.load352 = load ptr, ptr %var.f, align 8
  %call.res353 = call { i64, ptr } @"fs::read_to_string"(ptr %var.load352)
  %ret.niche.data = extractvalue { i64, ptr } %call.res353, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

loop.exit.nat.671:                                ; preds = %loop.header.671
  br label %loop.exit.671

loop.latch.671:                                   ; preds = %choice.exit358
  %step.val494 = load i64, ptr %loop.step.671, align 8
  %loop.next495 = add i64 %counter.load344, %step.val494
  store i64 %loop.next495, ptr %loop.idx.671, align 8
  br label %loop.header.671

loop.exit.671:                                    ; preds = %loop.exit.nat.671
  %var.load496 = load i1, ptr %"var.had_err'", align 1
  br i1 %var.load496, label %or.672.then, label %or.672.else

ret.niche.alloc:                                  ; preds = %loop.body.671
  %arena.cur354 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur354, i64 16)
  store { i64, ptr } %call.res353, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %loop.body.671
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %loop.body.671 ]
  store ptr %ret.niche.ptr, ptr %var.src_opt, align 8
  %var.load355 = load ptr, ptr %var.src_opt, align 8
  %niche.ne.null = icmp ne ptr %var.load355, null
  br i1 %niche.ne.null, label %choice.then356, label %choice.else357

choice.then356:                                   ; preds = %ret.niche.done
  store ptr %var.load355, ptr %var._359, align 8
  store ptr %var.load355, ptr %var.src360, align 8
  %var.load361 = load ptr, ptr %var.src360, align 8
  %var.load362 = load ptr, ptr %var.f, align 8
  %call.res363 = call { i1, i64 } @"formatter::format_source"(ptr %var.load361, ptr %var.load362)
  store { i1, i64 } %call.res363, ptr %var.res364, align 8
  %var.load365 = load { i1, i64 }, ptr %var.res364, align 8
  %ram.tag366 = extractvalue { i1, i64 } %var.load365, 0
  br i1 %ram.tag366, label %choice.then367, label %choice.else368

choice.else357:                                   ; preds = %ret.niche.done
  %cat.lit.data457 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.94.struct, i32 0, i32 1), align 8
  %var.load458 = load ptr, ptr %var.f, align 8
  %cat.seg459 = getelementptr inbounds { i64, ptr }, ptr %var.load458, i32 0, i32 0
  %cat.seg460 = load i64, ptr %cat.seg459, align 8
  %cat.seg461 = and i64 %cat.seg460, 281474976710655
  %cat.seg462 = getelementptr inbounds { i64, ptr }, ptr %var.load458, i32 0, i32 1
  %cat.seg463 = load ptr, ptr %cat.seg462, align 8
  %cat.lit.data464 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.87.struct, i32 0, i32 1), align 8
  %cat.sum.len465 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 26, i64 %cat.seg461)
  %sum466 = extractvalue { i64, i1 } %cat.sum.len465, 0
  %ovf467 = extractvalue { i64, i1 } %cat.sum.len465, 1
  br i1 %ovf467, label %str_overflow_abort469, label %cat.sum.len468

choice.exit358:                                   ; preds = %concat.tot.len480, %choice.exit369
  br label %loop.latch.671

choice.then367:                                   ; preds = %choice.then356
  %ram.pay370 = extractvalue { i1, i64 } %var.load365, 1
  %pay.ptr371 = inttoptr i64 %ram.pay370 to ptr
  store ptr %pay.ptr371, ptr %var._372, align 8
  store ptr %pay.ptr371, ptr %var.formatted373, align 8
  %var.load374 = load i1, ptr %"var.to_stdout'", align 1
  br i1 %var.load374, label %choice.then375, label %choice.else376

choice.else368:                                   ; preds = %choice.then356
  %ram.pay452 = extractvalue { i1, i64 } %var.load365, 1
  %pay.ptr453 = inttoptr i64 %ram.pay452 to ptr
  store ptr %pay.ptr453, ptr %var._454, align 8
  store ptr %pay.ptr453, ptr %var.err455, align 8
  %var.load456 = load ptr, ptr %var.err455, align 8
  call void @"log::error"(ptr %var.load456)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit369

choice.exit369:                                   ; preds = %choice.else368, %choice.exit377
  br label %choice.exit358

choice.then375:                                   ; preds = %choice.then367
  %var.load378 = load ptr, ptr %var.formatted373, align 8
  call void @"formatter::write_stdout"(ptr %var.load378)
  br label %choice.exit377

choice.else376:                                   ; preds = %choice.then367
  %var.load379 = load ptr, ptr %var.formatted373, align 8
  %var.load380 = load ptr, ptr %var.src360, align 8
  %eq.lhs.len381 = getelementptr inbounds { i64, ptr }, ptr %var.load379, i32 0, i32 0
  %eq.lhs.len382 = load i64, ptr %eq.lhs.len381, align 8
  %eq.lhs.len383 = and i64 %eq.lhs.len382, 281474976710655
  %eq.rhs.len384 = getelementptr inbounds { i64, ptr }, ptr %var.load380, i32 0, i32 0
  %eq.rhs.len385 = load i64, ptr %eq.rhs.len384, align 8
  %eq.rhs.len386 = and i64 %eq.rhs.len385, 281474976710655
  %eq.len387 = icmp eq i64 %eq.lhs.len383, %eq.rhs.len386
  br i1 %eq.len387, label %str.eq.then388, label %str.eq.else389

choice.exit377:                                   ; preds = %choice.exit399, %choice.then375
  br label %choice.exit369

str.eq.then388:                                   ; preds = %choice.else376
  %eq.lhs.data391 = getelementptr inbounds { i64, ptr }, ptr %var.load379, i32 0, i32 1
  %eq.lhs.data392 = load ptr, ptr %eq.lhs.data391, align 8
  %eq.rhs.data393 = getelementptr inbounds { i64, ptr }, ptr %var.load380, i32 0, i32 1
  %eq.rhs.data394 = load ptr, ptr %eq.rhs.data393, align 8
  %eq.memcmp395 = call i32 @memcmp(ptr %eq.lhs.data392, ptr %eq.rhs.data394, i64 %eq.lhs.len383)
  %eq.cmp.zero396 = icmp eq i32 %eq.memcmp395, 0
  br label %str.eq.merge390

str.eq.else389:                                   ; preds = %choice.else376
  br label %str.eq.merge390

str.eq.merge390:                                  ; preds = %str.eq.else389, %str.eq.then388
  %str.eq.result397 = phi i1 [ %eq.cmp.zero396, %str.eq.then388 ], [ false, %str.eq.else389 ]
  %str.neq = xor i1 %str.eq.result397, true
  br i1 %str.neq, label %choice.then398, label %choice.exit399

choice.then398:                                   ; preds = %str.eq.merge390
  %var.load400 = load i1, ptr %"var.check_only'", align 1
  br i1 %var.load400, label %choice.then401, label %choice.else402

choice.exit399:                                   ; preds = %choice.exit403, %str.eq.merge390
  br label %choice.exit377

choice.then401:                                   ; preds = %choice.then398
  %var.load404 = load ptr, ptr %var.f, align 8
  call void @"formatter::print_line"(ptr %var.load404)
  %var.load405 = load i64, ptr %"var.unformatted'", align 8
  %addtmp406 = add i64 %var.load405, 1
  store i64 %addtmp406, ptr %"var.unformatted'", align 8
  br label %choice.exit403

choice.else402:                                   ; preds = %choice.then398
  %var.load407 = load ptr, ptr %var.f, align 8
  %var.load408 = load ptr, ptr %var.formatted373, align 8
  %call.res409 = call i1 @"fs::write_file"(ptr %var.load407, ptr %var.load408)
  %nottmp410 = xor i1 %call.res409, true
  br i1 %nottmp410, label %choice.then411, label %choice.else412

choice.exit403:                                   ; preds = %choice.exit413, %choice.then401
  br label %choice.exit399

choice.then411:                                   ; preds = %choice.else402
  %cat.lit.data414 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.93.struct, i32 0, i32 1), align 8
  %var.load415 = load ptr, ptr %var.f, align 8
  %cat.seg416 = getelementptr inbounds { i64, ptr }, ptr %var.load415, i32 0, i32 0
  %cat.seg417 = load i64, ptr %cat.seg416, align 8
  %cat.seg418 = and i64 %cat.seg417, 281474976710655
  %cat.seg419 = getelementptr inbounds { i64, ptr }, ptr %var.load415, i32 0, i32 1
  %cat.seg420 = load ptr, ptr %cat.seg419, align 8
  %cat.lit.data421 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.87.struct, i32 0, i32 1), align 8
  %cat.sum.len422 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 27, i64 %cat.seg418)
  %sum423 = extractvalue { i64, i1 } %cat.sum.len422, 0
  %ovf424 = extractvalue { i64, i1 } %cat.sum.len422, 1
  br i1 %ovf424, label %str_overflow_abort426, label %cat.sum.len425

choice.else412:                                   ; preds = %choice.else402
  %var.load451 = load ptr, ptr %var.f, align 8
  call void @"formatter::print_line"(ptr %var.load451)
  br label %choice.exit413

choice.exit413:                                   ; preds = %choice.else412, %concat.tot.len437
  br label %choice.exit403

cat.sum.len425:                                   ; preds = %abort.dead427, %choice.then411
  %cat.sum.len428 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum423, i64 1)
  %sum429 = extractvalue { i64, i1 } %cat.sum.len428, 0
  %ovf430 = extractvalue { i64, i1 } %cat.sum.len428, 1
  br i1 %ovf430, label %str_overflow_abort432, label %cat.sum.len431

str_overflow_abort426:                            ; preds = %choice.then411
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead427:                                    ; No predecessors!
  br label %cat.sum.len425

cat.sum.len431:                                   ; preds = %abort.dead433, %cat.sum.len425
  %concat.tot.len434 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum429, i64 1)
  %sum435 = extractvalue { i64, i1 } %concat.tot.len434, 0
  %ovf436 = extractvalue { i64, i1 } %concat.tot.len434, 1
  br i1 %ovf436, label %str_overflow_abort438, label %concat.tot.len437

str_overflow_abort432:                            ; preds = %cat.sum.len425
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead433:                                    ; No predecessors!
  br label %cat.sum.len431

concat.tot.len437:                                ; preds = %abort.dead439, %cat.sum.len431
  %arena.cur440 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf441 = call ptr @dva_arena_alloc(ptr %arena.cur440, i64 %sum435)
  %cat.dst442 = getelementptr i8, ptr %concat.buf441, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst442, ptr align 1 %cat.lit.data414, i64 27, i1 false)
  %cat.dst443 = getelementptr i8, ptr %concat.buf441, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst443, ptr align 1 %cat.seg420, i64 %cat.seg418, i1 false)
  %cat.off444 = add i64 27, %cat.seg418
  %cat.dst445 = getelementptr i8, ptr %concat.buf441, i64 %cat.off444
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst445, ptr align 1 %cat.lit.data421, i64 1, i1 false)
  %concat.nul446 = getelementptr i8, ptr %concat.buf441, i64 %sum429
  store i8 0, ptr %concat.nul446, align 1
  %arena.cur447 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str448 = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 16)
  %str.build.len.gep449 = getelementptr inbounds { i64, ptr }, ptr %concat.str448, i32 0, i32 0
  store i64 %sum429, ptr %str.build.len.gep449, align 8
  %str.build.data.gep450 = getelementptr inbounds { i64, ptr }, ptr %concat.str448, i32 0, i32 1
  store ptr %concat.buf441, ptr %str.build.data.gep450, align 8
  call void @"log::error"(ptr %concat.str448)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit413

str_overflow_abort438:                            ; preds = %cat.sum.len431
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead439:                                    ; No predecessors!
  br label %concat.tot.len437

cat.sum.len468:                                   ; preds = %abort.dead470, %choice.else357
  %cat.sum.len471 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum466, i64 1)
  %sum472 = extractvalue { i64, i1 } %cat.sum.len471, 0
  %ovf473 = extractvalue { i64, i1 } %cat.sum.len471, 1
  br i1 %ovf473, label %str_overflow_abort475, label %cat.sum.len474

str_overflow_abort469:                            ; preds = %choice.else357
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead470:                                    ; No predecessors!
  br label %cat.sum.len468

cat.sum.len474:                                   ; preds = %abort.dead476, %cat.sum.len468
  %concat.tot.len477 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum472, i64 1)
  %sum478 = extractvalue { i64, i1 } %concat.tot.len477, 0
  %ovf479 = extractvalue { i64, i1 } %concat.tot.len477, 1
  br i1 %ovf479, label %str_overflow_abort481, label %concat.tot.len480

str_overflow_abort475:                            ; preds = %cat.sum.len468
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead476:                                    ; No predecessors!
  br label %cat.sum.len474

concat.tot.len480:                                ; preds = %abort.dead482, %cat.sum.len474
  %arena.cur483 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf484 = call ptr @dva_arena_alloc(ptr %arena.cur483, i64 %sum478)
  %cat.dst485 = getelementptr i8, ptr %concat.buf484, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst485, ptr align 1 %cat.lit.data457, i64 26, i1 false)
  %cat.dst486 = getelementptr i8, ptr %concat.buf484, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst486, ptr align 1 %cat.seg463, i64 %cat.seg461, i1 false)
  %cat.off487 = add i64 26, %cat.seg461
  %cat.dst488 = getelementptr i8, ptr %concat.buf484, i64 %cat.off487
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst488, ptr align 1 %cat.lit.data464, i64 1, i1 false)
  %concat.nul489 = getelementptr i8, ptr %concat.buf484, i64 %sum472
  store i8 0, ptr %concat.nul489, align 1
  %arena.cur490 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str491 = call ptr @dva_arena_alloc(ptr %arena.cur490, i64 16)
  %str.build.len.gep492 = getelementptr inbounds { i64, ptr }, ptr %concat.str491, i32 0, i32 0
  store i64 %sum472, ptr %str.build.len.gep492, align 8
  %str.build.data.gep493 = getelementptr inbounds { i64, ptr }, ptr %concat.str491, i32 0, i32 1
  store ptr %concat.buf484, ptr %str.build.data.gep493, align 8
  call void @"log::error"(ptr %concat.str491)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit358

str_overflow_abort481:                            ; preds = %cat.sum.len474
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead482:                                    ; No predecessors!
  br label %concat.tot.len480

or.672.then:                                      ; preds = %loop.exit.671
  br label %or.672.exit

or.672.else:                                      ; preds = %loop.exit.671
  %var.load497 = load i64, ptr %"var.unformatted'", align 8
  %cmptmp498 = icmp sgt i64 %var.load497, 0
  br label %or.672.exit

or.672.exit:                                      ; preds = %or.672.else, %or.672.then
  %or.672.phi = phi i1 [ %var.load496, %or.672.then ], [ %cmptmp498, %or.672.else ]
  br i1 %or.672.phi, label %choice.then499, label %choice.else500

choice.then499:                                   ; preds = %or.672.exit
  br label %choice.exit501

choice.else500:                                   ; preds = %or.672.exit
  br label %choice.exit501

choice.exit501:                                   ; preds = %choice.else500, %choice.then499
  %choice.res502 = phi i64 [ 1, %choice.then499 ], [ 0, %choice.else500 ]
  br label %choice.exit326
}

declare { i64, ptr } @"sys::argv_string"(i64) #0

declare void @"log::error"(ptr) #0

declare i1 @"fs::exists"(ptr) #0

declare { i64, ptr } @"fs::read_to_string"(ptr) #0

declare i1 @"fs::write_file"(ptr, ptr) #0

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline "nounwind" }
attributes #6 = { cold noinline noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
