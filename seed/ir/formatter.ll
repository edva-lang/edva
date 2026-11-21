; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@sys_argc_global = external global i64
@clo.const = internal constant { ptr, ptr } { ptr @"formatter::is_space_or_tab", ptr null }
@"var.formatter::is_space_or_tab" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"formatter::is_id_byte", ptr null }
@"var.formatter::is_id_byte" = global ptr null
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
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
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
@clo.const.25 = internal constant { ptr, ptr } { ptr @"$anon_fn.121", ptr null }
@clo.const.26 = internal constant { ptr, ptr } { ptr @"formatter::read_stdin_all", ptr null }
@"var.formatter::read_stdin_all" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"formatter::write_stdout", ptr null }
@"var.formatter::write_stdout" = global ptr null
@str.74 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.74.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.74 }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"formatter::print_line", ptr null }
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
@clo.const.29 = internal constant { ptr, ptr } { ptr @"formatter::print_fmt_help", ptr null }
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
@clo.const.30 = internal constant { ptr, ptr } { ptr @"formatter::main", ptr null }
@"var.formatter::main" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_formatter, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #1 {
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
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #2

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

define internal void @__dva_global_init_formatter() #3 {
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
  store ptr @clo.const.26, ptr @"var.formatter::read_stdin_all", align 8
  store ptr @clo.const.27, ptr @"var.formatter::write_stdout", align 8
  store ptr @clo.const.28, ptr @"var.formatter::print_line", align 8
  store ptr @clo.const.29, ptr @"var.formatter::print_fmt_help", align 8
  store ptr @clo.const.30, ptr @"var.formatter::main", align 8
  ret void
}

declare i64 @read(i32, ptr, i64)

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

define i1 @"formatter::is_space_or_tab"(i64 %0) #3 {
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

define i1 @"formatter::is_id_byte"(i64 %0) #3 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %cmptmp = icmp sge i64 %var.load, 97
  br i1 %cmptmp, label %and.543.then, label %and.543.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %and.545.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.545.exit
  br label %choice.exit

and.543.then:                                     ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 122
  br label %and.543.exit

and.543.else:                                     ; preds = %entry
  br label %and.543.exit

and.543.exit:                                     ; preds = %and.543.else, %and.543.then
  %and.543.phi = phi i1 [ %cmptmp1, %and.543.then ], [ %cmptmp, %and.543.else ]
  %cmptmp2 = icmp sge i64 %var.load, 65
  br i1 %cmptmp2, label %and.544.then, label %and.544.else

and.544.then:                                     ; preds = %and.543.exit
  %cmptmp3 = icmp sle i64 %var.load, 90
  br label %and.544.exit

and.544.else:                                     ; preds = %and.543.exit
  br label %and.544.exit

and.544.exit:                                     ; preds = %and.544.else, %and.544.then
  %and.544.phi = phi i1 [ %cmptmp3, %and.544.then ], [ %cmptmp2, %and.544.else ]
  %case.or = or i1 %and.543.phi, %and.544.phi
  %cmptmp4 = icmp sge i64 %var.load, 48
  br i1 %cmptmp4, label %and.545.then, label %and.545.else

and.545.then:                                     ; preds = %and.544.exit
  %cmptmp5 = icmp sle i64 %var.load, 57
  br label %and.545.exit

and.545.else:                                     ; preds = %and.544.exit
  br label %and.545.exit

and.545.exit:                                     ; preds = %and.545.else, %and.545.then
  %and.545.phi = phi i1 [ %cmptmp5, %and.545.then ], [ %cmptmp4, %and.545.else ]
  %case.or6 = or i1 %case.or, %and.545.phi
  %val.match = icmp eq i64 %var.load, 95
  %case.or7 = or i1 %case.or6, %val.match
  br i1 %case.or7, label %choice.case, label %choice.next
}

define i64 @"formatter::scan_line_state"(ptr %0, i64 %1) #3 {
entry:
  %var.step = alloca i64, align 8
  %var.prev_b = alloca i64, align 8
  %var.c2 = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.546 = alloca i64, align 8
  %loop.idx.546 = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.init_state, align 8
  store i64 %var.load3, ptr %"var.st'", align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  store i64 0, ptr %loop.idx.546, align 8
  br label %loop.header.546

loop.header.546:                                  ; preds = %loop.latch.546, %entry
  %counter.load = load i64, ptr %loop.idx.546, align 8
  br label %loop.body.546

loop.body.546:                                    ; preds = %loop.header.546
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.546, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load4 = load i64, ptr %"var.i'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.546:                                ; No predecessors!
  br label %loop.exit.546

loop.latch.546:                                   ; preds = %choice.exit55
  %step.val = load i64, ptr %loop.step.546, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.546, align 8
  br label %loop.header.546

loop.exit.546:                                    ; preds = %choice.then, %loop.exit.nat.546
  %var.load248 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load248, label %choice.then249, label %choice.else250

choice.then:                                      ; preds = %loop.body.546
  br label %loop.exit.546

choice.exit:                                      ; preds = %loop.body.546
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
  br label %loop.latch.546

choice.case:                                      ; preds = %choice.exit37
  %var.load56 = load i64, ptr %var.c, align 8
  %cmptmp57 = icmp eq i64 %var.load56, 42
  br i1 %cmptmp57, label %and.547.then, label %and.547.else

choice.next:                                      ; preds = %choice.exit37
  %val.match69 = icmp eq i64 %var.load54, 2
  br i1 %val.match69, label %choice.case67, label %choice.next68

and.547.then:                                     ; preds = %choice.case
  %var.load58 = load i64, ptr %var.c1, align 8
  %cmptmp59 = icmp eq i64 %var.load58, 47
  br label %and.547.exit

and.547.else:                                     ; preds = %choice.case
  br label %and.547.exit

and.547.exit:                                     ; preds = %and.547.else, %and.547.then
  %and.547.phi = phi i1 [ %cmptmp59, %and.547.then ], [ %cmptmp57, %and.547.else ]
  br i1 %and.547.phi, label %choice.then60, label %choice.else61

choice.then60:                                    ; preds = %and.547.exit
  store i64 0, ptr %"var.st'", align 8
  %var.load63 = load i64, ptr %"var.i'", align 8
  %addtmp64 = add i64 %var.load63, 2
  store i64 %addtmp64, ptr %"var.i'", align 8
  br label %choice.exit62

choice.else61:                                    ; preds = %and.547.exit
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
  br i1 %cmptmp97, label %and.548.then, label %and.548.else

choice.exit93:                                    ; preds = %choice.exit104, %choice.then91
  br label %choice.exit55

and.548.then:                                     ; preds = %choice.else92
  %var.load98 = load i64, ptr %var.c1, align 8
  %cmptmp99 = icmp eq i64 %var.load98, 34
  br label %and.548.exit

and.548.else:                                     ; preds = %choice.else92
  br label %and.548.exit

and.548.exit:                                     ; preds = %and.548.else, %and.548.then
  %and.548.phi = phi i1 [ %cmptmp99, %and.548.then ], [ %cmptmp97, %and.548.else ]
  br i1 %and.548.phi, label %and.549.then, label %and.549.else

and.549.then:                                     ; preds = %and.548.exit
  %var.load100 = load i64, ptr %var.c2, align 8
  %cmptmp101 = icmp eq i64 %var.load100, 34
  br label %and.549.exit

and.549.else:                                     ; preds = %and.548.exit
  br label %and.549.exit

and.549.exit:                                     ; preds = %and.549.else, %and.549.then
  %and.549.phi = phi i1 [ %cmptmp101, %and.549.then ], [ %and.548.phi, %and.549.else ]
  br i1 %and.549.phi, label %choice.then102, label %choice.else103

choice.then102:                                   ; preds = %and.549.exit
  store i64 0, ptr %"var.st'", align 8
  %var.load105 = load i64, ptr %"var.i'", align 8
  %addtmp106 = add i64 %var.load105, 3
  store i64 %addtmp106, ptr %"var.i'", align 8
  br label %choice.exit104

choice.else103:                                   ; preds = %and.549.exit
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
  br i1 %cmptmp147, label %and.552.then, label %and.552.else

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
  br i1 %cmptmp125, label %and.550.then, label %and.550.else

choice.else122:                                   ; preds = %choice.else116
  %var.load137 = load i64, ptr %var.c, align 8
  %cmptmp138 = icmp eq i64 %var.load137, 34
  br i1 %cmptmp138, label %choice.then139, label %choice.else140

choice.exit123:                                   ; preds = %choice.exit141, %choice.exit132
  br label %choice.exit117

and.550.then:                                     ; preds = %choice.then121
  %var.load126 = load i64, ptr %var.c1, align 8
  %cmptmp127 = icmp eq i64 %var.load126, 34
  br label %and.550.exit

and.550.else:                                     ; preds = %choice.then121
  br label %and.550.exit

and.550.exit:                                     ; preds = %and.550.else, %and.550.then
  %and.550.phi = phi i1 [ %cmptmp127, %and.550.then ], [ %cmptmp125, %and.550.else ]
  br i1 %and.550.phi, label %and.551.then, label %and.551.else

and.551.then:                                     ; preds = %and.550.exit
  %var.load128 = load i64, ptr %var.c2, align 8
  %cmptmp129 = icmp eq i64 %var.load128, 34
  br label %and.551.exit

and.551.else:                                     ; preds = %and.550.exit
  br label %and.551.exit

and.551.exit:                                     ; preds = %and.551.else, %and.551.then
  %and.551.phi = phi i1 [ %cmptmp129, %and.551.then ], [ %and.550.phi, %and.551.else ]
  br i1 %and.551.phi, label %choice.then130, label %choice.else131

choice.then130:                                   ; preds = %and.551.exit
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load133 = load i64, ptr %"var.i'", align 8
  %addtmp134 = add i64 %var.load133, 3
  store i64 %addtmp134, ptr %"var.i'", align 8
  br label %choice.exit132

choice.else131:                                   ; preds = %and.551.exit
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

and.552.then:                                     ; preds = %choice.else111
  %var.load148 = load i64, ptr %var.c1, align 8
  %cmptmp149 = icmp eq i64 %var.load148, 47
  br label %and.552.exit

and.552.else:                                     ; preds = %choice.else111
  br label %and.552.exit

and.552.exit:                                     ; preds = %and.552.else, %and.552.then
  %and.552.phi = phi i1 [ %cmptmp149, %and.552.then ], [ %cmptmp147, %and.552.else ]
  br i1 %and.552.phi, label %choice.then150, label %choice.else151

choice.then150:                                   ; preds = %and.552.exit
  %var.load153 = load i64, ptr %var.n, align 8
  store i64 %var.load153, ptr %"var.i'", align 8
  br label %choice.exit152

choice.else151:                                   ; preds = %and.552.exit
  %var.load154 = load i64, ptr %var.c, align 8
  %cmptmp155 = icmp eq i64 %var.load154, 47
  br i1 %cmptmp155, label %and.553.then, label %and.553.else

choice.exit152:                                   ; preds = %choice.exit160, %choice.then150
  br label %choice.exit112

and.553.then:                                     ; preds = %choice.else151
  %var.load156 = load i64, ptr %var.c1, align 8
  %cmptmp157 = icmp eq i64 %var.load156, 42
  br label %and.553.exit

and.553.else:                                     ; preds = %choice.else151
  br label %and.553.exit

and.553.exit:                                     ; preds = %and.553.else, %and.553.then
  %and.553.phi = phi i1 [ %cmptmp157, %and.553.then ], [ %cmptmp155, %and.553.else ]
  br i1 %and.553.phi, label %choice.then158, label %choice.else159

choice.then158:                                   ; preds = %and.553.exit
  store i64 1, ptr %"var.st'", align 8
  %var.load161 = load i64, ptr %"var.i'", align 8
  %addtmp162 = add i64 %var.load161, 2
  store i64 %addtmp162, ptr %"var.i'", align 8
  br label %choice.exit160

choice.else159:                                   ; preds = %and.553.exit
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
  br i1 %cmptmp193, label %and.554.then, label %and.554.else

choice.exit191:                                   ; preds = %choice.exit200, %choice.then189
  %choice.res210 = phi i64 [ 1, %choice.then189 ], [ %choice.res209, %choice.exit200 ]
  store i64 %choice.res210, ptr %var.step, align 8
  %var.load211 = load i64, ptr %"var.i'", align 8
  %var.load212 = load i64, ptr %var.step, align 8
  %addtmp213 = add i64 %var.load211, %var.load212
  store i64 %addtmp213, ptr %"var.i'", align 8
  br label %choice.exit167

and.554.then:                                     ; preds = %choice.else190
  %var.load194 = load i64, ptr %"var.i'", align 8
  %addtmp195 = add i64 %var.load194, 2
  %var.load196 = load i64, ptr %var.n, align 8
  %cmptmp197 = icmp slt i64 %addtmp195, %var.load196
  br label %and.554.exit

and.554.else:                                     ; preds = %choice.else190
  br label %and.554.exit

and.554.exit:                                     ; preds = %and.554.else, %and.554.then
  %and.554.phi = phi i1 [ %cmptmp197, %and.554.then ], [ %cmptmp193, %and.554.else ]
  br i1 %and.554.phi, label %choice.then198, label %choice.else199

choice.then198:                                   ; preds = %and.554.exit
  br label %choice.exit200

choice.else199:                                   ; preds = %and.554.exit
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
  br i1 %cmptmp220, label %and.555.then, label %and.555.else

choice.else217:                                   ; preds = %choice.else166
  %var.load246 = load i64, ptr %"var.i'", align 8
  %addtmp247 = add i64 %var.load246, 1
  store i64 %addtmp247, ptr %"var.i'", align 8
  br label %choice.exit218

choice.exit218:                                   ; preds = %choice.else217, %choice.exit225
  br label %choice.exit167

and.555.then:                                     ; preds = %choice.then216
  %var.load221 = load i64, ptr %var.c2, align 8
  %cmptmp222 = icmp eq i64 %var.load221, 34
  br label %and.555.exit

and.555.else:                                     ; preds = %choice.then216
  br label %and.555.exit

and.555.exit:                                     ; preds = %and.555.else, %and.555.then
  %and.555.phi = phi i1 [ %cmptmp222, %and.555.then ], [ %cmptmp220, %and.555.else ]
  br i1 %and.555.phi, label %choice.then223, label %choice.else224

choice.then223:                                   ; preds = %and.555.exit
  %var.load226 = load i64, ptr %"var.i'", align 8
  %addtmp227 = add i64 %var.load226, 3
  %var.load228 = load i64, ptr %var.n, align 8
  %cmptmp229 = icmp eq i64 %addtmp227, %var.load228
  br i1 %cmptmp229, label %choice.then230, label %choice.else231

choice.else224:                                   ; preds = %and.555.exit
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

choice.then249:                                   ; preds = %loop.exit.546
  %var.load252 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load252, label %choice.then253, label %choice.else254

choice.else250:                                   ; preds = %loop.exit.546
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define { i64, ptr } @"formatter::strip_cr_and_trailing_ws"(ptr %0) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %var.c = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.556 = alloca i64, align 8
  %loop.idx.556 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  store i64 %str.len.query2, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.556, align 8
  br label %loop.header.556

loop.header.556:                                  ; preds = %loop.latch.556, %entry
  %counter.load = load i64, ptr %loop.idx.556, align 8
  br label %loop.body.556

loop.body.556:                                    ; preds = %loop.header.556
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.556, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load3 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sle i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.556:                                ; No predecessors!
  br label %loop.exit.556

loop.latch.556:                                   ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.556, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.556, align 8
  br label %loop.header.556

loop.exit.556:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.556
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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

choice.then:                                      ; preds = %loop.body.556
  br label %loop.exit.556

choice.exit:                                      ; preds = %loop.body.556
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
  br label %loop.exit.556

choice.exit15:                                    ; preds = %choice.then14
  br label %loop.latch.556
}

define { i64, ptr } @"formatter::strip_cr_only"(ptr %0) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.557.then, label %and.557.else

and.557.then:                                     ; preds = %entry
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
  %subtmp = sub i64 %str.len.query10, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.557.else:                                     ; preds = %entry
  br label %and.557.exit

and.557.exit:                                     ; preds = %and.557.else, %idx_ok
  %and.557.phi = phi i1 [ %cmptmp11, %idx_ok ], [ %cmptmp, %and.557.else ]
  br i1 %and.557.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.557.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp11 = icmp eq i64 %s.byte.val, 13
  br label %and.557.exit

idx_oob:                                          ; preds = %and.557.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.557.exit
  %var.load12 = load ptr, ptr %var.s, align 8
  %s.read.len13 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len13, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data16 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data16, align 8
  %var.load18 = load ptr, ptr %var.s, align 8
  %str.len.query19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %str.len.query20 = load i64, ptr %str.len.query19, align 8
  %str.len.query21 = and i64 %str.len.query20, 281474976710655
  %subtmp22 = sub i64 %str.len.query21, 1
  %rel.start = add i64 %s.read.len15, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len15
  %final.start = select i1 %start.gt.len, i64 %s.read.len15, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp22, 0
  %rel.end = add i64 %s.read.len15, %subtmp22
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp22
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len15
  %final.end = select i1 %end.gt.len, i64 %s.read.len15, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data17, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.557.exit
  %var.load23 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %str.view, %choice.then ], [ %var.load23, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define ptr @"formatter::split_source_lines"(ptr %0) #3 {
entry:
  %var.next_st = alloca i64, align 8
  %var.is_comm = alloca i1, align 1
  %var.is_blank = alloca i1, align 1
  %var.eff_indent = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._i67 = alloca i64, align 8
  %var._66 = alloca i64, align 8
  %loop.step.563 = alloca i64, align 8
  %loop.idx.563 = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %"var.tabs'" = alloca i64, align 8
  %"var.sp'" = alloca i64, align 8
  %var.cleaned = alloca ptr, align 8
  %var.raw_slice = alloca ptr, align 8
  %var._i10 = alloca i64, align 8
  %var._9 = alloca i64, align 8
  %loop.step.560 = alloca i64, align 8
  %loop.idx.560 = alloca i64, align 8
  %var.line_start = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.559 = alloca i64, align 8
  %loop.idx.559 = alloca i64, align 8
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
  store i64 %str.len.query3, ptr %var.n, align 8
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %"var.st'", align 8
  store i64 0, ptr %loop.idx.559, align 8
  br label %loop.header.559

loop.header.559:                                  ; preds = %loop.latch.559, %entry
  %counter.load = load i64, ptr %loop.idx.559, align 8
  br label %loop.body.559

loop.body.559:                                    ; preds = %loop.header.559
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.559, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load4 = load i64, ptr %"var.pos'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.559:                                ; No predecessors!
  br label %loop.exit.559

loop.latch.559:                                   ; preds = %a.store
  %step.val208 = load i64, ptr %loop.step.559, align 8
  %loop.next209 = add i64 %counter.load, %step.val208
  store i64 %loop.next209, ptr %loop.idx.559, align 8
  br label %loop.header.559

loop.exit.559:                                    ; preds = %choice.then, %loop.exit.nat.559
  %var.load210 = load ptr, ptr %var.res, align 8
  %a.load211 = load ptr, ptr %var.res, align 8
  %a.null212 = icmp eq ptr %a.load211, null
  br i1 %a.null212, label %a.create213, label %a.after214

choice.then:                                      ; preds = %loop.body.559
  br label %loop.exit.559

choice.exit:                                      ; preds = %loop.body.559
  %var.load6 = load i64, ptr %"var.pos'", align 8
  store i64 %var.load6, ptr %var.line_start, align 8
  store i64 0, ptr %loop.idx.560, align 8
  br label %loop.header.560

loop.header.560:                                  ; preds = %loop.latch.560, %choice.exit
  %counter.load7 = load i64, ptr %loop.idx.560, align 8
  br label %loop.body.560

loop.body.560:                                    ; preds = %loop.header.560
  %loop.rel.i8 = sub i64 %counter.load7, 0
  store i64 1, ptr %loop.step.560, align 8
  store i64 %counter.load7, ptr %var._9, align 8
  store i64 %loop.rel.i8, ptr %var._i10, align 8
  %var.load11 = load i64, ptr %"var.pos'", align 8
  %var.load12 = load i64, ptr %var.n, align 8
  %cmptmp13 = icmp sge i64 %var.load11, %var.load12
  br i1 %cmptmp13, label %or.561.then, label %or.561.else

loop.exit.nat.560:                                ; No predecessors!
  br label %loop.exit.560

loop.latch.560:                                   ; preds = %choice.exit21
  %step.val = load i64, ptr %loop.step.560, align 8
  %loop.next = add i64 %counter.load7, %step.val
  store i64 %loop.next, ptr %loop.idx.560, align 8
  br label %loop.header.560

loop.exit.560:                                    ; preds = %choice.then20, %loop.exit.nat.560
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
  br i1 %cmptmp34, label %and.562.then, label %and.562.else

or.561.then:                                      ; preds = %loop.body.560
  br label %or.561.exit

or.561.else:                                      ; preds = %loop.body.560
  %var.load14 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %"var.pos'", align 8
  %idx.oob = icmp uge i64 %var.load18, %s.read.len16
  br i1 %idx.oob, label %idx_oob, label %idx_ok

or.561.exit:                                      ; preds = %idx_ok, %or.561.then
  %or.561.phi = phi i1 [ %cmptmp13, %or.561.then ], [ %cmptmp19, %idx_ok ]
  br i1 %or.561.phi, label %choice.then20, label %choice.exit21

idx_ok:                                           ; preds = %abort.dead, %or.561.else
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp eq i64 %s.byte.val, 10
  br label %or.561.exit

idx_oob:                                          ; preds = %or.561.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then20:                                    ; preds = %or.561.exit
  br label %loop.exit.560

choice.exit21:                                    ; preds = %or.561.exit
  %var.load22 = load i64, ptr %"var.pos'", align 8
  %addtmp = add i64 %var.load22, 1
  store i64 %addtmp, ptr %"var.pos'", align 8
  br label %loop.latch.560

and.562.then:                                     ; preds = %loop.exit.560
  %var.load35 = load ptr, ptr %var.src, align 8
  %s.read.len36 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %s.read.len37 = load i64, ptr %s.read.len36, align 8
  %s.read.len38 = and i64 %s.read.len37, 281474976710655
  %s.read.data39 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data39, align 8
  %var.load41 = load i64, ptr %"var.pos'", align 8
  %idx.oob42 = icmp uge i64 %var.load41, %s.read.len38
  br i1 %idx.oob42, label %idx_oob44, label %idx_ok43

and.562.else:                                     ; preds = %loop.exit.560
  br label %and.562.exit

and.562.exit:                                     ; preds = %and.562.else, %idx_ok43
  %and.562.phi = phi i1 [ %cmptmp49, %idx_ok43 ], [ %cmptmp34, %and.562.else ]
  br i1 %and.562.phi, label %choice.then50, label %choice.exit51

idx_ok43:                                         ; preds = %abort.dead45, %and.562.then
  %s.byte.gep46 = getelementptr i8, ptr %s.read.data40, i64 %var.load41
  %s.byte47 = load i8, ptr %s.byte.gep46, align 1
  %s.byte.val48 = zext i8 %s.byte47 to i64
  %cmptmp49 = icmp eq i64 %s.byte.val48, 10
  br label %and.562.exit

idx_oob44:                                        ; preds = %and.562.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %idx_ok43

choice.then50:                                    ; preds = %and.562.exit
  %var.load52 = load i64, ptr %"var.pos'", align 8
  %addtmp53 = add i64 %var.load52, 1
  store i64 %addtmp53, ptr %"var.pos'", align 8
  br label %choice.exit51

choice.exit51:                                    ; preds = %choice.then50, %and.562.exit
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
  store i64 0, ptr %loop.idx.563, align 8
  br label %loop.header.563

loop.header.563:                                  ; preds = %loop.latch.563, %choice.exit57
  %counter.load64 = load i64, ptr %loop.idx.563, align 8
  br label %loop.body.563

loop.body.563:                                    ; preds = %loop.header.563
  %loop.rel.i65 = sub i64 %counter.load64, 0
  store i64 1, ptr %loop.step.563, align 8
  store i64 %counter.load64, ptr %var._66, align 8
  store i64 %loop.rel.i65, ptr %var._i67, align 8
  %var.load68 = load i64, ptr %"var.idx'", align 8
  %var.load69 = load ptr, ptr %var.cleaned, align 8
  %str.len.query70 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 0
  %str.len.query71 = load i64, ptr %str.len.query70, align 8
  %str.len.query72 = and i64 %str.len.query71, 281474976710655
  %cmptmp73 = icmp sge i64 %var.load68, %str.len.query72
  br i1 %cmptmp73, label %choice.then74, label %choice.exit75

loop.exit.nat.563:                                ; No predecessors!
  br label %loop.exit.563

loop.latch.563:                                   ; preds = %choice.exit94
  %step.val108 = load i64, ptr %loop.step.563, align 8
  %loop.next109 = add i64 %counter.load64, %step.val108
  store i64 %loop.next109, ptr %loop.idx.563, align 8
  br label %loop.header.563

loop.exit.563:                                    ; preds = %choice.else102, %choice.then74, %loop.exit.nat.563
  %var.load110 = load i64, ptr %"var.sp'", align 8
  %var.load111 = load i64, ptr %"var.tabs'", align 8
  %multmp = mul i64 %var.load111, 3
  %addtmp112 = add i64 %var.load110, %multmp
  store i64 %addtmp112, ptr %var.eff_indent, align 8
  %var.load113 = load i64, ptr %"var.st'", align 8
  %cmptmp114 = icmp eq i64 %var.load113, 0
  br i1 %cmptmp114, label %and.564.then, label %and.564.else

choice.then74:                                    ; preds = %loop.body.563
  br label %loop.exit.563

choice.exit75:                                    ; preds = %loop.body.563
  %var.load76 = load ptr, ptr %var.cleaned, align 8
  %s.read.len77 = getelementptr inbounds { i64, ptr }, ptr %var.load76, i32 0, i32 0
  %s.read.len78 = load i64, ptr %s.read.len77, align 8
  %s.read.len79 = and i64 %s.read.len78, 281474976710655
  %s.read.data80 = getelementptr inbounds { i64, ptr }, ptr %var.load76, i32 0, i32 1
  %s.read.data81 = load ptr, ptr %s.read.data80, align 8
  %var.load82 = load i64, ptr %"var.idx'", align 8
  %idx.oob83 = icmp uge i64 %var.load82, %s.read.len79
  br i1 %idx.oob83, label %idx_oob85, label %idx_ok84

idx_ok84:                                         ; preds = %abort.dead86, %choice.exit75
  %s.byte.gep87 = getelementptr i8, ptr %s.read.data81, i64 %var.load82
  %s.byte88 = load i8, ptr %s.byte.gep87, align 1
  %s.byte.val89 = zext i8 %s.byte88 to i64
  store i64 %s.byte.val89, ptr %var.c, align 8
  %var.load90 = load i64, ptr %var.c, align 8
  %cmptmp91 = icmp eq i64 %var.load90, 32
  br i1 %cmptmp91, label %choice.then92, label %choice.else93

idx_oob85:                                        ; preds = %choice.exit75
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead86:                                     ; No predecessors!
  br label %idx_ok84

choice.then92:                                    ; preds = %idx_ok84
  %var.load95 = load i64, ptr %"var.sp'", align 8
  %addtmp96 = add i64 %var.load95, 1
  store i64 %addtmp96, ptr %"var.sp'", align 8
  %var.load97 = load i64, ptr %"var.idx'", align 8
  %addtmp98 = add i64 %var.load97, 1
  store i64 %addtmp98, ptr %"var.idx'", align 8
  br label %choice.exit94

choice.else93:                                    ; preds = %idx_ok84
  %var.load99 = load i64, ptr %var.c, align 8
  %cmptmp100 = icmp eq i64 %var.load99, 9
  br i1 %cmptmp100, label %choice.then101, label %choice.else102

choice.exit94:                                    ; preds = %choice.exit103, %choice.then92
  br label %loop.latch.563

choice.then101:                                   ; preds = %choice.else93
  %var.load104 = load i64, ptr %"var.tabs'", align 8
  %addtmp105 = add i64 %var.load104, 1
  store i64 %addtmp105, ptr %"var.tabs'", align 8
  %var.load106 = load i64, ptr %"var.idx'", align 8
  %addtmp107 = add i64 %var.load106, 1
  store i64 %addtmp107, ptr %"var.idx'", align 8
  br label %choice.exit103

choice.else102:                                   ; preds = %choice.else93
  br label %loop.exit.563

choice.exit103:                                   ; preds = %choice.then101
  br label %choice.exit94

and.564.then:                                     ; preds = %loop.exit.563
  %var.load115 = load i64, ptr %"var.idx'", align 8
  %var.load116 = load ptr, ptr %var.cleaned, align 8
  %str.len.query117 = getelementptr inbounds { i64, ptr }, ptr %var.load116, i32 0, i32 0
  %str.len.query118 = load i64, ptr %str.len.query117, align 8
  %str.len.query119 = and i64 %str.len.query118, 281474976710655
  %cmptmp120 = icmp eq i64 %var.load115, %str.len.query119
  br label %and.564.exit

and.564.else:                                     ; preds = %loop.exit.563
  br label %and.564.exit

and.564.exit:                                     ; preds = %and.564.else, %and.564.then
  %and.564.phi = phi i1 [ %cmptmp120, %and.564.then ], [ %cmptmp114, %and.564.else ]
  store i1 %and.564.phi, ptr %var.is_blank, align 1
  %var.load121 = load i64, ptr %"var.st'", align 8
  %cmptmp122 = icmp eq i64 %var.load121, 0
  br i1 %cmptmp122, label %and.565.then, label %and.565.else

and.565.then:                                     ; preds = %and.564.exit
  %var.load123 = load i1, ptr %var.is_blank, align 1
  %nottmp = xor i1 %var.load123, true
  br label %and.565.exit

and.565.else:                                     ; preds = %and.564.exit
  br label %and.565.exit

and.565.exit:                                     ; preds = %and.565.else, %and.565.then
  %and.565.phi = phi i1 [ %nottmp, %and.565.then ], [ %cmptmp122, %and.565.else ]
  br i1 %and.565.phi, label %and.566.then, label %and.566.else

and.566.then:                                     ; preds = %and.565.exit
  %var.load124 = load i64, ptr %"var.idx'", align 8
  %addtmp125 = add i64 %var.load124, 1
  %var.load126 = load ptr, ptr %var.cleaned, align 8
  %str.len.query127 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 0
  %str.len.query128 = load i64, ptr %str.len.query127, align 8
  %str.len.query129 = and i64 %str.len.query128, 281474976710655
  %cmptmp130 = icmp slt i64 %addtmp125, %str.len.query129
  br label %and.566.exit

and.566.else:                                     ; preds = %and.565.exit
  br label %and.566.exit

and.566.exit:                                     ; preds = %and.566.else, %and.566.then
  %and.566.phi = phi i1 [ %cmptmp130, %and.566.then ], [ %and.565.phi, %and.566.else ]
  br i1 %and.566.phi, label %and.567.then, label %and.567.else

and.567.then:                                     ; preds = %and.566.exit
  %var.load131 = load ptr, ptr %var.cleaned, align 8
  %s.read.len132 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 0
  %s.read.len133 = load i64, ptr %s.read.len132, align 8
  %s.read.len134 = and i64 %s.read.len133, 281474976710655
  %s.read.data135 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 1
  %s.read.data136 = load ptr, ptr %s.read.data135, align 8
  %var.load137 = load i64, ptr %"var.idx'", align 8
  %idx.oob138 = icmp uge i64 %var.load137, %s.read.len134
  br i1 %idx.oob138, label %idx_oob140, label %idx_ok139

and.567.else:                                     ; preds = %and.566.exit
  br label %and.567.exit

and.567.exit:                                     ; preds = %and.567.else, %idx_ok139
  %and.567.phi = phi i1 [ %cmptmp145, %idx_ok139 ], [ %and.566.phi, %and.567.else ]
  br i1 %and.567.phi, label %and.568.then, label %and.568.else

idx_ok139:                                        ; preds = %abort.dead141, %and.567.then
  %s.byte.gep142 = getelementptr i8, ptr %s.read.data136, i64 %var.load137
  %s.byte143 = load i8, ptr %s.byte.gep142, align 1
  %s.byte.val144 = zext i8 %s.byte143 to i64
  %cmptmp145 = icmp eq i64 %s.byte.val144, 47
  br label %and.567.exit

idx_oob140:                                       ; preds = %and.567.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead141:                                    ; No predecessors!
  br label %idx_ok139

and.568.then:                                     ; preds = %and.567.exit
  %var.load146 = load ptr, ptr %var.cleaned, align 8
  %s.read.len147 = getelementptr inbounds { i64, ptr }, ptr %var.load146, i32 0, i32 0
  %s.read.len148 = load i64, ptr %s.read.len147, align 8
  %s.read.len149 = and i64 %s.read.len148, 281474976710655
  %s.read.data150 = getelementptr inbounds { i64, ptr }, ptr %var.load146, i32 0, i32 1
  %s.read.data151 = load ptr, ptr %s.read.data150, align 8
  %var.load152 = load i64, ptr %"var.idx'", align 8
  %addtmp153 = add i64 %var.load152, 1
  %idx.oob154 = icmp uge i64 %addtmp153, %s.read.len149
  br i1 %idx.oob154, label %idx_oob156, label %idx_ok155

and.568.else:                                     ; preds = %and.567.exit
  br label %and.568.exit

and.568.exit:                                     ; preds = %and.568.else, %or.569.exit
  %and.568.phi = phi i1 [ %or.569.phi, %or.569.exit ], [ %and.567.phi, %and.568.else ]
  store i1 %and.568.phi, ptr %var.is_comm, align 1
  %var.load178 = load ptr, ptr %var.cleaned, align 8
  %var.load179 = load i64, ptr %"var.st'", align 8
  %call.res180 = call i64 @"formatter::scan_line_state"(ptr %var.load178, i64 %var.load179)
  store i64 %call.res180, ptr %var.next_st, align 8
  %var.load181 = load ptr, ptr %var.cleaned, align 8
  %var.load182 = load i64, ptr %"var.st'", align 8
  %var.load183 = load i64, ptr %var.next_st, align 8
  %var.load184 = load i64, ptr %var.eff_indent, align 8
  %var.load185 = load i64, ptr %"var.tabs'", align 8
  %cmptmp186 = icmp sgt i64 %var.load185, 0
  %var.load187 = load i1, ptr %var.is_blank, align 1
  %var.load188 = load i1, ptr %var.is_comm, align 1
  %arena.cur189 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load181, ptr %rec.fld, align 8
  %rec.fld190 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load182, ptr %rec.fld190, align 8
  %rec.fld191 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load183, ptr %rec.fld191, align 8
  %rec.fld192 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load184, ptr %rec.fld192, align 8
  %rec.fld193 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i1 %cmptmp186, ptr %rec.fld193, align 1
  %rec.fld194 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load187, ptr %rec.fld194, align 1
  %rec.fld195 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 %var.load188, ptr %rec.fld195, align 1
  %a.load = load ptr, ptr %var.res, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

idx_ok155:                                        ; preds = %abort.dead157, %and.568.then
  %s.byte.gep158 = getelementptr i8, ptr %s.read.data151, i64 %addtmp153
  %s.byte159 = load i8, ptr %s.byte.gep158, align 1
  %s.byte.val160 = zext i8 %s.byte159 to i64
  %cmptmp161 = icmp eq i64 %s.byte.val160, 47
  br i1 %cmptmp161, label %or.569.then, label %or.569.else

idx_oob156:                                       ; preds = %and.568.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead157:                                    ; No predecessors!
  br label %idx_ok155

or.569.then:                                      ; preds = %idx_ok155
  br label %or.569.exit

or.569.else:                                      ; preds = %idx_ok155
  %var.load162 = load ptr, ptr %var.cleaned, align 8
  %s.read.len163 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 0
  %s.read.len164 = load i64, ptr %s.read.len163, align 8
  %s.read.len165 = and i64 %s.read.len164, 281474976710655
  %s.read.data166 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 1
  %s.read.data167 = load ptr, ptr %s.read.data166, align 8
  %var.load168 = load i64, ptr %"var.idx'", align 8
  %addtmp169 = add i64 %var.load168, 1
  %idx.oob170 = icmp uge i64 %addtmp169, %s.read.len165
  br i1 %idx.oob170, label %idx_oob172, label %idx_ok171

or.569.exit:                                      ; preds = %idx_ok171, %or.569.then
  %or.569.phi = phi i1 [ %cmptmp161, %or.569.then ], [ %cmptmp177, %idx_ok171 ]
  br label %and.568.exit

idx_ok171:                                        ; preds = %abort.dead173, %or.569.else
  %s.byte.gep174 = getelementptr i8, ptr %s.read.data167, i64 %addtmp169
  %s.byte175 = load i8, ptr %s.byte.gep174, align 1
  %s.byte.val176 = zext i8 %s.byte175 to i64
  %cmptmp177 = icmp eq i64 %s.byte.val176, 42
  br label %or.569.exit

idx_oob172:                                       ; preds = %or.569.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead173:                                    ; No predecessors!
  br label %idx_ok171

a.create:                                         ; preds = %and.568.exit
  %arena.cur196 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 24)
  %arena.cur198 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 128)
  %a.len.gep200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create197, i32 0, i32 0
  store i64 0, ptr %a.len.gep200, align 8
  %a.data.gep201 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create197, i32 0, i32 1
  store ptr %a.buf199, ptr %a.data.gep201, align 8
  %a.cap.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create197, i32 0, i32 2
  store i64 16, ptr %a.cap.gep202, align 8
  store ptr %a.create197, ptr %var.res, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.568.exit
  %a.load2 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len203 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap204 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len203, %a.cap204
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data205 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len206 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data205, i64 %a.cur.len206
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len206, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load207 = load i64, ptr %var.next_st, align 8
  store i64 %var.load207, ptr %"var.st'", align 8
  br label %loop.latch.559

a.create213:                                      ; preds = %loop.exit.559
  %arena.cur215 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 24)
  %arena.cur217 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf218 = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 128)
  %a.len.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create216, i32 0, i32 0
  store i64 0, ptr %a.len.gep219, align 8
  %a.data.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create216, i32 0, i32 1
  store ptr %a.buf218, ptr %a.data.gep220, align 8
  %a.cap.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create216, i32 0, i32 2
  store i64 16, ptr %a.cap.gep221, align 8
  store ptr %a.create216, ptr %var.res, align 8
  br label %a.after214

a.after214:                                       ; preds = %a.create213, %loop.exit.559
  %a.load2222 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2222
}

define internal void @dva_array_grow(ptr %0) #3 {
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
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define { i64, ptr } @"formatter::format_code_body"(ptr %0) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.is_annot_colon = alloca i1, align 1
  %var.prev_c = alloca i64, align 8
  %var.need_sp = alloca i1, align 1
  %var.prev_b = alloca i64, align 8
  %var.c2 = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.583 = alloca i64, align 8
  %loop.idx.583 = alloca i64, align 8
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
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.n = alloca i64, align 8
  %var.body = alloca ptr, align 8
  store ptr %0, ptr %var.body, align 8
  %var.load = load ptr, ptr %var.body, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  %addtmp = add i64 %var.load3, 16
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

b.buf.len4:                                       ; preds = %abort.dead, %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  store i64 0, ptr %"var.i'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %var.load5, 1
  br i1 %cmptmp, label %and.570.then, label %and.570.else

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len4

and.570.then:                                     ; preds = %b.buf.len4
  %var.load6 = load ptr, ptr %var.body, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.570.else:                                     ; preds = %b.buf.len4
  br label %and.570.exit

and.570.exit:                                     ; preds = %and.570.else, %idx_ok
  %and.570.phi = phi i1 [ %cmptmp11, %idx_ok ], [ %cmptmp, %and.570.else ]
  br i1 %and.570.phi, label %and.571.then, label %and.571.else

idx_ok:                                           ; preds = %abort.dead10, %and.570.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp11 = icmp eq i64 %s.byte.val, 124
  br label %and.570.exit

idx_oob:                                          ; preds = %and.570.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %idx_ok

and.571.then:                                     ; preds = %and.570.exit
  %var.load12 = load ptr, ptr %var.body, align 8
  %s.read.len13 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len13, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data16 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data16, align 8
  %idx.oob18 = icmp uge i64 1, %s.read.len15
  br i1 %idx.oob18, label %idx_oob20, label %idx_ok19

and.571.else:                                     ; preds = %and.570.exit
  br label %and.571.exit

and.571.exit:                                     ; preds = %and.571.else, %idx_ok19
  %and.571.phi = phi i1 [ %cmptmp25, %idx_ok19 ], [ %and.570.phi, %and.571.else ]
  br i1 %and.571.phi, label %and.572.then, label %and.572.else

idx_ok19:                                         ; preds = %abort.dead21, %and.571.then
  %s.byte.gep22 = getelementptr i8, ptr %s.read.data17, i64 1
  %s.byte23 = load i8, ptr %s.byte.gep22, align 1
  %s.byte.val24 = zext i8 %s.byte23 to i64
  %cmptmp25 = icmp ne i64 %s.byte.val24, 124
  br label %and.571.exit

idx_oob20:                                        ; preds = %and.571.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %idx_ok19

and.572.then:                                     ; preds = %and.571.exit
  %var.load26 = load ptr, ptr %var.body, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load26, ptr @str.0.struct)
  %nottmp = xor i1 %call.res, true
  br label %and.572.exit

and.572.else:                                     ; preds = %and.571.exit
  br label %and.572.exit

and.572.exit:                                     ; preds = %and.572.else, %and.572.then
  %and.572.phi = phi i1 [ %nottmp, %and.572.then ], [ %and.571.phi, %and.572.else ]
  br i1 %and.572.phi, label %and.574.then, label %and.574.else

and.574.then:                                     ; preds = %and.572.exit
  %var.load27 = load ptr, ptr %var.body, align 8
  %call.res28 = call i1 @"formatter::starts_with_str"(ptr %var.load27, ptr @str.1.struct)
  %nottmp29 = xor i1 %call.res28, true
  br label %and.574.exit

and.574.else:                                     ; preds = %and.572.exit
  br label %and.574.exit

and.574.exit:                                     ; preds = %and.574.else, %and.574.then
  %and.574.phi = phi i1 [ %nottmp29, %and.574.then ], [ %and.572.phi, %and.574.else ]
  br i1 %and.574.phi, label %and.575.then, label %and.575.else

and.575.then:                                     ; preds = %and.574.exit
  %var.load30 = load ptr, ptr %var.body, align 8
  %call.res31 = call i1 @"formatter::starts_with_str"(ptr %var.load30, ptr @str.2.struct)
  %nottmp32 = xor i1 %call.res31, true
  br label %and.575.exit

and.575.else:                                     ; preds = %and.574.exit
  br label %and.575.exit

and.575.exit:                                     ; preds = %and.575.else, %and.575.then
  %and.575.phi = phi i1 [ %nottmp32, %and.575.then ], [ %and.574.phi, %and.575.else ]
  br i1 %and.575.phi, label %and.576.then, label %and.576.else

and.576.then:                                     ; preds = %and.575.exit
  %var.load33 = load ptr, ptr %var.body, align 8
  %call.res34 = call i1 @"formatter::starts_with_str"(ptr %var.load33, ptr @str.3.struct)
  %nottmp35 = xor i1 %call.res34, true
  br label %and.576.exit

and.576.else:                                     ; preds = %and.575.exit
  br label %and.576.exit

and.576.exit:                                     ; preds = %and.576.else, %and.576.then
  %and.576.phi = phi i1 [ %nottmp35, %and.576.then ], [ %and.575.phi, %and.576.else ]
  br i1 %and.576.phi, label %and.577.then, label %and.577.else

and.577.then:                                     ; preds = %and.576.exit
  %var.load36 = load ptr, ptr %var.body, align 8
  %call.res37 = call i1 @"formatter::starts_with_str"(ptr %var.load36, ptr @str.4.struct)
  %nottmp38 = xor i1 %call.res37, true
  br label %and.577.exit

and.577.else:                                     ; preds = %and.576.exit
  br label %and.577.exit

and.577.exit:                                     ; preds = %and.577.else, %and.577.then
  %and.577.phi = phi i1 [ %nottmp38, %and.577.then ], [ %and.576.phi, %and.577.else ]
  br i1 %and.577.phi, label %and.578.then, label %and.578.else

and.578.then:                                     ; preds = %and.577.exit
  %var.load39 = load ptr, ptr %var.body, align 8
  %s.read.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %s.read.len41 = load i64, ptr %s.read.len40, align 8
  %s.read.len42 = and i64 %s.read.len41, 281474976710655
  %s.read.data43 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %s.read.data44 = load ptr, ptr %s.read.data43, align 8
  %idx.oob45 = icmp uge i64 1, %s.read.len42
  br i1 %idx.oob45, label %idx_oob47, label %idx_ok46

and.578.else:                                     ; preds = %and.577.exit
  br label %and.578.exit

and.578.exit:                                     ; preds = %and.578.else, %choice.exit
  %and.578.phi = phi i1 [ %nottmp53, %choice.exit ], [ %and.577.phi, %and.578.else ]
  store i1 %and.578.phi, ptr %var.has_lead_pipe, align 1
  %var.load54 = load i64, ptr %var.n, align 8
  %cmptmp55 = icmp sgt i64 %var.load54, 2
  br i1 %cmptmp55, label %and.579.then, label %and.579.else

idx_ok46:                                         ; preds = %abort.dead48, %and.578.then
  %s.byte.gep49 = getelementptr i8, ptr %s.read.data44, i64 1
  %s.byte50 = load i8, ptr %s.byte.gep49, align 1
  %s.byte.val51 = zext i8 %s.byte50 to i64
  %val.match = icmp eq i64 %s.byte.val51, 32
  %val.match52 = icmp eq i64 %s.byte.val51, 9
  %case.or = or i1 %val.match, %val.match52
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob47:                                        ; preds = %and.578.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %idx_ok46

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp53 = xor i1 %choice.res, true
  br label %and.578.exit

choice.case:                                      ; preds = %idx_ok46
  br label %choice.exit

choice.next:                                      ; preds = %idx_ok46
  br label %choice.exit

and.579.then:                                     ; preds = %and.578.exit
  %var.load56 = load ptr, ptr %var.body, align 8
  %call.res57 = call i1 @"formatter::starts_with_str"(ptr %var.load56, ptr @str.5.struct)
  br label %and.579.exit

and.579.else:                                     ; preds = %and.578.exit
  br label %and.579.exit

and.579.exit:                                     ; preds = %and.579.else, %and.579.then
  %and.579.phi = phi i1 [ %call.res57, %and.579.then ], [ %cmptmp55, %and.579.else ]
  br i1 %and.579.phi, label %and.580.then, label %and.580.else

and.580.then:                                     ; preds = %and.579.exit
  %var.load58 = load ptr, ptr %var.body, align 8
  %s.read.len59 = getelementptr inbounds { i64, ptr }, ptr %var.load58, i32 0, i32 0
  %s.read.len60 = load i64, ptr %s.read.len59, align 8
  %s.read.len61 = and i64 %s.read.len60, 281474976710655
  %s.read.data62 = getelementptr inbounds { i64, ptr }, ptr %var.load58, i32 0, i32 1
  %s.read.data63 = load ptr, ptr %s.read.data62, align 8
  %idx.oob64 = icmp uge i64 2, %s.read.len61
  br i1 %idx.oob64, label %idx_oob66, label %idx_ok65

and.580.else:                                     ; preds = %and.579.exit
  br label %and.580.exit

and.580.exit:                                     ; preds = %and.580.else, %choice.exit71
  %and.580.phi = phi i1 [ %nottmp78, %choice.exit71 ], [ %and.579.phi, %and.580.else ]
  store i1 %and.580.phi, ptr %var.has_lead_neg_pipe, align 1
  %var.load79 = load i1, ptr %var.has_lead_pipe, align 1
  br i1 %var.load79, label %choice.then, label %choice.else

idx_ok65:                                         ; preds = %abort.dead67, %and.580.then
  %s.byte.gep68 = getelementptr i8, ptr %s.read.data63, i64 2
  %s.byte69 = load i8, ptr %s.byte.gep68, align 1
  %s.byte.val70 = zext i8 %s.byte69 to i64
  %val.match74 = icmp eq i64 %s.byte.val70, 32
  %val.match75 = icmp eq i64 %s.byte.val70, 9
  %case.or76 = or i1 %val.match74, %val.match75
  br i1 %case.or76, label %choice.case72, label %choice.next73

idx_oob66:                                        ; preds = %and.580.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %idx_ok65

choice.exit71:                                    ; preds = %choice.next73, %choice.case72
  %choice.res77 = phi i1 [ true, %choice.case72 ], [ false, %choice.next73 ]
  %nottmp78 = xor i1 %choice.res77, true
  br label %and.580.exit

choice.case72:                                    ; preds = %idx_ok65
  br label %choice.exit71

choice.next73:                                    ; preds = %idx_ok65
  br label %choice.exit71

choice.then:                                      ; preds = %and.580.exit
  %b.load = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.6.struct, align 8
  %app.str.len81 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len82 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len82, i64 %app.str.len81)
  %sum83 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf84 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf84, label %str_overflow_abort86, label %b.app.new.len85

choice.else:                                      ; preds = %and.580.exit
  %var.load99 = load i1, ptr %var.has_lead_neg_pipe, align 1
  br i1 %var.load99, label %choice.then100, label %choice.exit101

choice.exit80:                                    ; preds = %choice.exit101, %b.grow_done
  %var.load145 = load i64, ptr %var.n, align 8
  %cmptmp146 = icmp sgt i64 %var.load145, 0
  br i1 %cmptmp146, label %and.581.then, label %and.581.else

b.app.new.len85:                                  ; preds = %abort.dead87, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap88 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap88, %sum83
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort86:                             ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead87:                                     ; No predecessors!
  br label %b.app.new.len85

b.grow2:                                          ; preds = %b.app.new.len85
  %b.cap2 = mul i64 %b.cap88, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum83
  %b.new.cap = select i1 %b.cap.need, i64 %sum83, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len289 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data290 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum91 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf92 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf92, label %str_overflow_abort94, label %b.new.buf.len293

b.nogrow2:                                        ; preds = %b.app.new.len85
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len293
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data97 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data97, i64 %b.app.cur.len82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len81, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data97, i64 %sum83
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum83, ptr %b.len.gep98, align 8
  store i64 1, ptr %"var.i'", align 8
  br label %choice.exit80

b.new.buf.len293:                                 ; preds = %abort.dead95, %b.grow2
  %arena.cur96 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum91)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data290, i64 %b.cur.len289, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len289
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort94:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %b.new.buf.len293

choice.then100:                                   ; preds = %choice.else
  %b.load102 = load ptr, ptr %var.b, align 8
  %app.str.len103 = load i64, ptr @str.7.struct, align 8
  %app.str.len104 = and i64 %app.str.len103, 281474976710655
  %app.str.data105 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %b.app.cur.len106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 0
  %b.app.cur.len107 = load i64, ptr %b.app.cur.len106, align 8
  %b.app.new.len108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len107, i64 %app.str.len104)
  %sum109 = extractvalue { i64, i1 } %b.app.new.len108, 0
  %ovf110 = extractvalue { i64, i1 } %b.app.new.len108, 1
  br i1 %ovf110, label %str_overflow_abort112, label %b.app.new.len111

choice.exit101:                                   ; preds = %b.grow_done119, %choice.else
  br label %choice.exit80

b.app.new.len111:                                 ; preds = %abort.dead113, %choice.then100
  %b.cap114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 2
  %b.cap115 = load i64, ptr %b.cap114, align 8
  %b.need.grow116 = icmp slt i64 %b.cap115, %sum109
  br i1 %b.need.grow116, label %b.grow2117, label %b.nogrow2118

str_overflow_abort112:                            ; preds = %choice.then100
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %b.app.new.len111

b.grow2117:                                       ; preds = %b.app.new.len111
  %b.cap2120 = mul i64 %b.cap115, 2
  %b.cap.small121 = icmp slt i64 %b.cap2120, 16
  %b.cap.grow122 = select i1 %b.cap.small121, i64 16, i64 %b.cap2120
  %b.cap.need123 = icmp slt i64 %b.cap.grow122, %sum109
  %b.new.cap124 = select i1 %b.cap.need123, i64 %sum109, i64 %b.cap.grow122
  %b.cur.len2125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 0
  %b.cur.len2126 = load i64, ptr %b.cur.len2125, align 8
  %b.cur.data2127 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 1
  %b.cur.data2128 = load ptr, ptr %b.cur.data2127, align 8
  %b.new.buf.len2129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap124, i64 1)
  %sum130 = extractvalue { i64, i1 } %b.new.buf.len2129, 0
  %ovf131 = extractvalue { i64, i1 } %b.new.buf.len2129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %b.new.buf.len2132

b.nogrow2118:                                     ; preds = %b.app.new.len111
  br label %b.grow_done119

b.grow_done119:                                   ; preds = %b.nogrow2118, %b.new.buf.len2132
  %b.app.data140 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 1
  %b.app.data141 = load ptr, ptr %b.app.data140, align 8
  %b.app.dst142 = getelementptr i8, ptr %b.app.data141, i64 %b.app.cur.len107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst142, ptr align 1 %app.str.data105, i64 %app.str.len104, i1 false)
  %b.app.nul143 = getelementptr i8, ptr %b.app.data141, i64 %sum109
  store i8 0, ptr %b.app.nul143, align 1
  %b.len.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 0
  store i64 %sum109, ptr %b.len.gep144, align 8
  store i64 2, ptr %"var.i'", align 8
  br label %choice.exit101

b.new.buf.len2132:                                ; preds = %abort.dead134, %b.grow2117
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 %sum130)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2136, ptr align 1 %b.cur.data2128, i64 %b.cur.len2126, i1 false)
  %b.grow2.nul137 = getelementptr i8, ptr %b.new.buf2136, i64 %b.cur.len2126
  store i8 0, ptr %b.grow2.nul137, align 1
  %b.new.data2.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 1
  store ptr %b.new.buf2136, ptr %b.new.data2.gep138, align 8
  %b.new.cap2.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 2
  store i64 %b.new.cap124, ptr %b.new.cap2.gep139, align 8
  br label %b.grow_done119

str_overflow_abort133:                            ; preds = %b.grow2117
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead134:                                    ; No predecessors!
  br label %b.new.buf.len2132

and.581.then:                                     ; preds = %choice.exit80
  %var.load147 = load ptr, ptr %var.body, align 8
  %s.read.len148 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 0
  %s.read.len149 = load i64, ptr %s.read.len148, align 8
  %s.read.len150 = and i64 %s.read.len149, 281474976710655
  %s.read.data151 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 1
  %s.read.data152 = load ptr, ptr %s.read.data151, align 8
  %idx.oob153 = icmp uge i64 0, %s.read.len150
  br i1 %idx.oob153, label %idx_oob155, label %idx_ok154

and.581.else:                                     ; preds = %choice.exit80
  br label %and.581.exit

and.581.exit:                                     ; preds = %and.581.else, %or.582.exit
  %and.581.phi = phi i1 [ %or.582.phi, %or.582.exit ], [ %cmptmp146, %and.581.else ]
  store i1 %and.581.phi, ptr %var.has_lead_guard, align 1
  store i64 0, ptr %"var.bracket_depth'", align 8
  store i1 false, ptr %"var.guard_closed'", align 1
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  store i1 false, ptr %"var.in_blk_comm'", align 1
  store i64 0, ptr %loop.idx.583, align 8
  br label %loop.header.583

idx_ok154:                                        ; preds = %abort.dead156, %and.581.then
  %s.byte.gep157 = getelementptr i8, ptr %s.read.data152, i64 0
  %s.byte158 = load i8, ptr %s.byte.gep157, align 1
  %s.byte.val159 = zext i8 %s.byte158 to i64
  %cmptmp160 = icmp eq i64 %s.byte.val159, 91
  br i1 %cmptmp160, label %or.582.then, label %or.582.else

idx_oob155:                                       ; preds = %and.581.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead156:                                    ; No predecessors!
  br label %idx_ok154

or.582.then:                                      ; preds = %idx_ok154
  br label %or.582.exit

or.582.else:                                      ; preds = %idx_ok154
  %var.load161 = load ptr, ptr %var.body, align 8
  %call.res162 = call i1 @"formatter::starts_with_str"(ptr %var.load161, ptr @str.8.struct)
  br label %or.582.exit

or.582.exit:                                      ; preds = %or.582.else, %or.582.then
  %or.582.phi = phi i1 [ %cmptmp160, %or.582.then ], [ %call.res162, %or.582.else ]
  br label %and.581.exit

loop.header.583:                                  ; preds = %loop.latch.583, %and.581.exit
  %counter.load = load i64, ptr %loop.idx.583, align 8
  br label %loop.body.583

loop.body.583:                                    ; preds = %loop.header.583
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.583, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load163 = load i64, ptr %"var.i'", align 8
  %var.load164 = load i64, ptr %var.n, align 8
  %cmptmp165 = icmp sge i64 %var.load163, %var.load164
  br i1 %cmptmp165, label %choice.then166, label %choice.exit167

loop.exit.nat.583:                                ; No predecessors!
  br label %loop.exit.583

loop.latch.583:                                   ; preds = %choice.exit231
  %step.val = load i64, ptr %loop.step.583, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.583, align 8
  br label %loop.header.583

loop.exit.583:                                    ; preds = %choice.then166, %loop.exit.nat.583
  %var.load1380 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1380, i32 0, i32 0
  %b.freeze.len1381 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1380, i32 0, i32 1
  %b.freeze.data1382 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len1381, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data1382, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1380, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1380, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1380, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack

choice.then166:                                   ; preds = %loop.body.583
  br label %loop.exit.583

choice.exit167:                                   ; preds = %loop.body.583
  %var.load168 = load ptr, ptr %var.body, align 8
  %s.read.len169 = getelementptr inbounds { i64, ptr }, ptr %var.load168, i32 0, i32 0
  %s.read.len170 = load i64, ptr %s.read.len169, align 8
  %s.read.len171 = and i64 %s.read.len170, 281474976710655
  %s.read.data172 = getelementptr inbounds { i64, ptr }, ptr %var.load168, i32 0, i32 1
  %s.read.data173 = load ptr, ptr %s.read.data172, align 8
  %var.load174 = load i64, ptr %"var.i'", align 8
  %idx.oob175 = icmp uge i64 %var.load174, %s.read.len171
  br i1 %idx.oob175, label %idx_oob177, label %idx_ok176

idx_ok176:                                        ; preds = %abort.dead178, %choice.exit167
  %s.byte.gep179 = getelementptr i8, ptr %s.read.data173, i64 %var.load174
  %s.byte180 = load i8, ptr %s.byte.gep179, align 1
  %s.byte.val181 = zext i8 %s.byte180 to i64
  store i64 %s.byte.val181, ptr %var.c, align 8
  %var.load182 = load i64, ptr %"var.i'", align 8
  %addtmp183 = add i64 %var.load182, 1
  %var.load184 = load i64, ptr %var.n, align 8
  %cmptmp185 = icmp slt i64 %addtmp183, %var.load184
  br i1 %cmptmp185, label %choice.then186, label %choice.else187

idx_oob177:                                       ; preds = %choice.exit167
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead178:                                    ; No predecessors!
  br label %idx_ok176

choice.then186:                                   ; preds = %idx_ok176
  %var.load189 = load ptr, ptr %var.body, align 8
  %s.read.len190 = getelementptr inbounds { i64, ptr }, ptr %var.load189, i32 0, i32 0
  %s.read.len191 = load i64, ptr %s.read.len190, align 8
  %s.read.len192 = and i64 %s.read.len191, 281474976710655
  %s.read.data193 = getelementptr inbounds { i64, ptr }, ptr %var.load189, i32 0, i32 1
  %s.read.data194 = load ptr, ptr %s.read.data193, align 8
  %var.load195 = load i64, ptr %"var.i'", align 8
  %addtmp196 = add i64 %var.load195, 1
  %idx.oob197 = icmp uge i64 %addtmp196, %s.read.len192
  br i1 %idx.oob197, label %idx_oob199, label %idx_ok198

choice.else187:                                   ; preds = %idx_ok176
  br label %choice.exit188

choice.exit188:                                   ; preds = %choice.else187, %idx_ok198
  %choice.res204 = phi i64 [ %s.byte.val203, %idx_ok198 ], [ 0, %choice.else187 ]
  store i64 %choice.res204, ptr %var.c1, align 8
  %var.load205 = load i64, ptr %"var.i'", align 8
  %addtmp206 = add i64 %var.load205, 2
  %var.load207 = load i64, ptr %var.n, align 8
  %cmptmp208 = icmp slt i64 %addtmp206, %var.load207
  br i1 %cmptmp208, label %choice.then209, label %choice.else210

idx_ok198:                                        ; preds = %abort.dead200, %choice.then186
  %s.byte.gep201 = getelementptr i8, ptr %s.read.data194, i64 %addtmp196
  %s.byte202 = load i8, ptr %s.byte.gep201, align 1
  %s.byte.val203 = zext i8 %s.byte202 to i64
  br label %choice.exit188

idx_oob199:                                       ; preds = %choice.then186
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead200:                                    ; No predecessors!
  br label %idx_ok198

choice.then209:                                   ; preds = %choice.exit188
  %var.load212 = load ptr, ptr %var.body, align 8
  %s.read.len213 = getelementptr inbounds { i64, ptr }, ptr %var.load212, i32 0, i32 0
  %s.read.len214 = load i64, ptr %s.read.len213, align 8
  %s.read.len215 = and i64 %s.read.len214, 281474976710655
  %s.read.data216 = getelementptr inbounds { i64, ptr }, ptr %var.load212, i32 0, i32 1
  %s.read.data217 = load ptr, ptr %s.read.data216, align 8
  %var.load218 = load i64, ptr %"var.i'", align 8
  %addtmp219 = add i64 %var.load218, 2
  %idx.oob220 = icmp uge i64 %addtmp219, %s.read.len215
  br i1 %idx.oob220, label %idx_oob222, label %idx_ok221

choice.else210:                                   ; preds = %choice.exit188
  br label %choice.exit211

choice.exit211:                                   ; preds = %choice.else210, %idx_ok221
  %choice.res227 = phi i64 [ %s.byte.val226, %idx_ok221 ], [ 0, %choice.else210 ]
  store i64 %choice.res227, ptr %var.c2, align 8
  %var.load228 = load i1, ptr %"var.in_blk_comm'", align 1
  br i1 %var.load228, label %choice.then229, label %choice.else230

idx_ok221:                                        ; preds = %abort.dead223, %choice.then209
  %s.byte.gep224 = getelementptr i8, ptr %s.read.data217, i64 %addtmp219
  %s.byte225 = load i8, ptr %s.byte.gep224, align 1
  %s.byte.val226 = zext i8 %s.byte225 to i64
  br label %choice.exit211

idx_oob222:                                       ; preds = %choice.then209
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead223:                                    ; No predecessors!
  br label %idx_ok221

choice.then229:                                   ; preds = %choice.exit211
  %b.load232 = load ptr, ptr %var.b, align 8
  %var.load233 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load233, 0
  %b.b.le255 = icmp sle i64 %var.load233, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else230:                                   ; preds = %choice.exit211
  %var.load303 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load303, label %choice.then304, label %choice.else305

choice.exit231:                                   ; preds = %choice.exit306, %choice.exit257
  br label %loop.latch.583

b.byte_ok:                                        ; preds = %abort.dead234, %choice.then229
  %b.byte.i8 = trunc i64 %var.load233 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load232, i32 0, i32 0
  %b.len235 = load i64, ptr %b.len, align 8
  %b.cap236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load232, i32 0, i32 2
  %b.cap237 = load i64, ptr %b.cap236, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load232, i32 0, i32 1
  %b.data238 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len235, %b.cap237
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then229
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead234:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2239 = mul i64 %b.cap237, 2
  %b.cap.small240 = icmp slt i64 %b.cap2239, 16
  %b.new.cap241 = select i1 %b.cap.small240, i64 16, i64 %b.cap2239
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap241, i64 1)
  %sum242 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf243 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf243, label %str_overflow_abort245, label %b.new.buf.len244

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len244
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load232, i32 0, i32 1
  %b.cur.data248 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load232, i32 0, i32 0
  %b.cur.len249 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data248, i64 %b.cur.len249
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len249, 1
  %b.nul = getelementptr i8, ptr %b.cur.data248, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load232, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep250, align 8
  %var.load251 = load i64, ptr %var.c, align 8
  %cmptmp252 = icmp eq i64 %var.load251, 42
  br i1 %cmptmp252, label %and.584.then, label %and.584.else

b.new.buf.len244:                                 ; preds = %abort.dead246, %b.grow
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 %sum242)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data238, i64 %b.len235, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len235
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load232, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load232, i32 0, i32 2
  store i64 %b.new.cap241, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort245:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead246:                                    ; No predecessors!
  br label %b.new.buf.len244

and.584.then:                                     ; preds = %b.push_done
  %var.load253 = load i64, ptr %var.c1, align 8
  %cmptmp254 = icmp eq i64 %var.load253, 47
  br label %and.584.exit

and.584.else:                                     ; preds = %b.push_done
  br label %and.584.exit

and.584.exit:                                     ; preds = %and.584.else, %and.584.then
  %and.584.phi = phi i1 [ %cmptmp254, %and.584.then ], [ %cmptmp252, %and.584.else ]
  br i1 %and.584.phi, label %choice.then255, label %choice.else256

choice.then255:                                   ; preds = %and.584.exit
  %b.load258 = load ptr, ptr %var.b, align 8
  %var.load259 = load i64, ptr %var.c1, align 8
  %b.b.ge0260 = icmp sge i64 %var.load259, 0
  %b.b.le255261 = icmp sle i64 %var.load259, 255
  %b.byte.range262 = and i1 %b.b.ge0260, %b.b.le255261
  br i1 %b.byte.range262, label %b.byte_ok263, label %b.byte_err264

choice.else256:                                   ; preds = %and.584.exit
  %var.load301 = load i64, ptr %"var.i'", align 8
  %addtmp302 = add i64 %var.load301, 1
  store i64 %addtmp302, ptr %"var.i'", align 8
  br label %choice.exit257

choice.exit257:                                   ; preds = %choice.else256, %b.push_done276
  br label %choice.exit231

b.byte_ok263:                                     ; preds = %abort.dead265, %choice.then255
  %b.byte.i8266 = trunc i64 %var.load259 to i8
  %b.len267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load258, i32 0, i32 0
  %b.len268 = load i64, ptr %b.len267, align 8
  %b.cap269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load258, i32 0, i32 2
  %b.cap270 = load i64, ptr %b.cap269, align 8
  %b.data271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load258, i32 0, i32 1
  %b.data272 = load ptr, ptr %b.data271, align 8
  %b.needs.grow273 = icmp eq i64 %b.len268, %b.cap270
  br i1 %b.needs.grow273, label %b.grow274, label %b.nogrow275

b.byte_err264:                                    ; preds = %choice.then255
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead265:                                    ; No predecessors!
  br label %b.byte_ok263

b.grow274:                                        ; preds = %b.byte_ok263
  %b.cap2277 = mul i64 %b.cap270, 2
  %b.cap.small278 = icmp slt i64 %b.cap2277, 16
  %b.new.cap279 = select i1 %b.cap.small278, i64 16, i64 %b.cap2277
  %b.new.buf.len280 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap279, i64 1)
  %sum281 = extractvalue { i64, i1 } %b.new.buf.len280, 0
  %ovf282 = extractvalue { i64, i1 } %b.new.buf.len280, 1
  br i1 %ovf282, label %str_overflow_abort284, label %b.new.buf.len283

b.nogrow275:                                      ; preds = %b.byte_ok263
  br label %b.push_done276

b.push_done276:                                   ; preds = %b.nogrow275, %b.new.buf.len283
  %b.cur.data291 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load258, i32 0, i32 1
  %b.cur.data292 = load ptr, ptr %b.cur.data291, align 8
  %b.cur.len293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load258, i32 0, i32 0
  %b.cur.len294 = load i64, ptr %b.cur.len293, align 8
  %b.byte.gep295 = getelementptr i8, ptr %b.cur.data292, i64 %b.cur.len294
  store i8 %b.byte.i8266, ptr %b.byte.gep295, align 1
  %b.next.len296 = add i64 %b.cur.len294, 1
  %b.nul297 = getelementptr i8, ptr %b.cur.data292, i64 %b.next.len296
  store i8 0, ptr %b.nul297, align 1
  %b.len.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load258, i32 0, i32 0
  store i64 %b.next.len296, ptr %b.len.gep298, align 8
  store i1 false, ptr %"var.in_blk_comm'", align 1
  %var.load299 = load i64, ptr %"var.i'", align 8
  %addtmp300 = add i64 %var.load299, 2
  store i64 %addtmp300, ptr %"var.i'", align 8
  br label %choice.exit257

b.new.buf.len283:                                 ; preds = %abort.dead285, %b.grow274
  %arena.cur286 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf287 = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 %sum281)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf287, ptr align 1 %b.data272, i64 %b.len268, i1 false)
  %b.grow.nul288 = getelementptr i8, ptr %b.new.buf287, i64 %b.len268
  store i8 0, ptr %b.grow.nul288, align 1
  %b.new.data.gep289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load258, i32 0, i32 1
  store ptr %b.new.buf287, ptr %b.new.data.gep289, align 8
  %b.new.cap.gep290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load258, i32 0, i32 2
  store i64 %b.new.cap279, ptr %b.new.cap.gep290, align 8
  br label %b.push_done276

str_overflow_abort284:                            ; preds = %b.grow274
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead285:                                    ; No predecessors!
  br label %b.new.buf.len283

choice.then304:                                   ; preds = %choice.else230
  %b.load307 = load ptr, ptr %var.b, align 8
  %var.load308 = load i64, ptr %var.c, align 8
  %b.b.ge0309 = icmp sge i64 %var.load308, 0
  %b.b.le255310 = icmp sle i64 %var.load308, 255
  %b.byte.range311 = and i1 %b.b.ge0309, %b.b.le255310
  br i1 %b.byte.range311, label %b.byte_ok312, label %b.byte_err313

choice.else305:                                   ; preds = %choice.else230
  %var.load505 = load i64, ptr %var.c, align 8
  %cmptmp506 = icmp eq i64 %var.load505, 47
  br i1 %cmptmp506, label %and.588.then, label %and.588.else

choice.exit306:                                   ; preds = %choice.exit511, %choice.exit356
  br label %choice.exit231

b.byte_ok312:                                     ; preds = %abort.dead314, %choice.then304
  %b.byte.i8315 = trunc i64 %var.load308 to i8
  %b.len316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 0
  %b.len317 = load i64, ptr %b.len316, align 8
  %b.cap318 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 2
  %b.cap319 = load i64, ptr %b.cap318, align 8
  %b.data320 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 1
  %b.data321 = load ptr, ptr %b.data320, align 8
  %b.needs.grow322 = icmp eq i64 %b.len317, %b.cap319
  br i1 %b.needs.grow322, label %b.grow323, label %b.nogrow324

b.byte_err313:                                    ; preds = %choice.then304
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead314:                                    ; No predecessors!
  br label %b.byte_ok312

b.grow323:                                        ; preds = %b.byte_ok312
  %b.cap2326 = mul i64 %b.cap319, 2
  %b.cap.small327 = icmp slt i64 %b.cap2326, 16
  %b.new.cap328 = select i1 %b.cap.small327, i64 16, i64 %b.cap2326
  %b.new.buf.len329 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap328, i64 1)
  %sum330 = extractvalue { i64, i1 } %b.new.buf.len329, 0
  %ovf331 = extractvalue { i64, i1 } %b.new.buf.len329, 1
  br i1 %ovf331, label %str_overflow_abort333, label %b.new.buf.len332

b.nogrow324:                                      ; preds = %b.byte_ok312
  br label %b.push_done325

b.push_done325:                                   ; preds = %b.nogrow324, %b.new.buf.len332
  %b.cur.data340 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 1
  %b.cur.data341 = load ptr, ptr %b.cur.data340, align 8
  %b.cur.len342 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 0
  %b.cur.len343 = load i64, ptr %b.cur.len342, align 8
  %b.byte.gep344 = getelementptr i8, ptr %b.cur.data341, i64 %b.cur.len343
  store i8 %b.byte.i8315, ptr %b.byte.gep344, align 1
  %b.next.len345 = add i64 %b.cur.len343, 1
  %b.nul346 = getelementptr i8, ptr %b.cur.data341, i64 %b.next.len345
  store i8 0, ptr %b.nul346, align 1
  %b.len.gep347 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 0
  store i64 %b.next.len345, ptr %b.len.gep347, align 8
  %var.load348 = load i64, ptr %var.c, align 8
  %cmptmp349 = icmp eq i64 %var.load348, 92
  br i1 %cmptmp349, label %and.585.then, label %and.585.else

b.new.buf.len332:                                 ; preds = %abort.dead334, %b.grow323
  %arena.cur335 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 %sum330)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf336, ptr align 1 %b.data321, i64 %b.len317, i1 false)
  %b.grow.nul337 = getelementptr i8, ptr %b.new.buf336, i64 %b.len317
  store i8 0, ptr %b.grow.nul337, align 1
  %b.new.data.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 1
  store ptr %b.new.buf336, ptr %b.new.data.gep338, align 8
  %b.new.cap.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 2
  store i64 %b.new.cap328, ptr %b.new.cap.gep339, align 8
  br label %b.push_done325

str_overflow_abort333:                            ; preds = %b.grow323
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead334:                                    ; No predecessors!
  br label %b.new.buf.len332

and.585.then:                                     ; preds = %b.push_done325
  %var.load350 = load i64, ptr %"var.i'", align 8
  %addtmp351 = add i64 %var.load350, 1
  %var.load352 = load i64, ptr %var.n, align 8
  %cmptmp353 = icmp slt i64 %addtmp351, %var.load352
  br label %and.585.exit

and.585.else:                                     ; preds = %b.push_done325
  br label %and.585.exit

and.585.exit:                                     ; preds = %and.585.else, %and.585.then
  %and.585.phi = phi i1 [ %cmptmp353, %and.585.then ], [ %cmptmp349, %and.585.else ]
  br i1 %and.585.phi, label %choice.then354, label %choice.else355

choice.then354:                                   ; preds = %and.585.exit
  %b.load357 = load ptr, ptr %var.b, align 8
  %var.load358 = load i64, ptr %var.c1, align 8
  %b.b.ge0359 = icmp sge i64 %var.load358, 0
  %b.b.le255360 = icmp sle i64 %var.load358, 255
  %b.byte.range361 = and i1 %b.b.ge0359, %b.b.le255360
  br i1 %b.byte.range361, label %b.byte_ok362, label %b.byte_err363

choice.else355:                                   ; preds = %and.585.exit
  %var.load400 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load400, label %choice.then401, label %choice.else402

choice.exit356:                                   ; preds = %choice.exit403, %b.push_done375
  br label %choice.exit306

b.byte_ok362:                                     ; preds = %abort.dead364, %choice.then354
  %b.byte.i8365 = trunc i64 %var.load358 to i8
  %b.len366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 0
  %b.len367 = load i64, ptr %b.len366, align 8
  %b.cap368 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 2
  %b.cap369 = load i64, ptr %b.cap368, align 8
  %b.data370 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 1
  %b.data371 = load ptr, ptr %b.data370, align 8
  %b.needs.grow372 = icmp eq i64 %b.len367, %b.cap369
  br i1 %b.needs.grow372, label %b.grow373, label %b.nogrow374

b.byte_err363:                                    ; preds = %choice.then354
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead364:                                    ; No predecessors!
  br label %b.byte_ok362

b.grow373:                                        ; preds = %b.byte_ok362
  %b.cap2376 = mul i64 %b.cap369, 2
  %b.cap.small377 = icmp slt i64 %b.cap2376, 16
  %b.new.cap378 = select i1 %b.cap.small377, i64 16, i64 %b.cap2376
  %b.new.buf.len379 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap378, i64 1)
  %sum380 = extractvalue { i64, i1 } %b.new.buf.len379, 0
  %ovf381 = extractvalue { i64, i1 } %b.new.buf.len379, 1
  br i1 %ovf381, label %str_overflow_abort383, label %b.new.buf.len382

b.nogrow374:                                      ; preds = %b.byte_ok362
  br label %b.push_done375

b.push_done375:                                   ; preds = %b.nogrow374, %b.new.buf.len382
  %b.cur.data390 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 1
  %b.cur.data391 = load ptr, ptr %b.cur.data390, align 8
  %b.cur.len392 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 0
  %b.cur.len393 = load i64, ptr %b.cur.len392, align 8
  %b.byte.gep394 = getelementptr i8, ptr %b.cur.data391, i64 %b.cur.len393
  store i8 %b.byte.i8365, ptr %b.byte.gep394, align 1
  %b.next.len395 = add i64 %b.cur.len393, 1
  %b.nul396 = getelementptr i8, ptr %b.cur.data391, i64 %b.next.len395
  store i8 0, ptr %b.nul396, align 1
  %b.len.gep397 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 0
  store i64 %b.next.len395, ptr %b.len.gep397, align 8
  %var.load398 = load i64, ptr %"var.i'", align 8
  %addtmp399 = add i64 %var.load398, 2
  store i64 %addtmp399, ptr %"var.i'", align 8
  br label %choice.exit356

b.new.buf.len382:                                 ; preds = %abort.dead384, %b.grow373
  %arena.cur385 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf386 = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 %sum380)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf386, ptr align 1 %b.data371, i64 %b.len367, i1 false)
  %b.grow.nul387 = getelementptr i8, ptr %b.new.buf386, i64 %b.len367
  store i8 0, ptr %b.grow.nul387, align 1
  %b.new.data.gep388 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 1
  store ptr %b.new.buf386, ptr %b.new.data.gep388, align 8
  %b.new.cap.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 2
  store i64 %b.new.cap378, ptr %b.new.cap.gep389, align 8
  br label %b.push_done375

str_overflow_abort383:                            ; preds = %b.grow373
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead384:                                    ; No predecessors!
  br label %b.new.buf.len382

choice.then401:                                   ; preds = %choice.else355
  %var.load404 = load i64, ptr %var.c, align 8
  %cmptmp405 = icmp eq i64 %var.load404, 34
  br i1 %cmptmp405, label %and.586.then, label %and.586.else

choice.else402:                                   ; preds = %choice.else355
  %var.load499 = load i64, ptr %var.c, align 8
  %cmptmp500 = icmp eq i64 %var.load499, 34
  br i1 %cmptmp500, label %choice.then501, label %choice.exit502

choice.exit403:                                   ; preds = %choice.exit502, %choice.exit412
  br label %choice.exit356

and.586.then:                                     ; preds = %choice.then401
  %var.load406 = load i64, ptr %var.c1, align 8
  %cmptmp407 = icmp eq i64 %var.load406, 34
  br label %and.586.exit

and.586.else:                                     ; preds = %choice.then401
  br label %and.586.exit

and.586.exit:                                     ; preds = %and.586.else, %and.586.then
  %and.586.phi = phi i1 [ %cmptmp407, %and.586.then ], [ %cmptmp405, %and.586.else ]
  br i1 %and.586.phi, label %and.587.then, label %and.587.else

and.587.then:                                     ; preds = %and.586.exit
  %var.load408 = load i64, ptr %var.c2, align 8
  %cmptmp409 = icmp eq i64 %var.load408, 34
  br label %and.587.exit

and.587.else:                                     ; preds = %and.586.exit
  br label %and.587.exit

and.587.exit:                                     ; preds = %and.587.else, %and.587.then
  %and.587.phi = phi i1 [ %cmptmp409, %and.587.then ], [ %and.586.phi, %and.587.else ]
  br i1 %and.587.phi, label %choice.then410, label %choice.else411

choice.then410:                                   ; preds = %and.587.exit
  %b.load413 = load ptr, ptr %var.b, align 8
  %var.load414 = load i64, ptr %var.c1, align 8
  %b.b.ge0415 = icmp sge i64 %var.load414, 0
  %b.b.le255416 = icmp sle i64 %var.load414, 255
  %b.byte.range417 = and i1 %b.b.ge0415, %b.b.le255416
  br i1 %b.byte.range417, label %b.byte_ok418, label %b.byte_err419

choice.else411:                                   ; preds = %and.587.exit
  %var.load497 = load i64, ptr %"var.i'", align 8
  %addtmp498 = add i64 %var.load497, 1
  store i64 %addtmp498, ptr %"var.i'", align 8
  br label %choice.exit412

choice.exit412:                                   ; preds = %choice.else411, %b.push_done472
  br label %choice.exit403

b.byte_ok418:                                     ; preds = %abort.dead420, %choice.then410
  %b.byte.i8421 = trunc i64 %var.load414 to i8
  %b.len422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load413, i32 0, i32 0
  %b.len423 = load i64, ptr %b.len422, align 8
  %b.cap424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load413, i32 0, i32 2
  %b.cap425 = load i64, ptr %b.cap424, align 8
  %b.data426 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load413, i32 0, i32 1
  %b.data427 = load ptr, ptr %b.data426, align 8
  %b.needs.grow428 = icmp eq i64 %b.len423, %b.cap425
  br i1 %b.needs.grow428, label %b.grow429, label %b.nogrow430

b.byte_err419:                                    ; preds = %choice.then410
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead420:                                    ; No predecessors!
  br label %b.byte_ok418

b.grow429:                                        ; preds = %b.byte_ok418
  %b.cap2432 = mul i64 %b.cap425, 2
  %b.cap.small433 = icmp slt i64 %b.cap2432, 16
  %b.new.cap434 = select i1 %b.cap.small433, i64 16, i64 %b.cap2432
  %b.new.buf.len435 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap434, i64 1)
  %sum436 = extractvalue { i64, i1 } %b.new.buf.len435, 0
  %ovf437 = extractvalue { i64, i1 } %b.new.buf.len435, 1
  br i1 %ovf437, label %str_overflow_abort439, label %b.new.buf.len438

b.nogrow430:                                      ; preds = %b.byte_ok418
  br label %b.push_done431

b.push_done431:                                   ; preds = %b.nogrow430, %b.new.buf.len438
  %b.cur.data446 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load413, i32 0, i32 1
  %b.cur.data447 = load ptr, ptr %b.cur.data446, align 8
  %b.cur.len448 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load413, i32 0, i32 0
  %b.cur.len449 = load i64, ptr %b.cur.len448, align 8
  %b.byte.gep450 = getelementptr i8, ptr %b.cur.data447, i64 %b.cur.len449
  store i8 %b.byte.i8421, ptr %b.byte.gep450, align 1
  %b.next.len451 = add i64 %b.cur.len449, 1
  %b.nul452 = getelementptr i8, ptr %b.cur.data447, i64 %b.next.len451
  store i8 0, ptr %b.nul452, align 1
  %b.len.gep453 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load413, i32 0, i32 0
  store i64 %b.next.len451, ptr %b.len.gep453, align 8
  %b.load454 = load ptr, ptr %var.b, align 8
  %var.load455 = load i64, ptr %var.c2, align 8
  %b.b.ge0456 = icmp sge i64 %var.load455, 0
  %b.b.le255457 = icmp sle i64 %var.load455, 255
  %b.byte.range458 = and i1 %b.b.ge0456, %b.b.le255457
  br i1 %b.byte.range458, label %b.byte_ok459, label %b.byte_err460

b.new.buf.len438:                                 ; preds = %abort.dead440, %b.grow429
  %arena.cur441 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf442 = call ptr @dva_arena_alloc(ptr %arena.cur441, i64 %sum436)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf442, ptr align 1 %b.data427, i64 %b.len423, i1 false)
  %b.grow.nul443 = getelementptr i8, ptr %b.new.buf442, i64 %b.len423
  store i8 0, ptr %b.grow.nul443, align 1
  %b.new.data.gep444 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load413, i32 0, i32 1
  store ptr %b.new.buf442, ptr %b.new.data.gep444, align 8
  %b.new.cap.gep445 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load413, i32 0, i32 2
  store i64 %b.new.cap434, ptr %b.new.cap.gep445, align 8
  br label %b.push_done431

str_overflow_abort439:                            ; preds = %b.grow429
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead440:                                    ; No predecessors!
  br label %b.new.buf.len438

b.byte_ok459:                                     ; preds = %abort.dead461, %b.push_done431
  %b.byte.i8462 = trunc i64 %var.load455 to i8
  %b.len463 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 0
  %b.len464 = load i64, ptr %b.len463, align 8
  %b.cap465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 2
  %b.cap466 = load i64, ptr %b.cap465, align 8
  %b.data467 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 1
  %b.data468 = load ptr, ptr %b.data467, align 8
  %b.needs.grow469 = icmp eq i64 %b.len464, %b.cap466
  br i1 %b.needs.grow469, label %b.grow470, label %b.nogrow471

b.byte_err460:                                    ; preds = %b.push_done431
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead461:                                    ; No predecessors!
  br label %b.byte_ok459

b.grow470:                                        ; preds = %b.byte_ok459
  %b.cap2473 = mul i64 %b.cap466, 2
  %b.cap.small474 = icmp slt i64 %b.cap2473, 16
  %b.new.cap475 = select i1 %b.cap.small474, i64 16, i64 %b.cap2473
  %b.new.buf.len476 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap475, i64 1)
  %sum477 = extractvalue { i64, i1 } %b.new.buf.len476, 0
  %ovf478 = extractvalue { i64, i1 } %b.new.buf.len476, 1
  br i1 %ovf478, label %str_overflow_abort480, label %b.new.buf.len479

b.nogrow471:                                      ; preds = %b.byte_ok459
  br label %b.push_done472

b.push_done472:                                   ; preds = %b.nogrow471, %b.new.buf.len479
  %b.cur.data487 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 1
  %b.cur.data488 = load ptr, ptr %b.cur.data487, align 8
  %b.cur.len489 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 0
  %b.cur.len490 = load i64, ptr %b.cur.len489, align 8
  %b.byte.gep491 = getelementptr i8, ptr %b.cur.data488, i64 %b.cur.len490
  store i8 %b.byte.i8462, ptr %b.byte.gep491, align 1
  %b.next.len492 = add i64 %b.cur.len490, 1
  %b.nul493 = getelementptr i8, ptr %b.cur.data488, i64 %b.next.len492
  store i8 0, ptr %b.nul493, align 1
  %b.len.gep494 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 0
  store i64 %b.next.len492, ptr %b.len.gep494, align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load495 = load i64, ptr %"var.i'", align 8
  %addtmp496 = add i64 %var.load495, 3
  store i64 %addtmp496, ptr %"var.i'", align 8
  br label %choice.exit412

b.new.buf.len479:                                 ; preds = %abort.dead481, %b.grow470
  %arena.cur482 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf483 = call ptr @dva_arena_alloc(ptr %arena.cur482, i64 %sum477)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf483, ptr align 1 %b.data468, i64 %b.len464, i1 false)
  %b.grow.nul484 = getelementptr i8, ptr %b.new.buf483, i64 %b.len464
  store i8 0, ptr %b.grow.nul484, align 1
  %b.new.data.gep485 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 1
  store ptr %b.new.buf483, ptr %b.new.data.gep485, align 8
  %b.new.cap.gep486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 2
  store i64 %b.new.cap475, ptr %b.new.cap.gep486, align 8
  br label %b.push_done472

str_overflow_abort480:                            ; preds = %b.grow470
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead481:                                    ; No predecessors!
  br label %b.new.buf.len479

choice.then501:                                   ; preds = %choice.else402
  store i1 false, ptr %"var.in_str'", align 1
  br label %choice.exit502

choice.exit502:                                   ; preds = %choice.then501, %choice.else402
  %var.load503 = load i64, ptr %"var.i'", align 8
  %addtmp504 = add i64 %var.load503, 1
  store i64 %addtmp504, ptr %"var.i'", align 8
  br label %choice.exit403

and.588.then:                                     ; preds = %choice.else305
  %var.load507 = load i64, ptr %var.c1, align 8
  %cmptmp508 = icmp eq i64 %var.load507, 47
  br label %and.588.exit

and.588.else:                                     ; preds = %choice.else305
  br label %and.588.exit

and.588.exit:                                     ; preds = %and.588.else, %and.588.then
  %and.588.phi = phi i1 [ %cmptmp508, %and.588.then ], [ %cmptmp506, %and.588.else ]
  br i1 %and.588.phi, label %choice.then509, label %choice.else510

choice.then509:                                   ; preds = %and.588.exit
  %b.load512 = load ptr, ptr %var.b, align 8
  %var.load513 = load ptr, ptr %var.body, align 8
  %s.read.len514 = getelementptr inbounds { i64, ptr }, ptr %var.load513, i32 0, i32 0
  %s.read.len515 = load i64, ptr %s.read.len514, align 8
  %s.read.len516 = and i64 %s.read.len515, 281474976710655
  %s.read.data517 = getelementptr inbounds { i64, ptr }, ptr %var.load513, i32 0, i32 1
  %s.read.data518 = load ptr, ptr %s.read.data517, align 8
  %var.load519 = load i64, ptr %"var.i'", align 8
  %var.load520 = load i64, ptr %var.n, align 8
  %start.is_neg = icmp slt i64 %var.load519, 0
  %rel.start = add i64 %s.read.len516, %var.load519
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load519
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len516
  %final.start = select i1 %start.gt.len, i64 %s.read.len516, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load520, 0
  %rel.end = add i64 %s.read.len516, %var.load520
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load520
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len516
  %final.end = select i1 %end.gt.len, i64 %s.read.len516, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data518, i64 %final.start
  %b.app.cur.len521 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load512, i32 0, i32 0
  %b.app.cur.len522 = load i64, ptr %b.app.cur.len521, align 8
  %b.app.new.len523 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len522, i64 %view.len)
  %sum524 = extractvalue { i64, i1 } %b.app.new.len523, 0
  %ovf525 = extractvalue { i64, i1 } %b.app.new.len523, 1
  br i1 %ovf525, label %str_overflow_abort527, label %b.app.new.len526

choice.else510:                                   ; preds = %and.588.exit
  %var.load561 = load i64, ptr %var.c, align 8
  %cmptmp562 = icmp eq i64 %var.load561, 47
  br i1 %cmptmp562, label %and.589.then, label %and.589.else

choice.exit511:                                   ; preds = %choice.exit567, %b.grow_done534
  br label %choice.exit306

b.app.new.len526:                                 ; preds = %abort.dead528, %choice.then509
  %b.cap529 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load512, i32 0, i32 2
  %b.cap530 = load i64, ptr %b.cap529, align 8
  %b.need.grow531 = icmp slt i64 %b.cap530, %sum524
  br i1 %b.need.grow531, label %b.grow2532, label %b.nogrow2533

str_overflow_abort527:                            ; preds = %choice.then509
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead528:                                    ; No predecessors!
  br label %b.app.new.len526

b.grow2532:                                       ; preds = %b.app.new.len526
  %b.cap2535 = mul i64 %b.cap530, 2
  %b.cap.small536 = icmp slt i64 %b.cap2535, 16
  %b.cap.grow537 = select i1 %b.cap.small536, i64 16, i64 %b.cap2535
  %b.cap.need538 = icmp slt i64 %b.cap.grow537, %sum524
  %b.new.cap539 = select i1 %b.cap.need538, i64 %sum524, i64 %b.cap.grow537
  %b.cur.len2540 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load512, i32 0, i32 0
  %b.cur.len2541 = load i64, ptr %b.cur.len2540, align 8
  %b.cur.data2542 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load512, i32 0, i32 1
  %b.cur.data2543 = load ptr, ptr %b.cur.data2542, align 8
  %b.new.buf.len2544 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap539, i64 1)
  %sum545 = extractvalue { i64, i1 } %b.new.buf.len2544, 0
  %ovf546 = extractvalue { i64, i1 } %b.new.buf.len2544, 1
  br i1 %ovf546, label %str_overflow_abort548, label %b.new.buf.len2547

b.nogrow2533:                                     ; preds = %b.app.new.len526
  br label %b.grow_done534

b.grow_done534:                                   ; preds = %b.nogrow2533, %b.new.buf.len2547
  %b.app.data555 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load512, i32 0, i32 1
  %b.app.data556 = load ptr, ptr %b.app.data555, align 8
  %b.app.dst557 = getelementptr i8, ptr %b.app.data556, i64 %b.app.cur.len522
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst557, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul558 = getelementptr i8, ptr %b.app.data556, i64 %sum524
  store i8 0, ptr %b.app.nul558, align 1
  %b.len.gep559 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load512, i32 0, i32 0
  store i64 %sum524, ptr %b.len.gep559, align 8
  %var.load560 = load i64, ptr %var.n, align 8
  store i64 %var.load560, ptr %"var.i'", align 8
  br label %choice.exit511

b.new.buf.len2547:                                ; preds = %abort.dead549, %b.grow2532
  %arena.cur550 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2551 = call ptr @dva_arena_alloc(ptr %arena.cur550, i64 %sum545)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2551, ptr align 1 %b.cur.data2543, i64 %b.cur.len2541, i1 false)
  %b.grow2.nul552 = getelementptr i8, ptr %b.new.buf2551, i64 %b.cur.len2541
  store i8 0, ptr %b.grow2.nul552, align 1
  %b.new.data2.gep553 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load512, i32 0, i32 1
  store ptr %b.new.buf2551, ptr %b.new.data2.gep553, align 8
  %b.new.cap2.gep554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load512, i32 0, i32 2
  store i64 %b.new.cap539, ptr %b.new.cap2.gep554, align 8
  br label %b.grow_done534

str_overflow_abort548:                            ; preds = %b.grow2532
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead549:                                    ; No predecessors!
  br label %b.new.buf.len2547

and.589.then:                                     ; preds = %choice.else510
  %var.load563 = load i64, ptr %var.c1, align 8
  %cmptmp564 = icmp eq i64 %var.load563, 42
  br label %and.589.exit

and.589.else:                                     ; preds = %choice.else510
  br label %and.589.exit

and.589.exit:                                     ; preds = %and.589.else, %and.589.then
  %and.589.phi = phi i1 [ %cmptmp564, %and.589.then ], [ %cmptmp562, %and.589.else ]
  br i1 %and.589.phi, label %choice.then565, label %choice.else566

choice.then565:                                   ; preds = %and.589.exit
  %b.load568 = load ptr, ptr %var.b, align 8
  %app.str.len569 = load i64, ptr @str.9.struct, align 8
  %app.str.len570 = and i64 %app.str.len569, 281474976710655
  %app.str.data571 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %b.app.cur.len572 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load568, i32 0, i32 0
  %b.app.cur.len573 = load i64, ptr %b.app.cur.len572, align 8
  %b.app.new.len574 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len573, i64 %app.str.len570)
  %sum575 = extractvalue { i64, i1 } %b.app.new.len574, 0
  %ovf576 = extractvalue { i64, i1 } %b.app.new.len574, 1
  br i1 %ovf576, label %str_overflow_abort578, label %b.app.new.len577

choice.else566:                                   ; preds = %and.589.exit
  %var.load613 = load i64, ptr %var.c, align 8
  %cmptmp614 = icmp eq i64 %var.load613, 39
  br i1 %cmptmp614, label %choice.then615, label %choice.else616

choice.exit567:                                   ; preds = %choice.exit617, %b.grow_done585
  br label %choice.exit511

b.app.new.len577:                                 ; preds = %abort.dead579, %choice.then565
  %b.cap580 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load568, i32 0, i32 2
  %b.cap581 = load i64, ptr %b.cap580, align 8
  %b.need.grow582 = icmp slt i64 %b.cap581, %sum575
  br i1 %b.need.grow582, label %b.grow2583, label %b.nogrow2584

str_overflow_abort578:                            ; preds = %choice.then565
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead579:                                    ; No predecessors!
  br label %b.app.new.len577

b.grow2583:                                       ; preds = %b.app.new.len577
  %b.cap2586 = mul i64 %b.cap581, 2
  %b.cap.small587 = icmp slt i64 %b.cap2586, 16
  %b.cap.grow588 = select i1 %b.cap.small587, i64 16, i64 %b.cap2586
  %b.cap.need589 = icmp slt i64 %b.cap.grow588, %sum575
  %b.new.cap590 = select i1 %b.cap.need589, i64 %sum575, i64 %b.cap.grow588
  %b.cur.len2591 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load568, i32 0, i32 0
  %b.cur.len2592 = load i64, ptr %b.cur.len2591, align 8
  %b.cur.data2593 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load568, i32 0, i32 1
  %b.cur.data2594 = load ptr, ptr %b.cur.data2593, align 8
  %b.new.buf.len2595 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap590, i64 1)
  %sum596 = extractvalue { i64, i1 } %b.new.buf.len2595, 0
  %ovf597 = extractvalue { i64, i1 } %b.new.buf.len2595, 1
  br i1 %ovf597, label %str_overflow_abort599, label %b.new.buf.len2598

b.nogrow2584:                                     ; preds = %b.app.new.len577
  br label %b.grow_done585

b.grow_done585:                                   ; preds = %b.nogrow2584, %b.new.buf.len2598
  %b.app.data606 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load568, i32 0, i32 1
  %b.app.data607 = load ptr, ptr %b.app.data606, align 8
  %b.app.dst608 = getelementptr i8, ptr %b.app.data607, i64 %b.app.cur.len573
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst608, ptr align 1 %app.str.data571, i64 %app.str.len570, i1 false)
  %b.app.nul609 = getelementptr i8, ptr %b.app.data607, i64 %sum575
  store i8 0, ptr %b.app.nul609, align 1
  %b.len.gep610 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load568, i32 0, i32 0
  store i64 %sum575, ptr %b.len.gep610, align 8
  store i1 true, ptr %"var.in_blk_comm'", align 1
  %var.load611 = load i64, ptr %"var.i'", align 8
  %addtmp612 = add i64 %var.load611, 2
  store i64 %addtmp612, ptr %"var.i'", align 8
  br label %choice.exit567

b.new.buf.len2598:                                ; preds = %abort.dead600, %b.grow2583
  %arena.cur601 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2602 = call ptr @dva_arena_alloc(ptr %arena.cur601, i64 %sum596)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2602, ptr align 1 %b.cur.data2594, i64 %b.cur.len2592, i1 false)
  %b.grow2.nul603 = getelementptr i8, ptr %b.new.buf2602, i64 %b.cur.len2592
  store i8 0, ptr %b.grow2.nul603, align 1
  %b.new.data2.gep604 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load568, i32 0, i32 1
  store ptr %b.new.buf2602, ptr %b.new.data2.gep604, align 8
  %b.new.cap2.gep605 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load568, i32 0, i32 2
  store i64 %b.new.cap590, ptr %b.new.cap2.gep605, align 8
  br label %b.grow_done585

str_overflow_abort599:                            ; preds = %b.grow2583
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead600:                                    ; No predecessors!
  br label %b.new.buf.len2598

choice.then615:                                   ; preds = %choice.else566
  %var.load618 = load i64, ptr %"var.i'", align 8
  %cmptmp619 = icmp sgt i64 %var.load618, 0
  br i1 %cmptmp619, label %choice.then620, label %choice.else621

choice.else616:                                   ; preds = %choice.else566
  %var.load831 = load i64, ptr %var.c, align 8
  %cmptmp832 = icmp eq i64 %var.load831, 34
  br i1 %cmptmp832, label %choice.then833, label %choice.else834

choice.exit617:                                   ; preds = %choice.exit835, %choice.exit683
  br label %choice.exit567

choice.then620:                                   ; preds = %choice.then615
  %var.load623 = load ptr, ptr %var.body, align 8
  %s.read.len624 = getelementptr inbounds { i64, ptr }, ptr %var.load623, i32 0, i32 0
  %s.read.len625 = load i64, ptr %s.read.len624, align 8
  %s.read.len626 = and i64 %s.read.len625, 281474976710655
  %s.read.data627 = getelementptr inbounds { i64, ptr }, ptr %var.load623, i32 0, i32 1
  %s.read.data628 = load ptr, ptr %s.read.data627, align 8
  %var.load629 = load i64, ptr %"var.i'", align 8
  %subtmp = sub i64 %var.load629, 1
  %idx.oob630 = icmp uge i64 %subtmp, %s.read.len626
  br i1 %idx.oob630, label %idx_oob632, label %idx_ok631

choice.else621:                                   ; preds = %choice.then615
  br label %choice.exit622

choice.exit622:                                   ; preds = %choice.else621, %idx_ok631
  %choice.res637 = phi i64 [ %s.byte.val636, %idx_ok631 ], [ 0, %choice.else621 ]
  store i64 %choice.res637, ptr %var.prev_b, align 8
  %b.load638 = load ptr, ptr %var.b, align 8
  %var.load639 = load i64, ptr %var.c, align 8
  %b.b.ge0640 = icmp sge i64 %var.load639, 0
  %b.b.le255641 = icmp sle i64 %var.load639, 255
  %b.byte.range642 = and i1 %b.b.ge0640, %b.b.le255641
  br i1 %b.byte.range642, label %b.byte_ok643, label %b.byte_err644

idx_ok631:                                        ; preds = %abort.dead633, %choice.then620
  %s.byte.gep634 = getelementptr i8, ptr %s.read.data628, i64 %subtmp
  %s.byte635 = load i8, ptr %s.byte.gep634, align 1
  %s.byte.val636 = zext i8 %s.byte635 to i64
  br label %choice.exit622

idx_oob632:                                       ; preds = %choice.then620
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead633:                                    ; No predecessors!
  br label %idx_ok631

b.byte_ok643:                                     ; preds = %abort.dead645, %choice.exit622
  %b.byte.i8646 = trunc i64 %var.load639 to i8
  %b.len647 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load638, i32 0, i32 0
  %b.len648 = load i64, ptr %b.len647, align 8
  %b.cap649 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load638, i32 0, i32 2
  %b.cap650 = load i64, ptr %b.cap649, align 8
  %b.data651 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load638, i32 0, i32 1
  %b.data652 = load ptr, ptr %b.data651, align 8
  %b.needs.grow653 = icmp eq i64 %b.len648, %b.cap650
  br i1 %b.needs.grow653, label %b.grow654, label %b.nogrow655

b.byte_err644:                                    ; preds = %choice.exit622
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead645:                                    ; No predecessors!
  br label %b.byte_ok643

b.grow654:                                        ; preds = %b.byte_ok643
  %b.cap2657 = mul i64 %b.cap650, 2
  %b.cap.small658 = icmp slt i64 %b.cap2657, 16
  %b.new.cap659 = select i1 %b.cap.small658, i64 16, i64 %b.cap2657
  %b.new.buf.len660 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap659, i64 1)
  %sum661 = extractvalue { i64, i1 } %b.new.buf.len660, 0
  %ovf662 = extractvalue { i64, i1 } %b.new.buf.len660, 1
  br i1 %ovf662, label %str_overflow_abort664, label %b.new.buf.len663

b.nogrow655:                                      ; preds = %b.byte_ok643
  br label %b.push_done656

b.push_done656:                                   ; preds = %b.nogrow655, %b.new.buf.len663
  %b.cur.data671 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load638, i32 0, i32 1
  %b.cur.data672 = load ptr, ptr %b.cur.data671, align 8
  %b.cur.len673 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load638, i32 0, i32 0
  %b.cur.len674 = load i64, ptr %b.cur.len673, align 8
  %b.byte.gep675 = getelementptr i8, ptr %b.cur.data672, i64 %b.cur.len674
  store i8 %b.byte.i8646, ptr %b.byte.gep675, align 1
  %b.next.len676 = add i64 %b.cur.len674, 1
  %b.nul677 = getelementptr i8, ptr %b.cur.data672, i64 %b.next.len676
  store i8 0, ptr %b.nul677, align 1
  %b.len.gep678 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load638, i32 0, i32 0
  store i64 %b.next.len676, ptr %b.len.gep678, align 8
  %var.load679 = load i64, ptr %var.prev_b, align 8
  %call.res680 = call i1 @"formatter::is_id_byte"(i64 %var.load679)
  br i1 %call.res680, label %choice.then681, label %choice.else682

b.new.buf.len663:                                 ; preds = %abort.dead665, %b.grow654
  %arena.cur666 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf667 = call ptr @dva_arena_alloc(ptr %arena.cur666, i64 %sum661)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf667, ptr align 1 %b.data652, i64 %b.len648, i1 false)
  %b.grow.nul668 = getelementptr i8, ptr %b.new.buf667, i64 %b.len648
  store i8 0, ptr %b.grow.nul668, align 1
  %b.new.data.gep669 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load638, i32 0, i32 1
  store ptr %b.new.buf667, ptr %b.new.data.gep669, align 8
  %b.new.cap.gep670 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load638, i32 0, i32 2
  store i64 %b.new.cap659, ptr %b.new.cap.gep670, align 8
  br label %b.push_done656

str_overflow_abort664:                            ; preds = %b.grow654
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead665:                                    ; No predecessors!
  br label %b.new.buf.len663

choice.then681:                                   ; preds = %b.push_done656
  %var.load684 = load i64, ptr %"var.i'", align 8
  %addtmp685 = add i64 %var.load684, 1
  store i64 %addtmp685, ptr %"var.i'", align 8
  br label %choice.exit683

choice.else682:                                   ; preds = %b.push_done656
  %var.load686 = load i64, ptr %var.c1, align 8
  %cmptmp687 = icmp eq i64 %var.load686, 92
  br i1 %cmptmp687, label %and.590.then, label %and.590.else

choice.exit683:                                   ; preds = %choice.exit694, %choice.then681
  br label %choice.exit617

and.590.then:                                     ; preds = %choice.else682
  %var.load688 = load i64, ptr %"var.i'", align 8
  %addtmp689 = add i64 %var.load688, 2
  %var.load690 = load i64, ptr %var.n, align 8
  %cmptmp691 = icmp slt i64 %addtmp689, %var.load690
  br label %and.590.exit

and.590.else:                                     ; preds = %choice.else682
  br label %and.590.exit

and.590.exit:                                     ; preds = %and.590.else, %and.590.then
  %and.590.phi = phi i1 [ %cmptmp691, %and.590.then ], [ %cmptmp687, %and.590.else ]
  br i1 %and.590.phi, label %choice.then692, label %choice.else693

choice.then692:                                   ; preds = %and.590.exit
  %b.load695 = load ptr, ptr %var.b, align 8
  %var.load696 = load i64, ptr %var.c1, align 8
  %b.b.ge0697 = icmp sge i64 %var.load696, 0
  %b.b.le255698 = icmp sle i64 %var.load696, 255
  %b.byte.range699 = and i1 %b.b.ge0697, %b.b.le255698
  br i1 %b.byte.range699, label %b.byte_ok700, label %b.byte_err701

choice.else693:                                   ; preds = %and.590.exit
  %var.load779 = load i64, ptr %"var.i'", align 8
  %addtmp780 = add i64 %var.load779, 1
  %var.load781 = load i64, ptr %var.n, align 8
  %cmptmp782 = icmp slt i64 %addtmp780, %var.load781
  br i1 %cmptmp782, label %choice.then783, label %choice.else784

choice.exit694:                                   ; preds = %choice.exit785, %b.push_done754
  br label %choice.exit683

b.byte_ok700:                                     ; preds = %abort.dead702, %choice.then692
  %b.byte.i8703 = trunc i64 %var.load696 to i8
  %b.len704 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load695, i32 0, i32 0
  %b.len705 = load i64, ptr %b.len704, align 8
  %b.cap706 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load695, i32 0, i32 2
  %b.cap707 = load i64, ptr %b.cap706, align 8
  %b.data708 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load695, i32 0, i32 1
  %b.data709 = load ptr, ptr %b.data708, align 8
  %b.needs.grow710 = icmp eq i64 %b.len705, %b.cap707
  br i1 %b.needs.grow710, label %b.grow711, label %b.nogrow712

b.byte_err701:                                    ; preds = %choice.then692
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead702:                                    ; No predecessors!
  br label %b.byte_ok700

b.grow711:                                        ; preds = %b.byte_ok700
  %b.cap2714 = mul i64 %b.cap707, 2
  %b.cap.small715 = icmp slt i64 %b.cap2714, 16
  %b.new.cap716 = select i1 %b.cap.small715, i64 16, i64 %b.cap2714
  %b.new.buf.len717 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap716, i64 1)
  %sum718 = extractvalue { i64, i1 } %b.new.buf.len717, 0
  %ovf719 = extractvalue { i64, i1 } %b.new.buf.len717, 1
  br i1 %ovf719, label %str_overflow_abort721, label %b.new.buf.len720

b.nogrow712:                                      ; preds = %b.byte_ok700
  br label %b.push_done713

b.push_done713:                                   ; preds = %b.nogrow712, %b.new.buf.len720
  %b.cur.data728 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load695, i32 0, i32 1
  %b.cur.data729 = load ptr, ptr %b.cur.data728, align 8
  %b.cur.len730 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load695, i32 0, i32 0
  %b.cur.len731 = load i64, ptr %b.cur.len730, align 8
  %b.byte.gep732 = getelementptr i8, ptr %b.cur.data729, i64 %b.cur.len731
  store i8 %b.byte.i8703, ptr %b.byte.gep732, align 1
  %b.next.len733 = add i64 %b.cur.len731, 1
  %b.nul734 = getelementptr i8, ptr %b.cur.data729, i64 %b.next.len733
  store i8 0, ptr %b.nul734, align 1
  %b.len.gep735 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load695, i32 0, i32 0
  store i64 %b.next.len733, ptr %b.len.gep735, align 8
  %b.load736 = load ptr, ptr %var.b, align 8
  %var.load737 = load i64, ptr %var.c2, align 8
  %b.b.ge0738 = icmp sge i64 %var.load737, 0
  %b.b.le255739 = icmp sle i64 %var.load737, 255
  %b.byte.range740 = and i1 %b.b.ge0738, %b.b.le255739
  br i1 %b.byte.range740, label %b.byte_ok741, label %b.byte_err742

b.new.buf.len720:                                 ; preds = %abort.dead722, %b.grow711
  %arena.cur723 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf724 = call ptr @dva_arena_alloc(ptr %arena.cur723, i64 %sum718)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf724, ptr align 1 %b.data709, i64 %b.len705, i1 false)
  %b.grow.nul725 = getelementptr i8, ptr %b.new.buf724, i64 %b.len705
  store i8 0, ptr %b.grow.nul725, align 1
  %b.new.data.gep726 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load695, i32 0, i32 1
  store ptr %b.new.buf724, ptr %b.new.data.gep726, align 8
  %b.new.cap.gep727 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load695, i32 0, i32 2
  store i64 %b.new.cap716, ptr %b.new.cap.gep727, align 8
  br label %b.push_done713

str_overflow_abort721:                            ; preds = %b.grow711
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead722:                                    ; No predecessors!
  br label %b.new.buf.len720

b.byte_ok741:                                     ; preds = %abort.dead743, %b.push_done713
  %b.byte.i8744 = trunc i64 %var.load737 to i8
  %b.len745 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load736, i32 0, i32 0
  %b.len746 = load i64, ptr %b.len745, align 8
  %b.cap747 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load736, i32 0, i32 2
  %b.cap748 = load i64, ptr %b.cap747, align 8
  %b.data749 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load736, i32 0, i32 1
  %b.data750 = load ptr, ptr %b.data749, align 8
  %b.needs.grow751 = icmp eq i64 %b.len746, %b.cap748
  br i1 %b.needs.grow751, label %b.grow752, label %b.nogrow753

b.byte_err742:                                    ; preds = %b.push_done713
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead743:                                    ; No predecessors!
  br label %b.byte_ok741

b.grow752:                                        ; preds = %b.byte_ok741
  %b.cap2755 = mul i64 %b.cap748, 2
  %b.cap.small756 = icmp slt i64 %b.cap2755, 16
  %b.new.cap757 = select i1 %b.cap.small756, i64 16, i64 %b.cap2755
  %b.new.buf.len758 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap757, i64 1)
  %sum759 = extractvalue { i64, i1 } %b.new.buf.len758, 0
  %ovf760 = extractvalue { i64, i1 } %b.new.buf.len758, 1
  br i1 %ovf760, label %str_overflow_abort762, label %b.new.buf.len761

b.nogrow753:                                      ; preds = %b.byte_ok741
  br label %b.push_done754

b.push_done754:                                   ; preds = %b.nogrow753, %b.new.buf.len761
  %b.cur.data769 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load736, i32 0, i32 1
  %b.cur.data770 = load ptr, ptr %b.cur.data769, align 8
  %b.cur.len771 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load736, i32 0, i32 0
  %b.cur.len772 = load i64, ptr %b.cur.len771, align 8
  %b.byte.gep773 = getelementptr i8, ptr %b.cur.data770, i64 %b.cur.len772
  store i8 %b.byte.i8744, ptr %b.byte.gep773, align 1
  %b.next.len774 = add i64 %b.cur.len772, 1
  %b.nul775 = getelementptr i8, ptr %b.cur.data770, i64 %b.next.len774
  store i8 0, ptr %b.nul775, align 1
  %b.len.gep776 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load736, i32 0, i32 0
  store i64 %b.next.len774, ptr %b.len.gep776, align 8
  %var.load777 = load i64, ptr %"var.i'", align 8
  %addtmp778 = add i64 %var.load777, 3
  store i64 %addtmp778, ptr %"var.i'", align 8
  br label %choice.exit694

b.new.buf.len761:                                 ; preds = %abort.dead763, %b.grow752
  %arena.cur764 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf765 = call ptr @dva_arena_alloc(ptr %arena.cur764, i64 %sum759)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf765, ptr align 1 %b.data750, i64 %b.len746, i1 false)
  %b.grow.nul766 = getelementptr i8, ptr %b.new.buf765, i64 %b.len746
  store i8 0, ptr %b.grow.nul766, align 1
  %b.new.data.gep767 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load736, i32 0, i32 1
  store ptr %b.new.buf765, ptr %b.new.data.gep767, align 8
  %b.new.cap.gep768 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load736, i32 0, i32 2
  store i64 %b.new.cap757, ptr %b.new.cap.gep768, align 8
  br label %b.push_done754

str_overflow_abort762:                            ; preds = %b.grow752
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead763:                                    ; No predecessors!
  br label %b.new.buf.len761

choice.then783:                                   ; preds = %choice.else693
  %b.load786 = load ptr, ptr %var.b, align 8
  %var.load787 = load i64, ptr %var.c1, align 8
  %b.b.ge0788 = icmp sge i64 %var.load787, 0
  %b.b.le255789 = icmp sle i64 %var.load787, 255
  %b.byte.range790 = and i1 %b.b.ge0788, %b.b.le255789
  br i1 %b.byte.range790, label %b.byte_ok791, label %b.byte_err792

choice.else784:                                   ; preds = %choice.else693
  %var.load829 = load i64, ptr %"var.i'", align 8
  %addtmp830 = add i64 %var.load829, 1
  store i64 %addtmp830, ptr %"var.i'", align 8
  br label %choice.exit785

choice.exit785:                                   ; preds = %choice.else784, %b.push_done804
  br label %choice.exit694

b.byte_ok791:                                     ; preds = %abort.dead793, %choice.then783
  %b.byte.i8794 = trunc i64 %var.load787 to i8
  %b.len795 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 0
  %b.len796 = load i64, ptr %b.len795, align 8
  %b.cap797 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 2
  %b.cap798 = load i64, ptr %b.cap797, align 8
  %b.data799 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 1
  %b.data800 = load ptr, ptr %b.data799, align 8
  %b.needs.grow801 = icmp eq i64 %b.len796, %b.cap798
  br i1 %b.needs.grow801, label %b.grow802, label %b.nogrow803

b.byte_err792:                                    ; preds = %choice.then783
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead793:                                    ; No predecessors!
  br label %b.byte_ok791

b.grow802:                                        ; preds = %b.byte_ok791
  %b.cap2805 = mul i64 %b.cap798, 2
  %b.cap.small806 = icmp slt i64 %b.cap2805, 16
  %b.new.cap807 = select i1 %b.cap.small806, i64 16, i64 %b.cap2805
  %b.new.buf.len808 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap807, i64 1)
  %sum809 = extractvalue { i64, i1 } %b.new.buf.len808, 0
  %ovf810 = extractvalue { i64, i1 } %b.new.buf.len808, 1
  br i1 %ovf810, label %str_overflow_abort812, label %b.new.buf.len811

b.nogrow803:                                      ; preds = %b.byte_ok791
  br label %b.push_done804

b.push_done804:                                   ; preds = %b.nogrow803, %b.new.buf.len811
  %b.cur.data819 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 1
  %b.cur.data820 = load ptr, ptr %b.cur.data819, align 8
  %b.cur.len821 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 0
  %b.cur.len822 = load i64, ptr %b.cur.len821, align 8
  %b.byte.gep823 = getelementptr i8, ptr %b.cur.data820, i64 %b.cur.len822
  store i8 %b.byte.i8794, ptr %b.byte.gep823, align 1
  %b.next.len824 = add i64 %b.cur.len822, 1
  %b.nul825 = getelementptr i8, ptr %b.cur.data820, i64 %b.next.len824
  store i8 0, ptr %b.nul825, align 1
  %b.len.gep826 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 0
  store i64 %b.next.len824, ptr %b.len.gep826, align 8
  %var.load827 = load i64, ptr %"var.i'", align 8
  %addtmp828 = add i64 %var.load827, 2
  store i64 %addtmp828, ptr %"var.i'", align 8
  br label %choice.exit785

b.new.buf.len811:                                 ; preds = %abort.dead813, %b.grow802
  %arena.cur814 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf815 = call ptr @dva_arena_alloc(ptr %arena.cur814, i64 %sum809)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf815, ptr align 1 %b.data800, i64 %b.len796, i1 false)
  %b.grow.nul816 = getelementptr i8, ptr %b.new.buf815, i64 %b.len796
  store i8 0, ptr %b.grow.nul816, align 1
  %b.new.data.gep817 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 1
  store ptr %b.new.buf815, ptr %b.new.data.gep817, align 8
  %b.new.cap.gep818 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 2
  store i64 %b.new.cap807, ptr %b.new.cap.gep818, align 8
  br label %b.push_done804

str_overflow_abort812:                            ; preds = %b.grow802
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead813:                                    ; No predecessors!
  br label %b.new.buf.len811

choice.then833:                                   ; preds = %choice.else616
  %var.load836 = load i64, ptr %var.c1, align 8
  %cmptmp837 = icmp eq i64 %var.load836, 34
  br i1 %cmptmp837, label %and.591.then, label %and.591.else

choice.else834:                                   ; preds = %choice.else616
  %var.load931 = load i64, ptr %var.c, align 8
  %val.match935 = icmp eq i64 %var.load931, 44
  %val.match936 = icmp eq i64 %var.load931, 59
  %case.or937 = or i1 %val.match935, %val.match936
  br i1 %case.or937, label %choice.case933, label %choice.next934

choice.exit835:                                   ; preds = %choice.exit941, %choice.exit842
  br label %choice.exit617

and.591.then:                                     ; preds = %choice.then833
  %var.load838 = load i64, ptr %var.c2, align 8
  %cmptmp839 = icmp eq i64 %var.load838, 34
  br label %and.591.exit

and.591.else:                                     ; preds = %choice.then833
  br label %and.591.exit

and.591.exit:                                     ; preds = %and.591.else, %and.591.then
  %and.591.phi = phi i1 [ %cmptmp839, %and.591.then ], [ %cmptmp837, %and.591.else ]
  br i1 %and.591.phi, label %choice.then840, label %choice.else841

choice.then840:                                   ; preds = %and.591.exit
  %b.load843 = load ptr, ptr %var.b, align 8
  %app.str.len844 = load i64, ptr @str.10.struct, align 8
  %app.str.len845 = and i64 %app.str.len844, 281474976710655
  %app.str.data846 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %b.app.cur.len847 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load843, i32 0, i32 0
  %b.app.cur.len848 = load i64, ptr %b.app.cur.len847, align 8
  %b.app.new.len849 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len848, i64 %app.str.len845)
  %sum850 = extractvalue { i64, i1 } %b.app.new.len849, 0
  %ovf851 = extractvalue { i64, i1 } %b.app.new.len849, 1
  br i1 %ovf851, label %str_overflow_abort853, label %b.app.new.len852

choice.else841:                                   ; preds = %and.591.exit
  %b.load888 = load ptr, ptr %var.b, align 8
  %var.load889 = load i64, ptr %var.c, align 8
  %b.b.ge0890 = icmp sge i64 %var.load889, 0
  %b.b.le255891 = icmp sle i64 %var.load889, 255
  %b.byte.range892 = and i1 %b.b.ge0890, %b.b.le255891
  br i1 %b.byte.range892, label %b.byte_ok893, label %b.byte_err894

choice.exit842:                                   ; preds = %b.push_done906, %b.grow_done860
  br label %choice.exit835

b.app.new.len852:                                 ; preds = %abort.dead854, %choice.then840
  %b.cap855 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load843, i32 0, i32 2
  %b.cap856 = load i64, ptr %b.cap855, align 8
  %b.need.grow857 = icmp slt i64 %b.cap856, %sum850
  br i1 %b.need.grow857, label %b.grow2858, label %b.nogrow2859

str_overflow_abort853:                            ; preds = %choice.then840
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead854:                                    ; No predecessors!
  br label %b.app.new.len852

b.grow2858:                                       ; preds = %b.app.new.len852
  %b.cap2861 = mul i64 %b.cap856, 2
  %b.cap.small862 = icmp slt i64 %b.cap2861, 16
  %b.cap.grow863 = select i1 %b.cap.small862, i64 16, i64 %b.cap2861
  %b.cap.need864 = icmp slt i64 %b.cap.grow863, %sum850
  %b.new.cap865 = select i1 %b.cap.need864, i64 %sum850, i64 %b.cap.grow863
  %b.cur.len2866 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load843, i32 0, i32 0
  %b.cur.len2867 = load i64, ptr %b.cur.len2866, align 8
  %b.cur.data2868 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load843, i32 0, i32 1
  %b.cur.data2869 = load ptr, ptr %b.cur.data2868, align 8
  %b.new.buf.len2870 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap865, i64 1)
  %sum871 = extractvalue { i64, i1 } %b.new.buf.len2870, 0
  %ovf872 = extractvalue { i64, i1 } %b.new.buf.len2870, 1
  br i1 %ovf872, label %str_overflow_abort874, label %b.new.buf.len2873

b.nogrow2859:                                     ; preds = %b.app.new.len852
  br label %b.grow_done860

b.grow_done860:                                   ; preds = %b.nogrow2859, %b.new.buf.len2873
  %b.app.data881 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load843, i32 0, i32 1
  %b.app.data882 = load ptr, ptr %b.app.data881, align 8
  %b.app.dst883 = getelementptr i8, ptr %b.app.data882, i64 %b.app.cur.len848
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst883, ptr align 1 %app.str.data846, i64 %app.str.len845, i1 false)
  %b.app.nul884 = getelementptr i8, ptr %b.app.data882, i64 %sum850
  store i8 0, ptr %b.app.nul884, align 1
  %b.len.gep885 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load843, i32 0, i32 0
  store i64 %sum850, ptr %b.len.gep885, align 8
  store i1 true, ptr %"var.in_str'", align 1
  store i1 true, ptr %"var.str_triple'", align 1
  %var.load886 = load i64, ptr %"var.i'", align 8
  %addtmp887 = add i64 %var.load886, 3
  store i64 %addtmp887, ptr %"var.i'", align 8
  br label %choice.exit842

b.new.buf.len2873:                                ; preds = %abort.dead875, %b.grow2858
  %arena.cur876 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2877 = call ptr @dva_arena_alloc(ptr %arena.cur876, i64 %sum871)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2877, ptr align 1 %b.cur.data2869, i64 %b.cur.len2867, i1 false)
  %b.grow2.nul878 = getelementptr i8, ptr %b.new.buf2877, i64 %b.cur.len2867
  store i8 0, ptr %b.grow2.nul878, align 1
  %b.new.data2.gep879 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load843, i32 0, i32 1
  store ptr %b.new.buf2877, ptr %b.new.data2.gep879, align 8
  %b.new.cap2.gep880 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load843, i32 0, i32 2
  store i64 %b.new.cap865, ptr %b.new.cap2.gep880, align 8
  br label %b.grow_done860

str_overflow_abort874:                            ; preds = %b.grow2858
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead875:                                    ; No predecessors!
  br label %b.new.buf.len2873

b.byte_ok893:                                     ; preds = %abort.dead895, %choice.else841
  %b.byte.i8896 = trunc i64 %var.load889 to i8
  %b.len897 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load888, i32 0, i32 0
  %b.len898 = load i64, ptr %b.len897, align 8
  %b.cap899 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load888, i32 0, i32 2
  %b.cap900 = load i64, ptr %b.cap899, align 8
  %b.data901 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load888, i32 0, i32 1
  %b.data902 = load ptr, ptr %b.data901, align 8
  %b.needs.grow903 = icmp eq i64 %b.len898, %b.cap900
  br i1 %b.needs.grow903, label %b.grow904, label %b.nogrow905

b.byte_err894:                                    ; preds = %choice.else841
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead895:                                    ; No predecessors!
  br label %b.byte_ok893

b.grow904:                                        ; preds = %b.byte_ok893
  %b.cap2907 = mul i64 %b.cap900, 2
  %b.cap.small908 = icmp slt i64 %b.cap2907, 16
  %b.new.cap909 = select i1 %b.cap.small908, i64 16, i64 %b.cap2907
  %b.new.buf.len910 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap909, i64 1)
  %sum911 = extractvalue { i64, i1 } %b.new.buf.len910, 0
  %ovf912 = extractvalue { i64, i1 } %b.new.buf.len910, 1
  br i1 %ovf912, label %str_overflow_abort914, label %b.new.buf.len913

b.nogrow905:                                      ; preds = %b.byte_ok893
  br label %b.push_done906

b.push_done906:                                   ; preds = %b.nogrow905, %b.new.buf.len913
  %b.cur.data921 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load888, i32 0, i32 1
  %b.cur.data922 = load ptr, ptr %b.cur.data921, align 8
  %b.cur.len923 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load888, i32 0, i32 0
  %b.cur.len924 = load i64, ptr %b.cur.len923, align 8
  %b.byte.gep925 = getelementptr i8, ptr %b.cur.data922, i64 %b.cur.len924
  store i8 %b.byte.i8896, ptr %b.byte.gep925, align 1
  %b.next.len926 = add i64 %b.cur.len924, 1
  %b.nul927 = getelementptr i8, ptr %b.cur.data922, i64 %b.next.len926
  store i8 0, ptr %b.nul927, align 1
  %b.len.gep928 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load888, i32 0, i32 0
  store i64 %b.next.len926, ptr %b.len.gep928, align 8
  store i1 true, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load929 = load i64, ptr %"var.i'", align 8
  %addtmp930 = add i64 %var.load929, 1
  store i64 %addtmp930, ptr %"var.i'", align 8
  br label %choice.exit842

b.new.buf.len913:                                 ; preds = %abort.dead915, %b.grow904
  %arena.cur916 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf917 = call ptr @dva_arena_alloc(ptr %arena.cur916, i64 %sum911)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf917, ptr align 1 %b.data902, i64 %b.len898, i1 false)
  %b.grow.nul918 = getelementptr i8, ptr %b.new.buf917, i64 %b.len898
  store i8 0, ptr %b.grow.nul918, align 1
  %b.new.data.gep919 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load888, i32 0, i32 1
  store ptr %b.new.buf917, ptr %b.new.data.gep919, align 8
  %b.new.cap.gep920 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load888, i32 0, i32 2
  store i64 %b.new.cap909, ptr %b.new.cap.gep920, align 8
  br label %b.push_done906

str_overflow_abort914:                            ; preds = %b.grow904
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead915:                                    ; No predecessors!
  br label %b.new.buf.len913

choice.exit932:                                   ; preds = %choice.next934, %choice.case933
  %choice.res938 = phi i1 [ true, %choice.case933 ], [ false, %choice.next934 ]
  br i1 %choice.res938, label %choice.then939, label %choice.else940

choice.case933:                                   ; preds = %choice.else834
  br label %choice.exit932

choice.next934:                                   ; preds = %choice.else834
  br label %choice.exit932

choice.then939:                                   ; preds = %choice.exit932
  %b.load942 = load ptr, ptr %var.b, align 8
  %var.load943 = load i64, ptr %var.c, align 8
  %b.b.ge0944 = icmp sge i64 %var.load943, 0
  %b.b.le255945 = icmp sle i64 %var.load943, 255
  %b.byte.range946 = and i1 %b.b.ge0944, %b.b.le255945
  br i1 %b.byte.range946, label %b.byte_ok947, label %b.byte_err948

choice.else940:                                   ; preds = %choice.exit932
  %var.load1046 = load i1, ptr %var.has_lead_guard, align 1
  br i1 %var.load1046, label %and.594.then, label %and.594.else

choice.exit941:                                   ; preds = %choice.exit1053, %choice.exit1008
  br label %choice.exit835

b.byte_ok947:                                     ; preds = %abort.dead949, %choice.then939
  %b.byte.i8950 = trunc i64 %var.load943 to i8
  %b.len951 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load942, i32 0, i32 0
  %b.len952 = load i64, ptr %b.len951, align 8
  %b.cap953 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load942, i32 0, i32 2
  %b.cap954 = load i64, ptr %b.cap953, align 8
  %b.data955 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load942, i32 0, i32 1
  %b.data956 = load ptr, ptr %b.data955, align 8
  %b.needs.grow957 = icmp eq i64 %b.len952, %b.cap954
  br i1 %b.needs.grow957, label %b.grow958, label %b.nogrow959

b.byte_err948:                                    ; preds = %choice.then939
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead949:                                    ; No predecessors!
  br label %b.byte_ok947

b.grow958:                                        ; preds = %b.byte_ok947
  %b.cap2961 = mul i64 %b.cap954, 2
  %b.cap.small962 = icmp slt i64 %b.cap2961, 16
  %b.new.cap963 = select i1 %b.cap.small962, i64 16, i64 %b.cap2961
  %b.new.buf.len964 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap963, i64 1)
  %sum965 = extractvalue { i64, i1 } %b.new.buf.len964, 0
  %ovf966 = extractvalue { i64, i1 } %b.new.buf.len964, 1
  br i1 %ovf966, label %str_overflow_abort968, label %b.new.buf.len967

b.nogrow959:                                      ; preds = %b.byte_ok947
  br label %b.push_done960

b.push_done960:                                   ; preds = %b.nogrow959, %b.new.buf.len967
  %b.cur.data975 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load942, i32 0, i32 1
  %b.cur.data976 = load ptr, ptr %b.cur.data975, align 8
  %b.cur.len977 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load942, i32 0, i32 0
  %b.cur.len978 = load i64, ptr %b.cur.len977, align 8
  %b.byte.gep979 = getelementptr i8, ptr %b.cur.data976, i64 %b.cur.len978
  store i8 %b.byte.i8950, ptr %b.byte.gep979, align 1
  %b.next.len980 = add i64 %b.cur.len978, 1
  %b.nul981 = getelementptr i8, ptr %b.cur.data976, i64 %b.next.len980
  store i8 0, ptr %b.nul981, align 1
  %b.len.gep982 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load942, i32 0, i32 0
  store i64 %b.next.len980, ptr %b.len.gep982, align 8
  %var.load983 = load i64, ptr %"var.i'", align 8
  %addtmp984 = add i64 %var.load983, 1
  %var.load985 = load i64, ptr %var.n, align 8
  %cmptmp986 = icmp slt i64 %addtmp984, %var.load985
  br i1 %cmptmp986, label %and.592.then, label %and.592.else

b.new.buf.len967:                                 ; preds = %abort.dead969, %b.grow958
  %arena.cur970 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf971 = call ptr @dva_arena_alloc(ptr %arena.cur970, i64 %sum965)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf971, ptr align 1 %b.data956, i64 %b.len952, i1 false)
  %b.grow.nul972 = getelementptr i8, ptr %b.new.buf971, i64 %b.len952
  store i8 0, ptr %b.grow.nul972, align 1
  %b.new.data.gep973 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load942, i32 0, i32 1
  store ptr %b.new.buf971, ptr %b.new.data.gep973, align 8
  %b.new.cap.gep974 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load942, i32 0, i32 2
  store i64 %b.new.cap963, ptr %b.new.cap.gep974, align 8
  br label %b.push_done960

str_overflow_abort968:                            ; preds = %b.grow958
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead969:                                    ; No predecessors!
  br label %b.new.buf.len967

and.592.then:                                     ; preds = %b.push_done960
  %var.load987 = load i64, ptr %var.c1, align 8
  %val.match991 = icmp eq i64 %var.load987, 32
  %val.match992 = icmp eq i64 %var.load987, 9
  %case.or993 = or i1 %val.match991, %val.match992
  %val.match994 = icmp eq i64 %var.load987, 41
  %case.or995 = or i1 %case.or993, %val.match994
  %val.match996 = icmp eq i64 %var.load987, 93
  %case.or997 = or i1 %case.or995, %val.match996
  %val.match998 = icmp eq i64 %var.load987, 125
  %case.or999 = or i1 %case.or997, %val.match998
  %val.match1000 = icmp eq i64 %var.load987, 44
  %case.or1001 = or i1 %case.or999, %val.match1000
  %val.match1002 = icmp eq i64 %var.load987, 59
  %case.or1003 = or i1 %case.or1001, %val.match1002
  br i1 %case.or1003, label %choice.case989, label %choice.next990

and.592.else:                                     ; preds = %b.push_done960
  br label %and.592.exit

and.592.exit:                                     ; preds = %and.592.else, %choice.exit988
  %and.592.phi = phi i1 [ %nottmp1005, %choice.exit988 ], [ %cmptmp986, %and.592.else ]
  store i1 %and.592.phi, ptr %var.need_sp, align 1
  %var.load1006 = load i1, ptr %var.need_sp, align 1
  br i1 %var.load1006, label %choice.then1007, label %choice.exit1008

choice.exit988:                                   ; preds = %choice.next990, %choice.case989
  %choice.res1004 = phi i1 [ true, %choice.case989 ], [ false, %choice.next990 ]
  %nottmp1005 = xor i1 %choice.res1004, true
  br label %and.592.exit

choice.case989:                                   ; preds = %and.592.then
  br label %choice.exit988

choice.next990:                                   ; preds = %and.592.then
  br label %choice.exit988

choice.then1007:                                  ; preds = %and.592.exit
  %b.load1009 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1009, i32 0, i32 0
  %b.rn.cur.len1010 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1010, i64 1)
  %sum1011 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf1012 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf1012, label %str_overflow_abort1014, label %b.rn.new.len1013

choice.exit1008:                                  ; preds = %br.done.593, %and.592.exit
  %var.load1044 = load i64, ptr %"var.i'", align 8
  %addtmp1045 = add i64 %var.load1044, 1
  store i64 %addtmp1045, ptr %"var.i'", align 8
  br label %choice.exit941

b.rn.new.len1013:                                 ; preds = %abort.dead1015, %choice.then1007
  %b.cap1016 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1009, i32 0, i32 2
  %b.cap1017 = load i64, ptr %b.cap1016, align 8
  %b.need.grow1018 = icmp slt i64 %b.cap1017, %sum1011
  br i1 %b.need.grow1018, label %b.grow21019, label %b.nogrow21020

str_overflow_abort1014:                           ; preds = %choice.then1007
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1015:                                   ; No predecessors!
  br label %b.rn.new.len1013

b.grow21019:                                      ; preds = %b.rn.new.len1013
  %b.cap21022 = mul i64 %b.cap1017, 2
  %b.cap.small1023 = icmp slt i64 %b.cap21022, 16
  %b.cap.grow1024 = select i1 %b.cap.small1023, i64 16, i64 %b.cap21022
  %b.cap.need1025 = icmp slt i64 %b.cap.grow1024, %sum1011
  %b.new.cap1026 = select i1 %b.cap.need1025, i64 %sum1011, i64 %b.cap.grow1024
  %b.cur.len21027 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1009, i32 0, i32 0
  %b.cur.len21028 = load i64, ptr %b.cur.len21027, align 8
  %b.cur.data21029 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1009, i32 0, i32 1
  %b.cur.data21030 = load ptr, ptr %b.cur.data21029, align 8
  %b.new.buf.len21031 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1026, i64 1)
  %sum1032 = extractvalue { i64, i1 } %b.new.buf.len21031, 0
  %ovf1033 = extractvalue { i64, i1 } %b.new.buf.len21031, 1
  br i1 %ovf1033, label %str_overflow_abort1035, label %b.new.buf.len21034

b.nogrow21020:                                    ; preds = %b.rn.new.len1013
  br label %b.grow_done1021

b.grow_done1021:                                  ; preds = %b.nogrow21020, %b.new.buf.len21034
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1009, i32 0, i32 1
  %b.rn.data1042 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data1042, i64 %b.rn.cur.len1010
  br i1 true, label %br.b1.593, label %br.c2.593

b.new.buf.len21034:                               ; preds = %abort.dead1036, %b.grow21019
  %arena.cur1037 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21038 = call ptr @dva_arena_alloc(ptr %arena.cur1037, i64 %sum1032)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21038, ptr align 1 %b.cur.data21030, i64 %b.cur.len21028, i1 false)
  %b.grow2.nul1039 = getelementptr i8, ptr %b.new.buf21038, i64 %b.cur.len21028
  store i8 0, ptr %b.grow2.nul1039, align 1
  %b.new.data2.gep1040 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1009, i32 0, i32 1
  store ptr %b.new.buf21038, ptr %b.new.data2.gep1040, align 8
  %b.new.cap2.gep1041 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1009, i32 0, i32 2
  store i64 %b.new.cap1026, ptr %b.new.cap2.gep1041, align 8
  br label %b.grow_done1021

str_overflow_abort1035:                           ; preds = %b.grow21019
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1036:                                   ; No predecessors!
  br label %b.new.buf.len21034

br.b1.593:                                        ; preds = %b.grow_done1021
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.593

br.c2.593:                                        ; preds = %b.grow_done1021
  br i1 true, label %br.b2.593, label %br.c3.593

br.b2.593:                                        ; preds = %br.c2.593
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.593

br.c3.593:                                        ; preds = %br.c2.593
  br i1 true, label %br.b3.593, label %br.b4.593

br.b3.593:                                        ; preds = %br.c3.593
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.593

br.b4.593:                                        ; preds = %br.c3.593
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.593

br.done.593:                                      ; preds = %br.b4.593, %br.b3.593, %br.b2.593, %br.b1.593
  %br.nul = getelementptr i8, ptr %b.rn.data1042, i64 %sum1011
  store i8 0, ptr %br.nul, align 1
  %b.len.gep1043 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1009, i32 0, i32 0
  store i64 %sum1011, ptr %b.len.gep1043, align 8
  br label %choice.exit1008

and.594.then:                                     ; preds = %choice.else940
  %var.load1047 = load i1, ptr %"var.guard_closed'", align 1
  %nottmp1048 = xor i1 %var.load1047, true
  br label %and.594.exit

and.594.else:                                     ; preds = %choice.else940
  br label %and.594.exit

and.594.exit:                                     ; preds = %and.594.else, %and.594.then
  %and.594.phi = phi i1 [ %nottmp1048, %and.594.then ], [ %var.load1046, %and.594.else ]
  br i1 %and.594.phi, label %and.595.then, label %and.595.else

and.595.then:                                     ; preds = %and.594.exit
  %var.load1049 = load i64, ptr %var.c, align 8
  %cmptmp1050 = icmp eq i64 %var.load1049, 91
  br label %and.595.exit

and.595.else:                                     ; preds = %and.594.exit
  br label %and.595.exit

and.595.exit:                                     ; preds = %and.595.else, %and.595.then
  %and.595.phi = phi i1 [ %cmptmp1050, %and.595.then ], [ %and.594.phi, %and.595.else ]
  br i1 %and.595.phi, label %choice.then1051, label %choice.else1052

choice.then1051:                                  ; preds = %and.595.exit
  %var.load1054 = load i64, ptr %"var.bracket_depth'", align 8
  %addtmp1055 = add i64 %var.load1054, 1
  store i64 %addtmp1055, ptr %"var.bracket_depth'", align 8
  %b.load1056 = load ptr, ptr %var.b, align 8
  %var.load1057 = load i64, ptr %var.c, align 8
  %b.b.ge01058 = icmp sge i64 %var.load1057, 0
  %b.b.le2551059 = icmp sle i64 %var.load1057, 255
  %b.byte.range1060 = and i1 %b.b.ge01058, %b.b.le2551059
  br i1 %b.byte.range1060, label %b.byte_ok1061, label %b.byte_err1062

choice.else1052:                                  ; preds = %and.595.exit
  %var.load1099 = load i1, ptr %var.has_lead_guard, align 1
  br i1 %var.load1099, label %and.596.then, label %and.596.else

choice.exit1053:                                  ; preds = %choice.exit1106, %b.push_done1074
  br label %choice.exit941

b.byte_ok1061:                                    ; preds = %abort.dead1063, %choice.then1051
  %b.byte.i81064 = trunc i64 %var.load1057 to i8
  %b.len1065 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1056, i32 0, i32 0
  %b.len1066 = load i64, ptr %b.len1065, align 8
  %b.cap1067 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1056, i32 0, i32 2
  %b.cap1068 = load i64, ptr %b.cap1067, align 8
  %b.data1069 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1056, i32 0, i32 1
  %b.data1070 = load ptr, ptr %b.data1069, align 8
  %b.needs.grow1071 = icmp eq i64 %b.len1066, %b.cap1068
  br i1 %b.needs.grow1071, label %b.grow1072, label %b.nogrow1073

b.byte_err1062:                                   ; preds = %choice.then1051
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead1063:                                   ; No predecessors!
  br label %b.byte_ok1061

b.grow1072:                                       ; preds = %b.byte_ok1061
  %b.cap21075 = mul i64 %b.cap1068, 2
  %b.cap.small1076 = icmp slt i64 %b.cap21075, 16
  %b.new.cap1077 = select i1 %b.cap.small1076, i64 16, i64 %b.cap21075
  %b.new.buf.len1078 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1077, i64 1)
  %sum1079 = extractvalue { i64, i1 } %b.new.buf.len1078, 0
  %ovf1080 = extractvalue { i64, i1 } %b.new.buf.len1078, 1
  br i1 %ovf1080, label %str_overflow_abort1082, label %b.new.buf.len1081

b.nogrow1073:                                     ; preds = %b.byte_ok1061
  br label %b.push_done1074

b.push_done1074:                                  ; preds = %b.nogrow1073, %b.new.buf.len1081
  %b.cur.data1089 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1056, i32 0, i32 1
  %b.cur.data1090 = load ptr, ptr %b.cur.data1089, align 8
  %b.cur.len1091 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1056, i32 0, i32 0
  %b.cur.len1092 = load i64, ptr %b.cur.len1091, align 8
  %b.byte.gep1093 = getelementptr i8, ptr %b.cur.data1090, i64 %b.cur.len1092
  store i8 %b.byte.i81064, ptr %b.byte.gep1093, align 1
  %b.next.len1094 = add i64 %b.cur.len1092, 1
  %b.nul1095 = getelementptr i8, ptr %b.cur.data1090, i64 %b.next.len1094
  store i8 0, ptr %b.nul1095, align 1
  %b.len.gep1096 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1056, i32 0, i32 0
  store i64 %b.next.len1094, ptr %b.len.gep1096, align 8
  %var.load1097 = load i64, ptr %"var.i'", align 8
  %addtmp1098 = add i64 %var.load1097, 1
  store i64 %addtmp1098, ptr %"var.i'", align 8
  br label %choice.exit1053

b.new.buf.len1081:                                ; preds = %abort.dead1083, %b.grow1072
  %arena.cur1084 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf1085 = call ptr @dva_arena_alloc(ptr %arena.cur1084, i64 %sum1079)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1085, ptr align 1 %b.data1070, i64 %b.len1066, i1 false)
  %b.grow.nul1086 = getelementptr i8, ptr %b.new.buf1085, i64 %b.len1066
  store i8 0, ptr %b.grow.nul1086, align 1
  %b.new.data.gep1087 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1056, i32 0, i32 1
  store ptr %b.new.buf1085, ptr %b.new.data.gep1087, align 8
  %b.new.cap.gep1088 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1056, i32 0, i32 2
  store i64 %b.new.cap1077, ptr %b.new.cap.gep1088, align 8
  br label %b.push_done1074

str_overflow_abort1082:                           ; preds = %b.grow1072
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1083:                                   ; No predecessors!
  br label %b.new.buf.len1081

and.596.then:                                     ; preds = %choice.else1052
  %var.load1100 = load i1, ptr %"var.guard_closed'", align 1
  %nottmp1101 = xor i1 %var.load1100, true
  br label %and.596.exit

and.596.else:                                     ; preds = %choice.else1052
  br label %and.596.exit

and.596.exit:                                     ; preds = %and.596.else, %and.596.then
  %and.596.phi = phi i1 [ %nottmp1101, %and.596.then ], [ %var.load1099, %and.596.else ]
  br i1 %and.596.phi, label %and.597.then, label %and.597.else

and.597.then:                                     ; preds = %and.596.exit
  %var.load1102 = load i64, ptr %var.c, align 8
  %cmptmp1103 = icmp eq i64 %var.load1102, 93
  br label %and.597.exit

and.597.else:                                     ; preds = %and.596.exit
  br label %and.597.exit

and.597.exit:                                     ; preds = %and.597.else, %and.597.then
  %and.597.phi = phi i1 [ %cmptmp1103, %and.597.then ], [ %and.596.phi, %and.597.else ]
  br i1 %and.597.phi, label %choice.then1104, label %choice.else1105

choice.then1104:                                  ; preds = %and.597.exit
  %var.load1107 = load i64, ptr %"var.bracket_depth'", align 8
  %subtmp1108 = sub i64 %var.load1107, 1
  store i64 %subtmp1108, ptr %"var.bracket_depth'", align 8
  %b.load1109 = load ptr, ptr %var.b, align 8
  %var.load1110 = load i64, ptr %var.c, align 8
  %b.b.ge01111 = icmp sge i64 %var.load1110, 0
  %b.b.le2551112 = icmp sle i64 %var.load1110, 255
  %b.byte.range1113 = and i1 %b.b.ge01111, %b.b.le2551112
  br i1 %b.byte.range1113, label %b.byte_ok1114, label %b.byte_err1115

choice.else1105:                                  ; preds = %and.597.exit
  %var.load1229 = load i64, ptr %"var.i'", align 8
  %cmptmp1230 = icmp sgt i64 %var.load1229, 0
  br i1 %cmptmp1230, label %choice.then1231, label %choice.else1232

choice.exit1106:                                  ; preds = %choice.exit1291, %choice.exit1153
  br label %choice.exit1053

b.byte_ok1114:                                    ; preds = %abort.dead1116, %choice.then1104
  %b.byte.i81117 = trunc i64 %var.load1110 to i8
  %b.len1118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1109, i32 0, i32 0
  %b.len1119 = load i64, ptr %b.len1118, align 8
  %b.cap1120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1109, i32 0, i32 2
  %b.cap1121 = load i64, ptr %b.cap1120, align 8
  %b.data1122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1109, i32 0, i32 1
  %b.data1123 = load ptr, ptr %b.data1122, align 8
  %b.needs.grow1124 = icmp eq i64 %b.len1119, %b.cap1121
  br i1 %b.needs.grow1124, label %b.grow1125, label %b.nogrow1126

b.byte_err1115:                                   ; preds = %choice.then1104
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead1116:                                   ; No predecessors!
  br label %b.byte_ok1114

b.grow1125:                                       ; preds = %b.byte_ok1114
  %b.cap21128 = mul i64 %b.cap1121, 2
  %b.cap.small1129 = icmp slt i64 %b.cap21128, 16
  %b.new.cap1130 = select i1 %b.cap.small1129, i64 16, i64 %b.cap21128
  %b.new.buf.len1131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1130, i64 1)
  %sum1132 = extractvalue { i64, i1 } %b.new.buf.len1131, 0
  %ovf1133 = extractvalue { i64, i1 } %b.new.buf.len1131, 1
  br i1 %ovf1133, label %str_overflow_abort1135, label %b.new.buf.len1134

b.nogrow1126:                                     ; preds = %b.byte_ok1114
  br label %b.push_done1127

b.push_done1127:                                  ; preds = %b.nogrow1126, %b.new.buf.len1134
  %b.cur.data1142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1109, i32 0, i32 1
  %b.cur.data1143 = load ptr, ptr %b.cur.data1142, align 8
  %b.cur.len1144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1109, i32 0, i32 0
  %b.cur.len1145 = load i64, ptr %b.cur.len1144, align 8
  %b.byte.gep1146 = getelementptr i8, ptr %b.cur.data1143, i64 %b.cur.len1145
  store i8 %b.byte.i81117, ptr %b.byte.gep1146, align 1
  %b.next.len1147 = add i64 %b.cur.len1145, 1
  %b.nul1148 = getelementptr i8, ptr %b.cur.data1143, i64 %b.next.len1147
  store i8 0, ptr %b.nul1148, align 1
  %b.len.gep1149 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1109, i32 0, i32 0
  store i64 %b.next.len1147, ptr %b.len.gep1149, align 8
  %var.load1150 = load i64, ptr %"var.bracket_depth'", align 8
  %cmptmp1151 = icmp sle i64 %var.load1150, 0
  br i1 %cmptmp1151, label %choice.then1152, label %choice.exit1153

b.new.buf.len1134:                                ; preds = %abort.dead1136, %b.grow1125
  %arena.cur1137 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf1138 = call ptr @dva_arena_alloc(ptr %arena.cur1137, i64 %sum1132)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1138, ptr align 1 %b.data1123, i64 %b.len1119, i1 false)
  %b.grow.nul1139 = getelementptr i8, ptr %b.new.buf1138, i64 %b.len1119
  store i8 0, ptr %b.grow.nul1139, align 1
  %b.new.data.gep1140 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1109, i32 0, i32 1
  store ptr %b.new.buf1138, ptr %b.new.data.gep1140, align 8
  %b.new.cap.gep1141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1109, i32 0, i32 2
  store i64 %b.new.cap1130, ptr %b.new.cap.gep1141, align 8
  br label %b.push_done1127

str_overflow_abort1135:                           ; preds = %b.grow1125
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1136:                                   ; No predecessors!
  br label %b.new.buf.len1134

choice.then1152:                                  ; preds = %b.push_done1127
  store i1 true, ptr %"var.guard_closed'", align 1
  %var.load1154 = load i64, ptr %"var.i'", align 8
  %addtmp1155 = add i64 %var.load1154, 1
  %var.load1156 = load i64, ptr %var.n, align 8
  %cmptmp1157 = icmp slt i64 %addtmp1155, %var.load1156
  br i1 %cmptmp1157, label %and.598.then, label %and.598.else

choice.exit1153:                                  ; preds = %choice.exit1180, %b.push_done1127
  %var.load1227 = load i64, ptr %"var.i'", align 8
  %addtmp1228 = add i64 %var.load1227, 1
  store i64 %addtmp1228, ptr %"var.i'", align 8
  br label %choice.exit1106

and.598.then:                                     ; preds = %choice.then1152
  %var.load1158 = load i64, ptr %var.c1, align 8
  %val.match1162 = icmp eq i64 %var.load1158, 32
  %val.match1163 = icmp eq i64 %var.load1158, 9
  %case.or1164 = or i1 %val.match1162, %val.match1163
  %val.match1165 = icmp eq i64 %var.load1158, 41
  %case.or1166 = or i1 %case.or1164, %val.match1165
  %val.match1167 = icmp eq i64 %var.load1158, 93
  %case.or1168 = or i1 %case.or1166, %val.match1167
  %val.match1169 = icmp eq i64 %var.load1158, 125
  %case.or1170 = or i1 %case.or1168, %val.match1169
  %val.match1171 = icmp eq i64 %var.load1158, 44
  %case.or1172 = or i1 %case.or1170, %val.match1171
  %val.match1173 = icmp eq i64 %var.load1158, 59
  %case.or1174 = or i1 %case.or1172, %val.match1173
  %val.match1175 = icmp eq i64 %var.load1158, 46
  %case.or1176 = or i1 %case.or1174, %val.match1175
  br i1 %case.or1176, label %choice.case1160, label %choice.next1161

and.598.else:                                     ; preds = %choice.then1152
  br label %and.598.exit

and.598.exit:                                     ; preds = %and.598.else, %choice.exit1159
  %and.598.phi = phi i1 [ %nottmp1178, %choice.exit1159 ], [ %cmptmp1157, %and.598.else ]
  br i1 %and.598.phi, label %choice.then1179, label %choice.exit1180

choice.exit1159:                                  ; preds = %choice.next1161, %choice.case1160
  %choice.res1177 = phi i1 [ true, %choice.case1160 ], [ false, %choice.next1161 ]
  %nottmp1178 = xor i1 %choice.res1177, true
  br label %and.598.exit

choice.case1160:                                  ; preds = %and.598.then
  br label %choice.exit1159

choice.next1161:                                  ; preds = %and.598.then
  br label %choice.exit1159

choice.then1179:                                  ; preds = %and.598.exit
  %b.load1181 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len1182 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1181, i32 0, i32 0
  %b.rn.cur.len1183 = load i64, ptr %b.rn.cur.len1182, align 8
  %b.rn.new.len1184 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1183, i64 1)
  %sum1185 = extractvalue { i64, i1 } %b.rn.new.len1184, 0
  %ovf1186 = extractvalue { i64, i1 } %b.rn.new.len1184, 1
  br i1 %ovf1186, label %str_overflow_abort1188, label %b.rn.new.len1187

choice.exit1180:                                  ; preds = %br.done.599, %and.598.exit
  br label %choice.exit1153

b.rn.new.len1187:                                 ; preds = %abort.dead1189, %choice.then1179
  %b.cap1190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1181, i32 0, i32 2
  %b.cap1191 = load i64, ptr %b.cap1190, align 8
  %b.need.grow1192 = icmp slt i64 %b.cap1191, %sum1185
  br i1 %b.need.grow1192, label %b.grow21193, label %b.nogrow21194

str_overflow_abort1188:                           ; preds = %choice.then1179
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1189:                                   ; No predecessors!
  br label %b.rn.new.len1187

b.grow21193:                                      ; preds = %b.rn.new.len1187
  %b.cap21196 = mul i64 %b.cap1191, 2
  %b.cap.small1197 = icmp slt i64 %b.cap21196, 16
  %b.cap.grow1198 = select i1 %b.cap.small1197, i64 16, i64 %b.cap21196
  %b.cap.need1199 = icmp slt i64 %b.cap.grow1198, %sum1185
  %b.new.cap1200 = select i1 %b.cap.need1199, i64 %sum1185, i64 %b.cap.grow1198
  %b.cur.len21201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1181, i32 0, i32 0
  %b.cur.len21202 = load i64, ptr %b.cur.len21201, align 8
  %b.cur.data21203 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1181, i32 0, i32 1
  %b.cur.data21204 = load ptr, ptr %b.cur.data21203, align 8
  %b.new.buf.len21205 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1200, i64 1)
  %sum1206 = extractvalue { i64, i1 } %b.new.buf.len21205, 0
  %ovf1207 = extractvalue { i64, i1 } %b.new.buf.len21205, 1
  br i1 %ovf1207, label %str_overflow_abort1209, label %b.new.buf.len21208

b.nogrow21194:                                    ; preds = %b.rn.new.len1187
  br label %b.grow_done1195

b.grow_done1195:                                  ; preds = %b.nogrow21194, %b.new.buf.len21208
  %b.rn.data1216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1181, i32 0, i32 1
  %b.rn.data1217 = load ptr, ptr %b.rn.data1216, align 8
  %b.rn.dst1218 = getelementptr i8, ptr %b.rn.data1217, i64 %b.rn.cur.len1183
  br i1 true, label %br.b1.599, label %br.c2.599

b.new.buf.len21208:                               ; preds = %abort.dead1210, %b.grow21193
  %arena.cur1211 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21212 = call ptr @dva_arena_alloc(ptr %arena.cur1211, i64 %sum1206)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21212, ptr align 1 %b.cur.data21204, i64 %b.cur.len21202, i1 false)
  %b.grow2.nul1213 = getelementptr i8, ptr %b.new.buf21212, i64 %b.cur.len21202
  store i8 0, ptr %b.grow2.nul1213, align 1
  %b.new.data2.gep1214 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1181, i32 0, i32 1
  store ptr %b.new.buf21212, ptr %b.new.data2.gep1214, align 8
  %b.new.cap2.gep1215 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1181, i32 0, i32 2
  store i64 %b.new.cap1200, ptr %b.new.cap2.gep1215, align 8
  br label %b.grow_done1195

str_overflow_abort1209:                           ; preds = %b.grow21193
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1210:                                   ; No predecessors!
  br label %b.new.buf.len21208

br.b1.599:                                        ; preds = %b.grow_done1195
  store i8 32, ptr %b.rn.dst1218, align 1
  br label %br.done.599

br.c2.599:                                        ; preds = %b.grow_done1195
  br i1 true, label %br.b2.599, label %br.c3.599

br.b2.599:                                        ; preds = %br.c2.599
  store i8 -64, ptr %b.rn.dst1218, align 1
  %br.dst11219 = getelementptr i8, ptr %b.rn.dst1218, i64 1
  store i8 -96, ptr %br.dst11219, align 1
  br label %br.done.599

br.c3.599:                                        ; preds = %br.c2.599
  br i1 true, label %br.b3.599, label %br.b4.599

br.b3.599:                                        ; preds = %br.c3.599
  store i8 -32, ptr %b.rn.dst1218, align 1
  %br.dst1.31220 = getelementptr i8, ptr %b.rn.dst1218, i64 1
  store i8 -128, ptr %br.dst1.31220, align 1
  %br.dst2.31221 = getelementptr i8, ptr %b.rn.dst1218, i64 2
  store i8 -96, ptr %br.dst2.31221, align 1
  br label %br.done.599

br.b4.599:                                        ; preds = %br.c3.599
  store i8 -16, ptr %b.rn.dst1218, align 1
  %br.dst1.41222 = getelementptr i8, ptr %b.rn.dst1218, i64 1
  store i8 -128, ptr %br.dst1.41222, align 1
  %br.dst2.41223 = getelementptr i8, ptr %b.rn.dst1218, i64 2
  store i8 -128, ptr %br.dst2.41223, align 1
  %br.dst3.41224 = getelementptr i8, ptr %b.rn.dst1218, i64 3
  store i8 -96, ptr %br.dst3.41224, align 1
  br label %br.done.599

br.done.599:                                      ; preds = %br.b4.599, %br.b3.599, %br.b2.599, %br.b1.599
  %br.nul1225 = getelementptr i8, ptr %b.rn.data1217, i64 %sum1185
  store i8 0, ptr %br.nul1225, align 1
  %b.len.gep1226 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1181, i32 0, i32 0
  store i64 %sum1185, ptr %b.len.gep1226, align 8
  br label %choice.exit1180

choice.then1231:                                  ; preds = %choice.else1105
  %var.load1234 = load ptr, ptr %var.body, align 8
  %s.read.len1235 = getelementptr inbounds { i64, ptr }, ptr %var.load1234, i32 0, i32 0
  %s.read.len1236 = load i64, ptr %s.read.len1235, align 8
  %s.read.len1237 = and i64 %s.read.len1236, 281474976710655
  %s.read.data1238 = getelementptr inbounds { i64, ptr }, ptr %var.load1234, i32 0, i32 1
  %s.read.data1239 = load ptr, ptr %s.read.data1238, align 8
  %var.load1240 = load i64, ptr %"var.i'", align 8
  %subtmp1241 = sub i64 %var.load1240, 1
  %idx.oob1242 = icmp uge i64 %subtmp1241, %s.read.len1237
  br i1 %idx.oob1242, label %idx_oob1244, label %idx_ok1243

choice.else1232:                                  ; preds = %choice.else1105
  br label %choice.exit1233

choice.exit1233:                                  ; preds = %choice.else1232, %idx_ok1243
  %choice.res1249 = phi i64 [ %s.byte.val1248, %idx_ok1243 ], [ 0, %choice.else1232 ]
  store i64 %choice.res1249, ptr %var.prev_c, align 8
  %var.load1250 = load i64, ptr %var.c, align 8
  %cmptmp1251 = icmp eq i64 %var.load1250, 58
  br i1 %cmptmp1251, label %and.600.then, label %and.600.else

idx_ok1243:                                       ; preds = %abort.dead1245, %choice.then1231
  %s.byte.gep1246 = getelementptr i8, ptr %s.read.data1239, i64 %subtmp1241
  %s.byte1247 = load i8, ptr %s.byte.gep1246, align 1
  %s.byte.val1248 = zext i8 %s.byte1247 to i64
  br label %choice.exit1233

idx_oob1244:                                      ; preds = %choice.then1231
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead1245:                                   ; No predecessors!
  br label %idx_ok1243

and.600.then:                                     ; preds = %choice.exit1233
  %var.load1252 = load i64, ptr %var.prev_c, align 8
  %val.match1256 = icmp eq i64 %var.load1252, 58
  %val.match1257 = icmp eq i64 %var.load1252, 45
  %case.or1258 = or i1 %val.match1256, %val.match1257
  %val.match1259 = icmp eq i64 %var.load1252, 32
  %case.or1260 = or i1 %case.or1258, %val.match1259
  %val.match1261 = icmp eq i64 %var.load1252, 9
  %case.or1262 = or i1 %case.or1260, %val.match1261
  br i1 %case.or1262, label %choice.case1254, label %choice.next1255

and.600.else:                                     ; preds = %choice.exit1233
  br label %and.600.exit

and.600.exit:                                     ; preds = %and.600.else, %choice.exit1253
  %and.600.phi = phi i1 [ %nottmp1264, %choice.exit1253 ], [ %cmptmp1251, %and.600.else ]
  br i1 %and.600.phi, label %and.601.then, label %and.601.else

choice.exit1253:                                  ; preds = %choice.next1255, %choice.case1254
  %choice.res1263 = phi i1 [ true, %choice.case1254 ], [ false, %choice.next1255 ]
  %nottmp1264 = xor i1 %choice.res1263, true
  br label %and.600.exit

choice.case1254:                                  ; preds = %and.600.then
  br label %choice.exit1253

choice.next1255:                                  ; preds = %and.600.then
  br label %choice.exit1253

and.601.then:                                     ; preds = %and.600.exit
  %var.load1265 = load i64, ptr %var.c1, align 8
  %val.match1269 = icmp eq i64 %var.load1265, 58
  %val.match1270 = icmp eq i64 %var.load1265, 61
  %case.or1271 = or i1 %val.match1269, %val.match1270
  %val.match1272 = icmp eq i64 %var.load1265, 32
  %case.or1273 = or i1 %case.or1271, %val.match1272
  %val.match1274 = icmp eq i64 %var.load1265, 9
  %case.or1275 = or i1 %case.or1273, %val.match1274
  %val.match1276 = icmp eq i64 %var.load1265, 41
  %case.or1277 = or i1 %case.or1275, %val.match1276
  %val.match1278 = icmp eq i64 %var.load1265, 93
  %case.or1279 = or i1 %case.or1277, %val.match1278
  %val.match1280 = icmp eq i64 %var.load1265, 125
  %case.or1281 = or i1 %case.or1279, %val.match1280
  %val.match1282 = icmp eq i64 %var.load1265, 44
  %case.or1283 = or i1 %case.or1281, %val.match1282
  %val.match1284 = icmp eq i64 %var.load1265, 59
  %case.or1285 = or i1 %case.or1283, %val.match1284
  br i1 %case.or1285, label %choice.case1267, label %choice.next1268

and.601.else:                                     ; preds = %and.600.exit
  br label %and.601.exit

and.601.exit:                                     ; preds = %and.601.else, %choice.exit1266
  %and.601.phi = phi i1 [ %nottmp1287, %choice.exit1266 ], [ %and.600.phi, %and.601.else ]
  store i1 %and.601.phi, ptr %var.is_annot_colon, align 1
  %var.load1288 = load i1, ptr %var.is_annot_colon, align 1
  br i1 %var.load1288, label %choice.then1289, label %choice.else1290

choice.exit1266:                                  ; preds = %choice.next1268, %choice.case1267
  %choice.res1286 = phi i1 [ true, %choice.case1267 ], [ false, %choice.next1268 ]
  %nottmp1287 = xor i1 %choice.res1286, true
  br label %and.601.exit

choice.case1267:                                  ; preds = %and.601.then
  br label %choice.exit1266

choice.next1268:                                  ; preds = %and.601.then
  br label %choice.exit1266

choice.then1289:                                  ; preds = %and.601.exit
  %b.load1292 = load ptr, ptr %var.b, align 8
  %app.str.len1293 = load i64, ptr @str.11.struct, align 8
  %app.str.len1294 = and i64 %app.str.len1293, 281474976710655
  %app.str.data1295 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %b.app.cur.len1296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1292, i32 0, i32 0
  %b.app.cur.len1297 = load i64, ptr %b.app.cur.len1296, align 8
  %b.app.new.len1298 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len1297, i64 %app.str.len1294)
  %sum1299 = extractvalue { i64, i1 } %b.app.new.len1298, 0
  %ovf1300 = extractvalue { i64, i1 } %b.app.new.len1298, 1
  br i1 %ovf1300, label %str_overflow_abort1302, label %b.app.new.len1301

choice.else1290:                                  ; preds = %and.601.exit
  %b.load1337 = load ptr, ptr %var.b, align 8
  %var.load1338 = load i64, ptr %var.c, align 8
  %b.b.ge01339 = icmp sge i64 %var.load1338, 0
  %b.b.le2551340 = icmp sle i64 %var.load1338, 255
  %b.byte.range1341 = and i1 %b.b.ge01339, %b.b.le2551340
  br i1 %b.byte.range1341, label %b.byte_ok1342, label %b.byte_err1343

choice.exit1291:                                  ; preds = %b.push_done1355, %b.grow_done1309
  br label %choice.exit1106

b.app.new.len1301:                                ; preds = %abort.dead1303, %choice.then1289
  %b.cap1304 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1292, i32 0, i32 2
  %b.cap1305 = load i64, ptr %b.cap1304, align 8
  %b.need.grow1306 = icmp slt i64 %b.cap1305, %sum1299
  br i1 %b.need.grow1306, label %b.grow21307, label %b.nogrow21308

str_overflow_abort1302:                           ; preds = %choice.then1289
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1303:                                   ; No predecessors!
  br label %b.app.new.len1301

b.grow21307:                                      ; preds = %b.app.new.len1301
  %b.cap21310 = mul i64 %b.cap1305, 2
  %b.cap.small1311 = icmp slt i64 %b.cap21310, 16
  %b.cap.grow1312 = select i1 %b.cap.small1311, i64 16, i64 %b.cap21310
  %b.cap.need1313 = icmp slt i64 %b.cap.grow1312, %sum1299
  %b.new.cap1314 = select i1 %b.cap.need1313, i64 %sum1299, i64 %b.cap.grow1312
  %b.cur.len21315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1292, i32 0, i32 0
  %b.cur.len21316 = load i64, ptr %b.cur.len21315, align 8
  %b.cur.data21317 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1292, i32 0, i32 1
  %b.cur.data21318 = load ptr, ptr %b.cur.data21317, align 8
  %b.new.buf.len21319 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1314, i64 1)
  %sum1320 = extractvalue { i64, i1 } %b.new.buf.len21319, 0
  %ovf1321 = extractvalue { i64, i1 } %b.new.buf.len21319, 1
  br i1 %ovf1321, label %str_overflow_abort1323, label %b.new.buf.len21322

b.nogrow21308:                                    ; preds = %b.app.new.len1301
  br label %b.grow_done1309

b.grow_done1309:                                  ; preds = %b.nogrow21308, %b.new.buf.len21322
  %b.app.data1330 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1292, i32 0, i32 1
  %b.app.data1331 = load ptr, ptr %b.app.data1330, align 8
  %b.app.dst1332 = getelementptr i8, ptr %b.app.data1331, i64 %b.app.cur.len1297
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1332, ptr align 1 %app.str.data1295, i64 %app.str.len1294, i1 false)
  %b.app.nul1333 = getelementptr i8, ptr %b.app.data1331, i64 %sum1299
  store i8 0, ptr %b.app.nul1333, align 1
  %b.len.gep1334 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1292, i32 0, i32 0
  store i64 %sum1299, ptr %b.len.gep1334, align 8
  %var.load1335 = load i64, ptr %"var.i'", align 8
  %addtmp1336 = add i64 %var.load1335, 1
  store i64 %addtmp1336, ptr %"var.i'", align 8
  br label %choice.exit1291

b.new.buf.len21322:                               ; preds = %abort.dead1324, %b.grow21307
  %arena.cur1325 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21326 = call ptr @dva_arena_alloc(ptr %arena.cur1325, i64 %sum1320)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21326, ptr align 1 %b.cur.data21318, i64 %b.cur.len21316, i1 false)
  %b.grow2.nul1327 = getelementptr i8, ptr %b.new.buf21326, i64 %b.cur.len21316
  store i8 0, ptr %b.grow2.nul1327, align 1
  %b.new.data2.gep1328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1292, i32 0, i32 1
  store ptr %b.new.buf21326, ptr %b.new.data2.gep1328, align 8
  %b.new.cap2.gep1329 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1292, i32 0, i32 2
  store i64 %b.new.cap1314, ptr %b.new.cap2.gep1329, align 8
  br label %b.grow_done1309

str_overflow_abort1323:                           ; preds = %b.grow21307
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1324:                                   ; No predecessors!
  br label %b.new.buf.len21322

b.byte_ok1342:                                    ; preds = %abort.dead1344, %choice.else1290
  %b.byte.i81345 = trunc i64 %var.load1338 to i8
  %b.len1346 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1337, i32 0, i32 0
  %b.len1347 = load i64, ptr %b.len1346, align 8
  %b.cap1348 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1337, i32 0, i32 2
  %b.cap1349 = load i64, ptr %b.cap1348, align 8
  %b.data1350 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1337, i32 0, i32 1
  %b.data1351 = load ptr, ptr %b.data1350, align 8
  %b.needs.grow1352 = icmp eq i64 %b.len1347, %b.cap1349
  br i1 %b.needs.grow1352, label %b.grow1353, label %b.nogrow1354

b.byte_err1343:                                   ; preds = %choice.else1290
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead1344:                                   ; No predecessors!
  br label %b.byte_ok1342

b.grow1353:                                       ; preds = %b.byte_ok1342
  %b.cap21356 = mul i64 %b.cap1349, 2
  %b.cap.small1357 = icmp slt i64 %b.cap21356, 16
  %b.new.cap1358 = select i1 %b.cap.small1357, i64 16, i64 %b.cap21356
  %b.new.buf.len1359 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1358, i64 1)
  %sum1360 = extractvalue { i64, i1 } %b.new.buf.len1359, 0
  %ovf1361 = extractvalue { i64, i1 } %b.new.buf.len1359, 1
  br i1 %ovf1361, label %str_overflow_abort1363, label %b.new.buf.len1362

b.nogrow1354:                                     ; preds = %b.byte_ok1342
  br label %b.push_done1355

b.push_done1355:                                  ; preds = %b.nogrow1354, %b.new.buf.len1362
  %b.cur.data1370 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1337, i32 0, i32 1
  %b.cur.data1371 = load ptr, ptr %b.cur.data1370, align 8
  %b.cur.len1372 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1337, i32 0, i32 0
  %b.cur.len1373 = load i64, ptr %b.cur.len1372, align 8
  %b.byte.gep1374 = getelementptr i8, ptr %b.cur.data1371, i64 %b.cur.len1373
  store i8 %b.byte.i81345, ptr %b.byte.gep1374, align 1
  %b.next.len1375 = add i64 %b.cur.len1373, 1
  %b.nul1376 = getelementptr i8, ptr %b.cur.data1371, i64 %b.next.len1375
  store i8 0, ptr %b.nul1376, align 1
  %b.len.gep1377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1337, i32 0, i32 0
  store i64 %b.next.len1375, ptr %b.len.gep1377, align 8
  %var.load1378 = load i64, ptr %"var.i'", align 8
  %addtmp1379 = add i64 %var.load1378, 1
  store i64 %addtmp1379, ptr %"var.i'", align 8
  br label %choice.exit1291

b.new.buf.len1362:                                ; preds = %abort.dead1364, %b.grow1353
  %arena.cur1365 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf1366 = call ptr @dva_arena_alloc(ptr %arena.cur1365, i64 %sum1360)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1366, ptr align 1 %b.data1351, i64 %b.len1347, i1 false)
  %b.grow.nul1367 = getelementptr i8, ptr %b.new.buf1366, i64 %b.len1347
  store i8 0, ptr %b.grow.nul1367, align 1
  %b.new.data.gep1368 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1337, i32 0, i32 1
  store ptr %b.new.buf1366, ptr %b.new.data.gep1368, align 8
  %b.new.cap.gep1369 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1337, i32 0, i32 2
  store i64 %b.new.cap1358, ptr %b.new.cap.gep1369, align 8
  br label %b.push_done1355

str_overflow_abort1363:                           ; preds = %b.grow1353
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1364:                                   ; No predecessors!
  br label %b.new.buf.len1362
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define i1 @"formatter::starts_with_str"(ptr %0, ptr %1) #3 {
entry:
  %var.pfx = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.pfx, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %var.load3 = load ptr, ptr %var.pfx, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %cmptmp = icmp sge i64 %str.len.query2, %str.len.query6
  br i1 %cmptmp, label %and.573.then, label %and.573.else

and.573.then:                                     ; preds = %entry
  %var.load7 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load ptr, ptr %var.pfx, align 8
  %str.len.query12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %str.len.query13 = load i64, ptr %str.len.query12, align 8
  %str.len.query14 = and i64 %str.len.query13, 281474976710655
  %rel.start = add i64 %s.read.len9, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len9
  %final.start = select i1 %start.gt.len, i64 %s.read.len9, i64 %c.start.0
  %end.is_neg = icmp slt i64 %str.len.query14, 0
  %rel.end = add i64 %s.read.len9, %str.len.query14
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %str.len.query14
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len9
  %final.end = select i1 %end.gt.len, i64 %s.read.len9, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data10, i64 %final.start
  %var.load15 = load ptr, ptr %var.pfx, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %cmp.str16 = load i64, ptr %cmp.str, align 8
  %cmp.str17 = and i64 %cmp.str16, 281474976710655
  %cmp.str18 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %cmp.str19 = load ptr, ptr %cmp.str18, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str17
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.573.else:                                     ; preds = %entry
  br label %and.573.exit

and.573.exit:                                     ; preds = %and.573.else, %str.eq.merge
  %and.573.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.573.else ]
  ret i1 %and.573.phi

str.eq.then:                                      ; preds = %and.573.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str19, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.573.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.573.exit
}

declare i32 @memcmp(ptr, ptr, i64) #3

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define { i64, ptr } @"formatter::make_spaces"(i64 %0) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.602 = alloca i64, align 8
  %loop.idx.602 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
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
  %cap.neg = icmp slt i64 %var.load1, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load1
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len2:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.count, align 8
  store i64 0, ptr %loop.idx.602, align 8
  br label %loop.header.602

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

loop.header.602:                                  ; preds = %loop.latch.602, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.602, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.602, label %loop.exit.nat.602

loop.body.602:                                    ; preds = %loop.header.602
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.602, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len4 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len4, i64 1)
  %sum5 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf6 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf6, label %str_overflow_abort8, label %b.rn.new.len7

loop.exit.nat.602:                                ; preds = %loop.header.602
  br label %loop.exit.602

loop.latch.602:                                   ; preds = %br.done.603
  %step.val = load i64, ptr %loop.step.602, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.602, align 8
  br label %loop.header.602

loop.exit.602:                                    ; preds = %loop.exit.nat.602
  %var.load21 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 0
  %b.freeze.len22 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 1
  %b.freeze.data23 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len22, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data23, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack24 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack24

b.rn.new.len7:                                    ; preds = %abort.dead9, %loop.body.602
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap10 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap10, %sum5
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort8:                              ; preds = %loop.body.602
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %b.rn.new.len7

b.grow2:                                          ; preds = %b.rn.new.len7
  %b.cap2 = mul i64 %b.cap10, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum5
  %b.new.cap = select i1 %b.cap.need, i64 %sum5, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len211 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data212 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum13 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf14 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf14, label %str_overflow_abort16, label %b.new.buf.len215

b.nogrow2:                                        ; preds = %b.rn.new.len7
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len215
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data19 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data19, i64 %b.rn.cur.len4
  br i1 true, label %br.b1.603, label %br.c2.603

b.new.buf.len215:                                 ; preds = %abort.dead17, %b.grow2
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data212, i64 %b.cur.len211, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len211
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort16:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %b.new.buf.len215

br.b1.603:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.603

br.c2.603:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.603, label %br.c3.603

br.b2.603:                                        ; preds = %br.c2.603
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.603

br.c3.603:                                        ; preds = %br.c2.603
  br i1 true, label %br.b3.603, label %br.b4.603

br.b3.603:                                        ; preds = %br.c3.603
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.603

br.b4.603:                                        ; preds = %br.c3.603
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.603

br.done.603:                                      ; preds = %br.b4.603, %br.b3.603, %br.b2.603, %br.b1.603
  %br.nul = getelementptr i8, ptr %b.rn.data19, i64 %sum5
  store i8 0, ptr %br.nul, align 1
  %b.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum5, ptr %b.len.gep20, align 8
  br label %loop.latch.602
}

define { i64, ptr } @"formatter::strip_leading_ws"(ptr %0) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.604 = alloca i64, align 8
  %loop.idx.604 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 0, ptr %"var.i'", align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  store i64 %str.len.query2, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.604, align 8
  br label %loop.header.604

loop.header.604:                                  ; preds = %loop.latch.604, %entry
  %counter.load = load i64, ptr %loop.idx.604, align 8
  br label %loop.body.604

loop.body.604:                                    ; preds = %loop.header.604
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.604, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load3 = load i64, ptr %"var.i'", align 8
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.604:                                ; No predecessors!
  br label %loop.exit.604

loop.latch.604:                                   ; preds = %choice.exit13
  %step.val = load i64, ptr %loop.step.604, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.604, align 8
  br label %loop.header.604

loop.exit.604:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.604
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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

choice.then:                                      ; preds = %loop.body.604
  br label %loop.exit.604

choice.exit:                                      ; preds = %loop.body.604
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
  br label %loop.exit.604

choice.exit13:                                    ; preds = %choice.then12
  br label %loop.latch.604
}

define { i64, ptr } @"formatter::strip_code_comment"(ptr %0) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %var._i123 = alloca i64, align 8
  %var._122 = alloca i64, align 8
  %loop.step.609 = alloca i64, align 8
  %loop.idx.609 = alloca i64, align 8
  %var.step = alloca i64, align 8
  %var.prev_b = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.605 = alloca i64, align 8
  %loop.idx.605 = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.n, align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  %var.load3 = load i64, ptr %var.n, align 8
  store i64 %var.load3, ptr %"var.end_idx'", align 8
  store i64 0, ptr %loop.idx.605, align 8
  br label %loop.header.605

loop.header.605:                                  ; preds = %loop.latch.605, %entry
  %counter.load = load i64, ptr %loop.idx.605, align 8
  br label %loop.body.605

loop.body.605:                                    ; preds = %loop.header.605
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.605, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load4 = load i64, ptr %"var.i'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.605:                                ; No predecessors!
  br label %loop.exit.605

loop.latch.605:                                   ; preds = %choice.exit34
  %step.val = load i64, ptr %loop.step.605, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.605, align 8
  br label %loop.header.605

loop.exit.605:                                    ; preds = %choice.then56, %choice.then, %loop.exit.nat.605
  store i64 0, ptr %loop.idx.609, align 8
  br label %loop.header.609

choice.then:                                      ; preds = %loop.body.605
  br label %loop.exit.605

choice.exit:                                      ; preds = %loop.body.605
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
  br i1 %cmptmp36, label %and.606.then, label %and.606.else

choice.else33:                                    ; preds = %choice.exit15
  %var.load52 = load i64, ptr %var.c, align 8
  %cmptmp53 = icmp eq i64 %var.load52, 47
  br i1 %cmptmp53, label %and.607.then, label %and.607.else

choice.exit34:                                    ; preds = %choice.exit58, %choice.exit43
  br label %loop.latch.605

and.606.then:                                     ; preds = %choice.then32
  %var.load37 = load i64, ptr %"var.i'", align 8
  %addtmp38 = add i64 %var.load37, 1
  %var.load39 = load i64, ptr %var.n, align 8
  %cmptmp40 = icmp slt i64 %addtmp38, %var.load39
  br label %and.606.exit

and.606.else:                                     ; preds = %choice.then32
  br label %and.606.exit

and.606.exit:                                     ; preds = %and.606.else, %and.606.then
  %and.606.phi = phi i1 [ %cmptmp40, %and.606.then ], [ %cmptmp36, %and.606.else ]
  br i1 %and.606.phi, label %choice.then41, label %choice.else42

choice.then41:                                    ; preds = %and.606.exit
  %var.load44 = load i64, ptr %"var.i'", align 8
  %addtmp45 = add i64 %var.load44, 2
  store i64 %addtmp45, ptr %"var.i'", align 8
  br label %choice.exit43

choice.else42:                                    ; preds = %and.606.exit
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

and.607.then:                                     ; preds = %choice.else33
  %var.load54 = load i64, ptr %var.c1, align 8
  %cmptmp55 = icmp eq i64 %var.load54, 47
  br label %and.607.exit

and.607.else:                                     ; preds = %choice.else33
  br label %and.607.exit

and.607.exit:                                     ; preds = %and.607.else, %and.607.then
  %and.607.phi = phi i1 [ %cmptmp55, %and.607.then ], [ %cmptmp53, %and.607.else ]
  br i1 %and.607.phi, label %choice.then56, label %choice.else57

choice.then56:                                    ; preds = %and.607.exit
  %var.load59 = load i64, ptr %"var.i'", align 8
  store i64 %var.load59, ptr %"var.end_idx'", align 8
  br label %loop.exit.605

choice.else57:                                    ; preds = %and.607.exit
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
  br i1 %cmptmp90, label %and.608.then, label %and.608.else

choice.exit88:                                    ; preds = %choice.exit97, %choice.then86
  %choice.res107 = phi i64 [ 1, %choice.then86 ], [ %choice.res106, %choice.exit97 ]
  store i64 %choice.res107, ptr %var.step, align 8
  %var.load108 = load i64, ptr %"var.i'", align 8
  %var.load109 = load i64, ptr %var.step, align 8
  %addtmp110 = add i64 %var.load108, %var.load109
  store i64 %addtmp110, ptr %"var.i'", align 8
  br label %choice.exit64

and.608.then:                                     ; preds = %choice.else87
  %var.load91 = load i64, ptr %"var.i'", align 8
  %addtmp92 = add i64 %var.load91, 2
  %var.load93 = load i64, ptr %var.n, align 8
  %cmptmp94 = icmp slt i64 %addtmp92, %var.load93
  br label %and.608.exit

and.608.else:                                     ; preds = %choice.else87
  br label %and.608.exit

and.608.exit:                                     ; preds = %and.608.else, %and.608.then
  %and.608.phi = phi i1 [ %cmptmp94, %and.608.then ], [ %cmptmp90, %and.608.else ]
  br i1 %and.608.phi, label %choice.then95, label %choice.else96

choice.then95:                                    ; preds = %and.608.exit
  br label %choice.exit97

choice.else96:                                    ; preds = %and.608.exit
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

loop.header.609:                                  ; preds = %loop.latch.609, %loop.exit.605
  %counter.load120 = load i64, ptr %loop.idx.609, align 8
  br label %loop.body.609

loop.body.609:                                    ; preds = %loop.header.609
  %loop.rel.i121 = sub i64 %counter.load120, 0
  store i64 1, ptr %loop.step.609, align 8
  store i64 %counter.load120, ptr %var._122, align 8
  store i64 %loop.rel.i121, ptr %var._i123, align 8
  %var.load124 = load i64, ptr %"var.end_idx'", align 8
  %cmptmp125 = icmp sgt i64 %var.load124, 0
  br i1 %cmptmp125, label %and.610.then, label %and.610.else

loop.exit.nat.609:                                ; No predecessors!
  br label %loop.exit.609

loop.latch.609:                                   ; preds = %choice.exit146
  %step.val149 = load i64, ptr %loop.step.609, align 8
  %loop.next150 = add i64 %counter.load120, %step.val149
  store i64 %loop.next150, ptr %loop.idx.609, align 8
  br label %loop.header.609

loop.exit.609:                                    ; preds = %choice.else145, %loop.exit.nat.609
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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

and.610.then:                                     ; preds = %loop.body.609
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

and.610.else:                                     ; preds = %loop.body.609
  br label %and.610.exit

and.610.exit:                                     ; preds = %and.610.else, %choice.exit141
  %and.610.phi = phi i1 [ %choice.res143, %choice.exit141 ], [ %cmptmp125, %and.610.else ]
  br i1 %and.610.phi, label %choice.then144, label %choice.else145

idx_ok135:                                        ; preds = %abort.dead137, %and.610.then
  %s.byte.gep138 = getelementptr i8, ptr %s.read.data131, i64 %subtmp133
  %s.byte139 = load i8, ptr %s.byte.gep138, align 1
  %s.byte.val140 = zext i8 %s.byte139 to i64
  %val.match = icmp eq i64 %s.byte.val140, 32
  %val.match142 = icmp eq i64 %s.byte.val140, 9
  %case.or = or i1 %val.match, %val.match142
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob136:                                       ; preds = %and.610.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead137:                                    ; No predecessors!
  br label %idx_ok135

choice.exit141:                                   ; preds = %choice.next, %choice.case
  %choice.res143 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.610.exit

choice.case:                                      ; preds = %idx_ok135
  br label %choice.exit141

choice.next:                                      ; preds = %idx_ok135
  br label %choice.exit141

choice.then144:                                   ; preds = %and.610.exit
  %var.load147 = load i64, ptr %"var.end_idx'", align 8
  %subtmp148 = sub i64 %var.load147, 1
  store i64 %subtmp148, ptr %"var.end_idx'", align 8
  br label %choice.exit146

choice.else145:                                   ; preds = %and.610.exit
  br label %loop.exit.609

choice.exit146:                                   ; preds = %choice.then144
  br label %loop.latch.609
}

define i1 @"formatter::ends_with_str"(ptr %0, ptr %1) #3 {
entry:
  %var.suf = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.suf, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %var.load3 = load ptr, ptr %var.suf, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %cmptmp = icmp sge i64 %str.len.query2, %str.len.query6
  br i1 %cmptmp, label %and.611.then, label %and.611.else

and.611.then:                                     ; preds = %entry
  %var.load7 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load ptr, ptr %var.s, align 8
  %str.len.query12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %str.len.query13 = load i64, ptr %str.len.query12, align 8
  %str.len.query14 = and i64 %str.len.query13, 281474976710655
  %var.load15 = load ptr, ptr %var.suf, align 8
  %str.len.query16 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %str.len.query17 = load i64, ptr %str.len.query16, align 8
  %str.len.query18 = and i64 %str.len.query17, 281474976710655
  %subtmp = sub i64 %str.len.query14, %str.len.query18
  %var.load19 = load ptr, ptr %var.s, align 8
  %str.len.query20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %str.len.query21 = load i64, ptr %str.len.query20, align 8
  %str.len.query22 = and i64 %str.len.query21, 281474976710655
  %start.is_neg = icmp slt i64 %subtmp, 0
  %rel.start = add i64 %s.read.len9, %subtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %subtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len9
  %final.start = select i1 %start.gt.len, i64 %s.read.len9, i64 %c.start.0
  %end.is_neg = icmp slt i64 %str.len.query22, 0
  %rel.end = add i64 %s.read.len9, %str.len.query22
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %str.len.query22
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len9
  %final.end = select i1 %end.gt.len, i64 %s.read.len9, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data10, i64 %final.start
  %var.load23 = load ptr, ptr %var.suf, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %cmp.str24 = load i64, ptr %cmp.str, align 8
  %cmp.str25 = and i64 %cmp.str24, 281474976710655
  %cmp.str26 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %cmp.str27 = load ptr, ptr %cmp.str26, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str25
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.611.else:                                     ; preds = %entry
  br label %and.611.exit

and.611.exit:                                     ; preds = %and.611.else, %str.eq.merge
  %and.611.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.611.else ]
  ret i1 %and.611.phi

str.eq.then:                                      ; preds = %and.611.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str27, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.611.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.611.exit
}

define i1 @"formatter::starts_with_choice_sep"(ptr %0) #3 {
entry:
  %var.c0 = alloca i64, align 8
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %entry
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
  br i1 %call.res22, label %or.612.then, label %or.612.else

ret.dead20:                                       ; No predecessors!
  br label %choice.exit19

or.612.then:                                      ; preds = %choice.exit19
  br label %or.612.exit

or.612.else:                                      ; preds = %choice.exit19
  %var.load23 = load ptr, ptr %var.code, align 8
  %call.res24 = call i1 @"formatter::starts_with_str"(ptr %var.load23, ptr @str.14.struct)
  br label %or.612.exit

or.612.exit:                                      ; preds = %or.612.else, %or.612.then
  %or.612.phi = phi i1 [ %call.res22, %or.612.then ], [ %call.res24, %or.612.else ]
  br i1 %or.612.phi, label %or.613.then, label %or.613.else

or.613.then:                                      ; preds = %or.612.exit
  br label %or.613.exit

or.613.else:                                      ; preds = %or.612.exit
  %var.load25 = load ptr, ptr %var.code, align 8
  %call.res26 = call i1 @"formatter::starts_with_str"(ptr %var.load25, ptr @str.15.struct)
  br label %or.613.exit

or.613.exit:                                      ; preds = %or.613.else, %or.613.then
  %or.613.phi = phi i1 [ %or.612.phi, %or.613.then ], [ %call.res26, %or.613.else ]
  br i1 %or.613.phi, label %or.614.then, label %or.614.else

or.614.then:                                      ; preds = %or.613.exit
  br label %or.614.exit

or.614.else:                                      ; preds = %or.613.exit
  %var.load27 = load ptr, ptr %var.code, align 8
  %call.res28 = call i1 @"formatter::starts_with_str"(ptr %var.load27, ptr @str.16.struct)
  br label %or.614.exit

or.614.exit:                                      ; preds = %or.614.else, %or.614.then
  %or.614.phi = phi i1 [ %or.613.phi, %or.614.then ], [ %call.res28, %or.614.else ]
  br i1 %or.614.phi, label %or.615.then, label %or.615.else

or.615.then:                                      ; preds = %or.614.exit
  br label %or.615.exit

or.615.else:                                      ; preds = %or.614.exit
  %var.load29 = load ptr, ptr %var.code, align 8
  %call.res30 = call i1 @"formatter::starts_with_str"(ptr %var.load29, ptr @str.4.struct)
  br label %or.615.exit

or.615.exit:                                      ; preds = %or.615.else, %or.615.then
  %or.615.phi = phi i1 [ %or.614.phi, %or.615.then ], [ %call.res30, %or.615.else ]
  br i1 %or.615.phi, label %or.616.then, label %or.616.else

or.616.then:                                      ; preds = %or.615.exit
  br label %or.616.exit

or.616.else:                                      ; preds = %or.615.exit
  %var.load31 = load ptr, ptr %var.code, align 8
  %call.res32 = call i1 @"formatter::starts_with_str"(ptr %var.load31, ptr @str.17.struct)
  br label %or.616.exit

or.616.exit:                                      ; preds = %or.616.else, %or.616.then
  %or.616.phi = phi i1 [ %or.615.phi, %or.616.then ], [ %call.res32, %or.616.else ]
  br i1 %or.616.phi, label %choice.then33, label %choice.exit34

choice.then33:                                    ; preds = %or.616.exit
  ret i1 true

choice.exit34:                                    ; preds = %ret.dead35, %or.616.exit
  %var.load36 = load i64, ptr %var.c0, align 8
  %cmptmp37 = icmp eq i64 %var.load36, 124
  br i1 %cmptmp37, label %and.617.then, label %and.617.else

ret.dead35:                                       ; No predecessors!
  br label %choice.exit34

and.617.then:                                     ; preds = %choice.exit34
  %var.load38 = load ptr, ptr %var.code, align 8
  %str.len.query39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %str.len.query40 = load i64, ptr %str.len.query39, align 8
  %str.len.query41 = and i64 %str.len.query40, 281474976710655
  %cmptmp42 = icmp eq i64 %str.len.query41, 1
  br i1 %cmptmp42, label %or.618.then, label %or.618.else

and.617.else:                                     ; preds = %choice.exit34
  br label %and.617.exit

and.617.exit:                                     ; preds = %and.617.else, %or.618.exit
  %and.617.phi = phi i1 [ %or.618.phi, %or.618.exit ], [ %cmptmp37, %and.617.else ]
  ret i1 %and.617.phi

or.618.then:                                      ; preds = %and.617.then
  br label %or.618.exit

or.618.else:                                      ; preds = %and.617.then
  %var.load43 = load ptr, ptr %var.code, align 8
  %s.read.len44 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %s.read.len45 = load i64, ptr %s.read.len44, align 8
  %s.read.len46 = and i64 %s.read.len45, 281474976710655
  %s.read.data47 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %s.read.data48 = load ptr, ptr %s.read.data47, align 8
  %idx.oob49 = icmp uge i64 1, %s.read.len46
  br i1 %idx.oob49, label %idx_oob51, label %idx_ok50

or.618.exit:                                      ; preds = %idx_ok50, %or.618.then
  %or.618.phi = phi i1 [ %cmptmp42, %or.618.then ], [ %cmptmp56, %idx_ok50 ]
  br label %and.617.exit

idx_ok50:                                         ; preds = %abort.dead52, %or.618.else
  %s.byte.gep53 = getelementptr i8, ptr %s.read.data48, i64 1
  %s.byte54 = load i8, ptr %s.byte.gep53, align 1
  %s.byte.val55 = zext i8 %s.byte54 to i64
  %cmptmp56 = icmp ne i64 %s.byte.val55, 124
  br label %or.618.exit

idx_oob51:                                        ; preds = %or.618.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %idx_ok50
}

define i1 @"formatter::is_inline_pipe_arm"(ptr %0) #3 {
entry:
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load, ptr @str.0.struct)
  br i1 %call.res, label %or.619.then, label %or.619.else

or.619.then:                                      ; preds = %entry
  br label %or.619.exit

or.619.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.code, align 8
  %call.res2 = call i1 @"formatter::starts_with_str"(ptr %var.load1, ptr @str.1.struct)
  br label %or.619.exit

or.619.exit:                                      ; preds = %or.619.else, %or.619.then
  %or.619.phi = phi i1 [ %call.res, %or.619.then ], [ %call.res2, %or.619.else ]
  br i1 %or.619.phi, label %or.620.then, label %or.620.else

or.620.then:                                      ; preds = %or.619.exit
  br label %or.620.exit

or.620.else:                                      ; preds = %or.619.exit
  %var.load3 = load ptr, ptr %var.code, align 8
  %call.res4 = call i1 @"formatter::starts_with_str"(ptr %var.load3, ptr @str.2.struct)
  br label %or.620.exit

or.620.exit:                                      ; preds = %or.620.else, %or.620.then
  %or.620.phi = phi i1 [ %or.619.phi, %or.620.then ], [ %call.res4, %or.620.else ]
  br i1 %or.620.phi, label %or.621.then, label %or.621.else

or.621.then:                                      ; preds = %or.620.exit
  br label %or.621.exit

or.621.else:                                      ; preds = %or.620.exit
  %var.load5 = load ptr, ptr %var.code, align 8
  %call.res6 = call i1 @"formatter::starts_with_str"(ptr %var.load5, ptr @str.3.struct)
  br label %or.621.exit

or.621.exit:                                      ; preds = %or.621.else, %or.621.then
  %or.621.phi = phi i1 [ %or.620.phi, %or.621.then ], [ %call.res6, %or.621.else ]
  br i1 %or.621.phi, label %or.622.then, label %or.622.else

or.622.then:                                      ; preds = %or.621.exit
  br label %or.622.exit

or.622.else:                                      ; preds = %or.621.exit
  %var.load7 = load ptr, ptr %var.code, align 8
  %call.res8 = call i1 @"formatter::starts_with_str"(ptr %var.load7, ptr @str.4.struct)
  br label %or.622.exit

or.622.exit:                                      ; preds = %or.622.else, %or.622.then
  %or.622.phi = phi i1 [ %or.621.phi, %or.622.then ], [ %call.res8, %or.622.else ]
  br i1 %or.622.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.622.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.622.exit
  %var.load9 = load ptr, ptr %var.code, align 8
  %call.res10 = call i1 @"formatter::starts_with_str"(ptr %var.load9, ptr @str.5.struct)
  br i1 %call.res10, label %choice.then11, label %choice.else12

choice.exit:                                      ; preds = %choice.exit13, %choice.then
  %choice.res41 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit13 ]
  ret i1 %choice.res41

choice.then11:                                    ; preds = %choice.else
  %var.load14 = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %str.len.query15 = load i64, ptr %str.len.query, align 8
  %str.len.query16 = and i64 %str.len.query15, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query16, 2
  br label %choice.exit13

choice.else12:                                    ; preds = %choice.else
  %var.load17 = load ptr, ptr %var.code, align 8
  %str.len.query18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %str.len.query19 = load i64, ptr %str.len.query18, align 8
  %str.len.query20 = and i64 %str.len.query19, 281474976710655
  %cmptmp21 = icmp sgt i64 %str.len.query20, 1
  br i1 %cmptmp21, label %and.623.then, label %and.623.else

choice.exit13:                                    ; preds = %and.624.exit, %choice.then11
  %choice.res = phi i1 [ %cmptmp, %choice.then11 ], [ %and.624.phi, %and.624.exit ]
  br label %choice.exit

and.623.then:                                     ; preds = %choice.else12
  %var.load22 = load ptr, ptr %var.code, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len24
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.623.else:                                     ; preds = %choice.else12
  br label %and.623.exit

and.623.exit:                                     ; preds = %and.623.else, %idx_ok
  %and.623.phi = phi i1 [ %cmptmp26, %idx_ok ], [ %cmptmp21, %and.623.else ]
  br i1 %and.623.phi, label %and.624.then, label %and.624.else

idx_ok:                                           ; preds = %abort.dead, %and.623.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data25, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp26 = icmp eq i64 %s.byte.val, 124
  br label %and.623.exit

idx_oob:                                          ; preds = %and.623.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.624.then:                                     ; preds = %and.623.exit
  %var.load27 = load ptr, ptr %var.code, align 8
  %s.read.len28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len28, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %s.read.data31 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data32 = load ptr, ptr %s.read.data31, align 8
  %idx.oob33 = icmp uge i64 1, %s.read.len30
  br i1 %idx.oob33, label %idx_oob35, label %idx_ok34

and.624.else:                                     ; preds = %and.623.exit
  br label %and.624.exit

and.624.exit:                                     ; preds = %and.624.else, %idx_ok34
  %and.624.phi = phi i1 [ %cmptmp40, %idx_ok34 ], [ %and.623.phi, %and.624.else ]
  br label %choice.exit13

idx_ok34:                                         ; preds = %abort.dead36, %and.624.then
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data32, i64 1
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp ne i64 %s.byte.val39, 124
  br label %and.624.exit

idx_oob35:                                        ; preds = %and.624.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok34
}

define i1 @"formatter::ends_with_block_opener"(ptr %0) #3 {
entry:
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load3 = load ptr, ptr %var.code, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %eq.rhs.len = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.exit4:                                     ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then88, label %choice.exit89

choice.case:                                      ; preds = %str.eq.merge80
  br label %choice.exit4

choice.next:                                      ; preds = %str.eq.merge80
  br label %choice.exit4

str.eq.then:                                      ; preds = %choice.exit
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data8 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data8, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len9 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len10 = load i64, ptr %eq.lhs.len9, align 8
  %eq.lhs.len11 = and i64 %eq.lhs.len10, 281474976710655
  %eq.rhs.len12 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len13 = and i64 %eq.rhs.len12, 281474976710655
  %eq.len14 = icmp eq i64 %eq.lhs.len11, %eq.rhs.len13
  br i1 %eq.len14, label %str.eq.then15, label %str.eq.else16

str.eq.then15:                                    ; preds = %str.eq.merge
  %eq.lhs.data18 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data18, align 8
  %eq.rhs.data20 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp21 = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data20, i64 %eq.lhs.len11)
  %eq.cmp.zero22 = icmp eq i32 %eq.memcmp21, 0
  br label %str.eq.merge17

str.eq.else16:                                    ; preds = %str.eq.merge
  br label %str.eq.merge17

str.eq.merge17:                                   ; preds = %str.eq.else16, %str.eq.then15
  %str.eq.result23 = phi i1 [ %eq.cmp.zero22, %str.eq.then15 ], [ false, %str.eq.else16 ]
  %case.or = or i1 %str.eq.result, %str.eq.result23
  %eq.lhs.len24 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len25 = load i64, ptr %eq.lhs.len24, align 8
  %eq.lhs.len26 = and i64 %eq.lhs.len25, 281474976710655
  %eq.rhs.len27 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len28 = and i64 %eq.rhs.len27, 281474976710655
  %eq.len29 = icmp eq i64 %eq.lhs.len26, %eq.rhs.len28
  br i1 %eq.len29, label %str.eq.then30, label %str.eq.else31

str.eq.then30:                                    ; preds = %str.eq.merge17
  %eq.lhs.data33 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data34 = load ptr, ptr %eq.lhs.data33, align 8
  %eq.rhs.data35 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp36 = call i32 @memcmp(ptr %eq.lhs.data34, ptr %eq.rhs.data35, i64 %eq.lhs.len26)
  %eq.cmp.zero37 = icmp eq i32 %eq.memcmp36, 0
  br label %str.eq.merge32

str.eq.else31:                                    ; preds = %str.eq.merge17
  br label %str.eq.merge32

str.eq.merge32:                                   ; preds = %str.eq.else31, %str.eq.then30
  %str.eq.result38 = phi i1 [ %eq.cmp.zero37, %str.eq.then30 ], [ false, %str.eq.else31 ]
  %case.or39 = or i1 %case.or, %str.eq.result38
  %eq.lhs.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len41 = load i64, ptr %eq.lhs.len40, align 8
  %eq.lhs.len42 = and i64 %eq.lhs.len41, 281474976710655
  %eq.rhs.len43 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len44 = and i64 %eq.rhs.len43, 281474976710655
  %eq.len45 = icmp eq i64 %eq.lhs.len42, %eq.rhs.len44
  br i1 %eq.len45, label %str.eq.then46, label %str.eq.else47

str.eq.then46:                                    ; preds = %str.eq.merge32
  %eq.lhs.data49 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data50 = load ptr, ptr %eq.lhs.data49, align 8
  %eq.rhs.data51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp52 = call i32 @memcmp(ptr %eq.lhs.data50, ptr %eq.rhs.data51, i64 %eq.lhs.len42)
  %eq.cmp.zero53 = icmp eq i32 %eq.memcmp52, 0
  br label %str.eq.merge48

str.eq.else47:                                    ; preds = %str.eq.merge32
  br label %str.eq.merge48

str.eq.merge48:                                   ; preds = %str.eq.else47, %str.eq.then46
  %str.eq.result54 = phi i1 [ %eq.cmp.zero53, %str.eq.then46 ], [ false, %str.eq.else47 ]
  %case.or55 = or i1 %case.or39, %str.eq.result54
  %eq.lhs.len56 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len57 = load i64, ptr %eq.lhs.len56, align 8
  %eq.lhs.len58 = and i64 %eq.lhs.len57, 281474976710655
  %eq.rhs.len59 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len60 = and i64 %eq.rhs.len59, 281474976710655
  %eq.len61 = icmp eq i64 %eq.lhs.len58, %eq.rhs.len60
  br i1 %eq.len61, label %str.eq.then62, label %str.eq.else63

str.eq.then62:                                    ; preds = %str.eq.merge48
  %eq.lhs.data65 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data66 = load ptr, ptr %eq.lhs.data65, align 8
  %eq.rhs.data67 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp68 = call i32 @memcmp(ptr %eq.lhs.data66, ptr %eq.rhs.data67, i64 %eq.lhs.len58)
  %eq.cmp.zero69 = icmp eq i32 %eq.memcmp68, 0
  br label %str.eq.merge64

str.eq.else63:                                    ; preds = %str.eq.merge48
  br label %str.eq.merge64

str.eq.merge64:                                   ; preds = %str.eq.else63, %str.eq.then62
  %str.eq.result70 = phi i1 [ %eq.cmp.zero69, %str.eq.then62 ], [ false, %str.eq.else63 ]
  %case.or71 = or i1 %case.or55, %str.eq.result70
  %eq.lhs.len72 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len73 = load i64, ptr %eq.lhs.len72, align 8
  %eq.lhs.len74 = and i64 %eq.lhs.len73, 281474976710655
  %eq.rhs.len75 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len76 = and i64 %eq.rhs.len75, 281474976710655
  %eq.len77 = icmp eq i64 %eq.lhs.len74, %eq.rhs.len76
  br i1 %eq.len77, label %str.eq.then78, label %str.eq.else79

str.eq.then78:                                    ; preds = %str.eq.merge64
  %eq.lhs.data81 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data82 = load ptr, ptr %eq.lhs.data81, align 8
  %eq.rhs.data83 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp84 = call i32 @memcmp(ptr %eq.lhs.data82, ptr %eq.rhs.data83, i64 %eq.lhs.len74)
  %eq.cmp.zero85 = icmp eq i32 %eq.memcmp84, 0
  br label %str.eq.merge80

str.eq.else79:                                    ; preds = %str.eq.merge64
  br label %str.eq.merge80

str.eq.merge80:                                   ; preds = %str.eq.else79, %str.eq.then78
  %str.eq.result86 = phi i1 [ %eq.cmp.zero85, %str.eq.then78 ], [ false, %str.eq.else79 ]
  %case.or87 = or i1 %case.or71, %str.eq.result86
  br i1 %case.or87, label %choice.case, label %choice.next

choice.then88:                                    ; preds = %choice.exit4
  ret i1 true

choice.exit89:                                    ; preds = %ret.dead90, %choice.exit4
  %var.load91 = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load91, ptr @str.23.struct)
  br i1 %call.res, label %or.625.then, label %or.625.else

ret.dead90:                                       ; No predecessors!
  br label %choice.exit89

or.625.then:                                      ; preds = %choice.exit89
  br label %or.625.exit

or.625.else:                                      ; preds = %choice.exit89
  %var.load92 = load ptr, ptr %var.code, align 8
  %call.res93 = call i1 @"formatter::starts_with_str"(ptr %var.load92, ptr @str.24.struct)
  br i1 %call.res93, label %and.626.then, label %and.626.else

or.625.exit:                                      ; preds = %and.626.exit, %or.625.then
  %or.625.phi = phi i1 [ %call.res, %or.625.then ], [ %and.626.phi, %and.626.exit ]
  br i1 %or.625.phi, label %choice.then96, label %choice.exit97

and.626.then:                                     ; preds = %or.625.else
  %var.load94 = load ptr, ptr %var.code, align 8
  %call.res95 = call i1 @"formatter::ends_with_str"(ptr %var.load94, ptr @str.25.struct)
  br label %and.626.exit

and.626.else:                                     ; preds = %or.625.else
  br label %and.626.exit

and.626.exit:                                     ; preds = %and.626.else, %and.626.then
  %and.626.phi = phi i1 [ %call.res95, %and.626.then ], [ %call.res93, %and.626.else ]
  br label %or.625.exit

choice.then96:                                    ; preds = %or.625.exit
  ret i1 true

choice.exit97:                                    ; preds = %ret.dead98, %or.625.exit
  %var.load99 = load ptr, ptr %var.code, align 8
  %call.res100 = call i1 @"formatter::starts_with_str"(ptr %var.load99, ptr @str.26.struct)
  br i1 %call.res100, label %and.627.then, label %and.627.else

ret.dead98:                                       ; No predecessors!
  br label %choice.exit97

and.627.then:                                     ; preds = %choice.exit97
  %var.load101 = load ptr, ptr %var.code, align 8
  %call.res102 = call i1 @"formatter::ends_with_str"(ptr %var.load101, ptr @str.25.struct)
  br label %and.627.exit

and.627.else:                                     ; preds = %choice.exit97
  br label %and.627.exit

and.627.exit:                                     ; preds = %and.627.else, %and.627.then
  %and.627.phi = phi i1 [ %call.res102, %and.627.then ], [ %call.res100, %and.627.else ]
  br i1 %and.627.phi, label %choice.then103, label %choice.exit104

choice.then103:                                   ; preds = %and.627.exit
  ret i1 true

choice.exit104:                                   ; preds = %ret.dead105, %and.627.exit
  %var.load106 = load ptr, ptr %var.code, align 8
  %call.res107 = call i1 @"formatter::ends_with_str"(ptr %var.load106, ptr @str.27.struct)
  br i1 %call.res107, label %or.628.then, label %or.628.else

ret.dead105:                                      ; No predecessors!
  br label %choice.exit104

or.628.then:                                      ; preds = %choice.exit104
  br label %or.628.exit

or.628.else:                                      ; preds = %choice.exit104
  %var.load108 = load ptr, ptr %var.code, align 8
  %call.res109 = call i1 @"formatter::ends_with_str"(ptr %var.load108, ptr @str.28.struct)
  br label %or.628.exit

or.628.exit:                                      ; preds = %or.628.else, %or.628.then
  %or.628.phi = phi i1 [ %call.res107, %or.628.then ], [ %call.res109, %or.628.else ]
  br i1 %or.628.phi, label %choice.then110, label %choice.exit111

choice.then110:                                   ; preds = %or.628.exit
  ret i1 true

choice.exit111:                                   ; preds = %ret.dead112, %or.628.exit
  %var.load113 = load ptr, ptr %var.code, align 8
  %call.res114 = call i1 @"formatter::ends_with_str"(ptr %var.load113, ptr @str.29.struct)
  br i1 %call.res114, label %or.629.then, label %or.629.else

ret.dead112:                                      ; No predecessors!
  br label %choice.exit111

or.629.then:                                      ; preds = %choice.exit111
  br label %or.629.exit

or.629.else:                                      ; preds = %choice.exit111
  %var.load115 = load ptr, ptr %var.code, align 8
  %call.res116 = call i1 @"formatter::ends_with_str"(ptr %var.load115, ptr @str.30.struct)
  br label %or.629.exit

or.629.exit:                                      ; preds = %or.629.else, %or.629.then
  %or.629.phi = phi i1 [ %call.res114, %or.629.then ], [ %call.res116, %or.629.else ]
  br i1 %or.629.phi, label %or.630.then, label %or.630.else

or.630.then:                                      ; preds = %or.629.exit
  br label %or.630.exit

or.630.else:                                      ; preds = %or.629.exit
  %var.load117 = load ptr, ptr %var.code, align 8
  %call.res118 = call i1 @"formatter::ends_with_str"(ptr %var.load117, ptr @str.31.struct)
  br label %or.630.exit

or.630.exit:                                      ; preds = %or.630.else, %or.630.then
  %or.630.phi = phi i1 [ %or.629.phi, %or.630.then ], [ %call.res118, %or.630.else ]
  br i1 %or.630.phi, label %or.631.then, label %or.631.else

or.631.then:                                      ; preds = %or.630.exit
  br label %or.631.exit

or.631.else:                                      ; preds = %or.630.exit
  %var.load119 = load ptr, ptr %var.code, align 8
  %call.res120 = call i1 @"formatter::ends_with_str"(ptr %var.load119, ptr @str.32.struct)
  br label %or.631.exit

or.631.exit:                                      ; preds = %or.631.else, %or.631.then
  %or.631.phi = phi i1 [ %or.630.phi, %or.631.then ], [ %call.res120, %or.631.else ]
  br i1 %or.631.phi, label %or.632.then, label %or.632.else

or.632.then:                                      ; preds = %or.631.exit
  br label %or.632.exit

or.632.else:                                      ; preds = %or.631.exit
  %var.load121 = load ptr, ptr %var.code, align 8
  %call.res122 = call i1 @"formatter::ends_with_str"(ptr %var.load121, ptr @str.33.struct)
  br label %or.632.exit

or.632.exit:                                      ; preds = %or.632.else, %or.632.then
  %or.632.phi = phi i1 [ %or.631.phi, %or.632.then ], [ %call.res122, %or.632.else ]
  br i1 %or.632.phi, label %choice.then123, label %choice.exit124

choice.then123:                                   ; preds = %or.632.exit
  ret i1 true

choice.exit124:                                   ; preds = %ret.dead125, %or.632.exit
  %var.load126 = load ptr, ptr %var.code, align 8
  %call.res127 = call i1 @"formatter::ends_with_str"(ptr %var.load126, ptr @str.34.struct)
  br i1 %call.res127, label %or.633.then, label %or.633.else

ret.dead125:                                      ; No predecessors!
  br label %choice.exit124

or.633.then:                                      ; preds = %choice.exit124
  br label %or.633.exit

or.633.else:                                      ; preds = %choice.exit124
  %var.load128 = load ptr, ptr %var.code, align 8
  %call.res129 = call i1 @"formatter::ends_with_str"(ptr %var.load128, ptr @str.35.struct)
  br label %or.633.exit

or.633.exit:                                      ; preds = %or.633.else, %or.633.then
  %or.633.phi = phi i1 [ %call.res127, %or.633.then ], [ %call.res129, %or.633.else ]
  br i1 %or.633.phi, label %choice.then130, label %choice.exit131

choice.then130:                                   ; preds = %or.633.exit
  ret i1 true

choice.exit131:                                   ; preds = %ret.dead132, %or.633.exit
  %var.load133 = load ptr, ptr %var.code, align 8
  %call.res134 = call i1 @"formatter::starts_with_str"(ptr %var.load133, ptr @str.36.struct)
  br i1 %call.res134, label %or.634.then, label %or.634.else

ret.dead132:                                      ; No predecessors!
  br label %choice.exit131

or.634.then:                                      ; preds = %choice.exit131
  br label %or.634.exit

or.634.else:                                      ; preds = %choice.exit131
  %var.load135 = load ptr, ptr %var.code, align 8
  %call.res136 = call i1 @"formatter::starts_with_str"(ptr %var.load135, ptr @str.37.struct)
  br label %or.634.exit

or.634.exit:                                      ; preds = %or.634.else, %or.634.then
  %or.634.phi = phi i1 [ %call.res134, %or.634.then ], [ %call.res136, %or.634.else ]
  br i1 %or.634.phi, label %and.635.then, label %and.635.else

and.635.then:                                     ; preds = %or.634.exit
  %var.load137 = load ptr, ptr %var.code, align 8
  %call.res138 = call i1 @"formatter::ends_with_str"(ptr %var.load137, ptr @str.38.struct)
  br label %and.635.exit

and.635.else:                                     ; preds = %or.634.exit
  br label %and.635.exit

and.635.exit:                                     ; preds = %and.635.else, %and.635.then
  %and.635.phi = phi i1 [ %call.res138, %and.635.then ], [ %or.634.phi, %and.635.else ]
  br i1 %and.635.phi, label %choice.then139, label %choice.exit140

choice.then139:                                   ; preds = %and.635.exit
  ret i1 true

choice.exit140:                                   ; preds = %ret.dead141, %and.635.exit
  %var.load142 = load ptr, ptr %var.code, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load142, i32 0, i32 0
  %s.read.len143 = load i64, ptr %s.read.len, align 8
  %s.read.len144 = and i64 %s.read.len143, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load142, i32 0, i32 1
  %s.read.data145 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len144
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead141:                                      ; No predecessors!
  br label %choice.exit140

idx_ok:                                           ; preds = %abort.dead, %choice.exit140
  %s.byte.gep = getelementptr i8, ptr %s.read.data145, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp146 = icmp eq i64 %s.byte.val, 91
  br i1 %cmptmp146, label %or.636.then, label %or.636.else

idx_oob:                                          ; preds = %choice.exit140
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

or.636.then:                                      ; preds = %idx_ok
  br label %or.636.exit

or.636.else:                                      ; preds = %idx_ok
  %var.load147 = load ptr, ptr %var.code, align 8
  %call.res148 = call i1 @"formatter::starts_with_str"(ptr %var.load147, ptr @str.8.struct)
  br label %or.636.exit

or.636.exit:                                      ; preds = %or.636.else, %or.636.then
  %or.636.phi = phi i1 [ %cmptmp146, %or.636.then ], [ %call.res148, %or.636.else ]
  br i1 %or.636.phi, label %and.637.then, label %and.637.else

and.637.then:                                     ; preds = %or.636.exit
  %var.load149 = load ptr, ptr %var.code, align 8
  %call.res150 = call i1 @"formatter::ends_with_str"(ptr %var.load149, ptr @str.39.struct)
  br label %and.637.exit

and.637.else:                                     ; preds = %or.636.exit
  br label %and.637.exit

and.637.exit:                                     ; preds = %and.637.else, %and.637.then
  %and.637.phi = phi i1 [ %call.res150, %and.637.then ], [ %or.636.phi, %and.637.else ]
  br i1 %and.637.phi, label %choice.then151, label %choice.exit152

choice.then151:                                   ; preds = %and.637.exit
  ret i1 true

choice.exit152:                                   ; preds = %ret.dead153, %and.637.exit
  %var.load154 = load ptr, ptr %var.code, align 8
  %call.res155 = call i1 @"formatter::ends_with_str"(ptr %var.load154, ptr @str.40.struct)
  br i1 %call.res155, label %and.638.then, label %and.638.else

ret.dead153:                                      ; No predecessors!
  br label %choice.exit152

and.638.then:                                     ; preds = %choice.exit152
  %var.load156 = load ptr, ptr %var.code, align 8
  %call.res157 = call i1 @"formatter::ends_with_str"(ptr %var.load156, ptr @str.41.struct)
  %nottmp = xor i1 %call.res157, true
  br label %and.638.exit

and.638.else:                                     ; preds = %choice.exit152
  br label %and.638.exit

and.638.exit:                                     ; preds = %and.638.else, %and.638.then
  %and.638.phi = phi i1 [ %nottmp, %and.638.then ], [ %call.res155, %and.638.else ]
  br i1 %and.638.phi, label %and.639.then, label %and.639.else

and.639.then:                                     ; preds = %and.638.exit
  %var.load158 = load ptr, ptr %var.code, align 8
  %call.res159 = call i1 @"formatter::ends_with_str"(ptr %var.load158, ptr @str.42.struct)
  %nottmp160 = xor i1 %call.res159, true
  br label %and.639.exit

and.639.else:                                     ; preds = %and.638.exit
  br label %and.639.exit

and.639.exit:                                     ; preds = %and.639.else, %and.639.then
  %and.639.phi = phi i1 [ %nottmp160, %and.639.then ], [ %and.638.phi, %and.639.else ]
  br i1 %and.639.phi, label %and.640.then, label %and.640.else

and.640.then:                                     ; preds = %and.639.exit
  %var.load161 = load ptr, ptr %var.code, align 8
  %call.res162 = call i1 @"formatter::ends_with_str"(ptr %var.load161, ptr @str.43.struct)
  %nottmp163 = xor i1 %call.res162, true
  br label %and.640.exit

and.640.else:                                     ; preds = %and.639.exit
  br label %and.640.exit

and.640.exit:                                     ; preds = %and.640.else, %and.640.then
  %and.640.phi = phi i1 [ %nottmp163, %and.640.then ], [ %and.639.phi, %and.640.else ]
  br i1 %and.640.phi, label %and.641.then, label %and.641.else

and.641.then:                                     ; preds = %and.640.exit
  %var.load164 = load ptr, ptr %var.code, align 8
  %call.res165 = call i1 @"formatter::ends_with_str"(ptr %var.load164, ptr @str.44.struct)
  %nottmp166 = xor i1 %call.res165, true
  br label %and.641.exit

and.641.else:                                     ; preds = %and.640.exit
  br label %and.641.exit

and.641.exit:                                     ; preds = %and.641.else, %and.641.then
  %and.641.phi = phi i1 [ %nottmp166, %and.641.then ], [ %and.640.phi, %and.641.else ]
  br i1 %and.641.phi, label %and.642.then, label %and.642.else

and.642.then:                                     ; preds = %and.641.exit
  %var.load167 = load ptr, ptr %var.code, align 8
  %call.res168 = call i1 @"formatter::ends_with_str"(ptr %var.load167, ptr @str.45.struct)
  %nottmp169 = xor i1 %call.res168, true
  br label %and.642.exit

and.642.else:                                     ; preds = %and.641.exit
  br label %and.642.exit

and.642.exit:                                     ; preds = %and.642.else, %and.642.then
  %and.642.phi = phi i1 [ %nottmp169, %and.642.then ], [ %and.641.phi, %and.642.else ]
  ret i1 %and.642.phi
}

define i1 @"formatter::ends_with_cont_op"(ptr %0) #3 {
entry:
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %or.643.then, label %or.643.else

or.643.then:                                      ; preds = %entry
  br label %or.643.exit

or.643.else:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::ends_with_block_opener"(ptr %var.load3)
  br label %or.643.exit

or.643.exit:                                      ; preds = %or.643.else, %or.643.then
  %or.643.phi = phi i1 [ %cmptmp, %or.643.then ], [ %call.res, %or.643.else ]
  br i1 %or.643.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.643.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.643.exit
  %var.load4 = load ptr, ptr %var.code, align 8
  %call.res5 = call i1 @"formatter::ends_with_str"(ptr %var.load4, ptr @str.46.struct)
  br i1 %call.res5, label %and.644.then, label %and.644.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.644.then:                                     ; preds = %choice.exit
  %var.load6 = load ptr, ptr %var.code, align 8
  %call.res7 = call i1 @"formatter::ends_with_str"(ptr %var.load6, ptr @str.47.struct)
  %nottmp = xor i1 %call.res7, true
  br label %and.644.exit

and.644.else:                                     ; preds = %choice.exit
  br label %and.644.exit

and.644.exit:                                     ; preds = %and.644.else, %and.644.then
  %and.644.phi = phi i1 [ %nottmp, %and.644.then ], [ %call.res5, %and.644.else ]
  br i1 %and.644.phi, label %and.645.then, label %and.645.else

and.645.then:                                     ; preds = %and.644.exit
  %var.load8 = load ptr, ptr %var.code, align 8
  %call.res9 = call i1 @"formatter::ends_with_str"(ptr %var.load8, ptr @str.48.struct)
  %nottmp10 = xor i1 %call.res9, true
  br label %and.645.exit

and.645.else:                                     ; preds = %and.644.exit
  br label %and.645.exit

and.645.exit:                                     ; preds = %and.645.else, %and.645.then
  %and.645.phi = phi i1 [ %nottmp10, %and.645.then ], [ %and.644.phi, %and.645.else ]
  br i1 %and.645.phi, label %and.646.then, label %and.646.else

and.646.then:                                     ; preds = %and.645.exit
  %var.load11 = load ptr, ptr %var.code, align 8
  %call.res12 = call i1 @"formatter::ends_with_str"(ptr %var.load11, ptr @str.49.struct)
  %nottmp13 = xor i1 %call.res12, true
  br label %and.646.exit

and.646.else:                                     ; preds = %and.645.exit
  br label %and.646.exit

and.646.exit:                                     ; preds = %and.646.else, %and.646.then
  %and.646.phi = phi i1 [ %nottmp13, %and.646.then ], [ %and.645.phi, %and.646.else ]
  br i1 %and.646.phi, label %choice.then14, label %choice.exit15

choice.then14:                                    ; preds = %and.646.exit
  ret i1 true

choice.exit15:                                    ; preds = %ret.dead16, %and.646.exit
  %var.load17 = load ptr, ptr %var.code, align 8
  %call.res18 = call i1 @"formatter::ends_with_str"(ptr %var.load17, ptr @str.50.struct)
  br i1 %call.res18, label %and.647.then, label %and.647.else

ret.dead16:                                       ; No predecessors!
  br label %choice.exit15

and.647.then:                                     ; preds = %choice.exit15
  %var.load19 = load ptr, ptr %var.code, align 8
  %call.res20 = call i1 @"formatter::ends_with_str"(ptr %var.load19, ptr @str.51.struct)
  %nottmp21 = xor i1 %call.res20, true
  br label %and.647.exit

and.647.else:                                     ; preds = %choice.exit15
  br label %and.647.exit

and.647.exit:                                     ; preds = %and.647.else, %and.647.then
  %and.647.phi = phi i1 [ %nottmp21, %and.647.then ], [ %call.res18, %and.647.else ]
  br i1 %and.647.phi, label %and.648.then, label %and.648.else

and.648.then:                                     ; preds = %and.647.exit
  %var.load22 = load ptr, ptr %var.code, align 8
  %call.res23 = call i1 @"formatter::ends_with_str"(ptr %var.load22, ptr @str.52.struct)
  %nottmp24 = xor i1 %call.res23, true
  br label %and.648.exit

and.648.else:                                     ; preds = %and.647.exit
  br label %and.648.exit

and.648.exit:                                     ; preds = %and.648.else, %and.648.then
  %and.648.phi = phi i1 [ %nottmp24, %and.648.then ], [ %and.647.phi, %and.648.else ]
  br i1 %and.648.phi, label %and.649.then, label %and.649.else

and.649.then:                                     ; preds = %and.648.exit
  %var.load25 = load ptr, ptr %var.code, align 8
  %call.res26 = call i1 @"formatter::ends_with_str"(ptr %var.load25, ptr @str.53.struct)
  %nottmp27 = xor i1 %call.res26, true
  br label %and.649.exit

and.649.else:                                     ; preds = %and.648.exit
  br label %and.649.exit

and.649.exit:                                     ; preds = %and.649.else, %and.649.then
  %and.649.phi = phi i1 [ %nottmp27, %and.649.then ], [ %and.648.phi, %and.649.else ]
  br i1 %and.649.phi, label %choice.then28, label %choice.exit29

choice.then28:                                    ; preds = %and.649.exit
  ret i1 true

choice.exit29:                                    ; preds = %ret.dead30, %and.649.exit
  %var.load31 = load ptr, ptr %var.code, align 8
  %call.res32 = call i1 @"formatter::ends_with_str"(ptr %var.load31, ptr @str.54.struct)
  br i1 %call.res32, label %or.650.then, label %or.650.else

ret.dead30:                                       ; No predecessors!
  br label %choice.exit29

or.650.then:                                      ; preds = %choice.exit29
  br label %or.650.exit

or.650.else:                                      ; preds = %choice.exit29
  %var.load33 = load ptr, ptr %var.code, align 8
  %call.res34 = call i1 @"formatter::ends_with_str"(ptr %var.load33, ptr @str.55.struct)
  br label %or.650.exit

or.650.exit:                                      ; preds = %or.650.else, %or.650.then
  %or.650.phi = phi i1 [ %call.res32, %or.650.then ], [ %call.res34, %or.650.else ]
  br i1 %or.650.phi, label %or.651.then, label %or.651.else

or.651.then:                                      ; preds = %or.650.exit
  br label %or.651.exit

or.651.else:                                      ; preds = %or.650.exit
  %var.load35 = load ptr, ptr %var.code, align 8
  %call.res36 = call i1 @"formatter::ends_with_str"(ptr %var.load35, ptr @str.56.struct)
  br label %or.651.exit

or.651.exit:                                      ; preds = %or.651.else, %or.651.then
  %or.651.phi = phi i1 [ %or.650.phi, %or.651.then ], [ %call.res36, %or.651.else ]
  br i1 %or.651.phi, label %or.652.then, label %or.652.else

or.652.then:                                      ; preds = %or.651.exit
  br label %or.652.exit

or.652.else:                                      ; preds = %or.651.exit
  %var.load37 = load ptr, ptr %var.code, align 8
  %call.res38 = call i1 @"formatter::ends_with_str"(ptr %var.load37, ptr @str.57.struct)
  br label %or.652.exit

or.652.exit:                                      ; preds = %or.652.else, %or.652.then
  %or.652.phi = phi i1 [ %or.651.phi, %or.652.then ], [ %call.res38, %or.652.else ]
  br i1 %or.652.phi, label %or.653.then, label %or.653.else

or.653.then:                                      ; preds = %or.652.exit
  br label %or.653.exit

or.653.else:                                      ; preds = %or.652.exit
  %var.load39 = load ptr, ptr %var.code, align 8
  %call.res40 = call i1 @"formatter::ends_with_str"(ptr %var.load39, ptr @str.58.struct)
  br label %or.653.exit

or.653.exit:                                      ; preds = %or.653.else, %or.653.then
  %or.653.phi = phi i1 [ %or.652.phi, %or.653.then ], [ %call.res40, %or.653.else ]
  br i1 %or.653.phi, label %or.654.then, label %or.654.else

or.654.then:                                      ; preds = %or.653.exit
  br label %or.654.exit

or.654.else:                                      ; preds = %or.653.exit
  %var.load41 = load ptr, ptr %var.code, align 8
  %call.res42 = call i1 @"formatter::ends_with_str"(ptr %var.load41, ptr @str.41.struct)
  br label %or.654.exit

or.654.exit:                                      ; preds = %or.654.else, %or.654.then
  %or.654.phi = phi i1 [ %or.653.phi, %or.654.then ], [ %call.res42, %or.654.else ]
  br i1 %or.654.phi, label %or.655.then, label %or.655.else

or.655.then:                                      ; preds = %or.654.exit
  br label %or.655.exit

or.655.else:                                      ; preds = %or.654.exit
  %var.load43 = load ptr, ptr %var.code, align 8
  %call.res44 = call i1 @"formatter::ends_with_str"(ptr %var.load43, ptr @str.42.struct)
  br label %or.655.exit

or.655.exit:                                      ; preds = %or.655.else, %or.655.then
  %or.655.phi = phi i1 [ %or.654.phi, %or.655.then ], [ %call.res44, %or.655.else ]
  br i1 %or.655.phi, label %or.656.then, label %or.656.else

or.656.then:                                      ; preds = %or.655.exit
  br label %or.656.exit

or.656.else:                                      ; preds = %or.655.exit
  %var.load45 = load ptr, ptr %var.code, align 8
  %call.res46 = call i1 @"formatter::ends_with_str"(ptr %var.load45, ptr @str.59.struct)
  br label %or.656.exit

or.656.exit:                                      ; preds = %or.656.else, %or.656.then
  %or.656.phi = phi i1 [ %or.655.phi, %or.656.then ], [ %call.res46, %or.656.else ]
  br i1 %or.656.phi, label %or.657.then, label %or.657.else

or.657.then:                                      ; preds = %or.656.exit
  br label %or.657.exit

or.657.else:                                      ; preds = %or.656.exit
  %var.load47 = load ptr, ptr %var.code, align 8
  %call.res48 = call i1 @"formatter::ends_with_str"(ptr %var.load47, ptr @str.60.struct)
  br label %or.657.exit

or.657.exit:                                      ; preds = %or.657.else, %or.657.then
  %or.657.phi = phi i1 [ %or.656.phi, %or.657.then ], [ %call.res48, %or.657.else ]
  br i1 %or.657.phi, label %or.658.then, label %or.658.else

or.658.then:                                      ; preds = %or.657.exit
  br label %or.658.exit

or.658.else:                                      ; preds = %or.657.exit
  %var.load49 = load ptr, ptr %var.code, align 8
  %call.res50 = call i1 @"formatter::ends_with_str"(ptr %var.load49, ptr @str.61.struct)
  br label %or.658.exit

or.658.exit:                                      ; preds = %or.658.else, %or.658.then
  %or.658.phi = phi i1 [ %or.657.phi, %or.658.then ], [ %call.res50, %or.658.else ]
  br i1 %or.658.phi, label %or.659.then, label %or.659.else

or.659.then:                                      ; preds = %or.658.exit
  br label %or.659.exit

or.659.else:                                      ; preds = %or.658.exit
  %var.load51 = load ptr, ptr %var.code, align 8
  %call.res52 = call i1 @"formatter::ends_with_str"(ptr %var.load51, ptr @str.62.struct)
  br label %or.659.exit

or.659.exit:                                      ; preds = %or.659.else, %or.659.then
  %or.659.phi = phi i1 [ %or.658.phi, %or.659.then ], [ %call.res52, %or.659.else ]
  br i1 %or.659.phi, label %or.660.then, label %or.660.else

or.660.then:                                      ; preds = %or.659.exit
  br label %or.660.exit

or.660.else:                                      ; preds = %or.659.exit
  %var.load53 = load ptr, ptr %var.code, align 8
  %call.res54 = call i1 @"formatter::ends_with_str"(ptr %var.load53, ptr @str.63.struct)
  br label %or.660.exit

or.660.exit:                                      ; preds = %or.660.else, %or.660.then
  %or.660.phi = phi i1 [ %or.659.phi, %or.660.then ], [ %call.res54, %or.660.else ]
  br i1 %or.660.phi, label %or.661.then, label %or.661.else

or.661.then:                                      ; preds = %or.660.exit
  br label %or.661.exit

or.661.else:                                      ; preds = %or.660.exit
  %var.load55 = load ptr, ptr %var.code, align 8
  %call.res56 = call i1 @"formatter::ends_with_str"(ptr %var.load55, ptr @str.13.struct)
  br label %or.661.exit

or.661.exit:                                      ; preds = %or.661.else, %or.661.then
  %or.661.phi = phi i1 [ %or.660.phi, %or.661.then ], [ %call.res56, %or.661.else ]
  br i1 %or.661.phi, label %or.662.then, label %or.662.else

or.662.then:                                      ; preds = %or.661.exit
  br label %or.662.exit

or.662.else:                                      ; preds = %or.661.exit
  %var.load57 = load ptr, ptr %var.code, align 8
  %call.res58 = call i1 @"formatter::ends_with_str"(ptr %var.load57, ptr @str.14.struct)
  br label %or.662.exit

or.662.exit:                                      ; preds = %or.662.else, %or.662.then
  %or.662.phi = phi i1 [ %or.661.phi, %or.662.then ], [ %call.res58, %or.662.else ]
  br i1 %or.662.phi, label %or.663.then, label %or.663.else

or.663.then:                                      ; preds = %or.662.exit
  br label %or.663.exit

or.663.else:                                      ; preds = %or.662.exit
  %var.load59 = load ptr, ptr %var.code, align 8
  %call.res60 = call i1 @"formatter::ends_with_str"(ptr %var.load59, ptr @str.15.struct)
  br label %or.663.exit

or.663.exit:                                      ; preds = %or.663.else, %or.663.then
  %or.663.phi = phi i1 [ %or.662.phi, %or.663.then ], [ %call.res60, %or.663.else ]
  br i1 %or.663.phi, label %or.664.then, label %or.664.else

or.664.then:                                      ; preds = %or.663.exit
  br label %or.664.exit

or.664.else:                                      ; preds = %or.663.exit
  %var.load61 = load ptr, ptr %var.code, align 8
  %call.res62 = call i1 @"formatter::ends_with_str"(ptr %var.load61, ptr @str.16.struct)
  br label %or.664.exit

or.664.exit:                                      ; preds = %or.664.else, %or.664.then
  %or.664.phi = phi i1 [ %or.663.phi, %or.664.then ], [ %call.res62, %or.664.else ]
  br i1 %or.664.phi, label %or.665.then, label %or.665.else

or.665.then:                                      ; preds = %or.664.exit
  br label %or.665.exit

or.665.else:                                      ; preds = %or.664.exit
  %var.load63 = load ptr, ptr %var.code, align 8
  %call.res64 = call i1 @"formatter::ends_with_str"(ptr %var.load63, ptr @str.4.struct)
  br label %or.665.exit

or.665.exit:                                      ; preds = %or.665.else, %or.665.then
  %or.665.phi = phi i1 [ %or.664.phi, %or.665.then ], [ %call.res64, %or.665.else ]
  br i1 %or.665.phi, label %or.666.then, label %or.666.else

or.666.then:                                      ; preds = %or.665.exit
  br label %or.666.exit

or.666.else:                                      ; preds = %or.665.exit
  %var.load65 = load ptr, ptr %var.code, align 8
  %call.res66 = call i1 @"formatter::ends_with_str"(ptr %var.load65, ptr @str.17.struct)
  br label %or.666.exit

or.666.exit:                                      ; preds = %or.666.else, %or.666.then
  %or.666.phi = phi i1 [ %or.665.phi, %or.666.then ], [ %call.res66, %or.666.else ]
  br i1 %or.666.phi, label %or.667.then, label %or.667.else

or.667.then:                                      ; preds = %or.666.exit
  br label %or.667.exit

or.667.else:                                      ; preds = %or.666.exit
  %var.load67 = load ptr, ptr %var.code, align 8
  %call.res68 = call i1 @"formatter::ends_with_str"(ptr %var.load67, ptr @str.64.struct)
  br label %or.667.exit

or.667.exit:                                      ; preds = %or.667.else, %or.667.then
  %or.667.phi = phi i1 [ %or.666.phi, %or.667.then ], [ %call.res68, %or.667.else ]
  br i1 %or.667.phi, label %or.668.then, label %or.668.else

or.668.then:                                      ; preds = %or.667.exit
  br label %or.668.exit

or.668.else:                                      ; preds = %or.667.exit
  %var.load69 = load ptr, ptr %var.code, align 8
  %call.res70 = call i1 @"formatter::ends_with_str"(ptr %var.load69, ptr @str.65.struct)
  br label %or.668.exit

or.668.exit:                                      ; preds = %or.668.else, %or.668.then
  %or.668.phi = phi i1 [ %or.667.phi, %or.668.then ], [ %call.res70, %or.668.else ]
  br i1 %or.668.phi, label %or.669.then, label %or.669.else

or.669.then:                                      ; preds = %or.668.exit
  br label %or.669.exit

or.669.else:                                      ; preds = %or.668.exit
  %var.load71 = load ptr, ptr %var.code, align 8
  %call.res72 = call i1 @"formatter::ends_with_str"(ptr %var.load71, ptr @str.66.struct)
  br label %or.669.exit

or.669.exit:                                      ; preds = %or.669.else, %or.669.then
  %or.669.phi = phi i1 [ %or.668.phi, %or.669.then ], [ %call.res72, %or.669.else ]
  ret i1 %or.669.phi
}

define i1 @"formatter::has_intermediate_dedent"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %var.r = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.670 = alloca i64, align 8
  %loop.idx.670 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.670, align 8
  br label %loop.header.670

loop.header.670:                                  ; preds = %loop.latch.670, %a.after
  %counter.load = load i64, ptr %loop.idx.670, align 8
  br label %loop.body.670

loop.body.670:                                    ; preds = %loop.header.670
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.670, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load5 = load i64, ptr %"var.idx'", align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.670:                                ; No predecessors!
  br label %loop.exit.670

loop.latch.670:                                   ; preds = %choice.exit56
  %step.val = load i64, ptr %loop.step.670, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.670, align 8
  br label %loop.header.670

loop.exit.670:                                    ; preds = %choice.then68, %choice.then63, %choice.then, %loop.exit.nat.670
  %var.load72 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load72

choice.then:                                      ; preds = %loop.body.670
  br label %loop.exit.670

choice.exit:                                      ; preds = %loop.body.670
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
  store i64 493, ptr %err.line.gep, align 8
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
  store i64 493, ptr %err.line.gep29, align 8
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
  br i1 %unwrap.is_pos, label %unwrap.pos.671, label %unwrap.abort.671

unwrap.pos.671:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.ln, align 8
  %var.load46 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load46, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp47 = icmp eq i64 %fld.load, 0
  br i1 %cmptmp47, label %and.672.then, label %and.672.else

unwrap.abort.671:                                 ; preds = %a.rd.done
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

err.thread:                                       ; preds = %unwrap.abort.671
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.671
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data42, i32 %err.file.len32, ptr %err.file.data45, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

and.672.then:                                     ; preds = %unwrap.pos.671
  %var.load48 = load ptr, ptr %var.ln, align 8
  %fld.gep49 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load48, i32 0, i32 5
  %fld.load50 = load i1, ptr %fld.gep49, align 1
  %nottmp = xor i1 %fld.load50, true
  br label %and.672.exit

and.672.else:                                     ; preds = %unwrap.pos.671
  br label %and.672.exit

and.672.exit:                                     ; preds = %and.672.else, %and.672.then
  %and.672.phi = phi i1 [ %nottmp, %and.672.then ], [ %cmptmp47, %and.672.else ]
  br i1 %and.672.phi, label %and.673.then, label %and.673.else

and.673.then:                                     ; preds = %and.672.exit
  %var.load51 = load ptr, ptr %var.ln, align 8
  %fld.gep52 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load51, i32 0, i32 6
  %fld.load53 = load i1, ptr %fld.gep52, align 1
  %nottmp54 = xor i1 %fld.load53, true
  br label %and.673.exit

and.673.else:                                     ; preds = %and.672.exit
  br label %and.673.exit

and.673.exit:                                     ; preds = %and.673.else, %and.673.then
  %and.673.phi = phi i1 [ %nottmp54, %and.673.then ], [ %and.672.phi, %and.673.else ]
  br i1 %and.673.phi, label %choice.then55, label %choice.exit56

choice.then55:                                    ; preds = %and.673.exit
  %var.load57 = load ptr, ptr %var.ln, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load57, i32 0, i32 3
  %fld.load59 = load i64, ptr %fld.gep58, align 8
  store i64 %fld.load59, ptr %var.r, align 8
  %var.load60 = load i64, ptr %var.r, align 8
  %var.load61 = load i64, ptr %var.parent_raw, align 8
  %cmptmp62 = icmp sle i64 %var.load60, %var.load61
  br i1 %cmptmp62, label %choice.then63, label %choice.exit64

choice.exit56:                                    ; preds = %choice.exit69, %and.673.exit
  %var.load70 = load i64, ptr %"var.idx'", align 8
  %addtmp71 = add i64 %var.load70, 1
  store i64 %addtmp71, ptr %"var.idx'", align 8
  br label %loop.latch.670

choice.then63:                                    ; preds = %choice.then55
  br label %loop.exit.670

choice.exit64:                                    ; preds = %choice.then55
  %var.load65 = load i64, ptr %var.r, align 8
  %var.load66 = load i64, ptr %var.child_raw, align 8
  %cmptmp67 = icmp slt i64 %var.load65, %var.load66
  br i1 %cmptmp67, label %choice.then68, label %choice.exit69

choice.then68:                                    ; preds = %choice.exit64
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.670

choice.exit69:                                    ; preds = %choice.exit64
  br label %choice.exit56
}

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define i64 @"formatter::compute_child_delta"(ptr %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5) #3 {
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
  br i1 %call.res2, label %and.674.then, label %and.674.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.674.then:                                     ; preds = %choice.exit
  %var.load3 = load ptr, ptr %var.parent_code, align 8
  %call.res4 = call i1 @"formatter::ends_with_block_opener"(ptr %var.load3)
  %nottmp = xor i1 %call.res4, true
  br label %and.674.exit

and.674.else:                                     ; preds = %choice.exit
  br label %and.674.exit

and.674.exit:                                     ; preds = %and.674.else, %and.674.then
  %and.674.phi = phi i1 [ %nottmp, %and.674.then ], [ %call.res2, %and.674.else ]
  br i1 %and.674.phi, label %choice.then5, label %choice.else

choice.then5:                                     ; preds = %and.674.exit
  %var.load7 = load ptr, ptr %var.parent_code, align 8
  %call.res8 = call i1 @"formatter::ends_with_cont_op"(ptr %var.load7)
  br i1 %call.res8, label %and.675.then, label %and.675.else

choice.else:                                      ; preds = %and.674.exit
  %var.load19 = load ptr, ptr %var.parent_code, align 8
  %call.res20 = call i1 @"formatter::ends_with_cont_op"(ptr %var.load19)
  br i1 %call.res20, label %choice.then21, label %choice.else22

choice.exit6:                                     ; preds = %choice.exit23, %choice.exit18
  %choice.res25 = phi i64 [ %choice.res, %choice.exit18 ], [ %choice.res24, %choice.exit23 ]
  ret i64 %choice.res25

and.675.then:                                     ; preds = %choice.then5
  %var.load9 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.675.else:                                     ; preds = %choice.then5
  br label %and.675.exit

and.675.exit:                                     ; preds = %and.675.else, %a.after
  %and.675.phi = phi i1 [ %call.res15, %a.after ], [ %call.res8, %and.675.else ]
  br i1 %and.675.phi, label %choice.then16, label %choice.else17

a.create:                                         ; preds = %and.675.then
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

a.after:                                          ; preds = %a.create, %and.675.then
  %a.load2 = load ptr, ptr %var.lines, align 8
  %var.load12 = load i64, ptr %var.idx, align 8
  %var.load13 = load i64, ptr %var.parent_raw, align 8
  %var.load14 = load i64, ptr %var.child_raw, align 8
  %call.res15 = call i1 @"formatter::has_intermediate_dedent"(ptr %a.load2, i64 %var.load12, i64 %var.load13, i64 %var.load14)
  br label %and.675.exit

choice.then16:                                    ; preds = %and.675.exit
  br label %choice.exit18

choice.else17:                                    ; preds = %and.675.exit
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

define i64 @"formatter::find_stack_level"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %var.v = alloca i64, align 8
  %var._26 = alloca ptr, align 8
  %var._24 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.676 = alloca i64, align 8
  %loop.idx.676 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.676, align 8
  br label %loop.header.676

loop.header.676:                                  ; preds = %loop.latch.676, %entry
  %counter.load = load i64, ptr %loop.idx.676, align 8
  br label %loop.body.676

loop.body.676:                                    ; preds = %loop.header.676
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.676, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load1 = load i64, ptr %"var.idx'", align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.676:                                ; No predecessors!
  br label %loop.exit.676

loop.latch.676:                                   ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.676, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.676, align 8
  br label %loop.header.676

loop.exit.676:                                    ; preds = %choice.then30, %choice.then, %loop.exit.nat.676
  %var.load36 = load i64, ptr %"var.found'", align 8
  ret i64 %var.load36

choice.then:                                      ; preds = %loop.body.676
  br label %loop.exit.676

choice.exit:                                      ; preds = %loop.body.676
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
  store i64 523, ptr %err.line.gep, align 8
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
  store i64 523, ptr %err.line.gep14, align 8
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
  br label %loop.exit.676

choice.else31:                                    ; preds = %choice.exit22
  %var.load34 = load i64, ptr %"var.idx'", align 8
  %subtmp35 = sub i64 %var.load34, 1
  store i64 %subtmp35, ptr %"var.idx'", align 8
  br label %choice.exit32

choice.exit32:                                    ; preds = %choice.else31
  br label %loop.latch.676
}

define { i64, ptr } @"formatter::format_lines"(ptr %0) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %var._i2139 = alloca i64, align 8
  %var._2138 = alloca i64, align 8
  %loop.step.685 = alloca i64, align 8
  %loop.idx.685 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.canon_indent = alloca i64, align 8
  %var._1981 = alloca ptr, align 8
  %var._1978 = alloca i64, align 8
  %var._1886 = alloca ptr, align 8
  %var._1885 = alloca ptr, align 8
  %var._1884 = alloca ptr, align 8
  %var._1795 = alloca ptr, align 8
  %var._1794 = alloca ptr, align 8
  %var._1793 = alloca ptr, align 8
  %var._1707 = alloca ptr, align 8
  %var._1706 = alloca ptr, align 8
  %var._1705 = alloca ptr, align 8
  %var._1620 = alloca ptr, align 8
  %var._1619 = alloca ptr, align 8
  %var._1618 = alloca ptr, align 8
  %var.new_canon1458 = alloca i64, align 8
  %var.delta1454 = alloca i64, align 8
  %var.p_code1434 = alloca ptr, align 8
  %var._1432 = alloca ptr, align 8
  %var._1429 = alloca ptr, align 8
  %var.p_canon1366 = alloca i64, align 8
  %var._1364 = alloca ptr, align 8
  %var._1361 = alloca i64, align 8
  %var.matched_raw = alloca i64, align 8
  %var._1292 = alloca ptr, align 8
  %var._1289 = alloca i64, align 8
  %var._1219 = alloca ptr, align 8
  %var._1216 = alloca i64, align 8
  %var._i1152 = alloca i64, align 8
  %var._1151 = alloca i64, align 8
  %loop.step.682 = alloca i64, align 8
  %loop.idx.682 = alloca i64, align 8
  %var._1116 = alloca ptr, align 8
  %var._1115 = alloca ptr, align 8
  %var._1114 = alloca ptr, align 8
  %var._1028 = alloca ptr, align 8
  %var._1027 = alloca ptr, align 8
  %var._1026 = alloca ptr, align 8
  %var._960 = alloca ptr, align 8
  %var._959 = alloca ptr, align 8
  %var._958 = alloca ptr, align 8
  %var.new_canon = alloca i64, align 8
  %var.delta = alloca i64, align 8
  %var.p_code791 = alloca ptr, align 8
  %var._789 = alloca ptr, align 8
  %var._786 = alloca ptr, align 8
  %var.p_canon = alloca i64, align 8
  %var._722 = alloca ptr, align 8
  %var._719 = alloca i64, align 8
  %var.top_raw = alloca i64, align 8
  %var._650 = alloca ptr, align 8
  %var._647 = alloca i64, align 8
  %var.cur_code = alloca ptr, align 8
  %var.raw = alloca i64, align 8
  %var.c_indent = alloca i64, align 8
  %var.p_code = alloca ptr, align 8
  %var._417 = alloca ptr, align 8
  %var._414 = alloca ptr, align 8
  %var.base_r = alloca i64, align 8
  %var._351 = alloca ptr, align 8
  %var._348 = alloca i64, align 8
  %var.base_c = alloca i64, align 8
  %var._286 = alloca ptr, align 8
  %var._284 = alloca i64, align 8
  %var.lvl = alloca i64, align 8
  %var.body = alloca ptr, align 8
  %var.max_blanks = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.677 = alloca i64, align 8
  %loop.idx.677 = alloca i64, align 8
  %"var.cur_canon_indent'" = alloca i64, align 8
  %"var.started'" = alloca i1, align 1
  %"var.blank_run'" = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
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
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len82

b.buf.len82:                                      ; preds = %abort.dead, %a.store68
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep81, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.out, align 8
  store i64 0, ptr %"var.blank_run'", align 8
  store i1 false, ptr %"var.started'", align 1
  store i64 0, ptr %"var.cur_canon_indent'", align 8
  %var.load = load ptr, ptr %var.lines, align 8
  %a.load84 = load ptr, ptr %var.lines, align 8
  %a.null85 = icmp eq ptr %a.load84, null
  br i1 %a.null85, label %a.create86, label %a.after87

str_overflow_abort:                               ; preds = %a.store68
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len82

a.create86:                                       ; preds = %b.buf.len82
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 24)
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 128)
  %a.len.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create89, i32 0, i32 0
  store i64 0, ptr %a.len.gep92, align 8
  %a.data.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create89, i32 0, i32 1
  store ptr %a.buf91, ptr %a.data.gep93, align 8
  %a.cap.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create89, i32 0, i32 2
  store i64 16, ptr %a.cap.gep94, align 8
  store ptr %a.create89, ptr %var.lines, align 8
  br label %a.after87

a.after87:                                        ; preds = %a.create86, %b.buf.len82
  %a.load295 = load ptr, ptr %var.lines, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load295, i32 0, i32 0
  %arr.cycle.len96 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load295, i32 0, i32 1
  %arr.cycle.data97 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.677, align 8
  br label %loop.header.677

loop.header.677:                                  ; preds = %loop.latch.677, %a.after87
  %counter.load = load i64, ptr %loop.idx.677, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len96
  br i1 %loop.cond, label %loop.body.677, label %loop.exit.nat.677

loop.body.677:                                    ; preds = %loop.header.677
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.677, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data97, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ln, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %loop.rel.i, ptr %var.idx, align 8
  %var.load98 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load98, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp ne i64 %fld.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.677:                                ; preds = %loop.header.677
  br label %loop.exit.677

loop.latch.677:                                   ; preds = %choice.exit
  %step.val2128 = load i64, ptr %loop.step.677, align 8
  %loop.next2129 = add i64 %counter.load, %step.val2128
  store i64 %loop.next2129, ptr %loop.idx.677, align 8
  br label %loop.header.677

loop.exit.677:                                    ; preds = %loop.exit.nat.677
  %var.load2130 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2130, i32 0, i32 0
  %b.freeze.len2131 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2130, i32 0, i32 1
  %b.freeze.data2132 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len2131, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data2132, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2130, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2130, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2130, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.res, align 8
  %var.load2133 = load ptr, ptr %var.res, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2133, i32 0, i32 0
  %str.len.query2134 = load i64, ptr %str.len.query, align 8
  %str.len.query2135 = and i64 %str.len.query2134, 281474976710655
  store i64 %str.len.query2135, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.685, align 8
  br label %loop.header.685

choice.then:                                      ; preds = %loop.body.677
  store i1 true, ptr %"var.started'", align 1
  store i64 0, ptr %"var.blank_run'", align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load99 = load ptr, ptr %var.ln, align 8
  %fld.gep100 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load99, i32 0, i32 0
  %fld.load101 = load ptr, ptr %fld.gep100, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load101, i32 0, i32 0
  %app.str.len102 = load i64, ptr %app.str.len, align 8
  %app.str.len103 = and i64 %app.str.len102, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load101, i32 0, i32 1
  %app.str.data104 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len105 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len105, i64 %app.str.len103)
  %sum106 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf107 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf107, label %str_overflow_abort109, label %b.app.new.len108

choice.else:                                      ; preds = %loop.body.677
  %var.load157 = load ptr, ptr %var.ln, align 8
  %fld.gep158 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load157, i32 0, i32 5
  %fld.load159 = load i1, ptr %fld.gep158, align 1
  br i1 %fld.load159, label %choice.then160, label %choice.else161

choice.exit:                                      ; preds = %choice.exit162, %br.done.678
  br label %loop.latch.677

b.app.new.len108:                                 ; preds = %abort.dead110, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap111 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap111, %sum106
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort109:                            ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead110:                                    ; No predecessors!
  br label %b.app.new.len108

b.grow2:                                          ; preds = %b.app.new.len108
  %b.cap2 = mul i64 %b.cap111, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum106
  %b.new.cap = select i1 %b.cap.need, i64 %sum106, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2112 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2113 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum114 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf115 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf115, label %str_overflow_abort117, label %b.new.buf.len2116

b.nogrow2:                                        ; preds = %b.app.new.len108
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2116
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data120 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data120, i64 %b.app.cur.len105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data104, i64 %app.str.len103, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data120, i64 %sum106
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum106, ptr %b.len.gep121, align 8
  %b.load122 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  %b.rn.cur.len123 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len123, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf125 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.rn.new.len126

b.new.buf.len2116:                                ; preds = %abort.dead118, %b.grow2
  %arena.cur119 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %sum114)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2113, i64 %b.cur.len2112, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2112
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort117:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead118:                                    ; No predecessors!
  br label %b.new.buf.len2116

b.rn.new.len126:                                  ; preds = %abort.dead128, %b.grow_done
  %b.cap129 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 2
  %b.cap130 = load i64, ptr %b.cap129, align 8
  %b.need.grow131 = icmp slt i64 %b.cap130, %sum124
  br i1 %b.need.grow131, label %b.grow2132, label %b.nogrow2133

str_overflow_abort127:                            ; preds = %b.grow_done
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead128:                                    ; No predecessors!
  br label %b.rn.new.len126

b.grow2132:                                       ; preds = %b.rn.new.len126
  %b.cap2135 = mul i64 %b.cap130, 2
  %b.cap.small136 = icmp slt i64 %b.cap2135, 16
  %b.cap.grow137 = select i1 %b.cap.small136, i64 16, i64 %b.cap2135
  %b.cap.need138 = icmp slt i64 %b.cap.grow137, %sum124
  %b.new.cap139 = select i1 %b.cap.need138, i64 %sum124, i64 %b.cap.grow137
  %b.cur.len2140 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  %b.cur.len2141 = load i64, ptr %b.cur.len2140, align 8
  %b.cur.data2142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  %b.cur.data2143 = load ptr, ptr %b.cur.data2142, align 8
  %b.new.buf.len2144 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap139, i64 1)
  %sum145 = extractvalue { i64, i1 } %b.new.buf.len2144, 0
  %ovf146 = extractvalue { i64, i1 } %b.new.buf.len2144, 1
  br i1 %ovf146, label %str_overflow_abort148, label %b.new.buf.len2147

b.nogrow2133:                                     ; preds = %b.rn.new.len126
  br label %b.grow_done134

b.grow_done134:                                   ; preds = %b.nogrow2133, %b.new.buf.len2147
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  %b.rn.data155 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data155, i64 %b.rn.cur.len123
  br i1 true, label %br.b1.678, label %br.c2.678

b.new.buf.len2147:                                ; preds = %abort.dead149, %b.grow2132
  %arena.cur150 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2151 = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 %sum145)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2151, ptr align 1 %b.cur.data2143, i64 %b.cur.len2141, i1 false)
  %b.grow2.nul152 = getelementptr i8, ptr %b.new.buf2151, i64 %b.cur.len2141
  store i8 0, ptr %b.grow2.nul152, align 1
  %b.new.data2.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  store ptr %b.new.buf2151, ptr %b.new.data2.gep153, align 8
  %b.new.cap2.gep154 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 2
  store i64 %b.new.cap139, ptr %b.new.cap2.gep154, align 8
  br label %b.grow_done134

str_overflow_abort148:                            ; preds = %b.grow2132
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead149:                                    ; No predecessors!
  br label %b.new.buf.len2147

br.b1.678:                                        ; preds = %b.grow_done134
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.678

br.c2.678:                                        ; preds = %b.grow_done134
  br i1 true, label %br.b2.678, label %br.c3.678

br.b2.678:                                        ; preds = %br.c2.678
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.678

br.c3.678:                                        ; preds = %br.c2.678
  br i1 true, label %br.b3.678, label %br.b4.678

br.b3.678:                                        ; preds = %br.c3.678
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.678

br.b4.678:                                        ; preds = %br.c3.678
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.678

br.done.678:                                      ; preds = %br.b4.678, %br.b3.678, %br.b2.678, %br.b1.678
  %br.nul = getelementptr i8, ptr %b.rn.data155, i64 %sum124
  store i8 0, ptr %br.nul, align 1
  %b.len.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  store i64 %sum124, ptr %b.len.gep156, align 8
  br label %choice.exit

choice.then160:                                   ; preds = %choice.else
  %var.load163 = load i1, ptr %"var.started'", align 1
  br i1 %var.load163, label %choice.then164, label %choice.exit165

choice.else161:                                   ; preds = %choice.else
  store i1 true, ptr %"var.started'", align 1
  store i64 0, ptr %"var.blank_run'", align 8
  %var.load223 = load ptr, ptr %var.ln, align 8
  %fld.gep224 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load223, i32 0, i32 0
  %fld.load225 = load ptr, ptr %fld.gep224, align 8
  %call.res = call { i64, ptr } @"formatter::strip_leading_ws"(ptr %fld.load225)
  %arena.cur226 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.body, align 8
  %var.load227 = load ptr, ptr %var.ln, align 8
  %fld.gep228 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load227, i32 0, i32 6
  %fld.load229 = load i1, ptr %fld.gep228, align 1
  br i1 %fld.load229, label %choice.then230, label %choice.else231

choice.exit162:                                   ; preds = %choice.exit232, %choice.exit165
  br label %choice.exit

choice.then164:                                   ; preds = %choice.then160
  %var.load166 = load i64, ptr %"var.blank_run'", align 8
  %addtmp = add i64 %var.load166, 1
  store i64 %addtmp, ptr %"var.blank_run'", align 8
  %var.load167 = load i64, ptr %"var.cur_canon_indent'", align 8
  %cmptmp168 = icmp eq i64 %var.load167, 0
  br i1 %cmptmp168, label %choice.then169, label %choice.else170

choice.exit165:                                   ; preds = %choice.exit176, %choice.then160
  br label %choice.exit162

choice.then169:                                   ; preds = %choice.then164
  br label %choice.exit171

choice.else170:                                   ; preds = %choice.then164
  br label %choice.exit171

choice.exit171:                                   ; preds = %choice.else170, %choice.then169
  %choice.res = phi i64 [ 2, %choice.then169 ], [ 1, %choice.else170 ]
  store i64 %choice.res, ptr %var.max_blanks, align 8
  %var.load172 = load i64, ptr %"var.blank_run'", align 8
  %var.load173 = load i64, ptr %var.max_blanks, align 8
  %cmptmp174 = icmp sle i64 %var.load172, %var.load173
  br i1 %cmptmp174, label %choice.then175, label %choice.exit176

choice.then175:                                   ; preds = %choice.exit171
  %b.load177 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len178 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 0
  %b.rn.cur.len179 = load i64, ptr %b.rn.cur.len178, align 8
  %b.rn.new.len180 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len179, i64 1)
  %sum181 = extractvalue { i64, i1 } %b.rn.new.len180, 0
  %ovf182 = extractvalue { i64, i1 } %b.rn.new.len180, 1
  br i1 %ovf182, label %str_overflow_abort184, label %b.rn.new.len183

choice.exit176:                                   ; preds = %br.done.679, %choice.exit171
  br label %choice.exit165

b.rn.new.len183:                                  ; preds = %abort.dead185, %choice.then175
  %b.cap186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 2
  %b.cap187 = load i64, ptr %b.cap186, align 8
  %b.need.grow188 = icmp slt i64 %b.cap187, %sum181
  br i1 %b.need.grow188, label %b.grow2189, label %b.nogrow2190

str_overflow_abort184:                            ; preds = %choice.then175
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead185:                                    ; No predecessors!
  br label %b.rn.new.len183

b.grow2189:                                       ; preds = %b.rn.new.len183
  %b.cap2192 = mul i64 %b.cap187, 2
  %b.cap.small193 = icmp slt i64 %b.cap2192, 16
  %b.cap.grow194 = select i1 %b.cap.small193, i64 16, i64 %b.cap2192
  %b.cap.need195 = icmp slt i64 %b.cap.grow194, %sum181
  %b.new.cap196 = select i1 %b.cap.need195, i64 %sum181, i64 %b.cap.grow194
  %b.cur.len2197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 0
  %b.cur.len2198 = load i64, ptr %b.cur.len2197, align 8
  %b.cur.data2199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 1
  %b.cur.data2200 = load ptr, ptr %b.cur.data2199, align 8
  %b.new.buf.len2201 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap196, i64 1)
  %sum202 = extractvalue { i64, i1 } %b.new.buf.len2201, 0
  %ovf203 = extractvalue { i64, i1 } %b.new.buf.len2201, 1
  br i1 %ovf203, label %str_overflow_abort205, label %b.new.buf.len2204

b.nogrow2190:                                     ; preds = %b.rn.new.len183
  br label %b.grow_done191

b.grow_done191:                                   ; preds = %b.nogrow2190, %b.new.buf.len2204
  %b.rn.data212 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 1
  %b.rn.data213 = load ptr, ptr %b.rn.data212, align 8
  %b.rn.dst214 = getelementptr i8, ptr %b.rn.data213, i64 %b.rn.cur.len179
  br i1 true, label %br.b1.679, label %br.c2.679

b.new.buf.len2204:                                ; preds = %abort.dead206, %b.grow2189
  %arena.cur207 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 %sum202)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2208, ptr align 1 %b.cur.data2200, i64 %b.cur.len2198, i1 false)
  %b.grow2.nul209 = getelementptr i8, ptr %b.new.buf2208, i64 %b.cur.len2198
  store i8 0, ptr %b.grow2.nul209, align 1
  %b.new.data2.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 1
  store ptr %b.new.buf2208, ptr %b.new.data2.gep210, align 8
  %b.new.cap2.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 2
  store i64 %b.new.cap196, ptr %b.new.cap2.gep211, align 8
  br label %b.grow_done191

str_overflow_abort205:                            ; preds = %b.grow2189
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead206:                                    ; No predecessors!
  br label %b.new.buf.len2204

br.b1.679:                                        ; preds = %b.grow_done191
  store i8 10, ptr %b.rn.dst214, align 1
  br label %br.done.679

br.c2.679:                                        ; preds = %b.grow_done191
  br i1 true, label %br.b2.679, label %br.c3.679

br.b2.679:                                        ; preds = %br.c2.679
  store i8 -64, ptr %b.rn.dst214, align 1
  %br.dst1215 = getelementptr i8, ptr %b.rn.dst214, i64 1
  store i8 -118, ptr %br.dst1215, align 1
  br label %br.done.679

br.c3.679:                                        ; preds = %br.c2.679
  br i1 true, label %br.b3.679, label %br.b4.679

br.b3.679:                                        ; preds = %br.c3.679
  store i8 -32, ptr %b.rn.dst214, align 1
  %br.dst1.3216 = getelementptr i8, ptr %b.rn.dst214, i64 1
  store i8 -128, ptr %br.dst1.3216, align 1
  %br.dst2.3217 = getelementptr i8, ptr %b.rn.dst214, i64 2
  store i8 -118, ptr %br.dst2.3217, align 1
  br label %br.done.679

br.b4.679:                                        ; preds = %br.c3.679
  store i8 -16, ptr %b.rn.dst214, align 1
  %br.dst1.4218 = getelementptr i8, ptr %b.rn.dst214, i64 1
  store i8 -128, ptr %br.dst1.4218, align 1
  %br.dst2.4219 = getelementptr i8, ptr %b.rn.dst214, i64 2
  store i8 -128, ptr %br.dst2.4219, align 1
  %br.dst3.4220 = getelementptr i8, ptr %b.rn.dst214, i64 3
  store i8 -118, ptr %br.dst3.4220, align 1
  br label %br.done.679

br.done.679:                                      ; preds = %br.b4.679, %br.b3.679, %br.b2.679, %br.b1.679
  %br.nul221 = getelementptr i8, ptr %b.rn.data213, i64 %sum181
  store i8 0, ptr %br.nul221, align 1
  %b.len.gep222 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 0
  store i64 %sum181, ptr %b.len.gep222, align 8
  br label %choice.exit176

choice.then230:                                   ; preds = %choice.else161
  %var.load233 = load ptr, ptr %var.raw_stack, align 8
  %a.load234 = load ptr, ptr %var.raw_stack, align 8
  %a.null235 = icmp eq ptr %a.load234, null
  br i1 %a.null235, label %a.create236, label %a.after237

choice.else231:                                   ; preds = %choice.else161
  %var.load580 = load ptr, ptr %var.ln, align 8
  %fld.gep581 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load580, i32 0, i32 3
  %fld.load582 = load i64, ptr %fld.gep581, align 8
  store i64 %fld.load582, ptr %var.raw, align 8
  %var.load583 = load ptr, ptr %var.body, align 8
  %call.res584 = call { i64, ptr } @"formatter::strip_code_comment"(ptr %var.load583)
  %arena.cur585 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc586 = call ptr @dva_arena_alloc(ptr %arena.cur585, i64 16)
  store { i64, ptr } %call.res584, ptr %ret.ub.alloc586, align 8
  store ptr %ret.ub.alloc586, ptr %var.cur_code, align 8
  %var.load587 = load ptr, ptr %var.raw_stack, align 8
  %a.load588 = load ptr, ptr %var.raw_stack, align 8
  %a.null589 = icmp eq ptr %a.load588, null
  br i1 %a.null589, label %a.create590, label %a.after591

choice.exit232:                                   ; preds = %br.done.684, %br.done.681
  br label %choice.exit162

a.create236:                                      ; preds = %choice.then230
  %arena.cur238 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 24)
  %arena.cur240 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf241 = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 128)
  %a.len.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 0
  store i64 0, ptr %a.len.gep242, align 8
  %a.data.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 1
  store ptr %a.buf241, ptr %a.data.gep243, align 8
  %a.cap.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 2
  store i64 16, ptr %a.cap.gep244, align 8
  store ptr %a.create239, ptr %var.raw_stack, align 8
  br label %a.after237

a.after237:                                       ; preds = %a.create236, %choice.then230
  %a.load2245 = load ptr, ptr %var.raw_stack, align 8
  %var.load246 = load i64, ptr %"var.top'", align 8
  %var.load247 = load ptr, ptr %var.ln, align 8
  %fld.gep248 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load247, i32 0, i32 3
  %fld.load249 = load i64, ptr %fld.gep248, align 8
  %call.res250 = call i64 @"formatter::find_stack_level"(ptr %a.load2245, i64 %var.load246, i64 %fld.load249)
  store i64 %call.res250, ptr %var.lvl, align 8
  %var.load251 = load ptr, ptr %var.canon_stack, align 8
  %a.load252 = load ptr, ptr %var.canon_stack, align 8
  %a.null253 = icmp eq ptr %a.load252, null
  br i1 %a.null253, label %a.create254, label %a.after255

a.create254:                                      ; preds = %a.after237
  %arena.cur256 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 24)
  %arena.cur258 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf259 = call ptr @dva_arena_alloc(ptr %arena.cur258, i64 128)
  %a.len.gep260 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create257, i32 0, i32 0
  store i64 0, ptr %a.len.gep260, align 8
  %a.data.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create257, i32 0, i32 1
  store ptr %a.buf259, ptr %a.data.gep261, align 8
  %a.cap.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create257, i32 0, i32 2
  store i64 16, ptr %a.cap.gep262, align 8
  store ptr %a.create257, ptr %var.canon_stack, align 8
  br label %a.after255

a.after255:                                       ; preds = %a.create254, %a.after237
  %a.load2263 = load ptr, ptr %var.canon_stack, align 8
  %var.load264 = load i64, ptr %var.lvl, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2263, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after255
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2263, i32 0, i32 0
  %a.rd.len265 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load264, 0
  %a.rd.lt = icmp slt i64 %var.load264, %a.rd.len265
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2263, i32 0, i32 1
  %a.rd.data266 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data266, i64 %var.load264
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after255
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 571, ptr %err.line.gep, align 8
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
  %arena.cur268 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 56)
  %err.code.gep270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 0
  store i64 4011, ptr %err.code.gep270, align 8
  %err.msg.gep271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep271, align 8
  %err.file.gep272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep272, align 8
  %err.line.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 3
  store i64 571, ptr %err.line.gep273, align 8
  %err.col.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 4
  store i64 51, ptr %err.col.gep274, align 8
  %err.ctx.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 5
  %err.ctx0.gep276 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep275, i32 0, i32 0
  store i64 %var.load264, ptr %err.ctx0.gep276, align 8
  %err.ctx1.gep277 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep275, i32 0, i32 1
  store i64 %a.rd.len265, ptr %err.ctx1.gep277, align 8
  %err.p2i278 = ptrtoint ptr %err.alloc269 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i278, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag279 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag279, label %choice.then280, label %choice.else281

choice.then280:                                   ; preds = %a.rd.done
  %ram.pay283 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay283, ptr %var._284, align 8
  br label %choice.exit282

choice.else281:                                   ; preds = %a.rd.done
  %ram.pay285 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay285 to ptr
  store ptr %pay.ptr, ptr %var._286, align 8
  br label %choice.exit282

choice.exit282:                                   ; preds = %choice.else281, %choice.then280
  %choice.res287 = phi i64 [ %ram.pay283, %choice.then280 ], [ 0, %choice.else281 ]
  store i64 %choice.res287, ptr %var.base_c, align 8
  %var.load288 = load ptr, ptr %var.raw_stack, align 8
  %a.load289 = load ptr, ptr %var.raw_stack, align 8
  %a.null290 = icmp eq ptr %a.load289, null
  br i1 %a.null290, label %a.create291, label %a.after292

a.create291:                                      ; preds = %choice.exit282
  %arena.cur293 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 24)
  %arena.cur295 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf296 = call ptr @dva_arena_alloc(ptr %arena.cur295, i64 128)
  %a.len.gep297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 0
  store i64 0, ptr %a.len.gep297, align 8
  %a.data.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 1
  store ptr %a.buf296, ptr %a.data.gep298, align 8
  %a.cap.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 2
  store i64 16, ptr %a.cap.gep299, align 8
  store ptr %a.create294, ptr %var.raw_stack, align 8
  br label %a.after292

a.after292:                                       ; preds = %a.create291, %choice.exit282
  %a.load2300 = load ptr, ptr %var.raw_stack, align 8
  %var.load301 = load i64, ptr %var.lvl, align 8
  %a.rd.nonnull302 = icmp ne ptr %a.load2300, null
  br i1 %a.rd.nonnull302, label %a.rd.check303, label %a.rd.err.null305

a.rd.check303:                                    ; preds = %a.after292
  %a.rd.len308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2300, i32 0, i32 0
  %a.rd.len309 = load i64, ptr %a.rd.len308, align 8
  %a.rd.ge0310 = icmp sge i64 %var.load301, 0
  %a.rd.lt311 = icmp slt i64 %var.load301, %a.rd.len309
  %a.rd.bounds312 = and i1 %a.rd.ge0310, %a.rd.lt311
  br i1 %a.rd.bounds312, label %a.rd.ok304, label %a.rd.err.oob306

a.rd.ok304:                                       ; preds = %a.rd.check303
  %a.rd.data313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2300, i32 0, i32 1
  %a.rd.data314 = load ptr, ptr %a.rd.data313, align 8
  %a.rd.elem.gep315 = getelementptr i64, ptr %a.rd.data314, i64 %var.load301
  %a.rd.elem316 = load i64, ptr %a.rd.elem.gep315, align 8
  br label %a.rd.done307

a.rd.err.null305:                                 ; preds = %a.after292
  %arena.cur317 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc318 = call ptr @dva_arena_alloc(ptr %arena.cur317, i64 56)
  %err.code.gep319 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc318, i32 0, i32 0
  store i64 4011, ptr %err.code.gep319, align 8
  %err.msg.gep320 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc318, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep320, align 8
  %err.file.gep321 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc318, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep321, align 8
  %err.line.gep322 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc318, i32 0, i32 3
  store i64 572, ptr %err.line.gep322, align 8
  %err.col.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc318, i32 0, i32 4
  store i64 49, ptr %err.col.gep323, align 8
  %err.ctx.gep324 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc318, i32 0, i32 5
  %err.ctx0.gep325 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep324, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep325, align 8
  %err.ctx1.gep326 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep324, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep326, align 8
  %err.p2i327 = ptrtoint ptr %err.alloc318 to i64
  br label %a.rd.done307

a.rd.err.oob306:                                  ; preds = %a.rd.check303
  %arena.cur328 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc329 = call ptr @dva_arena_alloc(ptr %arena.cur328, i64 56)
  %err.code.gep330 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc329, i32 0, i32 0
  store i64 4011, ptr %err.code.gep330, align 8
  %err.msg.gep331 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc329, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep331, align 8
  %err.file.gep332 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc329, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep332, align 8
  %err.line.gep333 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc329, i32 0, i32 3
  store i64 572, ptr %err.line.gep333, align 8
  %err.col.gep334 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc329, i32 0, i32 4
  store i64 49, ptr %err.col.gep334, align 8
  %err.ctx.gep335 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc329, i32 0, i32 5
  %err.ctx0.gep336 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep335, i32 0, i32 0
  store i64 %var.load301, ptr %err.ctx0.gep336, align 8
  %err.ctx1.gep337 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep335, i32 0, i32 1
  store i64 %a.rd.len309, ptr %err.ctx1.gep337, align 8
  %err.p2i338 = ptrtoint ptr %err.alloc329 to i64
  br label %a.rd.done307

a.rd.done307:                                     ; preds = %a.rd.err.oob306, %a.rd.err.null305, %a.rd.ok304
  %a.rd.tag339 = phi i1 [ true, %a.rd.ok304 ], [ false, %a.rd.err.null305 ], [ false, %a.rd.err.oob306 ]
  %a.rd.pay340 = phi i64 [ %a.rd.elem316, %a.rd.ok304 ], [ %err.p2i327, %a.rd.err.null305 ], [ %err.p2i338, %a.rd.err.oob306 ]
  %ram.tag341 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag339, 0
  %ram.pay342 = insertvalue { i1, i64 } %ram.tag341, i64 %a.rd.pay340, 1
  %ram.tag343 = extractvalue { i1, i64 } %ram.pay342, 0
  br i1 %ram.tag343, label %choice.then344, label %choice.else345

choice.then344:                                   ; preds = %a.rd.done307
  %ram.pay347 = extractvalue { i1, i64 } %ram.pay342, 1
  store i64 %ram.pay347, ptr %var._348, align 8
  br label %choice.exit346

choice.else345:                                   ; preds = %a.rd.done307
  %ram.pay349 = extractvalue { i1, i64 } %ram.pay342, 1
  %pay.ptr350 = inttoptr i64 %ram.pay349 to ptr
  store ptr %pay.ptr350, ptr %var._351, align 8
  br label %choice.exit346

choice.exit346:                                   ; preds = %choice.else345, %choice.then344
  %choice.res352 = phi i64 [ %ram.pay347, %choice.then344 ], [ 0, %choice.else345 ]
  store i64 %choice.res352, ptr %var.base_r, align 8
  %var.load353 = load ptr, ptr %var.body_stack, align 8
  %a.load354 = load ptr, ptr %var.body_stack, align 8
  %a.null355 = icmp eq ptr %a.load354, null
  br i1 %a.null355, label %a.create356, label %a.after357

a.create356:                                      ; preds = %choice.exit346
  %arena.cur358 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create359 = call ptr @dva_arena_alloc(ptr %arena.cur358, i64 24)
  %arena.cur360 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf361 = call ptr @dva_arena_alloc(ptr %arena.cur360, i64 128)
  %a.len.gep362 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create359, i32 0, i32 0
  store i64 0, ptr %a.len.gep362, align 8
  %a.data.gep363 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create359, i32 0, i32 1
  store ptr %a.buf361, ptr %a.data.gep363, align 8
  %a.cap.gep364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create359, i32 0, i32 2
  store i64 16, ptr %a.cap.gep364, align 8
  store ptr %a.create359, ptr %var.body_stack, align 8
  br label %a.after357

a.after357:                                       ; preds = %a.create356, %choice.exit346
  %a.load2365 = load ptr, ptr %var.body_stack, align 8
  %var.load366 = load i64, ptr %var.lvl, align 8
  %a.rd.nonnull367 = icmp ne ptr %a.load2365, null
  br i1 %a.rd.nonnull367, label %a.rd.check368, label %a.rd.err.null370

a.rd.check368:                                    ; preds = %a.after357
  %a.rd.len373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2365, i32 0, i32 0
  %a.rd.len374 = load i64, ptr %a.rd.len373, align 8
  %a.rd.ge0375 = icmp sge i64 %var.load366, 0
  %a.rd.lt376 = icmp slt i64 %var.load366, %a.rd.len374
  %a.rd.bounds377 = and i1 %a.rd.ge0375, %a.rd.lt376
  br i1 %a.rd.bounds377, label %a.rd.ok369, label %a.rd.err.oob371

a.rd.ok369:                                       ; preds = %a.rd.check368
  %a.rd.data378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2365, i32 0, i32 1
  %a.rd.data379 = load ptr, ptr %a.rd.data378, align 8
  %a.rd.elem.gep380 = getelementptr i64, ptr %a.rd.data379, i64 %var.load366
  %a.rd.elem381 = load i64, ptr %a.rd.elem.gep380, align 8
  br label %a.rd.done372

a.rd.err.null370:                                 ; preds = %a.after357
  %arena.cur382 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc383 = call ptr @dva_arena_alloc(ptr %arena.cur382, i64 56)
  %err.code.gep384 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc383, i32 0, i32 0
  store i64 4011, ptr %err.code.gep384, align 8
  %err.msg.gep385 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc383, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep385, align 8
  %err.file.gep386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc383, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep386, align 8
  %err.line.gep387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc383, i32 0, i32 3
  store i64 573, ptr %err.line.gep387, align 8
  %err.col.gep388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc383, i32 0, i32 4
  store i64 50, ptr %err.col.gep388, align 8
  %err.ctx.gep389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc383, i32 0, i32 5
  %err.ctx0.gep390 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep389, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep390, align 8
  %err.ctx1.gep391 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep389, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep391, align 8
  %err.p2i392 = ptrtoint ptr %err.alloc383 to i64
  br label %a.rd.done372

a.rd.err.oob371:                                  ; preds = %a.rd.check368
  %arena.cur393 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc394 = call ptr @dva_arena_alloc(ptr %arena.cur393, i64 56)
  %err.code.gep395 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc394, i32 0, i32 0
  store i64 4011, ptr %err.code.gep395, align 8
  %err.msg.gep396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc394, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep396, align 8
  %err.file.gep397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc394, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep397, align 8
  %err.line.gep398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc394, i32 0, i32 3
  store i64 573, ptr %err.line.gep398, align 8
  %err.col.gep399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc394, i32 0, i32 4
  store i64 50, ptr %err.col.gep399, align 8
  %err.ctx.gep400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc394, i32 0, i32 5
  %err.ctx0.gep401 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep400, i32 0, i32 0
  store i64 %var.load366, ptr %err.ctx0.gep401, align 8
  %err.ctx1.gep402 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep400, i32 0, i32 1
  store i64 %a.rd.len374, ptr %err.ctx1.gep402, align 8
  %err.p2i403 = ptrtoint ptr %err.alloc394 to i64
  br label %a.rd.done372

a.rd.done372:                                     ; preds = %a.rd.err.oob371, %a.rd.err.null370, %a.rd.ok369
  %a.rd.tag404 = phi i1 [ true, %a.rd.ok369 ], [ false, %a.rd.err.null370 ], [ false, %a.rd.err.oob371 ]
  %a.rd.pay405 = phi i64 [ %a.rd.elem381, %a.rd.ok369 ], [ %err.p2i392, %a.rd.err.null370 ], [ %err.p2i403, %a.rd.err.oob371 ]
  %ram.tag406 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag404, 0
  %ram.pay407 = insertvalue { i1, i64 } %ram.tag406, i64 %a.rd.pay405, 1
  %ram.tag408 = extractvalue { i1, i64 } %ram.pay407, 0
  br i1 %ram.tag408, label %choice.then409, label %choice.else410

choice.then409:                                   ; preds = %a.rd.done372
  %ram.pay412 = extractvalue { i1, i64 } %ram.pay407, 1
  %pay.ptr413 = inttoptr i64 %ram.pay412 to ptr
  store ptr %pay.ptr413, ptr %var._414, align 8
  br label %choice.exit411

choice.else410:                                   ; preds = %a.rd.done372
  %ram.pay415 = extractvalue { i1, i64 } %ram.pay407, 1
  %pay.ptr416 = inttoptr i64 %ram.pay415 to ptr
  store ptr %pay.ptr416, ptr %var._417, align 8
  br label %choice.exit411

choice.exit411:                                   ; preds = %choice.else410, %choice.then409
  %choice.res418 = phi ptr [ %pay.ptr413, %choice.then409 ], [ @str.12.struct, %choice.else410 ]
  store ptr %choice.res418, ptr %var.p_code, align 8
  %var.load419 = load ptr, ptr %var.ln, align 8
  %fld.gep420 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load419, i32 0, i32 3
  %fld.load421 = load i64, ptr %fld.gep420, align 8
  %var.load422 = load i64, ptr %var.base_r, align 8
  %cmptmp423 = icmp sgt i64 %fld.load421, %var.load422
  br i1 %cmptmp423, label %choice.then424, label %choice.else425

choice.then424:                                   ; preds = %choice.exit411
  %var.load427 = load i64, ptr %var.base_c, align 8
  %var.load428 = load ptr, ptr %var.p_code, align 8
  %call.res429 = call i1 @"formatter::is_inline_pipe_arm"(ptr %var.load428)
  br i1 %call.res429, label %and.680.then, label %and.680.else

choice.else425:                                   ; preds = %choice.exit411
  %var.load437 = load i64, ptr %var.base_c, align 8
  br label %choice.exit426

choice.exit426:                                   ; preds = %choice.else425, %choice.exit434
  %choice.res438 = phi i64 [ %addtmp436, %choice.exit434 ], [ %var.load437, %choice.else425 ]
  store i64 %choice.res438, ptr %var.c_indent, align 8
  %b.load439 = load ptr, ptr %var.out, align 8
  %var.load440 = load i64, ptr %var.c_indent, align 8
  %call.res441 = call { i64, ptr } @"formatter::make_spaces"(i64 %var.load440)
  %arena.cur442 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc443 = call ptr @dva_arena_alloc(ptr %arena.cur442, i64 16)
  store { i64, ptr } %call.res441, ptr %ret.ub.alloc443, align 8
  %app.str.len444 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc443, i32 0, i32 0
  %app.str.len445 = load i64, ptr %app.str.len444, align 8
  %app.str.len446 = and i64 %app.str.len445, 281474976710655
  %app.str.data447 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc443, i32 0, i32 1
  %app.str.data448 = load ptr, ptr %app.str.data447, align 8
  %b.app.cur.len449 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load439, i32 0, i32 0
  %b.app.cur.len450 = load i64, ptr %b.app.cur.len449, align 8
  %b.app.new.len451 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len450, i64 %app.str.len446)
  %sum452 = extractvalue { i64, i1 } %b.app.new.len451, 0
  %ovf453 = extractvalue { i64, i1 } %b.app.new.len451, 1
  br i1 %ovf453, label %str_overflow_abort455, label %b.app.new.len454

and.680.then:                                     ; preds = %choice.then424
  %var.load430 = load ptr, ptr %var.p_code, align 8
  %call.res431 = call i1 @"formatter::ends_with_block_opener"(ptr %var.load430)
  %nottmp = xor i1 %call.res431, true
  br label %and.680.exit

and.680.else:                                     ; preds = %choice.then424
  br label %and.680.exit

and.680.exit:                                     ; preds = %and.680.else, %and.680.then
  %and.680.phi = phi i1 [ %nottmp, %and.680.then ], [ %call.res429, %and.680.else ]
  br i1 %and.680.phi, label %choice.then432, label %choice.else433

choice.then432:                                   ; preds = %and.680.exit
  br label %choice.exit434

choice.else433:                                   ; preds = %and.680.exit
  br label %choice.exit434

choice.exit434:                                   ; preds = %choice.else433, %choice.then432
  %choice.res435 = phi i64 [ 2, %choice.then432 ], [ 3, %choice.else433 ]
  %addtmp436 = add i64 %var.load427, %choice.res435
  br label %choice.exit426

b.app.new.len454:                                 ; preds = %abort.dead456, %choice.exit426
  %b.cap457 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load439, i32 0, i32 2
  %b.cap458 = load i64, ptr %b.cap457, align 8
  %b.need.grow459 = icmp slt i64 %b.cap458, %sum452
  br i1 %b.need.grow459, label %b.grow2460, label %b.nogrow2461

str_overflow_abort455:                            ; preds = %choice.exit426
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead456:                                    ; No predecessors!
  br label %b.app.new.len454

b.grow2460:                                       ; preds = %b.app.new.len454
  %b.cap2463 = mul i64 %b.cap458, 2
  %b.cap.small464 = icmp slt i64 %b.cap2463, 16
  %b.cap.grow465 = select i1 %b.cap.small464, i64 16, i64 %b.cap2463
  %b.cap.need466 = icmp slt i64 %b.cap.grow465, %sum452
  %b.new.cap467 = select i1 %b.cap.need466, i64 %sum452, i64 %b.cap.grow465
  %b.cur.len2468 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load439, i32 0, i32 0
  %b.cur.len2469 = load i64, ptr %b.cur.len2468, align 8
  %b.cur.data2470 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load439, i32 0, i32 1
  %b.cur.data2471 = load ptr, ptr %b.cur.data2470, align 8
  %b.new.buf.len2472 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap467, i64 1)
  %sum473 = extractvalue { i64, i1 } %b.new.buf.len2472, 0
  %ovf474 = extractvalue { i64, i1 } %b.new.buf.len2472, 1
  br i1 %ovf474, label %str_overflow_abort476, label %b.new.buf.len2475

b.nogrow2461:                                     ; preds = %b.app.new.len454
  br label %b.grow_done462

b.grow_done462:                                   ; preds = %b.nogrow2461, %b.new.buf.len2475
  %b.app.data483 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load439, i32 0, i32 1
  %b.app.data484 = load ptr, ptr %b.app.data483, align 8
  %b.app.dst485 = getelementptr i8, ptr %b.app.data484, i64 %b.app.cur.len450
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst485, ptr align 1 %app.str.data448, i64 %app.str.len446, i1 false)
  %b.app.nul486 = getelementptr i8, ptr %b.app.data484, i64 %sum452
  store i8 0, ptr %b.app.nul486, align 1
  %b.len.gep487 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load439, i32 0, i32 0
  store i64 %sum452, ptr %b.len.gep487, align 8
  %b.load488 = load ptr, ptr %var.out, align 8
  %var.load489 = load ptr, ptr %var.body, align 8
  %app.str.len490 = getelementptr inbounds { i64, ptr }, ptr %var.load489, i32 0, i32 0
  %app.str.len491 = load i64, ptr %app.str.len490, align 8
  %app.str.len492 = and i64 %app.str.len491, 281474976710655
  %app.str.data493 = getelementptr inbounds { i64, ptr }, ptr %var.load489, i32 0, i32 1
  %app.str.data494 = load ptr, ptr %app.str.data493, align 8
  %b.app.cur.len495 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 0
  %b.app.cur.len496 = load i64, ptr %b.app.cur.len495, align 8
  %b.app.new.len497 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len496, i64 %app.str.len492)
  %sum498 = extractvalue { i64, i1 } %b.app.new.len497, 0
  %ovf499 = extractvalue { i64, i1 } %b.app.new.len497, 1
  br i1 %ovf499, label %str_overflow_abort501, label %b.app.new.len500

b.new.buf.len2475:                                ; preds = %abort.dead477, %b.grow2460
  %arena.cur478 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2479 = call ptr @dva_arena_alloc(ptr %arena.cur478, i64 %sum473)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2479, ptr align 1 %b.cur.data2471, i64 %b.cur.len2469, i1 false)
  %b.grow2.nul480 = getelementptr i8, ptr %b.new.buf2479, i64 %b.cur.len2469
  store i8 0, ptr %b.grow2.nul480, align 1
  %b.new.data2.gep481 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load439, i32 0, i32 1
  store ptr %b.new.buf2479, ptr %b.new.data2.gep481, align 8
  %b.new.cap2.gep482 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load439, i32 0, i32 2
  store i64 %b.new.cap467, ptr %b.new.cap2.gep482, align 8
  br label %b.grow_done462

str_overflow_abort476:                            ; preds = %b.grow2460
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead477:                                    ; No predecessors!
  br label %b.new.buf.len2475

b.app.new.len500:                                 ; preds = %abort.dead502, %b.grow_done462
  %b.cap503 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 2
  %b.cap504 = load i64, ptr %b.cap503, align 8
  %b.need.grow505 = icmp slt i64 %b.cap504, %sum498
  br i1 %b.need.grow505, label %b.grow2506, label %b.nogrow2507

str_overflow_abort501:                            ; preds = %b.grow_done462
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead502:                                    ; No predecessors!
  br label %b.app.new.len500

b.grow2506:                                       ; preds = %b.app.new.len500
  %b.cap2509 = mul i64 %b.cap504, 2
  %b.cap.small510 = icmp slt i64 %b.cap2509, 16
  %b.cap.grow511 = select i1 %b.cap.small510, i64 16, i64 %b.cap2509
  %b.cap.need512 = icmp slt i64 %b.cap.grow511, %sum498
  %b.new.cap513 = select i1 %b.cap.need512, i64 %sum498, i64 %b.cap.grow511
  %b.cur.len2514 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 0
  %b.cur.len2515 = load i64, ptr %b.cur.len2514, align 8
  %b.cur.data2516 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 1
  %b.cur.data2517 = load ptr, ptr %b.cur.data2516, align 8
  %b.new.buf.len2518 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap513, i64 1)
  %sum519 = extractvalue { i64, i1 } %b.new.buf.len2518, 0
  %ovf520 = extractvalue { i64, i1 } %b.new.buf.len2518, 1
  br i1 %ovf520, label %str_overflow_abort522, label %b.new.buf.len2521

b.nogrow2507:                                     ; preds = %b.app.new.len500
  br label %b.grow_done508

b.grow_done508:                                   ; preds = %b.nogrow2507, %b.new.buf.len2521
  %b.app.data529 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 1
  %b.app.data530 = load ptr, ptr %b.app.data529, align 8
  %b.app.dst531 = getelementptr i8, ptr %b.app.data530, i64 %b.app.cur.len496
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst531, ptr align 1 %app.str.data494, i64 %app.str.len492, i1 false)
  %b.app.nul532 = getelementptr i8, ptr %b.app.data530, i64 %sum498
  store i8 0, ptr %b.app.nul532, align 1
  %b.len.gep533 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 0
  store i64 %sum498, ptr %b.len.gep533, align 8
  %b.load534 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len535 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load534, i32 0, i32 0
  %b.rn.cur.len536 = load i64, ptr %b.rn.cur.len535, align 8
  %b.rn.new.len537 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len536, i64 1)
  %sum538 = extractvalue { i64, i1 } %b.rn.new.len537, 0
  %ovf539 = extractvalue { i64, i1 } %b.rn.new.len537, 1
  br i1 %ovf539, label %str_overflow_abort541, label %b.rn.new.len540

b.new.buf.len2521:                                ; preds = %abort.dead523, %b.grow2506
  %arena.cur524 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2525 = call ptr @dva_arena_alloc(ptr %arena.cur524, i64 %sum519)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2525, ptr align 1 %b.cur.data2517, i64 %b.cur.len2515, i1 false)
  %b.grow2.nul526 = getelementptr i8, ptr %b.new.buf2525, i64 %b.cur.len2515
  store i8 0, ptr %b.grow2.nul526, align 1
  %b.new.data2.gep527 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 1
  store ptr %b.new.buf2525, ptr %b.new.data2.gep527, align 8
  %b.new.cap2.gep528 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 2
  store i64 %b.new.cap513, ptr %b.new.cap2.gep528, align 8
  br label %b.grow_done508

str_overflow_abort522:                            ; preds = %b.grow2506
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead523:                                    ; No predecessors!
  br label %b.new.buf.len2521

b.rn.new.len540:                                  ; preds = %abort.dead542, %b.grow_done508
  %b.cap543 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load534, i32 0, i32 2
  %b.cap544 = load i64, ptr %b.cap543, align 8
  %b.need.grow545 = icmp slt i64 %b.cap544, %sum538
  br i1 %b.need.grow545, label %b.grow2546, label %b.nogrow2547

str_overflow_abort541:                            ; preds = %b.grow_done508
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead542:                                    ; No predecessors!
  br label %b.rn.new.len540

b.grow2546:                                       ; preds = %b.rn.new.len540
  %b.cap2549 = mul i64 %b.cap544, 2
  %b.cap.small550 = icmp slt i64 %b.cap2549, 16
  %b.cap.grow551 = select i1 %b.cap.small550, i64 16, i64 %b.cap2549
  %b.cap.need552 = icmp slt i64 %b.cap.grow551, %sum538
  %b.new.cap553 = select i1 %b.cap.need552, i64 %sum538, i64 %b.cap.grow551
  %b.cur.len2554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load534, i32 0, i32 0
  %b.cur.len2555 = load i64, ptr %b.cur.len2554, align 8
  %b.cur.data2556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load534, i32 0, i32 1
  %b.cur.data2557 = load ptr, ptr %b.cur.data2556, align 8
  %b.new.buf.len2558 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap553, i64 1)
  %sum559 = extractvalue { i64, i1 } %b.new.buf.len2558, 0
  %ovf560 = extractvalue { i64, i1 } %b.new.buf.len2558, 1
  br i1 %ovf560, label %str_overflow_abort562, label %b.new.buf.len2561

b.nogrow2547:                                     ; preds = %b.rn.new.len540
  br label %b.grow_done548

b.grow_done548:                                   ; preds = %b.nogrow2547, %b.new.buf.len2561
  %b.rn.data569 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load534, i32 0, i32 1
  %b.rn.data570 = load ptr, ptr %b.rn.data569, align 8
  %b.rn.dst571 = getelementptr i8, ptr %b.rn.data570, i64 %b.rn.cur.len536
  br i1 true, label %br.b1.681, label %br.c2.681

b.new.buf.len2561:                                ; preds = %abort.dead563, %b.grow2546
  %arena.cur564 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2565 = call ptr @dva_arena_alloc(ptr %arena.cur564, i64 %sum559)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2565, ptr align 1 %b.cur.data2557, i64 %b.cur.len2555, i1 false)
  %b.grow2.nul566 = getelementptr i8, ptr %b.new.buf2565, i64 %b.cur.len2555
  store i8 0, ptr %b.grow2.nul566, align 1
  %b.new.data2.gep567 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load534, i32 0, i32 1
  store ptr %b.new.buf2565, ptr %b.new.data2.gep567, align 8
  %b.new.cap2.gep568 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load534, i32 0, i32 2
  store i64 %b.new.cap553, ptr %b.new.cap2.gep568, align 8
  br label %b.grow_done548

str_overflow_abort562:                            ; preds = %b.grow2546
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead563:                                    ; No predecessors!
  br label %b.new.buf.len2561

br.b1.681:                                        ; preds = %b.grow_done548
  store i8 10, ptr %b.rn.dst571, align 1
  br label %br.done.681

br.c2.681:                                        ; preds = %b.grow_done548
  br i1 true, label %br.b2.681, label %br.c3.681

br.b2.681:                                        ; preds = %br.c2.681
  store i8 -64, ptr %b.rn.dst571, align 1
  %br.dst1572 = getelementptr i8, ptr %b.rn.dst571, i64 1
  store i8 -118, ptr %br.dst1572, align 1
  br label %br.done.681

br.c3.681:                                        ; preds = %br.c2.681
  br i1 true, label %br.b3.681, label %br.b4.681

br.b3.681:                                        ; preds = %br.c3.681
  store i8 -32, ptr %b.rn.dst571, align 1
  %br.dst1.3573 = getelementptr i8, ptr %b.rn.dst571, i64 1
  store i8 -128, ptr %br.dst1.3573, align 1
  %br.dst2.3574 = getelementptr i8, ptr %b.rn.dst571, i64 2
  store i8 -118, ptr %br.dst2.3574, align 1
  br label %br.done.681

br.b4.681:                                        ; preds = %br.c3.681
  store i8 -16, ptr %b.rn.dst571, align 1
  %br.dst1.4575 = getelementptr i8, ptr %b.rn.dst571, i64 1
  store i8 -128, ptr %br.dst1.4575, align 1
  %br.dst2.4576 = getelementptr i8, ptr %b.rn.dst571, i64 2
  store i8 -128, ptr %br.dst2.4576, align 1
  %br.dst3.4577 = getelementptr i8, ptr %b.rn.dst571, i64 3
  store i8 -118, ptr %br.dst3.4577, align 1
  br label %br.done.681

br.done.681:                                      ; preds = %br.b4.681, %br.b3.681, %br.b2.681, %br.b1.681
  %br.nul578 = getelementptr i8, ptr %b.rn.data570, i64 %sum538
  store i8 0, ptr %br.nul578, align 1
  %b.len.gep579 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load534, i32 0, i32 0
  store i64 %sum538, ptr %b.len.gep579, align 8
  br label %choice.exit232

a.create590:                                      ; preds = %choice.else231
  %arena.cur592 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create593 = call ptr @dva_arena_alloc(ptr %arena.cur592, i64 24)
  %arena.cur594 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf595 = call ptr @dva_arena_alloc(ptr %arena.cur594, i64 128)
  %a.len.gep596 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create593, i32 0, i32 0
  store i64 0, ptr %a.len.gep596, align 8
  %a.data.gep597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create593, i32 0, i32 1
  store ptr %a.buf595, ptr %a.data.gep597, align 8
  %a.cap.gep598 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create593, i32 0, i32 2
  store i64 16, ptr %a.cap.gep598, align 8
  store ptr %a.create593, ptr %var.raw_stack, align 8
  br label %a.after591

a.after591:                                       ; preds = %a.create590, %choice.else231
  %a.load2599 = load ptr, ptr %var.raw_stack, align 8
  %var.load600 = load i64, ptr %"var.top'", align 8
  %subtmp = sub i64 %var.load600, 1
  %a.rd.nonnull601 = icmp ne ptr %a.load2599, null
  br i1 %a.rd.nonnull601, label %a.rd.check602, label %a.rd.err.null604

a.rd.check602:                                    ; preds = %a.after591
  %a.rd.len607 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2599, i32 0, i32 0
  %a.rd.len608 = load i64, ptr %a.rd.len607, align 8
  %a.rd.ge0609 = icmp sge i64 %subtmp, 0
  %a.rd.lt610 = icmp slt i64 %subtmp, %a.rd.len608
  %a.rd.bounds611 = and i1 %a.rd.ge0609, %a.rd.lt610
  br i1 %a.rd.bounds611, label %a.rd.ok603, label %a.rd.err.oob605

a.rd.ok603:                                       ; preds = %a.rd.check602
  %a.rd.data612 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2599, i32 0, i32 1
  %a.rd.data613 = load ptr, ptr %a.rd.data612, align 8
  %a.rd.elem.gep614 = getelementptr i64, ptr %a.rd.data613, i64 %subtmp
  %a.rd.elem615 = load i64, ptr %a.rd.elem.gep614, align 8
  br label %a.rd.done606

a.rd.err.null604:                                 ; preds = %a.after591
  %arena.cur616 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc617 = call ptr @dva_arena_alloc(ptr %arena.cur616, i64 56)
  %err.code.gep618 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 0
  store i64 4011, ptr %err.code.gep618, align 8
  %err.msg.gep619 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep619, align 8
  %err.file.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep620, align 8
  %err.line.gep621 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 3
  store i64 583, ptr %err.line.gep621, align 8
  %err.col.gep622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 4
  store i64 55, ptr %err.col.gep622, align 8
  %err.ctx.gep623 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc617, i32 0, i32 5
  %err.ctx0.gep624 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep623, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep624, align 8
  %err.ctx1.gep625 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep623, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep625, align 8
  %err.p2i626 = ptrtoint ptr %err.alloc617 to i64
  br label %a.rd.done606

a.rd.err.oob605:                                  ; preds = %a.rd.check602
  %arena.cur627 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc628 = call ptr @dva_arena_alloc(ptr %arena.cur627, i64 56)
  %err.code.gep629 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 0
  store i64 4011, ptr %err.code.gep629, align 8
  %err.msg.gep630 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep630, align 8
  %err.file.gep631 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep631, align 8
  %err.line.gep632 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 3
  store i64 583, ptr %err.line.gep632, align 8
  %err.col.gep633 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 4
  store i64 55, ptr %err.col.gep633, align 8
  %err.ctx.gep634 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc628, i32 0, i32 5
  %err.ctx0.gep635 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep634, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep635, align 8
  %err.ctx1.gep636 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep634, i32 0, i32 1
  store i64 %a.rd.len608, ptr %err.ctx1.gep636, align 8
  %err.p2i637 = ptrtoint ptr %err.alloc628 to i64
  br label %a.rd.done606

a.rd.done606:                                     ; preds = %a.rd.err.oob605, %a.rd.err.null604, %a.rd.ok603
  %a.rd.tag638 = phi i1 [ true, %a.rd.ok603 ], [ false, %a.rd.err.null604 ], [ false, %a.rd.err.oob605 ]
  %a.rd.pay639 = phi i64 [ %a.rd.elem615, %a.rd.ok603 ], [ %err.p2i626, %a.rd.err.null604 ], [ %err.p2i637, %a.rd.err.oob605 ]
  %ram.tag640 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag638, 0
  %ram.pay641 = insertvalue { i1, i64 } %ram.tag640, i64 %a.rd.pay639, 1
  %ram.tag642 = extractvalue { i1, i64 } %ram.pay641, 0
  br i1 %ram.tag642, label %choice.then643, label %choice.else644

choice.then643:                                   ; preds = %a.rd.done606
  %ram.pay646 = extractvalue { i1, i64 } %ram.pay641, 1
  store i64 %ram.pay646, ptr %var._647, align 8
  br label %choice.exit645

choice.else644:                                   ; preds = %a.rd.done606
  %ram.pay648 = extractvalue { i1, i64 } %ram.pay641, 1
  %pay.ptr649 = inttoptr i64 %ram.pay648 to ptr
  store ptr %pay.ptr649, ptr %var._650, align 8
  br label %choice.exit645

choice.exit645:                                   ; preds = %choice.else644, %choice.then643
  %choice.res651 = phi i64 [ %ram.pay646, %choice.then643 ], [ 0, %choice.else644 ]
  store i64 %choice.res651, ptr %var.top_raw, align 8
  %var.load652 = load i64, ptr %var.raw, align 8
  %var.load653 = load i64, ptr %var.top_raw, align 8
  %cmptmp654 = icmp sgt i64 %var.load652, %var.load653
  br i1 %cmptmp654, label %choice.then655, label %choice.else656

choice.then655:                                   ; preds = %choice.exit645
  %var.load658 = load ptr, ptr %var.canon_stack, align 8
  %a.load659 = load ptr, ptr %var.canon_stack, align 8
  %a.null660 = icmp eq ptr %a.load659, null
  br i1 %a.null660, label %a.create661, label %a.after662

choice.else656:                                   ; preds = %choice.exit645
  store i64 0, ptr %loop.idx.682, align 8
  br label %loop.header.682

choice.exit657:                                   ; preds = %choice.exit1299, %choice.exit832
  %var.load1917 = load ptr, ptr %var.canon_stack, align 8
  %a.load1918 = load ptr, ptr %var.canon_stack, align 8
  %a.null1919 = icmp eq ptr %a.load1918, null
  br i1 %a.null1919, label %a.create1920, label %a.after1921

a.create661:                                      ; preds = %choice.then655
  %arena.cur663 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create664 = call ptr @dva_arena_alloc(ptr %arena.cur663, i64 24)
  %arena.cur665 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf666 = call ptr @dva_arena_alloc(ptr %arena.cur665, i64 128)
  %a.len.gep667 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create664, i32 0, i32 0
  store i64 0, ptr %a.len.gep667, align 8
  %a.data.gep668 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create664, i32 0, i32 1
  store ptr %a.buf666, ptr %a.data.gep668, align 8
  %a.cap.gep669 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create664, i32 0, i32 2
  store i64 16, ptr %a.cap.gep669, align 8
  store ptr %a.create664, ptr %var.canon_stack, align 8
  br label %a.after662

a.after662:                                       ; preds = %a.create661, %choice.then655
  %a.load2670 = load ptr, ptr %var.canon_stack, align 8
  %var.load671 = load i64, ptr %"var.top'", align 8
  %subtmp672 = sub i64 %var.load671, 1
  %a.rd.nonnull673 = icmp ne ptr %a.load2670, null
  br i1 %a.rd.nonnull673, label %a.rd.check674, label %a.rd.err.null676

a.rd.check674:                                    ; preds = %a.after662
  %a.rd.len679 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2670, i32 0, i32 0
  %a.rd.len680 = load i64, ptr %a.rd.len679, align 8
  %a.rd.ge0681 = icmp sge i64 %subtmp672, 0
  %a.rd.lt682 = icmp slt i64 %subtmp672, %a.rd.len680
  %a.rd.bounds683 = and i1 %a.rd.ge0681, %a.rd.lt682
  br i1 %a.rd.bounds683, label %a.rd.ok675, label %a.rd.err.oob677

a.rd.ok675:                                       ; preds = %a.rd.check674
  %a.rd.data684 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2670, i32 0, i32 1
  %a.rd.data685 = load ptr, ptr %a.rd.data684, align 8
  %a.rd.elem.gep686 = getelementptr i64, ptr %a.rd.data685, i64 %subtmp672
  %a.rd.elem687 = load i64, ptr %a.rd.elem.gep686, align 8
  br label %a.rd.done678

a.rd.err.null676:                                 ; preds = %a.after662
  %arena.cur688 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc689 = call ptr @dva_arena_alloc(ptr %arena.cur688, i64 56)
  %err.code.gep690 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc689, i32 0, i32 0
  store i64 4011, ptr %err.code.gep690, align 8
  %err.msg.gep691 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc689, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep691, align 8
  %err.file.gep692 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc689, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep692, align 8
  %err.line.gep693 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc689, i32 0, i32 3
  store i64 586, ptr %err.line.gep693, align 8
  %err.col.gep694 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc689, i32 0, i32 4
  store i64 63, ptr %err.col.gep694, align 8
  %err.ctx.gep695 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc689, i32 0, i32 5
  %err.ctx0.gep696 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep695, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep696, align 8
  %err.ctx1.gep697 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep695, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep697, align 8
  %err.p2i698 = ptrtoint ptr %err.alloc689 to i64
  br label %a.rd.done678

a.rd.err.oob677:                                  ; preds = %a.rd.check674
  %arena.cur699 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc700 = call ptr @dva_arena_alloc(ptr %arena.cur699, i64 56)
  %err.code.gep701 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc700, i32 0, i32 0
  store i64 4011, ptr %err.code.gep701, align 8
  %err.msg.gep702 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc700, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep702, align 8
  %err.file.gep703 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc700, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep703, align 8
  %err.line.gep704 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc700, i32 0, i32 3
  store i64 586, ptr %err.line.gep704, align 8
  %err.col.gep705 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc700, i32 0, i32 4
  store i64 63, ptr %err.col.gep705, align 8
  %err.ctx.gep706 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc700, i32 0, i32 5
  %err.ctx0.gep707 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep706, i32 0, i32 0
  store i64 %subtmp672, ptr %err.ctx0.gep707, align 8
  %err.ctx1.gep708 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep706, i32 0, i32 1
  store i64 %a.rd.len680, ptr %err.ctx1.gep708, align 8
  %err.p2i709 = ptrtoint ptr %err.alloc700 to i64
  br label %a.rd.done678

a.rd.done678:                                     ; preds = %a.rd.err.oob677, %a.rd.err.null676, %a.rd.ok675
  %a.rd.tag710 = phi i1 [ true, %a.rd.ok675 ], [ false, %a.rd.err.null676 ], [ false, %a.rd.err.oob677 ]
  %a.rd.pay711 = phi i64 [ %a.rd.elem687, %a.rd.ok675 ], [ %err.p2i698, %a.rd.err.null676 ], [ %err.p2i709, %a.rd.err.oob677 ]
  %ram.tag712 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag710, 0
  %ram.pay713 = insertvalue { i1, i64 } %ram.tag712, i64 %a.rd.pay711, 1
  %ram.tag714 = extractvalue { i1, i64 } %ram.pay713, 0
  br i1 %ram.tag714, label %choice.then715, label %choice.else716

choice.then715:                                   ; preds = %a.rd.done678
  %ram.pay718 = extractvalue { i1, i64 } %ram.pay713, 1
  store i64 %ram.pay718, ptr %var._719, align 8
  br label %choice.exit717

choice.else716:                                   ; preds = %a.rd.done678
  %ram.pay720 = extractvalue { i1, i64 } %ram.pay713, 1
  %pay.ptr721 = inttoptr i64 %ram.pay720 to ptr
  store ptr %pay.ptr721, ptr %var._722, align 8
  br label %choice.exit717

choice.exit717:                                   ; preds = %choice.else716, %choice.then715
  %choice.res723 = phi i64 [ %ram.pay718, %choice.then715 ], [ 0, %choice.else716 ]
  store i64 %choice.res723, ptr %var.p_canon, align 8
  %var.load724 = load ptr, ptr %var.body_stack, align 8
  %a.load725 = load ptr, ptr %var.body_stack, align 8
  %a.null726 = icmp eq ptr %a.load725, null
  br i1 %a.null726, label %a.create727, label %a.after728

a.create727:                                      ; preds = %choice.exit717
  %arena.cur729 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create730 = call ptr @dva_arena_alloc(ptr %arena.cur729, i64 24)
  %arena.cur731 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf732 = call ptr @dva_arena_alloc(ptr %arena.cur731, i64 128)
  %a.len.gep733 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 0
  store i64 0, ptr %a.len.gep733, align 8
  %a.data.gep734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 1
  store ptr %a.buf732, ptr %a.data.gep734, align 8
  %a.cap.gep735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 2
  store i64 16, ptr %a.cap.gep735, align 8
  store ptr %a.create730, ptr %var.body_stack, align 8
  br label %a.after728

a.after728:                                       ; preds = %a.create727, %choice.exit717
  %a.load2736 = load ptr, ptr %var.body_stack, align 8
  %var.load737 = load i64, ptr %"var.top'", align 8
  %subtmp738 = sub i64 %var.load737, 1
  %a.rd.nonnull739 = icmp ne ptr %a.load2736, null
  br i1 %a.rd.nonnull739, label %a.rd.check740, label %a.rd.err.null742

a.rd.check740:                                    ; preds = %a.after728
  %a.rd.len745 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2736, i32 0, i32 0
  %a.rd.len746 = load i64, ptr %a.rd.len745, align 8
  %a.rd.ge0747 = icmp sge i64 %subtmp738, 0
  %a.rd.lt748 = icmp slt i64 %subtmp738, %a.rd.len746
  %a.rd.bounds749 = and i1 %a.rd.ge0747, %a.rd.lt748
  br i1 %a.rd.bounds749, label %a.rd.ok741, label %a.rd.err.oob743

a.rd.ok741:                                       ; preds = %a.rd.check740
  %a.rd.data750 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2736, i32 0, i32 1
  %a.rd.data751 = load ptr, ptr %a.rd.data750, align 8
  %a.rd.elem.gep752 = getelementptr i64, ptr %a.rd.data751, i64 %subtmp738
  %a.rd.elem753 = load i64, ptr %a.rd.elem.gep752, align 8
  br label %a.rd.done744

a.rd.err.null742:                                 ; preds = %a.after728
  %arena.cur754 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc755 = call ptr @dva_arena_alloc(ptr %arena.cur754, i64 56)
  %err.code.gep756 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc755, i32 0, i32 0
  store i64 4011, ptr %err.code.gep756, align 8
  %err.msg.gep757 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc755, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep757, align 8
  %err.file.gep758 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc755, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep758, align 8
  %err.line.gep759 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc755, i32 0, i32 3
  store i64 587, ptr %err.line.gep759, align 8
  %err.col.gep760 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc755, i32 0, i32 4
  store i64 61, ptr %err.col.gep760, align 8
  %err.ctx.gep761 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc755, i32 0, i32 5
  %err.ctx0.gep762 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep761, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep762, align 8
  %err.ctx1.gep763 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep761, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep763, align 8
  %err.p2i764 = ptrtoint ptr %err.alloc755 to i64
  br label %a.rd.done744

a.rd.err.oob743:                                  ; preds = %a.rd.check740
  %arena.cur765 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc766 = call ptr @dva_arena_alloc(ptr %arena.cur765, i64 56)
  %err.code.gep767 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 0
  store i64 4011, ptr %err.code.gep767, align 8
  %err.msg.gep768 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep768, align 8
  %err.file.gep769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep769, align 8
  %err.line.gep770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 3
  store i64 587, ptr %err.line.gep770, align 8
  %err.col.gep771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 4
  store i64 61, ptr %err.col.gep771, align 8
  %err.ctx.gep772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 5
  %err.ctx0.gep773 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep772, i32 0, i32 0
  store i64 %subtmp738, ptr %err.ctx0.gep773, align 8
  %err.ctx1.gep774 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep772, i32 0, i32 1
  store i64 %a.rd.len746, ptr %err.ctx1.gep774, align 8
  %err.p2i775 = ptrtoint ptr %err.alloc766 to i64
  br label %a.rd.done744

a.rd.done744:                                     ; preds = %a.rd.err.oob743, %a.rd.err.null742, %a.rd.ok741
  %a.rd.tag776 = phi i1 [ true, %a.rd.ok741 ], [ false, %a.rd.err.null742 ], [ false, %a.rd.err.oob743 ]
  %a.rd.pay777 = phi i64 [ %a.rd.elem753, %a.rd.ok741 ], [ %err.p2i764, %a.rd.err.null742 ], [ %err.p2i775, %a.rd.err.oob743 ]
  %ram.tag778 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag776, 0
  %ram.pay779 = insertvalue { i1, i64 } %ram.tag778, i64 %a.rd.pay777, 1
  %ram.tag780 = extractvalue { i1, i64 } %ram.pay779, 0
  br i1 %ram.tag780, label %choice.then781, label %choice.else782

choice.then781:                                   ; preds = %a.rd.done744
  %ram.pay784 = extractvalue { i1, i64 } %ram.pay779, 1
  %pay.ptr785 = inttoptr i64 %ram.pay784 to ptr
  store ptr %pay.ptr785, ptr %var._786, align 8
  br label %choice.exit783

choice.else782:                                   ; preds = %a.rd.done744
  %ram.pay787 = extractvalue { i1, i64 } %ram.pay779, 1
  %pay.ptr788 = inttoptr i64 %ram.pay787 to ptr
  store ptr %pay.ptr788, ptr %var._789, align 8
  br label %choice.exit783

choice.exit783:                                   ; preds = %choice.else782, %choice.then781
  %choice.res790 = phi ptr [ %pay.ptr785, %choice.then781 ], [ @str.12.struct, %choice.else782 ]
  store ptr %choice.res790, ptr %var.p_code791, align 8
  %var.load792 = load ptr, ptr %var.lines, align 8
  %a.load793 = load ptr, ptr %var.lines, align 8
  %a.null794 = icmp eq ptr %a.load793, null
  br i1 %a.null794, label %a.create795, label %a.after796

a.create795:                                      ; preds = %choice.exit783
  %arena.cur797 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create798 = call ptr @dva_arena_alloc(ptr %arena.cur797, i64 24)
  %arena.cur799 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf800 = call ptr @dva_arena_alloc(ptr %arena.cur799, i64 128)
  %a.len.gep801 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create798, i32 0, i32 0
  store i64 0, ptr %a.len.gep801, align 8
  %a.data.gep802 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create798, i32 0, i32 1
  store ptr %a.buf800, ptr %a.data.gep802, align 8
  %a.cap.gep803 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create798, i32 0, i32 2
  store i64 16, ptr %a.cap.gep803, align 8
  store ptr %a.create798, ptr %var.lines, align 8
  br label %a.after796

a.after796:                                       ; preds = %a.create795, %choice.exit783
  %a.load2804 = load ptr, ptr %var.lines, align 8
  %var.load805 = load i64, ptr %var.idx, align 8
  %var.load806 = load ptr, ptr %var.p_code791, align 8
  %var.load807 = load ptr, ptr %var.cur_code, align 8
  %var.load808 = load i64, ptr %var.top_raw, align 8
  %var.load809 = load i64, ptr %var.raw, align 8
  %call.res810 = call i64 @"formatter::compute_child_delta"(ptr %a.load2804, i64 %var.load805, ptr %var.load806, ptr %var.load807, i64 %var.load808, i64 %var.load809)
  store i64 %call.res810, ptr %var.delta, align 8
  %var.load811 = load i64, ptr %var.p_canon, align 8
  %var.load812 = load i64, ptr %var.delta, align 8
  %addtmp813 = add i64 %var.load811, %var.load812
  store i64 %addtmp813, ptr %var.new_canon, align 8
  %var.load814 = load i64, ptr %"var.top'", align 8
  %var.load815 = load ptr, ptr %var.raw_stack, align 8
  %a.load816 = load ptr, ptr %var.raw_stack, align 8
  %a.null817 = icmp eq ptr %a.load816, null
  br i1 %a.null817, label %a.create818, label %a.after819

a.create818:                                      ; preds = %a.after796
  %arena.cur820 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create821 = call ptr @dva_arena_alloc(ptr %arena.cur820, i64 24)
  %arena.cur822 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf823 = call ptr @dva_arena_alloc(ptr %arena.cur822, i64 128)
  %a.len.gep824 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create821, i32 0, i32 0
  store i64 0, ptr %a.len.gep824, align 8
  %a.data.gep825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create821, i32 0, i32 1
  store ptr %a.buf823, ptr %a.data.gep825, align 8
  %a.cap.gep826 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create821, i32 0, i32 2
  store i64 16, ptr %a.cap.gep826, align 8
  store ptr %a.create821, ptr %var.raw_stack, align 8
  br label %a.after819

a.after819:                                       ; preds = %a.create818, %a.after796
  %a.load2827 = load ptr, ptr %var.raw_stack, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2827, i32 0, i32 0
  %a.len.query828 = load i64, ptr %a.len.query, align 8
  %cmptmp829 = icmp eq i64 %var.load814, %a.len.query828
  br i1 %cmptmp829, label %choice.then830, label %choice.else831

choice.then830:                                   ; preds = %a.after819
  %var.load833 = load i64, ptr %var.raw, align 8
  %a.load834 = load ptr, ptr %var.raw_stack, align 8
  %a.null835 = icmp eq ptr %a.load834, null
  br i1 %a.null835, label %a.create836, label %a.after837

choice.else831:                                   ; preds = %a.after819
  %var.load917 = load ptr, ptr %var.raw_stack, align 8
  %a.load918 = load ptr, ptr %var.raw_stack, align 8
  %a.null919 = icmp eq ptr %a.load918, null
  br i1 %a.null919, label %a.create920, label %a.after921

choice.exit832:                                   ; preds = %choice.exit1113, %a.store904
  %var.load1147 = load i64, ptr %"var.top'", align 8
  %addtmp1148 = add i64 %var.load1147, 1
  store i64 %addtmp1148, ptr %"var.top'", align 8
  br label %choice.exit657

a.create836:                                      ; preds = %choice.then830
  %arena.cur838 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create839 = call ptr @dva_arena_alloc(ptr %arena.cur838, i64 24)
  %arena.cur840 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf841 = call ptr @dva_arena_alloc(ptr %arena.cur840, i64 128)
  %a.len.gep842 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create839, i32 0, i32 0
  store i64 0, ptr %a.len.gep842, align 8
  %a.data.gep843 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create839, i32 0, i32 1
  store ptr %a.buf841, ptr %a.data.gep843, align 8
  %a.cap.gep844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create839, i32 0, i32 2
  store i64 16, ptr %a.cap.gep844, align 8
  store ptr %a.create839, ptr %var.raw_stack, align 8
  br label %a.after837

a.after837:                                       ; preds = %a.create836, %choice.then830
  %a.load2845 = load ptr, ptr %var.raw_stack, align 8
  br label %a.check846

a.check846:                                       ; preds = %a.after837
  %a.len849 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2845, i32 0, i32 0
  %a.len850 = load i64, ptr %a.len849, align 8
  %a.cap851 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2845, i32 0, i32 2
  %a.cap852 = load i64, ptr %a.cap851, align 8
  %a.needs.grow853 = icmp eq i64 %a.len850, %a.cap852
  br i1 %a.needs.grow853, label %a.grow847, label %a.store848

a.grow847:                                        ; preds = %a.check846
  call void @dva_array_grow(ptr %a.load2845)
  br label %a.store848

a.store848:                                       ; preds = %a.grow847, %a.check846
  %a.cur.data854 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2845, i32 0, i32 1
  %a.cur.data855 = load ptr, ptr %a.cur.data854, align 8
  %a.cur.len856 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2845, i32 0, i32 0
  %a.cur.len857 = load i64, ptr %a.cur.len856, align 8
  %a.elem.gep858 = getelementptr i64, ptr %a.cur.data855, i64 %a.cur.len857
  store i64 %var.load833, ptr %a.elem.gep858, align 8
  %a.next.len859 = add i64 %a.cur.len857, 1
  %b.len.gep860 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2845, i32 0, i32 0
  store i64 %a.next.len859, ptr %b.len.gep860, align 8
  %var.load861 = load i64, ptr %var.new_canon, align 8
  %a.load862 = load ptr, ptr %var.canon_stack, align 8
  %a.null863 = icmp eq ptr %a.load862, null
  br i1 %a.null863, label %a.create864, label %a.after865

a.create864:                                      ; preds = %a.store848
  %arena.cur866 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create867 = call ptr @dva_arena_alloc(ptr %arena.cur866, i64 24)
  %arena.cur868 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf869 = call ptr @dva_arena_alloc(ptr %arena.cur868, i64 128)
  %a.len.gep870 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create867, i32 0, i32 0
  store i64 0, ptr %a.len.gep870, align 8
  %a.data.gep871 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create867, i32 0, i32 1
  store ptr %a.buf869, ptr %a.data.gep871, align 8
  %a.cap.gep872 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create867, i32 0, i32 2
  store i64 16, ptr %a.cap.gep872, align 8
  store ptr %a.create867, ptr %var.canon_stack, align 8
  br label %a.after865

a.after865:                                       ; preds = %a.create864, %a.store848
  %a.load2873 = load ptr, ptr %var.canon_stack, align 8
  br label %a.check874

a.check874:                                       ; preds = %a.after865
  %a.len877 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2873, i32 0, i32 0
  %a.len878 = load i64, ptr %a.len877, align 8
  %a.cap879 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2873, i32 0, i32 2
  %a.cap880 = load i64, ptr %a.cap879, align 8
  %a.needs.grow881 = icmp eq i64 %a.len878, %a.cap880
  br i1 %a.needs.grow881, label %a.grow875, label %a.store876

a.grow875:                                        ; preds = %a.check874
  call void @dva_array_grow(ptr %a.load2873)
  br label %a.store876

a.store876:                                       ; preds = %a.grow875, %a.check874
  %a.cur.data882 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2873, i32 0, i32 1
  %a.cur.data883 = load ptr, ptr %a.cur.data882, align 8
  %a.cur.len884 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2873, i32 0, i32 0
  %a.cur.len885 = load i64, ptr %a.cur.len884, align 8
  %a.elem.gep886 = getelementptr i64, ptr %a.cur.data883, i64 %a.cur.len885
  store i64 %var.load861, ptr %a.elem.gep886, align 8
  %a.next.len887 = add i64 %a.cur.len885, 1
  %b.len.gep888 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2873, i32 0, i32 0
  store i64 %a.next.len887, ptr %b.len.gep888, align 8
  %var.load889 = load ptr, ptr %var.cur_code, align 8
  %a.load890 = load ptr, ptr %var.body_stack, align 8
  %a.null891 = icmp eq ptr %a.load890, null
  br i1 %a.null891, label %a.create892, label %a.after893

a.create892:                                      ; preds = %a.store876
  %arena.cur894 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create895 = call ptr @dva_arena_alloc(ptr %arena.cur894, i64 24)
  %arena.cur896 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf897 = call ptr @dva_arena_alloc(ptr %arena.cur896, i64 128)
  %a.len.gep898 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create895, i32 0, i32 0
  store i64 0, ptr %a.len.gep898, align 8
  %a.data.gep899 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create895, i32 0, i32 1
  store ptr %a.buf897, ptr %a.data.gep899, align 8
  %a.cap.gep900 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create895, i32 0, i32 2
  store i64 16, ptr %a.cap.gep900, align 8
  store ptr %a.create895, ptr %var.body_stack, align 8
  br label %a.after893

a.after893:                                       ; preds = %a.create892, %a.store876
  %a.load2901 = load ptr, ptr %var.body_stack, align 8
  br label %a.check902

a.check902:                                       ; preds = %a.after893
  %a.len905 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2901, i32 0, i32 0
  %a.len906 = load i64, ptr %a.len905, align 8
  %a.cap907 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2901, i32 0, i32 2
  %a.cap908 = load i64, ptr %a.cap907, align 8
  %a.needs.grow909 = icmp eq i64 %a.len906, %a.cap908
  br i1 %a.needs.grow909, label %a.grow903, label %a.store904

a.grow903:                                        ; preds = %a.check902
  call void @dva_array_grow(ptr %a.load2901)
  br label %a.store904

a.store904:                                       ; preds = %a.grow903, %a.check902
  %a.cur.data910 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2901, i32 0, i32 1
  %a.cur.data911 = load ptr, ptr %a.cur.data910, align 8
  %a.cur.len912 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2901, i32 0, i32 0
  %a.cur.len913 = load i64, ptr %a.cur.len912, align 8
  %a.elem.gep914 = getelementptr i64, ptr %a.cur.data911, i64 %a.cur.len913
  %slot.p2i = ptrtoint ptr %var.load889 to i64
  store i64 %slot.p2i, ptr %a.elem.gep914, align 8
  %a.next.len915 = add i64 %a.cur.len913, 1
  %b.len.gep916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2901, i32 0, i32 0
  store i64 %a.next.len915, ptr %b.len.gep916, align 8
  br label %choice.exit832

a.create920:                                      ; preds = %choice.else831
  %arena.cur922 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create923 = call ptr @dva_arena_alloc(ptr %arena.cur922, i64 24)
  %arena.cur924 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf925 = call ptr @dva_arena_alloc(ptr %arena.cur924, i64 128)
  %a.len.gep926 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create923, i32 0, i32 0
  store i64 0, ptr %a.len.gep926, align 8
  %a.data.gep927 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create923, i32 0, i32 1
  store ptr %a.buf925, ptr %a.data.gep927, align 8
  %a.cap.gep928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create923, i32 0, i32 2
  store i64 16, ptr %a.cap.gep928, align 8
  store ptr %a.create923, ptr %var.raw_stack, align 8
  br label %a.after921

a.after921:                                       ; preds = %a.create920, %choice.else831
  %a.load2929 = load ptr, ptr %var.raw_stack, align 8
  %var.load930 = load i64, ptr %"var.top'", align 8
  %var.load931 = load i64, ptr %var.raw, align 8
  %a.wr.nonnull = icmp ne ptr %a.load2929, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after921
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2929, i32 0, i32 0
  %a.wr.len932 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load930, 0
  %a.wr.lt = icmp slt i64 %var.load930, %a.wr.len932
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2929, i32 0, i32 1
  %a.wr.data933 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep934 = getelementptr i64, ptr %a.wr.data933, i64 %var.load930
  store i64 %var.load931, ptr %a.elem.gep934, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after921
  %arena.cur935 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc936 = call ptr @dva_arena_alloc(ptr %arena.cur935, i64 56)
  %err.code.gep937 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc936, i32 0, i32 0
  store i64 4011, ptr %err.code.gep937, align 8
  %err.msg.gep938 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc936, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep938, align 8
  %err.file.gep939 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc936, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep939, align 8
  %err.line.gep940 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc936, i32 0, i32 3
  store i64 0, ptr %err.line.gep940, align 8
  %err.col.gep941 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc936, i32 0, i32 4
  store i64 0, ptr %err.col.gep941, align 8
  %err.ctx.gep942 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc936, i32 0, i32 5
  %err.ctx0.gep943 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep942, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep943, align 8
  %err.ctx1.gep944 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep942, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep944, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur945 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc946 = call ptr @dva_arena_alloc(ptr %arena.cur945, i64 56)
  %err.code.gep947 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc946, i32 0, i32 0
  store i64 4011, ptr %err.code.gep947, align 8
  %err.msg.gep948 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc946, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep948, align 8
  %err.file.gep949 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc946, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep949, align 8
  %err.line.gep950 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc946, i32 0, i32 3
  store i64 0, ptr %err.line.gep950, align 8
  %err.col.gep951 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc946, i32 0, i32 4
  store i64 0, ptr %err.col.gep951, align 8
  %err.ctx.gep952 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc946, i32 0, i32 5
  %err.ctx0.gep953 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep952, i32 0, i32 0
  store i64 %var.load930, ptr %err.ctx0.gep953, align 8
  %err.ctx1.gep954 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep952, i32 0, i32 1
  store i64 %a.wr.len932, ptr %err.ctx1.gep954, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc936, %a.wr.err.null ], [ %err.alloc946, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then955, label %choice.else956

choice.then955:                                   ; preds = %a.wr.done
  br label %choice.exit957

choice.else956:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._958, align 8
  store ptr %a.wr.niche, ptr %var._959, align 8
  store ptr %a.wr.niche, ptr %var._960, align 8
  %err.code.gep961 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep961, align 8
  %err.msg.gep962 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep962, align 8
  %err.file.gep963 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep963, align 8
  %err.line.gep964 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep964, align 8
  %err.col.gep965 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep965, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len966 = load i64, ptr %err.msg.len, align 8
  %err.msg.len967 = and i64 %err.msg.len966, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len967 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data968 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len969 = load i64, ptr %err.file.len, align 8
  %err.file.len970 = and i64 %err.file.len969, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len970 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data971 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

choice.exit957:                                   ; preds = %err.abort, %choice.then955
  %var.load972 = load ptr, ptr %var.canon_stack, align 8
  %a.load973 = load ptr, ptr %var.canon_stack, align 8
  %a.null974 = icmp eq ptr %a.load973, null
  br i1 %a.null974, label %a.create975, label %a.after976

err.thread:                                       ; preds = %choice.else956
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else956
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data968, i32 %err.file.len32, ptr %err.file.data971, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit957

a.create975:                                      ; preds = %choice.exit957
  %arena.cur977 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create978 = call ptr @dva_arena_alloc(ptr %arena.cur977, i64 24)
  %arena.cur979 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf980 = call ptr @dva_arena_alloc(ptr %arena.cur979, i64 128)
  %a.len.gep981 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create978, i32 0, i32 0
  store i64 0, ptr %a.len.gep981, align 8
  %a.data.gep982 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create978, i32 0, i32 1
  store ptr %a.buf980, ptr %a.data.gep982, align 8
  %a.cap.gep983 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create978, i32 0, i32 2
  store i64 16, ptr %a.cap.gep983, align 8
  store ptr %a.create978, ptr %var.canon_stack, align 8
  br label %a.after976

a.after976:                                       ; preds = %a.create975, %choice.exit957
  %a.load2984 = load ptr, ptr %var.canon_stack, align 8
  %var.load985 = load i64, ptr %"var.top'", align 8
  %var.load986 = load i64, ptr %var.new_canon, align 8
  %a.wr.nonnull987 = icmp ne ptr %a.load2984, null
  br i1 %a.wr.nonnull987, label %a.wr.check988, label %a.wr.err.null990

a.wr.check988:                                    ; preds = %a.after976
  %a.wr.len993 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2984, i32 0, i32 0
  %a.wr.len994 = load i64, ptr %a.wr.len993, align 8
  %a.wr.ge0995 = icmp sge i64 %var.load985, 0
  %a.wr.lt996 = icmp slt i64 %var.load985, %a.wr.len994
  %a.wr.bounds997 = and i1 %a.wr.ge0995, %a.wr.lt996
  br i1 %a.wr.bounds997, label %a.wr.ok989, label %a.wr.err.oob991

a.wr.ok989:                                       ; preds = %a.wr.check988
  %a.wr.data998 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2984, i32 0, i32 1
  %a.wr.data999 = load ptr, ptr %a.wr.data998, align 8
  %a.elem.gep1000 = getelementptr i64, ptr %a.wr.data999, i64 %var.load985
  store i64 %var.load986, ptr %a.elem.gep1000, align 8
  br label %a.wr.done992

a.wr.err.null990:                                 ; preds = %a.after976
  %arena.cur1001 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1002 = call ptr @dva_arena_alloc(ptr %arena.cur1001, i64 56)
  %err.code.gep1003 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1002, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1003, align 8
  %err.msg.gep1004 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1002, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1004, align 8
  %err.file.gep1005 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1002, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1005, align 8
  %err.line.gep1006 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1002, i32 0, i32 3
  store i64 0, ptr %err.line.gep1006, align 8
  %err.col.gep1007 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1002, i32 0, i32 4
  store i64 0, ptr %err.col.gep1007, align 8
  %err.ctx.gep1008 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1002, i32 0, i32 5
  %err.ctx0.gep1009 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1008, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1009, align 8
  %err.ctx1.gep1010 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1008, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1010, align 8
  br label %a.wr.done992

a.wr.err.oob991:                                  ; preds = %a.wr.check988
  %arena.cur1011 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1012 = call ptr @dva_arena_alloc(ptr %arena.cur1011, i64 56)
  %err.code.gep1013 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1012, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1013, align 8
  %err.msg.gep1014 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1012, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1014, align 8
  %err.file.gep1015 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1012, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1015, align 8
  %err.line.gep1016 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1012, i32 0, i32 3
  store i64 0, ptr %err.line.gep1016, align 8
  %err.col.gep1017 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1012, i32 0, i32 4
  store i64 0, ptr %err.col.gep1017, align 8
  %err.ctx.gep1018 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1012, i32 0, i32 5
  %err.ctx0.gep1019 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1018, i32 0, i32 0
  store i64 %var.load985, ptr %err.ctx0.gep1019, align 8
  %err.ctx1.gep1020 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1018, i32 0, i32 1
  store i64 %a.wr.len994, ptr %err.ctx1.gep1020, align 8
  br label %a.wr.done992

a.wr.done992:                                     ; preds = %a.wr.err.oob991, %a.wr.err.null990, %a.wr.ok989
  %a.wr.niche1021 = phi ptr [ null, %a.wr.ok989 ], [ %err.alloc1002, %a.wr.err.null990 ], [ %err.alloc1012, %a.wr.err.oob991 ]
  %niche.eq.null1022 = icmp eq ptr %a.wr.niche1021, null
  br i1 %niche.eq.null1022, label %choice.then1023, label %choice.else1024

choice.then1023:                                  ; preds = %a.wr.done992
  br label %choice.exit1025

choice.else1024:                                  ; preds = %a.wr.done992
  store ptr %a.wr.niche1021, ptr %var._1026, align 8
  store ptr %a.wr.niche1021, ptr %var._1027, align 8
  store ptr %a.wr.niche1021, ptr %var._1028, align 8
  %err.code.gep1029 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1021, i32 0, i32 0
  %err.code1030 = load i64, ptr %err.code.gep1029, align 8
  %err.msg.gep1031 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1021, i32 0, i32 1
  %err.msg.struct1032 = load ptr, ptr %err.msg.gep1031, align 8
  %err.file.gep1033 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1021, i32 0, i32 2
  %err.file.struct1034 = load ptr, ptr %err.file.gep1033, align 8
  %err.line.gep1035 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1021, i32 0, i32 3
  %err.line1036 = load i64, ptr %err.line.gep1035, align 8
  %err.col.gep1037 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1021, i32 0, i32 4
  %err.col1038 = load i64, ptr %err.col.gep1037, align 8
  %err.msg.len1039 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1032, i32 0, i32 0
  %err.msg.len1040 = load i64, ptr %err.msg.len1039, align 8
  %err.msg.len1041 = and i64 %err.msg.len1040, 281474976710655
  %err.msg.len321042 = trunc i64 %err.msg.len1041 to i32
  %err.msg.data1043 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1032, i32 0, i32 1
  %err.msg.data1044 = load ptr, ptr %err.msg.data1043, align 8
  %err.file.len1045 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1034, i32 0, i32 0
  %err.file.len1046 = load i64, ptr %err.file.len1045, align 8
  %err.file.len1047 = and i64 %err.file.len1046, 281474976710655
  %err.file.len321048 = trunc i64 %err.file.len1047 to i32
  %err.file.data1049 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1034, i32 0, i32 1
  %err.file.data1050 = load ptr, ptr %err.file.data1049, align 8
  %err.thread.rec1051 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1052 = icmp ne ptr %err.thread.rec1051, null
  br i1 %err.is.thread1052, label %err.thread1053, label %err.normal1054

choice.exit1025:                                  ; preds = %err.abort1058, %choice.then1023
  %var.load1059 = load ptr, ptr %var.body_stack, align 8
  %a.load1060 = load ptr, ptr %var.body_stack, align 8
  %a.null1061 = icmp eq ptr %a.load1060, null
  br i1 %a.null1061, label %a.create1062, label %a.after1063

err.thread1053:                                   ; preds = %choice.else1024
  %err.haserr.gep1055 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1051, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1055, align 8
  %err.err.gep1056 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1051, i32 0, i32 7
  store ptr %a.wr.niche1021, ptr %err.err.gep1056, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1054:                                   ; preds = %choice.else1024
  %err.panic.printf1057 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1030, i32 %err.msg.len321042, ptr %err.msg.data1044, i32 %err.file.len321048, ptr %err.file.data1050, i64 %err.line1036, i64 %err.col1038)
  call void @exit(i32 1)
  unreachable

err.abort1058:                                    ; No predecessors!
  br label %choice.exit1025

a.create1062:                                     ; preds = %choice.exit1025
  %arena.cur1064 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1065 = call ptr @dva_arena_alloc(ptr %arena.cur1064, i64 24)
  %arena.cur1066 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1067 = call ptr @dva_arena_alloc(ptr %arena.cur1066, i64 128)
  %a.len.gep1068 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1065, i32 0, i32 0
  store i64 0, ptr %a.len.gep1068, align 8
  %a.data.gep1069 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1065, i32 0, i32 1
  store ptr %a.buf1067, ptr %a.data.gep1069, align 8
  %a.cap.gep1070 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1065, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1070, align 8
  store ptr %a.create1065, ptr %var.body_stack, align 8
  br label %a.after1063

a.after1063:                                      ; preds = %a.create1062, %choice.exit1025
  %a.load21071 = load ptr, ptr %var.body_stack, align 8
  %var.load1072 = load i64, ptr %"var.top'", align 8
  %var.load1073 = load ptr, ptr %var.cur_code, align 8
  %slot.p2i1074 = ptrtoint ptr %var.load1073 to i64
  %a.wr.nonnull1075 = icmp ne ptr %a.load21071, null
  br i1 %a.wr.nonnull1075, label %a.wr.check1076, label %a.wr.err.null1078

a.wr.check1076:                                   ; preds = %a.after1063
  %a.wr.len1081 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21071, i32 0, i32 0
  %a.wr.len1082 = load i64, ptr %a.wr.len1081, align 8
  %a.wr.ge01083 = icmp sge i64 %var.load1072, 0
  %a.wr.lt1084 = icmp slt i64 %var.load1072, %a.wr.len1082
  %a.wr.bounds1085 = and i1 %a.wr.ge01083, %a.wr.lt1084
  br i1 %a.wr.bounds1085, label %a.wr.ok1077, label %a.wr.err.oob1079

a.wr.ok1077:                                      ; preds = %a.wr.check1076
  %a.wr.data1086 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21071, i32 0, i32 1
  %a.wr.data1087 = load ptr, ptr %a.wr.data1086, align 8
  %a.elem.gep1088 = getelementptr i64, ptr %a.wr.data1087, i64 %var.load1072
  store i64 %slot.p2i1074, ptr %a.elem.gep1088, align 8
  br label %a.wr.done1080

a.wr.err.null1078:                                ; preds = %a.after1063
  %arena.cur1089 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1090 = call ptr @dva_arena_alloc(ptr %arena.cur1089, i64 56)
  %err.code.gep1091 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1090, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1091, align 8
  %err.msg.gep1092 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1090, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1092, align 8
  %err.file.gep1093 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1090, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1093, align 8
  %err.line.gep1094 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1090, i32 0, i32 3
  store i64 0, ptr %err.line.gep1094, align 8
  %err.col.gep1095 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1090, i32 0, i32 4
  store i64 0, ptr %err.col.gep1095, align 8
  %err.ctx.gep1096 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1090, i32 0, i32 5
  %err.ctx0.gep1097 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1096, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1097, align 8
  %err.ctx1.gep1098 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1096, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1098, align 8
  br label %a.wr.done1080

a.wr.err.oob1079:                                 ; preds = %a.wr.check1076
  %arena.cur1099 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1100 = call ptr @dva_arena_alloc(ptr %arena.cur1099, i64 56)
  %err.code.gep1101 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1100, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1101, align 8
  %err.msg.gep1102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1100, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1102, align 8
  %err.file.gep1103 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1100, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1103, align 8
  %err.line.gep1104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1100, i32 0, i32 3
  store i64 0, ptr %err.line.gep1104, align 8
  %err.col.gep1105 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1100, i32 0, i32 4
  store i64 0, ptr %err.col.gep1105, align 8
  %err.ctx.gep1106 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1100, i32 0, i32 5
  %err.ctx0.gep1107 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1106, i32 0, i32 0
  store i64 %var.load1072, ptr %err.ctx0.gep1107, align 8
  %err.ctx1.gep1108 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1106, i32 0, i32 1
  store i64 %a.wr.len1082, ptr %err.ctx1.gep1108, align 8
  br label %a.wr.done1080

a.wr.done1080:                                    ; preds = %a.wr.err.oob1079, %a.wr.err.null1078, %a.wr.ok1077
  %a.wr.niche1109 = phi ptr [ null, %a.wr.ok1077 ], [ %err.alloc1090, %a.wr.err.null1078 ], [ %err.alloc1100, %a.wr.err.oob1079 ]
  %niche.eq.null1110 = icmp eq ptr %a.wr.niche1109, null
  br i1 %niche.eq.null1110, label %choice.then1111, label %choice.else1112

choice.then1111:                                  ; preds = %a.wr.done1080
  br label %choice.exit1113

choice.else1112:                                  ; preds = %a.wr.done1080
  store ptr %a.wr.niche1109, ptr %var._1114, align 8
  store ptr %a.wr.niche1109, ptr %var._1115, align 8
  store ptr %a.wr.niche1109, ptr %var._1116, align 8
  %err.code.gep1117 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1109, i32 0, i32 0
  %err.code1118 = load i64, ptr %err.code.gep1117, align 8
  %err.msg.gep1119 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1109, i32 0, i32 1
  %err.msg.struct1120 = load ptr, ptr %err.msg.gep1119, align 8
  %err.file.gep1121 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1109, i32 0, i32 2
  %err.file.struct1122 = load ptr, ptr %err.file.gep1121, align 8
  %err.line.gep1123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1109, i32 0, i32 3
  %err.line1124 = load i64, ptr %err.line.gep1123, align 8
  %err.col.gep1125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1109, i32 0, i32 4
  %err.col1126 = load i64, ptr %err.col.gep1125, align 8
  %err.msg.len1127 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1120, i32 0, i32 0
  %err.msg.len1128 = load i64, ptr %err.msg.len1127, align 8
  %err.msg.len1129 = and i64 %err.msg.len1128, 281474976710655
  %err.msg.len321130 = trunc i64 %err.msg.len1129 to i32
  %err.msg.data1131 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1120, i32 0, i32 1
  %err.msg.data1132 = load ptr, ptr %err.msg.data1131, align 8
  %err.file.len1133 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1122, i32 0, i32 0
  %err.file.len1134 = load i64, ptr %err.file.len1133, align 8
  %err.file.len1135 = and i64 %err.file.len1134, 281474976710655
  %err.file.len321136 = trunc i64 %err.file.len1135 to i32
  %err.file.data1137 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1122, i32 0, i32 1
  %err.file.data1138 = load ptr, ptr %err.file.data1137, align 8
  %err.thread.rec1139 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1140 = icmp ne ptr %err.thread.rec1139, null
  br i1 %err.is.thread1140, label %err.thread1141, label %err.normal1142

choice.exit1113:                                  ; preds = %err.abort1146, %choice.then1111
  br label %choice.exit832

err.thread1141:                                   ; preds = %choice.else1112
  %err.haserr.gep1143 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1139, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1143, align 8
  %err.err.gep1144 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1139, i32 0, i32 7
  store ptr %a.wr.niche1109, ptr %err.err.gep1144, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1142:                                   ; preds = %choice.else1112
  %err.panic.printf1145 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1118, i32 %err.msg.len321130, ptr %err.msg.data1132, i32 %err.file.len321136, ptr %err.file.data1138, i64 %err.line1124, i64 %err.col1126)
  call void @exit(i32 1)
  unreachable

err.abort1146:                                    ; No predecessors!
  br label %choice.exit1113

loop.header.682:                                  ; preds = %loop.latch.682, %choice.else656
  %counter.load1149 = load i64, ptr %loop.idx.682, align 8
  br label %loop.body.682

loop.body.682:                                    ; preds = %loop.header.682
  %loop.rel.i1150 = sub i64 %counter.load1149, 0
  store i64 1, ptr %loop.step.682, align 8
  store i64 %counter.load1149, ptr %var._1151, align 8
  store i64 %loop.rel.i1150, ptr %var._i1152, align 8
  %var.load1153 = load i64, ptr %"var.top'", align 8
  %cmptmp1154 = icmp sgt i64 %var.load1153, 1
  br i1 %cmptmp1154, label %and.683.then, label %and.683.else

loop.exit.nat.682:                                ; No predecessors!
  br label %loop.exit.682

loop.latch.682:                                   ; preds = %choice.exit1225
  %step.val = load i64, ptr %loop.step.682, align 8
  %loop.next = add i64 %counter.load1149, %step.val
  store i64 %loop.next, ptr %loop.idx.682, align 8
  br label %loop.header.682

loop.exit.682:                                    ; preds = %choice.else1224, %loop.exit.nat.682
  %var.load1228 = load ptr, ptr %var.raw_stack, align 8
  %a.load1229 = load ptr, ptr %var.raw_stack, align 8
  %a.null1230 = icmp eq ptr %a.load1229, null
  br i1 %a.null1230, label %a.create1231, label %a.after1232

and.683.then:                                     ; preds = %loop.body.682
  %var.load1155 = load ptr, ptr %var.raw_stack, align 8
  %a.load1156 = load ptr, ptr %var.raw_stack, align 8
  %a.null1157 = icmp eq ptr %a.load1156, null
  br i1 %a.null1157, label %a.create1158, label %a.after1159

and.683.else:                                     ; preds = %loop.body.682
  br label %and.683.exit

and.683.exit:                                     ; preds = %and.683.else, %choice.exit1214
  %and.683.phi = phi i1 [ %cmptmp1222, %choice.exit1214 ], [ %cmptmp1154, %and.683.else ]
  br i1 %and.683.phi, label %choice.then1223, label %choice.else1224

a.create1158:                                     ; preds = %and.683.then
  %arena.cur1160 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1161 = call ptr @dva_arena_alloc(ptr %arena.cur1160, i64 24)
  %arena.cur1162 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1163 = call ptr @dva_arena_alloc(ptr %arena.cur1162, i64 128)
  %a.len.gep1164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1161, i32 0, i32 0
  store i64 0, ptr %a.len.gep1164, align 8
  %a.data.gep1165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1161, i32 0, i32 1
  store ptr %a.buf1163, ptr %a.data.gep1165, align 8
  %a.cap.gep1166 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1161, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1166, align 8
  store ptr %a.create1161, ptr %var.raw_stack, align 8
  br label %a.after1159

a.after1159:                                      ; preds = %a.create1158, %and.683.then
  %a.load21167 = load ptr, ptr %var.raw_stack, align 8
  %var.load1168 = load i64, ptr %"var.top'", align 8
  %subtmp1169 = sub i64 %var.load1168, 1
  %a.rd.nonnull1170 = icmp ne ptr %a.load21167, null
  br i1 %a.rd.nonnull1170, label %a.rd.check1171, label %a.rd.err.null1173

a.rd.check1171:                                   ; preds = %a.after1159
  %a.rd.len1176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21167, i32 0, i32 0
  %a.rd.len1177 = load i64, ptr %a.rd.len1176, align 8
  %a.rd.ge01178 = icmp sge i64 %subtmp1169, 0
  %a.rd.lt1179 = icmp slt i64 %subtmp1169, %a.rd.len1177
  %a.rd.bounds1180 = and i1 %a.rd.ge01178, %a.rd.lt1179
  br i1 %a.rd.bounds1180, label %a.rd.ok1172, label %a.rd.err.oob1174

a.rd.ok1172:                                      ; preds = %a.rd.check1171
  %a.rd.data1181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21167, i32 0, i32 1
  %a.rd.data1182 = load ptr, ptr %a.rd.data1181, align 8
  %a.rd.elem.gep1183 = getelementptr i64, ptr %a.rd.data1182, i64 %subtmp1169
  %a.rd.elem1184 = load i64, ptr %a.rd.elem.gep1183, align 8
  br label %a.rd.done1175

a.rd.err.null1173:                                ; preds = %a.after1159
  %arena.cur1185 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1186 = call ptr @dva_arena_alloc(ptr %arena.cur1185, i64 56)
  %err.code.gep1187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1186, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1187, align 8
  %err.msg.gep1188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1186, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1188, align 8
  %err.file.gep1189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1186, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1189, align 8
  %err.line.gep1190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1186, i32 0, i32 3
  store i64 602, ptr %err.line.gep1190, align 8
  %err.col.gep1191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1186, i32 0, i32 4
  store i64 68, ptr %err.col.gep1191, align 8
  %err.ctx.gep1192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1186, i32 0, i32 5
  %err.ctx0.gep1193 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1192, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1193, align 8
  %err.ctx1.gep1194 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1192, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1194, align 8
  %err.p2i1195 = ptrtoint ptr %err.alloc1186 to i64
  br label %a.rd.done1175

a.rd.err.oob1174:                                 ; preds = %a.rd.check1171
  %arena.cur1196 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1197 = call ptr @dva_arena_alloc(ptr %arena.cur1196, i64 56)
  %err.code.gep1198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1197, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1198, align 8
  %err.msg.gep1199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1197, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1199, align 8
  %err.file.gep1200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1197, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1200, align 8
  %err.line.gep1201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1197, i32 0, i32 3
  store i64 602, ptr %err.line.gep1201, align 8
  %err.col.gep1202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1197, i32 0, i32 4
  store i64 68, ptr %err.col.gep1202, align 8
  %err.ctx.gep1203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1197, i32 0, i32 5
  %err.ctx0.gep1204 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1203, i32 0, i32 0
  store i64 %subtmp1169, ptr %err.ctx0.gep1204, align 8
  %err.ctx1.gep1205 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1203, i32 0, i32 1
  store i64 %a.rd.len1177, ptr %err.ctx1.gep1205, align 8
  %err.p2i1206 = ptrtoint ptr %err.alloc1197 to i64
  br label %a.rd.done1175

a.rd.done1175:                                    ; preds = %a.rd.err.oob1174, %a.rd.err.null1173, %a.rd.ok1172
  %a.rd.tag1207 = phi i1 [ true, %a.rd.ok1172 ], [ false, %a.rd.err.null1173 ], [ false, %a.rd.err.oob1174 ]
  %a.rd.pay1208 = phi i64 [ %a.rd.elem1184, %a.rd.ok1172 ], [ %err.p2i1195, %a.rd.err.null1173 ], [ %err.p2i1206, %a.rd.err.oob1174 ]
  %ram.tag1209 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1207, 0
  %ram.pay1210 = insertvalue { i1, i64 } %ram.tag1209, i64 %a.rd.pay1208, 1
  %ram.tag1211 = extractvalue { i1, i64 } %ram.pay1210, 0
  br i1 %ram.tag1211, label %choice.then1212, label %choice.else1213

choice.then1212:                                  ; preds = %a.rd.done1175
  %ram.pay1215 = extractvalue { i1, i64 } %ram.pay1210, 1
  store i64 %ram.pay1215, ptr %var._1216, align 8
  br label %choice.exit1214

choice.else1213:                                  ; preds = %a.rd.done1175
  %ram.pay1217 = extractvalue { i1, i64 } %ram.pay1210, 1
  %pay.ptr1218 = inttoptr i64 %ram.pay1217 to ptr
  store ptr %pay.ptr1218, ptr %var._1219, align 8
  br label %choice.exit1214

choice.exit1214:                                  ; preds = %choice.else1213, %choice.then1212
  %choice.res1220 = phi i64 [ %ram.pay1215, %choice.then1212 ], [ 0, %choice.else1213 ]
  %var.load1221 = load i64, ptr %var.raw, align 8
  %cmptmp1222 = icmp sgt i64 %choice.res1220, %var.load1221
  br label %and.683.exit

choice.then1223:                                  ; preds = %and.683.exit
  %var.load1226 = load i64, ptr %"var.top'", align 8
  %subtmp1227 = sub i64 %var.load1226, 1
  store i64 %subtmp1227, ptr %"var.top'", align 8
  br label %choice.exit1225

choice.else1224:                                  ; preds = %and.683.exit
  br label %loop.exit.682

choice.exit1225:                                  ; preds = %choice.then1223
  br label %loop.latch.682

a.create1231:                                     ; preds = %loop.exit.682
  %arena.cur1233 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1234 = call ptr @dva_arena_alloc(ptr %arena.cur1233, i64 24)
  %arena.cur1235 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1236 = call ptr @dva_arena_alloc(ptr %arena.cur1235, i64 128)
  %a.len.gep1237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1234, i32 0, i32 0
  store i64 0, ptr %a.len.gep1237, align 8
  %a.data.gep1238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1234, i32 0, i32 1
  store ptr %a.buf1236, ptr %a.data.gep1238, align 8
  %a.cap.gep1239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1234, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1239, align 8
  store ptr %a.create1234, ptr %var.raw_stack, align 8
  br label %a.after1232

a.after1232:                                      ; preds = %a.create1231, %loop.exit.682
  %a.load21240 = load ptr, ptr %var.raw_stack, align 8
  %var.load1241 = load i64, ptr %"var.top'", align 8
  %subtmp1242 = sub i64 %var.load1241, 1
  %a.rd.nonnull1243 = icmp ne ptr %a.load21240, null
  br i1 %a.rd.nonnull1243, label %a.rd.check1244, label %a.rd.err.null1246

a.rd.check1244:                                   ; preds = %a.after1232
  %a.rd.len1249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21240, i32 0, i32 0
  %a.rd.len1250 = load i64, ptr %a.rd.len1249, align 8
  %a.rd.ge01251 = icmp sge i64 %subtmp1242, 0
  %a.rd.lt1252 = icmp slt i64 %subtmp1242, %a.rd.len1250
  %a.rd.bounds1253 = and i1 %a.rd.ge01251, %a.rd.lt1252
  br i1 %a.rd.bounds1253, label %a.rd.ok1245, label %a.rd.err.oob1247

a.rd.ok1245:                                      ; preds = %a.rd.check1244
  %a.rd.data1254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21240, i32 0, i32 1
  %a.rd.data1255 = load ptr, ptr %a.rd.data1254, align 8
  %a.rd.elem.gep1256 = getelementptr i64, ptr %a.rd.data1255, i64 %subtmp1242
  %a.rd.elem1257 = load i64, ptr %a.rd.elem.gep1256, align 8
  br label %a.rd.done1248

a.rd.err.null1246:                                ; preds = %a.after1232
  %arena.cur1258 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1259 = call ptr @dva_arena_alloc(ptr %arena.cur1258, i64 56)
  %err.code.gep1260 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1259, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1260, align 8
  %err.msg.gep1261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1259, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1261, align 8
  %err.file.gep1262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1259, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1262, align 8
  %err.line.gep1263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1259, i32 0, i32 3
  store i64 605, ptr %err.line.gep1263, align 8
  %err.col.gep1264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1259, i32 0, i32 4
  store i64 65, ptr %err.col.gep1264, align 8
  %err.ctx.gep1265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1259, i32 0, i32 5
  %err.ctx0.gep1266 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1265, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1266, align 8
  %err.ctx1.gep1267 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1265, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1267, align 8
  %err.p2i1268 = ptrtoint ptr %err.alloc1259 to i64
  br label %a.rd.done1248

a.rd.err.oob1247:                                 ; preds = %a.rd.check1244
  %arena.cur1269 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1270 = call ptr @dva_arena_alloc(ptr %arena.cur1269, i64 56)
  %err.code.gep1271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1270, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1271, align 8
  %err.msg.gep1272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1270, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1272, align 8
  %err.file.gep1273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1270, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1273, align 8
  %err.line.gep1274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1270, i32 0, i32 3
  store i64 605, ptr %err.line.gep1274, align 8
  %err.col.gep1275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1270, i32 0, i32 4
  store i64 65, ptr %err.col.gep1275, align 8
  %err.ctx.gep1276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1270, i32 0, i32 5
  %err.ctx0.gep1277 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1276, i32 0, i32 0
  store i64 %subtmp1242, ptr %err.ctx0.gep1277, align 8
  %err.ctx1.gep1278 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1276, i32 0, i32 1
  store i64 %a.rd.len1250, ptr %err.ctx1.gep1278, align 8
  %err.p2i1279 = ptrtoint ptr %err.alloc1270 to i64
  br label %a.rd.done1248

a.rd.done1248:                                    ; preds = %a.rd.err.oob1247, %a.rd.err.null1246, %a.rd.ok1245
  %a.rd.tag1280 = phi i1 [ true, %a.rd.ok1245 ], [ false, %a.rd.err.null1246 ], [ false, %a.rd.err.oob1247 ]
  %a.rd.pay1281 = phi i64 [ %a.rd.elem1257, %a.rd.ok1245 ], [ %err.p2i1268, %a.rd.err.null1246 ], [ %err.p2i1279, %a.rd.err.oob1247 ]
  %ram.tag1282 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1280, 0
  %ram.pay1283 = insertvalue { i1, i64 } %ram.tag1282, i64 %a.rd.pay1281, 1
  %ram.tag1284 = extractvalue { i1, i64 } %ram.pay1283, 0
  br i1 %ram.tag1284, label %choice.then1285, label %choice.else1286

choice.then1285:                                  ; preds = %a.rd.done1248
  %ram.pay1288 = extractvalue { i1, i64 } %ram.pay1283, 1
  store i64 %ram.pay1288, ptr %var._1289, align 8
  br label %choice.exit1287

choice.else1286:                                  ; preds = %a.rd.done1248
  %ram.pay1290 = extractvalue { i1, i64 } %ram.pay1283, 1
  %pay.ptr1291 = inttoptr i64 %ram.pay1290 to ptr
  store ptr %pay.ptr1291, ptr %var._1292, align 8
  br label %choice.exit1287

choice.exit1287:                                  ; preds = %choice.else1286, %choice.then1285
  %choice.res1293 = phi i64 [ %ram.pay1288, %choice.then1285 ], [ 0, %choice.else1286 ]
  store i64 %choice.res1293, ptr %var.matched_raw, align 8
  %var.load1294 = load i64, ptr %var.raw, align 8
  %var.load1295 = load i64, ptr %var.matched_raw, align 8
  %cmptmp1296 = icmp sgt i64 %var.load1294, %var.load1295
  br i1 %cmptmp1296, label %choice.then1297, label %choice.else1298

choice.then1297:                                  ; preds = %choice.exit1287
  %var.load1300 = load ptr, ptr %var.canon_stack, align 8
  %a.load1301 = load ptr, ptr %var.canon_stack, align 8
  %a.null1302 = icmp eq ptr %a.load1301, null
  br i1 %a.null1302, label %a.create1303, label %a.after1304

choice.else1298:                                  ; preds = %choice.exit1287
  %var.load1828 = load ptr, ptr %var.body_stack, align 8
  %a.load1829 = load ptr, ptr %var.body_stack, align 8
  %a.null1830 = icmp eq ptr %a.load1829, null
  br i1 %a.null1830, label %a.create1831, label %a.after1832

choice.exit1299:                                  ; preds = %choice.exit1883, %choice.exit1478
  br label %choice.exit657

a.create1303:                                     ; preds = %choice.then1297
  %arena.cur1305 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1306 = call ptr @dva_arena_alloc(ptr %arena.cur1305, i64 24)
  %arena.cur1307 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1308 = call ptr @dva_arena_alloc(ptr %arena.cur1307, i64 128)
  %a.len.gep1309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1306, i32 0, i32 0
  store i64 0, ptr %a.len.gep1309, align 8
  %a.data.gep1310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1306, i32 0, i32 1
  store ptr %a.buf1308, ptr %a.data.gep1310, align 8
  %a.cap.gep1311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1306, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1311, align 8
  store ptr %a.create1306, ptr %var.canon_stack, align 8
  br label %a.after1304

a.after1304:                                      ; preds = %a.create1303, %choice.then1297
  %a.load21312 = load ptr, ptr %var.canon_stack, align 8
  %var.load1313 = load i64, ptr %"var.top'", align 8
  %subtmp1314 = sub i64 %var.load1313, 1
  %a.rd.nonnull1315 = icmp ne ptr %a.load21312, null
  br i1 %a.rd.nonnull1315, label %a.rd.check1316, label %a.rd.err.null1318

a.rd.check1316:                                   ; preds = %a.after1304
  %a.rd.len1321 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21312, i32 0, i32 0
  %a.rd.len1322 = load i64, ptr %a.rd.len1321, align 8
  %a.rd.ge01323 = icmp sge i64 %subtmp1314, 0
  %a.rd.lt1324 = icmp slt i64 %subtmp1314, %a.rd.len1322
  %a.rd.bounds1325 = and i1 %a.rd.ge01323, %a.rd.lt1324
  br i1 %a.rd.bounds1325, label %a.rd.ok1317, label %a.rd.err.oob1319

a.rd.ok1317:                                      ; preds = %a.rd.check1316
  %a.rd.data1326 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21312, i32 0, i32 1
  %a.rd.data1327 = load ptr, ptr %a.rd.data1326, align 8
  %a.rd.elem.gep1328 = getelementptr i64, ptr %a.rd.data1327, i64 %subtmp1314
  %a.rd.elem1329 = load i64, ptr %a.rd.elem.gep1328, align 8
  br label %a.rd.done1320

a.rd.err.null1318:                                ; preds = %a.after1304
  %arena.cur1330 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1331 = call ptr @dva_arena_alloc(ptr %arena.cur1330, i64 56)
  %err.code.gep1332 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1331, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1332, align 8
  %err.msg.gep1333 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1331, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1333, align 8
  %err.file.gep1334 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1331, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1334, align 8
  %err.line.gep1335 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1331, i32 0, i32 3
  store i64 609, ptr %err.line.gep1335, align 8
  %err.col.gep1336 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1331, i32 0, i32 4
  store i64 69, ptr %err.col.gep1336, align 8
  %err.ctx.gep1337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1331, i32 0, i32 5
  %err.ctx0.gep1338 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1337, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1338, align 8
  %err.ctx1.gep1339 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1337, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1339, align 8
  %err.p2i1340 = ptrtoint ptr %err.alloc1331 to i64
  br label %a.rd.done1320

a.rd.err.oob1319:                                 ; preds = %a.rd.check1316
  %arena.cur1341 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1342 = call ptr @dva_arena_alloc(ptr %arena.cur1341, i64 56)
  %err.code.gep1343 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1342, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1343, align 8
  %err.msg.gep1344 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1342, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1344, align 8
  %err.file.gep1345 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1342, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1345, align 8
  %err.line.gep1346 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1342, i32 0, i32 3
  store i64 609, ptr %err.line.gep1346, align 8
  %err.col.gep1347 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1342, i32 0, i32 4
  store i64 69, ptr %err.col.gep1347, align 8
  %err.ctx.gep1348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1342, i32 0, i32 5
  %err.ctx0.gep1349 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1348, i32 0, i32 0
  store i64 %subtmp1314, ptr %err.ctx0.gep1349, align 8
  %err.ctx1.gep1350 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1348, i32 0, i32 1
  store i64 %a.rd.len1322, ptr %err.ctx1.gep1350, align 8
  %err.p2i1351 = ptrtoint ptr %err.alloc1342 to i64
  br label %a.rd.done1320

a.rd.done1320:                                    ; preds = %a.rd.err.oob1319, %a.rd.err.null1318, %a.rd.ok1317
  %a.rd.tag1352 = phi i1 [ true, %a.rd.ok1317 ], [ false, %a.rd.err.null1318 ], [ false, %a.rd.err.oob1319 ]
  %a.rd.pay1353 = phi i64 [ %a.rd.elem1329, %a.rd.ok1317 ], [ %err.p2i1340, %a.rd.err.null1318 ], [ %err.p2i1351, %a.rd.err.oob1319 ]
  %ram.tag1354 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1352, 0
  %ram.pay1355 = insertvalue { i1, i64 } %ram.tag1354, i64 %a.rd.pay1353, 1
  %ram.tag1356 = extractvalue { i1, i64 } %ram.pay1355, 0
  br i1 %ram.tag1356, label %choice.then1357, label %choice.else1358

choice.then1357:                                  ; preds = %a.rd.done1320
  %ram.pay1360 = extractvalue { i1, i64 } %ram.pay1355, 1
  store i64 %ram.pay1360, ptr %var._1361, align 8
  br label %choice.exit1359

choice.else1358:                                  ; preds = %a.rd.done1320
  %ram.pay1362 = extractvalue { i1, i64 } %ram.pay1355, 1
  %pay.ptr1363 = inttoptr i64 %ram.pay1362 to ptr
  store ptr %pay.ptr1363, ptr %var._1364, align 8
  br label %choice.exit1359

choice.exit1359:                                  ; preds = %choice.else1358, %choice.then1357
  %choice.res1365 = phi i64 [ %ram.pay1360, %choice.then1357 ], [ 0, %choice.else1358 ]
  store i64 %choice.res1365, ptr %var.p_canon1366, align 8
  %var.load1367 = load ptr, ptr %var.body_stack, align 8
  %a.load1368 = load ptr, ptr %var.body_stack, align 8
  %a.null1369 = icmp eq ptr %a.load1368, null
  br i1 %a.null1369, label %a.create1370, label %a.after1371

a.create1370:                                     ; preds = %choice.exit1359
  %arena.cur1372 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1373 = call ptr @dva_arena_alloc(ptr %arena.cur1372, i64 24)
  %arena.cur1374 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1375 = call ptr @dva_arena_alloc(ptr %arena.cur1374, i64 128)
  %a.len.gep1376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1373, i32 0, i32 0
  store i64 0, ptr %a.len.gep1376, align 8
  %a.data.gep1377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1373, i32 0, i32 1
  store ptr %a.buf1375, ptr %a.data.gep1377, align 8
  %a.cap.gep1378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1373, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1378, align 8
  store ptr %a.create1373, ptr %var.body_stack, align 8
  br label %a.after1371

a.after1371:                                      ; preds = %a.create1370, %choice.exit1359
  %a.load21379 = load ptr, ptr %var.body_stack, align 8
  %var.load1380 = load i64, ptr %"var.top'", align 8
  %subtmp1381 = sub i64 %var.load1380, 1
  %a.rd.nonnull1382 = icmp ne ptr %a.load21379, null
  br i1 %a.rd.nonnull1382, label %a.rd.check1383, label %a.rd.err.null1385

a.rd.check1383:                                   ; preds = %a.after1371
  %a.rd.len1388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21379, i32 0, i32 0
  %a.rd.len1389 = load i64, ptr %a.rd.len1388, align 8
  %a.rd.ge01390 = icmp sge i64 %subtmp1381, 0
  %a.rd.lt1391 = icmp slt i64 %subtmp1381, %a.rd.len1389
  %a.rd.bounds1392 = and i1 %a.rd.ge01390, %a.rd.lt1391
  br i1 %a.rd.bounds1392, label %a.rd.ok1384, label %a.rd.err.oob1386

a.rd.ok1384:                                      ; preds = %a.rd.check1383
  %a.rd.data1393 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21379, i32 0, i32 1
  %a.rd.data1394 = load ptr, ptr %a.rd.data1393, align 8
  %a.rd.elem.gep1395 = getelementptr i64, ptr %a.rd.data1394, i64 %subtmp1381
  %a.rd.elem1396 = load i64, ptr %a.rd.elem.gep1395, align 8
  br label %a.rd.done1387

a.rd.err.null1385:                                ; preds = %a.after1371
  %arena.cur1397 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1398 = call ptr @dva_arena_alloc(ptr %arena.cur1397, i64 56)
  %err.code.gep1399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1398, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1399, align 8
  %err.msg.gep1400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1398, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1400, align 8
  %err.file.gep1401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1398, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1401, align 8
  %err.line.gep1402 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1398, i32 0, i32 3
  store i64 610, ptr %err.line.gep1402, align 8
  %err.col.gep1403 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1398, i32 0, i32 4
  store i64 67, ptr %err.col.gep1403, align 8
  %err.ctx.gep1404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1398, i32 0, i32 5
  %err.ctx0.gep1405 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1404, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1405, align 8
  %err.ctx1.gep1406 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1404, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1406, align 8
  %err.p2i1407 = ptrtoint ptr %err.alloc1398 to i64
  br label %a.rd.done1387

a.rd.err.oob1386:                                 ; preds = %a.rd.check1383
  %arena.cur1408 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1409 = call ptr @dva_arena_alloc(ptr %arena.cur1408, i64 56)
  %err.code.gep1410 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1409, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1410, align 8
  %err.msg.gep1411 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1409, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1411, align 8
  %err.file.gep1412 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1409, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1412, align 8
  %err.line.gep1413 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1409, i32 0, i32 3
  store i64 610, ptr %err.line.gep1413, align 8
  %err.col.gep1414 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1409, i32 0, i32 4
  store i64 67, ptr %err.col.gep1414, align 8
  %err.ctx.gep1415 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1409, i32 0, i32 5
  %err.ctx0.gep1416 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1415, i32 0, i32 0
  store i64 %subtmp1381, ptr %err.ctx0.gep1416, align 8
  %err.ctx1.gep1417 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1415, i32 0, i32 1
  store i64 %a.rd.len1389, ptr %err.ctx1.gep1417, align 8
  %err.p2i1418 = ptrtoint ptr %err.alloc1409 to i64
  br label %a.rd.done1387

a.rd.done1387:                                    ; preds = %a.rd.err.oob1386, %a.rd.err.null1385, %a.rd.ok1384
  %a.rd.tag1419 = phi i1 [ true, %a.rd.ok1384 ], [ false, %a.rd.err.null1385 ], [ false, %a.rd.err.oob1386 ]
  %a.rd.pay1420 = phi i64 [ %a.rd.elem1396, %a.rd.ok1384 ], [ %err.p2i1407, %a.rd.err.null1385 ], [ %err.p2i1418, %a.rd.err.oob1386 ]
  %ram.tag1421 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1419, 0
  %ram.pay1422 = insertvalue { i1, i64 } %ram.tag1421, i64 %a.rd.pay1420, 1
  %ram.tag1423 = extractvalue { i1, i64 } %ram.pay1422, 0
  br i1 %ram.tag1423, label %choice.then1424, label %choice.else1425

choice.then1424:                                  ; preds = %a.rd.done1387
  %ram.pay1427 = extractvalue { i1, i64 } %ram.pay1422, 1
  %pay.ptr1428 = inttoptr i64 %ram.pay1427 to ptr
  store ptr %pay.ptr1428, ptr %var._1429, align 8
  br label %choice.exit1426

choice.else1425:                                  ; preds = %a.rd.done1387
  %ram.pay1430 = extractvalue { i1, i64 } %ram.pay1422, 1
  %pay.ptr1431 = inttoptr i64 %ram.pay1430 to ptr
  store ptr %pay.ptr1431, ptr %var._1432, align 8
  br label %choice.exit1426

choice.exit1426:                                  ; preds = %choice.else1425, %choice.then1424
  %choice.res1433 = phi ptr [ %pay.ptr1428, %choice.then1424 ], [ @str.12.struct, %choice.else1425 ]
  store ptr %choice.res1433, ptr %var.p_code1434, align 8
  %var.load1435 = load ptr, ptr %var.lines, align 8
  %a.load1436 = load ptr, ptr %var.lines, align 8
  %a.null1437 = icmp eq ptr %a.load1436, null
  br i1 %a.null1437, label %a.create1438, label %a.after1439

a.create1438:                                     ; preds = %choice.exit1426
  %arena.cur1440 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1441 = call ptr @dva_arena_alloc(ptr %arena.cur1440, i64 24)
  %arena.cur1442 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1443 = call ptr @dva_arena_alloc(ptr %arena.cur1442, i64 128)
  %a.len.gep1444 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1441, i32 0, i32 0
  store i64 0, ptr %a.len.gep1444, align 8
  %a.data.gep1445 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1441, i32 0, i32 1
  store ptr %a.buf1443, ptr %a.data.gep1445, align 8
  %a.cap.gep1446 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1441, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1446, align 8
  store ptr %a.create1441, ptr %var.lines, align 8
  br label %a.after1439

a.after1439:                                      ; preds = %a.create1438, %choice.exit1426
  %a.load21447 = load ptr, ptr %var.lines, align 8
  %var.load1448 = load i64, ptr %var.idx, align 8
  %var.load1449 = load ptr, ptr %var.p_code1434, align 8
  %var.load1450 = load ptr, ptr %var.cur_code, align 8
  %var.load1451 = load i64, ptr %var.matched_raw, align 8
  %var.load1452 = load i64, ptr %var.raw, align 8
  %call.res1453 = call i64 @"formatter::compute_child_delta"(ptr %a.load21447, i64 %var.load1448, ptr %var.load1449, ptr %var.load1450, i64 %var.load1451, i64 %var.load1452)
  store i64 %call.res1453, ptr %var.delta1454, align 8
  %var.load1455 = load i64, ptr %var.p_canon1366, align 8
  %var.load1456 = load i64, ptr %var.delta1454, align 8
  %addtmp1457 = add i64 %var.load1455, %var.load1456
  store i64 %addtmp1457, ptr %var.new_canon1458, align 8
  %var.load1459 = load i64, ptr %"var.top'", align 8
  %var.load1460 = load ptr, ptr %var.raw_stack, align 8
  %a.load1461 = load ptr, ptr %var.raw_stack, align 8
  %a.null1462 = icmp eq ptr %a.load1461, null
  br i1 %a.null1462, label %a.create1463, label %a.after1464

a.create1463:                                     ; preds = %a.after1439
  %arena.cur1465 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1466 = call ptr @dva_arena_alloc(ptr %arena.cur1465, i64 24)
  %arena.cur1467 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1468 = call ptr @dva_arena_alloc(ptr %arena.cur1467, i64 128)
  %a.len.gep1469 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1466, i32 0, i32 0
  store i64 0, ptr %a.len.gep1469, align 8
  %a.data.gep1470 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1466, i32 0, i32 1
  store ptr %a.buf1468, ptr %a.data.gep1470, align 8
  %a.cap.gep1471 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1466, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1471, align 8
  store ptr %a.create1466, ptr %var.raw_stack, align 8
  br label %a.after1464

a.after1464:                                      ; preds = %a.create1463, %a.after1439
  %a.load21472 = load ptr, ptr %var.raw_stack, align 8
  %a.len.query1473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21472, i32 0, i32 0
  %a.len.query1474 = load i64, ptr %a.len.query1473, align 8
  %cmptmp1475 = icmp eq i64 %var.load1459, %a.len.query1474
  br i1 %cmptmp1475, label %choice.then1476, label %choice.else1477

choice.then1476:                                  ; preds = %a.after1464
  %var.load1479 = load i64, ptr %var.raw, align 8
  %a.load1480 = load ptr, ptr %var.raw_stack, align 8
  %a.null1481 = icmp eq ptr %a.load1480, null
  br i1 %a.null1481, label %a.create1482, label %a.after1483

choice.else1477:                                  ; preds = %a.after1464
  %var.load1564 = load ptr, ptr %var.raw_stack, align 8
  %a.load1565 = load ptr, ptr %var.raw_stack, align 8
  %a.null1566 = icmp eq ptr %a.load1565, null
  br i1 %a.null1566, label %a.create1567, label %a.after1568

choice.exit1478:                                  ; preds = %choice.exit1792, %a.store1550
  %var.load1826 = load i64, ptr %"var.top'", align 8
  %addtmp1827 = add i64 %var.load1826, 1
  store i64 %addtmp1827, ptr %"var.top'", align 8
  br label %choice.exit1299

a.create1482:                                     ; preds = %choice.then1476
  %arena.cur1484 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1485 = call ptr @dva_arena_alloc(ptr %arena.cur1484, i64 24)
  %arena.cur1486 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1487 = call ptr @dva_arena_alloc(ptr %arena.cur1486, i64 128)
  %a.len.gep1488 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1485, i32 0, i32 0
  store i64 0, ptr %a.len.gep1488, align 8
  %a.data.gep1489 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1485, i32 0, i32 1
  store ptr %a.buf1487, ptr %a.data.gep1489, align 8
  %a.cap.gep1490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1485, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1490, align 8
  store ptr %a.create1485, ptr %var.raw_stack, align 8
  br label %a.after1483

a.after1483:                                      ; preds = %a.create1482, %choice.then1476
  %a.load21491 = load ptr, ptr %var.raw_stack, align 8
  br label %a.check1492

a.check1492:                                      ; preds = %a.after1483
  %a.len1495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21491, i32 0, i32 0
  %a.len1496 = load i64, ptr %a.len1495, align 8
  %a.cap1497 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21491, i32 0, i32 2
  %a.cap1498 = load i64, ptr %a.cap1497, align 8
  %a.needs.grow1499 = icmp eq i64 %a.len1496, %a.cap1498
  br i1 %a.needs.grow1499, label %a.grow1493, label %a.store1494

a.grow1493:                                       ; preds = %a.check1492
  call void @dva_array_grow(ptr %a.load21491)
  br label %a.store1494

a.store1494:                                      ; preds = %a.grow1493, %a.check1492
  %a.cur.data1500 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21491, i32 0, i32 1
  %a.cur.data1501 = load ptr, ptr %a.cur.data1500, align 8
  %a.cur.len1502 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21491, i32 0, i32 0
  %a.cur.len1503 = load i64, ptr %a.cur.len1502, align 8
  %a.elem.gep1504 = getelementptr i64, ptr %a.cur.data1501, i64 %a.cur.len1503
  store i64 %var.load1479, ptr %a.elem.gep1504, align 8
  %a.next.len1505 = add i64 %a.cur.len1503, 1
  %b.len.gep1506 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21491, i32 0, i32 0
  store i64 %a.next.len1505, ptr %b.len.gep1506, align 8
  %var.load1507 = load i64, ptr %var.new_canon1458, align 8
  %a.load1508 = load ptr, ptr %var.canon_stack, align 8
  %a.null1509 = icmp eq ptr %a.load1508, null
  br i1 %a.null1509, label %a.create1510, label %a.after1511

a.create1510:                                     ; preds = %a.store1494
  %arena.cur1512 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1513 = call ptr @dva_arena_alloc(ptr %arena.cur1512, i64 24)
  %arena.cur1514 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1515 = call ptr @dva_arena_alloc(ptr %arena.cur1514, i64 128)
  %a.len.gep1516 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1513, i32 0, i32 0
  store i64 0, ptr %a.len.gep1516, align 8
  %a.data.gep1517 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1513, i32 0, i32 1
  store ptr %a.buf1515, ptr %a.data.gep1517, align 8
  %a.cap.gep1518 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1513, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1518, align 8
  store ptr %a.create1513, ptr %var.canon_stack, align 8
  br label %a.after1511

a.after1511:                                      ; preds = %a.create1510, %a.store1494
  %a.load21519 = load ptr, ptr %var.canon_stack, align 8
  br label %a.check1520

a.check1520:                                      ; preds = %a.after1511
  %a.len1523 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21519, i32 0, i32 0
  %a.len1524 = load i64, ptr %a.len1523, align 8
  %a.cap1525 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21519, i32 0, i32 2
  %a.cap1526 = load i64, ptr %a.cap1525, align 8
  %a.needs.grow1527 = icmp eq i64 %a.len1524, %a.cap1526
  br i1 %a.needs.grow1527, label %a.grow1521, label %a.store1522

a.grow1521:                                       ; preds = %a.check1520
  call void @dva_array_grow(ptr %a.load21519)
  br label %a.store1522

a.store1522:                                      ; preds = %a.grow1521, %a.check1520
  %a.cur.data1528 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21519, i32 0, i32 1
  %a.cur.data1529 = load ptr, ptr %a.cur.data1528, align 8
  %a.cur.len1530 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21519, i32 0, i32 0
  %a.cur.len1531 = load i64, ptr %a.cur.len1530, align 8
  %a.elem.gep1532 = getelementptr i64, ptr %a.cur.data1529, i64 %a.cur.len1531
  store i64 %var.load1507, ptr %a.elem.gep1532, align 8
  %a.next.len1533 = add i64 %a.cur.len1531, 1
  %b.len.gep1534 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21519, i32 0, i32 0
  store i64 %a.next.len1533, ptr %b.len.gep1534, align 8
  %var.load1535 = load ptr, ptr %var.cur_code, align 8
  %a.load1536 = load ptr, ptr %var.body_stack, align 8
  %a.null1537 = icmp eq ptr %a.load1536, null
  br i1 %a.null1537, label %a.create1538, label %a.after1539

a.create1538:                                     ; preds = %a.store1522
  %arena.cur1540 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1541 = call ptr @dva_arena_alloc(ptr %arena.cur1540, i64 24)
  %arena.cur1542 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1543 = call ptr @dva_arena_alloc(ptr %arena.cur1542, i64 128)
  %a.len.gep1544 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1541, i32 0, i32 0
  store i64 0, ptr %a.len.gep1544, align 8
  %a.data.gep1545 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1541, i32 0, i32 1
  store ptr %a.buf1543, ptr %a.data.gep1545, align 8
  %a.cap.gep1546 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1541, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1546, align 8
  store ptr %a.create1541, ptr %var.body_stack, align 8
  br label %a.after1539

a.after1539:                                      ; preds = %a.create1538, %a.store1522
  %a.load21547 = load ptr, ptr %var.body_stack, align 8
  br label %a.check1548

a.check1548:                                      ; preds = %a.after1539
  %a.len1551 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21547, i32 0, i32 0
  %a.len1552 = load i64, ptr %a.len1551, align 8
  %a.cap1553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21547, i32 0, i32 2
  %a.cap1554 = load i64, ptr %a.cap1553, align 8
  %a.needs.grow1555 = icmp eq i64 %a.len1552, %a.cap1554
  br i1 %a.needs.grow1555, label %a.grow1549, label %a.store1550

a.grow1549:                                       ; preds = %a.check1548
  call void @dva_array_grow(ptr %a.load21547)
  br label %a.store1550

a.store1550:                                      ; preds = %a.grow1549, %a.check1548
  %a.cur.data1556 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21547, i32 0, i32 1
  %a.cur.data1557 = load ptr, ptr %a.cur.data1556, align 8
  %a.cur.len1558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21547, i32 0, i32 0
  %a.cur.len1559 = load i64, ptr %a.cur.len1558, align 8
  %a.elem.gep1560 = getelementptr i64, ptr %a.cur.data1557, i64 %a.cur.len1559
  %slot.p2i1561 = ptrtoint ptr %var.load1535 to i64
  store i64 %slot.p2i1561, ptr %a.elem.gep1560, align 8
  %a.next.len1562 = add i64 %a.cur.len1559, 1
  %b.len.gep1563 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21547, i32 0, i32 0
  store i64 %a.next.len1562, ptr %b.len.gep1563, align 8
  br label %choice.exit1478

a.create1567:                                     ; preds = %choice.else1477
  %arena.cur1569 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1570 = call ptr @dva_arena_alloc(ptr %arena.cur1569, i64 24)
  %arena.cur1571 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1572 = call ptr @dva_arena_alloc(ptr %arena.cur1571, i64 128)
  %a.len.gep1573 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1570, i32 0, i32 0
  store i64 0, ptr %a.len.gep1573, align 8
  %a.data.gep1574 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1570, i32 0, i32 1
  store ptr %a.buf1572, ptr %a.data.gep1574, align 8
  %a.cap.gep1575 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1570, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1575, align 8
  store ptr %a.create1570, ptr %var.raw_stack, align 8
  br label %a.after1568

a.after1568:                                      ; preds = %a.create1567, %choice.else1477
  %a.load21576 = load ptr, ptr %var.raw_stack, align 8
  %var.load1577 = load i64, ptr %"var.top'", align 8
  %var.load1578 = load i64, ptr %var.raw, align 8
  %a.wr.nonnull1579 = icmp ne ptr %a.load21576, null
  br i1 %a.wr.nonnull1579, label %a.wr.check1580, label %a.wr.err.null1582

a.wr.check1580:                                   ; preds = %a.after1568
  %a.wr.len1585 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21576, i32 0, i32 0
  %a.wr.len1586 = load i64, ptr %a.wr.len1585, align 8
  %a.wr.ge01587 = icmp sge i64 %var.load1577, 0
  %a.wr.lt1588 = icmp slt i64 %var.load1577, %a.wr.len1586
  %a.wr.bounds1589 = and i1 %a.wr.ge01587, %a.wr.lt1588
  br i1 %a.wr.bounds1589, label %a.wr.ok1581, label %a.wr.err.oob1583

a.wr.ok1581:                                      ; preds = %a.wr.check1580
  %a.wr.data1590 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21576, i32 0, i32 1
  %a.wr.data1591 = load ptr, ptr %a.wr.data1590, align 8
  %a.elem.gep1592 = getelementptr i64, ptr %a.wr.data1591, i64 %var.load1577
  store i64 %var.load1578, ptr %a.elem.gep1592, align 8
  br label %a.wr.done1584

a.wr.err.null1582:                                ; preds = %a.after1568
  %arena.cur1593 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1594 = call ptr @dva_arena_alloc(ptr %arena.cur1593, i64 56)
  %err.code.gep1595 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1594, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1595, align 8
  %err.msg.gep1596 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1594, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1596, align 8
  %err.file.gep1597 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1594, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1597, align 8
  %err.line.gep1598 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1594, i32 0, i32 3
  store i64 0, ptr %err.line.gep1598, align 8
  %err.col.gep1599 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1594, i32 0, i32 4
  store i64 0, ptr %err.col.gep1599, align 8
  %err.ctx.gep1600 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1594, i32 0, i32 5
  %err.ctx0.gep1601 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1600, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1601, align 8
  %err.ctx1.gep1602 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1600, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1602, align 8
  br label %a.wr.done1584

a.wr.err.oob1583:                                 ; preds = %a.wr.check1580
  %arena.cur1603 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1604 = call ptr @dva_arena_alloc(ptr %arena.cur1603, i64 56)
  %err.code.gep1605 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1604, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1605, align 8
  %err.msg.gep1606 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1604, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1606, align 8
  %err.file.gep1607 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1604, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1607, align 8
  %err.line.gep1608 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1604, i32 0, i32 3
  store i64 0, ptr %err.line.gep1608, align 8
  %err.col.gep1609 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1604, i32 0, i32 4
  store i64 0, ptr %err.col.gep1609, align 8
  %err.ctx.gep1610 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1604, i32 0, i32 5
  %err.ctx0.gep1611 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1610, i32 0, i32 0
  store i64 %var.load1577, ptr %err.ctx0.gep1611, align 8
  %err.ctx1.gep1612 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1610, i32 0, i32 1
  store i64 %a.wr.len1586, ptr %err.ctx1.gep1612, align 8
  br label %a.wr.done1584

a.wr.done1584:                                    ; preds = %a.wr.err.oob1583, %a.wr.err.null1582, %a.wr.ok1581
  %a.wr.niche1613 = phi ptr [ null, %a.wr.ok1581 ], [ %err.alloc1594, %a.wr.err.null1582 ], [ %err.alloc1604, %a.wr.err.oob1583 ]
  %niche.eq.null1614 = icmp eq ptr %a.wr.niche1613, null
  br i1 %niche.eq.null1614, label %choice.then1615, label %choice.else1616

choice.then1615:                                  ; preds = %a.wr.done1584
  br label %choice.exit1617

choice.else1616:                                  ; preds = %a.wr.done1584
  store ptr %a.wr.niche1613, ptr %var._1618, align 8
  store ptr %a.wr.niche1613, ptr %var._1619, align 8
  store ptr %a.wr.niche1613, ptr %var._1620, align 8
  %err.code.gep1621 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1613, i32 0, i32 0
  %err.code1622 = load i64, ptr %err.code.gep1621, align 8
  %err.msg.gep1623 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1613, i32 0, i32 1
  %err.msg.struct1624 = load ptr, ptr %err.msg.gep1623, align 8
  %err.file.gep1625 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1613, i32 0, i32 2
  %err.file.struct1626 = load ptr, ptr %err.file.gep1625, align 8
  %err.line.gep1627 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1613, i32 0, i32 3
  %err.line1628 = load i64, ptr %err.line.gep1627, align 8
  %err.col.gep1629 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1613, i32 0, i32 4
  %err.col1630 = load i64, ptr %err.col.gep1629, align 8
  %err.msg.len1631 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1624, i32 0, i32 0
  %err.msg.len1632 = load i64, ptr %err.msg.len1631, align 8
  %err.msg.len1633 = and i64 %err.msg.len1632, 281474976710655
  %err.msg.len321634 = trunc i64 %err.msg.len1633 to i32
  %err.msg.data1635 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1624, i32 0, i32 1
  %err.msg.data1636 = load ptr, ptr %err.msg.data1635, align 8
  %err.file.len1637 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1626, i32 0, i32 0
  %err.file.len1638 = load i64, ptr %err.file.len1637, align 8
  %err.file.len1639 = and i64 %err.file.len1638, 281474976710655
  %err.file.len321640 = trunc i64 %err.file.len1639 to i32
  %err.file.data1641 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1626, i32 0, i32 1
  %err.file.data1642 = load ptr, ptr %err.file.data1641, align 8
  %err.thread.rec1643 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1644 = icmp ne ptr %err.thread.rec1643, null
  br i1 %err.is.thread1644, label %err.thread1645, label %err.normal1646

choice.exit1617:                                  ; preds = %err.abort1650, %choice.then1615
  %var.load1651 = load ptr, ptr %var.canon_stack, align 8
  %a.load1652 = load ptr, ptr %var.canon_stack, align 8
  %a.null1653 = icmp eq ptr %a.load1652, null
  br i1 %a.null1653, label %a.create1654, label %a.after1655

err.thread1645:                                   ; preds = %choice.else1616
  %err.haserr.gep1647 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1643, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1647, align 8
  %err.err.gep1648 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1643, i32 0, i32 7
  store ptr %a.wr.niche1613, ptr %err.err.gep1648, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1646:                                   ; preds = %choice.else1616
  %err.panic.printf1649 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1622, i32 %err.msg.len321634, ptr %err.msg.data1636, i32 %err.file.len321640, ptr %err.file.data1642, i64 %err.line1628, i64 %err.col1630)
  call void @exit(i32 1)
  unreachable

err.abort1650:                                    ; No predecessors!
  br label %choice.exit1617

a.create1654:                                     ; preds = %choice.exit1617
  %arena.cur1656 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1657 = call ptr @dva_arena_alloc(ptr %arena.cur1656, i64 24)
  %arena.cur1658 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1659 = call ptr @dva_arena_alloc(ptr %arena.cur1658, i64 128)
  %a.len.gep1660 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1657, i32 0, i32 0
  store i64 0, ptr %a.len.gep1660, align 8
  %a.data.gep1661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1657, i32 0, i32 1
  store ptr %a.buf1659, ptr %a.data.gep1661, align 8
  %a.cap.gep1662 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1657, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1662, align 8
  store ptr %a.create1657, ptr %var.canon_stack, align 8
  br label %a.after1655

a.after1655:                                      ; preds = %a.create1654, %choice.exit1617
  %a.load21663 = load ptr, ptr %var.canon_stack, align 8
  %var.load1664 = load i64, ptr %"var.top'", align 8
  %var.load1665 = load i64, ptr %var.new_canon1458, align 8
  %a.wr.nonnull1666 = icmp ne ptr %a.load21663, null
  br i1 %a.wr.nonnull1666, label %a.wr.check1667, label %a.wr.err.null1669

a.wr.check1667:                                   ; preds = %a.after1655
  %a.wr.len1672 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21663, i32 0, i32 0
  %a.wr.len1673 = load i64, ptr %a.wr.len1672, align 8
  %a.wr.ge01674 = icmp sge i64 %var.load1664, 0
  %a.wr.lt1675 = icmp slt i64 %var.load1664, %a.wr.len1673
  %a.wr.bounds1676 = and i1 %a.wr.ge01674, %a.wr.lt1675
  br i1 %a.wr.bounds1676, label %a.wr.ok1668, label %a.wr.err.oob1670

a.wr.ok1668:                                      ; preds = %a.wr.check1667
  %a.wr.data1677 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21663, i32 0, i32 1
  %a.wr.data1678 = load ptr, ptr %a.wr.data1677, align 8
  %a.elem.gep1679 = getelementptr i64, ptr %a.wr.data1678, i64 %var.load1664
  store i64 %var.load1665, ptr %a.elem.gep1679, align 8
  br label %a.wr.done1671

a.wr.err.null1669:                                ; preds = %a.after1655
  %arena.cur1680 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1681 = call ptr @dva_arena_alloc(ptr %arena.cur1680, i64 56)
  %err.code.gep1682 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1681, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1682, align 8
  %err.msg.gep1683 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1681, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1683, align 8
  %err.file.gep1684 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1681, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1684, align 8
  %err.line.gep1685 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1681, i32 0, i32 3
  store i64 0, ptr %err.line.gep1685, align 8
  %err.col.gep1686 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1681, i32 0, i32 4
  store i64 0, ptr %err.col.gep1686, align 8
  %err.ctx.gep1687 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1681, i32 0, i32 5
  %err.ctx0.gep1688 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1687, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1688, align 8
  %err.ctx1.gep1689 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1687, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1689, align 8
  br label %a.wr.done1671

a.wr.err.oob1670:                                 ; preds = %a.wr.check1667
  %arena.cur1690 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1691 = call ptr @dva_arena_alloc(ptr %arena.cur1690, i64 56)
  %err.code.gep1692 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1691, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1692, align 8
  %err.msg.gep1693 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1691, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1693, align 8
  %err.file.gep1694 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1691, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1694, align 8
  %err.line.gep1695 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1691, i32 0, i32 3
  store i64 0, ptr %err.line.gep1695, align 8
  %err.col.gep1696 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1691, i32 0, i32 4
  store i64 0, ptr %err.col.gep1696, align 8
  %err.ctx.gep1697 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1691, i32 0, i32 5
  %err.ctx0.gep1698 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1697, i32 0, i32 0
  store i64 %var.load1664, ptr %err.ctx0.gep1698, align 8
  %err.ctx1.gep1699 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1697, i32 0, i32 1
  store i64 %a.wr.len1673, ptr %err.ctx1.gep1699, align 8
  br label %a.wr.done1671

a.wr.done1671:                                    ; preds = %a.wr.err.oob1670, %a.wr.err.null1669, %a.wr.ok1668
  %a.wr.niche1700 = phi ptr [ null, %a.wr.ok1668 ], [ %err.alloc1681, %a.wr.err.null1669 ], [ %err.alloc1691, %a.wr.err.oob1670 ]
  %niche.eq.null1701 = icmp eq ptr %a.wr.niche1700, null
  br i1 %niche.eq.null1701, label %choice.then1702, label %choice.else1703

choice.then1702:                                  ; preds = %a.wr.done1671
  br label %choice.exit1704

choice.else1703:                                  ; preds = %a.wr.done1671
  store ptr %a.wr.niche1700, ptr %var._1705, align 8
  store ptr %a.wr.niche1700, ptr %var._1706, align 8
  store ptr %a.wr.niche1700, ptr %var._1707, align 8
  %err.code.gep1708 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1700, i32 0, i32 0
  %err.code1709 = load i64, ptr %err.code.gep1708, align 8
  %err.msg.gep1710 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1700, i32 0, i32 1
  %err.msg.struct1711 = load ptr, ptr %err.msg.gep1710, align 8
  %err.file.gep1712 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1700, i32 0, i32 2
  %err.file.struct1713 = load ptr, ptr %err.file.gep1712, align 8
  %err.line.gep1714 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1700, i32 0, i32 3
  %err.line1715 = load i64, ptr %err.line.gep1714, align 8
  %err.col.gep1716 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1700, i32 0, i32 4
  %err.col1717 = load i64, ptr %err.col.gep1716, align 8
  %err.msg.len1718 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1711, i32 0, i32 0
  %err.msg.len1719 = load i64, ptr %err.msg.len1718, align 8
  %err.msg.len1720 = and i64 %err.msg.len1719, 281474976710655
  %err.msg.len321721 = trunc i64 %err.msg.len1720 to i32
  %err.msg.data1722 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1711, i32 0, i32 1
  %err.msg.data1723 = load ptr, ptr %err.msg.data1722, align 8
  %err.file.len1724 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1713, i32 0, i32 0
  %err.file.len1725 = load i64, ptr %err.file.len1724, align 8
  %err.file.len1726 = and i64 %err.file.len1725, 281474976710655
  %err.file.len321727 = trunc i64 %err.file.len1726 to i32
  %err.file.data1728 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1713, i32 0, i32 1
  %err.file.data1729 = load ptr, ptr %err.file.data1728, align 8
  %err.thread.rec1730 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1731 = icmp ne ptr %err.thread.rec1730, null
  br i1 %err.is.thread1731, label %err.thread1732, label %err.normal1733

choice.exit1704:                                  ; preds = %err.abort1737, %choice.then1702
  %var.load1738 = load ptr, ptr %var.body_stack, align 8
  %a.load1739 = load ptr, ptr %var.body_stack, align 8
  %a.null1740 = icmp eq ptr %a.load1739, null
  br i1 %a.null1740, label %a.create1741, label %a.after1742

err.thread1732:                                   ; preds = %choice.else1703
  %err.haserr.gep1734 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1730, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1734, align 8
  %err.err.gep1735 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1730, i32 0, i32 7
  store ptr %a.wr.niche1700, ptr %err.err.gep1735, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1733:                                   ; preds = %choice.else1703
  %err.panic.printf1736 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1709, i32 %err.msg.len321721, ptr %err.msg.data1723, i32 %err.file.len321727, ptr %err.file.data1729, i64 %err.line1715, i64 %err.col1717)
  call void @exit(i32 1)
  unreachable

err.abort1737:                                    ; No predecessors!
  br label %choice.exit1704

a.create1741:                                     ; preds = %choice.exit1704
  %arena.cur1743 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1744 = call ptr @dva_arena_alloc(ptr %arena.cur1743, i64 24)
  %arena.cur1745 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1746 = call ptr @dva_arena_alloc(ptr %arena.cur1745, i64 128)
  %a.len.gep1747 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1744, i32 0, i32 0
  store i64 0, ptr %a.len.gep1747, align 8
  %a.data.gep1748 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1744, i32 0, i32 1
  store ptr %a.buf1746, ptr %a.data.gep1748, align 8
  %a.cap.gep1749 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1744, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1749, align 8
  store ptr %a.create1744, ptr %var.body_stack, align 8
  br label %a.after1742

a.after1742:                                      ; preds = %a.create1741, %choice.exit1704
  %a.load21750 = load ptr, ptr %var.body_stack, align 8
  %var.load1751 = load i64, ptr %"var.top'", align 8
  %var.load1752 = load ptr, ptr %var.cur_code, align 8
  %slot.p2i1753 = ptrtoint ptr %var.load1752 to i64
  %a.wr.nonnull1754 = icmp ne ptr %a.load21750, null
  br i1 %a.wr.nonnull1754, label %a.wr.check1755, label %a.wr.err.null1757

a.wr.check1755:                                   ; preds = %a.after1742
  %a.wr.len1760 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21750, i32 0, i32 0
  %a.wr.len1761 = load i64, ptr %a.wr.len1760, align 8
  %a.wr.ge01762 = icmp sge i64 %var.load1751, 0
  %a.wr.lt1763 = icmp slt i64 %var.load1751, %a.wr.len1761
  %a.wr.bounds1764 = and i1 %a.wr.ge01762, %a.wr.lt1763
  br i1 %a.wr.bounds1764, label %a.wr.ok1756, label %a.wr.err.oob1758

a.wr.ok1756:                                      ; preds = %a.wr.check1755
  %a.wr.data1765 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21750, i32 0, i32 1
  %a.wr.data1766 = load ptr, ptr %a.wr.data1765, align 8
  %a.elem.gep1767 = getelementptr i64, ptr %a.wr.data1766, i64 %var.load1751
  store i64 %slot.p2i1753, ptr %a.elem.gep1767, align 8
  br label %a.wr.done1759

a.wr.err.null1757:                                ; preds = %a.after1742
  %arena.cur1768 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1769 = call ptr @dva_arena_alloc(ptr %arena.cur1768, i64 56)
  %err.code.gep1770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1769, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1770, align 8
  %err.msg.gep1771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1769, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1771, align 8
  %err.file.gep1772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1769, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1772, align 8
  %err.line.gep1773 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1769, i32 0, i32 3
  store i64 0, ptr %err.line.gep1773, align 8
  %err.col.gep1774 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1769, i32 0, i32 4
  store i64 0, ptr %err.col.gep1774, align 8
  %err.ctx.gep1775 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1769, i32 0, i32 5
  %err.ctx0.gep1776 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1775, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1776, align 8
  %err.ctx1.gep1777 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1775, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1777, align 8
  br label %a.wr.done1759

a.wr.err.oob1758:                                 ; preds = %a.wr.check1755
  %arena.cur1778 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1779 = call ptr @dva_arena_alloc(ptr %arena.cur1778, i64 56)
  %err.code.gep1780 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1780, align 8
  %err.msg.gep1781 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1781, align 8
  %err.file.gep1782 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1782, align 8
  %err.line.gep1783 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 3
  store i64 0, ptr %err.line.gep1783, align 8
  %err.col.gep1784 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 4
  store i64 0, ptr %err.col.gep1784, align 8
  %err.ctx.gep1785 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1779, i32 0, i32 5
  %err.ctx0.gep1786 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1785, i32 0, i32 0
  store i64 %var.load1751, ptr %err.ctx0.gep1786, align 8
  %err.ctx1.gep1787 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1785, i32 0, i32 1
  store i64 %a.wr.len1761, ptr %err.ctx1.gep1787, align 8
  br label %a.wr.done1759

a.wr.done1759:                                    ; preds = %a.wr.err.oob1758, %a.wr.err.null1757, %a.wr.ok1756
  %a.wr.niche1788 = phi ptr [ null, %a.wr.ok1756 ], [ %err.alloc1769, %a.wr.err.null1757 ], [ %err.alloc1779, %a.wr.err.oob1758 ]
  %niche.eq.null1789 = icmp eq ptr %a.wr.niche1788, null
  br i1 %niche.eq.null1789, label %choice.then1790, label %choice.else1791

choice.then1790:                                  ; preds = %a.wr.done1759
  br label %choice.exit1792

choice.else1791:                                  ; preds = %a.wr.done1759
  store ptr %a.wr.niche1788, ptr %var._1793, align 8
  store ptr %a.wr.niche1788, ptr %var._1794, align 8
  store ptr %a.wr.niche1788, ptr %var._1795, align 8
  %err.code.gep1796 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1788, i32 0, i32 0
  %err.code1797 = load i64, ptr %err.code.gep1796, align 8
  %err.msg.gep1798 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1788, i32 0, i32 1
  %err.msg.struct1799 = load ptr, ptr %err.msg.gep1798, align 8
  %err.file.gep1800 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1788, i32 0, i32 2
  %err.file.struct1801 = load ptr, ptr %err.file.gep1800, align 8
  %err.line.gep1802 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1788, i32 0, i32 3
  %err.line1803 = load i64, ptr %err.line.gep1802, align 8
  %err.col.gep1804 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1788, i32 0, i32 4
  %err.col1805 = load i64, ptr %err.col.gep1804, align 8
  %err.msg.len1806 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1799, i32 0, i32 0
  %err.msg.len1807 = load i64, ptr %err.msg.len1806, align 8
  %err.msg.len1808 = and i64 %err.msg.len1807, 281474976710655
  %err.msg.len321809 = trunc i64 %err.msg.len1808 to i32
  %err.msg.data1810 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1799, i32 0, i32 1
  %err.msg.data1811 = load ptr, ptr %err.msg.data1810, align 8
  %err.file.len1812 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1801, i32 0, i32 0
  %err.file.len1813 = load i64, ptr %err.file.len1812, align 8
  %err.file.len1814 = and i64 %err.file.len1813, 281474976710655
  %err.file.len321815 = trunc i64 %err.file.len1814 to i32
  %err.file.data1816 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1801, i32 0, i32 1
  %err.file.data1817 = load ptr, ptr %err.file.data1816, align 8
  %err.thread.rec1818 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1819 = icmp ne ptr %err.thread.rec1818, null
  br i1 %err.is.thread1819, label %err.thread1820, label %err.normal1821

choice.exit1792:                                  ; preds = %err.abort1825, %choice.then1790
  br label %choice.exit1478

err.thread1820:                                   ; preds = %choice.else1791
  %err.haserr.gep1822 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1818, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1822, align 8
  %err.err.gep1823 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1818, i32 0, i32 7
  store ptr %a.wr.niche1788, ptr %err.err.gep1823, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1821:                                   ; preds = %choice.else1791
  %err.panic.printf1824 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1797, i32 %err.msg.len321809, ptr %err.msg.data1811, i32 %err.file.len321815, ptr %err.file.data1817, i64 %err.line1803, i64 %err.col1805)
  call void @exit(i32 1)
  unreachable

err.abort1825:                                    ; No predecessors!
  br label %choice.exit1792

a.create1831:                                     ; preds = %choice.else1298
  %arena.cur1833 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1834 = call ptr @dva_arena_alloc(ptr %arena.cur1833, i64 24)
  %arena.cur1835 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1836 = call ptr @dva_arena_alloc(ptr %arena.cur1835, i64 128)
  %a.len.gep1837 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1834, i32 0, i32 0
  store i64 0, ptr %a.len.gep1837, align 8
  %a.data.gep1838 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1834, i32 0, i32 1
  store ptr %a.buf1836, ptr %a.data.gep1838, align 8
  %a.cap.gep1839 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1834, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1839, align 8
  store ptr %a.create1834, ptr %var.body_stack, align 8
  br label %a.after1832

a.after1832:                                      ; preds = %a.create1831, %choice.else1298
  %a.load21840 = load ptr, ptr %var.body_stack, align 8
  %var.load1841 = load i64, ptr %"var.top'", align 8
  %subtmp1842 = sub i64 %var.load1841, 1
  %var.load1843 = load ptr, ptr %var.cur_code, align 8
  %slot.p2i1844 = ptrtoint ptr %var.load1843 to i64
  %a.wr.nonnull1845 = icmp ne ptr %a.load21840, null
  br i1 %a.wr.nonnull1845, label %a.wr.check1846, label %a.wr.err.null1848

a.wr.check1846:                                   ; preds = %a.after1832
  %a.wr.len1851 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21840, i32 0, i32 0
  %a.wr.len1852 = load i64, ptr %a.wr.len1851, align 8
  %a.wr.ge01853 = icmp sge i64 %subtmp1842, 0
  %a.wr.lt1854 = icmp slt i64 %subtmp1842, %a.wr.len1852
  %a.wr.bounds1855 = and i1 %a.wr.ge01853, %a.wr.lt1854
  br i1 %a.wr.bounds1855, label %a.wr.ok1847, label %a.wr.err.oob1849

a.wr.ok1847:                                      ; preds = %a.wr.check1846
  %a.wr.data1856 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21840, i32 0, i32 1
  %a.wr.data1857 = load ptr, ptr %a.wr.data1856, align 8
  %a.elem.gep1858 = getelementptr i64, ptr %a.wr.data1857, i64 %subtmp1842
  store i64 %slot.p2i1844, ptr %a.elem.gep1858, align 8
  br label %a.wr.done1850

a.wr.err.null1848:                                ; preds = %a.after1832
  %arena.cur1859 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1860 = call ptr @dva_arena_alloc(ptr %arena.cur1859, i64 56)
  %err.code.gep1861 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1860, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1861, align 8
  %err.msg.gep1862 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1860, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1862, align 8
  %err.file.gep1863 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1860, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1863, align 8
  %err.line.gep1864 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1860, i32 0, i32 3
  store i64 0, ptr %err.line.gep1864, align 8
  %err.col.gep1865 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1860, i32 0, i32 4
  store i64 0, ptr %err.col.gep1865, align 8
  %err.ctx.gep1866 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1860, i32 0, i32 5
  %err.ctx0.gep1867 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1866, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1867, align 8
  %err.ctx1.gep1868 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1866, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1868, align 8
  br label %a.wr.done1850

a.wr.err.oob1849:                                 ; preds = %a.wr.check1846
  %arena.cur1869 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1870 = call ptr @dva_arena_alloc(ptr %arena.cur1869, i64 56)
  %err.code.gep1871 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1870, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1871, align 8
  %err.msg.gep1872 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1870, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1872, align 8
  %err.file.gep1873 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1870, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1873, align 8
  %err.line.gep1874 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1870, i32 0, i32 3
  store i64 0, ptr %err.line.gep1874, align 8
  %err.col.gep1875 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1870, i32 0, i32 4
  store i64 0, ptr %err.col.gep1875, align 8
  %err.ctx.gep1876 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1870, i32 0, i32 5
  %err.ctx0.gep1877 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1876, i32 0, i32 0
  store i64 %subtmp1842, ptr %err.ctx0.gep1877, align 8
  %err.ctx1.gep1878 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1876, i32 0, i32 1
  store i64 %a.wr.len1852, ptr %err.ctx1.gep1878, align 8
  br label %a.wr.done1850

a.wr.done1850:                                    ; preds = %a.wr.err.oob1849, %a.wr.err.null1848, %a.wr.ok1847
  %a.wr.niche1879 = phi ptr [ null, %a.wr.ok1847 ], [ %err.alloc1860, %a.wr.err.null1848 ], [ %err.alloc1870, %a.wr.err.oob1849 ]
  %niche.eq.null1880 = icmp eq ptr %a.wr.niche1879, null
  br i1 %niche.eq.null1880, label %choice.then1881, label %choice.else1882

choice.then1881:                                  ; preds = %a.wr.done1850
  br label %choice.exit1883

choice.else1882:                                  ; preds = %a.wr.done1850
  store ptr %a.wr.niche1879, ptr %var._1884, align 8
  store ptr %a.wr.niche1879, ptr %var._1885, align 8
  store ptr %a.wr.niche1879, ptr %var._1886, align 8
  %err.code.gep1887 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1879, i32 0, i32 0
  %err.code1888 = load i64, ptr %err.code.gep1887, align 8
  %err.msg.gep1889 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1879, i32 0, i32 1
  %err.msg.struct1890 = load ptr, ptr %err.msg.gep1889, align 8
  %err.file.gep1891 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1879, i32 0, i32 2
  %err.file.struct1892 = load ptr, ptr %err.file.gep1891, align 8
  %err.line.gep1893 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1879, i32 0, i32 3
  %err.line1894 = load i64, ptr %err.line.gep1893, align 8
  %err.col.gep1895 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1879, i32 0, i32 4
  %err.col1896 = load i64, ptr %err.col.gep1895, align 8
  %err.msg.len1897 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1890, i32 0, i32 0
  %err.msg.len1898 = load i64, ptr %err.msg.len1897, align 8
  %err.msg.len1899 = and i64 %err.msg.len1898, 281474976710655
  %err.msg.len321900 = trunc i64 %err.msg.len1899 to i32
  %err.msg.data1901 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1890, i32 0, i32 1
  %err.msg.data1902 = load ptr, ptr %err.msg.data1901, align 8
  %err.file.len1903 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1892, i32 0, i32 0
  %err.file.len1904 = load i64, ptr %err.file.len1903, align 8
  %err.file.len1905 = and i64 %err.file.len1904, 281474976710655
  %err.file.len321906 = trunc i64 %err.file.len1905 to i32
  %err.file.data1907 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1892, i32 0, i32 1
  %err.file.data1908 = load ptr, ptr %err.file.data1907, align 8
  %err.thread.rec1909 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1910 = icmp ne ptr %err.thread.rec1909, null
  br i1 %err.is.thread1910, label %err.thread1911, label %err.normal1912

choice.exit1883:                                  ; preds = %err.abort1916, %choice.then1881
  br label %choice.exit1299

err.thread1911:                                   ; preds = %choice.else1882
  %err.haserr.gep1913 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1909, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1913, align 8
  %err.err.gep1914 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1909, i32 0, i32 7
  store ptr %a.wr.niche1879, ptr %err.err.gep1914, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1912:                                   ; preds = %choice.else1882
  %err.panic.printf1915 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1888, i32 %err.msg.len321900, ptr %err.msg.data1902, i32 %err.file.len321906, ptr %err.file.data1908, i64 %err.line1894, i64 %err.col1896)
  call void @exit(i32 1)
  unreachable

err.abort1916:                                    ; No predecessors!
  br label %choice.exit1883

a.create1920:                                     ; preds = %choice.exit657
  %arena.cur1922 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1923 = call ptr @dva_arena_alloc(ptr %arena.cur1922, i64 24)
  %arena.cur1924 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1925 = call ptr @dva_arena_alloc(ptr %arena.cur1924, i64 128)
  %a.len.gep1926 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1923, i32 0, i32 0
  store i64 0, ptr %a.len.gep1926, align 8
  %a.data.gep1927 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1923, i32 0, i32 1
  store ptr %a.buf1925, ptr %a.data.gep1927, align 8
  %a.cap.gep1928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1923, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1928, align 8
  store ptr %a.create1923, ptr %var.canon_stack, align 8
  br label %a.after1921

a.after1921:                                      ; preds = %a.create1920, %choice.exit657
  %a.load21929 = load ptr, ptr %var.canon_stack, align 8
  %var.load1930 = load i64, ptr %"var.top'", align 8
  %subtmp1931 = sub i64 %var.load1930, 1
  %a.rd.nonnull1932 = icmp ne ptr %a.load21929, null
  br i1 %a.rd.nonnull1932, label %a.rd.check1933, label %a.rd.err.null1935

a.rd.check1933:                                   ; preds = %a.after1921
  %a.rd.len1938 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21929, i32 0, i32 0
  %a.rd.len1939 = load i64, ptr %a.rd.len1938, align 8
  %a.rd.ge01940 = icmp sge i64 %subtmp1931, 0
  %a.rd.lt1941 = icmp slt i64 %subtmp1931, %a.rd.len1939
  %a.rd.bounds1942 = and i1 %a.rd.ge01940, %a.rd.lt1941
  br i1 %a.rd.bounds1942, label %a.rd.ok1934, label %a.rd.err.oob1936

a.rd.ok1934:                                      ; preds = %a.rd.check1933
  %a.rd.data1943 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21929, i32 0, i32 1
  %a.rd.data1944 = load ptr, ptr %a.rd.data1943, align 8
  %a.rd.elem.gep1945 = getelementptr i64, ptr %a.rd.data1944, i64 %subtmp1931
  %a.rd.elem1946 = load i64, ptr %a.rd.elem.gep1945, align 8
  br label %a.rd.done1937

a.rd.err.null1935:                                ; preds = %a.after1921
  %arena.cur1947 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1948 = call ptr @dva_arena_alloc(ptr %arena.cur1947, i64 56)
  %err.code.gep1949 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1948, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1949, align 8
  %err.msg.gep1950 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1948, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep1950, align 8
  %err.file.gep1951 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1948, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1951, align 8
  %err.line.gep1952 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1948, i32 0, i32 3
  store i64 625, ptr %err.line.gep1952, align 8
  %err.col.gep1953 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1948, i32 0, i32 4
  store i64 62, ptr %err.col.gep1953, align 8
  %err.ctx.gep1954 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1948, i32 0, i32 5
  %err.ctx0.gep1955 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1954, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1955, align 8
  %err.ctx1.gep1956 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1954, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1956, align 8
  %err.p2i1957 = ptrtoint ptr %err.alloc1948 to i64
  br label %a.rd.done1937

a.rd.err.oob1936:                                 ; preds = %a.rd.check1933
  %arena.cur1958 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc1959 = call ptr @dva_arena_alloc(ptr %arena.cur1958, i64 56)
  %err.code.gep1960 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1959, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1960, align 8
  %err.msg.gep1961 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1959, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep1961, align 8
  %err.file.gep1962 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1959, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep1962, align 8
  %err.line.gep1963 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1959, i32 0, i32 3
  store i64 625, ptr %err.line.gep1963, align 8
  %err.col.gep1964 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1959, i32 0, i32 4
  store i64 62, ptr %err.col.gep1964, align 8
  %err.ctx.gep1965 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1959, i32 0, i32 5
  %err.ctx0.gep1966 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1965, i32 0, i32 0
  store i64 %subtmp1931, ptr %err.ctx0.gep1966, align 8
  %err.ctx1.gep1967 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1965, i32 0, i32 1
  store i64 %a.rd.len1939, ptr %err.ctx1.gep1967, align 8
  %err.p2i1968 = ptrtoint ptr %err.alloc1959 to i64
  br label %a.rd.done1937

a.rd.done1937:                                    ; preds = %a.rd.err.oob1936, %a.rd.err.null1935, %a.rd.ok1934
  %a.rd.tag1969 = phi i1 [ true, %a.rd.ok1934 ], [ false, %a.rd.err.null1935 ], [ false, %a.rd.err.oob1936 ]
  %a.rd.pay1970 = phi i64 [ %a.rd.elem1946, %a.rd.ok1934 ], [ %err.p2i1957, %a.rd.err.null1935 ], [ %err.p2i1968, %a.rd.err.oob1936 ]
  %ram.tag1971 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1969, 0
  %ram.pay1972 = insertvalue { i1, i64 } %ram.tag1971, i64 %a.rd.pay1970, 1
  %ram.tag1973 = extractvalue { i1, i64 } %ram.pay1972, 0
  br i1 %ram.tag1973, label %choice.then1974, label %choice.else1975

choice.then1974:                                  ; preds = %a.rd.done1937
  %ram.pay1977 = extractvalue { i1, i64 } %ram.pay1972, 1
  store i64 %ram.pay1977, ptr %var._1978, align 8
  br label %choice.exit1976

choice.else1975:                                  ; preds = %a.rd.done1937
  %ram.pay1979 = extractvalue { i1, i64 } %ram.pay1972, 1
  %pay.ptr1980 = inttoptr i64 %ram.pay1979 to ptr
  store ptr %pay.ptr1980, ptr %var._1981, align 8
  br label %choice.exit1976

choice.exit1976:                                  ; preds = %choice.else1975, %choice.then1974
  %choice.res1982 = phi i64 [ %ram.pay1977, %choice.then1974 ], [ 0, %choice.else1975 ]
  store i64 %choice.res1982, ptr %var.canon_indent, align 8
  %var.load1983 = load i64, ptr %var.canon_indent, align 8
  store i64 %var.load1983, ptr %"var.cur_canon_indent'", align 8
  %b.load1984 = load ptr, ptr %var.out, align 8
  %var.load1985 = load i64, ptr %var.canon_indent, align 8
  %call.res1986 = call { i64, ptr } @"formatter::make_spaces"(i64 %var.load1985)
  %arena.cur1987 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1988 = call ptr @dva_arena_alloc(ptr %arena.cur1987, i64 16)
  store { i64, ptr } %call.res1986, ptr %ret.ub.alloc1988, align 8
  %app.str.len1989 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1988, i32 0, i32 0
  %app.str.len1990 = load i64, ptr %app.str.len1989, align 8
  %app.str.len1991 = and i64 %app.str.len1990, 281474976710655
  %app.str.data1992 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1988, i32 0, i32 1
  %app.str.data1993 = load ptr, ptr %app.str.data1992, align 8
  %b.app.cur.len1994 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1984, i32 0, i32 0
  %b.app.cur.len1995 = load i64, ptr %b.app.cur.len1994, align 8
  %b.app.new.len1996 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len1995, i64 %app.str.len1991)
  %sum1997 = extractvalue { i64, i1 } %b.app.new.len1996, 0
  %ovf1998 = extractvalue { i64, i1 } %b.app.new.len1996, 1
  br i1 %ovf1998, label %str_overflow_abort2000, label %b.app.new.len1999

b.app.new.len1999:                                ; preds = %abort.dead2001, %choice.exit1976
  %b.cap2002 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1984, i32 0, i32 2
  %b.cap2003 = load i64, ptr %b.cap2002, align 8
  %b.need.grow2004 = icmp slt i64 %b.cap2003, %sum1997
  br i1 %b.need.grow2004, label %b.grow22005, label %b.nogrow22006

str_overflow_abort2000:                           ; preds = %choice.exit1976
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2001:                                   ; No predecessors!
  br label %b.app.new.len1999

b.grow22005:                                      ; preds = %b.app.new.len1999
  %b.cap22008 = mul i64 %b.cap2003, 2
  %b.cap.small2009 = icmp slt i64 %b.cap22008, 16
  %b.cap.grow2010 = select i1 %b.cap.small2009, i64 16, i64 %b.cap22008
  %b.cap.need2011 = icmp slt i64 %b.cap.grow2010, %sum1997
  %b.new.cap2012 = select i1 %b.cap.need2011, i64 %sum1997, i64 %b.cap.grow2010
  %b.cur.len22013 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1984, i32 0, i32 0
  %b.cur.len22014 = load i64, ptr %b.cur.len22013, align 8
  %b.cur.data22015 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1984, i32 0, i32 1
  %b.cur.data22016 = load ptr, ptr %b.cur.data22015, align 8
  %b.new.buf.len22017 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap2012, i64 1)
  %sum2018 = extractvalue { i64, i1 } %b.new.buf.len22017, 0
  %ovf2019 = extractvalue { i64, i1 } %b.new.buf.len22017, 1
  br i1 %ovf2019, label %str_overflow_abort2021, label %b.new.buf.len22020

b.nogrow22006:                                    ; preds = %b.app.new.len1999
  br label %b.grow_done2007

b.grow_done2007:                                  ; preds = %b.nogrow22006, %b.new.buf.len22020
  %b.app.data2028 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1984, i32 0, i32 1
  %b.app.data2029 = load ptr, ptr %b.app.data2028, align 8
  %b.app.dst2030 = getelementptr i8, ptr %b.app.data2029, i64 %b.app.cur.len1995
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst2030, ptr align 1 %app.str.data1993, i64 %app.str.len1991, i1 false)
  %b.app.nul2031 = getelementptr i8, ptr %b.app.data2029, i64 %sum1997
  store i8 0, ptr %b.app.nul2031, align 1
  %b.len.gep2032 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1984, i32 0, i32 0
  store i64 %sum1997, ptr %b.len.gep2032, align 8
  %b.load2033 = load ptr, ptr %var.out, align 8
  %var.load2034 = load ptr, ptr %var.body, align 8
  %call.res2035 = call { i64, ptr } @"formatter::format_code_body"(ptr %var.load2034)
  %arena.cur2036 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc2037 = call ptr @dva_arena_alloc(ptr %arena.cur2036, i64 16)
  store { i64, ptr } %call.res2035, ptr %ret.ub.alloc2037, align 8
  %app.str.len2038 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2037, i32 0, i32 0
  %app.str.len2039 = load i64, ptr %app.str.len2038, align 8
  %app.str.len2040 = and i64 %app.str.len2039, 281474976710655
  %app.str.data2041 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc2037, i32 0, i32 1
  %app.str.data2042 = load ptr, ptr %app.str.data2041, align 8
  %b.app.cur.len2043 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2033, i32 0, i32 0
  %b.app.cur.len2044 = load i64, ptr %b.app.cur.len2043, align 8
  %b.app.new.len2045 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len2044, i64 %app.str.len2040)
  %sum2046 = extractvalue { i64, i1 } %b.app.new.len2045, 0
  %ovf2047 = extractvalue { i64, i1 } %b.app.new.len2045, 1
  br i1 %ovf2047, label %str_overflow_abort2049, label %b.app.new.len2048

b.new.buf.len22020:                               ; preds = %abort.dead2022, %b.grow22005
  %arena.cur2023 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf22024 = call ptr @dva_arena_alloc(ptr %arena.cur2023, i64 %sum2018)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf22024, ptr align 1 %b.cur.data22016, i64 %b.cur.len22014, i1 false)
  %b.grow2.nul2025 = getelementptr i8, ptr %b.new.buf22024, i64 %b.cur.len22014
  store i8 0, ptr %b.grow2.nul2025, align 1
  %b.new.data2.gep2026 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1984, i32 0, i32 1
  store ptr %b.new.buf22024, ptr %b.new.data2.gep2026, align 8
  %b.new.cap2.gep2027 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1984, i32 0, i32 2
  store i64 %b.new.cap2012, ptr %b.new.cap2.gep2027, align 8
  br label %b.grow_done2007

str_overflow_abort2021:                           ; preds = %b.grow22005
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2022:                                   ; No predecessors!
  br label %b.new.buf.len22020

b.app.new.len2048:                                ; preds = %abort.dead2050, %b.grow_done2007
  %b.cap2051 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2033, i32 0, i32 2
  %b.cap2052 = load i64, ptr %b.cap2051, align 8
  %b.need.grow2053 = icmp slt i64 %b.cap2052, %sum2046
  br i1 %b.need.grow2053, label %b.grow22054, label %b.nogrow22055

str_overflow_abort2049:                           ; preds = %b.grow_done2007
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2050:                                   ; No predecessors!
  br label %b.app.new.len2048

b.grow22054:                                      ; preds = %b.app.new.len2048
  %b.cap22057 = mul i64 %b.cap2052, 2
  %b.cap.small2058 = icmp slt i64 %b.cap22057, 16
  %b.cap.grow2059 = select i1 %b.cap.small2058, i64 16, i64 %b.cap22057
  %b.cap.need2060 = icmp slt i64 %b.cap.grow2059, %sum2046
  %b.new.cap2061 = select i1 %b.cap.need2060, i64 %sum2046, i64 %b.cap.grow2059
  %b.cur.len22062 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2033, i32 0, i32 0
  %b.cur.len22063 = load i64, ptr %b.cur.len22062, align 8
  %b.cur.data22064 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2033, i32 0, i32 1
  %b.cur.data22065 = load ptr, ptr %b.cur.data22064, align 8
  %b.new.buf.len22066 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap2061, i64 1)
  %sum2067 = extractvalue { i64, i1 } %b.new.buf.len22066, 0
  %ovf2068 = extractvalue { i64, i1 } %b.new.buf.len22066, 1
  br i1 %ovf2068, label %str_overflow_abort2070, label %b.new.buf.len22069

b.nogrow22055:                                    ; preds = %b.app.new.len2048
  br label %b.grow_done2056

b.grow_done2056:                                  ; preds = %b.nogrow22055, %b.new.buf.len22069
  %b.app.data2077 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2033, i32 0, i32 1
  %b.app.data2078 = load ptr, ptr %b.app.data2077, align 8
  %b.app.dst2079 = getelementptr i8, ptr %b.app.data2078, i64 %b.app.cur.len2044
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst2079, ptr align 1 %app.str.data2042, i64 %app.str.len2040, i1 false)
  %b.app.nul2080 = getelementptr i8, ptr %b.app.data2078, i64 %sum2046
  store i8 0, ptr %b.app.nul2080, align 1
  %b.len.gep2081 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2033, i32 0, i32 0
  store i64 %sum2046, ptr %b.len.gep2081, align 8
  %b.load2082 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len2083 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2082, i32 0, i32 0
  %b.rn.cur.len2084 = load i64, ptr %b.rn.cur.len2083, align 8
  %b.rn.new.len2085 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len2084, i64 1)
  %sum2086 = extractvalue { i64, i1 } %b.rn.new.len2085, 0
  %ovf2087 = extractvalue { i64, i1 } %b.rn.new.len2085, 1
  br i1 %ovf2087, label %str_overflow_abort2089, label %b.rn.new.len2088

b.new.buf.len22069:                               ; preds = %abort.dead2071, %b.grow22054
  %arena.cur2072 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf22073 = call ptr @dva_arena_alloc(ptr %arena.cur2072, i64 %sum2067)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf22073, ptr align 1 %b.cur.data22065, i64 %b.cur.len22063, i1 false)
  %b.grow2.nul2074 = getelementptr i8, ptr %b.new.buf22073, i64 %b.cur.len22063
  store i8 0, ptr %b.grow2.nul2074, align 1
  %b.new.data2.gep2075 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2033, i32 0, i32 1
  store ptr %b.new.buf22073, ptr %b.new.data2.gep2075, align 8
  %b.new.cap2.gep2076 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2033, i32 0, i32 2
  store i64 %b.new.cap2061, ptr %b.new.cap2.gep2076, align 8
  br label %b.grow_done2056

str_overflow_abort2070:                           ; preds = %b.grow22054
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2071:                                   ; No predecessors!
  br label %b.new.buf.len22069

b.rn.new.len2088:                                 ; preds = %abort.dead2090, %b.grow_done2056
  %b.cap2091 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2082, i32 0, i32 2
  %b.cap2092 = load i64, ptr %b.cap2091, align 8
  %b.need.grow2093 = icmp slt i64 %b.cap2092, %sum2086
  br i1 %b.need.grow2093, label %b.grow22094, label %b.nogrow22095

str_overflow_abort2089:                           ; preds = %b.grow_done2056
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2090:                                   ; No predecessors!
  br label %b.rn.new.len2088

b.grow22094:                                      ; preds = %b.rn.new.len2088
  %b.cap22097 = mul i64 %b.cap2092, 2
  %b.cap.small2098 = icmp slt i64 %b.cap22097, 16
  %b.cap.grow2099 = select i1 %b.cap.small2098, i64 16, i64 %b.cap22097
  %b.cap.need2100 = icmp slt i64 %b.cap.grow2099, %sum2086
  %b.new.cap2101 = select i1 %b.cap.need2100, i64 %sum2086, i64 %b.cap.grow2099
  %b.cur.len22102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2082, i32 0, i32 0
  %b.cur.len22103 = load i64, ptr %b.cur.len22102, align 8
  %b.cur.data22104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2082, i32 0, i32 1
  %b.cur.data22105 = load ptr, ptr %b.cur.data22104, align 8
  %b.new.buf.len22106 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap2101, i64 1)
  %sum2107 = extractvalue { i64, i1 } %b.new.buf.len22106, 0
  %ovf2108 = extractvalue { i64, i1 } %b.new.buf.len22106, 1
  br i1 %ovf2108, label %str_overflow_abort2110, label %b.new.buf.len22109

b.nogrow22095:                                    ; preds = %b.rn.new.len2088
  br label %b.grow_done2096

b.grow_done2096:                                  ; preds = %b.nogrow22095, %b.new.buf.len22109
  %b.rn.data2117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2082, i32 0, i32 1
  %b.rn.data2118 = load ptr, ptr %b.rn.data2117, align 8
  %b.rn.dst2119 = getelementptr i8, ptr %b.rn.data2118, i64 %b.rn.cur.len2084
  br i1 true, label %br.b1.684, label %br.c2.684

b.new.buf.len22109:                               ; preds = %abort.dead2111, %b.grow22094
  %arena.cur2112 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf22113 = call ptr @dva_arena_alloc(ptr %arena.cur2112, i64 %sum2107)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf22113, ptr align 1 %b.cur.data22105, i64 %b.cur.len22103, i1 false)
  %b.grow2.nul2114 = getelementptr i8, ptr %b.new.buf22113, i64 %b.cur.len22103
  store i8 0, ptr %b.grow2.nul2114, align 1
  %b.new.data2.gep2115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2082, i32 0, i32 1
  store ptr %b.new.buf22113, ptr %b.new.data2.gep2115, align 8
  %b.new.cap2.gep2116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2082, i32 0, i32 2
  store i64 %b.new.cap2101, ptr %b.new.cap2.gep2116, align 8
  br label %b.grow_done2096

str_overflow_abort2110:                           ; preds = %b.grow22094
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead2111:                                   ; No predecessors!
  br label %b.new.buf.len22109

br.b1.684:                                        ; preds = %b.grow_done2096
  store i8 10, ptr %b.rn.dst2119, align 1
  br label %br.done.684

br.c2.684:                                        ; preds = %b.grow_done2096
  br i1 true, label %br.b2.684, label %br.c3.684

br.b2.684:                                        ; preds = %br.c2.684
  store i8 -64, ptr %b.rn.dst2119, align 1
  %br.dst12120 = getelementptr i8, ptr %b.rn.dst2119, i64 1
  store i8 -118, ptr %br.dst12120, align 1
  br label %br.done.684

br.c3.684:                                        ; preds = %br.c2.684
  br i1 true, label %br.b3.684, label %br.b4.684

br.b3.684:                                        ; preds = %br.c3.684
  store i8 -32, ptr %b.rn.dst2119, align 1
  %br.dst1.32121 = getelementptr i8, ptr %b.rn.dst2119, i64 1
  store i8 -128, ptr %br.dst1.32121, align 1
  %br.dst2.32122 = getelementptr i8, ptr %b.rn.dst2119, i64 2
  store i8 -118, ptr %br.dst2.32122, align 1
  br label %br.done.684

br.b4.684:                                        ; preds = %br.c3.684
  store i8 -16, ptr %b.rn.dst2119, align 1
  %br.dst1.42123 = getelementptr i8, ptr %b.rn.dst2119, i64 1
  store i8 -128, ptr %br.dst1.42123, align 1
  %br.dst2.42124 = getelementptr i8, ptr %b.rn.dst2119, i64 2
  store i8 -128, ptr %br.dst2.42124, align 1
  %br.dst3.42125 = getelementptr i8, ptr %b.rn.dst2119, i64 3
  store i8 -118, ptr %br.dst3.42125, align 1
  br label %br.done.684

br.done.684:                                      ; preds = %br.b4.684, %br.b3.684, %br.b2.684, %br.b1.684
  %br.nul2126 = getelementptr i8, ptr %b.rn.data2118, i64 %sum2086
  store i8 0, ptr %br.nul2126, align 1
  %b.len.gep2127 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2082, i32 0, i32 0
  store i64 %sum2086, ptr %b.len.gep2127, align 8
  br label %choice.exit232

loop.header.685:                                  ; preds = %loop.latch.685, %loop.exit.677
  %counter.load2136 = load i64, ptr %loop.idx.685, align 8
  br label %loop.body.685

loop.body.685:                                    ; preds = %loop.header.685
  %loop.rel.i2137 = sub i64 %counter.load2136, 0
  store i64 1, ptr %loop.step.685, align 8
  store i64 %counter.load2136, ptr %var._2138, align 8
  store i64 %loop.rel.i2137, ptr %var._i2139, align 8
  %var.load2140 = load i64, ptr %"var.end'", align 8
  %cmptmp2141 = icmp sgt i64 %var.load2140, 1
  br i1 %cmptmp2141, label %and.686.then, label %and.686.else

loop.exit.nat.685:                                ; No predecessors!
  br label %loop.exit.685

loop.latch.685:                                   ; preds = %choice.exit2168
  %step.val2171 = load i64, ptr %loop.step.685, align 8
  %loop.next2172 = add i64 %counter.load2136, %step.val2171
  store i64 %loop.next2172, ptr %loop.idx.685, align 8
  br label %loop.header.685

loop.exit.685:                                    ; preds = %choice.else2167, %loop.exit.nat.685
  %var.load2173 = load ptr, ptr %var.res, align 8
  %s.read.len2174 = getelementptr inbounds { i64, ptr }, ptr %var.load2173, i32 0, i32 0
  %s.read.len2175 = load i64, ptr %s.read.len2174, align 8
  %s.read.len2176 = and i64 %s.read.len2175, 281474976710655
  %s.read.data2177 = getelementptr inbounds { i64, ptr }, ptr %var.load2173, i32 0, i32 1
  %s.read.data2178 = load ptr, ptr %s.read.data2177, align 8
  %var.load2179 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len2176, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len2176
  %final.start = select i1 %start.gt.len, i64 %s.read.len2176, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load2179, 0
  %rel.end = add i64 %s.read.len2176, %var.load2179
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load2179
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len2176
  %final.end = select i1 %end.gt.len, i64 %s.read.len2176, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data2178, i64 %final.start
  %str.build.len.gep2180 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep2180, align 8
  %str.build.data.gep2181 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep2181, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

and.686.then:                                     ; preds = %loop.body.685
  %var.load2142 = load ptr, ptr %var.res, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2142, i32 0, i32 0
  %s.read.len2143 = load i64, ptr %s.read.len, align 8
  %s.read.len2144 = and i64 %s.read.len2143, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2142, i32 0, i32 1
  %s.read.data2145 = load ptr, ptr %s.read.data, align 8
  %var.load2146 = load i64, ptr %"var.end'", align 8
  %subtmp2147 = sub i64 %var.load2146, 1
  %idx.oob = icmp uge i64 %subtmp2147, %s.read.len2144
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.686.else:                                     ; preds = %loop.body.685
  br label %and.686.exit

and.686.exit:                                     ; preds = %and.686.else, %idx_ok
  %and.686.phi = phi i1 [ %cmptmp2149, %idx_ok ], [ %cmptmp2141, %and.686.else ]
  br i1 %and.686.phi, label %and.687.then, label %and.687.else

idx_ok:                                           ; preds = %abort.dead2148, %and.686.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data2145, i64 %subtmp2147
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp2149 = icmp eq i64 %s.byte.val, 10
  br label %and.686.exit

idx_oob:                                          ; preds = %and.686.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead2148:                                   ; No predecessors!
  br label %idx_ok

and.687.then:                                     ; preds = %and.686.exit
  %var.load2150 = load ptr, ptr %var.res, align 8
  %s.read.len2151 = getelementptr inbounds { i64, ptr }, ptr %var.load2150, i32 0, i32 0
  %s.read.len2152 = load i64, ptr %s.read.len2151, align 8
  %s.read.len2153 = and i64 %s.read.len2152, 281474976710655
  %s.read.data2154 = getelementptr inbounds { i64, ptr }, ptr %var.load2150, i32 0, i32 1
  %s.read.data2155 = load ptr, ptr %s.read.data2154, align 8
  %var.load2156 = load i64, ptr %"var.end'", align 8
  %subtmp2157 = sub i64 %var.load2156, 2
  %idx.oob2158 = icmp uge i64 %subtmp2157, %s.read.len2153
  br i1 %idx.oob2158, label %idx_oob2160, label %idx_ok2159

and.687.else:                                     ; preds = %and.686.exit
  br label %and.687.exit

and.687.exit:                                     ; preds = %and.687.else, %idx_ok2159
  %and.687.phi = phi i1 [ %cmptmp2165, %idx_ok2159 ], [ %and.686.phi, %and.687.else ]
  br i1 %and.687.phi, label %choice.then2166, label %choice.else2167

idx_ok2159:                                       ; preds = %abort.dead2161, %and.687.then
  %s.byte.gep2162 = getelementptr i8, ptr %s.read.data2155, i64 %subtmp2157
  %s.byte2163 = load i8, ptr %s.byte.gep2162, align 1
  %s.byte.val2164 = zext i8 %s.byte2163 to i64
  %cmptmp2165 = icmp eq i64 %s.byte.val2164, 10
  br label %and.687.exit

idx_oob2160:                                      ; preds = %and.687.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead2161:                                   ; No predecessors!
  br label %idx_ok2159

choice.then2166:                                  ; preds = %and.687.exit
  %var.load2169 = load i64, ptr %"var.end'", align 8
  %subtmp2170 = sub i64 %var.load2169, 1
  store i64 %subtmp2170, ptr %"var.end'", align 8
  br label %choice.exit2168

choice.else2167:                                  ; preds = %and.687.exit
  br label %loop.exit.685

choice.exit2168:                                  ; preds = %choice.then2166
  br label %loop.latch.685
}

define { i64, ptr } @"formatter::format_safe_fallback"(ptr %0) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %var._i72 = alloca i64, align 8
  %var._71 = alloca i64, align 8
  %loop.step.690 = alloca i64, align 8
  %loop.idx.690 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %builder.freeze = alloca { i64, ptr }, align 8
  %var._i = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.688 = alloca i64, align 8
  %loop.idx.688 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.out, align 8
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
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.buf.len1
  %a.load2 = load ptr, ptr %var.lines, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len5 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.688, align 8
  br label %loop.header.688

loop.header.688:                                  ; preds = %loop.latch.688, %a.after
  %counter.load = load i64, ptr %loop.idx.688, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.688, label %loop.exit.nat.688

loop.body.688:                                    ; preds = %loop.header.688
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.688, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ln, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load7 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load7, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %app.str.len8 = load i64, ptr %app.str.len, align 8
  %app.str.len9 = and i64 %app.str.len8, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %app.str.data10 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len11 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len11, i64 %app.str.len9)
  %sum12 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.app.new.len14

loop.exit.nat.688:                                ; preds = %loop.header.688
  br label %loop.exit.688

loop.latch.688:                                   ; preds = %br.done.689
  %step.val = load i64, ptr %loop.step.688, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.688, align 8
  br label %loop.header.688

loop.exit.688:                                    ; preds = %loop.exit.nat.688
  %var.load63 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 0
  %b.freeze.len64 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 1
  %b.freeze.data65 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len64, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data65, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.res, align 8
  %var.load66 = load ptr, ptr %var.res, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 0
  %str.len.query67 = load i64, ptr %str.len.query, align 8
  %str.len.query68 = and i64 %str.len.query67, 281474976710655
  store i64 %str.len.query68, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.690, align 8
  br label %loop.header.690

b.app.new.len14:                                  ; preds = %abort.dead16, %loop.body.688
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap17, %sum12
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort15:                             ; preds = %loop.body.688
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %b.app.new.len14

b.grow2:                                          ; preds = %b.app.new.len14
  %b.cap2 = mul i64 %b.cap17, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum12
  %b.new.cap = select i1 %b.cap.need, i64 %sum12, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len218 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data219 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.nogrow2:                                        ; preds = %b.app.new.len14
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len222
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data26 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data26, i64 %b.app.cur.len11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data10, i64 %app.str.len9, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data26, i64 %sum12
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum12, ptr %b.len.gep27, align 8
  %b.load28 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.rn.cur.len29 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len29, i64 1)
  %sum30 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf31 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf31, label %str_overflow_abort33, label %b.rn.new.len32

b.new.buf.len222:                                 ; preds = %abort.dead24, %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data219, i64 %b.cur.len218, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len218
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %b.new.buf.len222

b.rn.new.len32:                                   ; preds = %abort.dead34, %b.grow_done
  %b.cap35 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  %b.cap36 = load i64, ptr %b.cap35, align 8
  %b.need.grow37 = icmp slt i64 %b.cap36, %sum30
  br i1 %b.need.grow37, label %b.grow238, label %b.nogrow239

str_overflow_abort33:                             ; preds = %b.grow_done
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %b.rn.new.len32

b.grow238:                                        ; preds = %b.rn.new.len32
  %b.cap241 = mul i64 %b.cap36, 2
  %b.cap.small42 = icmp slt i64 %b.cap241, 16
  %b.cap.grow43 = select i1 %b.cap.small42, i64 16, i64 %b.cap241
  %b.cap.need44 = icmp slt i64 %b.cap.grow43, %sum30
  %b.new.cap45 = select i1 %b.cap.need44, i64 %sum30, i64 %b.cap.grow43
  %b.cur.len246 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.cur.len247 = load i64, ptr %b.cur.len246, align 8
  %b.cur.data248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.cur.data249 = load ptr, ptr %b.cur.data248, align 8
  %b.new.buf.len250 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap45, i64 1)
  %sum51 = extractvalue { i64, i1 } %b.new.buf.len250, 0
  %ovf52 = extractvalue { i64, i1 } %b.new.buf.len250, 1
  br i1 %ovf52, label %str_overflow_abort54, label %b.new.buf.len253

b.nogrow239:                                      ; preds = %b.rn.new.len32
  br label %b.grow_done40

b.grow_done40:                                    ; preds = %b.nogrow239, %b.new.buf.len253
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.rn.data61 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data61, i64 %b.rn.cur.len29
  br i1 true, label %br.b1.689, label %br.c2.689

b.new.buf.len253:                                 ; preds = %abort.dead55, %b.grow238
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf257 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 %sum51)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf257, ptr align 1 %b.cur.data249, i64 %b.cur.len247, i1 false)
  %b.grow2.nul58 = getelementptr i8, ptr %b.new.buf257, i64 %b.cur.len247
  store i8 0, ptr %b.grow2.nul58, align 1
  %b.new.data2.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  store ptr %b.new.buf257, ptr %b.new.data2.gep59, align 8
  %b.new.cap2.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  store i64 %b.new.cap45, ptr %b.new.cap2.gep60, align 8
  br label %b.grow_done40

str_overflow_abort54:                             ; preds = %b.grow238
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead55:                                     ; No predecessors!
  br label %b.new.buf.len253

br.b1.689:                                        ; preds = %b.grow_done40
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.689

br.c2.689:                                        ; preds = %b.grow_done40
  br i1 true, label %br.b2.689, label %br.c3.689

br.b2.689:                                        ; preds = %br.c2.689
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.689

br.c3.689:                                        ; preds = %br.c2.689
  br i1 true, label %br.b3.689, label %br.b4.689

br.b3.689:                                        ; preds = %br.c3.689
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.689

br.b4.689:                                        ; preds = %br.c3.689
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.689

br.done.689:                                      ; preds = %br.b4.689, %br.b3.689, %br.b2.689, %br.b1.689
  %br.nul = getelementptr i8, ptr %b.rn.data61, i64 %sum30
  store i8 0, ptr %br.nul, align 1
  %b.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  store i64 %sum30, ptr %b.len.gep62, align 8
  br label %loop.latch.688

loop.header.690:                                  ; preds = %loop.latch.690, %loop.exit.688
  %counter.load69 = load i64, ptr %loop.idx.690, align 8
  br label %loop.body.690

loop.body.690:                                    ; preds = %loop.header.690
  %loop.rel.i70 = sub i64 %counter.load69, 0
  store i64 1, ptr %loop.step.690, align 8
  store i64 %counter.load69, ptr %var._71, align 8
  store i64 %loop.rel.i70, ptr %var._i72, align 8
  %var.load73 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sgt i64 %var.load73, 1
  br i1 %cmptmp, label %and.691.then, label %and.691.else

loop.exit.nat.690:                                ; No predecessors!
  br label %loop.exit.690

loop.latch.690:                                   ; preds = %choice.exit
  %step.val99 = load i64, ptr %loop.step.690, align 8
  %loop.next100 = add i64 %counter.load69, %step.val99
  store i64 %loop.next100, ptr %loop.idx.690, align 8
  br label %loop.header.690

loop.exit.690:                                    ; preds = %choice.else, %loop.exit.nat.690
  %var.load101 = load ptr, ptr %var.res, align 8
  %s.read.len102 = getelementptr inbounds { i64, ptr }, ptr %var.load101, i32 0, i32 0
  %s.read.len103 = load i64, ptr %s.read.len102, align 8
  %s.read.len104 = and i64 %s.read.len103, 281474976710655
  %s.read.data105 = getelementptr inbounds { i64, ptr }, ptr %var.load101, i32 0, i32 1
  %s.read.data106 = load ptr, ptr %s.read.data105, align 8
  %var.load107 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len104, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len104
  %final.start = select i1 %start.gt.len, i64 %s.read.len104, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load107, 0
  %rel.end = add i64 %s.read.len104, %var.load107
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load107
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len104
  %final.end = select i1 %end.gt.len, i64 %s.read.len104, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data106, i64 %final.start
  %str.build.len.gep108 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep108, align 8
  %str.build.data.gep109 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep109, align 8
  %ret.pack = load { i64, ptr }, ptr %str.view, align 8
  ret { i64, ptr } %ret.pack

and.691.then:                                     ; preds = %loop.body.690
  %var.load74 = load ptr, ptr %var.res, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 0
  %s.read.len75 = load i64, ptr %s.read.len, align 8
  %s.read.len76 = and i64 %s.read.len75, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 1
  %s.read.data77 = load ptr, ptr %s.read.data, align 8
  %var.load78 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load78, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len76
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.691.else:                                     ; preds = %loop.body.690
  br label %and.691.exit

and.691.exit:                                     ; preds = %and.691.else, %idx_ok
  %and.691.phi = phi i1 [ %cmptmp80, %idx_ok ], [ %cmptmp, %and.691.else ]
  br i1 %and.691.phi, label %and.692.then, label %and.692.else

idx_ok:                                           ; preds = %abort.dead79, %and.691.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data77, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp80 = icmp eq i64 %s.byte.val, 10
  br label %and.691.exit

idx_oob:                                          ; preds = %and.691.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead79:                                     ; No predecessors!
  br label %idx_ok

and.692.then:                                     ; preds = %and.691.exit
  %var.load81 = load ptr, ptr %var.res, align 8
  %s.read.len82 = getelementptr inbounds { i64, ptr }, ptr %var.load81, i32 0, i32 0
  %s.read.len83 = load i64, ptr %s.read.len82, align 8
  %s.read.len84 = and i64 %s.read.len83, 281474976710655
  %s.read.data85 = getelementptr inbounds { i64, ptr }, ptr %var.load81, i32 0, i32 1
  %s.read.data86 = load ptr, ptr %s.read.data85, align 8
  %var.load87 = load i64, ptr %"var.end'", align 8
  %subtmp88 = sub i64 %var.load87, 2
  %idx.oob89 = icmp uge i64 %subtmp88, %s.read.len84
  br i1 %idx.oob89, label %idx_oob91, label %idx_ok90

and.692.else:                                     ; preds = %and.691.exit
  br label %and.692.exit

and.692.exit:                                     ; preds = %and.692.else, %idx_ok90
  %and.692.phi = phi i1 [ %cmptmp96, %idx_ok90 ], [ %and.691.phi, %and.692.else ]
  br i1 %and.692.phi, label %choice.then, label %choice.else

idx_ok90:                                         ; preds = %abort.dead92, %and.692.then
  %s.byte.gep93 = getelementptr i8, ptr %s.read.data86, i64 %subtmp88
  %s.byte94 = load i8, ptr %s.byte.gep93, align 1
  %s.byte.val95 = zext i8 %s.byte94 to i64
  %cmptmp96 = icmp eq i64 %s.byte.val95, 10
  br label %and.692.exit

idx_oob91:                                        ; preds = %and.692.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead92:                                     ; No predecessors!
  br label %idx_ok90

choice.then:                                      ; preds = %and.692.exit
  %var.load97 = load i64, ptr %"var.end'", align 8
  %subtmp98 = sub i64 %var.load97, 1
  store i64 %subtmp98, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.692.exit
  br label %loop.exit.690

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.690
}

define { i1, i64 } @"formatter::parse_ast_signature"(ptr %0, ptr %1) #3 {
entry:
  %cat.ibuf444 = alloca [24 x i8], align 1
  %cat.ibuf438 = alloca [24 x i8], align 1
  %cat.ibuf432 = alloca [24 x i8], align 1
  %var.fn415 = alloca ptr, align 8
  %var.d343 = alloca ptr, align 8
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
  %var.load223 = load ptr, ptr %var.diags, align 8
  %a.load224 = load ptr, ptr %var.diags, align 8
  %a.null225 = icmp eq ptr %a.load224, null
  br i1 %a.null225, label %a.create226, label %a.after227

choice.exit:                                      ; preds = %choice.exit241, %choice.exit15
  %choice.res579 = phi { i1, i64 } [ %choice.res222, %choice.exit15 ], [ %choice.res578, %choice.exit241 ]
  ret { i1, i64 } %choice.res579

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
  %var.load217 = load ptr, ptr %var.prog, align 8
  %call.res218 = call { i64, ptr } @"show::show_expr"(ptr %var.load217)
  %arena.cur219 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 16)
  store { i64, ptr } %call.res218, ptr %ret.ub.alloc, align 8
  %p.to.i64220 = ptrtoint ptr %ret.ub.alloc to i64
  %ram.pay221 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64220, 1
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %concat.tot.len190
  %choice.res222 = phi { i1, i64 } [ %ram.pay216, %concat.tot.len190 ], [ %ram.pay221, %choice.else14 ]
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
  store i64 669, ptr %err.line.gep, align 8
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
  store i64 669, ptr %err.line.gep37, align 8
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
  br i1 %unwrap.is_pos, label %unwrap.pos.694, label %unwrap.abort.694

unwrap.pos.694:                                   ; preds = %a.rd.done
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

unwrap.abort.694:                                 ; preds = %a.rd.done
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

str_ok:                                           ; preds = %tag.slow_check, %unwrap.abort.694
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

tag.slow_check:                                   ; preds = %unwrap.abort.694
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

str_ok69:                                         ; preds = %tag.slow_check74, %unwrap.pos.694
  %eq.rhs.len = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len75 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len67, %eq.rhs.len75
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check74:                                 ; preds = %unwrap.pos.694
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
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
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
  %str.tag.gen212 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift213 = shl i64 %str.tag.gen212, 48
  %str.tagged.len214 = or i64 %sum182, %str.tag.shift213
  store i64 %str.tagged.len214, ptr %str.build.len.gep211, align 8
  %str.build.data.gep215 = getelementptr inbounds { i64, ptr }, ptr %concat.str210, i32 0, i32 1
  store ptr %concat.buf194, ptr %str.build.data.gep215, align 8
  %p.to.i64 = ptrtoint ptr %concat.str210 to i64
  %ram.pay216 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit15

str_overflow_abort191:                            ; preds = %cat.sum.len184
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead192:                                    ; No predecessors!
  br label %concat.tot.len190

a.create226:                                      ; preds = %choice.else
  %arena.cur228 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create229 = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 24)
  %arena.cur230 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf231 = call ptr @dva_arena_alloc(ptr %arena.cur230, i64 128)
  %a.len.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create229, i32 0, i32 0
  store i64 0, ptr %a.len.gep232, align 8
  %a.data.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create229, i32 0, i32 1
  store ptr %a.buf231, ptr %a.data.gep233, align 8
  %a.cap.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create229, i32 0, i32 2
  store i64 16, ptr %a.cap.gep234, align 8
  store ptr %a.create229, ptr %var.diags, align 8
  br label %a.after227

a.after227:                                       ; preds = %a.create226, %choice.else
  %a.load2235 = load ptr, ptr %var.diags, align 8
  %a.len.query236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2235, i32 0, i32 0
  %a.len.query237 = load i64, ptr %a.len.query236, align 8
  %cmptmp238 = icmp sgt i64 %a.len.query237, 0
  br i1 %cmptmp238, label %choice.then239, label %choice.else240

choice.then239:                                   ; preds = %a.after227
  %var.load242 = load ptr, ptr %var.diags, align 8
  %a.load243 = load ptr, ptr %var.diags, align 8
  %a.null244 = icmp eq ptr %a.load243, null
  br i1 %a.null244, label %a.create245, label %a.after246

choice.else240:                                   ; preds = %a.after227
  %var.load537 = load ptr, ptr %var.filename, align 8
  %concat.lhs538 = getelementptr inbounds { i64, ptr }, ptr %var.load537, i32 0, i32 0
  %concat.lhs539 = load i64, ptr %concat.lhs538, align 8
  %concat.lhs540 = and i64 %concat.lhs539, 281474976710655
  %str.tag541 = lshr i64 %concat.lhs539, 48
  %tag.immortal543 = icmp eq i64 %str.tag541, 0
  %active.gen544 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current545 = icmp eq i64 %str.tag541, %active.gen544
  %tag.fast.ok546 = or i1 %tag.immortal543, %tag.current545
  br i1 %tag.fast.ok546, label %str_ok542, label %tag.slow_check547

choice.exit241:                                   ; preds = %concat.tot.len562, %concat.tot.len507
  %choice.res578 = phi { i1, i64 } [ %ram.pay536, %concat.tot.len507 ], [ %ram.pay577, %concat.tot.len562 ]
  br label %choice.exit

a.create245:                                      ; preds = %choice.then239
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 24)
  %arena.cur249 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 128)
  %a.len.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 0
  store i64 0, ptr %a.len.gep251, align 8
  %a.data.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 1
  store ptr %a.buf250, ptr %a.data.gep252, align 8
  %a.cap.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 2
  store i64 16, ptr %a.cap.gep253, align 8
  store ptr %a.create248, ptr %var.diags, align 8
  br label %a.after246

a.after246:                                       ; preds = %a.create245, %choice.then239
  %a.load2254 = load ptr, ptr %var.diags, align 8
  %a.rd.nonnull255 = icmp ne ptr %a.load2254, null
  br i1 %a.rd.nonnull255, label %a.rd.check256, label %a.rd.err.null258

a.rd.check256:                                    ; preds = %a.after246
  %a.rd.len261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2254, i32 0, i32 0
  %a.rd.len262 = load i64, ptr %a.rd.len261, align 8
  %a.rd.lt263 = icmp slt i64 0, %a.rd.len262
  %a.rd.bounds264 = and i1 true, %a.rd.lt263
  br i1 %a.rd.bounds264, label %a.rd.ok257, label %a.rd.err.oob259

a.rd.ok257:                                       ; preds = %a.rd.check256
  %a.rd.data265 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2254, i32 0, i32 1
  %a.rd.data266 = load ptr, ptr %a.rd.data265, align 8
  %a.rd.elem.gep267 = getelementptr i64, ptr %a.rd.data266, i64 0
  %a.rd.elem268 = load i64, ptr %a.rd.elem.gep267, align 8
  br label %a.rd.done260

a.rd.err.null258:                                 ; preds = %a.after246
  %arena.cur269 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 56)
  %err.code.gep271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 0
  store i64 4011, ptr %err.code.gep271, align 8
  %err.msg.gep272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 1
  store ptr @str.67.struct, ptr %err.msg.gep272, align 8
  %err.file.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep273, align 8
  %err.line.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 3
  store i64 677, ptr %err.line.gep274, align 8
  %err.col.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 4
  store i64 28, ptr %err.col.gep275, align 8
  %err.ctx.gep276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc270, i32 0, i32 5
  %err.ctx0.gep277 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep276, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep277, align 8
  %err.ctx1.gep278 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep276, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep278, align 8
  %err.p2i279 = ptrtoint ptr %err.alloc270 to i64
  br label %a.rd.done260

a.rd.err.oob259:                                  ; preds = %a.rd.check256
  %arena.cur280 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc281 = call ptr @dva_arena_alloc(ptr %arena.cur280, i64 56)
  %err.code.gep282 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc281, i32 0, i32 0
  store i64 4011, ptr %err.code.gep282, align 8
  %err.msg.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc281, i32 0, i32 1
  store ptr @str.69.struct, ptr %err.msg.gep283, align 8
  %err.file.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc281, i32 0, i32 2
  store ptr @str.68.struct, ptr %err.file.gep284, align 8
  %err.line.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc281, i32 0, i32 3
  store i64 677, ptr %err.line.gep285, align 8
  %err.col.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc281, i32 0, i32 4
  store i64 28, ptr %err.col.gep286, align 8
  %err.ctx.gep287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc281, i32 0, i32 5
  %err.ctx0.gep288 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep287, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep288, align 8
  %err.ctx1.gep289 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep287, i32 0, i32 1
  store i64 %a.rd.len262, ptr %err.ctx1.gep289, align 8
  %err.p2i290 = ptrtoint ptr %err.alloc281 to i64
  br label %a.rd.done260

a.rd.done260:                                     ; preds = %a.rd.err.oob259, %a.rd.err.null258, %a.rd.ok257
  %a.rd.tag291 = phi i1 [ true, %a.rd.ok257 ], [ false, %a.rd.err.null258 ], [ false, %a.rd.err.oob259 ]
  %a.rd.pay292 = phi i64 [ %a.rd.elem268, %a.rd.ok257 ], [ %err.p2i279, %a.rd.err.null258 ], [ %err.p2i290, %a.rd.err.oob259 ]
  %ram.tag293 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag291, 0
  %ram.pay294 = insertvalue { i1, i64 } %ram.tag293, i64 %a.rd.pay292, 1
  %unwrap.is_pos295 = extractvalue { i1, i64 } %ram.pay294, 0
  br i1 %unwrap.is_pos295, label %unwrap.pos.695, label %unwrap.abort.695

unwrap.pos.695:                                   ; preds = %a.rd.done260
  %unwrap.pay.pos341 = extractvalue { i1, i64 } %ram.pay294, 1
  %pay.ptr342 = inttoptr i64 %unwrap.pay.pos341 to ptr
  store ptr %pay.ptr342, ptr %var.d343, align 8
  %var.load344 = load ptr, ptr %var.d343, align 8
  %fld.gep345 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load344, i32 0, i32 1
  %fld.load346 = load ptr, ptr %fld.gep345, align 8
  %eq.lhs.len347 = getelementptr inbounds { i64, ptr }, ptr %fld.load346, i32 0, i32 0
  %eq.lhs.len348 = load i64, ptr %eq.lhs.len347, align 8
  %eq.lhs.len349 = and i64 %eq.lhs.len348, 281474976710655
  %str.tag350 = lshr i64 %eq.lhs.len348, 48
  %tag.immortal352 = icmp eq i64 %str.tag350, 0
  %active.gen353 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current354 = icmp eq i64 %str.tag350, %active.gen353
  %tag.fast.ok355 = or i1 %tag.immortal352, %tag.current354
  br i1 %tag.fast.ok355, label %str_ok351, label %tag.slow_check356

unwrap.abort.695:                                 ; preds = %a.rd.done260
  %unwrap.pay.abort296 = extractvalue { i1, i64 } %ram.pay294, 1
  %err.ptr297 = inttoptr i64 %unwrap.pay.abort296 to ptr
  %err.code.gep298 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr297, i32 0, i32 0
  %err.code299 = load i64, ptr %err.code.gep298, align 8
  %err.msg.gep300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr297, i32 0, i32 1
  %err.msg.struct301 = load ptr, ptr %err.msg.gep300, align 8
  %err.file.gep302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr297, i32 0, i32 2
  %err.file.struct303 = load ptr, ptr %err.file.gep302, align 8
  %err.line.gep304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr297, i32 0, i32 3
  %err.line305 = load i64, ptr %err.line.gep304, align 8
  %err.col.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr297, i32 0, i32 4
  %err.col307 = load i64, ptr %err.col.gep306, align 8
  %err.msg.len308 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct301, i32 0, i32 0
  %err.msg.len309 = load i64, ptr %err.msg.len308, align 8
  %err.msg.len310 = and i64 %err.msg.len309, 281474976710655
  %str.tag311 = lshr i64 %err.msg.len309, 48
  %tag.immortal313 = icmp eq i64 %str.tag311, 0
  %active.gen314 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current315 = icmp eq i64 %str.tag311, %active.gen314
  %tag.fast.ok316 = or i1 %tag.immortal313, %tag.current315
  br i1 %tag.fast.ok316, label %str_ok312, label %tag.slow_check317

str_ok312:                                        ; preds = %tag.slow_check317, %unwrap.abort.695
  %err.msg.len32318 = trunc i64 %err.msg.len310 to i32
  %err.msg.data319 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct301, i32 0, i32 1
  %err.msg.data320 = load ptr, ptr %err.msg.data319, align 8
  %err.file.len321 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct303, i32 0, i32 0
  %err.file.len322 = load i64, ptr %err.file.len321, align 8
  %err.file.len323 = and i64 %err.file.len322, 281474976710655
  %str.tag324 = lshr i64 %err.file.len322, 48
  %tag.immortal326 = icmp eq i64 %str.tag324, 0
  %active.gen327 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current328 = icmp eq i64 %str.tag324, %active.gen327
  %tag.fast.ok329 = or i1 %tag.immortal326, %tag.current328
  br i1 %tag.fast.ok329, label %str_ok325, label %tag.slow_check330

tag.slow_check317:                                ; preds = %unwrap.abort.695
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag311)
  br label %str_ok312

str_ok325:                                        ; preds = %tag.slow_check330, %str_ok312
  %err.file.len32331 = trunc i64 %err.file.len323 to i32
  %err.file.data332 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct303, i32 0, i32 1
  %err.file.data333 = load ptr, ptr %err.file.data332, align 8
  %err.thread.rec334 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread335 = icmp ne ptr %err.thread.rec334, null
  br i1 %err.is.thread335, label %err.thread336, label %err.normal337

tag.slow_check330:                                ; preds = %str_ok312
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag324)
  br label %str_ok325

err.thread336:                                    ; preds = %str_ok325
  %err.haserr.gep338 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec334, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep338, align 8
  %err.err.gep339 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec334, i32 0, i32 7
  store ptr %err.ptr297, ptr %err.err.gep339, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal337:                                    ; preds = %str_ok325
  %err.panic.printf340 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code299, i32 %err.msg.len32318, ptr %err.msg.data320, i32 %err.file.len32331, ptr %err.file.data333, i64 %err.line305, i64 %err.col307)
  call void @exit(i32 1)
  unreachable

str_ok351:                                        ; preds = %tag.slow_check356, %unwrap.pos.695
  %eq.rhs.len357 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len358 = and i64 %eq.rhs.len357, 281474976710655
  %eq.len359 = icmp eq i64 %eq.lhs.len349, %eq.rhs.len358
  br i1 %eq.len359, label %str.eq.then360, label %str.eq.else361

tag.slow_check356:                                ; preds = %unwrap.pos.695
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag350)
  br label %str_ok351

str.eq.then360:                                   ; preds = %str_ok351
  %eq.lhs.data363 = getelementptr inbounds { i64, ptr }, ptr %fld.load346, i32 0, i32 1
  %eq.lhs.data364 = load ptr, ptr %eq.lhs.data363, align 8
  %eq.rhs.data365 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp366 = call i32 @memcmp(ptr %eq.lhs.data364, ptr %eq.rhs.data365, i64 %eq.lhs.len349)
  %eq.cmp.zero367 = icmp eq i32 %eq.memcmp366, 0
  br label %str.eq.merge362

str.eq.else361:                                   ; preds = %str_ok351
  br label %str.eq.merge362

str.eq.merge362:                                  ; preds = %str.eq.else361, %str.eq.then360
  %str.eq.result368 = phi i1 [ %eq.cmp.zero367, %str.eq.then360 ], [ false, %str.eq.else361 ]
  %str.neq369 = xor i1 %str.eq.result368, true
  br i1 %str.neq369, label %choice.then370, label %choice.else371

choice.then370:                                   ; preds = %str.eq.merge362
  %var.load373 = load ptr, ptr %var.d343, align 8
  %fld.gep374 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load373, i32 0, i32 1
  %fld.load375 = load ptr, ptr %fld.gep374, align 8
  %concat.lhs376 = getelementptr inbounds { i64, ptr }, ptr %fld.load375, i32 0, i32 0
  %concat.lhs377 = load i64, ptr %concat.lhs376, align 8
  %concat.lhs378 = and i64 %concat.lhs377, 281474976710655
  %str.tag379 = lshr i64 %concat.lhs377, 48
  %tag.immortal381 = icmp eq i64 %str.tag379, 0
  %active.gen382 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current383 = icmp eq i64 %str.tag379, %active.gen382
  %tag.fast.ok384 = or i1 %tag.immortal381, %tag.current383
  br i1 %tag.fast.ok384, label %str_ok380, label %tag.slow_check385

choice.else371:                                   ; preds = %str.eq.merge362
  br label %choice.exit372

choice.exit372:                                   ; preds = %choice.else371, %concat.tot.len400
  %choice.res414 = phi ptr [ %concat.str408, %concat.tot.len400 ], [ @str.12.struct, %choice.else371 ]
  store ptr %choice.res414, ptr %var.fn415, align 8
  %var.load416 = load ptr, ptr %var.fn415, align 8
  %cat.seg417 = getelementptr inbounds { i64, ptr }, ptr %var.load416, i32 0, i32 0
  %cat.seg418 = load i64, ptr %cat.seg417, align 8
  %cat.seg419 = and i64 %cat.seg418, 281474976710655
  %str.tag420 = lshr i64 %cat.seg418, 48
  %tag.immortal422 = icmp eq i64 %str.tag420, 0
  %active.gen423 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current424 = icmp eq i64 %str.tag420, %active.gen423
  %tag.fast.ok425 = or i1 %tag.immortal422, %tag.current424
  br i1 %tag.fast.ok425, label %str_ok421, label %tag.slow_check426

str_ok380:                                        ; preds = %tag.slow_check385, %choice.then370
  %concat.lhs386 = getelementptr inbounds { i64, ptr }, ptr %fld.load375, i32 0, i32 1
  %concat.lhs387 = load ptr, ptr %concat.lhs386, align 8
  %concat.rhs388 = load i64, ptr @str.70.struct, align 8
  %concat.rhs389 = and i64 %concat.rhs388, 281474976710655
  %concat.rhs390 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %concat.sum.len391 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs378, i64 %concat.rhs389)
  %sum392 = extractvalue { i64, i1 } %concat.sum.len391, 0
  %ovf393 = extractvalue { i64, i1 } %concat.sum.len391, 1
  br i1 %ovf393, label %str_overflow_abort395, label %concat.sum.len394

tag.slow_check385:                                ; preds = %choice.then370
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag379)
  br label %str_ok380

concat.sum.len394:                                ; preds = %abort.dead396, %str_ok380
  %concat.tot.len397 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum392, i64 1)
  %sum398 = extractvalue { i64, i1 } %concat.tot.len397, 0
  %ovf399 = extractvalue { i64, i1 } %concat.tot.len397, 1
  br i1 %ovf399, label %str_overflow_abort401, label %concat.tot.len400

str_overflow_abort395:                            ; preds = %str_ok380
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead396:                                    ; No predecessors!
  br label %concat.sum.len394

concat.tot.len400:                                ; preds = %abort.dead402, %concat.sum.len394
  %arena.cur403 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf404 = call ptr @dva_arena_alloc(ptr %arena.cur403, i64 %sum398)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf404, ptr align 1 %concat.lhs387, i64 %concat.lhs378, i1 false)
  %concat.mid405 = getelementptr i8, ptr %concat.buf404, i64 %concat.lhs378
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid405, ptr align 1 %concat.rhs390, i64 %concat.rhs389, i1 false)
  %concat.nul406 = getelementptr i8, ptr %concat.buf404, i64 %sum392
  store i8 0, ptr %concat.nul406, align 1
  %arena.cur407 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str408 = call ptr @dva_arena_alloc(ptr %arena.cur407, i64 16)
  %str.build.len.gep409 = getelementptr inbounds { i64, ptr }, ptr %concat.str408, i32 0, i32 0
  %str.tag.gen410 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift411 = shl i64 %str.tag.gen410, 48
  %str.tagged.len412 = or i64 %sum392, %str.tag.shift411
  store i64 %str.tagged.len412, ptr %str.build.len.gep409, align 8
  %str.build.data.gep413 = getelementptr inbounds { i64, ptr }, ptr %concat.str408, i32 0, i32 1
  store ptr %concat.buf404, ptr %str.build.data.gep413, align 8
  br label %choice.exit372

str_overflow_abort401:                            ; preds = %concat.sum.len394
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead402:                                    ; No predecessors!
  br label %concat.tot.len400

str_ok421:                                        ; preds = %tag.slow_check426, %choice.exit372
  %cat.seg427 = getelementptr inbounds { i64, ptr }, ptr %var.load416, i32 0, i32 1
  %cat.seg428 = load ptr, ptr %cat.seg427, align 8
  %var.load429 = load ptr, ptr %var.d343, align 8
  %fld.gep430 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load429, i32 0, i32 2
  %fld.load431 = load i64, ptr %fld.gep430, align 8
  %cat.ilen433 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf432, i64 %fld.load431, i1 false)
  %cat.lit.data434 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %var.load435 = load ptr, ptr %var.d343, align 8
  %fld.gep436 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load435, i32 0, i32 3
  %fld.load437 = load i64, ptr %fld.gep436, align 8
  %cat.ilen439 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf438, i64 %fld.load437, i1 false)
  %cat.lit.data440 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.71.struct, i32 0, i32 1), align 8
  %var.load441 = load ptr, ptr %var.d343, align 8
  %fld.gep442 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load441, i32 0, i32 0
  %fld.load443 = load i64, ptr %fld.gep442, align 8
  %cat.ilen445 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf444, i64 %fld.load443, i1 false)
  %cat.lit.data446 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %var.load447 = load ptr, ptr %var.d343, align 8
  %fld.gep448 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load447, i32 0, i32 4
  %fld.load449 = load ptr, ptr %fld.gep448, align 8
  %cat.seg450 = getelementptr inbounds { i64, ptr }, ptr %fld.load449, i32 0, i32 0
  %cat.seg451 = load i64, ptr %cat.seg450, align 8
  %cat.seg452 = and i64 %cat.seg451, 281474976710655
  %str.tag453 = lshr i64 %cat.seg451, 48
  %tag.immortal455 = icmp eq i64 %str.tag453, 0
  %active.gen456 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current457 = icmp eq i64 %str.tag453, %active.gen456
  %tag.fast.ok458 = or i1 %tag.immortal455, %tag.current457
  br i1 %tag.fast.ok458, label %str_ok454, label %tag.slow_check459

tag.slow_check426:                                ; preds = %choice.exit372
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag420)
  br label %str_ok421

str_ok454:                                        ; preds = %tag.slow_check459, %str_ok421
  %cat.seg460 = getelementptr inbounds { i64, ptr }, ptr %fld.load449, i32 0, i32 1
  %cat.seg461 = load ptr, ptr %cat.seg460, align 8
  %cat.sum.len462 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg419, i64 %cat.ilen433)
  %sum463 = extractvalue { i64, i1 } %cat.sum.len462, 0
  %ovf464 = extractvalue { i64, i1 } %cat.sum.len462, 1
  br i1 %ovf464, label %str_overflow_abort466, label %cat.sum.len465

tag.slow_check459:                                ; preds = %str_ok421
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag453)
  br label %str_ok454

cat.sum.len465:                                   ; preds = %abort.dead467, %str_ok454
  %cat.sum.len468 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum463, i64 1)
  %sum469 = extractvalue { i64, i1 } %cat.sum.len468, 0
  %ovf470 = extractvalue { i64, i1 } %cat.sum.len468, 1
  br i1 %ovf470, label %str_overflow_abort472, label %cat.sum.len471

str_overflow_abort466:                            ; preds = %str_ok454
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead467:                                    ; No predecessors!
  br label %cat.sum.len465

cat.sum.len471:                                   ; preds = %abort.dead473, %cat.sum.len465
  %cat.sum.len474 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum469, i64 %cat.ilen439)
  %sum475 = extractvalue { i64, i1 } %cat.sum.len474, 0
  %ovf476 = extractvalue { i64, i1 } %cat.sum.len474, 1
  br i1 %ovf476, label %str_overflow_abort478, label %cat.sum.len477

str_overflow_abort472:                            ; preds = %cat.sum.len465
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead473:                                    ; No predecessors!
  br label %cat.sum.len471

cat.sum.len477:                                   ; preds = %abort.dead479, %cat.sum.len471
  %cat.sum.len480 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum475, i64 3)
  %sum481 = extractvalue { i64, i1 } %cat.sum.len480, 0
  %ovf482 = extractvalue { i64, i1 } %cat.sum.len480, 1
  br i1 %ovf482, label %str_overflow_abort484, label %cat.sum.len483

str_overflow_abort478:                            ; preds = %cat.sum.len471
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead479:                                    ; No predecessors!
  br label %cat.sum.len477

cat.sum.len483:                                   ; preds = %abort.dead485, %cat.sum.len477
  %cat.sum.len486 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum481, i64 %cat.ilen445)
  %sum487 = extractvalue { i64, i1 } %cat.sum.len486, 0
  %ovf488 = extractvalue { i64, i1 } %cat.sum.len486, 1
  br i1 %ovf488, label %str_overflow_abort490, label %cat.sum.len489

str_overflow_abort484:                            ; preds = %cat.sum.len477
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead485:                                    ; No predecessors!
  br label %cat.sum.len483

cat.sum.len489:                                   ; preds = %abort.dead491, %cat.sum.len483
  %cat.sum.len492 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum487, i64 2)
  %sum493 = extractvalue { i64, i1 } %cat.sum.len492, 0
  %ovf494 = extractvalue { i64, i1 } %cat.sum.len492, 1
  br i1 %ovf494, label %str_overflow_abort496, label %cat.sum.len495

str_overflow_abort490:                            ; preds = %cat.sum.len483
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead491:                                    ; No predecessors!
  br label %cat.sum.len489

cat.sum.len495:                                   ; preds = %abort.dead497, %cat.sum.len489
  %cat.sum.len498 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum493, i64 %cat.seg452)
  %sum499 = extractvalue { i64, i1 } %cat.sum.len498, 0
  %ovf500 = extractvalue { i64, i1 } %cat.sum.len498, 1
  br i1 %ovf500, label %str_overflow_abort502, label %cat.sum.len501

str_overflow_abort496:                            ; preds = %cat.sum.len489
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead497:                                    ; No predecessors!
  br label %cat.sum.len495

cat.sum.len501:                                   ; preds = %abort.dead503, %cat.sum.len495
  %concat.tot.len504 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum499, i64 1)
  %sum505 = extractvalue { i64, i1 } %concat.tot.len504, 0
  %ovf506 = extractvalue { i64, i1 } %concat.tot.len504, 1
  br i1 %ovf506, label %str_overflow_abort508, label %concat.tot.len507

str_overflow_abort502:                            ; preds = %cat.sum.len495
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead503:                                    ; No predecessors!
  br label %cat.sum.len501

concat.tot.len507:                                ; preds = %abort.dead509, %cat.sum.len501
  %arena.cur510 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf511 = call ptr @dva_arena_alloc(ptr %arena.cur510, i64 %sum505)
  %cat.dst512 = getelementptr i8, ptr %concat.buf511, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst512, ptr align 1 %cat.seg428, i64 %cat.seg419, i1 false)
  %cat.off513 = add i64 0, %cat.seg419
  %cat.dst514 = getelementptr i8, ptr %concat.buf511, i64 %cat.off513
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst514, ptr align 1 %cat.ibuf432, i64 %cat.ilen433, i1 false)
  %cat.off515 = add i64 %cat.off513, %cat.ilen433
  %cat.dst516 = getelementptr i8, ptr %concat.buf511, i64 %cat.off515
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst516, ptr align 1 %cat.lit.data434, i64 1, i1 false)
  %cat.off517 = add i64 %cat.off515, 1
  %cat.dst518 = getelementptr i8, ptr %concat.buf511, i64 %cat.off517
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst518, ptr align 1 %cat.ibuf438, i64 %cat.ilen439, i1 false)
  %cat.off519 = add i64 %cat.off517, %cat.ilen439
  %cat.dst520 = getelementptr i8, ptr %concat.buf511, i64 %cat.off519
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst520, ptr align 1 %cat.lit.data440, i64 3, i1 false)
  %cat.off521 = add i64 %cat.off519, 3
  %cat.dst522 = getelementptr i8, ptr %concat.buf511, i64 %cat.off521
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst522, ptr align 1 %cat.ibuf444, i64 %cat.ilen445, i1 false)
  %cat.off523 = add i64 %cat.off521, %cat.ilen445
  %cat.dst524 = getelementptr i8, ptr %concat.buf511, i64 %cat.off523
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst524, ptr align 1 %cat.lit.data446, i64 2, i1 false)
  %cat.off525 = add i64 %cat.off523, 2
  %cat.dst526 = getelementptr i8, ptr %concat.buf511, i64 %cat.off525
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst526, ptr align 1 %cat.seg461, i64 %cat.seg452, i1 false)
  %concat.nul527 = getelementptr i8, ptr %concat.buf511, i64 %sum499
  store i8 0, ptr %concat.nul527, align 1
  %arena.cur528 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str529 = call ptr @dva_arena_alloc(ptr %arena.cur528, i64 16)
  %str.build.len.gep530 = getelementptr inbounds { i64, ptr }, ptr %concat.str529, i32 0, i32 0
  %str.tag.gen531 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift532 = shl i64 %str.tag.gen531, 48
  %str.tagged.len533 = or i64 %sum499, %str.tag.shift532
  store i64 %str.tagged.len533, ptr %str.build.len.gep530, align 8
  %str.build.data.gep534 = getelementptr inbounds { i64, ptr }, ptr %concat.str529, i32 0, i32 1
  store ptr %concat.buf511, ptr %str.build.data.gep534, align 8
  %p.to.i64535 = ptrtoint ptr %concat.str529 to i64
  %ram.pay536 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64535, 1
  br label %choice.exit241

str_overflow_abort508:                            ; preds = %cat.sum.len501
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead509:                                    ; No predecessors!
  br label %concat.tot.len507

str_ok542:                                        ; preds = %tag.slow_check547, %choice.else240
  %concat.lhs548 = getelementptr inbounds { i64, ptr }, ptr %var.load537, i32 0, i32 1
  %concat.lhs549 = load ptr, ptr %concat.lhs548, align 8
  %concat.rhs550 = load i64, ptr @str.72.struct, align 8
  %concat.rhs551 = and i64 %concat.rhs550, 281474976710655
  %concat.rhs552 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.72.struct, i32 0, i32 1), align 8
  %concat.sum.len553 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs540, i64 %concat.rhs551)
  %sum554 = extractvalue { i64, i1 } %concat.sum.len553, 0
  %ovf555 = extractvalue { i64, i1 } %concat.sum.len553, 1
  br i1 %ovf555, label %str_overflow_abort557, label %concat.sum.len556

tag.slow_check547:                                ; preds = %choice.else240
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag541)
  br label %str_ok542

concat.sum.len556:                                ; preds = %abort.dead558, %str_ok542
  %concat.tot.len559 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum554, i64 1)
  %sum560 = extractvalue { i64, i1 } %concat.tot.len559, 0
  %ovf561 = extractvalue { i64, i1 } %concat.tot.len559, 1
  br i1 %ovf561, label %str_overflow_abort563, label %concat.tot.len562

str_overflow_abort557:                            ; preds = %str_ok542
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead558:                                    ; No predecessors!
  br label %concat.sum.len556

concat.tot.len562:                                ; preds = %abort.dead564, %concat.sum.len556
  %arena.cur565 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf566 = call ptr @dva_arena_alloc(ptr %arena.cur565, i64 %sum560)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf566, ptr align 1 %concat.lhs549, i64 %concat.lhs540, i1 false)
  %concat.mid567 = getelementptr i8, ptr %concat.buf566, i64 %concat.lhs540
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid567, ptr align 1 %concat.rhs552, i64 %concat.rhs551, i1 false)
  %concat.nul568 = getelementptr i8, ptr %concat.buf566, i64 %sum554
  store i8 0, ptr %concat.nul568, align 1
  %arena.cur569 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str570 = call ptr @dva_arena_alloc(ptr %arena.cur569, i64 16)
  %str.build.len.gep571 = getelementptr inbounds { i64, ptr }, ptr %concat.str570, i32 0, i32 0
  %str.tag.gen572 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift573 = shl i64 %str.tag.gen572, 48
  %str.tagged.len574 = or i64 %sum554, %str.tag.shift573
  store i64 %str.tagged.len574, ptr %str.build.len.gep571, align 8
  %str.build.data.gep575 = getelementptr inbounds { i64, ptr }, ptr %concat.str570, i32 0, i32 1
  store ptr %concat.buf566, ptr %str.build.data.gep575, align 8
  %p.to.i64576 = ptrtoint ptr %concat.str570 to i64
  %ram.pay577 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64576, 1
  br label %choice.exit241

str_overflow_abort563:                            ; preds = %concat.sum.len556
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead564:                                    ; No predecessors!
  br label %concat.tot.len562
}

declare void @"diag::enable_capture"() #3

declare void @"lexer::lex_set_file"(ptr) #3

declare ptr @"parser::parse_init"(ptr) #3

declare void @"parser::parser_set_file"(ptr, ptr) #3

declare { i1, i64 } @"parser::parse_program"(ptr) #3

declare ptr @"diag::get_captured"() #3

declare void @"diag::disable_capture"() #3

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
define internal void @dva_abort_stale_str_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #3 {
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

declare { i64, ptr } @"show::show_expr"(ptr) #3

define { i1, i64 } @"formatter::format_source"(ptr %0, ptr %1) #3 {
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

define void @"formatter::sort_names"(ptr %0) #3 {
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
  %var._i10 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %var._9 = alloca i64, align 8
  %loop.step.697 = alloca i64, align 8
  %loop.idx.697 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.696 = alloca i64, align 8
  %loop.idx.696 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.696, align 8
  br label %loop.header.696

loop.header.696:                                  ; preds = %loop.latch.696, %a.after
  %counter.load = load i64, ptr %loop.idx.696, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load4
  br i1 %loop.cond, label %loop.body.696, label %loop.exit.nat.696

loop.body.696:                                    ; preds = %loop.header.696
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.696, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load5, 1
  store i64 0, ptr %loop.idx.697, align 8
  br label %loop.header.697

loop.exit.nat.696:                                ; preds = %loop.header.696
  br label %loop.exit.696

loop.latch.696:                                   ; preds = %loop.exit.697
  %step.val258 = load i64, ptr %loop.step.696, align 8
  %loop.next259 = add i64 %counter.load, %step.val258
  store i64 %loop.next259, ptr %loop.idx.696, align 8
  br label %loop.header.696

loop.exit.696:                                    ; preds = %loop.exit.nat.696
  ret void

loop.header.697:                                  ; preds = %loop.latch.697, %loop.body.696
  %counter.load6 = load i64, ptr %loop.idx.697, align 8
  %loop.cond7 = icmp slt i64 %counter.load6, %subtmp
  br i1 %loop.cond7, label %loop.body.697, label %loop.exit.nat.697

loop.body.697:                                    ; preds = %loop.header.697
  %loop.rel.i8 = sub i64 %counter.load6, 0
  store i64 1, ptr %loop.step.697, align 8
  store i64 %counter.load6, ptr %var._9, align 8
  store i64 %counter.load6, ptr %var.j, align 8
  store i64 %loop.rel.i8, ptr %var._i10, align 8
  %var.load11 = load ptr, ptr %var.names, align 8
  %a.load12 = load ptr, ptr %var.names, align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

loop.exit.nat.697:                                ; preds = %loop.header.697
  br label %loop.exit.697

loop.latch.697:                                   ; preds = %choice.exit114
  %step.val = load i64, ptr %loop.step.697, align 8
  %loop.next = add i64 %counter.load6, %step.val
  store i64 %loop.next, ptr %loop.idx.697, align 8
  br label %loop.header.697

loop.exit.697:                                    ; preds = %loop.exit.nat.697
  br label %loop.latch.696

a.create14:                                       ; preds = %loop.body.697
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

a.after15:                                        ; preds = %a.create14, %loop.body.697
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
  store i64 718, ptr %err.line.gep, align 8
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
  store i64 718, ptr %err.line.gep33, align 8
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
  store i64 719, ptr %err.line.gep79, align 8
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
  store i64 719, ptr %err.line.gep90, align 8
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
  br label %loop.latch.697

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

declare i64 @"str::cmp"(ptr, ptr) #3

define void @"formatter::collect_dva_files"(ptr %0, ptr %1) #3 {
entry:
  %var.sub = alloca ptr, align 8
  %var._i122 = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var._121 = alloca ptr, align 8
  %loop.step.699 = alloca i64, align 8
  %loop.idx.699 = alloca i64, align 8
  %var.names = alloca ptr, align 8
  %var._map_v_814 = alloca ptr, align 8
  %var._42 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.ent = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.698 = alloca i64, align 8
  %loop.idx.698 = alloca i64, align 8
  %var._map_out_814 = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
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
  store { i64, ptr } %call.res2, ptr %ret.ub.salloc, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %eq.lhs.len3 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len4 = and i64 %eq.lhs.len3, 281474976710655
  %eq.rhs.len = load i64, ptr @str.73.struct, align 8
  %eq.rhs.len5 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len4, %eq.rhs.len5
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.else:                                      ; preds = %entry
  %var.load16 = load ptr, ptr %var.target, align 8
  %call.res17 = call i1 @"fs::is_dir"(ptr %var.load16)
  br i1 %call.res17, label %choice.then18, label %choice.exit19

choice.exit:                                      ; preds = %choice.exit19, %choice.exit8
  ret void

str.eq.then:                                      ; preds = %choice.then
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %eq.lhs.data6 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.73.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data6, ptr %eq.rhs.data, i64 %eq.lhs.len4)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.then
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
  store ptr %a.create10, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then7
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len12 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap13 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len12, %a.cap13
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data14 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len15 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data14, i64 %a.cur.len15
  %slot.p2i = ptrtoint ptr %var.load9 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len15, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit8

choice.then18:                                    ; preds = %choice.else
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  %a.len.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep23, align 8
  %a.data.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf22, ptr %a.data.gep24, align 8
  %a.cap.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep25, align 8
  store ptr %a.new, ptr %var._map_out_814, align 8
  %var.load26 = load ptr, ptr %var.target, align 8
  %call.res27 = call ptr @"fs::read_dir"(ptr %var.load26)
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %call.res27, i32 0, i32 0
  %arr.cycle.len28 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %call.res27, i32 0, i32 1
  %arr.cycle.data29 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.698, align 8
  br label %loop.header.698

choice.exit19:                                    ; preds = %loop.exit.699, %choice.else
  br label %choice.exit

loop.header.698:                                  ; preds = %loop.latch.698, %choice.then18
  %counter.load = load i64, ptr %loop.idx.698, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len28
  br i1 %loop.cond, label %loop.body.698, label %loop.exit.nat.698

loop.body.698:                                    ; preds = %loop.header.698
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.698, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data29, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ent, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load30 = load ptr, ptr %var.ent, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load30, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %s.read.len31 = load i64, ptr %s.read.len, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data33 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len32
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.698:                                ; preds = %loop.header.698
  br label %loop.exit.698

loop.latch.698:                                   ; preds = %choice.exit41
  %step.val = load i64, ptr %loop.step.698, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.698, align 8
  br label %loop.header.698

loop.exit.698:                                    ; preds = %loop.exit.nat.698
  %var.load72 = load ptr, ptr %var._map_out_814, align 8
  %a.load73 = load ptr, ptr %var._map_out_814, align 8
  %a.null74 = icmp eq ptr %a.load73, null
  br i1 %a.null74, label %a.create75, label %a.after76

idx_ok:                                           ; preds = %abort.dead, %loop.body.698
  %s.byte.gep = getelementptr i8, ptr %s.read.data33, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp ne i64 %s.byte.val, 46
  br i1 %cmptmp, label %choice.then34, label %choice.else35

idx_oob:                                          ; preds = %loop.body.698
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then34:                                    ; preds = %idx_ok
  %var.load37 = load ptr, ptr %var.ent, align 8
  %fld.gep38 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load37, i32 0, i32 0
  %fld.load39 = load ptr, ptr %fld.gep38, align 8
  br label %choice.exit36

choice.else35:                                    ; preds = %idx_ok
  br label %choice.exit36

choice.exit36:                                    ; preds = %choice.else35, %choice.then34
  %choice.res = phi ptr [ %fld.load39, %choice.then34 ], [ null, %choice.else35 ]
  %niche.ne.null = icmp ne ptr %choice.res, null
  br i1 %niche.ne.null, label %choice.then40, label %choice.exit41

choice.then40:                                    ; preds = %choice.exit36
  store ptr %choice.res, ptr %var._42, align 8
  store ptr %choice.res, ptr %var._map_v_814, align 8
  %var.load43 = load ptr, ptr %var._map_v_814, align 8
  %a.load44 = load ptr, ptr %var._map_out_814, align 8
  %a.null45 = icmp eq ptr %a.load44, null
  br i1 %a.null45, label %a.create46, label %a.after47

choice.exit41:                                    ; preds = %a.store58, %choice.exit36
  br label %loop.latch.698

a.create46:                                       ; preds = %choice.then40
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 24)
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 128)
  %a.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 0
  store i64 0, ptr %a.len.gep52, align 8
  %a.data.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 1
  store ptr %a.buf51, ptr %a.data.gep53, align 8
  %a.cap.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 2
  store i64 16, ptr %a.cap.gep54, align 8
  store ptr %a.create49, ptr %var._map_out_814, align 8
  br label %a.after47

a.after47:                                        ; preds = %a.create46, %choice.then40
  %a.load255 = load ptr, ptr %var._map_out_814, align 8
  br label %a.check56

a.check56:                                        ; preds = %a.after47
  %a.len59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 0
  %a.len60 = load i64, ptr %a.len59, align 8
  %a.cap61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 2
  %a.cap62 = load i64, ptr %a.cap61, align 8
  %a.needs.grow63 = icmp eq i64 %a.len60, %a.cap62
  br i1 %a.needs.grow63, label %a.grow57, label %a.store58

a.grow57:                                         ; preds = %a.check56
  call void @dva_array_grow(ptr %a.load255)
  br label %a.store58

a.store58:                                        ; preds = %a.grow57, %a.check56
  %a.cur.data64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 1
  %a.cur.data65 = load ptr, ptr %a.cur.data64, align 8
  %a.cur.len66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 0
  %a.cur.len67 = load i64, ptr %a.cur.len66, align 8
  %a.elem.gep68 = getelementptr i64, ptr %a.cur.data65, i64 %a.cur.len67
  %slot.p2i69 = ptrtoint ptr %var.load43 to i64
  store i64 %slot.p2i69, ptr %a.elem.gep68, align 8
  %a.next.len70 = add i64 %a.cur.len67, 1
  %b.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 0
  store i64 %a.next.len70, ptr %b.len.gep71, align 8
  br label %choice.exit41

a.create75:                                       ; preds = %loop.exit.698
  %arena.cur77 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 24)
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 128)
  %a.len.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create78, i32 0, i32 0
  store i64 0, ptr %a.len.gep81, align 8
  %a.data.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create78, i32 0, i32 1
  store ptr %a.buf80, ptr %a.data.gep82, align 8
  %a.cap.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create78, i32 0, i32 2
  store i64 16, ptr %a.cap.gep83, align 8
  store ptr %a.create78, ptr %var._map_out_814, align 8
  br label %a.after76

a.after76:                                        ; preds = %a.create75, %loop.exit.698
  %a.load284 = load ptr, ptr %var._map_out_814, align 8
  store ptr %a.load284, ptr %var.names, align 8
  %var.load85 = load ptr, ptr %var.names, align 8
  %a.load86 = load ptr, ptr %var.names, align 8
  %a.null87 = icmp eq ptr %a.load86, null
  br i1 %a.null87, label %a.create88, label %a.after89

a.create88:                                       ; preds = %a.after76
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 24)
  %arena.cur92 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 128)
  %a.len.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create91, i32 0, i32 0
  store i64 0, ptr %a.len.gep94, align 8
  %a.data.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create91, i32 0, i32 1
  store ptr %a.buf93, ptr %a.data.gep95, align 8
  %a.cap.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create91, i32 0, i32 2
  store i64 16, ptr %a.cap.gep96, align 8
  store ptr %a.create91, ptr %var.names, align 8
  br label %a.after89

a.after89:                                        ; preds = %a.create88, %a.after76
  %a.load297 = load ptr, ptr %var.names, align 8
  call void @"formatter::sort_names"(ptr %a.load297)
  %var.load98 = load ptr, ptr %var.names, align 8
  %a.load99 = load ptr, ptr %var.names, align 8
  %a.null100 = icmp eq ptr %a.load99, null
  br i1 %a.null100, label %a.create101, label %a.after102

a.create101:                                      ; preds = %a.after89
  %arena.cur103 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 24)
  %arena.cur105 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 128)
  %a.len.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create104, i32 0, i32 0
  store i64 0, ptr %a.len.gep107, align 8
  %a.data.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create104, i32 0, i32 1
  store ptr %a.buf106, ptr %a.data.gep108, align 8
  %a.cap.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create104, i32 0, i32 2
  store i64 16, ptr %a.cap.gep109, align 8
  store ptr %a.create104, ptr %var.names, align 8
  br label %a.after102

a.after102:                                       ; preds = %a.create101, %a.after89
  %a.load2110 = load ptr, ptr %var.names, align 8
  %arr.cycle.len111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2110, i32 0, i32 0
  %arr.cycle.len112 = load i64, ptr %arr.cycle.len111, align 8
  %arr.cycle.data113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2110, i32 0, i32 1
  %arr.cycle.data114 = load ptr, ptr %arr.cycle.data113, align 8
  store i64 0, ptr %loop.idx.699, align 8
  br label %loop.header.699

loop.header.699:                                  ; preds = %loop.latch.699, %a.after102
  %counter.load115 = load i64, ptr %loop.idx.699, align 8
  %loop.cond116 = icmp slt i64 %counter.load115, %arr.cycle.len112
  br i1 %loop.cond116, label %loop.body.699, label %loop.exit.nat.699

loop.body.699:                                    ; preds = %loop.header.699
  %loop.rel.i117 = sub i64 %counter.load115, 0
  store i64 1, ptr %loop.step.699, align 8
  %arr.elem.gep118 = getelementptr i64, ptr %arr.cycle.data114, i64 %counter.load115
  %arr.elem.raw119 = load i64, ptr %arr.elem.gep118, align 8
  %slot.i2p120 = inttoptr i64 %arr.elem.raw119 to ptr
  store ptr %slot.i2p120, ptr %var._121, align 8
  store ptr %slot.i2p120, ptr %var.name, align 8
  store i64 %loop.rel.i117, ptr %var._i122, align 8
  %var.load123 = load ptr, ptr %var.target, align 8
  %var.load124 = load ptr, ptr %var.name, align 8
  %call.res125 = call { i64, ptr } @"fs::join"(ptr %var.load123, ptr %var.load124)
  %arena.cur126 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 16)
  store { i64, ptr } %call.res125, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.sub, align 8
  %var.load127 = load ptr, ptr %var.sub, align 8
  %var.load128 = load ptr, ptr %var.out, align 8
  %a.load129 = load ptr, ptr %var.out, align 8
  %a.null130 = icmp eq ptr %a.load129, null
  br i1 %a.null130, label %a.create131, label %a.after132

loop.exit.nat.699:                                ; preds = %loop.header.699
  br label %loop.exit.699

loop.latch.699:                                   ; preds = %a.after132
  %step.val141 = load i64, ptr %loop.step.699, align 8
  %loop.next142 = add i64 %counter.load115, %step.val141
  store i64 %loop.next142, ptr %loop.idx.699, align 8
  br label %loop.header.699

loop.exit.699:                                    ; preds = %loop.exit.nat.699
  br label %choice.exit19

a.create131:                                      ; preds = %loop.body.699
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 24)
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 128)
  %a.len.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 0
  store i64 0, ptr %a.len.gep137, align 8
  %a.data.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 1
  store ptr %a.buf136, ptr %a.data.gep138, align 8
  %a.cap.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 2
  store i64 16, ptr %a.cap.gep139, align 8
  store ptr %a.create134, ptr %var.out, align 8
  br label %a.after132

a.after132:                                       ; preds = %a.create131, %loop.body.699
  %a.load2140 = load ptr, ptr %var.out, align 8
  call void @"formatter::collect_dva_files"(ptr %var.load127, ptr %a.load2140)
  br label %loop.latch.699
}

declare i1 @"fs::is_file"(ptr) #3

declare { i64, ptr } @"fs::ext"(ptr) #3

declare i1 @"fs::is_dir"(ptr) #3

declare ptr @"fs::read_dir"(ptr) #3

declare { i64, ptr } @"fs::join"(ptr, ptr) #3

define { i64, ptr } @"formatter::read_stdin_all"() #3 {
entry:
  %var.n = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.700 = alloca i64, align 8
  %loop.idx.700 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.700, align 8
  br label %loop.header.700

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

loop.header.700:                                  ; preds = %loop.latch.700, %b.buf.len1
  %counter.load = load i64, ptr %loop.idx.700, align 8
  br label %loop.body.700

loop.body.700:                                    ; preds = %loop.header.700
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.700, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %call.res = call i64 @"mem::write_tail"(ptr %var.load, i64 4096, ptr @clo.const.25)
  store i64 %call.res, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.700:                                ; No predecessors!
  br label %loop.exit.700

loop.latch.700:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.700, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.700, align 8
  br label %loop.header.700

loop.exit.700:                                    ; preds = %choice.then, %loop.exit.nat.700
  %var.load4 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %b.freeze.len5 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %b.freeze.data6 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then:                                      ; preds = %loop.body.700
  br label %loop.exit.700

choice.exit:                                      ; preds = %loop.body.700
  br label %loop.latch.700

b.freeze.check:                                   ; preds = %loop.exit.700
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data6, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data6, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data6, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len5, 1
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data6, i64 %b.freeze.len5, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len5
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.700
  %b.freeze.data8 = phi ptr [ %b.freeze.data6, %loop.exit.700 ], [ %b.freeze.data6, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len5, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data8, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define internal i64 @"$anon_fn.121"(ptr %0, i64 %1) #3 {
entry:
  %var.avail = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  store ptr %0, ptr %var.dst, align 8
  store i64 %1, ptr %var.avail, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load1 = load i64, ptr %var.avail, align 8
  %call.res = call i64 @read(i32 0, ptr %addr.ffi.clean, i64 %var.load1)
  ret i64 %call.res
}

declare i64 @"mem::write_tail"(ptr, i64, ptr) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

define void @"formatter::write_stdout"(ptr %0) #3 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.s, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %arg.str.ptr4 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr5 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %arg.str.ptr6 = load i64, ptr %arg.str.ptr5, align 8
  %arg.str.ptr7 = and i64 %arg.str.ptr6, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr4, i64 %arg.str.ptr7
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr8, label %nulcopy

choice.exit:                                      ; preds = %nulmerge, %entry
  ret void

arg.str.ptr8:                                     ; preds = %choice.then
  br label %nulmerge

nulcopy:                                          ; preds = %choice.then
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr7, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len9

nulmerge:                                         ; preds = %nulcopy.len9, %arg.str.ptr8
  %arg.str.ptr10 = phi ptr [ %arg.str.ptr4, %arg.str.ptr8 ], [ %nulcopy.buf, %nulcopy.len9 ]
  %var.load11 = load ptr, ptr %var.s, align 8
  %str.len.query12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %str.len.query13 = load i64, ptr %str.len.query12, align 8
  %str.len.query14 = and i64 %str.len.query13, 281474976710655
  %call.res = call i64 @write(i32 1, ptr %arg.str.ptr10, i64 %str.len.query14)
  br label %choice.exit

nulcopy.len9:                                     ; preds = %abort.dead, %nulcopy
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
  br label %nulcopy.len9
}

define void @"formatter::print_line"(ptr %0) #3 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = load i64, ptr @str.74.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %concat.rhs6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.74.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len7

concat.sum.len7:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum8 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf9 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf9, label %str_overflow_abort11, label %concat.tot.len10

str_overflow_abort:                               ; preds = %entry
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

define void @"formatter::print_fmt_help"() #3 {
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

define i64 @"formatter::main"(i64 %0) #3 {
entry:
  %var.err510 = alloca ptr, align 8
  %var._509 = alloca ptr, align 8
  %var.formatted404 = alloca ptr, align 8
  %var._403 = alloca ptr, align 8
  %var.res395 = alloca { i1, i64 }, align 8
  %var.src391 = alloca ptr, align 8
  %var._390 = alloca ptr, align 8
  %var.src_opt = alloca ptr, align 8
  %var._i382 = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %var._381 = alloca ptr, align 8
  %loop.step.704 = alloca i64, align 8
  %loop.idx.704 = alloca i64, align 8
  %"var.unformatted'" = alloca i64, align 8
  %"var.had_err'" = alloca i1, align 1
  %var._i270 = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %var._269 = alloca ptr, align 8
  %loop.step.703 = alloca i64, align 8
  %loop.idx.703 = alloca i64, align 8
  %var.files = alloca ptr, align 8
  %var.err = alloca ptr, align 8
  %var._198 = alloca ptr, align 8
  %var.formatted = alloca ptr, align 8
  %var._153 = alloca ptr, align 8
  %var.res = alloca { i1, i64 }, align 8
  %var.src = alloca ptr, align 8
  %var.arg = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.701 = alloca i64, align 8
  %loop.idx.701 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.701, align 8
  br label %loop.header.701

loop.header.701:                                  ; preds = %loop.latch.701, %entry
  %counter.load = load i64, ptr %loop.idx.701, align 8
  br label %loop.body.701

loop.body.701:                                    ; preds = %loop.header.701
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.701, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load2 = load i64, ptr %"var.i'", align 8
  %var.load3 = load i64, ptr @sys_argc_global, align 8
  %cmptmp = icmp sge i64 %var.load2, %var.load3
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.701:                                ; No predecessors!
  br label %loop.exit.701

loop.latch.701:                                   ; preds = %choice.exit7
  %step.val = load i64, ptr %loop.step.701, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.701, align 8
  br label %loop.header.701

loop.exit.701:                                    ; preds = %choice.then, %loop.exit.nat.701
  %var.load140 = load i1, ptr %"var.from_stdin'", align 1
  br i1 %var.load140, label %choice.then141, label %choice.else142

choice.then:                                      ; preds = %loop.body.701
  br label %loop.exit.701

choice.exit:                                      ; preds = %loop.body.701
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
  %str.tag = lshr i64 %eq.lhs.len8, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit7:                                     ; preds = %choice.exit95, %choice.case61, %choice.case44, %choice.case27, %ret.dead
  %var.load139 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load139, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %loop.latch.701

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

str_ok:                                           ; preds = %tag.slow_check, %choice.exit
  %eq.rhs.len = load i64, ptr @str.81.struct, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len9, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.81.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len9)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
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
  %str.tag81 = lshr i64 %str.len.query79, 48
  %tag.immortal83 = icmp eq i64 %str.tag81, 0
  %active.gen84 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current85 = icmp eq i64 %str.tag81, %active.gen84
  %tag.fast.ok86 = or i1 %tag.immortal83, %tag.current85
  br i1 %tag.fast.ok86, label %str_ok82, label %tag.slow_check87

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

str_ok82:                                         ; preds = %tag.slow_check87, %choice.next62
  %cmptmp88 = icmp sgt i64 %str.len.query80, 0
  br i1 %cmptmp88, label %and.702.then, label %and.702.else

tag.slow_check87:                                 ; preds = %choice.next62
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag81)
  br label %str_ok82

and.702.then:                                     ; preds = %str_ok82
  %var.load89 = load ptr, ptr %var.arg, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 0
  %s.read.len90 = load i64, ptr %s.read.len, align 8
  %s.read.len91 = and i64 %s.read.len90, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 1
  %s.read.data92 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len91
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.702.else:                                     ; preds = %str_ok82
  br label %and.702.exit

and.702.exit:                                     ; preds = %and.702.else, %idx_ok
  %and.702.phi = phi i1 [ %cmptmp93, %idx_ok ], [ %cmptmp88, %and.702.else ]
  br i1 %and.702.phi, label %choice.then94, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.702.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data92, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp93 = icmp eq i64 %s.byte.val, 45
  br label %and.702.exit

idx_oob:                                          ; preds = %and.702.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then94:                                    ; preds = %and.702.exit
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.86.struct, i32 0, i32 1), align 8
  %var.load96 = load ptr, ptr %var.arg, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load96, i32 0, i32 0
  %cat.seg97 = load i64, ptr %cat.seg, align 8
  %cat.seg98 = and i64 %cat.seg97, 281474976710655
  %str.tag99 = lshr i64 %cat.seg97, 48
  %tag.immortal101 = icmp eq i64 %str.tag99, 0
  %active.gen102 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current103 = icmp eq i64 %str.tag99, %active.gen102
  %tag.fast.ok104 = or i1 %tag.immortal101, %tag.current103
  br i1 %tag.fast.ok104, label %str_ok100, label %tag.slow_check105

choice.else:                                      ; preds = %and.702.exit
  %var.load127 = load ptr, ptr %var.arg, align 8
  %a.load = load ptr, ptr %var.targets, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit95:                                    ; preds = %a.store, %ret.dead126
  br label %choice.exit7

str_ok100:                                        ; preds = %tag.slow_check105, %choice.then94
  %cat.seg106 = getelementptr inbounds { i64, ptr }, ptr %var.load96, i32 0, i32 1
  %cat.seg107 = load ptr, ptr %cat.seg106, align 8
  %cat.lit.data108 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.87.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 26, i64 %cat.seg98)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len109

tag.slow_check105:                                ; preds = %choice.then94
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag99)
  br label %str_ok100

cat.sum.len109:                                   ; preds = %abort.dead110, %str_ok100
  %cat.sum.len111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum112 = extractvalue { i64, i1 } %cat.sum.len111, 0
  %ovf113 = extractvalue { i64, i1 } %cat.sum.len111, 1
  br i1 %ovf113, label %str_overflow_abort115, label %cat.sum.len114

str_overflow_abort:                               ; preds = %str_ok100
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead110:                                    ; No predecessors!
  br label %cat.sum.len109

cat.sum.len114:                                   ; preds = %abort.dead116, %cat.sum.len109
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum112, i64 1)
  %sum117 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf118 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf118, label %str_overflow_abort120, label %concat.tot.len119

str_overflow_abort115:                            ; preds = %cat.sum.len109
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead116:                                    ; No predecessors!
  br label %cat.sum.len114

concat.tot.len119:                                ; preds = %abort.dead121, %cat.sum.len114
  %arena.cur122 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 %sum117)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 26, i1 false)
  %cat.dst123 = getelementptr i8, ptr %concat.buf, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst123, ptr align 1 %cat.seg107, i64 %cat.seg98, i1 false)
  %cat.off = add i64 26, %cat.seg98
  %cat.dst124 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst124, ptr align 1 %cat.lit.data108, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum112
  store i8 0, ptr %concat.nul, align 1
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum112, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"log::error"(ptr %concat.str)
  ret i64 1

str_overflow_abort120:                            ; preds = %cat.sum.len114
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead121:                                    ; No predecessors!
  br label %concat.tot.len119

ret.dead126:                                      ; No predecessors!
  br label %choice.exit95

a.create:                                         ; preds = %choice.else
  %arena.cur128 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 24)
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 128)
  %a.len.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create129, i32 0, i32 0
  store i64 0, ptr %a.len.gep132, align 8
  %a.data.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create129, i32 0, i32 1
  store ptr %a.buf131, ptr %a.data.gep133, align 8
  %a.cap.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create129, i32 0, i32 2
  store i64 16, ptr %a.cap.gep134, align 8
  store ptr %a.create129, ptr %var.targets, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.targets, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len135 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap136 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len135, %a.cap136
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data137 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len138 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data137, i64 %a.cur.len138
  %slot.p2i = ptrtoint ptr %var.load127 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len138, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit95

choice.then141:                                   ; preds = %loop.exit.701
  %call.res144 = call { i64, ptr } @"formatter::read_stdin_all"()
  %arena.cur145 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 16)
  store { i64, ptr } %call.res144, ptr %ret.ub.alloc146, align 8
  store ptr %ret.ub.alloc146, ptr %var.src, align 8
  %var.load147 = load ptr, ptr %var.src, align 8
  %call.res148 = call { i1, i64 } @"formatter::format_source"(ptr %var.load147, ptr @str.88.struct)
  store { i1, i64 } %call.res148, ptr %var.res, align 8
  %var.load149 = load { i1, i64 }, ptr %var.res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load149, 0
  br i1 %ram.tag, label %choice.then150, label %choice.else151

choice.else142:                                   ; preds = %loop.exit.701
  %var.load201 = load ptr, ptr %var.targets, align 8
  %a.load202 = load ptr, ptr %var.targets, align 8
  %a.null203 = icmp eq ptr %a.load202, null
  br i1 %a.null203, label %a.create204, label %a.after205

choice.exit143:                                   ; preds = %choice.exit357, %choice.exit152
  %choice.res569 = phi i64 [ %choice.res200, %choice.exit152 ], [ %choice.res568, %choice.exit357 ]
  ret i64 %choice.res569

choice.then150:                                   ; preds = %choice.then141
  %ram.pay = extractvalue { i1, i64 } %var.load149, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._153, align 8
  store ptr %pay.ptr, ptr %var.formatted, align 8
  %var.load154 = load i1, ptr %"var.check_only'", align 1
  br i1 %var.load154, label %choice.then155, label %choice.else156

choice.else151:                                   ; preds = %choice.then141
  %ram.pay196 = extractvalue { i1, i64 } %var.load149, 1
  %pay.ptr197 = inttoptr i64 %ram.pay196 to ptr
  store ptr %pay.ptr197, ptr %var._198, align 8
  store ptr %pay.ptr197, ptr %var.err, align 8
  %var.load199 = load ptr, ptr %var.err, align 8
  call void @"log::error"(ptr %var.load199)
  br label %choice.exit152

choice.exit152:                                   ; preds = %choice.else151, %choice.exit157
  %choice.res200 = phi i64 [ %choice.res195, %choice.exit157 ], [ 1, %choice.else151 ]
  br label %choice.exit143

choice.then155:                                   ; preds = %choice.then150
  %var.load158 = load ptr, ptr %var.formatted, align 8
  %var.load159 = load ptr, ptr %var.src, align 8
  %eq.lhs.len160 = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 0
  %eq.lhs.len161 = load i64, ptr %eq.lhs.len160, align 8
  %eq.lhs.len162 = and i64 %eq.lhs.len161, 281474976710655
  %str.tag163 = lshr i64 %eq.lhs.len161, 48
  %tag.immortal165 = icmp eq i64 %str.tag163, 0
  %active.gen166 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current167 = icmp eq i64 %str.tag163, %active.gen166
  %tag.fast.ok168 = or i1 %tag.immortal165, %tag.current167
  br i1 %tag.fast.ok168, label %str_ok164, label %tag.slow_check169

choice.else156:                                   ; preds = %choice.then150
  %var.load194 = load ptr, ptr %var.formatted, align 8
  call void @"formatter::write_stdout"(ptr %var.load194)
  br label %choice.exit157

choice.exit157:                                   ; preds = %choice.else156, %choice.exit193
  %choice.res195 = phi i64 [ %choice.res, %choice.exit193 ], [ 0, %choice.else156 ]
  br label %choice.exit152

str_ok164:                                        ; preds = %tag.slow_check169, %choice.then155
  %eq.rhs.len170 = getelementptr inbounds { i64, ptr }, ptr %var.load159, i32 0, i32 0
  %eq.rhs.len171 = load i64, ptr %eq.rhs.len170, align 8
  %eq.rhs.len172 = and i64 %eq.rhs.len171, 281474976710655
  %str.tag173 = lshr i64 %eq.rhs.len171, 48
  %tag.immortal175 = icmp eq i64 %str.tag173, 0
  %active.gen176 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current177 = icmp eq i64 %str.tag173, %active.gen176
  %tag.fast.ok178 = or i1 %tag.immortal175, %tag.current177
  br i1 %tag.fast.ok178, label %str_ok174, label %tag.slow_check179

tag.slow_check169:                                ; preds = %choice.then155
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag163)
  br label %str_ok164

str_ok174:                                        ; preds = %tag.slow_check179, %str_ok164
  %eq.len180 = icmp eq i64 %eq.lhs.len162, %eq.rhs.len172
  br i1 %eq.len180, label %str.eq.then181, label %str.eq.else182

tag.slow_check179:                                ; preds = %str_ok164
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag173)
  br label %str_ok174

str.eq.then181:                                   ; preds = %str_ok174
  %eq.lhs.data184 = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 1
  %eq.lhs.data185 = load ptr, ptr %eq.lhs.data184, align 8
  %eq.rhs.data186 = getelementptr inbounds { i64, ptr }, ptr %var.load159, i32 0, i32 1
  %eq.rhs.data187 = load ptr, ptr %eq.rhs.data186, align 8
  %eq.memcmp188 = call i32 @memcmp(ptr %eq.lhs.data185, ptr %eq.rhs.data187, i64 %eq.lhs.len162)
  %eq.cmp.zero189 = icmp eq i32 %eq.memcmp188, 0
  br label %str.eq.merge183

str.eq.else182:                                   ; preds = %str_ok174
  br label %str.eq.merge183

str.eq.merge183:                                  ; preds = %str.eq.else182, %str.eq.then181
  %str.eq.result190 = phi i1 [ %eq.cmp.zero189, %str.eq.then181 ], [ false, %str.eq.else182 ]
  br i1 %str.eq.result190, label %choice.then191, label %choice.else192

choice.then191:                                   ; preds = %str.eq.merge183
  br label %choice.exit193

choice.else192:                                   ; preds = %str.eq.merge183
  br label %choice.exit193

choice.exit193:                                   ; preds = %choice.else192, %choice.then191
  %choice.res = phi i64 [ 0, %choice.then191 ], [ 1, %choice.else192 ]
  br label %choice.exit157

a.create204:                                      ; preds = %choice.else142
  %arena.cur206 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 24)
  %arena.cur208 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 128)
  %a.len.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create207, i32 0, i32 0
  store i64 0, ptr %a.len.gep210, align 8
  %a.data.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create207, i32 0, i32 1
  store ptr %a.buf209, ptr %a.data.gep211, align 8
  %a.cap.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create207, i32 0, i32 2
  store i64 16, ptr %a.cap.gep212, align 8
  store ptr %a.create207, ptr %var.targets, align 8
  br label %a.after205

a.after205:                                       ; preds = %a.create204, %choice.else142
  %a.load2213 = load ptr, ptr %var.targets, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2213, i32 0, i32 0
  %a.len.query214 = load i64, ptr %a.len.query, align 8
  %cmptmp215 = icmp eq i64 %a.len.query214, 0
  br i1 %cmptmp215, label %choice.then216, label %choice.exit217

choice.then216:                                   ; preds = %a.after205
  %a.load218 = load ptr, ptr %var.targets, align 8
  %a.null219 = icmp eq ptr %a.load218, null
  br i1 %a.null219, label %a.create220, label %a.after221

choice.exit217:                                   ; preds = %a.store232, %a.after205
  %arena.cur245 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 24)
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 128)
  %a.len.gep249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new246, i32 0, i32 0
  store i64 0, ptr %a.len.gep249, align 8
  %a.data.gep250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new246, i32 0, i32 1
  store ptr %a.buf248, ptr %a.data.gep250, align 8
  %a.cap.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new246, i32 0, i32 2
  store i64 16, ptr %a.cap.gep251, align 8
  store ptr %a.new246, ptr %var.files, align 8
  %var.load252 = load ptr, ptr %var.targets, align 8
  %a.load253 = load ptr, ptr %var.targets, align 8
  %a.null254 = icmp eq ptr %a.load253, null
  br i1 %a.null254, label %a.create255, label %a.after256

a.create220:                                      ; preds = %choice.then216
  %arena.cur222 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 24)
  %arena.cur224 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf225 = call ptr @dva_arena_alloc(ptr %arena.cur224, i64 128)
  %a.len.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create223, i32 0, i32 0
  store i64 0, ptr %a.len.gep226, align 8
  %a.data.gep227 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create223, i32 0, i32 1
  store ptr %a.buf225, ptr %a.data.gep227, align 8
  %a.cap.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create223, i32 0, i32 2
  store i64 16, ptr %a.cap.gep228, align 8
  store ptr %a.create223, ptr %var.targets, align 8
  br label %a.after221

a.after221:                                       ; preds = %a.create220, %choice.then216
  %a.load2229 = load ptr, ptr %var.targets, align 8
  br label %a.check230

a.check230:                                       ; preds = %a.after221
  %a.len233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2229, i32 0, i32 0
  %a.len234 = load i64, ptr %a.len233, align 8
  %a.cap235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2229, i32 0, i32 2
  %a.cap236 = load i64, ptr %a.cap235, align 8
  %a.needs.grow237 = icmp eq i64 %a.len234, %a.cap236
  br i1 %a.needs.grow237, label %a.grow231, label %a.store232

a.grow231:                                        ; preds = %a.check230
  call void @dva_array_grow(ptr %a.load2229)
  br label %a.store232

a.store232:                                       ; preds = %a.grow231, %a.check230
  %a.cur.data238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2229, i32 0, i32 1
  %a.cur.data239 = load ptr, ptr %a.cur.data238, align 8
  %a.cur.len240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2229, i32 0, i32 0
  %a.cur.len241 = load i64, ptr %a.cur.len240, align 8
  %a.elem.gep242 = getelementptr i64, ptr %a.cur.data239, i64 %a.cur.len241
  store i64 ptrtoint (ptr @str.89.struct to i64), ptr %a.elem.gep242, align 8
  %a.next.len243 = add i64 %a.cur.len241, 1
  %b.len.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2229, i32 0, i32 0
  store i64 %a.next.len243, ptr %b.len.gep244, align 8
  br label %choice.exit217

a.create255:                                      ; preds = %choice.exit217
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
  store ptr %a.create258, ptr %var.targets, align 8
  br label %a.after256

a.after256:                                       ; preds = %a.create255, %choice.exit217
  %a.load2264 = load ptr, ptr %var.targets, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2264, i32 0, i32 0
  %arr.cycle.len265 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2264, i32 0, i32 1
  %arr.cycle.data266 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.703, align 8
  br label %loop.header.703

loop.header.703:                                  ; preds = %loop.latch.703, %a.after256
  %counter.load267 = load i64, ptr %loop.idx.703, align 8
  %loop.cond = icmp slt i64 %counter.load267, %arr.cycle.len265
  br i1 %loop.cond, label %loop.body.703, label %loop.exit.nat.703

loop.body.703:                                    ; preds = %loop.header.703
  %loop.rel.i268 = sub i64 %counter.load267, 0
  store i64 1, ptr %loop.step.703, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data266, i64 %counter.load267
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._269, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  store i64 %loop.rel.i268, ptr %var._i270, align 8
  %var.load271 = load ptr, ptr %var.t, align 8
  %call.res272 = call i1 @"fs::exists"(ptr %var.load271)
  %nottmp = xor i1 %call.res272, true
  br i1 %nottmp, label %choice.then273, label %choice.exit274

loop.exit.nat.703:                                ; preds = %loop.header.703
  br label %loop.exit.703

loop.latch.703:                                   ; preds = %a.after328
  %step.val337 = load i64, ptr %loop.step.703, align 8
  %loop.next338 = add i64 %counter.load267, %step.val337
  store i64 %loop.next338, ptr %loop.idx.703, align 8
  br label %loop.header.703

loop.exit.703:                                    ; preds = %loop.exit.nat.703
  %var.load339 = load ptr, ptr %var.files, align 8
  %a.load340 = load ptr, ptr %var.files, align 8
  %a.null341 = icmp eq ptr %a.load340, null
  br i1 %a.null341, label %a.create342, label %a.after343

choice.then273:                                   ; preds = %loop.body.703
  %cat.lit.data275 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.90.struct, i32 0, i32 1), align 8
  %var.load276 = load ptr, ptr %var.t, align 8
  %cat.seg277 = getelementptr inbounds { i64, ptr }, ptr %var.load276, i32 0, i32 0
  %cat.seg278 = load i64, ptr %cat.seg277, align 8
  %cat.seg279 = and i64 %cat.seg278, 281474976710655
  %str.tag280 = lshr i64 %cat.seg278, 48
  %tag.immortal282 = icmp eq i64 %str.tag280, 0
  %active.gen283 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current284 = icmp eq i64 %str.tag280, %active.gen283
  %tag.fast.ok285 = or i1 %tag.immortal282, %tag.current284
  br i1 %tag.fast.ok285, label %str_ok281, label %tag.slow_check286

choice.exit274:                                   ; preds = %ret.dead322, %loop.body.703
  %var.load323 = load ptr, ptr %var.t, align 8
  %var.load324 = load ptr, ptr %var.files, align 8
  %a.load325 = load ptr, ptr %var.files, align 8
  %a.null326 = icmp eq ptr %a.load325, null
  br i1 %a.null326, label %a.create327, label %a.after328

str_ok281:                                        ; preds = %tag.slow_check286, %choice.then273
  %cat.seg287 = getelementptr inbounds { i64, ptr }, ptr %var.load276, i32 0, i32 1
  %cat.seg288 = load ptr, ptr %cat.seg287, align 8
  %cat.lit.data289 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.91.struct, i32 0, i32 1), align 8
  %cat.sum.len290 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 %cat.seg279)
  %sum291 = extractvalue { i64, i1 } %cat.sum.len290, 0
  %ovf292 = extractvalue { i64, i1 } %cat.sum.len290, 1
  br i1 %ovf292, label %str_overflow_abort294, label %cat.sum.len293

tag.slow_check286:                                ; preds = %choice.then273
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag280)
  br label %str_ok281

cat.sum.len293:                                   ; preds = %abort.dead295, %str_ok281
  %cat.sum.len296 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum291, i64 16)
  %sum297 = extractvalue { i64, i1 } %cat.sum.len296, 0
  %ovf298 = extractvalue { i64, i1 } %cat.sum.len296, 1
  br i1 %ovf298, label %str_overflow_abort300, label %cat.sum.len299

str_overflow_abort294:                            ; preds = %str_ok281
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead295:                                    ; No predecessors!
  br label %cat.sum.len293

cat.sum.len299:                                   ; preds = %abort.dead301, %cat.sum.len293
  %concat.tot.len302 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum297, i64 1)
  %sum303 = extractvalue { i64, i1 } %concat.tot.len302, 0
  %ovf304 = extractvalue { i64, i1 } %concat.tot.len302, 1
  br i1 %ovf304, label %str_overflow_abort306, label %concat.tot.len305

str_overflow_abort300:                            ; preds = %cat.sum.len293
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead301:                                    ; No predecessors!
  br label %cat.sum.len299

concat.tot.len305:                                ; preds = %abort.dead307, %cat.sum.len299
  %arena.cur308 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 %sum303)
  %cat.dst310 = getelementptr i8, ptr %concat.buf309, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst310, ptr align 1 %cat.lit.data275, i64 16, i1 false)
  %cat.dst311 = getelementptr i8, ptr %concat.buf309, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst311, ptr align 1 %cat.seg288, i64 %cat.seg279, i1 false)
  %cat.off312 = add i64 16, %cat.seg279
  %cat.dst313 = getelementptr i8, ptr %concat.buf309, i64 %cat.off312
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst313, ptr align 1 %cat.lit.data289, i64 16, i1 false)
  %concat.nul314 = getelementptr i8, ptr %concat.buf309, i64 %sum297
  store i8 0, ptr %concat.nul314, align 1
  %arena.cur315 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str316 = call ptr @dva_arena_alloc(ptr %arena.cur315, i64 16)
  %str.build.len.gep317 = getelementptr inbounds { i64, ptr }, ptr %concat.str316, i32 0, i32 0
  %str.tag.gen318 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift319 = shl i64 %str.tag.gen318, 48
  %str.tagged.len320 = or i64 %sum297, %str.tag.shift319
  store i64 %str.tagged.len320, ptr %str.build.len.gep317, align 8
  %str.build.data.gep321 = getelementptr inbounds { i64, ptr }, ptr %concat.str316, i32 0, i32 1
  store ptr %concat.buf309, ptr %str.build.data.gep321, align 8
  call void @"log::error"(ptr %concat.str316)
  ret i64 1

str_overflow_abort306:                            ; preds = %cat.sum.len299
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead307:                                    ; No predecessors!
  br label %concat.tot.len305

ret.dead322:                                      ; No predecessors!
  br label %choice.exit274

a.create327:                                      ; preds = %choice.exit274
  %arena.cur329 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create330 = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 24)
  %arena.cur331 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf332 = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 128)
  %a.len.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create330, i32 0, i32 0
  store i64 0, ptr %a.len.gep333, align 8
  %a.data.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create330, i32 0, i32 1
  store ptr %a.buf332, ptr %a.data.gep334, align 8
  %a.cap.gep335 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create330, i32 0, i32 2
  store i64 16, ptr %a.cap.gep335, align 8
  store ptr %a.create330, ptr %var.files, align 8
  br label %a.after328

a.after328:                                       ; preds = %a.create327, %choice.exit274
  %a.load2336 = load ptr, ptr %var.files, align 8
  call void @"formatter::collect_dva_files"(ptr %var.load323, ptr %a.load2336)
  br label %loop.latch.703

a.create342:                                      ; preds = %loop.exit.703
  %arena.cur344 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create345 = call ptr @dva_arena_alloc(ptr %arena.cur344, i64 24)
  %arena.cur346 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf347 = call ptr @dva_arena_alloc(ptr %arena.cur346, i64 128)
  %a.len.gep348 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create345, i32 0, i32 0
  store i64 0, ptr %a.len.gep348, align 8
  %a.data.gep349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create345, i32 0, i32 1
  store ptr %a.buf347, ptr %a.data.gep349, align 8
  %a.cap.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create345, i32 0, i32 2
  store i64 16, ptr %a.cap.gep350, align 8
  store ptr %a.create345, ptr %var.files, align 8
  br label %a.after343

a.after343:                                       ; preds = %a.create342, %loop.exit.703
  %a.load2351 = load ptr, ptr %var.files, align 8
  %a.len.query352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2351, i32 0, i32 0
  %a.len.query353 = load i64, ptr %a.len.query352, align 8
  %cmptmp354 = icmp eq i64 %a.len.query353, 0
  br i1 %cmptmp354, label %choice.then355, label %choice.else356

choice.then355:                                   ; preds = %a.after343
  call void @"log::error"(ptr @str.92.struct)
  br label %choice.exit357

choice.else356:                                   ; preds = %a.after343
  store i1 false, ptr %"var.had_err'", align 1
  store i64 0, ptr %"var.unformatted'", align 8
  %var.load358 = load ptr, ptr %var.files, align 8
  %a.load359 = load ptr, ptr %var.files, align 8
  %a.null360 = icmp eq ptr %a.load359, null
  br i1 %a.null360, label %a.create361, label %a.after362

choice.exit357:                                   ; preds = %choice.exit566, %choice.then355
  %choice.res568 = phi i64 [ 1, %choice.then355 ], [ %choice.res567, %choice.exit566 ]
  br label %choice.exit143

a.create361:                                      ; preds = %choice.else356
  %arena.cur363 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create364 = call ptr @dva_arena_alloc(ptr %arena.cur363, i64 24)
  %arena.cur365 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf366 = call ptr @dva_arena_alloc(ptr %arena.cur365, i64 128)
  %a.len.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 0
  store i64 0, ptr %a.len.gep367, align 8
  %a.data.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 1
  store ptr %a.buf366, ptr %a.data.gep368, align 8
  %a.cap.gep369 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 2
  store i64 16, ptr %a.cap.gep369, align 8
  store ptr %a.create364, ptr %var.files, align 8
  br label %a.after362

a.after362:                                       ; preds = %a.create361, %choice.else356
  %a.load2370 = load ptr, ptr %var.files, align 8
  %arr.cycle.len371 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 0
  %arr.cycle.len372 = load i64, ptr %arr.cycle.len371, align 8
  %arr.cycle.data373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 1
  %arr.cycle.data374 = load ptr, ptr %arr.cycle.data373, align 8
  store i64 0, ptr %loop.idx.704, align 8
  br label %loop.header.704

loop.header.704:                                  ; preds = %loop.latch.704, %a.after362
  %counter.load375 = load i64, ptr %loop.idx.704, align 8
  %loop.cond376 = icmp slt i64 %counter.load375, %arr.cycle.len372
  br i1 %loop.cond376, label %loop.body.704, label %loop.exit.nat.704

loop.body.704:                                    ; preds = %loop.header.704
  %loop.rel.i377 = sub i64 %counter.load375, 0
  store i64 1, ptr %loop.step.704, align 8
  %arr.elem.gep378 = getelementptr i64, ptr %arr.cycle.data374, i64 %counter.load375
  %arr.elem.raw379 = load i64, ptr %arr.elem.gep378, align 8
  %slot.i2p380 = inttoptr i64 %arr.elem.raw379 to ptr
  store ptr %slot.i2p380, ptr %var._381, align 8
  store ptr %slot.i2p380, ptr %var.f, align 8
  store i64 %loop.rel.i377, ptr %var._i382, align 8
  %var.load383 = load ptr, ptr %var.f, align 8
  %call.res384 = call { i64, ptr } @"fs::read_to_string"(ptr %var.load383)
  %ret.niche.data = extractvalue { i64, ptr } %call.res384, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

loop.exit.nat.704:                                ; preds = %loop.header.704
  br label %loop.exit.704

loop.latch.704:                                   ; preds = %choice.exit389
  %step.val559 = load i64, ptr %loop.step.704, align 8
  %loop.next560 = add i64 %counter.load375, %step.val559
  store i64 %loop.next560, ptr %loop.idx.704, align 8
  br label %loop.header.704

loop.exit.704:                                    ; preds = %loop.exit.nat.704
  %var.load561 = load i1, ptr %"var.had_err'", align 1
  br i1 %var.load561, label %or.705.then, label %or.705.else

ret.niche.alloc:                                  ; preds = %loop.body.704
  %arena.cur385 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 16)
  store { i64, ptr } %call.res384, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %loop.body.704
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %loop.body.704 ]
  store ptr %ret.niche.ptr, ptr %var.src_opt, align 8
  %var.load386 = load ptr, ptr %var.src_opt, align 8
  %niche.ne.null = icmp ne ptr %var.load386, null
  br i1 %niche.ne.null, label %choice.then387, label %choice.else388

choice.then387:                                   ; preds = %ret.niche.done
  store ptr %var.load386, ptr %var._390, align 8
  store ptr %var.load386, ptr %var.src391, align 8
  %var.load392 = load ptr, ptr %var.src391, align 8
  %var.load393 = load ptr, ptr %var.f, align 8
  %call.res394 = call { i1, i64 } @"formatter::format_source"(ptr %var.load392, ptr %var.load393)
  store { i1, i64 } %call.res394, ptr %var.res395, align 8
  %var.load396 = load { i1, i64 }, ptr %var.res395, align 8
  %ram.tag397 = extractvalue { i1, i64 } %var.load396, 0
  br i1 %ram.tag397, label %choice.then398, label %choice.else399

choice.else388:                                   ; preds = %ret.niche.done
  %cat.lit.data512 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.94.struct, i32 0, i32 1), align 8
  %var.load513 = load ptr, ptr %var.f, align 8
  %cat.seg514 = getelementptr inbounds { i64, ptr }, ptr %var.load513, i32 0, i32 0
  %cat.seg515 = load i64, ptr %cat.seg514, align 8
  %cat.seg516 = and i64 %cat.seg515, 281474976710655
  %str.tag517 = lshr i64 %cat.seg515, 48
  %tag.immortal519 = icmp eq i64 %str.tag517, 0
  %active.gen520 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current521 = icmp eq i64 %str.tag517, %active.gen520
  %tag.fast.ok522 = or i1 %tag.immortal519, %tag.current521
  br i1 %tag.fast.ok522, label %str_ok518, label %tag.slow_check523

choice.exit389:                                   ; preds = %concat.tot.len542, %choice.exit400
  br label %loop.latch.704

choice.then398:                                   ; preds = %choice.then387
  %ram.pay401 = extractvalue { i1, i64 } %var.load396, 1
  %pay.ptr402 = inttoptr i64 %ram.pay401 to ptr
  store ptr %pay.ptr402, ptr %var._403, align 8
  store ptr %pay.ptr402, ptr %var.formatted404, align 8
  %var.load405 = load i1, ptr %"var.to_stdout'", align 1
  br i1 %var.load405, label %choice.then406, label %choice.else407

choice.else399:                                   ; preds = %choice.then387
  %ram.pay507 = extractvalue { i1, i64 } %var.load396, 1
  %pay.ptr508 = inttoptr i64 %ram.pay507 to ptr
  store ptr %pay.ptr508, ptr %var._509, align 8
  store ptr %pay.ptr508, ptr %var.err510, align 8
  %var.load511 = load ptr, ptr %var.err510, align 8
  call void @"log::error"(ptr %var.load511)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit400

choice.exit400:                                   ; preds = %choice.else399, %choice.exit408
  br label %choice.exit389

choice.then406:                                   ; preds = %choice.then398
  %var.load409 = load ptr, ptr %var.formatted404, align 8
  call void @"formatter::write_stdout"(ptr %var.load409)
  br label %choice.exit408

choice.else407:                                   ; preds = %choice.then398
  %var.load410 = load ptr, ptr %var.formatted404, align 8
  %var.load411 = load ptr, ptr %var.src391, align 8
  %eq.lhs.len412 = getelementptr inbounds { i64, ptr }, ptr %var.load410, i32 0, i32 0
  %eq.lhs.len413 = load i64, ptr %eq.lhs.len412, align 8
  %eq.lhs.len414 = and i64 %eq.lhs.len413, 281474976710655
  %str.tag415 = lshr i64 %eq.lhs.len413, 48
  %tag.immortal417 = icmp eq i64 %str.tag415, 0
  %active.gen418 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current419 = icmp eq i64 %str.tag415, %active.gen418
  %tag.fast.ok420 = or i1 %tag.immortal417, %tag.current419
  br i1 %tag.fast.ok420, label %str_ok416, label %tag.slow_check421

choice.exit408:                                   ; preds = %choice.exit444, %choice.then406
  br label %choice.exit400

str_ok416:                                        ; preds = %tag.slow_check421, %choice.else407
  %eq.rhs.len422 = getelementptr inbounds { i64, ptr }, ptr %var.load411, i32 0, i32 0
  %eq.rhs.len423 = load i64, ptr %eq.rhs.len422, align 8
  %eq.rhs.len424 = and i64 %eq.rhs.len423, 281474976710655
  %str.tag425 = lshr i64 %eq.rhs.len423, 48
  %tag.immortal427 = icmp eq i64 %str.tag425, 0
  %active.gen428 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current429 = icmp eq i64 %str.tag425, %active.gen428
  %tag.fast.ok430 = or i1 %tag.immortal427, %tag.current429
  br i1 %tag.fast.ok430, label %str_ok426, label %tag.slow_check431

tag.slow_check421:                                ; preds = %choice.else407
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag415)
  br label %str_ok416

str_ok426:                                        ; preds = %tag.slow_check431, %str_ok416
  %eq.len432 = icmp eq i64 %eq.lhs.len414, %eq.rhs.len424
  br i1 %eq.len432, label %str.eq.then433, label %str.eq.else434

tag.slow_check431:                                ; preds = %str_ok416
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag425)
  br label %str_ok426

str.eq.then433:                                   ; preds = %str_ok426
  %eq.lhs.data436 = getelementptr inbounds { i64, ptr }, ptr %var.load410, i32 0, i32 1
  %eq.lhs.data437 = load ptr, ptr %eq.lhs.data436, align 8
  %eq.rhs.data438 = getelementptr inbounds { i64, ptr }, ptr %var.load411, i32 0, i32 1
  %eq.rhs.data439 = load ptr, ptr %eq.rhs.data438, align 8
  %eq.memcmp440 = call i32 @memcmp(ptr %eq.lhs.data437, ptr %eq.rhs.data439, i64 %eq.lhs.len414)
  %eq.cmp.zero441 = icmp eq i32 %eq.memcmp440, 0
  br label %str.eq.merge435

str.eq.else434:                                   ; preds = %str_ok426
  br label %str.eq.merge435

str.eq.merge435:                                  ; preds = %str.eq.else434, %str.eq.then433
  %str.eq.result442 = phi i1 [ %eq.cmp.zero441, %str.eq.then433 ], [ false, %str.eq.else434 ]
  %str.neq = xor i1 %str.eq.result442, true
  br i1 %str.neq, label %choice.then443, label %choice.exit444

choice.then443:                                   ; preds = %str.eq.merge435
  %var.load445 = load i1, ptr %"var.check_only'", align 1
  br i1 %var.load445, label %choice.then446, label %choice.else447

choice.exit444:                                   ; preds = %choice.exit448, %str.eq.merge435
  br label %choice.exit408

choice.then446:                                   ; preds = %choice.then443
  %var.load449 = load ptr, ptr %var.f, align 8
  call void @"formatter::print_line"(ptr %var.load449)
  %var.load450 = load i64, ptr %"var.unformatted'", align 8
  %addtmp451 = add i64 %var.load450, 1
  store i64 %addtmp451, ptr %"var.unformatted'", align 8
  br label %choice.exit448

choice.else447:                                   ; preds = %choice.then443
  %var.load452 = load ptr, ptr %var.f, align 8
  %var.load453 = load ptr, ptr %var.formatted404, align 8
  %call.res454 = call i1 @"fs::write_file"(ptr %var.load452, ptr %var.load453)
  %nottmp455 = xor i1 %call.res454, true
  br i1 %nottmp455, label %choice.then456, label %choice.else457

choice.exit448:                                   ; preds = %choice.exit458, %choice.then446
  br label %choice.exit444

choice.then456:                                   ; preds = %choice.else447
  %cat.lit.data459 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.93.struct, i32 0, i32 1), align 8
  %var.load460 = load ptr, ptr %var.f, align 8
  %cat.seg461 = getelementptr inbounds { i64, ptr }, ptr %var.load460, i32 0, i32 0
  %cat.seg462 = load i64, ptr %cat.seg461, align 8
  %cat.seg463 = and i64 %cat.seg462, 281474976710655
  %str.tag464 = lshr i64 %cat.seg462, 48
  %tag.immortal466 = icmp eq i64 %str.tag464, 0
  %active.gen467 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current468 = icmp eq i64 %str.tag464, %active.gen467
  %tag.fast.ok469 = or i1 %tag.immortal466, %tag.current468
  br i1 %tag.fast.ok469, label %str_ok465, label %tag.slow_check470

choice.else457:                                   ; preds = %choice.else447
  %var.load506 = load ptr, ptr %var.f, align 8
  call void @"formatter::print_line"(ptr %var.load506)
  br label %choice.exit458

choice.exit458:                                   ; preds = %choice.else457, %concat.tot.len489
  br label %choice.exit448

str_ok465:                                        ; preds = %tag.slow_check470, %choice.then456
  %cat.seg471 = getelementptr inbounds { i64, ptr }, ptr %var.load460, i32 0, i32 1
  %cat.seg472 = load ptr, ptr %cat.seg471, align 8
  %cat.lit.data473 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.87.struct, i32 0, i32 1), align 8
  %cat.sum.len474 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 27, i64 %cat.seg463)
  %sum475 = extractvalue { i64, i1 } %cat.sum.len474, 0
  %ovf476 = extractvalue { i64, i1 } %cat.sum.len474, 1
  br i1 %ovf476, label %str_overflow_abort478, label %cat.sum.len477

tag.slow_check470:                                ; preds = %choice.then456
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag464)
  br label %str_ok465

cat.sum.len477:                                   ; preds = %abort.dead479, %str_ok465
  %cat.sum.len480 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum475, i64 1)
  %sum481 = extractvalue { i64, i1 } %cat.sum.len480, 0
  %ovf482 = extractvalue { i64, i1 } %cat.sum.len480, 1
  br i1 %ovf482, label %str_overflow_abort484, label %cat.sum.len483

str_overflow_abort478:                            ; preds = %str_ok465
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead479:                                    ; No predecessors!
  br label %cat.sum.len477

cat.sum.len483:                                   ; preds = %abort.dead485, %cat.sum.len477
  %concat.tot.len486 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum481, i64 1)
  %sum487 = extractvalue { i64, i1 } %concat.tot.len486, 0
  %ovf488 = extractvalue { i64, i1 } %concat.tot.len486, 1
  br i1 %ovf488, label %str_overflow_abort490, label %concat.tot.len489

str_overflow_abort484:                            ; preds = %cat.sum.len477
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead485:                                    ; No predecessors!
  br label %cat.sum.len483

concat.tot.len489:                                ; preds = %abort.dead491, %cat.sum.len483
  %arena.cur492 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf493 = call ptr @dva_arena_alloc(ptr %arena.cur492, i64 %sum487)
  %cat.dst494 = getelementptr i8, ptr %concat.buf493, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst494, ptr align 1 %cat.lit.data459, i64 27, i1 false)
  %cat.dst495 = getelementptr i8, ptr %concat.buf493, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst495, ptr align 1 %cat.seg472, i64 %cat.seg463, i1 false)
  %cat.off496 = add i64 27, %cat.seg463
  %cat.dst497 = getelementptr i8, ptr %concat.buf493, i64 %cat.off496
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst497, ptr align 1 %cat.lit.data473, i64 1, i1 false)
  %concat.nul498 = getelementptr i8, ptr %concat.buf493, i64 %sum481
  store i8 0, ptr %concat.nul498, align 1
  %arena.cur499 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str500 = call ptr @dva_arena_alloc(ptr %arena.cur499, i64 16)
  %str.build.len.gep501 = getelementptr inbounds { i64, ptr }, ptr %concat.str500, i32 0, i32 0
  %str.tag.gen502 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift503 = shl i64 %str.tag.gen502, 48
  %str.tagged.len504 = or i64 %sum481, %str.tag.shift503
  store i64 %str.tagged.len504, ptr %str.build.len.gep501, align 8
  %str.build.data.gep505 = getelementptr inbounds { i64, ptr }, ptr %concat.str500, i32 0, i32 1
  store ptr %concat.buf493, ptr %str.build.data.gep505, align 8
  call void @"log::error"(ptr %concat.str500)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit458

str_overflow_abort490:                            ; preds = %cat.sum.len483
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead491:                                    ; No predecessors!
  br label %concat.tot.len489

str_ok518:                                        ; preds = %tag.slow_check523, %choice.else388
  %cat.seg524 = getelementptr inbounds { i64, ptr }, ptr %var.load513, i32 0, i32 1
  %cat.seg525 = load ptr, ptr %cat.seg524, align 8
  %cat.lit.data526 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.87.struct, i32 0, i32 1), align 8
  %cat.sum.len527 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 26, i64 %cat.seg516)
  %sum528 = extractvalue { i64, i1 } %cat.sum.len527, 0
  %ovf529 = extractvalue { i64, i1 } %cat.sum.len527, 1
  br i1 %ovf529, label %str_overflow_abort531, label %cat.sum.len530

tag.slow_check523:                                ; preds = %choice.else388
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag517)
  br label %str_ok518

cat.sum.len530:                                   ; preds = %abort.dead532, %str_ok518
  %cat.sum.len533 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum528, i64 1)
  %sum534 = extractvalue { i64, i1 } %cat.sum.len533, 0
  %ovf535 = extractvalue { i64, i1 } %cat.sum.len533, 1
  br i1 %ovf535, label %str_overflow_abort537, label %cat.sum.len536

str_overflow_abort531:                            ; preds = %str_ok518
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead532:                                    ; No predecessors!
  br label %cat.sum.len530

cat.sum.len536:                                   ; preds = %abort.dead538, %cat.sum.len530
  %concat.tot.len539 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum534, i64 1)
  %sum540 = extractvalue { i64, i1 } %concat.tot.len539, 0
  %ovf541 = extractvalue { i64, i1 } %concat.tot.len539, 1
  br i1 %ovf541, label %str_overflow_abort543, label %concat.tot.len542

str_overflow_abort537:                            ; preds = %cat.sum.len530
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead538:                                    ; No predecessors!
  br label %cat.sum.len536

concat.tot.len542:                                ; preds = %abort.dead544, %cat.sum.len536
  %arena.cur545 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf546 = call ptr @dva_arena_alloc(ptr %arena.cur545, i64 %sum540)
  %cat.dst547 = getelementptr i8, ptr %concat.buf546, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst547, ptr align 1 %cat.lit.data512, i64 26, i1 false)
  %cat.dst548 = getelementptr i8, ptr %concat.buf546, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst548, ptr align 1 %cat.seg525, i64 %cat.seg516, i1 false)
  %cat.off549 = add i64 26, %cat.seg516
  %cat.dst550 = getelementptr i8, ptr %concat.buf546, i64 %cat.off549
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst550, ptr align 1 %cat.lit.data526, i64 1, i1 false)
  %concat.nul551 = getelementptr i8, ptr %concat.buf546, i64 %sum534
  store i8 0, ptr %concat.nul551, align 1
  %arena.cur552 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str553 = call ptr @dva_arena_alloc(ptr %arena.cur552, i64 16)
  %str.build.len.gep554 = getelementptr inbounds { i64, ptr }, ptr %concat.str553, i32 0, i32 0
  %str.tag.gen555 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift556 = shl i64 %str.tag.gen555, 48
  %str.tagged.len557 = or i64 %sum534, %str.tag.shift556
  store i64 %str.tagged.len557, ptr %str.build.len.gep554, align 8
  %str.build.data.gep558 = getelementptr inbounds { i64, ptr }, ptr %concat.str553, i32 0, i32 1
  store ptr %concat.buf546, ptr %str.build.data.gep558, align 8
  call void @"log::error"(ptr %concat.str553)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit389

str_overflow_abort543:                            ; preds = %cat.sum.len536
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead544:                                    ; No predecessors!
  br label %concat.tot.len542

or.705.then:                                      ; preds = %loop.exit.704
  br label %or.705.exit

or.705.else:                                      ; preds = %loop.exit.704
  %var.load562 = load i64, ptr %"var.unformatted'", align 8
  %cmptmp563 = icmp sgt i64 %var.load562, 0
  br label %or.705.exit

or.705.exit:                                      ; preds = %or.705.else, %or.705.then
  %or.705.phi = phi i1 [ %var.load561, %or.705.then ], [ %cmptmp563, %or.705.else ]
  br i1 %or.705.phi, label %choice.then564, label %choice.else565

choice.then564:                                   ; preds = %or.705.exit
  br label %choice.exit566

choice.else565:                                   ; preds = %or.705.exit
  br label %choice.exit566

choice.exit566:                                   ; preds = %choice.else565, %choice.then564
  %choice.res567 = phi i64 [ 1, %choice.then564 ], [ 0, %choice.else565 ]
  br label %choice.exit357
}

declare { i64, ptr } @"sys::argv_string"(i64) #3

declare void @"log::error"(ptr) #3

declare i1 @"fs::exists"(ptr) #3

declare { i64, ptr } @"fs::read_to_string"(ptr) #3

declare i1 @"fs::write_file"(ptr, ptr) #3

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline "nounwind" }
