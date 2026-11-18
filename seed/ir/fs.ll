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
@"var.path::SEP" = external global i32
@"var.path::SEP_STR" = external global ptr
@"var.path::LIST_SEP" = external global i32
@"var.path::LIST_SEP_STR" = external global ptr
@"var.path::IS_WIN" = external global i1
@"var.sys::STDIN" = external global i64
@"var.sys::STDOUT" = external global i64
@"var.sys::STDERR" = external global i64
@"var.sys::addr_null" = external global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"fs::empty_stat", ptr null }
@"var.fs::empty_stat" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"fs::empty_statvfs", ptr null }
@"var.fs::empty_statvfs" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"fs::is_abs", ptr null }
@"var.fs::is_abs" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"fs::join", ptr null }
@"var.fs::join" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"fs::parent", ptr null }
@"var.fs::parent" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"fs::basename", ptr null }
@"var.fs::basename" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"fs::ext", ptr null }
@"var.fs::ext" = global ptr null
@str.0 = internal unnamed_addr constant [2 x i8] c".\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"fs::cwd", ptr null }
@"var.fs::cwd" = global ptr null
@str.1 = internal unnamed_addr constant [5 x i8] c"HOME\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.1 }
@str.2 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.2 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"fs::home", ptr null }
@"var.fs::home" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.3 = internal unnamed_addr constant [2 x i8] c"~\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.3 }
@str.4 = internal unnamed_addr constant [3 x i8] c"~/\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.4 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"fs::resolve", ptr null }
@"var.fs::resolve" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"fs::join_path", ptr null }
@"var.fs::join_path" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"fs::parent_path", ptr null }
@"var.fs::parent_path" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"fs::resolve_path", ptr null }
@"var.fs::resolve_path" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"fs::get_home", ptr null }
@"var.fs::get_home" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"fs::get_ext", ptr null }
@"var.fs::get_ext" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"fs::stat_mode", ptr null }
@"var.fs::stat_mode" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"fs::stat_size", ptr null }
@"var.fs::stat_size" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"fs::stat_mtime_sec", ptr null }
@"var.fs::stat_mtime_sec" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"fs::stat_mtime_nsec", ptr null }
@"var.fs::stat_mtime_nsec" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"fs::stat_atime_sec", ptr null }
@"var.fs::stat_atime_sec" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"fs::make_metadata", ptr null }
@"var.fs::make_metadata" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"fs::stat", ptr null }
@"var.fs::stat" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"fs::lstat_meta", ptr null }
@"var.fs::lstat_meta" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"fs::exists", ptr null }
@"var.fs::exists" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"fs::is_file", ptr null }
@"var.fs::is_file" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"fs::is_dir", ptr null }
@"var.fs::is_dir" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"fs::is_symlink", ptr null }
@"var.fs::is_symlink" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"fs::mtime", ptr null }
@"var.fs::mtime" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"fs::mtime_ns", ptr null }
@"var.fs::mtime_ns" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"fs::size", ptr null }
@"var.fs::size" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"fs::readlink_path", ptr null }
@"var.fs::readlink_path" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"fs::path_exists", ptr null }
@"var.fs::path_exists" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"fs::path_mtime", ptr null }
@"var.fs::path_mtime" = global ptr null
@str.5 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.5 }
@clo.const.33 = internal constant { ptr, ptr } { ptr @"fs::read_symlink", ptr null }
@"var.fs::read_symlink" = global ptr null
@str.6 = internal unnamed_addr constant [3 x i8] c"..\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.6 }
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.34 = internal constant { ptr, ptr } { ptr @"fs::read_dir", ptr null }
@"var.fs::read_dir" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"fs::open_wronly_creat_trunc", ptr null }
@"var.fs::open_wronly_creat_trunc" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"fs::read_to_string", ptr null }
@"var.fs::read_to_string" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"fs::write_file", ptr null }
@"var.fs::write_file" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"fs::copy_file", ptr null }
@"var.fs::copy_file" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"fs::rename_path", ptr null }
@"var.fs::rename_path" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"fs::create_file", ptr null }
@"var.fs::create_file" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"fs::create_dir", ptr null }
@"var.fs::create_dir" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"fs::create_dir_all", ptr null }
@"var.fs::create_dir_all" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"fs::remove", ptr null }
@"var.fs::remove" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"fs::delete_entry", ptr null }
@"var.fs::delete_entry" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"fs::write_text_file", ptr null }
@"var.fs::write_text_file" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"fs::remove_all", ptr null }
@"var.fs::remove_all" = global ptr null
@clo.const.47 = internal constant { ptr, ptr } { ptr @"fs::space", ptr null }
@"var.fs::space" = global ptr null
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.48 = internal constant { ptr, ptr } { ptr @"fs::get_fs_stats", ptr null }
@"var.fs::get_fs_stats" = global ptr null
@str.7 = internal unnamed_addr constant [4 x i8] c"DIR\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.7 }
@str.8 = internal unnamed_addr constant [3 x i8] c" B\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.8 }
@str.9 = internal unnamed_addr constant [4 x i8] c" KB\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.9 }
@str.10 = internal unnamed_addr constant [4 x i8] c" MB\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.10 }
@str.11 = internal unnamed_addr constant [4 x i8] c" GB\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.11 }
@clo.const.49 = internal constant { ptr, ptr } { ptr @"fs::format_size", ptr null }
@"var.fs::format_size" = global ptr null
@clo.const.50 = internal constant { ptr, ptr } { ptr @"fs::format_perms", ptr null }
@"var.fs::format_perms" = global ptr null
@str.12 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.12 }
@str.13 = internal unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 14, ptr @str.13 }
@clo.const.51 = internal constant { ptr, ptr } { ptr @"fs::format_time", ptr null }
@"var.fs::format_time" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.52 = internal constant { ptr, ptr } { ptr @"fs::format_number", ptr null }
@"var.fs::format_number" = global ptr null
@str.14 = internal unnamed_addr constant [2 x i8] c"0\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.14 }
@clo.const.53 = internal constant { ptr, ptr } { ptr @"fs::octal_perms", ptr null }
@"var.fs::octal_perms" = global ptr null
@str.15 = internal unnamed_addr constant [3 x i8] c" (\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.15 }
@str.16 = internal unnamed_addr constant [2 x i8] c")\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.16 }
@clo.const.54 = internal constant { ptr, ptr } { ptr @"fs::auto_rename_path", ptr null }
@"var.fs::auto_rename_path" = global ptr null
@clo.const.55 = internal constant { ptr, ptr } { ptr @"fs::cmp_entries", ptr null }
@"var.fs::cmp_entries" = global ptr null
@str.17 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.17 }
@str.18 = internal unnamed_addr constant [7 x i8] c"fs.dva\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.18 }
@str.19 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.19 }
@dva_thread_rec = external thread_local global ptr
@clo.const.56 = internal constant { ptr, ptr } { ptr @"fs::list_dir", ptr null }
@clo.const.57 = internal constant { ptr, ptr } { ptr @"fs::list_dir_simple", ptr null }
@"var.fs::list_dir_simple" = global ptr null
@"var.fs::list_dir" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_fs, ptr null }]

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

define internal void @__dva_global_init_fs() #0 {
entry:
  store ptr @clo.const, ptr @"var.fs::empty_stat", align 8
  store ptr @clo.const.1, ptr @"var.fs::empty_statvfs", align 8
  store ptr @clo.const.2, ptr @"var.fs::is_abs", align 8
  store ptr @clo.const.3, ptr @"var.fs::join", align 8
  store ptr @clo.const.4, ptr @"var.fs::parent", align 8
  store ptr @clo.const.5, ptr @"var.fs::basename", align 8
  store ptr @clo.const.6, ptr @"var.fs::ext", align 8
  store ptr @clo.const.7, ptr @"var.fs::cwd", align 8
  store ptr @clo.const.8, ptr @"var.fs::home", align 8
  store ptr @clo.const.9, ptr @"var.fs::resolve", align 8
  store ptr @clo.const.10, ptr @"var.fs::join_path", align 8
  store ptr @clo.const.11, ptr @"var.fs::parent_path", align 8
  store ptr @clo.const.12, ptr @"var.fs::resolve_path", align 8
  store ptr @clo.const.13, ptr @"var.fs::get_home", align 8
  store ptr @clo.const.14, ptr @"var.fs::get_ext", align 8
  store ptr @clo.const.15, ptr @"var.fs::stat_mode", align 8
  store ptr @clo.const.16, ptr @"var.fs::stat_size", align 8
  store ptr @clo.const.17, ptr @"var.fs::stat_mtime_sec", align 8
  store ptr @clo.const.18, ptr @"var.fs::stat_mtime_nsec", align 8
  store ptr @clo.const.19, ptr @"var.fs::stat_atime_sec", align 8
  store ptr @clo.const.20, ptr @"var.fs::make_metadata", align 8
  store ptr @clo.const.21, ptr @"var.fs::stat", align 8
  store ptr @clo.const.22, ptr @"var.fs::lstat_meta", align 8
  store ptr @clo.const.23, ptr @"var.fs::exists", align 8
  store ptr @clo.const.24, ptr @"var.fs::is_file", align 8
  store ptr @clo.const.25, ptr @"var.fs::is_dir", align 8
  store ptr @clo.const.26, ptr @"var.fs::is_symlink", align 8
  store ptr @clo.const.27, ptr @"var.fs::mtime", align 8
  store ptr @clo.const.28, ptr @"var.fs::mtime_ns", align 8
  store ptr @clo.const.29, ptr @"var.fs::size", align 8
  store ptr @clo.const.30, ptr @"var.fs::readlink_path", align 8
  store ptr @clo.const.31, ptr @"var.fs::path_exists", align 8
  store ptr @clo.const.32, ptr @"var.fs::path_mtime", align 8
  store ptr @clo.const.33, ptr @"var.fs::read_symlink", align 8
  store ptr @clo.const.34, ptr @"var.fs::read_dir", align 8
  store ptr @clo.const.35, ptr @"var.fs::open_wronly_creat_trunc", align 8
  store ptr @clo.const.36, ptr @"var.fs::read_to_string", align 8
  store ptr @clo.const.37, ptr @"var.fs::write_file", align 8
  store ptr @clo.const.38, ptr @"var.fs::copy_file", align 8
  store ptr @clo.const.39, ptr @"var.fs::rename_path", align 8
  store ptr @clo.const.40, ptr @"var.fs::create_file", align 8
  store ptr @clo.const.41, ptr @"var.fs::create_dir", align 8
  store ptr @clo.const.42, ptr @"var.fs::create_dir_all", align 8
  store ptr @clo.const.43, ptr @"var.fs::remove", align 8
  store ptr @clo.const.44, ptr @"var.fs::delete_entry", align 8
  store ptr @clo.const.45, ptr @"var.fs::write_text_file", align 8
  store ptr @clo.const.46, ptr @"var.fs::remove_all", align 8
  store ptr @clo.const.47, ptr @"var.fs::space", align 8
  store ptr @clo.const.48, ptr @"var.fs::get_fs_stats", align 8
  store ptr @clo.const.49, ptr @"var.fs::format_size", align 8
  store ptr @clo.const.50, ptr @"var.fs::format_perms", align 8
  store ptr @clo.const.51, ptr @"var.fs::format_time", align 8
  store ptr @clo.const.52, ptr @"var.fs::format_number", align 8
  store ptr @clo.const.53, ptr @"var.fs::octal_perms", align 8
  store ptr @clo.const.54, ptr @"var.fs::auto_rename_path", align 8
  store ptr @clo.const.55, ptr @"var.fs::cmp_entries", align 8
  store ptr @clo.const.57, ptr @"var.fs::list_dir_simple", align 8
  store ptr @clo.const.56, ptr @"var.fs::list_dir", align 8
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

declare i64 @lstat(ptr, ptr)

declare i64 @readlink(ptr, ptr, i64)

declare i64 @mkdir(ptr, i64)

declare i64 @rmdir(ptr)

declare i64 @statvfs(ptr, ptr)

declare ptr @getcwd(ptr, i64)

declare ptr @getenv(ptr)

declare ptr @localtime_r(ptr, ptr)

declare i64 @strftime(ptr, i64, ptr, ptr)

define ptr @"fs::empty_stat"() #0 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  %rec.fld2 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 3
  store i32 0, ptr %rec.fld3, align 4
  %rec.fld4 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 4
  store i32 0, ptr %rec.fld4, align 4
  %rec.fld5 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 5
  store i32 0, ptr %rec.fld5, align 4
  %rec.fld6 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 6
  store i32 0, ptr %rec.fld6, align 4
  %rec.fld7 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 7
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 8
  store i64 0, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 11
  store i64 0, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 12
  store i64 0, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 13
  store i64 0, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 14
  store i64 0, ptr %rec.fld14, align 8
  %rec.fld15 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 15
  store i64 0, ptr %rec.fld15, align 8
  %rec.fld16 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 16
  store i64 0, ptr %rec.fld16, align 8
  %rec.fld17 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 17
  store i64 0, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 18
  store i64 0, ptr %rec.fld18, align 8
  %rec.fld19 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 19
  store i64 0, ptr %rec.fld19, align 8
  ret ptr %rec.alloc
}

define ptr @"fs::empty_statvfs"() #0 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  %rec.fld2 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 3
  store i64 0, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 5
  store i64 0, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 6
  store i64 0, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 7
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 8
  store i64 0, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 11
  store i32 0, ptr %rec.fld11, align 4
  %rec.fld12 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 12
  store i32 0, ptr %rec.fld12, align 4
  %rec.fld13 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 13
  store i32 0, ptr %rec.fld13, align 4
  %rec.fld14 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 14
  store i32 0, ptr %rec.fld14, align 4
  %rec.fld15 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 15
  store i32 0, ptr %rec.fld15, align 4
  %rec.fld16 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 16
  store i32 0, ptr %rec.fld16, align 4
  ret ptr %rec.alloc
}

define i1 @"fs::is_abs"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"path::is_abs"(ptr %var.load)
  ret i1 %call.res
}

declare i1 @"path::is_abs"(ptr) #0

define { i64, ptr } @"fs::join"(ptr %0, ptr %1) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res = call { i64, ptr } @"path::join"(ptr %var.load, ptr %var.load1)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"path::join"(ptr, ptr) #0

define { i64, ptr } @"fs::parent"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::parent"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"path::parent"(ptr) #0

define { i64, ptr } @"fs::basename"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::basename"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"path::basename"(ptr) #0

define { i64, ptr } @"fs::ext"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %call.res = call { i64, ptr } @"path::ext"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"path::ext"(ptr) #0

define { i64, ptr } @"fs::cwd"() #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.res = alloca ptr, align 8
  %var.buf = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1024, i64 1)
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
  store i64 1024, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %b.ptr3 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr3 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @getcwd(ptr %addr.ffi.clean, i64 1024)
  store ptr %call.res, ptr %var.res, align 8
  %var.load4 = load ptr, ptr %var.res, align 8
  %var.load5 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load4 to i64
  %ptr.int.r = ptrtoint ptr %var.load5 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  br label %choice.exit

choice.else:                                      ; preds = %b.buf.len1
  %var.load6 = load ptr, ptr %var.res, align 8
  %call.res7 = call { i64, ptr } @"sys::c_str"(ptr %var.load6)
  store { i64, ptr } %call.res7, ptr %ret.ub.salloc, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ %ret.ub.salloc, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
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

declare { i64, ptr } @"sys::c_str"(ptr) #0

define { i64, ptr } @"fs::home"() #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.h = alloca ptr, align 8
  %arg.str.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %arg.str.ptr1 = load i64, ptr @str.1.struct, align 8
  %arg.str.ptr2 = and i64 %arg.str.ptr1, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr, i64 %arg.str.ptr2
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr3, label %nulcopy

arg.str.ptr3:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr2, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len4

nulmerge:                                         ; preds = %nulcopy.len4, %arg.str.ptr3
  %arg.str.ptr5 = phi ptr [ %arg.str.ptr, %arg.str.ptr3 ], [ %nulcopy.buf, %nulcopy.len4 ]
  %call.res = call ptr @getenv(ptr %arg.str.ptr5)
  store ptr %call.res, ptr %var.h, align 8
  %var.load = load ptr, ptr %var.h, align 8
  %var.load6 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load to i64
  %ptr.int.r = ptrtoint ptr %var.load6 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len4:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr, i64 %arg.str.ptr2, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr2
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len4

choice.then:                                      ; preds = %nulmerge
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  %var.load7 = load ptr, ptr %var.h, align 8
  %call.res8 = call { i64, ptr } @"sys::c_str"(ptr %var.load7)
  store { i64, ptr } %call.res8, ptr %ret.ub.salloc, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.2.struct, %choice.then ], [ %ret.ub.salloc, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define { i64, ptr } @"fs::resolve"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  %var.real = alloca ptr, align 8
  %var.full = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %call.res = call { i64, ptr } @"fs::cwd"()
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.alloc, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
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

str_ok8:                                          ; preds = %tag.slow_check13, %choice.exit
  %eq.rhs.len = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len14 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check13:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

str.eq.then:                                      ; preds = %str_ok8
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then16, label %choice.exit17

choice.then16:                                    ; preds = %str.eq.merge
  %call.res18 = call { i64, ptr } @"fs::home"()
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  store { i64, ptr } %call.res18, ptr %ret.ub.alloc20, align 8
  %ret.pack21 = load { i64, ptr }, ptr %ret.ub.alloc20, align 8
  ret { i64, ptr } %ret.pack21

choice.exit17:                                    ; preds = %ret.dead22, %str.eq.merge
  %var.load23 = load i64, ptr %var.len, align 8
  %cmptmp24 = icmp sge i64 %var.load23, 2
  br i1 %cmptmp24, label %and.63.then, label %and.63.else

ret.dead22:                                       ; No predecessors!
  br label %choice.exit17

and.63.then:                                      ; preds = %choice.exit17
  %var.load25 = load ptr, ptr %var.p, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.chk.len26 = load i64, ptr %s.chk.len, align 8
  %s.chk.len27 = and i64 %s.chk.len26, 281474976710655
  %str.tag28 = lshr i64 %s.chk.len26, 48
  %tag.immortal30 = icmp eq i64 %str.tag28, 0
  %active.gen31 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current32 = icmp eq i64 %str.tag28, %active.gen31
  %tag.fast.ok33 = or i1 %tag.immortal30, %tag.current32
  br i1 %tag.fast.ok33, label %str_ok29, label %tag.slow_check34

and.63.else:                                      ; preds = %choice.exit17
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %str.eq.merge43
  %and.63.phi = phi i1 [ %str.eq.result46, %str.eq.merge43 ], [ %cmptmp24, %and.63.else ]
  br i1 %and.63.phi, label %choice.then47, label %choice.exit48

str_ok29:                                         ; preds = %tag.slow_check34, %and.63.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len35 = load i64, ptr %s.read.len, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len36, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len36
  %final.start = select i1 %start.gt.len, i64 %s.read.len36, i64 %c.start.0
  %rel.end = add i64 %s.read.len36, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len36
  %final.end = select i1 %end.gt.len, i64 %s.read.len36, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data37, i64 %final.start
  %cmp.str = load i64, ptr @str.4.struct, align 8
  %cmp.str38 = and i64 %cmp.str, 281474976710655
  %cmp.str39 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.len40 = icmp eq i64 %view.len, %cmp.str38
  br i1 %eq.len40, label %str.eq.then41, label %str.eq.else42

tag.slow_check34:                                 ; preds = %and.63.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag28)
  br label %str_ok29

str.eq.then41:                                    ; preds = %str_ok29
  %eq.memcmp44 = call i32 @memcmp(ptr %view.data, ptr %cmp.str39, i64 %view.len)
  %eq.cmp.zero45 = icmp eq i32 %eq.memcmp44, 0
  br label %str.eq.merge43

str.eq.else42:                                    ; preds = %str_ok29
  br label %str.eq.merge43

str.eq.merge43:                                   ; preds = %str.eq.else42, %str.eq.then41
  %str.eq.result46 = phi i1 [ %eq.cmp.zero45, %str.eq.then41 ], [ false, %str.eq.else42 ]
  br label %and.63.exit

choice.then47:                                    ; preds = %and.63.exit
  %call.res49 = call { i64, ptr } @"fs::home"()
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  store { i64, ptr } %call.res49, ptr %ret.ub.alloc51, align 8
  %var.load52 = load ptr, ptr %var.p, align 8
  %s.read.len53 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %s.read.len54 = load i64, ptr %s.read.len53, align 8
  %s.read.len55 = and i64 %s.read.len54, 281474976710655
  %s.read.data56 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %s.read.data57 = load ptr, ptr %s.read.data56, align 8
  %rel.start58 = add i64 %s.read.len55, 2
  %norm.start59 = select i1 false, i64 %rel.start58, i64 2
  %start.lt.060 = icmp slt i64 %norm.start59, 0
  %c.start.061 = select i1 %start.lt.060, i64 0, i64 %norm.start59
  %start.gt.len62 = icmp sgt i64 %c.start.061, %s.read.len55
  %final.start63 = select i1 %start.gt.len62, i64 %s.read.len55, i64 %c.start.061
  %end.is_neg = icmp slt i64 %s.read.len55, 0
  %rel.end64 = add i64 %s.read.len55, %s.read.len55
  %norm.end65 = select i1 %end.is_neg, i64 %rel.end64, i64 %s.read.len55
  %end.lt.066 = icmp slt i64 %norm.end65, 0
  %c.end.067 = select i1 %end.lt.066, i64 0, i64 %norm.end65
  %end.gt.len68 = icmp sgt i64 %c.end.067, %s.read.len55
  %final.end69 = select i1 %end.gt.len68, i64 %s.read.len55, i64 %c.end.067
  %view.empty70 = icmp sle i64 %final.end69, %final.start63
  %view.len.sub71 = sub i64 %final.end69, %final.start63
  %view.len72 = select i1 %view.empty70, i64 0, i64 %view.len.sub71
  %view.data73 = getelementptr i8, ptr %s.read.data57, i64 %final.start63
  %arena.cur74 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len72, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data73, ptr %str.build.data.gep, align 8
  %call.res75 = call { i64, ptr } @"path::join"(ptr %ret.ub.alloc51, ptr %str.view)
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  store { i64, ptr } %call.res75, ptr %ret.ub.alloc77, align 8
  %ret.pack78 = load { i64, ptr }, ptr %ret.ub.alloc77, align 8
  ret { i64, ptr } %ret.pack78

choice.exit48:                                    ; preds = %ret.dead79, %and.63.exit
  %var.load80 = load ptr, ptr %var.p, align 8
  %call.res81 = call i1 @"path::is_abs"(ptr %var.load80)
  br i1 %call.res81, label %choice.then82, label %choice.else

ret.dead79:                                       ; No predecessors!
  br label %choice.exit48

choice.then82:                                    ; preds = %choice.exit48
  %var.load84 = load ptr, ptr %var.p, align 8
  br label %choice.exit83

choice.else:                                      ; preds = %choice.exit48
  %call.res85 = call { i64, ptr } @"fs::cwd"()
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 16)
  store { i64, ptr } %call.res85, ptr %ret.ub.alloc87, align 8
  %var.load88 = load ptr, ptr %var.p, align 8
  %call.res89 = call { i64, ptr } @"path::join"(ptr %ret.ub.alloc87, ptr %var.load88)
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 16)
  store { i64, ptr } %call.res89, ptr %ret.ub.alloc91, align 8
  br label %choice.exit83

choice.exit83:                                    ; preds = %choice.else, %choice.then82
  %choice.res = phi ptr [ %var.load84, %choice.then82 ], [ %ret.ub.alloc91, %choice.else ]
  store ptr %choice.res, ptr %var.full, align 8
  %var.load92 = load ptr, ptr %var.full, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 1
  %arg.str.ptr93 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr94 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 0
  %arg.str.ptr95 = load i64, ptr %arg.str.ptr94, align 8
  %arg.str.ptr96 = and i64 %arg.str.ptr95, 281474976710655
  %str.tag97 = lshr i64 %arg.str.ptr95, 48
  %tag.immortal99 = icmp eq i64 %str.tag97, 0
  %active.gen100 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current101 = icmp eq i64 %str.tag97, %active.gen100
  %tag.fast.ok102 = or i1 %tag.immortal99, %tag.current101
  br i1 %tag.fast.ok102, label %str_ok98, label %tag.slow_check103

str_ok98:                                         ; preds = %tag.slow_check103, %choice.exit83
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr93, i64 %arg.str.ptr96
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr104, label %nulcopy

tag.slow_check103:                                ; preds = %choice.exit83
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag97)
  br label %str_ok98

arg.str.ptr104:                                   ; preds = %str_ok98
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok98
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr96, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len105

nulmerge:                                         ; preds = %nulcopy.len105, %arg.str.ptr104
  %arg.str.ptr107 = phi ptr [ %arg.str.ptr93, %arg.str.ptr104 ], [ %nulcopy.buf, %nulcopy.len105 ]
  %var.load108 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int = ptrtoint ptr %var.load108 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res109 = call ptr @realpath(ptr %arg.str.ptr107, ptr %addr.ffi.clean)
  store ptr %call.res109, ptr %var.real, align 8
  %var.load110 = load ptr, ptr %var.real, align 8
  %var.load111 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load110 to i64
  %ptr.int.r = ptrtoint ptr %var.load111 to i64
  %cmptmp112 = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp112, label %choice.then113, label %choice.else114

nulcopy.len105:                                   ; preds = %abort.dead, %nulcopy
  %arena.cur106 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr93, i64 %arg.str.ptr96, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr96
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len105

choice.then113:                                   ; preds = %nulmerge
  %var.load116 = load ptr, ptr %var.full, align 8
  br label %choice.exit115

choice.else114:                                   ; preds = %nulmerge
  %var.load117 = load ptr, ptr %var.real, align 8
  %call.res118 = call { i64, ptr } @"sys::c_str"(ptr %var.load117)
  %arena.cur119 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 16)
  store { i64, ptr } %call.res118, ptr %ret.ub.alloc120, align 8
  store ptr %ret.ub.alloc120, ptr %var.s, align 8
  %var.load121 = load ptr, ptr %var.real, align 8
  %addr.ffi.int122 = ptrtoint ptr %var.load121 to i64
  %addr.ffi.masked123 = and i64 %addr.ffi.int122, 281474976710655
  %addr.ffi.clean124 = inttoptr i64 %addr.ffi.masked123 to ptr
  call void @free(ptr %addr.ffi.clean124)
  %var.load125 = load ptr, ptr %var.s, align 8
  br label %choice.exit115

choice.exit115:                                   ; preds = %choice.else114, %choice.then113
  %choice.res126 = phi ptr [ %var.load116, %choice.then113 ], [ %var.load125, %choice.else114 ]
  %ret.pack127 = load { i64, ptr }, ptr %choice.res126, align 8
  ret { i64, ptr } %ret.pack127
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
define internal void @dva_abort_stale_str_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i32 @memcmp(ptr, ptr, i64) #0

define { i64, ptr } @"fs::join_path"(ptr %0, ptr %1) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res = call { i64, ptr } @"path::join"(ptr %var.load, ptr %var.load1)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"fs::parent_path"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"path::parent"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"fs::resolve_path"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"fs::resolve"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"fs::get_home"() #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %call.res = call { i64, ptr } @"fs::home"()
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"fs::get_ext"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %call.res = call { i64, ptr } @"path::get_ext"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"path::get_ext"(ptr) #0

define i64 @"fs::stat_mode"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 3
  %fld.load = load i32, ptr %fld.gep, align 4
  %coerce.zext = zext i32 %fld.load to i64
  ret i64 %coerce.zext
}

define i64 @"fs::stat_size"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 8
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i64 @"fs::stat_mtime_sec"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 13
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i64 @"fs::stat_mtime_nsec"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 14
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i64 @"fs::stat_atime_sec"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 11
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define ptr @"fs::make_metadata"(ptr %0, i1 %1) #0 {
entry:
  %var.is_x = alloca i1, align 1
  %var.pb = alloca i16, align 2
  %var.is_l = alloca i1, align 1
  %var.is_reg = alloca i1, align 1
  %var.is_d = alloca i1, align 1
  %var.fmt = alloca i16, align 2
  %var.fm = alloca i16, align 2
  %var.m = alloca i64, align 8
  %var.is_link = alloca i1, align 1
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i1 %1, ptr %var.is_link, align 1
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call i64 @"fs::stat_mode"(ptr %var.load)
  store i64 %call.res, ptr %var.m, align 8
  %var.load1 = load i64, ptr %var.m, align 8
  %coerce.trunc = trunc i64 %var.load1 to i16
  store i16 %coerce.trunc, ptr %var.fm, align 2
  %var.load2 = load i16, ptr %var.fm, align 2
  %bf.load = load i16, ptr %var.fm, align 2
  %bf.shr = lshr i16 %bf.load, 12
  %bf.mask = and i16 %bf.shr, 15
  store i16 %bf.mask, ptr %var.fmt, align 2
  %var.load3 = load i16, ptr %var.fmt, align 2
  %coerce.zext = zext i16 %var.load3 to i64
  %cmptmp = icmp eq i64 %coerce.zext, 4
  store i1 %cmptmp, ptr %var.is_d, align 1
  %var.load4 = load i16, ptr %var.fmt, align 2
  %coerce.zext5 = zext i16 %var.load4 to i64
  %cmptmp6 = icmp eq i64 %coerce.zext5, 8
  store i1 %cmptmp6, ptr %var.is_reg, align 1
  %var.load7 = load i1, ptr %var.is_link, align 1
  br i1 %var.load7, label %or.64.then, label %or.64.else

or.64.then:                                       ; preds = %entry
  br label %or.64.exit

or.64.else:                                       ; preds = %entry
  %var.load8 = load i16, ptr %var.fmt, align 2
  %coerce.zext9 = zext i16 %var.load8 to i64
  %cmptmp10 = icmp eq i64 %coerce.zext9, 10
  br label %or.64.exit

or.64.exit:                                       ; preds = %or.64.else, %or.64.then
  %or.64.phi = phi i1 [ %var.load7, %or.64.then ], [ %cmptmp10, %or.64.else ]
  store i1 %or.64.phi, ptr %var.is_l, align 1
  %var.load11 = load i64, ptr %var.m, align 8
  %coerce.trunc12 = trunc i64 %var.load11 to i16
  store i16 %coerce.trunc12, ptr %var.pb, align 2
  %var.load13 = load i16, ptr %var.pb, align 2
  %bf.load14 = load i16, ptr %var.pb, align 2
  %bf.shr15 = lshr i16 %bf.load14, 6
  %bf.mask16 = and i16 %bf.shr15, 1
  %bf.flag = trunc i16 %bf.mask16 to i1
  br i1 %bf.flag, label %or.65.then, label %or.65.else

or.65.then:                                       ; preds = %or.64.exit
  br label %or.65.exit

or.65.else:                                       ; preds = %or.64.exit
  %var.load17 = load i16, ptr %var.pb, align 2
  %bf.load18 = load i16, ptr %var.pb, align 2
  %bf.shr19 = lshr i16 %bf.load18, 3
  %bf.mask20 = and i16 %bf.shr19, 1
  %bf.flag21 = trunc i16 %bf.mask20 to i1
  br label %or.65.exit

or.65.exit:                                       ; preds = %or.65.else, %or.65.then
  %or.65.phi = phi i1 [ %bf.flag, %or.65.then ], [ %bf.flag21, %or.65.else ]
  br i1 %or.65.phi, label %or.66.then, label %or.66.else

or.66.then:                                       ; preds = %or.65.exit
  br label %or.66.exit

or.66.else:                                       ; preds = %or.65.exit
  %var.load22 = load i16, ptr %var.pb, align 2
  %bf.load23 = load i16, ptr %var.pb, align 2
  %bf.mask24 = and i16 %bf.load23, 1
  %bf.flag25 = trunc i16 %bf.mask24 to i1
  br label %or.66.exit

or.66.exit:                                       ; preds = %or.66.else, %or.66.then
  %or.66.phi = phi i1 [ %or.65.phi, %or.66.then ], [ %bf.flag25, %or.66.else ]
  br i1 %or.66.phi, label %and.67.then, label %and.67.else

and.67.then:                                      ; preds = %or.66.exit
  %var.load26 = load i1, ptr %var.is_d, align 1
  %nottmp = xor i1 %var.load26, true
  br label %and.67.exit

and.67.else:                                      ; preds = %or.66.exit
  br label %and.67.exit

