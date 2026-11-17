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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1024, i64 1)
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
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr, i64 %arg.str.ptr2, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr2
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
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
  %call.res = call { i64, ptr } @"fs::cwd"()
  %arena.cur4 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.alloc, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load5 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %str.tag8 = lshr i64 %eq.lhs.len6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  br i1 %tag.immortal10, label %str_ok9, label %tag.gen_check11

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok9:                                          ; preds = %abort.dead18, %tag.slow_check12, %tag.gen_check11, %choice.exit
  %eq.rhs.len = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len19 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len19
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check11:                                  ; preds = %choice.exit
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

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data20 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data20, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then21, label %choice.exit22

choice.then21:                                    ; preds = %str.eq.merge
  %call.res23 = call { i64, ptr } @"fs::home"()
  %arena.cur24 = call ptr @dva_arena_current()
  %ret.ub.alloc25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  store { i64, ptr } %call.res23, ptr %ret.ub.alloc25, align 8
  %ret.pack26 = load { i64, ptr }, ptr %ret.ub.alloc25, align 8
  ret { i64, ptr } %ret.pack26

choice.exit22:                                    ; preds = %ret.dead27, %str.eq.merge
  %var.load28 = load i64, ptr %var.len, align 8
  %cmptmp29 = icmp sge i64 %var.load28, 2
  br i1 %cmptmp29, label %and.63.then, label %and.63.else

ret.dead27:                                       ; No predecessors!
  br label %choice.exit22

and.63.then:                                      ; preds = %choice.exit22
  %var.load30 = load ptr, ptr %var.p, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %s.chk.len31 = load i64, ptr %s.chk.len, align 8
  %s.chk.len32 = and i64 %s.chk.len31, 281474976710655
  %str.tag33 = lshr i64 %s.chk.len31, 48
  %tag.immortal35 = icmp eq i64 %str.tag33, 0
  br i1 %tag.immortal35, label %str_ok34, label %tag.gen_check36

and.63.else:                                      ; preds = %choice.exit22
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %str.eq.merge52
  %and.63.phi = phi i1 [ %str.eq.result55, %str.eq.merge52 ], [ %cmptmp29, %and.63.else ]
  br i1 %and.63.phi, label %choice.then56, label %choice.exit57

str_ok34:                                         ; preds = %abort.dead43, %tag.slow_check37, %tag.gen_check36, %and.63.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %s.read.len44 = load i64, ptr %s.read.len, align 8
  %s.read.len45 = and i64 %s.read.len44, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %s.read.data46 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len45, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len45
  %final.start = select i1 %start.gt.len, i64 %s.read.len45, i64 %c.start.0
  %rel.end = add i64 %s.read.len45, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len45
  %final.end = select i1 %end.gt.len, i64 %s.read.len45, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data46, i64 %final.start
  %cmp.str = load i64, ptr @str.4.struct, align 8
  %cmp.str47 = and i64 %cmp.str, 281474976710655
  %cmp.str48 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.len49 = icmp eq i64 %view.len, %cmp.str47
  br i1 %eq.len49, label %str.eq.then50, label %str.eq.else51

tag.gen_check36:                                  ; preds = %and.63.then
  %active.gen39 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok40 = icmp eq i64 %str.tag33, %active.gen39
  br i1 %tag.fast.ok40, label %str_ok34, label %tag.slow_check37

tag.slow_check37:                                 ; preds = %tag.gen_check36
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag33)
  br i1 %tag.valid42, label %str_ok34, label %tag.stale38

tag.stale38:                                      ; preds = %tag.slow_check37
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %str_ok34

str.eq.then50:                                    ; preds = %str_ok34
  %eq.memcmp53 = call i32 @memcmp(ptr %view.data, ptr %cmp.str48, i64 %view.len)
  %eq.cmp.zero54 = icmp eq i32 %eq.memcmp53, 0
  br label %str.eq.merge52

str.eq.else51:                                    ; preds = %str_ok34
  br label %str.eq.merge52

str.eq.merge52:                                   ; preds = %str.eq.else51, %str.eq.then50
  %str.eq.result55 = phi i1 [ %eq.cmp.zero54, %str.eq.then50 ], [ false, %str.eq.else51 ]
  br label %and.63.exit

choice.then56:                                    ; preds = %and.63.exit
  %call.res58 = call { i64, ptr } @"fs::home"()
  %arena.cur59 = call ptr @dva_arena_current()
  %ret.ub.alloc60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 16)
  store { i64, ptr } %call.res58, ptr %ret.ub.alloc60, align 8
  %var.load61 = load ptr, ptr %var.p, align 8
  %s.read.len62 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %s.read.len63 = load i64, ptr %s.read.len62, align 8
  %s.read.len64 = and i64 %s.read.len63, 281474976710655
  %s.read.data65 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 1
  %s.read.data66 = load ptr, ptr %s.read.data65, align 8
  %rel.start67 = add i64 %s.read.len64, 2
  %norm.start68 = select i1 false, i64 %rel.start67, i64 2
  %start.lt.069 = icmp slt i64 %norm.start68, 0
  %c.start.070 = select i1 %start.lt.069, i64 0, i64 %norm.start68
  %start.gt.len71 = icmp sgt i64 %c.start.070, %s.read.len64
  %final.start72 = select i1 %start.gt.len71, i64 %s.read.len64, i64 %c.start.070
  %end.is_neg = icmp slt i64 %s.read.len64, 0
  %rel.end73 = add i64 %s.read.len64, %s.read.len64
  %norm.end74 = select i1 %end.is_neg, i64 %rel.end73, i64 %s.read.len64
  %end.lt.075 = icmp slt i64 %norm.end74, 0
  %c.end.076 = select i1 %end.lt.075, i64 0, i64 %norm.end74
  %end.gt.len77 = icmp sgt i64 %c.end.076, %s.read.len64
  %final.end78 = select i1 %end.gt.len77, i64 %s.read.len64, i64 %c.end.076
  %view.empty79 = icmp sle i64 %final.end78, %final.start72
  %view.len.sub80 = sub i64 %final.end78, %final.start72
  %view.len81 = select i1 %view.empty79, i64 0, i64 %view.len.sub80
  %view.data82 = getelementptr i8, ptr %s.read.data66, i64 %final.start72
  %arena.cur83 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len81, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data82, ptr %str.build.data.gep, align 8
  %call.res84 = call { i64, ptr } @"path::join"(ptr %ret.ub.alloc60, ptr %str.view)
  %arena.cur85 = call ptr @dva_arena_current()
  %ret.ub.alloc86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 16)
  store { i64, ptr } %call.res84, ptr %ret.ub.alloc86, align 8
  %ret.pack87 = load { i64, ptr }, ptr %ret.ub.alloc86, align 8
  ret { i64, ptr } %ret.pack87

choice.exit57:                                    ; preds = %ret.dead88, %and.63.exit
  %var.load89 = load ptr, ptr %var.p, align 8
  %call.res90 = call i1 @"path::is_abs"(ptr %var.load89)
  br i1 %call.res90, label %choice.then91, label %choice.else

ret.dead88:                                       ; No predecessors!
  br label %choice.exit57

choice.then91:                                    ; preds = %choice.exit57
  %var.load93 = load ptr, ptr %var.p, align 8
  br label %choice.exit92

choice.else:                                      ; preds = %choice.exit57
  %call.res94 = call { i64, ptr } @"fs::cwd"()
  %arena.cur95 = call ptr @dva_arena_current()
  %ret.ub.alloc96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 16)
  store { i64, ptr } %call.res94, ptr %ret.ub.alloc96, align 8
  %var.load97 = load ptr, ptr %var.p, align 8
  %call.res98 = call { i64, ptr } @"path::join"(ptr %ret.ub.alloc96, ptr %var.load97)
  %arena.cur99 = call ptr @dva_arena_current()
  %ret.ub.alloc100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 16)
  store { i64, ptr } %call.res98, ptr %ret.ub.alloc100, align 8
  br label %choice.exit92

choice.exit92:                                    ; preds = %choice.else, %choice.then91
  %choice.res = phi ptr [ %var.load93, %choice.then91 ], [ %ret.ub.alloc100, %choice.else ]
  store ptr %choice.res, ptr %var.full, align 8
  %var.load101 = load ptr, ptr %var.full, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load101, i32 0, i32 1
  %arg.str.ptr102 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr103 = getelementptr inbounds { i64, ptr }, ptr %var.load101, i32 0, i32 0
  %arg.str.ptr104 = load i64, ptr %arg.str.ptr103, align 8
  %arg.str.ptr105 = and i64 %arg.str.ptr104, 281474976710655
  %str.tag106 = lshr i64 %arg.str.ptr104, 48
  %tag.immortal108 = icmp eq i64 %str.tag106, 0
  br i1 %tag.immortal108, label %str_ok107, label %tag.gen_check109

str_ok107:                                        ; preds = %abort.dead116, %tag.slow_check110, %tag.gen_check109, %choice.exit92
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr102, i64 %arg.str.ptr105
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr117, label %nulcopy

tag.gen_check109:                                 ; preds = %choice.exit92
  %active.gen112 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok113 = icmp eq i64 %str.tag106, %active.gen112
  br i1 %tag.fast.ok113, label %str_ok107, label %tag.slow_check110

tag.slow_check110:                                ; preds = %tag.gen_check109
  %arena.cur114 = call ptr @dva_arena_current()
  %tag.valid115 = call i1 @dva_arena_validate_tag(ptr %arena.cur114, i64 %str.tag106)
  br i1 %tag.valid115, label %str_ok107, label %tag.stale111

tag.stale111:                                     ; preds = %tag.slow_check110
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead116:                                    ; No predecessors!
  br label %str_ok107

arg.str.ptr117:                                   ; preds = %str_ok107
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok107
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr105, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len118

nulmerge:                                         ; preds = %nulcopy.len118, %arg.str.ptr117
  %arg.str.ptr121 = phi ptr [ %arg.str.ptr102, %arg.str.ptr117 ], [ %nulcopy.buf, %nulcopy.len118 ]
  %var.load122 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int = ptrtoint ptr %var.load122 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res123 = call ptr @realpath(ptr %arg.str.ptr121, ptr %addr.ffi.clean)
  store ptr %call.res123, ptr %var.real, align 8
  %var.load124 = load ptr, ptr %var.real, align 8
  %var.load125 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load124 to i64
  %ptr.int.r = ptrtoint ptr %var.load125 to i64
  %cmptmp126 = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp126, label %choice.then127, label %choice.else128

nulcopy.len118:                                   ; preds = %abort.dead119, %nulcopy
  %arena.cur120 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr102, i64 %arg.str.ptr105, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr105
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %nulcopy.len118

choice.then127:                                   ; preds = %nulmerge
  %var.load130 = load ptr, ptr %var.full, align 8
  br label %choice.exit129

choice.else128:                                   ; preds = %nulmerge
  %var.load131 = load ptr, ptr %var.real, align 8
  %call.res132 = call { i64, ptr } @"sys::c_str"(ptr %var.load131)
  %arena.cur133 = call ptr @dva_arena_current()
  %ret.ub.alloc134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 16)
  store { i64, ptr } %call.res132, ptr %ret.ub.alloc134, align 8
  store ptr %ret.ub.alloc134, ptr %var.s, align 8
  %var.load135 = load ptr, ptr %var.real, align 8
  %addr.ffi.int136 = ptrtoint ptr %var.load135 to i64
  %addr.ffi.masked137 = and i64 %addr.ffi.int136, 281474976710655
  %addr.ffi.clean138 = inttoptr i64 %addr.ffi.masked137 to ptr
  call void @free(ptr %addr.ffi.clean138)
  %var.load139 = load ptr, ptr %var.s, align 8
  br label %choice.exit129

choice.exit129:                                   ; preds = %choice.else128, %choice.then127
  %choice.res140 = phi ptr [ %var.load130, %choice.then127 ], [ %var.load139, %choice.else128 ]
  %ret.pack141 = load { i64, ptr }, ptr %choice.res140, align 8
  ret { i64, ptr } %ret.pack141
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
  %arena.cur = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load10 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load10 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res11 = call i64 @stat(ptr %arg.str.ptr9, ptr %addr.ffi.clean)
  store i64 %call.res11, ptr %var.rc, align 8
  %var.load12 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load12, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load13 = load ptr, ptr %"var.s'", align 8
  %call.res14 = call ptr @"fs::make_metadata"(ptr %var.load13, i1 false)
  ret ptr %call.res14

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load10 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load10 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res11 = call i64 @lstat(ptr %arg.str.ptr9, ptr %addr.ffi.clean)
  store i64 %call.res11, ptr %var.rc, align 8
  %var.load12 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load12, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load13 = load ptr, ptr %"var.s'", align 8
  %call.res14 = call i64 @"fs::stat_mode"(ptr %var.load13)
  store i64 %call.res14, ptr %var.m, align 8
  %var.load15 = load i64, ptr %var.m, align 8
  %coerce.trunc = trunc i64 %var.load15 to i16
  store i16 %coerce.trunc, ptr %var.fm, align 2
  %var.load16 = load i16, ptr %var.fm, align 2
  %bf.load = load i16, ptr %var.fm, align 2
  %bf.shr = lshr i16 %bf.load, 12
  %bf.mask = and i16 %bf.shr, 15
  %coerce.zext = zext i16 %bf.mask to i64
  %cmptmp17 = icmp eq i64 %coerce.zext, 10
  store i1 %cmptmp17, ptr %var.is_link, align 1
  %var.load18 = load ptr, ptr %"var.s'", align 8
  %var.load19 = load i1, ptr %var.is_link, align 1
  %call.res20 = call ptr @"fs::make_metadata"(ptr %var.load18, i1 %var.load19)
  ret ptr %call.res20

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load10 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load10 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res11 = call i64 @stat(ptr %arg.str.ptr9, ptr %addr.ffi.clean)
  %cmptmp = icmp eq i64 %call.res11, 0
  ret i1 %cmptmp

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load10 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load10 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res11 = call i64 @stat(ptr %arg.str.ptr9, ptr %addr.ffi.clean)
  %cmptmp = icmp eq i64 %call.res11, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  %var.load12 = load ptr, ptr %"var.s'", align 8
  %call.res13 = call i64 @"fs::stat_mtime_sec"(ptr %var.load12)
  %multmp = mul i64 %call.res13, 1000000000
  %var.load14 = load ptr, ptr %"var.s'", align 8
  %call.res15 = call i64 @"fs::stat_mtime_nsec"(ptr %var.load14)
  %addtmp = add i64 %multmp, %call.res15
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
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1024, i64 1)
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

