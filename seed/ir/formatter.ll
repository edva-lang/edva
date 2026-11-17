; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@dva_arena_base_tls = external thread_local global ptr
@dva_active_gen_tls = external thread_local global i64
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
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

declare noalias ptr @dva_arena_alloc(ptr, i64) #0

declare void @dva_arena_destroy(ptr) #0

declare i64 @dva_arena_save(ptr) #0

declare void @dva_arena_restore(ptr, i64) #0

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

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
declare void @exit(i32) #3

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.init_state, align 8
  store i64 %var.load3, ptr %"var.st'", align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  store i64 0, ptr %loop.idx.513, align 8
  br label %loop.header.513

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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

loop.latch.513:                                   ; preds = %choice.exit60
  %step.val = load i64, ptr %loop.step.513, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.513, align 8
  br label %loop.header.513

loop.exit.513:                                    ; preds = %choice.then, %loop.exit.nat.513
  %var.load255 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load255, label %choice.then256, label %choice.else257

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
  %idx.neg = icmp slt i64 %var.load10, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load10, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead11, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load12 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load12, 1
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp slt i64 %addtmp, %var.load13
  br i1 %cmptmp14, label %choice.then15, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %idx_ok

choice.then15:                                    ; preds = %idx_ok
  %var.load17 = load ptr, ptr %var.line, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %s.read.data21 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data21, align 8
  %var.load23 = load i64, ptr %"var.i'", align 8
  %addtmp24 = add i64 %var.load23, 1
  %idx.neg25 = icmp slt i64 %addtmp24, 0
  br i1 %idx.neg25, label %idx_oob28, label %idx_big_check26

choice.else:                                      ; preds = %idx_ok
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else, %idx_ok27
  %choice.res = phi i64 [ %s.byte.val33, %idx_ok27 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.c1, align 8
  %var.load34 = load i64, ptr %"var.i'", align 8
  %addtmp35 = add i64 %var.load34, 2
  %var.load36 = load i64, ptr %var.n, align 8
  %cmptmp37 = icmp slt i64 %addtmp35, %var.load36
  br i1 %cmptmp37, label %choice.then38, label %choice.else39

idx_big_check26:                                  ; preds = %choice.then15
  %idx.big29 = icmp sge i64 %addtmp24, %s.read.len20
  br i1 %idx.big29, label %idx_oob28, label %idx_ok27

idx_ok27:                                         ; preds = %abort.dead30, %idx_big_check26
  %s.byte.gep31 = getelementptr i8, ptr %s.read.data22, i64 %addtmp24
  %s.byte32 = load i8, ptr %s.byte.gep31, align 1
  %s.byte.val33 = zext i8 %s.byte32 to i64
  br label %choice.exit16

idx_oob28:                                        ; preds = %idx_big_check26, %choice.then15
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %idx_ok27

choice.then38:                                    ; preds = %choice.exit16
  %var.load41 = load ptr, ptr %var.line, align 8
  %s.read.len42 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %s.read.len43 = load i64, ptr %s.read.len42, align 8
  %s.read.len44 = and i64 %s.read.len43, 281474976710655
  %s.read.data45 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %s.read.data46 = load ptr, ptr %s.read.data45, align 8
  %var.load47 = load i64, ptr %"var.i'", align 8
  %addtmp48 = add i64 %var.load47, 2
  %idx.neg49 = icmp slt i64 %addtmp48, 0
  br i1 %idx.neg49, label %idx_oob52, label %idx_big_check50

choice.else39:                                    ; preds = %choice.exit16
  br label %choice.exit40

choice.exit40:                                    ; preds = %choice.else39, %idx_ok51
  %choice.res58 = phi i64 [ %s.byte.val57, %idx_ok51 ], [ 0, %choice.else39 ]
  store i64 %choice.res58, ptr %var.c2, align 8
  %var.load59 = load i64, ptr %"var.st'", align 8
  %val.match = icmp eq i64 %var.load59, 1
  br i1 %val.match, label %choice.case, label %choice.next

idx_big_check50:                                  ; preds = %choice.then38
  %idx.big53 = icmp sge i64 %addtmp48, %s.read.len44
  br i1 %idx.big53, label %idx_oob52, label %idx_ok51

idx_ok51:                                         ; preds = %abort.dead54, %idx_big_check50
  %s.byte.gep55 = getelementptr i8, ptr %s.read.data46, i64 %addtmp48
  %s.byte56 = load i8, ptr %s.byte.gep55, align 1
  %s.byte.val57 = zext i8 %s.byte56 to i64
  br label %choice.exit40

idx_oob52:                                        ; preds = %idx_big_check50, %choice.then38
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %idx_ok51

choice.exit60:                                    ; preds = %choice.exit117, %choice.exit98, %choice.exit79, %choice.exit67
  br label %loop.latch.513

choice.case:                                      ; preds = %choice.exit40
  %var.load61 = load i64, ptr %var.c, align 8
  %cmptmp62 = icmp eq i64 %var.load61, 42
  br i1 %cmptmp62, label %and.514.then, label %and.514.else

choice.next:                                      ; preds = %choice.exit40
  %val.match74 = icmp eq i64 %var.load59, 2
  br i1 %val.match74, label %choice.case72, label %choice.next73

and.514.then:                                     ; preds = %choice.case
  %var.load63 = load i64, ptr %var.c1, align 8
  %cmptmp64 = icmp eq i64 %var.load63, 47
  br label %and.514.exit

and.514.else:                                     ; preds = %choice.case
  br label %and.514.exit

and.514.exit:                                     ; preds = %and.514.else, %and.514.then
  %and.514.phi = phi i1 [ %cmptmp64, %and.514.then ], [ %cmptmp62, %and.514.else ]
  br i1 %and.514.phi, label %choice.then65, label %choice.else66

choice.then65:                                    ; preds = %and.514.exit
  store i64 0, ptr %"var.st'", align 8
  %var.load68 = load i64, ptr %"var.i'", align 8
  %addtmp69 = add i64 %var.load68, 2
  store i64 %addtmp69, ptr %"var.i'", align 8
  br label %choice.exit67

choice.else66:                                    ; preds = %and.514.exit
  %var.load70 = load i64, ptr %"var.i'", align 8
  %addtmp71 = add i64 %var.load70, 1
  store i64 %addtmp71, ptr %"var.i'", align 8
  br label %choice.exit67

choice.exit67:                                    ; preds = %choice.else66, %choice.then65
  br label %choice.exit60

choice.case72:                                    ; preds = %choice.next
  %var.load75 = load i64, ptr %var.c, align 8
  %cmptmp76 = icmp eq i64 %var.load75, 92
  br i1 %cmptmp76, label %choice.then77, label %choice.else78

choice.next73:                                    ; preds = %choice.next
  %val.match93 = icmp eq i64 %var.load59, 3
  br i1 %val.match93, label %choice.case91, label %choice.next92

choice.then77:                                    ; preds = %choice.case72
  %var.load80 = load i64, ptr %"var.i'", align 8
  %addtmp81 = add i64 %var.load80, 2
  store i64 %addtmp81, ptr %"var.i'", align 8
  br label %choice.exit79

choice.else78:                                    ; preds = %choice.case72
  %var.load82 = load i64, ptr %var.c, align 8
  %cmptmp83 = icmp eq i64 %var.load82, 34
  br i1 %cmptmp83, label %choice.then84, label %choice.else85

choice.exit79:                                    ; preds = %choice.exit86, %choice.then77
  br label %choice.exit60

choice.then84:                                    ; preds = %choice.else78
  store i64 0, ptr %"var.st'", align 8
  %var.load87 = load i64, ptr %"var.i'", align 8
  %addtmp88 = add i64 %var.load87, 1
  store i64 %addtmp88, ptr %"var.i'", align 8
  br label %choice.exit86

choice.else85:                                    ; preds = %choice.else78
  %var.load89 = load i64, ptr %"var.i'", align 8
  %addtmp90 = add i64 %var.load89, 1
  store i64 %addtmp90, ptr %"var.i'", align 8
  br label %choice.exit86

choice.exit86:                                    ; preds = %choice.else85, %choice.then84
  br label %choice.exit79

choice.case91:                                    ; preds = %choice.next73
  %var.load94 = load i64, ptr %var.c, align 8
  %cmptmp95 = icmp eq i64 %var.load94, 92
  br i1 %cmptmp95, label %choice.then96, label %choice.else97

choice.next92:                                    ; preds = %choice.next73
  %var.load114 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load114, label %choice.then115, label %choice.else116

choice.then96:                                    ; preds = %choice.case91
  %var.load99 = load i64, ptr %"var.i'", align 8
  %addtmp100 = add i64 %var.load99, 2
  store i64 %addtmp100, ptr %"var.i'", align 8
  br label %choice.exit98

choice.else97:                                    ; preds = %choice.case91
  %var.load101 = load i64, ptr %var.c, align 8
  %cmptmp102 = icmp eq i64 %var.load101, 34
  br i1 %cmptmp102, label %and.515.then, label %and.515.else

choice.exit98:                                    ; preds = %choice.exit109, %choice.then96
  br label %choice.exit60

and.515.then:                                     ; preds = %choice.else97
  %var.load103 = load i64, ptr %var.c1, align 8
  %cmptmp104 = icmp eq i64 %var.load103, 34
  br label %and.515.exit

and.515.else:                                     ; preds = %choice.else97
  br label %and.515.exit

and.515.exit:                                     ; preds = %and.515.else, %and.515.then
  %and.515.phi = phi i1 [ %cmptmp104, %and.515.then ], [ %cmptmp102, %and.515.else ]
  br i1 %and.515.phi, label %and.516.then, label %and.516.else

and.516.then:                                     ; preds = %and.515.exit
  %var.load105 = load i64, ptr %var.c2, align 8
  %cmptmp106 = icmp eq i64 %var.load105, 34
  br label %and.516.exit

and.516.else:                                     ; preds = %and.515.exit
  br label %and.516.exit

and.516.exit:                                     ; preds = %and.516.else, %and.516.then
  %and.516.phi = phi i1 [ %cmptmp106, %and.516.then ], [ %and.515.phi, %and.516.else ]
  br i1 %and.516.phi, label %choice.then107, label %choice.else108

choice.then107:                                   ; preds = %and.516.exit
  store i64 0, ptr %"var.st'", align 8
  %var.load110 = load i64, ptr %"var.i'", align 8
  %addtmp111 = add i64 %var.load110, 3
  store i64 %addtmp111, ptr %"var.i'", align 8
  br label %choice.exit109

choice.else108:                                   ; preds = %and.516.exit
  %var.load112 = load i64, ptr %"var.i'", align 8
  %addtmp113 = add i64 %var.load112, 1
  store i64 %addtmp113, ptr %"var.i'", align 8
  br label %choice.exit109

choice.exit109:                                   ; preds = %choice.else108, %choice.then107
  br label %choice.exit98

choice.then115:                                   ; preds = %choice.next92
  %var.load118 = load i64, ptr %var.c, align 8
  %cmptmp119 = icmp eq i64 %var.load118, 92
  br i1 %cmptmp119, label %choice.then120, label %choice.else121

choice.else116:                                   ; preds = %choice.next92
  %var.load151 = load i64, ptr %var.c, align 8
  %cmptmp152 = icmp eq i64 %var.load151, 47
  br i1 %cmptmp152, label %and.519.then, label %and.519.else

choice.exit117:                                   ; preds = %choice.exit157, %choice.exit122
  br label %choice.exit60

choice.then120:                                   ; preds = %choice.then115
  %var.load123 = load i64, ptr %"var.i'", align 8
  %addtmp124 = add i64 %var.load123, 2
  store i64 %addtmp124, ptr %"var.i'", align 8
  br label %choice.exit122

choice.else121:                                   ; preds = %choice.then115
  %var.load125 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load125, label %choice.then126, label %choice.else127

choice.exit122:                                   ; preds = %choice.exit128, %choice.then120
  br label %choice.exit117

choice.then126:                                   ; preds = %choice.else121
  %var.load129 = load i64, ptr %var.c, align 8
  %cmptmp130 = icmp eq i64 %var.load129, 34
  br i1 %cmptmp130, label %and.517.then, label %and.517.else

choice.else127:                                   ; preds = %choice.else121
  %var.load142 = load i64, ptr %var.c, align 8
  %cmptmp143 = icmp eq i64 %var.load142, 34
  br i1 %cmptmp143, label %choice.then144, label %choice.else145

choice.exit128:                                   ; preds = %choice.exit146, %choice.exit137
  br label %choice.exit122

and.517.then:                                     ; preds = %choice.then126
  %var.load131 = load i64, ptr %var.c1, align 8
  %cmptmp132 = icmp eq i64 %var.load131, 34
  br label %and.517.exit

and.517.else:                                     ; preds = %choice.then126
  br label %and.517.exit

and.517.exit:                                     ; preds = %and.517.else, %and.517.then
  %and.517.phi = phi i1 [ %cmptmp132, %and.517.then ], [ %cmptmp130, %and.517.else ]
  br i1 %and.517.phi, label %and.518.then, label %and.518.else

and.518.then:                                     ; preds = %and.517.exit
  %var.load133 = load i64, ptr %var.c2, align 8
  %cmptmp134 = icmp eq i64 %var.load133, 34
  br label %and.518.exit

and.518.else:                                     ; preds = %and.517.exit
  br label %and.518.exit

and.518.exit:                                     ; preds = %and.518.else, %and.518.then
  %and.518.phi = phi i1 [ %cmptmp134, %and.518.then ], [ %and.517.phi, %and.518.else ]
  br i1 %and.518.phi, label %choice.then135, label %choice.else136

choice.then135:                                   ; preds = %and.518.exit
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load138 = load i64, ptr %"var.i'", align 8
  %addtmp139 = add i64 %var.load138, 3
  store i64 %addtmp139, ptr %"var.i'", align 8
  br label %choice.exit137

choice.else136:                                   ; preds = %and.518.exit
  %var.load140 = load i64, ptr %"var.i'", align 8
  %addtmp141 = add i64 %var.load140, 1
  store i64 %addtmp141, ptr %"var.i'", align 8
  br label %choice.exit137

choice.exit137:                                   ; preds = %choice.else136, %choice.then135
  br label %choice.exit128

choice.then144:                                   ; preds = %choice.else127
  store i1 false, ptr %"var.in_str'", align 1
  %var.load147 = load i64, ptr %"var.i'", align 8
  %addtmp148 = add i64 %var.load147, 1
  store i64 %addtmp148, ptr %"var.i'", align 8
  br label %choice.exit146

choice.else145:                                   ; preds = %choice.else127
  %var.load149 = load i64, ptr %"var.i'", align 8
  %addtmp150 = add i64 %var.load149, 1
  store i64 %addtmp150, ptr %"var.i'", align 8
  br label %choice.exit146

choice.exit146:                                   ; preds = %choice.else145, %choice.then144
  br label %choice.exit128

and.519.then:                                     ; preds = %choice.else116
  %var.load153 = load i64, ptr %var.c1, align 8
  %cmptmp154 = icmp eq i64 %var.load153, 47
  br label %and.519.exit

and.519.else:                                     ; preds = %choice.else116
  br label %and.519.exit

and.519.exit:                                     ; preds = %and.519.else, %and.519.then
  %and.519.phi = phi i1 [ %cmptmp154, %and.519.then ], [ %cmptmp152, %and.519.else ]
  br i1 %and.519.phi, label %choice.then155, label %choice.else156

choice.then155:                                   ; preds = %and.519.exit
  %var.load158 = load i64, ptr %var.n, align 8
  store i64 %var.load158, ptr %"var.i'", align 8
  br label %choice.exit157

choice.else156:                                   ; preds = %and.519.exit
  %var.load159 = load i64, ptr %var.c, align 8
  %cmptmp160 = icmp eq i64 %var.load159, 47
  br i1 %cmptmp160, label %and.520.then, label %and.520.else

choice.exit157:                                   ; preds = %choice.exit165, %choice.then155
  br label %choice.exit117

and.520.then:                                     ; preds = %choice.else156
  %var.load161 = load i64, ptr %var.c1, align 8
  %cmptmp162 = icmp eq i64 %var.load161, 42
  br label %and.520.exit

and.520.else:                                     ; preds = %choice.else156
  br label %and.520.exit

and.520.exit:                                     ; preds = %and.520.else, %and.520.then
  %and.520.phi = phi i1 [ %cmptmp162, %and.520.then ], [ %cmptmp160, %and.520.else ]
  br i1 %and.520.phi, label %choice.then163, label %choice.else164

choice.then163:                                   ; preds = %and.520.exit
  store i64 1, ptr %"var.st'", align 8
  %var.load166 = load i64, ptr %"var.i'", align 8
  %addtmp167 = add i64 %var.load166, 2
  store i64 %addtmp167, ptr %"var.i'", align 8
  br label %choice.exit165

choice.else164:                                   ; preds = %and.520.exit
  %var.load168 = load i64, ptr %var.c, align 8
  %cmptmp169 = icmp eq i64 %var.load168, 39
  br i1 %cmptmp169, label %choice.then170, label %choice.else171

choice.exit165:                                   ; preds = %choice.exit172, %choice.then163
  br label %choice.exit157

choice.then170:                                   ; preds = %choice.else164
  %var.load173 = load i64, ptr %"var.i'", align 8
  %cmptmp174 = icmp sgt i64 %var.load173, 0
  br i1 %cmptmp174, label %choice.then175, label %choice.else176

choice.else171:                                   ; preds = %choice.else164
  %var.load221 = load i64, ptr %var.c, align 8
  %cmptmp222 = icmp eq i64 %var.load221, 34
  br i1 %cmptmp222, label %choice.then223, label %choice.else224

choice.exit172:                                   ; preds = %choice.exit225, %choice.exit198
  br label %choice.exit165

choice.then175:                                   ; preds = %choice.then170
  %var.load178 = load ptr, ptr %var.line, align 8
  %s.read.len179 = getelementptr inbounds { i64, ptr }, ptr %var.load178, i32 0, i32 0
  %s.read.len180 = load i64, ptr %s.read.len179, align 8
  %s.read.len181 = and i64 %s.read.len180, 281474976710655
  %s.read.data182 = getelementptr inbounds { i64, ptr }, ptr %var.load178, i32 0, i32 1
  %s.read.data183 = load ptr, ptr %s.read.data182, align 8
  %var.load184 = load i64, ptr %"var.i'", align 8
  %subtmp = sub i64 %var.load184, 1
  %idx.neg185 = icmp slt i64 %subtmp, 0
  br i1 %idx.neg185, label %idx_oob188, label %idx_big_check186

choice.else176:                                   ; preds = %choice.then170
  br label %choice.exit177

choice.exit177:                                   ; preds = %choice.else176, %idx_ok187
  %choice.res194 = phi i64 [ %s.byte.val193, %idx_ok187 ], [ 0, %choice.else176 ]
  store i64 %choice.res194, ptr %var.prev_b, align 8
  %var.load195 = load i64, ptr %var.prev_b, align 8
  %call.res = call i1 @"formatter::is_id_byte"(i64 %var.load195)
  br i1 %call.res, label %choice.then196, label %choice.else197

idx_big_check186:                                 ; preds = %choice.then175
  %idx.big189 = icmp sge i64 %subtmp, %s.read.len181
  br i1 %idx.big189, label %idx_oob188, label %idx_ok187

idx_ok187:                                        ; preds = %abort.dead190, %idx_big_check186
  %s.byte.gep191 = getelementptr i8, ptr %s.read.data183, i64 %subtmp
  %s.byte192 = load i8, ptr %s.byte.gep191, align 1
  %s.byte.val193 = zext i8 %s.byte192 to i64
  br label %choice.exit177

idx_oob188:                                       ; preds = %idx_big_check186, %choice.then175
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead190:                                    ; No predecessors!
  br label %idx_ok187

choice.then196:                                   ; preds = %choice.exit177
  br label %choice.exit198

choice.else197:                                   ; preds = %choice.exit177
  %var.load199 = load i64, ptr %var.c1, align 8
  %cmptmp200 = icmp eq i64 %var.load199, 92
  br i1 %cmptmp200, label %and.521.then, label %and.521.else

choice.exit198:                                   ; preds = %choice.exit207, %choice.then196
  %choice.res217 = phi i64 [ 1, %choice.then196 ], [ %choice.res216, %choice.exit207 ]
  store i64 %choice.res217, ptr %var.step, align 8
  %var.load218 = load i64, ptr %"var.i'", align 8
  %var.load219 = load i64, ptr %var.step, align 8
  %addtmp220 = add i64 %var.load218, %var.load219
  store i64 %addtmp220, ptr %"var.i'", align 8
  br label %choice.exit172

and.521.then:                                     ; preds = %choice.else197
  %var.load201 = load i64, ptr %"var.i'", align 8
  %addtmp202 = add i64 %var.load201, 2
  %var.load203 = load i64, ptr %var.n, align 8
  %cmptmp204 = icmp slt i64 %addtmp202, %var.load203
  br label %and.521.exit

and.521.else:                                     ; preds = %choice.else197
  br label %and.521.exit

and.521.exit:                                     ; preds = %and.521.else, %and.521.then
  %and.521.phi = phi i1 [ %cmptmp204, %and.521.then ], [ %cmptmp200, %and.521.else ]
  br i1 %and.521.phi, label %choice.then205, label %choice.else206

choice.then205:                                   ; preds = %and.521.exit
  br label %choice.exit207

choice.else206:                                   ; preds = %and.521.exit
  %var.load208 = load i64, ptr %"var.i'", align 8
  %addtmp209 = add i64 %var.load208, 1
  %var.load210 = load i64, ptr %var.n, align 8
  %cmptmp211 = icmp slt i64 %addtmp209, %var.load210
  br i1 %cmptmp211, label %choice.then212, label %choice.else213

choice.exit207:                                   ; preds = %choice.exit214, %choice.then205
  %choice.res216 = phi i64 [ 3, %choice.then205 ], [ %choice.res215, %choice.exit214 ]
  br label %choice.exit198

choice.then212:                                   ; preds = %choice.else206
  br label %choice.exit214

choice.else213:                                   ; preds = %choice.else206
  br label %choice.exit214

choice.exit214:                                   ; preds = %choice.else213, %choice.then212
  %choice.res215 = phi i64 [ 2, %choice.then212 ], [ 1, %choice.else213 ]
  br label %choice.exit207

choice.then223:                                   ; preds = %choice.else171
  %var.load226 = load i64, ptr %var.c1, align 8
  %cmptmp227 = icmp eq i64 %var.load226, 34
  br i1 %cmptmp227, label %and.522.then, label %and.522.else

choice.else224:                                   ; preds = %choice.else171
  %var.load253 = load i64, ptr %"var.i'", align 8
  %addtmp254 = add i64 %var.load253, 1
  store i64 %addtmp254, ptr %"var.i'", align 8
  br label %choice.exit225

choice.exit225:                                   ; preds = %choice.else224, %choice.exit232
  br label %choice.exit172

and.522.then:                                     ; preds = %choice.then223
  %var.load228 = load i64, ptr %var.c2, align 8
  %cmptmp229 = icmp eq i64 %var.load228, 34
  br label %and.522.exit

and.522.else:                                     ; preds = %choice.then223
  br label %and.522.exit

and.522.exit:                                     ; preds = %and.522.else, %and.522.then
  %and.522.phi = phi i1 [ %cmptmp229, %and.522.then ], [ %cmptmp227, %and.522.else ]
  br i1 %and.522.phi, label %choice.then230, label %choice.else231

choice.then230:                                   ; preds = %and.522.exit
  %var.load233 = load i64, ptr %"var.i'", align 8
  %addtmp234 = add i64 %var.load233, 3
  %var.load235 = load i64, ptr %var.n, align 8
  %cmptmp236 = icmp eq i64 %addtmp234, %var.load235
  br i1 %cmptmp236, label %choice.then237, label %choice.else238

choice.else231:                                   ; preds = %and.522.exit
  %var.load243 = load i64, ptr %"var.i'", align 8
  %addtmp244 = add i64 %var.load243, 1
  %var.load245 = load i64, ptr %var.n, align 8
  %cmptmp246 = icmp eq i64 %addtmp244, %var.load245
  br i1 %cmptmp246, label %choice.then247, label %choice.else248

choice.exit232:                                   ; preds = %choice.exit249, %choice.exit239
  br label %choice.exit225

choice.then237:                                   ; preds = %choice.then230
  store i64 3, ptr %"var.st'", align 8
  %var.load240 = load i64, ptr %var.n, align 8
  store i64 %var.load240, ptr %"var.i'", align 8
  br label %choice.exit239

choice.else238:                                   ; preds = %choice.then230
  store i1 true, ptr %"var.in_str'", align 1
  store i1 true, ptr %"var.str_triple'", align 1
  %var.load241 = load i64, ptr %"var.i'", align 8
  %addtmp242 = add i64 %var.load241, 3
  store i64 %addtmp242, ptr %"var.i'", align 8
  br label %choice.exit239

choice.exit239:                                   ; preds = %choice.else238, %choice.then237
  br label %choice.exit232

choice.then247:                                   ; preds = %choice.else231
  store i64 2, ptr %"var.st'", align 8
  %var.load250 = load i64, ptr %var.n, align 8
  store i64 %var.load250, ptr %"var.i'", align 8
  br label %choice.exit249

choice.else248:                                   ; preds = %choice.else231
  store i1 true, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load251 = load i64, ptr %"var.i'", align 8
  %addtmp252 = add i64 %var.load251, 1
  store i64 %addtmp252, ptr %"var.i'", align 8
  br label %choice.exit249

choice.exit249:                                   ; preds = %choice.else248, %choice.then247
  br label %choice.exit232

choice.then256:                                   ; preds = %loop.exit.513
  %var.load259 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load259, label %choice.then260, label %choice.else261

choice.else257:                                   ; preds = %loop.exit.513
  %var.load264 = load i64, ptr %"var.st'", align 8
  br label %choice.exit258

choice.exit258:                                   ; preds = %choice.else257, %choice.exit262
  %choice.res265 = phi i64 [ %choice.res263, %choice.exit262 ], [ %var.load264, %choice.else257 ]
  ret i64 %choice.res265

choice.then260:                                   ; preds = %choice.then256
  br label %choice.exit262

choice.else261:                                   ; preds = %choice.then256
  br label %choice.exit262

choice.exit262:                                   ; preds = %choice.else261, %choice.then260
  %choice.res263 = phi i64 [ 3, %choice.then260 ], [ 2, %choice.else261 ]
  br label %choice.exit258
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.523, align 8
  br label %loop.header.523

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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

loop.latch.523:                                   ; preds = %choice.exit16
  %step.val = load i64, ptr %loop.step.523, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.523, align 8
  br label %loop.header.523

loop.exit.523:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.523
  %var.load19 = load ptr, ptr %var.s, align 8
  %s.read.len20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len21 = load i64, ptr %s.read.len20, align 8
  %s.read.len22 = and i64 %s.read.len21, 281474976710655
  %s.read.data23 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data23, align 8
  %var.load25 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len22, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len22
  %final.start = select i1 %start.gt.len, i64 %s.read.len22, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load25, 0
  %rel.end = add i64 %s.read.len22, %var.load25
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load25
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len22
  %final.end = select i1 %end.gt.len, i64 %s.read.len22, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data24, i64 %final.start
  %arena.cur26 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
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
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %subtmp, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead9, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load10 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load10, 32
  %val.match12 = icmp eq i64 %var.load10, 9
  %case.or = or i1 %val.match, %val.match12
  %val.match13 = icmp eq i64 %var.load10, 13
  %case.or14 = or i1 %case.or, %val.match13
  br i1 %case.or14, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %idx_ok

choice.exit11:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then15, label %choice.else

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit11

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit11

choice.then15:                                    ; preds = %choice.exit11
  %var.load17 = load i64, ptr %"var.end'", align 8
  %subtmp18 = sub i64 %var.load17, 1
  store i64 %subtmp18, ptr %"var.end'", align 8
  br label %choice.exit16

choice.else:                                      ; preds = %choice.exit11
  br label %loop.exit.523

choice.exit16:                                    ; preds = %choice.then15
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.524.then, label %and.524.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal13, label %str_ok12, label %tag.gen_check14

and.524.else:                                     ; preds = %str_ok
  br label %and.524.exit

and.524.exit:                                     ; preds = %and.524.else, %idx_ok
  %and.524.phi = phi i1 [ %cmptmp23, %idx_ok ], [ %cmptmp, %and.524.else ]
  br i1 %and.524.phi, label %choice.then, label %choice.else

str_ok12:                                         ; preds = %abort.dead21, %tag.slow_check15, %tag.gen_check14, %and.524.then
  %subtmp = sub i64 %str.len.query10, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

tag.gen_check14:                                  ; preds = %and.524.then
  %active.gen17 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok18 = icmp eq i64 %str.tag11, %active.gen17
  br i1 %tag.fast.ok18, label %str_ok12, label %tag.slow_check15

tag.slow_check15:                                 ; preds = %tag.gen_check14
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid20 = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag11)
  br i1 %tag.valid20, label %str_ok12, label %tag.stale16

tag.stale16:                                      ; preds = %tag.slow_check15
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %subtmp, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead22, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp23 = icmp eq i64 %s.byte.val, 13
  br label %and.524.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead22:                                     ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.524.exit
  %var.load24 = load ptr, ptr %var.s, align 8
  %s.read.len25 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len25, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load ptr, ptr %var.s, align 8
  %str.len.query31 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %str.len.query32 = load i64, ptr %str.len.query31, align 8
  %str.len.query33 = and i64 %str.len.query32, 281474976710655
  %str.tag34 = lshr i64 %str.len.query32, 48
  %tag.immortal36 = icmp eq i64 %str.tag34, 0
  br i1 %tag.immortal36, label %str_ok35, label %tag.gen_check37

choice.else:                                      ; preds = %and.524.exit
  %var.load47 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok35
  %choice.res = phi ptr [ %str.view, %str_ok35 ], [ %var.load47, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

str_ok35:                                         ; preds = %abort.dead44, %tag.slow_check38, %tag.gen_check37, %choice.then
  %subtmp45 = sub i64 %str.len.query33, 1
  %rel.start = add i64 %s.read.len27, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len27
  %final.start = select i1 %start.gt.len, i64 %s.read.len27, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp45, 0
  %rel.end = add i64 %s.read.len27, %subtmp45
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp45
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len27
  %final.end = select i1 %end.gt.len, i64 %s.read.len27, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data29, i64 %final.start
  %arena.cur46 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

tag.gen_check37:                                  ; preds = %choice.then
  %active.gen40 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok41 = icmp eq i64 %str.tag34, %active.gen40
  br i1 %tag.fast.ok41, label %str_ok35, label %tag.slow_check38

tag.slow_check38:                                 ; preds = %tag.gen_check37
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag34)
  br i1 %tag.valid43, label %str_ok35, label %tag.stale39

tag.stale39:                                      ; preds = %tag.slow_check38
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead44:                                     ; No predecessors!
  br label %str_ok35
}

define ptr @"formatter::split_source_lines"(ptr %0) #0 {
entry:
  %var.next_st = alloca i64, align 8
  %var.is_comm = alloca i1, align 1
  %var.is_blank = alloca i1, align 1
  %var.eff_indent = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._73 = alloca i64, align 8
  %var._i72 = alloca i64, align 8
  %loop.step.530 = alloca i64, align 8
  %loop.idx.530 = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %"var.tabs'" = alloca i64, align 8
  %"var.sp'" = alloca i64, align 8
  %var.cleaned = alloca ptr, align 8
  %var.raw_slice = alloca ptr, align 8
  %var._11 = alloca i64, align 8
  %var._i10 = alloca i64, align 8
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
  store ptr %a.new, ptr %var.res, align 8
  %var.load = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %"var.st'", align 8
  store i64 0, ptr %loop.idx.526, align 8
  br label %loop.header.526

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

loop.header.526:                                  ; preds = %loop.latch.526, %str_ok
  %counter.load = load i64, ptr %loop.idx.526, align 8
  br label %loop.body.526

loop.body.526:                                    ; preds = %loop.header.526
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.526, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.pos'", align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.526:                                ; No predecessors!
  br label %loop.exit.526

loop.latch.526:                                   ; preds = %a.store
  %step.val222 = load i64, ptr %loop.step.526, align 8
  %loop.next223 = add i64 %counter.load, %step.val222
  store i64 %loop.next223, ptr %loop.idx.526, align 8
  br label %loop.header.526

loop.exit.526:                                    ; preds = %choice.then, %loop.exit.nat.526
  %var.load224 = load ptr, ptr %var.res, align 8
  %a.load225 = load ptr, ptr %var.res, align 8
  %a.null226 = icmp eq ptr %a.load225, null
  br i1 %a.null226, label %a.create227, label %a.after228

choice.then:                                      ; preds = %loop.body.526
  br label %loop.exit.526

choice.exit:                                      ; preds = %loop.body.526
  %var.load7 = load i64, ptr %"var.pos'", align 8
  store i64 %var.load7, ptr %var.line_start, align 8
  store i64 0, ptr %loop.idx.527, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.527

loop.header.527:                                  ; preds = %loop.latch.527, %choice.exit
  %counter.load8 = load i64, ptr %loop.idx.527, align 8
  br label %loop.body.527

loop.body.527:                                    ; preds = %loop.header.527
  %loop.rel.i9 = sub i64 %counter.load8, 0
  store i64 1, ptr %loop.step.527, align 8
  store i64 %loop.rel.i9, ptr %var._i10, align 8
  store i64 %counter.load8, ptr %var._11, align 8
  %var.load12 = load i64, ptr %"var.pos'", align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sge i64 %var.load12, %var.load13
  br i1 %cmptmp14, label %or.528.then, label %or.528.else

loop.exit.nat.527:                                ; No predecessors!
  br label %loop.exit.527

loop.latch.527:                                   ; preds = %choice.exit23
  %step.val = load i64, ptr %loop.step.527, align 8
  %loop.next = add i64 %counter.load8, %step.val
  store i64 %loop.next, ptr %loop.idx.527, align 8
  br label %loop.header.527

loop.exit.527:                                    ; preds = %choice.then22, %loop.exit.nat.527
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load25 = load ptr, ptr %var.src, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  %var.load31 = load i64, ptr %var.line_start, align 8
  %var.load32 = load i64, ptr %"var.pos'", align 8
  %start.is_neg = icmp slt i64 %var.load31, 0
  %rel.start = add i64 %s.read.len28, %var.load31
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load31
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len28
  %final.start = select i1 %start.gt.len, i64 %s.read.len28, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load32, 0
  %rel.end = add i64 %s.read.len28, %var.load32
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load32
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len28
  %final.end = select i1 %end.gt.len, i64 %s.read.len28, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data30, i64 %final.start
  %arena.cur33 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw_slice, align 8
  %var.load34 = load i64, ptr %"var.pos'", align 8
  %var.load35 = load i64, ptr %var.n, align 8
  %cmptmp36 = icmp slt i64 %var.load34, %var.load35
  br i1 %cmptmp36, label %and.529.then, label %and.529.else

or.528.then:                                      ; preds = %loop.body.527
  br label %or.528.exit

or.528.else:                                      ; preds = %loop.body.527
  %var.load15 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len16 = load i64, ptr %s.read.len, align 8
  %s.read.len17 = and i64 %s.read.len16, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %"var.pos'", align 8
  %idx.neg = icmp slt i64 %var.load19, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

or.528.exit:                                      ; preds = %idx_ok, %or.528.then
  %or.528.phi = phi i1 [ %cmptmp14, %or.528.then ], [ %cmptmp21, %idx_ok ]
  br i1 %or.528.phi, label %choice.then22, label %choice.exit23

idx_big_check:                                    ; preds = %or.528.else
  %idx.big = icmp sge i64 %var.load19, %s.read.len17
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead20, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data18, i64 %var.load19
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp21 = icmp eq i64 %s.byte.val, 10
  br label %or.528.exit

idx_oob:                                          ; preds = %idx_big_check, %or.528.else
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok

choice.then22:                                    ; preds = %or.528.exit
  br label %loop.exit.527

choice.exit23:                                    ; preds = %or.528.exit
  %var.load24 = load i64, ptr %"var.pos'", align 8
  %addtmp = add i64 %var.load24, 1
  store i64 %addtmp, ptr %"var.pos'", align 8
  br label %loop.latch.527

and.529.then:                                     ; preds = %loop.exit.527
  %var.load37 = load ptr, ptr %var.src, align 8
  %s.read.len38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %s.read.len39 = load i64, ptr %s.read.len38, align 8
  %s.read.len40 = and i64 %s.read.len39, 281474976710655
  %s.read.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %s.read.data42 = load ptr, ptr %s.read.data41, align 8
  %var.load43 = load i64, ptr %"var.pos'", align 8
  %idx.neg44 = icmp slt i64 %var.load43, 0
  br i1 %idx.neg44, label %idx_oob47, label %idx_big_check45

and.529.else:                                     ; preds = %loop.exit.527
  br label %and.529.exit

and.529.exit:                                     ; preds = %and.529.else, %idx_ok46
  %and.529.phi = phi i1 [ %cmptmp53, %idx_ok46 ], [ %cmptmp36, %and.529.else ]
  br i1 %and.529.phi, label %choice.then54, label %choice.exit55

idx_big_check45:                                  ; preds = %and.529.then
  %idx.big48 = icmp sge i64 %var.load43, %s.read.len40
  br i1 %idx.big48, label %idx_oob47, label %idx_ok46

idx_ok46:                                         ; preds = %abort.dead49, %idx_big_check45
  %s.byte.gep50 = getelementptr i8, ptr %s.read.data42, i64 %var.load43
  %s.byte51 = load i8, ptr %s.byte.gep50, align 1
  %s.byte.val52 = zext i8 %s.byte51 to i64
  %cmptmp53 = icmp eq i64 %s.byte.val52, 10
  br label %and.529.exit

idx_oob47:                                        ; preds = %idx_big_check45, %and.529.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %idx_ok46

choice.then54:                                    ; preds = %and.529.exit
  %var.load56 = load i64, ptr %"var.pos'", align 8
  %addtmp57 = add i64 %var.load56, 1
  store i64 %addtmp57, ptr %"var.pos'", align 8
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.then54, %and.529.exit
  %var.load58 = load i64, ptr %"var.st'", align 8
  %cmptmp59 = icmp eq i64 %var.load58, 0
  br i1 %cmptmp59, label %choice.then60, label %choice.else

choice.then60:                                    ; preds = %choice.exit55
  %var.load62 = load ptr, ptr %var.raw_slice, align 8
  %call.res = call { i64, ptr } @"formatter::strip_cr_and_trailing_ws"(ptr %var.load62)
  %arena.cur63 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  br label %choice.exit61

choice.else:                                      ; preds = %choice.exit55
  %var.load64 = load ptr, ptr %var.raw_slice, align 8
  %call.res65 = call { i64, ptr } @"formatter::strip_cr_only"(ptr %var.load64)
  %arena.cur66 = call ptr @dva_arena_current()
  %ret.ub.alloc67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  store { i64, ptr } %call.res65, ptr %ret.ub.alloc67, align 8
  br label %choice.exit61

choice.exit61:                                    ; preds = %choice.else, %choice.then60
  %choice.res = phi ptr [ %ret.ub.alloc, %choice.then60 ], [ %ret.ub.alloc67, %choice.else ]
  store ptr %choice.res, ptr %var.cleaned, align 8
  store i64 0, ptr %"var.sp'", align 8
  store i64 0, ptr %"var.tabs'", align 8
  store i64 0, ptr %"var.idx'", align 8
  store i64 0, ptr %loop.idx.530, align 8
  %cycle.prev.u68 = load i64, ptr %var._, align 8
  %cycle.prev.i69 = load i64, ptr %var._i, align 8
  br label %loop.header.530

loop.header.530:                                  ; preds = %loop.latch.530, %choice.exit61
  %counter.load70 = load i64, ptr %loop.idx.530, align 8
  br label %loop.body.530

loop.body.530:                                    ; preds = %loop.header.530
  %loop.rel.i71 = sub i64 %counter.load70, 0
  store i64 1, ptr %loop.step.530, align 8
  store i64 %loop.rel.i71, ptr %var._i72, align 8
  store i64 %counter.load70, ptr %var._73, align 8
  %var.load74 = load i64, ptr %"var.idx'", align 8
  %var.load75 = load ptr, ptr %var.cleaned, align 8
  %str.len.query76 = getelementptr inbounds { i64, ptr }, ptr %var.load75, i32 0, i32 0
  %str.len.query77 = load i64, ptr %str.len.query76, align 8
  %str.len.query78 = and i64 %str.len.query77, 281474976710655
  %cmptmp79 = icmp sge i64 %var.load74, %str.len.query78
  br i1 %cmptmp79, label %choice.then80, label %choice.exit81

loop.exit.nat.530:                                ; No predecessors!
  br label %loop.exit.530

loop.latch.530:                                   ; preds = %choice.exit102
  %step.val116 = load i64, ptr %loop.step.530, align 8
  %loop.next117 = add i64 %counter.load70, %step.val116
  store i64 %loop.next117, ptr %loop.idx.530, align 8
  br label %loop.header.530

loop.exit.530:                                    ; preds = %choice.else110, %choice.then80, %loop.exit.nat.530
  store i64 %cycle.prev.u68, ptr %var._, align 8
  store i64 %cycle.prev.i69, ptr %var._i, align 8
  %var.load118 = load i64, ptr %"var.sp'", align 8
  %var.load119 = load i64, ptr %"var.tabs'", align 8
  %multmp = mul i64 %var.load119, 3
  %addtmp120 = add i64 %var.load118, %multmp
  store i64 %addtmp120, ptr %var.eff_indent, align 8
  %var.load121 = load i64, ptr %"var.st'", align 8
  %cmptmp122 = icmp eq i64 %var.load121, 0
  br i1 %cmptmp122, label %and.531.then, label %and.531.else

choice.then80:                                    ; preds = %loop.body.530
  br label %loop.exit.530

choice.exit81:                                    ; preds = %loop.body.530
  %var.load82 = load ptr, ptr %var.cleaned, align 8
  %s.read.len83 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %s.read.len84 = load i64, ptr %s.read.len83, align 8
  %s.read.len85 = and i64 %s.read.len84, 281474976710655
  %s.read.data86 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %s.read.data87 = load ptr, ptr %s.read.data86, align 8
  %var.load88 = load i64, ptr %"var.idx'", align 8
  %idx.neg89 = icmp slt i64 %var.load88, 0
  br i1 %idx.neg89, label %idx_oob92, label %idx_big_check90

idx_big_check90:                                  ; preds = %choice.exit81
  %idx.big93 = icmp sge i64 %var.load88, %s.read.len85
  br i1 %idx.big93, label %idx_oob92, label %idx_ok91

idx_ok91:                                         ; preds = %abort.dead94, %idx_big_check90
  %s.byte.gep95 = getelementptr i8, ptr %s.read.data87, i64 %var.load88
  %s.byte96 = load i8, ptr %s.byte.gep95, align 1
  %s.byte.val97 = zext i8 %s.byte96 to i64
  store i64 %s.byte.val97, ptr %var.c, align 8
  %var.load98 = load i64, ptr %var.c, align 8
  %cmptmp99 = icmp eq i64 %var.load98, 32
  br i1 %cmptmp99, label %choice.then100, label %choice.else101

idx_oob92:                                        ; preds = %idx_big_check90, %choice.exit81
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead94:                                     ; No predecessors!
  br label %idx_ok91

choice.then100:                                   ; preds = %idx_ok91
  %var.load103 = load i64, ptr %"var.sp'", align 8
  %addtmp104 = add i64 %var.load103, 1
  store i64 %addtmp104, ptr %"var.sp'", align 8
  %var.load105 = load i64, ptr %"var.idx'", align 8
  %addtmp106 = add i64 %var.load105, 1
  store i64 %addtmp106, ptr %"var.idx'", align 8
  br label %choice.exit102

choice.else101:                                   ; preds = %idx_ok91
  %var.load107 = load i64, ptr %var.c, align 8
  %cmptmp108 = icmp eq i64 %var.load107, 9
  br i1 %cmptmp108, label %choice.then109, label %choice.else110

choice.exit102:                                   ; preds = %choice.exit111, %choice.then100
  br label %loop.latch.530

choice.then109:                                   ; preds = %choice.else101
  %var.load112 = load i64, ptr %"var.tabs'", align 8
  %addtmp113 = add i64 %var.load112, 1
  store i64 %addtmp113, ptr %"var.tabs'", align 8
  %var.load114 = load i64, ptr %"var.idx'", align 8
  %addtmp115 = add i64 %var.load114, 1
  store i64 %addtmp115, ptr %"var.idx'", align 8
  br label %choice.exit111

choice.else110:                                   ; preds = %choice.else101
  br label %loop.exit.530

choice.exit111:                                   ; preds = %choice.then109
  br label %choice.exit102

and.531.then:                                     ; preds = %loop.exit.530
  %var.load123 = load i64, ptr %"var.idx'", align 8
  %var.load124 = load ptr, ptr %var.cleaned, align 8
  %str.len.query125 = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 0
  %str.len.query126 = load i64, ptr %str.len.query125, align 8
  %str.len.query127 = and i64 %str.len.query126, 281474976710655
  %cmptmp128 = icmp eq i64 %var.load123, %str.len.query127
  br label %and.531.exit

and.531.else:                                     ; preds = %loop.exit.530
  br label %and.531.exit

and.531.exit:                                     ; preds = %and.531.else, %and.531.then
  %and.531.phi = phi i1 [ %cmptmp128, %and.531.then ], [ %cmptmp122, %and.531.else ]
  store i1 %and.531.phi, ptr %var.is_blank, align 1
  %var.load129 = load i64, ptr %"var.st'", align 8
  %cmptmp130 = icmp eq i64 %var.load129, 0
  br i1 %cmptmp130, label %and.532.then, label %and.532.else

and.532.then:                                     ; preds = %and.531.exit
  %var.load131 = load i1, ptr %var.is_blank, align 1
  %nottmp = xor i1 %var.load131, true
  br label %and.532.exit

and.532.else:                                     ; preds = %and.531.exit
  br label %and.532.exit

and.532.exit:                                     ; preds = %and.532.else, %and.532.then
  %and.532.phi = phi i1 [ %nottmp, %and.532.then ], [ %cmptmp130, %and.532.else ]
  br i1 %and.532.phi, label %and.533.then, label %and.533.else

and.533.then:                                     ; preds = %and.532.exit
  %var.load132 = load i64, ptr %"var.idx'", align 8
  %addtmp133 = add i64 %var.load132, 1
  %var.load134 = load ptr, ptr %var.cleaned, align 8
  %str.len.query135 = getelementptr inbounds { i64, ptr }, ptr %var.load134, i32 0, i32 0
  %str.len.query136 = load i64, ptr %str.len.query135, align 8
  %str.len.query137 = and i64 %str.len.query136, 281474976710655
  %cmptmp138 = icmp slt i64 %addtmp133, %str.len.query137
  br label %and.533.exit

and.533.else:                                     ; preds = %and.532.exit
  br label %and.533.exit

and.533.exit:                                     ; preds = %and.533.else, %and.533.then
  %and.533.phi = phi i1 [ %cmptmp138, %and.533.then ], [ %and.532.phi, %and.533.else ]
  br i1 %and.533.phi, label %and.534.then, label %and.534.else

and.534.then:                                     ; preds = %and.533.exit
  %var.load139 = load ptr, ptr %var.cleaned, align 8
  %s.read.len140 = getelementptr inbounds { i64, ptr }, ptr %var.load139, i32 0, i32 0
  %s.read.len141 = load i64, ptr %s.read.len140, align 8
  %s.read.len142 = and i64 %s.read.len141, 281474976710655
  %s.read.data143 = getelementptr inbounds { i64, ptr }, ptr %var.load139, i32 0, i32 1
  %s.read.data144 = load ptr, ptr %s.read.data143, align 8
  %var.load145 = load i64, ptr %"var.idx'", align 8
  %idx.neg146 = icmp slt i64 %var.load145, 0
  br i1 %idx.neg146, label %idx_oob149, label %idx_big_check147

and.534.else:                                     ; preds = %and.533.exit
  br label %and.534.exit

and.534.exit:                                     ; preds = %and.534.else, %idx_ok148
  %and.534.phi = phi i1 [ %cmptmp155, %idx_ok148 ], [ %and.533.phi, %and.534.else ]
  br i1 %and.534.phi, label %and.535.then, label %and.535.else

idx_big_check147:                                 ; preds = %and.534.then
  %idx.big150 = icmp sge i64 %var.load145, %s.read.len142
  br i1 %idx.big150, label %idx_oob149, label %idx_ok148

idx_ok148:                                        ; preds = %abort.dead151, %idx_big_check147
  %s.byte.gep152 = getelementptr i8, ptr %s.read.data144, i64 %var.load145
  %s.byte153 = load i8, ptr %s.byte.gep152, align 1
  %s.byte.val154 = zext i8 %s.byte153 to i64
  %cmptmp155 = icmp eq i64 %s.byte.val154, 47
  br label %and.534.exit

idx_oob149:                                       ; preds = %idx_big_check147, %and.534.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead151:                                    ; No predecessors!
  br label %idx_ok148

and.535.then:                                     ; preds = %and.534.exit
  %var.load156 = load ptr, ptr %var.cleaned, align 8
  %s.read.len157 = getelementptr inbounds { i64, ptr }, ptr %var.load156, i32 0, i32 0
  %s.read.len158 = load i64, ptr %s.read.len157, align 8
  %s.read.len159 = and i64 %s.read.len158, 281474976710655
  %s.read.data160 = getelementptr inbounds { i64, ptr }, ptr %var.load156, i32 0, i32 1
  %s.read.data161 = load ptr, ptr %s.read.data160, align 8
  %var.load162 = load i64, ptr %"var.idx'", align 8
  %addtmp163 = add i64 %var.load162, 1
  %idx.neg164 = icmp slt i64 %addtmp163, 0
  br i1 %idx.neg164, label %idx_oob167, label %idx_big_check165

and.535.else:                                     ; preds = %and.534.exit
  br label %and.535.exit

and.535.exit:                                     ; preds = %and.535.else, %or.536.exit
  %and.535.phi = phi i1 [ %or.536.phi, %or.536.exit ], [ %and.534.phi, %and.535.else ]
  store i1 %and.535.phi, ptr %var.is_comm, align 1
  %var.load192 = load ptr, ptr %var.cleaned, align 8
  %var.load193 = load i64, ptr %"var.st'", align 8
  %call.res194 = call i64 @"formatter::scan_line_state"(ptr %var.load192, i64 %var.load193)
  store i64 %call.res194, ptr %var.next_st, align 8
  %var.load195 = load ptr, ptr %var.cleaned, align 8
  %var.load196 = load i64, ptr %"var.st'", align 8
  %var.load197 = load i64, ptr %var.next_st, align 8
  %var.load198 = load i64, ptr %var.eff_indent, align 8
  %var.load199 = load i64, ptr %"var.tabs'", align 8
  %cmptmp200 = icmp sgt i64 %var.load199, 0
  %var.load201 = load i1, ptr %var.is_blank, align 1
  %var.load202 = load i1, ptr %var.is_comm, align 1
  %arena.cur203 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load195, ptr %rec.fld, align 8
  %rec.fld204 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load196, ptr %rec.fld204, align 8
  %rec.fld205 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load197, ptr %rec.fld205, align 8
  %rec.fld206 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load198, ptr %rec.fld206, align 8
  %rec.fld207 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i1 %cmptmp200, ptr %rec.fld207, align 1
  %rec.fld208 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load201, ptr %rec.fld208, align 1
  %rec.fld209 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 %var.load202, ptr %rec.fld209, align 1
  %a.load = load ptr, ptr %var.res, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

idx_big_check165:                                 ; preds = %and.535.then
  %idx.big168 = icmp sge i64 %addtmp163, %s.read.len159
  br i1 %idx.big168, label %idx_oob167, label %idx_ok166

idx_ok166:                                        ; preds = %abort.dead169, %idx_big_check165
  %s.byte.gep170 = getelementptr i8, ptr %s.read.data161, i64 %addtmp163
  %s.byte171 = load i8, ptr %s.byte.gep170, align 1
  %s.byte.val172 = zext i8 %s.byte171 to i64
  %cmptmp173 = icmp eq i64 %s.byte.val172, 47
  br i1 %cmptmp173, label %or.536.then, label %or.536.else

idx_oob167:                                       ; preds = %idx_big_check165, %and.535.then
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead169:                                    ; No predecessors!
  br label %idx_ok166

or.536.then:                                      ; preds = %idx_ok166
  br label %or.536.exit

or.536.else:                                      ; preds = %idx_ok166
  %var.load174 = load ptr, ptr %var.cleaned, align 8
  %s.read.len175 = getelementptr inbounds { i64, ptr }, ptr %var.load174, i32 0, i32 0
  %s.read.len176 = load i64, ptr %s.read.len175, align 8
  %s.read.len177 = and i64 %s.read.len176, 281474976710655
  %s.read.data178 = getelementptr inbounds { i64, ptr }, ptr %var.load174, i32 0, i32 1
  %s.read.data179 = load ptr, ptr %s.read.data178, align 8
  %var.load180 = load i64, ptr %"var.idx'", align 8
  %addtmp181 = add i64 %var.load180, 1
  %idx.neg182 = icmp slt i64 %addtmp181, 0
  br i1 %idx.neg182, label %idx_oob185, label %idx_big_check183

or.536.exit:                                      ; preds = %idx_ok184, %or.536.then
  %or.536.phi = phi i1 [ %cmptmp173, %or.536.then ], [ %cmptmp191, %idx_ok184 ]
  br label %and.535.exit

idx_big_check183:                                 ; preds = %or.536.else
  %idx.big186 = icmp sge i64 %addtmp181, %s.read.len177
  br i1 %idx.big186, label %idx_oob185, label %idx_ok184

idx_ok184:                                        ; preds = %abort.dead187, %idx_big_check183
  %s.byte.gep188 = getelementptr i8, ptr %s.read.data179, i64 %addtmp181
  %s.byte189 = load i8, ptr %s.byte.gep188, align 1
  %s.byte.val190 = zext i8 %s.byte189 to i64
  %cmptmp191 = icmp eq i64 %s.byte.val190, 42
  br label %or.536.exit

idx_oob185:                                       ; preds = %idx_big_check183, %or.536.else
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead187:                                    ; No predecessors!
  br label %idx_ok184

a.create:                                         ; preds = %and.535.exit
  %arena.cur210 = call ptr @dva_arena_current()
  %a.create211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 24)
  %arena.cur212 = call ptr @dva_arena_current()
  %a.buf213 = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 128)
  %a.len.gep214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create211, i32 0, i32 0
  store i64 0, ptr %a.len.gep214, align 8
  %a.data.gep215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create211, i32 0, i32 1
  store ptr %a.buf213, ptr %a.data.gep215, align 8
  %a.cap.gep216 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create211, i32 0, i32 2
  store i64 16, ptr %a.cap.gep216, align 8
  store ptr %a.create211, ptr %var.res, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.535.exit
  %a.load2 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len217 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap218 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len217, %a.cap218
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data219 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len220 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data219, i64 %a.cur.len220
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len220, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load221 = load i64, ptr %var.next_st, align 8
  store i64 %var.load221, ptr %"var.st'", align 8
  br label %loop.latch.526

a.create227:                                      ; preds = %loop.exit.526
  %arena.cur229 = call ptr @dva_arena_current()
  %a.create230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 24)
  %arena.cur231 = call ptr @dva_arena_current()
  %a.buf232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 128)
  %a.len.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 0
  store i64 0, ptr %a.len.gep233, align 8
  %a.data.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 1
  store ptr %a.buf232, ptr %a.data.gep234, align 8
  %a.cap.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 2
  store i64 16, ptr %a.cap.gep235, align 8
  store ptr %a.create230, ptr %var.res, align 8
  br label %a.after228

a.after228:                                       ; preds = %a.create227, %loop.exit.526
  %a.load2236 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2236
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
  %1 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %abort.dead10, %a.cap25
  %arena.cur = call ptr @dva_arena_current()
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  %2 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  %addtmp = add i64 %var.load3, 16
  %arena.cur4 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

b.buf.len5:                                       ; preds = %abort.dead6, %str_ok
  %arena.cur7 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  store i64 0, ptr %"var.i'", align 8
  %var.load8 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %var.load8, 1
  br i1 %cmptmp, label %and.537.then, label %and.537.else

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead6:                                      ; No predecessors!
  br label %b.buf.len5

and.537.then:                                     ; preds = %b.buf.len5
  %var.load9 = load ptr, ptr %var.body, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

and.537.else:                                     ; preds = %b.buf.len5
  br label %and.537.exit

and.537.exit:                                     ; preds = %and.537.else, %idx_ok
  %and.537.phi = phi i1 [ %cmptmp14, %idx_ok ], [ %cmptmp, %and.537.else ]
  br i1 %and.537.phi, label %and.538.then, label %and.538.else

idx_big_check:                                    ; preds = %and.537.then
  %idx.big = icmp sge i64 0, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead13, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp14 = icmp eq i64 %s.byte.val, 124
  br label %and.537.exit

idx_oob:                                          ; preds = %idx_big_check, %and.537.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %idx_ok

and.538.then:                                     ; preds = %and.537.exit
  %var.load15 = load ptr, ptr %var.body, align 8
  %s.read.len16 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len17 = load i64, ptr %s.read.len16, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %s.read.data19 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data19, align 8
  br i1 false, label %idx_oob23, label %idx_big_check21

and.538.else:                                     ; preds = %and.537.exit
  br label %and.538.exit

and.538.exit:                                     ; preds = %and.538.else, %idx_ok22
  %and.538.phi = phi i1 [ %cmptmp29, %idx_ok22 ], [ %and.537.phi, %and.538.else ]
  br i1 %and.538.phi, label %and.539.then, label %and.539.else

idx_big_check21:                                  ; preds = %and.538.then
  %idx.big24 = icmp sge i64 1, %s.read.len18
  br i1 %idx.big24, label %idx_oob23, label %idx_ok22

idx_ok22:                                         ; preds = %abort.dead25, %idx_big_check21
  %s.byte.gep26 = getelementptr i8, ptr %s.read.data20, i64 1
  %s.byte27 = load i8, ptr %s.byte.gep26, align 1
  %s.byte.val28 = zext i8 %s.byte27 to i64
  %cmptmp29 = icmp ne i64 %s.byte.val28, 124
  br label %and.538.exit

idx_oob23:                                        ; preds = %idx_big_check21, %and.538.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %idx_ok22

and.539.then:                                     ; preds = %and.538.exit
  %var.load30 = load ptr, ptr %var.body, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load30, ptr @str.0.struct)
  %nottmp = xor i1 %call.res, true
  br label %and.539.exit

and.539.else:                                     ; preds = %and.538.exit
  br label %and.539.exit

and.539.exit:                                     ; preds = %and.539.else, %and.539.then
  %and.539.phi = phi i1 [ %nottmp, %and.539.then ], [ %and.538.phi, %and.539.else ]
  br i1 %and.539.phi, label %and.541.then, label %and.541.else

and.541.then:                                     ; preds = %and.539.exit
  %var.load31 = load ptr, ptr %var.body, align 8
  %call.res32 = call i1 @"formatter::starts_with_str"(ptr %var.load31, ptr @str.1.struct)
  %nottmp33 = xor i1 %call.res32, true
  br label %and.541.exit

and.541.else:                                     ; preds = %and.539.exit
  br label %and.541.exit

and.541.exit:                                     ; preds = %and.541.else, %and.541.then
  %and.541.phi = phi i1 [ %nottmp33, %and.541.then ], [ %and.539.phi, %and.541.else ]
  br i1 %and.541.phi, label %and.542.then, label %and.542.else

and.542.then:                                     ; preds = %and.541.exit
  %var.load34 = load ptr, ptr %var.body, align 8
  %call.res35 = call i1 @"formatter::starts_with_str"(ptr %var.load34, ptr @str.2.struct)
  %nottmp36 = xor i1 %call.res35, true
  br label %and.542.exit

and.542.else:                                     ; preds = %and.541.exit
  br label %and.542.exit

and.542.exit:                                     ; preds = %and.542.else, %and.542.then
  %and.542.phi = phi i1 [ %nottmp36, %and.542.then ], [ %and.541.phi, %and.542.else ]
  br i1 %and.542.phi, label %and.543.then, label %and.543.else

and.543.then:                                     ; preds = %and.542.exit
  %var.load37 = load ptr, ptr %var.body, align 8
  %call.res38 = call i1 @"formatter::starts_with_str"(ptr %var.load37, ptr @str.3.struct)
  %nottmp39 = xor i1 %call.res38, true
  br label %and.543.exit

and.543.else:                                     ; preds = %and.542.exit
  br label %and.543.exit

and.543.exit:                                     ; preds = %and.543.else, %and.543.then
  %and.543.phi = phi i1 [ %nottmp39, %and.543.then ], [ %and.542.phi, %and.543.else ]
  br i1 %and.543.phi, label %and.544.then, label %and.544.else

and.544.then:                                     ; preds = %and.543.exit
  %var.load40 = load ptr, ptr %var.body, align 8
  %call.res41 = call i1 @"formatter::starts_with_str"(ptr %var.load40, ptr @str.4.struct)
  %nottmp42 = xor i1 %call.res41, true
  br label %and.544.exit

and.544.else:                                     ; preds = %and.543.exit
  br label %and.544.exit

and.544.exit:                                     ; preds = %and.544.else, %and.544.then
  %and.544.phi = phi i1 [ %nottmp42, %and.544.then ], [ %and.543.phi, %and.544.else ]
  br i1 %and.544.phi, label %and.545.then, label %and.545.else

and.545.then:                                     ; preds = %and.544.exit
  %var.load43 = load ptr, ptr %var.body, align 8
  %s.read.len44 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %s.read.len45 = load i64, ptr %s.read.len44, align 8
  %s.read.len46 = and i64 %s.read.len45, 281474976710655
  %s.read.data47 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %s.read.data48 = load ptr, ptr %s.read.data47, align 8
  br i1 false, label %idx_oob51, label %idx_big_check49

and.545.else:                                     ; preds = %and.544.exit
  br label %and.545.exit

and.545.exit:                                     ; preds = %and.545.else, %choice.exit
  %and.545.phi = phi i1 [ %nottmp58, %choice.exit ], [ %and.544.phi, %and.545.else ]
  store i1 %and.545.phi, ptr %var.has_lead_pipe, align 1
  %var.load59 = load i64, ptr %var.n, align 8
  %cmptmp60 = icmp sgt i64 %var.load59, 2
  br i1 %cmptmp60, label %and.546.then, label %and.546.else

idx_big_check49:                                  ; preds = %and.545.then
  %idx.big52 = icmp sge i64 1, %s.read.len46
  br i1 %idx.big52, label %idx_oob51, label %idx_ok50

idx_ok50:                                         ; preds = %abort.dead53, %idx_big_check49
  %s.byte.gep54 = getelementptr i8, ptr %s.read.data48, i64 1
  %s.byte55 = load i8, ptr %s.byte.gep54, align 1
  %s.byte.val56 = zext i8 %s.byte55 to i64
  %val.match = icmp eq i64 %s.byte.val56, 32
  %val.match57 = icmp eq i64 %s.byte.val56, 9
  %case.or = or i1 %val.match, %val.match57
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob51:                                        ; preds = %idx_big_check49, %and.545.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %idx_ok50

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp58 = xor i1 %choice.res, true
  br label %and.545.exit

choice.case:                                      ; preds = %idx_ok50
  br label %choice.exit

choice.next:                                      ; preds = %idx_ok50
  br label %choice.exit

and.546.then:                                     ; preds = %and.545.exit
  %var.load61 = load ptr, ptr %var.body, align 8
  %call.res62 = call i1 @"formatter::starts_with_str"(ptr %var.load61, ptr @str.5.struct)
  br label %and.546.exit

and.546.else:                                     ; preds = %and.545.exit
  br label %and.546.exit

and.546.exit:                                     ; preds = %and.546.else, %and.546.then
  %and.546.phi = phi i1 [ %call.res62, %and.546.then ], [ %cmptmp60, %and.546.else ]
  br i1 %and.546.phi, label %and.547.then, label %and.547.else

and.547.then:                                     ; preds = %and.546.exit
  %var.load63 = load ptr, ptr %var.body, align 8
  %s.read.len64 = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 0
  %s.read.len65 = load i64, ptr %s.read.len64, align 8
  %s.read.len66 = and i64 %s.read.len65, 281474976710655
  %s.read.data67 = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 1
  %s.read.data68 = load ptr, ptr %s.read.data67, align 8
  br i1 false, label %idx_oob71, label %idx_big_check69

and.547.else:                                     ; preds = %and.546.exit
  br label %and.547.exit

and.547.exit:                                     ; preds = %and.547.else, %choice.exit77
  %and.547.phi = phi i1 [ %nottmp84, %choice.exit77 ], [ %and.546.phi, %and.547.else ]
  store i1 %and.547.phi, ptr %var.has_lead_neg_pipe, align 1
  %var.load85 = load i1, ptr %var.has_lead_pipe, align 1
  br i1 %var.load85, label %choice.then, label %choice.else

idx_big_check69:                                  ; preds = %and.547.then
  %idx.big72 = icmp sge i64 2, %s.read.len66
  br i1 %idx.big72, label %idx_oob71, label %idx_ok70

idx_ok70:                                         ; preds = %abort.dead73, %idx_big_check69
  %s.byte.gep74 = getelementptr i8, ptr %s.read.data68, i64 2
  %s.byte75 = load i8, ptr %s.byte.gep74, align 1
  %s.byte.val76 = zext i8 %s.byte75 to i64
  %val.match80 = icmp eq i64 %s.byte.val76, 32
  %val.match81 = icmp eq i64 %s.byte.val76, 9
  %case.or82 = or i1 %val.match80, %val.match81
  br i1 %case.or82, label %choice.case78, label %choice.next79

idx_oob71:                                        ; preds = %idx_big_check69, %and.547.then
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %idx_ok70

choice.exit77:                                    ; preds = %choice.next79, %choice.case78
  %choice.res83 = phi i1 [ true, %choice.case78 ], [ false, %choice.next79 ]
  %nottmp84 = xor i1 %choice.res83, true
  br label %and.547.exit

choice.case78:                                    ; preds = %idx_ok70
  br label %choice.exit77

choice.next79:                                    ; preds = %idx_ok70
  br label %choice.exit77

choice.then:                                      ; preds = %and.547.exit
  %b.load = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.6.struct, align 8
  %app.str.len87 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len88 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len88, i64 %app.str.len87)
  %sum89 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf90 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf90, label %str_overflow_abort92, label %b.app.new.len91

choice.else:                                      ; preds = %and.547.exit
  %var.load105 = load i1, ptr %var.has_lead_neg_pipe, align 1
  br i1 %var.load105, label %choice.then106, label %choice.exit107

choice.exit86:                                    ; preds = %choice.exit107, %b.grow_done
  %var.load151 = load i64, ptr %var.n, align 8
  %cmptmp152 = icmp sgt i64 %var.load151, 0
  br i1 %cmptmp152, label %and.548.then, label %and.548.else

b.app.new.len91:                                  ; preds = %abort.dead93, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap94 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap94, %sum89
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort92:                             ; preds = %choice.then
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead93:                                     ; No predecessors!
  br label %b.app.new.len91

b.grow2:                                          ; preds = %b.app.new.len91
  %b.cap2 = mul i64 %b.cap94, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum89
  %b.new.cap = select i1 %b.cap.need, i64 %sum89, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len295 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data296 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum97 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf98 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf98, label %str_overflow_abort100, label %b.new.buf.len299

b.nogrow2:                                        ; preds = %b.app.new.len91
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len299
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data103 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data103, i64 %b.app.cur.len88
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len87, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data103, i64 %sum89
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum89, ptr %b.len.gep104, align 8
  store i64 1, ptr %"var.i'", align 8
  br label %choice.exit86

b.new.buf.len299:                                 ; preds = %abort.dead101, %b.grow2
  %arena.cur102 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 %sum97)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data296, i64 %b.cur.len295, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len295
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort100:                            ; preds = %b.grow2
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %b.new.buf.len299

choice.then106:                                   ; preds = %choice.else
  %b.load108 = load ptr, ptr %var.b, align 8
  %app.str.len109 = load i64, ptr @str.7.struct, align 8
  %app.str.len110 = and i64 %app.str.len109, 281474976710655
  %app.str.data111 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %b.app.cur.len112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 0
  %b.app.cur.len113 = load i64, ptr %b.app.cur.len112, align 8
  %b.app.new.len114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len113, i64 %app.str.len110)
  %sum115 = extractvalue { i64, i1 } %b.app.new.len114, 0
  %ovf116 = extractvalue { i64, i1 } %b.app.new.len114, 1
  br i1 %ovf116, label %str_overflow_abort118, label %b.app.new.len117

choice.exit107:                                   ; preds = %b.grow_done125, %choice.else
  br label %choice.exit86

b.app.new.len117:                                 ; preds = %abort.dead119, %choice.then106
  %b.cap120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 2
  %b.cap121 = load i64, ptr %b.cap120, align 8
  %b.need.grow122 = icmp slt i64 %b.cap121, %sum115
  br i1 %b.need.grow122, label %b.grow2123, label %b.nogrow2124

str_overflow_abort118:                            ; preds = %choice.then106
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %b.app.new.len117

b.grow2123:                                       ; preds = %b.app.new.len117
  %b.cap2126 = mul i64 %b.cap121, 2
  %b.cap.small127 = icmp slt i64 %b.cap2126, 16
  %b.cap.grow128 = select i1 %b.cap.small127, i64 16, i64 %b.cap2126
  %b.cap.need129 = icmp slt i64 %b.cap.grow128, %sum115
  %b.new.cap130 = select i1 %b.cap.need129, i64 %sum115, i64 %b.cap.grow128
  %b.cur.len2131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 0
  %b.cur.len2132 = load i64, ptr %b.cur.len2131, align 8
  %b.cur.data2133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 1
  %b.cur.data2134 = load ptr, ptr %b.cur.data2133, align 8
  %b.new.buf.len2135 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap130, i64 1)
  %sum136 = extractvalue { i64, i1 } %b.new.buf.len2135, 0
  %ovf137 = extractvalue { i64, i1 } %b.new.buf.len2135, 1
  br i1 %ovf137, label %str_overflow_abort139, label %b.new.buf.len2138

b.nogrow2124:                                     ; preds = %b.app.new.len117
  br label %b.grow_done125

b.grow_done125:                                   ; preds = %b.nogrow2124, %b.new.buf.len2138
  %b.app.data146 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 1
  %b.app.data147 = load ptr, ptr %b.app.data146, align 8
  %b.app.dst148 = getelementptr i8, ptr %b.app.data147, i64 %b.app.cur.len113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst148, ptr align 1 %app.str.data111, i64 %app.str.len110, i1 false)
  %b.app.nul149 = getelementptr i8, ptr %b.app.data147, i64 %sum115
  store i8 0, ptr %b.app.nul149, align 1
  %b.len.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 0
  store i64 %sum115, ptr %b.len.gep150, align 8
  store i64 2, ptr %"var.i'", align 8
  br label %choice.exit107

b.new.buf.len2138:                                ; preds = %abort.dead140, %b.grow2123
  %arena.cur141 = call ptr @dva_arena_current()
  %b.new.buf2142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 %sum136)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2142, ptr align 1 %b.cur.data2134, i64 %b.cur.len2132, i1 false)
  %b.grow2.nul143 = getelementptr i8, ptr %b.new.buf2142, i64 %b.cur.len2132
  store i8 0, ptr %b.grow2.nul143, align 1
  %b.new.data2.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 1
  store ptr %b.new.buf2142, ptr %b.new.data2.gep144, align 8
  %b.new.cap2.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 2
  store i64 %b.new.cap130, ptr %b.new.cap2.gep145, align 8
  br label %b.grow_done125

str_overflow_abort139:                            ; preds = %b.grow2123
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead140:                                    ; No predecessors!
  br label %b.new.buf.len2138

and.548.then:                                     ; preds = %choice.exit86
  %var.load153 = load ptr, ptr %var.body, align 8
  %s.read.len154 = getelementptr inbounds { i64, ptr }, ptr %var.load153, i32 0, i32 0
  %s.read.len155 = load i64, ptr %s.read.len154, align 8
  %s.read.len156 = and i64 %s.read.len155, 281474976710655
  %s.read.data157 = getelementptr inbounds { i64, ptr }, ptr %var.load153, i32 0, i32 1
  %s.read.data158 = load ptr, ptr %s.read.data157, align 8
  br i1 false, label %idx_oob161, label %idx_big_check159

and.548.else:                                     ; preds = %choice.exit86
  br label %and.548.exit

and.548.exit:                                     ; preds = %and.548.else, %or.549.exit
  %and.548.phi = phi i1 [ %or.549.phi, %or.549.exit ], [ %cmptmp152, %and.548.else ]
  store i1 %and.548.phi, ptr %var.has_lead_guard, align 1
  store i64 0, ptr %"var.bracket_depth'", align 8
  store i1 false, ptr %"var.guard_closed'", align 1
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  store i1 false, ptr %"var.in_blk_comm'", align 1
  store i64 0, ptr %loop.idx.550, align 8
  br label %loop.header.550

idx_big_check159:                                 ; preds = %and.548.then
  %idx.big162 = icmp sge i64 0, %s.read.len156
  br i1 %idx.big162, label %idx_oob161, label %idx_ok160

idx_ok160:                                        ; preds = %abort.dead163, %idx_big_check159
  %s.byte.gep164 = getelementptr i8, ptr %s.read.data158, i64 0
  %s.byte165 = load i8, ptr %s.byte.gep164, align 1
  %s.byte.val166 = zext i8 %s.byte165 to i64
  %cmptmp167 = icmp eq i64 %s.byte.val166, 91
  br i1 %cmptmp167, label %or.549.then, label %or.549.else

idx_oob161:                                       ; preds = %idx_big_check159, %and.548.then
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead163:                                    ; No predecessors!
  br label %idx_ok160

or.549.then:                                      ; preds = %idx_ok160
  br label %or.549.exit

or.549.else:                                      ; preds = %idx_ok160
  %var.load168 = load ptr, ptr %var.body, align 8
  %call.res169 = call i1 @"formatter::starts_with_str"(ptr %var.load168, ptr @str.8.struct)
  br label %or.549.exit

or.549.exit:                                      ; preds = %or.549.else, %or.549.then
  %or.549.phi = phi i1 [ %cmptmp167, %or.549.then ], [ %call.res169, %or.549.else ]
  br label %and.548.exit

loop.header.550:                                  ; preds = %loop.latch.550, %and.548.exit
  %counter.load = load i64, ptr %loop.idx.550, align 8
  br label %loop.body.550

loop.body.550:                                    ; preds = %loop.header.550
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.550, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load170 = load i64, ptr %"var.i'", align 8
  %var.load171 = load i64, ptr %var.n, align 8
  %cmptmp172 = icmp sge i64 %var.load170, %var.load171
  br i1 %cmptmp172, label %choice.then173, label %choice.exit174

loop.exit.nat.550:                                ; No predecessors!
  br label %loop.exit.550

loop.latch.550:                                   ; preds = %choice.exit243
  %step.val = load i64, ptr %loop.step.550, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.550, align 8
  br label %loop.header.550

loop.exit.550:                                    ; preds = %choice.then173, %loop.exit.nat.550
  %var.load1396 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1396, i32 0, i32 0
  %b.freeze.len1397 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1396, i32 0, i32 1
  %b.freeze.data1398 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then173:                                   ; preds = %loop.body.550
  br label %loop.exit.550

choice.exit174:                                   ; preds = %loop.body.550
  %var.load175 = load ptr, ptr %var.body, align 8
  %s.read.len176 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 0
  %s.read.len177 = load i64, ptr %s.read.len176, align 8
  %s.read.len178 = and i64 %s.read.len177, 281474976710655
  %s.read.data179 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 1
  %s.read.data180 = load ptr, ptr %s.read.data179, align 8
  %var.load181 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load181, 0
  br i1 %idx.neg, label %idx_oob184, label %idx_big_check182

idx_big_check182:                                 ; preds = %choice.exit174
  %idx.big185 = icmp sge i64 %var.load181, %s.read.len178
  br i1 %idx.big185, label %idx_oob184, label %idx_ok183

idx_ok183:                                        ; preds = %abort.dead186, %idx_big_check182
  %s.byte.gep187 = getelementptr i8, ptr %s.read.data180, i64 %var.load181
  %s.byte188 = load i8, ptr %s.byte.gep187, align 1
  %s.byte.val189 = zext i8 %s.byte188 to i64
  store i64 %s.byte.val189, ptr %var.c, align 8
  %var.load190 = load i64, ptr %"var.i'", align 8
  %addtmp191 = add i64 %var.load190, 1
  %var.load192 = load i64, ptr %var.n, align 8
  %cmptmp193 = icmp slt i64 %addtmp191, %var.load192
  br i1 %cmptmp193, label %choice.then194, label %choice.else195

idx_oob184:                                       ; preds = %idx_big_check182, %choice.exit174
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead186:                                    ; No predecessors!
  br label %idx_ok183

choice.then194:                                   ; preds = %idx_ok183
  %var.load197 = load ptr, ptr %var.body, align 8
  %s.read.len198 = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 0
  %s.read.len199 = load i64, ptr %s.read.len198, align 8
  %s.read.len200 = and i64 %s.read.len199, 281474976710655
  %s.read.data201 = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 1
  %s.read.data202 = load ptr, ptr %s.read.data201, align 8
  %var.load203 = load i64, ptr %"var.i'", align 8
  %addtmp204 = add i64 %var.load203, 1
  %idx.neg205 = icmp slt i64 %addtmp204, 0
  br i1 %idx.neg205, label %idx_oob208, label %idx_big_check206

choice.else195:                                   ; preds = %idx_ok183
  br label %choice.exit196

choice.exit196:                                   ; preds = %choice.else195, %idx_ok207
  %choice.res214 = phi i64 [ %s.byte.val213, %idx_ok207 ], [ 0, %choice.else195 ]
  store i64 %choice.res214, ptr %var.c1, align 8
  %var.load215 = load i64, ptr %"var.i'", align 8
  %addtmp216 = add i64 %var.load215, 2
  %var.load217 = load i64, ptr %var.n, align 8
  %cmptmp218 = icmp slt i64 %addtmp216, %var.load217
  br i1 %cmptmp218, label %choice.then219, label %choice.else220

idx_big_check206:                                 ; preds = %choice.then194
  %idx.big209 = icmp sge i64 %addtmp204, %s.read.len200
  br i1 %idx.big209, label %idx_oob208, label %idx_ok207

idx_ok207:                                        ; preds = %abort.dead210, %idx_big_check206
  %s.byte.gep211 = getelementptr i8, ptr %s.read.data202, i64 %addtmp204
  %s.byte212 = load i8, ptr %s.byte.gep211, align 1
  %s.byte.val213 = zext i8 %s.byte212 to i64
  br label %choice.exit196

idx_oob208:                                       ; preds = %idx_big_check206, %choice.then194
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead210:                                    ; No predecessors!
  br label %idx_ok207

choice.then219:                                   ; preds = %choice.exit196
  %var.load222 = load ptr, ptr %var.body, align 8
  %s.read.len223 = getelementptr inbounds { i64, ptr }, ptr %var.load222, i32 0, i32 0
  %s.read.len224 = load i64, ptr %s.read.len223, align 8
  %s.read.len225 = and i64 %s.read.len224, 281474976710655
  %s.read.data226 = getelementptr inbounds { i64, ptr }, ptr %var.load222, i32 0, i32 1
  %s.read.data227 = load ptr, ptr %s.read.data226, align 8
  %var.load228 = load i64, ptr %"var.i'", align 8
  %addtmp229 = add i64 %var.load228, 2
  %idx.neg230 = icmp slt i64 %addtmp229, 0
  br i1 %idx.neg230, label %idx_oob233, label %idx_big_check231

choice.else220:                                   ; preds = %choice.exit196
  br label %choice.exit221

choice.exit221:                                   ; preds = %choice.else220, %idx_ok232
  %choice.res239 = phi i64 [ %s.byte.val238, %idx_ok232 ], [ 0, %choice.else220 ]
  store i64 %choice.res239, ptr %var.c2, align 8
  %var.load240 = load i1, ptr %"var.in_blk_comm'", align 1
  br i1 %var.load240, label %choice.then241, label %choice.else242

idx_big_check231:                                 ; preds = %choice.then219
  %idx.big234 = icmp sge i64 %addtmp229, %s.read.len225
  br i1 %idx.big234, label %idx_oob233, label %idx_ok232

idx_ok232:                                        ; preds = %abort.dead235, %idx_big_check231
  %s.byte.gep236 = getelementptr i8, ptr %s.read.data227, i64 %addtmp229
  %s.byte237 = load i8, ptr %s.byte.gep236, align 1
  %s.byte.val238 = zext i8 %s.byte237 to i64
  br label %choice.exit221

idx_oob233:                                       ; preds = %idx_big_check231, %choice.then219
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead235:                                    ; No predecessors!
  br label %idx_ok232

choice.then241:                                   ; preds = %choice.exit221
  %b.load244 = load ptr, ptr %var.b, align 8
  %var.load245 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load245, 0
  %b.b.le255 = icmp sle i64 %var.load245, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else242:                                   ; preds = %choice.exit221
  %var.load315 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load315, label %choice.then316, label %choice.else317

choice.exit243:                                   ; preds = %choice.exit318, %choice.exit269
  br label %loop.latch.550

b.byte_ok:                                        ; preds = %abort.dead246, %choice.then241
  %b.byte.i8 = trunc i64 %var.load245 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 0
  %b.len247 = load i64, ptr %b.len, align 8
  %b.cap248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 2
  %b.cap249 = load i64, ptr %b.cap248, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 1
  %b.data250 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len247, %b.cap249
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then241
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead246:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2251 = mul i64 %b.cap249, 2
  %b.cap.small252 = icmp slt i64 %b.cap2251, 16
  %b.new.cap253 = select i1 %b.cap.small252, i64 16, i64 %b.cap2251
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap253, i64 1)
  %sum254 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf255 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf255, label %str_overflow_abort257, label %b.new.buf.len256

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len256
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 1
  %b.cur.data260 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 0
  %b.cur.len261 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data260, i64 %b.cur.len261
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len261, 1
  %b.nul = getelementptr i8, ptr %b.cur.data260, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep262, align 8
  %var.load263 = load i64, ptr %var.c, align 8
  %cmptmp264 = icmp eq i64 %var.load263, 42
  br i1 %cmptmp264, label %and.551.then, label %and.551.else

b.new.buf.len256:                                 ; preds = %abort.dead258, %b.grow
  %arena.cur259 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 %sum254)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data250, i64 %b.len247, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len247
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 2
  store i64 %b.new.cap253, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort257:                            ; preds = %b.grow
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead258:                                    ; No predecessors!
  br label %b.new.buf.len256

and.551.then:                                     ; preds = %b.push_done
  %var.load265 = load i64, ptr %var.c1, align 8
  %cmptmp266 = icmp eq i64 %var.load265, 47
  br label %and.551.exit

and.551.else:                                     ; preds = %b.push_done
  br label %and.551.exit

and.551.exit:                                     ; preds = %and.551.else, %and.551.then
  %and.551.phi = phi i1 [ %cmptmp266, %and.551.then ], [ %cmptmp264, %and.551.else ]
  br i1 %and.551.phi, label %choice.then267, label %choice.else268

choice.then267:                                   ; preds = %and.551.exit
  %b.load270 = load ptr, ptr %var.b, align 8
  %var.load271 = load i64, ptr %var.c1, align 8
  %b.b.ge0272 = icmp sge i64 %var.load271, 0
  %b.b.le255273 = icmp sle i64 %var.load271, 255
  %b.byte.range274 = and i1 %b.b.ge0272, %b.b.le255273
  br i1 %b.byte.range274, label %b.byte_ok275, label %b.byte_err276

choice.else268:                                   ; preds = %and.551.exit
  %var.load313 = load i64, ptr %"var.i'", align 8
  %addtmp314 = add i64 %var.load313, 1
  store i64 %addtmp314, ptr %"var.i'", align 8
  br label %choice.exit269

choice.exit269:                                   ; preds = %choice.else268, %b.push_done288
  br label %choice.exit243

b.byte_ok275:                                     ; preds = %abort.dead277, %choice.then267
  %b.byte.i8278 = trunc i64 %var.load271 to i8
  %b.len279 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load270, i32 0, i32 0
  %b.len280 = load i64, ptr %b.len279, align 8
  %b.cap281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load270, i32 0, i32 2
  %b.cap282 = load i64, ptr %b.cap281, align 8
  %b.data283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load270, i32 0, i32 1
  %b.data284 = load ptr, ptr %b.data283, align 8
  %b.needs.grow285 = icmp eq i64 %b.len280, %b.cap282
  br i1 %b.needs.grow285, label %b.grow286, label %b.nogrow287

b.byte_err276:                                    ; preds = %choice.then267
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead277:                                    ; No predecessors!
  br label %b.byte_ok275

b.grow286:                                        ; preds = %b.byte_ok275
  %b.cap2289 = mul i64 %b.cap282, 2
  %b.cap.small290 = icmp slt i64 %b.cap2289, 16
  %b.new.cap291 = select i1 %b.cap.small290, i64 16, i64 %b.cap2289
  %b.new.buf.len292 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap291, i64 1)
  %sum293 = extractvalue { i64, i1 } %b.new.buf.len292, 0
  %ovf294 = extractvalue { i64, i1 } %b.new.buf.len292, 1
  br i1 %ovf294, label %str_overflow_abort296, label %b.new.buf.len295

b.nogrow287:                                      ; preds = %b.byte_ok275
  br label %b.push_done288

b.push_done288:                                   ; preds = %b.nogrow287, %b.new.buf.len295
  %b.cur.data303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load270, i32 0, i32 1
  %b.cur.data304 = load ptr, ptr %b.cur.data303, align 8
  %b.cur.len305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load270, i32 0, i32 0
  %b.cur.len306 = load i64, ptr %b.cur.len305, align 8
  %b.byte.gep307 = getelementptr i8, ptr %b.cur.data304, i64 %b.cur.len306
  store i8 %b.byte.i8278, ptr %b.byte.gep307, align 1
  %b.next.len308 = add i64 %b.cur.len306, 1
  %b.nul309 = getelementptr i8, ptr %b.cur.data304, i64 %b.next.len308
  store i8 0, ptr %b.nul309, align 1
  %b.len.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load270, i32 0, i32 0
  store i64 %b.next.len308, ptr %b.len.gep310, align 8
  store i1 false, ptr %"var.in_blk_comm'", align 1
  %var.load311 = load i64, ptr %"var.i'", align 8
  %addtmp312 = add i64 %var.load311, 2
  store i64 %addtmp312, ptr %"var.i'", align 8
  br label %choice.exit269

b.new.buf.len295:                                 ; preds = %abort.dead297, %b.grow286
  %arena.cur298 = call ptr @dva_arena_current()
  %b.new.buf299 = call ptr @dva_arena_alloc(ptr %arena.cur298, i64 %sum293)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf299, ptr align 1 %b.data284, i64 %b.len280, i1 false)
  %b.grow.nul300 = getelementptr i8, ptr %b.new.buf299, i64 %b.len280
  store i8 0, ptr %b.grow.nul300, align 1
  %b.new.data.gep301 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load270, i32 0, i32 1
  store ptr %b.new.buf299, ptr %b.new.data.gep301, align 8
  %b.new.cap.gep302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load270, i32 0, i32 2
  store i64 %b.new.cap291, ptr %b.new.cap.gep302, align 8
  br label %b.push_done288

str_overflow_abort296:                            ; preds = %b.grow286
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead297:                                    ; No predecessors!
  br label %b.new.buf.len295

choice.then316:                                   ; preds = %choice.else242
  %b.load319 = load ptr, ptr %var.b, align 8
  %var.load320 = load i64, ptr %var.c, align 8
  %b.b.ge0321 = icmp sge i64 %var.load320, 0
  %b.b.le255322 = icmp sle i64 %var.load320, 255
  %b.byte.range323 = and i1 %b.b.ge0321, %b.b.le255322
  br i1 %b.byte.range323, label %b.byte_ok324, label %b.byte_err325

choice.else317:                                   ; preds = %choice.else242
  %var.load517 = load i64, ptr %var.c, align 8
  %cmptmp518 = icmp eq i64 %var.load517, 47
  br i1 %cmptmp518, label %and.555.then, label %and.555.else

choice.exit318:                                   ; preds = %choice.exit523, %choice.exit368
  br label %choice.exit243

b.byte_ok324:                                     ; preds = %abort.dead326, %choice.then316
  %b.byte.i8327 = trunc i64 %var.load320 to i8
  %b.len328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load319, i32 0, i32 0
  %b.len329 = load i64, ptr %b.len328, align 8
  %b.cap330 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load319, i32 0, i32 2
  %b.cap331 = load i64, ptr %b.cap330, align 8
  %b.data332 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load319, i32 0, i32 1
  %b.data333 = load ptr, ptr %b.data332, align 8
  %b.needs.grow334 = icmp eq i64 %b.len329, %b.cap331
  br i1 %b.needs.grow334, label %b.grow335, label %b.nogrow336

b.byte_err325:                                    ; preds = %choice.then316
  %19 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead326:                                    ; No predecessors!
  br label %b.byte_ok324

b.grow335:                                        ; preds = %b.byte_ok324
  %b.cap2338 = mul i64 %b.cap331, 2
  %b.cap.small339 = icmp slt i64 %b.cap2338, 16
  %b.new.cap340 = select i1 %b.cap.small339, i64 16, i64 %b.cap2338
  %b.new.buf.len341 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap340, i64 1)
  %sum342 = extractvalue { i64, i1 } %b.new.buf.len341, 0
  %ovf343 = extractvalue { i64, i1 } %b.new.buf.len341, 1
  br i1 %ovf343, label %str_overflow_abort345, label %b.new.buf.len344

b.nogrow336:                                      ; preds = %b.byte_ok324
  br label %b.push_done337

b.push_done337:                                   ; preds = %b.nogrow336, %b.new.buf.len344
  %b.cur.data352 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load319, i32 0, i32 1
  %b.cur.data353 = load ptr, ptr %b.cur.data352, align 8
  %b.cur.len354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load319, i32 0, i32 0
  %b.cur.len355 = load i64, ptr %b.cur.len354, align 8
  %b.byte.gep356 = getelementptr i8, ptr %b.cur.data353, i64 %b.cur.len355
  store i8 %b.byte.i8327, ptr %b.byte.gep356, align 1
  %b.next.len357 = add i64 %b.cur.len355, 1
  %b.nul358 = getelementptr i8, ptr %b.cur.data353, i64 %b.next.len357
  store i8 0, ptr %b.nul358, align 1
  %b.len.gep359 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load319, i32 0, i32 0
  store i64 %b.next.len357, ptr %b.len.gep359, align 8
  %var.load360 = load i64, ptr %var.c, align 8
  %cmptmp361 = icmp eq i64 %var.load360, 92
  br i1 %cmptmp361, label %and.552.then, label %and.552.else

b.new.buf.len344:                                 ; preds = %abort.dead346, %b.grow335
  %arena.cur347 = call ptr @dva_arena_current()
  %b.new.buf348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 %sum342)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf348, ptr align 1 %b.data333, i64 %b.len329, i1 false)
  %b.grow.nul349 = getelementptr i8, ptr %b.new.buf348, i64 %b.len329
  store i8 0, ptr %b.grow.nul349, align 1
  %b.new.data.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load319, i32 0, i32 1
  store ptr %b.new.buf348, ptr %b.new.data.gep350, align 8
  %b.new.cap.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load319, i32 0, i32 2
  store i64 %b.new.cap340, ptr %b.new.cap.gep351, align 8
  br label %b.push_done337

str_overflow_abort345:                            ; preds = %b.grow335
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead346:                                    ; No predecessors!
  br label %b.new.buf.len344

and.552.then:                                     ; preds = %b.push_done337
  %var.load362 = load i64, ptr %"var.i'", align 8
  %addtmp363 = add i64 %var.load362, 1
  %var.load364 = load i64, ptr %var.n, align 8
  %cmptmp365 = icmp slt i64 %addtmp363, %var.load364
  br label %and.552.exit

and.552.else:                                     ; preds = %b.push_done337
  br label %and.552.exit

and.552.exit:                                     ; preds = %and.552.else, %and.552.then
  %and.552.phi = phi i1 [ %cmptmp365, %and.552.then ], [ %cmptmp361, %and.552.else ]
  br i1 %and.552.phi, label %choice.then366, label %choice.else367

choice.then366:                                   ; preds = %and.552.exit
  %b.load369 = load ptr, ptr %var.b, align 8
  %var.load370 = load i64, ptr %var.c1, align 8
  %b.b.ge0371 = icmp sge i64 %var.load370, 0
  %b.b.le255372 = icmp sle i64 %var.load370, 255
  %b.byte.range373 = and i1 %b.b.ge0371, %b.b.le255372
  br i1 %b.byte.range373, label %b.byte_ok374, label %b.byte_err375

choice.else367:                                   ; preds = %and.552.exit
  %var.load412 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load412, label %choice.then413, label %choice.else414

choice.exit368:                                   ; preds = %choice.exit415, %b.push_done387
  br label %choice.exit318

b.byte_ok374:                                     ; preds = %abort.dead376, %choice.then366
  %b.byte.i8377 = trunc i64 %var.load370 to i8
  %b.len378 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load369, i32 0, i32 0
  %b.len379 = load i64, ptr %b.len378, align 8
  %b.cap380 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load369, i32 0, i32 2
  %b.cap381 = load i64, ptr %b.cap380, align 8
  %b.data382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load369, i32 0, i32 1
  %b.data383 = load ptr, ptr %b.data382, align 8
  %b.needs.grow384 = icmp eq i64 %b.len379, %b.cap381
  br i1 %b.needs.grow384, label %b.grow385, label %b.nogrow386

b.byte_err375:                                    ; preds = %choice.then366
  %21 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead376:                                    ; No predecessors!
  br label %b.byte_ok374

b.grow385:                                        ; preds = %b.byte_ok374
  %b.cap2388 = mul i64 %b.cap381, 2
  %b.cap.small389 = icmp slt i64 %b.cap2388, 16
  %b.new.cap390 = select i1 %b.cap.small389, i64 16, i64 %b.cap2388
  %b.new.buf.len391 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap390, i64 1)
  %sum392 = extractvalue { i64, i1 } %b.new.buf.len391, 0
  %ovf393 = extractvalue { i64, i1 } %b.new.buf.len391, 1
  br i1 %ovf393, label %str_overflow_abort395, label %b.new.buf.len394

b.nogrow386:                                      ; preds = %b.byte_ok374
  br label %b.push_done387

b.push_done387:                                   ; preds = %b.nogrow386, %b.new.buf.len394
  %b.cur.data402 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load369, i32 0, i32 1
  %b.cur.data403 = load ptr, ptr %b.cur.data402, align 8
  %b.cur.len404 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load369, i32 0, i32 0
  %b.cur.len405 = load i64, ptr %b.cur.len404, align 8
  %b.byte.gep406 = getelementptr i8, ptr %b.cur.data403, i64 %b.cur.len405
  store i8 %b.byte.i8377, ptr %b.byte.gep406, align 1
  %b.next.len407 = add i64 %b.cur.len405, 1
  %b.nul408 = getelementptr i8, ptr %b.cur.data403, i64 %b.next.len407
  store i8 0, ptr %b.nul408, align 1
  %b.len.gep409 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load369, i32 0, i32 0
  store i64 %b.next.len407, ptr %b.len.gep409, align 8
  %var.load410 = load i64, ptr %"var.i'", align 8
  %addtmp411 = add i64 %var.load410, 2
  store i64 %addtmp411, ptr %"var.i'", align 8
  br label %choice.exit368

b.new.buf.len394:                                 ; preds = %abort.dead396, %b.grow385
  %arena.cur397 = call ptr @dva_arena_current()
  %b.new.buf398 = call ptr @dva_arena_alloc(ptr %arena.cur397, i64 %sum392)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf398, ptr align 1 %b.data383, i64 %b.len379, i1 false)
  %b.grow.nul399 = getelementptr i8, ptr %b.new.buf398, i64 %b.len379
  store i8 0, ptr %b.grow.nul399, align 1
  %b.new.data.gep400 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load369, i32 0, i32 1
  store ptr %b.new.buf398, ptr %b.new.data.gep400, align 8
  %b.new.cap.gep401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load369, i32 0, i32 2
  store i64 %b.new.cap390, ptr %b.new.cap.gep401, align 8
  br label %b.push_done387

str_overflow_abort395:                            ; preds = %b.grow385
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead396:                                    ; No predecessors!
  br label %b.new.buf.len394

choice.then413:                                   ; preds = %choice.else367
  %var.load416 = load i64, ptr %var.c, align 8
  %cmptmp417 = icmp eq i64 %var.load416, 34
  br i1 %cmptmp417, label %and.553.then, label %and.553.else

choice.else414:                                   ; preds = %choice.else367
  %var.load511 = load i64, ptr %var.c, align 8
  %cmptmp512 = icmp eq i64 %var.load511, 34
  br i1 %cmptmp512, label %choice.then513, label %choice.exit514

choice.exit415:                                   ; preds = %choice.exit514, %choice.exit424
  br label %choice.exit368

and.553.then:                                     ; preds = %choice.then413
  %var.load418 = load i64, ptr %var.c1, align 8
  %cmptmp419 = icmp eq i64 %var.load418, 34
  br label %and.553.exit

and.553.else:                                     ; preds = %choice.then413
  br label %and.553.exit

and.553.exit:                                     ; preds = %and.553.else, %and.553.then
  %and.553.phi = phi i1 [ %cmptmp419, %and.553.then ], [ %cmptmp417, %and.553.else ]
  br i1 %and.553.phi, label %and.554.then, label %and.554.else

and.554.then:                                     ; preds = %and.553.exit
  %var.load420 = load i64, ptr %var.c2, align 8
  %cmptmp421 = icmp eq i64 %var.load420, 34
  br label %and.554.exit

and.554.else:                                     ; preds = %and.553.exit
  br label %and.554.exit

and.554.exit:                                     ; preds = %and.554.else, %and.554.then
  %and.554.phi = phi i1 [ %cmptmp421, %and.554.then ], [ %and.553.phi, %and.554.else ]
  br i1 %and.554.phi, label %choice.then422, label %choice.else423

choice.then422:                                   ; preds = %and.554.exit
  %b.load425 = load ptr, ptr %var.b, align 8
  %var.load426 = load i64, ptr %var.c1, align 8
  %b.b.ge0427 = icmp sge i64 %var.load426, 0
  %b.b.le255428 = icmp sle i64 %var.load426, 255
  %b.byte.range429 = and i1 %b.b.ge0427, %b.b.le255428
  br i1 %b.byte.range429, label %b.byte_ok430, label %b.byte_err431

choice.else423:                                   ; preds = %and.554.exit
  %var.load509 = load i64, ptr %"var.i'", align 8
  %addtmp510 = add i64 %var.load509, 1
  store i64 %addtmp510, ptr %"var.i'", align 8
  br label %choice.exit424

choice.exit424:                                   ; preds = %choice.else423, %b.push_done484
  br label %choice.exit415

b.byte_ok430:                                     ; preds = %abort.dead432, %choice.then422
  %b.byte.i8433 = trunc i64 %var.load426 to i8
  %b.len434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 0
  %b.len435 = load i64, ptr %b.len434, align 8
  %b.cap436 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 2
  %b.cap437 = load i64, ptr %b.cap436, align 8
  %b.data438 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 1
  %b.data439 = load ptr, ptr %b.data438, align 8
  %b.needs.grow440 = icmp eq i64 %b.len435, %b.cap437
  br i1 %b.needs.grow440, label %b.grow441, label %b.nogrow442

b.byte_err431:                                    ; preds = %choice.then422
  %23 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead432:                                    ; No predecessors!
  br label %b.byte_ok430

b.grow441:                                        ; preds = %b.byte_ok430
  %b.cap2444 = mul i64 %b.cap437, 2
  %b.cap.small445 = icmp slt i64 %b.cap2444, 16
  %b.new.cap446 = select i1 %b.cap.small445, i64 16, i64 %b.cap2444
  %b.new.buf.len447 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap446, i64 1)
  %sum448 = extractvalue { i64, i1 } %b.new.buf.len447, 0
  %ovf449 = extractvalue { i64, i1 } %b.new.buf.len447, 1
  br i1 %ovf449, label %str_overflow_abort451, label %b.new.buf.len450

b.nogrow442:                                      ; preds = %b.byte_ok430
  br label %b.push_done443

b.push_done443:                                   ; preds = %b.nogrow442, %b.new.buf.len450
  %b.cur.data458 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 1
  %b.cur.data459 = load ptr, ptr %b.cur.data458, align 8
  %b.cur.len460 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 0
  %b.cur.len461 = load i64, ptr %b.cur.len460, align 8
  %b.byte.gep462 = getelementptr i8, ptr %b.cur.data459, i64 %b.cur.len461
  store i8 %b.byte.i8433, ptr %b.byte.gep462, align 1
  %b.next.len463 = add i64 %b.cur.len461, 1
  %b.nul464 = getelementptr i8, ptr %b.cur.data459, i64 %b.next.len463
  store i8 0, ptr %b.nul464, align 1
  %b.len.gep465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 0
  store i64 %b.next.len463, ptr %b.len.gep465, align 8
  %b.load466 = load ptr, ptr %var.b, align 8
  %var.load467 = load i64, ptr %var.c2, align 8
  %b.b.ge0468 = icmp sge i64 %var.load467, 0
  %b.b.le255469 = icmp sle i64 %var.load467, 255
  %b.byte.range470 = and i1 %b.b.ge0468, %b.b.le255469
  br i1 %b.byte.range470, label %b.byte_ok471, label %b.byte_err472

b.new.buf.len450:                                 ; preds = %abort.dead452, %b.grow441
  %arena.cur453 = call ptr @dva_arena_current()
  %b.new.buf454 = call ptr @dva_arena_alloc(ptr %arena.cur453, i64 %sum448)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf454, ptr align 1 %b.data439, i64 %b.len435, i1 false)
  %b.grow.nul455 = getelementptr i8, ptr %b.new.buf454, i64 %b.len435
  store i8 0, ptr %b.grow.nul455, align 1
  %b.new.data.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 1
  store ptr %b.new.buf454, ptr %b.new.data.gep456, align 8
  %b.new.cap.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 2
  store i64 %b.new.cap446, ptr %b.new.cap.gep457, align 8
  br label %b.push_done443

str_overflow_abort451:                            ; preds = %b.grow441
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead452:                                    ; No predecessors!
  br label %b.new.buf.len450

b.byte_ok471:                                     ; preds = %abort.dead473, %b.push_done443
  %b.byte.i8474 = trunc i64 %var.load467 to i8
  %b.len475 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load466, i32 0, i32 0
  %b.len476 = load i64, ptr %b.len475, align 8
  %b.cap477 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load466, i32 0, i32 2
  %b.cap478 = load i64, ptr %b.cap477, align 8
  %b.data479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load466, i32 0, i32 1
  %b.data480 = load ptr, ptr %b.data479, align 8
  %b.needs.grow481 = icmp eq i64 %b.len476, %b.cap478
  br i1 %b.needs.grow481, label %b.grow482, label %b.nogrow483

b.byte_err472:                                    ; preds = %b.push_done443
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead473:                                    ; No predecessors!
  br label %b.byte_ok471

b.grow482:                                        ; preds = %b.byte_ok471
  %b.cap2485 = mul i64 %b.cap478, 2
  %b.cap.small486 = icmp slt i64 %b.cap2485, 16
  %b.new.cap487 = select i1 %b.cap.small486, i64 16, i64 %b.cap2485
  %b.new.buf.len488 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap487, i64 1)
  %sum489 = extractvalue { i64, i1 } %b.new.buf.len488, 0
  %ovf490 = extractvalue { i64, i1 } %b.new.buf.len488, 1
  br i1 %ovf490, label %str_overflow_abort492, label %b.new.buf.len491

b.nogrow483:                                      ; preds = %b.byte_ok471
  br label %b.push_done484

b.push_done484:                                   ; preds = %b.nogrow483, %b.new.buf.len491
  %b.cur.data499 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load466, i32 0, i32 1
  %b.cur.data500 = load ptr, ptr %b.cur.data499, align 8
  %b.cur.len501 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load466, i32 0, i32 0
  %b.cur.len502 = load i64, ptr %b.cur.len501, align 8
  %b.byte.gep503 = getelementptr i8, ptr %b.cur.data500, i64 %b.cur.len502
  store i8 %b.byte.i8474, ptr %b.byte.gep503, align 1
  %b.next.len504 = add i64 %b.cur.len502, 1
  %b.nul505 = getelementptr i8, ptr %b.cur.data500, i64 %b.next.len504
  store i8 0, ptr %b.nul505, align 1
  %b.len.gep506 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load466, i32 0, i32 0
  store i64 %b.next.len504, ptr %b.len.gep506, align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load507 = load i64, ptr %"var.i'", align 8
  %addtmp508 = add i64 %var.load507, 3
  store i64 %addtmp508, ptr %"var.i'", align 8
  br label %choice.exit424

b.new.buf.len491:                                 ; preds = %abort.dead493, %b.grow482
  %arena.cur494 = call ptr @dva_arena_current()
  %b.new.buf495 = call ptr @dva_arena_alloc(ptr %arena.cur494, i64 %sum489)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf495, ptr align 1 %b.data480, i64 %b.len476, i1 false)
  %b.grow.nul496 = getelementptr i8, ptr %b.new.buf495, i64 %b.len476
  store i8 0, ptr %b.grow.nul496, align 1
  %b.new.data.gep497 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load466, i32 0, i32 1
  store ptr %b.new.buf495, ptr %b.new.data.gep497, align 8
  %b.new.cap.gep498 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load466, i32 0, i32 2
  store i64 %b.new.cap487, ptr %b.new.cap.gep498, align 8
  br label %b.push_done484

str_overflow_abort492:                            ; preds = %b.grow482
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead493:                                    ; No predecessors!
  br label %b.new.buf.len491

choice.then513:                                   ; preds = %choice.else414
  store i1 false, ptr %"var.in_str'", align 1
  br label %choice.exit514

choice.exit514:                                   ; preds = %choice.then513, %choice.else414
  %var.load515 = load i64, ptr %"var.i'", align 8
  %addtmp516 = add i64 %var.load515, 1
  store i64 %addtmp516, ptr %"var.i'", align 8
  br label %choice.exit415

and.555.then:                                     ; preds = %choice.else317
  %var.load519 = load i64, ptr %var.c1, align 8
  %cmptmp520 = icmp eq i64 %var.load519, 47
  br label %and.555.exit

and.555.else:                                     ; preds = %choice.else317
  br label %and.555.exit

and.555.exit:                                     ; preds = %and.555.else, %and.555.then
  %and.555.phi = phi i1 [ %cmptmp520, %and.555.then ], [ %cmptmp518, %and.555.else ]
  br i1 %and.555.phi, label %choice.then521, label %choice.else522

choice.then521:                                   ; preds = %and.555.exit
  %b.load524 = load ptr, ptr %var.b, align 8
  %var.load525 = load ptr, ptr %var.body, align 8
  %s.read.len526 = getelementptr inbounds { i64, ptr }, ptr %var.load525, i32 0, i32 0
  %s.read.len527 = load i64, ptr %s.read.len526, align 8
  %s.read.len528 = and i64 %s.read.len527, 281474976710655
  %s.read.data529 = getelementptr inbounds { i64, ptr }, ptr %var.load525, i32 0, i32 1
  %s.read.data530 = load ptr, ptr %s.read.data529, align 8
  %var.load531 = load i64, ptr %"var.i'", align 8
  %var.load532 = load i64, ptr %var.n, align 8
  %start.is_neg = icmp slt i64 %var.load531, 0
  %rel.start = add i64 %s.read.len528, %var.load531
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load531
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len528
  %final.start = select i1 %start.gt.len, i64 %s.read.len528, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load532, 0
  %rel.end = add i64 %s.read.len528, %var.load532
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load532
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len528
  %final.end = select i1 %end.gt.len, i64 %s.read.len528, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data530, i64 %final.start
  %b.app.cur.len533 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load524, i32 0, i32 0
  %b.app.cur.len534 = load i64, ptr %b.app.cur.len533, align 8
  %b.app.new.len535 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len534, i64 %view.len)
  %sum536 = extractvalue { i64, i1 } %b.app.new.len535, 0
  %ovf537 = extractvalue { i64, i1 } %b.app.new.len535, 1
  br i1 %ovf537, label %str_overflow_abort539, label %b.app.new.len538

choice.else522:                                   ; preds = %and.555.exit
  %var.load573 = load i64, ptr %var.c, align 8
  %cmptmp574 = icmp eq i64 %var.load573, 47
  br i1 %cmptmp574, label %and.556.then, label %and.556.else

choice.exit523:                                   ; preds = %choice.exit579, %b.grow_done546
  br label %choice.exit318

b.app.new.len538:                                 ; preds = %abort.dead540, %choice.then521
  %b.cap541 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load524, i32 0, i32 2
  %b.cap542 = load i64, ptr %b.cap541, align 8
  %b.need.grow543 = icmp slt i64 %b.cap542, %sum536
  br i1 %b.need.grow543, label %b.grow2544, label %b.nogrow2545

str_overflow_abort539:                            ; preds = %choice.then521
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead540:                                    ; No predecessors!
  br label %b.app.new.len538

b.grow2544:                                       ; preds = %b.app.new.len538
  %b.cap2547 = mul i64 %b.cap542, 2
  %b.cap.small548 = icmp slt i64 %b.cap2547, 16
  %b.cap.grow549 = select i1 %b.cap.small548, i64 16, i64 %b.cap2547
  %b.cap.need550 = icmp slt i64 %b.cap.grow549, %sum536
  %b.new.cap551 = select i1 %b.cap.need550, i64 %sum536, i64 %b.cap.grow549
  %b.cur.len2552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load524, i32 0, i32 0
  %b.cur.len2553 = load i64, ptr %b.cur.len2552, align 8
  %b.cur.data2554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load524, i32 0, i32 1
  %b.cur.data2555 = load ptr, ptr %b.cur.data2554, align 8
  %b.new.buf.len2556 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap551, i64 1)
  %sum557 = extractvalue { i64, i1 } %b.new.buf.len2556, 0
  %ovf558 = extractvalue { i64, i1 } %b.new.buf.len2556, 1
  br i1 %ovf558, label %str_overflow_abort560, label %b.new.buf.len2559

b.nogrow2545:                                     ; preds = %b.app.new.len538
  br label %b.grow_done546

b.grow_done546:                                   ; preds = %b.nogrow2545, %b.new.buf.len2559
  %b.app.data567 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load524, i32 0, i32 1
  %b.app.data568 = load ptr, ptr %b.app.data567, align 8
  %b.app.dst569 = getelementptr i8, ptr %b.app.data568, i64 %b.app.cur.len534
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst569, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul570 = getelementptr i8, ptr %b.app.data568, i64 %sum536
  store i8 0, ptr %b.app.nul570, align 1
  %b.len.gep571 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load524, i32 0, i32 0
  store i64 %sum536, ptr %b.len.gep571, align 8
  %var.load572 = load i64, ptr %var.n, align 8
  store i64 %var.load572, ptr %"var.i'", align 8
  br label %choice.exit523

b.new.buf.len2559:                                ; preds = %abort.dead561, %b.grow2544
  %arena.cur562 = call ptr @dva_arena_current()
  %b.new.buf2563 = call ptr @dva_arena_alloc(ptr %arena.cur562, i64 %sum557)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2563, ptr align 1 %b.cur.data2555, i64 %b.cur.len2553, i1 false)
  %b.grow2.nul564 = getelementptr i8, ptr %b.new.buf2563, i64 %b.cur.len2553
  store i8 0, ptr %b.grow2.nul564, align 1
  %b.new.data2.gep565 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load524, i32 0, i32 1
  store ptr %b.new.buf2563, ptr %b.new.data2.gep565, align 8
  %b.new.cap2.gep566 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load524, i32 0, i32 2
  store i64 %b.new.cap551, ptr %b.new.cap2.gep566, align 8
  br label %b.grow_done546

str_overflow_abort560:                            ; preds = %b.grow2544
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead561:                                    ; No predecessors!
  br label %b.new.buf.len2559

and.556.then:                                     ; preds = %choice.else522
  %var.load575 = load i64, ptr %var.c1, align 8
  %cmptmp576 = icmp eq i64 %var.load575, 42
  br label %and.556.exit

and.556.else:                                     ; preds = %choice.else522
  br label %and.556.exit

and.556.exit:                                     ; preds = %and.556.else, %and.556.then
  %and.556.phi = phi i1 [ %cmptmp576, %and.556.then ], [ %cmptmp574, %and.556.else ]
  br i1 %and.556.phi, label %choice.then577, label %choice.else578

choice.then577:                                   ; preds = %and.556.exit
  %b.load580 = load ptr, ptr %var.b, align 8
  %app.str.len581 = load i64, ptr @str.9.struct, align 8
  %app.str.len582 = and i64 %app.str.len581, 281474976710655
  %app.str.data583 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %b.app.cur.len584 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load580, i32 0, i32 0
  %b.app.cur.len585 = load i64, ptr %b.app.cur.len584, align 8
  %b.app.new.len586 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len585, i64 %app.str.len582)
  %sum587 = extractvalue { i64, i1 } %b.app.new.len586, 0
  %ovf588 = extractvalue { i64, i1 } %b.app.new.len586, 1
  br i1 %ovf588, label %str_overflow_abort590, label %b.app.new.len589

choice.else578:                                   ; preds = %and.556.exit
  %var.load625 = load i64, ptr %var.c, align 8
  %cmptmp626 = icmp eq i64 %var.load625, 39
  br i1 %cmptmp626, label %choice.then627, label %choice.else628

choice.exit579:                                   ; preds = %choice.exit629, %b.grow_done597
  br label %choice.exit523

b.app.new.len589:                                 ; preds = %abort.dead591, %choice.then577
  %b.cap592 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load580, i32 0, i32 2
  %b.cap593 = load i64, ptr %b.cap592, align 8
  %b.need.grow594 = icmp slt i64 %b.cap593, %sum587
  br i1 %b.need.grow594, label %b.grow2595, label %b.nogrow2596

str_overflow_abort590:                            ; preds = %choice.then577
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead591:                                    ; No predecessors!
  br label %b.app.new.len589

b.grow2595:                                       ; preds = %b.app.new.len589
  %b.cap2598 = mul i64 %b.cap593, 2
  %b.cap.small599 = icmp slt i64 %b.cap2598, 16
  %b.cap.grow600 = select i1 %b.cap.small599, i64 16, i64 %b.cap2598
  %b.cap.need601 = icmp slt i64 %b.cap.grow600, %sum587
  %b.new.cap602 = select i1 %b.cap.need601, i64 %sum587, i64 %b.cap.grow600
  %b.cur.len2603 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load580, i32 0, i32 0
  %b.cur.len2604 = load i64, ptr %b.cur.len2603, align 8
  %b.cur.data2605 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load580, i32 0, i32 1
  %b.cur.data2606 = load ptr, ptr %b.cur.data2605, align 8
  %b.new.buf.len2607 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap602, i64 1)
  %sum608 = extractvalue { i64, i1 } %b.new.buf.len2607, 0
  %ovf609 = extractvalue { i64, i1 } %b.new.buf.len2607, 1
  br i1 %ovf609, label %str_overflow_abort611, label %b.new.buf.len2610

b.nogrow2596:                                     ; preds = %b.app.new.len589
  br label %b.grow_done597

b.grow_done597:                                   ; preds = %b.nogrow2596, %b.new.buf.len2610
  %b.app.data618 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load580, i32 0, i32 1
  %b.app.data619 = load ptr, ptr %b.app.data618, align 8
  %b.app.dst620 = getelementptr i8, ptr %b.app.data619, i64 %b.app.cur.len585
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst620, ptr align 1 %app.str.data583, i64 %app.str.len582, i1 false)
  %b.app.nul621 = getelementptr i8, ptr %b.app.data619, i64 %sum587
  store i8 0, ptr %b.app.nul621, align 1
  %b.len.gep622 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load580, i32 0, i32 0
  store i64 %sum587, ptr %b.len.gep622, align 8
  store i1 true, ptr %"var.in_blk_comm'", align 1
  %var.load623 = load i64, ptr %"var.i'", align 8
  %addtmp624 = add i64 %var.load623, 2
  store i64 %addtmp624, ptr %"var.i'", align 8
  br label %choice.exit579

b.new.buf.len2610:                                ; preds = %abort.dead612, %b.grow2595
  %arena.cur613 = call ptr @dva_arena_current()
  %b.new.buf2614 = call ptr @dva_arena_alloc(ptr %arena.cur613, i64 %sum608)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2614, ptr align 1 %b.cur.data2606, i64 %b.cur.len2604, i1 false)
  %b.grow2.nul615 = getelementptr i8, ptr %b.new.buf2614, i64 %b.cur.len2604
  store i8 0, ptr %b.grow2.nul615, align 1
  %b.new.data2.gep616 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load580, i32 0, i32 1
  store ptr %b.new.buf2614, ptr %b.new.data2.gep616, align 8
  %b.new.cap2.gep617 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load580, i32 0, i32 2
  store i64 %b.new.cap602, ptr %b.new.cap2.gep617, align 8
  br label %b.grow_done597

str_overflow_abort611:                            ; preds = %b.grow2595
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead612:                                    ; No predecessors!
  br label %b.new.buf.len2610

choice.then627:                                   ; preds = %choice.else578
  %var.load630 = load i64, ptr %"var.i'", align 8
  %cmptmp631 = icmp sgt i64 %var.load630, 0
  br i1 %cmptmp631, label %choice.then632, label %choice.else633

choice.else628:                                   ; preds = %choice.else578
  %var.load845 = load i64, ptr %var.c, align 8
  %cmptmp846 = icmp eq i64 %var.load845, 34
  br i1 %cmptmp846, label %choice.then847, label %choice.else848

choice.exit629:                                   ; preds = %choice.exit849, %choice.exit697
  br label %choice.exit579

choice.then632:                                   ; preds = %choice.then627
  %var.load635 = load ptr, ptr %var.body, align 8
  %s.read.len636 = getelementptr inbounds { i64, ptr }, ptr %var.load635, i32 0, i32 0
  %s.read.len637 = load i64, ptr %s.read.len636, align 8
  %s.read.len638 = and i64 %s.read.len637, 281474976710655
  %s.read.data639 = getelementptr inbounds { i64, ptr }, ptr %var.load635, i32 0, i32 1
  %s.read.data640 = load ptr, ptr %s.read.data639, align 8
  %var.load641 = load i64, ptr %"var.i'", align 8
  %subtmp = sub i64 %var.load641, 1
  %idx.neg642 = icmp slt i64 %subtmp, 0
  br i1 %idx.neg642, label %idx_oob645, label %idx_big_check643

choice.else633:                                   ; preds = %choice.then627
  br label %choice.exit634

choice.exit634:                                   ; preds = %choice.else633, %idx_ok644
  %choice.res651 = phi i64 [ %s.byte.val650, %idx_ok644 ], [ 0, %choice.else633 ]
  store i64 %choice.res651, ptr %var.prev_b, align 8
  %b.load652 = load ptr, ptr %var.b, align 8
  %var.load653 = load i64, ptr %var.c, align 8
  %b.b.ge0654 = icmp sge i64 %var.load653, 0
  %b.b.le255655 = icmp sle i64 %var.load653, 255
  %b.byte.range656 = and i1 %b.b.ge0654, %b.b.le255655
  br i1 %b.byte.range656, label %b.byte_ok657, label %b.byte_err658

idx_big_check643:                                 ; preds = %choice.then632
  %idx.big646 = icmp sge i64 %subtmp, %s.read.len638
  br i1 %idx.big646, label %idx_oob645, label %idx_ok644

idx_ok644:                                        ; preds = %abort.dead647, %idx_big_check643
  %s.byte.gep648 = getelementptr i8, ptr %s.read.data640, i64 %subtmp
  %s.byte649 = load i8, ptr %s.byte.gep648, align 1
  %s.byte.val650 = zext i8 %s.byte649 to i64
  br label %choice.exit634

idx_oob645:                                       ; preds = %idx_big_check643, %choice.then632
  %31 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead647:                                    ; No predecessors!
  br label %idx_ok644

b.byte_ok657:                                     ; preds = %abort.dead659, %choice.exit634
  %b.byte.i8660 = trunc i64 %var.load653 to i8
  %b.len661 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 0
  %b.len662 = load i64, ptr %b.len661, align 8
  %b.cap663 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 2
  %b.cap664 = load i64, ptr %b.cap663, align 8
  %b.data665 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 1
  %b.data666 = load ptr, ptr %b.data665, align 8
  %b.needs.grow667 = icmp eq i64 %b.len662, %b.cap664
  br i1 %b.needs.grow667, label %b.grow668, label %b.nogrow669

b.byte_err658:                                    ; preds = %choice.exit634
  %32 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead659:                                    ; No predecessors!
  br label %b.byte_ok657

b.grow668:                                        ; preds = %b.byte_ok657
  %b.cap2671 = mul i64 %b.cap664, 2
  %b.cap.small672 = icmp slt i64 %b.cap2671, 16
  %b.new.cap673 = select i1 %b.cap.small672, i64 16, i64 %b.cap2671
  %b.new.buf.len674 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap673, i64 1)
  %sum675 = extractvalue { i64, i1 } %b.new.buf.len674, 0
  %ovf676 = extractvalue { i64, i1 } %b.new.buf.len674, 1
  br i1 %ovf676, label %str_overflow_abort678, label %b.new.buf.len677

b.nogrow669:                                      ; preds = %b.byte_ok657
  br label %b.push_done670

b.push_done670:                                   ; preds = %b.nogrow669, %b.new.buf.len677
  %b.cur.data685 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 1
  %b.cur.data686 = load ptr, ptr %b.cur.data685, align 8
  %b.cur.len687 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 0
  %b.cur.len688 = load i64, ptr %b.cur.len687, align 8
  %b.byte.gep689 = getelementptr i8, ptr %b.cur.data686, i64 %b.cur.len688
  store i8 %b.byte.i8660, ptr %b.byte.gep689, align 1
  %b.next.len690 = add i64 %b.cur.len688, 1
  %b.nul691 = getelementptr i8, ptr %b.cur.data686, i64 %b.next.len690
  store i8 0, ptr %b.nul691, align 1
  %b.len.gep692 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 0
  store i64 %b.next.len690, ptr %b.len.gep692, align 8
  %var.load693 = load i64, ptr %var.prev_b, align 8
  %call.res694 = call i1 @"formatter::is_id_byte"(i64 %var.load693)
  br i1 %call.res694, label %choice.then695, label %choice.else696

b.new.buf.len677:                                 ; preds = %abort.dead679, %b.grow668
  %arena.cur680 = call ptr @dva_arena_current()
  %b.new.buf681 = call ptr @dva_arena_alloc(ptr %arena.cur680, i64 %sum675)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf681, ptr align 1 %b.data666, i64 %b.len662, i1 false)
  %b.grow.nul682 = getelementptr i8, ptr %b.new.buf681, i64 %b.len662
  store i8 0, ptr %b.grow.nul682, align 1
  %b.new.data.gep683 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 1
  store ptr %b.new.buf681, ptr %b.new.data.gep683, align 8
  %b.new.cap.gep684 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 2
  store i64 %b.new.cap673, ptr %b.new.cap.gep684, align 8
  br label %b.push_done670

str_overflow_abort678:                            ; preds = %b.grow668
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead679:                                    ; No predecessors!
  br label %b.new.buf.len677

choice.then695:                                   ; preds = %b.push_done670
  %var.load698 = load i64, ptr %"var.i'", align 8
  %addtmp699 = add i64 %var.load698, 1
  store i64 %addtmp699, ptr %"var.i'", align 8
  br label %choice.exit697

choice.else696:                                   ; preds = %b.push_done670
  %var.load700 = load i64, ptr %var.c1, align 8
  %cmptmp701 = icmp eq i64 %var.load700, 92
  br i1 %cmptmp701, label %and.557.then, label %and.557.else

choice.exit697:                                   ; preds = %choice.exit708, %choice.then695
  br label %choice.exit629

and.557.then:                                     ; preds = %choice.else696
  %var.load702 = load i64, ptr %"var.i'", align 8
  %addtmp703 = add i64 %var.load702, 2
  %var.load704 = load i64, ptr %var.n, align 8
  %cmptmp705 = icmp slt i64 %addtmp703, %var.load704
  br label %and.557.exit

and.557.else:                                     ; preds = %choice.else696
  br label %and.557.exit

and.557.exit:                                     ; preds = %and.557.else, %and.557.then
  %and.557.phi = phi i1 [ %cmptmp705, %and.557.then ], [ %cmptmp701, %and.557.else ]
  br i1 %and.557.phi, label %choice.then706, label %choice.else707

choice.then706:                                   ; preds = %and.557.exit
  %b.load709 = load ptr, ptr %var.b, align 8
  %var.load710 = load i64, ptr %var.c1, align 8
  %b.b.ge0711 = icmp sge i64 %var.load710, 0
  %b.b.le255712 = icmp sle i64 %var.load710, 255
  %b.byte.range713 = and i1 %b.b.ge0711, %b.b.le255712
  br i1 %b.byte.range713, label %b.byte_ok714, label %b.byte_err715

choice.else707:                                   ; preds = %and.557.exit
  %var.load793 = load i64, ptr %"var.i'", align 8
  %addtmp794 = add i64 %var.load793, 1
  %var.load795 = load i64, ptr %var.n, align 8
  %cmptmp796 = icmp slt i64 %addtmp794, %var.load795
  br i1 %cmptmp796, label %choice.then797, label %choice.else798

choice.exit708:                                   ; preds = %choice.exit799, %b.push_done768
  br label %choice.exit697

b.byte_ok714:                                     ; preds = %abort.dead716, %choice.then706
  %b.byte.i8717 = trunc i64 %var.load710 to i8
  %b.len718 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load709, i32 0, i32 0
  %b.len719 = load i64, ptr %b.len718, align 8
  %b.cap720 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load709, i32 0, i32 2
  %b.cap721 = load i64, ptr %b.cap720, align 8
  %b.data722 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load709, i32 0, i32 1
  %b.data723 = load ptr, ptr %b.data722, align 8
  %b.needs.grow724 = icmp eq i64 %b.len719, %b.cap721
  br i1 %b.needs.grow724, label %b.grow725, label %b.nogrow726

b.byte_err715:                                    ; preds = %choice.then706
  %34 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead716:                                    ; No predecessors!
  br label %b.byte_ok714

b.grow725:                                        ; preds = %b.byte_ok714
  %b.cap2728 = mul i64 %b.cap721, 2
  %b.cap.small729 = icmp slt i64 %b.cap2728, 16
  %b.new.cap730 = select i1 %b.cap.small729, i64 16, i64 %b.cap2728
  %b.new.buf.len731 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap730, i64 1)
  %sum732 = extractvalue { i64, i1 } %b.new.buf.len731, 0
  %ovf733 = extractvalue { i64, i1 } %b.new.buf.len731, 1
  br i1 %ovf733, label %str_overflow_abort735, label %b.new.buf.len734

b.nogrow726:                                      ; preds = %b.byte_ok714
  br label %b.push_done727

b.push_done727:                                   ; preds = %b.nogrow726, %b.new.buf.len734
  %b.cur.data742 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load709, i32 0, i32 1
  %b.cur.data743 = load ptr, ptr %b.cur.data742, align 8
  %b.cur.len744 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load709, i32 0, i32 0
  %b.cur.len745 = load i64, ptr %b.cur.len744, align 8
  %b.byte.gep746 = getelementptr i8, ptr %b.cur.data743, i64 %b.cur.len745
  store i8 %b.byte.i8717, ptr %b.byte.gep746, align 1
  %b.next.len747 = add i64 %b.cur.len745, 1
  %b.nul748 = getelementptr i8, ptr %b.cur.data743, i64 %b.next.len747
  store i8 0, ptr %b.nul748, align 1
  %b.len.gep749 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load709, i32 0, i32 0
  store i64 %b.next.len747, ptr %b.len.gep749, align 8
  %b.load750 = load ptr, ptr %var.b, align 8
  %var.load751 = load i64, ptr %var.c2, align 8
  %b.b.ge0752 = icmp sge i64 %var.load751, 0
  %b.b.le255753 = icmp sle i64 %var.load751, 255
  %b.byte.range754 = and i1 %b.b.ge0752, %b.b.le255753
  br i1 %b.byte.range754, label %b.byte_ok755, label %b.byte_err756

b.new.buf.len734:                                 ; preds = %abort.dead736, %b.grow725
  %arena.cur737 = call ptr @dva_arena_current()
  %b.new.buf738 = call ptr @dva_arena_alloc(ptr %arena.cur737, i64 %sum732)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf738, ptr align 1 %b.data723, i64 %b.len719, i1 false)
  %b.grow.nul739 = getelementptr i8, ptr %b.new.buf738, i64 %b.len719
  store i8 0, ptr %b.grow.nul739, align 1
  %b.new.data.gep740 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load709, i32 0, i32 1
  store ptr %b.new.buf738, ptr %b.new.data.gep740, align 8
  %b.new.cap.gep741 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load709, i32 0, i32 2
  store i64 %b.new.cap730, ptr %b.new.cap.gep741, align 8
  br label %b.push_done727

str_overflow_abort735:                            ; preds = %b.grow725
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead736:                                    ; No predecessors!
  br label %b.new.buf.len734

b.byte_ok755:                                     ; preds = %abort.dead757, %b.push_done727
  %b.byte.i8758 = trunc i64 %var.load751 to i8
  %b.len759 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load750, i32 0, i32 0
  %b.len760 = load i64, ptr %b.len759, align 8
  %b.cap761 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load750, i32 0, i32 2
  %b.cap762 = load i64, ptr %b.cap761, align 8
  %b.data763 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load750, i32 0, i32 1
  %b.data764 = load ptr, ptr %b.data763, align 8
  %b.needs.grow765 = icmp eq i64 %b.len760, %b.cap762
  br i1 %b.needs.grow765, label %b.grow766, label %b.nogrow767

b.byte_err756:                                    ; preds = %b.push_done727
  %36 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead757:                                    ; No predecessors!
  br label %b.byte_ok755

b.grow766:                                        ; preds = %b.byte_ok755
  %b.cap2769 = mul i64 %b.cap762, 2
  %b.cap.small770 = icmp slt i64 %b.cap2769, 16
  %b.new.cap771 = select i1 %b.cap.small770, i64 16, i64 %b.cap2769
  %b.new.buf.len772 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap771, i64 1)
  %sum773 = extractvalue { i64, i1 } %b.new.buf.len772, 0
  %ovf774 = extractvalue { i64, i1 } %b.new.buf.len772, 1
  br i1 %ovf774, label %str_overflow_abort776, label %b.new.buf.len775

b.nogrow767:                                      ; preds = %b.byte_ok755
  br label %b.push_done768

b.push_done768:                                   ; preds = %b.nogrow767, %b.new.buf.len775
  %b.cur.data783 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load750, i32 0, i32 1
  %b.cur.data784 = load ptr, ptr %b.cur.data783, align 8
  %b.cur.len785 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load750, i32 0, i32 0
  %b.cur.len786 = load i64, ptr %b.cur.len785, align 8
  %b.byte.gep787 = getelementptr i8, ptr %b.cur.data784, i64 %b.cur.len786
  store i8 %b.byte.i8758, ptr %b.byte.gep787, align 1
  %b.next.len788 = add i64 %b.cur.len786, 1
  %b.nul789 = getelementptr i8, ptr %b.cur.data784, i64 %b.next.len788
  store i8 0, ptr %b.nul789, align 1
  %b.len.gep790 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load750, i32 0, i32 0
  store i64 %b.next.len788, ptr %b.len.gep790, align 8
  %var.load791 = load i64, ptr %"var.i'", align 8
  %addtmp792 = add i64 %var.load791, 3
  store i64 %addtmp792, ptr %"var.i'", align 8
  br label %choice.exit708

b.new.buf.len775:                                 ; preds = %abort.dead777, %b.grow766
  %arena.cur778 = call ptr @dva_arena_current()
  %b.new.buf779 = call ptr @dva_arena_alloc(ptr %arena.cur778, i64 %sum773)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf779, ptr align 1 %b.data764, i64 %b.len760, i1 false)
  %b.grow.nul780 = getelementptr i8, ptr %b.new.buf779, i64 %b.len760
  store i8 0, ptr %b.grow.nul780, align 1
  %b.new.data.gep781 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load750, i32 0, i32 1
  store ptr %b.new.buf779, ptr %b.new.data.gep781, align 8
  %b.new.cap.gep782 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load750, i32 0, i32 2
  store i64 %b.new.cap771, ptr %b.new.cap.gep782, align 8
  br label %b.push_done768

str_overflow_abort776:                            ; preds = %b.grow766
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead777:                                    ; No predecessors!
  br label %b.new.buf.len775

choice.then797:                                   ; preds = %choice.else707
  %b.load800 = load ptr, ptr %var.b, align 8
  %var.load801 = load i64, ptr %var.c1, align 8
  %b.b.ge0802 = icmp sge i64 %var.load801, 0
  %b.b.le255803 = icmp sle i64 %var.load801, 255
  %b.byte.range804 = and i1 %b.b.ge0802, %b.b.le255803
  br i1 %b.byte.range804, label %b.byte_ok805, label %b.byte_err806

choice.else798:                                   ; preds = %choice.else707
  %var.load843 = load i64, ptr %"var.i'", align 8
  %addtmp844 = add i64 %var.load843, 1
  store i64 %addtmp844, ptr %"var.i'", align 8
  br label %choice.exit799

choice.exit799:                                   ; preds = %choice.else798, %b.push_done818
  br label %choice.exit708

b.byte_ok805:                                     ; preds = %abort.dead807, %choice.then797
  %b.byte.i8808 = trunc i64 %var.load801 to i8
  %b.len809 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load800, i32 0, i32 0
  %b.len810 = load i64, ptr %b.len809, align 8
  %b.cap811 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load800, i32 0, i32 2
  %b.cap812 = load i64, ptr %b.cap811, align 8
  %b.data813 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load800, i32 0, i32 1
  %b.data814 = load ptr, ptr %b.data813, align 8
  %b.needs.grow815 = icmp eq i64 %b.len810, %b.cap812
  br i1 %b.needs.grow815, label %b.grow816, label %b.nogrow817

b.byte_err806:                                    ; preds = %choice.then797
  %38 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead807:                                    ; No predecessors!
  br label %b.byte_ok805

b.grow816:                                        ; preds = %b.byte_ok805
  %b.cap2819 = mul i64 %b.cap812, 2
  %b.cap.small820 = icmp slt i64 %b.cap2819, 16
  %b.new.cap821 = select i1 %b.cap.small820, i64 16, i64 %b.cap2819
  %b.new.buf.len822 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap821, i64 1)
  %sum823 = extractvalue { i64, i1 } %b.new.buf.len822, 0
  %ovf824 = extractvalue { i64, i1 } %b.new.buf.len822, 1
  br i1 %ovf824, label %str_overflow_abort826, label %b.new.buf.len825

b.nogrow817:                                      ; preds = %b.byte_ok805
  br label %b.push_done818

b.push_done818:                                   ; preds = %b.nogrow817, %b.new.buf.len825
  %b.cur.data833 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load800, i32 0, i32 1
  %b.cur.data834 = load ptr, ptr %b.cur.data833, align 8
  %b.cur.len835 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load800, i32 0, i32 0
  %b.cur.len836 = load i64, ptr %b.cur.len835, align 8
  %b.byte.gep837 = getelementptr i8, ptr %b.cur.data834, i64 %b.cur.len836
  store i8 %b.byte.i8808, ptr %b.byte.gep837, align 1
  %b.next.len838 = add i64 %b.cur.len836, 1
  %b.nul839 = getelementptr i8, ptr %b.cur.data834, i64 %b.next.len838
  store i8 0, ptr %b.nul839, align 1
  %b.len.gep840 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load800, i32 0, i32 0
  store i64 %b.next.len838, ptr %b.len.gep840, align 8
  %var.load841 = load i64, ptr %"var.i'", align 8
  %addtmp842 = add i64 %var.load841, 2
  store i64 %addtmp842, ptr %"var.i'", align 8
  br label %choice.exit799

b.new.buf.len825:                                 ; preds = %abort.dead827, %b.grow816
  %arena.cur828 = call ptr @dva_arena_current()
  %b.new.buf829 = call ptr @dva_arena_alloc(ptr %arena.cur828, i64 %sum823)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf829, ptr align 1 %b.data814, i64 %b.len810, i1 false)
  %b.grow.nul830 = getelementptr i8, ptr %b.new.buf829, i64 %b.len810
  store i8 0, ptr %b.grow.nul830, align 1
  %b.new.data.gep831 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load800, i32 0, i32 1
  store ptr %b.new.buf829, ptr %b.new.data.gep831, align 8
  %b.new.cap.gep832 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load800, i32 0, i32 2
  store i64 %b.new.cap821, ptr %b.new.cap.gep832, align 8
  br label %b.push_done818

str_overflow_abort826:                            ; preds = %b.grow816
  %39 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead827:                                    ; No predecessors!
  br label %b.new.buf.len825

choice.then847:                                   ; preds = %choice.else628
  %var.load850 = load i64, ptr %var.c1, align 8
  %cmptmp851 = icmp eq i64 %var.load850, 34
  br i1 %cmptmp851, label %and.558.then, label %and.558.else

choice.else848:                                   ; preds = %choice.else628
  %var.load945 = load i64, ptr %var.c, align 8
  %val.match949 = icmp eq i64 %var.load945, 44
  %val.match950 = icmp eq i64 %var.load945, 59
  %case.or951 = or i1 %val.match949, %val.match950
  br i1 %case.or951, label %choice.case947, label %choice.next948

choice.exit849:                                   ; preds = %choice.exit955, %choice.exit856
  br label %choice.exit629

and.558.then:                                     ; preds = %choice.then847
  %var.load852 = load i64, ptr %var.c2, align 8
  %cmptmp853 = icmp eq i64 %var.load852, 34
  br label %and.558.exit

and.558.else:                                     ; preds = %choice.then847
  br label %and.558.exit

and.558.exit:                                     ; preds = %and.558.else, %and.558.then
  %and.558.phi = phi i1 [ %cmptmp853, %and.558.then ], [ %cmptmp851, %and.558.else ]
  br i1 %and.558.phi, label %choice.then854, label %choice.else855

choice.then854:                                   ; preds = %and.558.exit
  %b.load857 = load ptr, ptr %var.b, align 8
  %app.str.len858 = load i64, ptr @str.10.struct, align 8
  %app.str.len859 = and i64 %app.str.len858, 281474976710655
  %app.str.data860 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %b.app.cur.len861 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load857, i32 0, i32 0
  %b.app.cur.len862 = load i64, ptr %b.app.cur.len861, align 8
  %b.app.new.len863 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len862, i64 %app.str.len859)
  %sum864 = extractvalue { i64, i1 } %b.app.new.len863, 0
  %ovf865 = extractvalue { i64, i1 } %b.app.new.len863, 1
  br i1 %ovf865, label %str_overflow_abort867, label %b.app.new.len866

choice.else855:                                   ; preds = %and.558.exit
  %b.load902 = load ptr, ptr %var.b, align 8
  %var.load903 = load i64, ptr %var.c, align 8
  %b.b.ge0904 = icmp sge i64 %var.load903, 0
  %b.b.le255905 = icmp sle i64 %var.load903, 255
  %b.byte.range906 = and i1 %b.b.ge0904, %b.b.le255905
  br i1 %b.byte.range906, label %b.byte_ok907, label %b.byte_err908

choice.exit856:                                   ; preds = %b.push_done920, %b.grow_done874
  br label %choice.exit849

b.app.new.len866:                                 ; preds = %abort.dead868, %choice.then854
  %b.cap869 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load857, i32 0, i32 2
  %b.cap870 = load i64, ptr %b.cap869, align 8
  %b.need.grow871 = icmp slt i64 %b.cap870, %sum864
  br i1 %b.need.grow871, label %b.grow2872, label %b.nogrow2873

str_overflow_abort867:                            ; preds = %choice.then854
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead868:                                    ; No predecessors!
  br label %b.app.new.len866

b.grow2872:                                       ; preds = %b.app.new.len866
  %b.cap2875 = mul i64 %b.cap870, 2
  %b.cap.small876 = icmp slt i64 %b.cap2875, 16
  %b.cap.grow877 = select i1 %b.cap.small876, i64 16, i64 %b.cap2875
  %b.cap.need878 = icmp slt i64 %b.cap.grow877, %sum864
  %b.new.cap879 = select i1 %b.cap.need878, i64 %sum864, i64 %b.cap.grow877
  %b.cur.len2880 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load857, i32 0, i32 0
  %b.cur.len2881 = load i64, ptr %b.cur.len2880, align 8
  %b.cur.data2882 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load857, i32 0, i32 1
  %b.cur.data2883 = load ptr, ptr %b.cur.data2882, align 8
  %b.new.buf.len2884 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap879, i64 1)
  %sum885 = extractvalue { i64, i1 } %b.new.buf.len2884, 0
  %ovf886 = extractvalue { i64, i1 } %b.new.buf.len2884, 1
  br i1 %ovf886, label %str_overflow_abort888, label %b.new.buf.len2887

b.nogrow2873:                                     ; preds = %b.app.new.len866
  br label %b.grow_done874

b.grow_done874:                                   ; preds = %b.nogrow2873, %b.new.buf.len2887
  %b.app.data895 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load857, i32 0, i32 1
  %b.app.data896 = load ptr, ptr %b.app.data895, align 8
  %b.app.dst897 = getelementptr i8, ptr %b.app.data896, i64 %b.app.cur.len862
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst897, ptr align 1 %app.str.data860, i64 %app.str.len859, i1 false)
  %b.app.nul898 = getelementptr i8, ptr %b.app.data896, i64 %sum864
  store i8 0, ptr %b.app.nul898, align 1
  %b.len.gep899 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load857, i32 0, i32 0
  store i64 %sum864, ptr %b.len.gep899, align 8
  store i1 true, ptr %"var.in_str'", align 1
  store i1 true, ptr %"var.str_triple'", align 1
  %var.load900 = load i64, ptr %"var.i'", align 8
  %addtmp901 = add i64 %var.load900, 3
  store i64 %addtmp901, ptr %"var.i'", align 8
  br label %choice.exit856

b.new.buf.len2887:                                ; preds = %abort.dead889, %b.grow2872
  %arena.cur890 = call ptr @dva_arena_current()
  %b.new.buf2891 = call ptr @dva_arena_alloc(ptr %arena.cur890, i64 %sum885)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2891, ptr align 1 %b.cur.data2883, i64 %b.cur.len2881, i1 false)
  %b.grow2.nul892 = getelementptr i8, ptr %b.new.buf2891, i64 %b.cur.len2881
  store i8 0, ptr %b.grow2.nul892, align 1
  %b.new.data2.gep893 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load857, i32 0, i32 1
  store ptr %b.new.buf2891, ptr %b.new.data2.gep893, align 8
  %b.new.cap2.gep894 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load857, i32 0, i32 2
  store i64 %b.new.cap879, ptr %b.new.cap2.gep894, align 8
  br label %b.grow_done874

str_overflow_abort888:                            ; preds = %b.grow2872
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead889:                                    ; No predecessors!
  br label %b.new.buf.len2887

b.byte_ok907:                                     ; preds = %abort.dead909, %choice.else855
  %b.byte.i8910 = trunc i64 %var.load903 to i8
  %b.len911 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 0
  %b.len912 = load i64, ptr %b.len911, align 8
  %b.cap913 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 2
  %b.cap914 = load i64, ptr %b.cap913, align 8
  %b.data915 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 1
  %b.data916 = load ptr, ptr %b.data915, align 8
  %b.needs.grow917 = icmp eq i64 %b.len912, %b.cap914
  br i1 %b.needs.grow917, label %b.grow918, label %b.nogrow919

b.byte_err908:                                    ; preds = %choice.else855
  %42 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead909:                                    ; No predecessors!
  br label %b.byte_ok907

b.grow918:                                        ; preds = %b.byte_ok907
  %b.cap2921 = mul i64 %b.cap914, 2
  %b.cap.small922 = icmp slt i64 %b.cap2921, 16
  %b.new.cap923 = select i1 %b.cap.small922, i64 16, i64 %b.cap2921
  %b.new.buf.len924 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap923, i64 1)
  %sum925 = extractvalue { i64, i1 } %b.new.buf.len924, 0
  %ovf926 = extractvalue { i64, i1 } %b.new.buf.len924, 1
  br i1 %ovf926, label %str_overflow_abort928, label %b.new.buf.len927

b.nogrow919:                                      ; preds = %b.byte_ok907
  br label %b.push_done920

b.push_done920:                                   ; preds = %b.nogrow919, %b.new.buf.len927
  %b.cur.data935 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 1
  %b.cur.data936 = load ptr, ptr %b.cur.data935, align 8
  %b.cur.len937 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 0
  %b.cur.len938 = load i64, ptr %b.cur.len937, align 8
  %b.byte.gep939 = getelementptr i8, ptr %b.cur.data936, i64 %b.cur.len938
  store i8 %b.byte.i8910, ptr %b.byte.gep939, align 1
  %b.next.len940 = add i64 %b.cur.len938, 1
  %b.nul941 = getelementptr i8, ptr %b.cur.data936, i64 %b.next.len940
  store i8 0, ptr %b.nul941, align 1
  %b.len.gep942 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 0
  store i64 %b.next.len940, ptr %b.len.gep942, align 8
  store i1 true, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load943 = load i64, ptr %"var.i'", align 8
  %addtmp944 = add i64 %var.load943, 1
  store i64 %addtmp944, ptr %"var.i'", align 8
  br label %choice.exit856

b.new.buf.len927:                                 ; preds = %abort.dead929, %b.grow918
  %arena.cur930 = call ptr @dva_arena_current()
  %b.new.buf931 = call ptr @dva_arena_alloc(ptr %arena.cur930, i64 %sum925)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf931, ptr align 1 %b.data916, i64 %b.len912, i1 false)
  %b.grow.nul932 = getelementptr i8, ptr %b.new.buf931, i64 %b.len912
  store i8 0, ptr %b.grow.nul932, align 1
  %b.new.data.gep933 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 1
  store ptr %b.new.buf931, ptr %b.new.data.gep933, align 8
  %b.new.cap.gep934 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 2
  store i64 %b.new.cap923, ptr %b.new.cap.gep934, align 8
  br label %b.push_done920

str_overflow_abort928:                            ; preds = %b.grow918
  %43 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead929:                                    ; No predecessors!
  br label %b.new.buf.len927

choice.exit946:                                   ; preds = %choice.next948, %choice.case947
  %choice.res952 = phi i1 [ true, %choice.case947 ], [ false, %choice.next948 ]
  br i1 %choice.res952, label %choice.then953, label %choice.else954

choice.case947:                                   ; preds = %choice.else848
  br label %choice.exit946

choice.next948:                                   ; preds = %choice.else848
  br label %choice.exit946

choice.then953:                                   ; preds = %choice.exit946
  %b.load956 = load ptr, ptr %var.b, align 8
  %var.load957 = load i64, ptr %var.c, align 8
  %b.b.ge0958 = icmp sge i64 %var.load957, 0
  %b.b.le255959 = icmp sle i64 %var.load957, 255
  %b.byte.range960 = and i1 %b.b.ge0958, %b.b.le255959
  br i1 %b.byte.range960, label %b.byte_ok961, label %b.byte_err962

choice.else954:                                   ; preds = %choice.exit946
  %var.load1060 = load i1, ptr %var.has_lead_guard, align 1
  br i1 %var.load1060, label %and.561.then, label %and.561.else

choice.exit955:                                   ; preds = %choice.exit1067, %choice.exit1022
  br label %choice.exit849

b.byte_ok961:                                     ; preds = %abort.dead963, %choice.then953
  %b.byte.i8964 = trunc i64 %var.load957 to i8
  %b.len965 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load956, i32 0, i32 0
  %b.len966 = load i64, ptr %b.len965, align 8
  %b.cap967 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load956, i32 0, i32 2
  %b.cap968 = load i64, ptr %b.cap967, align 8
  %b.data969 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load956, i32 0, i32 1
  %b.data970 = load ptr, ptr %b.data969, align 8
  %b.needs.grow971 = icmp eq i64 %b.len966, %b.cap968
  br i1 %b.needs.grow971, label %b.grow972, label %b.nogrow973

b.byte_err962:                                    ; preds = %choice.then953
  %44 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead963:                                    ; No predecessors!
  br label %b.byte_ok961

b.grow972:                                        ; preds = %b.byte_ok961
  %b.cap2975 = mul i64 %b.cap968, 2
  %b.cap.small976 = icmp slt i64 %b.cap2975, 16
  %b.new.cap977 = select i1 %b.cap.small976, i64 16, i64 %b.cap2975
  %b.new.buf.len978 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap977, i64 1)
  %sum979 = extractvalue { i64, i1 } %b.new.buf.len978, 0
  %ovf980 = extractvalue { i64, i1 } %b.new.buf.len978, 1
  br i1 %ovf980, label %str_overflow_abort982, label %b.new.buf.len981

b.nogrow973:                                      ; preds = %b.byte_ok961
  br label %b.push_done974

b.push_done974:                                   ; preds = %b.nogrow973, %b.new.buf.len981
  %b.cur.data989 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load956, i32 0, i32 1
  %b.cur.data990 = load ptr, ptr %b.cur.data989, align 8
  %b.cur.len991 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load956, i32 0, i32 0
  %b.cur.len992 = load i64, ptr %b.cur.len991, align 8
  %b.byte.gep993 = getelementptr i8, ptr %b.cur.data990, i64 %b.cur.len992
  store i8 %b.byte.i8964, ptr %b.byte.gep993, align 1
  %b.next.len994 = add i64 %b.cur.len992, 1
  %b.nul995 = getelementptr i8, ptr %b.cur.data990, i64 %b.next.len994
  store i8 0, ptr %b.nul995, align 1
  %b.len.gep996 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load956, i32 0, i32 0
  store i64 %b.next.len994, ptr %b.len.gep996, align 8
  %var.load997 = load i64, ptr %"var.i'", align 8
  %addtmp998 = add i64 %var.load997, 1
  %var.load999 = load i64, ptr %var.n, align 8
  %cmptmp1000 = icmp slt i64 %addtmp998, %var.load999
  br i1 %cmptmp1000, label %and.559.then, label %and.559.else

b.new.buf.len981:                                 ; preds = %abort.dead983, %b.grow972
  %arena.cur984 = call ptr @dva_arena_current()
  %b.new.buf985 = call ptr @dva_arena_alloc(ptr %arena.cur984, i64 %sum979)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf985, ptr align 1 %b.data970, i64 %b.len966, i1 false)
  %b.grow.nul986 = getelementptr i8, ptr %b.new.buf985, i64 %b.len966
  store i8 0, ptr %b.grow.nul986, align 1
  %b.new.data.gep987 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load956, i32 0, i32 1
  store ptr %b.new.buf985, ptr %b.new.data.gep987, align 8
  %b.new.cap.gep988 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load956, i32 0, i32 2
  store i64 %b.new.cap977, ptr %b.new.cap.gep988, align 8
  br label %b.push_done974

str_overflow_abort982:                            ; preds = %b.grow972
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead983:                                    ; No predecessors!
  br label %b.new.buf.len981

and.559.then:                                     ; preds = %b.push_done974
  %var.load1001 = load i64, ptr %var.c1, align 8
  %val.match1005 = icmp eq i64 %var.load1001, 32
  %val.match1006 = icmp eq i64 %var.load1001, 9
  %case.or1007 = or i1 %val.match1005, %val.match1006
  %val.match1008 = icmp eq i64 %var.load1001, 41
  %case.or1009 = or i1 %case.or1007, %val.match1008
  %val.match1010 = icmp eq i64 %var.load1001, 93
  %case.or1011 = or i1 %case.or1009, %val.match1010
  %val.match1012 = icmp eq i64 %var.load1001, 125
  %case.or1013 = or i1 %case.or1011, %val.match1012
  %val.match1014 = icmp eq i64 %var.load1001, 44
  %case.or1015 = or i1 %case.or1013, %val.match1014
  %val.match1016 = icmp eq i64 %var.load1001, 59
  %case.or1017 = or i1 %case.or1015, %val.match1016
  br i1 %case.or1017, label %choice.case1003, label %choice.next1004

and.559.else:                                     ; preds = %b.push_done974
  br label %and.559.exit

and.559.exit:                                     ; preds = %and.559.else, %choice.exit1002
  %and.559.phi = phi i1 [ %nottmp1019, %choice.exit1002 ], [ %cmptmp1000, %and.559.else ]
  store i1 %and.559.phi, ptr %var.need_sp, align 1
  %var.load1020 = load i1, ptr %var.need_sp, align 1
  br i1 %var.load1020, label %choice.then1021, label %choice.exit1022

choice.exit1002:                                  ; preds = %choice.next1004, %choice.case1003
  %choice.res1018 = phi i1 [ true, %choice.case1003 ], [ false, %choice.next1004 ]
  %nottmp1019 = xor i1 %choice.res1018, true
  br label %and.559.exit

choice.case1003:                                  ; preds = %and.559.then
  br label %choice.exit1002

choice.next1004:                                  ; preds = %and.559.then
  br label %choice.exit1002

choice.then1021:                                  ; preds = %and.559.exit
  %b.load1023 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1023, i32 0, i32 0
  %b.rn.cur.len1024 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1024, i64 1)
  %sum1025 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf1026 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf1026, label %str_overflow_abort1028, label %b.rn.new.len1027

choice.exit1022:                                  ; preds = %br.done.560, %and.559.exit
  %var.load1058 = load i64, ptr %"var.i'", align 8
  %addtmp1059 = add i64 %var.load1058, 1
  store i64 %addtmp1059, ptr %"var.i'", align 8
  br label %choice.exit955

b.rn.new.len1027:                                 ; preds = %abort.dead1029, %choice.then1021
  %b.cap1030 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1023, i32 0, i32 2
  %b.cap1031 = load i64, ptr %b.cap1030, align 8
  %b.need.grow1032 = icmp slt i64 %b.cap1031, %sum1025
  br i1 %b.need.grow1032, label %b.grow21033, label %b.nogrow21034

str_overflow_abort1028:                           ; preds = %choice.then1021
  %46 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead1029:                                   ; No predecessors!
  br label %b.rn.new.len1027

b.grow21033:                                      ; preds = %b.rn.new.len1027
  %b.cap21036 = mul i64 %b.cap1031, 2
  %b.cap.small1037 = icmp slt i64 %b.cap21036, 16
  %b.cap.grow1038 = select i1 %b.cap.small1037, i64 16, i64 %b.cap21036
  %b.cap.need1039 = icmp slt i64 %b.cap.grow1038, %sum1025
  %b.new.cap1040 = select i1 %b.cap.need1039, i64 %sum1025, i64 %b.cap.grow1038
  %b.cur.len21041 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1023, i32 0, i32 0
  %b.cur.len21042 = load i64, ptr %b.cur.len21041, align 8
  %b.cur.data21043 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1023, i32 0, i32 1
  %b.cur.data21044 = load ptr, ptr %b.cur.data21043, align 8
  %b.new.buf.len21045 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1040, i64 1)
  %sum1046 = extractvalue { i64, i1 } %b.new.buf.len21045, 0
  %ovf1047 = extractvalue { i64, i1 } %b.new.buf.len21045, 1
  br i1 %ovf1047, label %str_overflow_abort1049, label %b.new.buf.len21048

b.nogrow21034:                                    ; preds = %b.rn.new.len1027
  br label %b.grow_done1035

b.grow_done1035:                                  ; preds = %b.nogrow21034, %b.new.buf.len21048
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1023, i32 0, i32 1
  %b.rn.data1056 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data1056, i64 %b.rn.cur.len1024
  br i1 true, label %br.b1.560, label %br.c2.560

b.new.buf.len21048:                               ; preds = %abort.dead1050, %b.grow21033
  %arena.cur1051 = call ptr @dva_arena_current()
  %b.new.buf21052 = call ptr @dva_arena_alloc(ptr %arena.cur1051, i64 %sum1046)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21052, ptr align 1 %b.cur.data21044, i64 %b.cur.len21042, i1 false)
  %b.grow2.nul1053 = getelementptr i8, ptr %b.new.buf21052, i64 %b.cur.len21042
  store i8 0, ptr %b.grow2.nul1053, align 1
  %b.new.data2.gep1054 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1023, i32 0, i32 1
  store ptr %b.new.buf21052, ptr %b.new.data2.gep1054, align 8
  %b.new.cap2.gep1055 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1023, i32 0, i32 2
  store i64 %b.new.cap1040, ptr %b.new.cap2.gep1055, align 8
  br label %b.grow_done1035

str_overflow_abort1049:                           ; preds = %b.grow21033
  %47 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead1050:                                   ; No predecessors!
  br label %b.new.buf.len21048

br.b1.560:                                        ; preds = %b.grow_done1035
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.560

br.c2.560:                                        ; preds = %b.grow_done1035
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
  %br.nul = getelementptr i8, ptr %b.rn.data1056, i64 %sum1025
  store i8 0, ptr %br.nul, align 1
  %b.len.gep1057 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1023, i32 0, i32 0
  store i64 %sum1025, ptr %b.len.gep1057, align 8
  br label %choice.exit1022

and.561.then:                                     ; preds = %choice.else954
  %var.load1061 = load i1, ptr %"var.guard_closed'", align 1
  %nottmp1062 = xor i1 %var.load1061, true
  br label %and.561.exit

and.561.else:                                     ; preds = %choice.else954
  br label %and.561.exit

and.561.exit:                                     ; preds = %and.561.else, %and.561.then
  %and.561.phi = phi i1 [ %nottmp1062, %and.561.then ], [ %var.load1060, %and.561.else ]
  br i1 %and.561.phi, label %and.562.then, label %and.562.else

and.562.then:                                     ; preds = %and.561.exit
  %var.load1063 = load i64, ptr %var.c, align 8
  %cmptmp1064 = icmp eq i64 %var.load1063, 91
  br label %and.562.exit

and.562.else:                                     ; preds = %and.561.exit
  br label %and.562.exit

and.562.exit:                                     ; preds = %and.562.else, %and.562.then
  %and.562.phi = phi i1 [ %cmptmp1064, %and.562.then ], [ %and.561.phi, %and.562.else ]
  br i1 %and.562.phi, label %choice.then1065, label %choice.else1066

choice.then1065:                                  ; preds = %and.562.exit
  %var.load1068 = load i64, ptr %"var.bracket_depth'", align 8
  %addtmp1069 = add i64 %var.load1068, 1
  store i64 %addtmp1069, ptr %"var.bracket_depth'", align 8
  %b.load1070 = load ptr, ptr %var.b, align 8
  %var.load1071 = load i64, ptr %var.c, align 8
  %b.b.ge01072 = icmp sge i64 %var.load1071, 0
  %b.b.le2551073 = icmp sle i64 %var.load1071, 255
  %b.byte.range1074 = and i1 %b.b.ge01072, %b.b.le2551073
  br i1 %b.byte.range1074, label %b.byte_ok1075, label %b.byte_err1076

choice.else1066:                                  ; preds = %and.562.exit
  %var.load1113 = load i1, ptr %var.has_lead_guard, align 1
  br i1 %var.load1113, label %and.563.then, label %and.563.else

choice.exit1067:                                  ; preds = %choice.exit1120, %b.push_done1088
  br label %choice.exit955

b.byte_ok1075:                                    ; preds = %abort.dead1077, %choice.then1065
  %b.byte.i81078 = trunc i64 %var.load1071 to i8
  %b.len1079 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1070, i32 0, i32 0
  %b.len1080 = load i64, ptr %b.len1079, align 8
  %b.cap1081 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1070, i32 0, i32 2
  %b.cap1082 = load i64, ptr %b.cap1081, align 8
  %b.data1083 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1070, i32 0, i32 1
  %b.data1084 = load ptr, ptr %b.data1083, align 8
  %b.needs.grow1085 = icmp eq i64 %b.len1080, %b.cap1082
  br i1 %b.needs.grow1085, label %b.grow1086, label %b.nogrow1087

b.byte_err1076:                                   ; preds = %choice.then1065
  %48 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead1077:                                   ; No predecessors!
  br label %b.byte_ok1075

b.grow1086:                                       ; preds = %b.byte_ok1075
  %b.cap21089 = mul i64 %b.cap1082, 2
  %b.cap.small1090 = icmp slt i64 %b.cap21089, 16
  %b.new.cap1091 = select i1 %b.cap.small1090, i64 16, i64 %b.cap21089
  %b.new.buf.len1092 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1091, i64 1)
  %sum1093 = extractvalue { i64, i1 } %b.new.buf.len1092, 0
  %ovf1094 = extractvalue { i64, i1 } %b.new.buf.len1092, 1
  br i1 %ovf1094, label %str_overflow_abort1096, label %b.new.buf.len1095

b.nogrow1087:                                     ; preds = %b.byte_ok1075
  br label %b.push_done1088

b.push_done1088:                                  ; preds = %b.nogrow1087, %b.new.buf.len1095
  %b.cur.data1103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1070, i32 0, i32 1
  %b.cur.data1104 = load ptr, ptr %b.cur.data1103, align 8
  %b.cur.len1105 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1070, i32 0, i32 0
  %b.cur.len1106 = load i64, ptr %b.cur.len1105, align 8
  %b.byte.gep1107 = getelementptr i8, ptr %b.cur.data1104, i64 %b.cur.len1106
  store i8 %b.byte.i81078, ptr %b.byte.gep1107, align 1
  %b.next.len1108 = add i64 %b.cur.len1106, 1
  %b.nul1109 = getelementptr i8, ptr %b.cur.data1104, i64 %b.next.len1108
  store i8 0, ptr %b.nul1109, align 1
  %b.len.gep1110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1070, i32 0, i32 0
  store i64 %b.next.len1108, ptr %b.len.gep1110, align 8
  %var.load1111 = load i64, ptr %"var.i'", align 8
  %addtmp1112 = add i64 %var.load1111, 1
  store i64 %addtmp1112, ptr %"var.i'", align 8
  br label %choice.exit1067

b.new.buf.len1095:                                ; preds = %abort.dead1097, %b.grow1086
  %arena.cur1098 = call ptr @dva_arena_current()
  %b.new.buf1099 = call ptr @dva_arena_alloc(ptr %arena.cur1098, i64 %sum1093)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1099, ptr align 1 %b.data1084, i64 %b.len1080, i1 false)
  %b.grow.nul1100 = getelementptr i8, ptr %b.new.buf1099, i64 %b.len1080
  store i8 0, ptr %b.grow.nul1100, align 1
  %b.new.data.gep1101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1070, i32 0, i32 1
  store ptr %b.new.buf1099, ptr %b.new.data.gep1101, align 8
  %b.new.cap.gep1102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1070, i32 0, i32 2
  store i64 %b.new.cap1091, ptr %b.new.cap.gep1102, align 8
  br label %b.push_done1088

str_overflow_abort1096:                           ; preds = %b.grow1086
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead1097:                                   ; No predecessors!
  br label %b.new.buf.len1095

and.563.then:                                     ; preds = %choice.else1066
  %var.load1114 = load i1, ptr %"var.guard_closed'", align 1
  %nottmp1115 = xor i1 %var.load1114, true
  br label %and.563.exit

and.563.else:                                     ; preds = %choice.else1066
  br label %and.563.exit

and.563.exit:                                     ; preds = %and.563.else, %and.563.then
  %and.563.phi = phi i1 [ %nottmp1115, %and.563.then ], [ %var.load1113, %and.563.else ]
  br i1 %and.563.phi, label %and.564.then, label %and.564.else

and.564.then:                                     ; preds = %and.563.exit
  %var.load1116 = load i64, ptr %var.c, align 8
  %cmptmp1117 = icmp eq i64 %var.load1116, 93
  br label %and.564.exit

and.564.else:                                     ; preds = %and.563.exit
  br label %and.564.exit

and.564.exit:                                     ; preds = %and.564.else, %and.564.then
  %and.564.phi = phi i1 [ %cmptmp1117, %and.564.then ], [ %and.563.phi, %and.564.else ]
  br i1 %and.564.phi, label %choice.then1118, label %choice.else1119

choice.then1118:                                  ; preds = %and.564.exit
  %var.load1121 = load i64, ptr %"var.bracket_depth'", align 8
  %subtmp1122 = sub i64 %var.load1121, 1
  store i64 %subtmp1122, ptr %"var.bracket_depth'", align 8
  %b.load1123 = load ptr, ptr %var.b, align 8
  %var.load1124 = load i64, ptr %var.c, align 8
  %b.b.ge01125 = icmp sge i64 %var.load1124, 0
  %b.b.le2551126 = icmp sle i64 %var.load1124, 255
  %b.byte.range1127 = and i1 %b.b.ge01125, %b.b.le2551126
  br i1 %b.byte.range1127, label %b.byte_ok1128, label %b.byte_err1129

choice.else1119:                                  ; preds = %and.564.exit
  %var.load1243 = load i64, ptr %"var.i'", align 8
  %cmptmp1244 = icmp sgt i64 %var.load1243, 0
  br i1 %cmptmp1244, label %choice.then1245, label %choice.else1246

choice.exit1120:                                  ; preds = %choice.exit1307, %choice.exit1167
  br label %choice.exit1067

b.byte_ok1128:                                    ; preds = %abort.dead1130, %choice.then1118
  %b.byte.i81131 = trunc i64 %var.load1124 to i8
  %b.len1132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1123, i32 0, i32 0
  %b.len1133 = load i64, ptr %b.len1132, align 8
  %b.cap1134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1123, i32 0, i32 2
  %b.cap1135 = load i64, ptr %b.cap1134, align 8
  %b.data1136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1123, i32 0, i32 1
  %b.data1137 = load ptr, ptr %b.data1136, align 8
  %b.needs.grow1138 = icmp eq i64 %b.len1133, %b.cap1135
  br i1 %b.needs.grow1138, label %b.grow1139, label %b.nogrow1140

b.byte_err1129:                                   ; preds = %choice.then1118
  %50 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead1130:                                   ; No predecessors!
  br label %b.byte_ok1128

b.grow1139:                                       ; preds = %b.byte_ok1128
  %b.cap21142 = mul i64 %b.cap1135, 2
  %b.cap.small1143 = icmp slt i64 %b.cap21142, 16
  %b.new.cap1144 = select i1 %b.cap.small1143, i64 16, i64 %b.cap21142
  %b.new.buf.len1145 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1144, i64 1)
  %sum1146 = extractvalue { i64, i1 } %b.new.buf.len1145, 0
  %ovf1147 = extractvalue { i64, i1 } %b.new.buf.len1145, 1
  br i1 %ovf1147, label %str_overflow_abort1149, label %b.new.buf.len1148

b.nogrow1140:                                     ; preds = %b.byte_ok1128
  br label %b.push_done1141

b.push_done1141:                                  ; preds = %b.nogrow1140, %b.new.buf.len1148
  %b.cur.data1156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1123, i32 0, i32 1
  %b.cur.data1157 = load ptr, ptr %b.cur.data1156, align 8
  %b.cur.len1158 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1123, i32 0, i32 0
  %b.cur.len1159 = load i64, ptr %b.cur.len1158, align 8
  %b.byte.gep1160 = getelementptr i8, ptr %b.cur.data1157, i64 %b.cur.len1159
  store i8 %b.byte.i81131, ptr %b.byte.gep1160, align 1
  %b.next.len1161 = add i64 %b.cur.len1159, 1
  %b.nul1162 = getelementptr i8, ptr %b.cur.data1157, i64 %b.next.len1161
  store i8 0, ptr %b.nul1162, align 1
  %b.len.gep1163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1123, i32 0, i32 0
  store i64 %b.next.len1161, ptr %b.len.gep1163, align 8
  %var.load1164 = load i64, ptr %"var.bracket_depth'", align 8
  %cmptmp1165 = icmp sle i64 %var.load1164, 0
  br i1 %cmptmp1165, label %choice.then1166, label %choice.exit1167

b.new.buf.len1148:                                ; preds = %abort.dead1150, %b.grow1139
  %arena.cur1151 = call ptr @dva_arena_current()
  %b.new.buf1152 = call ptr @dva_arena_alloc(ptr %arena.cur1151, i64 %sum1146)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1152, ptr align 1 %b.data1137, i64 %b.len1133, i1 false)
  %b.grow.nul1153 = getelementptr i8, ptr %b.new.buf1152, i64 %b.len1133
  store i8 0, ptr %b.grow.nul1153, align 1
  %b.new.data.gep1154 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1123, i32 0, i32 1
  store ptr %b.new.buf1152, ptr %b.new.data.gep1154, align 8
  %b.new.cap.gep1155 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1123, i32 0, i32 2
  store i64 %b.new.cap1144, ptr %b.new.cap.gep1155, align 8
  br label %b.push_done1141

str_overflow_abort1149:                           ; preds = %b.grow1139
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead1150:                                   ; No predecessors!
  br label %b.new.buf.len1148

choice.then1166:                                  ; preds = %b.push_done1141
  store i1 true, ptr %"var.guard_closed'", align 1
  %var.load1168 = load i64, ptr %"var.i'", align 8
  %addtmp1169 = add i64 %var.load1168, 1
  %var.load1170 = load i64, ptr %var.n, align 8
  %cmptmp1171 = icmp slt i64 %addtmp1169, %var.load1170
  br i1 %cmptmp1171, label %and.565.then, label %and.565.else

choice.exit1167:                                  ; preds = %choice.exit1194, %b.push_done1141
  %var.load1241 = load i64, ptr %"var.i'", align 8
  %addtmp1242 = add i64 %var.load1241, 1
  store i64 %addtmp1242, ptr %"var.i'", align 8
  br label %choice.exit1120

and.565.then:                                     ; preds = %choice.then1166
  %var.load1172 = load i64, ptr %var.c1, align 8
  %val.match1176 = icmp eq i64 %var.load1172, 32
  %val.match1177 = icmp eq i64 %var.load1172, 9
  %case.or1178 = or i1 %val.match1176, %val.match1177
  %val.match1179 = icmp eq i64 %var.load1172, 41
  %case.or1180 = or i1 %case.or1178, %val.match1179
  %val.match1181 = icmp eq i64 %var.load1172, 93
  %case.or1182 = or i1 %case.or1180, %val.match1181
  %val.match1183 = icmp eq i64 %var.load1172, 125
  %case.or1184 = or i1 %case.or1182, %val.match1183
  %val.match1185 = icmp eq i64 %var.load1172, 44
  %case.or1186 = or i1 %case.or1184, %val.match1185
  %val.match1187 = icmp eq i64 %var.load1172, 59
  %case.or1188 = or i1 %case.or1186, %val.match1187
  %val.match1189 = icmp eq i64 %var.load1172, 46
  %case.or1190 = or i1 %case.or1188, %val.match1189
  br i1 %case.or1190, label %choice.case1174, label %choice.next1175

and.565.else:                                     ; preds = %choice.then1166
  br label %and.565.exit

and.565.exit:                                     ; preds = %and.565.else, %choice.exit1173
  %and.565.phi = phi i1 [ %nottmp1192, %choice.exit1173 ], [ %cmptmp1171, %and.565.else ]
  br i1 %and.565.phi, label %choice.then1193, label %choice.exit1194

choice.exit1173:                                  ; preds = %choice.next1175, %choice.case1174
  %choice.res1191 = phi i1 [ true, %choice.case1174 ], [ false, %choice.next1175 ]
  %nottmp1192 = xor i1 %choice.res1191, true
  br label %and.565.exit

choice.case1174:                                  ; preds = %and.565.then
  br label %choice.exit1173

choice.next1175:                                  ; preds = %and.565.then
  br label %choice.exit1173

choice.then1193:                                  ; preds = %and.565.exit
  %b.load1195 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len1196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1195, i32 0, i32 0
  %b.rn.cur.len1197 = load i64, ptr %b.rn.cur.len1196, align 8
  %b.rn.new.len1198 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1197, i64 1)
  %sum1199 = extractvalue { i64, i1 } %b.rn.new.len1198, 0
  %ovf1200 = extractvalue { i64, i1 } %b.rn.new.len1198, 1
  br i1 %ovf1200, label %str_overflow_abort1202, label %b.rn.new.len1201

choice.exit1194:                                  ; preds = %br.done.566, %and.565.exit
  br label %choice.exit1167

b.rn.new.len1201:                                 ; preds = %abort.dead1203, %choice.then1193
  %b.cap1204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1195, i32 0, i32 2
  %b.cap1205 = load i64, ptr %b.cap1204, align 8
  %b.need.grow1206 = icmp slt i64 %b.cap1205, %sum1199
  br i1 %b.need.grow1206, label %b.grow21207, label %b.nogrow21208

str_overflow_abort1202:                           ; preds = %choice.then1193
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead1203:                                   ; No predecessors!
  br label %b.rn.new.len1201

b.grow21207:                                      ; preds = %b.rn.new.len1201
  %b.cap21210 = mul i64 %b.cap1205, 2
  %b.cap.small1211 = icmp slt i64 %b.cap21210, 16
  %b.cap.grow1212 = select i1 %b.cap.small1211, i64 16, i64 %b.cap21210
  %b.cap.need1213 = icmp slt i64 %b.cap.grow1212, %sum1199
  %b.new.cap1214 = select i1 %b.cap.need1213, i64 %sum1199, i64 %b.cap.grow1212
  %b.cur.len21215 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1195, i32 0, i32 0
  %b.cur.len21216 = load i64, ptr %b.cur.len21215, align 8
  %b.cur.data21217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1195, i32 0, i32 1
  %b.cur.data21218 = load ptr, ptr %b.cur.data21217, align 8
  %b.new.buf.len21219 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1214, i64 1)
  %sum1220 = extractvalue { i64, i1 } %b.new.buf.len21219, 0
  %ovf1221 = extractvalue { i64, i1 } %b.new.buf.len21219, 1
  br i1 %ovf1221, label %str_overflow_abort1223, label %b.new.buf.len21222

b.nogrow21208:                                    ; preds = %b.rn.new.len1201
  br label %b.grow_done1209

b.grow_done1209:                                  ; preds = %b.nogrow21208, %b.new.buf.len21222
  %b.rn.data1230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1195, i32 0, i32 1
  %b.rn.data1231 = load ptr, ptr %b.rn.data1230, align 8
  %b.rn.dst1232 = getelementptr i8, ptr %b.rn.data1231, i64 %b.rn.cur.len1197
  br i1 true, label %br.b1.566, label %br.c2.566

b.new.buf.len21222:                               ; preds = %abort.dead1224, %b.grow21207
  %arena.cur1225 = call ptr @dva_arena_current()
  %b.new.buf21226 = call ptr @dva_arena_alloc(ptr %arena.cur1225, i64 %sum1220)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21226, ptr align 1 %b.cur.data21218, i64 %b.cur.len21216, i1 false)
  %b.grow2.nul1227 = getelementptr i8, ptr %b.new.buf21226, i64 %b.cur.len21216
  store i8 0, ptr %b.grow2.nul1227, align 1
  %b.new.data2.gep1228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1195, i32 0, i32 1
  store ptr %b.new.buf21226, ptr %b.new.data2.gep1228, align 8
  %b.new.cap2.gep1229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1195, i32 0, i32 2
  store i64 %b.new.cap1214, ptr %b.new.cap2.gep1229, align 8
  br label %b.grow_done1209

str_overflow_abort1223:                           ; preds = %b.grow21207
  %53 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead1224:                                   ; No predecessors!
  br label %b.new.buf.len21222

br.b1.566:                                        ; preds = %b.grow_done1209
  store i8 32, ptr %b.rn.dst1232, align 1
  br label %br.done.566

br.c2.566:                                        ; preds = %b.grow_done1209
  br i1 true, label %br.b2.566, label %br.c3.566

br.b2.566:                                        ; preds = %br.c2.566
  store i8 -64, ptr %b.rn.dst1232, align 1
  %br.dst11233 = getelementptr i8, ptr %b.rn.dst1232, i64 1
  store i8 -96, ptr %br.dst11233, align 1
  br label %br.done.566

br.c3.566:                                        ; preds = %br.c2.566
  br i1 true, label %br.b3.566, label %br.b4.566

br.b3.566:                                        ; preds = %br.c3.566
  store i8 -32, ptr %b.rn.dst1232, align 1
  %br.dst1.31234 = getelementptr i8, ptr %b.rn.dst1232, i64 1
  store i8 -128, ptr %br.dst1.31234, align 1
  %br.dst2.31235 = getelementptr i8, ptr %b.rn.dst1232, i64 2
  store i8 -96, ptr %br.dst2.31235, align 1
  br label %br.done.566

br.b4.566:                                        ; preds = %br.c3.566
  store i8 -16, ptr %b.rn.dst1232, align 1
  %br.dst1.41236 = getelementptr i8, ptr %b.rn.dst1232, i64 1
  store i8 -128, ptr %br.dst1.41236, align 1
  %br.dst2.41237 = getelementptr i8, ptr %b.rn.dst1232, i64 2
  store i8 -128, ptr %br.dst2.41237, align 1
  %br.dst3.41238 = getelementptr i8, ptr %b.rn.dst1232, i64 3
  store i8 -96, ptr %br.dst3.41238, align 1
  br label %br.done.566

br.done.566:                                      ; preds = %br.b4.566, %br.b3.566, %br.b2.566, %br.b1.566
  %br.nul1239 = getelementptr i8, ptr %b.rn.data1231, i64 %sum1199
  store i8 0, ptr %br.nul1239, align 1
  %b.len.gep1240 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1195, i32 0, i32 0
  store i64 %sum1199, ptr %b.len.gep1240, align 8
  br label %choice.exit1194

choice.then1245:                                  ; preds = %choice.else1119
  %var.load1248 = load ptr, ptr %var.body, align 8
  %s.read.len1249 = getelementptr inbounds { i64, ptr }, ptr %var.load1248, i32 0, i32 0
  %s.read.len1250 = load i64, ptr %s.read.len1249, align 8
  %s.read.len1251 = and i64 %s.read.len1250, 281474976710655
  %s.read.data1252 = getelementptr inbounds { i64, ptr }, ptr %var.load1248, i32 0, i32 1
  %s.read.data1253 = load ptr, ptr %s.read.data1252, align 8
  %var.load1254 = load i64, ptr %"var.i'", align 8
  %subtmp1255 = sub i64 %var.load1254, 1
  %idx.neg1256 = icmp slt i64 %subtmp1255, 0
  br i1 %idx.neg1256, label %idx_oob1259, label %idx_big_check1257

choice.else1246:                                  ; preds = %choice.else1119
  br label %choice.exit1247

choice.exit1247:                                  ; preds = %choice.else1246, %idx_ok1258
  %choice.res1265 = phi i64 [ %s.byte.val1264, %idx_ok1258 ], [ 0, %choice.else1246 ]
  store i64 %choice.res1265, ptr %var.prev_c, align 8
  %var.load1266 = load i64, ptr %var.c, align 8
  %cmptmp1267 = icmp eq i64 %var.load1266, 58
  br i1 %cmptmp1267, label %and.567.then, label %and.567.else

idx_big_check1257:                                ; preds = %choice.then1245
  %idx.big1260 = icmp sge i64 %subtmp1255, %s.read.len1251
  br i1 %idx.big1260, label %idx_oob1259, label %idx_ok1258

idx_ok1258:                                       ; preds = %abort.dead1261, %idx_big_check1257
  %s.byte.gep1262 = getelementptr i8, ptr %s.read.data1253, i64 %subtmp1255
  %s.byte1263 = load i8, ptr %s.byte.gep1262, align 1
  %s.byte.val1264 = zext i8 %s.byte1263 to i64
  br label %choice.exit1247

idx_oob1259:                                      ; preds = %idx_big_check1257, %choice.then1245
  %54 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead1261:                                   ; No predecessors!
  br label %idx_ok1258

and.567.then:                                     ; preds = %choice.exit1247
  %var.load1268 = load i64, ptr %var.prev_c, align 8
  %val.match1272 = icmp eq i64 %var.load1268, 58
  %val.match1273 = icmp eq i64 %var.load1268, 45
  %case.or1274 = or i1 %val.match1272, %val.match1273
  %val.match1275 = icmp eq i64 %var.load1268, 32
  %case.or1276 = or i1 %case.or1274, %val.match1275
  %val.match1277 = icmp eq i64 %var.load1268, 9
  %case.or1278 = or i1 %case.or1276, %val.match1277
  br i1 %case.or1278, label %choice.case1270, label %choice.next1271

and.567.else:                                     ; preds = %choice.exit1247
  br label %and.567.exit

and.567.exit:                                     ; preds = %and.567.else, %choice.exit1269
  %and.567.phi = phi i1 [ %nottmp1280, %choice.exit1269 ], [ %cmptmp1267, %and.567.else ]
  br i1 %and.567.phi, label %and.568.then, label %and.568.else

choice.exit1269:                                  ; preds = %choice.next1271, %choice.case1270
  %choice.res1279 = phi i1 [ true, %choice.case1270 ], [ false, %choice.next1271 ]
  %nottmp1280 = xor i1 %choice.res1279, true
  br label %and.567.exit

choice.case1270:                                  ; preds = %and.567.then
  br label %choice.exit1269

choice.next1271:                                  ; preds = %and.567.then
  br label %choice.exit1269

and.568.then:                                     ; preds = %and.567.exit
  %var.load1281 = load i64, ptr %var.c1, align 8
  %val.match1285 = icmp eq i64 %var.load1281, 58
  %val.match1286 = icmp eq i64 %var.load1281, 61
  %case.or1287 = or i1 %val.match1285, %val.match1286
  %val.match1288 = icmp eq i64 %var.load1281, 32
  %case.or1289 = or i1 %case.or1287, %val.match1288
  %val.match1290 = icmp eq i64 %var.load1281, 9
  %case.or1291 = or i1 %case.or1289, %val.match1290
  %val.match1292 = icmp eq i64 %var.load1281, 41
  %case.or1293 = or i1 %case.or1291, %val.match1292
  %val.match1294 = icmp eq i64 %var.load1281, 93
  %case.or1295 = or i1 %case.or1293, %val.match1294
  %val.match1296 = icmp eq i64 %var.load1281, 125
  %case.or1297 = or i1 %case.or1295, %val.match1296
  %val.match1298 = icmp eq i64 %var.load1281, 44
  %case.or1299 = or i1 %case.or1297, %val.match1298
  %val.match1300 = icmp eq i64 %var.load1281, 59
  %case.or1301 = or i1 %case.or1299, %val.match1300
  br i1 %case.or1301, label %choice.case1283, label %choice.next1284

and.568.else:                                     ; preds = %and.567.exit
  br label %and.568.exit

and.568.exit:                                     ; preds = %and.568.else, %choice.exit1282
  %and.568.phi = phi i1 [ %nottmp1303, %choice.exit1282 ], [ %and.567.phi, %and.568.else ]
  store i1 %and.568.phi, ptr %var.is_annot_colon, align 1
  %var.load1304 = load i1, ptr %var.is_annot_colon, align 1
  br i1 %var.load1304, label %choice.then1305, label %choice.else1306

choice.exit1282:                                  ; preds = %choice.next1284, %choice.case1283
  %choice.res1302 = phi i1 [ true, %choice.case1283 ], [ false, %choice.next1284 ]
  %nottmp1303 = xor i1 %choice.res1302, true
  br label %and.568.exit

choice.case1283:                                  ; preds = %and.568.then
  br label %choice.exit1282

choice.next1284:                                  ; preds = %and.568.then
  br label %choice.exit1282

choice.then1305:                                  ; preds = %and.568.exit
  %b.load1308 = load ptr, ptr %var.b, align 8
  %app.str.len1309 = load i64, ptr @str.11.struct, align 8
  %app.str.len1310 = and i64 %app.str.len1309, 281474976710655
  %app.str.data1311 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %b.app.cur.len1312 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1308, i32 0, i32 0
  %b.app.cur.len1313 = load i64, ptr %b.app.cur.len1312, align 8
  %b.app.new.len1314 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len1313, i64 %app.str.len1310)
  %sum1315 = extractvalue { i64, i1 } %b.app.new.len1314, 0
  %ovf1316 = extractvalue { i64, i1 } %b.app.new.len1314, 1
  br i1 %ovf1316, label %str_overflow_abort1318, label %b.app.new.len1317

choice.else1306:                                  ; preds = %and.568.exit
  %b.load1353 = load ptr, ptr %var.b, align 8
  %var.load1354 = load i64, ptr %var.c, align 8
  %b.b.ge01355 = icmp sge i64 %var.load1354, 0
  %b.b.le2551356 = icmp sle i64 %var.load1354, 255
  %b.byte.range1357 = and i1 %b.b.ge01355, %b.b.le2551356
  br i1 %b.byte.range1357, label %b.byte_ok1358, label %b.byte_err1359

choice.exit1307:                                  ; preds = %b.push_done1371, %b.grow_done1325
  br label %choice.exit1120

b.app.new.len1317:                                ; preds = %abort.dead1319, %choice.then1305
  %b.cap1320 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1308, i32 0, i32 2
  %b.cap1321 = load i64, ptr %b.cap1320, align 8
  %b.need.grow1322 = icmp slt i64 %b.cap1321, %sum1315
  br i1 %b.need.grow1322, label %b.grow21323, label %b.nogrow21324

str_overflow_abort1318:                           ; preds = %choice.then1305
  %55 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead1319:                                   ; No predecessors!
  br label %b.app.new.len1317

b.grow21323:                                      ; preds = %b.app.new.len1317
  %b.cap21326 = mul i64 %b.cap1321, 2
  %b.cap.small1327 = icmp slt i64 %b.cap21326, 16
  %b.cap.grow1328 = select i1 %b.cap.small1327, i64 16, i64 %b.cap21326
  %b.cap.need1329 = icmp slt i64 %b.cap.grow1328, %sum1315
  %b.new.cap1330 = select i1 %b.cap.need1329, i64 %sum1315, i64 %b.cap.grow1328
  %b.cur.len21331 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1308, i32 0, i32 0
  %b.cur.len21332 = load i64, ptr %b.cur.len21331, align 8
  %b.cur.data21333 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1308, i32 0, i32 1
  %b.cur.data21334 = load ptr, ptr %b.cur.data21333, align 8
  %b.new.buf.len21335 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1330, i64 1)
  %sum1336 = extractvalue { i64, i1 } %b.new.buf.len21335, 0
  %ovf1337 = extractvalue { i64, i1 } %b.new.buf.len21335, 1
  br i1 %ovf1337, label %str_overflow_abort1339, label %b.new.buf.len21338

b.nogrow21324:                                    ; preds = %b.app.new.len1317
  br label %b.grow_done1325

b.grow_done1325:                                  ; preds = %b.nogrow21324, %b.new.buf.len21338
  %b.app.data1346 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1308, i32 0, i32 1
  %b.app.data1347 = load ptr, ptr %b.app.data1346, align 8
  %b.app.dst1348 = getelementptr i8, ptr %b.app.data1347, i64 %b.app.cur.len1313
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1348, ptr align 1 %app.str.data1311, i64 %app.str.len1310, i1 false)
  %b.app.nul1349 = getelementptr i8, ptr %b.app.data1347, i64 %sum1315
  store i8 0, ptr %b.app.nul1349, align 1
  %b.len.gep1350 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1308, i32 0, i32 0
  store i64 %sum1315, ptr %b.len.gep1350, align 8
  %var.load1351 = load i64, ptr %"var.i'", align 8
  %addtmp1352 = add i64 %var.load1351, 1
  store i64 %addtmp1352, ptr %"var.i'", align 8
  br label %choice.exit1307

b.new.buf.len21338:                               ; preds = %abort.dead1340, %b.grow21323
  %arena.cur1341 = call ptr @dva_arena_current()
  %b.new.buf21342 = call ptr @dva_arena_alloc(ptr %arena.cur1341, i64 %sum1336)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21342, ptr align 1 %b.cur.data21334, i64 %b.cur.len21332, i1 false)
  %b.grow2.nul1343 = getelementptr i8, ptr %b.new.buf21342, i64 %b.cur.len21332
  store i8 0, ptr %b.grow2.nul1343, align 1
  %b.new.data2.gep1344 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1308, i32 0, i32 1
  store ptr %b.new.buf21342, ptr %b.new.data2.gep1344, align 8
  %b.new.cap2.gep1345 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1308, i32 0, i32 2
  store i64 %b.new.cap1330, ptr %b.new.cap2.gep1345, align 8
  br label %b.grow_done1325

str_overflow_abort1339:                           ; preds = %b.grow21323
  %56 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead1340:                                   ; No predecessors!
  br label %b.new.buf.len21338

b.byte_ok1358:                                    ; preds = %abort.dead1360, %choice.else1306
  %b.byte.i81361 = trunc i64 %var.load1354 to i8
  %b.len1362 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1353, i32 0, i32 0
  %b.len1363 = load i64, ptr %b.len1362, align 8
  %b.cap1364 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1353, i32 0, i32 2
  %b.cap1365 = load i64, ptr %b.cap1364, align 8
  %b.data1366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1353, i32 0, i32 1
  %b.data1367 = load ptr, ptr %b.data1366, align 8
  %b.needs.grow1368 = icmp eq i64 %b.len1363, %b.cap1365
  br i1 %b.needs.grow1368, label %b.grow1369, label %b.nogrow1370

b.byte_err1359:                                   ; preds = %choice.else1306
  %57 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead1360:                                   ; No predecessors!
  br label %b.byte_ok1358

b.grow1369:                                       ; preds = %b.byte_ok1358
  %b.cap21372 = mul i64 %b.cap1365, 2
  %b.cap.small1373 = icmp slt i64 %b.cap21372, 16
  %b.new.cap1374 = select i1 %b.cap.small1373, i64 16, i64 %b.cap21372
  %b.new.buf.len1375 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1374, i64 1)
  %sum1376 = extractvalue { i64, i1 } %b.new.buf.len1375, 0
  %ovf1377 = extractvalue { i64, i1 } %b.new.buf.len1375, 1
  br i1 %ovf1377, label %str_overflow_abort1379, label %b.new.buf.len1378

b.nogrow1370:                                     ; preds = %b.byte_ok1358
  br label %b.push_done1371

b.push_done1371:                                  ; preds = %b.nogrow1370, %b.new.buf.len1378
  %b.cur.data1386 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1353, i32 0, i32 1
  %b.cur.data1387 = load ptr, ptr %b.cur.data1386, align 8
  %b.cur.len1388 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1353, i32 0, i32 0
  %b.cur.len1389 = load i64, ptr %b.cur.len1388, align 8
  %b.byte.gep1390 = getelementptr i8, ptr %b.cur.data1387, i64 %b.cur.len1389
  store i8 %b.byte.i81361, ptr %b.byte.gep1390, align 1
  %b.next.len1391 = add i64 %b.cur.len1389, 1
  %b.nul1392 = getelementptr i8, ptr %b.cur.data1387, i64 %b.next.len1391
  store i8 0, ptr %b.nul1392, align 1
  %b.len.gep1393 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1353, i32 0, i32 0
  store i64 %b.next.len1391, ptr %b.len.gep1393, align 8
  %var.load1394 = load i64, ptr %"var.i'", align 8
  %addtmp1395 = add i64 %var.load1394, 1
  store i64 %addtmp1395, ptr %"var.i'", align 8
  br label %choice.exit1307

b.new.buf.len1378:                                ; preds = %abort.dead1380, %b.grow1369
  %arena.cur1381 = call ptr @dva_arena_current()
  %b.new.buf1382 = call ptr @dva_arena_alloc(ptr %arena.cur1381, i64 %sum1376)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1382, ptr align 1 %b.data1367, i64 %b.len1363, i1 false)
  %b.grow.nul1383 = getelementptr i8, ptr %b.new.buf1382, i64 %b.len1363
  store i8 0, ptr %b.grow.nul1383, align 1
  %b.new.data.gep1384 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1353, i32 0, i32 1
  store ptr %b.new.buf1382, ptr %b.new.data.gep1384, align 8
  %b.new.cap.gep1385 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1353, i32 0, i32 2
  store i64 %b.new.cap1374, ptr %b.new.cap.gep1385, align 8
  br label %b.push_done1371

str_overflow_abort1379:                           ; preds = %b.grow1369
  %58 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead1380:                                   ; No predecessors!
  br label %b.new.buf.len1378

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data1398, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data1398, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data1398, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len1397, 1
  %arena.cur1399 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur1399, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data1398, i64 %b.freeze.len1397, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len1397
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.550
  %b.freeze.data1400 = phi ptr [ %b.freeze.data1398, %loop.exit.550 ], [ %b.freeze.data1398, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur1401 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur1401, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len1397, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data1400, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1396, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1396, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1396, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %var.load3 = load ptr, ptr %var.pfx, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  br i1 %tag.immortal9, label %str_ok8, label %tag.gen_check10

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok8:                                          ; preds = %abort.dead17, %tag.slow_check11, %tag.gen_check10, %str_ok
  %cmptmp = icmp sge i64 %str.len.query2, %str.len.query6
  br i1 %cmptmp, label %and.540.then, label %and.540.else

tag.gen_check10:                                  ; preds = %str_ok
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok14 = icmp eq i64 %str.tag7, %active.gen13
  br i1 %tag.fast.ok14, label %str_ok8, label %tag.slow_check11

tag.slow_check11:                                 ; preds = %tag.gen_check10
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag7)
  br i1 %tag.valid16, label %str_ok8, label %tag.stale12

tag.stale12:                                      ; preds = %tag.slow_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %str_ok8

and.540.then:                                     ; preds = %str_ok8
  %var.load18 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.chk.len19 = load i64, ptr %s.chk.len, align 8
  %s.chk.len20 = and i64 %s.chk.len19, 281474976710655
  %str.tag21 = lshr i64 %s.chk.len19, 48
  %tag.immortal23 = icmp eq i64 %str.tag21, 0
  br i1 %tag.immortal23, label %str_ok22, label %tag.gen_check24

and.540.else:                                     ; preds = %str_ok8
  br label %and.540.exit

and.540.exit:                                     ; preds = %and.540.else, %str.eq.merge
  %and.540.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.540.else ]
  ret i1 %and.540.phi

str_ok22:                                         ; preds = %abort.dead31, %tag.slow_check25, %tag.gen_check24, %and.540.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data, align 8
  %var.load35 = load ptr, ptr %var.pfx, align 8
  %str.len.query36 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %str.len.query37 = load i64, ptr %str.len.query36, align 8
  %str.len.query38 = and i64 %str.len.query37, 281474976710655
  %str.tag39 = lshr i64 %str.len.query37, 48
  %tag.immortal41 = icmp eq i64 %str.tag39, 0
  br i1 %tag.immortal41, label %str_ok40, label %tag.gen_check42

tag.gen_check24:                                  ; preds = %and.540.then
  %active.gen27 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok28 = icmp eq i64 %str.tag21, %active.gen27
  br i1 %tag.fast.ok28, label %str_ok22, label %tag.slow_check25

tag.slow_check25:                                 ; preds = %tag.gen_check24
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag21)
  br i1 %tag.valid30, label %str_ok22, label %tag.stale26

tag.stale26:                                      ; preds = %tag.slow_check25
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %str_ok22

str_ok40:                                         ; preds = %abort.dead49, %tag.slow_check43, %tag.gen_check42, %str_ok22
  %rel.start = add i64 %s.read.len33, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len33
  %final.start = select i1 %start.gt.len, i64 %s.read.len33, i64 %c.start.0
  %end.is_neg = icmp slt i64 %str.len.query38, 0
  %rel.end = add i64 %s.read.len33, %str.len.query38
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %str.len.query38
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len33
  %final.end = select i1 %end.gt.len, i64 %s.read.len33, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data34, i64 %final.start
  %var.load50 = load ptr, ptr %var.pfx, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %cmp.str51 = load i64, ptr %cmp.str, align 8
  %cmp.str52 = and i64 %cmp.str51, 281474976710655
  %str.tag53 = lshr i64 %cmp.str51, 48
  %tag.immortal55 = icmp eq i64 %str.tag53, 0
  br i1 %tag.immortal55, label %str_ok54, label %tag.gen_check56

tag.gen_check42:                                  ; preds = %str_ok22
  %active.gen45 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok46 = icmp eq i64 %str.tag39, %active.gen45
  br i1 %tag.fast.ok46, label %str_ok40, label %tag.slow_check43

tag.slow_check43:                                 ; preds = %tag.gen_check42
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag39)
  br i1 %tag.valid48, label %str_ok40, label %tag.stale44

tag.stale44:                                      ; preds = %tag.slow_check43
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %str_ok40

str_ok54:                                         ; preds = %abort.dead63, %tag.slow_check57, %tag.gen_check56, %str_ok40
  %cmp.str64 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %cmp.str65 = load ptr, ptr %cmp.str64, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str52
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check56:                                  ; preds = %str_ok40
  %active.gen59 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok60 = icmp eq i64 %str.tag53, %active.gen59
  br i1 %tag.fast.ok60, label %str_ok54, label %tag.slow_check57

tag.slow_check57:                                 ; preds = %tag.gen_check56
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag53)
  br i1 %tag.valid62, label %str_ok54, label %tag.stale58

tag.stale58:                                      ; preds = %tag.slow_check57
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead63:                                     ; No predecessors!
  br label %str_ok54

str.eq.then:                                      ; preds = %str_ok54
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str65, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok54
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.540.exit
}

declare i32 @memcmp(ptr, ptr, i64) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur3 = call ptr @dva_arena_current()
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
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %b.freeze.arena = call ptr @dva_arena_current()
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur19 = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur25 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data24, i64 %b.freeze.len23, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len23
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.569
  %b.freeze.data26 = phi ptr [ %b.freeze.data24, %loop.exit.569 ], [ %b.freeze.data24, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur27 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.571, align 8
  br label %loop.header.571

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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

loop.latch.571:                                   ; preds = %choice.exit14
  %step.val = load i64, ptr %loop.step.571, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.571, align 8
  br label %loop.header.571

loop.exit.571:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.571
  %var.load16 = load ptr, ptr %var.s, align 8
  %s.read.len17 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len17, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data20 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data20, align 8
  %var.load22 = load i64, ptr %"var.i'", align 8
  %var.load23 = load i64, ptr %var.n, align 8
  %start.is_neg = icmp slt i64 %var.load22, 0
  %rel.start = add i64 %s.read.len19, %var.load22
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load22
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len19
  %final.start = select i1 %start.gt.len, i64 %s.read.len19, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load23, 0
  %rel.end = add i64 %s.read.len19, %var.load23
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load23
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len19
  %final.end = select i1 %end.gt.len, i64 %s.read.len19, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data21, i64 %final.start
  %arena.cur24 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
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
  %idx.neg = icmp slt i64 %var.load9, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load9, %s.read.len7
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead10, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 %var.load9
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 32
  %val.match12 = icmp eq i64 %s.byte.val, 9
  %case.or = or i1 %val.match, %val.match12
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %idx_ok

choice.exit11:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then13, label %choice.else

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit11

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit11

choice.then13:                                    ; preds = %choice.exit11
  %var.load15 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load15, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit14

choice.else:                                      ; preds = %choice.exit11
  br label %loop.exit.571

choice.exit14:                                    ; preds = %choice.then13
  br label %loop.latch.571
}

define { i64, ptr } @"formatter::strip_code_comment"(ptr %0) #0 {
entry:
  %var._128 = alloca i64, align 8
  %var._i127 = alloca i64, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  %var.load3 = load i64, ptr %var.n, align 8
  store i64 %var.load3, ptr %"var.end_idx'", align 8
  store i64 0, ptr %loop.idx.572, align 8
  br label %loop.header.572

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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

loop.latch.572:                                   ; preds = %choice.exit37
  %step.val = load i64, ptr %loop.step.572, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.572, align 8
  br label %loop.header.572

loop.exit.572:                                    ; preds = %choice.then59, %choice.then, %loop.exit.nat.572
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
  %idx.neg = icmp slt i64 %var.load10, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load10, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead11, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load12 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load12, 1
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp slt i64 %addtmp, %var.load13
  br i1 %cmptmp14, label %choice.then15, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %idx_ok

choice.then15:                                    ; preds = %idx_ok
  %var.load17 = load ptr, ptr %var.body, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %s.read.data21 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data21, align 8
  %var.load23 = load i64, ptr %"var.i'", align 8
  %addtmp24 = add i64 %var.load23, 1
  %idx.neg25 = icmp slt i64 %addtmp24, 0
  br i1 %idx.neg25, label %idx_oob28, label %idx_big_check26

choice.else:                                      ; preds = %idx_ok
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else, %idx_ok27
  %choice.res = phi i64 [ %s.byte.val33, %idx_ok27 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.c1, align 8
  %var.load34 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load34, label %choice.then35, label %choice.else36

idx_big_check26:                                  ; preds = %choice.then15
  %idx.big29 = icmp sge i64 %addtmp24, %s.read.len20
  br i1 %idx.big29, label %idx_oob28, label %idx_ok27

idx_ok27:                                         ; preds = %abort.dead30, %idx_big_check26
  %s.byte.gep31 = getelementptr i8, ptr %s.read.data22, i64 %addtmp24
  %s.byte32 = load i8, ptr %s.byte.gep31, align 1
  %s.byte.val33 = zext i8 %s.byte32 to i64
  br label %choice.exit16

idx_oob28:                                        ; preds = %idx_big_check26, %choice.then15
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %idx_ok27

choice.then35:                                    ; preds = %choice.exit16
  %var.load38 = load i64, ptr %var.c, align 8
  %cmptmp39 = icmp eq i64 %var.load38, 92
  br i1 %cmptmp39, label %and.573.then, label %and.573.else

choice.else36:                                    ; preds = %choice.exit16
  %var.load55 = load i64, ptr %var.c, align 8
  %cmptmp56 = icmp eq i64 %var.load55, 47
  br i1 %cmptmp56, label %and.574.then, label %and.574.else

choice.exit37:                                    ; preds = %choice.exit61, %choice.exit46
  br label %loop.latch.572

and.573.then:                                     ; preds = %choice.then35
  %var.load40 = load i64, ptr %"var.i'", align 8
  %addtmp41 = add i64 %var.load40, 1
  %var.load42 = load i64, ptr %var.n, align 8
  %cmptmp43 = icmp slt i64 %addtmp41, %var.load42
  br label %and.573.exit

and.573.else:                                     ; preds = %choice.then35
  br label %and.573.exit

and.573.exit:                                     ; preds = %and.573.else, %and.573.then
  %and.573.phi = phi i1 [ %cmptmp43, %and.573.then ], [ %cmptmp39, %and.573.else ]
  br i1 %and.573.phi, label %choice.then44, label %choice.else45

choice.then44:                                    ; preds = %and.573.exit
  %var.load47 = load i64, ptr %"var.i'", align 8
  %addtmp48 = add i64 %var.load47, 2
  store i64 %addtmp48, ptr %"var.i'", align 8
  br label %choice.exit46

choice.else45:                                    ; preds = %and.573.exit
  %var.load49 = load i64, ptr %var.c, align 8
  %cmptmp50 = icmp eq i64 %var.load49, 34
  br i1 %cmptmp50, label %choice.then51, label %choice.exit52

choice.exit46:                                    ; preds = %choice.exit52, %choice.then44
  br label %choice.exit37

choice.then51:                                    ; preds = %choice.else45
  store i1 false, ptr %"var.in_str'", align 1
  br label %choice.exit52

choice.exit52:                                    ; preds = %choice.then51, %choice.else45
  %var.load53 = load i64, ptr %"var.i'", align 8
  %addtmp54 = add i64 %var.load53, 1
  store i64 %addtmp54, ptr %"var.i'", align 8
  br label %choice.exit46

and.574.then:                                     ; preds = %choice.else36
  %var.load57 = load i64, ptr %var.c1, align 8
  %cmptmp58 = icmp eq i64 %var.load57, 47
  br label %and.574.exit

and.574.else:                                     ; preds = %choice.else36
  br label %and.574.exit

and.574.exit:                                     ; preds = %and.574.else, %and.574.then
  %and.574.phi = phi i1 [ %cmptmp58, %and.574.then ], [ %cmptmp56, %and.574.else ]
  br i1 %and.574.phi, label %choice.then59, label %choice.else60

choice.then59:                                    ; preds = %and.574.exit
  %var.load62 = load i64, ptr %"var.i'", align 8
  store i64 %var.load62, ptr %"var.end_idx'", align 8
  br label %loop.exit.572

choice.else60:                                    ; preds = %and.574.exit
  %var.load63 = load i64, ptr %var.c, align 8
  %cmptmp64 = icmp eq i64 %var.load63, 39
  br i1 %cmptmp64, label %choice.then65, label %choice.else66

choice.exit61:                                    ; preds = %choice.exit67
  br label %choice.exit37

choice.then65:                                    ; preds = %choice.else60
  %var.load68 = load i64, ptr %"var.i'", align 8
  %cmptmp69 = icmp sgt i64 %var.load68, 0
  br i1 %cmptmp69, label %choice.then70, label %choice.else71

choice.else66:                                    ; preds = %choice.else60
  %var.load116 = load i64, ptr %var.c, align 8
  %cmptmp117 = icmp eq i64 %var.load116, 34
  br i1 %cmptmp117, label %choice.then118, label %choice.else119

choice.exit67:                                    ; preds = %choice.exit120, %choice.exit93
  br label %choice.exit61

choice.then70:                                    ; preds = %choice.then65
  %var.load73 = load ptr, ptr %var.body, align 8
  %s.read.len74 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %s.read.len75 = load i64, ptr %s.read.len74, align 8
  %s.read.len76 = and i64 %s.read.len75, 281474976710655
  %s.read.data77 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %s.read.data78 = load ptr, ptr %s.read.data77, align 8
  %var.load79 = load i64, ptr %"var.i'", align 8
  %subtmp = sub i64 %var.load79, 1
  %idx.neg80 = icmp slt i64 %subtmp, 0
  br i1 %idx.neg80, label %idx_oob83, label %idx_big_check81

choice.else71:                                    ; preds = %choice.then65
  br label %choice.exit72

choice.exit72:                                    ; preds = %choice.else71, %idx_ok82
  %choice.res89 = phi i64 [ %s.byte.val88, %idx_ok82 ], [ 0, %choice.else71 ]
  store i64 %choice.res89, ptr %var.prev_b, align 8
  %var.load90 = load i64, ptr %var.prev_b, align 8
  %call.res = call i1 @"formatter::is_id_byte"(i64 %var.load90)
  br i1 %call.res, label %choice.then91, label %choice.else92

idx_big_check81:                                  ; preds = %choice.then70
  %idx.big84 = icmp sge i64 %subtmp, %s.read.len76
  br i1 %idx.big84, label %idx_oob83, label %idx_ok82

idx_ok82:                                         ; preds = %abort.dead85, %idx_big_check81
  %s.byte.gep86 = getelementptr i8, ptr %s.read.data78, i64 %subtmp
  %s.byte87 = load i8, ptr %s.byte.gep86, align 1
  %s.byte.val88 = zext i8 %s.byte87 to i64
  br label %choice.exit72

idx_oob83:                                        ; preds = %idx_big_check81, %choice.then70
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead85:                                     ; No predecessors!
  br label %idx_ok82

choice.then91:                                    ; preds = %choice.exit72
  br label %choice.exit93

choice.else92:                                    ; preds = %choice.exit72
  %var.load94 = load i64, ptr %var.c1, align 8
  %cmptmp95 = icmp eq i64 %var.load94, 92
  br i1 %cmptmp95, label %and.575.then, label %and.575.else

choice.exit93:                                    ; preds = %choice.exit102, %choice.then91
  %choice.res112 = phi i64 [ 1, %choice.then91 ], [ %choice.res111, %choice.exit102 ]
  store i64 %choice.res112, ptr %var.step, align 8
  %var.load113 = load i64, ptr %"var.i'", align 8
  %var.load114 = load i64, ptr %var.step, align 8
  %addtmp115 = add i64 %var.load113, %var.load114
  store i64 %addtmp115, ptr %"var.i'", align 8
  br label %choice.exit67

and.575.then:                                     ; preds = %choice.else92
  %var.load96 = load i64, ptr %"var.i'", align 8
  %addtmp97 = add i64 %var.load96, 2
  %var.load98 = load i64, ptr %var.n, align 8
  %cmptmp99 = icmp slt i64 %addtmp97, %var.load98
  br label %and.575.exit

and.575.else:                                     ; preds = %choice.else92
  br label %and.575.exit

and.575.exit:                                     ; preds = %and.575.else, %and.575.then
  %and.575.phi = phi i1 [ %cmptmp99, %and.575.then ], [ %cmptmp95, %and.575.else ]
  br i1 %and.575.phi, label %choice.then100, label %choice.else101

choice.then100:                                   ; preds = %and.575.exit
  br label %choice.exit102

choice.else101:                                   ; preds = %and.575.exit
  %var.load103 = load i64, ptr %"var.i'", align 8
  %addtmp104 = add i64 %var.load103, 1
  %var.load105 = load i64, ptr %var.n, align 8
  %cmptmp106 = icmp slt i64 %addtmp104, %var.load105
  br i1 %cmptmp106, label %choice.then107, label %choice.else108

choice.exit102:                                   ; preds = %choice.exit109, %choice.then100
  %choice.res111 = phi i64 [ 3, %choice.then100 ], [ %choice.res110, %choice.exit109 ]
  br label %choice.exit93

choice.then107:                                   ; preds = %choice.else101
  br label %choice.exit109

choice.else108:                                   ; preds = %choice.else101
  br label %choice.exit109

choice.exit109:                                   ; preds = %choice.else108, %choice.then107
  %choice.res110 = phi i64 [ 2, %choice.then107 ], [ 1, %choice.else108 ]
  br label %choice.exit102

choice.then118:                                   ; preds = %choice.else66
  store i1 true, ptr %"var.in_str'", align 1
  %var.load121 = load i64, ptr %"var.i'", align 8
  %addtmp122 = add i64 %var.load121, 1
  store i64 %addtmp122, ptr %"var.i'", align 8
  br label %choice.exit120

choice.else119:                                   ; preds = %choice.else66
  %var.load123 = load i64, ptr %"var.i'", align 8
  %addtmp124 = add i64 %var.load123, 1
  store i64 %addtmp124, ptr %"var.i'", align 8
  br label %choice.exit120

choice.exit120:                                   ; preds = %choice.else119, %choice.then118
  br label %choice.exit67

loop.header.576:                                  ; preds = %loop.latch.576, %loop.exit.572
  %counter.load125 = load i64, ptr %loop.idx.576, align 8
  br label %loop.body.576

loop.body.576:                                    ; preds = %loop.header.576
  %loop.rel.i126 = sub i64 %counter.load125, 0
  store i64 1, ptr %loop.step.576, align 8
  store i64 %loop.rel.i126, ptr %var._i127, align 8
  store i64 %counter.load125, ptr %var._128, align 8
  %var.load129 = load i64, ptr %"var.end_idx'", align 8
  %cmptmp130 = icmp sgt i64 %var.load129, 0
  br i1 %cmptmp130, label %and.577.then, label %and.577.else

loop.exit.nat.576:                                ; No predecessors!
  br label %loop.exit.576

loop.latch.576:                                   ; preds = %choice.exit153
  %step.val156 = load i64, ptr %loop.step.576, align 8
  %loop.next157 = add i64 %counter.load125, %step.val156
  store i64 %loop.next157, ptr %loop.idx.576, align 8
  br label %loop.header.576

loop.exit.576:                                    ; preds = %choice.else152, %loop.exit.nat.576
  %var.load158 = load ptr, ptr %var.body, align 8
  %s.read.len159 = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 0
  %s.read.len160 = load i64, ptr %s.read.len159, align 8
  %s.read.len161 = and i64 %s.read.len160, 281474976710655
  %s.read.data162 = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 1
  %s.read.data163 = load ptr, ptr %s.read.data162, align 8
  %var.load164 = load i64, ptr %"var.end_idx'", align 8
  %rel.start = add i64 %s.read.len161, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len161
  %final.start = select i1 %start.gt.len, i64 %s.read.len161, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load164, 0
  %rel.end = add i64 %s.read.len161, %var.load164
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load164
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len161
  %final.end = select i1 %end.gt.len, i64 %s.read.len161, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data163, i64 %final.start
  %arena.cur165 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

and.577.then:                                     ; preds = %loop.body.576
  %var.load131 = load ptr, ptr %var.body, align 8
  %s.read.len132 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 0
  %s.read.len133 = load i64, ptr %s.read.len132, align 8
  %s.read.len134 = and i64 %s.read.len133, 281474976710655
  %s.read.data135 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 1
  %s.read.data136 = load ptr, ptr %s.read.data135, align 8
  %var.load137 = load i64, ptr %"var.end_idx'", align 8
  %subtmp138 = sub i64 %var.load137, 1
  %idx.neg139 = icmp slt i64 %subtmp138, 0
  br i1 %idx.neg139, label %idx_oob142, label %idx_big_check140

and.577.else:                                     ; preds = %loop.body.576
  br label %and.577.exit

and.577.exit:                                     ; preds = %and.577.else, %choice.exit148
  %and.577.phi = phi i1 [ %choice.res150, %choice.exit148 ], [ %cmptmp130, %and.577.else ]
  br i1 %and.577.phi, label %choice.then151, label %choice.else152

idx_big_check140:                                 ; preds = %and.577.then
  %idx.big143 = icmp sge i64 %subtmp138, %s.read.len134
  br i1 %idx.big143, label %idx_oob142, label %idx_ok141

idx_ok141:                                        ; preds = %abort.dead144, %idx_big_check140
  %s.byte.gep145 = getelementptr i8, ptr %s.read.data136, i64 %subtmp138
  %s.byte146 = load i8, ptr %s.byte.gep145, align 1
  %s.byte.val147 = zext i8 %s.byte146 to i64
  %val.match = icmp eq i64 %s.byte.val147, 32
  %val.match149 = icmp eq i64 %s.byte.val147, 9
  %case.or = or i1 %val.match, %val.match149
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob142:                                       ; preds = %idx_big_check140, %and.577.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead144:                                    ; No predecessors!
  br label %idx_ok141

choice.exit148:                                   ; preds = %choice.next, %choice.case
  %choice.res150 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.577.exit

choice.case:                                      ; preds = %idx_ok141
  br label %choice.exit148

choice.next:                                      ; preds = %idx_ok141
  br label %choice.exit148

choice.then151:                                   ; preds = %and.577.exit
  %var.load154 = load i64, ptr %"var.end_idx'", align 8
  %subtmp155 = sub i64 %var.load154, 1
  store i64 %subtmp155, ptr %"var.end_idx'", align 8
  br label %choice.exit153

choice.else152:                                   ; preds = %and.577.exit
  br label %loop.exit.576

choice.exit153:                                   ; preds = %choice.then151
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %var.load3 = load ptr, ptr %var.suf, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  br i1 %tag.immortal9, label %str_ok8, label %tag.gen_check10

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok8:                                          ; preds = %abort.dead17, %tag.slow_check11, %tag.gen_check10, %str_ok
  %cmptmp = icmp sge i64 %str.len.query2, %str.len.query6
  br i1 %cmptmp, label %and.578.then, label %and.578.else

tag.gen_check10:                                  ; preds = %str_ok
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok14 = icmp eq i64 %str.tag7, %active.gen13
  br i1 %tag.fast.ok14, label %str_ok8, label %tag.slow_check11

tag.slow_check11:                                 ; preds = %tag.gen_check10
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag7)
  br i1 %tag.valid16, label %str_ok8, label %tag.stale12

tag.stale12:                                      ; preds = %tag.slow_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %str_ok8

and.578.then:                                     ; preds = %str_ok8
  %var.load18 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.chk.len19 = load i64, ptr %s.chk.len, align 8
  %s.chk.len20 = and i64 %s.chk.len19, 281474976710655
  %str.tag21 = lshr i64 %s.chk.len19, 48
  %tag.immortal23 = icmp eq i64 %str.tag21, 0
  br i1 %tag.immortal23, label %str_ok22, label %tag.gen_check24

and.578.else:                                     ; preds = %str_ok8
  br label %and.578.exit

and.578.exit:                                     ; preds = %and.578.else, %str.eq.merge
  %and.578.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.578.else ]
  ret i1 %and.578.phi

str_ok22:                                         ; preds = %abort.dead31, %tag.slow_check25, %tag.gen_check24, %and.578.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data, align 8
  %var.load35 = load ptr, ptr %var.s, align 8
  %str.len.query36 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %str.len.query37 = load i64, ptr %str.len.query36, align 8
  %str.len.query38 = and i64 %str.len.query37, 281474976710655
  %str.tag39 = lshr i64 %str.len.query37, 48
  %tag.immortal41 = icmp eq i64 %str.tag39, 0
  br i1 %tag.immortal41, label %str_ok40, label %tag.gen_check42

tag.gen_check24:                                  ; preds = %and.578.then
  %active.gen27 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok28 = icmp eq i64 %str.tag21, %active.gen27
  br i1 %tag.fast.ok28, label %str_ok22, label %tag.slow_check25

tag.slow_check25:                                 ; preds = %tag.gen_check24
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag21)
  br i1 %tag.valid30, label %str_ok22, label %tag.stale26

tag.stale26:                                      ; preds = %tag.slow_check25
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %str_ok22

str_ok40:                                         ; preds = %abort.dead49, %tag.slow_check43, %tag.gen_check42, %str_ok22
  %var.load50 = load ptr, ptr %var.suf, align 8
  %str.len.query51 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %str.len.query52 = load i64, ptr %str.len.query51, align 8
  %str.len.query53 = and i64 %str.len.query52, 281474976710655
  %str.tag54 = lshr i64 %str.len.query52, 48
  %tag.immortal56 = icmp eq i64 %str.tag54, 0
  br i1 %tag.immortal56, label %str_ok55, label %tag.gen_check57

tag.gen_check42:                                  ; preds = %str_ok22
  %active.gen45 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok46 = icmp eq i64 %str.tag39, %active.gen45
  br i1 %tag.fast.ok46, label %str_ok40, label %tag.slow_check43

tag.slow_check43:                                 ; preds = %tag.gen_check42
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag39)
  br i1 %tag.valid48, label %str_ok40, label %tag.stale44

tag.stale44:                                      ; preds = %tag.slow_check43
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %str_ok40

str_ok55:                                         ; preds = %abort.dead64, %tag.slow_check58, %tag.gen_check57, %str_ok40
  %subtmp = sub i64 %str.len.query38, %str.len.query53
  %var.load65 = load ptr, ptr %var.s, align 8
  %str.len.query66 = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 0
  %str.len.query67 = load i64, ptr %str.len.query66, align 8
  %str.len.query68 = and i64 %str.len.query67, 281474976710655
  %str.tag69 = lshr i64 %str.len.query67, 48
  %tag.immortal71 = icmp eq i64 %str.tag69, 0
  br i1 %tag.immortal71, label %str_ok70, label %tag.gen_check72

tag.gen_check57:                                  ; preds = %str_ok40
  %active.gen60 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok61 = icmp eq i64 %str.tag54, %active.gen60
  br i1 %tag.fast.ok61, label %str_ok55, label %tag.slow_check58

tag.slow_check58:                                 ; preds = %tag.gen_check57
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid63 = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag54)
  br i1 %tag.valid63, label %str_ok55, label %tag.stale59

tag.stale59:                                      ; preds = %tag.slow_check58
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %str_ok55

str_ok70:                                         ; preds = %abort.dead79, %tag.slow_check73, %tag.gen_check72, %str_ok55
  %start.is_neg = icmp slt i64 %subtmp, 0
  %rel.start = add i64 %s.read.len33, %subtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %subtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len33
  %final.start = select i1 %start.gt.len, i64 %s.read.len33, i64 %c.start.0
  %end.is_neg = icmp slt i64 %str.len.query68, 0
  %rel.end = add i64 %s.read.len33, %str.len.query68
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %str.len.query68
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len33
  %final.end = select i1 %end.gt.len, i64 %s.read.len33, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data34, i64 %final.start
  %var.load80 = load ptr, ptr %var.suf, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 0
  %cmp.str81 = load i64, ptr %cmp.str, align 8
  %cmp.str82 = and i64 %cmp.str81, 281474976710655
  %str.tag83 = lshr i64 %cmp.str81, 48
  %tag.immortal85 = icmp eq i64 %str.tag83, 0
  br i1 %tag.immortal85, label %str_ok84, label %tag.gen_check86

tag.gen_check72:                                  ; preds = %str_ok55
  %active.gen75 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok76 = icmp eq i64 %str.tag69, %active.gen75
  br i1 %tag.fast.ok76, label %str_ok70, label %tag.slow_check73

tag.slow_check73:                                 ; preds = %tag.gen_check72
  %arena.cur77 = call ptr @dva_arena_current()
  %tag.valid78 = call i1 @dva_arena_validate_tag(ptr %arena.cur77, i64 %str.tag69)
  br i1 %tag.valid78, label %str_ok70, label %tag.stale74

tag.stale74:                                      ; preds = %tag.slow_check73
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead79:                                     ; No predecessors!
  br label %str_ok70

str_ok84:                                         ; preds = %abort.dead93, %tag.slow_check87, %tag.gen_check86, %str_ok70
  %cmp.str94 = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 1
  %cmp.str95 = load ptr, ptr %cmp.str94, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str82
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check86:                                  ; preds = %str_ok70
  %active.gen89 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok90 = icmp eq i64 %str.tag83, %active.gen89
  br i1 %tag.fast.ok90, label %str_ok84, label %tag.slow_check87

tag.slow_check87:                                 ; preds = %tag.gen_check86
  %arena.cur91 = call ptr @dva_arena_current()
  %tag.valid92 = call i1 @dva_arena_validate_tag(ptr %arena.cur91, i64 %str.tag83)
  br i1 %tag.valid92, label %str_ok84, label %tag.stale88

tag.stale88:                                      ; preds = %tag.slow_check87
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead93:                                     ; No predecessors!
  br label %str_ok84

str.eq.then:                                      ; preds = %str_ok84
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str95, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok84
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 false, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 0, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead7, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c0, align 8
  %var.load8 = load i64, ptr %var.c0, align 8
  %cmptmp9 = icmp eq i64 %var.load8, 91
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %idx_ok

choice.then10:                                    ; preds = %idx_ok
  ret i1 true

choice.exit11:                                    ; preds = %ret.dead12, %idx_ok
  %var.load13 = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load13, ptr @str.8.struct)
  br i1 %call.res, label %choice.then14, label %choice.exit15

ret.dead12:                                       ; No predecessors!
  br label %choice.exit11

choice.then14:                                    ; preds = %choice.exit11
  ret i1 true

choice.exit15:                                    ; preds = %ret.dead16, %choice.exit11
  %var.load17 = load ptr, ptr %var.code, align 8
  %call.res18 = call i1 @"formatter::starts_with_str"(ptr %var.load17, ptr @str.5.struct)
  br i1 %call.res18, label %choice.then19, label %choice.exit20

ret.dead16:                                       ; No predecessors!
  br label %choice.exit15

choice.then19:                                    ; preds = %choice.exit15
  ret i1 true

choice.exit20:                                    ; preds = %ret.dead21, %choice.exit15
  %var.load22 = load ptr, ptr %var.code, align 8
  %call.res23 = call i1 @"formatter::starts_with_str"(ptr %var.load22, ptr @str.13.struct)
  br i1 %call.res23, label %or.579.then, label %or.579.else

ret.dead21:                                       ; No predecessors!
  br label %choice.exit20

or.579.then:                                      ; preds = %choice.exit20
  br label %or.579.exit

or.579.else:                                      ; preds = %choice.exit20
  %var.load24 = load ptr, ptr %var.code, align 8
  %call.res25 = call i1 @"formatter::starts_with_str"(ptr %var.load24, ptr @str.14.struct)
  br label %or.579.exit

or.579.exit:                                      ; preds = %or.579.else, %or.579.then
  %or.579.phi = phi i1 [ %call.res23, %or.579.then ], [ %call.res25, %or.579.else ]
  br i1 %or.579.phi, label %or.580.then, label %or.580.else

or.580.then:                                      ; preds = %or.579.exit
  br label %or.580.exit

or.580.else:                                      ; preds = %or.579.exit
  %var.load26 = load ptr, ptr %var.code, align 8
  %call.res27 = call i1 @"formatter::starts_with_str"(ptr %var.load26, ptr @str.15.struct)
  br label %or.580.exit

or.580.exit:                                      ; preds = %or.580.else, %or.580.then
  %or.580.phi = phi i1 [ %or.579.phi, %or.580.then ], [ %call.res27, %or.580.else ]
  br i1 %or.580.phi, label %or.581.then, label %or.581.else

or.581.then:                                      ; preds = %or.580.exit
  br label %or.581.exit

or.581.else:                                      ; preds = %or.580.exit
  %var.load28 = load ptr, ptr %var.code, align 8
  %call.res29 = call i1 @"formatter::starts_with_str"(ptr %var.load28, ptr @str.16.struct)
  br label %or.581.exit

or.581.exit:                                      ; preds = %or.581.else, %or.581.then
  %or.581.phi = phi i1 [ %or.580.phi, %or.581.then ], [ %call.res29, %or.581.else ]
  br i1 %or.581.phi, label %or.582.then, label %or.582.else

or.582.then:                                      ; preds = %or.581.exit
  br label %or.582.exit

or.582.else:                                      ; preds = %or.581.exit
  %var.load30 = load ptr, ptr %var.code, align 8
  %call.res31 = call i1 @"formatter::starts_with_str"(ptr %var.load30, ptr @str.4.struct)
  br label %or.582.exit

or.582.exit:                                      ; preds = %or.582.else, %or.582.then
  %or.582.phi = phi i1 [ %or.581.phi, %or.582.then ], [ %call.res31, %or.582.else ]
  br i1 %or.582.phi, label %or.583.then, label %or.583.else

or.583.then:                                      ; preds = %or.582.exit
  br label %or.583.exit

or.583.else:                                      ; preds = %or.582.exit
  %var.load32 = load ptr, ptr %var.code, align 8
  %call.res33 = call i1 @"formatter::starts_with_str"(ptr %var.load32, ptr @str.17.struct)
  br label %or.583.exit

or.583.exit:                                      ; preds = %or.583.else, %or.583.then
  %or.583.phi = phi i1 [ %or.582.phi, %or.583.then ], [ %call.res33, %or.583.else ]
  br i1 %or.583.phi, label %choice.then34, label %choice.exit35

choice.then34:                                    ; preds = %or.583.exit
  ret i1 true

choice.exit35:                                    ; preds = %ret.dead36, %or.583.exit
  %var.load37 = load i64, ptr %var.c0, align 8
  %cmptmp38 = icmp eq i64 %var.load37, 124
  br i1 %cmptmp38, label %and.584.then, label %and.584.else

ret.dead36:                                       ; No predecessors!
  br label %choice.exit35

and.584.then:                                     ; preds = %choice.exit35
  %var.load39 = load ptr, ptr %var.code, align 8
  %str.len.query40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %str.len.query41 = load i64, ptr %str.len.query40, align 8
  %str.len.query42 = and i64 %str.len.query41, 281474976710655
  %str.tag43 = lshr i64 %str.len.query41, 48
  %tag.immortal45 = icmp eq i64 %str.tag43, 0
  br i1 %tag.immortal45, label %str_ok44, label %tag.gen_check46

and.584.else:                                     ; preds = %choice.exit35
  br label %and.584.exit

and.584.exit:                                     ; preds = %and.584.else, %or.585.exit
  %and.584.phi = phi i1 [ %or.585.phi, %or.585.exit ], [ %cmptmp38, %and.584.else ]
  ret i1 %and.584.phi

str_ok44:                                         ; preds = %abort.dead53, %tag.slow_check47, %tag.gen_check46, %and.584.then
  %cmptmp54 = icmp eq i64 %str.len.query42, 1
  br i1 %cmptmp54, label %or.585.then, label %or.585.else

tag.gen_check46:                                  ; preds = %and.584.then
  %active.gen49 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok50 = icmp eq i64 %str.tag43, %active.gen49
  br i1 %tag.fast.ok50, label %str_ok44, label %tag.slow_check47

tag.slow_check47:                                 ; preds = %tag.gen_check46
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag43)
  br i1 %tag.valid52, label %str_ok44, label %tag.stale48

tag.stale48:                                      ; preds = %tag.slow_check47
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %str_ok44

or.585.then:                                      ; preds = %str_ok44
  br label %or.585.exit

or.585.else:                                      ; preds = %str_ok44
  %var.load55 = load ptr, ptr %var.code, align 8
  %s.read.len56 = getelementptr inbounds { i64, ptr }, ptr %var.load55, i32 0, i32 0
  %s.read.len57 = load i64, ptr %s.read.len56, align 8
  %s.read.len58 = and i64 %s.read.len57, 281474976710655
  %s.read.data59 = getelementptr inbounds { i64, ptr }, ptr %var.load55, i32 0, i32 1
  %s.read.data60 = load ptr, ptr %s.read.data59, align 8
  br i1 false, label %idx_oob63, label %idx_big_check61

or.585.exit:                                      ; preds = %idx_ok62, %or.585.then
  %or.585.phi = phi i1 [ %cmptmp54, %or.585.then ], [ %cmptmp69, %idx_ok62 ]
  br label %and.584.exit

idx_big_check61:                                  ; preds = %or.585.else
  %idx.big64 = icmp sge i64 1, %s.read.len58
  br i1 %idx.big64, label %idx_oob63, label %idx_ok62

idx_ok62:                                         ; preds = %abort.dead65, %idx_big_check61
  %s.byte.gep66 = getelementptr i8, ptr %s.read.data60, i64 1
  %s.byte67 = load i8, ptr %s.byte.gep66, align 1
  %s.byte.val68 = zext i8 %s.byte67 to i64
  %cmptmp69 = icmp ne i64 %s.byte.val68, 124
  br label %or.585.exit

idx_oob63:                                        ; preds = %idx_big_check61, %or.585.else
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %idx_ok62
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
  %choice.res54 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit13 ]
  ret i1 %choice.res54

choice.then11:                                    ; preds = %choice.else
  %var.load14 = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %str.len.query15 = load i64, ptr %str.len.query, align 8
  %str.len.query16 = and i64 %str.len.query15, 281474976710655
  %str.tag = lshr i64 %str.len.query15, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.else12:                                    ; preds = %choice.else
  %var.load17 = load ptr, ptr %var.code, align 8
  %str.len.query18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %str.len.query19 = load i64, ptr %str.len.query18, align 8
  %str.len.query20 = and i64 %str.len.query19, 281474976710655
  %str.tag21 = lshr i64 %str.len.query19, 48
  %tag.immortal23 = icmp eq i64 %str.tag21, 0
  br i1 %tag.immortal23, label %str_ok22, label %tag.gen_check24

choice.exit13:                                    ; preds = %and.591.exit, %str_ok
  %choice.res = phi i1 [ %cmptmp, %str_ok ], [ %and.591.phi, %and.591.exit ]
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then11
  %cmptmp = icmp sgt i64 %str.len.query16, 2
  br label %choice.exit13

tag.gen_check:                                    ; preds = %choice.then11
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok22:                                         ; preds = %abort.dead31, %tag.slow_check25, %tag.gen_check24, %choice.else12
  %cmptmp32 = icmp sgt i64 %str.len.query20, 1
  br i1 %cmptmp32, label %and.590.then, label %and.590.else

tag.gen_check24:                                  ; preds = %choice.else12
  %active.gen27 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok28 = icmp eq i64 %str.tag21, %active.gen27
  br i1 %tag.fast.ok28, label %str_ok22, label %tag.slow_check25

tag.slow_check25:                                 ; preds = %tag.gen_check24
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag21)
  br i1 %tag.valid30, label %str_ok22, label %tag.stale26

tag.stale26:                                      ; preds = %tag.slow_check25
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %str_ok22

and.590.then:                                     ; preds = %str_ok22
  %var.load33 = load ptr, ptr %var.code, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %s.read.len34 = load i64, ptr %s.read.len, align 8
  %s.read.len35 = and i64 %s.read.len34, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %s.read.data36 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

and.590.else:                                     ; preds = %str_ok22
  br label %and.590.exit

and.590.exit:                                     ; preds = %and.590.else, %idx_ok
  %and.590.phi = phi i1 [ %cmptmp38, %idx_ok ], [ %cmptmp32, %and.590.else ]
  br i1 %and.590.phi, label %and.591.then, label %and.591.else

idx_big_check:                                    ; preds = %and.590.then
  %idx.big = icmp sge i64 0, %s.read.len35
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead37, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data36, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp38 = icmp eq i64 %s.byte.val, 124
  br label %and.590.exit

idx_oob:                                          ; preds = %idx_big_check, %and.590.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %idx_ok

and.591.then:                                     ; preds = %and.590.exit
  %var.load39 = load ptr, ptr %var.code, align 8
  %s.read.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %s.read.len41 = load i64, ptr %s.read.len40, align 8
  %s.read.len42 = and i64 %s.read.len41, 281474976710655
  %s.read.data43 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %s.read.data44 = load ptr, ptr %s.read.data43, align 8
  br i1 false, label %idx_oob47, label %idx_big_check45

and.591.else:                                     ; preds = %and.590.exit
  br label %and.591.exit

and.591.exit:                                     ; preds = %and.591.else, %idx_ok46
  %and.591.phi = phi i1 [ %cmptmp53, %idx_ok46 ], [ %and.590.phi, %and.591.else ]
  br label %choice.exit13

idx_big_check45:                                  ; preds = %and.591.then
  %idx.big48 = icmp sge i64 1, %s.read.len42
  br i1 %idx.big48, label %idx_oob47, label %idx_ok46

idx_ok46:                                         ; preds = %abort.dead49, %idx_big_check45
  %s.byte.gep50 = getelementptr i8, ptr %s.read.data44, i64 1
  %s.byte51 = load i8, ptr %s.byte.gep50, align 1
  %s.byte.val52 = zext i8 %s.byte51 to i64
  %cmptmp53 = icmp ne i64 %s.byte.val52, 124
  br label %and.591.exit

idx_oob47:                                        ; preds = %idx_big_check45, %and.591.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %idx_ok46
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal9, label %str_ok8, label %tag.gen_check10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.exit4:                                     ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then154, label %choice.exit155

choice.case:                                      ; preds = %str.eq.merge146
  br label %choice.exit4

choice.next:                                      ; preds = %str.eq.merge146
  br label %choice.exit4

str_ok8:                                          ; preds = %abort.dead17, %tag.slow_check11, %tag.gen_check10, %choice.exit
  %eq.rhs.len = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len18 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len18
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check10:                                  ; preds = %choice.exit
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok14 = icmp eq i64 %str.tag7, %active.gen13
  br i1 %tag.fast.ok14, label %str_ok8, label %tag.slow_check11

tag.slow_check11:                                 ; preds = %tag.gen_check10
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag7)
  br i1 %tag.valid16, label %str_ok8, label %tag.stale12

tag.stale12:                                      ; preds = %tag.slow_check11
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %str_ok8

str.eq.then:                                      ; preds = %str_ok8
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len20 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len21 = load i64, ptr %eq.lhs.len20, align 8
  %eq.lhs.len22 = and i64 %eq.lhs.len21, 281474976710655
  %str.tag23 = lshr i64 %eq.lhs.len21, 48
  %tag.immortal25 = icmp eq i64 %str.tag23, 0
  br i1 %tag.immortal25, label %str_ok24, label %tag.gen_check26

str_ok24:                                         ; preds = %abort.dead33, %tag.slow_check27, %tag.gen_check26, %str.eq.merge
  %eq.rhs.len34 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len35 = and i64 %eq.rhs.len34, 281474976710655
  %eq.len36 = icmp eq i64 %eq.lhs.len22, %eq.rhs.len35
  br i1 %eq.len36, label %str.eq.then37, label %str.eq.else38

tag.gen_check26:                                  ; preds = %str.eq.merge
  %active.gen29 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok30 = icmp eq i64 %str.tag23, %active.gen29
  br i1 %tag.fast.ok30, label %str_ok24, label %tag.slow_check27

tag.slow_check27:                                 ; preds = %tag.gen_check26
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag23)
  br i1 %tag.valid32, label %str_ok24, label %tag.stale28

tag.stale28:                                      ; preds = %tag.slow_check27
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %str_ok24

str.eq.then37:                                    ; preds = %str_ok24
  %eq.lhs.data40 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data41 = load ptr, ptr %eq.lhs.data40, align 8
  %eq.rhs.data42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp43 = call i32 @memcmp(ptr %eq.lhs.data41, ptr %eq.rhs.data42, i64 %eq.lhs.len22)
  %eq.cmp.zero44 = icmp eq i32 %eq.memcmp43, 0
  br label %str.eq.merge39

str.eq.else38:                                    ; preds = %str_ok24
  br label %str.eq.merge39

str.eq.merge39:                                   ; preds = %str.eq.else38, %str.eq.then37
  %str.eq.result45 = phi i1 [ %eq.cmp.zero44, %str.eq.then37 ], [ false, %str.eq.else38 ]
  %case.or = or i1 %str.eq.result, %str.eq.result45
  %eq.lhs.len46 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len47 = load i64, ptr %eq.lhs.len46, align 8
  %eq.lhs.len48 = and i64 %eq.lhs.len47, 281474976710655
  %str.tag49 = lshr i64 %eq.lhs.len47, 48
  %tag.immortal51 = icmp eq i64 %str.tag49, 0
  br i1 %tag.immortal51, label %str_ok50, label %tag.gen_check52

str_ok50:                                         ; preds = %abort.dead59, %tag.slow_check53, %tag.gen_check52, %str.eq.merge39
  %eq.rhs.len60 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len61 = and i64 %eq.rhs.len60, 281474976710655
  %eq.len62 = icmp eq i64 %eq.lhs.len48, %eq.rhs.len61
  br i1 %eq.len62, label %str.eq.then63, label %str.eq.else64

tag.gen_check52:                                  ; preds = %str.eq.merge39
  %active.gen55 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok56 = icmp eq i64 %str.tag49, %active.gen55
  br i1 %tag.fast.ok56, label %str_ok50, label %tag.slow_check53

tag.slow_check53:                                 ; preds = %tag.gen_check52
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag49)
  br i1 %tag.valid58, label %str_ok50, label %tag.stale54

tag.stale54:                                      ; preds = %tag.slow_check53
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead59:                                     ; No predecessors!
  br label %str_ok50

str.eq.then63:                                    ; preds = %str_ok50
  %eq.lhs.data66 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data67 = load ptr, ptr %eq.lhs.data66, align 8
  %eq.rhs.data68 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp69 = call i32 @memcmp(ptr %eq.lhs.data67, ptr %eq.rhs.data68, i64 %eq.lhs.len48)
  %eq.cmp.zero70 = icmp eq i32 %eq.memcmp69, 0
  br label %str.eq.merge65

str.eq.else64:                                    ; preds = %str_ok50
  br label %str.eq.merge65

str.eq.merge65:                                   ; preds = %str.eq.else64, %str.eq.then63
  %str.eq.result71 = phi i1 [ %eq.cmp.zero70, %str.eq.then63 ], [ false, %str.eq.else64 ]
  %case.or72 = or i1 %case.or, %str.eq.result71
  %eq.lhs.len73 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len74 = load i64, ptr %eq.lhs.len73, align 8
  %eq.lhs.len75 = and i64 %eq.lhs.len74, 281474976710655
  %str.tag76 = lshr i64 %eq.lhs.len74, 48
  %tag.immortal78 = icmp eq i64 %str.tag76, 0
  br i1 %tag.immortal78, label %str_ok77, label %tag.gen_check79

str_ok77:                                         ; preds = %abort.dead86, %tag.slow_check80, %tag.gen_check79, %str.eq.merge65
  %eq.rhs.len87 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len88 = and i64 %eq.rhs.len87, 281474976710655
  %eq.len89 = icmp eq i64 %eq.lhs.len75, %eq.rhs.len88
  br i1 %eq.len89, label %str.eq.then90, label %str.eq.else91

tag.gen_check79:                                  ; preds = %str.eq.merge65
  %active.gen82 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok83 = icmp eq i64 %str.tag76, %active.gen82
  br i1 %tag.fast.ok83, label %str_ok77, label %tag.slow_check80

tag.slow_check80:                                 ; preds = %tag.gen_check79
  %arena.cur84 = call ptr @dva_arena_current()
  %tag.valid85 = call i1 @dva_arena_validate_tag(ptr %arena.cur84, i64 %str.tag76)
  br i1 %tag.valid85, label %str_ok77, label %tag.stale81

tag.stale81:                                      ; preds = %tag.slow_check80
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead86:                                     ; No predecessors!
  br label %str_ok77

str.eq.then90:                                    ; preds = %str_ok77
  %eq.lhs.data93 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data94 = load ptr, ptr %eq.lhs.data93, align 8
  %eq.rhs.data95 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp96 = call i32 @memcmp(ptr %eq.lhs.data94, ptr %eq.rhs.data95, i64 %eq.lhs.len75)
  %eq.cmp.zero97 = icmp eq i32 %eq.memcmp96, 0
  br label %str.eq.merge92

str.eq.else91:                                    ; preds = %str_ok77
  br label %str.eq.merge92

str.eq.merge92:                                   ; preds = %str.eq.else91, %str.eq.then90
  %str.eq.result98 = phi i1 [ %eq.cmp.zero97, %str.eq.then90 ], [ false, %str.eq.else91 ]
  %case.or99 = or i1 %case.or72, %str.eq.result98
  %eq.lhs.len100 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len101 = load i64, ptr %eq.lhs.len100, align 8
  %eq.lhs.len102 = and i64 %eq.lhs.len101, 281474976710655
  %str.tag103 = lshr i64 %eq.lhs.len101, 48
  %tag.immortal105 = icmp eq i64 %str.tag103, 0
  br i1 %tag.immortal105, label %str_ok104, label %tag.gen_check106

str_ok104:                                        ; preds = %abort.dead113, %tag.slow_check107, %tag.gen_check106, %str.eq.merge92
  %eq.rhs.len114 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len115 = and i64 %eq.rhs.len114, 281474976710655
  %eq.len116 = icmp eq i64 %eq.lhs.len102, %eq.rhs.len115
  br i1 %eq.len116, label %str.eq.then117, label %str.eq.else118

tag.gen_check106:                                 ; preds = %str.eq.merge92
  %active.gen109 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok110 = icmp eq i64 %str.tag103, %active.gen109
  br i1 %tag.fast.ok110, label %str_ok104, label %tag.slow_check107

tag.slow_check107:                                ; preds = %tag.gen_check106
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag103)
  br i1 %tag.valid112, label %str_ok104, label %tag.stale108

tag.stale108:                                     ; preds = %tag.slow_check107
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %str_ok104

str.eq.then117:                                   ; preds = %str_ok104
  %eq.lhs.data120 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data121 = load ptr, ptr %eq.lhs.data120, align 8
  %eq.rhs.data122 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp123 = call i32 @memcmp(ptr %eq.lhs.data121, ptr %eq.rhs.data122, i64 %eq.lhs.len102)
  %eq.cmp.zero124 = icmp eq i32 %eq.memcmp123, 0
  br label %str.eq.merge119

str.eq.else118:                                   ; preds = %str_ok104
  br label %str.eq.merge119

str.eq.merge119:                                  ; preds = %str.eq.else118, %str.eq.then117
  %str.eq.result125 = phi i1 [ %eq.cmp.zero124, %str.eq.then117 ], [ false, %str.eq.else118 ]
  %case.or126 = or i1 %case.or99, %str.eq.result125
  %eq.lhs.len127 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len128 = load i64, ptr %eq.lhs.len127, align 8
  %eq.lhs.len129 = and i64 %eq.lhs.len128, 281474976710655
  %str.tag130 = lshr i64 %eq.lhs.len128, 48
  %tag.immortal132 = icmp eq i64 %str.tag130, 0
  br i1 %tag.immortal132, label %str_ok131, label %tag.gen_check133

str_ok131:                                        ; preds = %abort.dead140, %tag.slow_check134, %tag.gen_check133, %str.eq.merge119
  %eq.rhs.len141 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len142 = and i64 %eq.rhs.len141, 281474976710655
  %eq.len143 = icmp eq i64 %eq.lhs.len129, %eq.rhs.len142
  br i1 %eq.len143, label %str.eq.then144, label %str.eq.else145

tag.gen_check133:                                 ; preds = %str.eq.merge119
  %active.gen136 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok137 = icmp eq i64 %str.tag130, %active.gen136
  br i1 %tag.fast.ok137, label %str_ok131, label %tag.slow_check134

tag.slow_check134:                                ; preds = %tag.gen_check133
  %arena.cur138 = call ptr @dva_arena_current()
  %tag.valid139 = call i1 @dva_arena_validate_tag(ptr %arena.cur138, i64 %str.tag130)
  br i1 %tag.valid139, label %str_ok131, label %tag.stale135

tag.stale135:                                     ; preds = %tag.slow_check134
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead140:                                    ; No predecessors!
  br label %str_ok131

str.eq.then144:                                   ; preds = %str_ok131
  %eq.lhs.data147 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data148 = load ptr, ptr %eq.lhs.data147, align 8
  %eq.rhs.data149 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp150 = call i32 @memcmp(ptr %eq.lhs.data148, ptr %eq.rhs.data149, i64 %eq.lhs.len129)
  %eq.cmp.zero151 = icmp eq i32 %eq.memcmp150, 0
  br label %str.eq.merge146

str.eq.else145:                                   ; preds = %str_ok131
  br label %str.eq.merge146

str.eq.merge146:                                  ; preds = %str.eq.else145, %str.eq.then144
  %str.eq.result152 = phi i1 [ %eq.cmp.zero151, %str.eq.then144 ], [ false, %str.eq.else145 ]
  %case.or153 = or i1 %case.or126, %str.eq.result152
  br i1 %case.or153, label %choice.case, label %choice.next

choice.then154:                                   ; preds = %choice.exit4
  ret i1 true

choice.exit155:                                   ; preds = %ret.dead156, %choice.exit4
  %var.load157 = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load157, ptr @str.23.struct)
  br i1 %call.res, label %or.592.then, label %or.592.else

ret.dead156:                                      ; No predecessors!
  br label %choice.exit155

or.592.then:                                      ; preds = %choice.exit155
  br label %or.592.exit

or.592.else:                                      ; preds = %choice.exit155
  %var.load158 = load ptr, ptr %var.code, align 8
  %call.res159 = call i1 @"formatter::starts_with_str"(ptr %var.load158, ptr @str.24.struct)
  br i1 %call.res159, label %and.593.then, label %and.593.else

or.592.exit:                                      ; preds = %and.593.exit, %or.592.then
  %or.592.phi = phi i1 [ %call.res, %or.592.then ], [ %and.593.phi, %and.593.exit ]
  br i1 %or.592.phi, label %choice.then162, label %choice.exit163

and.593.then:                                     ; preds = %or.592.else
  %var.load160 = load ptr, ptr %var.code, align 8
  %call.res161 = call i1 @"formatter::ends_with_str"(ptr %var.load160, ptr @str.25.struct)
  br label %and.593.exit

and.593.else:                                     ; preds = %or.592.else
  br label %and.593.exit

and.593.exit:                                     ; preds = %and.593.else, %and.593.then
  %and.593.phi = phi i1 [ %call.res161, %and.593.then ], [ %call.res159, %and.593.else ]
  br label %or.592.exit

choice.then162:                                   ; preds = %or.592.exit
  ret i1 true

choice.exit163:                                   ; preds = %ret.dead164, %or.592.exit
  %var.load165 = load ptr, ptr %var.code, align 8
  %call.res166 = call i1 @"formatter::starts_with_str"(ptr %var.load165, ptr @str.26.struct)
  br i1 %call.res166, label %and.594.then, label %and.594.else

ret.dead164:                                      ; No predecessors!
  br label %choice.exit163

and.594.then:                                     ; preds = %choice.exit163
  %var.load167 = load ptr, ptr %var.code, align 8
  %call.res168 = call i1 @"formatter::ends_with_str"(ptr %var.load167, ptr @str.25.struct)
  br label %and.594.exit

and.594.else:                                     ; preds = %choice.exit163
  br label %and.594.exit

and.594.exit:                                     ; preds = %and.594.else, %and.594.then
  %and.594.phi = phi i1 [ %call.res168, %and.594.then ], [ %call.res166, %and.594.else ]
  br i1 %and.594.phi, label %choice.then169, label %choice.exit170

choice.then169:                                   ; preds = %and.594.exit
  ret i1 true

choice.exit170:                                   ; preds = %ret.dead171, %and.594.exit
  %var.load172 = load ptr, ptr %var.code, align 8
  %call.res173 = call i1 @"formatter::ends_with_str"(ptr %var.load172, ptr @str.27.struct)
  br i1 %call.res173, label %or.595.then, label %or.595.else

ret.dead171:                                      ; No predecessors!
  br label %choice.exit170

or.595.then:                                      ; preds = %choice.exit170
  br label %or.595.exit

or.595.else:                                      ; preds = %choice.exit170
  %var.load174 = load ptr, ptr %var.code, align 8
  %call.res175 = call i1 @"formatter::ends_with_str"(ptr %var.load174, ptr @str.28.struct)
  br label %or.595.exit

or.595.exit:                                      ; preds = %or.595.else, %or.595.then
  %or.595.phi = phi i1 [ %call.res173, %or.595.then ], [ %call.res175, %or.595.else ]
  br i1 %or.595.phi, label %choice.then176, label %choice.exit177

choice.then176:                                   ; preds = %or.595.exit
  ret i1 true

choice.exit177:                                   ; preds = %ret.dead178, %or.595.exit
  %var.load179 = load ptr, ptr %var.code, align 8
  %call.res180 = call i1 @"formatter::ends_with_str"(ptr %var.load179, ptr @str.29.struct)
  br i1 %call.res180, label %or.596.then, label %or.596.else

ret.dead178:                                      ; No predecessors!
  br label %choice.exit177

or.596.then:                                      ; preds = %choice.exit177
  br label %or.596.exit

or.596.else:                                      ; preds = %choice.exit177
  %var.load181 = load ptr, ptr %var.code, align 8
  %call.res182 = call i1 @"formatter::ends_with_str"(ptr %var.load181, ptr @str.30.struct)
  br label %or.596.exit

or.596.exit:                                      ; preds = %or.596.else, %or.596.then
  %or.596.phi = phi i1 [ %call.res180, %or.596.then ], [ %call.res182, %or.596.else ]
  br i1 %or.596.phi, label %or.597.then, label %or.597.else

or.597.then:                                      ; preds = %or.596.exit
  br label %or.597.exit

or.597.else:                                      ; preds = %or.596.exit
  %var.load183 = load ptr, ptr %var.code, align 8
  %call.res184 = call i1 @"formatter::ends_with_str"(ptr %var.load183, ptr @str.31.struct)
  br label %or.597.exit

or.597.exit:                                      ; preds = %or.597.else, %or.597.then
  %or.597.phi = phi i1 [ %or.596.phi, %or.597.then ], [ %call.res184, %or.597.else ]
  br i1 %or.597.phi, label %or.598.then, label %or.598.else

or.598.then:                                      ; preds = %or.597.exit
  br label %or.598.exit

or.598.else:                                      ; preds = %or.597.exit
  %var.load185 = load ptr, ptr %var.code, align 8
  %call.res186 = call i1 @"formatter::ends_with_str"(ptr %var.load185, ptr @str.32.struct)
  br label %or.598.exit

or.598.exit:                                      ; preds = %or.598.else, %or.598.then
  %or.598.phi = phi i1 [ %or.597.phi, %or.598.then ], [ %call.res186, %or.598.else ]
  br i1 %or.598.phi, label %or.599.then, label %or.599.else

or.599.then:                                      ; preds = %or.598.exit
  br label %or.599.exit

or.599.else:                                      ; preds = %or.598.exit
  %var.load187 = load ptr, ptr %var.code, align 8
  %call.res188 = call i1 @"formatter::ends_with_str"(ptr %var.load187, ptr @str.33.struct)
  br label %or.599.exit

or.599.exit:                                      ; preds = %or.599.else, %or.599.then
  %or.599.phi = phi i1 [ %or.598.phi, %or.599.then ], [ %call.res188, %or.599.else ]
  br i1 %or.599.phi, label %choice.then189, label %choice.exit190

choice.then189:                                   ; preds = %or.599.exit
  ret i1 true

choice.exit190:                                   ; preds = %ret.dead191, %or.599.exit
  %var.load192 = load ptr, ptr %var.code, align 8
  %call.res193 = call i1 @"formatter::ends_with_str"(ptr %var.load192, ptr @str.34.struct)
  br i1 %call.res193, label %or.600.then, label %or.600.else

ret.dead191:                                      ; No predecessors!
  br label %choice.exit190

or.600.then:                                      ; preds = %choice.exit190
  br label %or.600.exit

or.600.else:                                      ; preds = %choice.exit190
  %var.load194 = load ptr, ptr %var.code, align 8
  %call.res195 = call i1 @"formatter::ends_with_str"(ptr %var.load194, ptr @str.35.struct)
  br label %or.600.exit

or.600.exit:                                      ; preds = %or.600.else, %or.600.then
  %or.600.phi = phi i1 [ %call.res193, %or.600.then ], [ %call.res195, %or.600.else ]
  br i1 %or.600.phi, label %choice.then196, label %choice.exit197

choice.then196:                                   ; preds = %or.600.exit
  ret i1 true

choice.exit197:                                   ; preds = %ret.dead198, %or.600.exit
  %var.load199 = load ptr, ptr %var.code, align 8
  %call.res200 = call i1 @"formatter::starts_with_str"(ptr %var.load199, ptr @str.36.struct)
  br i1 %call.res200, label %or.601.then, label %or.601.else

ret.dead198:                                      ; No predecessors!
  br label %choice.exit197

or.601.then:                                      ; preds = %choice.exit197
  br label %or.601.exit

or.601.else:                                      ; preds = %choice.exit197
  %var.load201 = load ptr, ptr %var.code, align 8
  %call.res202 = call i1 @"formatter::starts_with_str"(ptr %var.load201, ptr @str.37.struct)
  br label %or.601.exit

or.601.exit:                                      ; preds = %or.601.else, %or.601.then
  %or.601.phi = phi i1 [ %call.res200, %or.601.then ], [ %call.res202, %or.601.else ]
  br i1 %or.601.phi, label %and.602.then, label %and.602.else

and.602.then:                                     ; preds = %or.601.exit
  %var.load203 = load ptr, ptr %var.code, align 8
  %call.res204 = call i1 @"formatter::ends_with_str"(ptr %var.load203, ptr @str.38.struct)
  br label %and.602.exit

and.602.else:                                     ; preds = %or.601.exit
  br label %and.602.exit

and.602.exit:                                     ; preds = %and.602.else, %and.602.then
  %and.602.phi = phi i1 [ %call.res204, %and.602.then ], [ %or.601.phi, %and.602.else ]
  br i1 %and.602.phi, label %choice.then205, label %choice.exit206

choice.then205:                                   ; preds = %and.602.exit
  ret i1 true

choice.exit206:                                   ; preds = %ret.dead207, %and.602.exit
  %var.load208 = load ptr, ptr %var.code, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load208, i32 0, i32 0
  %s.read.len209 = load i64, ptr %s.read.len, align 8
  %s.read.len210 = and i64 %s.read.len209, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load208, i32 0, i32 1
  %s.read.data211 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

ret.dead207:                                      ; No predecessors!
  br label %choice.exit206

idx_big_check:                                    ; preds = %choice.exit206
  %idx.big = icmp sge i64 0, %s.read.len210
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead212, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data211, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp213 = icmp eq i64 %s.byte.val, 91
  br i1 %cmptmp213, label %or.603.then, label %or.603.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit206
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead212:                                    ; No predecessors!
  br label %idx_ok

or.603.then:                                      ; preds = %idx_ok
  br label %or.603.exit

or.603.else:                                      ; preds = %idx_ok
  %var.load214 = load ptr, ptr %var.code, align 8
  %call.res215 = call i1 @"formatter::starts_with_str"(ptr %var.load214, ptr @str.8.struct)
  br label %or.603.exit

or.603.exit:                                      ; preds = %or.603.else, %or.603.then
  %or.603.phi = phi i1 [ %cmptmp213, %or.603.then ], [ %call.res215, %or.603.else ]
  br i1 %or.603.phi, label %and.604.then, label %and.604.else

and.604.then:                                     ; preds = %or.603.exit
  %var.load216 = load ptr, ptr %var.code, align 8
  %call.res217 = call i1 @"formatter::ends_with_str"(ptr %var.load216, ptr @str.39.struct)
  br label %and.604.exit

and.604.else:                                     ; preds = %or.603.exit
  br label %and.604.exit

and.604.exit:                                     ; preds = %and.604.else, %and.604.then
  %and.604.phi = phi i1 [ %call.res217, %and.604.then ], [ %or.603.phi, %and.604.else ]
  br i1 %and.604.phi, label %choice.then218, label %choice.exit219

choice.then218:                                   ; preds = %and.604.exit
  ret i1 true

choice.exit219:                                   ; preds = %ret.dead220, %and.604.exit
  %var.load221 = load ptr, ptr %var.code, align 8
  %call.res222 = call i1 @"formatter::ends_with_str"(ptr %var.load221, ptr @str.40.struct)
  br i1 %call.res222, label %and.605.then, label %and.605.else

ret.dead220:                                      ; No predecessors!
  br label %choice.exit219

and.605.then:                                     ; preds = %choice.exit219
  %var.load223 = load ptr, ptr %var.code, align 8
  %call.res224 = call i1 @"formatter::ends_with_str"(ptr %var.load223, ptr @str.41.struct)
  %nottmp = xor i1 %call.res224, true
  br label %and.605.exit

and.605.else:                                     ; preds = %choice.exit219
  br label %and.605.exit

and.605.exit:                                     ; preds = %and.605.else, %and.605.then
  %and.605.phi = phi i1 [ %nottmp, %and.605.then ], [ %call.res222, %and.605.else ]
  br i1 %and.605.phi, label %and.606.then, label %and.606.else

and.606.then:                                     ; preds = %and.605.exit
  %var.load225 = load ptr, ptr %var.code, align 8
  %call.res226 = call i1 @"formatter::ends_with_str"(ptr %var.load225, ptr @str.42.struct)
  %nottmp227 = xor i1 %call.res226, true
  br label %and.606.exit

and.606.else:                                     ; preds = %and.605.exit
  br label %and.606.exit

and.606.exit:                                     ; preds = %and.606.else, %and.606.then
  %and.606.phi = phi i1 [ %nottmp227, %and.606.then ], [ %and.605.phi, %and.606.else ]
  br i1 %and.606.phi, label %and.607.then, label %and.607.else

and.607.then:                                     ; preds = %and.606.exit
  %var.load228 = load ptr, ptr %var.code, align 8
  %call.res229 = call i1 @"formatter::ends_with_str"(ptr %var.load228, ptr @str.43.struct)
  %nottmp230 = xor i1 %call.res229, true
  br label %and.607.exit

and.607.else:                                     ; preds = %and.606.exit
  br label %and.607.exit

and.607.exit:                                     ; preds = %and.607.else, %and.607.then
  %and.607.phi = phi i1 [ %nottmp230, %and.607.then ], [ %and.606.phi, %and.607.else ]
  br i1 %and.607.phi, label %and.608.then, label %and.608.else

and.608.then:                                     ; preds = %and.607.exit
  %var.load231 = load ptr, ptr %var.code, align 8
  %call.res232 = call i1 @"formatter::ends_with_str"(ptr %var.load231, ptr @str.44.struct)
  %nottmp233 = xor i1 %call.res232, true
  br label %and.608.exit

and.608.else:                                     ; preds = %and.607.exit
  br label %and.608.exit

and.608.exit:                                     ; preds = %and.608.else, %and.608.then
  %and.608.phi = phi i1 [ %nottmp233, %and.608.then ], [ %and.607.phi, %and.608.else ]
  br i1 %and.608.phi, label %and.609.then, label %and.609.else

and.609.then:                                     ; preds = %and.608.exit
  %var.load234 = load ptr, ptr %var.code, align 8
  %call.res235 = call i1 @"formatter::ends_with_str"(ptr %var.load234, ptr @str.45.struct)
  %nottmp236 = xor i1 %call.res235, true
  br label %and.609.exit

and.609.else:                                     ; preds = %and.608.exit
  br label %and.609.exit

and.609.exit:                                     ; preds = %and.609.else, %and.609.then
  %and.609.phi = phi i1 [ %nottmp236, %and.609.then ], [ %and.608.phi, %and.609.else ]
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %or.610.then, label %or.610.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  %arena.cur12 = call ptr @dva_arena_current()
  %a.create13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 24)
  %arena.cur14 = call ptr @dva_arena_current()
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
  %arena.cur23 = call ptr @dva_arena_current()
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
  %arena.cur24 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
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
  %arena.cur8 = call ptr @dva_arena_current()
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
  %arena.cur9 = call ptr @dva_arena_current()
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
  %var._2145 = alloca i64, align 8
  %var._i2144 = alloca i64, align 8
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
  store ptr %a.new, ptr %var.raw_stack, align 8
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
  store ptr %a.new3, ptr %var.canon_stack, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %a.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
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
  %arena.cur16 = call ptr @dva_arena_current()
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = call ptr @dva_arena_current()
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
  %arena.cur31 = call ptr @dva_arena_current()
  %a.create32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 24)
  %arena.cur33 = call ptr @dva_arena_current()
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
  %arena.cur58 = call ptr @dva_arena_current()
  %a.create59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 24)
  %arena.cur60 = call ptr @dva_arena_current()
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
  %arena.cur81 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len83

b.buf.len83:                                      ; preds = %abort.dead, %a.store68
  %arena.cur84 = call ptr @dva_arena_current()
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
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len83

a.create87:                                       ; preds = %b.buf.len83
  %arena.cur89 = call ptr @dva_arena_current()
  %a.create90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 24)
  %arena.cur91 = call ptr @dva_arena_current()
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
  %b.freeze.arena = call ptr @dva_arena_current()
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur120 = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %b.new.buf.len2117

b.rn.new.len127:                                  ; preds = %abort.dead129, %b.grow_done
  %b.cap130 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 2
  %b.cap131 = load i64, ptr %b.cap130, align 8
  %b.need.grow132 = icmp slt i64 %b.cap131, %sum125
  br i1 %b.need.grow132, label %b.grow2133, label %b.nogrow2134

str_overflow_abort128:                            ; preds = %b.grow_done
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur151 = call ptr @dva_arena_current()
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
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur227 = call ptr @dva_arena_current()
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
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur208 = call ptr @dva_arena_current()
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
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur586 = call ptr @dva_arena_current()
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
  %arena.cur239 = call ptr @dva_arena_current()
  %a.create240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 24)
  %arena.cur241 = call ptr @dva_arena_current()
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
  %arena.cur257 = call ptr @dva_arena_current()
  %a.create258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 24)
  %arena.cur259 = call ptr @dva_arena_current()
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
  %arena.cur268 = call ptr @dva_arena_current()
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
  %arena.cur269 = call ptr @dva_arena_current()
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
  %arena.cur294 = call ptr @dva_arena_current()
  %a.create295 = call ptr @dva_arena_alloc(ptr %arena.cur294, i64 24)
  %arena.cur296 = call ptr @dva_arena_current()
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
  %arena.cur318 = call ptr @dva_arena_current()
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
  %arena.cur329 = call ptr @dva_arena_current()
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
  %arena.cur359 = call ptr @dva_arena_current()
  %a.create360 = call ptr @dva_arena_alloc(ptr %arena.cur359, i64 24)
  %arena.cur361 = call ptr @dva_arena_current()
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
  %arena.cur383 = call ptr @dva_arena_current()
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
  %arena.cur394 = call ptr @dva_arena_current()
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
  %arena.cur443 = call ptr @dva_arena_current()
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
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur479 = call ptr @dva_arena_current()
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
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead478:                                    ; No predecessors!
  br label %b.new.buf.len2476

b.app.new.len501:                                 ; preds = %abort.dead503, %b.grow_done463
  %b.cap504 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load489, i32 0, i32 2
  %b.cap505 = load i64, ptr %b.cap504, align 8
  %b.need.grow506 = icmp slt i64 %b.cap505, %sum499
  br i1 %b.need.grow506, label %b.grow2507, label %b.nogrow2508

str_overflow_abort502:                            ; preds = %b.grow_done463
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur525 = call ptr @dva_arena_current()
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
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead524:                                    ; No predecessors!
  br label %b.new.buf.len2522

b.rn.new.len541:                                  ; preds = %abort.dead543, %b.grow_done509
  %b.cap544 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load535, i32 0, i32 2
  %b.cap545 = load i64, ptr %b.cap544, align 8
  %b.need.grow546 = icmp slt i64 %b.cap545, %sum539
  br i1 %b.need.grow546, label %b.grow2547, label %b.nogrow2548

str_overflow_abort542:                            ; preds = %b.grow_done509
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur565 = call ptr @dva_arena_current()
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
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur593 = call ptr @dva_arena_current()
  %a.create594 = call ptr @dva_arena_alloc(ptr %arena.cur593, i64 24)
  %arena.cur595 = call ptr @dva_arena_current()
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
  %arena.cur617 = call ptr @dva_arena_current()
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
  %arena.cur628 = call ptr @dva_arena_current()
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
  %arena.cur664 = call ptr @dva_arena_current()
  %a.create665 = call ptr @dva_arena_alloc(ptr %arena.cur664, i64 24)
  %arena.cur666 = call ptr @dva_arena_current()
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
  %arena.cur689 = call ptr @dva_arena_current()
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
  %arena.cur700 = call ptr @dva_arena_current()
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
  %arena.cur730 = call ptr @dva_arena_current()
  %a.create731 = call ptr @dva_arena_alloc(ptr %arena.cur730, i64 24)
  %arena.cur732 = call ptr @dva_arena_current()
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
  %arena.cur755 = call ptr @dva_arena_current()
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
  %arena.cur766 = call ptr @dva_arena_current()
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
  %arena.cur798 = call ptr @dva_arena_current()
  %a.create799 = call ptr @dva_arena_alloc(ptr %arena.cur798, i64 24)
  %arena.cur800 = call ptr @dva_arena_current()
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
  %arena.cur821 = call ptr @dva_arena_current()
  %a.create822 = call ptr @dva_arena_alloc(ptr %arena.cur821, i64 24)
  %arena.cur823 = call ptr @dva_arena_current()
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
  %arena.cur839 = call ptr @dva_arena_current()
  %a.create840 = call ptr @dva_arena_alloc(ptr %arena.cur839, i64 24)
  %arena.cur841 = call ptr @dva_arena_current()
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
  %arena.cur867 = call ptr @dva_arena_current()
  %a.create868 = call ptr @dva_arena_alloc(ptr %arena.cur867, i64 24)
  %arena.cur869 = call ptr @dva_arena_current()
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
  %arena.cur895 = call ptr @dva_arena_current()
  %a.create896 = call ptr @dva_arena_alloc(ptr %arena.cur895, i64 24)
  %arena.cur897 = call ptr @dva_arena_current()
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
  %arena.cur923 = call ptr @dva_arena_current()
  %a.create924 = call ptr @dva_arena_alloc(ptr %arena.cur923, i64 24)
  %arena.cur925 = call ptr @dva_arena_current()
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
  %arena.cur936 = call ptr @dva_arena_current()
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
  %arena.cur946 = call ptr @dva_arena_current()
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
  %arena.cur978 = call ptr @dva_arena_current()
  %a.create979 = call ptr @dva_arena_alloc(ptr %arena.cur978, i64 24)
  %arena.cur980 = call ptr @dva_arena_current()
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
  %arena.cur1002 = call ptr @dva_arena_current()
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
  %arena.cur1012 = call ptr @dva_arena_current()
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
  %arena.cur1065 = call ptr @dva_arena_current()
  %a.create1066 = call ptr @dva_arena_alloc(ptr %arena.cur1065, i64 24)
  %arena.cur1067 = call ptr @dva_arena_current()
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
  %arena.cur1090 = call ptr @dva_arena_current()
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
  %arena.cur1100 = call ptr @dva_arena_current()
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
  %arena.cur1161 = call ptr @dva_arena_current()
  %a.create1162 = call ptr @dva_arena_alloc(ptr %arena.cur1161, i64 24)
  %arena.cur1163 = call ptr @dva_arena_current()
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
  %arena.cur1186 = call ptr @dva_arena_current()
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
  %arena.cur1197 = call ptr @dva_arena_current()
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
  %arena.cur1234 = call ptr @dva_arena_current()
  %a.create1235 = call ptr @dva_arena_alloc(ptr %arena.cur1234, i64 24)
  %arena.cur1236 = call ptr @dva_arena_current()
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
  %arena.cur1259 = call ptr @dva_arena_current()
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
  %arena.cur1270 = call ptr @dva_arena_current()
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
  %arena.cur1306 = call ptr @dva_arena_current()
  %a.create1307 = call ptr @dva_arena_alloc(ptr %arena.cur1306, i64 24)
  %arena.cur1308 = call ptr @dva_arena_current()
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
  %arena.cur1331 = call ptr @dva_arena_current()
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
  %arena.cur1342 = call ptr @dva_arena_current()
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
  %arena.cur1373 = call ptr @dva_arena_current()
  %a.create1374 = call ptr @dva_arena_alloc(ptr %arena.cur1373, i64 24)
  %arena.cur1375 = call ptr @dva_arena_current()
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
  %arena.cur1398 = call ptr @dva_arena_current()
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
  %arena.cur1409 = call ptr @dva_arena_current()
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
  %arena.cur1441 = call ptr @dva_arena_current()
  %a.create1442 = call ptr @dva_arena_alloc(ptr %arena.cur1441, i64 24)
  %arena.cur1443 = call ptr @dva_arena_current()
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
  %arena.cur1466 = call ptr @dva_arena_current()
  %a.create1467 = call ptr @dva_arena_alloc(ptr %arena.cur1466, i64 24)
  %arena.cur1468 = call ptr @dva_arena_current()
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
  %arena.cur1485 = call ptr @dva_arena_current()
  %a.create1486 = call ptr @dva_arena_alloc(ptr %arena.cur1485, i64 24)
  %arena.cur1487 = call ptr @dva_arena_current()
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
  %arena.cur1513 = call ptr @dva_arena_current()
  %a.create1514 = call ptr @dva_arena_alloc(ptr %arena.cur1513, i64 24)
  %arena.cur1515 = call ptr @dva_arena_current()
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
  %arena.cur1541 = call ptr @dva_arena_current()
  %a.create1542 = call ptr @dva_arena_alloc(ptr %arena.cur1541, i64 24)
  %arena.cur1543 = call ptr @dva_arena_current()
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
  %arena.cur1570 = call ptr @dva_arena_current()
  %a.create1571 = call ptr @dva_arena_alloc(ptr %arena.cur1570, i64 24)
  %arena.cur1572 = call ptr @dva_arena_current()
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
  %arena.cur1594 = call ptr @dva_arena_current()
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
  %arena.cur1604 = call ptr @dva_arena_current()
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
  %arena.cur1657 = call ptr @dva_arena_current()
  %a.create1658 = call ptr @dva_arena_alloc(ptr %arena.cur1657, i64 24)
  %arena.cur1659 = call ptr @dva_arena_current()
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
  %arena.cur1681 = call ptr @dva_arena_current()
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
  %arena.cur1691 = call ptr @dva_arena_current()
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
  %arena.cur1744 = call ptr @dva_arena_current()
  %a.create1745 = call ptr @dva_arena_alloc(ptr %arena.cur1744, i64 24)
  %arena.cur1746 = call ptr @dva_arena_current()
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
  %arena.cur1769 = call ptr @dva_arena_current()
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
  %arena.cur1779 = call ptr @dva_arena_current()
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
  %arena.cur1834 = call ptr @dva_arena_current()
  %a.create1835 = call ptr @dva_arena_alloc(ptr %arena.cur1834, i64 24)
  %arena.cur1836 = call ptr @dva_arena_current()
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
  %arena.cur1860 = call ptr @dva_arena_current()
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
  %arena.cur1870 = call ptr @dva_arena_current()
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
  %arena.cur1923 = call ptr @dva_arena_current()
  %a.create1924 = call ptr @dva_arena_alloc(ptr %arena.cur1923, i64 24)
  %arena.cur1925 = call ptr @dva_arena_current()
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
  %arena.cur1948 = call ptr @dva_arena_current()
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
  %arena.cur1959 = call ptr @dva_arena_current()
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
  %arena.cur1988 = call ptr @dva_arena_current()
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
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur2037 = call ptr @dva_arena_current()
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
  %arena.cur2024 = call ptr @dva_arena_current()
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
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead2023:                                   ; No predecessors!
  br label %b.new.buf.len22021

b.app.new.len2049:                                ; preds = %abort.dead2051, %b.grow_done2008
  %b.cap2052 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2034, i32 0, i32 2
  %b.cap2053 = load i64, ptr %b.cap2052, align 8
  %b.need.grow2054 = icmp slt i64 %b.cap2053, %sum2047
  br i1 %b.need.grow2054, label %b.grow22055, label %b.nogrow22056

str_overflow_abort2050:                           ; preds = %b.grow_done2008
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur2073 = call ptr @dva_arena_current()
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
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead2072:                                   ; No predecessors!
  br label %b.new.buf.len22070

b.rn.new.len2089:                                 ; preds = %abort.dead2091, %b.grow_done2057
  %b.cap2092 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2083, i32 0, i32 2
  %b.cap2093 = load i64, ptr %b.cap2092, align 8
  %b.need.grow2094 = icmp slt i64 %b.cap2093, %sum2087
  br i1 %b.need.grow2094, label %b.grow22095, label %b.nogrow22096

str_overflow_abort2090:                           ; preds = %b.grow_done2057
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur2113 = call ptr @dva_arena_current()
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
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur2134 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur2134, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data2133, i64 %b.freeze.len2132, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len2132
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.644
  %b.freeze.data2135 = phi ptr [ %b.freeze.data2133, %loop.exit.644 ], [ %b.freeze.data2133, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur2136 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead2141, %tag.slow_check, %tag.gen_check, %b.freeze.done
  store i64 %str.len.query2139, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.652, align 8
  br label %loop.header.652

tag.gen_check:                                    ; preds = %b.freeze.done
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur2140 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur2140, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead2141:                                   ; No predecessors!
  br label %str_ok

loop.header.652:                                  ; preds = %loop.latch.652, %str_ok
  %counter.load2142 = load i64, ptr %loop.idx.652, align 8
  br label %loop.body.652

loop.body.652:                                    ; preds = %loop.header.652
  %loop.rel.i2143 = sub i64 %counter.load2142, 0
  store i64 1, ptr %loop.step.652, align 8
  store i64 %loop.rel.i2143, ptr %var._i2144, align 8
  store i64 %counter.load2142, ptr %var._2145, align 8
  %var.load2146 = load i64, ptr %"var.end'", align 8
  %cmptmp2147 = icmp sgt i64 %var.load2146, 1
  br i1 %cmptmp2147, label %and.653.then, label %and.653.else

loop.exit.nat.652:                                ; No predecessors!
  br label %loop.exit.652

loop.latch.652:                                   ; preds = %choice.exit2176
  %step.val2179 = load i64, ptr %loop.step.652, align 8
  %loop.next2180 = add i64 %counter.load2142, %step.val2179
  store i64 %loop.next2180, ptr %loop.idx.652, align 8
  br label %loop.header.652

loop.exit.652:                                    ; preds = %choice.else2175, %loop.exit.nat.652
  %var.load2181 = load ptr, ptr %var.res, align 8
  %s.read.len2182 = getelementptr inbounds { i64, ptr }, ptr %var.load2181, i32 0, i32 0
  %s.read.len2183 = load i64, ptr %s.read.len2182, align 8
  %s.read.len2184 = and i64 %s.read.len2183, 281474976710655
  %s.read.data2185 = getelementptr inbounds { i64, ptr }, ptr %var.load2181, i32 0, i32 1
  %s.read.data2186 = load ptr, ptr %s.read.data2185, align 8
  %var.load2187 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len2184, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len2184
  %final.start = select i1 %start.gt.len, i64 %s.read.len2184, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load2187, 0
  %rel.end = add i64 %s.read.len2184, %var.load2187
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load2187
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len2184
  %final.end = select i1 %end.gt.len, i64 %s.read.len2184, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data2186, i64 %final.start
  %arena.cur2188 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur2188, i64 16)
  %str.build.len.gep2189 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep2189, align 8
  %str.build.data.gep2190 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep2190, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

and.653.then:                                     ; preds = %loop.body.652
  %var.load2148 = load ptr, ptr %var.res, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2148, i32 0, i32 0
  %s.read.len2149 = load i64, ptr %s.read.len, align 8
  %s.read.len2150 = and i64 %s.read.len2149, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2148, i32 0, i32 1
  %s.read.data2151 = load ptr, ptr %s.read.data, align 8
  %var.load2152 = load i64, ptr %"var.end'", align 8
  %subtmp2153 = sub i64 %var.load2152, 1
  %idx.neg = icmp slt i64 %subtmp2153, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.653.else:                                     ; preds = %loop.body.652
  br label %and.653.exit

and.653.exit:                                     ; preds = %and.653.else, %idx_ok
  %and.653.phi = phi i1 [ %cmptmp2155, %idx_ok ], [ %cmptmp2147, %and.653.else ]
  br i1 %and.653.phi, label %and.654.then, label %and.654.else

idx_big_check:                                    ; preds = %and.653.then
  %idx.big = icmp sge i64 %subtmp2153, %s.read.len2150
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead2154, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data2151, i64 %subtmp2153
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp2155 = icmp eq i64 %s.byte.val, 10
  br label %and.653.exit

idx_oob:                                          ; preds = %idx_big_check, %and.653.then
  %21 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead2154:                                   ; No predecessors!
  br label %idx_ok

and.654.then:                                     ; preds = %and.653.exit
  %var.load2156 = load ptr, ptr %var.res, align 8
  %s.read.len2157 = getelementptr inbounds { i64, ptr }, ptr %var.load2156, i32 0, i32 0
  %s.read.len2158 = load i64, ptr %s.read.len2157, align 8
  %s.read.len2159 = and i64 %s.read.len2158, 281474976710655
  %s.read.data2160 = getelementptr inbounds { i64, ptr }, ptr %var.load2156, i32 0, i32 1
  %s.read.data2161 = load ptr, ptr %s.read.data2160, align 8
  %var.load2162 = load i64, ptr %"var.end'", align 8
  %subtmp2163 = sub i64 %var.load2162, 2
  %idx.neg2164 = icmp slt i64 %subtmp2163, 0
  br i1 %idx.neg2164, label %idx_oob2167, label %idx_big_check2165

and.654.else:                                     ; preds = %and.653.exit
  br label %and.654.exit

and.654.exit:                                     ; preds = %and.654.else, %idx_ok2166
  %and.654.phi = phi i1 [ %cmptmp2173, %idx_ok2166 ], [ %and.653.phi, %and.654.else ]
  br i1 %and.654.phi, label %choice.then2174, label %choice.else2175

idx_big_check2165:                                ; preds = %and.654.then
  %idx.big2168 = icmp sge i64 %subtmp2163, %s.read.len2159
  br i1 %idx.big2168, label %idx_oob2167, label %idx_ok2166

idx_ok2166:                                       ; preds = %abort.dead2169, %idx_big_check2165
  %s.byte.gep2170 = getelementptr i8, ptr %s.read.data2161, i64 %subtmp2163
  %s.byte2171 = load i8, ptr %s.byte.gep2170, align 1
  %s.byte.val2172 = zext i8 %s.byte2171 to i64
  %cmptmp2173 = icmp eq i64 %s.byte.val2172, 10
  br label %and.654.exit

idx_oob2167:                                      ; preds = %idx_big_check2165, %and.654.then
  %22 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead2169:                                   ; No predecessors!
  br label %idx_ok2166

choice.then2174:                                  ; preds = %and.654.exit
  %var.load2177 = load i64, ptr %"var.end'", align 8
  %subtmp2178 = sub i64 %var.load2177, 1
  store i64 %subtmp2178, ptr %"var.end'", align 8
  br label %choice.exit2176

choice.else2175:                                  ; preds = %and.654.exit
  br label %loop.exit.652

choice.exit2176:                                  ; preds = %choice.then2174
  br label %loop.latch.652
}

define { i64, ptr } @"formatter::format_safe_fallback"(ptr %0) #0 {
entry:
  %var._78 = alloca i64, align 8
  %var._i77 = alloca i64, align 8
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
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = call ptr @dva_arena_current()
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
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

a.create:                                         ; preds = %b.buf.len1
  %arena.cur3 = call ptr @dva_arena_current()
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
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
  %b.freeze.arena = call ptr @dva_arena_current()
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur26 = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %b.new.buf.len223

b.rn.new.len33:                                   ; preds = %abort.dead35, %b.grow_done
  %b.cap36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap36, align 8
  %b.need.grow38 = icmp slt i64 %b.cap37, %sum31
  br i1 %b.need.grow38, label %b.grow239, label %b.nogrow240

str_overflow_abort34:                             ; preds = %b.grow_done
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur57 = call ptr @dva_arena_current()
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
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur67 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data66, i64 %b.freeze.len65, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len65
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.655
  %b.freeze.data68 = phi ptr [ %b.freeze.data66, %loop.exit.655 ], [ %b.freeze.data66, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur69 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead74, %tag.slow_check, %tag.gen_check, %b.freeze.done
  store i64 %str.len.query72, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.657, align 8
  br label %loop.header.657

tag.gen_check:                                    ; preds = %b.freeze.done
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %str_ok

loop.header.657:                                  ; preds = %loop.latch.657, %str_ok
  %counter.load75 = load i64, ptr %loop.idx.657, align 8
  br label %loop.body.657

loop.body.657:                                    ; preds = %loop.header.657
  %loop.rel.i76 = sub i64 %counter.load75, 0
  store i64 1, ptr %loop.step.657, align 8
  store i64 %loop.rel.i76, ptr %var._i77, align 8
  store i64 %counter.load75, ptr %var._78, align 8
  %var.load79 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sgt i64 %var.load79, 1
  br i1 %cmptmp, label %and.658.then, label %and.658.else

loop.exit.nat.657:                                ; No predecessors!
  br label %loop.exit.657

loop.latch.657:                                   ; preds = %choice.exit
  %step.val107 = load i64, ptr %loop.step.657, align 8
  %loop.next108 = add i64 %counter.load75, %step.val107
  store i64 %loop.next108, ptr %loop.idx.657, align 8
  br label %loop.header.657

loop.exit.657:                                    ; preds = %choice.else, %loop.exit.nat.657
  %var.load109 = load ptr, ptr %var.res, align 8
  %s.read.len110 = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 0
  %s.read.len111 = load i64, ptr %s.read.len110, align 8
  %s.read.len112 = and i64 %s.read.len111, 281474976710655
  %s.read.data113 = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 1
  %s.read.data114 = load ptr, ptr %s.read.data113, align 8
  %var.load115 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len112, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len112
  %final.start = select i1 %start.gt.len, i64 %s.read.len112, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load115, 0
  %rel.end = add i64 %s.read.len112, %var.load115
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load115
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len112
  %final.end = select i1 %end.gt.len, i64 %s.read.len112, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data114, i64 %final.start
  %arena.cur116 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 16)
  %str.build.len.gep117 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep117, align 8
  %str.build.data.gep118 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep118, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

and.658.then:                                     ; preds = %loop.body.657
  %var.load80 = load ptr, ptr %var.res, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 0
  %s.read.len81 = load i64, ptr %s.read.len, align 8
  %s.read.len82 = and i64 %s.read.len81, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 1
  %s.read.data83 = load ptr, ptr %s.read.data, align 8
  %var.load84 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load84, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.658.else:                                     ; preds = %loop.body.657
  br label %and.658.exit

and.658.exit:                                     ; preds = %and.658.else, %idx_ok
  %and.658.phi = phi i1 [ %cmptmp86, %idx_ok ], [ %cmptmp, %and.658.else ]
  br i1 %and.658.phi, label %and.659.then, label %and.659.else

idx_big_check:                                    ; preds = %and.658.then
  %idx.big = icmp sge i64 %subtmp, %s.read.len82
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead85, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data83, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp86 = icmp eq i64 %s.byte.val, 10
  br label %and.658.exit

idx_oob:                                          ; preds = %idx_big_check, %and.658.then
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead85:                                     ; No predecessors!
  br label %idx_ok

and.659.then:                                     ; preds = %and.658.exit
  %var.load87 = load ptr, ptr %var.res, align 8
  %s.read.len88 = getelementptr inbounds { i64, ptr }, ptr %var.load87, i32 0, i32 0
  %s.read.len89 = load i64, ptr %s.read.len88, align 8
  %s.read.len90 = and i64 %s.read.len89, 281474976710655
  %s.read.data91 = getelementptr inbounds { i64, ptr }, ptr %var.load87, i32 0, i32 1
  %s.read.data92 = load ptr, ptr %s.read.data91, align 8
  %var.load93 = load i64, ptr %"var.end'", align 8
  %subtmp94 = sub i64 %var.load93, 2
  %idx.neg95 = icmp slt i64 %subtmp94, 0
  br i1 %idx.neg95, label %idx_oob98, label %idx_big_check96

and.659.else:                                     ; preds = %and.658.exit
  br label %and.659.exit

and.659.exit:                                     ; preds = %and.659.else, %idx_ok97
  %and.659.phi = phi i1 [ %cmptmp104, %idx_ok97 ], [ %and.658.phi, %and.659.else ]
  br i1 %and.659.phi, label %choice.then, label %choice.else

idx_big_check96:                                  ; preds = %and.659.then
  %idx.big99 = icmp sge i64 %subtmp94, %s.read.len90
  br i1 %idx.big99, label %idx_oob98, label %idx_ok97

idx_ok97:                                         ; preds = %abort.dead100, %idx_big_check96
  %s.byte.gep101 = getelementptr i8, ptr %s.read.data92, i64 %subtmp94
  %s.byte102 = load i8, ptr %s.byte.gep101, align 1
  %s.byte.val103 = zext i8 %s.byte102 to i64
  %cmptmp104 = icmp eq i64 %s.byte.val103, 10
  br label %and.659.exit

idx_oob98:                                        ; preds = %idx_big_check96, %and.659.then
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead100:                                    ; No predecessors!
  br label %idx_ok97

choice.then:                                      ; preds = %and.659.exit
  %var.load105 = load i64, ptr %"var.end'", align 8
  %subtmp106 = sub i64 %var.load105, 1
  store i64 %subtmp106, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.659.exit
  br label %loop.exit.657

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.657
}

define { i1, i64 } @"formatter::parse_ast_signature"(ptr %0, ptr %1) #0 {
entry:
  %cat.ibuf480 = alloca [24 x i8], align 1
  %cat.ibuf474 = alloca [24 x i8], align 1
  %cat.ibuf468 = alloca [24 x i8], align 1
  %var.fn447 = alloca ptr, align 8
  %var.d370 = alloca ptr, align 8
  %cat.ibuf146 = alloca [24 x i8], align 1
  %cat.ibuf140 = alloca [24 x i8], align 1
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
  %var.load242 = load ptr, ptr %var.diags, align 8
  %a.load243 = load ptr, ptr %var.diags, align 8
  %a.null244 = icmp eq ptr %a.load243, null
  br i1 %a.null244, label %a.create245, label %a.after246

choice.exit:                                      ; preds = %choice.exit260, %choice.exit15
  %choice.res617 = phi { i1, i64 } [ %choice.res241, %choice.exit15 ], [ %choice.res616, %choice.exit260 ]
  ret { i1, i64 } %choice.res617

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
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
  %var.load236 = load ptr, ptr %var.prog, align 8
  %call.res237 = call { i64, ptr } @"show::show_expr"(ptr %var.load236)
  %arena.cur238 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 16)
  store { i64, ptr } %call.res237, ptr %ret.ub.alloc, align 8
  %p.to.i64239 = ptrtoint ptr %ret.ub.alloc to i64
  %ram.pay240 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64239, 1
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %concat.tot.len212
  %choice.res241 = phi { i1, i64 } [ %ram.pay235, %concat.tot.len212 ], [ %ram.pay240, %choice.else14 ]
  br label %choice.exit

a.create19:                                       ; preds = %choice.then13
  %arena.cur21 = call ptr @dva_arena_current()
  %a.create22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur23 = call ptr @dva_arena_current()
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
  %arena.cur31 = call ptr @dva_arena_current()
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
  %arena.cur32 = call ptr @dva_arena_current()
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
  %pay.ptr68 = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr68, ptr %var.d, align 8
  %var.load69 = load ptr, ptr %var.d, align 8
  %fld.gep70 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load69, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep70, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len71 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len72 = and i64 %eq.lhs.len71, 281474976710655
  %str.tag73 = lshr i64 %eq.lhs.len71, 48
  %tag.immortal75 = icmp eq i64 %str.tag73, 0
  br i1 %tag.immortal75, label %str_ok74, label %tag.gen_check76

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %unwrap.abort.661
  %err.msg.len32 = trunc i64 %err.msg.len51 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data53 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len54 = load i64, ptr %err.file.len, align 8
  %err.file.len55 = and i64 %err.file.len54, 281474976710655
  %str.tag56 = lshr i64 %err.file.len54, 48
  %tag.immortal58 = icmp eq i64 %str.tag56, 0
  br i1 %tag.immortal58, label %str_ok57, label %tag.gen_check59

tag.gen_check:                                    ; preds = %unwrap.abort.661
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok57:                                         ; preds = %abort.dead66, %tag.slow_check60, %tag.gen_check59, %str_ok
  %err.file.len32 = trunc i64 %err.file.len55 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data67 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.gen_check59:                                  ; preds = %str_ok
  %active.gen62 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok63 = icmp eq i64 %str.tag56, %active.gen62
  br i1 %tag.fast.ok63, label %str_ok57, label %tag.slow_check60

tag.slow_check60:                                 ; preds = %tag.gen_check59
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %str.tag56)
  br i1 %tag.valid65, label %str_ok57, label %tag.stale61

tag.stale61:                                      ; preds = %tag.slow_check60
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead66:                                     ; No predecessors!
  br label %str_ok57

err.thread:                                       ; preds = %str_ok57
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok57
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data53, i32 %err.file.len32, ptr %err.file.data67, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_ok74:                                         ; preds = %abort.dead83, %tag.slow_check77, %tag.gen_check76, %unwrap.pos.661
  %eq.rhs.len = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len84 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len72, %eq.rhs.len84
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check76:                                  ; preds = %unwrap.pos.661
  %active.gen79 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok80 = icmp eq i64 %str.tag73, %active.gen79
  br i1 %tag.fast.ok80, label %str_ok74, label %tag.slow_check77

tag.slow_check77:                                 ; preds = %tag.gen_check76
  %arena.cur81 = call ptr @dva_arena_current()
  %tag.valid82 = call i1 @dva_arena_validate_tag(ptr %arena.cur81, i64 %str.tag73)
  br i1 %tag.valid82, label %str_ok74, label %tag.stale78

tag.stale78:                                      ; preds = %tag.slow_check77
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead83:                                     ; No predecessors!
  br label %str_ok74

str.eq.then:                                      ; preds = %str_ok74
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data85 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data85, ptr %eq.rhs.data, i64 %eq.lhs.len72)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok74
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then86, label %choice.else87

choice.then86:                                    ; preds = %str.eq.merge
  %var.load89 = load ptr, ptr %var.d, align 8
  %fld.gep90 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load89, i32 0, i32 1
  %fld.load91 = load ptr, ptr %fld.gep90, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load91, i32 0, i32 0
  %concat.lhs92 = load i64, ptr %concat.lhs, align 8
  %concat.lhs93 = and i64 %concat.lhs92, 281474976710655
  %str.tag94 = lshr i64 %concat.lhs92, 48
  %tag.immortal96 = icmp eq i64 %str.tag94, 0
  br i1 %tag.immortal96, label %str_ok95, label %tag.gen_check97

choice.else87:                                    ; preds = %str.eq.merge
  br label %choice.exit88

choice.exit88:                                    ; preds = %choice.else87, %concat.tot.len113
  %choice.res = phi ptr [ %concat.str, %concat.tot.len113 ], [ @str.12.struct, %choice.else87 ]
  store ptr %choice.res, ptr %var.fn, align 8
  %var.load118 = load ptr, ptr %var.fn, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %cat.seg119 = load i64, ptr %cat.seg, align 8
  %cat.seg120 = and i64 %cat.seg119, 281474976710655
  %str.tag121 = lshr i64 %cat.seg119, 48
  %tag.immortal123 = icmp eq i64 %str.tag121, 0
  br i1 %tag.immortal123, label %str_ok122, label %tag.gen_check124

str_ok95:                                         ; preds = %abort.dead104, %tag.slow_check98, %tag.gen_check97, %choice.then86
  %concat.lhs105 = getelementptr inbounds { i64, ptr }, ptr %fld.load91, i32 0, i32 1
  %concat.lhs106 = load ptr, ptr %concat.lhs105, align 8
  %concat.rhs = load i64, ptr @str.70.struct, align 8
  %concat.rhs107 = and i64 %concat.rhs, 281474976710655
  %concat.rhs108 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs93, i64 %concat.rhs107)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len109

tag.gen_check97:                                  ; preds = %choice.then86
  %active.gen100 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok101 = icmp eq i64 %str.tag94, %active.gen100
  br i1 %tag.fast.ok101, label %str_ok95, label %tag.slow_check98

tag.slow_check98:                                 ; preds = %tag.gen_check97
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %str.tag94)
  br i1 %tag.valid103, label %str_ok95, label %tag.stale99

tag.stale99:                                      ; preds = %tag.slow_check98
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead104:                                    ; No predecessors!
  br label %str_ok95

concat.sum.len109:                                ; preds = %abort.dead110, %str_ok95
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum111 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf112 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf112, label %str_overflow_abort114, label %concat.tot.len113

str_overflow_abort:                               ; preds = %str_ok95
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead110:                                    ; No predecessors!
  br label %concat.sum.len109

concat.tot.len113:                                ; preds = %abort.dead115, %concat.sum.len109
  %arena.cur116 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 %sum111)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs106, i64 %concat.lhs93, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs93
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs108, i64 %concat.rhs107, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur117 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit88

str_overflow_abort114:                            ; preds = %concat.sum.len109
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead115:                                    ; No predecessors!
  br label %concat.tot.len113

str_ok122:                                        ; preds = %abort.dead131, %tag.slow_check125, %tag.gen_check124, %choice.exit88
  %cat.seg132 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %cat.seg133 = load ptr, ptr %cat.seg132, align 8
  %var.load134 = load ptr, ptr %var.d, align 8
  %fld.gep135 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load134, i32 0, i32 2
  %fld.load136 = load i64, ptr %fld.gep135, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %fld.load136, i1 false)
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %var.load137 = load ptr, ptr %var.d, align 8
  %fld.gep138 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load137, i32 0, i32 3
  %fld.load139 = load i64, ptr %fld.gep138, align 8
  %cat.ilen141 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf140, i64 %fld.load139, i1 false)
  %cat.lit.data142 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.71.struct, i32 0, i32 1), align 8
  %var.load143 = load ptr, ptr %var.d, align 8
  %fld.gep144 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load143, i32 0, i32 0
  %fld.load145 = load i64, ptr %fld.gep144, align 8
  %cat.ilen147 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf146, i64 %fld.load145, i1 false)
  %cat.lit.data148 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %var.load149 = load ptr, ptr %var.d, align 8
  %fld.gep150 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load149, i32 0, i32 4
  %fld.load151 = load ptr, ptr %fld.gep150, align 8
  %cat.seg152 = getelementptr inbounds { i64, ptr }, ptr %fld.load151, i32 0, i32 0
  %cat.seg153 = load i64, ptr %cat.seg152, align 8
  %cat.seg154 = and i64 %cat.seg153, 281474976710655
  %str.tag155 = lshr i64 %cat.seg153, 48
  %tag.immortal157 = icmp eq i64 %str.tag155, 0
  br i1 %tag.immortal157, label %str_ok156, label %tag.gen_check158

tag.gen_check124:                                 ; preds = %choice.exit88
  %active.gen127 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok128 = icmp eq i64 %str.tag121, %active.gen127
  br i1 %tag.fast.ok128, label %str_ok122, label %tag.slow_check125

tag.slow_check125:                                ; preds = %tag.gen_check124
  %arena.cur129 = call ptr @dva_arena_current()
  %tag.valid130 = call i1 @dva_arena_validate_tag(ptr %arena.cur129, i64 %str.tag121)
  br i1 %tag.valid130, label %str_ok122, label %tag.stale126

tag.stale126:                                     ; preds = %tag.slow_check125
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead131:                                    ; No predecessors!
  br label %str_ok122

str_ok156:                                        ; preds = %abort.dead165, %tag.slow_check159, %tag.gen_check158, %str_ok122
  %cat.seg166 = getelementptr inbounds { i64, ptr }, ptr %fld.load151, i32 0, i32 1
  %cat.seg167 = load ptr, ptr %cat.seg166, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg120, i64 %cat.ilen)
  %sum168 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf169 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf169, label %str_overflow_abort171, label %cat.sum.len170

tag.gen_check158:                                 ; preds = %str_ok122
  %active.gen161 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok162 = icmp eq i64 %str.tag155, %active.gen161
  br i1 %tag.fast.ok162, label %str_ok156, label %tag.slow_check159

tag.slow_check159:                                ; preds = %tag.gen_check158
  %arena.cur163 = call ptr @dva_arena_current()
  %tag.valid164 = call i1 @dva_arena_validate_tag(ptr %arena.cur163, i64 %str.tag155)
  br i1 %tag.valid164, label %str_ok156, label %tag.stale160

tag.stale160:                                     ; preds = %tag.slow_check159
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead165:                                    ; No predecessors!
  br label %str_ok156

cat.sum.len170:                                   ; preds = %abort.dead172, %str_ok156
  %cat.sum.len173 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum168, i64 1)
  %sum174 = extractvalue { i64, i1 } %cat.sum.len173, 0
  %ovf175 = extractvalue { i64, i1 } %cat.sum.len173, 1
  br i1 %ovf175, label %str_overflow_abort177, label %cat.sum.len176

str_overflow_abort171:                            ; preds = %str_ok156
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead172:                                    ; No predecessors!
  br label %cat.sum.len170

cat.sum.len176:                                   ; preds = %abort.dead178, %cat.sum.len170
  %cat.sum.len179 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum174, i64 %cat.ilen141)
  %sum180 = extractvalue { i64, i1 } %cat.sum.len179, 0
  %ovf181 = extractvalue { i64, i1 } %cat.sum.len179, 1
  br i1 %ovf181, label %str_overflow_abort183, label %cat.sum.len182

str_overflow_abort177:                            ; preds = %cat.sum.len170
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead178:                                    ; No predecessors!
  br label %cat.sum.len176

cat.sum.len182:                                   ; preds = %abort.dead184, %cat.sum.len176
  %cat.sum.len185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum180, i64 3)
  %sum186 = extractvalue { i64, i1 } %cat.sum.len185, 0
  %ovf187 = extractvalue { i64, i1 } %cat.sum.len185, 1
  br i1 %ovf187, label %str_overflow_abort189, label %cat.sum.len188

str_overflow_abort183:                            ; preds = %cat.sum.len176
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead184:                                    ; No predecessors!
  br label %cat.sum.len182

cat.sum.len188:                                   ; preds = %abort.dead190, %cat.sum.len182
  %cat.sum.len191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum186, i64 %cat.ilen147)
  %sum192 = extractvalue { i64, i1 } %cat.sum.len191, 0
  %ovf193 = extractvalue { i64, i1 } %cat.sum.len191, 1
  br i1 %ovf193, label %str_overflow_abort195, label %cat.sum.len194

str_overflow_abort189:                            ; preds = %cat.sum.len182
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead190:                                    ; No predecessors!
  br label %cat.sum.len188

cat.sum.len194:                                   ; preds = %abort.dead196, %cat.sum.len188
  %cat.sum.len197 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum192, i64 2)
  %sum198 = extractvalue { i64, i1 } %cat.sum.len197, 0
  %ovf199 = extractvalue { i64, i1 } %cat.sum.len197, 1
  br i1 %ovf199, label %str_overflow_abort201, label %cat.sum.len200

str_overflow_abort195:                            ; preds = %cat.sum.len188
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead196:                                    ; No predecessors!
  br label %cat.sum.len194

cat.sum.len200:                                   ; preds = %abort.dead202, %cat.sum.len194
  %cat.sum.len203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum198, i64 %cat.seg154)
  %sum204 = extractvalue { i64, i1 } %cat.sum.len203, 0
  %ovf205 = extractvalue { i64, i1 } %cat.sum.len203, 1
  br i1 %ovf205, label %str_overflow_abort207, label %cat.sum.len206

str_overflow_abort201:                            ; preds = %cat.sum.len194
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead202:                                    ; No predecessors!
  br label %cat.sum.len200

cat.sum.len206:                                   ; preds = %abort.dead208, %cat.sum.len200
  %concat.tot.len209 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum204, i64 1)
  %sum210 = extractvalue { i64, i1 } %concat.tot.len209, 0
  %ovf211 = extractvalue { i64, i1 } %concat.tot.len209, 1
  br i1 %ovf211, label %str_overflow_abort213, label %concat.tot.len212

str_overflow_abort207:                            ; preds = %cat.sum.len200
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead208:                                    ; No predecessors!
  br label %cat.sum.len206

concat.tot.len212:                                ; preds = %abort.dead214, %cat.sum.len206
  %arena.cur215 = call ptr @dva_arena_current()
  %concat.buf216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 %sum210)
  %cat.dst = getelementptr i8, ptr %concat.buf216, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg133, i64 %cat.seg120, i1 false)
  %cat.off = add i64 0, %cat.seg120
  %cat.dst217 = getelementptr i8, ptr %concat.buf216, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst217, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off218 = add i64 %cat.off, %cat.ilen
  %cat.dst219 = getelementptr i8, ptr %concat.buf216, i64 %cat.off218
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst219, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.off220 = add i64 %cat.off218, 1
  %cat.dst221 = getelementptr i8, ptr %concat.buf216, i64 %cat.off220
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst221, ptr align 1 %cat.ibuf140, i64 %cat.ilen141, i1 false)
  %cat.off222 = add i64 %cat.off220, %cat.ilen141
  %cat.dst223 = getelementptr i8, ptr %concat.buf216, i64 %cat.off222
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst223, ptr align 1 %cat.lit.data142, i64 3, i1 false)
  %cat.off224 = add i64 %cat.off222, 3
  %cat.dst225 = getelementptr i8, ptr %concat.buf216, i64 %cat.off224
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst225, ptr align 1 %cat.ibuf146, i64 %cat.ilen147, i1 false)
  %cat.off226 = add i64 %cat.off224, %cat.ilen147
  %cat.dst227 = getelementptr i8, ptr %concat.buf216, i64 %cat.off226
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst227, ptr align 1 %cat.lit.data148, i64 2, i1 false)
  %cat.off228 = add i64 %cat.off226, 2
  %cat.dst229 = getelementptr i8, ptr %concat.buf216, i64 %cat.off228
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst229, ptr align 1 %cat.seg167, i64 %cat.seg154, i1 false)
  %concat.nul230 = getelementptr i8, ptr %concat.buf216, i64 %sum204
  store i8 0, ptr %concat.nul230, align 1
  %arena.cur231 = call ptr @dva_arena_current()
  %concat.str232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 16)
  %str.build.len.gep233 = getelementptr inbounds { i64, ptr }, ptr %concat.str232, i32 0, i32 0
  store i64 %sum204, ptr %str.build.len.gep233, align 8
  %str.build.data.gep234 = getelementptr inbounds { i64, ptr }, ptr %concat.str232, i32 0, i32 1
  store ptr %concat.buf216, ptr %str.build.data.gep234, align 8
  %p.to.i64 = ptrtoint ptr %concat.str232 to i64
  %ram.pay235 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit15

str_overflow_abort213:                            ; preds = %cat.sum.len206
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead214:                                    ; No predecessors!
  br label %concat.tot.len212

a.create245:                                      ; preds = %choice.else
  %arena.cur247 = call ptr @dva_arena_current()
  %a.create248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 24)
  %arena.cur249 = call ptr @dva_arena_current()
  %a.buf250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 128)
  %a.len.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 0
  store i64 0, ptr %a.len.gep251, align 8
  %a.data.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 1
  store ptr %a.buf250, ptr %a.data.gep252, align 8
  %a.cap.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 2
  store i64 16, ptr %a.cap.gep253, align 8
  store ptr %a.create248, ptr %var.diags, align 8
  br label %a.after246

a.after246:                                       ; preds = %a.create245, %choice.else
  %a.load2254 = load ptr, ptr %var.diags, align 8
  %a.len.query255 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2254, i32 0, i32 0
  %a.len.query256 = load i64, ptr %a.len.query255, align 8
  %cmptmp257 = icmp sgt i64 %a.len.query256, 0
  br i1 %cmptmp257, label %choice.then258, label %choice.else259

choice.then258:                                   ; preds = %a.after246
  %var.load261 = load ptr, ptr %var.diags, align 8
  %a.load262 = load ptr, ptr %var.diags, align 8
  %a.null263 = icmp eq ptr %a.load262, null
  br i1 %a.null263, label %a.create264, label %a.after265

choice.else259:                                   ; preds = %a.after246
  %var.load574 = load ptr, ptr %var.filename, align 8
  %concat.lhs575 = getelementptr inbounds { i64, ptr }, ptr %var.load574, i32 0, i32 0
  %concat.lhs576 = load i64, ptr %concat.lhs575, align 8
  %concat.lhs577 = and i64 %concat.lhs576, 281474976710655
  %str.tag578 = lshr i64 %concat.lhs576, 48
  %tag.immortal580 = icmp eq i64 %str.tag578, 0
  br i1 %tag.immortal580, label %str_ok579, label %tag.gen_check581

choice.exit260:                                   ; preds = %concat.tot.len603, %concat.tot.len547
  %choice.res616 = phi { i1, i64 } [ %ram.pay573, %concat.tot.len547 ], [ %ram.pay615, %concat.tot.len603 ]
  br label %choice.exit

a.create264:                                      ; preds = %choice.then258
  %arena.cur266 = call ptr @dva_arena_current()
  %a.create267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 24)
  %arena.cur268 = call ptr @dva_arena_current()
  %a.buf269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 128)
  %a.len.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 0
  store i64 0, ptr %a.len.gep270, align 8
  %a.data.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 1
  store ptr %a.buf269, ptr %a.data.gep271, align 8
  %a.cap.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 2
  store i64 16, ptr %a.cap.gep272, align 8
  store ptr %a.create267, ptr %var.diags, align 8
  br label %a.after265

a.after265:                                       ; preds = %a.create264, %choice.then258
  %a.load2273 = load ptr, ptr %var.diags, align 8
  %a.rd.nonnull274 = icmp ne ptr %a.load2273, null
  br i1 %a.rd.nonnull274, label %a.rd.check275, label %a.rd.err.null277

a.rd.check275:                                    ; preds = %a.after265
  %a.rd.len280 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2273, i32 0, i32 0
  %a.rd.len281 = load i64, ptr %a.rd.len280, align 8
  %a.rd.lt282 = icmp slt i64 0, %a.rd.len281
  %a.rd.bounds283 = and i1 true, %a.rd.lt282
  br i1 %a.rd.bounds283, label %a.rd.ok276, label %a.rd.err.oob278

a.rd.ok276:                                       ; preds = %a.rd.check275
  %a.rd.data284 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2273, i32 0, i32 1
  %a.rd.data285 = load ptr, ptr %a.rd.data284, align 8
  %a.rd.elem.gep286 = getelementptr i64, ptr %a.rd.data285, i64 0
  %a.rd.elem287 = load i64, ptr %a.rd.elem.gep286, align 8
  br label %a.rd.done279

a.rd.err.null277:                                 ; preds = %a.after265
  %arena.cur288 = call ptr @dva_arena_current()
  %err.alloc289 = call ptr @dva_arena_alloc(ptr %arena.cur288, i64 56)
  %err.code.gep290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 0
  store i64 4011, ptr %err.code.gep290, align 8
  %err.msg.gep291 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep291, align 8
  %err.file.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep292, align 8
  %err.line.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 3
  store i64 676, ptr %err.line.gep293, align 8
  %err.col.gep294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 4
  store i64 28, ptr %err.col.gep294, align 8
  %err.ctx.gep295 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc289, i32 0, i32 5
  %err.ctx0.gep296 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep295, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep296, align 8
  %err.ctx1.gep297 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep295, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep297, align 8
  %err.p2i298 = ptrtoint ptr %err.alloc289 to i64
  br label %a.rd.done279

a.rd.err.oob278:                                  ; preds = %a.rd.check275
  %arena.cur299 = call ptr @dva_arena_current()
  %err.alloc300 = call ptr @dva_arena_alloc(ptr %arena.cur299, i64 56)
  %err.code.gep301 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 0
  store i64 4011, ptr %err.code.gep301, align 8
  %err.msg.gep302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep302, align 8
  %err.file.gep303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep303, align 8
  %err.line.gep304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 3
  store i64 676, ptr %err.line.gep304, align 8
  %err.col.gep305 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 4
  store i64 28, ptr %err.col.gep305, align 8
  %err.ctx.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 5
  %err.ctx0.gep307 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep306, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep307, align 8
  %err.ctx1.gep308 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep306, i32 0, i32 1
  store i64 %a.rd.len281, ptr %err.ctx1.gep308, align 8
  %err.p2i309 = ptrtoint ptr %err.alloc300 to i64
  br label %a.rd.done279

a.rd.done279:                                     ; preds = %a.rd.err.oob278, %a.rd.err.null277, %a.rd.ok276
  %a.rd.tag310 = phi i1 [ true, %a.rd.ok276 ], [ false, %a.rd.err.null277 ], [ false, %a.rd.err.oob278 ]
  %a.rd.pay311 = phi i64 [ %a.rd.elem287, %a.rd.ok276 ], [ %err.p2i298, %a.rd.err.null277 ], [ %err.p2i309, %a.rd.err.oob278 ]
  %ram.tag312 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag310, 0
  %ram.pay313 = insertvalue { i1, i64 } %ram.tag312, i64 %a.rd.pay311, 1
  %unwrap.is_pos314 = extractvalue { i1, i64 } %ram.pay313, 0
  br i1 %unwrap.is_pos314, label %unwrap.pos.662, label %unwrap.abort.662

unwrap.pos.662:                                   ; preds = %a.rd.done279
  %unwrap.pay.pos368 = extractvalue { i1, i64 } %ram.pay313, 1
  %pay.ptr369 = inttoptr i64 %unwrap.pay.pos368 to ptr
  store ptr %pay.ptr369, ptr %var.d370, align 8
  %var.load371 = load ptr, ptr %var.d370, align 8
  %fld.gep372 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load371, i32 0, i32 1
  %fld.load373 = load ptr, ptr %fld.gep372, align 8
  %eq.lhs.len374 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 0
  %eq.lhs.len375 = load i64, ptr %eq.lhs.len374, align 8
  %eq.lhs.len376 = and i64 %eq.lhs.len375, 281474976710655
  %str.tag377 = lshr i64 %eq.lhs.len375, 48
  %tag.immortal379 = icmp eq i64 %str.tag377, 0
  br i1 %tag.immortal379, label %str_ok378, label %tag.gen_check380

unwrap.abort.662:                                 ; preds = %a.rd.done279
  %unwrap.pay.abort315 = extractvalue { i1, i64 } %ram.pay313, 1
  %err.ptr316 = inttoptr i64 %unwrap.pay.abort315 to ptr
  %err.code.gep317 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr316, i32 0, i32 0
  %err.code318 = load i64, ptr %err.code.gep317, align 8
  %err.msg.gep319 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr316, i32 0, i32 1
  %err.msg.struct320 = load ptr, ptr %err.msg.gep319, align 8
  %err.file.gep321 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr316, i32 0, i32 2
  %err.file.struct322 = load ptr, ptr %err.file.gep321, align 8
  %err.line.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr316, i32 0, i32 3
  %err.line324 = load i64, ptr %err.line.gep323, align 8
  %err.col.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr316, i32 0, i32 4
  %err.col326 = load i64, ptr %err.col.gep325, align 8
  %err.msg.len327 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct320, i32 0, i32 0
  %err.msg.len328 = load i64, ptr %err.msg.len327, align 8
  %err.msg.len329 = and i64 %err.msg.len328, 281474976710655
  %str.tag330 = lshr i64 %err.msg.len328, 48
  %tag.immortal332 = icmp eq i64 %str.tag330, 0
  br i1 %tag.immortal332, label %str_ok331, label %tag.gen_check333

str_ok331:                                        ; preds = %abort.dead340, %tag.slow_check334, %tag.gen_check333, %unwrap.abort.662
  %err.msg.len32341 = trunc i64 %err.msg.len329 to i32
  %err.msg.data342 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct320, i32 0, i32 1
  %err.msg.data343 = load ptr, ptr %err.msg.data342, align 8
  %err.file.len344 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct322, i32 0, i32 0
  %err.file.len345 = load i64, ptr %err.file.len344, align 8
  %err.file.len346 = and i64 %err.file.len345, 281474976710655
  %str.tag347 = lshr i64 %err.file.len345, 48
  %tag.immortal349 = icmp eq i64 %str.tag347, 0
  br i1 %tag.immortal349, label %str_ok348, label %tag.gen_check350

tag.gen_check333:                                 ; preds = %unwrap.abort.662
  %active.gen336 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok337 = icmp eq i64 %str.tag330, %active.gen336
  br i1 %tag.fast.ok337, label %str_ok331, label %tag.slow_check334

tag.slow_check334:                                ; preds = %tag.gen_check333
  %arena.cur338 = call ptr @dva_arena_current()
  %tag.valid339 = call i1 @dva_arena_validate_tag(ptr %arena.cur338, i64 %str.tag330)
  br i1 %tag.valid339, label %str_ok331, label %tag.stale335

tag.stale335:                                     ; preds = %tag.slow_check334
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead340:                                    ; No predecessors!
  br label %str_ok331

str_ok348:                                        ; preds = %abort.dead357, %tag.slow_check351, %tag.gen_check350, %str_ok331
  %err.file.len32358 = trunc i64 %err.file.len346 to i32
  %err.file.data359 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct322, i32 0, i32 1
  %err.file.data360 = load ptr, ptr %err.file.data359, align 8
  %err.thread.rec361 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread362 = icmp ne ptr %err.thread.rec361, null
  br i1 %err.is.thread362, label %err.thread363, label %err.normal364

tag.gen_check350:                                 ; preds = %str_ok331
  %active.gen353 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok354 = icmp eq i64 %str.tag347, %active.gen353
  br i1 %tag.fast.ok354, label %str_ok348, label %tag.slow_check351

tag.slow_check351:                                ; preds = %tag.gen_check350
  %arena.cur355 = call ptr @dva_arena_current()
  %tag.valid356 = call i1 @dva_arena_validate_tag(ptr %arena.cur355, i64 %str.tag347)
  br i1 %tag.valid356, label %str_ok348, label %tag.stale352

tag.stale352:                                     ; preds = %tag.slow_check351
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead357:                                    ; No predecessors!
  br label %str_ok348

err.thread363:                                    ; preds = %str_ok348
  %err.haserr.gep365 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec361, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep365, align 8
  %err.err.gep366 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec361, i32 0, i32 7
  store ptr %err.ptr316, ptr %err.err.gep366, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal364:                                    ; preds = %str_ok348
  %err.panic.printf367 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code318, i32 %err.msg.len32341, ptr %err.msg.data343, i32 %err.file.len32358, ptr %err.file.data360, i64 %err.line324, i64 %err.col326)
  call void @exit(i32 1)
  unreachable

str_ok378:                                        ; preds = %abort.dead387, %tag.slow_check381, %tag.gen_check380, %unwrap.pos.662
  %eq.rhs.len388 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len389 = and i64 %eq.rhs.len388, 281474976710655
  %eq.len390 = icmp eq i64 %eq.lhs.len376, %eq.rhs.len389
  br i1 %eq.len390, label %str.eq.then391, label %str.eq.else392

tag.gen_check380:                                 ; preds = %unwrap.pos.662
  %active.gen383 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok384 = icmp eq i64 %str.tag377, %active.gen383
  br i1 %tag.fast.ok384, label %str_ok378, label %tag.slow_check381

tag.slow_check381:                                ; preds = %tag.gen_check380
  %arena.cur385 = call ptr @dva_arena_current()
  %tag.valid386 = call i1 @dva_arena_validate_tag(ptr %arena.cur385, i64 %str.tag377)
  br i1 %tag.valid386, label %str_ok378, label %tag.stale382

tag.stale382:                                     ; preds = %tag.slow_check381
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead387:                                    ; No predecessors!
  br label %str_ok378

str.eq.then391:                                   ; preds = %str_ok378
  %eq.lhs.data394 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 1
  %eq.lhs.data395 = load ptr, ptr %eq.lhs.data394, align 8
  %eq.rhs.data396 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp397 = call i32 @memcmp(ptr %eq.lhs.data395, ptr %eq.rhs.data396, i64 %eq.lhs.len376)
  %eq.cmp.zero398 = icmp eq i32 %eq.memcmp397, 0
  br label %str.eq.merge393

str.eq.else392:                                   ; preds = %str_ok378
  br label %str.eq.merge393

str.eq.merge393:                                  ; preds = %str.eq.else392, %str.eq.then391
  %str.eq.result399 = phi i1 [ %eq.cmp.zero398, %str.eq.then391 ], [ false, %str.eq.else392 ]
  %str.neq400 = xor i1 %str.eq.result399, true
  br i1 %str.neq400, label %choice.then401, label %choice.else402

choice.then401:                                   ; preds = %str.eq.merge393
  %var.load404 = load ptr, ptr %var.d370, align 8
  %fld.gep405 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load404, i32 0, i32 1
  %fld.load406 = load ptr, ptr %fld.gep405, align 8
  %concat.lhs407 = getelementptr inbounds { i64, ptr }, ptr %fld.load406, i32 0, i32 0
  %concat.lhs408 = load i64, ptr %concat.lhs407, align 8
  %concat.lhs409 = and i64 %concat.lhs408, 281474976710655
  %str.tag410 = lshr i64 %concat.lhs408, 48
  %tag.immortal412 = icmp eq i64 %str.tag410, 0
  br i1 %tag.immortal412, label %str_ok411, label %tag.gen_check413

choice.else402:                                   ; preds = %str.eq.merge393
  br label %choice.exit403

choice.exit403:                                   ; preds = %choice.else402, %concat.tot.len435
  %choice.res446 = phi ptr [ %concat.str443, %concat.tot.len435 ], [ @str.12.struct, %choice.else402 ]
  store ptr %choice.res446, ptr %var.fn447, align 8
  %var.load448 = load ptr, ptr %var.fn447, align 8
  %cat.seg449 = getelementptr inbounds { i64, ptr }, ptr %var.load448, i32 0, i32 0
  %cat.seg450 = load i64, ptr %cat.seg449, align 8
  %cat.seg451 = and i64 %cat.seg450, 281474976710655
  %str.tag452 = lshr i64 %cat.seg450, 48
  %tag.immortal454 = icmp eq i64 %str.tag452, 0
  br i1 %tag.immortal454, label %str_ok453, label %tag.gen_check455

str_ok411:                                        ; preds = %abort.dead420, %tag.slow_check414, %tag.gen_check413, %choice.then401
  %concat.lhs421 = getelementptr inbounds { i64, ptr }, ptr %fld.load406, i32 0, i32 1
  %concat.lhs422 = load ptr, ptr %concat.lhs421, align 8
  %concat.rhs423 = load i64, ptr @str.70.struct, align 8
  %concat.rhs424 = and i64 %concat.rhs423, 281474976710655
  %concat.rhs425 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %concat.sum.len426 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs409, i64 %concat.rhs424)
  %sum427 = extractvalue { i64, i1 } %concat.sum.len426, 0
  %ovf428 = extractvalue { i64, i1 } %concat.sum.len426, 1
  br i1 %ovf428, label %str_overflow_abort430, label %concat.sum.len429

tag.gen_check413:                                 ; preds = %choice.then401
  %active.gen416 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok417 = icmp eq i64 %str.tag410, %active.gen416
  br i1 %tag.fast.ok417, label %str_ok411, label %tag.slow_check414

tag.slow_check414:                                ; preds = %tag.gen_check413
  %arena.cur418 = call ptr @dva_arena_current()
  %tag.valid419 = call i1 @dva_arena_validate_tag(ptr %arena.cur418, i64 %str.tag410)
  br i1 %tag.valid419, label %str_ok411, label %tag.stale415

tag.stale415:                                     ; preds = %tag.slow_check414
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead420:                                    ; No predecessors!
  br label %str_ok411

concat.sum.len429:                                ; preds = %abort.dead431, %str_ok411
  %concat.tot.len432 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum427, i64 1)
  %sum433 = extractvalue { i64, i1 } %concat.tot.len432, 0
  %ovf434 = extractvalue { i64, i1 } %concat.tot.len432, 1
  br i1 %ovf434, label %str_overflow_abort436, label %concat.tot.len435

str_overflow_abort430:                            ; preds = %str_ok411
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead431:                                    ; No predecessors!
  br label %concat.sum.len429

concat.tot.len435:                                ; preds = %abort.dead437, %concat.sum.len429
  %arena.cur438 = call ptr @dva_arena_current()
  %concat.buf439 = call ptr @dva_arena_alloc(ptr %arena.cur438, i64 %sum433)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf439, ptr align 1 %concat.lhs422, i64 %concat.lhs409, i1 false)
  %concat.mid440 = getelementptr i8, ptr %concat.buf439, i64 %concat.lhs409
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid440, ptr align 1 %concat.rhs425, i64 %concat.rhs424, i1 false)
  %concat.nul441 = getelementptr i8, ptr %concat.buf439, i64 %sum427
  store i8 0, ptr %concat.nul441, align 1
  %arena.cur442 = call ptr @dva_arena_current()
  %concat.str443 = call ptr @dva_arena_alloc(ptr %arena.cur442, i64 16)
  %str.build.len.gep444 = getelementptr inbounds { i64, ptr }, ptr %concat.str443, i32 0, i32 0
  store i64 %sum427, ptr %str.build.len.gep444, align 8
  %str.build.data.gep445 = getelementptr inbounds { i64, ptr }, ptr %concat.str443, i32 0, i32 1
  store ptr %concat.buf439, ptr %str.build.data.gep445, align 8
  br label %choice.exit403

str_overflow_abort436:                            ; preds = %concat.sum.len429
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead437:                                    ; No predecessors!
  br label %concat.tot.len435

str_ok453:                                        ; preds = %abort.dead462, %tag.slow_check456, %tag.gen_check455, %choice.exit403
  %cat.seg463 = getelementptr inbounds { i64, ptr }, ptr %var.load448, i32 0, i32 1
  %cat.seg464 = load ptr, ptr %cat.seg463, align 8
  %var.load465 = load ptr, ptr %var.d370, align 8
  %fld.gep466 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load465, i32 0, i32 2
  %fld.load467 = load i64, ptr %fld.gep466, align 8
  %cat.ilen469 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf468, i64 %fld.load467, i1 false)
  %cat.lit.data470 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %var.load471 = load ptr, ptr %var.d370, align 8
  %fld.gep472 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load471, i32 0, i32 3
  %fld.load473 = load i64, ptr %fld.gep472, align 8
  %cat.ilen475 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf474, i64 %fld.load473, i1 false)
  %cat.lit.data476 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.71.struct, i32 0, i32 1), align 8
  %var.load477 = load ptr, ptr %var.d370, align 8
  %fld.gep478 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load477, i32 0, i32 0
  %fld.load479 = load i64, ptr %fld.gep478, align 8
  %cat.ilen481 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf480, i64 %fld.load479, i1 false)
  %cat.lit.data482 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %var.load483 = load ptr, ptr %var.d370, align 8
  %fld.gep484 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load483, i32 0, i32 4
  %fld.load485 = load ptr, ptr %fld.gep484, align 8
  %cat.seg486 = getelementptr inbounds { i64, ptr }, ptr %fld.load485, i32 0, i32 0
  %cat.seg487 = load i64, ptr %cat.seg486, align 8
  %cat.seg488 = and i64 %cat.seg487, 281474976710655
  %str.tag489 = lshr i64 %cat.seg487, 48
  %tag.immortal491 = icmp eq i64 %str.tag489, 0
  br i1 %tag.immortal491, label %str_ok490, label %tag.gen_check492

tag.gen_check455:                                 ; preds = %choice.exit403
  %active.gen458 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok459 = icmp eq i64 %str.tag452, %active.gen458
  br i1 %tag.fast.ok459, label %str_ok453, label %tag.slow_check456

tag.slow_check456:                                ; preds = %tag.gen_check455
  %arena.cur460 = call ptr @dva_arena_current()
  %tag.valid461 = call i1 @dva_arena_validate_tag(ptr %arena.cur460, i64 %str.tag452)
  br i1 %tag.valid461, label %str_ok453, label %tag.stale457

tag.stale457:                                     ; preds = %tag.slow_check456
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead462:                                    ; No predecessors!
  br label %str_ok453

str_ok490:                                        ; preds = %abort.dead499, %tag.slow_check493, %tag.gen_check492, %str_ok453
  %cat.seg500 = getelementptr inbounds { i64, ptr }, ptr %fld.load485, i32 0, i32 1
  %cat.seg501 = load ptr, ptr %cat.seg500, align 8
  %cat.sum.len502 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg451, i64 %cat.ilen469)
  %sum503 = extractvalue { i64, i1 } %cat.sum.len502, 0
  %ovf504 = extractvalue { i64, i1 } %cat.sum.len502, 1
  br i1 %ovf504, label %str_overflow_abort506, label %cat.sum.len505

tag.gen_check492:                                 ; preds = %str_ok453
  %active.gen495 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok496 = icmp eq i64 %str.tag489, %active.gen495
  br i1 %tag.fast.ok496, label %str_ok490, label %tag.slow_check493

tag.slow_check493:                                ; preds = %tag.gen_check492
  %arena.cur497 = call ptr @dva_arena_current()
  %tag.valid498 = call i1 @dva_arena_validate_tag(ptr %arena.cur497, i64 %str.tag489)
  br i1 %tag.valid498, label %str_ok490, label %tag.stale494

tag.stale494:                                     ; preds = %tag.slow_check493
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead499:                                    ; No predecessors!
  br label %str_ok490

cat.sum.len505:                                   ; preds = %abort.dead507, %str_ok490
  %cat.sum.len508 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum503, i64 1)
  %sum509 = extractvalue { i64, i1 } %cat.sum.len508, 0
  %ovf510 = extractvalue { i64, i1 } %cat.sum.len508, 1
  br i1 %ovf510, label %str_overflow_abort512, label %cat.sum.len511

str_overflow_abort506:                            ; preds = %str_ok490
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead507:                                    ; No predecessors!
  br label %cat.sum.len505

cat.sum.len511:                                   ; preds = %abort.dead513, %cat.sum.len505
  %cat.sum.len514 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum509, i64 %cat.ilen475)
  %sum515 = extractvalue { i64, i1 } %cat.sum.len514, 0
  %ovf516 = extractvalue { i64, i1 } %cat.sum.len514, 1
  br i1 %ovf516, label %str_overflow_abort518, label %cat.sum.len517

str_overflow_abort512:                            ; preds = %cat.sum.len505
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead513:                                    ; No predecessors!
  br label %cat.sum.len511

cat.sum.len517:                                   ; preds = %abort.dead519, %cat.sum.len511
  %cat.sum.len520 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum515, i64 3)
  %sum521 = extractvalue { i64, i1 } %cat.sum.len520, 0
  %ovf522 = extractvalue { i64, i1 } %cat.sum.len520, 1
  br i1 %ovf522, label %str_overflow_abort524, label %cat.sum.len523

str_overflow_abort518:                            ; preds = %cat.sum.len511
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead519:                                    ; No predecessors!
  br label %cat.sum.len517

cat.sum.len523:                                   ; preds = %abort.dead525, %cat.sum.len517
  %cat.sum.len526 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum521, i64 %cat.ilen481)
  %sum527 = extractvalue { i64, i1 } %cat.sum.len526, 0
  %ovf528 = extractvalue { i64, i1 } %cat.sum.len526, 1
  br i1 %ovf528, label %str_overflow_abort530, label %cat.sum.len529

str_overflow_abort524:                            ; preds = %cat.sum.len517
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead525:                                    ; No predecessors!
  br label %cat.sum.len523

cat.sum.len529:                                   ; preds = %abort.dead531, %cat.sum.len523
  %cat.sum.len532 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum527, i64 2)
  %sum533 = extractvalue { i64, i1 } %cat.sum.len532, 0
  %ovf534 = extractvalue { i64, i1 } %cat.sum.len532, 1
  br i1 %ovf534, label %str_overflow_abort536, label %cat.sum.len535

str_overflow_abort530:                            ; preds = %cat.sum.len523
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead531:                                    ; No predecessors!
  br label %cat.sum.len529

cat.sum.len535:                                   ; preds = %abort.dead537, %cat.sum.len529
  %cat.sum.len538 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum533, i64 %cat.seg488)
  %sum539 = extractvalue { i64, i1 } %cat.sum.len538, 0
  %ovf540 = extractvalue { i64, i1 } %cat.sum.len538, 1
  br i1 %ovf540, label %str_overflow_abort542, label %cat.sum.len541

str_overflow_abort536:                            ; preds = %cat.sum.len529
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead537:                                    ; No predecessors!
  br label %cat.sum.len535

cat.sum.len541:                                   ; preds = %abort.dead543, %cat.sum.len535
  %concat.tot.len544 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum539, i64 1)
  %sum545 = extractvalue { i64, i1 } %concat.tot.len544, 0
  %ovf546 = extractvalue { i64, i1 } %concat.tot.len544, 1
  br i1 %ovf546, label %str_overflow_abort548, label %concat.tot.len547

str_overflow_abort542:                            ; preds = %cat.sum.len535
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead543:                                    ; No predecessors!
  br label %cat.sum.len541

concat.tot.len547:                                ; preds = %abort.dead549, %cat.sum.len541
  %arena.cur550 = call ptr @dva_arena_current()
  %concat.buf551 = call ptr @dva_arena_alloc(ptr %arena.cur550, i64 %sum545)
  %cat.dst552 = getelementptr i8, ptr %concat.buf551, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst552, ptr align 1 %cat.seg464, i64 %cat.seg451, i1 false)
  %cat.off553 = add i64 0, %cat.seg451
  %cat.dst554 = getelementptr i8, ptr %concat.buf551, i64 %cat.off553
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst554, ptr align 1 %cat.ibuf468, i64 %cat.ilen469, i1 false)
  %cat.off555 = add i64 %cat.off553, %cat.ilen469
  %cat.dst556 = getelementptr i8, ptr %concat.buf551, i64 %cat.off555
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst556, ptr align 1 %cat.lit.data470, i64 1, i1 false)
  %cat.off557 = add i64 %cat.off555, 1
  %cat.dst558 = getelementptr i8, ptr %concat.buf551, i64 %cat.off557
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst558, ptr align 1 %cat.ibuf474, i64 %cat.ilen475, i1 false)
  %cat.off559 = add i64 %cat.off557, %cat.ilen475
  %cat.dst560 = getelementptr i8, ptr %concat.buf551, i64 %cat.off559
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst560, ptr align 1 %cat.lit.data476, i64 3, i1 false)
  %cat.off561 = add i64 %cat.off559, 3
  %cat.dst562 = getelementptr i8, ptr %concat.buf551, i64 %cat.off561
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst562, ptr align 1 %cat.ibuf480, i64 %cat.ilen481, i1 false)
  %cat.off563 = add i64 %cat.off561, %cat.ilen481
  %cat.dst564 = getelementptr i8, ptr %concat.buf551, i64 %cat.off563
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst564, ptr align 1 %cat.lit.data482, i64 2, i1 false)
  %cat.off565 = add i64 %cat.off563, 2
  %cat.dst566 = getelementptr i8, ptr %concat.buf551, i64 %cat.off565
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst566, ptr align 1 %cat.seg501, i64 %cat.seg488, i1 false)
  %concat.nul567 = getelementptr i8, ptr %concat.buf551, i64 %sum539
  store i8 0, ptr %concat.nul567, align 1
  %arena.cur568 = call ptr @dva_arena_current()
  %concat.str569 = call ptr @dva_arena_alloc(ptr %arena.cur568, i64 16)
  %str.build.len.gep570 = getelementptr inbounds { i64, ptr }, ptr %concat.str569, i32 0, i32 0
  store i64 %sum539, ptr %str.build.len.gep570, align 8
  %str.build.data.gep571 = getelementptr inbounds { i64, ptr }, ptr %concat.str569, i32 0, i32 1
  store ptr %concat.buf551, ptr %str.build.data.gep571, align 8
  %p.to.i64572 = ptrtoint ptr %concat.str569 to i64
  %ram.pay573 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64572, 1
  br label %choice.exit260

str_overflow_abort548:                            ; preds = %cat.sum.len541
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead549:                                    ; No predecessors!
  br label %concat.tot.len547

str_ok579:                                        ; preds = %abort.dead588, %tag.slow_check582, %tag.gen_check581, %choice.else259
  %concat.lhs589 = getelementptr inbounds { i64, ptr }, ptr %var.load574, i32 0, i32 1
  %concat.lhs590 = load ptr, ptr %concat.lhs589, align 8
  %concat.rhs591 = load i64, ptr @str.72.struct, align 8
  %concat.rhs592 = and i64 %concat.rhs591, 281474976710655
  %concat.rhs593 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.72.struct, i32 0, i32 1), align 8
  %concat.sum.len594 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs577, i64 %concat.rhs592)
  %sum595 = extractvalue { i64, i1 } %concat.sum.len594, 0
  %ovf596 = extractvalue { i64, i1 } %concat.sum.len594, 1
  br i1 %ovf596, label %str_overflow_abort598, label %concat.sum.len597

tag.gen_check581:                                 ; preds = %choice.else259
  %active.gen584 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok585 = icmp eq i64 %str.tag578, %active.gen584
  br i1 %tag.fast.ok585, label %str_ok579, label %tag.slow_check582

tag.slow_check582:                                ; preds = %tag.gen_check581
  %arena.cur586 = call ptr @dva_arena_current()
  %tag.valid587 = call i1 @dva_arena_validate_tag(ptr %arena.cur586, i64 %str.tag578)
  br i1 %tag.valid587, label %str_ok579, label %tag.stale583

tag.stale583:                                     ; preds = %tag.slow_check582
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead588:                                    ; No predecessors!
  br label %str_ok579

concat.sum.len597:                                ; preds = %abort.dead599, %str_ok579
  %concat.tot.len600 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum595, i64 1)
  %sum601 = extractvalue { i64, i1 } %concat.tot.len600, 0
  %ovf602 = extractvalue { i64, i1 } %concat.tot.len600, 1
  br i1 %ovf602, label %str_overflow_abort604, label %concat.tot.len603

str_overflow_abort598:                            ; preds = %str_ok579
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead599:                                    ; No predecessors!
  br label %concat.sum.len597

concat.tot.len603:                                ; preds = %abort.dead605, %concat.sum.len597
  %arena.cur606 = call ptr @dva_arena_current()
  %concat.buf607 = call ptr @dva_arena_alloc(ptr %arena.cur606, i64 %sum601)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf607, ptr align 1 %concat.lhs590, i64 %concat.lhs577, i1 false)
  %concat.mid608 = getelementptr i8, ptr %concat.buf607, i64 %concat.lhs577
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid608, ptr align 1 %concat.rhs593, i64 %concat.rhs592, i1 false)
  %concat.nul609 = getelementptr i8, ptr %concat.buf607, i64 %sum595
  store i8 0, ptr %concat.nul609, align 1
  %arena.cur610 = call ptr @dva_arena_current()
  %concat.str611 = call ptr @dva_arena_alloc(ptr %arena.cur610, i64 16)
  %str.build.len.gep612 = getelementptr inbounds { i64, ptr }, ptr %concat.str611, i32 0, i32 0
  store i64 %sum595, ptr %str.build.len.gep612, align 8
  %str.build.data.gep613 = getelementptr inbounds { i64, ptr }, ptr %concat.str611, i32 0, i32 1
  store ptr %concat.buf607, ptr %str.build.data.gep613, align 8
  %p.to.i64614 = ptrtoint ptr %concat.str611 to i64
  %ram.pay615 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64614, 1
  br label %choice.exit260

str_overflow_abort604:                            ; preds = %concat.sum.len597
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead605:                                    ; No predecessors!
  br label %concat.tot.len603
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
  %var._241 = alloca ptr, align 8
  %var._233 = alloca ptr, align 8
  %var.fb_sig179 = alloca ptr, align 8
  %var._178 = alloca ptr, align 8
  %var.fb_sig_res170 = alloca { i1, i64 }, align 8
  %var.fb166 = alloca ptr, align 8
  %var._149 = alloca ptr, align 8
  %var._141 = alloca ptr, align 8
  %var.fb_sig = alloca ptr, align 8
  %var._88 = alloca ptr, align 8
  %var.fb_sig_res = alloca { i1, i64 }, align 8
  %var.fb = alloca ptr, align 8
  %var.cand_sig = alloca ptr, align 8
  %var._26 = alloca ptr, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  %ram.pay239 = extractvalue { i1, i64 } %var.load5, 1
  %pay.ptr240 = inttoptr i64 %ram.pay239 to ptr
  store ptr %pay.ptr240, ptr %var._241, align 8
  store ptr %pay.ptr240, ptr %var.err, align 8
  %var.load242 = load ptr, ptr %var.err, align 8
  %p.to.i64243 = ptrtoint ptr %var.load242 to i64
  %ram.pay244 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64243, 1
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else, %choice.exit23
  %choice.res245 = phi { i1, i64 } [ %choice.res238, %choice.exit23 ], [ %ram.pay244, %choice.else ]
  ret { i1, i64 } %choice.res245

a.create:                                         ; preds = %choice.then6
  %arena.cur11 = call ptr @dva_arena_current()
  %a.create12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 24)
  %arena.cur13 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create12, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then6
  %a.load2 = load ptr, ptr %var.lines, align 8
  %call.res14 = call { i64, ptr } @"formatter::format_lines"(ptr %a.load2)
  %arena.cur15 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  store { i64, ptr } %call.res14, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.candidate, align 8
  %var.load16 = load ptr, ptr %var.candidate, align 8
  %var.load17 = load ptr, ptr %var.filename, align 8
  %call.res18 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load16, ptr %var.load17)
  store { i1, i64 } %call.res18, ptr %var.cand_sig_res, align 8
  %var.load19 = load { i1, i64 }, ptr %var.cand_sig_res, align 8
  %ram.tag20 = extractvalue { i1, i64 } %var.load19, 0
  br i1 %ram.tag20, label %choice.then21, label %choice.else22

choice.then21:                                    ; preds = %a.after
  %ram.pay24 = extractvalue { i1, i64 } %var.load19, 1
  %pay.ptr25 = inttoptr i64 %ram.pay24 to ptr
  store ptr %pay.ptr25, ptr %var._26, align 8
  store ptr %pay.ptr25, ptr %var.cand_sig, align 8
  %var.load27 = load ptr, ptr %var.cand_sig, align 8
  %var.load28 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %eq.lhs.len29 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len30 = and i64 %eq.lhs.len29, 281474976710655
  %str.tag31 = lshr i64 %eq.lhs.len29, 48
  %tag.immortal33 = icmp eq i64 %str.tag31, 0
  br i1 %tag.immortal33, label %str_ok32, label %tag.gen_check34

choice.else22:                                    ; preds = %a.after
  %ram.pay147 = extractvalue { i1, i64 } %var.load19, 1
  %pay.ptr148 = inttoptr i64 %ram.pay147 to ptr
  store ptr %pay.ptr148, ptr %var._149, align 8
  %var.load150 = load ptr, ptr %var.lines, align 8
  %a.load151 = load ptr, ptr %var.lines, align 8
  %a.null152 = icmp eq ptr %a.load151, null
  br i1 %a.null152, label %a.create153, label %a.after154

choice.exit23:                                    ; preds = %choice.exit175, %choice.exit59
  %choice.res238 = phi { i1, i64 } [ %choice.res146, %choice.exit59 ], [ %choice.res237, %choice.exit175 ]
  br label %choice.exit7

str_ok32:                                         ; preds = %abort.dead41, %tag.slow_check35, %tag.gen_check34, %choice.then21
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.rhs.len42 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len43 = and i64 %eq.rhs.len42, 281474976710655
  %str.tag44 = lshr i64 %eq.rhs.len42, 48
  %tag.immortal46 = icmp eq i64 %str.tag44, 0
  br i1 %tag.immortal46, label %str_ok45, label %tag.gen_check47

tag.gen_check34:                                  ; preds = %choice.then21
  %active.gen37 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok38 = icmp eq i64 %str.tag31, %active.gen37
  br i1 %tag.fast.ok38, label %str_ok32, label %tag.slow_check35

tag.slow_check35:                                 ; preds = %tag.gen_check34
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag31)
  br i1 %tag.valid40, label %str_ok32, label %tag.stale36

tag.stale36:                                      ; preds = %tag.slow_check35
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %str_ok32

str_ok45:                                         ; preds = %abort.dead54, %tag.slow_check48, %tag.gen_check47, %str_ok32
  %eq.len = icmp eq i64 %eq.lhs.len30, %eq.rhs.len43
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check47:                                  ; preds = %str_ok32
  %active.gen50 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok51 = icmp eq i64 %str.tag44, %active.gen50
  br i1 %tag.fast.ok51, label %str_ok45, label %tag.slow_check48

tag.slow_check48:                                 ; preds = %tag.gen_check47
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag44)
  br i1 %tag.valid53, label %str_ok45, label %tag.stale49

tag.stale49:                                      ; preds = %tag.slow_check48
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %str_ok45

str.eq.then:                                      ; preds = %str_ok45
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %eq.lhs.data55 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.rhs.data56 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data55, ptr %eq.rhs.data56, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok45
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then57, label %choice.else58

choice.then57:                                    ; preds = %str.eq.merge
  %var.load60 = load ptr, ptr %var.candidate, align 8
  %p.to.i64 = ptrtoint ptr %var.load60 to i64
  %ram.pay61 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit59

choice.else58:                                    ; preds = %str.eq.merge
  %var.load62 = load ptr, ptr %var.lines, align 8
  %a.load63 = load ptr, ptr %var.lines, align 8
  %a.null64 = icmp eq ptr %a.load63, null
  br i1 %a.null64, label %a.create65, label %a.after66

choice.exit59:                                    ; preds = %choice.exit85, %choice.then57
  %choice.res146 = phi { i1, i64 } [ %ram.pay61, %choice.then57 ], [ %choice.res145, %choice.exit85 ]
  br label %choice.exit23

a.create65:                                       ; preds = %choice.else58
  %arena.cur67 = call ptr @dva_arena_current()
  %a.create68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 24)
  %arena.cur69 = call ptr @dva_arena_current()
  %a.buf70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 128)
  %a.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 0
  store i64 0, ptr %a.len.gep71, align 8
  %a.data.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 1
  store ptr %a.buf70, ptr %a.data.gep72, align 8
  %a.cap.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 2
  store i64 16, ptr %a.cap.gep73, align 8
  store ptr %a.create68, ptr %var.lines, align 8
  br label %a.after66

a.after66:                                        ; preds = %a.create65, %choice.else58
  %a.load274 = load ptr, ptr %var.lines, align 8
  %call.res75 = call { i64, ptr } @"formatter::format_safe_fallback"(ptr %a.load274)
  %arena.cur76 = call ptr @dva_arena_current()
  %ret.ub.alloc77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  store { i64, ptr } %call.res75, ptr %ret.ub.alloc77, align 8
  store ptr %ret.ub.alloc77, ptr %var.fb, align 8
  %var.load78 = load ptr, ptr %var.fb, align 8
  %var.load79 = load ptr, ptr %var.filename, align 8
  %call.res80 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load78, ptr %var.load79)
  store { i1, i64 } %call.res80, ptr %var.fb_sig_res, align 8
  %var.load81 = load { i1, i64 }, ptr %var.fb_sig_res, align 8
  %ram.tag82 = extractvalue { i1, i64 } %var.load81, 0
  br i1 %ram.tag82, label %choice.then83, label %choice.else84

choice.then83:                                    ; preds = %a.after66
  %ram.pay86 = extractvalue { i1, i64 } %var.load81, 1
  %pay.ptr87 = inttoptr i64 %ram.pay86 to ptr
  store ptr %pay.ptr87, ptr %var._88, align 8
  store ptr %pay.ptr87, ptr %var.fb_sig, align 8
  %var.load89 = load ptr, ptr %var.fb_sig, align 8
  %var.load90 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len91 = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 0
  %eq.lhs.len92 = load i64, ptr %eq.lhs.len91, align 8
  %eq.lhs.len93 = and i64 %eq.lhs.len92, 281474976710655
  %str.tag94 = lshr i64 %eq.lhs.len92, 48
  %tag.immortal96 = icmp eq i64 %str.tag94, 0
  br i1 %tag.immortal96, label %str_ok95, label %tag.gen_check97

choice.else84:                                    ; preds = %a.after66
  %ram.pay139 = extractvalue { i1, i64 } %var.load81, 1
  %pay.ptr140 = inttoptr i64 %ram.pay139 to ptr
  store ptr %pay.ptr140, ptr %var._141, align 8
  %var.load142 = load ptr, ptr %var.src, align 8
  %p.to.i64143 = ptrtoint ptr %var.load142 to i64
  %ram.pay144 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64143, 1
  br label %choice.exit85

choice.exit85:                                    ; preds = %choice.else84, %choice.exit132
  %choice.res145 = phi { i1, i64 } [ %choice.res, %choice.exit132 ], [ %ram.pay144, %choice.else84 ]
  br label %choice.exit59

str_ok95:                                         ; preds = %abort.dead104, %tag.slow_check98, %tag.gen_check97, %choice.then83
  %eq.rhs.len105 = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 0
  %eq.rhs.len106 = load i64, ptr %eq.rhs.len105, align 8
  %eq.rhs.len107 = and i64 %eq.rhs.len106, 281474976710655
  %str.tag108 = lshr i64 %eq.rhs.len106, 48
  %tag.immortal110 = icmp eq i64 %str.tag108, 0
  br i1 %tag.immortal110, label %str_ok109, label %tag.gen_check111

tag.gen_check97:                                  ; preds = %choice.then83
  %active.gen100 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok101 = icmp eq i64 %str.tag94, %active.gen100
  br i1 %tag.fast.ok101, label %str_ok95, label %tag.slow_check98

tag.slow_check98:                                 ; preds = %tag.gen_check97
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %str.tag94)
  br i1 %tag.valid103, label %str_ok95, label %tag.stale99

tag.stale99:                                      ; preds = %tag.slow_check98
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead104:                                    ; No predecessors!
  br label %str_ok95

str_ok109:                                        ; preds = %abort.dead118, %tag.slow_check112, %tag.gen_check111, %str_ok95
  %eq.len119 = icmp eq i64 %eq.lhs.len93, %eq.rhs.len107
  br i1 %eq.len119, label %str.eq.then120, label %str.eq.else121

tag.gen_check111:                                 ; preds = %str_ok95
  %active.gen114 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok115 = icmp eq i64 %str.tag108, %active.gen114
  br i1 %tag.fast.ok115, label %str_ok109, label %tag.slow_check112

tag.slow_check112:                                ; preds = %tag.gen_check111
  %arena.cur116 = call ptr @dva_arena_current()
  %tag.valid117 = call i1 @dva_arena_validate_tag(ptr %arena.cur116, i64 %str.tag108)
  br i1 %tag.valid117, label %str_ok109, label %tag.stale113

tag.stale113:                                     ; preds = %tag.slow_check112
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead118:                                    ; No predecessors!
  br label %str_ok109

str.eq.then120:                                   ; preds = %str_ok109
  %eq.lhs.data123 = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 1
  %eq.lhs.data124 = load ptr, ptr %eq.lhs.data123, align 8
  %eq.rhs.data125 = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 1
  %eq.rhs.data126 = load ptr, ptr %eq.rhs.data125, align 8
  %eq.memcmp127 = call i32 @memcmp(ptr %eq.lhs.data124, ptr %eq.rhs.data126, i64 %eq.lhs.len93)
  %eq.cmp.zero128 = icmp eq i32 %eq.memcmp127, 0
  br label %str.eq.merge122

str.eq.else121:                                   ; preds = %str_ok109
  br label %str.eq.merge122

str.eq.merge122:                                  ; preds = %str.eq.else121, %str.eq.then120
  %str.eq.result129 = phi i1 [ %eq.cmp.zero128, %str.eq.then120 ], [ false, %str.eq.else121 ]
  br i1 %str.eq.result129, label %choice.then130, label %choice.else131

choice.then130:                                   ; preds = %str.eq.merge122
  %var.load133 = load ptr, ptr %var.fb, align 8
  %p.to.i64134 = ptrtoint ptr %var.load133 to i64
  %ram.pay135 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64134, 1
  br label %choice.exit132

choice.else131:                                   ; preds = %str.eq.merge122
  %var.load136 = load ptr, ptr %var.src, align 8
  %p.to.i64137 = ptrtoint ptr %var.load136 to i64
  %ram.pay138 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64137, 1
  br label %choice.exit132

choice.exit132:                                   ; preds = %choice.else131, %choice.then130
  %choice.res = phi { i1, i64 } [ %ram.pay135, %choice.then130 ], [ %ram.pay138, %choice.else131 ]
  br label %choice.exit85

a.create153:                                      ; preds = %choice.else22
  %arena.cur155 = call ptr @dva_arena_current()
  %a.create156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 24)
  %arena.cur157 = call ptr @dva_arena_current()
  %a.buf158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 128)
  %a.len.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 0
  store i64 0, ptr %a.len.gep159, align 8
  %a.data.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 1
  store ptr %a.buf158, ptr %a.data.gep160, align 8
  %a.cap.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 2
  store i64 16, ptr %a.cap.gep161, align 8
  store ptr %a.create156, ptr %var.lines, align 8
  br label %a.after154

a.after154:                                       ; preds = %a.create153, %choice.else22
  %a.load2162 = load ptr, ptr %var.lines, align 8
  %call.res163 = call { i64, ptr } @"formatter::format_safe_fallback"(ptr %a.load2162)
  %arena.cur164 = call ptr @dva_arena_current()
  %ret.ub.alloc165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 16)
  store { i64, ptr } %call.res163, ptr %ret.ub.alloc165, align 8
  store ptr %ret.ub.alloc165, ptr %var.fb166, align 8
  %var.load167 = load ptr, ptr %var.fb166, align 8
  %var.load168 = load ptr, ptr %var.filename, align 8
  %call.res169 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load167, ptr %var.load168)
  store { i1, i64 } %call.res169, ptr %var.fb_sig_res170, align 8
  %var.load171 = load { i1, i64 }, ptr %var.fb_sig_res170, align 8
  %ram.tag172 = extractvalue { i1, i64 } %var.load171, 0
  br i1 %ram.tag172, label %choice.then173, label %choice.else174

choice.then173:                                   ; preds = %a.after154
  %ram.pay176 = extractvalue { i1, i64 } %var.load171, 1
  %pay.ptr177 = inttoptr i64 %ram.pay176 to ptr
  store ptr %pay.ptr177, ptr %var._178, align 8
  store ptr %pay.ptr177, ptr %var.fb_sig179, align 8
  %var.load180 = load ptr, ptr %var.fb_sig179, align 8
  %var.load181 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len182 = getelementptr inbounds { i64, ptr }, ptr %var.load180, i32 0, i32 0
  %eq.lhs.len183 = load i64, ptr %eq.lhs.len182, align 8
  %eq.lhs.len184 = and i64 %eq.lhs.len183, 281474976710655
  %str.tag185 = lshr i64 %eq.lhs.len183, 48
  %tag.immortal187 = icmp eq i64 %str.tag185, 0
  br i1 %tag.immortal187, label %str_ok186, label %tag.gen_check188

choice.else174:                                   ; preds = %a.after154
  %ram.pay231 = extractvalue { i1, i64 } %var.load171, 1
  %pay.ptr232 = inttoptr i64 %ram.pay231 to ptr
  store ptr %pay.ptr232, ptr %var._233, align 8
  %var.load234 = load ptr, ptr %var.src, align 8
  %p.to.i64235 = ptrtoint ptr %var.load234 to i64
  %ram.pay236 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64235, 1
  br label %choice.exit175

choice.exit175:                                   ; preds = %choice.else174, %choice.exit223
  %choice.res237 = phi { i1, i64 } [ %choice.res230, %choice.exit223 ], [ %ram.pay236, %choice.else174 ]
  br label %choice.exit23

str_ok186:                                        ; preds = %abort.dead195, %tag.slow_check189, %tag.gen_check188, %choice.then173
  %eq.rhs.len196 = getelementptr inbounds { i64, ptr }, ptr %var.load181, i32 0, i32 0
  %eq.rhs.len197 = load i64, ptr %eq.rhs.len196, align 8
  %eq.rhs.len198 = and i64 %eq.rhs.len197, 281474976710655
  %str.tag199 = lshr i64 %eq.rhs.len197, 48
  %tag.immortal201 = icmp eq i64 %str.tag199, 0
  br i1 %tag.immortal201, label %str_ok200, label %tag.gen_check202

tag.gen_check188:                                 ; preds = %choice.then173
  %active.gen191 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok192 = icmp eq i64 %str.tag185, %active.gen191
  br i1 %tag.fast.ok192, label %str_ok186, label %tag.slow_check189

tag.slow_check189:                                ; preds = %tag.gen_check188
  %arena.cur193 = call ptr @dva_arena_current()
  %tag.valid194 = call i1 @dva_arena_validate_tag(ptr %arena.cur193, i64 %str.tag185)
  br i1 %tag.valid194, label %str_ok186, label %tag.stale190

tag.stale190:                                     ; preds = %tag.slow_check189
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead195:                                    ; No predecessors!
  br label %str_ok186

str_ok200:                                        ; preds = %abort.dead209, %tag.slow_check203, %tag.gen_check202, %str_ok186
  %eq.len210 = icmp eq i64 %eq.lhs.len184, %eq.rhs.len198
  br i1 %eq.len210, label %str.eq.then211, label %str.eq.else212

tag.gen_check202:                                 ; preds = %str_ok186
  %active.gen205 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok206 = icmp eq i64 %str.tag199, %active.gen205
  br i1 %tag.fast.ok206, label %str_ok200, label %tag.slow_check203

tag.slow_check203:                                ; preds = %tag.gen_check202
  %arena.cur207 = call ptr @dva_arena_current()
  %tag.valid208 = call i1 @dva_arena_validate_tag(ptr %arena.cur207, i64 %str.tag199)
  br i1 %tag.valid208, label %str_ok200, label %tag.stale204

tag.stale204:                                     ; preds = %tag.slow_check203
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead209:                                    ; No predecessors!
  br label %str_ok200

str.eq.then211:                                   ; preds = %str_ok200
  %eq.lhs.data214 = getelementptr inbounds { i64, ptr }, ptr %var.load180, i32 0, i32 1
  %eq.lhs.data215 = load ptr, ptr %eq.lhs.data214, align 8
  %eq.rhs.data216 = getelementptr inbounds { i64, ptr }, ptr %var.load181, i32 0, i32 1
  %eq.rhs.data217 = load ptr, ptr %eq.rhs.data216, align 8
  %eq.memcmp218 = call i32 @memcmp(ptr %eq.lhs.data215, ptr %eq.rhs.data217, i64 %eq.lhs.len184)
  %eq.cmp.zero219 = icmp eq i32 %eq.memcmp218, 0
  br label %str.eq.merge213

str.eq.else212:                                   ; preds = %str_ok200
  br label %str.eq.merge213

str.eq.merge213:                                  ; preds = %str.eq.else212, %str.eq.then211
  %str.eq.result220 = phi i1 [ %eq.cmp.zero219, %str.eq.then211 ], [ false, %str.eq.else212 ]
  br i1 %str.eq.result220, label %choice.then221, label %choice.else222

choice.then221:                                   ; preds = %str.eq.merge213
  %var.load224 = load ptr, ptr %var.fb166, align 8
  %p.to.i64225 = ptrtoint ptr %var.load224 to i64
  %ram.pay226 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64225, 1
  br label %choice.exit223

choice.else222:                                   ; preds = %str.eq.merge213
  %var.load227 = load ptr, ptr %var.src, align 8
  %p.to.i64228 = ptrtoint ptr %var.load227 to i64
  %ram.pay229 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64228, 1
  br label %choice.exit223

choice.exit223:                                   ; preds = %choice.else222, %choice.then221
  %choice.res230 = phi { i1, i64 } [ %ram.pay226, %choice.then221 ], [ %ram.pay229, %choice.else222 ]
  br label %choice.exit175
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
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
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
  %arena.cur16 = call ptr @dva_arena_current()
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = call ptr @dva_arena_current()
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
  %arena.cur27 = call ptr @dva_arena_current()
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
  %arena.cur28 = call ptr @dva_arena_current()
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
  %arena.cur50 = call ptr @dva_arena_current()
  %a.create51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = call ptr @dva_arena_current()
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
  %arena.cur74 = call ptr @dva_arena_current()
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
  %arena.cur85 = call ptr @dva_arena_current()
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
  %arena.cur120 = call ptr @dva_arena_current()
  %a.create121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 24)
  %arena.cur122 = call ptr @dva_arena_current()
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
  %arena.cur132 = call ptr @dva_arena_current()
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
  %arena.cur142 = call ptr @dva_arena_current()
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
  %arena.cur174 = call ptr @dva_arena_current()
  %a.create175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 24)
  %arena.cur176 = call ptr @dva_arena_current()
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
  %arena.cur200 = call ptr @dva_arena_current()
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
  %arena.cur210 = call ptr @dva_arena_current()
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
  %var._125 = alloca ptr, align 8
  %var._i124 = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %loop.step.666 = alloca i64, align 8
  %loop.idx.666 = alloca i64, align 8
  %var.names = alloca ptr, align 8
  %var._map_v_810 = alloca ptr, align 8
  %var._45 = alloca ptr, align 8
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
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res2, ptr %ret.ub.alloc, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len3 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len4 = and i64 %eq.lhs.len3, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.else:                                      ; preds = %entry
  %var.load18 = load ptr, ptr %var.target, align 8
  %call.res19 = call i1 @"fs::is_dir"(ptr %var.load18)
  br i1 %call.res19, label %choice.then20, label %choice.exit21

choice.exit:                                      ; preds = %choice.exit21, %choice.exit9
  ret void

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then
  %eq.rhs.len = load i64, ptr @str.73.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len4, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %choice.then
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur5 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur5, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data7 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.73.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data7, ptr %eq.rhs.data, i64 %eq.lhs.len4)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then8, label %choice.exit9

choice.then8:                                     ; preds = %str.eq.merge
  %var.load10 = load ptr, ptr %var.target, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit9:                                     ; preds = %a.store, %str.eq.merge
  br label %choice.exit

a.create:                                         ; preds = %choice.then8
  %arena.cur11 = call ptr @dva_arena_current()
  %a.create12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 24)
  %arena.cur13 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create12, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then8
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len14 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap15 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len14, %a.cap15
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data16 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len17 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data16, i64 %a.cur.len17
  %slot.p2i = ptrtoint ptr %var.load10 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len17, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit9

choice.then20:                                    ; preds = %choice.else
  %arena.cur22 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 24)
  %arena.cur23 = call ptr @dva_arena_current()
  %a.buf24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 128)
  %a.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep25, align 8
  %a.data.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf24, ptr %a.data.gep26, align 8
  %a.cap.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep27, align 8
  store ptr %a.new, ptr %var._map_out_810, align 8
  %var.load28 = load ptr, ptr %var.target, align 8
  %call.res29 = call ptr @"fs::read_dir"(ptr %var.load28)
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %call.res29, i32 0, i32 0
  %arr.cycle.len30 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %call.res29, i32 0, i32 1
  %arr.cycle.data31 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.665, align 8
  br label %loop.header.665

choice.exit21:                                    ; preds = %loop.exit.666, %choice.else
  br label %choice.exit

loop.header.665:                                  ; preds = %loop.latch.665, %choice.then20
  %counter.load = load i64, ptr %loop.idx.665, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len30
  br i1 %loop.cond, label %loop.body.665, label %loop.exit.nat.665

loop.body.665:                                    ; preds = %loop.header.665
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.665, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data31, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ent, align 8
  %var.load32 = load ptr, ptr %var.ent, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load32, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

loop.exit.nat.665:                                ; preds = %loop.header.665
  br label %loop.exit.665

loop.latch.665:                                   ; preds = %choice.exit44
  %step.val = load i64, ptr %loop.step.665, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.665, align 8
  br label %loop.header.665

loop.exit.665:                                    ; preds = %loop.exit.nat.665
  %var.load75 = load ptr, ptr %var._map_out_810, align 8
  %a.load76 = load ptr, ptr %var._map_out_810, align 8
  %a.null77 = icmp eq ptr %a.load76, null
  br i1 %a.null77, label %a.create78, label %a.after79

idx_big_check:                                    ; preds = %loop.body.665
  %idx.big = icmp sge i64 0, %s.read.len34
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead36, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data35, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp ne i64 %s.byte.val, 46
  br i1 %cmptmp, label %choice.then37, label %choice.else38

idx_oob:                                          ; preds = %idx_big_check, %loop.body.665
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok

choice.then37:                                    ; preds = %idx_ok
  %var.load40 = load ptr, ptr %var.ent, align 8
  %fld.gep41 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load40, i32 0, i32 0
  %fld.load42 = load ptr, ptr %fld.gep41, align 8
  br label %choice.exit39

choice.else38:                                    ; preds = %idx_ok
  br label %choice.exit39

choice.exit39:                                    ; preds = %choice.else38, %choice.then37
  %choice.res = phi ptr [ %fld.load42, %choice.then37 ], [ null, %choice.else38 ]
  %niche.ne.null = icmp ne ptr %choice.res, null
  br i1 %niche.ne.null, label %choice.then43, label %choice.exit44

choice.then43:                                    ; preds = %choice.exit39
  store ptr %choice.res, ptr %var._45, align 8
  store ptr %choice.res, ptr %var._map_v_810, align 8
  %var.load46 = load ptr, ptr %var._map_v_810, align 8
  %a.load47 = load ptr, ptr %var._map_out_810, align 8
  %a.null48 = icmp eq ptr %a.load47, null
  br i1 %a.null48, label %a.create49, label %a.after50

choice.exit44:                                    ; preds = %a.store61, %choice.exit39
  br label %loop.latch.665

a.create49:                                       ; preds = %choice.then43
  %arena.cur51 = call ptr @dva_arena_current()
  %a.create52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 24)
  %arena.cur53 = call ptr @dva_arena_current()
  %a.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 128)
  %a.len.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 0
  store i64 0, ptr %a.len.gep55, align 8
  %a.data.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 1
  store ptr %a.buf54, ptr %a.data.gep56, align 8
  %a.cap.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 2
  store i64 16, ptr %a.cap.gep57, align 8
  store ptr %a.create52, ptr %var._map_out_810, align 8
  br label %a.after50

a.after50:                                        ; preds = %a.create49, %choice.then43
  %a.load258 = load ptr, ptr %var._map_out_810, align 8
  br label %a.check59

a.check59:                                        ; preds = %a.after50
  %a.len62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 0
  %a.len63 = load i64, ptr %a.len62, align 8
  %a.cap64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 2
  %a.cap65 = load i64, ptr %a.cap64, align 8
  %a.needs.grow66 = icmp eq i64 %a.len63, %a.cap65
  br i1 %a.needs.grow66, label %a.grow60, label %a.store61

a.grow60:                                         ; preds = %a.check59
  call void @dva_array_grow(ptr %a.load258)
  br label %a.store61

a.store61:                                        ; preds = %a.grow60, %a.check59
  %a.cur.data67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 1
  %a.cur.data68 = load ptr, ptr %a.cur.data67, align 8
  %a.cur.len69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 0
  %a.cur.len70 = load i64, ptr %a.cur.len69, align 8
  %a.elem.gep71 = getelementptr i64, ptr %a.cur.data68, i64 %a.cur.len70
  %slot.p2i72 = ptrtoint ptr %var.load46 to i64
  store i64 %slot.p2i72, ptr %a.elem.gep71, align 8
  %a.next.len73 = add i64 %a.cur.len70, 1
  %b.len.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 0
  store i64 %a.next.len73, ptr %b.len.gep74, align 8
  br label %choice.exit44

a.create78:                                       ; preds = %loop.exit.665
  %arena.cur80 = call ptr @dva_arena_current()
  %a.create81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 24)
  %arena.cur82 = call ptr @dva_arena_current()
  %a.buf83 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 128)
  %a.len.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create81, i32 0, i32 0
  store i64 0, ptr %a.len.gep84, align 8
  %a.data.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create81, i32 0, i32 1
  store ptr %a.buf83, ptr %a.data.gep85, align 8
  %a.cap.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create81, i32 0, i32 2
  store i64 16, ptr %a.cap.gep86, align 8
  store ptr %a.create81, ptr %var._map_out_810, align 8
  br label %a.after79

a.after79:                                        ; preds = %a.create78, %loop.exit.665
  %a.load287 = load ptr, ptr %var._map_out_810, align 8
  store ptr %a.load287, ptr %var.names, align 8
  %var.load88 = load ptr, ptr %var.names, align 8
  %a.load89 = load ptr, ptr %var.names, align 8
  %a.null90 = icmp eq ptr %a.load89, null
  br i1 %a.null90, label %a.create91, label %a.after92

a.create91:                                       ; preds = %a.after79
  %arena.cur93 = call ptr @dva_arena_current()
  %a.create94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 24)
  %arena.cur95 = call ptr @dva_arena_current()
  %a.buf96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 128)
  %a.len.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 0
  store i64 0, ptr %a.len.gep97, align 8
  %a.data.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 1
  store ptr %a.buf96, ptr %a.data.gep98, align 8
  %a.cap.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 2
  store i64 16, ptr %a.cap.gep99, align 8
  store ptr %a.create94, ptr %var.names, align 8
  br label %a.after92

a.after92:                                        ; preds = %a.create91, %a.after79
  %a.load2100 = load ptr, ptr %var.names, align 8
  call void @"formatter::sort_names"(ptr %a.load2100)
  %var.load101 = load ptr, ptr %var.names, align 8
  %a.load102 = load ptr, ptr %var.names, align 8
  %a.null103 = icmp eq ptr %a.load102, null
  br i1 %a.null103, label %a.create104, label %a.after105

a.create104:                                      ; preds = %a.after92
  %arena.cur106 = call ptr @dva_arena_current()
  %a.create107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 24)
  %arena.cur108 = call ptr @dva_arena_current()
  %a.buf109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 128)
  %a.len.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create107, i32 0, i32 0
  store i64 0, ptr %a.len.gep110, align 8
  %a.data.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create107, i32 0, i32 1
  store ptr %a.buf109, ptr %a.data.gep111, align 8
  %a.cap.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create107, i32 0, i32 2
  store i64 16, ptr %a.cap.gep112, align 8
  store ptr %a.create107, ptr %var.names, align 8
  br label %a.after105

a.after105:                                       ; preds = %a.create104, %a.after92
  %a.load2113 = load ptr, ptr %var.names, align 8
  %arr.cycle.len114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2113, i32 0, i32 0
  %arr.cycle.len115 = load i64, ptr %arr.cycle.len114, align 8
  %arr.cycle.data116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2113, i32 0, i32 1
  %arr.cycle.data117 = load ptr, ptr %arr.cycle.data116, align 8
  store i64 0, ptr %loop.idx.666, align 8
  br label %loop.header.666

loop.header.666:                                  ; preds = %loop.latch.666, %a.after105
  %counter.load118 = load i64, ptr %loop.idx.666, align 8
  %loop.cond119 = icmp slt i64 %counter.load118, %arr.cycle.len115
  br i1 %loop.cond119, label %loop.body.666, label %loop.exit.nat.666

loop.body.666:                                    ; preds = %loop.header.666
  %loop.rel.i120 = sub i64 %counter.load118, 0
  store i64 1, ptr %loop.step.666, align 8
  %arr.elem.gep121 = getelementptr i64, ptr %arr.cycle.data117, i64 %counter.load118
  %arr.elem.raw122 = load i64, ptr %arr.elem.gep121, align 8
  %slot.i2p123 = inttoptr i64 %arr.elem.raw122 to ptr
  store i64 %loop.rel.i120, ptr %var._i124, align 8
  store ptr %slot.i2p123, ptr %var._125, align 8
  store ptr %slot.i2p123, ptr %var.name, align 8
  %var.load126 = load ptr, ptr %var.target, align 8
  %var.load127 = load ptr, ptr %var.name, align 8
  %call.res128 = call { i64, ptr } @"fs::join"(ptr %var.load126, ptr %var.load127)
  %arena.cur129 = call ptr @dva_arena_current()
  %ret.ub.alloc130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 16)
  store { i64, ptr } %call.res128, ptr %ret.ub.alloc130, align 8
  store ptr %ret.ub.alloc130, ptr %var.sub, align 8
  %var.load131 = load ptr, ptr %var.sub, align 8
  %var.load132 = load ptr, ptr %var.out, align 8
  %a.load133 = load ptr, ptr %var.out, align 8
  %a.null134 = icmp eq ptr %a.load133, null
  br i1 %a.null134, label %a.create135, label %a.after136

loop.exit.nat.666:                                ; preds = %loop.header.666
  br label %loop.exit.666

loop.latch.666:                                   ; preds = %a.after136
  %step.val145 = load i64, ptr %loop.step.666, align 8
  %loop.next146 = add i64 %counter.load118, %step.val145
  store i64 %loop.next146, ptr %loop.idx.666, align 8
  br label %loop.header.666

loop.exit.666:                                    ; preds = %loop.exit.nat.666
  br label %choice.exit21

a.create135:                                      ; preds = %loop.body.666
  %arena.cur137 = call ptr @dva_arena_current()
  %a.create138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 24)
  %arena.cur139 = call ptr @dva_arena_current()
  %a.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 128)
  %a.len.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 0
  store i64 0, ptr %a.len.gep141, align 8
  %a.data.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 1
  store ptr %a.buf140, ptr %a.data.gep142, align 8
  %a.cap.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 2
  store i64 16, ptr %a.cap.gep143, align 8
  store ptr %a.create138, ptr %var.out, align 8
  br label %a.after136

a.after136:                                       ; preds = %a.create135, %loop.body.666
  %a.load2144 = load ptr, ptr %var.out, align 8
  call void @"formatter::collect_dva_files"(ptr %var.load131, ptr %a.load2144)
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
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %arena.cur3 = call ptr @dva_arena_current()
  %builder.new4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %b.data.gep5 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 1
  %b.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 0
  %b.cap.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 2
  %b.buf.len8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum9 = extractvalue { i64, i1 } %b.buf.len8, 0
  %ovf10 = extractvalue { i64, i1 } %b.buf.len8, 1
  br i1 %ovf10, label %str_overflow_abort12, label %b.buf.len11

str_overflow_abort:                               ; preds = %entry
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.buf.len11:                                      ; preds = %abort.dead13, %b.buf.len1
  %arena.cur14 = call ptr @dva_arena_current()
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
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %b.freeze.arena56 = call ptr @dva_arena_current()
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
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
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
  %arena.cur27 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data26, i64 %b.freeze.len25, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len25
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data28 = phi ptr [ %b.freeze.data26, %b.len_ok ], [ %b.freeze.data26, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur29 = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur48 = call ptr @dva_arena_current()
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
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur79 = call ptr @dva_arena_current()
  %b.freeze.fresh80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %b.freeze.alen78)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh80, ptr align 1 %b.freeze.data55, i64 %b.freeze.len53, i1 false)
  %b.freeze.nul81 = getelementptr i8, ptr %b.freeze.fresh80, i64 %b.freeze.len53
  store i8 0, ptr %b.freeze.nul81, align 1
  br label %b.freeze.done62

b.freeze.done62:                                  ; preds = %b.freeze.copy61, %b.freeze.check60, %loop.exit.667
  %b.freeze.data82 = phi ptr [ %b.freeze.data55, %loop.exit.667 ], [ %b.freeze.data55, %b.freeze.check60 ], [ %b.freeze.fresh80, %b.freeze.copy61 ]
  %arena.cur83 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal10, label %str_ok9, label %tag.gen_check11

choice.exit:                                      ; preds = %str_ok29, %str_ok
  ret void

str_ok9:                                          ; preds = %abort.dead18, %tag.slow_check12, %tag.gen_check11, %choice.then
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr4, i64 %arg.str.ptr7
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr19, label %nulcopy

tag.gen_check11:                                  ; preds = %choice.then
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok15 = icmp eq i64 %str.tag8, %active.gen14
  br i1 %tag.fast.ok15, label %str_ok9, label %tag.slow_check12

tag.slow_check12:                                 ; preds = %tag.gen_check11
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag8)
  br i1 %tag.valid17, label %str_ok9, label %tag.stale13

tag.stale13:                                      ; preds = %tag.slow_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %str_ok9

arg.str.ptr19:                                    ; preds = %str_ok9
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok9
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr7, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len20

nulmerge:                                         ; preds = %nulcopy.len20, %arg.str.ptr19
  %arg.str.ptr23 = phi ptr [ %arg.str.ptr4, %arg.str.ptr19 ], [ %nulcopy.buf, %nulcopy.len20 ]
  %var.load24 = load ptr, ptr %var.s, align 8
  %str.len.query25 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %str.len.query26 = load i64, ptr %str.len.query25, align 8
  %str.len.query27 = and i64 %str.len.query26, 281474976710655
  %str.tag28 = lshr i64 %str.len.query26, 48
  %tag.immortal30 = icmp eq i64 %str.tag28, 0
  br i1 %tag.immortal30, label %str_ok29, label %tag.gen_check31

nulcopy.len20:                                    ; preds = %abort.dead21, %nulcopy
  %arena.cur22 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr4, i64 %arg.str.ptr7, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr7
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %nulcopy.len20

str_ok29:                                         ; preds = %abort.dead38, %tag.slow_check32, %tag.gen_check31, %nulmerge
  %call.res = call i64 @write(i32 1, ptr %arg.str.ptr23, i64 %str.len.query27)
  br label %choice.exit

tag.gen_check31:                                  ; preds = %nulmerge
  %active.gen34 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok35 = icmp eq i64 %str.tag28, %active.gen34
  br i1 %tag.fast.ok35, label %str_ok29, label %tag.slow_check32

tag.slow_check32:                                 ; preds = %tag.gen_check31
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag28)
  br i1 %tag.valid37, label %str_ok29, label %tag.stale33

tag.stale33:                                      ; preds = %tag.slow_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %str_ok29
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = load i64, ptr @str.74.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %concat.rhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.74.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len7

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

concat.sum.len7:                                  ; preds = %abort.dead8, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum9 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf10 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf10, label %str_overflow_abort12, label %concat.tot.len11

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %concat.sum.len7

concat.tot.len11:                                 ; preds = %abort.dead13, %concat.sum.len7
  %arena.cur14 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 %sum9)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs6, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur15 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"formatter::write_stdout"(ptr %concat.str)
  ret void

str_overflow_abort12:                             ; preds = %concat.sum.len7
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %concat.tot.len11
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
  %var.err461 = alloca ptr, align 8
  %var._460 = alloca ptr, align 8
  %var.formatted379 = alloca ptr, align 8
  %var._378 = alloca ptr, align 8
  %var.res370 = alloca { i1, i64 }, align 8
  %var.src366 = alloca ptr, align 8
  %var._365 = alloca ptr, align 8
  %var.src_opt = alloca ptr, align 8
  %var._357 = alloca ptr, align 8
  %var._i356 = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.671 = alloca i64, align 8
  %loop.idx.671 = alloca i64, align 8
  %"var.unformatted'" = alloca i64, align 8
  %"var.had_err'" = alloca i1, align 1
  %var._255 = alloca ptr, align 8
  %var._i254 = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %loop.step.670 = alloca i64, align 8
  %loop.idx.670 = alloca i64, align 8
  %var.files = alloca ptr, align 8
  %var.err = alloca ptr, align 8
  %var._183 = alloca ptr, align 8
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
  %arena.cur5 = call ptr @dva_arena_current()
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
  br i1 false, label %idx_oob, label %idx_big_check

and.669.else:                                     ; preds = %choice.next62
  br label %and.669.exit

and.669.exit:                                     ; preds = %and.669.else, %idx_ok
  %and.669.phi = phi i1 [ %cmptmp86, %idx_ok ], [ %cmptmp81, %and.669.else ]
  br i1 %and.669.phi, label %choice.then87, label %choice.else

idx_big_check:                                    ; preds = %and.669.then
  %idx.big = icmp sge i64 0, %s.read.len84
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data85, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp86 = icmp eq i64 %s.byte.val, 45
  br label %and.669.exit

idx_oob:                                          ; preds = %idx_big_check, %and.669.then
  %1 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %cat.sum.len95

cat.sum.len100:                                   ; preds = %abort.dead102, %cat.sum.len95
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum98, i64 1)
  %sum103 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf104 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf104, label %str_overflow_abort106, label %concat.tot.len105

str_overflow_abort101:                            ; preds = %cat.sum.len95
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead102:                                    ; No predecessors!
  br label %cat.sum.len100

concat.tot.len105:                                ; preds = %abort.dead107, %cat.sum.len100
  %arena.cur108 = call ptr @dva_arena_current()
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
  %arena.cur111 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum98, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"log::error"(ptr %concat.str)
  ret i64 1

str_overflow_abort106:                            ; preds = %cat.sum.len100
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead107:                                    ; No predecessors!
  br label %concat.tot.len105

ret.dead112:                                      ; No predecessors!
  br label %choice.exit88

a.create:                                         ; preds = %choice.else
  %arena.cur114 = call ptr @dva_arena_current()
  %a.create115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 24)
  %arena.cur116 = call ptr @dva_arena_current()
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
  %arena.cur131 = call ptr @dva_arena_current()
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
  %var.load186 = load ptr, ptr %var.targets, align 8
  %a.load187 = load ptr, ptr %var.targets, align 8
  %a.null188 = icmp eq ptr %a.load187, null
  br i1 %a.null188, label %a.create189, label %a.after190

choice.exit129:                                   ; preds = %choice.exit332, %choice.exit138
  %choice.res510 = phi i64 [ %choice.res185, %choice.exit138 ], [ %choice.res509, %choice.exit332 ]
  ret i64 %choice.res510

choice.then136:                                   ; preds = %choice.then127
  %ram.pay = extractvalue { i1, i64 } %var.load135, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._139, align 8
  store ptr %pay.ptr, ptr %var.formatted, align 8
  %var.load140 = load i1, ptr %"var.check_only'", align 1
  br i1 %var.load140, label %choice.then141, label %choice.else142

choice.else137:                                   ; preds = %choice.then127
  %ram.pay181 = extractvalue { i1, i64 } %var.load135, 1
  %pay.ptr182 = inttoptr i64 %ram.pay181 to ptr
  store ptr %pay.ptr182, ptr %var._183, align 8
  store ptr %pay.ptr182, ptr %var.err, align 8
  %var.load184 = load ptr, ptr %var.err, align 8
  call void @"log::error"(ptr %var.load184)
  br label %choice.exit138

choice.exit138:                                   ; preds = %choice.else137, %choice.exit143
  %choice.res185 = phi i64 [ %choice.res180, %choice.exit143 ], [ 1, %choice.else137 ]
  br label %choice.exit129

choice.then141:                                   ; preds = %choice.then136
  %var.load144 = load ptr, ptr %var.formatted, align 8
  %var.load145 = load ptr, ptr %var.src, align 8
  %eq.lhs.len146 = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 0
  %eq.lhs.len147 = load i64, ptr %eq.lhs.len146, align 8
  %eq.lhs.len148 = and i64 %eq.lhs.len147, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len147, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.else142:                                   ; preds = %choice.then136
  %var.load179 = load ptr, ptr %var.formatted, align 8
  call void @"formatter::write_stdout"(ptr %var.load179)
  br label %choice.exit143

choice.exit143:                                   ; preds = %choice.else142, %choice.exit178
  %choice.res180 = phi i64 [ %choice.res, %choice.exit178 ], [ 0, %choice.else142 ]
  br label %choice.exit138

str_ok:                                           ; preds = %abort.dead150, %tag.slow_check, %tag.gen_check, %choice.then141
  %eq.rhs.len151 = getelementptr inbounds { i64, ptr }, ptr %var.load145, i32 0, i32 0
  %eq.rhs.len152 = load i64, ptr %eq.rhs.len151, align 8
  %eq.rhs.len153 = and i64 %eq.rhs.len152, 281474976710655
  %str.tag154 = lshr i64 %eq.rhs.len152, 48
  %tag.immortal156 = icmp eq i64 %str.tag154, 0
  br i1 %tag.immortal156, label %str_ok155, label %tag.gen_check157

tag.gen_check:                                    ; preds = %choice.then141
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur149 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur149, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead150:                                    ; No predecessors!
  br label %str_ok

str_ok155:                                        ; preds = %abort.dead164, %tag.slow_check158, %tag.gen_check157, %str_ok
  %eq.len165 = icmp eq i64 %eq.lhs.len148, %eq.rhs.len153
  br i1 %eq.len165, label %str.eq.then166, label %str.eq.else167

tag.gen_check157:                                 ; preds = %str_ok
  %active.gen160 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok161 = icmp eq i64 %str.tag154, %active.gen160
  br i1 %tag.fast.ok161, label %str_ok155, label %tag.slow_check158

tag.slow_check158:                                ; preds = %tag.gen_check157
  %arena.cur162 = call ptr @dva_arena_current()
  %tag.valid163 = call i1 @dva_arena_validate_tag(ptr %arena.cur162, i64 %str.tag154)
  br i1 %tag.valid163, label %str_ok155, label %tag.stale159

tag.stale159:                                     ; preds = %tag.slow_check158
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead164:                                    ; No predecessors!
  br label %str_ok155

str.eq.then166:                                   ; preds = %str_ok155
  %eq.lhs.data169 = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 1
  %eq.lhs.data170 = load ptr, ptr %eq.lhs.data169, align 8
  %eq.rhs.data171 = getelementptr inbounds { i64, ptr }, ptr %var.load145, i32 0, i32 1
  %eq.rhs.data172 = load ptr, ptr %eq.rhs.data171, align 8
  %eq.memcmp173 = call i32 @memcmp(ptr %eq.lhs.data170, ptr %eq.rhs.data172, i64 %eq.lhs.len148)
  %eq.cmp.zero174 = icmp eq i32 %eq.memcmp173, 0
  br label %str.eq.merge168

str.eq.else167:                                   ; preds = %str_ok155
  br label %str.eq.merge168

str.eq.merge168:                                  ; preds = %str.eq.else167, %str.eq.then166
  %str.eq.result175 = phi i1 [ %eq.cmp.zero174, %str.eq.then166 ], [ false, %str.eq.else167 ]
  br i1 %str.eq.result175, label %choice.then176, label %choice.else177

choice.then176:                                   ; preds = %str.eq.merge168
  br label %choice.exit178

choice.else177:                                   ; preds = %str.eq.merge168
  br label %choice.exit178

choice.exit178:                                   ; preds = %choice.else177, %choice.then176
  %choice.res = phi i64 [ 0, %choice.then176 ], [ 1, %choice.else177 ]
  br label %choice.exit143

a.create189:                                      ; preds = %choice.else128
  %arena.cur191 = call ptr @dva_arena_current()
  %a.create192 = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 24)
  %arena.cur193 = call ptr @dva_arena_current()
  %a.buf194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 128)
  %a.len.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create192, i32 0, i32 0
  store i64 0, ptr %a.len.gep195, align 8
  %a.data.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create192, i32 0, i32 1
  store ptr %a.buf194, ptr %a.data.gep196, align 8
  %a.cap.gep197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create192, i32 0, i32 2
  store i64 16, ptr %a.cap.gep197, align 8
  store ptr %a.create192, ptr %var.targets, align 8
  br label %a.after190

a.after190:                                       ; preds = %a.create189, %choice.else128
  %a.load2198 = load ptr, ptr %var.targets, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2198, i32 0, i32 0
  %a.len.query199 = load i64, ptr %a.len.query, align 8
  %cmptmp200 = icmp eq i64 %a.len.query199, 0
  br i1 %cmptmp200, label %choice.then201, label %choice.exit202

choice.then201:                                   ; preds = %a.after190
  %a.load203 = load ptr, ptr %var.targets, align 8
  %a.null204 = icmp eq ptr %a.load203, null
  br i1 %a.null204, label %a.create205, label %a.after206

choice.exit202:                                   ; preds = %a.store217, %a.after190
  %arena.cur230 = call ptr @dva_arena_current()
  %a.new231 = call ptr @dva_arena_alloc(ptr %arena.cur230, i64 24)
  %arena.cur232 = call ptr @dva_arena_current()
  %a.buf233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 128)
  %a.len.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new231, i32 0, i32 0
  store i64 0, ptr %a.len.gep234, align 8
  %a.data.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new231, i32 0, i32 1
  store ptr %a.buf233, ptr %a.data.gep235, align 8
  %a.cap.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new231, i32 0, i32 2
  store i64 16, ptr %a.cap.gep236, align 8
  store ptr %a.new231, ptr %var.files, align 8
  %var.load237 = load ptr, ptr %var.targets, align 8
  %a.load238 = load ptr, ptr %var.targets, align 8
  %a.null239 = icmp eq ptr %a.load238, null
  br i1 %a.null239, label %a.create240, label %a.after241

a.create205:                                      ; preds = %choice.then201
  %arena.cur207 = call ptr @dva_arena_current()
  %a.create208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 24)
  %arena.cur209 = call ptr @dva_arena_current()
  %a.buf210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 128)
  %a.len.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create208, i32 0, i32 0
  store i64 0, ptr %a.len.gep211, align 8
  %a.data.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create208, i32 0, i32 1
  store ptr %a.buf210, ptr %a.data.gep212, align 8
  %a.cap.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create208, i32 0, i32 2
  store i64 16, ptr %a.cap.gep213, align 8
  store ptr %a.create208, ptr %var.targets, align 8
  br label %a.after206

a.after206:                                       ; preds = %a.create205, %choice.then201
  %a.load2214 = load ptr, ptr %var.targets, align 8
  br label %a.check215

a.check215:                                       ; preds = %a.after206
  %a.len218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2214, i32 0, i32 0
  %a.len219 = load i64, ptr %a.len218, align 8
  %a.cap220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2214, i32 0, i32 2
  %a.cap221 = load i64, ptr %a.cap220, align 8
  %a.needs.grow222 = icmp eq i64 %a.len219, %a.cap221
  br i1 %a.needs.grow222, label %a.grow216, label %a.store217

a.grow216:                                        ; preds = %a.check215
  call void @dva_array_grow(ptr %a.load2214)
  br label %a.store217

a.store217:                                       ; preds = %a.grow216, %a.check215
  %a.cur.data223 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2214, i32 0, i32 1
  %a.cur.data224 = load ptr, ptr %a.cur.data223, align 8
  %a.cur.len225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2214, i32 0, i32 0
  %a.cur.len226 = load i64, ptr %a.cur.len225, align 8
  %a.elem.gep227 = getelementptr i64, ptr %a.cur.data224, i64 %a.cur.len226
  store i64 ptrtoint (ptr @str.89.struct to i64), ptr %a.elem.gep227, align 8
  %a.next.len228 = add i64 %a.cur.len226, 1
  %b.len.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2214, i32 0, i32 0
  store i64 %a.next.len228, ptr %b.len.gep229, align 8
  br label %choice.exit202

a.create240:                                      ; preds = %choice.exit202
  %arena.cur242 = call ptr @dva_arena_current()
  %a.create243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 24)
  %arena.cur244 = call ptr @dva_arena_current()
  %a.buf245 = call ptr @dva_arena_alloc(ptr %arena.cur244, i64 128)
  %a.len.gep246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create243, i32 0, i32 0
  store i64 0, ptr %a.len.gep246, align 8
  %a.data.gep247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create243, i32 0, i32 1
  store ptr %a.buf245, ptr %a.data.gep247, align 8
  %a.cap.gep248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create243, i32 0, i32 2
  store i64 16, ptr %a.cap.gep248, align 8
  store ptr %a.create243, ptr %var.targets, align 8
  br label %a.after241

a.after241:                                       ; preds = %a.create240, %choice.exit202
  %a.load2249 = load ptr, ptr %var.targets, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2249, i32 0, i32 0
  %arr.cycle.len250 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2249, i32 0, i32 1
  %arr.cycle.data251 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.670, align 8
  br label %loop.header.670

loop.header.670:                                  ; preds = %loop.latch.670, %a.after241
  %counter.load252 = load i64, ptr %loop.idx.670, align 8
  %loop.cond = icmp slt i64 %counter.load252, %arr.cycle.len250
  br i1 %loop.cond, label %loop.body.670, label %loop.exit.nat.670

loop.body.670:                                    ; preds = %loop.header.670
  %loop.rel.i253 = sub i64 %counter.load252, 0
  store i64 1, ptr %loop.step.670, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data251, i64 %counter.load252
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i253, ptr %var._i254, align 8
  store ptr %slot.i2p, ptr %var._255, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  %var.load256 = load ptr, ptr %var.t, align 8
  %call.res257 = call i1 @"fs::exists"(ptr %var.load256)
  %nottmp = xor i1 %call.res257, true
  br i1 %nottmp, label %choice.then258, label %choice.exit259

loop.exit.nat.670:                                ; preds = %loop.header.670
  br label %loop.exit.670

loop.latch.670:                                   ; preds = %a.after303
  %step.val312 = load i64, ptr %loop.step.670, align 8
  %loop.next313 = add i64 %counter.load252, %step.val312
  store i64 %loop.next313, ptr %loop.idx.670, align 8
  br label %loop.header.670

loop.exit.670:                                    ; preds = %loop.exit.nat.670
  %var.load314 = load ptr, ptr %var.files, align 8
  %a.load315 = load ptr, ptr %var.files, align 8
  %a.null316 = icmp eq ptr %a.load315, null
  br i1 %a.null316, label %a.create317, label %a.after318

choice.then258:                                   ; preds = %loop.body.670
  %cat.lit.data260 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.90.struct, i32 0, i32 1), align 8
  %var.load261 = load ptr, ptr %var.t, align 8
  %cat.seg262 = getelementptr inbounds { i64, ptr }, ptr %var.load261, i32 0, i32 0
  %cat.seg263 = load i64, ptr %cat.seg262, align 8
  %cat.seg264 = and i64 %cat.seg263, 281474976710655
  %cat.seg265 = getelementptr inbounds { i64, ptr }, ptr %var.load261, i32 0, i32 1
  %cat.seg266 = load ptr, ptr %cat.seg265, align 8
  %cat.lit.data267 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.91.struct, i32 0, i32 1), align 8
  %cat.sum.len268 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 %cat.seg264)
  %sum269 = extractvalue { i64, i1 } %cat.sum.len268, 0
  %ovf270 = extractvalue { i64, i1 } %cat.sum.len268, 1
  br i1 %ovf270, label %str_overflow_abort272, label %cat.sum.len271

choice.exit259:                                   ; preds = %ret.dead297, %loop.body.670
  %var.load298 = load ptr, ptr %var.t, align 8
  %var.load299 = load ptr, ptr %var.files, align 8
  %a.load300 = load ptr, ptr %var.files, align 8
  %a.null301 = icmp eq ptr %a.load300, null
  br i1 %a.null301, label %a.create302, label %a.after303

cat.sum.len271:                                   ; preds = %abort.dead273, %choice.then258
  %cat.sum.len274 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum269, i64 16)
  %sum275 = extractvalue { i64, i1 } %cat.sum.len274, 0
  %ovf276 = extractvalue { i64, i1 } %cat.sum.len274, 1
  br i1 %ovf276, label %str_overflow_abort278, label %cat.sum.len277

str_overflow_abort272:                            ; preds = %choice.then258
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead273:                                    ; No predecessors!
  br label %cat.sum.len271

cat.sum.len277:                                   ; preds = %abort.dead279, %cat.sum.len271
  %concat.tot.len280 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum275, i64 1)
  %sum281 = extractvalue { i64, i1 } %concat.tot.len280, 0
  %ovf282 = extractvalue { i64, i1 } %concat.tot.len280, 1
  br i1 %ovf282, label %str_overflow_abort284, label %concat.tot.len283

str_overflow_abort278:                            ; preds = %cat.sum.len271
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead279:                                    ; No predecessors!
  br label %cat.sum.len277

concat.tot.len283:                                ; preds = %abort.dead285, %cat.sum.len277
  %arena.cur286 = call ptr @dva_arena_current()
  %concat.buf287 = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 %sum281)
  %cat.dst288 = getelementptr i8, ptr %concat.buf287, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst288, ptr align 1 %cat.lit.data260, i64 16, i1 false)
  %cat.dst289 = getelementptr i8, ptr %concat.buf287, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst289, ptr align 1 %cat.seg266, i64 %cat.seg264, i1 false)
  %cat.off290 = add i64 16, %cat.seg264
  %cat.dst291 = getelementptr i8, ptr %concat.buf287, i64 %cat.off290
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst291, ptr align 1 %cat.lit.data267, i64 16, i1 false)
  %concat.nul292 = getelementptr i8, ptr %concat.buf287, i64 %sum275
  store i8 0, ptr %concat.nul292, align 1
  %arena.cur293 = call ptr @dva_arena_current()
  %concat.str294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 16)
  %str.build.len.gep295 = getelementptr inbounds { i64, ptr }, ptr %concat.str294, i32 0, i32 0
  store i64 %sum275, ptr %str.build.len.gep295, align 8
  %str.build.data.gep296 = getelementptr inbounds { i64, ptr }, ptr %concat.str294, i32 0, i32 1
  store ptr %concat.buf287, ptr %str.build.data.gep296, align 8
  call void @"log::error"(ptr %concat.str294)
  ret i64 1

str_overflow_abort284:                            ; preds = %cat.sum.len277
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead285:                                    ; No predecessors!
  br label %concat.tot.len283

ret.dead297:                                      ; No predecessors!
  br label %choice.exit259

a.create302:                                      ; preds = %choice.exit259
  %arena.cur304 = call ptr @dva_arena_current()
  %a.create305 = call ptr @dva_arena_alloc(ptr %arena.cur304, i64 24)
  %arena.cur306 = call ptr @dva_arena_current()
  %a.buf307 = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 128)
  %a.len.gep308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create305, i32 0, i32 0
  store i64 0, ptr %a.len.gep308, align 8
  %a.data.gep309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create305, i32 0, i32 1
  store ptr %a.buf307, ptr %a.data.gep309, align 8
  %a.cap.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create305, i32 0, i32 2
  store i64 16, ptr %a.cap.gep310, align 8
  store ptr %a.create305, ptr %var.files, align 8
  br label %a.after303

a.after303:                                       ; preds = %a.create302, %choice.exit259
  %a.load2311 = load ptr, ptr %var.files, align 8
  call void @"formatter::collect_dva_files"(ptr %var.load298, ptr %a.load2311)
  br label %loop.latch.670

a.create317:                                      ; preds = %loop.exit.670
  %arena.cur319 = call ptr @dva_arena_current()
  %a.create320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 24)
  %arena.cur321 = call ptr @dva_arena_current()
  %a.buf322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 128)
  %a.len.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create320, i32 0, i32 0
  store i64 0, ptr %a.len.gep323, align 8
  %a.data.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create320, i32 0, i32 1
  store ptr %a.buf322, ptr %a.data.gep324, align 8
  %a.cap.gep325 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create320, i32 0, i32 2
  store i64 16, ptr %a.cap.gep325, align 8
  store ptr %a.create320, ptr %var.files, align 8
  br label %a.after318

a.after318:                                       ; preds = %a.create317, %loop.exit.670
  %a.load2326 = load ptr, ptr %var.files, align 8
  %a.len.query327 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2326, i32 0, i32 0
  %a.len.query328 = load i64, ptr %a.len.query327, align 8
  %cmptmp329 = icmp eq i64 %a.len.query328, 0
  br i1 %cmptmp329, label %choice.then330, label %choice.else331

choice.then330:                                   ; preds = %a.after318
  call void @"log::error"(ptr @str.92.struct)
  br label %choice.exit332

choice.else331:                                   ; preds = %a.after318
  store i1 false, ptr %"var.had_err'", align 1
  store i64 0, ptr %"var.unformatted'", align 8
  %var.load333 = load ptr, ptr %var.files, align 8
  %a.load334 = load ptr, ptr %var.files, align 8
  %a.null335 = icmp eq ptr %a.load334, null
  br i1 %a.null335, label %a.create336, label %a.after337

choice.exit332:                                   ; preds = %choice.exit507, %choice.then330
  %choice.res509 = phi i64 [ 1, %choice.then330 ], [ %choice.res508, %choice.exit507 ]
  br label %choice.exit129

a.create336:                                      ; preds = %choice.else331
  %arena.cur338 = call ptr @dva_arena_current()
  %a.create339 = call ptr @dva_arena_alloc(ptr %arena.cur338, i64 24)
  %arena.cur340 = call ptr @dva_arena_current()
  %a.buf341 = call ptr @dva_arena_alloc(ptr %arena.cur340, i64 128)
  %a.len.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 0
  store i64 0, ptr %a.len.gep342, align 8
  %a.data.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 1
  store ptr %a.buf341, ptr %a.data.gep343, align 8
  %a.cap.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 2
  store i64 16, ptr %a.cap.gep344, align 8
  store ptr %a.create339, ptr %var.files, align 8
  br label %a.after337

a.after337:                                       ; preds = %a.create336, %choice.else331
  %a.load2345 = load ptr, ptr %var.files, align 8
  %arr.cycle.len346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2345, i32 0, i32 0
  %arr.cycle.len347 = load i64, ptr %arr.cycle.len346, align 8
  %arr.cycle.data348 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2345, i32 0, i32 1
  %arr.cycle.data349 = load ptr, ptr %arr.cycle.data348, align 8
  store i64 0, ptr %loop.idx.671, align 8
  br label %loop.header.671

loop.header.671:                                  ; preds = %loop.latch.671, %a.after337
  %counter.load350 = load i64, ptr %loop.idx.671, align 8
  %loop.cond351 = icmp slt i64 %counter.load350, %arr.cycle.len347
  br i1 %loop.cond351, label %loop.body.671, label %loop.exit.nat.671

loop.body.671:                                    ; preds = %loop.header.671
  %loop.rel.i352 = sub i64 %counter.load350, 0
  store i64 1, ptr %loop.step.671, align 8
  %arr.elem.gep353 = getelementptr i64, ptr %arr.cycle.data349, i64 %counter.load350
  %arr.elem.raw354 = load i64, ptr %arr.elem.gep353, align 8
  %slot.i2p355 = inttoptr i64 %arr.elem.raw354 to ptr
  store i64 %loop.rel.i352, ptr %var._i356, align 8
  store ptr %slot.i2p355, ptr %var._357, align 8
  store ptr %slot.i2p355, ptr %var.f, align 8
  %var.load358 = load ptr, ptr %var.f, align 8
  %call.res359 = call { i64, ptr } @"fs::read_to_string"(ptr %var.load358)
  %ret.niche.data = extractvalue { i64, ptr } %call.res359, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

loop.exit.nat.671:                                ; preds = %loop.header.671
  br label %loop.exit.671

loop.latch.671:                                   ; preds = %choice.exit364
  %step.val500 = load i64, ptr %loop.step.671, align 8
  %loop.next501 = add i64 %counter.load350, %step.val500
  store i64 %loop.next501, ptr %loop.idx.671, align 8
  br label %loop.header.671

loop.exit.671:                                    ; preds = %loop.exit.nat.671
  %var.load502 = load i1, ptr %"var.had_err'", align 1
  br i1 %var.load502, label %or.672.then, label %or.672.else

ret.niche.alloc:                                  ; preds = %loop.body.671
  %arena.cur360 = call ptr @dva_arena_current()
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur360, i64 16)
  store { i64, ptr } %call.res359, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %loop.body.671
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %loop.body.671 ]
  store ptr %ret.niche.ptr, ptr %var.src_opt, align 8
  %var.load361 = load ptr, ptr %var.src_opt, align 8
  %niche.ne.null = icmp ne ptr %var.load361, null
  br i1 %niche.ne.null, label %choice.then362, label %choice.else363

choice.then362:                                   ; preds = %ret.niche.done
  store ptr %var.load361, ptr %var._365, align 8
  store ptr %var.load361, ptr %var.src366, align 8
  %var.load367 = load ptr, ptr %var.src366, align 8
  %var.load368 = load ptr, ptr %var.f, align 8
  %call.res369 = call { i1, i64 } @"formatter::format_source"(ptr %var.load367, ptr %var.load368)
  store { i1, i64 } %call.res369, ptr %var.res370, align 8
  %var.load371 = load { i1, i64 }, ptr %var.res370, align 8
  %ram.tag372 = extractvalue { i1, i64 } %var.load371, 0
  br i1 %ram.tag372, label %choice.then373, label %choice.else374

choice.else363:                                   ; preds = %ret.niche.done
  %cat.lit.data463 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.94.struct, i32 0, i32 1), align 8
  %var.load464 = load ptr, ptr %var.f, align 8
  %cat.seg465 = getelementptr inbounds { i64, ptr }, ptr %var.load464, i32 0, i32 0
  %cat.seg466 = load i64, ptr %cat.seg465, align 8
  %cat.seg467 = and i64 %cat.seg466, 281474976710655
  %cat.seg468 = getelementptr inbounds { i64, ptr }, ptr %var.load464, i32 0, i32 1
  %cat.seg469 = load ptr, ptr %cat.seg468, align 8
  %cat.lit.data470 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.87.struct, i32 0, i32 1), align 8
  %cat.sum.len471 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 26, i64 %cat.seg467)
  %sum472 = extractvalue { i64, i1 } %cat.sum.len471, 0
  %ovf473 = extractvalue { i64, i1 } %cat.sum.len471, 1
  br i1 %ovf473, label %str_overflow_abort475, label %cat.sum.len474

choice.exit364:                                   ; preds = %concat.tot.len486, %choice.exit375
  br label %loop.latch.671

choice.then373:                                   ; preds = %choice.then362
  %ram.pay376 = extractvalue { i1, i64 } %var.load371, 1
  %pay.ptr377 = inttoptr i64 %ram.pay376 to ptr
  store ptr %pay.ptr377, ptr %var._378, align 8
  store ptr %pay.ptr377, ptr %var.formatted379, align 8
  %var.load380 = load i1, ptr %"var.to_stdout'", align 1
  br i1 %var.load380, label %choice.then381, label %choice.else382

choice.else374:                                   ; preds = %choice.then362
  %ram.pay458 = extractvalue { i1, i64 } %var.load371, 1
  %pay.ptr459 = inttoptr i64 %ram.pay458 to ptr
  store ptr %pay.ptr459, ptr %var._460, align 8
  store ptr %pay.ptr459, ptr %var.err461, align 8
  %var.load462 = load ptr, ptr %var.err461, align 8
  call void @"log::error"(ptr %var.load462)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit375

choice.exit375:                                   ; preds = %choice.else374, %choice.exit383
  br label %choice.exit364

choice.then381:                                   ; preds = %choice.then373
  %var.load384 = load ptr, ptr %var.formatted379, align 8
  call void @"formatter::write_stdout"(ptr %var.load384)
  br label %choice.exit383

choice.else382:                                   ; preds = %choice.then373
  %var.load385 = load ptr, ptr %var.formatted379, align 8
  %var.load386 = load ptr, ptr %var.src366, align 8
  %eq.lhs.len387 = getelementptr inbounds { i64, ptr }, ptr %var.load385, i32 0, i32 0
  %eq.lhs.len388 = load i64, ptr %eq.lhs.len387, align 8
  %eq.lhs.len389 = and i64 %eq.lhs.len388, 281474976710655
  %eq.rhs.len390 = getelementptr inbounds { i64, ptr }, ptr %var.load386, i32 0, i32 0
  %eq.rhs.len391 = load i64, ptr %eq.rhs.len390, align 8
  %eq.rhs.len392 = and i64 %eq.rhs.len391, 281474976710655
  %eq.len393 = icmp eq i64 %eq.lhs.len389, %eq.rhs.len392
  br i1 %eq.len393, label %str.eq.then394, label %str.eq.else395

choice.exit383:                                   ; preds = %choice.exit405, %choice.then381
  br label %choice.exit375

str.eq.then394:                                   ; preds = %choice.else382
  %eq.lhs.data397 = getelementptr inbounds { i64, ptr }, ptr %var.load385, i32 0, i32 1
  %eq.lhs.data398 = load ptr, ptr %eq.lhs.data397, align 8
  %eq.rhs.data399 = getelementptr inbounds { i64, ptr }, ptr %var.load386, i32 0, i32 1
  %eq.rhs.data400 = load ptr, ptr %eq.rhs.data399, align 8
  %eq.memcmp401 = call i32 @memcmp(ptr %eq.lhs.data398, ptr %eq.rhs.data400, i64 %eq.lhs.len389)
  %eq.cmp.zero402 = icmp eq i32 %eq.memcmp401, 0
  br label %str.eq.merge396

str.eq.else395:                                   ; preds = %choice.else382
  br label %str.eq.merge396

str.eq.merge396:                                  ; preds = %str.eq.else395, %str.eq.then394
  %str.eq.result403 = phi i1 [ %eq.cmp.zero402, %str.eq.then394 ], [ false, %str.eq.else395 ]
  %str.neq = xor i1 %str.eq.result403, true
  br i1 %str.neq, label %choice.then404, label %choice.exit405

choice.then404:                                   ; preds = %str.eq.merge396
  %var.load406 = load i1, ptr %"var.check_only'", align 1
  br i1 %var.load406, label %choice.then407, label %choice.else408

choice.exit405:                                   ; preds = %choice.exit409, %str.eq.merge396
  br label %choice.exit383

choice.then407:                                   ; preds = %choice.then404
  %var.load410 = load ptr, ptr %var.f, align 8
  call void @"formatter::print_line"(ptr %var.load410)
  %var.load411 = load i64, ptr %"var.unformatted'", align 8
  %addtmp412 = add i64 %var.load411, 1
  store i64 %addtmp412, ptr %"var.unformatted'", align 8
  br label %choice.exit409

choice.else408:                                   ; preds = %choice.then404
  %var.load413 = load ptr, ptr %var.f, align 8
  %var.load414 = load ptr, ptr %var.formatted379, align 8
  %call.res415 = call i1 @"fs::write_file"(ptr %var.load413, ptr %var.load414)
  %nottmp416 = xor i1 %call.res415, true
  br i1 %nottmp416, label %choice.then417, label %choice.else418

choice.exit409:                                   ; preds = %choice.exit419, %choice.then407
  br label %choice.exit405

choice.then417:                                   ; preds = %choice.else408
  %cat.lit.data420 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.93.struct, i32 0, i32 1), align 8
  %var.load421 = load ptr, ptr %var.f, align 8
  %cat.seg422 = getelementptr inbounds { i64, ptr }, ptr %var.load421, i32 0, i32 0
  %cat.seg423 = load i64, ptr %cat.seg422, align 8
  %cat.seg424 = and i64 %cat.seg423, 281474976710655
  %cat.seg425 = getelementptr inbounds { i64, ptr }, ptr %var.load421, i32 0, i32 1
  %cat.seg426 = load ptr, ptr %cat.seg425, align 8
  %cat.lit.data427 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.87.struct, i32 0, i32 1), align 8
  %cat.sum.len428 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 27, i64 %cat.seg424)
  %sum429 = extractvalue { i64, i1 } %cat.sum.len428, 0
  %ovf430 = extractvalue { i64, i1 } %cat.sum.len428, 1
  br i1 %ovf430, label %str_overflow_abort432, label %cat.sum.len431

choice.else418:                                   ; preds = %choice.else408
  %var.load457 = load ptr, ptr %var.f, align 8
  call void @"formatter::print_line"(ptr %var.load457)
  br label %choice.exit419

choice.exit419:                                   ; preds = %choice.else418, %concat.tot.len443
  br label %choice.exit409

cat.sum.len431:                                   ; preds = %abort.dead433, %choice.then417
  %cat.sum.len434 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum429, i64 1)
  %sum435 = extractvalue { i64, i1 } %cat.sum.len434, 0
  %ovf436 = extractvalue { i64, i1 } %cat.sum.len434, 1
  br i1 %ovf436, label %str_overflow_abort438, label %cat.sum.len437

str_overflow_abort432:                            ; preds = %choice.then417
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead433:                                    ; No predecessors!
  br label %cat.sum.len431

cat.sum.len437:                                   ; preds = %abort.dead439, %cat.sum.len431
  %concat.tot.len440 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum435, i64 1)
  %sum441 = extractvalue { i64, i1 } %concat.tot.len440, 0
  %ovf442 = extractvalue { i64, i1 } %concat.tot.len440, 1
  br i1 %ovf442, label %str_overflow_abort444, label %concat.tot.len443

str_overflow_abort438:                            ; preds = %cat.sum.len431
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead439:                                    ; No predecessors!
  br label %cat.sum.len437

concat.tot.len443:                                ; preds = %abort.dead445, %cat.sum.len437
  %arena.cur446 = call ptr @dva_arena_current()
  %concat.buf447 = call ptr @dva_arena_alloc(ptr %arena.cur446, i64 %sum441)
  %cat.dst448 = getelementptr i8, ptr %concat.buf447, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst448, ptr align 1 %cat.lit.data420, i64 27, i1 false)
  %cat.dst449 = getelementptr i8, ptr %concat.buf447, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst449, ptr align 1 %cat.seg426, i64 %cat.seg424, i1 false)
  %cat.off450 = add i64 27, %cat.seg424
  %cat.dst451 = getelementptr i8, ptr %concat.buf447, i64 %cat.off450
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst451, ptr align 1 %cat.lit.data427, i64 1, i1 false)
  %concat.nul452 = getelementptr i8, ptr %concat.buf447, i64 %sum435
  store i8 0, ptr %concat.nul452, align 1
  %arena.cur453 = call ptr @dva_arena_current()
  %concat.str454 = call ptr @dva_arena_alloc(ptr %arena.cur453, i64 16)
  %str.build.len.gep455 = getelementptr inbounds { i64, ptr }, ptr %concat.str454, i32 0, i32 0
  store i64 %sum435, ptr %str.build.len.gep455, align 8
  %str.build.data.gep456 = getelementptr inbounds { i64, ptr }, ptr %concat.str454, i32 0, i32 1
  store ptr %concat.buf447, ptr %str.build.data.gep456, align 8
  call void @"log::error"(ptr %concat.str454)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit419

str_overflow_abort444:                            ; preds = %cat.sum.len437
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead445:                                    ; No predecessors!
  br label %concat.tot.len443

cat.sum.len474:                                   ; preds = %abort.dead476, %choice.else363
  %cat.sum.len477 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum472, i64 1)
  %sum478 = extractvalue { i64, i1 } %cat.sum.len477, 0
  %ovf479 = extractvalue { i64, i1 } %cat.sum.len477, 1
  br i1 %ovf479, label %str_overflow_abort481, label %cat.sum.len480

str_overflow_abort475:                            ; preds = %choice.else363
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead476:                                    ; No predecessors!
  br label %cat.sum.len474

cat.sum.len480:                                   ; preds = %abort.dead482, %cat.sum.len474
  %concat.tot.len483 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum478, i64 1)
  %sum484 = extractvalue { i64, i1 } %concat.tot.len483, 0
  %ovf485 = extractvalue { i64, i1 } %concat.tot.len483, 1
  br i1 %ovf485, label %str_overflow_abort487, label %concat.tot.len486

str_overflow_abort481:                            ; preds = %cat.sum.len474
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead482:                                    ; No predecessors!
  br label %cat.sum.len480

concat.tot.len486:                                ; preds = %abort.dead488, %cat.sum.len480
  %arena.cur489 = call ptr @dva_arena_current()
  %concat.buf490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 %sum484)
  %cat.dst491 = getelementptr i8, ptr %concat.buf490, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst491, ptr align 1 %cat.lit.data463, i64 26, i1 false)
  %cat.dst492 = getelementptr i8, ptr %concat.buf490, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst492, ptr align 1 %cat.seg469, i64 %cat.seg467, i1 false)
  %cat.off493 = add i64 26, %cat.seg467
  %cat.dst494 = getelementptr i8, ptr %concat.buf490, i64 %cat.off493
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst494, ptr align 1 %cat.lit.data470, i64 1, i1 false)
  %concat.nul495 = getelementptr i8, ptr %concat.buf490, i64 %sum478
  store i8 0, ptr %concat.nul495, align 1
  %arena.cur496 = call ptr @dva_arena_current()
  %concat.str497 = call ptr @dva_arena_alloc(ptr %arena.cur496, i64 16)
  %str.build.len.gep498 = getelementptr inbounds { i64, ptr }, ptr %concat.str497, i32 0, i32 0
  store i64 %sum478, ptr %str.build.len.gep498, align 8
  %str.build.data.gep499 = getelementptr inbounds { i64, ptr }, ptr %concat.str497, i32 0, i32 1
  store ptr %concat.buf490, ptr %str.build.data.gep499, align 8
  call void @"log::error"(ptr %concat.str497)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit364

str_overflow_abort487:                            ; preds = %cat.sum.len480
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead488:                                    ; No predecessors!
  br label %concat.tot.len486

or.672.then:                                      ; preds = %loop.exit.671
  br label %or.672.exit

or.672.else:                                      ; preds = %loop.exit.671
  %var.load503 = load i64, ptr %"var.unformatted'", align 8
  %cmptmp504 = icmp sgt i64 %var.load503, 0
  br label %or.672.exit

or.672.exit:                                      ; preds = %or.672.else, %or.672.then
  %or.672.phi = phi i1 [ %var.load502, %or.672.then ], [ %cmptmp504, %or.672.else ]
  br i1 %or.672.phi, label %choice.then505, label %choice.else506

choice.then505:                                   ; preds = %or.672.exit
  br label %choice.exit507

choice.else506:                                   ; preds = %or.672.exit
  br label %choice.exit507

choice.exit507:                                   ; preds = %choice.else506, %choice.then505
  %choice.res508 = phi i64 [ 1, %choice.then505 ], [ 0, %choice.else506 ]
  br label %choice.exit332
}

declare { i64, ptr } @"sys::argv_string"(i64) #0

declare void @"log::error"(ptr) #0

declare i1 @"fs::exists"(ptr) #0

declare { i64, ptr } @"fs::read_to_string"(ptr) #0

declare i1 @"fs::write_file"(ptr, ptr) #0

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