and.67.exit:                                      ; preds = %and.67.else, %and.67.then
  %and.67.phi = phi i1 [ %nottmp, %and.67.then ], [ %or.66.phi, %and.67.else ]
  store i1 %and.67.phi, ptr %var.is_x, align 1
  %var.load27 = load ptr, ptr %var.s, align 8
  %call.res28 = call i64 @"fs::stat_size"(ptr %var.load27)
  %var.load29 = load i64, ptr %var.m, align 8
  %var.load30 = load ptr, ptr %var.s, align 8
  %call.res31 = call i64 @"fs::stat_mtime_sec"(ptr %var.load30)
  %var.load32 = load ptr, ptr %var.s, align 8
  %call.res33 = call i64 @"fs::stat_mtime_nsec"(ptr %var.load32)
  %var.load34 = load ptr, ptr %var.s, align 8
  %call.res35 = call i64 @"fs::stat_atime_sec"(ptr %var.load34)
  %var.load36 = load i1, ptr %var.is_d, align 1
  %var.load37 = load i1, ptr %var.is_reg, align 1
  %var.load38 = load i1, ptr %var.is_l, align 1
  %var.load39 = load i1, ptr %var.is_x, align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %call.res28, ptr %rec.fld, align 8
  %rec.fld40 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load29, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %call.res31, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %call.res33, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %call.res35, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load36, ptr %rec.fld44, align 1
  %rec.fld45 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 %var.load37, ptr %rec.fld45, align 1
  %rec.fld46 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 7
  store i1 %var.load38, ptr %rec.fld46, align 1
  %rec.fld47 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 8
  store i1 %var.load39, ptr %rec.fld47, align 1
  ret ptr %rec.alloc
}

define ptr @"fs::stat"(ptr %0) #0 {
entry:
  %var.rc = alloca i64, align 8
  %"var.s'" = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %call.res = call ptr @"fs::empty_stat"()
  store ptr %call.res, ptr %"var.s'", align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load8 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load8 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res9 = call i64 @stat(ptr %arg.str.ptr7, ptr %addr.ffi.clean)
  store i64 %call.res9, ptr %var.rc, align 8
  %var.load10 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load10, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load11 = load ptr, ptr %"var.s'", align 8
  %call.res12 = call ptr @"fs::make_metadata"(ptr %var.load11, i1 false)
  ret ptr %call.res12

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define ptr @"fs::lstat_meta"(ptr %0) #0 {
entry:
  %var.is_link = alloca i1, align 1
  %var.fm = alloca i16, align 2
  %var.m = alloca i64, align 8
  %var.rc = alloca i64, align 8
  %"var.s'" = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %call.res = call ptr @"fs::empty_stat"()
  store ptr %call.res, ptr %"var.s'", align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load8 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load8 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res9 = call i64 @lstat(ptr %arg.str.ptr7, ptr %addr.ffi.clean)
  store i64 %call.res9, ptr %var.rc, align 8
  %var.load10 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load10, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load11 = load ptr, ptr %"var.s'", align 8
  %call.res12 = call i64 @"fs::stat_mode"(ptr %var.load11)
  store i64 %call.res12, ptr %var.m, align 8
  %var.load13 = load i64, ptr %var.m, align 8
  %coerce.trunc = trunc i64 %var.load13 to i16
  store i16 %coerce.trunc, ptr %var.fm, align 2
  %var.load14 = load i16, ptr %var.fm, align 2
  %bf.load = load i16, ptr %var.fm, align 2
  %bf.shr = lshr i16 %bf.load, 12
  %bf.mask = and i16 %bf.shr, 15
  %coerce.zext = zext i16 %bf.mask to i64
  %cmptmp15 = icmp eq i64 %coerce.zext, 10
  store i1 %cmptmp15, ptr %var.is_link, align 1
  %var.load16 = load ptr, ptr %"var.s'", align 8
  %var.load17 = load i1, ptr %var.is_link, align 1
  %call.res18 = call ptr @"fs::make_metadata"(ptr %var.load16, i1 %var.load17)
  ret ptr %call.res18

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define i1 @"fs::exists"(ptr %0) #0 {
entry:
  %"var.s'" = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %call.res = call ptr @"fs::empty_stat"()
  store ptr %call.res, ptr %"var.s'", align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load8 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load8 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res9 = call i64 @stat(ptr %arg.str.ptr7, ptr %addr.ffi.clean)
  %cmptmp = icmp eq i64 %call.res9, 0
  ret i1 %cmptmp

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6
}

define i1 @"fs::is_file"(ptr %0) #0 {
entry:
  %var.info = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call ptr @"fs::stat"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.info, align 8
  %var.load2 = load ptr, ptr %var.info, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load2, i32 0, i32 6
  %fld.load = load i1, ptr %fld.gep, align 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i1 [ %fld.load, %choice.then ], [ false, %choice.else ]
  ret i1 %choice.res
}

define i1 @"fs::is_dir"(ptr %0) #0 {
entry:
  %var.info = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call ptr @"fs::stat"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.info, align 8
  %var.load2 = load ptr, ptr %var.info, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load2, i32 0, i32 5
  %fld.load = load i1, ptr %fld.gep, align 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i1 [ %fld.load, %choice.then ], [ false, %choice.else ]
  ret i1 %choice.res
}

define i1 @"fs::is_symlink"(ptr %0) #0 {
entry:
  %var.info = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call ptr @"fs::lstat_meta"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.info, align 8
  %var.load2 = load ptr, ptr %var.info, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load2, i32 0, i32 7
  %fld.load = load i1, ptr %fld.gep, align 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i1 [ %fld.load, %choice.then ], [ false, %choice.else ]
  ret i1 %choice.res
}

define i64 @"fs::mtime"(ptr %0) #0 {
entry:
  %var.info = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call ptr @"fs::stat"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.info, align 8
  %var.load2 = load ptr, ptr %var.info, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load2, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %fld.load, %choice.then ], [ 0, %choice.else ]
  ret i64 %choice.res
}

define i64 @"fs::mtime_ns"(ptr %0) #0 {
entry:
  %"var.s'" = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %call.res = call ptr @"fs::empty_stat"()
  store ptr %call.res, ptr %"var.s'", align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load8 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load8 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res9 = call i64 @stat(ptr %arg.str.ptr7, ptr %addr.ffi.clean)
  %cmptmp = icmp eq i64 %call.res9, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  %var.load10 = load ptr, ptr %"var.s'", align 8
  %call.res11 = call i64 @"fs::stat_mtime_sec"(ptr %var.load10)
  %multmp = mul i64 %call.res11, 1000000000
  %var.load12 = load ptr, ptr %"var.s'", align 8
  %call.res13 = call i64 @"fs::stat_mtime_nsec"(ptr %var.load12)
  %addtmp = add i64 %multmp, %call.res13
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ -1, %choice.else ]
  ret i64 %choice.res
}

define i64 @"fs::size"(ptr %0) #0 {
entry:
  %var.info = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call ptr @"fs::stat"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.info, align 8
  %var.load2 = load ptr, ptr %var.info, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load2, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %fld.load, %choice.then ], [ 0, %choice.else ]
  ret i64 %choice.res
}

define { i64, ptr } @"fs::readlink_path"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.n = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1024, i64 1)
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
  store i64 1024, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr3 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr4 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr5 = load i64, ptr %arg.str.ptr4, align 8
  %arg.str.ptr6 = and i64 %arg.str.ptr5, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr5, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

str_ok:                                           ; preds = %tag.slow_check, %b.buf.len1
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr3, i64 %arg.str.ptr6
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr7, label %nulcopy

tag.slow_check:                                   ; preds = %b.buf.len1
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr7:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr6, i64 1)
  %sum8 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf9 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf9, label %str_overflow_abort11, label %nulcopy.len10

nulmerge:                                         ; preds = %nulcopy.len10, %arg.str.ptr7
  %arg.str.ptr14 = phi ptr [ %arg.str.ptr3, %arg.str.ptr7 ], [ %nulcopy.buf, %nulcopy.len10 ]
  %var.load15 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 1
  %b.ptr16 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr16 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @readlink(ptr %arg.str.ptr14, ptr %addr.ffi.clean, i64 1024)
  store i64 %call.res, ptr %var.n, align 8
  %var.load17 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load17, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len10:                                    ; preds = %abort.dead12, %nulcopy
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 %sum8)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr3, i64 %arg.str.ptr6, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr6
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort11:                             ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %nulcopy.len10

choice.then:                                      ; preds = %nulmerge
  ret { i64, ptr } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load18 = load i64, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap19 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load18, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.len_big_check:                                  ; preds = %choice.exit
  %b.len.big = icmp sgt i64 %var.load18, %b.cap19
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead20, %b.len_big_check
  %b.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load18, ptr %b.len.gep21, align 8
  %var.load22 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 0
  %b.freeze.len23 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 1
  %b.freeze.data24 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
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

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data26 = phi ptr [ %b.freeze.data24, %b.len_ok ], [ %b.freeze.data24, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
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
  %ret.niche.nn = icmp ne ptr %builder.freeze, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

ret.niche.load:                                   ; preds = %b.freeze.done
  %ret.niche.val = load { i64, ptr }, ptr %builder.freeze, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %b.freeze.done
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %b.freeze.done ]
  ret { i64, ptr } %ret.niche.pack
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_builder_len_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

define i1 @"fs::path_exists"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"fs::exists"(ptr %var.load)
  ret i1 %call.res
}

define i64 @"fs::path_mtime"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i64 @"fs::mtime"(ptr %var.load)
  ret i64 %call.res
}

define { i64, ptr } @"fs::read_symlink"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call { i64, ptr } @"fs::readlink_path"(ptr %var.load)
  %ret.niche.data = extractvalue { i64, ptr } %call.res, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.alloc:                                  ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %entry
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %entry ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %ret.niche.done
  store ptr %ret.niche.ptr, ptr %var._, align 8
  store ptr %ret.niche.ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.else:                                      ; preds = %ret.niche.done
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %var.load1, %choice.then ], [ @str.5.struct, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define ptr @"fs::read_dir"(ptr %0) #0 {
entry:
  %var.mi = alloca ptr, align 8
  %var._78 = alloca ptr, align 8
  %var.meta = alloca ptr, align 8
  %var.sub_p = alloca ptr, align 8
  %var.is_l = alloca i1, align 1
  %var.is_f = alloca i1, align 1
  %var.is_d = alloca i1, align 1
  %var.dt = alloca i64, align 8
  %var.dp_ent = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.ent = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.71 = alloca i64, align 8
  %loop.idx.71 = alloca i64, align 8
  %var.dp = alloca ptr, align 8
  %var.res = alloca ptr, align 8
  %var.dir_path = alloca ptr, align 8
  store ptr %0, ptr %var.dir_path, align 8
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
  %var.load = load ptr, ptr %var.dir_path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr2 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr4 = load i64, ptr %arg.str.ptr3, align 8
  %arg.str.ptr5 = and i64 %arg.str.ptr4, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr2, i64 %arg.str.ptr5
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr6, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr6:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr5, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len7

nulmerge:                                         ; preds = %nulcopy.len7, %arg.str.ptr6
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr2, %arg.str.ptr6 ], [ %nulcopy.buf, %nulcopy.len7 ]
  %call.res = call ptr @opendir(ptr %arg.str.ptr9)
  store ptr %call.res, ptr %var.dp, align 8
  %var.load10 = load ptr, ptr %var.dp, align 8
  %var.load11 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load10 to i64
  %ptr.int.r = ptrtoint ptr %var.load11 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len7:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr2, i64 %arg.str.ptr5, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr5
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len7

choice.then:                                      ; preds = %nulmerge
  %var.load12 = load ptr, ptr %var.res, align 8
  %a.load = load ptr, ptr %var.res, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  store i64 0, ptr %loop.idx.71, align 8
  br label %loop.header.71

a.create:                                         ; preds = %choice.then
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 24)
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 128)
  %a.len.gep17 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 0
  store i64 0, ptr %a.len.gep17, align 8
  %a.data.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 1
  store ptr %a.buf16, ptr %a.data.gep18, align 8
  %a.cap.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 2
  store i64 16, ptr %a.cap.gep19, align 8
  store ptr %a.create14, ptr %var.res, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.71:                                   ; preds = %loop.latch.71, %choice.exit
  %counter.load = load i64, ptr %loop.idx.71, align 8
  br label %loop.body.71

loop.body.71:                                     ; preds = %loop.header.71
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.71, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load20 = load ptr, ptr %var.dp, align 8
  %addr.ffi.int = ptrtoint ptr %var.load20 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res21 = call ptr @readdir(ptr %addr.ffi.clean)
  store ptr %call.res21, ptr %var.ent, align 8
  %var.load22 = load ptr, ptr %var.ent, align 8
  %var.load23 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l24 = ptrtoint ptr %var.load22 to i64
  %ptr.int.r25 = ptrtoint ptr %var.load23 to i64
  %cmptmp26 = icmp eq i64 %ptr.int.l24, %ptr.int.r25
  br i1 %cmptmp26, label %choice.then27, label %choice.exit28

loop.exit.nat.71:                                 ; No predecessors!
  br label %loop.exit.71

loop.latch.71:                                    ; preds = %a.store, %choice.then54
  %step.val = load i64, ptr %loop.step.71, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.71, align 8
  br label %loop.header.71

loop.exit.71:                                     ; preds = %choice.then27, %loop.exit.nat.71
  %var.load112 = load ptr, ptr %var.dp, align 8
  %addr.ffi.int113 = ptrtoint ptr %var.load112 to i64
  %addr.ffi.masked114 = and i64 %addr.ffi.int113, 281474976710655
  %addr.ffi.clean115 = inttoptr i64 %addr.ffi.masked114 to ptr
  %call.res116 = call i64 @closedir(ptr %addr.ffi.clean115)
  %var.load117 = load ptr, ptr %var.res, align 8
  %a.load118 = load ptr, ptr %var.res, align 8
  %a.null119 = icmp eq ptr %a.load118, null
  br i1 %a.null119, label %a.create120, label %a.after121

choice.then27:                                    ; preds = %loop.body.71
  br label %loop.exit.71

choice.exit28:                                    ; preds = %loop.body.71
  %var.load29 = load ptr, ptr %var.ent, align 8
  %ptr.int.l30 = ptrtoint ptr %var.load29 to i64
  %addtmp = add i64 %ptr.int.l30, 19
  %ptr.res = inttoptr i64 %addtmp to ptr
  %call.res31 = call { i64, ptr } @"sys::c_str"(ptr %ptr.res)
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  store { i64, ptr } %call.res31, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.name, align 8
  %var.load33 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %eq.lhs.len34 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len35 = and i64 %eq.lhs.len34, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len36 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len35, %eq.rhs.len36
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %choice.exit28
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %eq.lhs.data37 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data37, ptr %eq.rhs.data, i64 %eq.lhs.len35)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit28
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.72.then, label %or.72.else

or.72.then:                                       ; preds = %str.eq.merge
  br label %or.72.exit

or.72.else:                                       ; preds = %str.eq.merge
  %var.load38 = load ptr, ptr %var.name, align 8
  %eq.lhs.len39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %eq.lhs.len40 = load i64, ptr %eq.lhs.len39, align 8
  %eq.lhs.len41 = and i64 %eq.lhs.len40, 281474976710655
  %eq.rhs.len42 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len43 = and i64 %eq.rhs.len42, 281474976710655
  %eq.len44 = icmp eq i64 %eq.lhs.len41, %eq.rhs.len43
  br i1 %eq.len44, label %str.eq.then45, label %str.eq.else46

or.72.exit:                                       ; preds = %str.eq.merge47, %or.72.then
  %or.72.phi = phi i1 [ %str.eq.result, %or.72.then ], [ %str.eq.result53, %str.eq.merge47 ]
  br i1 %or.72.phi, label %choice.then54, label %choice.exit55

str.eq.then45:                                    ; preds = %or.72.else
  %eq.lhs.data48 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %eq.lhs.data49 = load ptr, ptr %eq.lhs.data48, align 8
  %eq.rhs.data50 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp51 = call i32 @memcmp(ptr %eq.lhs.data49, ptr %eq.rhs.data50, i64 %eq.lhs.len41)
  %eq.cmp.zero52 = icmp eq i32 %eq.memcmp51, 0
  br label %str.eq.merge47

str.eq.else46:                                    ; preds = %or.72.else
  br label %str.eq.merge47

str.eq.merge47:                                   ; preds = %str.eq.else46, %str.eq.then45
  %str.eq.result53 = phi i1 [ %eq.cmp.zero52, %str.eq.then45 ], [ false, %str.eq.else46 ]
  br label %or.72.exit

choice.then54:                                    ; preds = %or.72.exit
  br label %loop.latch.71

choice.exit55:                                    ; preds = %or.72.exit
  %var.load56 = load ptr, ptr %var.ent, align 8
  store ptr %var.load56, ptr %var.dp_ent, align 8
  %var.load57 = load ptr, ptr %var.dp_ent, align 8
  %fld.gep = getelementptr inbounds <{ i64, i64, i16, i8 }>, ptr %var.load57, i32 0, i32 3
  %fld.load = load i8, ptr %fld.gep, align 1
  %coerce.zext = zext i8 %fld.load to i64
  store i64 %coerce.zext, ptr %var.dt, align 8
  %var.load58 = load i64, ptr %var.dt, align 8
  %cmptmp59 = icmp eq i64 %var.load58, 4
  store i1 %cmptmp59, ptr %var.is_d, align 1
  %var.load60 = load i64, ptr %var.dt, align 8
  %cmptmp61 = icmp eq i64 %var.load60, 8
  store i1 %cmptmp61, ptr %var.is_f, align 1
  %var.load62 = load i64, ptr %var.dt, align 8
  %cmptmp63 = icmp eq i64 %var.load62, 10
  store i1 %cmptmp63, ptr %var.is_l, align 1
  %var.load64 = load i64, ptr %var.dt, align 8
  %cmptmp65 = icmp eq i64 %var.load64, 0
  br i1 %cmptmp65, label %choice.then66, label %choice.exit67

choice.then66:                                    ; preds = %choice.exit55
  %var.load68 = load ptr, ptr %var.dir_path, align 8
  %var.load69 = load ptr, ptr %var.name, align 8
  %call.res70 = call { i64, ptr } @"fs::join"(ptr %var.load68, ptr %var.load69)
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 16)
  store { i64, ptr } %call.res70, ptr %ret.ub.alloc72, align 8
  store ptr %ret.ub.alloc72, ptr %var.sub_p, align 8
  %var.load73 = load ptr, ptr %var.sub_p, align 8
  %call.res74 = call ptr @"fs::lstat_meta"(ptr %var.load73)
  store ptr %call.res74, ptr %var.meta, align 8
  %var.load75 = load ptr, ptr %var.meta, align 8
  %niche.ne.null = icmp ne ptr %var.load75, null
  br i1 %niche.ne.null, label %choice.then76, label %choice.exit77

choice.exit67:                                    ; preds = %choice.exit77, %choice.exit55
  %var.load88 = load ptr, ptr %var.name, align 8
  %var.load89 = load i1, ptr %var.is_d, align 1
  %var.load90 = load i1, ptr %var.is_f, align 1
  %var.load91 = load i1, ptr %var.is_l, align 1
  %arena.cur92 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load88, ptr %rec.fld, align 8
  %rec.fld93 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load89, ptr %rec.fld93, align 1
  %rec.fld94 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load90, ptr %rec.fld94, align 1
  %rec.fld95 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load91, ptr %rec.fld95, align 1
  %a.load96 = load ptr, ptr %var.res, align 8
  %a.null97 = icmp eq ptr %a.load96, null
  br i1 %a.null97, label %a.create98, label %a.after99

choice.then76:                                    ; preds = %choice.then66
  store ptr %var.load75, ptr %var._78, align 8
  store ptr %var.load75, ptr %var.mi, align 8
  %var.load79 = load ptr, ptr %var.mi, align 8
  %fld.gep80 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load79, i32 0, i32 5
  %fld.load81 = load i1, ptr %fld.gep80, align 1
  store i1 %fld.load81, ptr %var.is_d, align 1
  %var.load82 = load ptr, ptr %var.mi, align 8
  %fld.gep83 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load82, i32 0, i32 6
  %fld.load84 = load i1, ptr %fld.gep83, align 1
  store i1 %fld.load84, ptr %var.is_f, align 1
  %var.load85 = load ptr, ptr %var.mi, align 8
  %fld.gep86 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load85, i32 0, i32 7
  %fld.load87 = load i1, ptr %fld.gep86, align 1
  store i1 %fld.load87, ptr %var.is_l, align 1
  br label %choice.exit77

choice.exit77:                                    ; preds = %choice.then76, %choice.then66
  br label %choice.exit67

a.create98:                                       ; preds = %choice.exit67
  %arena.cur100 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 24)
  %arena.cur102 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 128)
  %a.len.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create101, i32 0, i32 0
  store i64 0, ptr %a.len.gep104, align 8
  %a.data.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create101, i32 0, i32 1
  store ptr %a.buf103, ptr %a.data.gep105, align 8
  %a.cap.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create101, i32 0, i32 2
  store i64 16, ptr %a.cap.gep106, align 8
  store ptr %a.create101, ptr %var.res, align 8
  br label %a.after99

a.after99:                                        ; preds = %a.create98, %choice.exit67
  %a.load2107 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after99
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2107, i32 0, i32 0
  %a.len108 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2107, i32 0, i32 2
  %a.cap109 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len108, %a.cap109
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2107)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2107, i32 0, i32 1
  %a.cur.data110 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2107, i32 0, i32 0
  %a.cur.len111 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data110, i64 %a.cur.len111
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len111, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2107, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.71

a.create120:                                      ; preds = %loop.exit.71
  %arena.cur122 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 24)
  %arena.cur124 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf125 = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 128)
  %a.len.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create123, i32 0, i32 0
  store i64 0, ptr %a.len.gep126, align 8
  %a.data.gep127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create123, i32 0, i32 1
  store ptr %a.buf125, ptr %a.data.gep127, align 8
  %a.cap.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create123, i32 0, i32 2
  store i64 16, ptr %a.cap.gep128, align 8
  store ptr %a.create123, ptr %var.res, align 8
  br label %a.after121

a.after121:                                       ; preds = %a.create120, %loop.exit.71
  %a.load2129 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2129
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
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define i64 @"fs::open_wronly_creat_trunc"() #0 {
entry:
  ret i64 577
}

define { i64, ptr } @"fs::read_to_string"(ptr %0) #0 {
entry:
  %var.n87 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.73 = alloca i64, align 8
  %loop.idx.73 = alloca i64, align 8
  %"var.read_err'" = alloca i1, align 1
  %var.chunk = alloca ptr, align 8
  %"var.b'" = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.sz = alloca i64, align 8
  %var.rc = alloca i64, align 8
  %"var.s'" = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i32 @open(ptr %arg.str.ptr7, i32 0)
  %coerce.sext = sext i32 %call.res to i64
  store i64 %coerce.sext, ptr %var.fd, align 8
  %var.load8 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load8, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret { i64, ptr } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %call.res9 = call ptr @"fs::empty_stat"()
  store ptr %call.res9, ptr %"var.s'", align 8
  %var.load10 = load i64, ptr %var.fd, align 8
  %var.load11 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load11 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load10 to i32
  %call.res12 = call i64 @fstat(i32 %coerce.trunc, ptr %addr.ffi.clean)
  store i64 %call.res12, ptr %var.rc, align 8
  %var.load13 = load i64, ptr %var.rc, align 8
  %cmptmp14 = icmp eq i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then15:                                    ; preds = %choice.exit
  %var.load17 = load ptr, ptr %"var.s'", align 8
  %call.res18 = call i64 @"fs::stat_size"(ptr %var.load17)
  %max = call i64 @llvm.smax.i64(i64 %call.res18, i64 0)
  br label %choice.exit16

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else, %choice.then15
  %choice.res = phi i64 [ %max, %choice.then15 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.sz, align 8
  %var.load19 = load i64, ptr %var.sz, align 8
  %cmptmp20 = icmp sgt i64 %var.load19, 0
  br i1 %cmptmp20, label %choice.then21, label %choice.else22

choice.then21:                                    ; preds = %choice.exit16
  %var.load24 = load i64, ptr %var.sz, align 8
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 24)
  %cap.neg = icmp slt i64 %var.load24, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load24
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum26 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf27 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf27, label %str_overflow_abort29, label %b.buf.len28

choice.else22:                                    ; preds = %choice.exit16
  %copy.len = load i64, ptr @str.5.struct, align 8
  %copy.len60 = and i64 %copy.len, 281474976710655
  %copy.len61 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %copy.alen = add i64 %copy.len60, 1
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %copy.alen)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 %copy.len61, i64 %copy.len60, i1 false)
  %copy.nul = getelementptr i8, ptr %copy.buf, i64 %copy.len60
  store i8 0, ptr %copy.nul, align 1
  %arena.cur63 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 16)
  %str.copy.len.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 0
  store i64 %copy.len60, ptr %str.copy.len.gep, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  store ptr %copy.str, ptr %"var.b'", align 8
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 24)
  %b.data.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new65, i32 0, i32 1
  %b.len.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new65, i32 0, i32 0
  %b.cap.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new65, i32 0, i32 2
  %b.buf.len69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.buf.len69, 0
  %ovf71 = extractvalue { i64, i1 } %b.buf.len69, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.buf.len72

choice.exit23:                                    ; preds = %choice.exit175, %choice.exit45
  %choice.res178 = phi ptr [ %choice.res59, %choice.exit45 ], [ %choice.res177, %choice.exit175 ]
  %ret.niche.nn = icmp ne ptr %choice.res178, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

b.buf.len28:                                      ; preds = %abort.dead30, %choice.then21
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 %sum26)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load32 = load i64, ptr %var.fd, align 8
  %var.load33 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %b.ptr34 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int35 = ptrtoint ptr %b.ptr34 to i64
  %addr.ffi.masked36 = and i64 %addr.ffi.int35, 281474976710655
  %addr.ffi.clean37 = inttoptr i64 %addr.ffi.masked36 to ptr
  %var.load38 = load i64, ptr %var.sz, align 8
  %coerce.trunc39 = trunc i64 %var.load32 to i32
  %call.res40 = call i64 @read(i32 %coerce.trunc39, ptr %addr.ffi.clean37, i64 %var.load38)
  store i64 %call.res40, ptr %var.n, align 8
  %var.load41 = load i64, ptr %var.fd, align 8
  %coerce.trunc42 = trunc i64 %var.load41 to i32
  %call.res43 = call i32 @close(i32 %coerce.trunc42)
  %var.load44 = load i64, ptr %var.n, align 8
  %cmptmp46 = icmp slt i64 %var.load44, 0
  br i1 %cmptmp46, label %choice.case, label %choice.next

str_overflow_abort29:                             ; preds = %choice.then21
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %b.buf.len28

choice.exit45:                                    ; preds = %b.freeze.done, %choice.case47, %choice.case
  %choice.res59 = phi ptr [ null, %choice.case ], [ @str.5.struct, %choice.case47 ], [ %builder.freeze, %b.freeze.done ]
  br label %choice.exit23

choice.case:                                      ; preds = %b.buf.len28
  br label %choice.exit45

choice.next:                                      ; preds = %b.buf.len28
  %val.match = icmp eq i64 %var.load44, 0
  br i1 %val.match, label %choice.case47, label %choice.next48

choice.case47:                                    ; preds = %choice.next
  br label %choice.exit45

choice.next48:                                    ; preds = %choice.next
  %var.load49 = load i64, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap50 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load49, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

b.len_big_check:                                  ; preds = %choice.next48
  %b.len.big = icmp sgt i64 %var.load49, %b.cap50
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead51, %b.len_big_check
  %b.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load49, ptr %b.len.gep52, align 8
  %var.load53 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load53, i32 0, i32 0
  %b.freeze.len54 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load53, i32 0, i32 1
  %b.freeze.data55 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.next48
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead51:                                     ; No predecessors!
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data55, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data55, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data55, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len54, 1
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data55, i64 %b.freeze.len54, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len54
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data57 = phi ptr [ %b.freeze.data55, %b.len_ok ], [ %b.freeze.data55, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len54, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data57, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load53, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load53, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load53, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit45

b.buf.len72:                                      ; preds = %abort.dead74, %choice.else22
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %sum70)
  %b.nul077 = getelementptr i8, ptr %b.buf76, i64 0
  store i8 0, ptr %b.nul077, align 1
  store i64 0, ptr %b.len.gep67, align 8
  store ptr %b.buf76, ptr %b.data.gep66, align 8
  store i64 4096, ptr %b.cap.gep68, align 8
  store ptr %builder.new65, ptr %var.chunk, align 8
  store i1 false, ptr %"var.read_err'", align 1
  store i64 0, ptr %loop.idx.73, align 8
  br label %loop.header.73

str_overflow_abort73:                             ; preds = %choice.else22
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %b.buf.len72

loop.header.73:                                   ; preds = %loop.latch.73, %b.buf.len72
  %counter.load = load i64, ptr %loop.idx.73, align 8
  br label %loop.body.73

loop.body.73:                                     ; preds = %loop.header.73
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.73, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load78 = load i64, ptr %var.fd, align 8
  %var.load79 = load ptr, ptr %var.chunk, align 8
  %b.ptr80 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 1
  %b.ptr81 = load ptr, ptr %b.ptr80, align 8
  %addr.ffi.int82 = ptrtoint ptr %b.ptr81 to i64
  %addr.ffi.masked83 = and i64 %addr.ffi.int82, 281474976710655
  %addr.ffi.clean84 = inttoptr i64 %addr.ffi.masked83 to ptr
  %coerce.trunc85 = trunc i64 %var.load78 to i32
  %call.res86 = call i64 @read(i32 %coerce.trunc85, ptr %addr.ffi.clean84, i64 4096)
  store i64 %call.res86, ptr %var.n87, align 8
  %var.load88 = load i64, ptr %var.n87, align 8
  %cmptmp89 = icmp slt i64 %var.load88, 0
  br i1 %cmptmp89, label %choice.then90, label %choice.exit91

loop.exit.nat.73:                                 ; No predecessors!
  br label %loop.exit.73

loop.latch.73:                                    ; preds = %concat.tot.len162
  %step.val = load i64, ptr %loop.step.73, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.73, align 8
  br label %loop.header.73

loop.exit.73:                                     ; preds = %choice.then94, %choice.then90, %loop.exit.nat.73
  %var.load169 = load i64, ptr %var.fd, align 8
  %coerce.trunc170 = trunc i64 %var.load169 to i32
  %call.res171 = call i32 @close(i32 %coerce.trunc170)
  %var.load172 = load i1, ptr %"var.read_err'", align 1
  br i1 %var.load172, label %choice.then173, label %choice.else174

choice.then90:                                    ; preds = %loop.body.73
  store i1 true, ptr %"var.read_err'", align 1
  br label %loop.exit.73

choice.exit91:                                    ; preds = %loop.body.73
  %var.load92 = load i64, ptr %var.n87, align 8
  %cmptmp93 = icmp eq i64 %var.load92, 0
  br i1 %cmptmp93, label %choice.then94, label %choice.exit95

choice.then94:                                    ; preds = %choice.exit91
  br label %loop.exit.73

choice.exit95:                                    ; preds = %choice.exit91
  %var.load96 = load i64, ptr %var.n87, align 8
  %b.load97 = load ptr, ptr %var.chunk, align 8
  %b.cap98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load97, i32 0, i32 2
  %b.cap99 = load i64, ptr %b.cap98, align 8
  %b.len.neg100 = icmp slt i64 %var.load96, 0
  br i1 %b.len.neg100, label %b.len_oob103, label %b.len_big_check101

b.len_big_check101:                               ; preds = %choice.exit95
  %b.len.big104 = icmp sgt i64 %var.load96, %b.cap99
  br i1 %b.len.big104, label %b.len_oob103, label %b.len_ok102

b.len_ok102:                                      ; preds = %abort.dead105, %b.len_big_check101
  %b.len.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load97, i32 0, i32 0
  store i64 %var.load96, ptr %b.len.gep106, align 8
  %var.load107 = load ptr, ptr %"var.b'", align 8
  %var.load108 = load ptr, ptr %var.chunk, align 8
  %b.freeze.len109 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 0
  %b.freeze.len110 = load i64, ptr %b.freeze.len109, align 8
  %b.freeze.data111 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 1
  %b.freeze.data112 = load ptr, ptr %b.freeze.data111, align 8
  %b.freeze.arena113 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep114 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena113, i32 0, i32 1
  %b.freeze.nc115 = load i64, ptr %b.freeze.nc.gep114, align 8
  %b.freeze.has.chunk116 = icmp sgt i64 %b.freeze.nc115, 0
  br i1 %b.freeze.has.chunk116, label %b.freeze.check117, label %b.freeze.done119