str_ok:                                           ; preds = %abort.dead8, %tag.slow_check, %tag.gen_check, %b.buf.len1
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr3, i64 %arg.str.ptr6
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr9, label %nulcopy

tag.gen_check:                                    ; preds = %b.buf.len1
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur7 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur7, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %str_ok

arg.str.ptr9:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr6, i64 1)
  %sum10 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf11 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf11, label %str_overflow_abort13, label %nulcopy.len12

nulmerge:                                         ; preds = %nulcopy.len12, %arg.str.ptr9
  %arg.str.ptr16 = phi ptr [ %arg.str.ptr3, %arg.str.ptr9 ], [ %nulcopy.buf, %nulcopy.len12 ]
  %var.load17 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load17, i32 0, i32 1
  %b.ptr18 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr18 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @readlink(ptr %arg.str.ptr16, ptr %addr.ffi.clean, i64 1024)
  store i64 %call.res, ptr %var.n, align 8
  %var.load19 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load19, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len12:                                    ; preds = %abort.dead14, %nulcopy
  %arena.cur15 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 %sum10)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr3, i64 %arg.str.ptr6, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr6
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort13:                             ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead14:                                     ; No predecessors!
  br label %nulcopy.len12

choice.then:                                      ; preds = %nulmerge
  ret { i64, ptr } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load20 = load i64, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap21 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load20, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.len_big_check:                                  ; preds = %choice.exit
  %b.len.big = icmp sgt i64 %var.load20, %b.cap21
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead22, %b.len_big_check
  %b.len.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load20, ptr %b.len.gep23, align 8
  %var.load24 = load ptr, ptr %var.buf, align 8
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
  %4 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead22:                                     ; No predecessors!
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
  %ret.niche.nn = icmp ne ptr %builder.freeze, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

ret.niche.load:                                   ; preds = %b.freeze.done
  %ret.niche.val = load { i64, ptr }, ptr %builder.freeze, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %b.freeze.done
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %b.freeze.done ]
  ret { i64, ptr } %ret.niche.pack
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

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
  %arena.cur = call ptr @dva_arena_current()
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
  %var._80 = alloca ptr, align 8
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
  %var.load = load ptr, ptr %var.dir_path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr2 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr4 = load i64, ptr %arg.str.ptr3, align 8
  %arg.str.ptr5 = and i64 %arg.str.ptr4, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr2, i64 %arg.str.ptr5
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr7, label %nulcopy

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur6 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur6, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

arg.str.ptr7:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr5, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len8

nulmerge:                                         ; preds = %nulcopy.len8, %arg.str.ptr7
  %arg.str.ptr11 = phi ptr [ %arg.str.ptr2, %arg.str.ptr7 ], [ %nulcopy.buf, %nulcopy.len8 ]
  %call.res = call ptr @opendir(ptr %arg.str.ptr11)
  store ptr %call.res, ptr %var.dp, align 8
  %var.load12 = load ptr, ptr %var.dp, align 8
  %var.load13 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load12 to i64
  %ptr.int.r = ptrtoint ptr %var.load13 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len8:                                     ; preds = %abort.dead9, %nulcopy
  %arena.cur10 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr2, i64 %arg.str.ptr5, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr5
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %nulcopy.len8

choice.then:                                      ; preds = %nulmerge
  %var.load14 = load ptr, ptr %var.res, align 8
  %a.load = load ptr, ptr %var.res, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  store i64 0, ptr %loop.idx.71, align 8
  br label %loop.header.71

a.create:                                         ; preds = %choice.then
  %arena.cur15 = call ptr @dva_arena_current()
  %a.create16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %arena.cur17 = call ptr @dva_arena_current()
  %a.buf18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 128)
  %a.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 0
  store i64 0, ptr %a.len.gep19, align 8
  %a.data.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 1
  store ptr %a.buf18, ptr %a.data.gep20, align 8
  %a.cap.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 2
  store i64 16, ptr %a.cap.gep21, align 8
  store ptr %a.create16, ptr %var.res, align 8
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
  %var.load22 = load ptr, ptr %var.dp, align 8
  %addr.ffi.int = ptrtoint ptr %var.load22 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res23 = call ptr @readdir(ptr %addr.ffi.clean)
  store ptr %call.res23, ptr %var.ent, align 8
  %var.load24 = load ptr, ptr %var.ent, align 8
  %var.load25 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l26 = ptrtoint ptr %var.load24 to i64
  %ptr.int.r27 = ptrtoint ptr %var.load25 to i64
  %cmptmp28 = icmp eq i64 %ptr.int.l26, %ptr.int.r27
  br i1 %cmptmp28, label %choice.then29, label %choice.exit30

loop.exit.nat.71:                                 ; No predecessors!
  br label %loop.exit.71

loop.latch.71:                                    ; preds = %a.store, %choice.then56
  %step.val = load i64, ptr %loop.step.71, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.71, align 8
  br label %loop.header.71

loop.exit.71:                                     ; preds = %choice.then29, %loop.exit.nat.71
  %var.load114 = load ptr, ptr %var.dp, align 8
  %addr.ffi.int115 = ptrtoint ptr %var.load114 to i64
  %addr.ffi.masked116 = and i64 %addr.ffi.int115, 281474976710655
  %addr.ffi.clean117 = inttoptr i64 %addr.ffi.masked116 to ptr
  %call.res118 = call i64 @closedir(ptr %addr.ffi.clean117)
  %var.load119 = load ptr, ptr %var.res, align 8
  %a.load120 = load ptr, ptr %var.res, align 8
  %a.null121 = icmp eq ptr %a.load120, null
  br i1 %a.null121, label %a.create122, label %a.after123

choice.then29:                                    ; preds = %loop.body.71
  br label %loop.exit.71

choice.exit30:                                    ; preds = %loop.body.71
  %var.load31 = load ptr, ptr %var.ent, align 8
  %ptr.int.l32 = ptrtoint ptr %var.load31 to i64
  %addtmp = add i64 %ptr.int.l32, 19
  %ptr.res = inttoptr i64 %addtmp to ptr
  %call.res33 = call { i64, ptr } @"sys::c_str"(ptr %ptr.res)
  %arena.cur34 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  store { i64, ptr } %call.res33, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.name, align 8
  %var.load35 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %eq.lhs.len36 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len37 = and i64 %eq.lhs.len36, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len38 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len37, %eq.rhs.len38
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %choice.exit30
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 1
  %eq.lhs.data39 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data39, ptr %eq.rhs.data, i64 %eq.lhs.len37)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit30
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.72.then, label %or.72.else

or.72.then:                                       ; preds = %str.eq.merge
  br label %or.72.exit

or.72.else:                                       ; preds = %str.eq.merge
  %var.load40 = load ptr, ptr %var.name, align 8
  %eq.lhs.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %eq.lhs.len42 = load i64, ptr %eq.lhs.len41, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %eq.rhs.len44 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len45 = and i64 %eq.rhs.len44, 281474976710655
  %eq.len46 = icmp eq i64 %eq.lhs.len43, %eq.rhs.len45
  br i1 %eq.len46, label %str.eq.then47, label %str.eq.else48

or.72.exit:                                       ; preds = %str.eq.merge49, %or.72.then
  %or.72.phi = phi i1 [ %str.eq.result, %or.72.then ], [ %str.eq.result55, %str.eq.merge49 ]
  br i1 %or.72.phi, label %choice.then56, label %choice.exit57

str.eq.then47:                                    ; preds = %or.72.else
  %eq.lhs.data50 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %eq.lhs.data51 = load ptr, ptr %eq.lhs.data50, align 8
  %eq.rhs.data52 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp53 = call i32 @memcmp(ptr %eq.lhs.data51, ptr %eq.rhs.data52, i64 %eq.lhs.len43)
  %eq.cmp.zero54 = icmp eq i32 %eq.memcmp53, 0
  br label %str.eq.merge49

str.eq.else48:                                    ; preds = %or.72.else
  br label %str.eq.merge49

str.eq.merge49:                                   ; preds = %str.eq.else48, %str.eq.then47
  %str.eq.result55 = phi i1 [ %eq.cmp.zero54, %str.eq.then47 ], [ false, %str.eq.else48 ]
  br label %or.72.exit

choice.then56:                                    ; preds = %or.72.exit
  br label %loop.latch.71

choice.exit57:                                    ; preds = %or.72.exit
  %var.load58 = load ptr, ptr %var.ent, align 8
  store ptr %var.load58, ptr %var.dp_ent, align 8
  %var.load59 = load ptr, ptr %var.dp_ent, align 8
  %fld.gep = getelementptr inbounds <{ i64, i64, i16, i8 }>, ptr %var.load59, i32 0, i32 3
  %fld.load = load i8, ptr %fld.gep, align 1
  %coerce.zext = zext i8 %fld.load to i64
  store i64 %coerce.zext, ptr %var.dt, align 8
  %var.load60 = load i64, ptr %var.dt, align 8
  %cmptmp61 = icmp eq i64 %var.load60, 4
  store i1 %cmptmp61, ptr %var.is_d, align 1
  %var.load62 = load i64, ptr %var.dt, align 8
  %cmptmp63 = icmp eq i64 %var.load62, 8
  store i1 %cmptmp63, ptr %var.is_f, align 1
  %var.load64 = load i64, ptr %var.dt, align 8
  %cmptmp65 = icmp eq i64 %var.load64, 10
  store i1 %cmptmp65, ptr %var.is_l, align 1
  %var.load66 = load i64, ptr %var.dt, align 8
  %cmptmp67 = icmp eq i64 %var.load66, 0
  br i1 %cmptmp67, label %choice.then68, label %choice.exit69

choice.then68:                                    ; preds = %choice.exit57
  %var.load70 = load ptr, ptr %var.dir_path, align 8
  %var.load71 = load ptr, ptr %var.name, align 8
  %call.res72 = call { i64, ptr } @"fs::join"(ptr %var.load70, ptr %var.load71)
  %arena.cur73 = call ptr @dva_arena_current()
  %ret.ub.alloc74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 16)
  store { i64, ptr } %call.res72, ptr %ret.ub.alloc74, align 8
  store ptr %ret.ub.alloc74, ptr %var.sub_p, align 8
  %var.load75 = load ptr, ptr %var.sub_p, align 8
  %call.res76 = call ptr @"fs::lstat_meta"(ptr %var.load75)
  store ptr %call.res76, ptr %var.meta, align 8
  %var.load77 = load ptr, ptr %var.meta, align 8
  %niche.ne.null = icmp ne ptr %var.load77, null
  br i1 %niche.ne.null, label %choice.then78, label %choice.exit79

choice.exit69:                                    ; preds = %choice.exit79, %choice.exit57
  %var.load90 = load ptr, ptr %var.name, align 8
  %var.load91 = load i1, ptr %var.is_d, align 1
  %var.load92 = load i1, ptr %var.is_f, align 1
  %var.load93 = load i1, ptr %var.is_l, align 1
  %arena.cur94 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load90, ptr %rec.fld, align 8
  %rec.fld95 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load91, ptr %rec.fld95, align 1
  %rec.fld96 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load92, ptr %rec.fld96, align 1
  %rec.fld97 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load93, ptr %rec.fld97, align 1
  %a.load98 = load ptr, ptr %var.res, align 8
  %a.null99 = icmp eq ptr %a.load98, null
  br i1 %a.null99, label %a.create100, label %a.after101

choice.then78:                                    ; preds = %choice.then68
  store ptr %var.load77, ptr %var._80, align 8
  store ptr %var.load77, ptr %var.mi, align 8
  %var.load81 = load ptr, ptr %var.mi, align 8
  %fld.gep82 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load81, i32 0, i32 5
  %fld.load83 = load i1, ptr %fld.gep82, align 1
  store i1 %fld.load83, ptr %var.is_d, align 1
  %var.load84 = load ptr, ptr %var.mi, align 8
  %fld.gep85 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load84, i32 0, i32 6
  %fld.load86 = load i1, ptr %fld.gep85, align 1
  store i1 %fld.load86, ptr %var.is_f, align 1
  %var.load87 = load ptr, ptr %var.mi, align 8
  %fld.gep88 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load87, i32 0, i32 7
  %fld.load89 = load i1, ptr %fld.gep88, align 1
  store i1 %fld.load89, ptr %var.is_l, align 1
  br label %choice.exit79

choice.exit79:                                    ; preds = %choice.then78, %choice.then68
  br label %choice.exit69

a.create100:                                      ; preds = %choice.exit69
  %arena.cur102 = call ptr @dva_arena_current()
  %a.create103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 24)
  %arena.cur104 = call ptr @dva_arena_current()
  %a.buf105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 128)
  %a.len.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 0
  store i64 0, ptr %a.len.gep106, align 8
  %a.data.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 1
  store ptr %a.buf105, ptr %a.data.gep107, align 8
  %a.cap.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create103, i32 0, i32 2
  store i64 16, ptr %a.cap.gep108, align 8
  store ptr %a.create103, ptr %var.res, align 8
  br label %a.after101

a.after101:                                       ; preds = %a.create100, %choice.exit69
  %a.load2109 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after101
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 0
  %a.len110 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 2
  %a.cap111 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len110, %a.cap111
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2109)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 1
  %a.cur.data112 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 0
  %a.cur.len113 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data112, i64 %a.cur.len113
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len113, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2109, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.71

a.create122:                                      ; preds = %loop.exit.71
  %arena.cur124 = call ptr @dva_arena_current()
  %a.create125 = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 24)
  %arena.cur126 = call ptr @dva_arena_current()
  %a.buf127 = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 128)
  %a.len.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create125, i32 0, i32 0
  store i64 0, ptr %a.len.gep128, align 8
  %a.data.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create125, i32 0, i32 1
  store ptr %a.buf127, ptr %a.data.gep129, align 8
  %a.cap.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create125, i32 0, i32 2
  store i64 16, ptr %a.cap.gep130, align 8
  store ptr %a.create125, ptr %var.res, align 8
  br label %a.after123

a.after123:                                       ; preds = %a.create122, %loop.exit.71
  %a.load2131 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2131
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

define i64 @"fs::open_wronly_creat_trunc"() #0 {
entry:
  ret i64 577
}

define { i64, ptr } @"fs::read_to_string"(ptr %0) #0 {
entry:
  %var.n89 = alloca i64, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i32 @open(ptr %arg.str.ptr9, i32 0)
  %coerce.sext = sext i32 %call.res to i64
  store i64 %coerce.sext, ptr %var.fd, align 8
  %var.load10 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load10, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret { i64, ptr } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %call.res11 = call ptr @"fs::empty_stat"()
  store ptr %call.res11, ptr %"var.s'", align 8
  %var.load12 = load i64, ptr %var.fd, align 8
  %var.load13 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load13 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load12 to i32
  %call.res14 = call i64 @fstat(i32 %coerce.trunc, ptr %addr.ffi.clean)
  store i64 %call.res14, ptr %var.rc, align 8
  %var.load15 = load i64, ptr %var.rc, align 8
  %cmptmp16 = icmp eq i64 %var.load15, 0
  br i1 %cmptmp16, label %choice.then17, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then17:                                    ; preds = %choice.exit
  %var.load19 = load ptr, ptr %"var.s'", align 8
  %call.res20 = call i64 @"fs::stat_size"(ptr %var.load19)
  %max = call i64 @llvm.smax.i64(i64 %call.res20, i64 0)
  br label %choice.exit18

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else, %choice.then17
  %choice.res = phi i64 [ %max, %choice.then17 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.sz, align 8
  %var.load21 = load i64, ptr %var.sz, align 8
  %cmptmp22 = icmp sgt i64 %var.load21, 0
  br i1 %cmptmp22, label %choice.then23, label %choice.else24

choice.then23:                                    ; preds = %choice.exit18
  %var.load26 = load i64, ptr %var.sz, align 8
  %arena.cur27 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 24)
  %cap.neg = icmp slt i64 %var.load26, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load26
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum28 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf29 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf29, label %str_overflow_abort31, label %b.buf.len30

choice.else24:                                    ; preds = %choice.exit18
  %copy.len = load i64, ptr @str.5.struct, align 8
  %copy.len62 = and i64 %copy.len, 281474976710655
  %copy.len63 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %copy.alen = add i64 %copy.len62, 1
  %arena.cur64 = call ptr @dva_arena_current()
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 %copy.alen)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 %copy.len63, i64 %copy.len62, i1 false)
  %copy.nul = getelementptr i8, ptr %copy.buf, i64 %copy.len62
  store i8 0, ptr %copy.nul, align 1
  %arena.cur65 = call ptr @dva_arena_current()
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  %str.copy.len.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 0
  store i64 %copy.len62, ptr %str.copy.len.gep, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  store ptr %copy.str, ptr %"var.b'", align 8
  %arena.cur66 = call ptr @dva_arena_current()
  %builder.new67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 24)
  %b.data.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new67, i32 0, i32 1
  %b.len.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new67, i32 0, i32 0
  %b.cap.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new67, i32 0, i32 2
  %b.buf.len71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum72 = extractvalue { i64, i1 } %b.buf.len71, 0
  %ovf73 = extractvalue { i64, i1 } %b.buf.len71, 1
  br i1 %ovf73, label %str_overflow_abort75, label %b.buf.len74

choice.exit25:                                    ; preds = %choice.exit177, %choice.exit47
  %choice.res180 = phi ptr [ %choice.res61, %choice.exit47 ], [ %choice.res179, %choice.exit177 ]
  %ret.niche.nn = icmp ne ptr %choice.res180, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

b.buf.len30:                                      ; preds = %abort.dead32, %choice.then23
  %arena.cur33 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %sum28)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load34 = load i64, ptr %var.fd, align 8
  %var.load35 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load35, i32 0, i32 1
  %b.ptr36 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int37 = ptrtoint ptr %b.ptr36 to i64
  %addr.ffi.masked38 = and i64 %addr.ffi.int37, 281474976710655
  %addr.ffi.clean39 = inttoptr i64 %addr.ffi.masked38 to ptr
  %var.load40 = load i64, ptr %var.sz, align 8
  %coerce.trunc41 = trunc i64 %var.load34 to i32
  %call.res42 = call i64 @read(i32 %coerce.trunc41, ptr %addr.ffi.clean39, i64 %var.load40)
  store i64 %call.res42, ptr %var.n, align 8
  %var.load43 = load i64, ptr %var.fd, align 8
  %coerce.trunc44 = trunc i64 %var.load43 to i32
  %call.res45 = call i32 @close(i32 %coerce.trunc44)
  %var.load46 = load i64, ptr %var.n, align 8
  %cmptmp48 = icmp slt i64 %var.load46, 0
  br i1 %cmptmp48, label %choice.case, label %choice.next

str_overflow_abort31:                             ; preds = %choice.then23
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %b.buf.len30

choice.exit47:                                    ; preds = %b.freeze.done, %choice.case49, %choice.case
  %choice.res61 = phi ptr [ null, %choice.case ], [ @str.5.struct, %choice.case49 ], [ %builder.freeze, %b.freeze.done ]
  br label %choice.exit25

choice.case:                                      ; preds = %b.buf.len30
  br label %choice.exit47

choice.next:                                      ; preds = %b.buf.len30
  %val.match = icmp eq i64 %var.load46, 0
  br i1 %val.match, label %choice.case49, label %choice.next50

choice.case49:                                    ; preds = %choice.next
  br label %choice.exit47

choice.next50:                                    ; preds = %choice.next
  %var.load51 = load i64, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap52 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load51, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

b.len_big_check:                                  ; preds = %choice.next50
  %b.len.big = icmp sgt i64 %var.load51, %b.cap52
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead53, %b.len_big_check
  %b.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load51, ptr %b.len.gep54, align 8
  %var.load55 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load55, i32 0, i32 0
  %b.freeze.len56 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load55, i32 0, i32 1
  %b.freeze.data57 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.next50
  %4 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead53:                                     ; No predecessors!
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data57, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data57, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data57, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len56, 1
  %arena.cur58 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data57, i64 %b.freeze.len56, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len56
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data59 = phi ptr [ %b.freeze.data57, %b.len_ok ], [ %b.freeze.data57, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur60 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len56, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data59, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load55, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load55, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load55, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit47

b.buf.len74:                                      ; preds = %abort.dead76, %choice.else24
  %arena.cur77 = call ptr @dva_arena_current()
  %b.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum72)
  %b.nul079 = getelementptr i8, ptr %b.buf78, i64 0
  store i8 0, ptr %b.nul079, align 1
  store i64 0, ptr %b.len.gep69, align 8
  store ptr %b.buf78, ptr %b.data.gep68, align 8
  store i64 4096, ptr %b.cap.gep70, align 8
  store ptr %builder.new67, ptr %var.chunk, align 8
  store i1 false, ptr %"var.read_err'", align 1
  store i64 0, ptr %loop.idx.73, align 8
  br label %loop.header.73

str_overflow_abort75:                             ; preds = %choice.else24
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead76:                                     ; No predecessors!
  br label %b.buf.len74

loop.header.73:                                   ; preds = %loop.latch.73, %b.buf.len74
  %counter.load = load i64, ptr %loop.idx.73, align 8
  br label %loop.body.73

loop.body.73:                                     ; preds = %loop.header.73
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.73, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load80 = load i64, ptr %var.fd, align 8
  %var.load81 = load ptr, ptr %var.chunk, align 8
  %b.ptr82 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load81, i32 0, i32 1
  %b.ptr83 = load ptr, ptr %b.ptr82, align 8
  %addr.ffi.int84 = ptrtoint ptr %b.ptr83 to i64
  %addr.ffi.masked85 = and i64 %addr.ffi.int84, 281474976710655
  %addr.ffi.clean86 = inttoptr i64 %addr.ffi.masked85 to ptr
  %coerce.trunc87 = trunc i64 %var.load80 to i32
  %call.res88 = call i64 @read(i32 %coerce.trunc87, ptr %addr.ffi.clean86, i64 4096)
  store i64 %call.res88, ptr %var.n89, align 8
  %var.load90 = load i64, ptr %var.n89, align 8
  %cmptmp91 = icmp slt i64 %var.load90, 0
  br i1 %cmptmp91, label %choice.then92, label %choice.exit93

loop.exit.nat.73:                                 ; No predecessors!
  br label %loop.exit.73

loop.latch.73:                                    ; preds = %concat.tot.len164
  %step.val = load i64, ptr %loop.step.73, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.73, align 8
  br label %loop.header.73

loop.exit.73:                                     ; preds = %choice.then96, %choice.then92, %loop.exit.nat.73
  %var.load171 = load i64, ptr %var.fd, align 8
  %coerce.trunc172 = trunc i64 %var.load171 to i32
  %call.res173 = call i32 @close(i32 %coerce.trunc172)
  %var.load174 = load i1, ptr %"var.read_err'", align 1
  br i1 %var.load174, label %choice.then175, label %choice.else176

choice.then92:                                    ; preds = %loop.body.73
  store i1 true, ptr %"var.read_err'", align 1
  br label %loop.exit.73

choice.exit93:                                    ; preds = %loop.body.73
  %var.load94 = load i64, ptr %var.n89, align 8
  %cmptmp95 = icmp eq i64 %var.load94, 0
  br i1 %cmptmp95, label %choice.then96, label %choice.exit97

choice.then96:                                    ; preds = %choice.exit93
  br label %loop.exit.73

choice.exit97:                                    ; preds = %choice.exit93
  %var.load98 = load i64, ptr %var.n89, align 8
  %b.load99 = load ptr, ptr %var.chunk, align 8
  %b.cap100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  %b.cap101 = load i64, ptr %b.cap100, align 8
  %b.len.neg102 = icmp slt i64 %var.load98, 0
  br i1 %b.len.neg102, label %b.len_oob105, label %b.len_big_check103

b.len_big_check103:                               ; preds = %choice.exit97
  %b.len.big106 = icmp sgt i64 %var.load98, %b.cap101
  br i1 %b.len.big106, label %b.len_oob105, label %b.len_ok104

b.len_ok104:                                      ; preds = %abort.dead107, %b.len_big_check103
  %b.len.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  store i64 %var.load98, ptr %b.len.gep108, align 8
  %var.load109 = load ptr, ptr %"var.b'", align 8
  %var.load110 = load ptr, ptr %var.chunk, align 8
  %b.freeze.len111 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load110, i32 0, i32 0
  %b.freeze.len112 = load i64, ptr %b.freeze.len111, align 8
  %b.freeze.data113 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load110, i32 0, i32 1
  %b.freeze.data114 = load ptr, ptr %b.freeze.data113, align 8
  %b.freeze.arena115 = call ptr @dva_arena_current()
  %b.freeze.nc.gep116 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena115, i32 0, i32 1
  %b.freeze.nc117 = load i64, ptr %b.freeze.nc.gep116, align 8
  %b.freeze.has.chunk118 = icmp sgt i64 %b.freeze.nc117, 0
  br i1 %b.freeze.has.chunk118, label %b.freeze.check119, label %b.freeze.done121

b.len_oob105:                                     ; preds = %b.len_big_check103, %choice.exit97
  %6 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead107:                                    ; No predecessors!
  br label %b.len_ok104

b.freeze.check119:                                ; preds = %b.len_ok104
  %b.freeze.last.idx122 = sub i64 %b.freeze.nc117, 1
  %b.freeze.chunks.gep123 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena115, i32 0, i32 3
  %b.freeze.chunk.slot124 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep123, i64 0, i64 %b.freeze.last.idx122
  %b.freeze.last.chunk125 = load ptr, ptr %b.freeze.chunk.slot124, align 8
  %b.freeze.off.gep126 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena115, i32 0, i32 2
  %b.freeze.off127 = load i64, ptr %b.freeze.off.gep126, align 8
  %b.freeze.bump128 = getelementptr i8, ptr %b.freeze.last.chunk125, i64 %b.freeze.off127
  %b.freeze.cap.gep129 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena115, i32 0, i32 0
  %b.freeze.cap130 = load i64, ptr %b.freeze.cap.gep129, align 8
  %b.freeze.chunk.end131 = getelementptr i8, ptr %b.freeze.last.chunk125, i64 %b.freeze.cap130
  %b.freeze.ge.chunk132 = icmp uge ptr %b.freeze.data114, %b.freeze.last.chunk125
  %b.freeze.lt.end133 = icmp ult ptr %b.freeze.data114, %b.freeze.chunk.end131
  %b.freeze.in.chunk134 = and i1 %b.freeze.ge.chunk132, %b.freeze.lt.end133
  %b.freeze.ge.bump135 = icmp uge ptr %b.freeze.data114, %b.freeze.bump128
  %b.freeze.reaped136 = and i1 %b.freeze.in.chunk134, %b.freeze.ge.bump135
  br i1 %b.freeze.reaped136, label %b.freeze.copy120, label %b.freeze.done121

b.freeze.copy120:                                 ; preds = %b.freeze.check119
  %b.freeze.alen137 = add i64 %b.freeze.len112, 1
  %arena.cur138 = call ptr @dva_arena_current()
  %b.freeze.fresh139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 %b.freeze.alen137)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh139, ptr align 1 %b.freeze.data114, i64 %b.freeze.len112, i1 false)
  %b.freeze.nul140 = getelementptr i8, ptr %b.freeze.fresh139, i64 %b.freeze.len112
  store i8 0, ptr %b.freeze.nul140, align 1
  br label %b.freeze.done121