b.len_oob103:                                     ; preds = %b.len_big_check101, %choice.exit95
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead105:                                    ; No predecessors!
  br label %b.len_ok102

b.freeze.check117:                                ; preds = %b.len_ok102
  %b.freeze.last.idx120 = sub i64 %b.freeze.nc115, 1
  %b.freeze.chunks.gep121 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena113, i32 0, i32 3
  %b.freeze.chunk.slot122 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep121, i64 0, i64 %b.freeze.last.idx120
  %b.freeze.last.chunk123 = load ptr, ptr %b.freeze.chunk.slot122, align 8
  %b.freeze.off.gep124 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena113, i32 0, i32 2
  %b.freeze.off125 = load i64, ptr %b.freeze.off.gep124, align 8
  %b.freeze.bump126 = getelementptr i8, ptr %b.freeze.last.chunk123, i64 %b.freeze.off125
  %b.freeze.cap.gep127 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena113, i32 0, i32 0
  %b.freeze.cap128 = load i64, ptr %b.freeze.cap.gep127, align 8
  %b.freeze.chunk.end129 = getelementptr i8, ptr %b.freeze.last.chunk123, i64 %b.freeze.cap128
  %b.freeze.ge.chunk130 = icmp uge ptr %b.freeze.data112, %b.freeze.last.chunk123
  %b.freeze.lt.end131 = icmp ult ptr %b.freeze.data112, %b.freeze.chunk.end129
  %b.freeze.in.chunk132 = and i1 %b.freeze.ge.chunk130, %b.freeze.lt.end131
  %b.freeze.ge.bump133 = icmp uge ptr %b.freeze.data112, %b.freeze.bump126
  %b.freeze.reaped134 = and i1 %b.freeze.in.chunk132, %b.freeze.ge.bump133
  br i1 %b.freeze.reaped134, label %b.freeze.copy118, label %b.freeze.done119

b.freeze.copy118:                                 ; preds = %b.freeze.check117
  %b.freeze.alen135 = add i64 %b.freeze.len110, 1
  %arena.cur136 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 %b.freeze.alen135)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh137, ptr align 1 %b.freeze.data112, i64 %b.freeze.len110, i1 false)
  %b.freeze.nul138 = getelementptr i8, ptr %b.freeze.fresh137, i64 %b.freeze.len110
  store i8 0, ptr %b.freeze.nul138, align 1
  br label %b.freeze.done119

b.freeze.done119:                                 ; preds = %b.freeze.copy118, %b.freeze.check117, %b.len_ok102
  %b.freeze.data139 = phi ptr [ %b.freeze.data112, %b.len_ok102 ], [ %b.freeze.data112, %b.freeze.check117 ], [ %b.freeze.fresh137, %b.freeze.copy118 ]
  %arena.cur140 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 16)
  %str.build.len.gep142 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze141, i32 0, i32 0
  store i64 %b.freeze.len110, ptr %str.build.len.gep142, align 8
  %str.build.data.gep143 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze141, i32 0, i32 1
  store ptr %b.freeze.data139, ptr %str.build.data.gep143, align 8
  %b.freeze.rst.len144 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len144, align 8
  %b.freeze.rst.data145 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data145, align 8
  %b.freeze.rst.cap146 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap146, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load107, i32 0, i32 0
  %concat.lhs147 = load i64, ptr %concat.lhs, align 8
  %concat.lhs148 = and i64 %concat.lhs147, 281474976710655
  %concat.lhs149 = getelementptr inbounds { i64, ptr }, ptr %var.load107, i32 0, i32 1
  %concat.lhs150 = load ptr, ptr %concat.lhs149, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze141, i32 0, i32 0
  %concat.rhs151 = load i64, ptr %concat.rhs, align 8
  %concat.rhs152 = and i64 %concat.rhs151, 281474976710655
  %concat.rhs153 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze141, i32 0, i32 1
  %concat.rhs154 = load ptr, ptr %concat.rhs153, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs148, i64 %concat.rhs152)
  %sum155 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf156 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf156, label %str_overflow_abort158, label %concat.sum.len157

concat.sum.len157:                                ; preds = %abort.dead159, %b.freeze.done119
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum155, i64 1)
  %sum160 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf161 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf161, label %str_overflow_abort163, label %concat.tot.len162

str_overflow_abort158:                            ; preds = %b.freeze.done119
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead159:                                    ; No predecessors!
  br label %concat.sum.len157

concat.tot.len162:                                ; preds = %abort.dead164, %concat.sum.len157
  %arena.cur165 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 %sum160)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs150, i64 %concat.lhs148, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs148
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs154, i64 %concat.rhs152, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum155
  store i8 0, ptr %concat.nul, align 1
  %arena.cur166 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 16)
  %str.build.len.gep167 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum155, ptr %str.build.len.gep167, align 8
  %str.build.data.gep168 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep168, align 8
  store ptr %concat.str, ptr %"var.b'", align 8
  br label %loop.latch.73

str_overflow_abort163:                            ; preds = %concat.sum.len157
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead164:                                    ; No predecessors!
  br label %concat.tot.len162

choice.then173:                                   ; preds = %loop.exit.73
  br label %choice.exit175

choice.else174:                                   ; preds = %loop.exit.73
  %var.load176 = load ptr, ptr %"var.b'", align 8
  br label %choice.exit175

choice.exit175:                                   ; preds = %choice.else174, %choice.then173
  %choice.res177 = phi ptr [ null, %choice.then173 ], [ %var.load176, %choice.else174 ]
  br label %choice.exit23

ret.niche.load:                                   ; preds = %choice.exit23
  %ret.niche.val = load { i64, ptr }, ptr %choice.res178, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit23
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit23 ]
  ret { i64, ptr } %ret.niche.pack
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

define i1 @"fs::write_file"(ptr %0, ptr %1) #0 {
entry:
  %var.rc = alloca i64, align 8
  %var.w = alloca i64, align 8
  %var.v = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.74 = alloca i64, align 8
  %loop.idx.74 = alloca i64, align 8
  %"var.ok'" = alloca i1, align 1
  %"var.off'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.content = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  store ptr %1, ptr %var.content, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i64 @"fs::open_wronly_creat_trunc"()
  %coerce.trunc = trunc i64 %call.res to i32
  %call.res8 = call i32 @open(ptr %arg.str.ptr7, i32 %coerce.trunc, i64 420)
  %coerce.sext = sext i32 %call.res8 to i64
  store i64 %coerce.sext, ptr %var.fd, align 8
  %var.load9 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load9, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load10 = load ptr, ptr %var.content, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag13 = lshr i64 %str.len.query11, 48
  %tag.immortal15 = icmp eq i64 %str.tag13, 0
  %active.gen16 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current17 = icmp eq i64 %str.tag13, %active.gen16
  %tag.fast.ok18 = or i1 %tag.immortal15, %tag.current17
  br i1 %tag.fast.ok18, label %str_ok14, label %tag.slow_check19

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok14:                                         ; preds = %tag.slow_check19, %choice.exit
  store i64 %str.len.query12, ptr %var.len, align 8
  store i64 0, ptr %"var.off'", align 8
  store i1 true, ptr %"var.ok'", align 1
  store i64 0, ptr %loop.idx.74, align 8
  br label %loop.header.74

tag.slow_check19:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag13)
  br label %str_ok14

loop.header.74:                                   ; preds = %loop.latch.74, %str_ok14
  %counter.load = load i64, ptr %loop.idx.74, align 8
  br label %loop.body.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.74, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load20 = load i64, ptr %"var.off'", align 8
  %var.load21 = load i64, ptr %var.len, align 8
  %cmptmp22 = icmp sge i64 %var.load20, %var.load21
  br i1 %cmptmp22, label %choice.then23, label %choice.exit24

loop.exit.nat.74:                                 ; No predecessors!
  br label %loop.exit.74

loop.latch.74:                                    ; preds = %choice.exit64
  %step.val = load i64, ptr %loop.step.74, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.74, align 8
  br label %loop.header.74

loop.exit.74:                                     ; preds = %choice.then63, %choice.then23, %loop.exit.nat.74
  %var.load67 = load i64, ptr %var.fd, align 8
  %coerce.trunc68 = trunc i64 %var.load67 to i32
  %call.res69 = call i32 @close(i32 %coerce.trunc68)
  %coerce.sext70 = sext i32 %call.res69 to i64
  store i64 %coerce.sext70, ptr %var.rc, align 8
  %var.load71 = load i1, ptr %"var.ok'", align 1
  br i1 %var.load71, label %and.75.then, label %and.75.else

choice.then23:                                    ; preds = %loop.body.74
  br label %loop.exit.74

choice.exit24:                                    ; preds = %loop.body.74
  %var.load25 = load ptr, ptr %var.content, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data, align 8
  %var.load29 = load i64, ptr %"var.off'", align 8
  %var.load30 = load i64, ptr %var.len, align 8
  %start.is_neg = icmp slt i64 %var.load29, 0
  %rel.start = add i64 %s.read.len27, %var.load29
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load29
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len27
  %final.start = select i1 %start.gt.len, i64 %s.read.len27, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load30, 0
  %rel.end = add i64 %s.read.len27, %var.load30
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load30
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len27
  %final.end = select i1 %end.gt.len, i64 %s.read.len27, i64 %c.end.0
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
  store ptr %str.view, ptr %var.v, align 8
  %var.load32 = load i64, ptr %var.fd, align 8
  %var.load33 = load ptr, ptr %var.v, align 8
  %arg.str.ptr34 = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %arg.str.ptr35 = load ptr, ptr %arg.str.ptr34, align 8
  %arg.str.ptr36 = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %arg.str.ptr37 = load i64, ptr %arg.str.ptr36, align 8
  %arg.str.ptr38 = and i64 %arg.str.ptr37, 281474976710655
  %nulcheck.gep39 = getelementptr i8, ptr %arg.str.ptr35, i64 %arg.str.ptr38
  %nulcheck.byte40 = load i8, ptr %nulcheck.gep39, align 1
  %nulcheck41 = icmp eq i8 %nulcheck.byte40, 0
  br i1 %nulcheck41, label %arg.str.ptr42, label %nulcopy43

arg.str.ptr42:                                    ; preds = %choice.exit24
  br label %nulmerge44

nulcopy43:                                        ; preds = %choice.exit24
  %nulcopy.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr38, i64 1)
  %sum46 = extractvalue { i64, i1 } %nulcopy.len45, 0
  %ovf47 = extractvalue { i64, i1 } %nulcopy.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %nulcopy.len48

nulmerge44:                                       ; preds = %nulcopy.len48, %arg.str.ptr42
  %arg.str.ptr54 = phi ptr [ %arg.str.ptr35, %arg.str.ptr42 ], [ %nulcopy.buf52, %nulcopy.len48 ]
  %var.load55 = load ptr, ptr %var.v, align 8
  %str.len.query56 = getelementptr inbounds { i64, ptr }, ptr %var.load55, i32 0, i32 0
  %str.len.query57 = load i64, ptr %str.len.query56, align 8
  %str.len.query58 = and i64 %str.len.query57, 281474976710655
  %coerce.trunc59 = trunc i64 %var.load32 to i32
  %call.res60 = call i64 @write(i32 %coerce.trunc59, ptr %arg.str.ptr54, i64 %str.len.query58)
  store i64 %call.res60, ptr %var.w, align 8
  %var.load61 = load i64, ptr %var.w, align 8
  %cmptmp62 = icmp sle i64 %var.load61, 0
  br i1 %cmptmp62, label %choice.then63, label %choice.else

nulcopy.len48:                                    ; preds = %abort.dead50, %nulcopy43
  %arena.cur51 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf52, ptr align 1 %arg.str.ptr35, i64 %arg.str.ptr38, i1 false)
  %nulcopy.nul53 = getelementptr i8, ptr %nulcopy.buf52, i64 %arg.str.ptr38
  store i8 0, ptr %nulcopy.nul53, align 1
  br label %nulmerge44

str_overflow_abort49:                             ; preds = %nulcopy43
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %nulcopy.len48

choice.then63:                                    ; preds = %nulmerge44
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.74

choice.else:                                      ; preds = %nulmerge44
  %var.load65 = load i64, ptr %"var.off'", align 8
  %var.load66 = load i64, ptr %var.w, align 8
  %addtmp = add i64 %var.load65, %var.load66
  store i64 %addtmp, ptr %"var.off'", align 8
  br label %choice.exit64

choice.exit64:                                    ; preds = %choice.else
  br label %loop.latch.74

and.75.then:                                      ; preds = %loop.exit.74
  %var.load72 = load i64, ptr %var.rc, align 8
  %cmptmp73 = icmp eq i64 %var.load72, 0
  br label %and.75.exit

and.75.else:                                      ; preds = %loop.exit.74
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %and.75.then
  %and.75.phi = phi i1 [ %cmptmp73, %and.75.then ], [ %var.load71, %and.75.else ]
  ret i1 %and.75.phi
}

define i1 @"fs::copy_file"(ptr %0, ptr %1) #0 {
entry:
  %var.w = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %"var.ok'" = alloca i1, align 1
  %var.buf = alloca ptr, align 8
  %var.d_fd = alloca i64, align 8
  %var.s_fd = alloca i64, align 8
  %var.dst_path = alloca ptr, align 8
  %var.src_path = alloca ptr, align 8
  store ptr %0, ptr %var.src_path, align 8
  store ptr %1, ptr %var.dst_path, align 8
  %var.load = load ptr, ptr %var.src_path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i32 @open(ptr %arg.str.ptr7, i32 0)
  %coerce.sext = sext i32 %call.res to i64
  store i64 %coerce.sext, ptr %var.s_fd, align 8
  %var.load8 = load i64, ptr %var.s_fd, align 8
  %cmptmp = icmp slt i64 %var.load8, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load9 = load ptr, ptr %var.dst_path, align 8
  %arg.str.ptr10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %arg.str.ptr11 = load ptr, ptr %arg.str.ptr10, align 8
  %arg.str.ptr12 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %arg.str.ptr13 = load i64, ptr %arg.str.ptr12, align 8
  %arg.str.ptr14 = and i64 %arg.str.ptr13, 281474976710655
  %str.tag15 = lshr i64 %arg.str.ptr13, 48
  %tag.immortal17 = icmp eq i64 %str.tag15, 0
  %active.gen18 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current19 = icmp eq i64 %str.tag15, %active.gen18
  %tag.fast.ok20 = or i1 %tag.immortal17, %tag.current19
  br i1 %tag.fast.ok20, label %str_ok16, label %tag.slow_check21

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok16:                                         ; preds = %tag.slow_check21, %choice.exit
  %nulcheck.gep22 = getelementptr i8, ptr %arg.str.ptr11, i64 %arg.str.ptr14
  %nulcheck.byte23 = load i8, ptr %nulcheck.gep22, align 1
  %nulcheck24 = icmp eq i8 %nulcheck.byte23, 0
  br i1 %nulcheck24, label %arg.str.ptr25, label %nulcopy26

tag.slow_check21:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag15)
  br label %str_ok16

arg.str.ptr25:                                    ; preds = %str_ok16
  br label %nulmerge27

nulcopy26:                                        ; preds = %str_ok16
  %nulcopy.len28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr14, i64 1)
  %sum29 = extractvalue { i64, i1 } %nulcopy.len28, 0
  %ovf30 = extractvalue { i64, i1 } %nulcopy.len28, 1
  br i1 %ovf30, label %str_overflow_abort32, label %nulcopy.len31

nulmerge27:                                       ; preds = %nulcopy.len31, %arg.str.ptr25
  %arg.str.ptr37 = phi ptr [ %arg.str.ptr11, %arg.str.ptr25 ], [ %nulcopy.buf35, %nulcopy.len31 ]
  %call.res38 = call i64 @"fs::open_wronly_creat_trunc"()
  %coerce.trunc = trunc i64 %call.res38 to i32
  %call.res39 = call i32 @open(ptr %arg.str.ptr37, i32 %coerce.trunc, i64 420)
  %coerce.sext40 = sext i32 %call.res39 to i64
  store i64 %coerce.sext40, ptr %var.d_fd, align 8
  %var.load41 = load i64, ptr %var.d_fd, align 8
  %cmptmp42 = icmp slt i64 %var.load41, 0
  br i1 %cmptmp42, label %choice.then43, label %choice.exit44

nulcopy.len31:                                    ; preds = %abort.dead33, %nulcopy26
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %sum29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf35, ptr align 1 %arg.str.ptr11, i64 %arg.str.ptr14, i1 false)
  %nulcopy.nul36 = getelementptr i8, ptr %nulcopy.buf35, i64 %arg.str.ptr14
  store i8 0, ptr %nulcopy.nul36, align 1
  br label %nulmerge27

str_overflow_abort32:                             ; preds = %nulcopy26
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %nulcopy.len31

choice.then43:                                    ; preds = %nulmerge27
  %var.load45 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc46 = trunc i64 %var.load45 to i32
  %call.res47 = call i32 @close(i32 %coerce.trunc46)
  ret i1 false

choice.exit44:                                    ; preds = %ret.dead48, %nulmerge27
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16384, i64 1)
  %sum50 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf51 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf51, label %str_overflow_abort53, label %b.buf.len52

ret.dead48:                                       ; No predecessors!
  br label %choice.exit44

b.buf.len52:                                      ; preds = %abort.dead54, %choice.exit44
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %sum50)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16384, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  store i1 true, ptr %"var.ok'", align 1
  store i64 0, ptr %loop.idx.76, align 8
  br label %loop.header.76

str_overflow_abort53:                             ; preds = %choice.exit44
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %b.buf.len52

loop.header.76:                                   ; preds = %loop.latch.76, %b.buf.len52
  %counter.load = load i64, ptr %loop.idx.76, align 8
  br label %loop.body.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load56 = load i64, ptr %var.s_fd, align 8
  %var.load57 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load57, i32 0, i32 1
  %b.ptr58 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr58 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc59 = trunc i64 %var.load56 to i32
  %call.res60 = call i64 @read(i32 %coerce.trunc59, ptr %addr.ffi.clean, i64 16384)
  store i64 %call.res60, ptr %var.n, align 8
  %var.load61 = load i64, ptr %var.n, align 8
  %cmptmp62 = icmp sle i64 %var.load61, 0
  br i1 %cmptmp62, label %choice.then63, label %choice.exit64

loop.exit.nat.76:                                 ; No predecessors!
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit79
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %choice.then78, %choice.then63, %loop.exit.nat.76
  %var.load80 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc81 = trunc i64 %var.load80 to i32
  %call.res82 = call i32 @close(i32 %coerce.trunc81)
  %var.load83 = load i64, ptr %var.d_fd, align 8
  %coerce.trunc84 = trunc i64 %var.load83 to i32
  %call.res85 = call i32 @close(i32 %coerce.trunc84)
  %var.load86 = load i1, ptr %"var.ok'", align 1
  ret i1 %var.load86

choice.then63:                                    ; preds = %loop.body.76
  br label %loop.exit.76

choice.exit64:                                    ; preds = %loop.body.76
  %var.load65 = load i64, ptr %var.d_fd, align 8
  %var.load66 = load ptr, ptr %var.buf, align 8
  %b.ptr67 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load66, i32 0, i32 1
  %b.ptr68 = load ptr, ptr %b.ptr67, align 8
  %addr.ffi.int69 = ptrtoint ptr %b.ptr68 to i64
  %addr.ffi.masked70 = and i64 %addr.ffi.int69, 281474976710655
  %addr.ffi.clean71 = inttoptr i64 %addr.ffi.masked70 to ptr
  %var.load72 = load i64, ptr %var.n, align 8
  %coerce.trunc73 = trunc i64 %var.load65 to i32
  %call.res74 = call i64 @write(i32 %coerce.trunc73, ptr %addr.ffi.clean71, i64 %var.load72)
  store i64 %call.res74, ptr %var.w, align 8
  %var.load75 = load i64, ptr %var.w, align 8
  %var.load76 = load i64, ptr %var.n, align 8
  %cmptmp77 = icmp ne i64 %var.load75, %var.load76
  br i1 %cmptmp77, label %choice.then78, label %choice.exit79

choice.then78:                                    ; preds = %choice.exit64
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.76

choice.exit79:                                    ; preds = %choice.exit64
  br label %loop.latch.76
}

define i1 @"fs::rename_path"(ptr %0, ptr %1) #0 {
entry:
  %var.new_p = alloca ptr, align 8
  %var.old_p = alloca ptr, align 8
  store ptr %0, ptr %var.old_p, align 8
  store ptr %1, ptr %var.new_p, align 8
  %var.load = load ptr, ptr %var.old_p, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load8 = load ptr, ptr %var.new_p, align 8
  %arg.str.ptr9 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %arg.str.ptr10 = load ptr, ptr %arg.str.ptr9, align 8
  %arg.str.ptr11 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %arg.str.ptr12 = load i64, ptr %arg.str.ptr11, align 8
  %arg.str.ptr13 = and i64 %arg.str.ptr12, 281474976710655
  %str.tag14 = lshr i64 %arg.str.ptr12, 48
  %tag.immortal16 = icmp eq i64 %str.tag14, 0
  %active.gen17 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current18 = icmp eq i64 %str.tag14, %active.gen17
  %tag.fast.ok19 = or i1 %tag.immortal16, %tag.current18
  br i1 %tag.fast.ok19, label %str_ok15, label %tag.slow_check20

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6

str_ok15:                                         ; preds = %tag.slow_check20, %nulmerge
  %nulcheck.gep21 = getelementptr i8, ptr %arg.str.ptr10, i64 %arg.str.ptr13
  %nulcheck.byte22 = load i8, ptr %nulcheck.gep21, align 1
  %nulcheck23 = icmp eq i8 %nulcheck.byte22, 0
  br i1 %nulcheck23, label %arg.str.ptr24, label %nulcopy25

tag.slow_check20:                                 ; preds = %nulmerge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag14)
  br label %str_ok15

arg.str.ptr24:                                    ; preds = %str_ok15
  br label %nulmerge26

nulcopy25:                                        ; preds = %str_ok15
  %nulcopy.len27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr13, i64 1)
  %sum28 = extractvalue { i64, i1 } %nulcopy.len27, 0
  %ovf29 = extractvalue { i64, i1 } %nulcopy.len27, 1
  br i1 %ovf29, label %str_overflow_abort31, label %nulcopy.len30

nulmerge26:                                       ; preds = %nulcopy.len30, %arg.str.ptr24
  %arg.str.ptr36 = phi ptr [ %arg.str.ptr10, %arg.str.ptr24 ], [ %nulcopy.buf34, %nulcopy.len30 ]
  %call.res = call i64 @rename(ptr %arg.str.ptr7, ptr %arg.str.ptr36)
  %cmptmp = icmp eq i64 %call.res, 0
  ret i1 %cmptmp

nulcopy.len30:                                    ; preds = %abort.dead32, %nulcopy25
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %sum28)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf34, ptr align 1 %arg.str.ptr10, i64 %arg.str.ptr13, i1 false)
  %nulcopy.nul35 = getelementptr i8, ptr %nulcopy.buf34, i64 %arg.str.ptr13
  store i8 0, ptr %nulcopy.nul35, align 1
  br label %nulmerge26

str_overflow_abort31:                             ; preds = %nulcopy25
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %nulcopy.len30
}

define i1 @"fs::create_file"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"fs::write_file"(ptr %var.load, ptr @str.5.struct)
  ret i1 %call.res
}

define i1 @"fs::create_dir"(ptr %0) #0 {
entry:
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i64 @mkdir(ptr %arg.str.ptr7, i64 493)
  %cmptmp = icmp eq i64 %call.res, 0
  ret i1 %cmptmp

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6
}

define i1 @"fs::create_dir_all"(ptr %0) #0 {
entry:
  %var.ok = alloca i1, align 1
  %var.p = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::is_dir"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call { i64, ptr } @"fs::parent"(ptr %var.load1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res2, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len4 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.exit45, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %call.res53, %choice.exit45 ]
  ret i1 %choice.res

str_ok:                                           ; preds = %tag.slow_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data7 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data7, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.77.then, label %and.77.else

and.77.then:                                      ; preds = %str.eq.merge
  %var.load8 = load ptr, ptr %var.p, align 8
  %var.load9 = load ptr, ptr %var.path, align 8
  %eq.lhs.len10 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %eq.lhs.len11 = load i64, ptr %eq.lhs.len10, align 8
  %eq.lhs.len12 = and i64 %eq.lhs.len11, 281474976710655
  %str.tag13 = lshr i64 %eq.lhs.len11, 48
  %tag.immortal15 = icmp eq i64 %str.tag13, 0
  %active.gen16 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current17 = icmp eq i64 %str.tag13, %active.gen16
  %tag.fast.ok18 = or i1 %tag.immortal15, %tag.current17
  br i1 %tag.fast.ok18, label %str_ok14, label %tag.slow_check19

and.77.else:                                      ; preds = %str.eq.merge
  br label %and.77.exit

and.77.exit:                                      ; preds = %and.77.else, %str.eq.merge33
  %and.77.phi = phi i1 [ %str.neq41, %str.eq.merge33 ], [ %str.neq, %and.77.else ]
  br i1 %and.77.phi, label %and.78.then, label %and.78.else

str_ok14:                                         ; preds = %tag.slow_check19, %and.77.then
  %eq.rhs.len20 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %eq.rhs.len21 = load i64, ptr %eq.rhs.len20, align 8
  %eq.rhs.len22 = and i64 %eq.rhs.len21, 281474976710655
  %str.tag23 = lshr i64 %eq.rhs.len21, 48
  %tag.immortal25 = icmp eq i64 %str.tag23, 0
  %active.gen26 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current27 = icmp eq i64 %str.tag23, %active.gen26
  %tag.fast.ok28 = or i1 %tag.immortal25, %tag.current27
  br i1 %tag.fast.ok28, label %str_ok24, label %tag.slow_check29

tag.slow_check19:                                 ; preds = %and.77.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag13)
  br label %str_ok14

str_ok24:                                         ; preds = %tag.slow_check29, %str_ok14
  %eq.len30 = icmp eq i64 %eq.lhs.len12, %eq.rhs.len22
  br i1 %eq.len30, label %str.eq.then31, label %str.eq.else32

tag.slow_check29:                                 ; preds = %str_ok14
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag23)
  br label %str_ok24

str.eq.then31:                                    ; preds = %str_ok24
  %eq.lhs.data34 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %eq.lhs.data35 = load ptr, ptr %eq.lhs.data34, align 8
  %eq.rhs.data36 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %eq.rhs.data37 = load ptr, ptr %eq.rhs.data36, align 8
  %eq.memcmp38 = call i32 @memcmp(ptr %eq.lhs.data35, ptr %eq.rhs.data37, i64 %eq.lhs.len12)
  %eq.cmp.zero39 = icmp eq i32 %eq.memcmp38, 0
  br label %str.eq.merge33

str.eq.else32:                                    ; preds = %str_ok24
  br label %str.eq.merge33

str.eq.merge33:                                   ; preds = %str.eq.else32, %str.eq.then31
  %str.eq.result40 = phi i1 [ %eq.cmp.zero39, %str.eq.then31 ], [ false, %str.eq.else32 ]
  %str.neq41 = xor i1 %str.eq.result40, true
  br label %and.77.exit

and.78.then:                                      ; preds = %and.77.exit
  %var.load42 = load ptr, ptr %var.p, align 8
  %call.res43 = call i1 @"fs::is_dir"(ptr %var.load42)
  %nottmp = xor i1 %call.res43, true
  br label %and.78.exit

and.78.else:                                      ; preds = %and.77.exit
  br label %and.78.exit

and.78.exit:                                      ; preds = %and.78.else, %and.78.then
  %and.78.phi = phi i1 [ %nottmp, %and.78.then ], [ %and.77.phi, %and.78.else ]
  br i1 %and.78.phi, label %choice.then44, label %choice.exit45

choice.then44:                                    ; preds = %and.78.exit
  %var.load46 = load ptr, ptr %var.p, align 8
  %call.res47 = call i1 @"fs::create_dir_all"(ptr %var.load46)
  store i1 %call.res47, ptr %var.ok, align 1
  %var.load48 = load i1, ptr %var.ok, align 1
  %nottmp49 = xor i1 %var.load48, true
  br i1 %nottmp49, label %choice.then50, label %choice.exit51

choice.exit45:                                    ; preds = %choice.exit51, %and.78.exit
  %var.load52 = load ptr, ptr %var.path, align 8
  %call.res53 = call i1 @"fs::create_dir"(ptr %var.load52)
  br label %choice.exit

choice.then50:                                    ; preds = %choice.then44
  ret i1 false

choice.exit51:                                    ; preds = %ret.dead, %choice.then44
  br label %choice.exit45

ret.dead:                                         ; No predecessors!
  br label %choice.exit51
}

define i1 @"fs::remove"(ptr %0) #0 {
entry:
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::is_dir"(ptr %var.load)
  br i1 %call.res, label %and.79.then, label %and.79.else

and.79.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call i1 @"fs::is_symlink"(ptr %var.load1)
  %nottmp = xor i1 %call.res2, true
  br label %and.79.exit

and.79.else:                                      ; preds = %entry
  br label %and.79.exit

and.79.exit:                                      ; preds = %and.79.else, %and.79.then
  %and.79.phi = phi i1 [ %nottmp, %and.79.then ], [ %call.res, %and.79.else ]
  br i1 %and.79.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.79.exit
  %var.load3 = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %arg.str.ptr4 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr5 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %arg.str.ptr6 = load i64, ptr %arg.str.ptr5, align 8
  %arg.str.ptr7 = and i64 %arg.str.ptr6, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr6, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else:                                      ; preds = %and.79.exit
  %var.load12 = load ptr, ptr %var.path, align 8
  %arg.str.ptr13 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %arg.str.ptr14 = load ptr, ptr %arg.str.ptr13, align 8
  %arg.str.ptr15 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %arg.str.ptr16 = load i64, ptr %arg.str.ptr15, align 8
  %arg.str.ptr17 = and i64 %arg.str.ptr16, 281474976710655
  %str.tag18 = lshr i64 %arg.str.ptr16, 48
  %tag.immortal20 = icmp eq i64 %str.tag18, 0
  %active.gen21 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current22 = icmp eq i64 %str.tag18, %active.gen21
  %tag.fast.ok23 = or i1 %tag.immortal20, %tag.current22
  br i1 %tag.fast.ok23, label %str_ok19, label %tag.slow_check24

choice.exit:                                      ; preds = %nulmerge30, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ %cmptmp42, %nulmerge30 ]
  ret i1 %choice.res

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr4, i64 %arg.str.ptr7
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr8, label %nulcopy

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr8:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr7, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len9

nulmerge:                                         ; preds = %nulcopy.len9, %arg.str.ptr8
  %arg.str.ptr10 = phi ptr [ %arg.str.ptr4, %arg.str.ptr8 ], [ %nulcopy.buf, %nulcopy.len9 ]
  %call.res11 = call i64 @rmdir(ptr %arg.str.ptr10)
  %cmptmp = icmp eq i64 %call.res11, 0
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

str_ok19:                                         ; preds = %tag.slow_check24, %choice.else
  %nulcheck.gep25 = getelementptr i8, ptr %arg.str.ptr14, i64 %arg.str.ptr17
  %nulcheck.byte26 = load i8, ptr %nulcheck.gep25, align 1
  %nulcheck27 = icmp eq i8 %nulcheck.byte26, 0
  br i1 %nulcheck27, label %arg.str.ptr28, label %nulcopy29

tag.slow_check24:                                 ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag18)
  br label %str_ok19

arg.str.ptr28:                                    ; preds = %str_ok19
  br label %nulmerge30

nulcopy29:                                        ; preds = %str_ok19
  %nulcopy.len31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr17, i64 1)
  %sum32 = extractvalue { i64, i1 } %nulcopy.len31, 0
  %ovf33 = extractvalue { i64, i1 } %nulcopy.len31, 1
  br i1 %ovf33, label %str_overflow_abort35, label %nulcopy.len34

nulmerge30:                                       ; preds = %nulcopy.len34, %arg.str.ptr28
  %arg.str.ptr40 = phi ptr [ %arg.str.ptr14, %arg.str.ptr28 ], [ %nulcopy.buf38, %nulcopy.len34 ]
  %call.res41 = call i64 @unlink(ptr %arg.str.ptr40)
  %cmptmp42 = icmp eq i64 %call.res41, 0
  br label %choice.exit

nulcopy.len34:                                    ; preds = %abort.dead36, %nulcopy29
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 %sum32)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf38, ptr align 1 %arg.str.ptr14, i64 %arg.str.ptr17, i1 false)
  %nulcopy.nul39 = getelementptr i8, ptr %nulcopy.buf38, i64 %arg.str.ptr17
  store i8 0, ptr %nulcopy.nul39, align 1
  br label %nulmerge30