b.freeze.done121:                                 ; preds = %b.freeze.copy120, %b.freeze.check119, %b.len_ok104
  %b.freeze.data141 = phi ptr [ %b.freeze.data114, %b.len_ok104 ], [ %b.freeze.data114, %b.freeze.check119 ], [ %b.freeze.fresh139, %b.freeze.copy120 ]
  %arena.cur142 = call ptr @dva_arena_current()
  %builder.freeze143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 16)
  %str.build.len.gep144 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze143, i32 0, i32 0
  store i64 %b.freeze.len112, ptr %str.build.len.gep144, align 8
  %str.build.data.gep145 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze143, i32 0, i32 1
  store ptr %b.freeze.data141, ptr %str.build.data.gep145, align 8
  %b.freeze.rst.len146 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load110, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len146, align 8
  %b.freeze.rst.data147 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load110, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data147, align 8
  %b.freeze.rst.cap148 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load110, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap148, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 0
  %concat.lhs149 = load i64, ptr %concat.lhs, align 8
  %concat.lhs150 = and i64 %concat.lhs149, 281474976710655
  %concat.lhs151 = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 1
  %concat.lhs152 = load ptr, ptr %concat.lhs151, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze143, i32 0, i32 0
  %concat.rhs153 = load i64, ptr %concat.rhs, align 8
  %concat.rhs154 = and i64 %concat.rhs153, 281474976710655
  %concat.rhs155 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze143, i32 0, i32 1
  %concat.rhs156 = load ptr, ptr %concat.rhs155, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs150, i64 %concat.rhs154)
  %sum157 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf158 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf158, label %str_overflow_abort160, label %concat.sum.len159

concat.sum.len159:                                ; preds = %abort.dead161, %b.freeze.done121
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum157, i64 1)
  %sum162 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf163 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf163, label %str_overflow_abort165, label %concat.tot.len164

str_overflow_abort160:                            ; preds = %b.freeze.done121
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead161:                                    ; No predecessors!
  br label %concat.sum.len159

concat.tot.len164:                                ; preds = %abort.dead166, %concat.sum.len159
  %arena.cur167 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 %sum162)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs152, i64 %concat.lhs150, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs156, i64 %concat.rhs154, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum157
  store i8 0, ptr %concat.nul, align 1
  %arena.cur168 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 16)
  %str.build.len.gep169 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum157, ptr %str.build.len.gep169, align 8
  %str.build.data.gep170 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep170, align 8
  store ptr %concat.str, ptr %"var.b'", align 8
  br label %loop.latch.73

str_overflow_abort165:                            ; preds = %concat.sum.len159
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead166:                                    ; No predecessors!
  br label %concat.tot.len164

choice.then175:                                   ; preds = %loop.exit.73
  br label %choice.exit177

choice.else176:                                   ; preds = %loop.exit.73
  %var.load178 = load ptr, ptr %"var.b'", align 8
  br label %choice.exit177

choice.exit177:                                   ; preds = %choice.else176, %choice.then175
  %choice.res179 = phi ptr [ null, %choice.then175 ], [ %var.load178, %choice.else176 ]
  br label %choice.exit25

ret.niche.load:                                   ; preds = %choice.exit25
  %ret.niche.val = load { i64, ptr }, ptr %choice.res180, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit25
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit25 ]
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i64 @"fs::open_wronly_creat_trunc"()
  %coerce.trunc = trunc i64 %call.res to i32
  %call.res10 = call i32 @open(ptr %arg.str.ptr9, i32 %coerce.trunc, i64 420)
  %coerce.sext = sext i32 %call.res10 to i64
  store i64 %coerce.sext, ptr %var.fd, align 8
  %var.load11 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load11, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load12 = load ptr, ptr %var.content, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %str.len.query13 = load i64, ptr %str.len.query, align 8
  %str.len.query14 = and i64 %str.len.query13, 281474976710655
  %str.tag15 = lshr i64 %str.len.query13, 48
  %tag.immortal17 = icmp eq i64 %str.tag15, 0
  br i1 %tag.immortal17, label %str_ok16, label %tag.gen_check18

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok16:                                         ; preds = %abort.dead25, %tag.slow_check19, %tag.gen_check18, %choice.exit
  store i64 %str.len.query14, ptr %var.len, align 8
  store i64 0, ptr %"var.off'", align 8
  store i1 true, ptr %"var.ok'", align 1
  store i64 0, ptr %loop.idx.74, align 8
  br label %loop.header.74

tag.gen_check18:                                  ; preds = %choice.exit
  %active.gen21 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok22 = icmp eq i64 %str.tag15, %active.gen21
  br i1 %tag.fast.ok22, label %str_ok16, label %tag.slow_check19

tag.slow_check19:                                 ; preds = %tag.gen_check18
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag15)
  br i1 %tag.valid24, label %str_ok16, label %tag.stale20

tag.stale20:                                      ; preds = %tag.slow_check19
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %str_ok16

loop.header.74:                                   ; preds = %loop.latch.74, %str_ok16
  %counter.load = load i64, ptr %loop.idx.74, align 8
  br label %loop.body.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.74, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load26 = load i64, ptr %"var.off'", align 8
  %var.load27 = load i64, ptr %var.len, align 8
  %cmptmp28 = icmp sge i64 %var.load26, %var.load27
  br i1 %cmptmp28, label %choice.then29, label %choice.exit30

loop.exit.nat.74:                                 ; No predecessors!
  br label %loop.exit.74

loop.latch.74:                                    ; preds = %choice.exit70
  %step.val = load i64, ptr %loop.step.74, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.74, align 8
  br label %loop.header.74

loop.exit.74:                                     ; preds = %choice.then69, %choice.then29, %loop.exit.nat.74
  %var.load73 = load i64, ptr %var.fd, align 8
  %coerce.trunc74 = trunc i64 %var.load73 to i32
  %call.res75 = call i32 @close(i32 %coerce.trunc74)
  %coerce.sext76 = sext i32 %call.res75 to i64
  store i64 %coerce.sext76, ptr %var.rc, align 8
  %var.load77 = load i1, ptr %"var.ok'", align 1
  br i1 %var.load77, label %and.75.then, label %and.75.else

choice.then29:                                    ; preds = %loop.body.74
  br label %loop.exit.74

choice.exit30:                                    ; preds = %loop.body.74
  %var.load31 = load ptr, ptr %var.content, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data, align 8
  %var.load35 = load i64, ptr %"var.off'", align 8
  %var.load36 = load i64, ptr %var.len, align 8
  %start.is_neg = icmp slt i64 %var.load35, 0
  %rel.start = add i64 %s.read.len33, %var.load35
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load35
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len33
  %final.start = select i1 %start.gt.len, i64 %s.read.len33, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load36, 0
  %rel.end = add i64 %s.read.len33, %var.load36
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load36
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len33
  %final.end = select i1 %end.gt.len, i64 %s.read.len33, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data34, i64 %final.start
  %arena.cur37 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.v, align 8
  %var.load38 = load i64, ptr %var.fd, align 8
  %var.load39 = load ptr, ptr %var.v, align 8
  %arg.str.ptr40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %arg.str.ptr41 = load ptr, ptr %arg.str.ptr40, align 8
  %arg.str.ptr42 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %arg.str.ptr43 = load i64, ptr %arg.str.ptr42, align 8
  %arg.str.ptr44 = and i64 %arg.str.ptr43, 281474976710655
  %nulcheck.gep45 = getelementptr i8, ptr %arg.str.ptr41, i64 %arg.str.ptr44
  %nulcheck.byte46 = load i8, ptr %nulcheck.gep45, align 1
  %nulcheck47 = icmp eq i8 %nulcheck.byte46, 0
  br i1 %nulcheck47, label %arg.str.ptr48, label %nulcopy49

arg.str.ptr48:                                    ; preds = %choice.exit30
  br label %nulmerge50

nulcopy49:                                        ; preds = %choice.exit30
  %nulcopy.len51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr44, i64 1)
  %sum52 = extractvalue { i64, i1 } %nulcopy.len51, 0
  %ovf53 = extractvalue { i64, i1 } %nulcopy.len51, 1
  br i1 %ovf53, label %str_overflow_abort55, label %nulcopy.len54

nulmerge50:                                       ; preds = %nulcopy.len54, %arg.str.ptr48
  %arg.str.ptr60 = phi ptr [ %arg.str.ptr41, %arg.str.ptr48 ], [ %nulcopy.buf58, %nulcopy.len54 ]
  %var.load61 = load ptr, ptr %var.v, align 8
  %str.len.query62 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %str.len.query63 = load i64, ptr %str.len.query62, align 8
  %str.len.query64 = and i64 %str.len.query63, 281474976710655
  %coerce.trunc65 = trunc i64 %var.load38 to i32
  %call.res66 = call i64 @write(i32 %coerce.trunc65, ptr %arg.str.ptr60, i64 %str.len.query64)
  store i64 %call.res66, ptr %var.w, align 8
  %var.load67 = load i64, ptr %var.w, align 8
  %cmptmp68 = icmp sle i64 %var.load67, 0
  br i1 %cmptmp68, label %choice.then69, label %choice.else

nulcopy.len54:                                    ; preds = %abort.dead56, %nulcopy49
  %arena.cur57 = call ptr @dva_arena_current()
  %nulcopy.buf58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 %sum52)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf58, ptr align 1 %arg.str.ptr41, i64 %arg.str.ptr44, i1 false)
  %nulcopy.nul59 = getelementptr i8, ptr %nulcopy.buf58, i64 %arg.str.ptr44
  store i8 0, ptr %nulcopy.nul59, align 1
  br label %nulmerge50

str_overflow_abort55:                             ; preds = %nulcopy49
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %nulcopy.len54

choice.then69:                                    ; preds = %nulmerge50
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.74

choice.else:                                      ; preds = %nulmerge50
  %var.load71 = load i64, ptr %"var.off'", align 8
  %var.load72 = load i64, ptr %var.w, align 8
  %addtmp = add i64 %var.load71, %var.load72
  store i64 %addtmp, ptr %"var.off'", align 8
  br label %choice.exit70

choice.exit70:                                    ; preds = %choice.else
  br label %loop.latch.74

and.75.then:                                      ; preds = %loop.exit.74
  %var.load78 = load i64, ptr %var.rc, align 8
  %cmptmp79 = icmp eq i64 %var.load78, 0
  br label %and.75.exit

and.75.else:                                      ; preds = %loop.exit.74
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %and.75.then
  %and.75.phi = phi i1 [ %cmptmp79, %and.75.then ], [ %var.load77, %and.75.else ]
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i32 @open(ptr %arg.str.ptr9, i32 0)
  %coerce.sext = sext i32 %call.res to i64
  store i64 %coerce.sext, ptr %var.s_fd, align 8
  %var.load10 = load i64, ptr %var.s_fd, align 8
  %cmptmp = icmp slt i64 %var.load10, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load11 = load ptr, ptr %var.dst_path, align 8
  %arg.str.ptr12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %arg.str.ptr13 = load ptr, ptr %arg.str.ptr12, align 8
  %arg.str.ptr14 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %arg.str.ptr15 = load i64, ptr %arg.str.ptr14, align 8
  %arg.str.ptr16 = and i64 %arg.str.ptr15, 281474976710655
  %str.tag17 = lshr i64 %arg.str.ptr15, 48
  %tag.immortal19 = icmp eq i64 %str.tag17, 0
  br i1 %tag.immortal19, label %str_ok18, label %tag.gen_check20

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok18:                                         ; preds = %abort.dead27, %tag.slow_check21, %tag.gen_check20, %choice.exit
  %nulcheck.gep28 = getelementptr i8, ptr %arg.str.ptr13, i64 %arg.str.ptr16
  %nulcheck.byte29 = load i8, ptr %nulcheck.gep28, align 1
  %nulcheck30 = icmp eq i8 %nulcheck.byte29, 0
  br i1 %nulcheck30, label %arg.str.ptr31, label %nulcopy32

tag.gen_check20:                                  ; preds = %choice.exit
  %active.gen23 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok24 = icmp eq i64 %str.tag17, %active.gen23
  br i1 %tag.fast.ok24, label %str_ok18, label %tag.slow_check21

tag.slow_check21:                                 ; preds = %tag.gen_check20
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag17)
  br i1 %tag.valid26, label %str_ok18, label %tag.stale22

tag.stale22:                                      ; preds = %tag.slow_check21
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %str_ok18

arg.str.ptr31:                                    ; preds = %str_ok18
  br label %nulmerge33

nulcopy32:                                        ; preds = %str_ok18
  %nulcopy.len34 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr16, i64 1)
  %sum35 = extractvalue { i64, i1 } %nulcopy.len34, 0
  %ovf36 = extractvalue { i64, i1 } %nulcopy.len34, 1
  br i1 %ovf36, label %str_overflow_abort38, label %nulcopy.len37

nulmerge33:                                       ; preds = %nulcopy.len37, %arg.str.ptr31
  %arg.str.ptr43 = phi ptr [ %arg.str.ptr13, %arg.str.ptr31 ], [ %nulcopy.buf41, %nulcopy.len37 ]
  %call.res44 = call i64 @"fs::open_wronly_creat_trunc"()
  %coerce.trunc = trunc i64 %call.res44 to i32
  %call.res45 = call i32 @open(ptr %arg.str.ptr43, i32 %coerce.trunc, i64 420)
  %coerce.sext46 = sext i32 %call.res45 to i64
  store i64 %coerce.sext46, ptr %var.d_fd, align 8
  %var.load47 = load i64, ptr %var.d_fd, align 8
  %cmptmp48 = icmp slt i64 %var.load47, 0
  br i1 %cmptmp48, label %choice.then49, label %choice.exit50

nulcopy.len37:                                    ; preds = %abort.dead39, %nulcopy32
  %arena.cur40 = call ptr @dva_arena_current()
  %nulcopy.buf41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum35)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf41, ptr align 1 %arg.str.ptr13, i64 %arg.str.ptr16, i1 false)
  %nulcopy.nul42 = getelementptr i8, ptr %nulcopy.buf41, i64 %arg.str.ptr16
  store i8 0, ptr %nulcopy.nul42, align 1
  br label %nulmerge33

str_overflow_abort38:                             ; preds = %nulcopy32
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %nulcopy.len37

choice.then49:                                    ; preds = %nulmerge33
  %var.load51 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc52 = trunc i64 %var.load51 to i32
  %call.res53 = call i32 @close(i32 %coerce.trunc52)
  ret i1 false

choice.exit50:                                    ; preds = %ret.dead54, %nulmerge33
  %arena.cur55 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16384, i64 1)
  %sum56 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf57 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf57, label %str_overflow_abort59, label %b.buf.len58

ret.dead54:                                       ; No predecessors!
  br label %choice.exit50

b.buf.len58:                                      ; preds = %abort.dead60, %choice.exit50
  %arena.cur61 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum56)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16384, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  store i1 true, ptr %"var.ok'", align 1
  store i64 0, ptr %loop.idx.76, align 8
  br label %loop.header.76

str_overflow_abort59:                             ; preds = %choice.exit50
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %b.buf.len58

loop.header.76:                                   ; preds = %loop.latch.76, %b.buf.len58
  %counter.load = load i64, ptr %loop.idx.76, align 8
  br label %loop.body.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load62 = load i64, ptr %var.s_fd, align 8
  %var.load63 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 1
  %b.ptr64 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr64 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc65 = trunc i64 %var.load62 to i32
  %call.res66 = call i64 @read(i32 %coerce.trunc65, ptr %addr.ffi.clean, i64 16384)
  store i64 %call.res66, ptr %var.n, align 8
  %var.load67 = load i64, ptr %var.n, align 8
  %cmptmp68 = icmp sle i64 %var.load67, 0
  br i1 %cmptmp68, label %choice.then69, label %choice.exit70

loop.exit.nat.76:                                 ; No predecessors!
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit85
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %choice.then84, %choice.then69, %loop.exit.nat.76
  %var.load86 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc87 = trunc i64 %var.load86 to i32
  %call.res88 = call i32 @close(i32 %coerce.trunc87)
  %var.load89 = load i64, ptr %var.d_fd, align 8
  %coerce.trunc90 = trunc i64 %var.load89 to i32
  %call.res91 = call i32 @close(i32 %coerce.trunc90)
  %var.load92 = load i1, ptr %"var.ok'", align 1
  ret i1 %var.load92

choice.then69:                                    ; preds = %loop.body.76
  br label %loop.exit.76

choice.exit70:                                    ; preds = %loop.body.76
  %var.load71 = load i64, ptr %var.d_fd, align 8
  %var.load72 = load ptr, ptr %var.buf, align 8
  %b.ptr73 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load72, i32 0, i32 1
  %b.ptr74 = load ptr, ptr %b.ptr73, align 8
  %addr.ffi.int75 = ptrtoint ptr %b.ptr74 to i64
  %addr.ffi.masked76 = and i64 %addr.ffi.int75, 281474976710655
  %addr.ffi.clean77 = inttoptr i64 %addr.ffi.masked76 to ptr
  %var.load78 = load i64, ptr %var.n, align 8
  %coerce.trunc79 = trunc i64 %var.load71 to i32
  %call.res80 = call i64 @write(i32 %coerce.trunc79, ptr %addr.ffi.clean77, i64 %var.load78)
  store i64 %call.res80, ptr %var.w, align 8
  %var.load81 = load i64, ptr %var.w, align 8
  %var.load82 = load i64, ptr %var.n, align 8
  %cmptmp83 = icmp ne i64 %var.load81, %var.load82
  br i1 %cmptmp83, label %choice.then84, label %choice.exit85

choice.then84:                                    ; preds = %choice.exit70
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.76

choice.exit85:                                    ; preds = %choice.exit70
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load10 = load ptr, ptr %var.new_p, align 8
  %arg.str.ptr11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %arg.str.ptr12 = load ptr, ptr %arg.str.ptr11, align 8
  %arg.str.ptr13 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %arg.str.ptr14 = load i64, ptr %arg.str.ptr13, align 8
  %arg.str.ptr15 = and i64 %arg.str.ptr14, 281474976710655
  %str.tag16 = lshr i64 %arg.str.ptr14, 48
  %tag.immortal18 = icmp eq i64 %str.tag16, 0
  br i1 %tag.immortal18, label %str_ok17, label %tag.gen_check19

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %nulcopy.len6

str_ok17:                                         ; preds = %abort.dead26, %tag.slow_check20, %tag.gen_check19, %nulmerge
  %nulcheck.gep27 = getelementptr i8, ptr %arg.str.ptr12, i64 %arg.str.ptr15
  %nulcheck.byte28 = load i8, ptr %nulcheck.gep27, align 1
  %nulcheck29 = icmp eq i8 %nulcheck.byte28, 0
  br i1 %nulcheck29, label %arg.str.ptr30, label %nulcopy31

tag.gen_check19:                                  ; preds = %nulmerge
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok23 = icmp eq i64 %str.tag16, %active.gen22
  br i1 %tag.fast.ok23, label %str_ok17, label %tag.slow_check20

tag.slow_check20:                                 ; preds = %tag.gen_check19
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag16)
  br i1 %tag.valid25, label %str_ok17, label %tag.stale21

tag.stale21:                                      ; preds = %tag.slow_check20
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %str_ok17

arg.str.ptr30:                                    ; preds = %str_ok17
  br label %nulmerge32

nulcopy31:                                        ; preds = %str_ok17
  %nulcopy.len33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr15, i64 1)
  %sum34 = extractvalue { i64, i1 } %nulcopy.len33, 0
  %ovf35 = extractvalue { i64, i1 } %nulcopy.len33, 1
  br i1 %ovf35, label %str_overflow_abort37, label %nulcopy.len36

nulmerge32:                                       ; preds = %nulcopy.len36, %arg.str.ptr30
  %arg.str.ptr42 = phi ptr [ %arg.str.ptr12, %arg.str.ptr30 ], [ %nulcopy.buf40, %nulcopy.len36 ]
  %call.res = call i64 @rename(ptr %arg.str.ptr9, ptr %arg.str.ptr42)
  %cmptmp = icmp eq i64 %call.res, 0
  ret i1 %cmptmp

nulcopy.len36:                                    ; preds = %abort.dead38, %nulcopy31
  %arena.cur39 = call ptr @dva_arena_current()
  %nulcopy.buf40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %sum34)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf40, ptr align 1 %arg.str.ptr12, i64 %arg.str.ptr15, i1 false)
  %nulcopy.nul41 = getelementptr i8, ptr %nulcopy.buf40, i64 %arg.str.ptr15
  store i8 0, ptr %nulcopy.nul41, align 1
  br label %nulmerge32

str_overflow_abort37:                             ; preds = %nulcopy31
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %nulcopy.len36
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i64 @mkdir(ptr %arg.str.ptr9, i64 493)
  %cmptmp = icmp eq i64 %call.res, 0
  ret i1 %cmptmp

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
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
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res2, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len4 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.exit54, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %call.res62, %choice.exit54 ]
  ret i1 %choice.res

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %choice.else
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur6 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur6, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data8 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data8, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.77.then, label %and.77.else

and.77.then:                                      ; preds = %str.eq.merge
  %var.load9 = load ptr, ptr %var.p, align 8
  %var.load10 = load ptr, ptr %var.path, align 8
  %eq.lhs.len11 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %eq.lhs.len12 = load i64, ptr %eq.lhs.len11, align 8
  %eq.lhs.len13 = and i64 %eq.lhs.len12, 281474976710655
  %str.tag14 = lshr i64 %eq.lhs.len12, 48
  %tag.immortal16 = icmp eq i64 %str.tag14, 0
  br i1 %tag.immortal16, label %str_ok15, label %tag.gen_check17

and.77.else:                                      ; preds = %str.eq.merge
  br label %and.77.exit

and.77.exit:                                      ; preds = %and.77.else, %str.eq.merge42
  %and.77.phi = phi i1 [ %str.neq50, %str.eq.merge42 ], [ %str.neq, %and.77.else ]
  br i1 %and.77.phi, label %and.78.then, label %and.78.else

str_ok15:                                         ; preds = %abort.dead24, %tag.slow_check18, %tag.gen_check17, %and.77.then
  %eq.rhs.len25 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %eq.rhs.len26 = load i64, ptr %eq.rhs.len25, align 8
  %eq.rhs.len27 = and i64 %eq.rhs.len26, 281474976710655
  %str.tag28 = lshr i64 %eq.rhs.len26, 48
  %tag.immortal30 = icmp eq i64 %str.tag28, 0
  br i1 %tag.immortal30, label %str_ok29, label %tag.gen_check31

tag.gen_check17:                                  ; preds = %and.77.then
  %active.gen20 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok21 = icmp eq i64 %str.tag14, %active.gen20
  br i1 %tag.fast.ok21, label %str_ok15, label %tag.slow_check18

tag.slow_check18:                                 ; preds = %tag.gen_check17
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag14)
  br i1 %tag.valid23, label %str_ok15, label %tag.stale19

tag.stale19:                                      ; preds = %tag.slow_check18
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %str_ok15

str_ok29:                                         ; preds = %abort.dead38, %tag.slow_check32, %tag.gen_check31, %str_ok15
  %eq.len39 = icmp eq i64 %eq.lhs.len13, %eq.rhs.len27
  br i1 %eq.len39, label %str.eq.then40, label %str.eq.else41

tag.gen_check31:                                  ; preds = %str_ok15
  %active.gen34 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok35 = icmp eq i64 %str.tag28, %active.gen34
  br i1 %tag.fast.ok35, label %str_ok29, label %tag.slow_check32

tag.slow_check32:                                 ; preds = %tag.gen_check31
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag28)
  br i1 %tag.valid37, label %str_ok29, label %tag.stale33

tag.stale33:                                      ; preds = %tag.slow_check32
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %str_ok29

str.eq.then40:                                    ; preds = %str_ok29
  %eq.lhs.data43 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %eq.lhs.data44 = load ptr, ptr %eq.lhs.data43, align 8
  %eq.rhs.data45 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %eq.rhs.data46 = load ptr, ptr %eq.rhs.data45, align 8
  %eq.memcmp47 = call i32 @memcmp(ptr %eq.lhs.data44, ptr %eq.rhs.data46, i64 %eq.lhs.len13)
  %eq.cmp.zero48 = icmp eq i32 %eq.memcmp47, 0
  br label %str.eq.merge42

str.eq.else41:                                    ; preds = %str_ok29
  br label %str.eq.merge42

str.eq.merge42:                                   ; preds = %str.eq.else41, %str.eq.then40
  %str.eq.result49 = phi i1 [ %eq.cmp.zero48, %str.eq.then40 ], [ false, %str.eq.else41 ]
  %str.neq50 = xor i1 %str.eq.result49, true
  br label %and.77.exit

and.78.then:                                      ; preds = %and.77.exit
  %var.load51 = load ptr, ptr %var.p, align 8
  %call.res52 = call i1 @"fs::is_dir"(ptr %var.load51)
  %nottmp = xor i1 %call.res52, true
  br label %and.78.exit

and.78.else:                                      ; preds = %and.77.exit
  br label %and.78.exit

and.78.exit:                                      ; preds = %and.78.else, %and.78.then
  %and.78.phi = phi i1 [ %nottmp, %and.78.then ], [ %and.77.phi, %and.78.else ]
  br i1 %and.78.phi, label %choice.then53, label %choice.exit54

choice.then53:                                    ; preds = %and.78.exit
  %var.load55 = load ptr, ptr %var.p, align 8
  %call.res56 = call i1 @"fs::create_dir_all"(ptr %var.load55)
  store i1 %call.res56, ptr %var.ok, align 1
  %var.load57 = load i1, ptr %var.ok, align 1
  %nottmp58 = xor i1 %var.load57, true
  br i1 %nottmp58, label %choice.then59, label %choice.exit60

choice.exit54:                                    ; preds = %choice.exit60, %and.78.exit
  %var.load61 = load ptr, ptr %var.path, align 8
  %call.res62 = call i1 @"fs::create_dir"(ptr %var.load61)
  br label %choice.exit

choice.then59:                                    ; preds = %choice.then53
  ret i1 false

choice.exit60:                                    ; preds = %ret.dead, %choice.then53
  br label %choice.exit54

ret.dead:                                         ; No predecessors!
  br label %choice.exit60
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.else:                                      ; preds = %and.79.exit
  %var.load14 = load ptr, ptr %var.path, align 8
  %arg.str.ptr15 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %arg.str.ptr16 = load ptr, ptr %arg.str.ptr15, align 8
  %arg.str.ptr17 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %arg.str.ptr18 = load i64, ptr %arg.str.ptr17, align 8
  %arg.str.ptr19 = and i64 %arg.str.ptr18, 281474976710655
  %str.tag20 = lshr i64 %arg.str.ptr18, 48
  %tag.immortal22 = icmp eq i64 %str.tag20, 0
  br i1 %tag.immortal22, label %str_ok21, label %tag.gen_check23

choice.exit:                                      ; preds = %nulmerge36, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ %cmptmp48, %nulmerge36 ]
  ret i1 %choice.res

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr4, i64 %arg.str.ptr7
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr8, label %nulcopy

tag.gen_check:                                    ; preds = %choice.then
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

arg.str.ptr8:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr7, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len9

nulmerge:                                         ; preds = %nulcopy.len9, %arg.str.ptr8
  %arg.str.ptr12 = phi ptr [ %arg.str.ptr4, %arg.str.ptr8 ], [ %nulcopy.buf, %nulcopy.len9 ]
  %call.res13 = call i64 @rmdir(ptr %arg.str.ptr12)
  %cmptmp = icmp eq i64 %call.res13, 0
  br label %choice.exit

nulcopy.len9:                                     ; preds = %abort.dead10, %nulcopy
  %arena.cur11 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr4, i64 %arg.str.ptr7, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr7
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %nulcopy.len9

str_ok21:                                         ; preds = %abort.dead30, %tag.slow_check24, %tag.gen_check23, %choice.else
  %nulcheck.gep31 = getelementptr i8, ptr %arg.str.ptr16, i64 %arg.str.ptr19
  %nulcheck.byte32 = load i8, ptr %nulcheck.gep31, align 1
  %nulcheck33 = icmp eq i8 %nulcheck.byte32, 0
  br i1 %nulcheck33, label %arg.str.ptr34, label %nulcopy35

tag.gen_check23:                                  ; preds = %choice.else
  %active.gen26 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok27 = icmp eq i64 %str.tag20, %active.gen26
  br i1 %tag.fast.ok27, label %str_ok21, label %tag.slow_check24

tag.slow_check24:                                 ; preds = %tag.gen_check23
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag20)
  br i1 %tag.valid29, label %str_ok21, label %tag.stale25

tag.stale25:                                      ; preds = %tag.slow_check24
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %str_ok21

arg.str.ptr34:                                    ; preds = %str_ok21
  br label %nulmerge36

nulcopy35:                                        ; preds = %str_ok21
  %nulcopy.len37 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr19, i64 1)
  %sum38 = extractvalue { i64, i1 } %nulcopy.len37, 0
  %ovf39 = extractvalue { i64, i1 } %nulcopy.len37, 1
  br i1 %ovf39, label %str_overflow_abort41, label %nulcopy.len40