str_overflow_abort35:                             ; preds = %nulcopy29
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %nulcopy.len34
}

define i1 @"fs::delete_entry"(ptr %0, i1 %1) #0 {
entry:
  %var.is_d = alloca i1, align 1
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i1 %1, ptr %var.is_d, align 1
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"fs::remove"(ptr %var.load)
  ret i1 %call.res
}

define i1 @"fs::write_text_file"(ptr %0, ptr %1) #0 {
entry:
  %var.content = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  store ptr %1, ptr %var.content, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %var.load1 = load ptr, ptr %var.content, align 8
  %call.res = call i1 @"fs::write_file"(ptr %var.load, ptr %var.load1)
  ret i1 %call.res
}

define i1 @"fs::remove_all"(ptr %0) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.82 = alloca i64, align 8
  %loop.idx.82 = alloca i64, align 8
  %var.ents = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::exists"(ptr %var.load)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %and.80.then, label %and.80.else

and.80.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call i1 @"fs::is_symlink"(ptr %var.load1)
  %nottmp3 = xor i1 %call.res2, true
  br label %and.80.exit

and.80.else:                                      ; preds = %entry
  br label %and.80.exit

and.80.exit:                                      ; preds = %and.80.else, %and.80.then
  %and.80.phi = phi i1 [ %nottmp3, %and.80.then ], [ %nottmp, %and.80.else ]
  br i1 %and.80.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.80.exit
  br label %choice.exit

choice.else:                                      ; preds = %and.80.exit
  %var.load4 = load ptr, ptr %var.path, align 8
  %call.res5 = call i1 @"fs::is_dir"(ptr %var.load4)
  br i1 %call.res5, label %and.81.then, label %and.81.else

choice.exit:                                      ; preds = %choice.exit11, %choice.then
  %choice.res68 = phi i1 [ true, %choice.then ], [ %choice.res, %choice.exit11 ]
  ret i1 %choice.res68

and.81.then:                                      ; preds = %choice.else
  %var.load6 = load ptr, ptr %var.path, align 8
  %call.res7 = call i1 @"fs::is_symlink"(ptr %var.load6)
  %nottmp8 = xor i1 %call.res7, true
  br label %and.81.exit

and.81.else:                                      ; preds = %choice.else
  br label %and.81.exit

and.81.exit:                                      ; preds = %and.81.else, %and.81.then
  %and.81.phi = phi i1 [ %nottmp8, %and.81.then ], [ %call.res5, %and.81.else ]
  br i1 %and.81.phi, label %choice.then9, label %choice.else10

choice.then9:                                     ; preds = %and.81.exit
  %var.load12 = load ptr, ptr %var.path, align 8
  %call.res13 = call ptr @"fs::read_dir"(ptr %var.load12)
  store ptr %call.res13, ptr %var.ents, align 8
  %var.load14 = load ptr, ptr %var.ents, align 8
  %a.load = load ptr, ptr %var.ents, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else10:                                    ; preds = %and.81.exit
  %var.load37 = load ptr, ptr %var.path, align 8
  %arg.str.ptr38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %arg.str.ptr39 = load ptr, ptr %arg.str.ptr38, align 8
  %arg.str.ptr40 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %arg.str.ptr41 = load i64, ptr %arg.str.ptr40, align 8
  %arg.str.ptr42 = and i64 %arg.str.ptr41, 281474976710655
  %str.tag43 = lshr i64 %arg.str.ptr41, 48
  %tag.immortal45 = icmp eq i64 %str.tag43, 0
  %active.gen46 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current47 = icmp eq i64 %str.tag43, %active.gen46
  %tag.fast.ok48 = or i1 %tag.immortal45, %tag.current47
  br i1 %tag.fast.ok48, label %str_ok44, label %tag.slow_check49

choice.exit11:                                    ; preds = %nulmerge55, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ %cmptmp67, %nulmerge55 ]
  br label %choice.exit

a.create:                                         ; preds = %choice.then9
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create15, ptr %var.ents, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then9
  %a.load2 = load ptr, ptr %var.ents, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len17 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data18 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.82, align 8
  br label %loop.header.82

loop.header.82:                                   ; preds = %loop.latch.82, %a.after
  %counter.load = load i64, ptr %loop.idx.82, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len17
  br i1 %loop.cond, label %loop.body.82, label %loop.exit.nat.82

loop.body.82:                                     ; preds = %loop.header.82
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.82, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data18, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load19 = load ptr, ptr %var.path, align 8
  %var.load20 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load20, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res21 = call { i64, ptr } @"fs::join"(ptr %var.load19, ptr %fld.load)
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  store { i64, ptr } %call.res21, ptr %ret.ub.alloc, align 8
  %call.res23 = call i1 @"fs::remove_all"(ptr %ret.ub.alloc)
  %nottmp24 = xor i1 %call.res23, true
  br i1 %nottmp24, label %choice.then25, label %choice.exit26

loop.exit.nat.82:                                 ; preds = %loop.header.82
  br label %loop.exit.82

loop.latch.82:                                    ; preds = %choice.exit26
  %step.val = load i64, ptr %loop.step.82, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.82, align 8
  br label %loop.header.82

loop.exit.82:                                     ; preds = %loop.exit.nat.82
  %var.load27 = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %arg.str.ptr28 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr29 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %arg.str.ptr30 = load i64, ptr %arg.str.ptr29, align 8
  %arg.str.ptr31 = and i64 %arg.str.ptr30, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr30, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.then25:                                    ; preds = %loop.body.82
  ret i1 false

choice.exit26:                                    ; preds = %ret.dead, %loop.body.82
  br label %loop.latch.82

ret.dead:                                         ; No predecessors!
  br label %choice.exit26

str_ok:                                           ; preds = %tag.slow_check, %loop.exit.82
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr28, i64 %arg.str.ptr31
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr32, label %nulcopy

tag.slow_check:                                   ; preds = %loop.exit.82
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr32:                                    ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr31, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len33

nulmerge:                                         ; preds = %nulcopy.len33, %arg.str.ptr32
  %arg.str.ptr35 = phi ptr [ %arg.str.ptr28, %arg.str.ptr32 ], [ %nulcopy.buf, %nulcopy.len33 ]
  %call.res36 = call i64 @rmdir(ptr %arg.str.ptr35)
  %cmptmp = icmp eq i64 %call.res36, 0
  br label %choice.exit11

nulcopy.len33:                                    ; preds = %abort.dead, %nulcopy
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr28, i64 %arg.str.ptr31, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr31
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len33

str_ok44:                                         ; preds = %tag.slow_check49, %choice.else10
  %nulcheck.gep50 = getelementptr i8, ptr %arg.str.ptr39, i64 %arg.str.ptr42
  %nulcheck.byte51 = load i8, ptr %nulcheck.gep50, align 1
  %nulcheck52 = icmp eq i8 %nulcheck.byte51, 0
  br i1 %nulcheck52, label %arg.str.ptr53, label %nulcopy54

tag.slow_check49:                                 ; preds = %choice.else10
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag43)
  br label %str_ok44

arg.str.ptr53:                                    ; preds = %str_ok44
  br label %nulmerge55

nulcopy54:                                        ; preds = %str_ok44
  %nulcopy.len56 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr42, i64 1)
  %sum57 = extractvalue { i64, i1 } %nulcopy.len56, 0
  %ovf58 = extractvalue { i64, i1 } %nulcopy.len56, 1
  br i1 %ovf58, label %str_overflow_abort60, label %nulcopy.len59

nulmerge55:                                       ; preds = %nulcopy.len59, %arg.str.ptr53
  %arg.str.ptr65 = phi ptr [ %arg.str.ptr39, %arg.str.ptr53 ], [ %nulcopy.buf63, %nulcopy.len59 ]
  %call.res66 = call i64 @unlink(ptr %arg.str.ptr65)
  %cmptmp67 = icmp eq i64 %call.res66, 0
  br label %choice.exit11

nulcopy.len59:                                    ; preds = %abort.dead61, %nulcopy54
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %sum57)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf63, ptr align 1 %arg.str.ptr39, i64 %arg.str.ptr42, i1 false)
  %nulcopy.nul64 = getelementptr i8, ptr %nulcopy.buf63, i64 %arg.str.ptr42
  store i8 0, ptr %nulcopy.nul64, align 1
  br label %nulmerge55

str_overflow_abort60:                             ; preds = %nulcopy54
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead61:                                     ; No predecessors!
  br label %nulcopy.len59
}

define ptr @"fs::space"(ptr %0) #0 {
entry:
  %var.avail = alloca i64, align 8
  %var.free = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.bavail = alloca i64, align 8
  %var.bfree = alloca i64, align 8
  %var.blocks = alloca i64, align 8
  %"var.eff_frsize'" = alloca i64, align 8
  %var.frsize = alloca i64, align 8
  %var.rc = alloca i64, align 8
  %"var.st'" = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %call.res = call ptr @"fs::empty_statvfs"()
  store ptr %call.res, ptr %"var.st'", align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load8 = load ptr, ptr %"var.st'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load8 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res9 = call i64 @statvfs(ptr %arg.str.ptr7, ptr %addr.ffi.clean)
  store i64 %call.res9, ptr %var.rc, align 8
  %var.load10 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load10, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load11 = load ptr, ptr %"var.st'", align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load11, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.frsize, align 8
  %var.load12 = load i64, ptr %var.frsize, align 8
  %cmptmp13 = icmp eq i64 %var.load12, 0
  br i1 %cmptmp13, label %choice.then14, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then14:                                    ; preds = %choice.exit
  %var.load16 = load ptr, ptr %"var.st'", align 8
  %fld.gep17 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  br label %choice.exit15

choice.else:                                      ; preds = %choice.exit
  %var.load19 = load i64, ptr %var.frsize, align 8
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else, %choice.then14
  %choice.res = phi i64 [ %fld.load18, %choice.then14 ], [ %var.load19, %choice.else ]
  store i64 %choice.res, ptr %"var.eff_frsize'", align 8
  %var.load20 = load i64, ptr %"var.eff_frsize'", align 8
  %cmptmp21 = icmp eq i64 %var.load20, 0
  br i1 %cmptmp21, label %choice.then22, label %choice.else23

choice.then22:                                    ; preds = %choice.exit15
  br label %choice.exit24

choice.else23:                                    ; preds = %choice.exit15
  %var.load25 = load i64, ptr %"var.eff_frsize'", align 8
  br label %choice.exit24

choice.exit24:                                    ; preds = %choice.else23, %choice.then22
  %choice.res26 = phi i64 [ 4096, %choice.then22 ], [ %var.load25, %choice.else23 ]
  store i64 %choice.res26, ptr %"var.eff_frsize'", align 8
  %var.load27 = load ptr, ptr %"var.st'", align 8
  %fld.gep28 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load27, i32 0, i32 2
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  store i64 %fld.load29, ptr %var.blocks, align 8
  %var.load30 = load ptr, ptr %"var.st'", align 8
  %fld.gep31 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load30, i32 0, i32 3
  %fld.load32 = load i64, ptr %fld.gep31, align 8
  store i64 %fld.load32, ptr %var.bfree, align 8
  %var.load33 = load ptr, ptr %"var.st'", align 8
  %fld.gep34 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load33, i32 0, i32 4
  %fld.load35 = load i64, ptr %fld.gep34, align 8
  store i64 %fld.load35, ptr %var.bavail, align 8
  %var.load36 = load i64, ptr %var.blocks, align 8
  %var.load37 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp = mul i64 %var.load36, %var.load37
  store i64 %multmp, ptr %var.total, align 8
  %var.load38 = load i64, ptr %var.bfree, align 8
  %var.load39 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp40 = mul i64 %var.load38, %var.load39
  store i64 %multmp40, ptr %var.free, align 8
  %var.load41 = load i64, ptr %var.bavail, align 8
  %var.load42 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp43 = mul i64 %var.load41, %var.load42
  store i64 %multmp43, ptr %var.avail, align 8
  %var.load44 = load i64, ptr %var.total, align 8
  %var.load45 = load i64, ptr %var.free, align 8
  %var.load46 = load i64, ptr %var.avail, align 8
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load44, ptr %rec.fld, align 8
  %rec.fld48 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load45, ptr %rec.fld48, align 8
  %rec.fld49 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load46, ptr %rec.fld49, align 8
  ret ptr %rec.alloc
}

define ptr @"fs::get_fs_stats"(ptr %0) #0 {
entry:
  %var.pct = alloca i64, align 8
  %var.used_gb = alloca i64, align 8
  %var.free_gb = alloca i64, align 8
  %var.total_gb = alloca i64, align 8
  %var.used_bytes = alloca i64, align 8
  %var.free_bytes = alloca i64, align 8
  %var.total_bytes = alloca i64, align 8
  %var.gb_div = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"fs::space"(ptr %var.load)
  store ptr %call.res, ptr %var.sp, align 8
  %var.load1 = load ptr, ptr %var.sp, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.s, align 8
  store i64 1073741824, ptr %var.gb_div, align 8
  %var.load2 = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.total_bytes, align 8
  %var.load3 = load ptr, ptr %var.s, align 8
  %fld.gep4 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load3, i32 0, i32 2
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  store i64 %fld.load5, ptr %var.free_bytes, align 8
  %var.load6 = load i64, ptr %var.total_bytes, align 8
  %var.load7 = load i64, ptr %var.free_bytes, align 8
  %cmptmp = icmp sgt i64 %var.load6, %var.load7
  br i1 %cmptmp, label %choice.then8, label %choice.else9

choice.else:                                      ; preds = %entry
  %arena.cur68 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld70 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc69, i32 0, i32 0
  store i64 0, ptr %rec.fld70, align 8
  %rec.fld71 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc69, i32 0, i32 1
  store i64 0, ptr %rec.fld71, align 8
  %rec.fld72 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc69, i32 0, i32 2
  store i64 0, ptr %rec.fld72, align 8
  %rec.fld73 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc69, i32 0, i32 3
  store i64 0, ptr %rec.fld73, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit46
  %choice.res74 = phi ptr [ %rec.alloc, %choice.exit46 ], [ %rec.alloc69, %choice.else ]
  ret ptr %choice.res74

choice.then8:                                     ; preds = %choice.then
  %var.load11 = load i64, ptr %var.total_bytes, align 8
  %var.load12 = load i64, ptr %var.free_bytes, align 8
  %subtmp = sub i64 %var.load11, %var.load12
  br label %choice.exit10

choice.else9:                                     ; preds = %choice.then
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else9, %choice.then8
  %choice.res = phi i64 [ %subtmp, %choice.then8 ], [ 0, %choice.else9 ]
  store i64 %choice.res, ptr %var.used_bytes, align 8
  %var.load13 = load i64, ptr %var.total_bytes, align 8
  %var.load14 = load i64, ptr %var.gb_div, align 8
  %div.is.zero = icmp eq i64 %var.load14, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %abort.dead, %choice.exit10
  %div.is.min = icmp eq i64 %var.load13, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load14, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit10
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %div.not_zero

div.ok:                                           ; preds = %abort.dead15, %div.not_zero
  %divtmp = sdiv i64 %var.load13, %var.load14
  store i64 %divtmp, ptr %var.total_gb, align 8
  %var.load16 = load i64, ptr %var.free_bytes, align 8
  %var.load17 = load i64, ptr %var.gb_div, align 8
  %div.is.zero18 = icmp eq i64 %var.load17, 0
  br i1 %div.is.zero18, label %div.zero_abort20, label %div.not_zero19

div.ovf_abort:                                    ; preds = %div.not_zero
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %div.ok

div.not_zero19:                                   ; preds = %abort.dead21, %div.ok
  %div.is.min22 = icmp eq i64 %var.load16, -9223372036854775808
  %div.is.negone23 = icmp eq i64 %var.load17, -1
  %div.is.ovf24 = and i1 %div.is.min22, %div.is.negone23
  br i1 %div.is.ovf24, label %div.ovf_abort26, label %div.ok25

div.zero_abort20:                                 ; preds = %div.ok
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %div.not_zero19

div.ok25:                                         ; preds = %abort.dead27, %div.not_zero19
  %divtmp28 = sdiv i64 %var.load16, %var.load17
  store i64 %divtmp28, ptr %var.free_gb, align 8
  %var.load29 = load i64, ptr %var.used_bytes, align 8
  %var.load30 = load i64, ptr %var.gb_div, align 8
  %div.is.zero31 = icmp eq i64 %var.load30, 0
  br i1 %div.is.zero31, label %div.zero_abort33, label %div.not_zero32

div.ovf_abort26:                                  ; preds = %div.not_zero19
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %div.ok25

div.not_zero32:                                   ; preds = %abort.dead34, %div.ok25
  %div.is.min35 = icmp eq i64 %var.load29, -9223372036854775808
  %div.is.negone36 = icmp eq i64 %var.load30, -1
  %div.is.ovf37 = and i1 %div.is.min35, %div.is.negone36
  br i1 %div.is.ovf37, label %div.ovf_abort39, label %div.ok38

div.zero_abort33:                                 ; preds = %div.ok25
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %div.not_zero32

div.ok38:                                         ; preds = %abort.dead40, %div.not_zero32
  %divtmp41 = sdiv i64 %var.load29, %var.load30
  store i64 %divtmp41, ptr %var.used_gb, align 8
  %var.load42 = load i64, ptr %var.total_bytes, align 8
  %cmptmp43 = icmp sgt i64 %var.load42, 0
  br i1 %cmptmp43, label %choice.then44, label %choice.else45

div.ovf_abort39:                                  ; preds = %div.not_zero32
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %div.ok38

choice.then44:                                    ; preds = %div.ok38
  %var.load47 = load i64, ptr %var.used_bytes, align 8
  %multmp = mul i64 %var.load47, 100
  %var.load48 = load i64, ptr %var.total_bytes, align 8
  %div.is.zero49 = icmp eq i64 %var.load48, 0
  br i1 %div.is.zero49, label %div.zero_abort51, label %div.not_zero50

choice.else45:                                    ; preds = %div.ok38
  br label %choice.exit46

choice.exit46:                                    ; preds = %choice.else45, %div.ok56
  %choice.res60 = phi i64 [ %divtmp59, %div.ok56 ], [ 0, %choice.else45 ]
  store i64 %choice.res60, ptr %var.pct, align 8
  %var.load61 = load i64, ptr %var.used_gb, align 8
  %var.load62 = load i64, ptr %var.total_gb, align 8
  %var.load63 = load i64, ptr %var.pct, align 8
  %var.load64 = load i64, ptr %var.free_gb, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load61, ptr %rec.fld, align 8
  %rec.fld65 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load62, ptr %rec.fld65, align 8
  %rec.fld66 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load63, ptr %rec.fld66, align 8
  %rec.fld67 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load64, ptr %rec.fld67, align 8
  br label %choice.exit

div.not_zero50:                                   ; preds = %abort.dead52, %choice.then44
  %div.is.min53 = icmp eq i64 %multmp, -9223372036854775808
  %div.is.negone54 = icmp eq i64 %var.load48, -1
  %div.is.ovf55 = and i1 %div.is.min53, %div.is.negone54
  br i1 %div.is.ovf55, label %div.ovf_abort57, label %div.ok56

div.zero_abort51:                                 ; preds = %choice.then44
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %div.not_zero50

div.ok56:                                         ; preds = %abort.dead58, %div.not_zero50
  %divtmp59 = sdiv i64 %multmp, %var.load48
  br label %choice.exit46

div.ovf_abort57:                                  ; preds = %div.not_zero50
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %div.ok56
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_zero_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_ovf_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define { i64, ptr } @"fs::format_size"(i64 %0, i1 %1) #0 {
entry:
  %cat.ibuf73 = alloca [24 x i8], align 1
  %cat.ibuf46 = alloca [24 x i8], align 1
  %cat.ibuf16 = alloca [24 x i8], align 1
  %cat.ibuf = alloca [24 x i8], align 1
  %var.is_d = alloca i1, align 1
  %var.sz = alloca i64, align 8
  store i64 %0, ptr %var.sz, align 8
  store i1 %1, ptr %var.is_d, align 1
  %var.load = load i1, ptr %var.is_d, align 1
  br i1 %var.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.7.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.sz, align 8
  %cmptmp = icmp slt i64 %var.load1, 1024
  br i1 %cmptmp, label %choice.case, label %choice.next

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.exit2:                                     ; preds = %concat.tot.len85, %concat.tot.len58, %concat.tot.len28, %concat.tot.len7
  %choice.res = phi ptr [ %concat.str, %concat.tot.len7 ], [ %concat.str38, %concat.tot.len28 ], [ %concat.str68, %concat.tot.len58 ], [ %concat.str95, %concat.tot.len85 ]
  %ret.pack98 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack98

choice.case:                                      ; preds = %choice.exit
  %var.load3 = load i64, ptr %var.sz, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %var.load3, i1 false)
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.ilen, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len4

choice.next:                                      ; preds = %choice.exit
  %cmptmp14 = icmp slt i64 %var.load1, 1048576
  br i1 %cmptmp14, label %choice.case12, label %choice.next13

cat.sum.len4:                                     ; preds = %abort.dead, %choice.case
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum5 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf6 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf6, label %str_overflow_abort8, label %concat.tot.len7

str_overflow_abort:                               ; preds = %choice.case
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len4

concat.tot.len7:                                  ; preds = %abort.dead9, %cat.sum.len4
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum5)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off = add i64 0, %cat.ilen
  %cat.dst10 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst10, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit2

str_overflow_abort8:                              ; preds = %cat.sum.len4
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %concat.tot.len7

choice.case12:                                    ; preds = %choice.next
  %var.load15 = load i64, ptr %var.sz, align 8
  %divtmp = sdiv i64 %var.load15, 1024
  %cat.ilen17 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf16, i64 %divtmp, i1 false)
  %cat.lit.data18 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %cat.sum.len19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.ilen17, i64 3)
  %sum20 = extractvalue { i64, i1 } %cat.sum.len19, 0
  %ovf21 = extractvalue { i64, i1 } %cat.sum.len19, 1
  br i1 %ovf21, label %str_overflow_abort23, label %cat.sum.len22

choice.next13:                                    ; preds = %choice.next
  %cmptmp43 = icmp slt i64 %var.load1, 1073741824
  br i1 %cmptmp43, label %choice.case41, label %choice.next42

cat.sum.len22:                                    ; preds = %abort.dead24, %choice.case12
  %concat.tot.len25 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum20, i64 1)
  %sum26 = extractvalue { i64, i1 } %concat.tot.len25, 0
  %ovf27 = extractvalue { i64, i1 } %concat.tot.len25, 1
  br i1 %ovf27, label %str_overflow_abort29, label %concat.tot.len28

str_overflow_abort23:                             ; preds = %choice.case12
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %cat.sum.len22

concat.tot.len28:                                 ; preds = %abort.dead30, %cat.sum.len22
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 %sum26)
  %cat.dst33 = getelementptr i8, ptr %concat.buf32, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst33, ptr align 1 %cat.ibuf16, i64 %cat.ilen17, i1 false)
  %cat.off34 = add i64 0, %cat.ilen17
  %cat.dst35 = getelementptr i8, ptr %concat.buf32, i64 %cat.off34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst35, ptr align 1 %cat.lit.data18, i64 3, i1 false)
  %concat.nul36 = getelementptr i8, ptr %concat.buf32, i64 %sum20
  store i8 0, ptr %concat.nul36, align 1
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  %str.build.len.gep39 = getelementptr inbounds { i64, ptr }, ptr %concat.str38, i32 0, i32 0
  store i64 %sum20, ptr %str.build.len.gep39, align 8
  %str.build.data.gep40 = getelementptr inbounds { i64, ptr }, ptr %concat.str38, i32 0, i32 1
  store ptr %concat.buf32, ptr %str.build.data.gep40, align 8
  br label %choice.exit2

str_overflow_abort29:                             ; preds = %cat.sum.len22
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %concat.tot.len28

choice.case41:                                    ; preds = %choice.next13
  %var.load44 = load i64, ptr %var.sz, align 8
  %divtmp45 = sdiv i64 %var.load44, 1048576
  %cat.ilen47 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf46, i64 %divtmp45, i1 false)
  %cat.lit.data48 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %cat.sum.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.ilen47, i64 3)
  %sum50 = extractvalue { i64, i1 } %cat.sum.len49, 0
  %ovf51 = extractvalue { i64, i1 } %cat.sum.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %cat.sum.len52

choice.next42:                                    ; preds = %choice.next13
  %var.load71 = load i64, ptr %var.sz, align 8
  %divtmp72 = sdiv i64 %var.load71, 1073741824
  %cat.ilen74 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf73, i64 %divtmp72, i1 false)
  %cat.lit.data75 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %cat.sum.len76 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.ilen74, i64 3)
  %sum77 = extractvalue { i64, i1 } %cat.sum.len76, 0
  %ovf78 = extractvalue { i64, i1 } %cat.sum.len76, 1
  br i1 %ovf78, label %str_overflow_abort80, label %cat.sum.len79

cat.sum.len52:                                    ; preds = %abort.dead54, %choice.case41
  %concat.tot.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum50, i64 1)
  %sum56 = extractvalue { i64, i1 } %concat.tot.len55, 0
  %ovf57 = extractvalue { i64, i1 } %concat.tot.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.tot.len58

str_overflow_abort53:                             ; preds = %choice.case41
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %cat.sum.len52

concat.tot.len58:                                 ; preds = %abort.dead60, %cat.sum.len52
  %arena.cur61 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum56)
  %cat.dst63 = getelementptr i8, ptr %concat.buf62, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst63, ptr align 1 %cat.ibuf46, i64 %cat.ilen47, i1 false)
  %cat.off64 = add i64 0, %cat.ilen47
  %cat.dst65 = getelementptr i8, ptr %concat.buf62, i64 %cat.off64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst65, ptr align 1 %cat.lit.data48, i64 3, i1 false)
  %concat.nul66 = getelementptr i8, ptr %concat.buf62, i64 %sum50
  store i8 0, ptr %concat.nul66, align 1
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  %str.build.len.gep69 = getelementptr inbounds { i64, ptr }, ptr %concat.str68, i32 0, i32 0
  store i64 %sum50, ptr %str.build.len.gep69, align 8
  %str.build.data.gep70 = getelementptr inbounds { i64, ptr }, ptr %concat.str68, i32 0, i32 1
  store ptr %concat.buf62, ptr %str.build.data.gep70, align 8
  br label %choice.exit2

str_overflow_abort59:                             ; preds = %cat.sum.len52
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %concat.tot.len58

cat.sum.len79:                                    ; preds = %abort.dead81, %choice.next42
  %concat.tot.len82 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum77, i64 1)
  %sum83 = extractvalue { i64, i1 } %concat.tot.len82, 0
  %ovf84 = extractvalue { i64, i1 } %concat.tot.len82, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.tot.len85

str_overflow_abort80:                             ; preds = %choice.next42
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead81:                                     ; No predecessors!
  br label %cat.sum.len79

concat.tot.len85:                                 ; preds = %abort.dead87, %cat.sum.len79
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %sum83)
  %cat.dst90 = getelementptr i8, ptr %concat.buf89, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst90, ptr align 1 %cat.ibuf73, i64 %cat.ilen74, i1 false)
  %cat.off91 = add i64 0, %cat.ilen74
  %cat.dst92 = getelementptr i8, ptr %concat.buf89, i64 %cat.off91
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst92, ptr align 1 %cat.lit.data75, i64 3, i1 false)
  %concat.nul93 = getelementptr i8, ptr %concat.buf89, i64 %sum77
  store i8 0, ptr %concat.nul93, align 1
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 16)
  %str.build.len.gep96 = getelementptr inbounds { i64, ptr }, ptr %concat.str95, i32 0, i32 0
  store i64 %sum77, ptr %str.build.len.gep96, align 8
  %str.build.data.gep97 = getelementptr inbounds { i64, ptr }, ptr %concat.str95, i32 0, i32 1
  store ptr %concat.buf89, ptr %str.build.data.gep97, align 8
  br label %choice.exit2

str_overflow_abort86:                             ; preds = %cat.sum.len79
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead87:                                     ; No predecessors!
  br label %concat.tot.len85
}

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

define { i64, ptr } @"fs::format_perms"(i64 %0, i1 %1) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.pb = alloca i16, align 2
  %var.is_d = alloca i1, align 1
  %var.mode = alloca i64, align 8
  store i64 %0, ptr %var.mode, align 8
  store i1 %1, ptr %var.is_d, align 1
  %var.load = load i64, ptr %var.mode, align 8
  %coerce.trunc = trunc i64 %var.load to i16
  store i16 %coerce.trunc, ptr %var.pb, align 2
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
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
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load2 = load i1, ptr %var.is_d, align 1
  br i1 %var.load2, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  br label %choice.exit

choice.else:                                      ; preds = %b.buf.len1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i32 [ 100, %choice.then ], [ 45, %choice.else ]
  %var.load3 = load i16, ptr %var.pb, align 2
  %bf.load = load i16, ptr %var.pb, align 2
  %bf.shr = lshr i16 %bf.load, 8
  %bf.mask = and i16 %bf.shr, 1
  %bf.flag = trunc i16 %bf.mask to i1
  br i1 %bf.flag, label %choice.then4, label %choice.else5

choice.then4:                                     ; preds = %choice.exit
  br label %choice.exit6

choice.else5:                                     ; preds = %choice.exit
  br label %choice.exit6

choice.exit6:                                     ; preds = %choice.else5, %choice.then4
  %choice.res7 = phi i32 [ 114, %choice.then4 ], [ 45, %choice.else5 ]
  %var.load8 = load i16, ptr %var.pb, align 2
  %bf.load9 = load i16, ptr %var.pb, align 2
  %bf.shr10 = lshr i16 %bf.load9, 7
  %bf.mask11 = and i16 %bf.shr10, 1
  %bf.flag12 = trunc i16 %bf.mask11 to i1
  br i1 %bf.flag12, label %choice.then13, label %choice.else14

choice.then13:                                    ; preds = %choice.exit6
  br label %choice.exit15

choice.else14:                                    ; preds = %choice.exit6
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res16 = phi i32 [ 119, %choice.then13 ], [ 45, %choice.else14 ]
  %var.load17 = load i16, ptr %var.pb, align 2
  %bf.load18 = load i16, ptr %var.pb, align 2
  %bf.shr19 = lshr i16 %bf.load18, 6
  %bf.mask20 = and i16 %bf.shr19, 1
  %bf.flag21 = trunc i16 %bf.mask20 to i1
  br i1 %bf.flag21, label %choice.then22, label %choice.else23

choice.then22:                                    ; preds = %choice.exit15
  br label %choice.exit24

choice.else23:                                    ; preds = %choice.exit15
  br label %choice.exit24

choice.exit24:                                    ; preds = %choice.else23, %choice.then22
  %choice.res25 = phi i32 [ 120, %choice.then22 ], [ 45, %choice.else23 ]
  %var.load26 = load i16, ptr %var.pb, align 2
  %bf.load27 = load i16, ptr %var.pb, align 2
  %bf.shr28 = lshr i16 %bf.load27, 5
  %bf.mask29 = and i16 %bf.shr28, 1
  %bf.flag30 = trunc i16 %bf.mask29 to i1
  br i1 %bf.flag30, label %choice.then31, label %choice.else32

choice.then31:                                    ; preds = %choice.exit24
  br label %choice.exit33

choice.else32:                                    ; preds = %choice.exit24
  br label %choice.exit33

choice.exit33:                                    ; preds = %choice.else32, %choice.then31
  %choice.res34 = phi i32 [ 114, %choice.then31 ], [ 45, %choice.else32 ]
  %var.load35 = load i16, ptr %var.pb, align 2
  %bf.load36 = load i16, ptr %var.pb, align 2
  %bf.shr37 = lshr i16 %bf.load36, 4
  %bf.mask38 = and i16 %bf.shr37, 1
  %bf.flag39 = trunc i16 %bf.mask38 to i1
  br i1 %bf.flag39, label %choice.then40, label %choice.else41

choice.then40:                                    ; preds = %choice.exit33
  br label %choice.exit42

choice.else41:                                    ; preds = %choice.exit33
  br label %choice.exit42

choice.exit42:                                    ; preds = %choice.else41, %choice.then40
  %choice.res43 = phi i32 [ 119, %choice.then40 ], [ 45, %choice.else41 ]
  %var.load44 = load i16, ptr %var.pb, align 2
  %bf.load45 = load i16, ptr %var.pb, align 2
  %bf.shr46 = lshr i16 %bf.load45, 3
  %bf.mask47 = and i16 %bf.shr46, 1
  %bf.flag48 = trunc i16 %bf.mask47 to i1
  br i1 %bf.flag48, label %choice.then49, label %choice.else50