nulmerge36:                                       ; preds = %nulcopy.len40, %arg.str.ptr34
  %arg.str.ptr46 = phi ptr [ %arg.str.ptr16, %arg.str.ptr34 ], [ %nulcopy.buf44, %nulcopy.len40 ]
  %call.res47 = call i64 @unlink(ptr %arg.str.ptr46)
  %cmptmp48 = icmp eq i64 %call.res47, 0
  br label %choice.exit

nulcopy.len40:                                    ; preds = %abort.dead42, %nulcopy35
  %arena.cur43 = call ptr @dva_arena_current()
  %nulcopy.buf44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 %sum38)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf44, ptr align 1 %arg.str.ptr16, i64 %arg.str.ptr19, i1 false)
  %nulcopy.nul45 = getelementptr i8, ptr %nulcopy.buf44, i64 %arg.str.ptr19
  store i8 0, ptr %nulcopy.nul45, align 1
  br label %nulmerge36

str_overflow_abort41:                             ; preds = %nulcopy35
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %nulcopy.len40
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
  %choice.res74 = phi i1 [ true, %choice.then ], [ %choice.res, %choice.exit11 ]
  ret i1 %choice.res74

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
  %var.load39 = load ptr, ptr %var.path, align 8
  %arg.str.ptr40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %arg.str.ptr41 = load ptr, ptr %arg.str.ptr40, align 8
  %arg.str.ptr42 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %arg.str.ptr43 = load i64, ptr %arg.str.ptr42, align 8
  %arg.str.ptr44 = and i64 %arg.str.ptr43, 281474976710655
  %str.tag45 = lshr i64 %arg.str.ptr43, 48
  %tag.immortal47 = icmp eq i64 %str.tag45, 0
  br i1 %tag.immortal47, label %str_ok46, label %tag.gen_check48

choice.exit11:                                    ; preds = %nulmerge61, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ %cmptmp73, %nulmerge61 ]
  br label %choice.exit

a.create:                                         ; preds = %choice.then9
  %arena.cur = call ptr @dva_arena_current()
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur16 = call ptr @dva_arena_current()
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
  %arena.cur22 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.then25:                                    ; preds = %loop.body.82
  ret i1 false

choice.exit26:                                    ; preds = %ret.dead, %loop.body.82
  br label %loop.latch.82

ret.dead:                                         ; No predecessors!
  br label %choice.exit26

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %loop.exit.82
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr28, i64 %arg.str.ptr31
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr33, label %nulcopy

tag.gen_check:                                    ; preds = %loop.exit.82
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

arg.str.ptr33:                                    ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr31, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len34

nulmerge:                                         ; preds = %nulcopy.len34, %arg.str.ptr33
  %arg.str.ptr37 = phi ptr [ %arg.str.ptr28, %arg.str.ptr33 ], [ %nulcopy.buf, %nulcopy.len34 ]
  %call.res38 = call i64 @rmdir(ptr %arg.str.ptr37)
  %cmptmp = icmp eq i64 %call.res38, 0
  br label %choice.exit11

nulcopy.len34:                                    ; preds = %abort.dead35, %nulcopy
  %arena.cur36 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr28, i64 %arg.str.ptr31, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr31
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %nulcopy.len34

str_ok46:                                         ; preds = %abort.dead55, %tag.slow_check49, %tag.gen_check48, %choice.else10
  %nulcheck.gep56 = getelementptr i8, ptr %arg.str.ptr41, i64 %arg.str.ptr44
  %nulcheck.byte57 = load i8, ptr %nulcheck.gep56, align 1
  %nulcheck58 = icmp eq i8 %nulcheck.byte57, 0
  br i1 %nulcheck58, label %arg.str.ptr59, label %nulcopy60

tag.gen_check48:                                  ; preds = %choice.else10
  %active.gen51 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok52 = icmp eq i64 %str.tag45, %active.gen51
  br i1 %tag.fast.ok52, label %str_ok46, label %tag.slow_check49

tag.slow_check49:                                 ; preds = %tag.gen_check48
  %arena.cur53 = call ptr @dva_arena_current()
  %tag.valid54 = call i1 @dva_arena_validate_tag(ptr %arena.cur53, i64 %str.tag45)
  br i1 %tag.valid54, label %str_ok46, label %tag.stale50

tag.stale50:                                      ; preds = %tag.slow_check49
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead55:                                     ; No predecessors!
  br label %str_ok46

arg.str.ptr59:                                    ; preds = %str_ok46
  br label %nulmerge61

nulcopy60:                                        ; preds = %str_ok46
  %nulcopy.len62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr44, i64 1)
  %sum63 = extractvalue { i64, i1 } %nulcopy.len62, 0
  %ovf64 = extractvalue { i64, i1 } %nulcopy.len62, 1
  br i1 %ovf64, label %str_overflow_abort66, label %nulcopy.len65

nulmerge61:                                       ; preds = %nulcopy.len65, %arg.str.ptr59
  %arg.str.ptr71 = phi ptr [ %arg.str.ptr41, %arg.str.ptr59 ], [ %nulcopy.buf69, %nulcopy.len65 ]
  %call.res72 = call i64 @unlink(ptr %arg.str.ptr71)
  %cmptmp73 = icmp eq i64 %call.res72, 0
  br label %choice.exit11

nulcopy.len65:                                    ; preds = %abort.dead67, %nulcopy60
  %arena.cur68 = call ptr @dva_arena_current()
  %nulcopy.buf69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %sum63)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf69, ptr align 1 %arg.str.ptr41, i64 %arg.str.ptr44, i1 false)
  %nulcopy.nul70 = getelementptr i8, ptr %nulcopy.buf69, i64 %arg.str.ptr44
  store i8 0, ptr %nulcopy.nul70, align 1
  br label %nulmerge61

str_overflow_abort66:                             ; preds = %nulcopy60
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %nulcopy.len65
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load10 = load ptr, ptr %"var.st'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load10 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res11 = call i64 @statvfs(ptr %arg.str.ptr9, ptr %addr.ffi.clean)
  store i64 %call.res11, ptr %var.rc, align 8
  %var.load12 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load12, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load13 = load ptr, ptr %"var.st'", align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load13, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.frsize, align 8
  %var.load14 = load i64, ptr %var.frsize, align 8
  %cmptmp15 = icmp eq i64 %var.load14, 0
  br i1 %cmptmp15, label %choice.then16, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then16:                                    ; preds = %choice.exit
  %var.load18 = load ptr, ptr %"var.st'", align 8
  %fld.gep19 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load18, i32 0, i32 0
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  br label %choice.exit17

choice.else:                                      ; preds = %choice.exit
  %var.load21 = load i64, ptr %var.frsize, align 8
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else, %choice.then16
  %choice.res = phi i64 [ %fld.load20, %choice.then16 ], [ %var.load21, %choice.else ]
  store i64 %choice.res, ptr %"var.eff_frsize'", align 8
  %var.load22 = load i64, ptr %"var.eff_frsize'", align 8
  %cmptmp23 = icmp eq i64 %var.load22, 0
  br i1 %cmptmp23, label %choice.then24, label %choice.else25

choice.then24:                                    ; preds = %choice.exit17
  br label %choice.exit26

choice.else25:                                    ; preds = %choice.exit17
  %var.load27 = load i64, ptr %"var.eff_frsize'", align 8
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %choice.then24
  %choice.res28 = phi i64 [ 4096, %choice.then24 ], [ %var.load27, %choice.else25 ]
  store i64 %choice.res28, ptr %"var.eff_frsize'", align 8
  %var.load29 = load ptr, ptr %"var.st'", align 8
  %fld.gep30 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load29, i32 0, i32 2
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  store i64 %fld.load31, ptr %var.blocks, align 8
  %var.load32 = load ptr, ptr %"var.st'", align 8
  %fld.gep33 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load32, i32 0, i32 3
  %fld.load34 = load i64, ptr %fld.gep33, align 8
  store i64 %fld.load34, ptr %var.bfree, align 8
  %var.load35 = load ptr, ptr %"var.st'", align 8
  %fld.gep36 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load35, i32 0, i32 4
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  store i64 %fld.load37, ptr %var.bavail, align 8
  %var.load38 = load i64, ptr %var.blocks, align 8
  %var.load39 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp = mul i64 %var.load38, %var.load39
  store i64 %multmp, ptr %var.total, align 8
  %var.load40 = load i64, ptr %var.bfree, align 8
  %var.load41 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp42 = mul i64 %var.load40, %var.load41
  store i64 %multmp42, ptr %var.free, align 8
  %var.load43 = load i64, ptr %var.bavail, align 8
  %var.load44 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp45 = mul i64 %var.load43, %var.load44
  store i64 %multmp45, ptr %var.avail, align 8
  %var.load46 = load i64, ptr %var.total, align 8
  %var.load47 = load i64, ptr %var.free, align 8
  %var.load48 = load i64, ptr %var.avail, align 8
  %arena.cur49 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load46, ptr %rec.fld, align 8
  %rec.fld50 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load47, ptr %rec.fld50, align 8
  %rec.fld51 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load48, ptr %rec.fld51, align 8
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
  %arena.cur68 = call ptr @dva_arena_current()
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
  %1 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
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
  %2 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %div.ok

div.not_zero19:                                   ; preds = %abort.dead21, %div.ok
  %div.is.min22 = icmp eq i64 %var.load16, -9223372036854775808
  %div.is.negone23 = icmp eq i64 %var.load17, -1
  %div.is.ovf24 = and i1 %div.is.min22, %div.is.negone23
  br i1 %div.is.ovf24, label %div.ovf_abort26, label %div.ok25

div.zero_abort20:                                 ; preds = %div.ok
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
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
  %4 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %div.ok25

div.not_zero32:                                   ; preds = %abort.dead34, %div.ok25
  %div.is.min35 = icmp eq i64 %var.load29, -9223372036854775808
  %div.is.negone36 = icmp eq i64 %var.load30, -1
  %div.is.ovf37 = and i1 %div.is.min35, %div.is.negone36
  br i1 %div.is.ovf37, label %div.ovf_abort39, label %div.ok38

div.zero_abort33:                                 ; preds = %div.ok25
  %5 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
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
  %6 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %7 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %div.not_zero50

div.ok56:                                         ; preds = %abort.dead58, %div.not_zero50
  %divtmp59 = sdiv i64 %multmp, %var.load48
  br label %choice.exit46

div.ovf_abort57:                                  ; preds = %div.not_zero50
  %8 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %div.ok56
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len4

concat.tot.len7:                                  ; preds = %abort.dead9, %cat.sum.len4
  %arena.cur = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum5)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off = add i64 0, %cat.ilen
  %cat.dst10 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst10, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur11 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit2

str_overflow_abort8:                              ; preds = %cat.sum.len4
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %cat.sum.len22

concat.tot.len28:                                 ; preds = %abort.dead30, %cat.sum.len22
  %arena.cur31 = call ptr @dva_arena_current()
  %concat.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 %sum26)
  %cat.dst33 = getelementptr i8, ptr %concat.buf32, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst33, ptr align 1 %cat.ibuf16, i64 %cat.ilen17, i1 false)
  %cat.off34 = add i64 0, %cat.ilen17
  %cat.dst35 = getelementptr i8, ptr %concat.buf32, i64 %cat.off34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst35, ptr align 1 %cat.lit.data18, i64 3, i1 false)
  %concat.nul36 = getelementptr i8, ptr %concat.buf32, i64 %sum20
  store i8 0, ptr %concat.nul36, align 1
  %arena.cur37 = call ptr @dva_arena_current()
  %concat.str38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  %str.build.len.gep39 = getelementptr inbounds { i64, ptr }, ptr %concat.str38, i32 0, i32 0
  store i64 %sum20, ptr %str.build.len.gep39, align 8
  %str.build.data.gep40 = getelementptr inbounds { i64, ptr }, ptr %concat.str38, i32 0, i32 1
  store ptr %concat.buf32, ptr %str.build.data.gep40, align 8
  br label %choice.exit2

str_overflow_abort29:                             ; preds = %cat.sum.len22
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %cat.sum.len52

concat.tot.len58:                                 ; preds = %abort.dead60, %cat.sum.len52
  %arena.cur61 = call ptr @dva_arena_current()
  %concat.buf62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum56)
  %cat.dst63 = getelementptr i8, ptr %concat.buf62, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst63, ptr align 1 %cat.ibuf46, i64 %cat.ilen47, i1 false)
  %cat.off64 = add i64 0, %cat.ilen47
  %cat.dst65 = getelementptr i8, ptr %concat.buf62, i64 %cat.off64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst65, ptr align 1 %cat.lit.data48, i64 3, i1 false)
  %concat.nul66 = getelementptr i8, ptr %concat.buf62, i64 %sum50
  store i8 0, ptr %concat.nul66, align 1
  %arena.cur67 = call ptr @dva_arena_current()
  %concat.str68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  %str.build.len.gep69 = getelementptr inbounds { i64, ptr }, ptr %concat.str68, i32 0, i32 0
  store i64 %sum50, ptr %str.build.len.gep69, align 8
  %str.build.data.gep70 = getelementptr inbounds { i64, ptr }, ptr %concat.str68, i32 0, i32 1
  store ptr %concat.buf62, ptr %str.build.data.gep70, align 8
  br label %choice.exit2

str_overflow_abort59:                             ; preds = %cat.sum.len52
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %concat.tot.len58

cat.sum.len79:                                    ; preds = %abort.dead81, %choice.next42
  %concat.tot.len82 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum77, i64 1)
  %sum83 = extractvalue { i64, i1 } %concat.tot.len82, 0
  %ovf84 = extractvalue { i64, i1 } %concat.tot.len82, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.tot.len85

str_overflow_abort80:                             ; preds = %choice.next42
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead81:                                     ; No predecessors!
  br label %cat.sum.len79

concat.tot.len85:                                 ; preds = %abort.dead87, %cat.sum.len79
  %arena.cur88 = call ptr @dva_arena_current()
  %concat.buf89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %sum83)
  %cat.dst90 = getelementptr i8, ptr %concat.buf89, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst90, ptr align 1 %cat.ibuf73, i64 %cat.ilen74, i1 false)
  %cat.off91 = add i64 0, %cat.ilen74
  %cat.dst92 = getelementptr i8, ptr %concat.buf89, i64 %cat.off91
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst92, ptr align 1 %cat.lit.data75, i64 3, i1 false)
  %concat.nul93 = getelementptr i8, ptr %concat.buf89, i64 %sum77
  store i8 0, ptr %concat.nul93, align 1
  %arena.cur94 = call ptr @dva_arena_current()
  %concat.str95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 16)
  %str.build.len.gep96 = getelementptr inbounds { i64, ptr }, ptr %concat.str95, i32 0, i32 0
  store i64 %sum77, ptr %str.build.len.gep96, align 8
  %str.build.data.gep97 = getelementptr inbounds { i64, ptr }, ptr %concat.str95, i32 0, i32 1
  store ptr %concat.buf89, ptr %str.build.data.gep97, align 8
  br label %choice.exit2

str_overflow_abort86:                             ; preds = %cat.sum.len79
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur93 = call ptr @dva_arena_current()
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
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur3 = call ptr @dva_arena_current()
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
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

choice.then13:                                    ; preds = %b.buf.len2
  %ret.pack15 = load { i64, ptr }, ptr @str.12.struct, align 8
  ret { i64, ptr } %ret.pack15

choice.exit14:                                    ; preds = %ret.dead16, %b.buf.len2
  %arena.cur17 = call ptr @dva_arena_current()
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
  %arena.cur28 = call ptr @dva_arena_current()
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur45 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 %sum40)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr, i64 %arg.str.ptr38, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr38
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort43:                             ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit57
  %4 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
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
  %arena.cur67 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %to_str.n = call i64 @dva_fmt_i64_buf(ptr %to_str.buf, i64 %var.load, i1 false)
  %arena.cur1 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query4, 0
  br i1 %cmptmp, label %and.85.then, label %and.85.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur5 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur5, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

and.85.then:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr %var.s_full, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

and.85.else:                                      ; preds = %str_ok
  br label %and.85.exit

and.85.exit:                                      ; preds = %and.85.else, %idx_ok
  %and.85.phi = phi i1 [ %cmptmp11, %idx_ok ], [ %cmptmp, %and.85.else ]
  store i1 %and.85.phi, ptr %var.is_neg, align 1
  %var.load12 = load i1, ptr %var.is_neg, align 1
  br i1 %var.load12, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.85.then
  %idx.big = icmp sge i64 0, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead10, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp11 = icmp eq i64 %s.byte.val, 45
  br label %and.85.exit

idx_oob:                                          ; preds = %idx_big_check, %and.85.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.85.exit
  %var.load13 = load ptr, ptr %var.s_full, align 8
  %s.read.len14 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len14, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data17 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data17, align 8
  %rel.start = add i64 %s.read.len16, 1
  %norm.start = select i1 false, i64 %rel.start, i64 1
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len16
  %final.start = select i1 %start.gt.len, i64 %s.read.len16, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len16, 0
  %rel.end = add i64 %s.read.len16, %s.read.len16
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len16
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len16
  %final.end = select i1 %end.gt.len, i64 %s.read.len16, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data18, i64 %final.start
  %arena.cur19 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  %str.build.len.gep20 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep20, align 8
  %str.build.data.gep21 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep21, align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.85.exit
  %var.load22 = load ptr, ptr %var.s_full, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %str.view, %choice.then ], [ %var.load22, %choice.else ]
  store ptr %choice.res, ptr %var.s, align 8
  %var.load23 = load ptr, ptr %var.s, align 8
  %str.len.query24 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %str.len.query25 = load i64, ptr %str.len.query24, align 8
  %str.len.query26 = and i64 %str.len.query25, 281474976710655
  %str.tag27 = lshr i64 %str.len.query25, 48
  %tag.immortal29 = icmp eq i64 %str.tag27, 0
  br i1 %tag.immortal29, label %str_ok28, label %tag.gen_check30

str_ok28:                                         ; preds = %abort.dead37, %tag.slow_check31, %tag.gen_check30, %choice.exit
  store i64 %str.len.query26, ptr %var.len, align 8
  %var.load38 = load i64, ptr %var.len, align 8
  %cmptmp39 = icmp slt i64 %var.load38, 4
  br i1 %cmptmp39, label %choice.then40, label %choice.exit41

tag.gen_check30:                                  ; preds = %choice.exit
  %active.gen33 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok34 = icmp eq i64 %str.tag27, %active.gen33
  br i1 %tag.fast.ok34, label %str_ok28, label %tag.slow_check31

tag.slow_check31:                                 ; preds = %tag.gen_check30
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag27)
  br i1 %tag.valid36, label %str_ok28, label %tag.stale32

tag.stale32:                                      ; preds = %tag.slow_check31
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %str_ok28

choice.then40:                                    ; preds = %str_ok28
  %var.load42 = load ptr, ptr %var.s_full, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load42, align 8
  ret { i64, ptr } %ret.pack

choice.exit41:                                    ; preds = %ret.dead, %str_ok28
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len43

ret.dead:                                         ; No predecessors!
  br label %choice.exit41

b.buf.len43:                                      ; preds = %abort.dead44, %choice.exit41
  %arena.cur45 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load46 = load i1, ptr %var.is_neg, align 1
  br i1 %var.load46, label %choice.then47, label %choice.exit48

str_overflow_abort:                               ; preds = %choice.exit41
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead44:                                     ; No predecessors!
  br label %b.buf.len43

choice.then47:                                    ; preds = %b.buf.len43
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len49 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len49, i64 1)
  %sum50 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf51 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf51, label %str_overflow_abort53, label %b.rn.new.len52

choice.exit48:                                    ; preds = %br.done.86, %b.buf.len43
  %var.load66 = load i64, ptr %var.len, align 8
  %modtmp = srem i64 %var.load66, 3
  store i64 %modtmp, ptr %"var.rem'", align 8
  %var.load67 = load i64, ptr %"var.rem'", align 8
  %cmptmp68 = icmp eq i64 %var.load67, 0
  br i1 %cmptmp68, label %choice.then69, label %choice.exit70

b.rn.new.len52:                                   ; preds = %abort.dead54, %choice.then47
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap55 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap55, %sum50
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort53:                             ; preds = %choice.then47
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %b.rn.new.len52

b.grow2:                                          ; preds = %b.rn.new.len52
  %b.cap2 = mul i64 %b.cap55, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum50
  %b.new.cap = select i1 %b.cap.need, i64 %sum50, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len256 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data257 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum58 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf59 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf59, label %str_overflow_abort61, label %b.new.buf.len260

b.nogrow2:                                        ; preds = %b.rn.new.len52
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len260
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data64 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data64, i64 %b.rn.cur.len49
  br i1 true, label %br.b1.86, label %br.c2.86

b.new.buf.len260:                                 ; preds = %abort.dead62, %b.grow2
  %arena.cur63 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 %sum58)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data257, i64 %b.cur.len256, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len256
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort61:                             ; preds = %b.grow2
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %b.new.buf.len260

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
  %br.nul = getelementptr i8, ptr %b.rn.data64, i64 %sum50
  store i8 0, ptr %br.nul, align 1
  %b.len.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum50, ptr %b.len.gep65, align 8
  br label %choice.exit48

choice.then69:                                    ; preds = %choice.exit48
  store i64 3, ptr %"var.rem'", align 8
  br label %choice.exit70

choice.exit70:                                    ; preds = %choice.then69, %choice.exit48
  %var.load71 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.header.87:                                   ; preds = %loop.latch.87, %choice.exit70
  %counter.load = load i64, ptr %loop.idx.87, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load71
  br i1 %loop.cond, label %loop.body.87, label %loop.exit.nat.87

loop.body.87:                                     ; preds = %loop.header.87
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.87, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load72 = load i64, ptr %var.i, align 8
  %cmptmp73 = icmp sgt i64 %var.load72, 0
  br i1 %cmptmp73, label %and.88.then, label %and.88.else

loop.exit.nat.87:                                 ; preds = %loop.header.87
  br label %loop.exit.87

loop.latch.87:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.87, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.exit.87:                                     ; preds = %loop.exit.nat.87
  %var.load159 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load159, i32 0, i32 0
  %b.freeze.len160 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load159, i32 0, i32 1
  %b.freeze.data161 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

and.88.then:                                      ; preds = %loop.body.87
  %var.load74 = load i64, ptr %var.i, align 8
  %var.load75 = load i64, ptr %"var.rem'", align 8
  %subtmp = sub i64 %var.load74, %var.load75
  %modtmp76 = srem i64 %subtmp, 3
  %cmptmp77 = icmp eq i64 %modtmp76, 0
  br label %and.88.exit

and.88.else:                                      ; preds = %loop.body.87
  br label %and.88.exit

and.88.exit:                                      ; preds = %and.88.else, %and.88.then
  %and.88.phi = phi i1 [ %cmptmp77, %and.88.then ], [ %cmptmp73, %and.88.else ]
  br i1 %and.88.phi, label %choice.then78, label %choice.exit79

choice.then78:                                    ; preds = %and.88.exit
  %b.load80 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 0
  %b.rn.cur.len82 = load i64, ptr %b.rn.cur.len81, align 8
  %b.rn.new.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len82, i64 1)
  %sum84 = extractvalue { i64, i1 } %b.rn.new.len83, 0
  %ovf85 = extractvalue { i64, i1 } %b.rn.new.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %b.rn.new.len86

choice.exit79:                                    ; preds = %br.done.89, %and.88.exit
  %b.load126 = load ptr, ptr %var.b, align 8
  %var.load127 = load ptr, ptr %var.s, align 8
  %s.read.len128 = getelementptr inbounds { i64, ptr }, ptr %var.load127, i32 0, i32 0
  %s.read.len129 = load i64, ptr %s.read.len128, align 8
  %s.read.len130 = and i64 %s.read.len129, 281474976710655
  %s.read.data131 = getelementptr inbounds { i64, ptr }, ptr %var.load127, i32 0, i32 1
  %s.read.data132 = load ptr, ptr %s.read.data131, align 8
  %var.load133 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load133, 0
  br i1 %idx.neg, label %idx_oob136, label %idx_big_check134

b.rn.new.len86:                                   ; preds = %abort.dead88, %choice.then78
  %b.cap89 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 2
  %b.cap90 = load i64, ptr %b.cap89, align 8
  %b.need.grow91 = icmp slt i64 %b.cap90, %sum84
  br i1 %b.need.grow91, label %b.grow292, label %b.nogrow293

str_overflow_abort87:                             ; preds = %choice.then78
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %b.rn.new.len86

b.grow292:                                        ; preds = %b.rn.new.len86
  %b.cap295 = mul i64 %b.cap90, 2
  %b.cap.small96 = icmp slt i64 %b.cap295, 16
  %b.cap.grow97 = select i1 %b.cap.small96, i64 16, i64 %b.cap295
  %b.cap.need98 = icmp slt i64 %b.cap.grow97, %sum84
  %b.new.cap99 = select i1 %b.cap.need98, i64 %sum84, i64 %b.cap.grow97
  %b.cur.len2100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 0
  %b.cur.len2101 = load i64, ptr %b.cur.len2100, align 8
  %b.cur.data2102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 1
  %b.cur.data2103 = load ptr, ptr %b.cur.data2102, align 8
  %b.new.buf.len2104 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap99, i64 1)
  %sum105 = extractvalue { i64, i1 } %b.new.buf.len2104, 0
  %ovf106 = extractvalue { i64, i1 } %b.new.buf.len2104, 1
  br i1 %ovf106, label %str_overflow_abort108, label %b.new.buf.len2107

b.nogrow293:                                      ; preds = %b.rn.new.len86
  br label %b.grow_done94

b.grow_done94:                                    ; preds = %b.nogrow293, %b.new.buf.len2107
  %b.rn.data115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 1
  %b.rn.data116 = load ptr, ptr %b.rn.data115, align 8
  %b.rn.dst117 = getelementptr i8, ptr %b.rn.data116, i64 %b.rn.cur.len82
  br i1 true, label %br.b1.89, label %br.c2.89

b.new.buf.len2107:                                ; preds = %abort.dead109, %b.grow292
  %arena.cur110 = call ptr @dva_arena_current()
  %b.new.buf2111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %sum105)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2111, ptr align 1 %b.cur.data2103, i64 %b.cur.len2101, i1 false)
  %b.grow2.nul112 = getelementptr i8, ptr %b.new.buf2111, i64 %b.cur.len2101
  store i8 0, ptr %b.grow2.nul112, align 1
  %b.new.data2.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 1
  store ptr %b.new.buf2111, ptr %b.new.data2.gep113, align 8
  %b.new.cap2.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 2
  store i64 %b.new.cap99, ptr %b.new.cap2.gep114, align 8
  br label %b.grow_done94

str_overflow_abort108:                            ; preds = %b.grow292
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead109:                                    ; No predecessors!
  br label %b.new.buf.len2107

br.b1.89:                                         ; preds = %b.grow_done94
  store i8 44, ptr %b.rn.dst117, align 1
  br label %br.done.89

br.c2.89:                                         ; preds = %b.grow_done94
  br i1 true, label %br.b2.89, label %br.c3.89

br.b2.89:                                         ; preds = %br.c2.89
  store i8 -64, ptr %b.rn.dst117, align 1
  %br.dst1118 = getelementptr i8, ptr %b.rn.dst117, i64 1
  store i8 -84, ptr %br.dst1118, align 1
  br label %br.done.89

br.c3.89:                                         ; preds = %br.c2.89
  br i1 true, label %br.b3.89, label %br.b4.89

br.b3.89:                                         ; preds = %br.c3.89
  store i8 -32, ptr %b.rn.dst117, align 1
  %br.dst1.3119 = getelementptr i8, ptr %b.rn.dst117, i64 1
  store i8 -128, ptr %br.dst1.3119, align 1
  %br.dst2.3120 = getelementptr i8, ptr %b.rn.dst117, i64 2
  store i8 -84, ptr %br.dst2.3120, align 1
  br label %br.done.89