choice.then49:                                    ; preds = %choice.exit42
  br label %choice.exit51

choice.else50:                                    ; preds = %choice.exit42
  br label %choice.exit51

choice.exit51:                                    ; preds = %choice.else50, %choice.then49
  %choice.res52 = phi i32 [ 120, %choice.then49 ], [ 45, %choice.else50 ]
  %var.load53 = load i16, ptr %var.pb, align 2
  %bf.load54 = load i16, ptr %var.pb, align 2
  %bf.shr55 = lshr i16 %bf.load54, 2
  %bf.mask56 = and i16 %bf.shr55, 1
  %bf.flag57 = trunc i16 %bf.mask56 to i1
  br i1 %bf.flag57, label %choice.then58, label %choice.else59

choice.then58:                                    ; preds = %choice.exit51
  br label %choice.exit60

choice.else59:                                    ; preds = %choice.exit51
  br label %choice.exit60

choice.exit60:                                    ; preds = %choice.else59, %choice.then58
  %choice.res61 = phi i32 [ 114, %choice.then58 ], [ 45, %choice.else59 ]
  %var.load62 = load i16, ptr %var.pb, align 2
  %bf.load63 = load i16, ptr %var.pb, align 2
  %bf.shr64 = lshr i16 %bf.load63, 1
  %bf.mask65 = and i16 %bf.shr64, 1
  %bf.flag66 = trunc i16 %bf.mask65 to i1
  br i1 %bf.flag66, label %choice.then67, label %choice.else68

choice.then67:                                    ; preds = %choice.exit60
  br label %choice.exit69

choice.else68:                                    ; preds = %choice.exit60
  br label %choice.exit69

choice.exit69:                                    ; preds = %choice.else68, %choice.then67
  %choice.res70 = phi i32 [ 119, %choice.then67 ], [ 45, %choice.else68 ]
  %var.load71 = load i16, ptr %var.pb, align 2
  %bf.load72 = load i16, ptr %var.pb, align 2
  %bf.mask73 = and i16 %bf.load72, 1
  %bf.flag74 = trunc i16 %bf.mask73 to i1
  br i1 %bf.flag74, label %choice.then75, label %choice.else76

choice.then75:                                    ; preds = %choice.exit69
  br label %choice.exit77

choice.else76:                                    ; preds = %choice.exit69
  br label %choice.exit77

choice.exit77:                                    ; preds = %choice.else76, %choice.then75
  %choice.res78 = phi i32 [ 120, %choice.then75 ], [ 45, %choice.else76 ]
  %b.rec.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rec.cur.len79 = load i64, ptr %b.rec.cur.len, align 8
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len79, i64 10)
  %sum80 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf81 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf81, label %str_overflow_abort83, label %b.rec.new.len82

b.rec.new.len82:                                  ; preds = %abort.dead84, %choice.exit77
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap85 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap85, %sum80
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort83:                             ; preds = %choice.exit77
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %b.rec.new.len82

b.grow2:                                          ; preds = %b.rec.new.len82
  %b.cap2 = mul i64 %b.cap85, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum80
  %b.new.cap = select i1 %b.cap.need, i64 %sum80, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len286 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data287 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum88 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf89 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf89, label %str_overflow_abort91, label %b.new.buf.len290

b.nogrow2:                                        ; preds = %b.rec.new.len82
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len290
  %b.rec.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rec.data94 = load ptr, ptr %b.rec.data, align 8
  %b.rec.dst = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.cur.len79
  %b.byte = trunc i32 %choice.res to i8
  store i8 %b.byte, ptr %b.rec.dst, align 1
  %b.rec.off = add i64 %b.rec.cur.len79, 1
  %b.rec.dst95 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off
  %b.byte96 = trunc i32 %choice.res7 to i8
  store i8 %b.byte96, ptr %b.rec.dst95, align 1
  %b.rec.off97 = add i64 %b.rec.off, 1
  %b.rec.dst98 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off97
  %b.byte99 = trunc i32 %choice.res16 to i8
  store i8 %b.byte99, ptr %b.rec.dst98, align 1
  %b.rec.off100 = add i64 %b.rec.off97, 1
  %b.rec.dst101 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off100
  %b.byte102 = trunc i32 %choice.res25 to i8
  store i8 %b.byte102, ptr %b.rec.dst101, align 1
  %b.rec.off103 = add i64 %b.rec.off100, 1
  %b.rec.dst104 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off103
  %b.byte105 = trunc i32 %choice.res34 to i8
  store i8 %b.byte105, ptr %b.rec.dst104, align 1
  %b.rec.off106 = add i64 %b.rec.off103, 1
  %b.rec.dst107 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off106
  %b.byte108 = trunc i32 %choice.res43 to i8
  store i8 %b.byte108, ptr %b.rec.dst107, align 1
  %b.rec.off109 = add i64 %b.rec.off106, 1
  %b.rec.dst110 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off109
  %b.byte111 = trunc i32 %choice.res52 to i8
  store i8 %b.byte111, ptr %b.rec.dst110, align 1
  %b.rec.off112 = add i64 %b.rec.off109, 1
  %b.rec.dst113 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off112
  %b.byte114 = trunc i32 %choice.res61 to i8
  store i8 %b.byte114, ptr %b.rec.dst113, align 1
  %b.rec.off115 = add i64 %b.rec.off112, 1
  %b.rec.dst116 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off115
  %b.byte117 = trunc i32 %choice.res70 to i8
  store i8 %b.byte117, ptr %b.rec.dst116, align 1
  %b.rec.off118 = add i64 %b.rec.off115, 1
  %b.rec.dst119 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off118
  %b.byte120 = trunc i32 %choice.res78 to i8
  store i8 %b.byte120, ptr %b.rec.dst119, align 1
  %b.rec.off121 = add i64 %b.rec.off118, 1
  %b.rec.nul = getelementptr i8, ptr %b.rec.data94, i64 %sum80
  store i8 0, ptr %b.rec.nul, align 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum80, ptr %b.len.gep122, align 8
  %var.load123 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 0
  %b.freeze.len124 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 1
  %b.freeze.data125 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len124, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data125, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack

b.new.buf.len290:                                 ; preds = %abort.dead92, %b.grow2
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 %sum88)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data287, i64 %b.cur.len286, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len286
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort91:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead92:                                     ; No predecessors!
  br label %b.new.buf.len290
}

define { i64, ptr } @"fs::format_time"(i64 %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.len = alloca i64, align 8
  %var.out_buf = alloca ptr, align 8
  %var.res = alloca ptr, align 8
  %var.tm_buf = alloca ptr, align 8
  %var.t_val = alloca i64, align 8
  %var.ts = alloca i64, align 8
  store i64 %0, ptr %var.ts, align 8
  %var.load = load i64, ptr %var.ts, align 8
  %cmptmp = icmp eq i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.12.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.ts, align 8
  store i64 %var.load1, ptr %var.t_val, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
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
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.tm_buf, align 8
  %var.load4 = load i64, ptr %var.t_val, align 8
  %addr.ffi.int = ptrtoint ptr %var.t_val to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load5 = load ptr, ptr %var.tm_buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 1
  %b.ptr6 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int7 = ptrtoint ptr %b.ptr6 to i64
  %addr.ffi.masked8 = and i64 %addr.ffi.int7, 281474976710655
  %addr.ffi.clean9 = inttoptr i64 %addr.ffi.masked8 to ptr
  %call.res = call ptr @localtime_r(ptr %addr.ffi.clean, ptr %addr.ffi.clean9)
  store ptr %call.res, ptr %var.res, align 8
  %var.load10 = load ptr, ptr %var.res, align 8
  %var.load11 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load10 to i64
  %ptr.int.r = ptrtoint ptr %var.load11 to i64
  %cmptmp12 = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp12, label %choice.then13, label %choice.exit14

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

choice.then13:                                    ; preds = %b.buf.len2
  %ret.pack15 = load { i64, ptr }, ptr @str.12.struct, align 8
  ret { i64, ptr } %ret.pack15

choice.exit14:                                    ; preds = %ret.dead16, %b.buf.len2
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %b.data.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new18, i32 0, i32 1
  %b.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new18, i32 0, i32 0
  %b.cap.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new18, i32 0, i32 2
  %b.buf.len22 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum23 = extractvalue { i64, i1 } %b.buf.len22, 0
  %ovf24 = extractvalue { i64, i1 } %b.buf.len22, 1
  br i1 %ovf24, label %str_overflow_abort26, label %b.buf.len25

ret.dead16:                                       ; No predecessors!
  br label %choice.exit14

b.buf.len25:                                      ; preds = %abort.dead27, %choice.exit14
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %sum23)
  %b.nul030 = getelementptr i8, ptr %b.buf29, i64 0
  store i8 0, ptr %b.nul030, align 1
  store i64 0, ptr %b.len.gep20, align 8
  store ptr %b.buf29, ptr %b.data.gep19, align 8
  store i64 64, ptr %b.cap.gep21, align 8
  store ptr %builder.new18, ptr %var.out_buf, align 8
  %var.load31 = load ptr, ptr %var.out_buf, align 8
  %b.ptr32 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load31, i32 0, i32 1
  %b.ptr33 = load ptr, ptr %b.ptr32, align 8
  %addr.ffi.int34 = ptrtoint ptr %b.ptr33 to i64
  %addr.ffi.masked35 = and i64 %addr.ffi.int34, 281474976710655
  %addr.ffi.clean36 = inttoptr i64 %addr.ffi.masked35 to ptr
  %arg.str.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %arg.str.ptr37 = load i64, ptr @str.13.struct, align 8
  %arg.str.ptr38 = and i64 %arg.str.ptr37, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr, i64 %arg.str.ptr38
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr39, label %nulcopy

str_overflow_abort26:                             ; preds = %choice.exit14
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %b.buf.len25

arg.str.ptr39:                                    ; preds = %b.buf.len25
  br label %nulmerge

nulcopy:                                          ; preds = %b.buf.len25
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr38, i64 1)
  %sum40 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf41 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf41, label %str_overflow_abort43, label %nulcopy.len42

nulmerge:                                         ; preds = %nulcopy.len42, %arg.str.ptr39
  %arg.str.ptr46 = phi ptr [ %arg.str.ptr, %arg.str.ptr39 ], [ %nulcopy.buf, %nulcopy.len42 ]
  %var.load47 = load ptr, ptr %var.tm_buf, align 8
  %b.ptr48 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load47, i32 0, i32 1
  %b.ptr49 = load ptr, ptr %b.ptr48, align 8
  %addr.ffi.int50 = ptrtoint ptr %b.ptr49 to i64
  %addr.ffi.masked51 = and i64 %addr.ffi.int50, 281474976710655
  %addr.ffi.clean52 = inttoptr i64 %addr.ffi.masked51 to ptr
  %call.res53 = call i64 @strftime(ptr %addr.ffi.clean36, i64 64, ptr %arg.str.ptr46, ptr %addr.ffi.clean52)
  store i64 %call.res53, ptr %var.len, align 8
  %var.load54 = load i64, ptr %var.len, align 8
  %cmptmp55 = icmp sle i64 %var.load54, 0
  br i1 %cmptmp55, label %choice.then56, label %choice.exit57

nulcopy.len42:                                    ; preds = %abort.dead44, %nulcopy
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 %sum40)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr, i64 %arg.str.ptr38, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr38
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort43:                             ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead44:                                     ; No predecessors!
  br label %nulcopy.len42

choice.then56:                                    ; preds = %nulmerge
  %ret.pack58 = load { i64, ptr }, ptr @str.12.struct, align 8
  ret { i64, ptr } %ret.pack58

choice.exit57:                                    ; preds = %ret.dead59, %nulmerge
  %var.load60 = load i64, ptr %var.len, align 8
  %b.load = load ptr, ptr %var.out_buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap61 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load60, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

ret.dead59:                                       ; No predecessors!
  br label %choice.exit57

b.len_big_check:                                  ; preds = %choice.exit57
  %b.len.big = icmp sgt i64 %var.load60, %b.cap61
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead62, %b.len_big_check
  %b.len.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load60, ptr %b.len.gep63, align 8
  %var.load64 = load ptr, ptr %var.out_buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load64, i32 0, i32 0
  %b.freeze.len65 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load64, i32 0, i32 1
  %b.freeze.data66 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit57
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead62:                                     ; No predecessors!
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

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data68 = phi ptr [ %b.freeze.data66, %b.len_ok ], [ %b.freeze.data66, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
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
  %ret.pack69 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack69
}

define { i64, ptr } @"fs::format_number"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.87 = alloca i64, align 8
  %loop.idx.87 = alloca i64, align 8
  %"var.rem'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.is_neg = alloca i1, align 1
  %var.s_full = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %to_str.n = call i64 @dva_fmt_i64_buf(ptr %to_str.buf, i64 %var.load, i1 false)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.n, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  store ptr %to_str.res, ptr %var.s_full, align 8
  %var.load2 = load ptr, ptr %var.s_full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %str.tag = lshr i64 %str.len.query3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query4, 0
  br i1 %cmptmp, label %and.85.then, label %and.85.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.85.then:                                      ; preds = %str_ok
  %var.load5 = load ptr, ptr %var.s_full, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

and.85.else:                                      ; preds = %str_ok
  br label %and.85.exit

and.85.exit:                                      ; preds = %and.85.else, %idx_ok
  %and.85.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.85.else ]
  store i1 %and.85.phi, ptr %var.is_neg, align 1
  %var.load10 = load i1, ptr %var.is_neg, align 1
  br i1 %var.load10, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.85.then
  %idx.big = icmp sge i64 0, %s.read.len7
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp eq i64 %s.byte.val, 45
  br label %and.85.exit

idx_oob:                                          ; preds = %idx_big_check, %and.85.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.85.exit
  %var.load11 = load ptr, ptr %var.s_full, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  %rel.start = add i64 %s.read.len14, 1
  %norm.start = select i1 false, i64 %rel.start, i64 1
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len14
  %final.start = select i1 %start.gt.len, i64 %s.read.len14, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len14, 0
  %rel.end = add i64 %s.read.len14, %s.read.len14
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len14
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len14
  %final.end = select i1 %end.gt.len, i64 %s.read.len14, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data16, i64 %final.start
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 16)
  %str.build.len.gep18 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep18, align 8
  %str.build.data.gep19 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep19, align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.85.exit
  %var.load20 = load ptr, ptr %var.s_full, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %str.view, %choice.then ], [ %var.load20, %choice.else ]
  store ptr %choice.res, ptr %var.s, align 8
  %var.load21 = load ptr, ptr %var.s, align 8
  %str.len.query22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %str.len.query23 = load i64, ptr %str.len.query22, align 8
  %str.len.query24 = and i64 %str.len.query23, 281474976710655
  %str.tag25 = lshr i64 %str.len.query23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

str_ok26:                                         ; preds = %tag.slow_check31, %choice.exit
  store i64 %str.len.query24, ptr %var.len, align 8
  %var.load32 = load i64, ptr %var.len, align 8
  %cmptmp33 = icmp slt i64 %var.load32, 4
  br i1 %cmptmp33, label %choice.then34, label %choice.exit35

tag.slow_check31:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

choice.then34:                                    ; preds = %str_ok26
  %var.load36 = load ptr, ptr %var.s_full, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load36, align 8
  ret { i64, ptr } %ret.pack

choice.exit35:                                    ; preds = %ret.dead, %str_ok26
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len37

ret.dead:                                         ; No predecessors!
  br label %choice.exit35

b.buf.len37:                                      ; preds = %abort.dead38, %choice.exit35
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load40 = load i1, ptr %var.is_neg, align 1
  br i1 %var.load40, label %choice.then41, label %choice.exit42

str_overflow_abort:                               ; preds = %choice.exit35
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %b.buf.len37

choice.then41:                                    ; preds = %b.buf.len37
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len43 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len43, i64 1)
  %sum44 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf45 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf45, label %str_overflow_abort47, label %b.rn.new.len46

choice.exit42:                                    ; preds = %br.done.86, %b.buf.len37
  %var.load60 = load i64, ptr %var.len, align 8
  %modtmp = srem i64 %var.load60, 3
  store i64 %modtmp, ptr %"var.rem'", align 8
  %var.load61 = load i64, ptr %"var.rem'", align 8
  %cmptmp62 = icmp eq i64 %var.load61, 0
  br i1 %cmptmp62, label %choice.then63, label %choice.exit64

b.rn.new.len46:                                   ; preds = %abort.dead48, %choice.then41
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap49 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap49, %sum44
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort47:                             ; preds = %choice.then41
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %b.rn.new.len46

b.grow2:                                          ; preds = %b.rn.new.len46
  %b.cap2 = mul i64 %b.cap49, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum44
  %b.new.cap = select i1 %b.cap.need, i64 %sum44, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len250 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data251 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum52 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf53 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf53, label %str_overflow_abort55, label %b.new.buf.len254

b.nogrow2:                                        ; preds = %b.rn.new.len46
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len254
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data58 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data58, i64 %b.rn.cur.len43
  br i1 true, label %br.b1.86, label %br.c2.86

b.new.buf.len254:                                 ; preds = %abort.dead56, %b.grow2
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 %sum52)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data251, i64 %b.cur.len250, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len250
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort55:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %b.new.buf.len254

br.b1.86:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.86

br.c2.86:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.86, label %br.c3.86

br.b2.86:                                         ; preds = %br.c2.86
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.86

br.c3.86:                                         ; preds = %br.c2.86
  br i1 true, label %br.b3.86, label %br.b4.86

br.b3.86:                                         ; preds = %br.c3.86
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.86

br.b4.86:                                         ; preds = %br.c3.86
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.86

br.done.86:                                       ; preds = %br.b4.86, %br.b3.86, %br.b2.86, %br.b1.86
  %br.nul = getelementptr i8, ptr %b.rn.data58, i64 %sum44
  store i8 0, ptr %br.nul, align 1
  %b.len.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum44, ptr %b.len.gep59, align 8
  br label %choice.exit42

choice.then63:                                    ; preds = %choice.exit42
  store i64 3, ptr %"var.rem'", align 8
  br label %choice.exit64

choice.exit64:                                    ; preds = %choice.then63, %choice.exit42
  %var.load65 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.header.87:                                   ; preds = %loop.latch.87, %choice.exit64
  %counter.load = load i64, ptr %loop.idx.87, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load65
  br i1 %loop.cond, label %loop.body.87, label %loop.exit.nat.87

loop.body.87:                                     ; preds = %loop.header.87
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.87, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load66 = load i64, ptr %var.i, align 8
  %cmptmp67 = icmp sgt i64 %var.load66, 0
  br i1 %cmptmp67, label %and.88.then, label %and.88.else

loop.exit.nat.87:                                 ; preds = %loop.header.87
  br label %loop.exit.87

loop.latch.87:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.87, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.exit.87:                                     ; preds = %loop.exit.nat.87
  %var.load153 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load153, i32 0, i32 0
  %b.freeze.len154 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load153, i32 0, i32 1
  %b.freeze.data155 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

and.88.then:                                      ; preds = %loop.body.87
  %var.load68 = load i64, ptr %var.i, align 8
  %var.load69 = load i64, ptr %"var.rem'", align 8
  %subtmp = sub i64 %var.load68, %var.load69
  %modtmp70 = srem i64 %subtmp, 3
  %cmptmp71 = icmp eq i64 %modtmp70, 0
  br label %and.88.exit

and.88.else:                                      ; preds = %loop.body.87
  br label %and.88.exit

and.88.exit:                                      ; preds = %and.88.else, %and.88.then
  %and.88.phi = phi i1 [ %cmptmp71, %and.88.then ], [ %cmptmp67, %and.88.else ]
  br i1 %and.88.phi, label %choice.then72, label %choice.exit73

choice.then72:                                    ; preds = %and.88.exit
  %b.load74 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len75 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load74, i32 0, i32 0
  %b.rn.cur.len76 = load i64, ptr %b.rn.cur.len75, align 8
  %b.rn.new.len77 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len76, i64 1)
  %sum78 = extractvalue { i64, i1 } %b.rn.new.len77, 0
  %ovf79 = extractvalue { i64, i1 } %b.rn.new.len77, 1
  br i1 %ovf79, label %str_overflow_abort81, label %b.rn.new.len80

choice.exit73:                                    ; preds = %br.done.89, %and.88.exit
  %b.load120 = load ptr, ptr %var.b, align 8
  %var.load121 = load ptr, ptr %var.s, align 8
  %s.read.len122 = getelementptr inbounds { i64, ptr }, ptr %var.load121, i32 0, i32 0
  %s.read.len123 = load i64, ptr %s.read.len122, align 8
  %s.read.len124 = and i64 %s.read.len123, 281474976710655
  %s.read.data125 = getelementptr inbounds { i64, ptr }, ptr %var.load121, i32 0, i32 1
  %s.read.data126 = load ptr, ptr %s.read.data125, align 8
  %var.load127 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load127, 0
  br i1 %idx.neg, label %idx_oob130, label %idx_big_check128

b.rn.new.len80:                                   ; preds = %abort.dead82, %choice.then72
  %b.cap83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load74, i32 0, i32 2
  %b.cap84 = load i64, ptr %b.cap83, align 8
  %b.need.grow85 = icmp slt i64 %b.cap84, %sum78
  br i1 %b.need.grow85, label %b.grow286, label %b.nogrow287

str_overflow_abort81:                             ; preds = %choice.then72
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %b.rn.new.len80

b.grow286:                                        ; preds = %b.rn.new.len80
  %b.cap289 = mul i64 %b.cap84, 2
  %b.cap.small90 = icmp slt i64 %b.cap289, 16
  %b.cap.grow91 = select i1 %b.cap.small90, i64 16, i64 %b.cap289
  %b.cap.need92 = icmp slt i64 %b.cap.grow91, %sum78
  %b.new.cap93 = select i1 %b.cap.need92, i64 %sum78, i64 %b.cap.grow91
  %b.cur.len294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load74, i32 0, i32 0
  %b.cur.len295 = load i64, ptr %b.cur.len294, align 8
  %b.cur.data296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load74, i32 0, i32 1
  %b.cur.data297 = load ptr, ptr %b.cur.data296, align 8
  %b.new.buf.len298 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap93, i64 1)
  %sum99 = extractvalue { i64, i1 } %b.new.buf.len298, 0
  %ovf100 = extractvalue { i64, i1 } %b.new.buf.len298, 1
  br i1 %ovf100, label %str_overflow_abort102, label %b.new.buf.len2101

b.nogrow287:                                      ; preds = %b.rn.new.len80
  br label %b.grow_done88

b.grow_done88:                                    ; preds = %b.nogrow287, %b.new.buf.len2101
  %b.rn.data109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load74, i32 0, i32 1
  %b.rn.data110 = load ptr, ptr %b.rn.data109, align 8
  %b.rn.dst111 = getelementptr i8, ptr %b.rn.data110, i64 %b.rn.cur.len76
  br i1 true, label %br.b1.89, label %br.c2.89

b.new.buf.len2101:                                ; preds = %abort.dead103, %b.grow286
  %arena.cur104 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 %sum99)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2105, ptr align 1 %b.cur.data297, i64 %b.cur.len295, i1 false)
  %b.grow2.nul106 = getelementptr i8, ptr %b.new.buf2105, i64 %b.cur.len295
  store i8 0, ptr %b.grow2.nul106, align 1
  %b.new.data2.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load74, i32 0, i32 1
  store ptr %b.new.buf2105, ptr %b.new.data2.gep107, align 8
  %b.new.cap2.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load74, i32 0, i32 2
  store i64 %b.new.cap93, ptr %b.new.cap2.gep108, align 8
  br label %b.grow_done88

str_overflow_abort102:                            ; preds = %b.grow286
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead103:                                    ; No predecessors!
  br label %b.new.buf.len2101

br.b1.89:                                         ; preds = %b.grow_done88
  store i8 44, ptr %b.rn.dst111, align 1
  br label %br.done.89

br.c2.89:                                         ; preds = %b.grow_done88
  br i1 true, label %br.b2.89, label %br.c3.89

br.b2.89:                                         ; preds = %br.c2.89
  store i8 -64, ptr %b.rn.dst111, align 1
  %br.dst1112 = getelementptr i8, ptr %b.rn.dst111, i64 1
  store i8 -84, ptr %br.dst1112, align 1
  br label %br.done.89

br.c3.89:                                         ; preds = %br.c2.89
  br i1 true, label %br.b3.89, label %br.b4.89

br.b3.89:                                         ; preds = %br.c3.89
  store i8 -32, ptr %b.rn.dst111, align 1
  %br.dst1.3113 = getelementptr i8, ptr %b.rn.dst111, i64 1
  store i8 -128, ptr %br.dst1.3113, align 1
  %br.dst2.3114 = getelementptr i8, ptr %b.rn.dst111, i64 2
  store i8 -84, ptr %br.dst2.3114, align 1
  br label %br.done.89

br.b4.89:                                         ; preds = %br.c3.89
  store i8 -16, ptr %b.rn.dst111, align 1
  %br.dst1.4115 = getelementptr i8, ptr %b.rn.dst111, i64 1
  store i8 -128, ptr %br.dst1.4115, align 1
  %br.dst2.4116 = getelementptr i8, ptr %b.rn.dst111, i64 2
  store i8 -128, ptr %br.dst2.4116, align 1
  %br.dst3.4117 = getelementptr i8, ptr %b.rn.dst111, i64 3
  store i8 -84, ptr %br.dst3.4117, align 1
  br label %br.done.89

br.done.89:                                       ; preds = %br.b4.89, %br.b3.89, %br.b2.89, %br.b1.89
  %br.nul118 = getelementptr i8, ptr %b.rn.data110, i64 %sum78
  store i8 0, ptr %br.nul118, align 1
  %b.len.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load74, i32 0, i32 0
  store i64 %sum78, ptr %b.len.gep119, align 8
  br label %choice.exit73

idx_big_check128:                                 ; preds = %choice.exit73
  %idx.big131 = icmp sge i64 %var.load127, %s.read.len124
  br i1 %idx.big131, label %idx_oob130, label %idx_ok129

idx_ok129:                                        ; preds = %abort.dead132, %idx_big_check128
  %s.byte.gep133 = getelementptr i8, ptr %s.read.data126, i64 %var.load127
  %s.byte134 = load i8, ptr %s.byte.gep133, align 1
  %s.byte.val135 = zext i8 %s.byte134 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val135, 0
  %b.b.le255 = icmp sle i64 %s.byte.val135, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob130:                                       ; preds = %idx_big_check128, %choice.exit73
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead132:                                    ; No predecessors!
  br label %idx_ok129

b.byte_ok:                                        ; preds = %abort.dead136, %idx_ok129
  %b.byte.i8 = trunc i64 %s.byte.val135 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 0
  %b.len137 = load i64, ptr %b.len, align 8
  %b.cap138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 2
  %b.cap139 = load i64, ptr %b.cap138, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 1
  %b.data140 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len137, %b.cap139
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok129
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead136:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2141 = mul i64 %b.cap139, 2
  %b.cap.small142 = icmp slt i64 %b.cap2141, 16
  %b.new.cap143 = select i1 %b.cap.small142, i64 16, i64 %b.cap2141
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap143, i64 1)
  %sum144 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf145 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf145, label %str_overflow_abort147, label %b.new.buf.len146

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len146
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 1
  %b.cur.data150 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 0
  %b.cur.len151 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data150, i64 %b.cur.len151
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len151, 1
  %b.nul = getelementptr i8, ptr %b.cur.data150, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep152, align 8
  br label %loop.latch.87

b.new.buf.len146:                                 ; preds = %abort.dead148, %b.grow
  %arena.cur149 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 %sum144)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data140, i64 %b.len137, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len137
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 2
  store i64 %b.new.cap143, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort147:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead148:                                    ; No predecessors!
  br label %b.new.buf.len146

b.freeze.check:                                   ; preds = %loop.exit.87
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data155, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data155, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data155, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len154, 1
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data155, i64 %b.freeze.len154, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len154
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.87
  %b.freeze.data157 = phi ptr [ %b.freeze.data155, %loop.exit.87 ], [ %b.freeze.data155, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur158 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 16)
  %str.build.len.gep159 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len154, ptr %str.build.len.gep159, align 8
  %str.build.data.gep160 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data157, ptr %str.build.data.gep160, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load153, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load153, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load153, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack161 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack161
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define { i64, ptr } @"fs::octal_perms"(i64 %0) #0 {
entry:
  %concat.str96 = alloca { i64, ptr }, align 8
  %cat.ibuf60 = alloca [24 x i8], align 1
  %cat.ibuf56 = alloca [24 x i8], align 1
  %cat.ibuf52 = alloca [24 x i8], align 1
  %concat.str = alloca { i64, ptr }, align 8
  %cat.ibuf25 = alloca [24 x i8], align 1
  %cat.ibuf21 = alloca [24 x i8], align 1
  %cat.ibuf17 = alloca [24 x i8], align 1
  %cat.ibuf = alloca [24 x i8], align 1
  %var.o = alloca i16, align 2
  %var.g = alloca i16, align 2
  %var.u = alloca i16, align 2
  %var.s = alloca i16, align 2
  %var.fm = alloca i16, align 2
  %var.mode = alloca i64, align 8
  store i64 %0, ptr %var.mode, align 8
  %var.load = load i64, ptr %var.mode, align 8
  %coerce.trunc = trunc i64 %var.load to i16
  store i16 %coerce.trunc, ptr %var.fm, align 2
  %var.load1 = load i16, ptr %var.fm, align 2
  %bf.load = load i16, ptr %var.fm, align 2
  %bf.shr = lshr i16 %bf.load, 9
  %bf.mask = and i16 %bf.shr, 7
  store i16 %bf.mask, ptr %var.s, align 2
  %var.load2 = load i16, ptr %var.fm, align 2
  %bf.load3 = load i16, ptr %var.fm, align 2
  %bf.shr4 = lshr i16 %bf.load3, 6
  %bf.mask5 = and i16 %bf.shr4, 7
  store i16 %bf.mask5, ptr %var.u, align 2
  %var.load6 = load i16, ptr %var.fm, align 2
  %bf.load7 = load i16, ptr %var.fm, align 2
  %bf.shr8 = lshr i16 %bf.load7, 3
  %bf.mask9 = and i16 %bf.shr8, 7
  store i16 %bf.mask9, ptr %var.g, align 2
  %var.load10 = load i16, ptr %var.fm, align 2
  %bf.load11 = load i16, ptr %var.fm, align 2
  %bf.mask12 = and i16 %bf.load11, 7
  store i16 %bf.mask12, ptr %var.o, align 2
  %var.load13 = load i16, ptr %var.s, align 2
  %coerce.zext = zext i16 %var.load13 to i64
  %cmptmp = icmp ugt i64 %coerce.zext, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load14 = load i16, ptr %var.s, align 2
  %coerce.zext15 = zext i16 %var.load14 to i64
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %coerce.zext15, i1 true)
  %var.load16 = load i16, ptr %var.u, align 2
  %coerce.zext18 = zext i16 %var.load16 to i64
  %cat.ilen19 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf17, i64 %coerce.zext18, i1 true)
  %var.load20 = load i16, ptr %var.g, align 2
  %coerce.zext22 = zext i16 %var.load20 to i64
  %cat.ilen23 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf21, i64 %coerce.zext22, i1 true)
  %var.load24 = load i16, ptr %var.o, align 2
  %coerce.zext26 = zext i16 %var.load24 to i64
  %cat.ilen27 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf25, i64 %coerce.zext26, i1 true)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.ilen, i64 %cat.ilen19)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len28

choice.else:                                      ; preds = %entry
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %var.load51 = load i16, ptr %var.u, align 2
  %coerce.zext53 = zext i16 %var.load51 to i64
  %cat.ilen54 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf52, i64 %coerce.zext53, i1 true)
  %var.load55 = load i16, ptr %var.g, align 2
  %coerce.zext57 = zext i16 %var.load55 to i64
  %cat.ilen58 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf56, i64 %coerce.zext57, i1 true)
  %var.load59 = load i16, ptr %var.o, align 2
  %coerce.zext61 = zext i16 %var.load59 to i64
  %cat.ilen62 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf60, i64 %coerce.zext61, i1 true)
  %cat.sum.len63 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.ilen54)
  %sum64 = extractvalue { i64, i1 } %cat.sum.len63, 0
  %ovf65 = extractvalue { i64, i1 } %cat.sum.len63, 1
  br i1 %ovf65, label %str_overflow_abort67, label %cat.sum.len66