br.b4.89:                                         ; preds = %br.c3.89
  store i8 -16, ptr %b.rn.dst117, align 1
  %br.dst1.4121 = getelementptr i8, ptr %b.rn.dst117, i64 1
  store i8 -128, ptr %br.dst1.4121, align 1
  %br.dst2.4122 = getelementptr i8, ptr %b.rn.dst117, i64 2
  store i8 -128, ptr %br.dst2.4122, align 1
  %br.dst3.4123 = getelementptr i8, ptr %b.rn.dst117, i64 3
  store i8 -84, ptr %br.dst3.4123, align 1
  br label %br.done.89

br.done.89:                                       ; preds = %br.b4.89, %br.b3.89, %br.b2.89, %br.b1.89
  %br.nul124 = getelementptr i8, ptr %b.rn.data116, i64 %sum84
  store i8 0, ptr %br.nul124, align 1
  %b.len.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 0
  store i64 %sum84, ptr %b.len.gep125, align 8
  br label %choice.exit79

idx_big_check134:                                 ; preds = %choice.exit79
  %idx.big137 = icmp sge i64 %var.load133, %s.read.len130
  br i1 %idx.big137, label %idx_oob136, label %idx_ok135

idx_ok135:                                        ; preds = %abort.dead138, %idx_big_check134
  %s.byte.gep139 = getelementptr i8, ptr %s.read.data132, i64 %var.load133
  %s.byte140 = load i8, ptr %s.byte.gep139, align 1
  %s.byte.val141 = zext i8 %s.byte140 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val141, 0
  %b.b.le255 = icmp sle i64 %s.byte.val141, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob136:                                       ; preds = %idx_big_check134, %choice.exit79
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead138:                                    ; No predecessors!
  br label %idx_ok135

b.byte_ok:                                        ; preds = %abort.dead142, %idx_ok135
  %b.byte.i8 = trunc i64 %s.byte.val141 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load126, i32 0, i32 0
  %b.len143 = load i64, ptr %b.len, align 8
  %b.cap144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load126, i32 0, i32 2
  %b.cap145 = load i64, ptr %b.cap144, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load126, i32 0, i32 1
  %b.data146 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len143, %b.cap145
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok135
  %10 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead142:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2147 = mul i64 %b.cap145, 2
  %b.cap.small148 = icmp slt i64 %b.cap2147, 16
  %b.new.cap149 = select i1 %b.cap.small148, i64 16, i64 %b.cap2147
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap149, i64 1)
  %sum150 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf151 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf151, label %str_overflow_abort153, label %b.new.buf.len152

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len152
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load126, i32 0, i32 1
  %b.cur.data156 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load126, i32 0, i32 0
  %b.cur.len157 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data156, i64 %b.cur.len157
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len157, 1
  %b.nul = getelementptr i8, ptr %b.cur.data156, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load126, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep158, align 8
  br label %loop.latch.87

b.new.buf.len152:                                 ; preds = %abort.dead154, %b.grow
  %arena.cur155 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 %sum150)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data146, i64 %b.len143, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len143
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load126, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load126, i32 0, i32 2
  store i64 %b.new.cap149, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort153:                            ; preds = %b.grow
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead154:                                    ; No predecessors!
  br label %b.new.buf.len152

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data161, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data161, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data161, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len160, 1
  %arena.cur162 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data161, i64 %b.freeze.len160, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len160
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.87
  %b.freeze.data163 = phi ptr [ %b.freeze.data161, %loop.exit.87 ], [ %b.freeze.data161, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur164 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 16)
  %str.build.len.gep165 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len160, ptr %str.build.len.gep165, align 8
  %str.build.data.gep166 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data163, ptr %str.build.data.gep166, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load159, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load159, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load159, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack167 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack167
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
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len28

cat.sum.len32:                                    ; preds = %abort.dead34, %cat.sum.len28
  %cat.sum.len35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum30, i64 %cat.ilen27)
  %sum36 = extractvalue { i64, i1 } %cat.sum.len35, 0
  %ovf37 = extractvalue { i64, i1 } %cat.sum.len35, 1
  br i1 %ovf37, label %str_overflow_abort39, label %cat.sum.len38

str_overflow_abort33:                             ; preds = %cat.sum.len28
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %cat.sum.len32

cat.sum.len38:                                    ; preds = %abort.dead40, %cat.sum.len32
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum36, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort39:                             ; preds = %cat.sum.len32
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %cat.sum.len38

concat.tot.len43:                                 ; preds = %abort.dead45, %cat.sum.len38
  %arena.cur = call ptr @dva_arena_current()
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
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %concat.tot.len43

cat.sum.len66:                                    ; preds = %abort.dead68, %choice.else
  %cat.sum.len69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum64, i64 %cat.ilen58)
  %sum70 = extractvalue { i64, i1 } %cat.sum.len69, 0
  %ovf71 = extractvalue { i64, i1 } %cat.sum.len69, 1
  br i1 %ovf71, label %str_overflow_abort73, label %cat.sum.len72

str_overflow_abort67:                             ; preds = %choice.else
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead68:                                     ; No predecessors!
  br label %cat.sum.len66

cat.sum.len72:                                    ; preds = %abort.dead74, %cat.sum.len66
  %cat.sum.len75 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum70, i64 %cat.ilen62)
  %sum76 = extractvalue { i64, i1 } %cat.sum.len75, 0
  %ovf77 = extractvalue { i64, i1 } %cat.sum.len75, 1
  br i1 %ovf77, label %str_overflow_abort79, label %cat.sum.len78

str_overflow_abort73:                             ; preds = %cat.sum.len66
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %cat.sum.len72

cat.sum.len78:                                    ; preds = %abort.dead80, %cat.sum.len72
  %concat.tot.len81 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum76, i64 1)
  %sum82 = extractvalue { i64, i1 } %concat.tot.len81, 0
  %ovf83 = extractvalue { i64, i1 } %concat.tot.len81, 1
  br i1 %ovf83, label %str_overflow_abort85, label %concat.tot.len84

str_overflow_abort79:                             ; preds = %cat.sum.len72
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %cat.sum.len78

concat.tot.len84:                                 ; preds = %abort.dead86, %cat.sum.len78
  %arena.cur87 = call ptr @dva_arena_current()
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
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.dir_part, align 8
  %var.load1 = load ptr, ptr %var.full_p, align 8
  %call.res2 = call { i64, ptr } @"path::stem"(ptr %var.load1)
  %arena.cur3 = call ptr @dva_arena_current()
  %ret.ub.alloc4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 16)
  store { i64, ptr } %call.res2, ptr %ret.ub.alloc4, align 8
  store ptr %ret.ub.alloc4, ptr %var.base_name, align 8
  %var.load5 = load ptr, ptr %var.full_p, align 8
  %call.res6 = call { i64, ptr } @"path::ext"(ptr %var.load5)
  %arena.cur7 = call ptr @dva_arena_current()
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
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len23

cat.sum.len27:                                    ; preds = %abort.dead29, %cat.sum.len23
  %cat.sum.len30 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum25, i64 1)
  %sum31 = extractvalue { i64, i1 } %cat.sum.len30, 0
  %ovf32 = extractvalue { i64, i1 } %cat.sum.len30, 1
  br i1 %ovf32, label %str_overflow_abort34, label %cat.sum.len33

str_overflow_abort28:                             ; preds = %cat.sum.len23
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %cat.sum.len27

cat.sum.len33:                                    ; preds = %abort.dead35, %cat.sum.len27
  %cat.sum.len36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum31, i64 %cat.seg20)
  %sum37 = extractvalue { i64, i1 } %cat.sum.len36, 0
  %ovf38 = extractvalue { i64, i1 } %cat.sum.len36, 1
  br i1 %ovf38, label %str_overflow_abort40, label %cat.sum.len39

str_overflow_abort34:                             ; preds = %cat.sum.len27
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %cat.sum.len33

cat.sum.len39:                                    ; preds = %abort.dead41, %cat.sum.len33
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum37, i64 1)
  %sum42 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf43 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf43, label %str_overflow_abort45, label %concat.tot.len44

str_overflow_abort40:                             ; preds = %cat.sum.len33
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %cat.sum.len39

concat.tot.len44:                                 ; preds = %abort.dead46, %cat.sum.len39
  %arena.cur47 = call ptr @dva_arena_current()
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
  %arena.cur55 = call ptr @dva_arena_current()
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
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur64 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res71, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.ext1, align 8
  %var.load72 = load ptr, ptr %var.e2, align 8
  %fld.gep73 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load72, i32 0, i32 0
  %fld.load74 = load ptr, ptr %fld.gep73, align 8
  %call.res75 = call { i64, ptr } @"fs::ext"(ptr %fld.load74)
  %arena.cur76 = call ptr @dva_arena_current()
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
  %var.load = load ptr, ptr %var.dir_path, align 8
  %call.res = call ptr @"fs::read_dir"(ptr %var.load)
  store ptr %call.res, ptr %var.entries, align 8
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
  store ptr %a.new3, ptr %var.dirs, align 8
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
  store ptr %a.new10, ptr %var.file_list, align 8
  %var.load16 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur17 = call ptr @dva_arena_current()
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = call ptr @dva_arena_current()
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
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.94.exit
  br label %loop.latch.92

choice.exit:                                      ; preds = %and.94.exit
  %var.load36 = load ptr, ptr %var.dir_path, align 8
  %var.load37 = load ptr, ptr %var.name, align 8
  %call.res38 = call { i64, ptr } @"fs::join"(ptr %var.load36, ptr %var.load37)
  %arena.cur39 = call ptr @dva_arena_current()
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
  %arena.cur67 = call ptr @dva_arena_current()
  %ret.ub.alloc68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  store { i64, ptr } %call.res66, ptr %ret.ub.alloc68, align 8
  store ptr %ret.ub.alloc68, ptr %var.fmt_sz, align 8
  %var.load69 = load i64, ptr %"var.mode'", align 8
  %var.load70 = load i1, ptr %"var.is_d'", align 1
  %call.res71 = call { i64, ptr } @"fs::format_perms"(i64 %var.load69, i1 %var.load70)
  %arena.cur72 = call ptr @dva_arena_current()
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
  %arena.cur82 = call ptr @dva_arena_current()
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
  %arena.cur98 = call ptr @dva_arena_current()
  %a.create99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 24)
  %arena.cur100 = call ptr @dva_arena_current()
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
  %arena.cur115 = call ptr @dva_arena_current()
  %a.create116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 24)
  %arena.cur117 = call ptr @dva_arena_current()
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
  %arena.cur144 = call ptr @dva_arena_current()
  %a.create145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 24)
  %arena.cur146 = call ptr @dva_arena_current()
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
  %arena.cur170 = call ptr @dva_arena_current()
  %a.create171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 24)
  %arena.cur172 = call ptr @dva_arena_current()
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
  %arena.cur181 = call ptr @dva_arena_current()
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
  %arena.cur182 = call ptr @dva_arena_current()
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
  %arena.cur209 = call ptr @dva_arena_current()
  %a.create210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 24)
  %arena.cur211 = call ptr @dva_arena_current()
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
  %arena.cur233 = call ptr @dva_arena_current()
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
  %arena.cur244 = call ptr @dva_arena_current()
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
  %arena.cur306 = call ptr @dva_arena_current()
  %a.create307 = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 24)
  %arena.cur308 = call ptr @dva_arena_current()
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
  %arena.cur320 = call ptr @dva_arena_current()
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
  %arena.cur330 = call ptr @dva_arena_current()
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
  %arena.cur345 = call ptr @dva_arena_current()
  %a.create346 = call ptr @dva_arena_alloc(ptr %arena.cur345, i64 24)
  %arena.cur347 = call ptr @dva_arena_current()
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
  %arena.cur371 = call ptr @dva_arena_current()
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
  %arena.cur381 = call ptr @dva_arena_current()
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
  %arena.cur401 = call ptr @dva_arena_current()
  %a.create402 = call ptr @dva_arena_alloc(ptr %arena.cur401, i64 24)
  %arena.cur403 = call ptr @dva_arena_current()
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
  %arena.cur432 = call ptr @dva_arena_current()
  %a.create433 = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 24)
  %arena.cur434 = call ptr @dva_arena_current()
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
  %arena.cur456 = call ptr @dva_arena_current()
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
  %arena.cur467 = call ptr @dva_arena_current()
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
  %arena.cur521 = call ptr @dva_arena_current()
  %a.create522 = call ptr @dva_arena_alloc(ptr %arena.cur521, i64 24)
  %arena.cur523 = call ptr @dva_arena_current()
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
  %arena.cur546 = call ptr @dva_arena_current()
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
  %arena.cur557 = call ptr @dva_arena_current()
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
  %arena.cur619 = call ptr @dva_arena_current()
  %a.create620 = call ptr @dva_arena_alloc(ptr %arena.cur619, i64 24)
  %arena.cur621 = call ptr @dva_arena_current()
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
  %arena.cur644 = call ptr @dva_arena_current()
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
  %arena.cur654 = call ptr @dva_arena_current()
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
  %arena.cur670 = call ptr @dva_arena_current()
  %a.create671 = call ptr @dva_arena_alloc(ptr %arena.cur670, i64 24)
  %arena.cur672 = call ptr @dva_arena_current()
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
  %arena.cur696 = call ptr @dva_arena_current()
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
  %arena.cur706 = call ptr @dva_arena_current()
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
  %arena.cur726 = call ptr @dva_arena_current()
  %a.create727 = call ptr @dva_arena_alloc(ptr %arena.cur726, i64 24)
  %arena.cur728 = call ptr @dva_arena_current()
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
  %arena.cur751 = call ptr @dva_arena_current()
  %a.create752 = call ptr @dva_arena_alloc(ptr %arena.cur751, i64 24)
  %arena.cur753 = call ptr @dva_arena_current()
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
  %arena.cur782 = call ptr @dva_arena_current()
  %a.create783 = call ptr @dva_arena_alloc(ptr %arena.cur782, i64 24)
  %arena.cur784 = call ptr @dva_arena_current()
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
  %arena.cur807 = call ptr @dva_arena_current()
  %a.create808 = call ptr @dva_arena_alloc(ptr %arena.cur807, i64 24)
  %arena.cur809 = call ptr @dva_arena_current()
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
  %arena.cur838 = call ptr @dva_arena_current()
  %a.create839 = call ptr @dva_arena_alloc(ptr %arena.cur838, i64 24)
  %arena.cur840 = call ptr @dva_arena_current()
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
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