choice.exit:                                      ; preds = %concat.tot.len84, %concat.tot.len43
  %choice.res = phi ptr [ %concat.str, %concat.tot.len43 ], [ %concat.str96, %concat.tot.len84 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

cat.sum.len28:                                    ; preds = %abort.dead, %choice.then
  %cat.sum.len29 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.ilen23)
  %sum30 = extractvalue { i64, i1 } %cat.sum.len29, 0
  %ovf31 = extractvalue { i64, i1 } %cat.sum.len29, 1
  br i1 %ovf31, label %str_overflow_abort33, label %cat.sum.len32

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len28

cat.sum.len32:                                    ; preds = %abort.dead34, %cat.sum.len28
  %cat.sum.len35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum30, i64 %cat.ilen27)
  %sum36 = extractvalue { i64, i1 } %cat.sum.len35, 0
  %ovf37 = extractvalue { i64, i1 } %cat.sum.len35, 1
  br i1 %ovf37, label %str_overflow_abort39, label %cat.sum.len38

str_overflow_abort33:                             ; preds = %cat.sum.len28
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %cat.sum.len32

cat.sum.len38:                                    ; preds = %abort.dead40, %cat.sum.len32
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum36, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort39:                             ; preds = %cat.sum.len32
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %cat.sum.len38

concat.tot.len43:                                 ; preds = %abort.dead45, %cat.sum.len38
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum41)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off = add i64 0, %cat.ilen
  %cat.dst46 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst46, ptr align 1 %cat.ibuf17, i64 %cat.ilen19, i1 false)
  %cat.off47 = add i64 %cat.off, %cat.ilen19
  %cat.dst48 = getelementptr i8, ptr %concat.buf, i64 %cat.off47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst48, ptr align 1 %cat.ibuf21, i64 %cat.ilen23, i1 false)
  %cat.off49 = add i64 %cat.off47, %cat.ilen23
  %cat.dst50 = getelementptr i8, ptr %concat.buf, i64 %cat.off49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst50, ptr align 1 %cat.ibuf25, i64 %cat.ilen27, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum36
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum36, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_overflow_abort44:                             ; preds = %cat.sum.len38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %concat.tot.len43

cat.sum.len66:                                    ; preds = %abort.dead68, %choice.else
  %cat.sum.len69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum64, i64 %cat.ilen58)
  %sum70 = extractvalue { i64, i1 } %cat.sum.len69, 0
  %ovf71 = extractvalue { i64, i1 } %cat.sum.len69, 1
  br i1 %ovf71, label %str_overflow_abort73, label %cat.sum.len72

str_overflow_abort67:                             ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead68:                                     ; No predecessors!
  br label %cat.sum.len66

cat.sum.len72:                                    ; preds = %abort.dead74, %cat.sum.len66
  %cat.sum.len75 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum70, i64 %cat.ilen62)
  %sum76 = extractvalue { i64, i1 } %cat.sum.len75, 0
  %ovf77 = extractvalue { i64, i1 } %cat.sum.len75, 1
  br i1 %ovf77, label %str_overflow_abort79, label %cat.sum.len78

str_overflow_abort73:                             ; preds = %cat.sum.len66
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %cat.sum.len72

cat.sum.len78:                                    ; preds = %abort.dead80, %cat.sum.len72
  %concat.tot.len81 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum76, i64 1)
  %sum82 = extractvalue { i64, i1 } %concat.tot.len81, 0
  %ovf83 = extractvalue { i64, i1 } %concat.tot.len81, 1
  br i1 %ovf83, label %str_overflow_abort85, label %concat.tot.len84

str_overflow_abort79:                             ; preds = %cat.sum.len72
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %cat.sum.len78

concat.tot.len84:                                 ; preds = %abort.dead86, %cat.sum.len78
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %sum82)
  %cat.dst89 = getelementptr i8, ptr %concat.buf88, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst89, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.dst90 = getelementptr i8, ptr %concat.buf88, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst90, ptr align 1 %cat.ibuf52, i64 %cat.ilen54, i1 false)
  %cat.off91 = add i64 1, %cat.ilen54
  %cat.dst92 = getelementptr i8, ptr %concat.buf88, i64 %cat.off91
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst92, ptr align 1 %cat.ibuf56, i64 %cat.ilen58, i1 false)
  %cat.off93 = add i64 %cat.off91, %cat.ilen58
  %cat.dst94 = getelementptr i8, ptr %concat.buf88, i64 %cat.off93
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst94, ptr align 1 %cat.ibuf60, i64 %cat.ilen62, i1 false)
  %concat.nul95 = getelementptr i8, ptr %concat.buf88, i64 %sum76
  store i8 0, ptr %concat.nul95, align 1
  %str.build.len.gep97 = getelementptr inbounds { i64, ptr }, ptr %concat.str96, i32 0, i32 0
  store i64 %sum76, ptr %str.build.len.gep97, align 8
  %str.build.data.gep98 = getelementptr inbounds { i64, ptr }, ptr %concat.str96, i32 0, i32 1
  store ptr %concat.buf88, ptr %str.build.data.gep98, align 8
  br label %choice.exit

str_overflow_abort85:                             ; preds = %cat.sum.len78
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead86:                                     ; No predecessors!
  br label %concat.tot.len84
}

define { i64, ptr } @"fs::auto_rename_path"(ptr %0) #0 {
entry:
  %var.cand = alloca ptr, align 8
  %var.cand_name = alloca ptr, align 8
  %cat.ibuf = alloca [24 x i8], align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.num = alloca i64, align 8
  %loop.step.90 = alloca i64, align 8
  %loop.idx.90 = alloca i64, align 8
  %"var.cand_path'" = alloca ptr, align 8
  %var.ext_part = alloca ptr, align 8
  %var.base_name = alloca ptr, align 8
  %var.dir_part = alloca ptr, align 8
  %var.full_p = alloca ptr, align 8
  store ptr %0, ptr %var.full_p, align 8
  %var.load = load ptr, ptr %var.full_p, align 8
  %call.res = call { i64, ptr } @"path::dirname"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.dir_part, align 8
  %var.load1 = load ptr, ptr %var.full_p, align 8
  %call.res2 = call { i64, ptr } @"path::stem"(ptr %var.load1)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 16)
  store { i64, ptr } %call.res2, ptr %ret.ub.alloc4, align 8
  store ptr %ret.ub.alloc4, ptr %var.base_name, align 8
  %var.load5 = load ptr, ptr %var.full_p, align 8
  %call.res6 = call { i64, ptr } @"path::ext"(ptr %var.load5)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 16)
  store { i64, ptr } %call.res6, ptr %ret.ub.alloc8, align 8
  store ptr %ret.ub.alloc8, ptr %var.ext_part, align 8
  %var.load9 = load ptr, ptr %var.full_p, align 8
  store ptr %var.load9, ptr %"var.cand_path'", align 8
  store i64 1, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.header.90:                                   ; preds = %loop.latch.90, %entry
  %counter.load = load i64, ptr %loop.idx.90, align 8
  %loop.cond = icmp slt i64 %counter.load, 1000
  br i1 %loop.cond, label %loop.body.90, label %loop.exit.nat.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i = sub i64 %counter.load, 1
  store i64 1, ptr %loop.step.90, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.num, align 8
  %var.load10 = load ptr, ptr %var.base_name, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %cat.seg11 = load i64, ptr %cat.seg, align 8
  %cat.seg12 = and i64 %cat.seg11, 281474976710655
  %cat.seg13 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %cat.seg14 = load ptr, ptr %cat.seg13, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %var.load15 = load i64, ptr %var.num, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %var.load15, i1 false)
  %cat.lit.data16 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %var.load17 = load ptr, ptr %var.ext_part, align 8
  %cat.seg18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %cat.seg19 = load i64, ptr %cat.seg18, align 8
  %cat.seg20 = and i64 %cat.seg19, 281474976710655
  %cat.seg21 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %cat.seg22 = load ptr, ptr %cat.seg21, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg12, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len23

loop.exit.nat.90:                                 ; preds = %loop.header.90
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %choice.exit70
  %step.val = load i64, ptr %loop.step.90, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %choice.then69, %loop.exit.nat.90
  %var.load72 = load ptr, ptr %"var.cand_path'", align 8
  %ret.pack = load { i64, ptr }, ptr %var.load72, align 8
  ret { i64, ptr } %ret.pack

cat.sum.len23:                                    ; preds = %abort.dead, %loop.body.90
  %cat.sum.len24 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.ilen)
  %sum25 = extractvalue { i64, i1 } %cat.sum.len24, 0
  %ovf26 = extractvalue { i64, i1 } %cat.sum.len24, 1
  br i1 %ovf26, label %str_overflow_abort28, label %cat.sum.len27

str_overflow_abort:                               ; preds = %loop.body.90
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len23

cat.sum.len27:                                    ; preds = %abort.dead29, %cat.sum.len23
  %cat.sum.len30 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum25, i64 1)
  %sum31 = extractvalue { i64, i1 } %cat.sum.len30, 0
  %ovf32 = extractvalue { i64, i1 } %cat.sum.len30, 1
  br i1 %ovf32, label %str_overflow_abort34, label %cat.sum.len33

str_overflow_abort28:                             ; preds = %cat.sum.len23
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %cat.sum.len27

cat.sum.len33:                                    ; preds = %abort.dead35, %cat.sum.len27
  %cat.sum.len36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum31, i64 %cat.seg20)
  %sum37 = extractvalue { i64, i1 } %cat.sum.len36, 0
  %ovf38 = extractvalue { i64, i1 } %cat.sum.len36, 1
  br i1 %ovf38, label %str_overflow_abort40, label %cat.sum.len39

str_overflow_abort34:                             ; preds = %cat.sum.len27
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %cat.sum.len33

cat.sum.len39:                                    ; preds = %abort.dead41, %cat.sum.len33
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum37, i64 1)
  %sum42 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf43 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf43, label %str_overflow_abort45, label %concat.tot.len44

str_overflow_abort40:                             ; preds = %cat.sum.len33
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %cat.sum.len39

concat.tot.len44:                                 ; preds = %abort.dead46, %cat.sum.len39
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %sum42)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg14, i64 %cat.seg12, i1 false)
  %cat.off = add i64 0, %cat.seg12
  %cat.dst48 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst48, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off49 = add i64 %cat.off, 2
  %cat.dst50 = getelementptr i8, ptr %concat.buf, i64 %cat.off49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst50, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off51 = add i64 %cat.off49, %cat.ilen
  %cat.dst52 = getelementptr i8, ptr %concat.buf, i64 %cat.off51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst52, ptr align 1 %cat.lit.data16, i64 1, i1 false)
  %cat.off53 = add i64 %cat.off51, 1
  %cat.dst54 = getelementptr i8, ptr %concat.buf, i64 %cat.off53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst54, ptr align 1 %cat.seg22, i64 %cat.seg20, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum37
  store i8 0, ptr %concat.nul, align 1
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum37, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.cand_name, align 8
  %var.load56 = load ptr, ptr %var.dir_part, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %eq.lhs.len57 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len58 = and i64 %eq.lhs.len57, 281474976710655
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len59 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len58, %eq.rhs.len59
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_overflow_abort45:                             ; preds = %cat.sum.len39
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %concat.tot.len44

str.eq.then:                                      ; preds = %concat.tot.len44
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %eq.lhs.data60 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data60, ptr %eq.rhs.data, i64 %eq.lhs.len58)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %concat.tot.len44
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load61 = load ptr, ptr %var.dir_part, align 8
  %var.load62 = load ptr, ptr %var.cand_name, align 8
  %call.res63 = call { i64, ptr } @"path::join"(ptr %var.load61, ptr %var.load62)
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  store { i64, ptr } %call.res63, ptr %ret.ub.alloc65, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load66 = load ptr, ptr %var.cand_name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.alloc65, %choice.then ], [ %var.load66, %choice.else ]
  store ptr %choice.res, ptr %var.cand, align 8
  %var.load67 = load ptr, ptr %var.cand, align 8
  %call.res68 = call i1 @"fs::exists"(ptr %var.load67)
  %nottmp = xor i1 %call.res68, true
  br i1 %nottmp, label %choice.then69, label %choice.exit70

choice.then69:                                    ; preds = %choice.exit
  %var.load71 = load ptr, ptr %var.cand, align 8
  store ptr %var.load71, ptr %"var.cand_path'", align 8
  br label %loop.exit.90

choice.exit70:                                    ; preds = %choice.exit
  br label %loop.latch.90
}

declare { i64, ptr } @"path::dirname"(ptr) #0

declare { i64, ptr } @"path::stem"(ptr) #0

define i64 @"fs::cmp_entries"(ptr %0, ptr %1, i64 %2, i1 %3) #0 {
entry:
  %var.cmp_ext = alloca i64, align 8
  %var.ext2 = alloca ptr, align 8
  %var.ext1 = alloca ptr, align 8
  %"var.res'" = alloca i64, align 8
  %var.rev = alloca i1, align 1
  %var.mode = alloca i64, align 8
  %var.e2 = alloca ptr, align 8
  %var.e1 = alloca ptr, align 8
  store ptr %0, ptr %var.e1, align 8
  store ptr %1, ptr %var.e2, align 8
  store i64 %2, ptr %var.mode, align 8
  store i1 %3, ptr %var.rev, align 1
  store i64 0, ptr %"var.res'", align 8
  %var.load = load i64, ptr %var.mode, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next66, %choice.exit85, %choice.exit45, %choice.exit14, %choice.case
  %var.load102 = load i1, ptr %var.rev, align 1
  br i1 %var.load102, label %choice.then103, label %choice.else104

choice.case:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.e1, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load2 = load ptr, ptr %var.e2, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %call.res = call i64 @"str::cmp"(ptr %fld.load, ptr %fld.load4)
  store i64 %call.res, ptr %"var.res'", align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match7 = icmp eq i64 %var.load, 1
  br i1 %val.match7, label %choice.case5, label %choice.next6

choice.case5:                                     ; preds = %choice.next
  %var.load8 = load ptr, ptr %var.e1, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 3
  %fld.load10 = load i64, ptr %fld.gep9, align 8
  %var.load11 = load ptr, ptr %var.e2, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load11, i32 0, i32 3
  %fld.load13 = load i64, ptr %fld.gep12, align 8
  %cmptmp = icmp slt i64 %fld.load10, %fld.load13
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.next6:                                     ; preds = %choice.next
  %val.match35 = icmp eq i64 %var.load, 2
  br i1 %val.match35, label %choice.case33, label %choice.next34

choice.then:                                      ; preds = %choice.case5
  br label %choice.exit14

choice.else:                                      ; preds = %choice.case5
  %var.load15 = load ptr, ptr %var.e1, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 3
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %var.load18 = load ptr, ptr %var.e2, align 8
  %fld.gep19 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load18, i32 0, i32 3
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %cmptmp21 = icmp sgt i64 %fld.load17, %fld.load20
  br i1 %cmptmp21, label %choice.then22, label %choice.else23

choice.exit14:                                    ; preds = %choice.exit24, %choice.then
  %choice.res32 = phi i64 [ -1, %choice.then ], [ %choice.res, %choice.exit24 ]
  store i64 %choice.res32, ptr %"var.res'", align 8
  br label %choice.exit

choice.then22:                                    ; preds = %choice.else
  br label %choice.exit24

choice.else23:                                    ; preds = %choice.else
  %var.load25 = load ptr, ptr %var.e1, align 8
  %fld.gep26 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load25, i32 0, i32 0
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %var.load28 = load ptr, ptr %var.e2, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load28, i32 0, i32 0
  %fld.load30 = load ptr, ptr %fld.gep29, align 8
  %call.res31 = call i64 @"str::cmp"(ptr %fld.load27, ptr %fld.load30)
  br label %choice.exit24

choice.exit24:                                    ; preds = %choice.else23, %choice.then22
  %choice.res = phi i64 [ 1, %choice.then22 ], [ %call.res31, %choice.else23 ]
  br label %choice.exit14

choice.case33:                                    ; preds = %choice.next6
  %var.load36 = load ptr, ptr %var.e1, align 8
  %fld.gep37 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load36, i32 0, i32 6
  %fld.load38 = load i64, ptr %fld.gep37, align 8
  %var.load39 = load ptr, ptr %var.e2, align 8
  %fld.gep40 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load39, i32 0, i32 6
  %fld.load41 = load i64, ptr %fld.gep40, align 8
  %cmptmp42 = icmp slt i64 %fld.load38, %fld.load41
  br i1 %cmptmp42, label %choice.then43, label %choice.else44

choice.next34:                                    ; preds = %choice.next6
  %val.match67 = icmp eq i64 %var.load, 3
  br i1 %val.match67, label %choice.case65, label %choice.next66

choice.then43:                                    ; preds = %choice.case33
  br label %choice.exit45

choice.else44:                                    ; preds = %choice.case33
  %var.load46 = load ptr, ptr %var.e1, align 8
  %fld.gep47 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load46, i32 0, i32 6
  %fld.load48 = load i64, ptr %fld.gep47, align 8
  %var.load49 = load ptr, ptr %var.e2, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load49, i32 0, i32 6
  %fld.load51 = load i64, ptr %fld.gep50, align 8
  %cmptmp52 = icmp sgt i64 %fld.load48, %fld.load51
  br i1 %cmptmp52, label %choice.then53, label %choice.else54

choice.exit45:                                    ; preds = %choice.exit55, %choice.then43
  %choice.res64 = phi i64 [ -1, %choice.then43 ], [ %choice.res63, %choice.exit55 ]
  store i64 %choice.res64, ptr %"var.res'", align 8
  br label %choice.exit

choice.then53:                                    ; preds = %choice.else44
  br label %choice.exit55

choice.else54:                                    ; preds = %choice.else44
  %var.load56 = load ptr, ptr %var.e1, align 8
  %fld.gep57 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load56, i32 0, i32 0
  %fld.load58 = load ptr, ptr %fld.gep57, align 8
  %var.load59 = load ptr, ptr %var.e2, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load59, i32 0, i32 0
  %fld.load61 = load ptr, ptr %fld.gep60, align 8
  %call.res62 = call i64 @"str::cmp"(ptr %fld.load58, ptr %fld.load61)
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.else54, %choice.then53
  %choice.res63 = phi i64 [ 1, %choice.then53 ], [ %call.res62, %choice.else54 ]
  br label %choice.exit45

choice.case65:                                    ; preds = %choice.next34
  %var.load68 = load ptr, ptr %var.e1, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load68, i32 0, i32 0
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  %call.res71 = call { i64, ptr } @"fs::ext"(ptr %fld.load70)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res71, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.ext1, align 8
  %var.load72 = load ptr, ptr %var.e2, align 8
  %fld.gep73 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load72, i32 0, i32 0
  %fld.load74 = load ptr, ptr %fld.gep73, align 8
  %call.res75 = call { i64, ptr } @"fs::ext"(ptr %fld.load74)
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  store { i64, ptr } %call.res75, ptr %ret.ub.alloc77, align 8
  store ptr %ret.ub.alloc77, ptr %var.ext2, align 8
  %var.load78 = load ptr, ptr %var.ext1, align 8
  %var.load79 = load ptr, ptr %var.ext2, align 8
  %call.res80 = call i64 @"str::cmp"(ptr %var.load78, ptr %var.load79)
  store i64 %call.res80, ptr %var.cmp_ext, align 8
  %var.load81 = load i64, ptr %var.cmp_ext, align 8
  %cmptmp82 = icmp ne i64 %var.load81, 0
  br i1 %cmptmp82, label %choice.then83, label %choice.else84

choice.next66:                                    ; preds = %choice.next34
  %var.load95 = load ptr, ptr %var.e1, align 8
  %fld.gep96 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load95, i32 0, i32 0
  %fld.load97 = load ptr, ptr %fld.gep96, align 8
  %var.load98 = load ptr, ptr %var.e2, align 8
  %fld.gep99 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load98, i32 0, i32 0
  %fld.load100 = load ptr, ptr %fld.gep99, align 8
  %call.res101 = call i64 @"str::cmp"(ptr %fld.load97, ptr %fld.load100)
  store i64 %call.res101, ptr %"var.res'", align 8
  br label %choice.exit

choice.then83:                                    ; preds = %choice.case65
  %var.load86 = load i64, ptr %var.cmp_ext, align 8
  br label %choice.exit85

choice.else84:                                    ; preds = %choice.case65
  %var.load87 = load ptr, ptr %var.e1, align 8
  %fld.gep88 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load87, i32 0, i32 0
  %fld.load89 = load ptr, ptr %fld.gep88, align 8
  %var.load90 = load ptr, ptr %var.e2, align 8
  %fld.gep91 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load90, i32 0, i32 0
  %fld.load92 = load ptr, ptr %fld.gep91, align 8
  %call.res93 = call i64 @"str::cmp"(ptr %fld.load89, ptr %fld.load92)
  br label %choice.exit85

choice.exit85:                                    ; preds = %choice.else84, %choice.then83
  %choice.res94 = phi i64 [ %var.load86, %choice.then83 ], [ %call.res93, %choice.else84 ]
  store i64 %choice.res94, ptr %"var.res'", align 8
  br label %choice.exit

choice.then103:                                   ; preds = %choice.exit
  %var.load106 = load i64, ptr %"var.res'", align 8
  %negtmp = sub i64 0, %var.load106
  br label %choice.exit105

choice.else104:                                   ; preds = %choice.exit
  %var.load107 = load i64, ptr %"var.res'", align 8
  br label %choice.exit105

choice.exit105:                                   ; preds = %choice.else104, %choice.then103
  %choice.res108 = phi i64 [ %negtmp, %choice.then103 ], [ %var.load107, %choice.else104 ]
  ret i64 %choice.res108
}

declare i64 @"str::cmp"(ptr, ptr) #0

define ptr @"fs::list_dir_simple"(ptr %0) #0 {
entry:
  %var.dir_path = alloca ptr, align 8
  store ptr %0, ptr %var.dir_path, align 8
  %var.load = load ptr, ptr %var.dir_path, align 8
  %call.res = call ptr @"fs::list_dir"(ptr %var.load, i1 false, i64 0, i1 false)
  ret ptr %call.res
}

define ptr @"fs::list_dir"(ptr %0, i1 %1, i64 %2, i1 %3) #0 {
entry:
  %var._801 = alloca ptr, align 8
  %var._i800 = alloca i64, align 8
  %var.file_item = alloca ptr, align 8
  %loop.step.104 = alloca i64, align 8
  %loop.idx.104 = alloca i64, align 8
  %var._745 = alloca ptr, align 8
  %var._i744 = alloca i64, align 8
  %var.dir_item = alloca ptr, align 8
  %loop.step.103 = alloca i64, align 8
  %loop.idx.103 = alloca i64, align 8
  %var.f2 = alloca ptr, align 8
  %var.f1 = alloca ptr, align 8
  %var._426 = alloca i64, align 8
  %var._i425 = alloca i64, align 8
  %var.j419 = alloca i64, align 8
  %loop.step.100 = alloca i64, align 8
  %loop.idx.100 = alloca i64, align 8
  %var._416 = alloca i64, align 8
  %var._i415 = alloca i64, align 8
  %loop.step.99 = alloca i64, align 8
  %loop.idx.99 = alloca i64, align 8
  %var.nf = alloca i64, align 8
  %var.d2 = alloca ptr, align 8
  %var.d1 = alloca ptr, align 8
  %var._164 = alloca i64, align 8
  %var._i163 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.96 = alloca i64, align 8
  %loop.idx.96 = alloca i64, align 8
  %var._158 = alloca i64, align 8
  %var._i157 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.95 = alloca i64, align 8
  %loop.idx.95 = alloca i64, align 8
  %var.nd = alloca i64, align 8
  %var.entry = alloca ptr, align 8
  %var.perms = alloca ptr, align 8
  %var.fmt_sz = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._48 = alloca ptr, align 8
  %"var.mode'" = alloca i64, align 8
  %"var.mtime'" = alloca i64, align 8
  %"var.size'" = alloca i64, align 8
  %"var.is_x'" = alloca i1, align 1
  %"var.is_d'" = alloca i1, align 1
  %var.meta = alloca ptr, align 8
  %var.full_path = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.92 = alloca i64, align 8
  %loop.idx.92 = alloca i64, align 8
  %var.file_list = alloca ptr, align 8
  %var.dirs = alloca ptr, align 8
  %var.entries = alloca ptr, align 8
  %var.res = alloca ptr, align 8
  %var.sort_rev = alloca i1, align 1
  %var.sort_mode = alloca i64, align 8
  %var.show_hidden = alloca i1, align 1
  %var.dir_path = alloca ptr, align 8
  store ptr %0, ptr %var.dir_path, align 8
  store i1 %1, ptr %var.show_hidden, align 1
  store i64 %2, ptr %var.sort_mode, align 8
  store i1 %3, ptr %var.sort_rev, align 1
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
  %var.load = load ptr, ptr %var.dir_path, align 8
  %call.res = call ptr @"fs::read_dir"(ptr %var.load)
  store ptr %call.res, ptr %var.entries, align 8
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
  store ptr %a.new3, ptr %var.dirs, align 8
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
  store ptr %a.new10, ptr %var.file_list, align 8
  %var.load16 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep21, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  store ptr %a.create18, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.entries, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len24 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data25 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.header.92:                                   ; preds = %loop.latch.92, %a.after
  %counter.load = load i64, ptr %loop.idx.92, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len24
  br i1 %loop.cond, label %loop.body.92, label %loop.exit.nat.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.92, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data25, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load26 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load26, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.name, align 8
  %var.load27 = load i1, ptr %var.show_hidden, align 1
  %nottmp = xor i1 %var.load27, true
  br i1 %nottmp, label %and.93.then, label %and.93.else

loop.exit.nat.92:                                 ; preds = %loop.header.92
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %choice.exit92, %choice.then
  %step.val = load i64, ptr %loop.step.92, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %loop.exit.nat.92
  %var.load139 = load ptr, ptr %var.dirs, align 8
  %a.load140 = load ptr, ptr %var.dirs, align 8
  %a.null141 = icmp eq ptr %a.load140, null
  br i1 %a.null141, label %a.create142, label %a.after143

and.93.then:                                      ; preds = %loop.body.92
  %var.load28 = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query30, 0
  br label %and.93.exit

and.93.else:                                      ; preds = %loop.body.92
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %and.93.then
  %and.93.phi = phi i1 [ %cmptmp, %and.93.then ], [ %nottmp, %and.93.else ]
  br i1 %and.93.phi, label %and.94.then, label %and.94.else

and.94.then:                                      ; preds = %and.93.exit
  %var.load31 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

and.94.else:                                      ; preds = %and.93.exit
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %idx_ok
  %and.94.phi = phi i1 [ %cmptmp35, %idx_ok ], [ %and.93.phi, %and.94.else ]
  br i1 %and.94.phi, label %choice.then, label %choice.exit

idx_big_check:                                    ; preds = %and.94.then
  %idx.big = icmp sge i64 0, %s.read.len33
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data34, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp35 = icmp eq i64 %s.byte.val, 46
  br label %and.94.exit

idx_oob:                                          ; preds = %idx_big_check, %and.94.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.94.exit
  br label %loop.latch.92

choice.exit:                                      ; preds = %and.94.exit
  %var.load36 = load ptr, ptr %var.dir_path, align 8
  %var.load37 = load ptr, ptr %var.name, align 8
  %call.res38 = call { i64, ptr } @"fs::join"(ptr %var.load36, ptr %var.load37)
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  store { i64, ptr } %call.res38, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.full_path, align 8
  %var.load40 = load ptr, ptr %var.full_path, align 8
  %call.res41 = call ptr @"fs::stat"(ptr %var.load40)
  store ptr %call.res41, ptr %var.meta, align 8
  %var.load42 = load ptr, ptr %var.e, align 8
  %fld.gep43 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load42, i32 0, i32 1
  %fld.load44 = load i1, ptr %fld.gep43, align 1
  store i1 %fld.load44, ptr %"var.is_d'", align 1
  store i1 false, ptr %"var.is_x'", align 1
  store i64 0, ptr %"var.size'", align 8
  store i64 0, ptr %"var.mtime'", align 8
  store i64 0, ptr %"var.mode'", align 8
  %var.load45 = load ptr, ptr %var.meta, align 8
  %niche.ne.null = icmp ne ptr %var.load45, null
  br i1 %niche.ne.null, label %choice.then46, label %choice.exit47

choice.then46:                                    ; preds = %choice.exit
  store ptr %var.load45, ptr %var._48, align 8
  store ptr %var.load45, ptr %var.m, align 8
  %var.load49 = load ptr, ptr %var.m, align 8
  %fld.gep50 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load49, i32 0, i32 0
  %fld.load51 = load i64, ptr %fld.gep50, align 8
  store i64 %fld.load51, ptr %"var.size'", align 8
  %var.load52 = load ptr, ptr %var.m, align 8
  %fld.gep53 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load52, i32 0, i32 2
  %fld.load54 = load i64, ptr %fld.gep53, align 8
  store i64 %fld.load54, ptr %"var.mtime'", align 8
  %var.load55 = load ptr, ptr %var.m, align 8
  %fld.gep56 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load55, i32 0, i32 1
  %fld.load57 = load i64, ptr %fld.gep56, align 8
  store i64 %fld.load57, ptr %"var.mode'", align 8
  %var.load58 = load ptr, ptr %var.m, align 8
  %fld.gep59 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load58, i32 0, i32 5
  %fld.load60 = load i1, ptr %fld.gep59, align 1
  store i1 %fld.load60, ptr %"var.is_d'", align 1
  %var.load61 = load ptr, ptr %var.m, align 8
  %fld.gep62 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load61, i32 0, i32 8
  %fld.load63 = load i1, ptr %fld.gep62, align 1
  store i1 %fld.load63, ptr %"var.is_x'", align 1
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.then46, %choice.exit
  %var.load64 = load i64, ptr %"var.size'", align 8
  %var.load65 = load i1, ptr %"var.is_d'", align 1
  %call.res66 = call { i64, ptr } @"fs::format_size"(i64 %var.load64, i1 %var.load65)
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  store { i64, ptr } %call.res66, ptr %ret.ub.alloc68, align 8
  store ptr %ret.ub.alloc68, ptr %var.fmt_sz, align 8
  %var.load69 = load i64, ptr %"var.mode'", align 8
  %var.load70 = load i1, ptr %"var.is_d'", align 1
  %call.res71 = call { i64, ptr } @"fs::format_perms"(i64 %var.load69, i1 %var.load70)
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 16)
  store { i64, ptr } %call.res71, ptr %ret.ub.alloc73, align 8
  store ptr %ret.ub.alloc73, ptr %var.perms, align 8
  %var.load74 = load ptr, ptr %var.name, align 8
  %var.load75 = load i1, ptr %"var.is_d'", align 1
  %var.load76 = load i1, ptr %"var.is_x'", align 1
  %var.load77 = load i64, ptr %"var.size'", align 8
  %var.load78 = load ptr, ptr %var.fmt_sz, align 8
  %var.load79 = load ptr, ptr %var.perms, align 8
  %var.load80 = load i64, ptr %"var.mtime'", align 8
  %var.load81 = load i64, ptr %"var.mode'", align 8
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load74, ptr %rec.fld, align 8
  %rec.fld83 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load75, ptr %rec.fld83, align 1
  %rec.fld84 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load76, ptr %rec.fld84, align 1
  %rec.fld85 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load77, ptr %rec.fld85, align 8
  %rec.fld86 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store ptr %var.load78, ptr %rec.fld86, align 8
  %rec.fld87 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store ptr %var.load79, ptr %rec.fld87, align 8
  %rec.fld88 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %var.load80, ptr %rec.fld88, align 8
  %rec.fld89 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %var.load81, ptr %rec.fld89, align 8
  store ptr %rec.alloc, ptr %var.entry, align 8
  %var.load90 = load i1, ptr %"var.is_d'", align 1
  br i1 %var.load90, label %choice.then91, label %choice.else

choice.then91:                                    ; preds = %choice.exit47
  %var.load93 = load ptr, ptr %var.entry, align 8
  %a.load94 = load ptr, ptr %var.dirs, align 8
  %a.null95 = icmp eq ptr %a.load94, null
  br i1 %a.null95, label %a.create96, label %a.after97

choice.else:                                      ; preds = %choice.exit47
  %var.load110 = load ptr, ptr %var.entry, align 8
  %a.load111 = load ptr, ptr %var.file_list, align 8
  %a.null112 = icmp eq ptr %a.load111, null
  br i1 %a.null112, label %a.create113, label %a.after114

choice.exit92:                                    ; preds = %a.store125, %a.store
  br label %loop.latch.92

a.create96:                                       ; preds = %choice.then91
  %arena.cur98 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 24)
  %arena.cur100 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 128)
  %a.len.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 0
  store i64 0, ptr %a.len.gep102, align 8
  %a.data.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 1
  store ptr %a.buf101, ptr %a.data.gep103, align 8
  %a.cap.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 2
  store i64 16, ptr %a.cap.gep104, align 8
  store ptr %a.create99, ptr %var.dirs, align 8
  br label %a.after97

a.after97:                                        ; preds = %a.create96, %choice.then91
  %a.load2105 = load ptr, ptr %var.dirs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after97
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 0
  %a.len106 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 2
  %a.cap107 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len106, %a.cap107
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2105)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 1
  %a.cur.data108 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 0
  %a.cur.len109 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data108, i64 %a.cur.len109
  %slot.p2i = ptrtoint ptr %var.load93 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len109, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit92

a.create113:                                      ; preds = %choice.else
  %arena.cur115 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 24)
  %arena.cur117 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 128)
  %a.len.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create116, i32 0, i32 0
  store i64 0, ptr %a.len.gep119, align 8
  %a.data.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create116, i32 0, i32 1
  store ptr %a.buf118, ptr %a.data.gep120, align 8
  %a.cap.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create116, i32 0, i32 2
  store i64 16, ptr %a.cap.gep121, align 8
  store ptr %a.create116, ptr %var.file_list, align 8
  br label %a.after114

a.after114:                                       ; preds = %a.create113, %choice.else
  %a.load2122 = load ptr, ptr %var.file_list, align 8
  br label %a.check123

a.check123:                                       ; preds = %a.after114
  %a.len126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2122, i32 0, i32 0
  %a.len127 = load i64, ptr %a.len126, align 8
  %a.cap128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2122, i32 0, i32 2
  %a.cap129 = load i64, ptr %a.cap128, align 8
  %a.needs.grow130 = icmp eq i64 %a.len127, %a.cap129
  br i1 %a.needs.grow130, label %a.grow124, label %a.store125

a.grow124:                                        ; preds = %a.check123
  call void @dva_array_grow(ptr %a.load2122)
  br label %a.store125

a.store125:                                       ; preds = %a.grow124, %a.check123
  %a.cur.data131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2122, i32 0, i32 1
  %a.cur.data132 = load ptr, ptr %a.cur.data131, align 8
  %a.cur.len133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2122, i32 0, i32 0
  %a.cur.len134 = load i64, ptr %a.cur.len133, align 8
  %a.elem.gep135 = getelementptr i64, ptr %a.cur.data132, i64 %a.cur.len134
  %slot.p2i136 = ptrtoint ptr %var.load110 to i64
  store i64 %slot.p2i136, ptr %a.elem.gep135, align 8
  %a.next.len137 = add i64 %a.cur.len134, 1
  %b.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2122, i32 0, i32 0
  store i64 %a.next.len137, ptr %b.len.gep138, align 8
  br label %choice.exit92

a.create142:                                      ; preds = %loop.exit.92
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 24)
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 128)
  %a.len.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 0
  store i64 0, ptr %a.len.gep148, align 8
  %a.data.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 1
  store ptr %a.buf147, ptr %a.data.gep149, align 8
  %a.cap.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 2
  store i64 16, ptr %a.cap.gep150, align 8
  store ptr %a.create145, ptr %var.dirs, align 8
  br label %a.after143

a.after143:                                       ; preds = %a.create142, %loop.exit.92
  %a.load2151 = load ptr, ptr %var.dirs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2151, i32 0, i32 0
  %a.len.query152 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query152, ptr %var.nd, align 8
  %var.load153 = load i64, ptr %var.nd, align 8
  store i64 0, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.header.95:                                   ; preds = %loop.latch.95, %a.after143
  %counter.load154 = load i64, ptr %loop.idx.95, align 8
  %loop.cond155 = icmp slt i64 %counter.load154, %var.load153
  br i1 %loop.cond155, label %loop.body.95, label %loop.exit.nat.95

loop.body.95:                                     ; preds = %loop.header.95
  %loop.rel.i156 = sub i64 %counter.load154, 0
  store i64 1, ptr %loop.step.95, align 8
  store i64 %loop.rel.i156, ptr %var._i157, align 8
  store i64 %counter.load154, ptr %var._158, align 8
  store i64 %counter.load154, ptr %var.i, align 8
  %var.load159 = load i64, ptr %var.nd, align 8
  %subtmp = sub i64 %var.load159, 1
  store i64 0, ptr %loop.idx.96, align 8
  %cycle.prev.u = load i64, ptr %var._158, align 8
  %cycle.prev.i = load i64, ptr %var._i157, align 8
  br label %loop.header.96

loop.exit.nat.95:                                 ; preds = %loop.header.95
  br label %loop.exit.95

loop.latch.95:                                    ; preds = %loop.exit.96
  %step.val394 = load i64, ptr %loop.step.95, align 8
  %loop.next395 = add i64 %counter.load154, %step.val394
  store i64 %loop.next395, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.exit.95:                                     ; preds = %loop.exit.nat.95
  %var.load396 = load ptr, ptr %var.file_list, align 8
  %a.load397 = load ptr, ptr %var.file_list, align 8
  %a.null398 = icmp eq ptr %a.load397, null
  br i1 %a.null398, label %a.create399, label %a.after400

loop.header.96:                                   ; preds = %loop.latch.96, %loop.body.95
  %counter.load160 = load i64, ptr %loop.idx.96, align 8
  %loop.cond161 = icmp slt i64 %counter.load160, %subtmp
  br i1 %loop.cond161, label %loop.body.96, label %loop.exit.nat.96

loop.body.96:                                     ; preds = %loop.header.96
  %loop.rel.i162 = sub i64 %counter.load160, 0
  store i64 1, ptr %loop.step.96, align 8
  store i64 %loop.rel.i162, ptr %var._i163, align 8
  store i64 %counter.load160, ptr %var._164, align 8
  store i64 %counter.load160, ptr %var.j, align 8
  %var.load165 = load ptr, ptr %var.dirs, align 8
  %a.load166 = load ptr, ptr %var.dirs, align 8
  %a.null167 = icmp eq ptr %a.load166, null
  br i1 %a.null167, label %a.create168, label %a.after169

loop.exit.nat.96:                                 ; preds = %loop.header.96
  br label %loop.exit.96

loop.latch.96:                                    ; preds = %choice.exit300
  %step.val392 = load i64, ptr %loop.step.96, align 8
  %loop.next393 = add i64 %counter.load160, %step.val392
  store i64 %loop.next393, ptr %loop.idx.96, align 8
  br label %loop.header.96

loop.exit.96:                                     ; preds = %loop.exit.nat.96
  store i64 %cycle.prev.u, ptr %var._158, align 8
  store i64 %cycle.prev.i, ptr %var._i157, align 8
  br label %loop.latch.95

a.create168:                                      ; preds = %loop.body.96
  %arena.cur170 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 24)
  %arena.cur172 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 128)
  %a.len.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 0
  store i64 0, ptr %a.len.gep174, align 8
  %a.data.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 1
  store ptr %a.buf173, ptr %a.data.gep175, align 8
  %a.cap.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 2
  store i64 16, ptr %a.cap.gep176, align 8
  store ptr %a.create171, ptr %var.dirs, align 8
  br label %a.after169

a.after169:                                       ; preds = %a.create168, %loop.body.96
  %a.load2177 = load ptr, ptr %var.dirs, align 8
  %var.load178 = load i64, ptr %var.j, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2177, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after169
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 0
  %a.rd.len179 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load178, 0
  %a.rd.lt = icmp slt i64 %var.load178, %a.rd.len179
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 1
  %a.rd.data180 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data180, i64 %var.load178
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after169
  %arena.cur181 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 699, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 22, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur182 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 56)
  %err.code.gep184 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 0
  store i64 4011, ptr %err.code.gep184, align 8
  %err.msg.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep185, align 8
  %err.file.gep186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep186, align 8
  %err.line.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 3
  store i64 699, ptr %err.line.gep187, align 8
  %err.col.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 4
  store i64 22, ptr %err.col.gep188, align 8
  %err.ctx.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 5
  %err.ctx0.gep190 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep189, i32 0, i32 0
  store i64 %var.load178, ptr %err.ctx0.gep190, align 8
  %err.ctx1.gep191 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep189, i32 0, i32 1
  store i64 %a.rd.len179, ptr %err.ctx1.gep191, align 8
  %err.p2i192 = ptrtoint ptr %err.alloc183 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i192, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.97, label %unwrap.abort.97

unwrap.pos.97:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.d1, align 8
  %var.load204 = load ptr, ptr %var.dirs, align 8
  %a.load205 = load ptr, ptr %var.dirs, align 8
  %a.null206 = icmp eq ptr %a.load205, null
  br i1 %a.null206, label %a.create207, label %a.after208

unwrap.abort.97:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep193 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep193, align 8
  %err.msg.gep194 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep194, align 8
  %err.file.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep195, align 8
  %err.line.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep196, align 8
  %err.col.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep197, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len198 = load i64, ptr %err.msg.len, align 8
  %err.msg.len199 = and i64 %err.msg.len198, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len199 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data200 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len201 = load i64, ptr %err.file.len, align 8
  %err.file.len202 = and i64 %err.file.len201, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len202 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data203 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.97
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.97
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data200, i32 %err.file.len32, ptr %err.file.data203, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create207:                                      ; preds = %unwrap.pos.97
  %arena.cur209 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 24)
  %arena.cur211 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf212 = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 128)
  %a.len.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create210, i32 0, i32 0
  store i64 0, ptr %a.len.gep213, align 8
  %a.data.gep214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create210, i32 0, i32 1
  store ptr %a.buf212, ptr %a.data.gep214, align 8
  %a.cap.gep215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create210, i32 0, i32 2
  store i64 16, ptr %a.cap.gep215, align 8
  store ptr %a.create210, ptr %var.dirs, align 8
  br label %a.after208

a.after208:                                       ; preds = %a.create207, %unwrap.pos.97
  %a.load2216 = load ptr, ptr %var.dirs, align 8
  %var.load217 = load i64, ptr %var.j, align 8
  %addtmp = add i64 %var.load217, 1
  %a.rd.nonnull218 = icmp ne ptr %a.load2216, null
  br i1 %a.rd.nonnull218, label %a.rd.check219, label %a.rd.err.null221

a.rd.check219:                                    ; preds = %a.after208
  %a.rd.len224 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2216, i32 0, i32 0
  %a.rd.len225 = load i64, ptr %a.rd.len224, align 8
  %a.rd.ge0226 = icmp sge i64 %addtmp, 0
  %a.rd.lt227 = icmp slt i64 %addtmp, %a.rd.len225
  %a.rd.bounds228 = and i1 %a.rd.ge0226, %a.rd.lt227
  br i1 %a.rd.bounds228, label %a.rd.ok220, label %a.rd.err.oob222

a.rd.ok220:                                       ; preds = %a.rd.check219
  %a.rd.data229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2216, i32 0, i32 1
  %a.rd.data230 = load ptr, ptr %a.rd.data229, align 8
  %a.rd.elem.gep231 = getelementptr i64, ptr %a.rd.data230, i64 %addtmp
  %a.rd.elem232 = load i64, ptr %a.rd.elem.gep231, align 8
  br label %a.rd.done223

a.rd.err.null221:                                 ; preds = %a.after208
  %arena.cur233 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 56)
  %err.code.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 0
  store i64 4011, ptr %err.code.gep235, align 8
  %err.msg.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep236, align 8
  %err.file.gep237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep237, align 8
  %err.line.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 3
  store i64 700, ptr %err.line.gep238, align 8
  %err.col.gep239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 4
  store i64 26, ptr %err.col.gep239, align 8
  %err.ctx.gep240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 5
  %err.ctx0.gep241 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep240, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep241, align 8
  %err.ctx1.gep242 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep240, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep242, align 8
  %err.p2i243 = ptrtoint ptr %err.alloc234 to i64
  br label %a.rd.done223

a.rd.err.oob222:                                  ; preds = %a.rd.check219
  %arena.cur244 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc245 = call ptr @dva_arena_alloc(ptr %arena.cur244, i64 56)
  %err.code.gep246 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc245, i32 0, i32 0
  store i64 4011, ptr %err.code.gep246, align 8
  %err.msg.gep247 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc245, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep247, align 8
  %err.file.gep248 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc245, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep248, align 8
  %err.line.gep249 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc245, i32 0, i32 3
  store i64 700, ptr %err.line.gep249, align 8
  %err.col.gep250 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc245, i32 0, i32 4
  store i64 26, ptr %err.col.gep250, align 8
  %err.ctx.gep251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc245, i32 0, i32 5
  %err.ctx0.gep252 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep251, i32 0, i32 0
  store i64 %addtmp, ptr %err.ctx0.gep252, align 8
  %err.ctx1.gep253 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep251, i32 0, i32 1
  store i64 %a.rd.len225, ptr %err.ctx1.gep253, align 8
  %err.p2i254 = ptrtoint ptr %err.alloc245 to i64
  br label %a.rd.done223

a.rd.done223:                                     ; preds = %a.rd.err.oob222, %a.rd.err.null221, %a.rd.ok220
  %a.rd.tag255 = phi i1 [ true, %a.rd.ok220 ], [ false, %a.rd.err.null221 ], [ false, %a.rd.err.oob222 ]
  %a.rd.pay256 = phi i64 [ %a.rd.elem232, %a.rd.ok220 ], [ %err.p2i243, %a.rd.err.null221 ], [ %err.p2i254, %a.rd.err.oob222 ]
  %ram.tag257 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag255, 0
  %ram.pay258 = insertvalue { i1, i64 } %ram.tag257, i64 %a.rd.pay256, 1
  %unwrap.is_pos259 = extractvalue { i1, i64 } %ram.pay258, 0
  br i1 %unwrap.is_pos259, label %unwrap.pos.98, label %unwrap.abort.98

unwrap.pos.98:                                    ; preds = %a.rd.done223
  %unwrap.pay.pos291 = extractvalue { i1, i64 } %ram.pay258, 1
  %pay.ptr292 = inttoptr i64 %unwrap.pay.pos291 to ptr
  store ptr %pay.ptr292, ptr %var.d2, align 8
  %var.load293 = load ptr, ptr %var.d1, align 8
  %var.load294 = load ptr, ptr %var.d2, align 8
  %var.load295 = load i64, ptr %var.sort_mode, align 8
  %var.load296 = load i1, ptr %var.sort_rev, align 1
  %call.res297 = call i64 @"fs::cmp_entries"(ptr %var.load293, ptr %var.load294, i64 %var.load295, i1 %var.load296)
  %cmptmp298 = icmp sgt i64 %call.res297, 0
  br i1 %cmptmp298, label %choice.then299, label %choice.exit300

unwrap.abort.98:                                  ; preds = %a.rd.done223
  %unwrap.pay.abort260 = extractvalue { i1, i64 } %ram.pay258, 1
  %err.ptr261 = inttoptr i64 %unwrap.pay.abort260 to ptr
  %err.code.gep262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr261, i32 0, i32 0
  %err.code263 = load i64, ptr %err.code.gep262, align 8
  %err.msg.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr261, i32 0, i32 1
  %err.msg.struct265 = load ptr, ptr %err.msg.gep264, align 8
  %err.file.gep266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr261, i32 0, i32 2
  %err.file.struct267 = load ptr, ptr %err.file.gep266, align 8
  %err.line.gep268 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr261, i32 0, i32 3
  %err.line269 = load i64, ptr %err.line.gep268, align 8
  %err.col.gep270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr261, i32 0, i32 4
  %err.col271 = load i64, ptr %err.col.gep270, align 8
  %err.msg.len272 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct265, i32 0, i32 0
  %err.msg.len273 = load i64, ptr %err.msg.len272, align 8
  %err.msg.len274 = and i64 %err.msg.len273, 281474976710655
  %err.msg.len32275 = trunc i64 %err.msg.len274 to i32
  %err.msg.data276 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct265, i32 0, i32 1
  %err.msg.data277 = load ptr, ptr %err.msg.data276, align 8
  %err.file.len278 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct267, i32 0, i32 0
  %err.file.len279 = load i64, ptr %err.file.len278, align 8
  %err.file.len280 = and i64 %err.file.len279, 281474976710655
  %err.file.len32281 = trunc i64 %err.file.len280 to i32
  %err.file.data282 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct267, i32 0, i32 1
  %err.file.data283 = load ptr, ptr %err.file.data282, align 8
  %err.thread.rec284 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread285 = icmp ne ptr %err.thread.rec284, null
  br i1 %err.is.thread285, label %err.thread286, label %err.normal287

err.thread286:                                    ; preds = %unwrap.abort.98
  %err.haserr.gep288 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec284, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep288, align 8
  %err.err.gep289 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec284, i32 0, i32 7
  store ptr %err.ptr261, ptr %err.err.gep289, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal287:                                    ; preds = %unwrap.abort.98
  %err.panic.printf290 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code263, i32 %err.msg.len32275, ptr %err.msg.data277, i32 %err.file.len32281, ptr %err.file.data283, i64 %err.line269, i64 %err.col271)
  call void @exit(i32 1)
  unreachable

choice.then299:                                   ; preds = %unwrap.pos.98
  %var.load301 = load ptr, ptr %var.dirs, align 8
  %a.load302 = load ptr, ptr %var.dirs, align 8
  %a.null303 = icmp eq ptr %a.load302, null
  br i1 %a.null303, label %a.create304, label %a.after305

choice.exit300:                                   ; preds = %a.wr.done362, %unwrap.pos.98
  br label %loop.latch.96

a.create304:                                      ; preds = %choice.then299
  %arena.cur306 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create307 = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 24)
  %arena.cur308 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 128)
  %a.len.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create307, i32 0, i32 0
  store i64 0, ptr %a.len.gep310, align 8
  %a.data.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create307, i32 0, i32 1
  store ptr %a.buf309, ptr %a.data.gep311, align 8
  %a.cap.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create307, i32 0, i32 2
  store i64 16, ptr %a.cap.gep312, align 8
  store ptr %a.create307, ptr %var.dirs, align 8
  br label %a.after305

a.after305:                                       ; preds = %a.create304, %choice.then299
  %a.load2313 = load ptr, ptr %var.dirs, align 8
  %var.load314 = load i64, ptr %var.j, align 8
  %var.load315 = load ptr, ptr %var.d2, align 8
  %slot.p2i316 = ptrtoint ptr %var.load315 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2313, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after305
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2313, i32 0, i32 0
  %a.wr.len317 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load314, 0
  %a.wr.lt = icmp slt i64 %var.load314, %a.wr.len317
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2313, i32 0, i32 1
  %a.wr.data318 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep319 = getelementptr i64, ptr %a.wr.data318, i64 %var.load314
  store i64 %slot.p2i316, ptr %a.elem.gep319, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after305
  %arena.cur320 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 56)
  %err.code.gep322 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 0
  store i64 4011, ptr %err.code.gep322, align 8
  %err.msg.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep323, align 8
  %err.file.gep324 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep324, align 8
  %err.line.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 3
  store i64 0, ptr %err.line.gep325, align 8
  %err.col.gep326 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 4
  store i64 0, ptr %err.col.gep326, align 8
  %err.ctx.gep327 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 5
  %err.ctx0.gep328 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep327, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep328, align 8
  %err.ctx1.gep329 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep327, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep329, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur330 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc331 = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 56)
  %err.code.gep332 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 0
  store i64 4011, ptr %err.code.gep332, align 8
  %err.msg.gep333 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep333, align 8
  %err.file.gep334 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep334, align 8
  %err.line.gep335 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 3
  store i64 0, ptr %err.line.gep335, align 8
  %err.col.gep336 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 4
  store i64 0, ptr %err.col.gep336, align 8
  %err.ctx.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 5
  %err.ctx0.gep338 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep337, i32 0, i32 0
  store i64 %var.load314, ptr %err.ctx0.gep338, align 8
  %err.ctx1.gep339 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep337, i32 0, i32 1
  store i64 %a.wr.len317, ptr %err.ctx1.gep339, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc321, %a.wr.err.null ], [ %err.alloc331, %a.wr.err.oob ]
  %var.load340 = load ptr, ptr %var.dirs, align 8
  %a.load341 = load ptr, ptr %var.dirs, align 8
  %a.null342 = icmp eq ptr %a.load341, null
  br i1 %a.null342, label %a.create343, label %a.after344

a.create343:                                      ; preds = %a.wr.done
  %arena.cur345 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create346 = call ptr @dva_arena_alloc(ptr %arena.cur345, i64 24)
  %arena.cur347 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 128)
  %a.len.gep349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 0
  store i64 0, ptr %a.len.gep349, align 8
  %a.data.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 1
  store ptr %a.buf348, ptr %a.data.gep350, align 8
  %a.cap.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 2
  store i64 16, ptr %a.cap.gep351, align 8
  store ptr %a.create346, ptr %var.dirs, align 8
  br label %a.after344

a.after344:                                       ; preds = %a.create343, %a.wr.done
  %a.load2352 = load ptr, ptr %var.dirs, align 8
  %var.load353 = load i64, ptr %var.j, align 8
  %addtmp354 = add i64 %var.load353, 1
  %var.load355 = load ptr, ptr %var.d1, align 8
  %slot.p2i356 = ptrtoint ptr %var.load355 to i64
  %a.wr.nonnull357 = icmp ne ptr %a.load2352, null
  br i1 %a.wr.nonnull357, label %a.wr.check358, label %a.wr.err.null360

a.wr.check358:                                    ; preds = %a.after344
  %a.wr.len363 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2352, i32 0, i32 0
  %a.wr.len364 = load i64, ptr %a.wr.len363, align 8
  %a.wr.ge0365 = icmp sge i64 %addtmp354, 0
  %a.wr.lt366 = icmp slt i64 %addtmp354, %a.wr.len364
  %a.wr.bounds367 = and i1 %a.wr.ge0365, %a.wr.lt366
  br i1 %a.wr.bounds367, label %a.wr.ok359, label %a.wr.err.oob361

a.wr.ok359:                                       ; preds = %a.wr.check358
  %a.wr.data368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2352, i32 0, i32 1
  %a.wr.data369 = load ptr, ptr %a.wr.data368, align 8
  %a.elem.gep370 = getelementptr i64, ptr %a.wr.data369, i64 %addtmp354
  store i64 %slot.p2i356, ptr %a.elem.gep370, align 8
  br label %a.wr.done362

a.wr.err.null360:                                 ; preds = %a.after344
  %arena.cur371 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc372 = call ptr @dva_arena_alloc(ptr %arena.cur371, i64 56)
  %err.code.gep373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc372, i32 0, i32 0
  store i64 4011, ptr %err.code.gep373, align 8
  %err.msg.gep374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc372, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep374, align 8
  %err.file.gep375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc372, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep375, align 8
  %err.line.gep376 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc372, i32 0, i32 3
  store i64 0, ptr %err.line.gep376, align 8
  %err.col.gep377 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc372, i32 0, i32 4
  store i64 0, ptr %err.col.gep377, align 8
  %err.ctx.gep378 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc372, i32 0, i32 5
  %err.ctx0.gep379 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep378, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep379, align 8
  %err.ctx1.gep380 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep378, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep380, align 8
  br label %a.wr.done362

a.wr.err.oob361:                                  ; preds = %a.wr.check358
  %arena.cur381 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc382 = call ptr @dva_arena_alloc(ptr %arena.cur381, i64 56)
  %err.code.gep383 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc382, i32 0, i32 0
  store i64 4011, ptr %err.code.gep383, align 8
  %err.msg.gep384 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc382, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep384, align 8
  %err.file.gep385 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc382, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep385, align 8
  %err.line.gep386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc382, i32 0, i32 3
  store i64 0, ptr %err.line.gep386, align 8
  %err.col.gep387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc382, i32 0, i32 4
  store i64 0, ptr %err.col.gep387, align 8
  %err.ctx.gep388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc382, i32 0, i32 5
  %err.ctx0.gep389 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep388, i32 0, i32 0
  store i64 %addtmp354, ptr %err.ctx0.gep389, align 8
  %err.ctx1.gep390 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep388, i32 0, i32 1
  store i64 %a.wr.len364, ptr %err.ctx1.gep390, align 8
  br label %a.wr.done362

a.wr.done362:                                     ; preds = %a.wr.err.oob361, %a.wr.err.null360, %a.wr.ok359
  %a.wr.niche391 = phi ptr [ null, %a.wr.ok359 ], [ %err.alloc372, %a.wr.err.null360 ], [ %err.alloc382, %a.wr.err.oob361 ]
  br label %choice.exit300

a.create399:                                      ; preds = %loop.exit.95
  %arena.cur401 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create402 = call ptr @dva_arena_alloc(ptr %arena.cur401, i64 24)
  %arena.cur403 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf404 = call ptr @dva_arena_alloc(ptr %arena.cur403, i64 128)
  %a.len.gep405 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create402, i32 0, i32 0
  store i64 0, ptr %a.len.gep405, align 8
  %a.data.gep406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create402, i32 0, i32 1
  store ptr %a.buf404, ptr %a.data.gep406, align 8
  %a.cap.gep407 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create402, i32 0, i32 2
  store i64 16, ptr %a.cap.gep407, align 8
  store ptr %a.create402, ptr %var.file_list, align 8
  br label %a.after400

a.after400:                                       ; preds = %a.create399, %loop.exit.95
  %a.load2408 = load ptr, ptr %var.file_list, align 8
  %a.len.query409 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2408, i32 0, i32 0
  %a.len.query410 = load i64, ptr %a.len.query409, align 8
  store i64 %a.len.query410, ptr %var.nf, align 8
  %var.load411 = load i64, ptr %var.nf, align 8
  store i64 0, ptr %loop.idx.99, align 8
  br label %loop.header.99

loop.header.99:                                   ; preds = %loop.latch.99, %a.after400
  %counter.load412 = load i64, ptr %loop.idx.99, align 8
  %loop.cond413 = icmp slt i64 %counter.load412, %var.load411
  br i1 %loop.cond413, label %loop.body.99, label %loop.exit.nat.99

loop.body.99:                                     ; preds = %loop.header.99
  %loop.rel.i414 = sub i64 %counter.load412, 0
  store i64 1, ptr %loop.step.99, align 8
  store i64 %loop.rel.i414, ptr %var._i415, align 8
  store i64 %counter.load412, ptr %var._416, align 8
  store i64 %counter.load412, ptr %var.i, align 8
  %var.load417 = load i64, ptr %var.nf, align 8
  %subtmp418 = sub i64 %var.load417, 1
  store i64 0, ptr %loop.idx.100, align 8
  %cycle.prev.u420 = load i64, ptr %var._416, align 8
  %cycle.prev.i421 = load i64, ptr %var._i415, align 8
  br label %loop.header.100

loop.exit.nat.99:                                 ; preds = %loop.header.99
  br label %loop.exit.99

loop.latch.99:                                    ; preds = %loop.exit.100
  %step.val719 = load i64, ptr %loop.step.99, align 8
  %loop.next720 = add i64 %counter.load412, %step.val719
  store i64 %loop.next720, ptr %loop.idx.99, align 8
  br label %loop.header.99

loop.exit.99:                                     ; preds = %loop.exit.nat.99
  %var.load721 = load ptr, ptr %var.dirs, align 8
  %a.load722 = load ptr, ptr %var.dirs, align 8
  %a.null723 = icmp eq ptr %a.load722, null
  br i1 %a.null723, label %a.create724, label %a.after725

loop.header.100:                                  ; preds = %loop.latch.100, %loop.body.99
  %counter.load422 = load i64, ptr %loop.idx.100, align 8
  %loop.cond423 = icmp slt i64 %counter.load422, %subtmp418
  br i1 %loop.cond423, label %loop.body.100, label %loop.exit.nat.100

loop.body.100:                                    ; preds = %loop.header.100
  %loop.rel.i424 = sub i64 %counter.load422, 0
  store i64 1, ptr %loop.step.100, align 8
  store i64 %loop.rel.i424, ptr %var._i425, align 8
  store i64 %counter.load422, ptr %var._426, align 8
  store i64 %counter.load422, ptr %var.j419, align 8
  %var.load427 = load ptr, ptr %var.file_list, align 8
  %a.load428 = load ptr, ptr %var.file_list, align 8
  %a.null429 = icmp eq ptr %a.load428, null
  br i1 %a.null429, label %a.create430, label %a.after431

loop.exit.nat.100:                                ; preds = %loop.header.100
  br label %loop.exit.100

loop.latch.100:                                   ; preds = %choice.exit613
  %step.val717 = load i64, ptr %loop.step.100, align 8
  %loop.next718 = add i64 %counter.load422, %step.val717
  store i64 %loop.next718, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.exit.100:                                    ; preds = %loop.exit.nat.100
  store i64 %cycle.prev.u420, ptr %var._416, align 8
  store i64 %cycle.prev.i421, ptr %var._i415, align 8
  br label %loop.latch.99

a.create430:                                      ; preds = %loop.body.100
  %arena.cur432 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create433 = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 24)
  %arena.cur434 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf435 = call ptr @dva_arena_alloc(ptr %arena.cur434, i64 128)
  %a.len.gep436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 0
  store i64 0, ptr %a.len.gep436, align 8
  %a.data.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 1
  store ptr %a.buf435, ptr %a.data.gep437, align 8
  %a.cap.gep438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 2
  store i64 16, ptr %a.cap.gep438, align 8
  store ptr %a.create433, ptr %var.file_list, align 8
  br label %a.after431

a.after431:                                       ; preds = %a.create430, %loop.body.100
  %a.load2439 = load ptr, ptr %var.file_list, align 8
  %var.load440 = load i64, ptr %var.j419, align 8
  %a.rd.nonnull441 = icmp ne ptr %a.load2439, null
  br i1 %a.rd.nonnull441, label %a.rd.check442, label %a.rd.err.null444

a.rd.check442:                                    ; preds = %a.after431
  %a.rd.len447 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2439, i32 0, i32 0
  %a.rd.len448 = load i64, ptr %a.rd.len447, align 8
  %a.rd.ge0449 = icmp sge i64 %var.load440, 0
  %a.rd.lt450 = icmp slt i64 %var.load440, %a.rd.len448
  %a.rd.bounds451 = and i1 %a.rd.ge0449, %a.rd.lt450
  br i1 %a.rd.bounds451, label %a.rd.ok443, label %a.rd.err.oob445

a.rd.ok443:                                       ; preds = %a.rd.check442
  %a.rd.data452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2439, i32 0, i32 1
  %a.rd.data453 = load ptr, ptr %a.rd.data452, align 8
  %a.rd.elem.gep454 = getelementptr i64, ptr %a.rd.data453, i64 %var.load440
  %a.rd.elem455 = load i64, ptr %a.rd.elem.gep454, align 8
  br label %a.rd.done446

a.rd.err.null444:                                 ; preds = %a.after431
  %arena.cur456 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc457 = call ptr @dva_arena_alloc(ptr %arena.cur456, i64 56)
  %err.code.gep458 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc457, i32 0, i32 0
  store i64 4011, ptr %err.code.gep458, align 8
  %err.msg.gep459 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc457, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep459, align 8
  %err.file.gep460 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc457, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep460, align 8
  %err.line.gep461 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc457, i32 0, i32 3
  store i64 709, ptr %err.line.gep461, align 8
  %err.col.gep462 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc457, i32 0, i32 4
  store i64 27, ptr %err.col.gep462, align 8
  %err.ctx.gep463 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc457, i32 0, i32 5
  %err.ctx0.gep464 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep463, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep464, align 8
  %err.ctx1.gep465 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep463, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep465, align 8
  %err.p2i466 = ptrtoint ptr %err.alloc457 to i64
  br label %a.rd.done446

a.rd.err.oob445:                                  ; preds = %a.rd.check442
  %arena.cur467 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc468 = call ptr @dva_arena_alloc(ptr %arena.cur467, i64 56)
  %err.code.gep469 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc468, i32 0, i32 0
  store i64 4011, ptr %err.code.gep469, align 8
  %err.msg.gep470 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc468, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep470, align 8
  %err.file.gep471 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc468, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep471, align 8
  %err.line.gep472 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc468, i32 0, i32 3
  store i64 709, ptr %err.line.gep472, align 8
  %err.col.gep473 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc468, i32 0, i32 4
  store i64 27, ptr %err.col.gep473, align 8
  %err.ctx.gep474 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc468, i32 0, i32 5
  %err.ctx0.gep475 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep474, i32 0, i32 0
  store i64 %var.load440, ptr %err.ctx0.gep475, align 8
  %err.ctx1.gep476 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep474, i32 0, i32 1
  store i64 %a.rd.len448, ptr %err.ctx1.gep476, align 8
  %err.p2i477 = ptrtoint ptr %err.alloc468 to i64
  br label %a.rd.done446

a.rd.done446:                                     ; preds = %a.rd.err.oob445, %a.rd.err.null444, %a.rd.ok443
  %a.rd.tag478 = phi i1 [ true, %a.rd.ok443 ], [ false, %a.rd.err.null444 ], [ false, %a.rd.err.oob445 ]
  %a.rd.pay479 = phi i64 [ %a.rd.elem455, %a.rd.ok443 ], [ %err.p2i466, %a.rd.err.null444 ], [ %err.p2i477, %a.rd.err.oob445 ]
  %ram.tag480 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag478, 0
  %ram.pay481 = insertvalue { i1, i64 } %ram.tag480, i64 %a.rd.pay479, 1
  %unwrap.is_pos482 = extractvalue { i1, i64 } %ram.pay481, 0
  br i1 %unwrap.is_pos482, label %unwrap.pos.101, label %unwrap.abort.101

unwrap.pos.101:                                   ; preds = %a.rd.done446
  %unwrap.pay.pos514 = extractvalue { i1, i64 } %ram.pay481, 1
  %pay.ptr515 = inttoptr i64 %unwrap.pay.pos514 to ptr
  store ptr %pay.ptr515, ptr %var.f1, align 8
  %var.load516 = load ptr, ptr %var.file_list, align 8
  %a.load517 = load ptr, ptr %var.file_list, align 8
  %a.null518 = icmp eq ptr %a.load517, null
  br i1 %a.null518, label %a.create519, label %a.after520

unwrap.abort.101:                                 ; preds = %a.rd.done446
  %unwrap.pay.abort483 = extractvalue { i1, i64 } %ram.pay481, 1
  %err.ptr484 = inttoptr i64 %unwrap.pay.abort483 to ptr
  %err.code.gep485 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr484, i32 0, i32 0
  %err.code486 = load i64, ptr %err.code.gep485, align 8
  %err.msg.gep487 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr484, i32 0, i32 1
  %err.msg.struct488 = load ptr, ptr %err.msg.gep487, align 8
  %err.file.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr484, i32 0, i32 2
  %err.file.struct490 = load ptr, ptr %err.file.gep489, align 8
  %err.line.gep491 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr484, i32 0, i32 3
  %err.line492 = load i64, ptr %err.line.gep491, align 8
  %err.col.gep493 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr484, i32 0, i32 4
  %err.col494 = load i64, ptr %err.col.gep493, align 8
  %err.msg.len495 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct488, i32 0, i32 0
  %err.msg.len496 = load i64, ptr %err.msg.len495, align 8
  %err.msg.len497 = and i64 %err.msg.len496, 281474976710655
  %err.msg.len32498 = trunc i64 %err.msg.len497 to i32
  %err.msg.data499 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct488, i32 0, i32 1
  %err.msg.data500 = load ptr, ptr %err.msg.data499, align 8
  %err.file.len501 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct490, i32 0, i32 0
  %err.file.len502 = load i64, ptr %err.file.len501, align 8
  %err.file.len503 = and i64 %err.file.len502, 281474976710655
  %err.file.len32504 = trunc i64 %err.file.len503 to i32
  %err.file.data505 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct490, i32 0, i32 1
  %err.file.data506 = load ptr, ptr %err.file.data505, align 8
  %err.thread.rec507 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread508 = icmp ne ptr %err.thread.rec507, null
  br i1 %err.is.thread508, label %err.thread509, label %err.normal510

err.thread509:                                    ; preds = %unwrap.abort.101
  %err.haserr.gep511 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec507, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep511, align 8
  %err.err.gep512 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec507, i32 0, i32 7
  store ptr %err.ptr484, ptr %err.err.gep512, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal510:                                    ; preds = %unwrap.abort.101
  %err.panic.printf513 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code486, i32 %err.msg.len32498, ptr %err.msg.data500, i32 %err.file.len32504, ptr %err.file.data506, i64 %err.line492, i64 %err.col494)
  call void @exit(i32 1)
  unreachable

a.create519:                                      ; preds = %unwrap.pos.101
  %arena.cur521 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create522 = call ptr @dva_arena_alloc(ptr %arena.cur521, i64 24)
  %arena.cur523 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf524 = call ptr @dva_arena_alloc(ptr %arena.cur523, i64 128)
  %a.len.gep525 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create522, i32 0, i32 0
  store i64 0, ptr %a.len.gep525, align 8
  %a.data.gep526 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create522, i32 0, i32 1
  store ptr %a.buf524, ptr %a.data.gep526, align 8
  %a.cap.gep527 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create522, i32 0, i32 2
  store i64 16, ptr %a.cap.gep527, align 8
  store ptr %a.create522, ptr %var.file_list, align 8
  br label %a.after520

a.after520:                                       ; preds = %a.create519, %unwrap.pos.101
  %a.load2528 = load ptr, ptr %var.file_list, align 8
  %var.load529 = load i64, ptr %var.j419, align 8
  %addtmp530 = add i64 %var.load529, 1
  %a.rd.nonnull531 = icmp ne ptr %a.load2528, null
  br i1 %a.rd.nonnull531, label %a.rd.check532, label %a.rd.err.null534

a.rd.check532:                                    ; preds = %a.after520
  %a.rd.len537 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2528, i32 0, i32 0
  %a.rd.len538 = load i64, ptr %a.rd.len537, align 8
  %a.rd.ge0539 = icmp sge i64 %addtmp530, 0
  %a.rd.lt540 = icmp slt i64 %addtmp530, %a.rd.len538
  %a.rd.bounds541 = and i1 %a.rd.ge0539, %a.rd.lt540
  br i1 %a.rd.bounds541, label %a.rd.ok533, label %a.rd.err.oob535

a.rd.ok533:                                       ; preds = %a.rd.check532
  %a.rd.data542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2528, i32 0, i32 1
  %a.rd.data543 = load ptr, ptr %a.rd.data542, align 8
  %a.rd.elem.gep544 = getelementptr i64, ptr %a.rd.data543, i64 %addtmp530
  %a.rd.elem545 = load i64, ptr %a.rd.elem.gep544, align 8
  br label %a.rd.done536

a.rd.err.null534:                                 ; preds = %a.after520
  %arena.cur546 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc547 = call ptr @dva_arena_alloc(ptr %arena.cur546, i64 56)
  %err.code.gep548 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 0
  store i64 4011, ptr %err.code.gep548, align 8
  %err.msg.gep549 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep549, align 8
  %err.file.gep550 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep550, align 8
  %err.line.gep551 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 3
  store i64 710, ptr %err.line.gep551, align 8
  %err.col.gep552 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 4
  store i64 31, ptr %err.col.gep552, align 8
  %err.ctx.gep553 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 5
  %err.ctx0.gep554 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep553, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep554, align 8
  %err.ctx1.gep555 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep553, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep555, align 8
  %err.p2i556 = ptrtoint ptr %err.alloc547 to i64
  br label %a.rd.done536

a.rd.err.oob535:                                  ; preds = %a.rd.check532
  %arena.cur557 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc558 = call ptr @dva_arena_alloc(ptr %arena.cur557, i64 56)
  %err.code.gep559 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc558, i32 0, i32 0
  store i64 4011, ptr %err.code.gep559, align 8
  %err.msg.gep560 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc558, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep560, align 8
  %err.file.gep561 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc558, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep561, align 8
  %err.line.gep562 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc558, i32 0, i32 3
  store i64 710, ptr %err.line.gep562, align 8
  %err.col.gep563 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc558, i32 0, i32 4
  store i64 31, ptr %err.col.gep563, align 8
  %err.ctx.gep564 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc558, i32 0, i32 5
  %err.ctx0.gep565 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep564, i32 0, i32 0
  store i64 %addtmp530, ptr %err.ctx0.gep565, align 8
  %err.ctx1.gep566 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep564, i32 0, i32 1
  store i64 %a.rd.len538, ptr %err.ctx1.gep566, align 8
  %err.p2i567 = ptrtoint ptr %err.alloc558 to i64
  br label %a.rd.done536

a.rd.done536:                                     ; preds = %a.rd.err.oob535, %a.rd.err.null534, %a.rd.ok533
  %a.rd.tag568 = phi i1 [ true, %a.rd.ok533 ], [ false, %a.rd.err.null534 ], [ false, %a.rd.err.oob535 ]
  %a.rd.pay569 = phi i64 [ %a.rd.elem545, %a.rd.ok533 ], [ %err.p2i556, %a.rd.err.null534 ], [ %err.p2i567, %a.rd.err.oob535 ]
  %ram.tag570 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag568, 0
  %ram.pay571 = insertvalue { i1, i64 } %ram.tag570, i64 %a.rd.pay569, 1
  %unwrap.is_pos572 = extractvalue { i1, i64 } %ram.pay571, 0
  br i1 %unwrap.is_pos572, label %unwrap.pos.102, label %unwrap.abort.102

unwrap.pos.102:                                   ; preds = %a.rd.done536
  %unwrap.pay.pos604 = extractvalue { i1, i64 } %ram.pay571, 1
  %pay.ptr605 = inttoptr i64 %unwrap.pay.pos604 to ptr
  store ptr %pay.ptr605, ptr %var.f2, align 8
  %var.load606 = load ptr, ptr %var.f1, align 8
  %var.load607 = load ptr, ptr %var.f2, align 8
  %var.load608 = load i64, ptr %var.sort_mode, align 8
  %var.load609 = load i1, ptr %var.sort_rev, align 1
  %call.res610 = call i64 @"fs::cmp_entries"(ptr %var.load606, ptr %var.load607, i64 %var.load608, i1 %var.load609)
  %cmptmp611 = icmp sgt i64 %call.res610, 0
  br i1 %cmptmp611, label %choice.then612, label %choice.exit613

unwrap.abort.102:                                 ; preds = %a.rd.done536
  %unwrap.pay.abort573 = extractvalue { i1, i64 } %ram.pay571, 1
  %err.ptr574 = inttoptr i64 %unwrap.pay.abort573 to ptr
  %err.code.gep575 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr574, i32 0, i32 0
  %err.code576 = load i64, ptr %err.code.gep575, align 8
  %err.msg.gep577 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr574, i32 0, i32 1
  %err.msg.struct578 = load ptr, ptr %err.msg.gep577, align 8
  %err.file.gep579 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr574, i32 0, i32 2
  %err.file.struct580 = load ptr, ptr %err.file.gep579, align 8
  %err.line.gep581 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr574, i32 0, i32 3
  %err.line582 = load i64, ptr %err.line.gep581, align 8
  %err.col.gep583 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr574, i32 0, i32 4
  %err.col584 = load i64, ptr %err.col.gep583, align 8
  %err.msg.len585 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct578, i32 0, i32 0
  %err.msg.len586 = load i64, ptr %err.msg.len585, align 8
  %err.msg.len587 = and i64 %err.msg.len586, 281474976710655
  %err.msg.len32588 = trunc i64 %err.msg.len587 to i32
  %err.msg.data589 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct578, i32 0, i32 1
  %err.msg.data590 = load ptr, ptr %err.msg.data589, align 8
  %err.file.len591 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct580, i32 0, i32 0
  %err.file.len592 = load i64, ptr %err.file.len591, align 8
  %err.file.len593 = and i64 %err.file.len592, 281474976710655
  %err.file.len32594 = trunc i64 %err.file.len593 to i32
  %err.file.data595 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct580, i32 0, i32 1
  %err.file.data596 = load ptr, ptr %err.file.data595, align 8
  %err.thread.rec597 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread598 = icmp ne ptr %err.thread.rec597, null
  br i1 %err.is.thread598, label %err.thread599, label %err.normal600

err.thread599:                                    ; preds = %unwrap.abort.102
  %err.haserr.gep601 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec597, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep601, align 8
  %err.err.gep602 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec597, i32 0, i32 7
  store ptr %err.ptr574, ptr %err.err.gep602, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal600:                                    ; preds = %unwrap.abort.102
  %err.panic.printf603 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code576, i32 %err.msg.len32588, ptr %err.msg.data590, i32 %err.file.len32594, ptr %err.file.data596, i64 %err.line582, i64 %err.col584)
  call void @exit(i32 1)
  unreachable

choice.then612:                                   ; preds = %unwrap.pos.102
  %var.load614 = load ptr, ptr %var.file_list, align 8
  %a.load615 = load ptr, ptr %var.file_list, align 8
  %a.null616 = icmp eq ptr %a.load615, null
  br i1 %a.null616, label %a.create617, label %a.after618

choice.exit613:                                   ; preds = %a.wr.done687, %unwrap.pos.102
  br label %loop.latch.100

a.create617:                                      ; preds = %choice.then612
  %arena.cur619 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create620 = call ptr @dva_arena_alloc(ptr %arena.cur619, i64 24)
  %arena.cur621 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf622 = call ptr @dva_arena_alloc(ptr %arena.cur621, i64 128)
  %a.len.gep623 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create620, i32 0, i32 0
  store i64 0, ptr %a.len.gep623, align 8
  %a.data.gep624 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create620, i32 0, i32 1
  store ptr %a.buf622, ptr %a.data.gep624, align 8
  %a.cap.gep625 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create620, i32 0, i32 2
  store i64 16, ptr %a.cap.gep625, align 8
  store ptr %a.create620, ptr %var.file_list, align 8
  br label %a.after618

a.after618:                                       ; preds = %a.create617, %choice.then612
  %a.load2626 = load ptr, ptr %var.file_list, align 8
  %var.load627 = load i64, ptr %var.j419, align 8
  %var.load628 = load ptr, ptr %var.f2, align 8
  %slot.p2i629 = ptrtoint ptr %var.load628 to i64
  %a.wr.nonnull630 = icmp ne ptr %a.load2626, null
  br i1 %a.wr.nonnull630, label %a.wr.check631, label %a.wr.err.null633

a.wr.check631:                                    ; preds = %a.after618
  %a.wr.len636 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2626, i32 0, i32 0
  %a.wr.len637 = load i64, ptr %a.wr.len636, align 8
  %a.wr.ge0638 = icmp sge i64 %var.load627, 0
  %a.wr.lt639 = icmp slt i64 %var.load627, %a.wr.len637
  %a.wr.bounds640 = and i1 %a.wr.ge0638, %a.wr.lt639
  br i1 %a.wr.bounds640, label %a.wr.ok632, label %a.wr.err.oob634

a.wr.ok632:                                       ; preds = %a.wr.check631
  %a.wr.data641 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2626, i32 0, i32 1
  %a.wr.data642 = load ptr, ptr %a.wr.data641, align 8
  %a.elem.gep643 = getelementptr i64, ptr %a.wr.data642, i64 %var.load627
  store i64 %slot.p2i629, ptr %a.elem.gep643, align 8
  br label %a.wr.done635

a.wr.err.null633:                                 ; preds = %a.after618
  %arena.cur644 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc645 = call ptr @dva_arena_alloc(ptr %arena.cur644, i64 56)
  %err.code.gep646 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc645, i32 0, i32 0
  store i64 4011, ptr %err.code.gep646, align 8
  %err.msg.gep647 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc645, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep647, align 8
  %err.file.gep648 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc645, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep648, align 8
  %err.line.gep649 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc645, i32 0, i32 3
  store i64 0, ptr %err.line.gep649, align 8
  %err.col.gep650 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc645, i32 0, i32 4
  store i64 0, ptr %err.col.gep650, align 8
  %err.ctx.gep651 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc645, i32 0, i32 5
  %err.ctx0.gep652 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep651, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep652, align 8
  %err.ctx1.gep653 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep651, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep653, align 8
  br label %a.wr.done635

a.wr.err.oob634:                                  ; preds = %a.wr.check631
  %arena.cur654 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc655 = call ptr @dva_arena_alloc(ptr %arena.cur654, i64 56)
  %err.code.gep656 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc655, i32 0, i32 0
  store i64 4011, ptr %err.code.gep656, align 8
  %err.msg.gep657 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc655, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep657, align 8
  %err.file.gep658 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc655, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep658, align 8
  %err.line.gep659 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc655, i32 0, i32 3
  store i64 0, ptr %err.line.gep659, align 8
  %err.col.gep660 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc655, i32 0, i32 4
  store i64 0, ptr %err.col.gep660, align 8
  %err.ctx.gep661 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc655, i32 0, i32 5
  %err.ctx0.gep662 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep661, i32 0, i32 0
  store i64 %var.load627, ptr %err.ctx0.gep662, align 8
  %err.ctx1.gep663 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep661, i32 0, i32 1
  store i64 %a.wr.len637, ptr %err.ctx1.gep663, align 8
  br label %a.wr.done635

a.wr.done635:                                     ; preds = %a.wr.err.oob634, %a.wr.err.null633, %a.wr.ok632
  %a.wr.niche664 = phi ptr [ null, %a.wr.ok632 ], [ %err.alloc645, %a.wr.err.null633 ], [ %err.alloc655, %a.wr.err.oob634 ]
  %var.load665 = load ptr, ptr %var.file_list, align 8
  %a.load666 = load ptr, ptr %var.file_list, align 8
  %a.null667 = icmp eq ptr %a.load666, null
  br i1 %a.null667, label %a.create668, label %a.after669

a.create668:                                      ; preds = %a.wr.done635
  %arena.cur670 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create671 = call ptr @dva_arena_alloc(ptr %arena.cur670, i64 24)
  %arena.cur672 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf673 = call ptr @dva_arena_alloc(ptr %arena.cur672, i64 128)
  %a.len.gep674 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create671, i32 0, i32 0
  store i64 0, ptr %a.len.gep674, align 8
  %a.data.gep675 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create671, i32 0, i32 1
  store ptr %a.buf673, ptr %a.data.gep675, align 8
  %a.cap.gep676 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create671, i32 0, i32 2
  store i64 16, ptr %a.cap.gep676, align 8
  store ptr %a.create671, ptr %var.file_list, align 8
  br label %a.after669

a.after669:                                       ; preds = %a.create668, %a.wr.done635
  %a.load2677 = load ptr, ptr %var.file_list, align 8
  %var.load678 = load i64, ptr %var.j419, align 8
  %addtmp679 = add i64 %var.load678, 1
  %var.load680 = load ptr, ptr %var.f1, align 8
  %slot.p2i681 = ptrtoint ptr %var.load680 to i64
  %a.wr.nonnull682 = icmp ne ptr %a.load2677, null
  br i1 %a.wr.nonnull682, label %a.wr.check683, label %a.wr.err.null685

a.wr.check683:                                    ; preds = %a.after669
  %a.wr.len688 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2677, i32 0, i32 0
  %a.wr.len689 = load i64, ptr %a.wr.len688, align 8
  %a.wr.ge0690 = icmp sge i64 %addtmp679, 0
  %a.wr.lt691 = icmp slt i64 %addtmp679, %a.wr.len689
  %a.wr.bounds692 = and i1 %a.wr.ge0690, %a.wr.lt691
  br i1 %a.wr.bounds692, label %a.wr.ok684, label %a.wr.err.oob686

a.wr.ok684:                                       ; preds = %a.wr.check683
  %a.wr.data693 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2677, i32 0, i32 1
  %a.wr.data694 = load ptr, ptr %a.wr.data693, align 8
  %a.elem.gep695 = getelementptr i64, ptr %a.wr.data694, i64 %addtmp679
  store i64 %slot.p2i681, ptr %a.elem.gep695, align 8
  br label %a.wr.done687

a.wr.err.null685:                                 ; preds = %a.after669
  %arena.cur696 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc697 = call ptr @dva_arena_alloc(ptr %arena.cur696, i64 56)
  %err.code.gep698 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc697, i32 0, i32 0
  store i64 4011, ptr %err.code.gep698, align 8
  %err.msg.gep699 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc697, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep699, align 8
  %err.file.gep700 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc697, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep700, align 8
  %err.line.gep701 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc697, i32 0, i32 3
  store i64 0, ptr %err.line.gep701, align 8
  %err.col.gep702 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc697, i32 0, i32 4
  store i64 0, ptr %err.col.gep702, align 8
  %err.ctx.gep703 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc697, i32 0, i32 5
  %err.ctx0.gep704 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep703, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep704, align 8
  %err.ctx1.gep705 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep703, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep705, align 8
  br label %a.wr.done687

a.wr.err.oob686:                                  ; preds = %a.wr.check683
  %arena.cur706 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc707 = call ptr @dva_arena_alloc(ptr %arena.cur706, i64 56)
  %err.code.gep708 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc707, i32 0, i32 0
  store i64 4011, ptr %err.code.gep708, align 8
  %err.msg.gep709 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc707, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep709, align 8
  %err.file.gep710 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc707, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep710, align 8
  %err.line.gep711 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc707, i32 0, i32 3
  store i64 0, ptr %err.line.gep711, align 8
  %err.col.gep712 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc707, i32 0, i32 4
  store i64 0, ptr %err.col.gep712, align 8
  %err.ctx.gep713 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc707, i32 0, i32 5
  %err.ctx0.gep714 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep713, i32 0, i32 0
  store i64 %addtmp679, ptr %err.ctx0.gep714, align 8
  %err.ctx1.gep715 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep713, i32 0, i32 1
  store i64 %a.wr.len689, ptr %err.ctx1.gep715, align 8
  br label %a.wr.done687

a.wr.done687:                                     ; preds = %a.wr.err.oob686, %a.wr.err.null685, %a.wr.ok684
  %a.wr.niche716 = phi ptr [ null, %a.wr.ok684 ], [ %err.alloc697, %a.wr.err.null685 ], [ %err.alloc707, %a.wr.err.oob686 ]
  br label %choice.exit613

a.create724:                                      ; preds = %loop.exit.99
  %arena.cur726 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create727 = call ptr @dva_arena_alloc(ptr %arena.cur726, i64 24)
  %arena.cur728 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf729 = call ptr @dva_arena_alloc(ptr %arena.cur728, i64 128)
  %a.len.gep730 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create727, i32 0, i32 0
  store i64 0, ptr %a.len.gep730, align 8
  %a.data.gep731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create727, i32 0, i32 1
  store ptr %a.buf729, ptr %a.data.gep731, align 8
  %a.cap.gep732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create727, i32 0, i32 2
  store i64 16, ptr %a.cap.gep732, align 8
  store ptr %a.create727, ptr %var.dirs, align 8
  br label %a.after725

a.after725:                                       ; preds = %a.create724, %loop.exit.99
  %a.load2733 = load ptr, ptr %var.dirs, align 8
  %arr.cycle.len734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2733, i32 0, i32 0
  %arr.cycle.len735 = load i64, ptr %arr.cycle.len734, align 8
  %arr.cycle.data736 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2733, i32 0, i32 1
  %arr.cycle.data737 = load ptr, ptr %arr.cycle.data736, align 8
  store i64 0, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.header.103:                                  ; preds = %loop.latch.103, %a.after725
  %counter.load738 = load i64, ptr %loop.idx.103, align 8
  %loop.cond739 = icmp slt i64 %counter.load738, %arr.cycle.len735
  br i1 %loop.cond739, label %loop.body.103, label %loop.exit.nat.103

loop.body.103:                                    ; preds = %loop.header.103
  %loop.rel.i740 = sub i64 %counter.load738, 0
  store i64 1, ptr %loop.step.103, align 8
  %arr.elem.gep741 = getelementptr i64, ptr %arr.cycle.data737, i64 %counter.load738
  %arr.elem.raw742 = load i64, ptr %arr.elem.gep741, align 8
  %slot.i2p743 = inttoptr i64 %arr.elem.raw742 to ptr
  store i64 %loop.rel.i740, ptr %var._i744, align 8
  store ptr %slot.i2p743, ptr %var._745, align 8
  store ptr %slot.i2p743, ptr %var.dir_item, align 8
  %var.load746 = load ptr, ptr %var.dir_item, align 8
  %a.load747 = load ptr, ptr %var.res, align 8
  %a.null748 = icmp eq ptr %a.load747, null
  br i1 %a.null748, label %a.create749, label %a.after750

loop.exit.nat.103:                                ; preds = %loop.header.103
  br label %loop.exit.103

loop.latch.103:                                   ; preds = %a.store761
  %step.val775 = load i64, ptr %loop.step.103, align 8
  %loop.next776 = add i64 %counter.load738, %step.val775
  store i64 %loop.next776, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.exit.103:                                    ; preds = %loop.exit.nat.103
  %var.load777 = load ptr, ptr %var.file_list, align 8
  %a.load778 = load ptr, ptr %var.file_list, align 8
  %a.null779 = icmp eq ptr %a.load778, null
  br i1 %a.null779, label %a.create780, label %a.after781

a.create749:                                      ; preds = %loop.body.103
  %arena.cur751 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create752 = call ptr @dva_arena_alloc(ptr %arena.cur751, i64 24)
  %arena.cur753 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf754 = call ptr @dva_arena_alloc(ptr %arena.cur753, i64 128)
  %a.len.gep755 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create752, i32 0, i32 0
  store i64 0, ptr %a.len.gep755, align 8
  %a.data.gep756 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create752, i32 0, i32 1
  store ptr %a.buf754, ptr %a.data.gep756, align 8
  %a.cap.gep757 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create752, i32 0, i32 2
  store i64 16, ptr %a.cap.gep757, align 8
  store ptr %a.create752, ptr %var.res, align 8
  br label %a.after750

a.after750:                                       ; preds = %a.create749, %loop.body.103
  %a.load2758 = load ptr, ptr %var.res, align 8
  br label %a.check759

a.check759:                                       ; preds = %a.after750
  %a.len762 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2758, i32 0, i32 0
  %a.len763 = load i64, ptr %a.len762, align 8
  %a.cap764 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2758, i32 0, i32 2
  %a.cap765 = load i64, ptr %a.cap764, align 8
  %a.needs.grow766 = icmp eq i64 %a.len763, %a.cap765
  br i1 %a.needs.grow766, label %a.grow760, label %a.store761

a.grow760:                                        ; preds = %a.check759
  call void @dva_array_grow(ptr %a.load2758)
  br label %a.store761

a.store761:                                       ; preds = %a.grow760, %a.check759
  %a.cur.data767 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2758, i32 0, i32 1
  %a.cur.data768 = load ptr, ptr %a.cur.data767, align 8
  %a.cur.len769 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2758, i32 0, i32 0
  %a.cur.len770 = load i64, ptr %a.cur.len769, align 8
  %a.elem.gep771 = getelementptr i64, ptr %a.cur.data768, i64 %a.cur.len770
  %slot.p2i772 = ptrtoint ptr %var.load746 to i64
  store i64 %slot.p2i772, ptr %a.elem.gep771, align 8
  %a.next.len773 = add i64 %a.cur.len770, 1
  %b.len.gep774 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2758, i32 0, i32 0
  store i64 %a.next.len773, ptr %b.len.gep774, align 8
  br label %loop.latch.103

a.create780:                                      ; preds = %loop.exit.103
  %arena.cur782 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create783 = call ptr @dva_arena_alloc(ptr %arena.cur782, i64 24)
  %arena.cur784 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf785 = call ptr @dva_arena_alloc(ptr %arena.cur784, i64 128)
  %a.len.gep786 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create783, i32 0, i32 0
  store i64 0, ptr %a.len.gep786, align 8
  %a.data.gep787 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create783, i32 0, i32 1
  store ptr %a.buf785, ptr %a.data.gep787, align 8
  %a.cap.gep788 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create783, i32 0, i32 2
  store i64 16, ptr %a.cap.gep788, align 8
  store ptr %a.create783, ptr %var.file_list, align 8
  br label %a.after781

a.after781:                                       ; preds = %a.create780, %loop.exit.103
  %a.load2789 = load ptr, ptr %var.file_list, align 8
  %arr.cycle.len790 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2789, i32 0, i32 0
  %arr.cycle.len791 = load i64, ptr %arr.cycle.len790, align 8
  %arr.cycle.data792 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2789, i32 0, i32 1
  %arr.cycle.data793 = load ptr, ptr %arr.cycle.data792, align 8
  store i64 0, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.header.104:                                  ; preds = %loop.latch.104, %a.after781
  %counter.load794 = load i64, ptr %loop.idx.104, align 8
  %loop.cond795 = icmp slt i64 %counter.load794, %arr.cycle.len791
  br i1 %loop.cond795, label %loop.body.104, label %loop.exit.nat.104

loop.body.104:                                    ; preds = %loop.header.104
  %loop.rel.i796 = sub i64 %counter.load794, 0
  store i64 1, ptr %loop.step.104, align 8
  %arr.elem.gep797 = getelementptr i64, ptr %arr.cycle.data793, i64 %counter.load794
  %arr.elem.raw798 = load i64, ptr %arr.elem.gep797, align 8
  %slot.i2p799 = inttoptr i64 %arr.elem.raw798 to ptr
  store i64 %loop.rel.i796, ptr %var._i800, align 8
  store ptr %slot.i2p799, ptr %var._801, align 8
  store ptr %slot.i2p799, ptr %var.file_item, align 8
  %var.load802 = load ptr, ptr %var.file_item, align 8
  %a.load803 = load ptr, ptr %var.res, align 8
  %a.null804 = icmp eq ptr %a.load803, null
  br i1 %a.null804, label %a.create805, label %a.after806

loop.exit.nat.104:                                ; preds = %loop.header.104
  br label %loop.exit.104

loop.latch.104:                                   ; preds = %a.store817
  %step.val831 = load i64, ptr %loop.step.104, align 8
  %loop.next832 = add i64 %counter.load794, %step.val831
  store i64 %loop.next832, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.exit.104:                                    ; preds = %loop.exit.nat.104
  %var.load833 = load ptr, ptr %var.res, align 8
  %a.load834 = load ptr, ptr %var.res, align 8
  %a.null835 = icmp eq ptr %a.load834, null
  br i1 %a.null835, label %a.create836, label %a.after837

a.create805:                                      ; preds = %loop.body.104
  %arena.cur807 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create808 = call ptr @dva_arena_alloc(ptr %arena.cur807, i64 24)
  %arena.cur809 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf810 = call ptr @dva_arena_alloc(ptr %arena.cur809, i64 128)
  %a.len.gep811 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create808, i32 0, i32 0
  store i64 0, ptr %a.len.gep811, align 8
  %a.data.gep812 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create808, i32 0, i32 1
  store ptr %a.buf810, ptr %a.data.gep812, align 8
  %a.cap.gep813 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create808, i32 0, i32 2
  store i64 16, ptr %a.cap.gep813, align 8
  store ptr %a.create808, ptr %var.res, align 8
  br label %a.after806

a.after806:                                       ; preds = %a.create805, %loop.body.104
  %a.load2814 = load ptr, ptr %var.res, align 8
  br label %a.check815

a.check815:                                       ; preds = %a.after806
  %a.len818 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2814, i32 0, i32 0
  %a.len819 = load i64, ptr %a.len818, align 8
  %a.cap820 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2814, i32 0, i32 2
  %a.cap821 = load i64, ptr %a.cap820, align 8
  %a.needs.grow822 = icmp eq i64 %a.len819, %a.cap821
  br i1 %a.needs.grow822, label %a.grow816, label %a.store817

a.grow816:                                        ; preds = %a.check815
  call void @dva_array_grow(ptr %a.load2814)
  br label %a.store817

a.store817:                                       ; preds = %a.grow816, %a.check815
  %a.cur.data823 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2814, i32 0, i32 1
  %a.cur.data824 = load ptr, ptr %a.cur.data823, align 8
  %a.cur.len825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2814, i32 0, i32 0
  %a.cur.len826 = load i64, ptr %a.cur.len825, align 8
  %a.elem.gep827 = getelementptr i64, ptr %a.cur.data824, i64 %a.cur.len826
  %slot.p2i828 = ptrtoint ptr %var.load802 to i64
  store i64 %slot.p2i828, ptr %a.elem.gep827, align 8
  %a.next.len829 = add i64 %a.cur.len826, 1
  %b.len.gep830 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2814, i32 0, i32 0
  store i64 %a.next.len829, ptr %b.len.gep830, align 8
  br label %loop.latch.104

a.create836:                                      ; preds = %loop.exit.104
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
  store ptr %a.create839, ptr %var.res, align 8
  br label %a.after837

a.after837:                                       ; preds = %a.create836, %loop.exit.104
  %a.load2845 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2845
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline "nounwind" }
