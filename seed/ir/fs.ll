; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@sys_argc_global = external global i64
@sys_argv_global = external global ptr
@"var.sys::STDIN" = external global i64
@"var.sys::STDOUT" = external global i64
@"var.sys::STDERR" = external global i64
@"var.sys::addr_null" = external global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"fs::empty_stat", ptr null }
@"var.fs::empty_stat" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"fs::empty_statvfs", ptr null }
@"var.fs::empty_statvfs" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"fs::is_abs", ptr null }
@"var.fs::is_abs" = global ptr null
@str.0 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@clo.const.3 = internal constant { ptr, ptr } { ptr @"fs::join", ptr null }
@"var.fs::join" = global ptr null
@str.1 = internal unnamed_addr constant [2 x i8] c".\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.1 }
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"fs::parent", ptr null }
@"var.fs::parent" = global ptr null
@str.2 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.2 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"fs::basename", ptr null }
@"var.fs::basename" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"fs::ext", ptr null }
@"var.fs::ext" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"fs::cwd", ptr null }
@"var.fs::cwd" = global ptr null
@str.3 = internal unnamed_addr constant [5 x i8] c"HOME\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.3 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"fs::home", ptr null }
@"var.fs::home" = global ptr null
@str.4 = internal unnamed_addr constant [2 x i8] c"~\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.4 }
@str.5 = internal unnamed_addr constant [3 x i8] c"~/\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
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
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
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
@dva_fmt_i64 = internal unnamed_addr constant [5 x i8] c"%lld\00"
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
@clo.const.52 = internal constant { ptr, ptr } { ptr @"fs::format_number", ptr null }
@"var.fs::format_number" = global ptr null
@str.14 = internal unnamed_addr constant [2 x i8] c"0\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.14 }
@clo.const.53 = internal constant { ptr, ptr } { ptr @"fs::octal_perms", ptr null }
@"var.fs::octal_perms" = global ptr null
@str.15 = internal unnamed_addr constant [5 x i8] c"0644\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.15 }
@clo.const.54 = internal constant { ptr, ptr } { ptr @"fs::octal_perms_str", ptr null }
@"var.fs::octal_perms_str" = global ptr null
@str.16 = internal unnamed_addr constant [3 x i8] c" (\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.16 }
@str.17 = internal unnamed_addr constant [2 x i8] c")\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.17 }
@clo.const.55 = internal constant { ptr, ptr } { ptr @"fs::auto_rename_path", ptr null }
@"var.fs::auto_rename_path" = global ptr null
@clo.const.56 = internal constant { ptr, ptr } { ptr @"fs::cmp_entries", ptr null }
@"var.fs::cmp_entries" = global ptr null
@str.18 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.18 }
@str.19 = internal unnamed_addr constant [7 x i8] c"fs.dva\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.19 }
@str.20 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.20 }
@dva_thread_rec = external thread_local global ptr
@clo.const.57 = internal constant { ptr, ptr } { ptr @"fs::list_dir", ptr null }
@clo.const.58 = internal constant { ptr, ptr } { ptr @"fs::list_dir_simple", ptr null }
@"var.fs::list_dir_simple" = global ptr null
@"var.fs::list_dir" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_fs, ptr null }]

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

declare i1 @dva_arena_validate_tag(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @strlen(ptr)

declare i32 @memcmp(ptr, ptr, i64)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_fs() #1 {
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
  store ptr @clo.const.54, ptr @"var.fs::octal_perms_str", align 8
  store ptr @clo.const.55, ptr @"var.fs::auto_rename_path", align 8
  store ptr @clo.const.56, ptr @"var.fs::cmp_entries", align 8
  store ptr @clo.const.58, ptr @"var.fs::list_dir_simple", align 8
  store ptr @clo.const.57, ptr @"var.fs::list_dir", align 8
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

declare i64 @getifaddrs(ptr)

declare void @freeifaddrs(ptr)

declare ptr @memset(ptr, i64, i64)

declare i64 @atoi(ptr)

declare ptr @opendir(ptr)

declare ptr @readdir(ptr)

declare i64 @closedir(ptr)

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

define ptr @"fs::empty_stat"() #1 {
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

define ptr @"fs::empty_statvfs"() #1 {
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

define i1 @"fs::is_abs"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.0.then, label %and.0.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.0.then:                                       ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag6 = lshr i64 %s.read.len4, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

and.0.else:                                       ; preds = %str_ok
  br label %and.0.exit

and.0.exit:                                       ; preds = %and.0.else, %idx_ok
  %and.0.phi = phi i1 [ %cmptmp14, %idx_ok ], [ %cmptmp, %and.0.else ]
  ret i1 %and.0.phi

str_gen_check8:                                   ; preds = %and.0.then
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %and.0.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

idx_big_check:                                    ; preds = %str_ok9
  %idx.big = icmp sge i64 0, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp14 = icmp eq i64 %s.byte.val, 47
  br label %and.0.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok9
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok
}

define ptr @"fs::join"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.a, align 8
  ret ptr %var.load3

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.a, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag8 = lshr i64 %str.len.query6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check10:                                  ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.exit
  %cmptmp15 = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp15, label %or.1.then, label %or.1.else

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

or.1.then:                                        ; preds = %str_ok11
  br label %or.1.exit

or.1.else:                                        ; preds = %str_ok11
  %var.load16 = load ptr, ptr %var.b, align 8
  %call.res = call i1 @"fs::is_abs"(ptr %var.load16)
  br label %or.1.exit

or.1.exit:                                        ; preds = %or.1.else, %or.1.then
  %or.1.phi = phi i1 [ %cmptmp15, %or.1.then ], [ %call.res, %or.1.else ]
  br i1 %or.1.phi, label %choice.then17, label %choice.exit18

choice.then17:                                    ; preds = %or.1.exit
  %var.load19 = load ptr, ptr %var.b, align 8
  ret ptr %var.load19

choice.exit18:                                    ; preds = %ret.dead20, %or.1.exit
  %var.load21 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.read.len22 = load i64, ptr %s.read.len, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %str.tag24 = lshr i64 %s.read.len22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

ret.dead20:                                       ; No predecessors!
  br label %choice.exit18

str_gen_check26:                                  ; preds = %choice.exit18
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %choice.exit18
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data, align 8
  %var.load32 = load ptr, ptr %var.a, align 8
  %str.len.query33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %str.len.query34 = load i64, ptr %str.len.query33, align 8
  %str.len.query35 = and i64 %str.len.query34, 281474976710655
  %str.tag36 = lshr i64 %str.len.query34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale28:                                      ; preds = %str_gen_check26
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check38:                                  ; preds = %str_ok27
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok27
  %subtmp = sub i64 %str.len.query35, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale40:                                      ; preds = %str_gen_check38
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

idx_big_check:                                    ; preds = %str_ok39
  %idx.big = icmp sge i64 %subtmp, %s.read.len23
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data31, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp43 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp43, label %choice.then44, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok39
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then44:                                    ; preds = %idx_ok
  %var.load46 = load ptr, ptr %var.a, align 8
  %var.load47 = load ptr, ptr %var.b, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 0
  %concat.lhs48 = load i64, ptr %concat.lhs, align 8
  %concat.lhs49 = and i64 %concat.lhs48, 281474976710655
  %str.tag50 = lshr i64 %concat.lhs48, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

choice.else:                                      ; preds = %idx_ok
  %var.load77 = load ptr, ptr %var.a, align 8
  %concat.lhs78 = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 0
  %concat.lhs79 = load i64, ptr %concat.lhs78, align 8
  %concat.lhs80 = and i64 %concat.lhs79, 281474976710655
  %str.tag81 = lshr i64 %concat.lhs79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

choice.exit45:                                    ; preds = %concat.tot.len151, %concat.tot.len73
  %choice.res = phi ptr [ %concat.str, %concat.tot.len73 ], [ %concat.str158, %concat.tot.len151 ]
  ret ptr %choice.res

str_gen_check52:                                  ; preds = %choice.then44
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %choice.then44
  %concat.lhs57 = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 1
  %concat.lhs58 = load ptr, ptr %concat.lhs57, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 0
  %concat.rhs59 = load i64, ptr %concat.rhs, align 8
  %concat.rhs60 = and i64 %concat.rhs59, 281474976710655
  %str.tag61 = lshr i64 %concat.rhs59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

str_stale54:                                      ; preds = %str_gen_check52
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

str_gen_check63:                                  ; preds = %str_ok53
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %str_ok53
  %concat.rhs68 = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 1
  %concat.rhs69 = load ptr, ptr %concat.rhs68, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs49, i64 %concat.rhs60)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len70

str_stale65:                                      ; preds = %str_gen_check63
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

concat.sum.len70:                                 ; preds = %str_overflow_abort, %str_ok64
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum71 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf72 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf72, label %str_overflow_abort74, label %concat.tot.len73

str_overflow_abort:                               ; preds = %str_ok64
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len70

concat.tot.len73:                                 ; preds = %str_overflow_abort74, %concat.sum.len70
  %arena.cur75 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %sum71)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs58, i64 %concat.lhs49, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs69, i64 %concat.rhs60, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur76 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit45

str_overflow_abort74:                             ; preds = %concat.sum.len70
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len73

str_gen_check83:                                  ; preds = %choice.else
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %choice.else
  %concat.lhs88 = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 1
  %concat.lhs89 = load ptr, ptr %concat.lhs88, align 8
  %concat.rhs90 = load i64, ptr @str.0.struct, align 8
  %concat.rhs91 = and i64 %concat.rhs90, 281474976710655
  %str.tag92 = lshr i64 %concat.rhs90, 48
  %str.immortal93 = icmp eq i64 %str.tag92, 0
  br i1 %str.immortal93, label %str_ok95, label %str_gen_check94

str_stale85:                                      ; preds = %str_gen_check83
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

str_gen_check94:                                  ; preds = %str_ok84
  %arena.cur97 = call ptr @dva_arena_current()
  %tag.valid98 = call i1 @dva_arena_validate_tag(ptr %arena.cur97, i64 %str.tag92)
  br i1 %tag.valid98, label %str_ok95, label %str_stale96

str_ok95:                                         ; preds = %str_stale96, %str_gen_check94, %str_ok84
  %concat.rhs99 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.sum.len100 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs80, i64 %concat.rhs91)
  %sum101 = extractvalue { i64, i1 } %concat.sum.len100, 0
  %ovf102 = extractvalue { i64, i1 } %concat.sum.len100, 1
  br i1 %ovf102, label %str_overflow_abort104, label %concat.sum.len103

str_stale96:                                      ; preds = %str_gen_check94
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok95

concat.sum.len103:                                ; preds = %str_overflow_abort104, %str_ok95
  %concat.tot.len105 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum101, i64 1)
  %sum106 = extractvalue { i64, i1 } %concat.tot.len105, 0
  %ovf107 = extractvalue { i64, i1 } %concat.tot.len105, 1
  br i1 %ovf107, label %str_overflow_abort109, label %concat.tot.len108

str_overflow_abort104:                            ; preds = %str_ok95
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len103

concat.tot.len108:                                ; preds = %str_overflow_abort109, %concat.sum.len103
  %arena.cur110 = call ptr @dva_arena_current()
  %concat.buf111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %sum106)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf111, ptr align 1 %concat.lhs89, i64 %concat.lhs80, i1 false)
  %concat.mid112 = getelementptr i8, ptr %concat.buf111, i64 %concat.lhs80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid112, ptr align 1 %concat.rhs99, i64 %concat.rhs91, i1 false)
  %concat.nul113 = getelementptr i8, ptr %concat.buf111, i64 %sum101
  store i8 0, ptr %concat.nul113, align 1
  %arena.cur114 = call ptr @dva_arena_current()
  %concat.str115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 16)
  %str.build.len.gep116 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 0
  store i64 %sum101, ptr %str.build.len.gep116, align 8
  %str.build.data.gep117 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 1
  store ptr %concat.buf111, ptr %str.build.data.gep117, align 8
  %var.load118 = load ptr, ptr %var.b, align 8
  %concat.lhs119 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 0
  %concat.lhs120 = load i64, ptr %concat.lhs119, align 8
  %concat.lhs121 = and i64 %concat.lhs120, 281474976710655
  %str.tag122 = lshr i64 %concat.lhs120, 48
  %str.immortal123 = icmp eq i64 %str.tag122, 0
  br i1 %str.immortal123, label %str_ok125, label %str_gen_check124

str_overflow_abort109:                            ; preds = %concat.sum.len103
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len108

str_gen_check124:                                 ; preds = %concat.tot.len108
  %arena.cur127 = call ptr @dva_arena_current()
  %tag.valid128 = call i1 @dva_arena_validate_tag(ptr %arena.cur127, i64 %str.tag122)
  br i1 %tag.valid128, label %str_ok125, label %str_stale126

str_ok125:                                        ; preds = %str_stale126, %str_gen_check124, %concat.tot.len108
  %concat.lhs129 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 1
  %concat.lhs130 = load ptr, ptr %concat.lhs129, align 8
  %concat.rhs131 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %concat.rhs132 = load i64, ptr %concat.rhs131, align 8
  %concat.rhs133 = and i64 %concat.rhs132, 281474976710655
  %str.tag134 = lshr i64 %concat.rhs132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_stale126:                                     ; preds = %str_gen_check124
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok125

str_gen_check136:                                 ; preds = %str_ok125
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag134)
  br i1 %tag.valid140, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %str_ok125
  %concat.rhs141 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %concat.rhs142 = load ptr, ptr %concat.rhs141, align 8
  %concat.sum.len143 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs121, i64 %concat.rhs133)
  %sum144 = extractvalue { i64, i1 } %concat.sum.len143, 0
  %ovf145 = extractvalue { i64, i1 } %concat.sum.len143, 1
  br i1 %ovf145, label %str_overflow_abort147, label %concat.sum.len146

str_stale138:                                     ; preds = %str_gen_check136
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

concat.sum.len146:                                ; preds = %str_overflow_abort147, %str_ok137
  %concat.tot.len148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum144, i64 1)
  %sum149 = extractvalue { i64, i1 } %concat.tot.len148, 0
  %ovf150 = extractvalue { i64, i1 } %concat.tot.len148, 1
  br i1 %ovf150, label %str_overflow_abort152, label %concat.tot.len151

str_overflow_abort147:                            ; preds = %str_ok137
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len146

concat.tot.len151:                                ; preds = %str_overflow_abort152, %concat.sum.len146
  %arena.cur153 = call ptr @dva_arena_current()
  %concat.buf154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 %sum149)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf154, ptr align 1 %concat.lhs130, i64 %concat.lhs121, i1 false)
  %concat.mid155 = getelementptr i8, ptr %concat.buf154, i64 %concat.lhs121
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid155, ptr align 1 %concat.rhs142, i64 %concat.rhs133, i1 false)
  %concat.nul156 = getelementptr i8, ptr %concat.buf154, i64 %sum144
  store i8 0, ptr %concat.nul156, align 1
  %arena.cur157 = call ptr @dva_arena_current()
  %concat.str158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 16)
  %str.build.len.gep159 = getelementptr inbounds { i64, ptr }, ptr %concat.str158, i32 0, i32 0
  store i64 %sum144, ptr %str.build.len.gep159, align 8
  %str.build.data.gep160 = getelementptr inbounds { i64, ptr }, ptr %concat.str158, i32 0, i32 1
  store ptr %concat.buf154, ptr %str.build.data.gep160, align 8
  br label %choice.exit45

str_overflow_abort152:                            ; preds = %concat.sum.len146
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len151
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"fs::parent"(ptr %0) #1 {
entry:
  %var._97 = alloca i64, align 8
  %var._i96 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.5 = alloca i64, align 8
  %loop.idx.5 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.3 = alloca i64, align 8
  %loop.idx.3 = alloca i64, align 8
  %"var.last_slash'" = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret ptr @str.1.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag7 = lshr i64 %eq.lhs.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check9:                                   ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.exit
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len14 = and i64 %eq.rhs.len, 281474976710655
  %str.tag15 = lshr i64 %eq.rhs.len, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

str_gen_check17:                                  ; preds = %str_ok10
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag15)
  br i1 %tag.valid21, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %str_ok10
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale19:                                      ; preds = %str_gen_check17
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18

str.eq.then:                                      ; preds = %str_ok18
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data22 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok18
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %str.eq.merge
  ret ptr @str.0.struct

choice.exit24:                                    ; preds = %ret.dead25, %str.eq.merge
  %var.load26 = load i64, ptr %var.len, align 8
  store i64 %var.load26, ptr %"var.end'", align 8
  %var.load27 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %str.tag30 = lshr i64 %s.read.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

ret.dead25:                                       ; No predecessors!
  br label %choice.exit24

str_gen_check32:                                  ; preds = %choice.exit24
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %choice.exit24
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data, align 8
  %var.load38 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load38, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale34:                                      ; preds = %str_gen_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

idx_big_check:                                    ; preds = %str_ok33
  %idx.big = icmp sge i64 %subtmp, %s.read.len29
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data37, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp39 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp39, label %and.2.then, label %and.2.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok33
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.2.then:                                       ; preds = %idx_ok
  %var.load40 = load i64, ptr %"var.end'", align 8
  %cmptmp41 = icmp sgt i64 %var.load40, 1
  br label %and.2.exit

and.2.else:                                       ; preds = %idx_ok
  br label %and.2.exit

and.2.exit:                                       ; preds = %and.2.else, %and.2.then
  %and.2.phi = phi i1 [ %cmptmp41, %and.2.then ], [ %cmptmp39, %and.2.else ]
  br i1 %and.2.phi, label %choice.then42, label %choice.exit43

choice.then42:                                    ; preds = %and.2.exit
  %var.load44 = load i64, ptr %"var.end'", align 8
  %subtmp45 = sub i64 %var.load44, 1
  store i64 %subtmp45, ptr %"var.end'", align 8
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.then42, %and.2.exit
  store i64 -1, ptr %"var.last_slash'", align 8
  %var.load46 = load i64, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.3, align 8
  br label %loop.header.3

loop.header.3:                                    ; preds = %loop.latch.3, %choice.exit43
  %counter.load = load i64, ptr %loop.idx.3, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load46
  br i1 %loop.cond, label %loop.body.3, label %loop.exit.nat.3

loop.body.3:                                      ; preds = %loop.header.3
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.3, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load47 = load i64, ptr %"var.end'", align 8
  %subtmp48 = sub i64 %var.load47, 1
  %var.load49 = load i64, ptr %var.i, align 8
  %subtmp50 = sub i64 %subtmp48, %var.load49
  store i64 %subtmp50, ptr %var.idx, align 8
  %var.load51 = load ptr, ptr %var.p, align 8
  %s.read.len52 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 0
  %s.read.len53 = load i64, ptr %s.read.len52, align 8
  %s.read.len54 = and i64 %s.read.len53, 281474976710655
  %str.tag55 = lshr i64 %s.read.len53, 48
  %str.immortal56 = icmp eq i64 %str.tag55, 0
  br i1 %str.immortal56, label %str_ok58, label %str_gen_check57

loop.exit.nat.3:                                  ; preds = %loop.header.3
  br label %loop.exit.3

loop.latch.3:                                     ; preds = %choice.exit77
  %step.val = load i64, ptr %loop.step.3, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.3, align 8
  br label %loop.header.3

loop.exit.3:                                      ; preds = %loop.exit.nat.3
  %var.load79 = load i64, ptr %"var.last_slash'", align 8
  %cmptmp80 = icmp slt i64 %var.load79, 0
  br i1 %cmptmp80, label %choice.then81, label %choice.else

str_gen_check57:                                  ; preds = %loop.body.3
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag55)
  br i1 %tag.valid61, label %str_ok58, label %str_stale59

str_ok58:                                         ; preds = %str_stale59, %str_gen_check57, %loop.body.3
  %s.read.data62 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 1
  %s.read.data63 = load ptr, ptr %s.read.data62, align 8
  %var.load64 = load i64, ptr %var.idx, align 8
  %idx.neg65 = icmp slt i64 %var.load64, 0
  br i1 %idx.neg65, label %idx_oob68, label %idx_big_check66

str_stale59:                                      ; preds = %str_gen_check57
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok58

idx_big_check66:                                  ; preds = %str_ok58
  %idx.big69 = icmp sge i64 %var.load64, %s.read.len54
  br i1 %idx.big69, label %idx_oob68, label %idx_ok67

idx_ok67:                                         ; preds = %idx_oob68, %idx_big_check66
  %s.byte.gep70 = getelementptr i8, ptr %s.read.data63, i64 %var.load64
  %s.byte71 = load i8, ptr %s.byte.gep70, align 1
  %s.byte.val72 = zext i8 %s.byte71 to i64
  %cmptmp73 = icmp eq i64 %s.byte.val72, 47
  br i1 %cmptmp73, label %and.4.then, label %and.4.else

idx_oob68:                                        ; preds = %idx_big_check66, %str_ok58
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok67

and.4.then:                                       ; preds = %idx_ok67
  %var.load74 = load i64, ptr %"var.last_slash'", align 8
  %cmptmp75 = icmp slt i64 %var.load74, 0
  br label %and.4.exit

and.4.else:                                       ; preds = %idx_ok67
  br label %and.4.exit

and.4.exit:                                       ; preds = %and.4.else, %and.4.then
  %and.4.phi = phi i1 [ %cmptmp75, %and.4.then ], [ %cmptmp73, %and.4.else ]
  br i1 %and.4.phi, label %choice.then76, label %choice.exit77

choice.then76:                                    ; preds = %and.4.exit
  %var.load78 = load i64, ptr %var.idx, align 8
  store i64 %var.load78, ptr %"var.last_slash'", align 8
  br label %choice.exit77

choice.exit77:                                    ; preds = %choice.then76, %and.4.exit
  br label %loop.latch.3

choice.then81:                                    ; preds = %loop.exit.3
  br label %choice.exit82

choice.else:                                      ; preds = %loop.exit.3
  %var.load83 = load i64, ptr %"var.last_slash'", align 8
  %cmptmp84 = icmp eq i64 %var.load83, 0
  br i1 %cmptmp84, label %choice.then85, label %choice.else86

choice.exit82:                                    ; preds = %choice.exit87, %choice.then81
  %choice.res161 = phi ptr [ @str.1.struct, %choice.then81 ], [ %choice.res, %choice.exit87 ]
  ret ptr %choice.res161

choice.then85:                                    ; preds = %choice.else
  br label %choice.exit87

choice.else86:                                    ; preds = %choice.else
  %var.load88 = load i64, ptr %"var.last_slash'", align 8
  %arena.cur89 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 24)
  %cap.neg = icmp slt i64 %var.load88, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load88
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len90

choice.exit87:                                    ; preds = %b.freeze.done, %choice.then85
  %choice.res = phi ptr [ @str.0.struct, %choice.then85 ], [ %builder.freeze, %b.freeze.done ]
  br label %choice.exit82

b.buf.len90:                                      ; preds = %str_overflow_abort, %choice.else86
  %arena.cur91 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load92 = load i64, ptr %"var.last_slash'", align 8
  store i64 0, ptr %loop.idx.5, align 8
  br label %loop.header.5

str_overflow_abort:                               ; preds = %choice.else86
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len90

loop.header.5:                                    ; preds = %loop.latch.5, %b.buf.len90
  %counter.load93 = load i64, ptr %loop.idx.5, align 8
  %loop.cond94 = icmp slt i64 %counter.load93, %var.load92
  br i1 %loop.cond94, label %loop.body.5, label %loop.exit.nat.5

loop.body.5:                                      ; preds = %loop.header.5
  %loop.rel.i95 = sub i64 %counter.load93, 0
  store i64 1, ptr %loop.step.5, align 8
  store i64 %loop.rel.i95, ptr %var._i96, align 8
  store i64 %counter.load93, ptr %var._97, align 8
  store i64 %counter.load93, ptr %var.k, align 8
  %var.load98 = load ptr, ptr %var.p, align 8
  %s.read.len99 = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 0
  %s.read.len100 = load i64, ptr %s.read.len99, align 8
  %s.read.len101 = and i64 %s.read.len100, 281474976710655
  %str.tag102 = lshr i64 %s.read.len100, 48
  %str.immortal103 = icmp eq i64 %str.tag102, 0
  br i1 %str.immortal103, label %str_ok105, label %str_gen_check104

loop.exit.nat.5:                                  ; preds = %loop.header.5
  br label %loop.exit.5

loop.latch.5:                                     ; preds = %b.push_done
  %step.val153 = load i64, ptr %loop.step.5, align 8
  %loop.next154 = add i64 %counter.load93, %step.val153
  store i64 %loop.next154, ptr %loop.idx.5, align 8
  br label %loop.header.5

loop.exit.5:                                      ; preds = %loop.exit.nat.5
  %var.load155 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 0
  %b.freeze.len156 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 1
  %b.freeze.data157 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check104:                                 ; preds = %loop.body.5
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %str.tag102)
  br i1 %tag.valid108, label %str_ok105, label %str_stale106

str_ok105:                                        ; preds = %str_stale106, %str_gen_check104, %loop.body.5
  %s.read.data109 = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 1
  %s.read.data110 = load ptr, ptr %s.read.data109, align 8
  %var.load111 = load i64, ptr %var.k, align 8
  %idx.neg112 = icmp slt i64 %var.load111, 0
  br i1 %idx.neg112, label %idx_oob115, label %idx_big_check113

str_stale106:                                     ; preds = %str_gen_check104
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok105

idx_big_check113:                                 ; preds = %str_ok105
  %idx.big116 = icmp sge i64 %var.load111, %s.read.len101
  br i1 %idx.big116, label %idx_oob115, label %idx_ok114

idx_ok114:                                        ; preds = %idx_oob115, %idx_big_check113
  %s.byte.gep117 = getelementptr i8, ptr %s.read.data110, i64 %var.load111
  %s.byte118 = load i8, ptr %s.byte.gep117, align 1
  %s.byte.val119 = zext i8 %s.byte118 to i64
  %b.load = load ptr, ptr %var.b, align 8
  %var.load120 = load ptr, ptr %var.p, align 8
  %s.read.len121 = getelementptr inbounds { i64, ptr }, ptr %var.load120, i32 0, i32 0
  %s.read.len122 = load i64, ptr %s.read.len121, align 8
  %s.read.len123 = and i64 %s.read.len122, 281474976710655
  %str.tag124 = lshr i64 %s.read.len122, 48
  %str.immortal125 = icmp eq i64 %str.tag124, 0
  br i1 %str.immortal125, label %str_ok127, label %str_gen_check126

idx_oob115:                                       ; preds = %idx_big_check113, %str_ok105
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok114

str_gen_check126:                                 ; preds = %idx_ok114
  %arena.cur129 = call ptr @dva_arena_current()
  %tag.valid130 = call i1 @dva_arena_validate_tag(ptr %arena.cur129, i64 %str.tag124)
  br i1 %tag.valid130, label %str_ok127, label %str_stale128

str_ok127:                                        ; preds = %str_stale128, %str_gen_check126, %idx_ok114
  %s.read.data131 = getelementptr inbounds { i64, ptr }, ptr %var.load120, i32 0, i32 1
  %s.read.data132 = load ptr, ptr %s.read.data131, align 8
  %var.load133 = load i64, ptr %var.k, align 8
  %idx.neg134 = icmp slt i64 %var.load133, 0
  br i1 %idx.neg134, label %idx_oob137, label %idx_big_check135

str_stale128:                                     ; preds = %str_gen_check126
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok127

idx_big_check135:                                 ; preds = %str_ok127
  %idx.big138 = icmp sge i64 %var.load133, %s.read.len123
  br i1 %idx.big138, label %idx_oob137, label %idx_ok136

idx_ok136:                                        ; preds = %idx_oob137, %idx_big_check135
  %s.byte.gep139 = getelementptr i8, ptr %s.read.data132, i64 %var.load133
  %s.byte140 = load i8, ptr %s.byte.gep139, align 1
  %s.byte.val141 = zext i8 %s.byte140 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val141, 0
  %b.b.le255 = icmp sle i64 %s.byte.val141, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob137:                                       ; preds = %idx_big_check135, %str_ok127
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok136

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok136
  %b.byte.i8 = trunc i64 %s.byte.val141 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len142 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap143 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data144 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len142, %b.cap143
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok136
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap143, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum145 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf146 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf146, label %str_overflow_abort148, label %b.new.buf.len147

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len147
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data150 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len151 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data150, i64 %b.cur.len151
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len151, 1
  %b.nul = getelementptr i8, ptr %b.cur.data150, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep152, align 8
  br label %loop.latch.5

b.new.buf.len147:                                 ; preds = %str_overflow_abort148, %b.grow
  %arena.cur149 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 %sum145)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data144, i64 %b.len142, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len142
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort148:                            ; preds = %b.grow
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len147

b.freeze.check:                                   ; preds = %loop.exit.5
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data157, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data157, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data157, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur158 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 %b.freeze.len156)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data157, i64 %b.freeze.len156, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.5
  %b.freeze.data159 = phi ptr [ %b.freeze.data157, %loop.exit.5 ], [ %b.freeze.data157, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur160 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len156, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data159, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit87
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"fs::basename"(ptr %0) #1 {
entry:
  %var._101 = alloca i64, align 8
  %var._i100 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.9 = alloca i64, align 8
  %loop.idx.9 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %"var.start'" = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.7 = alloca i64, align 8
  %loop.idx.7 = alloca i64, align 8
  %"var.last_slash'" = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret ptr @str.2.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag7 = lshr i64 %eq.lhs.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check9:                                   ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.exit
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len14 = and i64 %eq.rhs.len, 281474976710655
  %str.tag15 = lshr i64 %eq.rhs.len, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

str_gen_check17:                                  ; preds = %str_ok10
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag15)
  br i1 %tag.valid21, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %str_ok10
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale19:                                      ; preds = %str_gen_check17
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18

str.eq.then:                                      ; preds = %str_ok18
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data22 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok18
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %str.eq.merge
  ret ptr @str.0.struct

choice.exit24:                                    ; preds = %ret.dead25, %str.eq.merge
  %var.load26 = load i64, ptr %var.len, align 8
  store i64 %var.load26, ptr %"var.end'", align 8
  %var.load27 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %str.tag30 = lshr i64 %s.read.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

ret.dead25:                                       ; No predecessors!
  br label %choice.exit24

str_gen_check32:                                  ; preds = %choice.exit24
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %choice.exit24
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data, align 8
  %var.load38 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load38, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale34:                                      ; preds = %str_gen_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

idx_big_check:                                    ; preds = %str_ok33
  %idx.big = icmp sge i64 %subtmp, %s.read.len29
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data37, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp39 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp39, label %and.6.then, label %and.6.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok33
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.6.then:                                       ; preds = %idx_ok
  %var.load40 = load i64, ptr %"var.end'", align 8
  %cmptmp41 = icmp sgt i64 %var.load40, 1
  br label %and.6.exit

and.6.else:                                       ; preds = %idx_ok
  br label %and.6.exit

and.6.exit:                                       ; preds = %and.6.else, %and.6.then
  %and.6.phi = phi i1 [ %cmptmp41, %and.6.then ], [ %cmptmp39, %and.6.else ]
  br i1 %and.6.phi, label %choice.then42, label %choice.exit43

choice.then42:                                    ; preds = %and.6.exit
  %var.load44 = load i64, ptr %"var.end'", align 8
  %subtmp45 = sub i64 %var.load44, 1
  store i64 %subtmp45, ptr %"var.end'", align 8
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.then42, %and.6.exit
  store i64 -1, ptr %"var.last_slash'", align 8
  %var.load46 = load i64, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.header.7:                                    ; preds = %loop.latch.7, %choice.exit43
  %counter.load = load i64, ptr %loop.idx.7, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load46
  br i1 %loop.cond, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.7, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load47 = load i64, ptr %"var.end'", align 8
  %subtmp48 = sub i64 %var.load47, 1
  %var.load49 = load i64, ptr %var.i, align 8
  %subtmp50 = sub i64 %subtmp48, %var.load49
  store i64 %subtmp50, ptr %var.idx, align 8
  %var.load51 = load ptr, ptr %var.p, align 8
  %s.read.len52 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 0
  %s.read.len53 = load i64, ptr %s.read.len52, align 8
  %s.read.len54 = and i64 %s.read.len53, 281474976710655
  %str.tag55 = lshr i64 %s.read.len53, 48
  %str.immortal56 = icmp eq i64 %str.tag55, 0
  br i1 %str.immortal56, label %str_ok58, label %str_gen_check57

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %choice.exit77
  %step.val = load i64, ptr %loop.step.7, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %loop.exit.nat.7
  %var.load79 = load i64, ptr %"var.last_slash'", align 8
  %cmptmp80 = icmp slt i64 %var.load79, 0
  br i1 %cmptmp80, label %choice.then81, label %choice.else

str_gen_check57:                                  ; preds = %loop.body.7
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag55)
  br i1 %tag.valid61, label %str_ok58, label %str_stale59

str_ok58:                                         ; preds = %str_stale59, %str_gen_check57, %loop.body.7
  %s.read.data62 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 1
  %s.read.data63 = load ptr, ptr %s.read.data62, align 8
  %var.load64 = load i64, ptr %var.idx, align 8
  %idx.neg65 = icmp slt i64 %var.load64, 0
  br i1 %idx.neg65, label %idx_oob68, label %idx_big_check66

str_stale59:                                      ; preds = %str_gen_check57
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok58

idx_big_check66:                                  ; preds = %str_ok58
  %idx.big69 = icmp sge i64 %var.load64, %s.read.len54
  br i1 %idx.big69, label %idx_oob68, label %idx_ok67

idx_ok67:                                         ; preds = %idx_oob68, %idx_big_check66
  %s.byte.gep70 = getelementptr i8, ptr %s.read.data63, i64 %var.load64
  %s.byte71 = load i8, ptr %s.byte.gep70, align 1
  %s.byte.val72 = zext i8 %s.byte71 to i64
  %cmptmp73 = icmp eq i64 %s.byte.val72, 47
  br i1 %cmptmp73, label %and.8.then, label %and.8.else

idx_oob68:                                        ; preds = %idx_big_check66, %str_ok58
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok67

and.8.then:                                       ; preds = %idx_ok67
  %var.load74 = load i64, ptr %"var.last_slash'", align 8
  %cmptmp75 = icmp slt i64 %var.load74, 0
  br label %and.8.exit

and.8.else:                                       ; preds = %idx_ok67
  br label %and.8.exit

and.8.exit:                                       ; preds = %and.8.else, %and.8.then
  %and.8.phi = phi i1 [ %cmptmp75, %and.8.then ], [ %cmptmp73, %and.8.else ]
  br i1 %and.8.phi, label %choice.then76, label %choice.exit77

choice.then76:                                    ; preds = %and.8.exit
  %var.load78 = load i64, ptr %var.idx, align 8
  store i64 %var.load78, ptr %"var.last_slash'", align 8
  br label %choice.exit77

choice.exit77:                                    ; preds = %choice.then76, %and.8.exit
  br label %loop.latch.7

choice.then81:                                    ; preds = %loop.exit.7
  br label %choice.exit82

choice.else:                                      ; preds = %loop.exit.7
  %var.load83 = load i64, ptr %"var.last_slash'", align 8
  %addtmp = add i64 %var.load83, 1
  br label %choice.exit82

choice.exit82:                                    ; preds = %choice.else, %choice.then81
  %choice.res = phi i64 [ 0, %choice.then81 ], [ %addtmp, %choice.else ]
  store i64 %choice.res, ptr %"var.start'", align 8
  %var.load84 = load i64, ptr %"var.end'", align 8
  %var.load85 = load i64, ptr %"var.start'", align 8
  %subtmp86 = sub i64 %var.load84, %var.load85
  store i64 %subtmp86, ptr %var.n, align 8
  %var.load87 = load i64, ptr %var.n, align 8
  %cmptmp88 = icmp sle i64 %var.load87, 0
  br i1 %cmptmp88, label %choice.then89, label %choice.exit90

choice.then89:                                    ; preds = %choice.exit82
  ret ptr @str.2.struct

choice.exit90:                                    ; preds = %ret.dead91, %choice.exit82
  %var.load92 = load i64, ptr %var.n, align 8
  %arena.cur93 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 24)
  %cap.neg = icmp slt i64 %var.load92, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load92
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len94

ret.dead91:                                       ; No predecessors!
  br label %choice.exit90

b.buf.len94:                                      ; preds = %str_overflow_abort, %choice.exit90
  %arena.cur95 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load96 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.9, align 8
  br label %loop.header.9

str_overflow_abort:                               ; preds = %choice.exit90
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len94

loop.header.9:                                    ; preds = %loop.latch.9, %b.buf.len94
  %counter.load97 = load i64, ptr %loop.idx.9, align 8
  %loop.cond98 = icmp slt i64 %counter.load97, %var.load96
  br i1 %loop.cond98, label %loop.body.9, label %loop.exit.nat.9

loop.body.9:                                      ; preds = %loop.header.9
  %loop.rel.i99 = sub i64 %counter.load97, 0
  store i64 1, ptr %loop.step.9, align 8
  store i64 %loop.rel.i99, ptr %var._i100, align 8
  store i64 %counter.load97, ptr %var._101, align 8
  store i64 %counter.load97, ptr %var.k, align 8
  %var.load102 = load ptr, ptr %var.p, align 8
  %s.read.len103 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 0
  %s.read.len104 = load i64, ptr %s.read.len103, align 8
  %s.read.len105 = and i64 %s.read.len104, 281474976710655
  %str.tag106 = lshr i64 %s.read.len104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

loop.exit.nat.9:                                  ; preds = %loop.header.9
  br label %loop.exit.9

loop.latch.9:                                     ; preds = %b.push_done
  %step.val161 = load i64, ptr %loop.step.9, align 8
  %loop.next162 = add i64 %counter.load97, %step.val161
  store i64 %loop.next162, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.exit.9:                                      ; preds = %loop.exit.nat.9
  %var.load163 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load163, i32 0, i32 0
  %b.freeze.len164 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load163, i32 0, i32 1
  %b.freeze.data165 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check108:                                 ; preds = %loop.body.9
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag106)
  br i1 %tag.valid112, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %loop.body.9
  %s.read.data113 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 1
  %s.read.data114 = load ptr, ptr %s.read.data113, align 8
  %var.load115 = load i64, ptr %"var.start'", align 8
  %var.load116 = load i64, ptr %var.k, align 8
  %addtmp117 = add i64 %var.load115, %var.load116
  %idx.neg118 = icmp slt i64 %addtmp117, 0
  br i1 %idx.neg118, label %idx_oob121, label %idx_big_check119

str_stale110:                                     ; preds = %str_gen_check108
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

idx_big_check119:                                 ; preds = %str_ok109
  %idx.big122 = icmp sge i64 %addtmp117, %s.read.len105
  br i1 %idx.big122, label %idx_oob121, label %idx_ok120

idx_ok120:                                        ; preds = %idx_oob121, %idx_big_check119
  %s.byte.gep123 = getelementptr i8, ptr %s.read.data114, i64 %addtmp117
  %s.byte124 = load i8, ptr %s.byte.gep123, align 1
  %s.byte.val125 = zext i8 %s.byte124 to i64
  %b.load = load ptr, ptr %var.b, align 8
  %var.load126 = load ptr, ptr %var.p, align 8
  %s.read.len127 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 0
  %s.read.len128 = load i64, ptr %s.read.len127, align 8
  %s.read.len129 = and i64 %s.read.len128, 281474976710655
  %str.tag130 = lshr i64 %s.read.len128, 48
  %str.immortal131 = icmp eq i64 %str.tag130, 0
  br i1 %str.immortal131, label %str_ok133, label %str_gen_check132

idx_oob121:                                       ; preds = %idx_big_check119, %str_ok109
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok120

str_gen_check132:                                 ; preds = %idx_ok120
  %arena.cur135 = call ptr @dva_arena_current()
  %tag.valid136 = call i1 @dva_arena_validate_tag(ptr %arena.cur135, i64 %str.tag130)
  br i1 %tag.valid136, label %str_ok133, label %str_stale134

str_ok133:                                        ; preds = %str_stale134, %str_gen_check132, %idx_ok120
  %s.read.data137 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 1
  %s.read.data138 = load ptr, ptr %s.read.data137, align 8
  %var.load139 = load i64, ptr %"var.start'", align 8
  %var.load140 = load i64, ptr %var.k, align 8
  %addtmp141 = add i64 %var.load139, %var.load140
  %idx.neg142 = icmp slt i64 %addtmp141, 0
  br i1 %idx.neg142, label %idx_oob145, label %idx_big_check143

str_stale134:                                     ; preds = %str_gen_check132
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok133

idx_big_check143:                                 ; preds = %str_ok133
  %idx.big146 = icmp sge i64 %addtmp141, %s.read.len129
  br i1 %idx.big146, label %idx_oob145, label %idx_ok144

idx_ok144:                                        ; preds = %idx_oob145, %idx_big_check143
  %s.byte.gep147 = getelementptr i8, ptr %s.read.data138, i64 %addtmp141
  %s.byte148 = load i8, ptr %s.byte.gep147, align 1
  %s.byte.val149 = zext i8 %s.byte148 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val149, 0
  %b.b.le255 = icmp sle i64 %s.byte.val149, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob145:                                       ; preds = %idx_big_check143, %str_ok133
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok144

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok144
  %b.byte.i8 = trunc i64 %s.byte.val149 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len150 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap151 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data152 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len150, %b.cap151
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok144
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap151, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum153 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf154 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf154, label %str_overflow_abort156, label %b.new.buf.len155

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len155
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data158 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len159 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data158, i64 %b.cur.len159
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len159, 1
  %b.nul = getelementptr i8, ptr %b.cur.data158, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep160, align 8
  br label %loop.latch.9

b.new.buf.len155:                                 ; preds = %str_overflow_abort156, %b.grow
  %arena.cur157 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 %sum153)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data152, i64 %b.len150, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len150
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort156:                            ; preds = %b.grow
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len155

b.freeze.check:                                   ; preds = %loop.exit.9
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data165, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data165, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data165, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur166 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 %b.freeze.len164)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data165, i64 %b.freeze.len164, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.9
  %b.freeze.data167 = phi ptr [ %b.freeze.data165, %loop.exit.9 ], [ %b.freeze.data165, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur168 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len164, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data167, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load163, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load163, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load163, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"fs::ext"(ptr %0) #1 {
entry:
  %var._40 = alloca i64, align 8
  %var._i39 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.13 = alloca i64, align 8
  %loop.idx.13 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %"var.dot'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 -1, ptr %"var.dot'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.10, align 8
  br label %loop.header.10

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.10:                                   ; preds = %loop.latch.10, %str_ok
  %counter.load = load i64, ptr %loop.idx.10, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load4, 1
  %var.load5 = load i64, ptr %var.i, align 8
  %subtmp6 = sub i64 %subtmp, %var.load5
  store i64 %subtmp6, ptr %var.idx, align 8
  %var.load7 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.10, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  %var.load24 = load i64, ptr %"var.dot'", align 8
  %cmptmp25 = icmp slt i64 %var.load24, 0
  br i1 %cmptmp25, label %choice.then26, label %choice.else

str_gen_check12:                                  ; preds = %loop.body.10
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %loop.body.10
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale14:                                      ; preds = %str_gen_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

idx_big_check:                                    ; preds = %str_ok13
  %idx.big = icmp sge i64 %var.load18, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp, label %and.11.then, label %and.11.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.11.then:                                      ; preds = %idx_ok
  %var.load19 = load i64, ptr %"var.dot'", align 8
  %cmptmp20 = icmp slt i64 %var.load19, 0
  br label %and.11.exit

and.11.else:                                      ; preds = %idx_ok
  br label %and.11.exit

and.11.exit:                                      ; preds = %and.11.else, %and.11.then
  %and.11.phi = phi i1 [ %cmptmp20, %and.11.then ], [ %cmptmp, %and.11.else ]
  br i1 %and.11.phi, label %and.12.then, label %and.12.else

and.12.then:                                      ; preds = %and.11.exit
  %var.load21 = load i64, ptr %var.idx, align 8
  %cmptmp22 = icmp sgt i64 %var.load21, 0
  br label %and.12.exit

and.12.else:                                      ; preds = %and.11.exit
  br label %and.12.exit

and.12.exit:                                      ; preds = %and.12.else, %and.12.then
  %and.12.phi = phi i1 [ %cmptmp22, %and.12.then ], [ %and.11.phi, %and.12.else ]
  br i1 %and.12.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.12.exit
  %var.load23 = load i64, ptr %var.idx, align 8
  store i64 %var.load23, ptr %"var.dot'", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.12.exit
  br label %loop.latch.10

choice.then26:                                    ; preds = %loop.exit.10
  br label %choice.exit27

choice.else:                                      ; preds = %loop.exit.10
  %var.load28 = load i64, ptr %var.len, align 8
  %var.load29 = load i64, ptr %"var.dot'", align 8
  %subtmp30 = sub i64 %var.load28, %var.load29
  store i64 %subtmp30, ptr %var.n, align 8
  %var.load31 = load i64, ptr %var.n, align 8
  %arena.cur32 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 24)
  %cap.neg = icmp slt i64 %var.load31, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load31
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len33

choice.exit27:                                    ; preds = %b.freeze.done, %choice.then26
  %choice.res = phi ptr [ @str.2.struct, %choice.then26 ], [ %builder.freeze, %b.freeze.done ]
  ret ptr %choice.res

b.buf.len33:                                      ; preds = %str_overflow_abort, %choice.else
  %arena.cur34 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load35 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.13, align 8
  br label %loop.header.13

str_overflow_abort:                               ; preds = %choice.else
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len33

loop.header.13:                                   ; preds = %loop.latch.13, %b.buf.len33
  %counter.load36 = load i64, ptr %loop.idx.13, align 8
  %loop.cond37 = icmp slt i64 %counter.load36, %var.load35
  br i1 %loop.cond37, label %loop.body.13, label %loop.exit.nat.13

loop.body.13:                                     ; preds = %loop.header.13
  %loop.rel.i38 = sub i64 %counter.load36, 0
  store i64 1, ptr %loop.step.13, align 8
  store i64 %loop.rel.i38, ptr %var._i39, align 8
  store i64 %counter.load36, ptr %var._40, align 8
  store i64 %counter.load36, ptr %var.k, align 8
  %var.load41 = load ptr, ptr %var.name, align 8
  %s.read.len42 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %s.read.len43 = load i64, ptr %s.read.len42, align 8
  %s.read.len44 = and i64 %s.read.len43, 281474976710655
  %str.tag45 = lshr i64 %s.read.len43, 48
  %str.immortal46 = icmp eq i64 %str.tag45, 0
  br i1 %str.immortal46, label %str_ok48, label %str_gen_check47

loop.exit.nat.13:                                 ; preds = %loop.header.13
  br label %loop.exit.13

loop.latch.13:                                    ; preds = %b.push_done
  %step.val99 = load i64, ptr %loop.step.13, align 8
  %loop.next100 = add i64 %counter.load36, %step.val99
  store i64 %loop.next100, ptr %loop.idx.13, align 8
  br label %loop.header.13

loop.exit.13:                                     ; preds = %loop.exit.nat.13
  %var.load101 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load101, i32 0, i32 0
  %b.freeze.len102 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load101, i32 0, i32 1
  %b.freeze.data103 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check47:                                  ; preds = %loop.body.13
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid51 = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag45)
  br i1 %tag.valid51, label %str_ok48, label %str_stale49

str_ok48:                                         ; preds = %str_stale49, %str_gen_check47, %loop.body.13
  %s.read.data52 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %s.read.data53 = load ptr, ptr %s.read.data52, align 8
  %var.load54 = load i64, ptr %"var.dot'", align 8
  %var.load55 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load54, %var.load55
  %idx.neg56 = icmp slt i64 %addtmp, 0
  br i1 %idx.neg56, label %idx_oob59, label %idx_big_check57

str_stale49:                                      ; preds = %str_gen_check47
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok48

idx_big_check57:                                  ; preds = %str_ok48
  %idx.big60 = icmp sge i64 %addtmp, %s.read.len44
  br i1 %idx.big60, label %idx_oob59, label %idx_ok58

idx_ok58:                                         ; preds = %idx_oob59, %idx_big_check57
  %s.byte.gep61 = getelementptr i8, ptr %s.read.data53, i64 %addtmp
  %s.byte62 = load i8, ptr %s.byte.gep61, align 1
  %s.byte.val63 = zext i8 %s.byte62 to i64
  %b.load = load ptr, ptr %var.b, align 8
  %var.load64 = load ptr, ptr %var.name, align 8
  %s.read.len65 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 0
  %s.read.len66 = load i64, ptr %s.read.len65, align 8
  %s.read.len67 = and i64 %s.read.len66, 281474976710655
  %str.tag68 = lshr i64 %s.read.len66, 48
  %str.immortal69 = icmp eq i64 %str.tag68, 0
  br i1 %str.immortal69, label %str_ok71, label %str_gen_check70

idx_oob59:                                        ; preds = %idx_big_check57, %str_ok48
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok58

str_gen_check70:                                  ; preds = %idx_ok58
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid74 = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %str.tag68)
  br i1 %tag.valid74, label %str_ok71, label %str_stale72

str_ok71:                                         ; preds = %str_stale72, %str_gen_check70, %idx_ok58
  %s.read.data75 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 1
  %s.read.data76 = load ptr, ptr %s.read.data75, align 8
  %var.load77 = load i64, ptr %"var.dot'", align 8
  %var.load78 = load i64, ptr %var.k, align 8
  %addtmp79 = add i64 %var.load77, %var.load78
  %idx.neg80 = icmp slt i64 %addtmp79, 0
  br i1 %idx.neg80, label %idx_oob83, label %idx_big_check81

str_stale72:                                      ; preds = %str_gen_check70
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok71

idx_big_check81:                                  ; preds = %str_ok71
  %idx.big84 = icmp sge i64 %addtmp79, %s.read.len67
  br i1 %idx.big84, label %idx_oob83, label %idx_ok82

idx_ok82:                                         ; preds = %idx_oob83, %idx_big_check81
  %s.byte.gep85 = getelementptr i8, ptr %s.read.data76, i64 %addtmp79
  %s.byte86 = load i8, ptr %s.byte.gep85, align 1
  %s.byte.val87 = zext i8 %s.byte86 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val87, 0
  %b.b.le255 = icmp sle i64 %s.byte.val87, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob83:                                        ; preds = %idx_big_check81, %str_ok71
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok82

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok82
  %b.byte.i8 = trunc i64 %s.byte.val87 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len88 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap89 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data90 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len88, %b.cap89
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok82
  %9 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap89, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum91 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf92 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf92, label %str_overflow_abort94, label %b.new.buf.len93

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len93
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data96 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len97 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data96, i64 %b.cur.len97
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len97, 1
  %b.nul = getelementptr i8, ptr %b.cur.data96, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep98, align 8
  br label %loop.latch.13

b.new.buf.len93:                                  ; preds = %str_overflow_abort94, %b.grow
  %arena.cur95 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 %sum91)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data90, i64 %b.len88, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len88
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort94:                             ; preds = %b.grow
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len93

b.freeze.check:                                   ; preds = %loop.exit.13
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data103, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data103, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data103, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur104 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 %b.freeze.len102)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data103, i64 %b.freeze.len102, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.13
  %b.freeze.data105 = phi ptr [ %b.freeze.data103, %loop.exit.13 ], [ %b.freeze.data103, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur106 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len102, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data105, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load101, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load101, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load101, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit27
}

define ptr @"fs::cwd"() #1 {
entry:
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

b.buf.len1:                                       ; preds = %str_overflow_abort, %entry
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
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  br label %choice.exit

choice.else:                                      ; preds = %b.buf.len1
  %var.load6 = load ptr, ptr %var.res, align 8
  %call.res7 = call ptr @"sys::c_str"(ptr %var.load6)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.1.struct, %choice.then ], [ %call.res7, %choice.else ]
  ret ptr %choice.res
}

declare ptr @"sys::c_str"(ptr) #1

define ptr @"fs::home"() #1 {
entry:
  %var.h = alloca ptr, align 8
  %arg.str.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %arg.str.ptr1 = load i64, ptr @str.3.struct, align 8
  %arg.str.ptr2 = and i64 %arg.str.ptr1, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr, i64 %arg.str.ptr2
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr3, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr3:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr2, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len4

nulmerge:                                         ; preds = %nulcopy.len4, %arg.str.ptr3
  %arg.str.ptr6 = phi ptr [ %arg.str.ptr, %arg.str.ptr3 ], [ %nulcopy.buf, %nulcopy.len4 ]
  %call.res = call ptr @getenv(ptr %arg.str.ptr6)
  store ptr %call.res, ptr %var.h, align 8
  %var.load = load ptr, ptr %var.h, align 8
  %var.load7 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load to i64
  %ptr.int.r = ptrtoint ptr %var.load7 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len4:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur5 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr, i64 %arg.str.ptr2, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr2
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len4

choice.then:                                      ; preds = %nulmerge
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  %var.load8 = load ptr, ptr %var.h, align 8
  %call.res9 = call ptr @"sys::c_str"(ptr %var.load8)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ %call.res9, %choice.else ]
  ret ptr %choice.res
}

define ptr @"fs::resolve"(ptr %0) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %call.res = call ptr @"fs::cwd"()
  ret ptr %call.res

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag7 = lshr i64 %eq.lhs.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check9:                                   ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.exit
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len14 = and i64 %eq.rhs.len, 281474976710655
  %str.tag15 = lshr i64 %eq.rhs.len, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

str_gen_check17:                                  ; preds = %str_ok10
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag15)
  br i1 %tag.valid21, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %str_ok10
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale19:                                      ; preds = %str_gen_check17
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18

str.eq.then:                                      ; preds = %str_ok18
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data22 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok18
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %str.eq.merge
  %call.res25 = call ptr @"fs::home"()
  ret ptr %call.res25

choice.exit24:                                    ; preds = %ret.dead26, %str.eq.merge
  %var.load27 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %str.tag30 = lshr i64 %s.read.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

ret.dead26:                                       ; No predecessors!
  br label %choice.exit24

str_gen_check32:                                  ; preds = %choice.exit24
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %choice.exit24
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len29, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len29
  %final.start = select i1 %start.gt.len, i64 %s.read.len29, i64 %c.start.0
  %rel.end = add i64 %s.read.len29, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len29
  %final.end = select i1 %end.gt.len, i64 %s.read.len29, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data37, i64 %final.start
  %arena.cur38 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len39 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len40 = load i64, ptr %eq.lhs.len39, align 8
  %eq.lhs.len41 = and i64 %eq.lhs.len40, 281474976710655
  %str.tag42 = lshr i64 %eq.lhs.len40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale34:                                      ; preds = %str_gen_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str_gen_check44:                                  ; preds = %str_ok33
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag42)
  br i1 %tag.valid48, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok33
  %eq.rhs.len49 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len50 = and i64 %eq.rhs.len49, 281474976710655
  %str.tag51 = lshr i64 %eq.rhs.len49, 48
  %str.immortal52 = icmp eq i64 %str.tag51, 0
  br i1 %str.immortal52, label %str_ok54, label %str_gen_check53

str_stale46:                                      ; preds = %str_gen_check44
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

str_gen_check53:                                  ; preds = %str_ok45
  %arena.cur56 = call ptr @dva_arena_current()
  %tag.valid57 = call i1 @dva_arena_validate_tag(ptr %arena.cur56, i64 %str.tag51)
  br i1 %tag.valid57, label %str_ok54, label %str_stale55

str_ok54:                                         ; preds = %str_stale55, %str_gen_check53, %str_ok45
  %eq.len58 = icmp eq i64 %eq.lhs.len41, %eq.rhs.len50
  br i1 %eq.len58, label %str.eq.then59, label %str.eq.else60

str_stale55:                                      ; preds = %str_gen_check53
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok54

str.eq.then59:                                    ; preds = %str_ok54
  %eq.lhs.data62 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data63 = load ptr, ptr %eq.lhs.data62, align 8
  %eq.rhs.data64 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp65 = call i32 @memcmp(ptr %eq.lhs.data63, ptr %eq.rhs.data64, i64 %eq.lhs.len41)
  %eq.cmp.zero66 = icmp eq i32 %eq.memcmp65, 0
  br label %str.eq.merge61

str.eq.else60:                                    ; preds = %str_ok54
  br label %str.eq.merge61

str.eq.merge61:                                   ; preds = %str.eq.else60, %str.eq.then59
  %str.eq.result67 = phi i1 [ %eq.cmp.zero66, %str.eq.then59 ], [ false, %str.eq.else60 ]
  br i1 %str.eq.result67, label %choice.then68, label %choice.exit69

choice.then68:                                    ; preds = %str.eq.merge61
  %call.res70 = call ptr @"fs::home"()
  %var.load71 = load ptr, ptr %var.p, align 8
  %s.read.len72 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %s.read.len73 = load i64, ptr %s.read.len72, align 8
  %s.read.len74 = and i64 %s.read.len73, 281474976710655
  %str.tag75 = lshr i64 %s.read.len73, 48
  %str.immortal76 = icmp eq i64 %str.tag75, 0
  br i1 %str.immortal76, label %str_ok78, label %str_gen_check77

choice.exit69:                                    ; preds = %ret.dead105, %str.eq.merge61
  %var.load106 = load ptr, ptr %var.p, align 8
  %call.res107 = call i1 @"fs::is_abs"(ptr %var.load106)
  br i1 %call.res107, label %choice.then108, label %choice.else

str_gen_check77:                                  ; preds = %choice.then68
  %arena.cur80 = call ptr @dva_arena_current()
  %tag.valid81 = call i1 @dva_arena_validate_tag(ptr %arena.cur80, i64 %str.tag75)
  br i1 %tag.valid81, label %str_ok78, label %str_stale79

str_ok78:                                         ; preds = %str_stale79, %str_gen_check77, %choice.then68
  %s.read.data82 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 1
  %s.read.data83 = load ptr, ptr %s.read.data82, align 8
  %rel.start84 = add i64 %s.read.len74, 2
  %norm.start85 = select i1 false, i64 %rel.start84, i64 2
  %start.lt.086 = icmp slt i64 %norm.start85, 0
  %c.start.087 = select i1 %start.lt.086, i64 0, i64 %norm.start85
  %start.gt.len88 = icmp sgt i64 %c.start.087, %s.read.len74
  %final.start89 = select i1 %start.gt.len88, i64 %s.read.len74, i64 %c.start.087
  %end.is_neg = icmp slt i64 %s.read.len74, 0
  %rel.end90 = add i64 %s.read.len74, %s.read.len74
  %norm.end91 = select i1 %end.is_neg, i64 %rel.end90, i64 %s.read.len74
  %end.lt.092 = icmp slt i64 %norm.end91, 0
  %c.end.093 = select i1 %end.lt.092, i64 0, i64 %norm.end91
  %end.gt.len94 = icmp sgt i64 %c.end.093, %s.read.len74
  %final.end95 = select i1 %end.gt.len94, i64 %s.read.len74, i64 %c.end.093
  %view.empty96 = icmp sle i64 %final.end95, %final.start89
  %view.len.sub97 = sub i64 %final.end95, %final.start89
  %view.len98 = select i1 %view.empty96, i64 0, i64 %view.len.sub97
  %view.data99 = getelementptr i8, ptr %s.read.data83, i64 %final.start89
  %arena.cur100 = call ptr @dva_arena_current()
  %str.view101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %str.view101, i32 0, i32 0
  store i64 %view.len98, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %str.view101, i32 0, i32 1
  store ptr %view.data99, ptr %str.build.data.gep103, align 8
  %call.res104 = call ptr @"fs::join"(ptr %call.res70, ptr %str.view101)
  ret ptr %call.res104

str_stale79:                                      ; preds = %str_gen_check77
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok78

ret.dead105:                                      ; No predecessors!
  br label %choice.exit69

choice.then108:                                   ; preds = %choice.exit69
  %var.load110 = load ptr, ptr %var.p, align 8
  br label %choice.exit109

choice.else:                                      ; preds = %choice.exit69
  %call.res111 = call ptr @"fs::cwd"()
  %var.load112 = load ptr, ptr %var.p, align 8
  %call.res113 = call ptr @"fs::join"(ptr %call.res111, ptr %var.load112)
  br label %choice.exit109

choice.exit109:                                   ; preds = %choice.else, %choice.then108
  %choice.res = phi ptr [ %var.load110, %choice.then108 ], [ %call.res113, %choice.else ]
  store ptr %choice.res, ptr %var.full, align 8
  %var.load114 = load ptr, ptr %var.full, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load114, i32 0, i32 1
  %arg.str.ptr115 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr116 = getelementptr inbounds { i64, ptr }, ptr %var.load114, i32 0, i32 0
  %arg.str.ptr117 = load i64, ptr %arg.str.ptr116, align 8
  %arg.str.ptr118 = and i64 %arg.str.ptr117, 281474976710655
  %str.tag119 = lshr i64 %arg.str.ptr117, 48
  %str.immortal120 = icmp eq i64 %str.tag119, 0
  br i1 %str.immortal120, label %str_ok122, label %str_gen_check121

str_gen_check121:                                 ; preds = %choice.exit109
  %arena.cur124 = call ptr @dva_arena_current()
  %tag.valid125 = call i1 @dva_arena_validate_tag(ptr %arena.cur124, i64 %str.tag119)
  br i1 %tag.valid125, label %str_ok122, label %str_stale123

str_ok122:                                        ; preds = %str_stale123, %str_gen_check121, %choice.exit109
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr115, i64 %arg.str.ptr118
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr126, label %nulcopy

str_stale123:                                     ; preds = %str_gen_check121
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok122

arg.str.ptr126:                                   ; preds = %str_ok122
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok122
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr118, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len127

nulmerge:                                         ; preds = %nulcopy.len127, %arg.str.ptr126
  %arg.str.ptr129 = phi ptr [ %arg.str.ptr115, %arg.str.ptr126 ], [ %nulcopy.buf, %nulcopy.len127 ]
  %var.load130 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int = ptrtoint ptr %var.load130 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res131 = call ptr @realpath(ptr %arg.str.ptr129, ptr %addr.ffi.clean)
  store ptr %call.res131, ptr %var.real, align 8
  %var.load132 = load ptr, ptr %var.real, align 8
  %var.load133 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load132 to i64
  %ptr.int.r = ptrtoint ptr %var.load133 to i64
  %cmptmp134 = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp134, label %choice.then135, label %choice.else136

nulcopy.len127:                                   ; preds = %str_overflow_abort, %nulcopy
  %arena.cur128 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr115, i64 %arg.str.ptr118, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr118
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len127

choice.then135:                                   ; preds = %nulmerge
  %var.load138 = load ptr, ptr %var.full, align 8
  br label %choice.exit137

choice.else136:                                   ; preds = %nulmerge
  %var.load139 = load ptr, ptr %var.real, align 8
  %call.res140 = call ptr @"sys::c_str"(ptr %var.load139)
  store ptr %call.res140, ptr %var.s, align 8
  %var.load141 = load ptr, ptr %var.real, align 8
  %addr.ffi.int142 = ptrtoint ptr %var.load141 to i64
  %addr.ffi.masked143 = and i64 %addr.ffi.int142, 281474976710655
  %addr.ffi.clean144 = inttoptr i64 %addr.ffi.masked143 to ptr
  call void @free(ptr %addr.ffi.clean144)
  %var.load145 = load ptr, ptr %var.s, align 8
  br label %choice.exit137

choice.exit137:                                   ; preds = %choice.else136, %choice.then135
  %choice.res146 = phi ptr [ %var.load138, %choice.then135 ], [ %var.load145, %choice.else136 ]
  ret ptr %choice.res146
}

define ptr @"fs::join_path"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res = call ptr @"fs::join"(ptr %var.load, ptr %var.load1)
  ret ptr %call.res
}

define ptr @"fs::parent_path"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"fs::parent"(ptr %var.load)
  ret ptr %call.res
}

define ptr @"fs::resolve_path"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"fs::resolve"(ptr %var.load)
  ret ptr %call.res
}

define ptr @"fs::get_home"() #1 {
entry:
  %call.res = call ptr @"fs::home"()
  ret ptr %call.res
}

define ptr @"fs::get_ext"(ptr %0) #1 {
entry:
  %var._42 = alloca i64, align 8
  %var._i41 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.17 = alloca i64, align 8
  %loop.idx.17 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.14 = alloca i64, align 8
  %loop.idx.14 = alloca i64, align 8
  %"var.last_dot'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 -1, ptr %"var.last_dot'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.14, align 8
  br label %loop.header.14

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.14:                                   ; preds = %loop.latch.14, %str_ok
  %counter.load = load i64, ptr %loop.idx.14, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.14, label %loop.exit.nat.14

loop.body.14:                                     ; preds = %loop.header.14
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.14, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load4, 1
  %var.load5 = load i64, ptr %var.i, align 8
  %subtmp6 = sub i64 %subtmp, %var.load5
  store i64 %subtmp6, ptr %var.idx, align 8
  %var.load7 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

loop.exit.nat.14:                                 ; preds = %loop.header.14
  br label %loop.exit.14

loop.latch.14:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.14, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.14, align 8
  br label %loop.header.14

loop.exit.14:                                     ; preds = %loop.exit.nat.14
  %var.load22 = load i64, ptr %"var.last_dot'", align 8
  %cmptmp23 = icmp sgt i64 %var.load22, 0
  br i1 %cmptmp23, label %and.16.then, label %and.16.else

str_gen_check12:                                  ; preds = %loop.body.14
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %loop.body.14
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale14:                                      ; preds = %str_gen_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

idx_big_check:                                    ; preds = %str_ok13
  %idx.big = icmp sge i64 %var.load18, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp, label %and.15.then, label %and.15.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.15.then:                                      ; preds = %idx_ok
  %var.load19 = load i64, ptr %"var.last_dot'", align 8
  %cmptmp20 = icmp slt i64 %var.load19, 0
  br label %and.15.exit

and.15.else:                                      ; preds = %idx_ok
  br label %and.15.exit

and.15.exit:                                      ; preds = %and.15.else, %and.15.then
  %and.15.phi = phi i1 [ %cmptmp20, %and.15.then ], [ %cmptmp, %and.15.else ]
  br i1 %and.15.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.15.exit
  %var.load21 = load i64, ptr %var.idx, align 8
  store i64 %var.load21, ptr %"var.last_dot'", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.15.exit
  br label %loop.latch.14

and.16.then:                                      ; preds = %loop.exit.14
  %var.load24 = load i64, ptr %"var.last_dot'", align 8
  %var.load25 = load i64, ptr %var.len, align 8
  %subtmp26 = sub i64 %var.load25, 1
  %cmptmp27 = icmp slt i64 %var.load24, %subtmp26
  br label %and.16.exit

and.16.else:                                      ; preds = %loop.exit.14
  br label %and.16.exit

and.16.exit:                                      ; preds = %and.16.else, %and.16.then
  %and.16.phi = phi i1 [ %cmptmp27, %and.16.then ], [ %cmptmp23, %and.16.else ]
  br i1 %and.16.phi, label %choice.then28, label %choice.else

choice.then28:                                    ; preds = %and.16.exit
  %var.load30 = load i64, ptr %var.len, align 8
  %var.load31 = load i64, ptr %"var.last_dot'", align 8
  %addtmp = add i64 %var.load31, 1
  %subtmp32 = sub i64 %var.load30, %addtmp
  store i64 %subtmp32, ptr %var.n, align 8
  %var.load33 = load i64, ptr %var.n, align 8
  %arena.cur34 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 24)
  %cap.neg = icmp slt i64 %var.load33, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load33
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len35

choice.else:                                      ; preds = %and.16.exit
  br label %choice.exit29

choice.exit29:                                    ; preds = %choice.else, %b.freeze.done
  %choice.res = phi ptr [ %builder.freeze, %b.freeze.done ], [ @str.2.struct, %choice.else ]
  ret ptr %choice.res

b.buf.len35:                                      ; preds = %str_overflow_abort, %choice.then28
  %arena.cur36 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load37 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.17, align 8
  br label %loop.header.17

str_overflow_abort:                               ; preds = %choice.then28
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len35

loop.header.17:                                   ; preds = %loop.latch.17, %b.buf.len35
  %counter.load38 = load i64, ptr %loop.idx.17, align 8
  %loop.cond39 = icmp slt i64 %counter.load38, %var.load37
  br i1 %loop.cond39, label %loop.body.17, label %loop.exit.nat.17

loop.body.17:                                     ; preds = %loop.header.17
  %loop.rel.i40 = sub i64 %counter.load38, 0
  store i64 1, ptr %loop.step.17, align 8
  store i64 %loop.rel.i40, ptr %var._i41, align 8
  store i64 %counter.load38, ptr %var._42, align 8
  store i64 %counter.load38, ptr %var.k, align 8
  %var.load43 = load ptr, ptr %var.name, align 8
  %s.read.len44 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %s.read.len45 = load i64, ptr %s.read.len44, align 8
  %s.read.len46 = and i64 %s.read.len45, 281474976710655
  %str.tag47 = lshr i64 %s.read.len45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

loop.exit.nat.17:                                 ; preds = %loop.header.17
  br label %loop.exit.17

loop.latch.17:                                    ; preds = %b.push_done
  %step.val104 = load i64, ptr %loop.step.17, align 8
  %loop.next105 = add i64 %counter.load38, %step.val104
  store i64 %loop.next105, ptr %loop.idx.17, align 8
  br label %loop.header.17

loop.exit.17:                                     ; preds = %loop.exit.nat.17
  %var.load106 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load106, i32 0, i32 0
  %b.freeze.len107 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load106, i32 0, i32 1
  %b.freeze.data108 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check49:                                  ; preds = %loop.body.17
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %loop.body.17
  %s.read.data54 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %s.read.data55 = load ptr, ptr %s.read.data54, align 8
  %var.load56 = load i64, ptr %"var.last_dot'", align 8
  %addtmp57 = add i64 %var.load56, 1
  %var.load58 = load i64, ptr %var.k, align 8
  %addtmp59 = add i64 %addtmp57, %var.load58
  %idx.neg60 = icmp slt i64 %addtmp59, 0
  br i1 %idx.neg60, label %idx_oob63, label %idx_big_check61

str_stale51:                                      ; preds = %str_gen_check49
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

idx_big_check61:                                  ; preds = %str_ok50
  %idx.big64 = icmp sge i64 %addtmp59, %s.read.len46
  br i1 %idx.big64, label %idx_oob63, label %idx_ok62

idx_ok62:                                         ; preds = %idx_oob63, %idx_big_check61
  %s.byte.gep65 = getelementptr i8, ptr %s.read.data55, i64 %addtmp59
  %s.byte66 = load i8, ptr %s.byte.gep65, align 1
  %s.byte.val67 = zext i8 %s.byte66 to i64
  %b.load = load ptr, ptr %var.b, align 8
  %var.load68 = load ptr, ptr %var.name, align 8
  %s.read.len69 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 0
  %s.read.len70 = load i64, ptr %s.read.len69, align 8
  %s.read.len71 = and i64 %s.read.len70, 281474976710655
  %str.tag72 = lshr i64 %s.read.len70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

idx_oob63:                                        ; preds = %idx_big_check61, %str_ok50
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok62

str_gen_check74:                                  ; preds = %idx_ok62
  %arena.cur77 = call ptr @dva_arena_current()
  %tag.valid78 = call i1 @dva_arena_validate_tag(ptr %arena.cur77, i64 %str.tag72)
  br i1 %tag.valid78, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %idx_ok62
  %s.read.data79 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 1
  %s.read.data80 = load ptr, ptr %s.read.data79, align 8
  %var.load81 = load i64, ptr %"var.last_dot'", align 8
  %addtmp82 = add i64 %var.load81, 1
  %var.load83 = load i64, ptr %var.k, align 8
  %addtmp84 = add i64 %addtmp82, %var.load83
  %idx.neg85 = icmp slt i64 %addtmp84, 0
  br i1 %idx.neg85, label %idx_oob88, label %idx_big_check86

str_stale76:                                      ; preds = %str_gen_check74
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

idx_big_check86:                                  ; preds = %str_ok75
  %idx.big89 = icmp sge i64 %addtmp84, %s.read.len71
  br i1 %idx.big89, label %idx_oob88, label %idx_ok87

idx_ok87:                                         ; preds = %idx_oob88, %idx_big_check86
  %s.byte.gep90 = getelementptr i8, ptr %s.read.data80, i64 %addtmp84
  %s.byte91 = load i8, ptr %s.byte.gep90, align 1
  %s.byte.val92 = zext i8 %s.byte91 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val92, 0
  %b.b.le255 = icmp sle i64 %s.byte.val92, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob88:                                        ; preds = %idx_big_check86, %str_ok75
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok87

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok87
  %b.byte.i8 = trunc i64 %s.byte.val92 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len93 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap94 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data95 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len93, %b.cap94
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok87
  %9 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap94, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum96 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf97 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf97, label %str_overflow_abort99, label %b.new.buf.len98

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len98
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data101 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len102 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data101, i64 %b.cur.len102
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len102, 1
  %b.nul = getelementptr i8, ptr %b.cur.data101, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep103, align 8
  br label %loop.latch.17

b.new.buf.len98:                                  ; preds = %str_overflow_abort99, %b.grow
  %arena.cur100 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 %sum96)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data95, i64 %b.len93, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len93
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort99:                             ; preds = %b.grow
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len98

b.freeze.check:                                   ; preds = %loop.exit.17
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data108, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data108, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data108, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur109 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 %b.freeze.len107)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data108, i64 %b.freeze.len107, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.17
  %b.freeze.data110 = phi ptr [ %b.freeze.data108, %loop.exit.17 ], [ %b.freeze.data108, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur111 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len107, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data110, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load106, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load106, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load106, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit29
}

define i64 @"fs::stat_mode"(ptr %0) #1 {
entry:
  %"var.s'" = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  store ptr %var.load, ptr %"var.s'", align 8
  %call.res = call i1 @"libc::is_darwin"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %"var.s'", align 8
  %ptr.int.l = ptrtoint ptr %var.load1 to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load2, i32 0, i32 3
  %fld.load = load i32, ptr %fld.gep, align 4
  %coerce.zext3 = zext i32 %fld.load to i64
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr_ok
  %choice.res = phi i64 [ %coerce.zext, %addr_ok ], [ %coerce.zext3, %choice.else ]
  ret i64 %choice.res

addr_gen_check:                                   ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then
  %raw.load = load volatile i16, ptr %raw.clean.ptr, align 2
  %coerce.zext = zext i16 %raw.load to i64
  br label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

declare i1 @"libc::is_darwin"() #1

define i64 @"fs::stat_size"(ptr %0) #1 {
entry:
  %"var.s'" = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  store ptr %var.load, ptr %"var.s'", align 8
  %call.res = call i1 @"libc::is_darwin"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %"var.s'", align 8
  %ptr.int.l = ptrtoint ptr %var.load1 to i64
  %addtmp = add i64 %ptr.int.l, 72
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load2, i32 0, i32 8
  %fld.load = load i64, ptr %fld.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr_ok
  %choice.res = phi i64 [ %raw.load, %addr_ok ], [ %fld.load, %choice.else ]
  ret i64 %choice.res

addr_gen_check:                                   ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define i64 @"fs::stat_mtime_sec"(ptr %0) #1 {
entry:
  %"var.s'" = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  store ptr %var.load, ptr %"var.s'", align 8
  %call.res = call i1 @"libc::is_darwin"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %"var.s'", align 8
  %ptr.int.l = ptrtoint ptr %var.load1 to i64
  %addtmp = add i64 %ptr.int.l, 40
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load2, i32 0, i32 13
  %fld.load = load i64, ptr %fld.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr_ok
  %choice.res = phi i64 [ %raw.load, %addr_ok ], [ %fld.load, %choice.else ]
  ret i64 %choice.res

addr_gen_check:                                   ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define i64 @"fs::stat_mtime_nsec"(ptr %0) #1 {
entry:
  %"var.s'" = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  store ptr %var.load, ptr %"var.s'", align 8
  %call.res = call i1 @"libc::is_darwin"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %"var.s'", align 8
  %ptr.int.l = ptrtoint ptr %var.load1 to i64
  %addtmp = add i64 %ptr.int.l, 48
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load2, i32 0, i32 14
  %fld.load = load i64, ptr %fld.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr_ok
  %choice.res = phi i64 [ %raw.load, %addr_ok ], [ %fld.load, %choice.else ]
  ret i64 %choice.res

addr_gen_check:                                   ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define i64 @"fs::stat_atime_sec"(ptr %0) #1 {
entry:
  %"var.s'" = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  store ptr %var.load, ptr %"var.s'", align 8
  %call.res = call i1 @"libc::is_darwin"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %"var.s'", align 8
  %ptr.int.l = ptrtoint ptr %var.load1 to i64
  %addtmp = add i64 %ptr.int.l, 24
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load2, i32 0, i32 11
  %fld.load = load i64, ptr %fld.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr_ok
  %choice.res = phi i64 [ %raw.load, %addr_ok ], [ %fld.load, %choice.else ]
  ret i64 %choice.res

addr_gen_check:                                   ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  br label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define ptr @"fs::make_metadata"(ptr %0, i1 %1) #1 {
entry:
  %var.is_x = alloca i1, align 1
  %var._fs_perms_wrap = alloca ptr, align 8
  %var.is_l = alloca i1, align 1
  %var.is_reg = alloca i1, align 1
  %var.is_d = alloca i1, align 1
  %var.fmt = alloca i64, align 8
  %var._fs_mode_wrap = alloca ptr, align 8
  %var.buf = alloca ptr, align 8
  %var.m = alloca i64, align 8
  %var.is_link = alloca i1, align 1
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i1 %1, ptr %var.is_link, align 1
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call i64 @"fs::stat_mode"(ptr %var.load)
  store i64 %call.res, ptr %var.m, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 1)
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
  store i64 2, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load3, i32 0, i32 1
  %b.ptr4 = load ptr, ptr %b.ptr, align 8
  %var.load5 = load i64, ptr %var.m, align 8
  %coerce.trunc = trunc i64 %var.load5 to i16
  %raw.int = ptrtoint ptr %b.ptr4 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

str_overflow_abort:                               ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

addr_gen_check:                                   ; preds = %b.buf.len1
  %arena.cur6 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur6, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %b.buf.len1
  store i16 %coerce.trunc, ptr %raw.clean.ptr, align 2
  %var.load7 = load ptr, ptr %var.buf, align 8
  %b.ptr8 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 1
  %b.ptr9 = load ptr, ptr %b.ptr8, align 8
  %raw.int10 = ptrtoint ptr %b.ptr9 to i64
  %raw.clean.int11 = and i64 %raw.int10, 281474976710655
  %raw.clean.ptr12 = inttoptr i64 %raw.clean.int11 to ptr
  %addr.tag13 = lshr i64 %raw.int10, 48
  %addr.immortal14 = icmp eq i64 %addr.tag13, 0
  br i1 %addr.immortal14, label %addr_ok16, label %addr_gen_check15

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check15:                                 ; preds = %addr_ok
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %addr.tag13)
  br i1 %tag.valid19, label %addr_ok16, label %addr_stale17

addr_ok16:                                        ; preds = %addr_stale17, %addr_gen_check15, %addr_ok
  store ptr %raw.clean.ptr12, ptr %var._fs_mode_wrap, align 8
  %var.load20 = load ptr, ptr %var._fs_mode_wrap, align 8
  %fld.gep = getelementptr inbounds <{ i16 }>, ptr %var.load20, i32 0, i32 0
  %bf.load = load i16, ptr %fld.gep, align 2
  %bf.shr = lshr i16 %bf.load, 12
  %bf.mask = and i16 %bf.shr, 15
  %bf.ext = zext i16 %bf.mask to i64
  store i64 %bf.ext, ptr %var.fmt, align 8
  %var.load21 = load i64, ptr %var.fmt, align 8
  %cmptmp = icmp eq i64 %var.load21, 4
  store i1 %cmptmp, ptr %var.is_d, align 1
  %var.load22 = load i64, ptr %var.fmt, align 8
  %cmptmp23 = icmp eq i64 %var.load22, 8
  store i1 %cmptmp23, ptr %var.is_reg, align 1
  %var.load24 = load i1, ptr %var.is_link, align 1
  br i1 %var.load24, label %or.18.then, label %or.18.else

addr_stale17:                                     ; preds = %addr_gen_check15
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok16

or.18.then:                                       ; preds = %addr_ok16
  br label %or.18.exit

or.18.else:                                       ; preds = %addr_ok16
  %var.load25 = load i64, ptr %var.fmt, align 8
  %cmptmp26 = icmp eq i64 %var.load25, 10
  br label %or.18.exit

or.18.exit:                                       ; preds = %or.18.else, %or.18.then
  %or.18.phi = phi i1 [ %var.load24, %or.18.then ], [ %cmptmp26, %or.18.else ]
  store i1 %or.18.phi, ptr %var.is_l, align 1
  %var.load27 = load ptr, ptr %var.buf, align 8
  %b.ptr28 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load27, i32 0, i32 1
  %b.ptr29 = load ptr, ptr %b.ptr28, align 8
  %raw.int30 = ptrtoint ptr %b.ptr29 to i64
  %raw.clean.int31 = and i64 %raw.int30, 281474976710655
  %raw.clean.ptr32 = inttoptr i64 %raw.clean.int31 to ptr
  %addr.tag33 = lshr i64 %raw.int30, 48
  %addr.immortal34 = icmp eq i64 %addr.tag33, 0
  br i1 %addr.immortal34, label %addr_ok36, label %addr_gen_check35

addr_gen_check35:                                 ; preds = %or.18.exit
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %addr.tag33)
  br i1 %tag.valid39, label %addr_ok36, label %addr_stale37

addr_ok36:                                        ; preds = %addr_stale37, %addr_gen_check35, %or.18.exit
  store ptr %raw.clean.ptr32, ptr %var._fs_perms_wrap, align 8
  %var.load40 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep41 = getelementptr inbounds <{ i16 }>, ptr %var.load40, i32 0, i32 0
  %bf.load42 = load i16, ptr %fld.gep41, align 2
  %bf.shr43 = lshr i16 %bf.load42, 6
  %bf.mask44 = and i16 %bf.shr43, 1
  %bf.ext45 = zext i16 %bf.mask44 to i64
  %cmptmp46 = icmp ne i64 %bf.ext45, 0
  br i1 %cmptmp46, label %or.19.then, label %or.19.else

addr_stale37:                                     ; preds = %addr_gen_check35
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok36

or.19.then:                                       ; preds = %addr_ok36
  br label %or.19.exit

or.19.else:                                       ; preds = %addr_ok36
  %var.load47 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep48 = getelementptr inbounds <{ i16 }>, ptr %var.load47, i32 0, i32 0
  %bf.load49 = load i16, ptr %fld.gep48, align 2
  %bf.shr50 = lshr i16 %bf.load49, 3
  %bf.mask51 = and i16 %bf.shr50, 1
  %bf.ext52 = zext i16 %bf.mask51 to i64
  %cmptmp53 = icmp ne i64 %bf.ext52, 0
  br label %or.19.exit

or.19.exit:                                       ; preds = %or.19.else, %or.19.then
  %or.19.phi = phi i1 [ %cmptmp46, %or.19.then ], [ %cmptmp53, %or.19.else ]
  br i1 %or.19.phi, label %or.20.then, label %or.20.else

or.20.then:                                       ; preds = %or.19.exit
  br label %or.20.exit

or.20.else:                                       ; preds = %or.19.exit
  %var.load54 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep55 = getelementptr inbounds <{ i16 }>, ptr %var.load54, i32 0, i32 0
  %bf.load56 = load i16, ptr %fld.gep55, align 2
  %bf.mask57 = and i16 %bf.load56, 1
  %bf.ext58 = zext i16 %bf.mask57 to i64
  %cmptmp59 = icmp ne i64 %bf.ext58, 0
  br label %or.20.exit

or.20.exit:                                       ; preds = %or.20.else, %or.20.then
  %or.20.phi = phi i1 [ %or.19.phi, %or.20.then ], [ %cmptmp59, %or.20.else ]
  br i1 %or.20.phi, label %and.21.then, label %and.21.else

and.21.then:                                      ; preds = %or.20.exit
  %var.load60 = load i1, ptr %var.is_d, align 1
  %nottmp = xor i1 %var.load60, true
  br label %and.21.exit

and.21.else:                                      ; preds = %or.20.exit
  br label %and.21.exit

and.21.exit:                                      ; preds = %and.21.else, %and.21.then
  %and.21.phi = phi i1 [ %nottmp, %and.21.then ], [ %or.20.phi, %and.21.else ]
  store i1 %and.21.phi, ptr %var.is_x, align 1
  %var.load61 = load ptr, ptr %var.s, align 8
  %call.res62 = call i64 @"fs::stat_size"(ptr %var.load61)
  %var.load63 = load i64, ptr %var.m, align 8
  %var.load64 = load ptr, ptr %var.s, align 8
  %call.res65 = call i64 @"fs::stat_mtime_sec"(ptr %var.load64)
  %var.load66 = load ptr, ptr %var.s, align 8
  %call.res67 = call i64 @"fs::stat_mtime_nsec"(ptr %var.load66)
  %var.load68 = load ptr, ptr %var.s, align 8
  %call.res69 = call i64 @"fs::stat_atime_sec"(ptr %var.load68)
  %var.load70 = load i1, ptr %var.is_d, align 1
  %var.load71 = load i1, ptr %var.is_reg, align 1
  %var.load72 = load i1, ptr %var.is_l, align 1
  %var.load73 = load i1, ptr %var.is_x, align 1
  %arena.cur74 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %call.res62, ptr %rec.fld, align 8
  %rec.fld75 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load63, ptr %rec.fld75, align 8
  %rec.fld76 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %call.res65, ptr %rec.fld76, align 8
  %rec.fld77 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %call.res67, ptr %rec.fld77, align 8
  %rec.fld78 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %call.res69, ptr %rec.fld78, align 8
  %rec.fld79 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load70, ptr %rec.fld79, align 1
  %rec.fld80 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 %var.load71, ptr %rec.fld80, align 1
  %rec.fld81 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 7
  store i1 %var.load72, ptr %rec.fld81, align 1
  %rec.fld82 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 8
  store i1 %var.load73, ptr %rec.fld82, align 1
  ret ptr %rec.alloc
}

define ptr @"fs::stat"(ptr %0) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load9 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res10 = call i64 @stat(ptr %arg.str.ptr8, ptr %addr.ffi.clean)
  store i64 %call.res10, ptr %var.rc, align 8
  %var.load11 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load11, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load12 = load ptr, ptr %"var.s'", align 8
  %call.res13 = call ptr @"fs::make_metadata"(ptr %var.load12, i1 false)
  ret ptr %call.res13

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define ptr @"fs::lstat_meta"(ptr %0) #1 {
entry:
  %var.is_link = alloca i1, align 1
  %var._fs_mode_wrap = alloca ptr, align 8
  %var.buf = alloca ptr, align 8
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load9 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res10 = call i64 @lstat(ptr %arg.str.ptr8, ptr %addr.ffi.clean)
  store i64 %call.res10, ptr %var.rc, align 8
  %var.load11 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load11, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load12 = load ptr, ptr %"var.s'", align 8
  %call.res13 = call i64 @"fs::stat_mode"(ptr %var.load12)
  store i64 %call.res13, ptr %var.m, align 8
  %arena.cur14 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 1)
  %sum15 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf16 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %b.buf.len17

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len17:                                      ; preds = %str_overflow_abort18, %choice.exit
  %arena.cur19 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 2, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load20 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 1
  %b.ptr21 = load ptr, ptr %b.ptr, align 8
  %var.load22 = load i64, ptr %var.m, align 8
  %coerce.trunc = trunc i64 %var.load22 to i16
  %raw.int = ptrtoint ptr %b.ptr21 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

str_overflow_abort18:                             ; preds = %choice.exit
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len17

addr_gen_check:                                   ; preds = %b.buf.len17
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %addr.tag)
  br i1 %tag.valid24, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %b.buf.len17
  store i16 %coerce.trunc, ptr %raw.clean.ptr, align 2
  %var.load25 = load ptr, ptr %var.buf, align 8
  %b.ptr26 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  %b.ptr27 = load ptr, ptr %b.ptr26, align 8
  %raw.int28 = ptrtoint ptr %b.ptr27 to i64
  %raw.clean.int29 = and i64 %raw.int28, 281474976710655
  %raw.clean.ptr30 = inttoptr i64 %raw.clean.int29 to ptr
  %addr.tag31 = lshr i64 %raw.int28, 48
  %addr.immortal32 = icmp eq i64 %addr.tag31, 0
  br i1 %addr.immortal32, label %addr_ok34, label %addr_gen_check33

addr_stale:                                       ; preds = %addr_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check33:                                 ; preds = %addr_ok
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %addr.tag31)
  br i1 %tag.valid37, label %addr_ok34, label %addr_stale35

addr_ok34:                                        ; preds = %addr_stale35, %addr_gen_check33, %addr_ok
  store ptr %raw.clean.ptr30, ptr %var._fs_mode_wrap, align 8
  %var.load38 = load ptr, ptr %var._fs_mode_wrap, align 8
  %fld.gep = getelementptr inbounds <{ i16 }>, ptr %var.load38, i32 0, i32 0
  %bf.load = load i16, ptr %fld.gep, align 2
  %bf.shr = lshr i16 %bf.load, 12
  %bf.mask = and i16 %bf.shr, 15
  %bf.ext = zext i16 %bf.mask to i64
  %cmptmp39 = icmp eq i64 %bf.ext, 10
  store i1 %cmptmp39, ptr %var.is_link, align 1
  %var.load40 = load ptr, ptr %"var.s'", align 8
  %var.load41 = load i1, ptr %var.is_link, align 1
  %call.res42 = call ptr @"fs::make_metadata"(ptr %var.load40, i1 %var.load41)
  ret ptr %call.res42

addr_stale35:                                     ; preds = %addr_gen_check33
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok34
}

define i1 @"fs::exists"(ptr %0) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load9 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res10 = call i64 @stat(ptr %arg.str.ptr8, ptr %addr.ffi.clean)
  %cmptmp = icmp eq i64 %call.res10, 0
  ret i1 %cmptmp

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6
}

define i1 @"fs::is_file"(ptr %0) #1 {
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

define i1 @"fs::is_dir"(ptr %0) #1 {
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

define i1 @"fs::is_symlink"(ptr %0) #1 {
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

define i64 @"fs::mtime"(ptr %0) #1 {
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

define i64 @"fs::mtime_ns"(ptr %0) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load9 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res10 = call i64 @stat(ptr %arg.str.ptr8, ptr %addr.ffi.clean)
  %cmptmp = icmp eq i64 %call.res10, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  %var.load11 = load ptr, ptr %"var.s'", align 8
  %call.res12 = call i64 @"fs::stat_mtime_sec"(ptr %var.load11)
  %multmp = mul i64 %call.res12, 1000000000
  %var.load13 = load ptr, ptr %"var.s'", align 8
  %call.res14 = call i64 @"fs::stat_mtime_nsec"(ptr %var.load13)
  %addtmp = add i64 %multmp, %call.res14
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ -1, %choice.else ]
  ret i64 %choice.res
}

define i64 @"fs::size"(ptr %0) #1 {
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

define ptr @"fs::readlink_path"(ptr %0) #1 {
entry:
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

b.buf.len1:                                       ; preds = %str_overflow_abort, %entry
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

str_gen_check:                                    ; preds = %b.buf.len1
  %arena.cur7 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur7, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len1
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr3, i64 %arg.str.ptr6
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr8, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr8:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr6, i64 1)
  %sum9 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf10 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf10, label %str_overflow_abort12, label %nulcopy.len11

nulmerge:                                         ; preds = %nulcopy.len11, %arg.str.ptr8
  %arg.str.ptr14 = phi ptr [ %arg.str.ptr3, %arg.str.ptr8 ], [ %nulcopy.buf, %nulcopy.len11 ]
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

nulcopy.len11:                                    ; preds = %str_overflow_abort12, %nulcopy
  %arena.cur13 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 %sum9)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr3, i64 %arg.str.ptr6, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr6
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort12:                             ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len11

choice.then:                                      ; preds = %nulmerge
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

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

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load18, ptr %b.len.gep20, align 8
  %var.load21 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 0
  %b.freeze.len22 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 1
  %b.freeze.data23 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit
  %4 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

b.freeze.check:                                   ; preds = %b.len_ok
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data23, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data23, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data23, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur24 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %b.freeze.len22)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data23, i64 %b.freeze.len22, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data25 = phi ptr [ %b.freeze.data23, %b.len_ok ], [ %b.freeze.data23, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur26 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len22, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data25, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define i1 @"fs::path_exists"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"fs::exists"(ptr %var.load)
  ret i1 %call.res
}

define i64 @"fs::path_mtime"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i64 @"fs::mtime"(ptr %var.load)
  ret i64 %call.res
}

define ptr @"fs::read_symlink"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"fs::readlink_path"(ptr %var.load)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %call.res, ptr %var._, align 8
  store ptr %call.res, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %var.load1, %choice.then ], [ @str.2.struct, %choice.else ]
  ret ptr %choice.res
}

define ptr @"fs::read_dir"(ptr %0) #1 {
entry:
  %var.mi = alloca ptr, align 8
  %var._135 = alloca ptr, align 8
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
  %loop.step.22 = alloca i64, align 8
  %loop.idx.22 = alloca i64, align 8
  %var.is_mac = alloca i1, align 1
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur6 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur6, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr2, i64 %arg.str.ptr5
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr7, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr7:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr5, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len8

nulmerge:                                         ; preds = %nulcopy.len8, %arg.str.ptr7
  %arg.str.ptr10 = phi ptr [ %arg.str.ptr2, %arg.str.ptr7 ], [ %nulcopy.buf, %nulcopy.len8 ]
  %call.res = call ptr @opendir(ptr %arg.str.ptr10)
  store ptr %call.res, ptr %var.dp, align 8
  %var.load11 = load ptr, ptr %var.dp, align 8
  %var.load12 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load11 to i64
  %ptr.int.r = ptrtoint ptr %var.load12 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len8:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur9 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr2, i64 %arg.str.ptr5, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr5
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len8

choice.then:                                      ; preds = %nulmerge
  %var.load13 = load ptr, ptr %var.res, align 8
  %a.load = load ptr, ptr %var.res, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %call.res21 = call i1 @"libc::is_darwin"()
  store i1 %call.res21, ptr %var.is_mac, align 1
  store i64 0, ptr %loop.idx.22, align 8
  br label %loop.header.22

a.create:                                         ; preds = %choice.then
  %arena.cur14 = call ptr @dva_arena_current()
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %arena.cur16 = call ptr @dva_arena_current()
  %a.buf17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 0
  store i64 0, ptr %a.len.gep18, align 8
  %a.data.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf17, ptr %a.data.gep19, align 8
  %a.cap.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep20, align 8
  store ptr %a.create15, ptr %var.res, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.22:                                   ; preds = %loop.latch.22, %choice.exit
  %counter.load = load i64, ptr %loop.idx.22, align 8
  br label %loop.body.22

loop.body.22:                                     ; preds = %loop.header.22
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.22, align 8
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

loop.exit.nat.22:                                 ; No predecessors!
  br label %loop.exit.22

loop.latch.22:                                    ; preds = %a.store, %choice.then91
  %step.val = load i64, ptr %loop.step.22, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.exit.22:                                     ; preds = %choice.then29, %loop.exit.nat.22
  %var.load169 = load ptr, ptr %var.dp, align 8
  %addr.ffi.int170 = ptrtoint ptr %var.load169 to i64
  %addr.ffi.masked171 = and i64 %addr.ffi.int170, 281474976710655
  %addr.ffi.clean172 = inttoptr i64 %addr.ffi.masked171 to ptr
  %call.res173 = call i64 @closedir(ptr %addr.ffi.clean172)
  %var.load174 = load ptr, ptr %var.res, align 8
  %a.load175 = load ptr, ptr %var.res, align 8
  %a.null176 = icmp eq ptr %a.load175, null
  br i1 %a.null176, label %a.create177, label %a.after178

choice.then29:                                    ; preds = %loop.body.22
  br label %loop.exit.22

choice.exit30:                                    ; preds = %loop.body.22
  %var.load31 = load i1, ptr %var.is_mac, align 1
  br i1 %var.load31, label %choice.then32, label %choice.else

choice.then32:                                    ; preds = %choice.exit30
  %var.load34 = load ptr, ptr %var.ent, align 8
  %ptr.int.l35 = ptrtoint ptr %var.load34 to i64
  %addtmp = add i64 %ptr.int.l35, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %call.res36 = call ptr @"sys::c_str"(ptr %ptr.res)
  br label %choice.exit33

choice.else:                                      ; preds = %choice.exit30
  %var.load37 = load ptr, ptr %var.ent, align 8
  %ptr.int.l38 = ptrtoint ptr %var.load37 to i64
  %addtmp39 = add i64 %ptr.int.l38, 19
  %ptr.res40 = inttoptr i64 %addtmp39 to ptr
  %call.res41 = call ptr @"sys::c_str"(ptr %ptr.res40)
  br label %choice.exit33

choice.exit33:                                    ; preds = %choice.else, %choice.then32
  %choice.res = phi ptr [ %call.res36, %choice.then32 ], [ %call.res41, %choice.else ]
  store ptr %choice.res, ptr %var.name, align 8
  %var.load42 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %eq.lhs.len43 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len44 = and i64 %eq.lhs.len43, 281474976710655
  %str.tag45 = lshr i64 %eq.lhs.len43, 48
  %str.immortal46 = icmp eq i64 %str.tag45, 0
  br i1 %str.immortal46, label %str_ok48, label %str_gen_check47

str_gen_check47:                                  ; preds = %choice.exit33
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid51 = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag45)
  br i1 %tag.valid51, label %str_ok48, label %str_stale49

str_ok48:                                         ; preds = %str_stale49, %str_gen_check47, %choice.exit33
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len52 = and i64 %eq.rhs.len, 281474976710655
  %str.tag53 = lshr i64 %eq.rhs.len, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_stale49:                                      ; preds = %str_gen_check47
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok48

str_gen_check55:                                  ; preds = %str_ok48
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %str_ok48
  %eq.len = icmp eq i64 %eq.lhs.len44, %eq.rhs.len52
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale57:                                      ; preds = %str_gen_check55
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

str.eq.then:                                      ; preds = %str_ok56
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %eq.lhs.data60 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data60, ptr %eq.rhs.data, i64 %eq.lhs.len44)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok56
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.23.then, label %or.23.else

or.23.then:                                       ; preds = %str.eq.merge
  br label %or.23.exit

or.23.else:                                       ; preds = %str.eq.merge
  %var.load61 = load ptr, ptr %var.name, align 8
  %eq.lhs.len62 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %eq.lhs.len63 = load i64, ptr %eq.lhs.len62, align 8
  %eq.lhs.len64 = and i64 %eq.lhs.len63, 281474976710655
  %str.tag65 = lshr i64 %eq.lhs.len63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

or.23.exit:                                       ; preds = %str.eq.merge84, %or.23.then
  %or.23.phi = phi i1 [ %str.eq.result, %or.23.then ], [ %str.eq.result90, %str.eq.merge84 ]
  br i1 %or.23.phi, label %choice.then91, label %choice.exit92

str_gen_check67:                                  ; preds = %or.23.else
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %or.23.else
  %eq.rhs.len72 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len73 = and i64 %eq.rhs.len72, 281474976710655
  %str.tag74 = lshr i64 %eq.rhs.len72, 48
  %str.immortal75 = icmp eq i64 %str.tag74, 0
  br i1 %str.immortal75, label %str_ok77, label %str_gen_check76

str_stale69:                                      ; preds = %str_gen_check67
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str_gen_check76:                                  ; preds = %str_ok68
  %arena.cur79 = call ptr @dva_arena_current()
  %tag.valid80 = call i1 @dva_arena_validate_tag(ptr %arena.cur79, i64 %str.tag74)
  br i1 %tag.valid80, label %str_ok77, label %str_stale78

str_ok77:                                         ; preds = %str_stale78, %str_gen_check76, %str_ok68
  %eq.len81 = icmp eq i64 %eq.lhs.len64, %eq.rhs.len73
  br i1 %eq.len81, label %str.eq.then82, label %str.eq.else83

str_stale78:                                      ; preds = %str_gen_check76
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok77

str.eq.then82:                                    ; preds = %str_ok77
  %eq.lhs.data85 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 1
  %eq.lhs.data86 = load ptr, ptr %eq.lhs.data85, align 8
  %eq.rhs.data87 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp88 = call i32 @memcmp(ptr %eq.lhs.data86, ptr %eq.rhs.data87, i64 %eq.lhs.len64)
  %eq.cmp.zero89 = icmp eq i32 %eq.memcmp88, 0
  br label %str.eq.merge84

str.eq.else83:                                    ; preds = %str_ok77
  br label %str.eq.merge84

str.eq.merge84:                                   ; preds = %str.eq.else83, %str.eq.then82
  %str.eq.result90 = phi i1 [ %eq.cmp.zero89, %str.eq.then82 ], [ false, %str.eq.else83 ]
  br label %or.23.exit

choice.then91:                                    ; preds = %or.23.exit
  br label %loop.latch.22

choice.exit92:                                    ; preds = %or.23.exit
  %var.load93 = load i1, ptr %var.is_mac, align 1
  br i1 %var.load93, label %choice.then94, label %choice.else95

choice.then94:                                    ; preds = %choice.exit92
  %var.load97 = load ptr, ptr %var.ent, align 8
  %ptr.int.l98 = ptrtoint ptr %var.load97 to i64
  %addtmp99 = add i64 %ptr.int.l98, 6
  %ptr.res100 = inttoptr i64 %addtmp99 to ptr
  %raw.int = ptrtoint ptr %ptr.res100 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else95:                                    ; preds = %choice.exit92
  %var.load103 = load ptr, ptr %var.ent, align 8
  %raw.int104 = ptrtoint ptr %var.load103 to i64
  %raw.clean.int105 = and i64 %raw.int104, 281474976710655
  %raw.clean.ptr106 = inttoptr i64 %raw.clean.int105 to ptr
  %addr.tag107 = lshr i64 %raw.int104, 48
  %addr.immortal108 = icmp eq i64 %addr.tag107, 0
  br i1 %addr.immortal108, label %addr_ok110, label %addr_gen_check109

choice.exit96:                                    ; preds = %addr_ok110, %addr_ok
  %choice.res116 = phi i64 [ %coerce.zext, %addr_ok ], [ %coerce.zext115, %addr_ok110 ]
  store i64 %choice.res116, ptr %var.dt, align 8
  %var.load117 = load i64, ptr %var.dt, align 8
  %cmptmp118 = icmp eq i64 %var.load117, 4
  store i1 %cmptmp118, ptr %var.is_d, align 1
  %var.load119 = load i64, ptr %var.dt, align 8
  %cmptmp120 = icmp eq i64 %var.load119, 8
  store i1 %cmptmp120, ptr %var.is_f, align 1
  %var.load121 = load i64, ptr %var.dt, align 8
  %cmptmp122 = icmp eq i64 %var.load121, 10
  store i1 %cmptmp122, ptr %var.is_l, align 1
  %var.load123 = load i64, ptr %var.dt, align 8
  %cmptmp124 = icmp eq i64 %var.load123, 0
  br i1 %cmptmp124, label %choice.then125, label %choice.exit126

addr_gen_check:                                   ; preds = %choice.then94
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %addr.tag)
  br i1 %tag.valid102, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then94
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.zext = zext i8 %raw.load to i64
  br label %choice.exit96

addr_stale:                                       ; preds = %addr_gen_check
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check109:                                ; preds = %choice.else95
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %addr.tag107)
  br i1 %tag.valid113, label %addr_ok110, label %addr_stale111

addr_ok110:                                       ; preds = %addr_stale111, %addr_gen_check109, %choice.else95
  store ptr %raw.clean.ptr106, ptr %var.dp_ent, align 8
  %var.load114 = load ptr, ptr %var.dp_ent, align 8
  %fld.gep = getelementptr inbounds <{ i64, i64, i16, i8 }>, ptr %var.load114, i32 0, i32 3
  %fld.load = load i8, ptr %fld.gep, align 1
  %coerce.zext115 = zext i8 %fld.load to i64
  br label %choice.exit96

addr_stale111:                                    ; preds = %addr_gen_check109
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok110

choice.then125:                                   ; preds = %choice.exit96
  %var.load127 = load ptr, ptr %var.dir_path, align 8
  %var.load128 = load ptr, ptr %var.name, align 8
  %call.res129 = call ptr @"fs::join"(ptr %var.load127, ptr %var.load128)
  store ptr %call.res129, ptr %var.sub_p, align 8
  %var.load130 = load ptr, ptr %var.sub_p, align 8
  %call.res131 = call ptr @"fs::lstat_meta"(ptr %var.load130)
  store ptr %call.res131, ptr %var.meta, align 8
  %var.load132 = load ptr, ptr %var.meta, align 8
  %niche.ne.null = icmp ne ptr %var.load132, null
  br i1 %niche.ne.null, label %choice.then133, label %choice.exit134

choice.exit126:                                   ; preds = %choice.exit134, %choice.exit96
  %var.load145 = load ptr, ptr %var.name, align 8
  %var.load146 = load i1, ptr %var.is_d, align 1
  %var.load147 = load i1, ptr %var.is_f, align 1
  %var.load148 = load i1, ptr %var.is_l, align 1
  %arena.cur149 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load145, ptr %rec.fld, align 8
  %rec.fld150 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load146, ptr %rec.fld150, align 1
  %rec.fld151 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load147, ptr %rec.fld151, align 1
  %rec.fld152 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load148, ptr %rec.fld152, align 1
  %a.load153 = load ptr, ptr %var.res, align 8
  %a.null154 = icmp eq ptr %a.load153, null
  br i1 %a.null154, label %a.create155, label %a.after156

choice.then133:                                   ; preds = %choice.then125
  store ptr %var.load132, ptr %var._135, align 8
  store ptr %var.load132, ptr %var.mi, align 8
  %var.load136 = load ptr, ptr %var.mi, align 8
  %fld.gep137 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load136, i32 0, i32 5
  %fld.load138 = load i1, ptr %fld.gep137, align 1
  store i1 %fld.load138, ptr %var.is_d, align 1
  %var.load139 = load ptr, ptr %var.mi, align 8
  %fld.gep140 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load139, i32 0, i32 6
  %fld.load141 = load i1, ptr %fld.gep140, align 1
  store i1 %fld.load141, ptr %var.is_f, align 1
  %var.load142 = load ptr, ptr %var.mi, align 8
  %fld.gep143 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load142, i32 0, i32 7
  %fld.load144 = load i1, ptr %fld.gep143, align 1
  store i1 %fld.load144, ptr %var.is_l, align 1
  br label %choice.exit134

choice.exit134:                                   ; preds = %choice.then133, %choice.then125
  br label %choice.exit126

a.create155:                                      ; preds = %choice.exit126
  %arena.cur157 = call ptr @dva_arena_current()
  %a.create158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 24)
  %arena.cur159 = call ptr @dva_arena_current()
  %a.buf160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 128)
  %a.len.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 0
  store i64 0, ptr %a.len.gep161, align 8
  %a.data.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 1
  store ptr %a.buf160, ptr %a.data.gep162, align 8
  %a.cap.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 2
  store i64 16, ptr %a.cap.gep163, align 8
  store ptr %a.create158, ptr %var.res, align 8
  br label %a.after156

a.after156:                                       ; preds = %a.create155, %choice.exit126
  %a.load2164 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after156
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2164, i32 0, i32 0
  %a.len165 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2164, i32 0, i32 2
  %a.cap166 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len165, %a.cap166
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2164)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2164, i32 0, i32 1
  %a.cur.data167 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2164, i32 0, i32 0
  %a.cur.len168 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data167, i64 %a.cur.len168
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len168, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2164, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.22

a.create177:                                      ; preds = %loop.exit.22
  %arena.cur179 = call ptr @dva_arena_current()
  %a.create180 = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 24)
  %arena.cur181 = call ptr @dva_arena_current()
  %a.buf182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 128)
  %a.len.gep183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 0
  store i64 0, ptr %a.len.gep183, align 8
  %a.data.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 1
  store ptr %a.buf182, ptr %a.data.gep184, align 8
  %a.cap.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 2
  store i64 16, ptr %a.cap.gep185, align 8
  store ptr %a.create180, ptr %var.res, align 8
  br label %a.after178

a.after178:                                       ; preds = %a.create177, %loop.exit.22
  %a.load2186 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2186
}

define internal void @dva_array_grow(ptr %0) #1 {
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

a.cap25:                                          ; preds = %arr_overflow_abort, %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %arr_overflow_abort9, %a.cap25
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
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

define i64 @"fs::open_wronly_creat_trunc"() #1 {
entry:
  %call.res = call i1 @"libc::is_darwin"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 1537, %choice.then ], [ 577, %choice.else ]
  ret i64 %choice.res
}

define ptr @"fs::read_to_string"(ptr %0) #1 {
entry:
  %var.n92 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.24 = alloca i64, align 8
  %loop.idx.24 = alloca i64, align 8
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i32 @open(ptr %arg.str.ptr8, i32 0)
  store i32 %call.res, ptr %var.fd, align 4
  %var.load9 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load9, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %call.res10 = call ptr @"fs::empty_stat"()
  store ptr %call.res10, ptr %"var.s'", align 8
  %var.load11 = load i64, ptr %var.fd, align 8
  %var.load12 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load12 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load11 to i32
  %call.res13 = call i64 @fstat(i32 %coerce.trunc, ptr %addr.ffi.clean)
  store i64 %call.res13, ptr %var.rc, align 8
  %var.load14 = load i64, ptr %var.rc, align 8
  %cmptmp15 = icmp eq i64 %var.load14, 0
  br i1 %cmptmp15, label %choice.then16, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then16:                                    ; preds = %choice.exit
  %var.load18 = load ptr, ptr %"var.s'", align 8
  %call.res19 = call i64 @"fs::stat_size"(ptr %var.load18)
  %smax = call i64 @llvm.smax.i64(i64 %call.res19, i64 0)
  br label %choice.exit17

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else, %choice.then16
  %choice.res = phi i64 [ %smax, %choice.then16 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.sz, align 8
  %var.load20 = load i64, ptr %var.sz, align 8
  %cmptmp21 = icmp sgt i64 %var.load20, 0
  br i1 %cmptmp21, label %choice.then22, label %choice.else23

choice.then22:                                    ; preds = %choice.exit17
  %var.load25 = load i64, ptr %var.sz, align 8
  %arena.cur26 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 24)
  %cap.neg = icmp slt i64 %var.load25, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load25
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum27 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf28 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf28, label %str_overflow_abort30, label %b.buf.len29

choice.else23:                                    ; preds = %choice.exit17
  %copy.len = load i64, ptr @str.2.struct, align 8
  %copy.len59 = and i64 %copy.len, 281474976710655
  %str.tag60 = lshr i64 %copy.len, 48
  %str.immortal61 = icmp eq i64 %str.tag60, 0
  br i1 %str.immortal61, label %str_ok63, label %str_gen_check62

choice.exit24:                                    ; preds = %loop.exit.24, %choice.exit48
  %choice.res183 = phi ptr [ %choice.res58, %choice.exit48 ], [ %var.load182, %loop.exit.24 ]
  ret ptr %choice.res183

b.buf.len29:                                      ; preds = %str_overflow_abort30, %choice.then22
  %arena.cur31 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 %sum27)
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
  %cmptmp45 = icmp sle i64 %var.load44, 0
  br i1 %cmptmp45, label %choice.then46, label %choice.else47

str_overflow_abort30:                             ; preds = %choice.then22
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len29

choice.then46:                                    ; preds = %b.buf.len29
  br label %choice.exit48

choice.else47:                                    ; preds = %b.buf.len29
  %var.load49 = load i64, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap50 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load49, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

choice.exit48:                                    ; preds = %b.freeze.done, %choice.then46
  %choice.res58 = phi ptr [ @str.2.struct, %choice.then46 ], [ %builder.freeze, %b.freeze.done ]
  br label %choice.exit24

b.len_big_check:                                  ; preds = %choice.else47
  %b.len.big = icmp sgt i64 %var.load49, %b.cap50
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load49, ptr %b.len.gep51, align 8
  %var.load52 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 0
  %b.freeze.len53 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 1
  %b.freeze.data54 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.else47
  %4 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

b.freeze.check:                                   ; preds = %b.len_ok
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data54, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data54, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data54, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur55 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %b.freeze.len53)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data54, i64 %b.freeze.len53, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data56 = phi ptr [ %b.freeze.data54, %b.len_ok ], [ %b.freeze.data54, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur57 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len53, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data56, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit48

str_gen_check62:                                  ; preds = %choice.else23
  %arena.cur65 = call ptr @dva_arena_current()
  %tag.valid66 = call i1 @dva_arena_validate_tag(ptr %arena.cur65, i64 %str.tag60)
  br i1 %tag.valid66, label %str_ok63, label %str_stale64

str_ok63:                                         ; preds = %str_stale64, %str_gen_check62, %choice.else23
  %copy.len67 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %arena.cur68 = call ptr @dva_arena_current()
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %copy.len59)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 %copy.len67, i64 %copy.len59, i1 false)
  %arena.cur69 = call ptr @dva_arena_current()
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 16)
  %str.copy.len.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 0
  store i64 %copy.len59, ptr %str.copy.len.gep, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  store ptr %copy.str, ptr %"var.b'", align 8
  %arena.cur70 = call ptr @dva_arena_current()
  %builder.new71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 24)
  %b.data.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new71, i32 0, i32 1
  %b.len.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new71, i32 0, i32 0
  %b.cap.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new71, i32 0, i32 2
  %b.buf.len75 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum76 = extractvalue { i64, i1 } %b.buf.len75, 0
  %ovf77 = extractvalue { i64, i1 } %b.buf.len75, 1
  br i1 %ovf77, label %str_overflow_abort79, label %b.buf.len78

str_stale64:                                      ; preds = %str_gen_check62
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok63

b.buf.len78:                                      ; preds = %str_overflow_abort79, %str_ok63
  %arena.cur80 = call ptr @dva_arena_current()
  %b.buf81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 %sum76)
  %b.nul082 = getelementptr i8, ptr %b.buf81, i64 0
  store i8 0, ptr %b.nul082, align 1
  store i64 0, ptr %b.len.gep73, align 8
  store ptr %b.buf81, ptr %b.data.gep72, align 8
  store i64 4096, ptr %b.cap.gep74, align 8
  store ptr %builder.new71, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.24, align 8
  br label %loop.header.24

str_overflow_abort79:                             ; preds = %str_ok63
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len78

loop.header.24:                                   ; preds = %loop.latch.24, %b.buf.len78
  %counter.load = load i64, ptr %loop.idx.24, align 8
  br label %loop.body.24

loop.body.24:                                     ; preds = %loop.header.24
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.24, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load83 = load i64, ptr %var.fd, align 8
  %var.load84 = load ptr, ptr %var.chunk, align 8
  %b.ptr85 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load84, i32 0, i32 1
  %b.ptr86 = load ptr, ptr %b.ptr85, align 8
  %addr.ffi.int87 = ptrtoint ptr %b.ptr86 to i64
  %addr.ffi.masked88 = and i64 %addr.ffi.int87, 281474976710655
  %addr.ffi.clean89 = inttoptr i64 %addr.ffi.masked88 to ptr
  %coerce.trunc90 = trunc i64 %var.load83 to i32
  %call.res91 = call i64 @read(i32 %coerce.trunc90, ptr %addr.ffi.clean89, i64 4096)
  store i64 %call.res91, ptr %var.n92, align 8
  %var.load93 = load i64, ptr %var.n92, align 8
  %cmptmp94 = icmp sle i64 %var.load93, 0
  br i1 %cmptmp94, label %choice.then95, label %choice.exit96

loop.exit.nat.24:                                 ; No predecessors!
  br label %loop.exit.24

loop.latch.24:                                    ; preds = %concat.tot.len173
  %step.val = load i64, ptr %loop.step.24, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.24, align 8
  br label %loop.header.24

loop.exit.24:                                     ; preds = %choice.then95, %loop.exit.nat.24
  %var.load179 = load i64, ptr %var.fd, align 8
  %coerce.trunc180 = trunc i64 %var.load179 to i32
  %call.res181 = call i32 @close(i32 %coerce.trunc180)
  %var.load182 = load ptr, ptr %"var.b'", align 8
  br label %choice.exit24

choice.then95:                                    ; preds = %loop.body.24
  br label %loop.exit.24

choice.exit96:                                    ; preds = %loop.body.24
  %var.load97 = load i64, ptr %var.n92, align 8
  %b.load98 = load ptr, ptr %var.chunk, align 8
  %b.cap99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load98, i32 0, i32 2
  %b.cap100 = load i64, ptr %b.cap99, align 8
  %b.len.neg101 = icmp slt i64 %var.load97, 0
  br i1 %b.len.neg101, label %b.len_oob104, label %b.len_big_check102

b.len_big_check102:                               ; preds = %choice.exit96
  %b.len.big105 = icmp sgt i64 %var.load97, %b.cap100
  br i1 %b.len.big105, label %b.len_oob104, label %b.len_ok103

b.len_ok103:                                      ; preds = %b.len_oob104, %b.len_big_check102
  %b.len.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load98, i32 0, i32 0
  store i64 %var.load97, ptr %b.len.gep106, align 8
  %var.load107 = load ptr, ptr %"var.b'", align 8
  %var.load108 = load ptr, ptr %var.chunk, align 8
  %b.freeze.len109 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 0
  %b.freeze.len110 = load i64, ptr %b.freeze.len109, align 8
  %b.freeze.data111 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 1
  %b.freeze.data112 = load ptr, ptr %b.freeze.data111, align 8
  %b.freeze.arena113 = call ptr @dva_arena_current()
  %b.freeze.nc.gep114 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena113, i32 0, i32 1
  %b.freeze.nc115 = load i64, ptr %b.freeze.nc.gep114, align 8
  %b.freeze.has.chunk116 = icmp sgt i64 %b.freeze.nc115, 0
  br i1 %b.freeze.has.chunk116, label %b.freeze.check117, label %b.freeze.done119

b.len_oob104:                                     ; preds = %b.len_big_check102, %choice.exit96
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok103

b.freeze.check117:                                ; preds = %b.len_ok103
  %b.freeze.last.idx120 = sub i64 %b.freeze.nc115, 1
  %b.freeze.chunks.gep121 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena113, i32 0, i32 3
  %b.freeze.chunk.slot122 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep121, i64 0, i64 %b.freeze.last.idx120
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
  %arena.cur135 = call ptr @dva_arena_current()
  %b.freeze.fresh136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 %b.freeze.len110)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh136, ptr align 1 %b.freeze.data112, i64 %b.freeze.len110, i1 false)
  br label %b.freeze.done119

b.freeze.done119:                                 ; preds = %b.freeze.copy118, %b.freeze.check117, %b.len_ok103
  %b.freeze.data137 = phi ptr [ %b.freeze.data112, %b.len_ok103 ], [ %b.freeze.data112, %b.freeze.check117 ], [ %b.freeze.fresh136, %b.freeze.copy118 ]
  %arena.cur138 = call ptr @dva_arena_current()
  %builder.freeze139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 16)
  %str.build.len.gep140 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze139, i32 0, i32 0
  store i64 %b.freeze.len110, ptr %str.build.len.gep140, align 8
  %str.build.data.gep141 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze139, i32 0, i32 1
  store ptr %b.freeze.data137, ptr %str.build.data.gep141, align 8
  %b.freeze.rst.len142 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len142, align 8
  %b.freeze.rst.data143 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data143, align 8
  %b.freeze.rst.cap144 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap144, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load107, i32 0, i32 0
  %concat.lhs145 = load i64, ptr %concat.lhs, align 8
  %concat.lhs146 = and i64 %concat.lhs145, 281474976710655
  %str.tag147 = lshr i64 %concat.lhs145, 48
  %str.immortal148 = icmp eq i64 %str.tag147, 0
  br i1 %str.immortal148, label %str_ok150, label %str_gen_check149

str_gen_check149:                                 ; preds = %b.freeze.done119
  %arena.cur152 = call ptr @dva_arena_current()
  %tag.valid153 = call i1 @dva_arena_validate_tag(ptr %arena.cur152, i64 %str.tag147)
  br i1 %tag.valid153, label %str_ok150, label %str_stale151

str_ok150:                                        ; preds = %str_stale151, %str_gen_check149, %b.freeze.done119
  %concat.lhs154 = getelementptr inbounds { i64, ptr }, ptr %var.load107, i32 0, i32 1
  %concat.lhs155 = load ptr, ptr %concat.lhs154, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze139, i32 0, i32 0
  %concat.rhs156 = load i64, ptr %concat.rhs, align 8
  %concat.rhs157 = and i64 %concat.rhs156, 281474976710655
  %str.tag158 = lshr i64 %concat.rhs156, 48
  %str.immortal159 = icmp eq i64 %str.tag158, 0
  br i1 %str.immortal159, label %str_ok161, label %str_gen_check160

str_stale151:                                     ; preds = %str_gen_check149
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok150

str_gen_check160:                                 ; preds = %str_ok150
  %arena.cur163 = call ptr @dva_arena_current()
  %tag.valid164 = call i1 @dva_arena_validate_tag(ptr %arena.cur163, i64 %str.tag158)
  br i1 %tag.valid164, label %str_ok161, label %str_stale162

str_ok161:                                        ; preds = %str_stale162, %str_gen_check160, %str_ok150
  %concat.rhs165 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze139, i32 0, i32 1
  %concat.rhs166 = load ptr, ptr %concat.rhs165, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs146, i64 %concat.rhs157)
  %sum167 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf168 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf168, label %str_overflow_abort170, label %concat.sum.len169

str_stale162:                                     ; preds = %str_gen_check160
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok161

concat.sum.len169:                                ; preds = %str_overflow_abort170, %str_ok161
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum167, i64 1)
  %sum171 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf172 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf172, label %str_overflow_abort174, label %concat.tot.len173

str_overflow_abort170:                            ; preds = %str_ok161
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len169

concat.tot.len173:                                ; preds = %str_overflow_abort174, %concat.sum.len169
  %arena.cur175 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 %sum171)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs155, i64 %concat.lhs146, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs146
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs166, i64 %concat.rhs157, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum167
  store i8 0, ptr %concat.nul, align 1
  %arena.cur176 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 16)
  %str.build.len.gep177 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum167, ptr %str.build.len.gep177, align 8
  %str.build.data.gep178 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep178, align 8
  store ptr %concat.str, ptr %"var.b'", align 8
  br label %loop.latch.24

str_overflow_abort174:                            ; preds = %concat.sum.len169
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len173
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #0

define i1 @"fs::write_file"(ptr %0, ptr %1) #1 {
entry:
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i64 @"fs::open_wronly_creat_trunc"()
  %coerce.trunc = trunc i64 %call.res to i32
  %call.res9 = call i32 @open(ptr %arg.str.ptr8, i32 %coerce.trunc, i64 420)
  store i32 %call.res9, ptr %var.fd, align 4
  %var.load10 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load10, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load11 = load ptr, ptr %var.content, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %str.len.query12 = load i64, ptr %str.len.query, align 8
  %str.len.query13 = and i64 %str.len.query12, 281474976710655
  %str.tag14 = lshr i64 %str.len.query12, 48
  %str.immortal15 = icmp eq i64 %str.tag14, 0
  br i1 %str.immortal15, label %str_ok17, label %str_gen_check16

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check16:                                  ; preds = %choice.exit
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid20 = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag14)
  br i1 %tag.valid20, label %str_ok17, label %str_stale18

str_ok17:                                         ; preds = %str_stale18, %str_gen_check16, %choice.exit
  store i64 %str.len.query13, ptr %var.len, align 8
  %var.load21 = load i64, ptr %var.len, align 8
  %cmptmp22 = icmp sgt i64 %var.load21, 0
  br i1 %cmptmp22, label %choice.then23, label %choice.exit24

str_stale18:                                      ; preds = %str_gen_check16
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok17

choice.then23:                                    ; preds = %str_ok17
  %var.load25 = load i64, ptr %var.fd, align 8
  %var.load26 = load ptr, ptr %var.content, align 8
  %arg.str.ptr27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %arg.str.ptr28 = load ptr, ptr %arg.str.ptr27, align 8
  %arg.str.ptr29 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %arg.str.ptr30 = load i64, ptr %arg.str.ptr29, align 8
  %arg.str.ptr31 = and i64 %arg.str.ptr30, 281474976710655
  %str.tag32 = lshr i64 %arg.str.ptr30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

choice.exit24:                                    ; preds = %nulmerge44, %str_ok17
  %var.load57 = load i64, ptr %var.fd, align 8
  %coerce.trunc58 = trunc i64 %var.load57 to i32
  %call.res59 = call i32 @close(i32 %coerce.trunc58)
  ret i1 true

str_gen_check34:                                  ; preds = %choice.then23
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %choice.then23
  %nulcheck.gep39 = getelementptr i8, ptr %arg.str.ptr28, i64 %arg.str.ptr31
  %nulcheck.byte40 = load i8, ptr %nulcheck.gep39, align 1
  %nulcheck41 = icmp eq i8 %nulcheck.byte40, 0
  br i1 %nulcheck41, label %arg.str.ptr42, label %nulcopy43

str_stale36:                                      ; preds = %str_gen_check34
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

arg.str.ptr42:                                    ; preds = %str_ok35
  br label %nulmerge44

nulcopy43:                                        ; preds = %str_ok35
  %nulcopy.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr31, i64 1)
  %sum46 = extractvalue { i64, i1 } %nulcopy.len45, 0
  %ovf47 = extractvalue { i64, i1 } %nulcopy.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %nulcopy.len48

nulmerge44:                                       ; preds = %nulcopy.len48, %arg.str.ptr42
  %arg.str.ptr53 = phi ptr [ %arg.str.ptr28, %arg.str.ptr42 ], [ %nulcopy.buf51, %nulcopy.len48 ]
  %var.load54 = load i64, ptr %var.len, align 8
  %coerce.trunc55 = trunc i64 %var.load25 to i32
  %call.res56 = call i64 @write(i32 %coerce.trunc55, ptr %arg.str.ptr53, i64 %var.load54)
  br label %choice.exit24

nulcopy.len48:                                    ; preds = %str_overflow_abort49, %nulcopy43
  %arena.cur50 = call ptr @dva_arena_current()
  %nulcopy.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf51, ptr align 1 %arg.str.ptr28, i64 %arg.str.ptr31, i1 false)
  %nulcopy.nul52 = getelementptr i8, ptr %nulcopy.buf51, i64 %arg.str.ptr31
  store i8 0, ptr %nulcopy.nul52, align 1
  br label %nulmerge44

str_overflow_abort49:                             ; preds = %nulcopy43
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len48
}

define i1 @"fs::copy_file"(ptr %0, ptr %1) #1 {
entry:
  %var.w = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.25 = alloca i64, align 8
  %loop.idx.25 = alloca i64, align 8
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i32 @open(ptr %arg.str.ptr8, i32 0)
  store i32 %call.res, ptr %var.s_fd, align 4
  %var.load9 = load i64, ptr %var.s_fd, align 8
  %cmptmp = icmp slt i64 %var.load9, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load10 = load ptr, ptr %var.dst_path, align 8
  %arg.str.ptr11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %arg.str.ptr12 = load ptr, ptr %arg.str.ptr11, align 8
  %arg.str.ptr13 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %arg.str.ptr14 = load i64, ptr %arg.str.ptr13, align 8
  %arg.str.ptr15 = and i64 %arg.str.ptr14, 281474976710655
  %str.tag16 = lshr i64 %arg.str.ptr14, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check18:                                  ; preds = %choice.exit
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %choice.exit
  %nulcheck.gep23 = getelementptr i8, ptr %arg.str.ptr12, i64 %arg.str.ptr15
  %nulcheck.byte24 = load i8, ptr %nulcheck.gep23, align 1
  %nulcheck25 = icmp eq i8 %nulcheck.byte24, 0
  br i1 %nulcheck25, label %arg.str.ptr26, label %nulcopy27

str_stale20:                                      ; preds = %str_gen_check18
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

arg.str.ptr26:                                    ; preds = %str_ok19
  br label %nulmerge28

nulcopy27:                                        ; preds = %str_ok19
  %nulcopy.len29 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr15, i64 1)
  %sum30 = extractvalue { i64, i1 } %nulcopy.len29, 0
  %ovf31 = extractvalue { i64, i1 } %nulcopy.len29, 1
  br i1 %ovf31, label %str_overflow_abort33, label %nulcopy.len32

nulmerge28:                                       ; preds = %nulcopy.len32, %arg.str.ptr26
  %arg.str.ptr37 = phi ptr [ %arg.str.ptr12, %arg.str.ptr26 ], [ %nulcopy.buf35, %nulcopy.len32 ]
  %call.res38 = call i64 @"fs::open_wronly_creat_trunc"()
  %coerce.trunc = trunc i64 %call.res38 to i32
  %call.res39 = call i32 @open(ptr %arg.str.ptr37, i32 %coerce.trunc, i64 420)
  store i32 %call.res39, ptr %var.d_fd, align 4
  %var.load40 = load i64, ptr %var.d_fd, align 8
  %cmptmp41 = icmp slt i64 %var.load40, 0
  br i1 %cmptmp41, label %choice.then42, label %choice.exit43

nulcopy.len32:                                    ; preds = %str_overflow_abort33, %nulcopy27
  %arena.cur34 = call ptr @dva_arena_current()
  %nulcopy.buf35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %sum30)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf35, ptr align 1 %arg.str.ptr12, i64 %arg.str.ptr15, i1 false)
  %nulcopy.nul36 = getelementptr i8, ptr %nulcopy.buf35, i64 %arg.str.ptr15
  store i8 0, ptr %nulcopy.nul36, align 1
  br label %nulmerge28

str_overflow_abort33:                             ; preds = %nulcopy27
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len32

choice.then42:                                    ; preds = %nulmerge28
  %var.load44 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc45 = trunc i64 %var.load44 to i32
  %call.res46 = call i32 @close(i32 %coerce.trunc45)
  ret i1 false

choice.exit43:                                    ; preds = %ret.dead47, %nulmerge28
  %arena.cur48 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16384, i64 1)
  %sum49 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf50 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf50, label %str_overflow_abort52, label %b.buf.len51

ret.dead47:                                       ; No predecessors!
  br label %choice.exit43

b.buf.len51:                                      ; preds = %str_overflow_abort52, %choice.exit43
  %arena.cur53 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum49)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16384, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  store i1 true, ptr %"var.ok'", align 1
  store i64 0, ptr %loop.idx.25, align 8
  br label %loop.header.25

str_overflow_abort52:                             ; preds = %choice.exit43
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len51

loop.header.25:                                   ; preds = %loop.latch.25, %b.buf.len51
  %counter.load = load i64, ptr %loop.idx.25, align 8
  br label %loop.body.25

loop.body.25:                                     ; preds = %loop.header.25
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.25, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load54 = load i64, ptr %var.s_fd, align 8
  %var.load55 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load55, i32 0, i32 1
  %b.ptr56 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr56 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc57 = trunc i64 %var.load54 to i32
  %call.res58 = call i64 @read(i32 %coerce.trunc57, ptr %addr.ffi.clean, i64 16384)
  store i64 %call.res58, ptr %var.n, align 8
  %var.load59 = load i64, ptr %var.n, align 8
  %cmptmp60 = icmp sle i64 %var.load59, 0
  br i1 %cmptmp60, label %choice.then61, label %choice.exit62

loop.exit.nat.25:                                 ; No predecessors!
  br label %loop.exit.25

loop.latch.25:                                    ; preds = %choice.exit77
  %step.val = load i64, ptr %loop.step.25, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.25, align 8
  br label %loop.header.25

loop.exit.25:                                     ; preds = %choice.then76, %choice.then61, %loop.exit.nat.25
  %var.load78 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc79 = trunc i64 %var.load78 to i32
  %call.res80 = call i32 @close(i32 %coerce.trunc79)
  %var.load81 = load i64, ptr %var.d_fd, align 8
  %coerce.trunc82 = trunc i64 %var.load81 to i32
  %call.res83 = call i32 @close(i32 %coerce.trunc82)
  %var.load84 = load i1, ptr %"var.ok'", align 1
  ret i1 %var.load84

choice.then61:                                    ; preds = %loop.body.25
  br label %loop.exit.25

choice.exit62:                                    ; preds = %loop.body.25
  %var.load63 = load i64, ptr %var.d_fd, align 8
  %var.load64 = load ptr, ptr %var.buf, align 8
  %b.ptr65 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load64, i32 0, i32 1
  %b.ptr66 = load ptr, ptr %b.ptr65, align 8
  %addr.ffi.int67 = ptrtoint ptr %b.ptr66 to i64
  %addr.ffi.masked68 = and i64 %addr.ffi.int67, 281474976710655
  %addr.ffi.clean69 = inttoptr i64 %addr.ffi.masked68 to ptr
  %var.load70 = load i64, ptr %var.n, align 8
  %coerce.trunc71 = trunc i64 %var.load63 to i32
  %call.res72 = call i64 @write(i32 %coerce.trunc71, ptr %addr.ffi.clean69, i64 %var.load70)
  store i64 %call.res72, ptr %var.w, align 8
  %var.load73 = load i64, ptr %var.w, align 8
  %var.load74 = load i64, ptr %var.n, align 8
  %cmptmp75 = icmp ne i64 %var.load73, %var.load74
  br i1 %cmptmp75, label %choice.then76, label %choice.exit77

choice.then76:                                    ; preds = %choice.exit62
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.25

choice.exit77:                                    ; preds = %choice.exit62
  br label %loop.latch.25
}

define i1 @"fs::rename_path"(ptr %0, ptr %1) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load9 = load ptr, ptr %var.new_p, align 8
  %arg.str.ptr10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %arg.str.ptr11 = load ptr, ptr %arg.str.ptr10, align 8
  %arg.str.ptr12 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %arg.str.ptr13 = load i64, ptr %arg.str.ptr12, align 8
  %arg.str.ptr14 = and i64 %arg.str.ptr13, 281474976710655
  %str.tag15 = lshr i64 %arg.str.ptr13, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

str_gen_check17:                                  ; preds = %nulmerge
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag15)
  br i1 %tag.valid21, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %nulmerge
  %nulcheck.gep22 = getelementptr i8, ptr %arg.str.ptr11, i64 %arg.str.ptr14
  %nulcheck.byte23 = load i8, ptr %nulcheck.gep22, align 1
  %nulcheck24 = icmp eq i8 %nulcheck.byte23, 0
  br i1 %nulcheck24, label %arg.str.ptr25, label %nulcopy26

str_stale19:                                      ; preds = %str_gen_check17
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18

arg.str.ptr25:                                    ; preds = %str_ok18
  br label %nulmerge27

nulcopy26:                                        ; preds = %str_ok18
  %nulcopy.len28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr14, i64 1)
  %sum29 = extractvalue { i64, i1 } %nulcopy.len28, 0
  %ovf30 = extractvalue { i64, i1 } %nulcopy.len28, 1
  br i1 %ovf30, label %str_overflow_abort32, label %nulcopy.len31

nulmerge27:                                       ; preds = %nulcopy.len31, %arg.str.ptr25
  %arg.str.ptr36 = phi ptr [ %arg.str.ptr11, %arg.str.ptr25 ], [ %nulcopy.buf34, %nulcopy.len31 ]
  %call.res = call i64 @rename(ptr %arg.str.ptr8, ptr %arg.str.ptr36)
  %cmptmp = icmp eq i64 %call.res, 0
  ret i1 %cmptmp

nulcopy.len31:                                    ; preds = %str_overflow_abort32, %nulcopy26
  %arena.cur33 = call ptr @dva_arena_current()
  %nulcopy.buf34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %sum29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf34, ptr align 1 %arg.str.ptr11, i64 %arg.str.ptr14, i1 false)
  %nulcopy.nul35 = getelementptr i8, ptr %nulcopy.buf34, i64 %arg.str.ptr14
  store i8 0, ptr %nulcopy.nul35, align 1
  br label %nulmerge27

str_overflow_abort32:                             ; preds = %nulcopy26
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len31
}

define i1 @"fs::create_file"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"fs::write_file"(ptr %var.load, ptr @str.2.struct)
  ret i1 %call.res
}

define i1 @"fs::create_dir"(ptr %0) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i64 @mkdir(ptr %arg.str.ptr8, i64 493)
  %cmptmp = icmp eq i64 %call.res, 0
  ret i1 %cmptmp

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6
}

define i1 @"fs::create_dir_all"(ptr %0) #1 {
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
  %call.res2 = call ptr @"fs::parent"(ptr %var.load1)
  store ptr %call.res2, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len4 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit52, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %call.res60, %choice.exit52 ]
  ret i1 %choice.res

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %str.tag7 = lshr i64 %eq.rhs.len, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

str.eq.then:                                      ; preds = %str_ok10
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data14 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data14, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok10
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.26.then, label %and.26.else

and.26.then:                                      ; preds = %str.eq.merge
  %var.load15 = load ptr, ptr %var.p, align 8
  %var.load16 = load ptr, ptr %var.path, align 8
  %eq.lhs.len17 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %eq.lhs.len18 = load i64, ptr %eq.lhs.len17, align 8
  %eq.lhs.len19 = and i64 %eq.lhs.len18, 281474976710655
  %str.tag20 = lshr i64 %eq.lhs.len18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

and.26.else:                                      ; preds = %str.eq.merge
  br label %and.26.exit

and.26.exit:                                      ; preds = %and.26.else, %str.eq.merge40
  %and.26.phi = phi i1 [ %str.neq48, %str.eq.merge40 ], [ %str.neq, %and.26.else ]
  br i1 %and.26.phi, label %and.27.then, label %and.27.else

str_gen_check22:                                  ; preds = %and.26.then
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %and.26.then
  %eq.rhs.len27 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %eq.rhs.len28 = load i64, ptr %eq.rhs.len27, align 8
  %eq.rhs.len29 = and i64 %eq.rhs.len28, 281474976710655
  %str.tag30 = lshr i64 %eq.rhs.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_stale24:                                      ; preds = %str_gen_check22
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23

str_gen_check32:                                  ; preds = %str_ok23
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %str_ok23
  %eq.len37 = icmp eq i64 %eq.lhs.len19, %eq.rhs.len29
  br i1 %eq.len37, label %str.eq.then38, label %str.eq.else39

str_stale34:                                      ; preds = %str_gen_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str.eq.then38:                                    ; preds = %str_ok33
  %eq.lhs.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %eq.lhs.data42 = load ptr, ptr %eq.lhs.data41, align 8
  %eq.rhs.data43 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %eq.rhs.data44 = load ptr, ptr %eq.rhs.data43, align 8
  %eq.memcmp45 = call i32 @memcmp(ptr %eq.lhs.data42, ptr %eq.rhs.data44, i64 %eq.lhs.len19)
  %eq.cmp.zero46 = icmp eq i32 %eq.memcmp45, 0
  br label %str.eq.merge40

str.eq.else39:                                    ; preds = %str_ok33
  br label %str.eq.merge40

str.eq.merge40:                                   ; preds = %str.eq.else39, %str.eq.then38
  %str.eq.result47 = phi i1 [ %eq.cmp.zero46, %str.eq.then38 ], [ false, %str.eq.else39 ]
  %str.neq48 = xor i1 %str.eq.result47, true
  br label %and.26.exit

and.27.then:                                      ; preds = %and.26.exit
  %var.load49 = load ptr, ptr %var.p, align 8
  %call.res50 = call i1 @"fs::is_dir"(ptr %var.load49)
  %nottmp = xor i1 %call.res50, true
  br label %and.27.exit

and.27.else:                                      ; preds = %and.26.exit
  br label %and.27.exit

and.27.exit:                                      ; preds = %and.27.else, %and.27.then
  %and.27.phi = phi i1 [ %nottmp, %and.27.then ], [ %and.26.phi, %and.27.else ]
  br i1 %and.27.phi, label %choice.then51, label %choice.exit52

choice.then51:                                    ; preds = %and.27.exit
  %var.load53 = load ptr, ptr %var.p, align 8
  %call.res54 = call i1 @"fs::create_dir_all"(ptr %var.load53)
  store i1 %call.res54, ptr %var.ok, align 1
  %var.load55 = load i1, ptr %var.ok, align 1
  %nottmp56 = xor i1 %var.load55, true
  br i1 %nottmp56, label %choice.then57, label %choice.exit58

choice.exit52:                                    ; preds = %choice.exit58, %and.27.exit
  %var.load59 = load ptr, ptr %var.path, align 8
  %call.res60 = call i1 @"fs::create_dir"(ptr %var.load59)
  br label %choice.exit

choice.then57:                                    ; preds = %choice.then51
  ret i1 false

choice.exit58:                                    ; preds = %ret.dead, %choice.then51
  br label %choice.exit52

ret.dead:                                         ; No predecessors!
  br label %choice.exit58
}

define i1 @"fs::remove"(ptr %0) #1 {
entry:
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::is_dir"(ptr %var.load)
  br i1 %call.res, label %and.28.then, label %and.28.else

and.28.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call i1 @"fs::is_symlink"(ptr %var.load1)
  %nottmp = xor i1 %call.res2, true
  br label %and.28.exit

and.28.else:                                      ; preds = %entry
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %and.28.then
  %and.28.phi = phi i1 [ %nottmp, %and.28.then ], [ %call.res, %and.28.else ]
  br i1 %and.28.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.28.exit
  %var.load3 = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %arg.str.ptr4 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr5 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %arg.str.ptr6 = load i64, ptr %arg.str.ptr5, align 8
  %arg.str.ptr7 = and i64 %arg.str.ptr6, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %and.28.exit
  %var.load13 = load ptr, ptr %var.path, align 8
  %arg.str.ptr14 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %arg.str.ptr15 = load ptr, ptr %arg.str.ptr14, align 8
  %arg.str.ptr16 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %arg.str.ptr17 = load i64, ptr %arg.str.ptr16, align 8
  %arg.str.ptr18 = and i64 %arg.str.ptr17, 281474976710655
  %str.tag19 = lshr i64 %arg.str.ptr17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

choice.exit:                                      ; preds = %nulmerge31, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ %cmptmp42, %nulmerge31 ]
  ret i1 %choice.res

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr4, i64 %arg.str.ptr7
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr8, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr8:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr7, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len9

nulmerge:                                         ; preds = %nulcopy.len9, %arg.str.ptr8
  %arg.str.ptr11 = phi ptr [ %arg.str.ptr4, %arg.str.ptr8 ], [ %nulcopy.buf, %nulcopy.len9 ]
  %call.res12 = call i64 @rmdir(ptr %arg.str.ptr11)
  %cmptmp = icmp eq i64 %call.res12, 0
  br label %choice.exit

nulcopy.len9:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur10 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr4, i64 %arg.str.ptr7, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr7
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len9

str_gen_check21:                                  ; preds = %choice.else
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag19)
  br i1 %tag.valid25, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %choice.else
  %nulcheck.gep26 = getelementptr i8, ptr %arg.str.ptr15, i64 %arg.str.ptr18
  %nulcheck.byte27 = load i8, ptr %nulcheck.gep26, align 1
  %nulcheck28 = icmp eq i8 %nulcheck.byte27, 0
  br i1 %nulcheck28, label %arg.str.ptr29, label %nulcopy30

str_stale23:                                      ; preds = %str_gen_check21
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

arg.str.ptr29:                                    ; preds = %str_ok22
  br label %nulmerge31

nulcopy30:                                        ; preds = %str_ok22
  %nulcopy.len32 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr18, i64 1)
  %sum33 = extractvalue { i64, i1 } %nulcopy.len32, 0
  %ovf34 = extractvalue { i64, i1 } %nulcopy.len32, 1
  br i1 %ovf34, label %str_overflow_abort36, label %nulcopy.len35

nulmerge31:                                       ; preds = %nulcopy.len35, %arg.str.ptr29
  %arg.str.ptr40 = phi ptr [ %arg.str.ptr15, %arg.str.ptr29 ], [ %nulcopy.buf38, %nulcopy.len35 ]
  %call.res41 = call i64 @unlink(ptr %arg.str.ptr40)
  %cmptmp42 = icmp eq i64 %call.res41, 0
  br label %choice.exit

nulcopy.len35:                                    ; preds = %str_overflow_abort36, %nulcopy30
  %arena.cur37 = call ptr @dva_arena_current()
  %nulcopy.buf38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 %sum33)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf38, ptr align 1 %arg.str.ptr15, i64 %arg.str.ptr18, i1 false)
  %nulcopy.nul39 = getelementptr i8, ptr %nulcopy.buf38, i64 %arg.str.ptr18
  store i8 0, ptr %nulcopy.nul39, align 1
  br label %nulmerge31

str_overflow_abort36:                             ; preds = %nulcopy30
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len35
}

define i1 @"fs::delete_entry"(ptr %0, i1 %1) #1 {
entry:
  %var.is_d = alloca i1, align 1
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i1 %1, ptr %var.is_d, align 1
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"fs::remove"(ptr %var.load)
  ret i1 %call.res
}

define i1 @"fs::write_text_file"(ptr %0, ptr %1) #1 {
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

define i1 @"fs::remove_all"(ptr %0) #1 {
entry:
  %var.sub_ok = alloca i1, align 1
  %var.sub = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.31 = alloca i64, align 8
  %loop.idx.31 = alloca i64, align 8
  %"var.all_ok'" = alloca i1, align 1
  %var.ents = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::exists"(ptr %var.load)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %and.29.then, label %and.29.else

and.29.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call i1 @"fs::is_symlink"(ptr %var.load1)
  %nottmp3 = xor i1 %call.res2, true
  br label %and.29.exit

and.29.else:                                      ; preds = %entry
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %and.29.then
  %and.29.phi = phi i1 [ %nottmp3, %and.29.then ], [ %nottmp, %and.29.else ]
  br i1 %and.29.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.29.exit
  br label %choice.exit

choice.else:                                      ; preds = %and.29.exit
  %var.load4 = load ptr, ptr %var.path, align 8
  %call.res5 = call i1 @"fs::is_dir"(ptr %var.load4)
  br i1 %call.res5, label %and.30.then, label %and.30.else

choice.exit:                                      ; preds = %choice.exit11, %choice.then
  %choice.res73 = phi i1 [ true, %choice.then ], [ %choice.res, %choice.exit11 ]
  ret i1 %choice.res73

and.30.then:                                      ; preds = %choice.else
  %var.load6 = load ptr, ptr %var.path, align 8
  %call.res7 = call i1 @"fs::is_symlink"(ptr %var.load6)
  %nottmp8 = xor i1 %call.res7, true
  br label %and.30.exit

and.30.else:                                      ; preds = %choice.else
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %and.30.then
  %and.30.phi = phi i1 [ %nottmp8, %and.30.then ], [ %call.res5, %and.30.else ]
  br i1 %and.30.phi, label %choice.then9, label %choice.else10

choice.then9:                                     ; preds = %and.30.exit
  %var.load12 = load ptr, ptr %var.path, align 8
  %call.res13 = call ptr @"fs::read_dir"(ptr %var.load12)
  store ptr %call.res13, ptr %var.ents, align 8
  store i1 true, ptr %"var.all_ok'", align 1
  %var.load14 = load ptr, ptr %var.ents, align 8
  %a.load = load ptr, ptr %var.ents, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else10:                                    ; preds = %and.30.exit
  %var.load43 = load ptr, ptr %var.path, align 8
  %arg.str.ptr44 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %arg.str.ptr45 = load ptr, ptr %arg.str.ptr44, align 8
  %arg.str.ptr46 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %arg.str.ptr47 = load i64, ptr %arg.str.ptr46, align 8
  %arg.str.ptr48 = and i64 %arg.str.ptr47, 281474976710655
  %str.tag49 = lshr i64 %arg.str.ptr47, 48
  %str.immortal50 = icmp eq i64 %str.tag49, 0
  br i1 %str.immortal50, label %str_ok52, label %str_gen_check51

choice.exit11:                                    ; preds = %nulmerge61, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ %cmptmp72, %nulmerge61 ]
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
  store i64 0, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.header.31:                                   ; preds = %loop.latch.31, %a.after
  %counter.load = load i64, ptr %loop.idx.31, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len17
  br i1 %loop.cond, label %loop.body.31, label %loop.exit.nat.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.31, align 8
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
  %call.res21 = call ptr @"fs::join"(ptr %var.load19, ptr %fld.load)
  store ptr %call.res21, ptr %var.sub, align 8
  %var.load22 = load ptr, ptr %var.sub, align 8
  %call.res23 = call i1 @"fs::remove_all"(ptr %var.load22)
  store i1 %call.res23, ptr %var.sub_ok, align 1
  %var.load24 = load i1, ptr %var.sub_ok, align 1
  %nottmp25 = xor i1 %var.load24, true
  br i1 %nottmp25, label %choice.then26, label %choice.exit27

loop.exit.nat.31:                                 ; preds = %loop.header.31
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit27
  %step.val = load i64, ptr %loop.step.31, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %loop.exit.nat.31
  %var.load28 = load i1, ptr %"var.all_ok'", align 1
  %nottmp29 = xor i1 %var.load28, true
  br i1 %nottmp29, label %choice.then30, label %choice.exit31

choice.then26:                                    ; preds = %loop.body.31
  store i1 false, ptr %"var.all_ok'", align 1
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.then26, %loop.body.31
  br label %loop.latch.31

choice.then30:                                    ; preds = %loop.exit.31
  ret i1 false

choice.exit31:                                    ; preds = %ret.dead, %loop.exit.31
  %var.load32 = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %arg.str.ptr33 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr34 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %arg.str.ptr35 = load i64, ptr %arg.str.ptr34, align 8
  %arg.str.ptr36 = and i64 %arg.str.ptr35, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr35, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit31

str_gen_check:                                    ; preds = %choice.exit31
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit31
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr33, i64 %arg.str.ptr36
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr38, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr38:                                    ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr36, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len39

nulmerge:                                         ; preds = %nulcopy.len39, %arg.str.ptr38
  %arg.str.ptr41 = phi ptr [ %arg.str.ptr33, %arg.str.ptr38 ], [ %nulcopy.buf, %nulcopy.len39 ]
  %call.res42 = call i64 @rmdir(ptr %arg.str.ptr41)
  %cmptmp = icmp eq i64 %call.res42, 0
  br label %choice.exit11

nulcopy.len39:                                    ; preds = %str_overflow_abort, %nulcopy
  %arena.cur40 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr33, i64 %arg.str.ptr36, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr36
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len39

str_gen_check51:                                  ; preds = %choice.else10
  %arena.cur54 = call ptr @dva_arena_current()
  %tag.valid55 = call i1 @dva_arena_validate_tag(ptr %arena.cur54, i64 %str.tag49)
  br i1 %tag.valid55, label %str_ok52, label %str_stale53

str_ok52:                                         ; preds = %str_stale53, %str_gen_check51, %choice.else10
  %nulcheck.gep56 = getelementptr i8, ptr %arg.str.ptr45, i64 %arg.str.ptr48
  %nulcheck.byte57 = load i8, ptr %nulcheck.gep56, align 1
  %nulcheck58 = icmp eq i8 %nulcheck.byte57, 0
  br i1 %nulcheck58, label %arg.str.ptr59, label %nulcopy60

str_stale53:                                      ; preds = %str_gen_check51
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok52

arg.str.ptr59:                                    ; preds = %str_ok52
  br label %nulmerge61

nulcopy60:                                        ; preds = %str_ok52
  %nulcopy.len62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr48, i64 1)
  %sum63 = extractvalue { i64, i1 } %nulcopy.len62, 0
  %ovf64 = extractvalue { i64, i1 } %nulcopy.len62, 1
  br i1 %ovf64, label %str_overflow_abort66, label %nulcopy.len65

nulmerge61:                                       ; preds = %nulcopy.len65, %arg.str.ptr59
  %arg.str.ptr70 = phi ptr [ %arg.str.ptr45, %arg.str.ptr59 ], [ %nulcopy.buf68, %nulcopy.len65 ]
  %call.res71 = call i64 @unlink(ptr %arg.str.ptr70)
  %cmptmp72 = icmp eq i64 %call.res71, 0
  br label %choice.exit11

nulcopy.len65:                                    ; preds = %str_overflow_abort66, %nulcopy60
  %arena.cur67 = call ptr @dva_arena_current()
  %nulcopy.buf68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 %sum63)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf68, ptr align 1 %arg.str.ptr45, i64 %arg.str.ptr48, i1 false)
  %nulcopy.nul69 = getelementptr i8, ptr %nulcopy.buf68, i64 %arg.str.ptr48
  store i8 0, ptr %nulcopy.nul69, align 1
  br label %nulmerge61

str_overflow_abort66:                             ; preds = %nulcopy60
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len65
}

define ptr @"fs::space"(ptr %0) #1 {
entry:
  %var.avail = alloca i64, align 8
  %var.free = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.bavail = alloca i64, align 8
  %var.bfree = alloca i64, align 8
  %var.blocks = alloca i64, align 8
  %var.is_mac = alloca i1, align 1
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load9 = load ptr, ptr %"var.st'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res10 = call i64 @statvfs(ptr %arg.str.ptr8, ptr %addr.ffi.clean)
  store i64 %call.res10, ptr %var.rc, align 8
  %var.load11 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load11, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load12 = load ptr, ptr %"var.st'", align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load12, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.frsize, align 8
  %var.load13 = load i64, ptr %var.frsize, align 8
  %cmptmp14 = icmp eq i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then15:                                    ; preds = %choice.exit
  %var.load17 = load ptr, ptr %"var.st'", align 8
  %fld.gep18 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load17, i32 0, i32 0
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  br label %choice.exit16

choice.else:                                      ; preds = %choice.exit
  %var.load20 = load i64, ptr %var.frsize, align 8
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else, %choice.then15
  %choice.res = phi i64 [ %fld.load19, %choice.then15 ], [ %var.load20, %choice.else ]
  store i64 %choice.res, ptr %"var.eff_frsize'", align 8
  %var.load21 = load i64, ptr %"var.eff_frsize'", align 8
  %cmptmp22 = icmp eq i64 %var.load21, 0
  br i1 %cmptmp22, label %choice.then23, label %choice.else24

choice.then23:                                    ; preds = %choice.exit16
  br label %choice.exit25

choice.else24:                                    ; preds = %choice.exit16
  %var.load26 = load i64, ptr %"var.eff_frsize'", align 8
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else24, %choice.then23
  %choice.res27 = phi i64 [ 4096, %choice.then23 ], [ %var.load26, %choice.else24 ]
  store i64 %choice.res27, ptr %"var.eff_frsize'", align 8
  %call.res28 = call i1 @"libc::is_darwin"()
  store i1 %call.res28, ptr %var.is_mac, align 1
  %var.load29 = load i1, ptr %var.is_mac, align 1
  br i1 %var.load29, label %choice.then30, label %choice.else31

choice.then30:                                    ; preds = %choice.exit25
  %var.load33 = load ptr, ptr %"var.st'", align 8
  %ptr.int.l = ptrtoint ptr %var.load33 to i64
  %addtmp = add i64 %ptr.int.l, 16
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else31:                                    ; preds = %choice.exit25
  %var.load36 = load ptr, ptr %"var.st'", align 8
  %fld.gep37 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load36, i32 0, i32 2
  %fld.load38 = load i64, ptr %fld.gep37, align 8
  br label %choice.exit32

choice.exit32:                                    ; preds = %choice.else31, %addr_ok
  %choice.res39 = phi i64 [ %coerce.zext, %addr_ok ], [ %fld.load38, %choice.else31 ]
  store i64 %choice.res39, ptr %var.blocks, align 8
  %var.load40 = load i1, ptr %var.is_mac, align 1
  br i1 %var.load40, label %choice.then41, label %choice.else42

addr_gen_check:                                   ; preds = %choice.then30
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %addr.tag)
  br i1 %tag.valid35, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then30
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  %coerce.zext = zext i32 %raw.load to i64
  br label %choice.exit32

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then41:                                    ; preds = %choice.exit32
  %var.load44 = load ptr, ptr %"var.st'", align 8
  %ptr.int.l45 = ptrtoint ptr %var.load44 to i64
  %addtmp46 = add i64 %ptr.int.l45, 20
  %ptr.res47 = inttoptr i64 %addtmp46 to ptr
  %raw.int48 = ptrtoint ptr %ptr.res47 to i64
  %raw.clean.int49 = and i64 %raw.int48, 281474976710655
  %raw.clean.ptr50 = inttoptr i64 %raw.clean.int49 to ptr
  %addr.tag51 = lshr i64 %raw.int48, 48
  %addr.immortal52 = icmp eq i64 %addr.tag51, 0
  br i1 %addr.immortal52, label %addr_ok54, label %addr_gen_check53

choice.else42:                                    ; preds = %choice.exit32
  %var.load60 = load ptr, ptr %"var.st'", align 8
  %fld.gep61 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load60, i32 0, i32 3
  %fld.load62 = load i64, ptr %fld.gep61, align 8
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %addr_ok54
  %choice.res63 = phi i64 [ %coerce.zext59, %addr_ok54 ], [ %fld.load62, %choice.else42 ]
  store i64 %choice.res63, ptr %var.bfree, align 8
  %var.load64 = load i1, ptr %var.is_mac, align 1
  br i1 %var.load64, label %choice.then65, label %choice.else66

addr_gen_check53:                                 ; preds = %choice.then41
  %arena.cur56 = call ptr @dva_arena_current()
  %tag.valid57 = call i1 @dva_arena_validate_tag(ptr %arena.cur56, i64 %addr.tag51)
  br i1 %tag.valid57, label %addr_ok54, label %addr_stale55

addr_ok54:                                        ; preds = %addr_stale55, %addr_gen_check53, %choice.then41
  %raw.load58 = load volatile i32, ptr %raw.clean.ptr50, align 4
  %coerce.zext59 = zext i32 %raw.load58 to i64
  br label %choice.exit43

addr_stale55:                                     ; preds = %addr_gen_check53
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok54

choice.then65:                                    ; preds = %choice.exit43
  %var.load68 = load ptr, ptr %"var.st'", align 8
  %ptr.int.l69 = ptrtoint ptr %var.load68 to i64
  %addtmp70 = add i64 %ptr.int.l69, 24
  %ptr.res71 = inttoptr i64 %addtmp70 to ptr
  %raw.int72 = ptrtoint ptr %ptr.res71 to i64
  %raw.clean.int73 = and i64 %raw.int72, 281474976710655
  %raw.clean.ptr74 = inttoptr i64 %raw.clean.int73 to ptr
  %addr.tag75 = lshr i64 %raw.int72, 48
  %addr.immortal76 = icmp eq i64 %addr.tag75, 0
  br i1 %addr.immortal76, label %addr_ok78, label %addr_gen_check77

choice.else66:                                    ; preds = %choice.exit43
  %var.load84 = load ptr, ptr %"var.st'", align 8
  %fld.gep85 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load84, i32 0, i32 4
  %fld.load86 = load i64, ptr %fld.gep85, align 8
  br label %choice.exit67

choice.exit67:                                    ; preds = %choice.else66, %addr_ok78
  %choice.res87 = phi i64 [ %coerce.zext83, %addr_ok78 ], [ %fld.load86, %choice.else66 ]
  store i64 %choice.res87, ptr %var.bavail, align 8
  %var.load88 = load i64, ptr %var.blocks, align 8
  %var.load89 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp = mul i64 %var.load88, %var.load89
  store i64 %multmp, ptr %var.total, align 8
  %var.load90 = load i64, ptr %var.bfree, align 8
  %var.load91 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp92 = mul i64 %var.load90, %var.load91
  store i64 %multmp92, ptr %var.free, align 8
  %var.load93 = load i64, ptr %var.bavail, align 8
  %var.load94 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp95 = mul i64 %var.load93, %var.load94
  store i64 %multmp95, ptr %var.avail, align 8
  %var.load96 = load i64, ptr %var.total, align 8
  %var.load97 = load i64, ptr %var.free, align 8
  %var.load98 = load i64, ptr %var.avail, align 8
  %arena.cur99 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load96, ptr %rec.fld, align 8
  %rec.fld100 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load97, ptr %rec.fld100, align 8
  %rec.fld101 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load98, ptr %rec.fld101, align 8
  ret ptr %rec.alloc

addr_gen_check77:                                 ; preds = %choice.then65
  %arena.cur80 = call ptr @dva_arena_current()
  %tag.valid81 = call i1 @dva_arena_validate_tag(ptr %arena.cur80, i64 %addr.tag75)
  br i1 %tag.valid81, label %addr_ok78, label %addr_stale79

addr_ok78:                                        ; preds = %addr_stale79, %addr_gen_check77, %choice.then65
  %raw.load82 = load volatile i32, ptr %raw.clean.ptr74, align 4
  %coerce.zext83 = zext i32 %raw.load82 to i64
  br label %choice.exit67

addr_stale79:                                     ; preds = %addr_gen_check77
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok78
}

define ptr @"fs::get_fs_stats"(ptr %0) #1 {
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
  %arena.cur61 = call ptr @dva_arena_current()
  %rec.alloc62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld63 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc62, i32 0, i32 0
  store i64 0, ptr %rec.fld63, align 8
  %rec.fld64 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc62, i32 0, i32 1
  store i64 0, ptr %rec.fld64, align 8
  %rec.fld65 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc62, i32 0, i32 2
  store i64 0, ptr %rec.fld65, align 8
  %rec.fld66 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc62, i32 0, i32 3
  store i64 0, ptr %rec.fld66, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit41
  %choice.res67 = phi ptr [ %rec.alloc, %choice.exit41 ], [ %rec.alloc62, %choice.else ]
  ret ptr %choice.res67

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

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit10
  %div.is.min = icmp eq i64 %var.load13, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load14, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit10
  %1 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load13, %var.load14
  store i64 %divtmp, ptr %var.total_gb, align 8
  %var.load15 = load i64, ptr %var.free_bytes, align 8
  %var.load16 = load i64, ptr %var.gb_div, align 8
  %div.is.zero17 = icmp eq i64 %var.load16, 0
  br i1 %div.is.zero17, label %div.zero_abort19, label %div.not_zero18

div.ovf_abort:                                    ; preds = %div.not_zero
  %2 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero18:                                   ; preds = %div.zero_abort19, %div.ok
  %div.is.min20 = icmp eq i64 %var.load15, -9223372036854775808
  %div.is.negone21 = icmp eq i64 %var.load16, -1
  %div.is.ovf22 = and i1 %div.is.min20, %div.is.negone21
  br i1 %div.is.ovf22, label %div.ovf_abort24, label %div.ok23

div.zero_abort19:                                 ; preds = %div.ok
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero18

div.ok23:                                         ; preds = %div.ovf_abort24, %div.not_zero18
  %divtmp25 = sdiv i64 %var.load15, %var.load16
  store i64 %divtmp25, ptr %var.free_gb, align 8
  %var.load26 = load i64, ptr %var.used_bytes, align 8
  %var.load27 = load i64, ptr %var.gb_div, align 8
  %div.is.zero28 = icmp eq i64 %var.load27, 0
  br i1 %div.is.zero28, label %div.zero_abort30, label %div.not_zero29

div.ovf_abort24:                                  ; preds = %div.not_zero18
  %4 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok23

div.not_zero29:                                   ; preds = %div.zero_abort30, %div.ok23
  %div.is.min31 = icmp eq i64 %var.load26, -9223372036854775808
  %div.is.negone32 = icmp eq i64 %var.load27, -1
  %div.is.ovf33 = and i1 %div.is.min31, %div.is.negone32
  br i1 %div.is.ovf33, label %div.ovf_abort35, label %div.ok34

div.zero_abort30:                                 ; preds = %div.ok23
  %5 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero29

div.ok34:                                         ; preds = %div.ovf_abort35, %div.not_zero29
  %divtmp36 = sdiv i64 %var.load26, %var.load27
  store i64 %divtmp36, ptr %var.used_gb, align 8
  %var.load37 = load i64, ptr %var.total_bytes, align 8
  %cmptmp38 = icmp sgt i64 %var.load37, 0
  br i1 %cmptmp38, label %choice.then39, label %choice.else40

div.ovf_abort35:                                  ; preds = %div.not_zero29
  %6 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok34

choice.then39:                                    ; preds = %div.ok34
  %var.load42 = load i64, ptr %var.used_bytes, align 8
  %multmp = mul i64 %var.load42, 100
  %var.load43 = load i64, ptr %var.total_bytes, align 8
  %div.is.zero44 = icmp eq i64 %var.load43, 0
  br i1 %div.is.zero44, label %div.zero_abort46, label %div.not_zero45

choice.else40:                                    ; preds = %div.ok34
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %div.ok50
  %choice.res53 = phi i64 [ %divtmp52, %div.ok50 ], [ 0, %choice.else40 ]
  store i64 %choice.res53, ptr %var.pct, align 8
  %var.load54 = load i64, ptr %var.used_gb, align 8
  %var.load55 = load i64, ptr %var.total_gb, align 8
  %var.load56 = load i64, ptr %var.pct, align 8
  %var.load57 = load i64, ptr %var.free_gb, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load54, ptr %rec.fld, align 8
  %rec.fld58 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load55, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load56, ptr %rec.fld59, align 8
  %rec.fld60 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load57, ptr %rec.fld60, align 8
  br label %choice.exit

div.not_zero45:                                   ; preds = %div.zero_abort46, %choice.then39
  %div.is.min47 = icmp eq i64 %multmp, -9223372036854775808
  %div.is.negone48 = icmp eq i64 %var.load43, -1
  %div.is.ovf49 = and i1 %div.is.min47, %div.is.negone48
  br i1 %div.is.ovf49, label %div.ovf_abort51, label %div.ok50

div.zero_abort46:                                 ; preds = %choice.then39
  %7 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero45

div.ok50:                                         ; preds = %div.ovf_abort51, %div.not_zero45
  %divtmp52 = sdiv i64 %multmp, %var.load43
  br label %choice.exit41

div.ovf_abort51:                                  ; preds = %div.not_zero45
  %8 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok50
}

define ptr @"fs::format_size"(i64 %0, i1 %1) #1 {
entry:
  %var.is_d = alloca i1, align 1
  %var.sz = alloca i64, align 8
  store i64 %0, ptr %var.sz, align 8
  store i1 %1, ptr %var.is_d, align 1
  %var.load = load i1, ptr %var.is_d, align 1
  br i1 %var.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr @str.7.struct

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.sz, align 8
  %cmptmp = icmp slt i64 %var.load1, 1024
  br i1 %cmptmp, label %choice.case, label %choice.next

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.exit2:                                     ; preds = %concat.tot.len345, %concat.tot.len249, %concat.tot.len150, %concat.tot.len58
  %choice.res = phi ptr [ %concat.str65, %concat.tot.len58 ], [ %concat.str157, %concat.tot.len150 ], [ %concat.str256, %concat.tot.len249 ], [ %concat.str352, %concat.tot.len345 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %choice.exit
  %var.load3 = load i64, ptr %var.sz, align 8
  %arena.cur = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 32)
  %to_str.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf, i64 32, ptr @dva_fmt_i64, i64 %var.load3)
  %to_str.len = zext i32 %to_str.n to i64
  %arena.cur4 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  %concat.lhs = load i64, ptr @str.2.struct, align 8
  %concat.lhs5 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.next:                                      ; preds = %choice.exit
  %cmptmp70 = icmp slt i64 %var.load1, 1048576
  br i1 %cmptmp70, label %choice.case68, label %choice.next69

str_gen_check:                                    ; preds = %choice.case
  %arena.cur6 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur6, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %concat.lhs7 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  %concat.rhs8 = load i64, ptr %concat.rhs, align 8
  %concat.rhs9 = and i64 %concat.rhs8, 281474976710655
  %str.tag10 = lshr i64 %concat.rhs8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check12:                                  ; preds = %str_ok
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %str_ok
  %concat.rhs17 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  %concat.rhs18 = load ptr, ptr %concat.rhs17, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs5, i64 %concat.rhs9)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len19

str_stale14:                                      ; preds = %str_gen_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

concat.sum.len19:                                 ; preds = %str_overflow_abort, %str_ok13
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum20 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf21 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf21, label %str_overflow_abort23, label %concat.tot.len22

str_overflow_abort:                               ; preds = %str_ok13
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len19

concat.tot.len22:                                 ; preds = %str_overflow_abort23, %concat.sum.len19
  %arena.cur24 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs7, i64 %concat.lhs5, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs18, i64 %concat.rhs9, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur25 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.build.len.gep26 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep26, align 8
  %str.build.data.gep27 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep27, align 8
  %concat.lhs28 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs29 = load i64, ptr %concat.lhs28, align 8
  %concat.lhs30 = and i64 %concat.lhs29, 281474976710655
  %str.tag31 = lshr i64 %concat.lhs29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

str_overflow_abort23:                             ; preds = %concat.sum.len19
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len22

str_gen_check33:                                  ; preds = %concat.tot.len22
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %concat.tot.len22
  %concat.lhs38 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs39 = load ptr, ptr %concat.lhs38, align 8
  %concat.rhs40 = load i64, ptr @str.8.struct, align 8
  %concat.rhs41 = and i64 %concat.rhs40, 281474976710655
  %str.tag42 = lshr i64 %concat.rhs40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale35:                                      ; preds = %str_gen_check33
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

str_gen_check44:                                  ; preds = %str_ok34
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag42)
  br i1 %tag.valid48, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok34
  %concat.rhs49 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs30, i64 %concat.rhs41)
  %sum51 = extractvalue { i64, i1 } %concat.sum.len50, 0
  %ovf52 = extractvalue { i64, i1 } %concat.sum.len50, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.sum.len53

str_stale46:                                      ; preds = %str_gen_check44
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

concat.sum.len53:                                 ; preds = %str_overflow_abort54, %str_ok45
  %concat.tot.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum51, i64 1)
  %sum56 = extractvalue { i64, i1 } %concat.tot.len55, 0
  %ovf57 = extractvalue { i64, i1 } %concat.tot.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.tot.len58

str_overflow_abort54:                             ; preds = %str_ok45
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len53

concat.tot.len58:                                 ; preds = %str_overflow_abort59, %concat.sum.len53
  %arena.cur60 = call ptr @dva_arena_current()
  %concat.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum56)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf61, ptr align 1 %concat.lhs39, i64 %concat.lhs30, i1 false)
  %concat.mid62 = getelementptr i8, ptr %concat.buf61, i64 %concat.lhs30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid62, ptr align 1 %concat.rhs49, i64 %concat.rhs41, i1 false)
  %concat.nul63 = getelementptr i8, ptr %concat.buf61, i64 %sum51
  store i8 0, ptr %concat.nul63, align 1
  %arena.cur64 = call ptr @dva_arena_current()
  %concat.str65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %str.build.len.gep66 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  store i64 %sum51, ptr %str.build.len.gep66, align 8
  %str.build.data.gep67 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  store ptr %concat.buf61, ptr %str.build.data.gep67, align 8
  br label %choice.exit2

str_overflow_abort59:                             ; preds = %concat.sum.len53
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len58

choice.case68:                                    ; preds = %choice.next
  %var.load71 = load i64, ptr %var.sz, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next69:                                    ; preds = %choice.next
  %cmptmp162 = icmp slt i64 %var.load1, 1073741824
  br i1 %cmptmp162, label %choice.case160, label %choice.next161

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case68
  %div.is.min = icmp eq i64 %var.load71, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.case68
  %10 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load71, 1024
  %arena.cur72 = call ptr @dva_arena_current()
  %to_str.buf73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 32)
  %to_str.n74 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf73, i64 32, ptr @dva_fmt_i64, i64 %divtmp)
  %to_str.len75 = zext i32 %to_str.n74 to i64
  %arena.cur76 = call ptr @dva_arena_current()
  %to_str.res77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %str.build.len.gep78 = getelementptr inbounds { i64, ptr }, ptr %to_str.res77, i32 0, i32 0
  store i64 %to_str.len75, ptr %str.build.len.gep78, align 8
  %str.build.data.gep79 = getelementptr inbounds { i64, ptr }, ptr %to_str.res77, i32 0, i32 1
  store ptr %to_str.buf73, ptr %str.build.data.gep79, align 8
  %concat.lhs80 = load i64, ptr @str.2.struct, align 8
  %concat.lhs81 = and i64 %concat.lhs80, 281474976710655
  %str.tag82 = lshr i64 %concat.lhs80, 48
  %str.immortal83 = icmp eq i64 %str.tag82, 0
  br i1 %str.immortal83, label %str_ok85, label %str_gen_check84

div.ovf_abort:                                    ; preds = %div.not_zero
  %11 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

str_gen_check84:                                  ; preds = %div.ok
  %arena.cur87 = call ptr @dva_arena_current()
  %tag.valid88 = call i1 @dva_arena_validate_tag(ptr %arena.cur87, i64 %str.tag82)
  br i1 %tag.valid88, label %str_ok85, label %str_stale86

str_ok85:                                         ; preds = %str_stale86, %str_gen_check84, %div.ok
  %concat.lhs89 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs90 = getelementptr inbounds { i64, ptr }, ptr %to_str.res77, i32 0, i32 0
  %concat.rhs91 = load i64, ptr %concat.rhs90, align 8
  %concat.rhs92 = and i64 %concat.rhs91, 281474976710655
  %str.tag93 = lshr i64 %concat.rhs91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

str_stale86:                                      ; preds = %str_gen_check84
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok85

str_gen_check95:                                  ; preds = %str_ok85
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %str_ok85
  %concat.rhs100 = getelementptr inbounds { i64, ptr }, ptr %to_str.res77, i32 0, i32 1
  %concat.rhs101 = load ptr, ptr %concat.rhs100, align 8
  %concat.sum.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs81, i64 %concat.rhs92)
  %sum103 = extractvalue { i64, i1 } %concat.sum.len102, 0
  %ovf104 = extractvalue { i64, i1 } %concat.sum.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %concat.sum.len105

str_stale97:                                      ; preds = %str_gen_check95
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

concat.sum.len105:                                ; preds = %str_overflow_abort106, %str_ok96
  %concat.tot.len107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum103, i64 1)
  %sum108 = extractvalue { i64, i1 } %concat.tot.len107, 0
  %ovf109 = extractvalue { i64, i1 } %concat.tot.len107, 1
  br i1 %ovf109, label %str_overflow_abort111, label %concat.tot.len110

str_overflow_abort106:                            ; preds = %str_ok96
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len105

concat.tot.len110:                                ; preds = %str_overflow_abort111, %concat.sum.len105
  %arena.cur112 = call ptr @dva_arena_current()
  %concat.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 %sum108)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf113, ptr align 1 %concat.lhs89, i64 %concat.lhs81, i1 false)
  %concat.mid114 = getelementptr i8, ptr %concat.buf113, i64 %concat.lhs81
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid114, ptr align 1 %concat.rhs101, i64 %concat.rhs92, i1 false)
  %concat.nul115 = getelementptr i8, ptr %concat.buf113, i64 %sum103
  store i8 0, ptr %concat.nul115, align 1
  %arena.cur116 = call ptr @dva_arena_current()
  %concat.str117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 16)
  %str.build.len.gep118 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 0
  store i64 %sum103, ptr %str.build.len.gep118, align 8
  %str.build.data.gep119 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 1
  store ptr %concat.buf113, ptr %str.build.data.gep119, align 8
  %concat.lhs120 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 0
  %concat.lhs121 = load i64, ptr %concat.lhs120, align 8
  %concat.lhs122 = and i64 %concat.lhs121, 281474976710655
  %str.tag123 = lshr i64 %concat.lhs121, 48
  %str.immortal124 = icmp eq i64 %str.tag123, 0
  br i1 %str.immortal124, label %str_ok126, label %str_gen_check125

str_overflow_abort111:                            ; preds = %concat.sum.len105
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len110

str_gen_check125:                                 ; preds = %concat.tot.len110
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %str.tag123)
  br i1 %tag.valid129, label %str_ok126, label %str_stale127

str_ok126:                                        ; preds = %str_stale127, %str_gen_check125, %concat.tot.len110
  %concat.lhs130 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 1
  %concat.lhs131 = load ptr, ptr %concat.lhs130, align 8
  %concat.rhs132 = load i64, ptr @str.9.struct, align 8
  %concat.rhs133 = and i64 %concat.rhs132, 281474976710655
  %str.tag134 = lshr i64 %concat.rhs132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_stale127:                                     ; preds = %str_gen_check125
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok126

str_gen_check136:                                 ; preds = %str_ok126
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag134)
  br i1 %tag.valid140, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %str_ok126
  %concat.rhs141 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %concat.sum.len142 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs122, i64 %concat.rhs133)
  %sum143 = extractvalue { i64, i1 } %concat.sum.len142, 0
  %ovf144 = extractvalue { i64, i1 } %concat.sum.len142, 1
  br i1 %ovf144, label %str_overflow_abort146, label %concat.sum.len145

str_stale138:                                     ; preds = %str_gen_check136
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

concat.sum.len145:                                ; preds = %str_overflow_abort146, %str_ok137
  %concat.tot.len147 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum143, i64 1)
  %sum148 = extractvalue { i64, i1 } %concat.tot.len147, 0
  %ovf149 = extractvalue { i64, i1 } %concat.tot.len147, 1
  br i1 %ovf149, label %str_overflow_abort151, label %concat.tot.len150

str_overflow_abort146:                            ; preds = %str_ok137
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len145

concat.tot.len150:                                ; preds = %str_overflow_abort151, %concat.sum.len145
  %arena.cur152 = call ptr @dva_arena_current()
  %concat.buf153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 %sum148)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf153, ptr align 1 %concat.lhs131, i64 %concat.lhs122, i1 false)
  %concat.mid154 = getelementptr i8, ptr %concat.buf153, i64 %concat.lhs122
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid154, ptr align 1 %concat.rhs141, i64 %concat.rhs133, i1 false)
  %concat.nul155 = getelementptr i8, ptr %concat.buf153, i64 %sum143
  store i8 0, ptr %concat.nul155, align 1
  %arena.cur156 = call ptr @dva_arena_current()
  %concat.str157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 16)
  %str.build.len.gep158 = getelementptr inbounds { i64, ptr }, ptr %concat.str157, i32 0, i32 0
  store i64 %sum143, ptr %str.build.len.gep158, align 8
  %str.build.data.gep159 = getelementptr inbounds { i64, ptr }, ptr %concat.str157, i32 0, i32 1
  store ptr %concat.buf153, ptr %str.build.data.gep159, align 8
  br label %choice.exit2

str_overflow_abort151:                            ; preds = %concat.sum.len145
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len150

choice.case160:                                   ; preds = %choice.next69
  %var.load163 = load i64, ptr %var.sz, align 8
  br i1 false, label %div.zero_abort165, label %div.not_zero164

choice.next161:                                   ; preds = %choice.next69
  %var.load259 = load i64, ptr %var.sz, align 8
  br i1 false, label %div.zero_abort261, label %div.not_zero260

div.not_zero164:                                  ; preds = %div.zero_abort165, %choice.case160
  %div.is.min166 = icmp eq i64 %var.load163, -9223372036854775808
  %div.is.ovf167 = and i1 %div.is.min166, false
  br i1 %div.is.ovf167, label %div.ovf_abort169, label %div.ok168

div.zero_abort165:                                ; preds = %choice.case160
  %20 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero164

div.ok168:                                        ; preds = %div.ovf_abort169, %div.not_zero164
  %divtmp170 = sdiv i64 %var.load163, 1048576
  %arena.cur171 = call ptr @dva_arena_current()
  %to_str.buf172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 32)
  %to_str.n173 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf172, i64 32, ptr @dva_fmt_i64, i64 %divtmp170)
  %to_str.len174 = zext i32 %to_str.n173 to i64
  %arena.cur175 = call ptr @dva_arena_current()
  %to_str.res176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 16)
  %str.build.len.gep177 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 0
  store i64 %to_str.len174, ptr %str.build.len.gep177, align 8
  %str.build.data.gep178 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 1
  store ptr %to_str.buf172, ptr %str.build.data.gep178, align 8
  %concat.lhs179 = load i64, ptr @str.2.struct, align 8
  %concat.lhs180 = and i64 %concat.lhs179, 281474976710655
  %str.tag181 = lshr i64 %concat.lhs179, 48
  %str.immortal182 = icmp eq i64 %str.tag181, 0
  br i1 %str.immortal182, label %str_ok184, label %str_gen_check183

div.ovf_abort169:                                 ; preds = %div.not_zero164
  %21 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok168

str_gen_check183:                                 ; preds = %div.ok168
  %arena.cur186 = call ptr @dva_arena_current()
  %tag.valid187 = call i1 @dva_arena_validate_tag(ptr %arena.cur186, i64 %str.tag181)
  br i1 %tag.valid187, label %str_ok184, label %str_stale185

str_ok184:                                        ; preds = %str_stale185, %str_gen_check183, %div.ok168
  %concat.lhs188 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs189 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 0
  %concat.rhs190 = load i64, ptr %concat.rhs189, align 8
  %concat.rhs191 = and i64 %concat.rhs190, 281474976710655
  %str.tag192 = lshr i64 %concat.rhs190, 48
  %str.immortal193 = icmp eq i64 %str.tag192, 0
  br i1 %str.immortal193, label %str_ok195, label %str_gen_check194

str_stale185:                                     ; preds = %str_gen_check183
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok184

str_gen_check194:                                 ; preds = %str_ok184
  %arena.cur197 = call ptr @dva_arena_current()
  %tag.valid198 = call i1 @dva_arena_validate_tag(ptr %arena.cur197, i64 %str.tag192)
  br i1 %tag.valid198, label %str_ok195, label %str_stale196

str_ok195:                                        ; preds = %str_stale196, %str_gen_check194, %str_ok184
  %concat.rhs199 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 1
  %concat.rhs200 = load ptr, ptr %concat.rhs199, align 8
  %concat.sum.len201 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs180, i64 %concat.rhs191)
  %sum202 = extractvalue { i64, i1 } %concat.sum.len201, 0
  %ovf203 = extractvalue { i64, i1 } %concat.sum.len201, 1
  br i1 %ovf203, label %str_overflow_abort205, label %concat.sum.len204

str_stale196:                                     ; preds = %str_gen_check194
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok195

concat.sum.len204:                                ; preds = %str_overflow_abort205, %str_ok195
  %concat.tot.len206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum202, i64 1)
  %sum207 = extractvalue { i64, i1 } %concat.tot.len206, 0
  %ovf208 = extractvalue { i64, i1 } %concat.tot.len206, 1
  br i1 %ovf208, label %str_overflow_abort210, label %concat.tot.len209

str_overflow_abort205:                            ; preds = %str_ok195
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len204

concat.tot.len209:                                ; preds = %str_overflow_abort210, %concat.sum.len204
  %arena.cur211 = call ptr @dva_arena_current()
  %concat.buf212 = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 %sum207)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf212, ptr align 1 %concat.lhs188, i64 %concat.lhs180, i1 false)
  %concat.mid213 = getelementptr i8, ptr %concat.buf212, i64 %concat.lhs180
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid213, ptr align 1 %concat.rhs200, i64 %concat.rhs191, i1 false)
  %concat.nul214 = getelementptr i8, ptr %concat.buf212, i64 %sum202
  store i8 0, ptr %concat.nul214, align 1
  %arena.cur215 = call ptr @dva_arena_current()
  %concat.str216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 16)
  %str.build.len.gep217 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 0
  store i64 %sum202, ptr %str.build.len.gep217, align 8
  %str.build.data.gep218 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 1
  store ptr %concat.buf212, ptr %str.build.data.gep218, align 8
  %concat.lhs219 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 0
  %concat.lhs220 = load i64, ptr %concat.lhs219, align 8
  %concat.lhs221 = and i64 %concat.lhs220, 281474976710655
  %str.tag222 = lshr i64 %concat.lhs220, 48
  %str.immortal223 = icmp eq i64 %str.tag222, 0
  br i1 %str.immortal223, label %str_ok225, label %str_gen_check224

str_overflow_abort210:                            ; preds = %concat.sum.len204
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len209

str_gen_check224:                                 ; preds = %concat.tot.len209
  %arena.cur227 = call ptr @dva_arena_current()
  %tag.valid228 = call i1 @dva_arena_validate_tag(ptr %arena.cur227, i64 %str.tag222)
  br i1 %tag.valid228, label %str_ok225, label %str_stale226

str_ok225:                                        ; preds = %str_stale226, %str_gen_check224, %concat.tot.len209
  %concat.lhs229 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 1
  %concat.lhs230 = load ptr, ptr %concat.lhs229, align 8
  %concat.rhs231 = load i64, ptr @str.10.struct, align 8
  %concat.rhs232 = and i64 %concat.rhs231, 281474976710655
  %str.tag233 = lshr i64 %concat.rhs231, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

str_stale226:                                     ; preds = %str_gen_check224
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok225

str_gen_check235:                                 ; preds = %str_ok225
  %arena.cur238 = call ptr @dva_arena_current()
  %tag.valid239 = call i1 @dva_arena_validate_tag(ptr %arena.cur238, i64 %str.tag233)
  br i1 %tag.valid239, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %str_ok225
  %concat.rhs240 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %concat.sum.len241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs221, i64 %concat.rhs232)
  %sum242 = extractvalue { i64, i1 } %concat.sum.len241, 0
  %ovf243 = extractvalue { i64, i1 } %concat.sum.len241, 1
  br i1 %ovf243, label %str_overflow_abort245, label %concat.sum.len244

str_stale237:                                     ; preds = %str_gen_check235
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

concat.sum.len244:                                ; preds = %str_overflow_abort245, %str_ok236
  %concat.tot.len246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum242, i64 1)
  %sum247 = extractvalue { i64, i1 } %concat.tot.len246, 0
  %ovf248 = extractvalue { i64, i1 } %concat.tot.len246, 1
  br i1 %ovf248, label %str_overflow_abort250, label %concat.tot.len249

str_overflow_abort245:                            ; preds = %str_ok236
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len244

concat.tot.len249:                                ; preds = %str_overflow_abort250, %concat.sum.len244
  %arena.cur251 = call ptr @dva_arena_current()
  %concat.buf252 = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 %sum247)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf252, ptr align 1 %concat.lhs230, i64 %concat.lhs221, i1 false)
  %concat.mid253 = getelementptr i8, ptr %concat.buf252, i64 %concat.lhs221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid253, ptr align 1 %concat.rhs240, i64 %concat.rhs232, i1 false)
  %concat.nul254 = getelementptr i8, ptr %concat.buf252, i64 %sum242
  store i8 0, ptr %concat.nul254, align 1
  %arena.cur255 = call ptr @dva_arena_current()
  %concat.str256 = call ptr @dva_arena_alloc(ptr %arena.cur255, i64 16)
  %str.build.len.gep257 = getelementptr inbounds { i64, ptr }, ptr %concat.str256, i32 0, i32 0
  store i64 %sum242, ptr %str.build.len.gep257, align 8
  %str.build.data.gep258 = getelementptr inbounds { i64, ptr }, ptr %concat.str256, i32 0, i32 1
  store ptr %concat.buf252, ptr %str.build.data.gep258, align 8
  br label %choice.exit2

str_overflow_abort250:                            ; preds = %concat.sum.len244
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len249

div.not_zero260:                                  ; preds = %div.zero_abort261, %choice.next161
  %div.is.min262 = icmp eq i64 %var.load259, -9223372036854775808
  %div.is.ovf263 = and i1 %div.is.min262, false
  br i1 %div.is.ovf263, label %div.ovf_abort265, label %div.ok264

div.zero_abort261:                                ; preds = %choice.next161
  %30 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero260

div.ok264:                                        ; preds = %div.ovf_abort265, %div.not_zero260
  %divtmp266 = sdiv i64 %var.load259, 1073741824
  %arena.cur267 = call ptr @dva_arena_current()
  %to_str.buf268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 32)
  %to_str.n269 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf268, i64 32, ptr @dva_fmt_i64, i64 %divtmp266)
  %to_str.len270 = zext i32 %to_str.n269 to i64
  %arena.cur271 = call ptr @dva_arena_current()
  %to_str.res272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 16)
  %str.build.len.gep273 = getelementptr inbounds { i64, ptr }, ptr %to_str.res272, i32 0, i32 0
  store i64 %to_str.len270, ptr %str.build.len.gep273, align 8
  %str.build.data.gep274 = getelementptr inbounds { i64, ptr }, ptr %to_str.res272, i32 0, i32 1
  store ptr %to_str.buf268, ptr %str.build.data.gep274, align 8
  %concat.lhs275 = load i64, ptr @str.2.struct, align 8
  %concat.lhs276 = and i64 %concat.lhs275, 281474976710655
  %str.tag277 = lshr i64 %concat.lhs275, 48
  %str.immortal278 = icmp eq i64 %str.tag277, 0
  br i1 %str.immortal278, label %str_ok280, label %str_gen_check279

div.ovf_abort265:                                 ; preds = %div.not_zero260
  %31 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok264

str_gen_check279:                                 ; preds = %div.ok264
  %arena.cur282 = call ptr @dva_arena_current()
  %tag.valid283 = call i1 @dva_arena_validate_tag(ptr %arena.cur282, i64 %str.tag277)
  br i1 %tag.valid283, label %str_ok280, label %str_stale281

str_ok280:                                        ; preds = %str_stale281, %str_gen_check279, %div.ok264
  %concat.lhs284 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs285 = getelementptr inbounds { i64, ptr }, ptr %to_str.res272, i32 0, i32 0
  %concat.rhs286 = load i64, ptr %concat.rhs285, align 8
  %concat.rhs287 = and i64 %concat.rhs286, 281474976710655
  %str.tag288 = lshr i64 %concat.rhs286, 48
  %str.immortal289 = icmp eq i64 %str.tag288, 0
  br i1 %str.immortal289, label %str_ok291, label %str_gen_check290

str_stale281:                                     ; preds = %str_gen_check279
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok280

str_gen_check290:                                 ; preds = %str_ok280
  %arena.cur293 = call ptr @dva_arena_current()
  %tag.valid294 = call i1 @dva_arena_validate_tag(ptr %arena.cur293, i64 %str.tag288)
  br i1 %tag.valid294, label %str_ok291, label %str_stale292

str_ok291:                                        ; preds = %str_stale292, %str_gen_check290, %str_ok280
  %concat.rhs295 = getelementptr inbounds { i64, ptr }, ptr %to_str.res272, i32 0, i32 1
  %concat.rhs296 = load ptr, ptr %concat.rhs295, align 8
  %concat.sum.len297 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs276, i64 %concat.rhs287)
  %sum298 = extractvalue { i64, i1 } %concat.sum.len297, 0
  %ovf299 = extractvalue { i64, i1 } %concat.sum.len297, 1
  br i1 %ovf299, label %str_overflow_abort301, label %concat.sum.len300

str_stale292:                                     ; preds = %str_gen_check290
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok291

concat.sum.len300:                                ; preds = %str_overflow_abort301, %str_ok291
  %concat.tot.len302 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum298, i64 1)
  %sum303 = extractvalue { i64, i1 } %concat.tot.len302, 0
  %ovf304 = extractvalue { i64, i1 } %concat.tot.len302, 1
  br i1 %ovf304, label %str_overflow_abort306, label %concat.tot.len305

str_overflow_abort301:                            ; preds = %str_ok291
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len300

concat.tot.len305:                                ; preds = %str_overflow_abort306, %concat.sum.len300
  %arena.cur307 = call ptr @dva_arena_current()
  %concat.buf308 = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 %sum303)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf308, ptr align 1 %concat.lhs284, i64 %concat.lhs276, i1 false)
  %concat.mid309 = getelementptr i8, ptr %concat.buf308, i64 %concat.lhs276
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid309, ptr align 1 %concat.rhs296, i64 %concat.rhs287, i1 false)
  %concat.nul310 = getelementptr i8, ptr %concat.buf308, i64 %sum298
  store i8 0, ptr %concat.nul310, align 1
  %arena.cur311 = call ptr @dva_arena_current()
  %concat.str312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 16)
  %str.build.len.gep313 = getelementptr inbounds { i64, ptr }, ptr %concat.str312, i32 0, i32 0
  store i64 %sum298, ptr %str.build.len.gep313, align 8
  %str.build.data.gep314 = getelementptr inbounds { i64, ptr }, ptr %concat.str312, i32 0, i32 1
  store ptr %concat.buf308, ptr %str.build.data.gep314, align 8
  %concat.lhs315 = getelementptr inbounds { i64, ptr }, ptr %concat.str312, i32 0, i32 0
  %concat.lhs316 = load i64, ptr %concat.lhs315, align 8
  %concat.lhs317 = and i64 %concat.lhs316, 281474976710655
  %str.tag318 = lshr i64 %concat.lhs316, 48
  %str.immortal319 = icmp eq i64 %str.tag318, 0
  br i1 %str.immortal319, label %str_ok321, label %str_gen_check320

str_overflow_abort306:                            ; preds = %concat.sum.len300
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len305

str_gen_check320:                                 ; preds = %concat.tot.len305
  %arena.cur323 = call ptr @dva_arena_current()
  %tag.valid324 = call i1 @dva_arena_validate_tag(ptr %arena.cur323, i64 %str.tag318)
  br i1 %tag.valid324, label %str_ok321, label %str_stale322

str_ok321:                                        ; preds = %str_stale322, %str_gen_check320, %concat.tot.len305
  %concat.lhs325 = getelementptr inbounds { i64, ptr }, ptr %concat.str312, i32 0, i32 1
  %concat.lhs326 = load ptr, ptr %concat.lhs325, align 8
  %concat.rhs327 = load i64, ptr @str.11.struct, align 8
  %concat.rhs328 = and i64 %concat.rhs327, 281474976710655
  %str.tag329 = lshr i64 %concat.rhs327, 48
  %str.immortal330 = icmp eq i64 %str.tag329, 0
  br i1 %str.immortal330, label %str_ok332, label %str_gen_check331

str_stale322:                                     ; preds = %str_gen_check320
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok321

str_gen_check331:                                 ; preds = %str_ok321
  %arena.cur334 = call ptr @dva_arena_current()
  %tag.valid335 = call i1 @dva_arena_validate_tag(ptr %arena.cur334, i64 %str.tag329)
  br i1 %tag.valid335, label %str_ok332, label %str_stale333

str_ok332:                                        ; preds = %str_stale333, %str_gen_check331, %str_ok321
  %concat.rhs336 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %concat.sum.len337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs317, i64 %concat.rhs328)
  %sum338 = extractvalue { i64, i1 } %concat.sum.len337, 0
  %ovf339 = extractvalue { i64, i1 } %concat.sum.len337, 1
  br i1 %ovf339, label %str_overflow_abort341, label %concat.sum.len340

str_stale333:                                     ; preds = %str_gen_check331
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok332

concat.sum.len340:                                ; preds = %str_overflow_abort341, %str_ok332
  %concat.tot.len342 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum338, i64 1)
  %sum343 = extractvalue { i64, i1 } %concat.tot.len342, 0
  %ovf344 = extractvalue { i64, i1 } %concat.tot.len342, 1
  br i1 %ovf344, label %str_overflow_abort346, label %concat.tot.len345

str_overflow_abort341:                            ; preds = %str_ok332
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len340

concat.tot.len345:                                ; preds = %str_overflow_abort346, %concat.sum.len340
  %arena.cur347 = call ptr @dva_arena_current()
  %concat.buf348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 %sum343)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf348, ptr align 1 %concat.lhs326, i64 %concat.lhs317, i1 false)
  %concat.mid349 = getelementptr i8, ptr %concat.buf348, i64 %concat.lhs317
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid349, ptr align 1 %concat.rhs336, i64 %concat.rhs328, i1 false)
  %concat.nul350 = getelementptr i8, ptr %concat.buf348, i64 %sum338
  store i8 0, ptr %concat.nul350, align 1
  %arena.cur351 = call ptr @dva_arena_current()
  %concat.str352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 16)
  %str.build.len.gep353 = getelementptr inbounds { i64, ptr }, ptr %concat.str352, i32 0, i32 0
  store i64 %sum338, ptr %str.build.len.gep353, align 8
  %str.build.data.gep354 = getelementptr inbounds { i64, ptr }, ptr %concat.str352, i32 0, i32 1
  store ptr %concat.buf348, ptr %str.build.data.gep354, align 8
  br label %choice.exit2

str_overflow_abort346:                            ; preds = %concat.sum.len340
  %39 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len345
}

declare i32 @snprintf(ptr, i64, ptr, ...)

define ptr @"fs::format_perms"(i64 %0, i1 %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var._fs_perms_wrap = alloca ptr, align 8
  %var.buf = alloca ptr, align 8
  %var.is_d = alloca i1, align 1
  %var.mode = alloca i64, align 8
  store i64 %0, ptr %var.mode, align 8
  store i1 %1, ptr %var.is_d, align 1
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 1)
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
  store i64 2, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %b.ptr3 = load ptr, ptr %b.ptr, align 8
  %var.load4 = load i64, ptr %var.mode, align 8
  %coerce.trunc = trunc i64 %var.load4 to i16
  %raw.int = ptrtoint ptr %b.ptr3 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

str_overflow_abort:                               ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

addr_gen_check:                                   ; preds = %b.buf.len1
  %arena.cur5 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur5, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %b.buf.len1
  store i16 %coerce.trunc, ptr %raw.clean.ptr, align 2
  %var.load6 = load ptr, ptr %var.buf, align 8
  %b.ptr7 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 1
  %b.ptr8 = load ptr, ptr %b.ptr7, align 8
  %raw.int9 = ptrtoint ptr %b.ptr8 to i64
  %raw.clean.int10 = and i64 %raw.int9, 281474976710655
  %raw.clean.ptr11 = inttoptr i64 %raw.clean.int10 to ptr
  %addr.tag12 = lshr i64 %raw.int9, 48
  %addr.immortal13 = icmp eq i64 %addr.tag12, 0
  br i1 %addr.immortal13, label %addr_ok15, label %addr_gen_check14

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check14:                                 ; preds = %addr_ok
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %addr.tag12)
  br i1 %tag.valid18, label %addr_ok15, label %addr_stale16

addr_ok15:                                        ; preds = %addr_stale16, %addr_gen_check14, %addr_ok
  store ptr %raw.clean.ptr11, ptr %var._fs_perms_wrap, align 8
  %arena.cur19 = call ptr @dva_arena_current()
  %builder.new20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 24)
  %b.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new20, i32 0, i32 1
  %b.len.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new20, i32 0, i32 0
  %b.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new20, i32 0, i32 2
  %b.buf.len24 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum25 = extractvalue { i64, i1 } %b.buf.len24, 0
  %ovf26 = extractvalue { i64, i1 } %b.buf.len24, 1
  br i1 %ovf26, label %str_overflow_abort28, label %b.buf.len27

addr_stale16:                                     ; preds = %addr_gen_check14
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok15

b.buf.len27:                                      ; preds = %str_overflow_abort28, %addr_ok15
  %arena.cur29 = call ptr @dva_arena_current()
  %b.buf30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 %sum25)
  %b.nul031 = getelementptr i8, ptr %b.buf30, i64 0
  store i8 0, ptr %b.nul031, align 1
  store i64 0, ptr %b.len.gep22, align 8
  store ptr %b.buf30, ptr %b.data.gep21, align 8
  store i64 16, ptr %b.cap.gep23, align 8
  store ptr %builder.new20, ptr %var.b, align 8
  %var.load32 = load i1, ptr %var.is_d, align 1
  br i1 %var.load32, label %choice.then, label %choice.else

str_overflow_abort28:                             ; preds = %addr_ok15
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len27

choice.then:                                      ; preds = %b.buf.len27
  br label %choice.exit

choice.else:                                      ; preds = %b.buf.len27
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i32 [ 100, %choice.then ], [ 45, %choice.else ]
  %b.load = load ptr, ptr %var.b, align 8
  %var.load33 = load i1, ptr %var.is_d, align 1
  br i1 %var.load33, label %choice.then34, label %choice.else35

choice.then34:                                    ; preds = %choice.exit
  br label %choice.exit36

choice.else35:                                    ; preds = %choice.exit
  br label %choice.exit36

choice.exit36:                                    ; preds = %choice.else35, %choice.then34
  %choice.res37 = phi i32 [ 100, %choice.then34 ], [ 45, %choice.else35 ]
  %coerce.sext = sext i32 %choice.res37 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len38 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len38, i64 %br.width)
  %sum39 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf40 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %b.rn.new.len41

b.rn.new.len41:                                   ; preds = %str_overflow_abort42, %choice.exit36
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap43 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap43, %sum39
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort42:                             ; preds = %choice.exit36
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len41

b.grow2:                                          ; preds = %b.rn.new.len41
  %b.cap2 = mul i64 %b.cap43, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum39
  %b.new.cap = select i1 %b.cap.need, i64 %sum39, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len244 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data245 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum46 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf47 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.new.buf.len248

b.nogrow2:                                        ; preds = %b.rn.new.len41
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len248
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data51 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data51, i64 %b.rn.cur.len38
  br i1 %br.cmp1, label %br.b1.32, label %br.c2.32

b.new.buf.len248:                                 ; preds = %str_overflow_abort49, %b.grow2
  %arena.cur50 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data245, i64 %b.cur.len244, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len244
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort49:                             ; preds = %b.grow2
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len248

br.b1.32:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.32

br.c2.32:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.32, label %br.c3.32

br.b2.32:                                         ; preds = %br.c2.32
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.32

br.c3.32:                                         ; preds = %br.c2.32
  br i1 %br.cmp3, label %br.b3.32, label %br.b4.32

br.b3.32:                                         ; preds = %br.c3.32
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
  br label %br.done.32

br.b4.32:                                         ; preds = %br.c3.32
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
  br label %br.done.32

br.done.32:                                       ; preds = %br.b4.32, %br.b3.32, %br.b2.32, %br.b1.32
  %br.nul = getelementptr i8, ptr %b.rn.data51, i64 %sum39
  store i8 0, ptr %br.nul, align 1
  %b.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum39, ptr %b.len.gep52, align 8
  %var.load53 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep = getelementptr inbounds <{ i16 }>, ptr %var.load53, i32 0, i32 0
  %bf.load = load i16, ptr %fld.gep, align 2
  %bf.shr = lshr i16 %bf.load, 8
  %bf.mask = and i16 %bf.shr, 1
  %bf.ext = zext i16 %bf.mask to i64
  %cmptmp = icmp ne i64 %bf.ext, 0
  br i1 %cmptmp, label %choice.then54, label %choice.else55

choice.then54:                                    ; preds = %br.done.32
  br label %choice.exit56

choice.else55:                                    ; preds = %br.done.32
  br label %choice.exit56

choice.exit56:                                    ; preds = %choice.else55, %choice.then54
  %choice.res57 = phi i32 [ 114, %choice.then54 ], [ 45, %choice.else55 ]
  %b.load58 = load ptr, ptr %var.b, align 8
  %var.load59 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep60 = getelementptr inbounds <{ i16 }>, ptr %var.load59, i32 0, i32 0
  %bf.load61 = load i16, ptr %fld.gep60, align 2
  %bf.shr62 = lshr i16 %bf.load61, 8
  %bf.mask63 = and i16 %bf.shr62, 1
  %bf.ext64 = zext i16 %bf.mask63 to i64
  %cmptmp65 = icmp ne i64 %bf.ext64, 0
  br i1 %cmptmp65, label %choice.then66, label %choice.else67

choice.then66:                                    ; preds = %choice.exit56
  br label %choice.exit68

choice.else67:                                    ; preds = %choice.exit56
  br label %choice.exit68

choice.exit68:                                    ; preds = %choice.else67, %choice.then66
  %choice.res69 = phi i32 [ 114, %choice.then66 ], [ 45, %choice.else67 ]
  %coerce.sext70 = sext i32 %choice.res69 to i64
  %br.cmp171 = icmp slt i64 %coerce.sext70, 128
  %br.cmp272 = icmp slt i64 %coerce.sext70, 2048
  %br.cmp373 = icmp slt i64 %coerce.sext70, 65536
  %br.w374 = select i1 %br.cmp373, i64 3, i64 4
  %br.w275 = select i1 %br.cmp272, i64 2, i64 %br.w374
  %br.width76 = select i1 %br.cmp171, i64 1, i64 %br.w275
  %b.rn.cur.len77 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 0
  %b.rn.cur.len78 = load i64, ptr %b.rn.cur.len77, align 8
  %b.rn.new.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len78, i64 %br.width76)
  %sum80 = extractvalue { i64, i1 } %b.rn.new.len79, 0
  %ovf81 = extractvalue { i64, i1 } %b.rn.new.len79, 1
  br i1 %ovf81, label %str_overflow_abort83, label %b.rn.new.len82

b.rn.new.len82:                                   ; preds = %str_overflow_abort83, %choice.exit68
  %b.cap84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 2
  %b.cap85 = load i64, ptr %b.cap84, align 8
  %b.need.grow86 = icmp slt i64 %b.cap85, %sum80
  br i1 %b.need.grow86, label %b.grow287, label %b.nogrow288

str_overflow_abort83:                             ; preds = %choice.exit68
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len82

b.grow287:                                        ; preds = %b.rn.new.len82
  %b.cap290 = mul i64 %b.cap85, 2
  %b.cap.small91 = icmp slt i64 %b.cap290, 16
  %b.cap.grow92 = select i1 %b.cap.small91, i64 16, i64 %b.cap290
  %b.cap.need93 = icmp slt i64 %b.cap.grow92, %sum80
  %b.new.cap94 = select i1 %b.cap.need93, i64 %sum80, i64 %b.cap.grow92
  %b.cur.len295 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 0
  %b.cur.len296 = load i64, ptr %b.cur.len295, align 8
  %b.cur.data297 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 1
  %b.cur.data298 = load ptr, ptr %b.cur.data297, align 8
  %b.new.buf.len299 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap94, i64 1)
  %sum100 = extractvalue { i64, i1 } %b.new.buf.len299, 0
  %ovf101 = extractvalue { i64, i1 } %b.new.buf.len299, 1
  br i1 %ovf101, label %str_overflow_abort103, label %b.new.buf.len2102

b.nogrow288:                                      ; preds = %b.rn.new.len82
  br label %b.grow_done89

b.grow_done89:                                    ; preds = %b.nogrow288, %b.new.buf.len2102
  %b.rn.data109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 1
  %b.rn.data110 = load ptr, ptr %b.rn.data109, align 8
  %b.rn.dst111 = getelementptr i8, ptr %b.rn.data110, i64 %b.rn.cur.len78
  br i1 %br.cmp171, label %br.b1.33, label %br.c2.33

b.new.buf.len2102:                                ; preds = %str_overflow_abort103, %b.grow287
  %arena.cur104 = call ptr @dva_arena_current()
  %b.new.buf2105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 %sum100)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2105, ptr align 1 %b.cur.data298, i64 %b.cur.len296, i1 false)
  %b.grow2.nul106 = getelementptr i8, ptr %b.new.buf2105, i64 %b.cur.len296
  store i8 0, ptr %b.grow2.nul106, align 1
  %b.new.data2.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 1
  store ptr %b.new.buf2105, ptr %b.new.data2.gep107, align 8
  %b.new.cap2.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 2
  store i64 %b.new.cap94, ptr %b.new.cap2.gep108, align 8
  br label %b.grow_done89

str_overflow_abort103:                            ; preds = %b.grow287
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2102

br.b1.33:                                         ; preds = %b.grow_done89
  %br.b1.0112 = trunc i64 %coerce.sext70 to i8
  store i8 %br.b1.0112, ptr %b.rn.dst111, align 1
  br label %br.done.33

br.c2.33:                                         ; preds = %b.grow_done89
  br i1 %br.cmp272, label %br.b2.33, label %br.c3.33

br.b2.33:                                         ; preds = %br.c2.33
  %br.sh6113 = lshr i64 %coerce.sext70, 6
  %br.b2.0114 = or i64 %br.sh6113, 192
  %br.b2.0t115 = trunc i64 %br.b2.0114 to i8
  %br.m6116 = and i64 %coerce.sext70, 63
  %br.b2.1117 = or i64 %br.m6116, 128
  %br.b2.1t118 = trunc i64 %br.b2.1117 to i8
  store i8 %br.b2.0t115, ptr %b.rn.dst111, align 1
  %br.dst1119 = getelementptr i8, ptr %b.rn.dst111, i64 1
  store i8 %br.b2.1t118, ptr %br.dst1119, align 1
  br label %br.done.33

br.c3.33:                                         ; preds = %br.c2.33
  br i1 %br.cmp373, label %br.b3.33, label %br.b4.33

br.b3.33:                                         ; preds = %br.c3.33
  %br.sh12120 = lshr i64 %coerce.sext70, 12
  %br.b3.0121 = or i64 %br.sh12120, 224
  %br.b3.0t122 = trunc i64 %br.b3.0121 to i8
  %br.sh6.3123 = lshr i64 %coerce.sext70, 6
  %br.m6.3124 = and i64 %br.sh6.3123, 63
  %br.b3.1125 = or i64 %br.m6.3124, 128
  %br.b3.1t126 = trunc i64 %br.b3.1125 to i8
  %br.mend127 = and i64 %coerce.sext70, 63
  %br.b3.2128 = or i64 %br.mend127, 128
  %br.b3.2t129 = trunc i64 %br.b3.2128 to i8
  store i8 %br.b3.0t122, ptr %b.rn.dst111, align 1
  %br.dst1.3130 = getelementptr i8, ptr %b.rn.dst111, i64 1
  store i8 %br.b3.1t126, ptr %br.dst1.3130, align 1
  %br.dst2.3131 = getelementptr i8, ptr %b.rn.dst111, i64 2
  store i8 %br.b3.2t129, ptr %br.dst2.3131, align 1
  br label %br.done.33

br.b4.33:                                         ; preds = %br.c3.33
  %br.sh18132 = lshr i64 %coerce.sext70, 18
  %br.b4.0133 = or i64 %br.sh18132, 240
  %br.b4.0t134 = trunc i64 %br.b4.0133 to i8
  %br.sh12.4135 = lshr i64 %coerce.sext70, 12
  %br.m12.4136 = and i64 %br.sh12.4135, 63
  %br.b4.1137 = or i64 %br.m12.4136, 128
  %br.b4.1t138 = trunc i64 %br.b4.1137 to i8
  %br.sh6.4139 = lshr i64 %coerce.sext70, 6
  %br.m6.4140 = and i64 %br.sh6.4139, 63
  %br.b4.2141 = or i64 %br.m6.4140, 128
  %br.b4.2t142 = trunc i64 %br.b4.2141 to i8
  %br.mend4143 = and i64 %coerce.sext70, 63
  %br.b4.3144 = or i64 %br.mend4143, 128
  %br.b4.3t145 = trunc i64 %br.b4.3144 to i8
  store i8 %br.b4.0t134, ptr %b.rn.dst111, align 1
  %br.dst1.4146 = getelementptr i8, ptr %b.rn.dst111, i64 1
  store i8 %br.b4.1t138, ptr %br.dst1.4146, align 1
  %br.dst2.4147 = getelementptr i8, ptr %b.rn.dst111, i64 2
  store i8 %br.b4.2t142, ptr %br.dst2.4147, align 1
  %br.dst3.4148 = getelementptr i8, ptr %b.rn.dst111, i64 3
  store i8 %br.b4.3t145, ptr %br.dst3.4148, align 1
  br label %br.done.33

br.done.33:                                       ; preds = %br.b4.33, %br.b3.33, %br.b2.33, %br.b1.33
  %br.nul149 = getelementptr i8, ptr %b.rn.data110, i64 %sum80
  store i8 0, ptr %br.nul149, align 1
  %b.len.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 0
  store i64 %sum80, ptr %b.len.gep150, align 8
  %var.load151 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep152 = getelementptr inbounds <{ i16 }>, ptr %var.load151, i32 0, i32 0
  %bf.load153 = load i16, ptr %fld.gep152, align 2
  %bf.shr154 = lshr i16 %bf.load153, 7
  %bf.mask155 = and i16 %bf.shr154, 1
  %bf.ext156 = zext i16 %bf.mask155 to i64
  %cmptmp157 = icmp ne i64 %bf.ext156, 0
  br i1 %cmptmp157, label %choice.then158, label %choice.else159

choice.then158:                                   ; preds = %br.done.33
  br label %choice.exit160

choice.else159:                                   ; preds = %br.done.33
  br label %choice.exit160

choice.exit160:                                   ; preds = %choice.else159, %choice.then158
  %choice.res161 = phi i32 [ 119, %choice.then158 ], [ 45, %choice.else159 ]
  %b.load162 = load ptr, ptr %var.b, align 8
  %var.load163 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep164 = getelementptr inbounds <{ i16 }>, ptr %var.load163, i32 0, i32 0
  %bf.load165 = load i16, ptr %fld.gep164, align 2
  %bf.shr166 = lshr i16 %bf.load165, 7
  %bf.mask167 = and i16 %bf.shr166, 1
  %bf.ext168 = zext i16 %bf.mask167 to i64
  %cmptmp169 = icmp ne i64 %bf.ext168, 0
  br i1 %cmptmp169, label %choice.then170, label %choice.else171

choice.then170:                                   ; preds = %choice.exit160
  br label %choice.exit172

choice.else171:                                   ; preds = %choice.exit160
  br label %choice.exit172

choice.exit172:                                   ; preds = %choice.else171, %choice.then170
  %choice.res173 = phi i32 [ 119, %choice.then170 ], [ 45, %choice.else171 ]
  %coerce.sext174 = sext i32 %choice.res173 to i64
  %br.cmp1175 = icmp slt i64 %coerce.sext174, 128
  %br.cmp2176 = icmp slt i64 %coerce.sext174, 2048
  %br.cmp3177 = icmp slt i64 %coerce.sext174, 65536
  %br.w3178 = select i1 %br.cmp3177, i64 3, i64 4
  %br.w2179 = select i1 %br.cmp2176, i64 2, i64 %br.w3178
  %br.width180 = select i1 %br.cmp1175, i64 1, i64 %br.w2179
  %b.rn.cur.len181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load162, i32 0, i32 0
  %b.rn.cur.len182 = load i64, ptr %b.rn.cur.len181, align 8
  %b.rn.new.len183 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len182, i64 %br.width180)
  %sum184 = extractvalue { i64, i1 } %b.rn.new.len183, 0
  %ovf185 = extractvalue { i64, i1 } %b.rn.new.len183, 1
  br i1 %ovf185, label %str_overflow_abort187, label %b.rn.new.len186

b.rn.new.len186:                                  ; preds = %str_overflow_abort187, %choice.exit172
  %b.cap188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load162, i32 0, i32 2
  %b.cap189 = load i64, ptr %b.cap188, align 8
  %b.need.grow190 = icmp slt i64 %b.cap189, %sum184
  br i1 %b.need.grow190, label %b.grow2191, label %b.nogrow2192

str_overflow_abort187:                            ; preds = %choice.exit172
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len186

b.grow2191:                                       ; preds = %b.rn.new.len186
  %b.cap2194 = mul i64 %b.cap189, 2
  %b.cap.small195 = icmp slt i64 %b.cap2194, 16
  %b.cap.grow196 = select i1 %b.cap.small195, i64 16, i64 %b.cap2194
  %b.cap.need197 = icmp slt i64 %b.cap.grow196, %sum184
  %b.new.cap198 = select i1 %b.cap.need197, i64 %sum184, i64 %b.cap.grow196
  %b.cur.len2199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load162, i32 0, i32 0
  %b.cur.len2200 = load i64, ptr %b.cur.len2199, align 8
  %b.cur.data2201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load162, i32 0, i32 1
  %b.cur.data2202 = load ptr, ptr %b.cur.data2201, align 8
  %b.new.buf.len2203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap198, i64 1)
  %sum204 = extractvalue { i64, i1 } %b.new.buf.len2203, 0
  %ovf205 = extractvalue { i64, i1 } %b.new.buf.len2203, 1
  br i1 %ovf205, label %str_overflow_abort207, label %b.new.buf.len2206

b.nogrow2192:                                     ; preds = %b.rn.new.len186
  br label %b.grow_done193

b.grow_done193:                                   ; preds = %b.nogrow2192, %b.new.buf.len2206
  %b.rn.data213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load162, i32 0, i32 1
  %b.rn.data214 = load ptr, ptr %b.rn.data213, align 8
  %b.rn.dst215 = getelementptr i8, ptr %b.rn.data214, i64 %b.rn.cur.len182
  br i1 %br.cmp1175, label %br.b1.34, label %br.c2.34

b.new.buf.len2206:                                ; preds = %str_overflow_abort207, %b.grow2191
  %arena.cur208 = call ptr @dva_arena_current()
  %b.new.buf2209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 %sum204)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2209, ptr align 1 %b.cur.data2202, i64 %b.cur.len2200, i1 false)
  %b.grow2.nul210 = getelementptr i8, ptr %b.new.buf2209, i64 %b.cur.len2200
  store i8 0, ptr %b.grow2.nul210, align 1
  %b.new.data2.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load162, i32 0, i32 1
  store ptr %b.new.buf2209, ptr %b.new.data2.gep211, align 8
  %b.new.cap2.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load162, i32 0, i32 2
  store i64 %b.new.cap198, ptr %b.new.cap2.gep212, align 8
  br label %b.grow_done193

str_overflow_abort207:                            ; preds = %b.grow2191
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2206

br.b1.34:                                         ; preds = %b.grow_done193
  %br.b1.0216 = trunc i64 %coerce.sext174 to i8
  store i8 %br.b1.0216, ptr %b.rn.dst215, align 1
  br label %br.done.34

br.c2.34:                                         ; preds = %b.grow_done193
  br i1 %br.cmp2176, label %br.b2.34, label %br.c3.34

br.b2.34:                                         ; preds = %br.c2.34
  %br.sh6217 = lshr i64 %coerce.sext174, 6
  %br.b2.0218 = or i64 %br.sh6217, 192
  %br.b2.0t219 = trunc i64 %br.b2.0218 to i8
  %br.m6220 = and i64 %coerce.sext174, 63
  %br.b2.1221 = or i64 %br.m6220, 128
  %br.b2.1t222 = trunc i64 %br.b2.1221 to i8
  store i8 %br.b2.0t219, ptr %b.rn.dst215, align 1
  %br.dst1223 = getelementptr i8, ptr %b.rn.dst215, i64 1
  store i8 %br.b2.1t222, ptr %br.dst1223, align 1
  br label %br.done.34

br.c3.34:                                         ; preds = %br.c2.34
  br i1 %br.cmp3177, label %br.b3.34, label %br.b4.34

br.b3.34:                                         ; preds = %br.c3.34
  %br.sh12224 = lshr i64 %coerce.sext174, 12
  %br.b3.0225 = or i64 %br.sh12224, 224
  %br.b3.0t226 = trunc i64 %br.b3.0225 to i8
  %br.sh6.3227 = lshr i64 %coerce.sext174, 6
  %br.m6.3228 = and i64 %br.sh6.3227, 63
  %br.b3.1229 = or i64 %br.m6.3228, 128
  %br.b3.1t230 = trunc i64 %br.b3.1229 to i8
  %br.mend231 = and i64 %coerce.sext174, 63
  %br.b3.2232 = or i64 %br.mend231, 128
  %br.b3.2t233 = trunc i64 %br.b3.2232 to i8
  store i8 %br.b3.0t226, ptr %b.rn.dst215, align 1
  %br.dst1.3234 = getelementptr i8, ptr %b.rn.dst215, i64 1
  store i8 %br.b3.1t230, ptr %br.dst1.3234, align 1
  %br.dst2.3235 = getelementptr i8, ptr %b.rn.dst215, i64 2
  store i8 %br.b3.2t233, ptr %br.dst2.3235, align 1
  br label %br.done.34

br.b4.34:                                         ; preds = %br.c3.34
  %br.sh18236 = lshr i64 %coerce.sext174, 18
  %br.b4.0237 = or i64 %br.sh18236, 240
  %br.b4.0t238 = trunc i64 %br.b4.0237 to i8
  %br.sh12.4239 = lshr i64 %coerce.sext174, 12
  %br.m12.4240 = and i64 %br.sh12.4239, 63
  %br.b4.1241 = or i64 %br.m12.4240, 128
  %br.b4.1t242 = trunc i64 %br.b4.1241 to i8
  %br.sh6.4243 = lshr i64 %coerce.sext174, 6
  %br.m6.4244 = and i64 %br.sh6.4243, 63
  %br.b4.2245 = or i64 %br.m6.4244, 128
  %br.b4.2t246 = trunc i64 %br.b4.2245 to i8
  %br.mend4247 = and i64 %coerce.sext174, 63
  %br.b4.3248 = or i64 %br.mend4247, 128
  %br.b4.3t249 = trunc i64 %br.b4.3248 to i8
  store i8 %br.b4.0t238, ptr %b.rn.dst215, align 1
  %br.dst1.4250 = getelementptr i8, ptr %b.rn.dst215, i64 1
  store i8 %br.b4.1t242, ptr %br.dst1.4250, align 1
  %br.dst2.4251 = getelementptr i8, ptr %b.rn.dst215, i64 2
  store i8 %br.b4.2t246, ptr %br.dst2.4251, align 1
  %br.dst3.4252 = getelementptr i8, ptr %b.rn.dst215, i64 3
  store i8 %br.b4.3t249, ptr %br.dst3.4252, align 1
  br label %br.done.34

br.done.34:                                       ; preds = %br.b4.34, %br.b3.34, %br.b2.34, %br.b1.34
  %br.nul253 = getelementptr i8, ptr %b.rn.data214, i64 %sum184
  store i8 0, ptr %br.nul253, align 1
  %b.len.gep254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load162, i32 0, i32 0
  store i64 %sum184, ptr %b.len.gep254, align 8
  %var.load255 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep256 = getelementptr inbounds <{ i16 }>, ptr %var.load255, i32 0, i32 0
  %bf.load257 = load i16, ptr %fld.gep256, align 2
  %bf.shr258 = lshr i16 %bf.load257, 6
  %bf.mask259 = and i16 %bf.shr258, 1
  %bf.ext260 = zext i16 %bf.mask259 to i64
  %cmptmp261 = icmp ne i64 %bf.ext260, 0
  br i1 %cmptmp261, label %choice.then262, label %choice.else263

choice.then262:                                   ; preds = %br.done.34
  br label %choice.exit264

choice.else263:                                   ; preds = %br.done.34
  br label %choice.exit264

choice.exit264:                                   ; preds = %choice.else263, %choice.then262
  %choice.res265 = phi i32 [ 120, %choice.then262 ], [ 45, %choice.else263 ]
  %b.load266 = load ptr, ptr %var.b, align 8
  %var.load267 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep268 = getelementptr inbounds <{ i16 }>, ptr %var.load267, i32 0, i32 0
  %bf.load269 = load i16, ptr %fld.gep268, align 2
  %bf.shr270 = lshr i16 %bf.load269, 6
  %bf.mask271 = and i16 %bf.shr270, 1
  %bf.ext272 = zext i16 %bf.mask271 to i64
  %cmptmp273 = icmp ne i64 %bf.ext272, 0
  br i1 %cmptmp273, label %choice.then274, label %choice.else275

choice.then274:                                   ; preds = %choice.exit264
  br label %choice.exit276

choice.else275:                                   ; preds = %choice.exit264
  br label %choice.exit276

choice.exit276:                                   ; preds = %choice.else275, %choice.then274
  %choice.res277 = phi i32 [ 120, %choice.then274 ], [ 45, %choice.else275 ]
  %coerce.sext278 = sext i32 %choice.res277 to i64
  %br.cmp1279 = icmp slt i64 %coerce.sext278, 128
  %br.cmp2280 = icmp slt i64 %coerce.sext278, 2048
  %br.cmp3281 = icmp slt i64 %coerce.sext278, 65536
  %br.w3282 = select i1 %br.cmp3281, i64 3, i64 4
  %br.w2283 = select i1 %br.cmp2280, i64 2, i64 %br.w3282
  %br.width284 = select i1 %br.cmp1279, i64 1, i64 %br.w2283
  %b.rn.cur.len285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load266, i32 0, i32 0
  %b.rn.cur.len286 = load i64, ptr %b.rn.cur.len285, align 8
  %b.rn.new.len287 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len286, i64 %br.width284)
  %sum288 = extractvalue { i64, i1 } %b.rn.new.len287, 0
  %ovf289 = extractvalue { i64, i1 } %b.rn.new.len287, 1
  br i1 %ovf289, label %str_overflow_abort291, label %b.rn.new.len290

b.rn.new.len290:                                  ; preds = %str_overflow_abort291, %choice.exit276
  %b.cap292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load266, i32 0, i32 2
  %b.cap293 = load i64, ptr %b.cap292, align 8
  %b.need.grow294 = icmp slt i64 %b.cap293, %sum288
  br i1 %b.need.grow294, label %b.grow2295, label %b.nogrow2296

str_overflow_abort291:                            ; preds = %choice.exit276
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len290

b.grow2295:                                       ; preds = %b.rn.new.len290
  %b.cap2298 = mul i64 %b.cap293, 2
  %b.cap.small299 = icmp slt i64 %b.cap2298, 16
  %b.cap.grow300 = select i1 %b.cap.small299, i64 16, i64 %b.cap2298
  %b.cap.need301 = icmp slt i64 %b.cap.grow300, %sum288
  %b.new.cap302 = select i1 %b.cap.need301, i64 %sum288, i64 %b.cap.grow300
  %b.cur.len2303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load266, i32 0, i32 0
  %b.cur.len2304 = load i64, ptr %b.cur.len2303, align 8
  %b.cur.data2305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load266, i32 0, i32 1
  %b.cur.data2306 = load ptr, ptr %b.cur.data2305, align 8
  %b.new.buf.len2307 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap302, i64 1)
  %sum308 = extractvalue { i64, i1 } %b.new.buf.len2307, 0
  %ovf309 = extractvalue { i64, i1 } %b.new.buf.len2307, 1
  br i1 %ovf309, label %str_overflow_abort311, label %b.new.buf.len2310

b.nogrow2296:                                     ; preds = %b.rn.new.len290
  br label %b.grow_done297

b.grow_done297:                                   ; preds = %b.nogrow2296, %b.new.buf.len2310
  %b.rn.data317 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load266, i32 0, i32 1
  %b.rn.data318 = load ptr, ptr %b.rn.data317, align 8
  %b.rn.dst319 = getelementptr i8, ptr %b.rn.data318, i64 %b.rn.cur.len286
  br i1 %br.cmp1279, label %br.b1.35, label %br.c2.35

b.new.buf.len2310:                                ; preds = %str_overflow_abort311, %b.grow2295
  %arena.cur312 = call ptr @dva_arena_current()
  %b.new.buf2313 = call ptr @dva_arena_alloc(ptr %arena.cur312, i64 %sum308)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2313, ptr align 1 %b.cur.data2306, i64 %b.cur.len2304, i1 false)
  %b.grow2.nul314 = getelementptr i8, ptr %b.new.buf2313, i64 %b.cur.len2304
  store i8 0, ptr %b.grow2.nul314, align 1
  %b.new.data2.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load266, i32 0, i32 1
  store ptr %b.new.buf2313, ptr %b.new.data2.gep315, align 8
  %b.new.cap2.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load266, i32 0, i32 2
  store i64 %b.new.cap302, ptr %b.new.cap2.gep316, align 8
  br label %b.grow_done297

str_overflow_abort311:                            ; preds = %b.grow2295
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2310

br.b1.35:                                         ; preds = %b.grow_done297
  %br.b1.0320 = trunc i64 %coerce.sext278 to i8
  store i8 %br.b1.0320, ptr %b.rn.dst319, align 1
  br label %br.done.35

br.c2.35:                                         ; preds = %b.grow_done297
  br i1 %br.cmp2280, label %br.b2.35, label %br.c3.35

br.b2.35:                                         ; preds = %br.c2.35
  %br.sh6321 = lshr i64 %coerce.sext278, 6
  %br.b2.0322 = or i64 %br.sh6321, 192
  %br.b2.0t323 = trunc i64 %br.b2.0322 to i8
  %br.m6324 = and i64 %coerce.sext278, 63
  %br.b2.1325 = or i64 %br.m6324, 128
  %br.b2.1t326 = trunc i64 %br.b2.1325 to i8
  store i8 %br.b2.0t323, ptr %b.rn.dst319, align 1
  %br.dst1327 = getelementptr i8, ptr %b.rn.dst319, i64 1
  store i8 %br.b2.1t326, ptr %br.dst1327, align 1
  br label %br.done.35

br.c3.35:                                         ; preds = %br.c2.35
  br i1 %br.cmp3281, label %br.b3.35, label %br.b4.35

br.b3.35:                                         ; preds = %br.c3.35
  %br.sh12328 = lshr i64 %coerce.sext278, 12
  %br.b3.0329 = or i64 %br.sh12328, 224
  %br.b3.0t330 = trunc i64 %br.b3.0329 to i8
  %br.sh6.3331 = lshr i64 %coerce.sext278, 6
  %br.m6.3332 = and i64 %br.sh6.3331, 63
  %br.b3.1333 = or i64 %br.m6.3332, 128
  %br.b3.1t334 = trunc i64 %br.b3.1333 to i8
  %br.mend335 = and i64 %coerce.sext278, 63
  %br.b3.2336 = or i64 %br.mend335, 128
  %br.b3.2t337 = trunc i64 %br.b3.2336 to i8
  store i8 %br.b3.0t330, ptr %b.rn.dst319, align 1
  %br.dst1.3338 = getelementptr i8, ptr %b.rn.dst319, i64 1
  store i8 %br.b3.1t334, ptr %br.dst1.3338, align 1
  %br.dst2.3339 = getelementptr i8, ptr %b.rn.dst319, i64 2
  store i8 %br.b3.2t337, ptr %br.dst2.3339, align 1
  br label %br.done.35

br.b4.35:                                         ; preds = %br.c3.35
  %br.sh18340 = lshr i64 %coerce.sext278, 18
  %br.b4.0341 = or i64 %br.sh18340, 240
  %br.b4.0t342 = trunc i64 %br.b4.0341 to i8
  %br.sh12.4343 = lshr i64 %coerce.sext278, 12
  %br.m12.4344 = and i64 %br.sh12.4343, 63
  %br.b4.1345 = or i64 %br.m12.4344, 128
  %br.b4.1t346 = trunc i64 %br.b4.1345 to i8
  %br.sh6.4347 = lshr i64 %coerce.sext278, 6
  %br.m6.4348 = and i64 %br.sh6.4347, 63
  %br.b4.2349 = or i64 %br.m6.4348, 128
  %br.b4.2t350 = trunc i64 %br.b4.2349 to i8
  %br.mend4351 = and i64 %coerce.sext278, 63
  %br.b4.3352 = or i64 %br.mend4351, 128
  %br.b4.3t353 = trunc i64 %br.b4.3352 to i8
  store i8 %br.b4.0t342, ptr %b.rn.dst319, align 1
  %br.dst1.4354 = getelementptr i8, ptr %b.rn.dst319, i64 1
  store i8 %br.b4.1t346, ptr %br.dst1.4354, align 1
  %br.dst2.4355 = getelementptr i8, ptr %b.rn.dst319, i64 2
  store i8 %br.b4.2t350, ptr %br.dst2.4355, align 1
  %br.dst3.4356 = getelementptr i8, ptr %b.rn.dst319, i64 3
  store i8 %br.b4.3t353, ptr %br.dst3.4356, align 1
  br label %br.done.35

br.done.35:                                       ; preds = %br.b4.35, %br.b3.35, %br.b2.35, %br.b1.35
  %br.nul357 = getelementptr i8, ptr %b.rn.data318, i64 %sum288
  store i8 0, ptr %br.nul357, align 1
  %b.len.gep358 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load266, i32 0, i32 0
  store i64 %sum288, ptr %b.len.gep358, align 8
  %var.load359 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep360 = getelementptr inbounds <{ i16 }>, ptr %var.load359, i32 0, i32 0
  %bf.load361 = load i16, ptr %fld.gep360, align 2
  %bf.shr362 = lshr i16 %bf.load361, 5
  %bf.mask363 = and i16 %bf.shr362, 1
  %bf.ext364 = zext i16 %bf.mask363 to i64
  %cmptmp365 = icmp ne i64 %bf.ext364, 0
  br i1 %cmptmp365, label %choice.then366, label %choice.else367

choice.then366:                                   ; preds = %br.done.35
  br label %choice.exit368

choice.else367:                                   ; preds = %br.done.35
  br label %choice.exit368

choice.exit368:                                   ; preds = %choice.else367, %choice.then366
  %choice.res369 = phi i32 [ 114, %choice.then366 ], [ 45, %choice.else367 ]
  %b.load370 = load ptr, ptr %var.b, align 8
  %var.load371 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep372 = getelementptr inbounds <{ i16 }>, ptr %var.load371, i32 0, i32 0
  %bf.load373 = load i16, ptr %fld.gep372, align 2
  %bf.shr374 = lshr i16 %bf.load373, 5
  %bf.mask375 = and i16 %bf.shr374, 1
  %bf.ext376 = zext i16 %bf.mask375 to i64
  %cmptmp377 = icmp ne i64 %bf.ext376, 0
  br i1 %cmptmp377, label %choice.then378, label %choice.else379

choice.then378:                                   ; preds = %choice.exit368
  br label %choice.exit380

choice.else379:                                   ; preds = %choice.exit368
  br label %choice.exit380

choice.exit380:                                   ; preds = %choice.else379, %choice.then378
  %choice.res381 = phi i32 [ 114, %choice.then378 ], [ 45, %choice.else379 ]
  %coerce.sext382 = sext i32 %choice.res381 to i64
  %br.cmp1383 = icmp slt i64 %coerce.sext382, 128
  %br.cmp2384 = icmp slt i64 %coerce.sext382, 2048
  %br.cmp3385 = icmp slt i64 %coerce.sext382, 65536
  %br.w3386 = select i1 %br.cmp3385, i64 3, i64 4
  %br.w2387 = select i1 %br.cmp2384, i64 2, i64 %br.w3386
  %br.width388 = select i1 %br.cmp1383, i64 1, i64 %br.w2387
  %b.rn.cur.len389 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load370, i32 0, i32 0
  %b.rn.cur.len390 = load i64, ptr %b.rn.cur.len389, align 8
  %b.rn.new.len391 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len390, i64 %br.width388)
  %sum392 = extractvalue { i64, i1 } %b.rn.new.len391, 0
  %ovf393 = extractvalue { i64, i1 } %b.rn.new.len391, 1
  br i1 %ovf393, label %str_overflow_abort395, label %b.rn.new.len394

b.rn.new.len394:                                  ; preds = %str_overflow_abort395, %choice.exit380
  %b.cap396 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load370, i32 0, i32 2
  %b.cap397 = load i64, ptr %b.cap396, align 8
  %b.need.grow398 = icmp slt i64 %b.cap397, %sum392
  br i1 %b.need.grow398, label %b.grow2399, label %b.nogrow2400

str_overflow_abort395:                            ; preds = %choice.exit380
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len394

b.grow2399:                                       ; preds = %b.rn.new.len394
  %b.cap2402 = mul i64 %b.cap397, 2
  %b.cap.small403 = icmp slt i64 %b.cap2402, 16
  %b.cap.grow404 = select i1 %b.cap.small403, i64 16, i64 %b.cap2402
  %b.cap.need405 = icmp slt i64 %b.cap.grow404, %sum392
  %b.new.cap406 = select i1 %b.cap.need405, i64 %sum392, i64 %b.cap.grow404
  %b.cur.len2407 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load370, i32 0, i32 0
  %b.cur.len2408 = load i64, ptr %b.cur.len2407, align 8
  %b.cur.data2409 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load370, i32 0, i32 1
  %b.cur.data2410 = load ptr, ptr %b.cur.data2409, align 8
  %b.new.buf.len2411 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap406, i64 1)
  %sum412 = extractvalue { i64, i1 } %b.new.buf.len2411, 0
  %ovf413 = extractvalue { i64, i1 } %b.new.buf.len2411, 1
  br i1 %ovf413, label %str_overflow_abort415, label %b.new.buf.len2414

b.nogrow2400:                                     ; preds = %b.rn.new.len394
  br label %b.grow_done401

b.grow_done401:                                   ; preds = %b.nogrow2400, %b.new.buf.len2414
  %b.rn.data421 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load370, i32 0, i32 1
  %b.rn.data422 = load ptr, ptr %b.rn.data421, align 8
  %b.rn.dst423 = getelementptr i8, ptr %b.rn.data422, i64 %b.rn.cur.len390
  br i1 %br.cmp1383, label %br.b1.36, label %br.c2.36

b.new.buf.len2414:                                ; preds = %str_overflow_abort415, %b.grow2399
  %arena.cur416 = call ptr @dva_arena_current()
  %b.new.buf2417 = call ptr @dva_arena_alloc(ptr %arena.cur416, i64 %sum412)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2417, ptr align 1 %b.cur.data2410, i64 %b.cur.len2408, i1 false)
  %b.grow2.nul418 = getelementptr i8, ptr %b.new.buf2417, i64 %b.cur.len2408
  store i8 0, ptr %b.grow2.nul418, align 1
  %b.new.data2.gep419 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load370, i32 0, i32 1
  store ptr %b.new.buf2417, ptr %b.new.data2.gep419, align 8
  %b.new.cap2.gep420 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load370, i32 0, i32 2
  store i64 %b.new.cap406, ptr %b.new.cap2.gep420, align 8
  br label %b.grow_done401

str_overflow_abort415:                            ; preds = %b.grow2399
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2414

br.b1.36:                                         ; preds = %b.grow_done401
  %br.b1.0424 = trunc i64 %coerce.sext382 to i8
  store i8 %br.b1.0424, ptr %b.rn.dst423, align 1
  br label %br.done.36

br.c2.36:                                         ; preds = %b.grow_done401
  br i1 %br.cmp2384, label %br.b2.36, label %br.c3.36

br.b2.36:                                         ; preds = %br.c2.36
  %br.sh6425 = lshr i64 %coerce.sext382, 6
  %br.b2.0426 = or i64 %br.sh6425, 192
  %br.b2.0t427 = trunc i64 %br.b2.0426 to i8
  %br.m6428 = and i64 %coerce.sext382, 63
  %br.b2.1429 = or i64 %br.m6428, 128
  %br.b2.1t430 = trunc i64 %br.b2.1429 to i8
  store i8 %br.b2.0t427, ptr %b.rn.dst423, align 1
  %br.dst1431 = getelementptr i8, ptr %b.rn.dst423, i64 1
  store i8 %br.b2.1t430, ptr %br.dst1431, align 1
  br label %br.done.36

br.c3.36:                                         ; preds = %br.c2.36
  br i1 %br.cmp3385, label %br.b3.36, label %br.b4.36

br.b3.36:                                         ; preds = %br.c3.36
  %br.sh12432 = lshr i64 %coerce.sext382, 12
  %br.b3.0433 = or i64 %br.sh12432, 224
  %br.b3.0t434 = trunc i64 %br.b3.0433 to i8
  %br.sh6.3435 = lshr i64 %coerce.sext382, 6
  %br.m6.3436 = and i64 %br.sh6.3435, 63
  %br.b3.1437 = or i64 %br.m6.3436, 128
  %br.b3.1t438 = trunc i64 %br.b3.1437 to i8
  %br.mend439 = and i64 %coerce.sext382, 63
  %br.b3.2440 = or i64 %br.mend439, 128
  %br.b3.2t441 = trunc i64 %br.b3.2440 to i8
  store i8 %br.b3.0t434, ptr %b.rn.dst423, align 1
  %br.dst1.3442 = getelementptr i8, ptr %b.rn.dst423, i64 1
  store i8 %br.b3.1t438, ptr %br.dst1.3442, align 1
  %br.dst2.3443 = getelementptr i8, ptr %b.rn.dst423, i64 2
  store i8 %br.b3.2t441, ptr %br.dst2.3443, align 1
  br label %br.done.36

br.b4.36:                                         ; preds = %br.c3.36
  %br.sh18444 = lshr i64 %coerce.sext382, 18
  %br.b4.0445 = or i64 %br.sh18444, 240
  %br.b4.0t446 = trunc i64 %br.b4.0445 to i8
  %br.sh12.4447 = lshr i64 %coerce.sext382, 12
  %br.m12.4448 = and i64 %br.sh12.4447, 63
  %br.b4.1449 = or i64 %br.m12.4448, 128
  %br.b4.1t450 = trunc i64 %br.b4.1449 to i8
  %br.sh6.4451 = lshr i64 %coerce.sext382, 6
  %br.m6.4452 = and i64 %br.sh6.4451, 63
  %br.b4.2453 = or i64 %br.m6.4452, 128
  %br.b4.2t454 = trunc i64 %br.b4.2453 to i8
  %br.mend4455 = and i64 %coerce.sext382, 63
  %br.b4.3456 = or i64 %br.mend4455, 128
  %br.b4.3t457 = trunc i64 %br.b4.3456 to i8
  store i8 %br.b4.0t446, ptr %b.rn.dst423, align 1
  %br.dst1.4458 = getelementptr i8, ptr %b.rn.dst423, i64 1
  store i8 %br.b4.1t450, ptr %br.dst1.4458, align 1
  %br.dst2.4459 = getelementptr i8, ptr %b.rn.dst423, i64 2
  store i8 %br.b4.2t454, ptr %br.dst2.4459, align 1
  %br.dst3.4460 = getelementptr i8, ptr %b.rn.dst423, i64 3
  store i8 %br.b4.3t457, ptr %br.dst3.4460, align 1
  br label %br.done.36

br.done.36:                                       ; preds = %br.b4.36, %br.b3.36, %br.b2.36, %br.b1.36
  %br.nul461 = getelementptr i8, ptr %b.rn.data422, i64 %sum392
  store i8 0, ptr %br.nul461, align 1
  %b.len.gep462 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load370, i32 0, i32 0
  store i64 %sum392, ptr %b.len.gep462, align 8
  %var.load463 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep464 = getelementptr inbounds <{ i16 }>, ptr %var.load463, i32 0, i32 0
  %bf.load465 = load i16, ptr %fld.gep464, align 2
  %bf.shr466 = lshr i16 %bf.load465, 4
  %bf.mask467 = and i16 %bf.shr466, 1
  %bf.ext468 = zext i16 %bf.mask467 to i64
  %cmptmp469 = icmp ne i64 %bf.ext468, 0
  br i1 %cmptmp469, label %choice.then470, label %choice.else471

choice.then470:                                   ; preds = %br.done.36
  br label %choice.exit472

choice.else471:                                   ; preds = %br.done.36
  br label %choice.exit472

choice.exit472:                                   ; preds = %choice.else471, %choice.then470
  %choice.res473 = phi i32 [ 119, %choice.then470 ], [ 45, %choice.else471 ]
  %b.load474 = load ptr, ptr %var.b, align 8
  %var.load475 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep476 = getelementptr inbounds <{ i16 }>, ptr %var.load475, i32 0, i32 0
  %bf.load477 = load i16, ptr %fld.gep476, align 2
  %bf.shr478 = lshr i16 %bf.load477, 4
  %bf.mask479 = and i16 %bf.shr478, 1
  %bf.ext480 = zext i16 %bf.mask479 to i64
  %cmptmp481 = icmp ne i64 %bf.ext480, 0
  br i1 %cmptmp481, label %choice.then482, label %choice.else483

choice.then482:                                   ; preds = %choice.exit472
  br label %choice.exit484

choice.else483:                                   ; preds = %choice.exit472
  br label %choice.exit484

choice.exit484:                                   ; preds = %choice.else483, %choice.then482
  %choice.res485 = phi i32 [ 119, %choice.then482 ], [ 45, %choice.else483 ]
  %coerce.sext486 = sext i32 %choice.res485 to i64
  %br.cmp1487 = icmp slt i64 %coerce.sext486, 128
  %br.cmp2488 = icmp slt i64 %coerce.sext486, 2048
  %br.cmp3489 = icmp slt i64 %coerce.sext486, 65536
  %br.w3490 = select i1 %br.cmp3489, i64 3, i64 4
  %br.w2491 = select i1 %br.cmp2488, i64 2, i64 %br.w3490
  %br.width492 = select i1 %br.cmp1487, i64 1, i64 %br.w2491
  %b.rn.cur.len493 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 0
  %b.rn.cur.len494 = load i64, ptr %b.rn.cur.len493, align 8
  %b.rn.new.len495 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len494, i64 %br.width492)
  %sum496 = extractvalue { i64, i1 } %b.rn.new.len495, 0
  %ovf497 = extractvalue { i64, i1 } %b.rn.new.len495, 1
  br i1 %ovf497, label %str_overflow_abort499, label %b.rn.new.len498

b.rn.new.len498:                                  ; preds = %str_overflow_abort499, %choice.exit484
  %b.cap500 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 2
  %b.cap501 = load i64, ptr %b.cap500, align 8
  %b.need.grow502 = icmp slt i64 %b.cap501, %sum496
  br i1 %b.need.grow502, label %b.grow2503, label %b.nogrow2504

str_overflow_abort499:                            ; preds = %choice.exit484
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len498

b.grow2503:                                       ; preds = %b.rn.new.len498
  %b.cap2506 = mul i64 %b.cap501, 2
  %b.cap.small507 = icmp slt i64 %b.cap2506, 16
  %b.cap.grow508 = select i1 %b.cap.small507, i64 16, i64 %b.cap2506
  %b.cap.need509 = icmp slt i64 %b.cap.grow508, %sum496
  %b.new.cap510 = select i1 %b.cap.need509, i64 %sum496, i64 %b.cap.grow508
  %b.cur.len2511 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 0
  %b.cur.len2512 = load i64, ptr %b.cur.len2511, align 8
  %b.cur.data2513 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 1
  %b.cur.data2514 = load ptr, ptr %b.cur.data2513, align 8
  %b.new.buf.len2515 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap510, i64 1)
  %sum516 = extractvalue { i64, i1 } %b.new.buf.len2515, 0
  %ovf517 = extractvalue { i64, i1 } %b.new.buf.len2515, 1
  br i1 %ovf517, label %str_overflow_abort519, label %b.new.buf.len2518

b.nogrow2504:                                     ; preds = %b.rn.new.len498
  br label %b.grow_done505

b.grow_done505:                                   ; preds = %b.nogrow2504, %b.new.buf.len2518
  %b.rn.data525 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 1
  %b.rn.data526 = load ptr, ptr %b.rn.data525, align 8
  %b.rn.dst527 = getelementptr i8, ptr %b.rn.data526, i64 %b.rn.cur.len494
  br i1 %br.cmp1487, label %br.b1.37, label %br.c2.37

b.new.buf.len2518:                                ; preds = %str_overflow_abort519, %b.grow2503
  %arena.cur520 = call ptr @dva_arena_current()
  %b.new.buf2521 = call ptr @dva_arena_alloc(ptr %arena.cur520, i64 %sum516)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2521, ptr align 1 %b.cur.data2514, i64 %b.cur.len2512, i1 false)
  %b.grow2.nul522 = getelementptr i8, ptr %b.new.buf2521, i64 %b.cur.len2512
  store i8 0, ptr %b.grow2.nul522, align 1
  %b.new.data2.gep523 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 1
  store ptr %b.new.buf2521, ptr %b.new.data2.gep523, align 8
  %b.new.cap2.gep524 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 2
  store i64 %b.new.cap510, ptr %b.new.cap2.gep524, align 8
  br label %b.grow_done505

str_overflow_abort519:                            ; preds = %b.grow2503
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2518

br.b1.37:                                         ; preds = %b.grow_done505
  %br.b1.0528 = trunc i64 %coerce.sext486 to i8
  store i8 %br.b1.0528, ptr %b.rn.dst527, align 1
  br label %br.done.37

br.c2.37:                                         ; preds = %b.grow_done505
  br i1 %br.cmp2488, label %br.b2.37, label %br.c3.37

br.b2.37:                                         ; preds = %br.c2.37
  %br.sh6529 = lshr i64 %coerce.sext486, 6
  %br.b2.0530 = or i64 %br.sh6529, 192
  %br.b2.0t531 = trunc i64 %br.b2.0530 to i8
  %br.m6532 = and i64 %coerce.sext486, 63
  %br.b2.1533 = or i64 %br.m6532, 128
  %br.b2.1t534 = trunc i64 %br.b2.1533 to i8
  store i8 %br.b2.0t531, ptr %b.rn.dst527, align 1
  %br.dst1535 = getelementptr i8, ptr %b.rn.dst527, i64 1
  store i8 %br.b2.1t534, ptr %br.dst1535, align 1
  br label %br.done.37

br.c3.37:                                         ; preds = %br.c2.37
  br i1 %br.cmp3489, label %br.b3.37, label %br.b4.37

br.b3.37:                                         ; preds = %br.c3.37
  %br.sh12536 = lshr i64 %coerce.sext486, 12
  %br.b3.0537 = or i64 %br.sh12536, 224
  %br.b3.0t538 = trunc i64 %br.b3.0537 to i8
  %br.sh6.3539 = lshr i64 %coerce.sext486, 6
  %br.m6.3540 = and i64 %br.sh6.3539, 63
  %br.b3.1541 = or i64 %br.m6.3540, 128
  %br.b3.1t542 = trunc i64 %br.b3.1541 to i8
  %br.mend543 = and i64 %coerce.sext486, 63
  %br.b3.2544 = or i64 %br.mend543, 128
  %br.b3.2t545 = trunc i64 %br.b3.2544 to i8
  store i8 %br.b3.0t538, ptr %b.rn.dst527, align 1
  %br.dst1.3546 = getelementptr i8, ptr %b.rn.dst527, i64 1
  store i8 %br.b3.1t542, ptr %br.dst1.3546, align 1
  %br.dst2.3547 = getelementptr i8, ptr %b.rn.dst527, i64 2
  store i8 %br.b3.2t545, ptr %br.dst2.3547, align 1
  br label %br.done.37

br.b4.37:                                         ; preds = %br.c3.37
  %br.sh18548 = lshr i64 %coerce.sext486, 18
  %br.b4.0549 = or i64 %br.sh18548, 240
  %br.b4.0t550 = trunc i64 %br.b4.0549 to i8
  %br.sh12.4551 = lshr i64 %coerce.sext486, 12
  %br.m12.4552 = and i64 %br.sh12.4551, 63
  %br.b4.1553 = or i64 %br.m12.4552, 128
  %br.b4.1t554 = trunc i64 %br.b4.1553 to i8
  %br.sh6.4555 = lshr i64 %coerce.sext486, 6
  %br.m6.4556 = and i64 %br.sh6.4555, 63
  %br.b4.2557 = or i64 %br.m6.4556, 128
  %br.b4.2t558 = trunc i64 %br.b4.2557 to i8
  %br.mend4559 = and i64 %coerce.sext486, 63
  %br.b4.3560 = or i64 %br.mend4559, 128
  %br.b4.3t561 = trunc i64 %br.b4.3560 to i8
  store i8 %br.b4.0t550, ptr %b.rn.dst527, align 1
  %br.dst1.4562 = getelementptr i8, ptr %b.rn.dst527, i64 1
  store i8 %br.b4.1t554, ptr %br.dst1.4562, align 1
  %br.dst2.4563 = getelementptr i8, ptr %b.rn.dst527, i64 2
  store i8 %br.b4.2t558, ptr %br.dst2.4563, align 1
  %br.dst3.4564 = getelementptr i8, ptr %b.rn.dst527, i64 3
  store i8 %br.b4.3t561, ptr %br.dst3.4564, align 1
  br label %br.done.37

br.done.37:                                       ; preds = %br.b4.37, %br.b3.37, %br.b2.37, %br.b1.37
  %br.nul565 = getelementptr i8, ptr %b.rn.data526, i64 %sum496
  store i8 0, ptr %br.nul565, align 1
  %b.len.gep566 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load474, i32 0, i32 0
  store i64 %sum496, ptr %b.len.gep566, align 8
  %var.load567 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep568 = getelementptr inbounds <{ i16 }>, ptr %var.load567, i32 0, i32 0
  %bf.load569 = load i16, ptr %fld.gep568, align 2
  %bf.shr570 = lshr i16 %bf.load569, 3
  %bf.mask571 = and i16 %bf.shr570, 1
  %bf.ext572 = zext i16 %bf.mask571 to i64
  %cmptmp573 = icmp ne i64 %bf.ext572, 0
  br i1 %cmptmp573, label %choice.then574, label %choice.else575

choice.then574:                                   ; preds = %br.done.37
  br label %choice.exit576

choice.else575:                                   ; preds = %br.done.37
  br label %choice.exit576

choice.exit576:                                   ; preds = %choice.else575, %choice.then574
  %choice.res577 = phi i32 [ 120, %choice.then574 ], [ 45, %choice.else575 ]
  %b.load578 = load ptr, ptr %var.b, align 8
  %var.load579 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep580 = getelementptr inbounds <{ i16 }>, ptr %var.load579, i32 0, i32 0
  %bf.load581 = load i16, ptr %fld.gep580, align 2
  %bf.shr582 = lshr i16 %bf.load581, 3
  %bf.mask583 = and i16 %bf.shr582, 1
  %bf.ext584 = zext i16 %bf.mask583 to i64
  %cmptmp585 = icmp ne i64 %bf.ext584, 0
  br i1 %cmptmp585, label %choice.then586, label %choice.else587

choice.then586:                                   ; preds = %choice.exit576
  br label %choice.exit588

choice.else587:                                   ; preds = %choice.exit576
  br label %choice.exit588

choice.exit588:                                   ; preds = %choice.else587, %choice.then586
  %choice.res589 = phi i32 [ 120, %choice.then586 ], [ 45, %choice.else587 ]
  %coerce.sext590 = sext i32 %choice.res589 to i64
  %br.cmp1591 = icmp slt i64 %coerce.sext590, 128
  %br.cmp2592 = icmp slt i64 %coerce.sext590, 2048
  %br.cmp3593 = icmp slt i64 %coerce.sext590, 65536
  %br.w3594 = select i1 %br.cmp3593, i64 3, i64 4
  %br.w2595 = select i1 %br.cmp2592, i64 2, i64 %br.w3594
  %br.width596 = select i1 %br.cmp1591, i64 1, i64 %br.w2595
  %b.rn.cur.len597 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 0
  %b.rn.cur.len598 = load i64, ptr %b.rn.cur.len597, align 8
  %b.rn.new.len599 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len598, i64 %br.width596)
  %sum600 = extractvalue { i64, i1 } %b.rn.new.len599, 0
  %ovf601 = extractvalue { i64, i1 } %b.rn.new.len599, 1
  br i1 %ovf601, label %str_overflow_abort603, label %b.rn.new.len602

b.rn.new.len602:                                  ; preds = %str_overflow_abort603, %choice.exit588
  %b.cap604 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 2
  %b.cap605 = load i64, ptr %b.cap604, align 8
  %b.need.grow606 = icmp slt i64 %b.cap605, %sum600
  br i1 %b.need.grow606, label %b.grow2607, label %b.nogrow2608

str_overflow_abort603:                            ; preds = %choice.exit588
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len602

b.grow2607:                                       ; preds = %b.rn.new.len602
  %b.cap2610 = mul i64 %b.cap605, 2
  %b.cap.small611 = icmp slt i64 %b.cap2610, 16
  %b.cap.grow612 = select i1 %b.cap.small611, i64 16, i64 %b.cap2610
  %b.cap.need613 = icmp slt i64 %b.cap.grow612, %sum600
  %b.new.cap614 = select i1 %b.cap.need613, i64 %sum600, i64 %b.cap.grow612
  %b.cur.len2615 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 0
  %b.cur.len2616 = load i64, ptr %b.cur.len2615, align 8
  %b.cur.data2617 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 1
  %b.cur.data2618 = load ptr, ptr %b.cur.data2617, align 8
  %b.new.buf.len2619 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap614, i64 1)
  %sum620 = extractvalue { i64, i1 } %b.new.buf.len2619, 0
  %ovf621 = extractvalue { i64, i1 } %b.new.buf.len2619, 1
  br i1 %ovf621, label %str_overflow_abort623, label %b.new.buf.len2622

b.nogrow2608:                                     ; preds = %b.rn.new.len602
  br label %b.grow_done609

b.grow_done609:                                   ; preds = %b.nogrow2608, %b.new.buf.len2622
  %b.rn.data629 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 1
  %b.rn.data630 = load ptr, ptr %b.rn.data629, align 8
  %b.rn.dst631 = getelementptr i8, ptr %b.rn.data630, i64 %b.rn.cur.len598
  br i1 %br.cmp1591, label %br.b1.38, label %br.c2.38

b.new.buf.len2622:                                ; preds = %str_overflow_abort623, %b.grow2607
  %arena.cur624 = call ptr @dva_arena_current()
  %b.new.buf2625 = call ptr @dva_arena_alloc(ptr %arena.cur624, i64 %sum620)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2625, ptr align 1 %b.cur.data2618, i64 %b.cur.len2616, i1 false)
  %b.grow2.nul626 = getelementptr i8, ptr %b.new.buf2625, i64 %b.cur.len2616
  store i8 0, ptr %b.grow2.nul626, align 1
  %b.new.data2.gep627 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 1
  store ptr %b.new.buf2625, ptr %b.new.data2.gep627, align 8
  %b.new.cap2.gep628 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 2
  store i64 %b.new.cap614, ptr %b.new.cap2.gep628, align 8
  br label %b.grow_done609

str_overflow_abort623:                            ; preds = %b.grow2607
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2622

br.b1.38:                                         ; preds = %b.grow_done609
  %br.b1.0632 = trunc i64 %coerce.sext590 to i8
  store i8 %br.b1.0632, ptr %b.rn.dst631, align 1
  br label %br.done.38

br.c2.38:                                         ; preds = %b.grow_done609
  br i1 %br.cmp2592, label %br.b2.38, label %br.c3.38

br.b2.38:                                         ; preds = %br.c2.38
  %br.sh6633 = lshr i64 %coerce.sext590, 6
  %br.b2.0634 = or i64 %br.sh6633, 192
  %br.b2.0t635 = trunc i64 %br.b2.0634 to i8
  %br.m6636 = and i64 %coerce.sext590, 63
  %br.b2.1637 = or i64 %br.m6636, 128
  %br.b2.1t638 = trunc i64 %br.b2.1637 to i8
  store i8 %br.b2.0t635, ptr %b.rn.dst631, align 1
  %br.dst1639 = getelementptr i8, ptr %b.rn.dst631, i64 1
  store i8 %br.b2.1t638, ptr %br.dst1639, align 1
  br label %br.done.38

br.c3.38:                                         ; preds = %br.c2.38
  br i1 %br.cmp3593, label %br.b3.38, label %br.b4.38

br.b3.38:                                         ; preds = %br.c3.38
  %br.sh12640 = lshr i64 %coerce.sext590, 12
  %br.b3.0641 = or i64 %br.sh12640, 224
  %br.b3.0t642 = trunc i64 %br.b3.0641 to i8
  %br.sh6.3643 = lshr i64 %coerce.sext590, 6
  %br.m6.3644 = and i64 %br.sh6.3643, 63
  %br.b3.1645 = or i64 %br.m6.3644, 128
  %br.b3.1t646 = trunc i64 %br.b3.1645 to i8
  %br.mend647 = and i64 %coerce.sext590, 63
  %br.b3.2648 = or i64 %br.mend647, 128
  %br.b3.2t649 = trunc i64 %br.b3.2648 to i8
  store i8 %br.b3.0t642, ptr %b.rn.dst631, align 1
  %br.dst1.3650 = getelementptr i8, ptr %b.rn.dst631, i64 1
  store i8 %br.b3.1t646, ptr %br.dst1.3650, align 1
  %br.dst2.3651 = getelementptr i8, ptr %b.rn.dst631, i64 2
  store i8 %br.b3.2t649, ptr %br.dst2.3651, align 1
  br label %br.done.38

br.b4.38:                                         ; preds = %br.c3.38
  %br.sh18652 = lshr i64 %coerce.sext590, 18
  %br.b4.0653 = or i64 %br.sh18652, 240
  %br.b4.0t654 = trunc i64 %br.b4.0653 to i8
  %br.sh12.4655 = lshr i64 %coerce.sext590, 12
  %br.m12.4656 = and i64 %br.sh12.4655, 63
  %br.b4.1657 = or i64 %br.m12.4656, 128
  %br.b4.1t658 = trunc i64 %br.b4.1657 to i8
  %br.sh6.4659 = lshr i64 %coerce.sext590, 6
  %br.m6.4660 = and i64 %br.sh6.4659, 63
  %br.b4.2661 = or i64 %br.m6.4660, 128
  %br.b4.2t662 = trunc i64 %br.b4.2661 to i8
  %br.mend4663 = and i64 %coerce.sext590, 63
  %br.b4.3664 = or i64 %br.mend4663, 128
  %br.b4.3t665 = trunc i64 %br.b4.3664 to i8
  store i8 %br.b4.0t654, ptr %b.rn.dst631, align 1
  %br.dst1.4666 = getelementptr i8, ptr %b.rn.dst631, i64 1
  store i8 %br.b4.1t658, ptr %br.dst1.4666, align 1
  %br.dst2.4667 = getelementptr i8, ptr %b.rn.dst631, i64 2
  store i8 %br.b4.2t662, ptr %br.dst2.4667, align 1
  %br.dst3.4668 = getelementptr i8, ptr %b.rn.dst631, i64 3
  store i8 %br.b4.3t665, ptr %br.dst3.4668, align 1
  br label %br.done.38

br.done.38:                                       ; preds = %br.b4.38, %br.b3.38, %br.b2.38, %br.b1.38
  %br.nul669 = getelementptr i8, ptr %b.rn.data630, i64 %sum600
  store i8 0, ptr %br.nul669, align 1
  %b.len.gep670 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 0
  store i64 %sum600, ptr %b.len.gep670, align 8
  %var.load671 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep672 = getelementptr inbounds <{ i16 }>, ptr %var.load671, i32 0, i32 0
  %bf.load673 = load i16, ptr %fld.gep672, align 2
  %bf.shr674 = lshr i16 %bf.load673, 2
  %bf.mask675 = and i16 %bf.shr674, 1
  %bf.ext676 = zext i16 %bf.mask675 to i64
  %cmptmp677 = icmp ne i64 %bf.ext676, 0
  br i1 %cmptmp677, label %choice.then678, label %choice.else679

choice.then678:                                   ; preds = %br.done.38
  br label %choice.exit680

choice.else679:                                   ; preds = %br.done.38
  br label %choice.exit680

choice.exit680:                                   ; preds = %choice.else679, %choice.then678
  %choice.res681 = phi i32 [ 114, %choice.then678 ], [ 45, %choice.else679 ]
  %b.load682 = load ptr, ptr %var.b, align 8
  %var.load683 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep684 = getelementptr inbounds <{ i16 }>, ptr %var.load683, i32 0, i32 0
  %bf.load685 = load i16, ptr %fld.gep684, align 2
  %bf.shr686 = lshr i16 %bf.load685, 2
  %bf.mask687 = and i16 %bf.shr686, 1
  %bf.ext688 = zext i16 %bf.mask687 to i64
  %cmptmp689 = icmp ne i64 %bf.ext688, 0
  br i1 %cmptmp689, label %choice.then690, label %choice.else691

choice.then690:                                   ; preds = %choice.exit680
  br label %choice.exit692

choice.else691:                                   ; preds = %choice.exit680
  br label %choice.exit692

choice.exit692:                                   ; preds = %choice.else691, %choice.then690
  %choice.res693 = phi i32 [ 114, %choice.then690 ], [ 45, %choice.else691 ]
  %coerce.sext694 = sext i32 %choice.res693 to i64
  %br.cmp1695 = icmp slt i64 %coerce.sext694, 128
  %br.cmp2696 = icmp slt i64 %coerce.sext694, 2048
  %br.cmp3697 = icmp slt i64 %coerce.sext694, 65536
  %br.w3698 = select i1 %br.cmp3697, i64 3, i64 4
  %br.w2699 = select i1 %br.cmp2696, i64 2, i64 %br.w3698
  %br.width700 = select i1 %br.cmp1695, i64 1, i64 %br.w2699
  %b.rn.cur.len701 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load682, i32 0, i32 0
  %b.rn.cur.len702 = load i64, ptr %b.rn.cur.len701, align 8
  %b.rn.new.len703 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len702, i64 %br.width700)
  %sum704 = extractvalue { i64, i1 } %b.rn.new.len703, 0
  %ovf705 = extractvalue { i64, i1 } %b.rn.new.len703, 1
  br i1 %ovf705, label %str_overflow_abort707, label %b.rn.new.len706

b.rn.new.len706:                                  ; preds = %str_overflow_abort707, %choice.exit692
  %b.cap708 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load682, i32 0, i32 2
  %b.cap709 = load i64, ptr %b.cap708, align 8
  %b.need.grow710 = icmp slt i64 %b.cap709, %sum704
  br i1 %b.need.grow710, label %b.grow2711, label %b.nogrow2712

str_overflow_abort707:                            ; preds = %choice.exit692
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len706

b.grow2711:                                       ; preds = %b.rn.new.len706
  %b.cap2714 = mul i64 %b.cap709, 2
  %b.cap.small715 = icmp slt i64 %b.cap2714, 16
  %b.cap.grow716 = select i1 %b.cap.small715, i64 16, i64 %b.cap2714
  %b.cap.need717 = icmp slt i64 %b.cap.grow716, %sum704
  %b.new.cap718 = select i1 %b.cap.need717, i64 %sum704, i64 %b.cap.grow716
  %b.cur.len2719 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load682, i32 0, i32 0
  %b.cur.len2720 = load i64, ptr %b.cur.len2719, align 8
  %b.cur.data2721 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load682, i32 0, i32 1
  %b.cur.data2722 = load ptr, ptr %b.cur.data2721, align 8
  %b.new.buf.len2723 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap718, i64 1)
  %sum724 = extractvalue { i64, i1 } %b.new.buf.len2723, 0
  %ovf725 = extractvalue { i64, i1 } %b.new.buf.len2723, 1
  br i1 %ovf725, label %str_overflow_abort727, label %b.new.buf.len2726

b.nogrow2712:                                     ; preds = %b.rn.new.len706
  br label %b.grow_done713

b.grow_done713:                                   ; preds = %b.nogrow2712, %b.new.buf.len2726
  %b.rn.data733 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load682, i32 0, i32 1
  %b.rn.data734 = load ptr, ptr %b.rn.data733, align 8
  %b.rn.dst735 = getelementptr i8, ptr %b.rn.data734, i64 %b.rn.cur.len702
  br i1 %br.cmp1695, label %br.b1.39, label %br.c2.39

b.new.buf.len2726:                                ; preds = %str_overflow_abort727, %b.grow2711
  %arena.cur728 = call ptr @dva_arena_current()
  %b.new.buf2729 = call ptr @dva_arena_alloc(ptr %arena.cur728, i64 %sum724)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2729, ptr align 1 %b.cur.data2722, i64 %b.cur.len2720, i1 false)
  %b.grow2.nul730 = getelementptr i8, ptr %b.new.buf2729, i64 %b.cur.len2720
  store i8 0, ptr %b.grow2.nul730, align 1
  %b.new.data2.gep731 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load682, i32 0, i32 1
  store ptr %b.new.buf2729, ptr %b.new.data2.gep731, align 8
  %b.new.cap2.gep732 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load682, i32 0, i32 2
  store i64 %b.new.cap718, ptr %b.new.cap2.gep732, align 8
  br label %b.grow_done713

str_overflow_abort727:                            ; preds = %b.grow2711
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2726

br.b1.39:                                         ; preds = %b.grow_done713
  %br.b1.0736 = trunc i64 %coerce.sext694 to i8
  store i8 %br.b1.0736, ptr %b.rn.dst735, align 1
  br label %br.done.39

br.c2.39:                                         ; preds = %b.grow_done713
  br i1 %br.cmp2696, label %br.b2.39, label %br.c3.39

br.b2.39:                                         ; preds = %br.c2.39
  %br.sh6737 = lshr i64 %coerce.sext694, 6
  %br.b2.0738 = or i64 %br.sh6737, 192
  %br.b2.0t739 = trunc i64 %br.b2.0738 to i8
  %br.m6740 = and i64 %coerce.sext694, 63
  %br.b2.1741 = or i64 %br.m6740, 128
  %br.b2.1t742 = trunc i64 %br.b2.1741 to i8
  store i8 %br.b2.0t739, ptr %b.rn.dst735, align 1
  %br.dst1743 = getelementptr i8, ptr %b.rn.dst735, i64 1
  store i8 %br.b2.1t742, ptr %br.dst1743, align 1
  br label %br.done.39

br.c3.39:                                         ; preds = %br.c2.39
  br i1 %br.cmp3697, label %br.b3.39, label %br.b4.39

br.b3.39:                                         ; preds = %br.c3.39
  %br.sh12744 = lshr i64 %coerce.sext694, 12
  %br.b3.0745 = or i64 %br.sh12744, 224
  %br.b3.0t746 = trunc i64 %br.b3.0745 to i8
  %br.sh6.3747 = lshr i64 %coerce.sext694, 6
  %br.m6.3748 = and i64 %br.sh6.3747, 63
  %br.b3.1749 = or i64 %br.m6.3748, 128
  %br.b3.1t750 = trunc i64 %br.b3.1749 to i8
  %br.mend751 = and i64 %coerce.sext694, 63
  %br.b3.2752 = or i64 %br.mend751, 128
  %br.b3.2t753 = trunc i64 %br.b3.2752 to i8
  store i8 %br.b3.0t746, ptr %b.rn.dst735, align 1
  %br.dst1.3754 = getelementptr i8, ptr %b.rn.dst735, i64 1
  store i8 %br.b3.1t750, ptr %br.dst1.3754, align 1
  %br.dst2.3755 = getelementptr i8, ptr %b.rn.dst735, i64 2
  store i8 %br.b3.2t753, ptr %br.dst2.3755, align 1
  br label %br.done.39

br.b4.39:                                         ; preds = %br.c3.39
  %br.sh18756 = lshr i64 %coerce.sext694, 18
  %br.b4.0757 = or i64 %br.sh18756, 240
  %br.b4.0t758 = trunc i64 %br.b4.0757 to i8
  %br.sh12.4759 = lshr i64 %coerce.sext694, 12
  %br.m12.4760 = and i64 %br.sh12.4759, 63
  %br.b4.1761 = or i64 %br.m12.4760, 128
  %br.b4.1t762 = trunc i64 %br.b4.1761 to i8
  %br.sh6.4763 = lshr i64 %coerce.sext694, 6
  %br.m6.4764 = and i64 %br.sh6.4763, 63
  %br.b4.2765 = or i64 %br.m6.4764, 128
  %br.b4.2t766 = trunc i64 %br.b4.2765 to i8
  %br.mend4767 = and i64 %coerce.sext694, 63
  %br.b4.3768 = or i64 %br.mend4767, 128
  %br.b4.3t769 = trunc i64 %br.b4.3768 to i8
  store i8 %br.b4.0t758, ptr %b.rn.dst735, align 1
  %br.dst1.4770 = getelementptr i8, ptr %b.rn.dst735, i64 1
  store i8 %br.b4.1t762, ptr %br.dst1.4770, align 1
  %br.dst2.4771 = getelementptr i8, ptr %b.rn.dst735, i64 2
  store i8 %br.b4.2t766, ptr %br.dst2.4771, align 1
  %br.dst3.4772 = getelementptr i8, ptr %b.rn.dst735, i64 3
  store i8 %br.b4.3t769, ptr %br.dst3.4772, align 1
  br label %br.done.39

br.done.39:                                       ; preds = %br.b4.39, %br.b3.39, %br.b2.39, %br.b1.39
  %br.nul773 = getelementptr i8, ptr %b.rn.data734, i64 %sum704
  store i8 0, ptr %br.nul773, align 1
  %b.len.gep774 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load682, i32 0, i32 0
  store i64 %sum704, ptr %b.len.gep774, align 8
  %var.load775 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep776 = getelementptr inbounds <{ i16 }>, ptr %var.load775, i32 0, i32 0
  %bf.load777 = load i16, ptr %fld.gep776, align 2
  %bf.shr778 = lshr i16 %bf.load777, 1
  %bf.mask779 = and i16 %bf.shr778, 1
  %bf.ext780 = zext i16 %bf.mask779 to i64
  %cmptmp781 = icmp ne i64 %bf.ext780, 0
  br i1 %cmptmp781, label %choice.then782, label %choice.else783

choice.then782:                                   ; preds = %br.done.39
  br label %choice.exit784

choice.else783:                                   ; preds = %br.done.39
  br label %choice.exit784

choice.exit784:                                   ; preds = %choice.else783, %choice.then782
  %choice.res785 = phi i32 [ 119, %choice.then782 ], [ 45, %choice.else783 ]
  %b.load786 = load ptr, ptr %var.b, align 8
  %var.load787 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep788 = getelementptr inbounds <{ i16 }>, ptr %var.load787, i32 0, i32 0
  %bf.load789 = load i16, ptr %fld.gep788, align 2
  %bf.shr790 = lshr i16 %bf.load789, 1
  %bf.mask791 = and i16 %bf.shr790, 1
  %bf.ext792 = zext i16 %bf.mask791 to i64
  %cmptmp793 = icmp ne i64 %bf.ext792, 0
  br i1 %cmptmp793, label %choice.then794, label %choice.else795

choice.then794:                                   ; preds = %choice.exit784
  br label %choice.exit796

choice.else795:                                   ; preds = %choice.exit784
  br label %choice.exit796

choice.exit796:                                   ; preds = %choice.else795, %choice.then794
  %choice.res797 = phi i32 [ 119, %choice.then794 ], [ 45, %choice.else795 ]
  %coerce.sext798 = sext i32 %choice.res797 to i64
  %br.cmp1799 = icmp slt i64 %coerce.sext798, 128
  %br.cmp2800 = icmp slt i64 %coerce.sext798, 2048
  %br.cmp3801 = icmp slt i64 %coerce.sext798, 65536
  %br.w3802 = select i1 %br.cmp3801, i64 3, i64 4
  %br.w2803 = select i1 %br.cmp2800, i64 2, i64 %br.w3802
  %br.width804 = select i1 %br.cmp1799, i64 1, i64 %br.w2803
  %b.rn.cur.len805 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 0
  %b.rn.cur.len806 = load i64, ptr %b.rn.cur.len805, align 8
  %b.rn.new.len807 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len806, i64 %br.width804)
  %sum808 = extractvalue { i64, i1 } %b.rn.new.len807, 0
  %ovf809 = extractvalue { i64, i1 } %b.rn.new.len807, 1
  br i1 %ovf809, label %str_overflow_abort811, label %b.rn.new.len810

b.rn.new.len810:                                  ; preds = %str_overflow_abort811, %choice.exit796
  %b.cap812 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 2
  %b.cap813 = load i64, ptr %b.cap812, align 8
  %b.need.grow814 = icmp slt i64 %b.cap813, %sum808
  br i1 %b.need.grow814, label %b.grow2815, label %b.nogrow2816

str_overflow_abort811:                            ; preds = %choice.exit796
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len810

b.grow2815:                                       ; preds = %b.rn.new.len810
  %b.cap2818 = mul i64 %b.cap813, 2
  %b.cap.small819 = icmp slt i64 %b.cap2818, 16
  %b.cap.grow820 = select i1 %b.cap.small819, i64 16, i64 %b.cap2818
  %b.cap.need821 = icmp slt i64 %b.cap.grow820, %sum808
  %b.new.cap822 = select i1 %b.cap.need821, i64 %sum808, i64 %b.cap.grow820
  %b.cur.len2823 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 0
  %b.cur.len2824 = load i64, ptr %b.cur.len2823, align 8
  %b.cur.data2825 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 1
  %b.cur.data2826 = load ptr, ptr %b.cur.data2825, align 8
  %b.new.buf.len2827 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap822, i64 1)
  %sum828 = extractvalue { i64, i1 } %b.new.buf.len2827, 0
  %ovf829 = extractvalue { i64, i1 } %b.new.buf.len2827, 1
  br i1 %ovf829, label %str_overflow_abort831, label %b.new.buf.len2830

b.nogrow2816:                                     ; preds = %b.rn.new.len810
  br label %b.grow_done817

b.grow_done817:                                   ; preds = %b.nogrow2816, %b.new.buf.len2830
  %b.rn.data837 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 1
  %b.rn.data838 = load ptr, ptr %b.rn.data837, align 8
  %b.rn.dst839 = getelementptr i8, ptr %b.rn.data838, i64 %b.rn.cur.len806
  br i1 %br.cmp1799, label %br.b1.40, label %br.c2.40

b.new.buf.len2830:                                ; preds = %str_overflow_abort831, %b.grow2815
  %arena.cur832 = call ptr @dva_arena_current()
  %b.new.buf2833 = call ptr @dva_arena_alloc(ptr %arena.cur832, i64 %sum828)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2833, ptr align 1 %b.cur.data2826, i64 %b.cur.len2824, i1 false)
  %b.grow2.nul834 = getelementptr i8, ptr %b.new.buf2833, i64 %b.cur.len2824
  store i8 0, ptr %b.grow2.nul834, align 1
  %b.new.data2.gep835 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 1
  store ptr %b.new.buf2833, ptr %b.new.data2.gep835, align 8
  %b.new.cap2.gep836 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 2
  store i64 %b.new.cap822, ptr %b.new.cap2.gep836, align 8
  br label %b.grow_done817

str_overflow_abort831:                            ; preds = %b.grow2815
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2830

br.b1.40:                                         ; preds = %b.grow_done817
  %br.b1.0840 = trunc i64 %coerce.sext798 to i8
  store i8 %br.b1.0840, ptr %b.rn.dst839, align 1
  br label %br.done.40

br.c2.40:                                         ; preds = %b.grow_done817
  br i1 %br.cmp2800, label %br.b2.40, label %br.c3.40

br.b2.40:                                         ; preds = %br.c2.40
  %br.sh6841 = lshr i64 %coerce.sext798, 6
  %br.b2.0842 = or i64 %br.sh6841, 192
  %br.b2.0t843 = trunc i64 %br.b2.0842 to i8
  %br.m6844 = and i64 %coerce.sext798, 63
  %br.b2.1845 = or i64 %br.m6844, 128
  %br.b2.1t846 = trunc i64 %br.b2.1845 to i8
  store i8 %br.b2.0t843, ptr %b.rn.dst839, align 1
  %br.dst1847 = getelementptr i8, ptr %b.rn.dst839, i64 1
  store i8 %br.b2.1t846, ptr %br.dst1847, align 1
  br label %br.done.40

br.c3.40:                                         ; preds = %br.c2.40
  br i1 %br.cmp3801, label %br.b3.40, label %br.b4.40

br.b3.40:                                         ; preds = %br.c3.40
  %br.sh12848 = lshr i64 %coerce.sext798, 12
  %br.b3.0849 = or i64 %br.sh12848, 224
  %br.b3.0t850 = trunc i64 %br.b3.0849 to i8
  %br.sh6.3851 = lshr i64 %coerce.sext798, 6
  %br.m6.3852 = and i64 %br.sh6.3851, 63
  %br.b3.1853 = or i64 %br.m6.3852, 128
  %br.b3.1t854 = trunc i64 %br.b3.1853 to i8
  %br.mend855 = and i64 %coerce.sext798, 63
  %br.b3.2856 = or i64 %br.mend855, 128
  %br.b3.2t857 = trunc i64 %br.b3.2856 to i8
  store i8 %br.b3.0t850, ptr %b.rn.dst839, align 1
  %br.dst1.3858 = getelementptr i8, ptr %b.rn.dst839, i64 1
  store i8 %br.b3.1t854, ptr %br.dst1.3858, align 1
  %br.dst2.3859 = getelementptr i8, ptr %b.rn.dst839, i64 2
  store i8 %br.b3.2t857, ptr %br.dst2.3859, align 1
  br label %br.done.40

br.b4.40:                                         ; preds = %br.c3.40
  %br.sh18860 = lshr i64 %coerce.sext798, 18
  %br.b4.0861 = or i64 %br.sh18860, 240
  %br.b4.0t862 = trunc i64 %br.b4.0861 to i8
  %br.sh12.4863 = lshr i64 %coerce.sext798, 12
  %br.m12.4864 = and i64 %br.sh12.4863, 63
  %br.b4.1865 = or i64 %br.m12.4864, 128
  %br.b4.1t866 = trunc i64 %br.b4.1865 to i8
  %br.sh6.4867 = lshr i64 %coerce.sext798, 6
  %br.m6.4868 = and i64 %br.sh6.4867, 63
  %br.b4.2869 = or i64 %br.m6.4868, 128
  %br.b4.2t870 = trunc i64 %br.b4.2869 to i8
  %br.mend4871 = and i64 %coerce.sext798, 63
  %br.b4.3872 = or i64 %br.mend4871, 128
  %br.b4.3t873 = trunc i64 %br.b4.3872 to i8
  store i8 %br.b4.0t862, ptr %b.rn.dst839, align 1
  %br.dst1.4874 = getelementptr i8, ptr %b.rn.dst839, i64 1
  store i8 %br.b4.1t866, ptr %br.dst1.4874, align 1
  %br.dst2.4875 = getelementptr i8, ptr %b.rn.dst839, i64 2
  store i8 %br.b4.2t870, ptr %br.dst2.4875, align 1
  %br.dst3.4876 = getelementptr i8, ptr %b.rn.dst839, i64 3
  store i8 %br.b4.3t873, ptr %br.dst3.4876, align 1
  br label %br.done.40

br.done.40:                                       ; preds = %br.b4.40, %br.b3.40, %br.b2.40, %br.b1.40
  %br.nul877 = getelementptr i8, ptr %b.rn.data838, i64 %sum808
  store i8 0, ptr %br.nul877, align 1
  %b.len.gep878 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load786, i32 0, i32 0
  store i64 %sum808, ptr %b.len.gep878, align 8
  %var.load879 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep880 = getelementptr inbounds <{ i16 }>, ptr %var.load879, i32 0, i32 0
  %bf.load881 = load i16, ptr %fld.gep880, align 2
  %bf.mask882 = and i16 %bf.load881, 1
  %bf.ext883 = zext i16 %bf.mask882 to i64
  %cmptmp884 = icmp ne i64 %bf.ext883, 0
  br i1 %cmptmp884, label %choice.then885, label %choice.else886

choice.then885:                                   ; preds = %br.done.40
  br label %choice.exit887

choice.else886:                                   ; preds = %br.done.40
  br label %choice.exit887

choice.exit887:                                   ; preds = %choice.else886, %choice.then885
  %choice.res888 = phi i32 [ 120, %choice.then885 ], [ 45, %choice.else886 ]
  %b.load889 = load ptr, ptr %var.b, align 8
  %var.load890 = load ptr, ptr %var._fs_perms_wrap, align 8
  %fld.gep891 = getelementptr inbounds <{ i16 }>, ptr %var.load890, i32 0, i32 0
  %bf.load892 = load i16, ptr %fld.gep891, align 2
  %bf.mask893 = and i16 %bf.load892, 1
  %bf.ext894 = zext i16 %bf.mask893 to i64
  %cmptmp895 = icmp ne i64 %bf.ext894, 0
  br i1 %cmptmp895, label %choice.then896, label %choice.else897

choice.then896:                                   ; preds = %choice.exit887
  br label %choice.exit898

choice.else897:                                   ; preds = %choice.exit887
  br label %choice.exit898

choice.exit898:                                   ; preds = %choice.else897, %choice.then896
  %choice.res899 = phi i32 [ 120, %choice.then896 ], [ 45, %choice.else897 ]
  %coerce.sext900 = sext i32 %choice.res899 to i64
  %br.cmp1901 = icmp slt i64 %coerce.sext900, 128
  %br.cmp2902 = icmp slt i64 %coerce.sext900, 2048
  %br.cmp3903 = icmp slt i64 %coerce.sext900, 65536
  %br.w3904 = select i1 %br.cmp3903, i64 3, i64 4
  %br.w2905 = select i1 %br.cmp2902, i64 2, i64 %br.w3904
  %br.width906 = select i1 %br.cmp1901, i64 1, i64 %br.w2905
  %b.rn.cur.len907 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 0
  %b.rn.cur.len908 = load i64, ptr %b.rn.cur.len907, align 8
  %b.rn.new.len909 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len908, i64 %br.width906)
  %sum910 = extractvalue { i64, i1 } %b.rn.new.len909, 0
  %ovf911 = extractvalue { i64, i1 } %b.rn.new.len909, 1
  br i1 %ovf911, label %str_overflow_abort913, label %b.rn.new.len912

b.rn.new.len912:                                  ; preds = %str_overflow_abort913, %choice.exit898
  %b.cap914 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 2
  %b.cap915 = load i64, ptr %b.cap914, align 8
  %b.need.grow916 = icmp slt i64 %b.cap915, %sum910
  br i1 %b.need.grow916, label %b.grow2917, label %b.nogrow2918

str_overflow_abort913:                            ; preds = %choice.exit898
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len912

b.grow2917:                                       ; preds = %b.rn.new.len912
  %b.cap2920 = mul i64 %b.cap915, 2
  %b.cap.small921 = icmp slt i64 %b.cap2920, 16
  %b.cap.grow922 = select i1 %b.cap.small921, i64 16, i64 %b.cap2920
  %b.cap.need923 = icmp slt i64 %b.cap.grow922, %sum910
  %b.new.cap924 = select i1 %b.cap.need923, i64 %sum910, i64 %b.cap.grow922
  %b.cur.len2925 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 0
  %b.cur.len2926 = load i64, ptr %b.cur.len2925, align 8
  %b.cur.data2927 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 1
  %b.cur.data2928 = load ptr, ptr %b.cur.data2927, align 8
  %b.new.buf.len2929 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap924, i64 1)
  %sum930 = extractvalue { i64, i1 } %b.new.buf.len2929, 0
  %ovf931 = extractvalue { i64, i1 } %b.new.buf.len2929, 1
  br i1 %ovf931, label %str_overflow_abort933, label %b.new.buf.len2932

b.nogrow2918:                                     ; preds = %b.rn.new.len912
  br label %b.grow_done919

b.grow_done919:                                   ; preds = %b.nogrow2918, %b.new.buf.len2932
  %b.rn.data939 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 1
  %b.rn.data940 = load ptr, ptr %b.rn.data939, align 8
  %b.rn.dst941 = getelementptr i8, ptr %b.rn.data940, i64 %b.rn.cur.len908
  br i1 %br.cmp1901, label %br.b1.41, label %br.c2.41

b.new.buf.len2932:                                ; preds = %str_overflow_abort933, %b.grow2917
  %arena.cur934 = call ptr @dva_arena_current()
  %b.new.buf2935 = call ptr @dva_arena_alloc(ptr %arena.cur934, i64 %sum930)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2935, ptr align 1 %b.cur.data2928, i64 %b.cur.len2926, i1 false)
  %b.grow2.nul936 = getelementptr i8, ptr %b.new.buf2935, i64 %b.cur.len2926
  store i8 0, ptr %b.grow2.nul936, align 1
  %b.new.data2.gep937 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 1
  store ptr %b.new.buf2935, ptr %b.new.data2.gep937, align 8
  %b.new.cap2.gep938 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 2
  store i64 %b.new.cap924, ptr %b.new.cap2.gep938, align 8
  br label %b.grow_done919

str_overflow_abort933:                            ; preds = %b.grow2917
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2932

br.b1.41:                                         ; preds = %b.grow_done919
  %br.b1.0942 = trunc i64 %coerce.sext900 to i8
  store i8 %br.b1.0942, ptr %b.rn.dst941, align 1
  br label %br.done.41

br.c2.41:                                         ; preds = %b.grow_done919
  br i1 %br.cmp2902, label %br.b2.41, label %br.c3.41

br.b2.41:                                         ; preds = %br.c2.41
  %br.sh6943 = lshr i64 %coerce.sext900, 6
  %br.b2.0944 = or i64 %br.sh6943, 192
  %br.b2.0t945 = trunc i64 %br.b2.0944 to i8
  %br.m6946 = and i64 %coerce.sext900, 63
  %br.b2.1947 = or i64 %br.m6946, 128
  %br.b2.1t948 = trunc i64 %br.b2.1947 to i8
  store i8 %br.b2.0t945, ptr %b.rn.dst941, align 1
  %br.dst1949 = getelementptr i8, ptr %b.rn.dst941, i64 1
  store i8 %br.b2.1t948, ptr %br.dst1949, align 1
  br label %br.done.41

br.c3.41:                                         ; preds = %br.c2.41
  br i1 %br.cmp3903, label %br.b3.41, label %br.b4.41

br.b3.41:                                         ; preds = %br.c3.41
  %br.sh12950 = lshr i64 %coerce.sext900, 12
  %br.b3.0951 = or i64 %br.sh12950, 224
  %br.b3.0t952 = trunc i64 %br.b3.0951 to i8
  %br.sh6.3953 = lshr i64 %coerce.sext900, 6
  %br.m6.3954 = and i64 %br.sh6.3953, 63
  %br.b3.1955 = or i64 %br.m6.3954, 128
  %br.b3.1t956 = trunc i64 %br.b3.1955 to i8
  %br.mend957 = and i64 %coerce.sext900, 63
  %br.b3.2958 = or i64 %br.mend957, 128
  %br.b3.2t959 = trunc i64 %br.b3.2958 to i8
  store i8 %br.b3.0t952, ptr %b.rn.dst941, align 1
  %br.dst1.3960 = getelementptr i8, ptr %b.rn.dst941, i64 1
  store i8 %br.b3.1t956, ptr %br.dst1.3960, align 1
  %br.dst2.3961 = getelementptr i8, ptr %b.rn.dst941, i64 2
  store i8 %br.b3.2t959, ptr %br.dst2.3961, align 1
  br label %br.done.41

br.b4.41:                                         ; preds = %br.c3.41
  %br.sh18962 = lshr i64 %coerce.sext900, 18
  %br.b4.0963 = or i64 %br.sh18962, 240
  %br.b4.0t964 = trunc i64 %br.b4.0963 to i8
  %br.sh12.4965 = lshr i64 %coerce.sext900, 12
  %br.m12.4966 = and i64 %br.sh12.4965, 63
  %br.b4.1967 = or i64 %br.m12.4966, 128
  %br.b4.1t968 = trunc i64 %br.b4.1967 to i8
  %br.sh6.4969 = lshr i64 %coerce.sext900, 6
  %br.m6.4970 = and i64 %br.sh6.4969, 63
  %br.b4.2971 = or i64 %br.m6.4970, 128
  %br.b4.2t972 = trunc i64 %br.b4.2971 to i8
  %br.mend4973 = and i64 %coerce.sext900, 63
  %br.b4.3974 = or i64 %br.mend4973, 128
  %br.b4.3t975 = trunc i64 %br.b4.3974 to i8
  store i8 %br.b4.0t964, ptr %b.rn.dst941, align 1
  %br.dst1.4976 = getelementptr i8, ptr %b.rn.dst941, i64 1
  store i8 %br.b4.1t968, ptr %br.dst1.4976, align 1
  %br.dst2.4977 = getelementptr i8, ptr %b.rn.dst941, i64 2
  store i8 %br.b4.2t972, ptr %br.dst2.4977, align 1
  %br.dst3.4978 = getelementptr i8, ptr %b.rn.dst941, i64 3
  store i8 %br.b4.3t975, ptr %br.dst3.4978, align 1
  br label %br.done.41

br.done.41:                                       ; preds = %br.b4.41, %br.b3.41, %br.b2.41, %br.b1.41
  %br.nul979 = getelementptr i8, ptr %b.rn.data940, i64 %sum910
  store i8 0, ptr %br.nul979, align 1
  %b.len.gep980 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load889, i32 0, i32 0
  store i64 %sum910, ptr %b.len.gep980, align 8
  %var.load981 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load981, i32 0, i32 0
  %b.freeze.len982 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load981, i32 0, i32 1
  %b.freeze.data983 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.41
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data983, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data983, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data983, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur984 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur984, i64 %b.freeze.len982)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data983, i64 %b.freeze.len982, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.41
  %b.freeze.data985 = phi ptr [ %b.freeze.data983, %br.done.41 ], [ %b.freeze.data983, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur986 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur986, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len982, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data985, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load981, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load981, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load981, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"fs::format_time"(i64 %0) #1 {
entry:
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
  ret ptr @str.12.struct

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

b.buf.len2:                                       ; preds = %str_overflow_abort, %choice.exit
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
  br label %b.buf.len2

choice.then13:                                    ; preds = %b.buf.len2
  ret ptr @str.12.struct

choice.exit14:                                    ; preds = %ret.dead15, %b.buf.len2
  %arena.cur16 = call ptr @dva_arena_current()
  %builder.new17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %b.data.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new17, i32 0, i32 1
  %b.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new17, i32 0, i32 0
  %b.cap.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new17, i32 0, i32 2
  %b.buf.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum22 = extractvalue { i64, i1 } %b.buf.len21, 0
  %ovf23 = extractvalue { i64, i1 } %b.buf.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %b.buf.len24

ret.dead15:                                       ; No predecessors!
  br label %choice.exit14

b.buf.len24:                                      ; preds = %str_overflow_abort25, %choice.exit14
  %arena.cur26 = call ptr @dva_arena_current()
  %b.buf27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 %sum22)
  %b.nul028 = getelementptr i8, ptr %b.buf27, i64 0
  store i8 0, ptr %b.nul028, align 1
  store i64 0, ptr %b.len.gep19, align 8
  store ptr %b.buf27, ptr %b.data.gep18, align 8
  store i64 64, ptr %b.cap.gep20, align 8
  store ptr %builder.new17, ptr %var.out_buf, align 8
  %var.load29 = load ptr, ptr %var.out_buf, align 8
  %b.ptr30 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 1
  %b.ptr31 = load ptr, ptr %b.ptr30, align 8
  %addr.ffi.int32 = ptrtoint ptr %b.ptr31 to i64
  %addr.ffi.masked33 = and i64 %addr.ffi.int32, 281474976710655
  %addr.ffi.clean34 = inttoptr i64 %addr.ffi.masked33 to ptr
  %arg.str.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %arg.str.ptr35 = load i64, ptr @str.13.struct, align 8
  %arg.str.ptr36 = and i64 %arg.str.ptr35, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr35, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort25:                             ; preds = %choice.exit14
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len24

str_gen_check:                                    ; preds = %b.buf.len24
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len24
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr, i64 %arg.str.ptr36
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr38, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr38:                                    ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr36, i64 1)
  %sum39 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf40 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %nulcopy.len41

nulmerge:                                         ; preds = %nulcopy.len41, %arg.str.ptr38
  %arg.str.ptr44 = phi ptr [ %arg.str.ptr, %arg.str.ptr38 ], [ %nulcopy.buf, %nulcopy.len41 ]
  %var.load45 = load ptr, ptr %var.tm_buf, align 8
  %b.ptr46 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 1
  %b.ptr47 = load ptr, ptr %b.ptr46, align 8
  %addr.ffi.int48 = ptrtoint ptr %b.ptr47 to i64
  %addr.ffi.masked49 = and i64 %addr.ffi.int48, 281474976710655
  %addr.ffi.clean50 = inttoptr i64 %addr.ffi.masked49 to ptr
  %call.res51 = call i64 @strftime(ptr %addr.ffi.clean34, i64 64, ptr %arg.str.ptr44, ptr %addr.ffi.clean50)
  store i64 %call.res51, ptr %var.len, align 8
  %var.load52 = load i64, ptr %var.len, align 8
  %cmptmp53 = icmp sle i64 %var.load52, 0
  br i1 %cmptmp53, label %choice.then54, label %choice.exit55

nulcopy.len41:                                    ; preds = %str_overflow_abort42, %nulcopy
  %arena.cur43 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 %sum39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr, i64 %arg.str.ptr36, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr36
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort42:                             ; preds = %nulcopy
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len41

choice.then54:                                    ; preds = %nulmerge
  ret ptr @str.12.struct

choice.exit55:                                    ; preds = %ret.dead56, %nulmerge
  %var.load57 = load i64, ptr %var.len, align 8
  %b.load = load ptr, ptr %var.out_buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap58 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load57, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

ret.dead56:                                       ; No predecessors!
  br label %choice.exit55

b.len_big_check:                                  ; preds = %choice.exit55
  %b.len.big = icmp sgt i64 %var.load57, %b.cap58
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load57, ptr %b.len.gep59, align 8
  %var.load60 = load ptr, ptr %var.out_buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 0
  %b.freeze.len61 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 1
  %b.freeze.data62 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit55
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

b.freeze.check:                                   ; preds = %b.len_ok
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data62, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data62, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data62, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur63 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 %b.freeze.len61)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data62, i64 %b.freeze.len61, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data64 = phi ptr [ %b.freeze.data62, %b.len_ok ], [ %b.freeze.data62, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur65 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len61, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data64, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"fs::format_number"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.42 = alloca i64, align 8
  %loop.idx.42 = alloca i64, align 8
  %"var.rem'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %arena.cur = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 32)
  %to_str.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf, i64 32, ptr @dva_fmt_i64, i64 %var.load)
  %to_str.len = zext i32 %to_str.n to i64
  %arena.cur1 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  store ptr %to_str.res, ptr %var.s, align 8
  %var.load2 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %str.tag = lshr i64 %str.len.query3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur5 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur5, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query4, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.len, align 8
  %cmptmp = icmp slt i64 %var.load6, 4
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load7 = load ptr, ptr %var.s, align 8
  ret ptr %var.load7

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %arena.cur8 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len9:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur10 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load11 = load i64, ptr %var.len, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len9

div.not_zero:                                     ; preds = %div.zero_abort, %b.buf.len9
  %div.is.min = icmp eq i64 %var.load11, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %b.buf.len9
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %var.load11, 3
  store i64 %modtmp, ptr %"var.rem'", align 8
  %var.load12 = load i64, ptr %"var.rem'", align 8
  %cmptmp13 = icmp eq i64 %var.load12, 0
  br i1 %cmptmp13, label %choice.then14, label %choice.exit15

div.ovf_abort:                                    ; preds = %div.not_zero
  %4 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

choice.then14:                                    ; preds = %div.ok
  store i64 3, ptr %"var.rem'", align 8
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.then14, %div.ok
  %var.load16 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.header.42:                                   ; preds = %loop.latch.42, %choice.exit15
  %counter.load = load i64, ptr %loop.idx.42, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load16
  br i1 %loop.cond, label %loop.body.42, label %loop.exit.nat.42

loop.body.42:                                     ; preds = %loop.header.42
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.42, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %cmptmp18 = icmp sgt i64 %var.load17, 0
  br i1 %cmptmp18, label %and.43.then, label %and.43.else

loop.exit.nat.42:                                 ; preds = %loop.header.42
  br label %loop.exit.42

loop.latch.42:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.42, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.exit.42:                                     ; preds = %loop.exit.nat.42
  %var.load96 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load96, i32 0, i32 0
  %b.freeze.len97 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load96, i32 0, i32 1
  %b.freeze.data98 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

and.43.then:                                      ; preds = %loop.body.42
  %var.load19 = load i64, ptr %var.i, align 8
  %var.load20 = load i64, ptr %"var.rem'", align 8
  %subtmp = sub i64 %var.load19, %var.load20
  br i1 false, label %div.zero_abort22, label %div.not_zero21

and.43.else:                                      ; preds = %loop.body.42
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %div.ok25
  %and.43.phi = phi i1 [ %cmptmp28, %div.ok25 ], [ %cmptmp18, %and.43.else ]
  br i1 %and.43.phi, label %choice.then29, label %choice.exit30

div.not_zero21:                                   ; preds = %div.zero_abort22, %and.43.then
  %div.is.min23 = icmp eq i64 %subtmp, -9223372036854775808
  %div.is.ovf24 = and i1 %div.is.min23, false
  br i1 %div.is.ovf24, label %div.ovf_abort26, label %div.ok25

div.zero_abort22:                                 ; preds = %and.43.then
  %5 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero21

div.ok25:                                         ; preds = %div.ovf_abort26, %div.not_zero21
  %modtmp27 = srem i64 %subtmp, 3
  %cmptmp28 = icmp eq i64 %modtmp27, 0
  br label %and.43.exit

div.ovf_abort26:                                  ; preds = %div.not_zero21
  %6 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok25

choice.then29:                                    ; preds = %and.43.exit
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len31 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len31, i64 1)
  %sum32 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf33 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf33, label %str_overflow_abort35, label %b.rn.new.len34

choice.exit30:                                    ; preds = %br.done.44, %and.43.exit
  %var.load46 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 0
  %s.read.len47 = load i64, ptr %s.read.len, align 8
  %s.read.len48 = and i64 %s.read.len47, 281474976710655
  %str.tag49 = lshr i64 %s.read.len47, 48
  %str.immortal50 = icmp eq i64 %str.tag49, 0
  br i1 %str.immortal50, label %str_ok52, label %str_gen_check51

b.rn.new.len34:                                   ; preds = %str_overflow_abort35, %choice.then29
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap36 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap36, %sum32
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort35:                             ; preds = %choice.then29
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len34

b.grow2:                                          ; preds = %b.rn.new.len34
  %b.cap2 = mul i64 %b.cap36, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum32
  %b.new.cap = select i1 %b.cap.need, i64 %sum32, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len237 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data238 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum39 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf40 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf40, label %str_overflow_abort42, label %b.new.buf.len241

b.nogrow2:                                        ; preds = %b.rn.new.len34
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len241
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data44 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data44, i64 %b.rn.cur.len31
  br i1 true, label %br.b1.44, label %br.c2.44

b.new.buf.len241:                                 ; preds = %str_overflow_abort42, %b.grow2
  %arena.cur43 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 %sum39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data238, i64 %b.cur.len237, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len237
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort42:                             ; preds = %b.grow2
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len241

br.b1.44:                                         ; preds = %b.grow_done
  store i8 44, ptr %b.rn.dst, align 1
  br label %br.done.44

br.c2.44:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.44, label %br.c3.44

br.b2.44:                                         ; preds = %br.c2.44
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -84, ptr %br.dst1, align 1
  br label %br.done.44

br.c3.44:                                         ; preds = %br.c2.44
  br i1 true, label %br.b3.44, label %br.b4.44

br.b3.44:                                         ; preds = %br.c3.44
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -84, ptr %br.dst2.3, align 1
  br label %br.done.44

br.b4.44:                                         ; preds = %br.c3.44
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -84, ptr %br.dst3.4, align 1
  br label %br.done.44

br.done.44:                                       ; preds = %br.b4.44, %br.b3.44, %br.b2.44, %br.b1.44
  %br.nul = getelementptr i8, ptr %b.rn.data44, i64 %sum32
  store i8 0, ptr %br.nul, align 1
  %b.len.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum32, ptr %b.len.gep45, align 8
  br label %choice.exit30

str_gen_check51:                                  ; preds = %choice.exit30
  %arena.cur54 = call ptr @dva_arena_current()
  %tag.valid55 = call i1 @dva_arena_validate_tag(ptr %arena.cur54, i64 %str.tag49)
  br i1 %tag.valid55, label %str_ok52, label %str_stale53

str_ok52:                                         ; preds = %str_stale53, %str_gen_check51, %choice.exit30
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 1
  %s.read.data56 = load ptr, ptr %s.read.data, align 8
  %var.load57 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load57, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale53:                                      ; preds = %str_gen_check51
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok52

idx_big_check:                                    ; preds = %str_ok52
  %idx.big = icmp sge i64 %var.load57, %s.read.len48
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data56, i64 %var.load57
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load58 = load ptr, ptr %var.b, align 8
  %var.load59 = load ptr, ptr %var.s, align 8
  %s.read.len60 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 0
  %s.read.len61 = load i64, ptr %s.read.len60, align 8
  %s.read.len62 = and i64 %s.read.len61, 281474976710655
  %str.tag63 = lshr i64 %s.read.len61, 48
  %str.immortal64 = icmp eq i64 %str.tag63, 0
  br i1 %str.immortal64, label %str_ok66, label %str_gen_check65

idx_oob:                                          ; preds = %idx_big_check, %str_ok52
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check65:                                  ; preds = %idx_ok
  %arena.cur68 = call ptr @dva_arena_current()
  %tag.valid69 = call i1 @dva_arena_validate_tag(ptr %arena.cur68, i64 %str.tag63)
  br i1 %tag.valid69, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %idx_ok
  %s.read.data70 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 1
  %s.read.data71 = load ptr, ptr %s.read.data70, align 8
  %var.load72 = load i64, ptr %var.i, align 8
  %idx.neg73 = icmp slt i64 %var.load72, 0
  br i1 %idx.neg73, label %idx_oob76, label %idx_big_check74

str_stale67:                                      ; preds = %str_gen_check65
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok66

idx_big_check74:                                  ; preds = %str_ok66
  %idx.big77 = icmp sge i64 %var.load72, %s.read.len62
  br i1 %idx.big77, label %idx_oob76, label %idx_ok75

idx_ok75:                                         ; preds = %idx_oob76, %idx_big_check74
  %s.byte.gep78 = getelementptr i8, ptr %s.read.data71, i64 %var.load72
  %s.byte79 = load i8, ptr %s.byte.gep78, align 1
  %s.byte.val80 = zext i8 %s.byte79 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val80, 0
  %b.b.le255 = icmp sle i64 %s.byte.val80, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob76:                                        ; preds = %idx_big_check74, %str_ok66
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok75

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok75
  %b.byte.i8 = trunc i64 %s.byte.val80 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 0
  %b.len81 = load i64, ptr %b.len, align 8
  %b.cap82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 2
  %b.cap83 = load i64, ptr %b.cap82, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 1
  %b.data84 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len81, %b.cap83
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok75
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap285 = mul i64 %b.cap83, 2
  %b.cap.small86 = icmp slt i64 %b.cap285, 16
  %b.new.cap87 = select i1 %b.cap.small86, i64 16, i64 %b.cap285
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap87, i64 1)
  %sum88 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf89 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf89, label %str_overflow_abort91, label %b.new.buf.len90

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len90
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 1
  %b.cur.data93 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 0
  %b.cur.len94 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data93, i64 %b.cur.len94
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len94, 1
  %b.nul = getelementptr i8, ptr %b.cur.data93, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep95, align 8
  br label %loop.latch.42

b.new.buf.len90:                                  ; preds = %str_overflow_abort91, %b.grow
  %arena.cur92 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 %sum88)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data84, i64 %b.len81, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len81
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load58, i32 0, i32 2
  store i64 %b.new.cap87, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort91:                             ; preds = %b.grow
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len90

b.freeze.check:                                   ; preds = %loop.exit.42
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data98, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data98, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data98, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur99 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 %b.freeze.len97)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data98, i64 %b.freeze.len97, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.42
  %b.freeze.data100 = phi ptr [ %b.freeze.data98, %loop.exit.42 ], [ %b.freeze.data98, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur101 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len97, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data100, ptr %str.build.data.gep103, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load96, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load96, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load96, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"fs::octal_perms"(i64 %0) #1 {
entry:
  %var.o = alloca i64, align 8
  %var.g = alloca i64, align 8
  %var.u = alloca i64, align 8
  %var.s = alloca i64, align 8
  %var._fs_mode_wrap = alloca ptr, align 8
  %var.buf = alloca ptr, align 8
  %var.mode = alloca i64, align 8
  store i64 %0, ptr %var.mode, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 1)
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
  store i64 2, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %b.ptr3 = load ptr, ptr %b.ptr, align 8
  %var.load4 = load i64, ptr %var.mode, align 8
  %coerce.trunc = trunc i64 %var.load4 to i16
  %raw.int = ptrtoint ptr %b.ptr3 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

addr_gen_check:                                   ; preds = %b.buf.len1
  %arena.cur5 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur5, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %b.buf.len1
  store i16 %coerce.trunc, ptr %raw.clean.ptr, align 2
  %var.load6 = load ptr, ptr %var.buf, align 8
  %b.ptr7 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 1
  %b.ptr8 = load ptr, ptr %b.ptr7, align 8
  %raw.int9 = ptrtoint ptr %b.ptr8 to i64
  %raw.clean.int10 = and i64 %raw.int9, 281474976710655
  %raw.clean.ptr11 = inttoptr i64 %raw.clean.int10 to ptr
  %addr.tag12 = lshr i64 %raw.int9, 48
  %addr.immortal13 = icmp eq i64 %addr.tag12, 0
  br i1 %addr.immortal13, label %addr_ok15, label %addr_gen_check14

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check14:                                 ; preds = %addr_ok
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %addr.tag12)
  br i1 %tag.valid18, label %addr_ok15, label %addr_stale16

addr_ok15:                                        ; preds = %addr_stale16, %addr_gen_check14, %addr_ok
  store ptr %raw.clean.ptr11, ptr %var._fs_mode_wrap, align 8
  %var.load19 = load ptr, ptr %var._fs_mode_wrap, align 8
  %fld.gep = getelementptr inbounds <{ i16 }>, ptr %var.load19, i32 0, i32 0
  %bf.load = load i16, ptr %fld.gep, align 2
  %bf.shr = lshr i16 %bf.load, 9
  %bf.mask = and i16 %bf.shr, 7
  %bf.ext = zext i16 %bf.mask to i64
  store i64 %bf.ext, ptr %var.s, align 8
  %var.load20 = load ptr, ptr %var._fs_mode_wrap, align 8
  %fld.gep21 = getelementptr inbounds <{ i16 }>, ptr %var.load20, i32 0, i32 0
  %bf.load22 = load i16, ptr %fld.gep21, align 2
  %bf.shr23 = lshr i16 %bf.load22, 6
  %bf.mask24 = and i16 %bf.shr23, 7
  %bf.ext25 = zext i16 %bf.mask24 to i64
  store i64 %bf.ext25, ptr %var.u, align 8
  %var.load26 = load ptr, ptr %var._fs_mode_wrap, align 8
  %fld.gep27 = getelementptr inbounds <{ i16 }>, ptr %var.load26, i32 0, i32 0
  %bf.load28 = load i16, ptr %fld.gep27, align 2
  %bf.shr29 = lshr i16 %bf.load28, 3
  %bf.mask30 = and i16 %bf.shr29, 7
  %bf.ext31 = zext i16 %bf.mask30 to i64
  store i64 %bf.ext31, ptr %var.g, align 8
  %var.load32 = load ptr, ptr %var._fs_mode_wrap, align 8
  %fld.gep33 = getelementptr inbounds <{ i16 }>, ptr %var.load32, i32 0, i32 0
  %bf.load34 = load i16, ptr %fld.gep33, align 2
  %bf.mask35 = and i16 %bf.load34, 7
  %bf.ext36 = zext i16 %bf.mask35 to i64
  store i64 %bf.ext36, ptr %var.o, align 8
  %var.load37 = load i64, ptr %var.s, align 8
  %cmptmp = icmp sgt i64 %var.load37, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

addr_stale16:                                     ; preds = %addr_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok15

choice.then:                                      ; preds = %addr_ok15
  %var.load38 = load i64, ptr %var.s, align 8
  %arena.cur39 = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 32)
  %to_str.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf, i64 32, ptr @dva_fmt_i64, i64 %var.load38)
  %to_str.len = zext i32 %to_str.n to i64
  %arena.cur40 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  %concat.lhs = load i64, ptr @str.2.struct, align 8
  %concat.lhs41 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %addr_ok15
  %concat.lhs221 = load i64, ptr @str.2.struct, align 8
  %concat.lhs222 = and i64 %concat.lhs221, 281474976710655
  %str.tag223 = lshr i64 %concat.lhs221, 48
  %str.immortal224 = icmp eq i64 %str.tag223, 0
  br i1 %str.immortal224, label %str_ok226, label %str_gen_check225

choice.exit:                                      ; preds = %concat.tot.len402, %concat.tot.len211
  %choice.res = phi ptr [ %concat.str218, %concat.tot.len211 ], [ %concat.str409, %concat.tot.len402 ]
  ret ptr %choice.res

str_gen_check:                                    ; preds = %choice.then
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag)
  br i1 %tag.valid43, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %concat.lhs44 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  %concat.rhs45 = load i64, ptr %concat.rhs, align 8
  %concat.rhs46 = and i64 %concat.rhs45, 281474976710655
  %str.tag47 = lshr i64 %concat.rhs45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check49:                                  ; preds = %str_ok
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %str_ok
  %concat.rhs54 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  %concat.rhs55 = load ptr, ptr %concat.rhs54, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs41, i64 %concat.rhs46)
  %sum56 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf57 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.sum.len58

str_stale51:                                      ; preds = %str_gen_check49
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

concat.sum.len58:                                 ; preds = %str_overflow_abort59, %str_ok50
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum56, i64 1)
  %sum60 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf61 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf61, label %str_overflow_abort63, label %concat.tot.len62

str_overflow_abort59:                             ; preds = %str_ok50
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len58

concat.tot.len62:                                 ; preds = %str_overflow_abort63, %concat.sum.len58
  %arena.cur64 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 %sum60)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs44, i64 %concat.lhs41, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs55, i64 %concat.rhs46, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum56
  store i8 0, ptr %concat.nul, align 1
  %arena.cur65 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  %str.build.len.gep66 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum56, ptr %str.build.len.gep66, align 8
  %str.build.data.gep67 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep67, align 8
  %var.load68 = load i64, ptr %var.u, align 8
  %arena.cur69 = call ptr @dva_arena_current()
  %to_str.buf70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 32)
  %to_str.n71 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf70, i64 32, ptr @dva_fmt_i64, i64 %var.load68)
  %to_str.len72 = zext i32 %to_str.n71 to i64
  %arena.cur73 = call ptr @dva_arena_current()
  %to_str.res74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 16)
  %str.build.len.gep75 = getelementptr inbounds { i64, ptr }, ptr %to_str.res74, i32 0, i32 0
  store i64 %to_str.len72, ptr %str.build.len.gep75, align 8
  %str.build.data.gep76 = getelementptr inbounds { i64, ptr }, ptr %to_str.res74, i32 0, i32 1
  store ptr %to_str.buf70, ptr %str.build.data.gep76, align 8
  %concat.lhs77 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs78 = load i64, ptr %concat.lhs77, align 8
  %concat.lhs79 = and i64 %concat.lhs78, 281474976710655
  %str.tag80 = lshr i64 %concat.lhs78, 48
  %str.immortal81 = icmp eq i64 %str.tag80, 0
  br i1 %str.immortal81, label %str_ok83, label %str_gen_check82

str_overflow_abort63:                             ; preds = %concat.sum.len58
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len62

str_gen_check82:                                  ; preds = %concat.tot.len62
  %arena.cur85 = call ptr @dva_arena_current()
  %tag.valid86 = call i1 @dva_arena_validate_tag(ptr %arena.cur85, i64 %str.tag80)
  br i1 %tag.valid86, label %str_ok83, label %str_stale84

str_ok83:                                         ; preds = %str_stale84, %str_gen_check82, %concat.tot.len62
  %concat.lhs87 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs88 = load ptr, ptr %concat.lhs87, align 8
  %concat.rhs89 = getelementptr inbounds { i64, ptr }, ptr %to_str.res74, i32 0, i32 0
  %concat.rhs90 = load i64, ptr %concat.rhs89, align 8
  %concat.rhs91 = and i64 %concat.rhs90, 281474976710655
  %str.tag92 = lshr i64 %concat.rhs90, 48
  %str.immortal93 = icmp eq i64 %str.tag92, 0
  br i1 %str.immortal93, label %str_ok95, label %str_gen_check94

str_stale84:                                      ; preds = %str_gen_check82
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok83

str_gen_check94:                                  ; preds = %str_ok83
  %arena.cur97 = call ptr @dva_arena_current()
  %tag.valid98 = call i1 @dva_arena_validate_tag(ptr %arena.cur97, i64 %str.tag92)
  br i1 %tag.valid98, label %str_ok95, label %str_stale96

str_ok95:                                         ; preds = %str_stale96, %str_gen_check94, %str_ok83
  %concat.rhs99 = getelementptr inbounds { i64, ptr }, ptr %to_str.res74, i32 0, i32 1
  %concat.rhs100 = load ptr, ptr %concat.rhs99, align 8
  %concat.sum.len101 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs79, i64 %concat.rhs91)
  %sum102 = extractvalue { i64, i1 } %concat.sum.len101, 0
  %ovf103 = extractvalue { i64, i1 } %concat.sum.len101, 1
  br i1 %ovf103, label %str_overflow_abort105, label %concat.sum.len104

str_stale96:                                      ; preds = %str_gen_check94
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok95

concat.sum.len104:                                ; preds = %str_overflow_abort105, %str_ok95
  %concat.tot.len106 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum102, i64 1)
  %sum107 = extractvalue { i64, i1 } %concat.tot.len106, 0
  %ovf108 = extractvalue { i64, i1 } %concat.tot.len106, 1
  br i1 %ovf108, label %str_overflow_abort110, label %concat.tot.len109

str_overflow_abort105:                            ; preds = %str_ok95
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len104

concat.tot.len109:                                ; preds = %str_overflow_abort110, %concat.sum.len104
  %arena.cur111 = call ptr @dva_arena_current()
  %concat.buf112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 %sum107)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf112, ptr align 1 %concat.lhs88, i64 %concat.lhs79, i1 false)
  %concat.mid113 = getelementptr i8, ptr %concat.buf112, i64 %concat.lhs79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid113, ptr align 1 %concat.rhs100, i64 %concat.rhs91, i1 false)
  %concat.nul114 = getelementptr i8, ptr %concat.buf112, i64 %sum102
  store i8 0, ptr %concat.nul114, align 1
  %arena.cur115 = call ptr @dva_arena_current()
  %concat.str116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 16)
  %str.build.len.gep117 = getelementptr inbounds { i64, ptr }, ptr %concat.str116, i32 0, i32 0
  store i64 %sum102, ptr %str.build.len.gep117, align 8
  %str.build.data.gep118 = getelementptr inbounds { i64, ptr }, ptr %concat.str116, i32 0, i32 1
  store ptr %concat.buf112, ptr %str.build.data.gep118, align 8
  %var.load119 = load i64, ptr %var.g, align 8
  %arena.cur120 = call ptr @dva_arena_current()
  %to_str.buf121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 32)
  %to_str.n122 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf121, i64 32, ptr @dva_fmt_i64, i64 %var.load119)
  %to_str.len123 = zext i32 %to_str.n122 to i64
  %arena.cur124 = call ptr @dva_arena_current()
  %to_str.res125 = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 16)
  %str.build.len.gep126 = getelementptr inbounds { i64, ptr }, ptr %to_str.res125, i32 0, i32 0
  store i64 %to_str.len123, ptr %str.build.len.gep126, align 8
  %str.build.data.gep127 = getelementptr inbounds { i64, ptr }, ptr %to_str.res125, i32 0, i32 1
  store ptr %to_str.buf121, ptr %str.build.data.gep127, align 8
  %concat.lhs128 = getelementptr inbounds { i64, ptr }, ptr %concat.str116, i32 0, i32 0
  %concat.lhs129 = load i64, ptr %concat.lhs128, align 8
  %concat.lhs130 = and i64 %concat.lhs129, 281474976710655
  %str.tag131 = lshr i64 %concat.lhs129, 48
  %str.immortal132 = icmp eq i64 %str.tag131, 0
  br i1 %str.immortal132, label %str_ok134, label %str_gen_check133

str_overflow_abort110:                            ; preds = %concat.sum.len104
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len109

str_gen_check133:                                 ; preds = %concat.tot.len109
  %arena.cur136 = call ptr @dva_arena_current()
  %tag.valid137 = call i1 @dva_arena_validate_tag(ptr %arena.cur136, i64 %str.tag131)
  br i1 %tag.valid137, label %str_ok134, label %str_stale135

str_ok134:                                        ; preds = %str_stale135, %str_gen_check133, %concat.tot.len109
  %concat.lhs138 = getelementptr inbounds { i64, ptr }, ptr %concat.str116, i32 0, i32 1
  %concat.lhs139 = load ptr, ptr %concat.lhs138, align 8
  %concat.rhs140 = getelementptr inbounds { i64, ptr }, ptr %to_str.res125, i32 0, i32 0
  %concat.rhs141 = load i64, ptr %concat.rhs140, align 8
  %concat.rhs142 = and i64 %concat.rhs141, 281474976710655
  %str.tag143 = lshr i64 %concat.rhs141, 48
  %str.immortal144 = icmp eq i64 %str.tag143, 0
  br i1 %str.immortal144, label %str_ok146, label %str_gen_check145

str_stale135:                                     ; preds = %str_gen_check133
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok134

str_gen_check145:                                 ; preds = %str_ok134
  %arena.cur148 = call ptr @dva_arena_current()
  %tag.valid149 = call i1 @dva_arena_validate_tag(ptr %arena.cur148, i64 %str.tag143)
  br i1 %tag.valid149, label %str_ok146, label %str_stale147

str_ok146:                                        ; preds = %str_stale147, %str_gen_check145, %str_ok134
  %concat.rhs150 = getelementptr inbounds { i64, ptr }, ptr %to_str.res125, i32 0, i32 1
  %concat.rhs151 = load ptr, ptr %concat.rhs150, align 8
  %concat.sum.len152 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs130, i64 %concat.rhs142)
  %sum153 = extractvalue { i64, i1 } %concat.sum.len152, 0
  %ovf154 = extractvalue { i64, i1 } %concat.sum.len152, 1
  br i1 %ovf154, label %str_overflow_abort156, label %concat.sum.len155

str_stale147:                                     ; preds = %str_gen_check145
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok146

concat.sum.len155:                                ; preds = %str_overflow_abort156, %str_ok146
  %concat.tot.len157 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum153, i64 1)
  %sum158 = extractvalue { i64, i1 } %concat.tot.len157, 0
  %ovf159 = extractvalue { i64, i1 } %concat.tot.len157, 1
  br i1 %ovf159, label %str_overflow_abort161, label %concat.tot.len160

str_overflow_abort156:                            ; preds = %str_ok146
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len155

concat.tot.len160:                                ; preds = %str_overflow_abort161, %concat.sum.len155
  %arena.cur162 = call ptr @dva_arena_current()
  %concat.buf163 = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 %sum158)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf163, ptr align 1 %concat.lhs139, i64 %concat.lhs130, i1 false)
  %concat.mid164 = getelementptr i8, ptr %concat.buf163, i64 %concat.lhs130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid164, ptr align 1 %concat.rhs151, i64 %concat.rhs142, i1 false)
  %concat.nul165 = getelementptr i8, ptr %concat.buf163, i64 %sum153
  store i8 0, ptr %concat.nul165, align 1
  %arena.cur166 = call ptr @dva_arena_current()
  %concat.str167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 16)
  %str.build.len.gep168 = getelementptr inbounds { i64, ptr }, ptr %concat.str167, i32 0, i32 0
  store i64 %sum153, ptr %str.build.len.gep168, align 8
  %str.build.data.gep169 = getelementptr inbounds { i64, ptr }, ptr %concat.str167, i32 0, i32 1
  store ptr %concat.buf163, ptr %str.build.data.gep169, align 8
  %var.load170 = load i64, ptr %var.o, align 8
  %arena.cur171 = call ptr @dva_arena_current()
  %to_str.buf172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 32)
  %to_str.n173 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf172, i64 32, ptr @dva_fmt_i64, i64 %var.load170)
  %to_str.len174 = zext i32 %to_str.n173 to i64
  %arena.cur175 = call ptr @dva_arena_current()
  %to_str.res176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 16)
  %str.build.len.gep177 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 0
  store i64 %to_str.len174, ptr %str.build.len.gep177, align 8
  %str.build.data.gep178 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 1
  store ptr %to_str.buf172, ptr %str.build.data.gep178, align 8
  %concat.lhs179 = getelementptr inbounds { i64, ptr }, ptr %concat.str167, i32 0, i32 0
  %concat.lhs180 = load i64, ptr %concat.lhs179, align 8
  %concat.lhs181 = and i64 %concat.lhs180, 281474976710655
  %str.tag182 = lshr i64 %concat.lhs180, 48
  %str.immortal183 = icmp eq i64 %str.tag182, 0
  br i1 %str.immortal183, label %str_ok185, label %str_gen_check184

str_overflow_abort161:                            ; preds = %concat.sum.len155
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len160

str_gen_check184:                                 ; preds = %concat.tot.len160
  %arena.cur187 = call ptr @dva_arena_current()
  %tag.valid188 = call i1 @dva_arena_validate_tag(ptr %arena.cur187, i64 %str.tag182)
  br i1 %tag.valid188, label %str_ok185, label %str_stale186

str_ok185:                                        ; preds = %str_stale186, %str_gen_check184, %concat.tot.len160
  %concat.lhs189 = getelementptr inbounds { i64, ptr }, ptr %concat.str167, i32 0, i32 1
  %concat.lhs190 = load ptr, ptr %concat.lhs189, align 8
  %concat.rhs191 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 0
  %concat.rhs192 = load i64, ptr %concat.rhs191, align 8
  %concat.rhs193 = and i64 %concat.rhs192, 281474976710655
  %str.tag194 = lshr i64 %concat.rhs192, 48
  %str.immortal195 = icmp eq i64 %str.tag194, 0
  br i1 %str.immortal195, label %str_ok197, label %str_gen_check196

str_stale186:                                     ; preds = %str_gen_check184
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok185

str_gen_check196:                                 ; preds = %str_ok185
  %arena.cur199 = call ptr @dva_arena_current()
  %tag.valid200 = call i1 @dva_arena_validate_tag(ptr %arena.cur199, i64 %str.tag194)
  br i1 %tag.valid200, label %str_ok197, label %str_stale198

str_ok197:                                        ; preds = %str_stale198, %str_gen_check196, %str_ok185
  %concat.rhs201 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 1
  %concat.rhs202 = load ptr, ptr %concat.rhs201, align 8
  %concat.sum.len203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs181, i64 %concat.rhs193)
  %sum204 = extractvalue { i64, i1 } %concat.sum.len203, 0
  %ovf205 = extractvalue { i64, i1 } %concat.sum.len203, 1
  br i1 %ovf205, label %str_overflow_abort207, label %concat.sum.len206

str_stale198:                                     ; preds = %str_gen_check196
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok197

concat.sum.len206:                                ; preds = %str_overflow_abort207, %str_ok197
  %concat.tot.len208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum204, i64 1)
  %sum209 = extractvalue { i64, i1 } %concat.tot.len208, 0
  %ovf210 = extractvalue { i64, i1 } %concat.tot.len208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %concat.tot.len211

str_overflow_abort207:                            ; preds = %str_ok197
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len206

concat.tot.len211:                                ; preds = %str_overflow_abort212, %concat.sum.len206
  %arena.cur213 = call ptr @dva_arena_current()
  %concat.buf214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 %sum209)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf214, ptr align 1 %concat.lhs190, i64 %concat.lhs181, i1 false)
  %concat.mid215 = getelementptr i8, ptr %concat.buf214, i64 %concat.lhs181
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid215, ptr align 1 %concat.rhs202, i64 %concat.rhs193, i1 false)
  %concat.nul216 = getelementptr i8, ptr %concat.buf214, i64 %sum204
  store i8 0, ptr %concat.nul216, align 1
  %arena.cur217 = call ptr @dva_arena_current()
  %concat.str218 = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 16)
  %str.build.len.gep219 = getelementptr inbounds { i64, ptr }, ptr %concat.str218, i32 0, i32 0
  store i64 %sum204, ptr %str.build.len.gep219, align 8
  %str.build.data.gep220 = getelementptr inbounds { i64, ptr }, ptr %concat.str218, i32 0, i32 1
  store ptr %concat.buf214, ptr %str.build.data.gep220, align 8
  br label %choice.exit

str_overflow_abort212:                            ; preds = %concat.sum.len206
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len211

str_gen_check225:                                 ; preds = %choice.else
  %arena.cur228 = call ptr @dva_arena_current()
  %tag.valid229 = call i1 @dva_arena_validate_tag(ptr %arena.cur228, i64 %str.tag223)
  br i1 %tag.valid229, label %str_ok226, label %str_stale227

str_ok226:                                        ; preds = %str_stale227, %str_gen_check225, %choice.else
  %concat.lhs230 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs231 = load i64, ptr @str.14.struct, align 8
  %concat.rhs232 = and i64 %concat.rhs231, 281474976710655
  %str.tag233 = lshr i64 %concat.rhs231, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

str_stale227:                                     ; preds = %str_gen_check225
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok226

str_gen_check235:                                 ; preds = %str_ok226
  %arena.cur238 = call ptr @dva_arena_current()
  %tag.valid239 = call i1 @dva_arena_validate_tag(ptr %arena.cur238, i64 %str.tag233)
  br i1 %tag.valid239, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %str_ok226
  %concat.rhs240 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %concat.sum.len241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs222, i64 %concat.rhs232)
  %sum242 = extractvalue { i64, i1 } %concat.sum.len241, 0
  %ovf243 = extractvalue { i64, i1 } %concat.sum.len241, 1
  br i1 %ovf243, label %str_overflow_abort245, label %concat.sum.len244

str_stale237:                                     ; preds = %str_gen_check235
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

concat.sum.len244:                                ; preds = %str_overflow_abort245, %str_ok236
  %concat.tot.len246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum242, i64 1)
  %sum247 = extractvalue { i64, i1 } %concat.tot.len246, 0
  %ovf248 = extractvalue { i64, i1 } %concat.tot.len246, 1
  br i1 %ovf248, label %str_overflow_abort250, label %concat.tot.len249

str_overflow_abort245:                            ; preds = %str_ok236
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len244

concat.tot.len249:                                ; preds = %str_overflow_abort250, %concat.sum.len244
  %arena.cur251 = call ptr @dva_arena_current()
  %concat.buf252 = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 %sum247)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf252, ptr align 1 %concat.lhs230, i64 %concat.lhs222, i1 false)
  %concat.mid253 = getelementptr i8, ptr %concat.buf252, i64 %concat.lhs222
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid253, ptr align 1 %concat.rhs240, i64 %concat.rhs232, i1 false)
  %concat.nul254 = getelementptr i8, ptr %concat.buf252, i64 %sum242
  store i8 0, ptr %concat.nul254, align 1
  %arena.cur255 = call ptr @dva_arena_current()
  %concat.str256 = call ptr @dva_arena_alloc(ptr %arena.cur255, i64 16)
  %str.build.len.gep257 = getelementptr inbounds { i64, ptr }, ptr %concat.str256, i32 0, i32 0
  store i64 %sum242, ptr %str.build.len.gep257, align 8
  %str.build.data.gep258 = getelementptr inbounds { i64, ptr }, ptr %concat.str256, i32 0, i32 1
  store ptr %concat.buf252, ptr %str.build.data.gep258, align 8
  %var.load259 = load i64, ptr %var.u, align 8
  %arena.cur260 = call ptr @dva_arena_current()
  %to_str.buf261 = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 32)
  %to_str.n262 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf261, i64 32, ptr @dva_fmt_i64, i64 %var.load259)
  %to_str.len263 = zext i32 %to_str.n262 to i64
  %arena.cur264 = call ptr @dva_arena_current()
  %to_str.res265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 16)
  %str.build.len.gep266 = getelementptr inbounds { i64, ptr }, ptr %to_str.res265, i32 0, i32 0
  store i64 %to_str.len263, ptr %str.build.len.gep266, align 8
  %str.build.data.gep267 = getelementptr inbounds { i64, ptr }, ptr %to_str.res265, i32 0, i32 1
  store ptr %to_str.buf261, ptr %str.build.data.gep267, align 8
  %concat.lhs268 = getelementptr inbounds { i64, ptr }, ptr %concat.str256, i32 0, i32 0
  %concat.lhs269 = load i64, ptr %concat.lhs268, align 8
  %concat.lhs270 = and i64 %concat.lhs269, 281474976710655
  %str.tag271 = lshr i64 %concat.lhs269, 48
  %str.immortal272 = icmp eq i64 %str.tag271, 0
  br i1 %str.immortal272, label %str_ok274, label %str_gen_check273

str_overflow_abort250:                            ; preds = %concat.sum.len244
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len249

str_gen_check273:                                 ; preds = %concat.tot.len249
  %arena.cur276 = call ptr @dva_arena_current()
  %tag.valid277 = call i1 @dva_arena_validate_tag(ptr %arena.cur276, i64 %str.tag271)
  br i1 %tag.valid277, label %str_ok274, label %str_stale275

str_ok274:                                        ; preds = %str_stale275, %str_gen_check273, %concat.tot.len249
  %concat.lhs278 = getelementptr inbounds { i64, ptr }, ptr %concat.str256, i32 0, i32 1
  %concat.lhs279 = load ptr, ptr %concat.lhs278, align 8
  %concat.rhs280 = getelementptr inbounds { i64, ptr }, ptr %to_str.res265, i32 0, i32 0
  %concat.rhs281 = load i64, ptr %concat.rhs280, align 8
  %concat.rhs282 = and i64 %concat.rhs281, 281474976710655
  %str.tag283 = lshr i64 %concat.rhs281, 48
  %str.immortal284 = icmp eq i64 %str.tag283, 0
  br i1 %str.immortal284, label %str_ok286, label %str_gen_check285

str_stale275:                                     ; preds = %str_gen_check273
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok274

str_gen_check285:                                 ; preds = %str_ok274
  %arena.cur288 = call ptr @dva_arena_current()
  %tag.valid289 = call i1 @dva_arena_validate_tag(ptr %arena.cur288, i64 %str.tag283)
  br i1 %tag.valid289, label %str_ok286, label %str_stale287

str_ok286:                                        ; preds = %str_stale287, %str_gen_check285, %str_ok274
  %concat.rhs290 = getelementptr inbounds { i64, ptr }, ptr %to_str.res265, i32 0, i32 1
  %concat.rhs291 = load ptr, ptr %concat.rhs290, align 8
  %concat.sum.len292 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs270, i64 %concat.rhs282)
  %sum293 = extractvalue { i64, i1 } %concat.sum.len292, 0
  %ovf294 = extractvalue { i64, i1 } %concat.sum.len292, 1
  br i1 %ovf294, label %str_overflow_abort296, label %concat.sum.len295

str_stale287:                                     ; preds = %str_gen_check285
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok286

concat.sum.len295:                                ; preds = %str_overflow_abort296, %str_ok286
  %concat.tot.len297 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum293, i64 1)
  %sum298 = extractvalue { i64, i1 } %concat.tot.len297, 0
  %ovf299 = extractvalue { i64, i1 } %concat.tot.len297, 1
  br i1 %ovf299, label %str_overflow_abort301, label %concat.tot.len300

str_overflow_abort296:                            ; preds = %str_ok286
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len295

concat.tot.len300:                                ; preds = %str_overflow_abort301, %concat.sum.len295
  %arena.cur302 = call ptr @dva_arena_current()
  %concat.buf303 = call ptr @dva_arena_alloc(ptr %arena.cur302, i64 %sum298)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf303, ptr align 1 %concat.lhs279, i64 %concat.lhs270, i1 false)
  %concat.mid304 = getelementptr i8, ptr %concat.buf303, i64 %concat.lhs270
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid304, ptr align 1 %concat.rhs291, i64 %concat.rhs282, i1 false)
  %concat.nul305 = getelementptr i8, ptr %concat.buf303, i64 %sum293
  store i8 0, ptr %concat.nul305, align 1
  %arena.cur306 = call ptr @dva_arena_current()
  %concat.str307 = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 16)
  %str.build.len.gep308 = getelementptr inbounds { i64, ptr }, ptr %concat.str307, i32 0, i32 0
  store i64 %sum293, ptr %str.build.len.gep308, align 8
  %str.build.data.gep309 = getelementptr inbounds { i64, ptr }, ptr %concat.str307, i32 0, i32 1
  store ptr %concat.buf303, ptr %str.build.data.gep309, align 8
  %var.load310 = load i64, ptr %var.g, align 8
  %arena.cur311 = call ptr @dva_arena_current()
  %to_str.buf312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 32)
  %to_str.n313 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf312, i64 32, ptr @dva_fmt_i64, i64 %var.load310)
  %to_str.len314 = zext i32 %to_str.n313 to i64
  %arena.cur315 = call ptr @dva_arena_current()
  %to_str.res316 = call ptr @dva_arena_alloc(ptr %arena.cur315, i64 16)
  %str.build.len.gep317 = getelementptr inbounds { i64, ptr }, ptr %to_str.res316, i32 0, i32 0
  store i64 %to_str.len314, ptr %str.build.len.gep317, align 8
  %str.build.data.gep318 = getelementptr inbounds { i64, ptr }, ptr %to_str.res316, i32 0, i32 1
  store ptr %to_str.buf312, ptr %str.build.data.gep318, align 8
  %concat.lhs319 = getelementptr inbounds { i64, ptr }, ptr %concat.str307, i32 0, i32 0
  %concat.lhs320 = load i64, ptr %concat.lhs319, align 8
  %concat.lhs321 = and i64 %concat.lhs320, 281474976710655
  %str.tag322 = lshr i64 %concat.lhs320, 48
  %str.immortal323 = icmp eq i64 %str.tag322, 0
  br i1 %str.immortal323, label %str_ok325, label %str_gen_check324

str_overflow_abort301:                            ; preds = %concat.sum.len295
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len300

str_gen_check324:                                 ; preds = %concat.tot.len300
  %arena.cur327 = call ptr @dva_arena_current()
  %tag.valid328 = call i1 @dva_arena_validate_tag(ptr %arena.cur327, i64 %str.tag322)
  br i1 %tag.valid328, label %str_ok325, label %str_stale326

str_ok325:                                        ; preds = %str_stale326, %str_gen_check324, %concat.tot.len300
  %concat.lhs329 = getelementptr inbounds { i64, ptr }, ptr %concat.str307, i32 0, i32 1
  %concat.lhs330 = load ptr, ptr %concat.lhs329, align 8
  %concat.rhs331 = getelementptr inbounds { i64, ptr }, ptr %to_str.res316, i32 0, i32 0
  %concat.rhs332 = load i64, ptr %concat.rhs331, align 8
  %concat.rhs333 = and i64 %concat.rhs332, 281474976710655
  %str.tag334 = lshr i64 %concat.rhs332, 48
  %str.immortal335 = icmp eq i64 %str.tag334, 0
  br i1 %str.immortal335, label %str_ok337, label %str_gen_check336

str_stale326:                                     ; preds = %str_gen_check324
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok325

str_gen_check336:                                 ; preds = %str_ok325
  %arena.cur339 = call ptr @dva_arena_current()
  %tag.valid340 = call i1 @dva_arena_validate_tag(ptr %arena.cur339, i64 %str.tag334)
  br i1 %tag.valid340, label %str_ok337, label %str_stale338

str_ok337:                                        ; preds = %str_stale338, %str_gen_check336, %str_ok325
  %concat.rhs341 = getelementptr inbounds { i64, ptr }, ptr %to_str.res316, i32 0, i32 1
  %concat.rhs342 = load ptr, ptr %concat.rhs341, align 8
  %concat.sum.len343 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs321, i64 %concat.rhs333)
  %sum344 = extractvalue { i64, i1 } %concat.sum.len343, 0
  %ovf345 = extractvalue { i64, i1 } %concat.sum.len343, 1
  br i1 %ovf345, label %str_overflow_abort347, label %concat.sum.len346

str_stale338:                                     ; preds = %str_gen_check336
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok337

concat.sum.len346:                                ; preds = %str_overflow_abort347, %str_ok337
  %concat.tot.len348 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum344, i64 1)
  %sum349 = extractvalue { i64, i1 } %concat.tot.len348, 0
  %ovf350 = extractvalue { i64, i1 } %concat.tot.len348, 1
  br i1 %ovf350, label %str_overflow_abort352, label %concat.tot.len351

str_overflow_abort347:                            ; preds = %str_ok337
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len346

concat.tot.len351:                                ; preds = %str_overflow_abort352, %concat.sum.len346
  %arena.cur353 = call ptr @dva_arena_current()
  %concat.buf354 = call ptr @dva_arena_alloc(ptr %arena.cur353, i64 %sum349)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf354, ptr align 1 %concat.lhs330, i64 %concat.lhs321, i1 false)
  %concat.mid355 = getelementptr i8, ptr %concat.buf354, i64 %concat.lhs321
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid355, ptr align 1 %concat.rhs342, i64 %concat.rhs333, i1 false)
  %concat.nul356 = getelementptr i8, ptr %concat.buf354, i64 %sum344
  store i8 0, ptr %concat.nul356, align 1
  %arena.cur357 = call ptr @dva_arena_current()
  %concat.str358 = call ptr @dva_arena_alloc(ptr %arena.cur357, i64 16)
  %str.build.len.gep359 = getelementptr inbounds { i64, ptr }, ptr %concat.str358, i32 0, i32 0
  store i64 %sum344, ptr %str.build.len.gep359, align 8
  %str.build.data.gep360 = getelementptr inbounds { i64, ptr }, ptr %concat.str358, i32 0, i32 1
  store ptr %concat.buf354, ptr %str.build.data.gep360, align 8
  %var.load361 = load i64, ptr %var.o, align 8
  %arena.cur362 = call ptr @dva_arena_current()
  %to_str.buf363 = call ptr @dva_arena_alloc(ptr %arena.cur362, i64 32)
  %to_str.n364 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf363, i64 32, ptr @dva_fmt_i64, i64 %var.load361)
  %to_str.len365 = zext i32 %to_str.n364 to i64
  %arena.cur366 = call ptr @dva_arena_current()
  %to_str.res367 = call ptr @dva_arena_alloc(ptr %arena.cur366, i64 16)
  %str.build.len.gep368 = getelementptr inbounds { i64, ptr }, ptr %to_str.res367, i32 0, i32 0
  store i64 %to_str.len365, ptr %str.build.len.gep368, align 8
  %str.build.data.gep369 = getelementptr inbounds { i64, ptr }, ptr %to_str.res367, i32 0, i32 1
  store ptr %to_str.buf363, ptr %str.build.data.gep369, align 8
  %concat.lhs370 = getelementptr inbounds { i64, ptr }, ptr %concat.str358, i32 0, i32 0
  %concat.lhs371 = load i64, ptr %concat.lhs370, align 8
  %concat.lhs372 = and i64 %concat.lhs371, 281474976710655
  %str.tag373 = lshr i64 %concat.lhs371, 48
  %str.immortal374 = icmp eq i64 %str.tag373, 0
  br i1 %str.immortal374, label %str_ok376, label %str_gen_check375

str_overflow_abort352:                            ; preds = %concat.sum.len346
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len351

str_gen_check375:                                 ; preds = %concat.tot.len351
  %arena.cur378 = call ptr @dva_arena_current()
  %tag.valid379 = call i1 @dva_arena_validate_tag(ptr %arena.cur378, i64 %str.tag373)
  br i1 %tag.valid379, label %str_ok376, label %str_stale377

str_ok376:                                        ; preds = %str_stale377, %str_gen_check375, %concat.tot.len351
  %concat.lhs380 = getelementptr inbounds { i64, ptr }, ptr %concat.str358, i32 0, i32 1
  %concat.lhs381 = load ptr, ptr %concat.lhs380, align 8
  %concat.rhs382 = getelementptr inbounds { i64, ptr }, ptr %to_str.res367, i32 0, i32 0
  %concat.rhs383 = load i64, ptr %concat.rhs382, align 8
  %concat.rhs384 = and i64 %concat.rhs383, 281474976710655
  %str.tag385 = lshr i64 %concat.rhs383, 48
  %str.immortal386 = icmp eq i64 %str.tag385, 0
  br i1 %str.immortal386, label %str_ok388, label %str_gen_check387

str_stale377:                                     ; preds = %str_gen_check375
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok376

str_gen_check387:                                 ; preds = %str_ok376
  %arena.cur390 = call ptr @dva_arena_current()
  %tag.valid391 = call i1 @dva_arena_validate_tag(ptr %arena.cur390, i64 %str.tag385)
  br i1 %tag.valid391, label %str_ok388, label %str_stale389

str_ok388:                                        ; preds = %str_stale389, %str_gen_check387, %str_ok376
  %concat.rhs392 = getelementptr inbounds { i64, ptr }, ptr %to_str.res367, i32 0, i32 1
  %concat.rhs393 = load ptr, ptr %concat.rhs392, align 8
  %concat.sum.len394 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs372, i64 %concat.rhs384)
  %sum395 = extractvalue { i64, i1 } %concat.sum.len394, 0
  %ovf396 = extractvalue { i64, i1 } %concat.sum.len394, 1
  br i1 %ovf396, label %str_overflow_abort398, label %concat.sum.len397

str_stale389:                                     ; preds = %str_gen_check387
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok388

concat.sum.len397:                                ; preds = %str_overflow_abort398, %str_ok388
  %concat.tot.len399 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum395, i64 1)
  %sum400 = extractvalue { i64, i1 } %concat.tot.len399, 0
  %ovf401 = extractvalue { i64, i1 } %concat.tot.len399, 1
  br i1 %ovf401, label %str_overflow_abort403, label %concat.tot.len402

str_overflow_abort398:                            ; preds = %str_ok388
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len397

concat.tot.len402:                                ; preds = %str_overflow_abort403, %concat.sum.len397
  %arena.cur404 = call ptr @dva_arena_current()
  %concat.buf405 = call ptr @dva_arena_alloc(ptr %arena.cur404, i64 %sum400)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf405, ptr align 1 %concat.lhs381, i64 %concat.lhs372, i1 false)
  %concat.mid406 = getelementptr i8, ptr %concat.buf405, i64 %concat.lhs372
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid406, ptr align 1 %concat.rhs393, i64 %concat.rhs384, i1 false)
  %concat.nul407 = getelementptr i8, ptr %concat.buf405, i64 %sum395
  store i8 0, ptr %concat.nul407, align 1
  %arena.cur408 = call ptr @dva_arena_current()
  %concat.str409 = call ptr @dva_arena_alloc(ptr %arena.cur408, i64 16)
  %str.build.len.gep410 = getelementptr inbounds { i64, ptr }, ptr %concat.str409, i32 0, i32 0
  store i64 %sum395, ptr %str.build.len.gep410, align 8
  %str.build.data.gep411 = getelementptr inbounds { i64, ptr }, ptr %concat.str409, i32 0, i32 1
  store ptr %concat.buf405, ptr %str.build.data.gep411, align 8
  br label %choice.exit

str_overflow_abort403:                            ; preds = %concat.sum.len397
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len402
}

define ptr @"fs::octal_perms_str"(ptr %0) #1 {
entry:
  %var.o = alloca i64, align 8
  %var.g = alloca i64, align 8
  %var.u = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.perms = alloca ptr, align 8
  store ptr %0, ptr %var.perms, align 8
  %var.load = load ptr, ptr %var.perms, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp slt i64 %var.load3, 10
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret ptr @str.15.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.perms, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check9:                                   ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 1, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 1
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp15 = icmp eq i64 %s.byte.val, 114
  br i1 %cmptmp15, label %choice.then16, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then16:                                    ; preds = %idx_ok
  br label %choice.exit17

choice.else:                                      ; preds = %idx_ok
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else, %choice.then16
  %choice.res = phi i64 [ 4, %choice.then16 ], [ 0, %choice.else ]
  %var.load18 = load ptr, ptr %var.perms, align 8
  %s.read.len19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len19, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %str.tag22 = lshr i64 %s.read.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

str_gen_check24:                                  ; preds = %choice.exit17
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %choice.exit17
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  br i1 false, label %idx_oob33, label %idx_big_check31

str_stale26:                                      ; preds = %str_gen_check24
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

idx_big_check31:                                  ; preds = %str_ok25
  %idx.big34 = icmp sge i64 2, %s.read.len21
  br i1 %idx.big34, label %idx_oob33, label %idx_ok32

idx_ok32:                                         ; preds = %idx_oob33, %idx_big_check31
  %s.byte.gep35 = getelementptr i8, ptr %s.read.data30, i64 2
  %s.byte36 = load i8, ptr %s.byte.gep35, align 1
  %s.byte.val37 = zext i8 %s.byte36 to i64
  %cmptmp38 = icmp eq i64 %s.byte.val37, 119
  br i1 %cmptmp38, label %choice.then39, label %choice.else40

idx_oob33:                                        ; preds = %idx_big_check31, %str_ok25
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok32

choice.then39:                                    ; preds = %idx_ok32
  br label %choice.exit41

choice.else40:                                    ; preds = %idx_ok32
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %choice.then39
  %choice.res42 = phi i64 [ 2, %choice.then39 ], [ 0, %choice.else40 ]
  %addtmp = add i64 %choice.res, %choice.res42
  %var.load43 = load ptr, ptr %var.perms, align 8
  %s.read.len44 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %s.read.len45 = load i64, ptr %s.read.len44, align 8
  %s.read.len46 = and i64 %s.read.len45, 281474976710655
  %str.tag47 = lshr i64 %s.read.len45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

str_gen_check49:                                  ; preds = %choice.exit41
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %choice.exit41
  %s.read.data54 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %s.read.data55 = load ptr, ptr %s.read.data54, align 8
  br i1 false, label %idx_oob58, label %idx_big_check56

str_stale51:                                      ; preds = %str_gen_check49
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

idx_big_check56:                                  ; preds = %str_ok50
  %idx.big59 = icmp sge i64 3, %s.read.len46
  br i1 %idx.big59, label %idx_oob58, label %idx_ok57

idx_ok57:                                         ; preds = %idx_oob58, %idx_big_check56
  %s.byte.gep60 = getelementptr i8, ptr %s.read.data55, i64 3
  %s.byte61 = load i8, ptr %s.byte.gep60, align 1
  %s.byte.val62 = zext i8 %s.byte61 to i64
  %cmptmp63 = icmp eq i64 %s.byte.val62, 120
  br i1 %cmptmp63, label %choice.then64, label %choice.else65

idx_oob58:                                        ; preds = %idx_big_check56, %str_ok50
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok57

choice.then64:                                    ; preds = %idx_ok57
  br label %choice.exit66

choice.else65:                                    ; preds = %idx_ok57
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else65, %choice.then64
  %choice.res67 = phi i64 [ 1, %choice.then64 ], [ 0, %choice.else65 ]
  %addtmp68 = add i64 %addtmp, %choice.res67
  store i64 %addtmp68, ptr %var.u, align 8
  %var.load69 = load ptr, ptr %var.perms, align 8
  %s.read.len70 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 0
  %s.read.len71 = load i64, ptr %s.read.len70, align 8
  %s.read.len72 = and i64 %s.read.len71, 281474976710655
  %str.tag73 = lshr i64 %s.read.len71, 48
  %str.immortal74 = icmp eq i64 %str.tag73, 0
  br i1 %str.immortal74, label %str_ok76, label %str_gen_check75

str_gen_check75:                                  ; preds = %choice.exit66
  %arena.cur78 = call ptr @dva_arena_current()
  %tag.valid79 = call i1 @dva_arena_validate_tag(ptr %arena.cur78, i64 %str.tag73)
  br i1 %tag.valid79, label %str_ok76, label %str_stale77

str_ok76:                                         ; preds = %str_stale77, %str_gen_check75, %choice.exit66
  %s.read.data80 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 1
  %s.read.data81 = load ptr, ptr %s.read.data80, align 8
  br i1 false, label %idx_oob84, label %idx_big_check82

str_stale77:                                      ; preds = %str_gen_check75
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok76

idx_big_check82:                                  ; preds = %str_ok76
  %idx.big85 = icmp sge i64 4, %s.read.len72
  br i1 %idx.big85, label %idx_oob84, label %idx_ok83

idx_ok83:                                         ; preds = %idx_oob84, %idx_big_check82
  %s.byte.gep86 = getelementptr i8, ptr %s.read.data81, i64 4
  %s.byte87 = load i8, ptr %s.byte.gep86, align 1
  %s.byte.val88 = zext i8 %s.byte87 to i64
  %cmptmp89 = icmp eq i64 %s.byte.val88, 114
  br i1 %cmptmp89, label %choice.then90, label %choice.else91

idx_oob84:                                        ; preds = %idx_big_check82, %str_ok76
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok83

choice.then90:                                    ; preds = %idx_ok83
  br label %choice.exit92

choice.else91:                                    ; preds = %idx_ok83
  br label %choice.exit92

choice.exit92:                                    ; preds = %choice.else91, %choice.then90
  %choice.res93 = phi i64 [ 4, %choice.then90 ], [ 0, %choice.else91 ]
  %var.load94 = load ptr, ptr %var.perms, align 8
  %s.read.len95 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 0
  %s.read.len96 = load i64, ptr %s.read.len95, align 8
  %s.read.len97 = and i64 %s.read.len96, 281474976710655
  %str.tag98 = lshr i64 %s.read.len96, 48
  %str.immortal99 = icmp eq i64 %str.tag98, 0
  br i1 %str.immortal99, label %str_ok101, label %str_gen_check100

str_gen_check100:                                 ; preds = %choice.exit92
  %arena.cur103 = call ptr @dva_arena_current()
  %tag.valid104 = call i1 @dva_arena_validate_tag(ptr %arena.cur103, i64 %str.tag98)
  br i1 %tag.valid104, label %str_ok101, label %str_stale102

str_ok101:                                        ; preds = %str_stale102, %str_gen_check100, %choice.exit92
  %s.read.data105 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 1
  %s.read.data106 = load ptr, ptr %s.read.data105, align 8
  br i1 false, label %idx_oob109, label %idx_big_check107

str_stale102:                                     ; preds = %str_gen_check100
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok101

idx_big_check107:                                 ; preds = %str_ok101
  %idx.big110 = icmp sge i64 5, %s.read.len97
  br i1 %idx.big110, label %idx_oob109, label %idx_ok108

idx_ok108:                                        ; preds = %idx_oob109, %idx_big_check107
  %s.byte.gep111 = getelementptr i8, ptr %s.read.data106, i64 5
  %s.byte112 = load i8, ptr %s.byte.gep111, align 1
  %s.byte.val113 = zext i8 %s.byte112 to i64
  %cmptmp114 = icmp eq i64 %s.byte.val113, 119
  br i1 %cmptmp114, label %choice.then115, label %choice.else116

idx_oob109:                                       ; preds = %idx_big_check107, %str_ok101
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok108

choice.then115:                                   ; preds = %idx_ok108
  br label %choice.exit117

choice.else116:                                   ; preds = %idx_ok108
  br label %choice.exit117

choice.exit117:                                   ; preds = %choice.else116, %choice.then115
  %choice.res118 = phi i64 [ 2, %choice.then115 ], [ 0, %choice.else116 ]
  %addtmp119 = add i64 %choice.res93, %choice.res118
  %var.load120 = load ptr, ptr %var.perms, align 8
  %s.read.len121 = getelementptr inbounds { i64, ptr }, ptr %var.load120, i32 0, i32 0
  %s.read.len122 = load i64, ptr %s.read.len121, align 8
  %s.read.len123 = and i64 %s.read.len122, 281474976710655
  %str.tag124 = lshr i64 %s.read.len122, 48
  %str.immortal125 = icmp eq i64 %str.tag124, 0
  br i1 %str.immortal125, label %str_ok127, label %str_gen_check126

str_gen_check126:                                 ; preds = %choice.exit117
  %arena.cur129 = call ptr @dva_arena_current()
  %tag.valid130 = call i1 @dva_arena_validate_tag(ptr %arena.cur129, i64 %str.tag124)
  br i1 %tag.valid130, label %str_ok127, label %str_stale128

str_ok127:                                        ; preds = %str_stale128, %str_gen_check126, %choice.exit117
  %s.read.data131 = getelementptr inbounds { i64, ptr }, ptr %var.load120, i32 0, i32 1
  %s.read.data132 = load ptr, ptr %s.read.data131, align 8
  br i1 false, label %idx_oob135, label %idx_big_check133

str_stale128:                                     ; preds = %str_gen_check126
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok127

idx_big_check133:                                 ; preds = %str_ok127
  %idx.big136 = icmp sge i64 6, %s.read.len123
  br i1 %idx.big136, label %idx_oob135, label %idx_ok134

idx_ok134:                                        ; preds = %idx_oob135, %idx_big_check133
  %s.byte.gep137 = getelementptr i8, ptr %s.read.data132, i64 6
  %s.byte138 = load i8, ptr %s.byte.gep137, align 1
  %s.byte.val139 = zext i8 %s.byte138 to i64
  %cmptmp140 = icmp eq i64 %s.byte.val139, 120
  br i1 %cmptmp140, label %choice.then141, label %choice.else142

idx_oob135:                                       ; preds = %idx_big_check133, %str_ok127
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok134

choice.then141:                                   ; preds = %idx_ok134
  br label %choice.exit143

choice.else142:                                   ; preds = %idx_ok134
  br label %choice.exit143

choice.exit143:                                   ; preds = %choice.else142, %choice.then141
  %choice.res144 = phi i64 [ 1, %choice.then141 ], [ 0, %choice.else142 ]
  %addtmp145 = add i64 %addtmp119, %choice.res144
  store i64 %addtmp145, ptr %var.g, align 8
  %var.load146 = load ptr, ptr %var.perms, align 8
  %s.read.len147 = getelementptr inbounds { i64, ptr }, ptr %var.load146, i32 0, i32 0
  %s.read.len148 = load i64, ptr %s.read.len147, align 8
  %s.read.len149 = and i64 %s.read.len148, 281474976710655
  %str.tag150 = lshr i64 %s.read.len148, 48
  %str.immortal151 = icmp eq i64 %str.tag150, 0
  br i1 %str.immortal151, label %str_ok153, label %str_gen_check152

str_gen_check152:                                 ; preds = %choice.exit143
  %arena.cur155 = call ptr @dva_arena_current()
  %tag.valid156 = call i1 @dva_arena_validate_tag(ptr %arena.cur155, i64 %str.tag150)
  br i1 %tag.valid156, label %str_ok153, label %str_stale154

str_ok153:                                        ; preds = %str_stale154, %str_gen_check152, %choice.exit143
  %s.read.data157 = getelementptr inbounds { i64, ptr }, ptr %var.load146, i32 0, i32 1
  %s.read.data158 = load ptr, ptr %s.read.data157, align 8
  br i1 false, label %idx_oob161, label %idx_big_check159

str_stale154:                                     ; preds = %str_gen_check152
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok153

idx_big_check159:                                 ; preds = %str_ok153
  %idx.big162 = icmp sge i64 7, %s.read.len149
  br i1 %idx.big162, label %idx_oob161, label %idx_ok160

idx_ok160:                                        ; preds = %idx_oob161, %idx_big_check159
  %s.byte.gep163 = getelementptr i8, ptr %s.read.data158, i64 7
  %s.byte164 = load i8, ptr %s.byte.gep163, align 1
  %s.byte.val165 = zext i8 %s.byte164 to i64
  %cmptmp166 = icmp eq i64 %s.byte.val165, 114
  br i1 %cmptmp166, label %choice.then167, label %choice.else168

idx_oob161:                                       ; preds = %idx_big_check159, %str_ok153
  %15 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok160

choice.then167:                                   ; preds = %idx_ok160
  br label %choice.exit169

choice.else168:                                   ; preds = %idx_ok160
  br label %choice.exit169

choice.exit169:                                   ; preds = %choice.else168, %choice.then167
  %choice.res170 = phi i64 [ 4, %choice.then167 ], [ 0, %choice.else168 ]
  %var.load171 = load ptr, ptr %var.perms, align 8
  %s.read.len172 = getelementptr inbounds { i64, ptr }, ptr %var.load171, i32 0, i32 0
  %s.read.len173 = load i64, ptr %s.read.len172, align 8
  %s.read.len174 = and i64 %s.read.len173, 281474976710655
  %str.tag175 = lshr i64 %s.read.len173, 48
  %str.immortal176 = icmp eq i64 %str.tag175, 0
  br i1 %str.immortal176, label %str_ok178, label %str_gen_check177

str_gen_check177:                                 ; preds = %choice.exit169
  %arena.cur180 = call ptr @dva_arena_current()
  %tag.valid181 = call i1 @dva_arena_validate_tag(ptr %arena.cur180, i64 %str.tag175)
  br i1 %tag.valid181, label %str_ok178, label %str_stale179

str_ok178:                                        ; preds = %str_stale179, %str_gen_check177, %choice.exit169
  %s.read.data182 = getelementptr inbounds { i64, ptr }, ptr %var.load171, i32 0, i32 1
  %s.read.data183 = load ptr, ptr %s.read.data182, align 8
  br i1 false, label %idx_oob186, label %idx_big_check184

str_stale179:                                     ; preds = %str_gen_check177
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok178

idx_big_check184:                                 ; preds = %str_ok178
  %idx.big187 = icmp sge i64 8, %s.read.len174
  br i1 %idx.big187, label %idx_oob186, label %idx_ok185

idx_ok185:                                        ; preds = %idx_oob186, %idx_big_check184
  %s.byte.gep188 = getelementptr i8, ptr %s.read.data183, i64 8
  %s.byte189 = load i8, ptr %s.byte.gep188, align 1
  %s.byte.val190 = zext i8 %s.byte189 to i64
  %cmptmp191 = icmp eq i64 %s.byte.val190, 119
  br i1 %cmptmp191, label %choice.then192, label %choice.else193

idx_oob186:                                       ; preds = %idx_big_check184, %str_ok178
  %17 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok185

choice.then192:                                   ; preds = %idx_ok185
  br label %choice.exit194

choice.else193:                                   ; preds = %idx_ok185
  br label %choice.exit194

choice.exit194:                                   ; preds = %choice.else193, %choice.then192
  %choice.res195 = phi i64 [ 2, %choice.then192 ], [ 0, %choice.else193 ]
  %addtmp196 = add i64 %choice.res170, %choice.res195
  %var.load197 = load ptr, ptr %var.perms, align 8
  %s.read.len198 = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 0
  %s.read.len199 = load i64, ptr %s.read.len198, align 8
  %s.read.len200 = and i64 %s.read.len199, 281474976710655
  %str.tag201 = lshr i64 %s.read.len199, 48
  %str.immortal202 = icmp eq i64 %str.tag201, 0
  br i1 %str.immortal202, label %str_ok204, label %str_gen_check203

str_gen_check203:                                 ; preds = %choice.exit194
  %arena.cur206 = call ptr @dva_arena_current()
  %tag.valid207 = call i1 @dva_arena_validate_tag(ptr %arena.cur206, i64 %str.tag201)
  br i1 %tag.valid207, label %str_ok204, label %str_stale205

str_ok204:                                        ; preds = %str_stale205, %str_gen_check203, %choice.exit194
  %s.read.data208 = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 1
  %s.read.data209 = load ptr, ptr %s.read.data208, align 8
  br i1 false, label %idx_oob212, label %idx_big_check210

str_stale205:                                     ; preds = %str_gen_check203
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok204

idx_big_check210:                                 ; preds = %str_ok204
  %idx.big213 = icmp sge i64 9, %s.read.len200
  br i1 %idx.big213, label %idx_oob212, label %idx_ok211

idx_ok211:                                        ; preds = %idx_oob212, %idx_big_check210
  %s.byte.gep214 = getelementptr i8, ptr %s.read.data209, i64 9
  %s.byte215 = load i8, ptr %s.byte.gep214, align 1
  %s.byte.val216 = zext i8 %s.byte215 to i64
  %cmptmp217 = icmp eq i64 %s.byte.val216, 120
  br i1 %cmptmp217, label %choice.then218, label %choice.else219

idx_oob212:                                       ; preds = %idx_big_check210, %str_ok204
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok211

choice.then218:                                   ; preds = %idx_ok211
  br label %choice.exit220

choice.else219:                                   ; preds = %idx_ok211
  br label %choice.exit220

choice.exit220:                                   ; preds = %choice.else219, %choice.then218
  %choice.res221 = phi i64 [ 1, %choice.then218 ], [ 0, %choice.else219 ]
  %addtmp222 = add i64 %addtmp196, %choice.res221
  store i64 %addtmp222, ptr %var.o, align 8
  %concat.lhs = load i64, ptr @str.2.struct, align 8
  %concat.lhs223 = and i64 %concat.lhs, 281474976710655
  %str.tag224 = lshr i64 %concat.lhs, 48
  %str.immortal225 = icmp eq i64 %str.tag224, 0
  br i1 %str.immortal225, label %str_ok227, label %str_gen_check226

str_gen_check226:                                 ; preds = %choice.exit220
  %arena.cur229 = call ptr @dva_arena_current()
  %tag.valid230 = call i1 @dva_arena_validate_tag(ptr %arena.cur229, i64 %str.tag224)
  br i1 %tag.valid230, label %str_ok227, label %str_stale228

str_ok227:                                        ; preds = %str_stale228, %str_gen_check226, %choice.exit220
  %concat.lhs231 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.14.struct, align 8
  %concat.rhs232 = and i64 %concat.rhs, 281474976710655
  %str.tag233 = lshr i64 %concat.rhs, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

str_stale228:                                     ; preds = %str_gen_check226
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok227

str_gen_check235:                                 ; preds = %str_ok227
  %arena.cur238 = call ptr @dva_arena_current()
  %tag.valid239 = call i1 @dva_arena_validate_tag(ptr %arena.cur238, i64 %str.tag233)
  br i1 %tag.valid239, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %str_ok227
  %concat.rhs240 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs223, i64 %concat.rhs232)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len241

str_stale237:                                     ; preds = %str_gen_check235
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

concat.sum.len241:                                ; preds = %str_overflow_abort, %str_ok236
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum242 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf243 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf243, label %str_overflow_abort245, label %concat.tot.len244

str_overflow_abort:                               ; preds = %str_ok236
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len241

concat.tot.len244:                                ; preds = %str_overflow_abort245, %concat.sum.len241
  %arena.cur246 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur246, i64 %sum242)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs231, i64 %concat.lhs223, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs223
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs240, i64 %concat.rhs232, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur247 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load248 = load i64, ptr %var.u, align 8
  %arena.cur249 = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 32)
  %to_str.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf, i64 32, ptr @dva_fmt_i64, i64 %var.load248)
  %to_str.len = zext i32 %to_str.n to i64
  %arena.cur250 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 16)
  %str.build.len.gep251 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.len, ptr %str.build.len.gep251, align 8
  %str.build.data.gep252 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep252, align 8
  %concat.lhs253 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs254 = load i64, ptr %concat.lhs253, align 8
  %concat.lhs255 = and i64 %concat.lhs254, 281474976710655
  %str.tag256 = lshr i64 %concat.lhs254, 48
  %str.immortal257 = icmp eq i64 %str.tag256, 0
  br i1 %str.immortal257, label %str_ok259, label %str_gen_check258

str_overflow_abort245:                            ; preds = %concat.sum.len241
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len244

str_gen_check258:                                 ; preds = %concat.tot.len244
  %arena.cur261 = call ptr @dva_arena_current()
  %tag.valid262 = call i1 @dva_arena_validate_tag(ptr %arena.cur261, i64 %str.tag256)
  br i1 %tag.valid262, label %str_ok259, label %str_stale260

str_ok259:                                        ; preds = %str_stale260, %str_gen_check258, %concat.tot.len244
  %concat.lhs263 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs264 = load ptr, ptr %concat.lhs263, align 8
  %concat.rhs265 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  %concat.rhs266 = load i64, ptr %concat.rhs265, align 8
  %concat.rhs267 = and i64 %concat.rhs266, 281474976710655
  %str.tag268 = lshr i64 %concat.rhs266, 48
  %str.immortal269 = icmp eq i64 %str.tag268, 0
  br i1 %str.immortal269, label %str_ok271, label %str_gen_check270

str_stale260:                                     ; preds = %str_gen_check258
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok259

str_gen_check270:                                 ; preds = %str_ok259
  %arena.cur273 = call ptr @dva_arena_current()
  %tag.valid274 = call i1 @dva_arena_validate_tag(ptr %arena.cur273, i64 %str.tag268)
  br i1 %tag.valid274, label %str_ok271, label %str_stale272

str_ok271:                                        ; preds = %str_stale272, %str_gen_check270, %str_ok259
  %concat.rhs275 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  %concat.rhs276 = load ptr, ptr %concat.rhs275, align 8
  %concat.sum.len277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs255, i64 %concat.rhs267)
  %sum278 = extractvalue { i64, i1 } %concat.sum.len277, 0
  %ovf279 = extractvalue { i64, i1 } %concat.sum.len277, 1
  br i1 %ovf279, label %str_overflow_abort281, label %concat.sum.len280

str_stale272:                                     ; preds = %str_gen_check270
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok271

concat.sum.len280:                                ; preds = %str_overflow_abort281, %str_ok271
  %concat.tot.len282 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum278, i64 1)
  %sum283 = extractvalue { i64, i1 } %concat.tot.len282, 0
  %ovf284 = extractvalue { i64, i1 } %concat.tot.len282, 1
  br i1 %ovf284, label %str_overflow_abort286, label %concat.tot.len285

str_overflow_abort281:                            ; preds = %str_ok271
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len280

concat.tot.len285:                                ; preds = %str_overflow_abort286, %concat.sum.len280
  %arena.cur287 = call ptr @dva_arena_current()
  %concat.buf288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 %sum283)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf288, ptr align 1 %concat.lhs264, i64 %concat.lhs255, i1 false)
  %concat.mid289 = getelementptr i8, ptr %concat.buf288, i64 %concat.lhs255
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid289, ptr align 1 %concat.rhs276, i64 %concat.rhs267, i1 false)
  %concat.nul290 = getelementptr i8, ptr %concat.buf288, i64 %sum278
  store i8 0, ptr %concat.nul290, align 1
  %arena.cur291 = call ptr @dva_arena_current()
  %concat.str292 = call ptr @dva_arena_alloc(ptr %arena.cur291, i64 16)
  %str.build.len.gep293 = getelementptr inbounds { i64, ptr }, ptr %concat.str292, i32 0, i32 0
  store i64 %sum278, ptr %str.build.len.gep293, align 8
  %str.build.data.gep294 = getelementptr inbounds { i64, ptr }, ptr %concat.str292, i32 0, i32 1
  store ptr %concat.buf288, ptr %str.build.data.gep294, align 8
  %var.load295 = load i64, ptr %var.g, align 8
  %arena.cur296 = call ptr @dva_arena_current()
  %to_str.buf297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 32)
  %to_str.n298 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf297, i64 32, ptr @dva_fmt_i64, i64 %var.load295)
  %to_str.len299 = zext i32 %to_str.n298 to i64
  %arena.cur300 = call ptr @dva_arena_current()
  %to_str.res301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 16)
  %str.build.len.gep302 = getelementptr inbounds { i64, ptr }, ptr %to_str.res301, i32 0, i32 0
  store i64 %to_str.len299, ptr %str.build.len.gep302, align 8
  %str.build.data.gep303 = getelementptr inbounds { i64, ptr }, ptr %to_str.res301, i32 0, i32 1
  store ptr %to_str.buf297, ptr %str.build.data.gep303, align 8
  %concat.lhs304 = getelementptr inbounds { i64, ptr }, ptr %concat.str292, i32 0, i32 0
  %concat.lhs305 = load i64, ptr %concat.lhs304, align 8
  %concat.lhs306 = and i64 %concat.lhs305, 281474976710655
  %str.tag307 = lshr i64 %concat.lhs305, 48
  %str.immortal308 = icmp eq i64 %str.tag307, 0
  br i1 %str.immortal308, label %str_ok310, label %str_gen_check309

str_overflow_abort286:                            ; preds = %concat.sum.len280
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len285

str_gen_check309:                                 ; preds = %concat.tot.len285
  %arena.cur312 = call ptr @dva_arena_current()
  %tag.valid313 = call i1 @dva_arena_validate_tag(ptr %arena.cur312, i64 %str.tag307)
  br i1 %tag.valid313, label %str_ok310, label %str_stale311

str_ok310:                                        ; preds = %str_stale311, %str_gen_check309, %concat.tot.len285
  %concat.lhs314 = getelementptr inbounds { i64, ptr }, ptr %concat.str292, i32 0, i32 1
  %concat.lhs315 = load ptr, ptr %concat.lhs314, align 8
  %concat.rhs316 = getelementptr inbounds { i64, ptr }, ptr %to_str.res301, i32 0, i32 0
  %concat.rhs317 = load i64, ptr %concat.rhs316, align 8
  %concat.rhs318 = and i64 %concat.rhs317, 281474976710655
  %str.tag319 = lshr i64 %concat.rhs317, 48
  %str.immortal320 = icmp eq i64 %str.tag319, 0
  br i1 %str.immortal320, label %str_ok322, label %str_gen_check321

str_stale311:                                     ; preds = %str_gen_check309
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok310

str_gen_check321:                                 ; preds = %str_ok310
  %arena.cur324 = call ptr @dva_arena_current()
  %tag.valid325 = call i1 @dva_arena_validate_tag(ptr %arena.cur324, i64 %str.tag319)
  br i1 %tag.valid325, label %str_ok322, label %str_stale323

str_ok322:                                        ; preds = %str_stale323, %str_gen_check321, %str_ok310
  %concat.rhs326 = getelementptr inbounds { i64, ptr }, ptr %to_str.res301, i32 0, i32 1
  %concat.rhs327 = load ptr, ptr %concat.rhs326, align 8
  %concat.sum.len328 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs306, i64 %concat.rhs318)
  %sum329 = extractvalue { i64, i1 } %concat.sum.len328, 0
  %ovf330 = extractvalue { i64, i1 } %concat.sum.len328, 1
  br i1 %ovf330, label %str_overflow_abort332, label %concat.sum.len331

str_stale323:                                     ; preds = %str_gen_check321
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok322

concat.sum.len331:                                ; preds = %str_overflow_abort332, %str_ok322
  %concat.tot.len333 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum329, i64 1)
  %sum334 = extractvalue { i64, i1 } %concat.tot.len333, 0
  %ovf335 = extractvalue { i64, i1 } %concat.tot.len333, 1
  br i1 %ovf335, label %str_overflow_abort337, label %concat.tot.len336

str_overflow_abort332:                            ; preds = %str_ok322
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len331

concat.tot.len336:                                ; preds = %str_overflow_abort337, %concat.sum.len331
  %arena.cur338 = call ptr @dva_arena_current()
  %concat.buf339 = call ptr @dva_arena_alloc(ptr %arena.cur338, i64 %sum334)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf339, ptr align 1 %concat.lhs315, i64 %concat.lhs306, i1 false)
  %concat.mid340 = getelementptr i8, ptr %concat.buf339, i64 %concat.lhs306
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid340, ptr align 1 %concat.rhs327, i64 %concat.rhs318, i1 false)
  %concat.nul341 = getelementptr i8, ptr %concat.buf339, i64 %sum329
  store i8 0, ptr %concat.nul341, align 1
  %arena.cur342 = call ptr @dva_arena_current()
  %concat.str343 = call ptr @dva_arena_alloc(ptr %arena.cur342, i64 16)
  %str.build.len.gep344 = getelementptr inbounds { i64, ptr }, ptr %concat.str343, i32 0, i32 0
  store i64 %sum329, ptr %str.build.len.gep344, align 8
  %str.build.data.gep345 = getelementptr inbounds { i64, ptr }, ptr %concat.str343, i32 0, i32 1
  store ptr %concat.buf339, ptr %str.build.data.gep345, align 8
  %var.load346 = load i64, ptr %var.o, align 8
  %arena.cur347 = call ptr @dva_arena_current()
  %to_str.buf348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 32)
  %to_str.n349 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf348, i64 32, ptr @dva_fmt_i64, i64 %var.load346)
  %to_str.len350 = zext i32 %to_str.n349 to i64
  %arena.cur351 = call ptr @dva_arena_current()
  %to_str.res352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 16)
  %str.build.len.gep353 = getelementptr inbounds { i64, ptr }, ptr %to_str.res352, i32 0, i32 0
  store i64 %to_str.len350, ptr %str.build.len.gep353, align 8
  %str.build.data.gep354 = getelementptr inbounds { i64, ptr }, ptr %to_str.res352, i32 0, i32 1
  store ptr %to_str.buf348, ptr %str.build.data.gep354, align 8
  %concat.lhs355 = getelementptr inbounds { i64, ptr }, ptr %concat.str343, i32 0, i32 0
  %concat.lhs356 = load i64, ptr %concat.lhs355, align 8
  %concat.lhs357 = and i64 %concat.lhs356, 281474976710655
  %str.tag358 = lshr i64 %concat.lhs356, 48
  %str.immortal359 = icmp eq i64 %str.tag358, 0
  br i1 %str.immortal359, label %str_ok361, label %str_gen_check360

str_overflow_abort337:                            ; preds = %concat.sum.len331
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len336

str_gen_check360:                                 ; preds = %concat.tot.len336
  %arena.cur363 = call ptr @dva_arena_current()
  %tag.valid364 = call i1 @dva_arena_validate_tag(ptr %arena.cur363, i64 %str.tag358)
  br i1 %tag.valid364, label %str_ok361, label %str_stale362

str_ok361:                                        ; preds = %str_stale362, %str_gen_check360, %concat.tot.len336
  %concat.lhs365 = getelementptr inbounds { i64, ptr }, ptr %concat.str343, i32 0, i32 1
  %concat.lhs366 = load ptr, ptr %concat.lhs365, align 8
  %concat.rhs367 = getelementptr inbounds { i64, ptr }, ptr %to_str.res352, i32 0, i32 0
  %concat.rhs368 = load i64, ptr %concat.rhs367, align 8
  %concat.rhs369 = and i64 %concat.rhs368, 281474976710655
  %str.tag370 = lshr i64 %concat.rhs368, 48
  %str.immortal371 = icmp eq i64 %str.tag370, 0
  br i1 %str.immortal371, label %str_ok373, label %str_gen_check372

str_stale362:                                     ; preds = %str_gen_check360
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok361

str_gen_check372:                                 ; preds = %str_ok361
  %arena.cur375 = call ptr @dva_arena_current()
  %tag.valid376 = call i1 @dva_arena_validate_tag(ptr %arena.cur375, i64 %str.tag370)
  br i1 %tag.valid376, label %str_ok373, label %str_stale374

str_ok373:                                        ; preds = %str_stale374, %str_gen_check372, %str_ok361
  %concat.rhs377 = getelementptr inbounds { i64, ptr }, ptr %to_str.res352, i32 0, i32 1
  %concat.rhs378 = load ptr, ptr %concat.rhs377, align 8
  %concat.sum.len379 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs357, i64 %concat.rhs369)
  %sum380 = extractvalue { i64, i1 } %concat.sum.len379, 0
  %ovf381 = extractvalue { i64, i1 } %concat.sum.len379, 1
  br i1 %ovf381, label %str_overflow_abort383, label %concat.sum.len382

str_stale374:                                     ; preds = %str_gen_check372
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok373

concat.sum.len382:                                ; preds = %str_overflow_abort383, %str_ok373
  %concat.tot.len384 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum380, i64 1)
  %sum385 = extractvalue { i64, i1 } %concat.tot.len384, 0
  %ovf386 = extractvalue { i64, i1 } %concat.tot.len384, 1
  br i1 %ovf386, label %str_overflow_abort388, label %concat.tot.len387

str_overflow_abort383:                            ; preds = %str_ok373
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len382

concat.tot.len387:                                ; preds = %str_overflow_abort388, %concat.sum.len382
  %arena.cur389 = call ptr @dva_arena_current()
  %concat.buf390 = call ptr @dva_arena_alloc(ptr %arena.cur389, i64 %sum385)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf390, ptr align 1 %concat.lhs366, i64 %concat.lhs357, i1 false)
  %concat.mid391 = getelementptr i8, ptr %concat.buf390, i64 %concat.lhs357
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid391, ptr align 1 %concat.rhs378, i64 %concat.rhs369, i1 false)
  %concat.nul392 = getelementptr i8, ptr %concat.buf390, i64 %sum380
  store i8 0, ptr %concat.nul392, align 1
  %arena.cur393 = call ptr @dva_arena_current()
  %concat.str394 = call ptr @dva_arena_alloc(ptr %arena.cur393, i64 16)
  %str.build.len.gep395 = getelementptr inbounds { i64, ptr }, ptr %concat.str394, i32 0, i32 0
  store i64 %sum380, ptr %str.build.len.gep395, align 8
  %str.build.data.gep396 = getelementptr inbounds { i64, ptr }, ptr %concat.str394, i32 0, i32 1
  store ptr %concat.buf390, ptr %str.build.data.gep396, align 8
  ret ptr %concat.str394

str_overflow_abort388:                            ; preds = %concat.sum.len382
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len387
}

define ptr @"fs::auto_rename_path"(ptr %0) #1 {
entry:
  %var.cand = alloca ptr, align 8
  %var._117 = alloca i64, align 8
  %var._i116 = alloca i64, align 8
  %var.num = alloca i64, align 8
  %loop.step.48 = alloca i64, align 8
  %loop.idx.48 = alloca i64, align 8
  %"var.cand_path'" = alloca ptr, align 8
  %var.ext_part = alloca ptr, align 8
  %var.base_name = alloca ptr, align 8
  %var.j_idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.45 = alloca i64, align 8
  %loop.idx.45 = alloca i64, align 8
  %var.n_len = alloca i64, align 8
  %"var.dot_idx'" = alloca i64, align 8
  %var.name_part = alloca ptr, align 8
  %var.dir_part = alloca ptr, align 8
  %var.dir_raw = alloca ptr, align 8
  %var.full_p = alloca ptr, align 8
  store ptr %0, ptr %var.full_p, align 8
  %var.load = load ptr, ptr %var.full_p, align 8
  %call.res = call ptr @"fs::parent"(ptr %var.load)
  store ptr %call.res, ptr %var.dir_raw, align 8
  %var.load1 = load ptr, ptr %var.dir_raw, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %eq.lhs.len2 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %str.tag5 = lshr i64 %eq.rhs.len, 48
  %str.immortal6 = icmp eq i64 %str.tag5, 0
  br i1 %str.immortal6, label %str_ok8, label %str_gen_check7

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check7:                                   ; preds = %str_ok
  %arena.cur10 = call ptr @dva_arena_current()
  %tag.valid11 = call i1 @dva_arena_validate_tag(ptr %arena.cur10, i64 %str.tag5)
  br i1 %tag.valid11, label %str_ok8, label %str_stale9

str_ok8:                                          ; preds = %str_stale9, %str_gen_check7, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale9:                                       ; preds = %str_gen_check7
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

str.eq.then:                                      ; preds = %str_ok8
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data12 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data12, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load13 = load ptr, ptr %var.dir_raw, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.2.struct, %choice.then ], [ %var.load13, %choice.else ]
  store ptr %choice.res, ptr %var.dir_part, align 8
  %var.load14 = load ptr, ptr %var.full_p, align 8
  %call.res15 = call ptr @"fs::basename"(ptr %var.load14)
  store ptr %call.res15, ptr %var.name_part, align 8
  store i64 -1, ptr %"var.dot_idx'", align 8
  %var.load16 = load ptr, ptr %var.name_part, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %str.len.query17 = load i64, ptr %str.len.query, align 8
  %str.len.query18 = and i64 %str.len.query17, 281474976710655
  %str.tag19 = lshr i64 %str.len.query17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

str_gen_check21:                                  ; preds = %choice.exit
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag19)
  br i1 %tag.valid25, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %choice.exit
  store i64 %str.len.query18, ptr %var.n_len, align 8
  %var.load26 = load i64, ptr %var.n_len, align 8
  store i64 0, ptr %loop.idx.45, align 8
  br label %loop.header.45

str_stale23:                                      ; preds = %str_gen_check21
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

loop.header.45:                                   ; preds = %loop.latch.45, %str_ok22
  %counter.load = load i64, ptr %loop.idx.45, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load26
  br i1 %loop.cond, label %loop.body.45, label %loop.exit.nat.45

loop.body.45:                                     ; preds = %loop.header.45
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.45, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.j, align 8
  %var.load27 = load i64, ptr %var.n_len, align 8
  %subtmp = sub i64 %var.load27, 1
  %var.load28 = load i64, ptr %var.j, align 8
  %subtmp29 = sub i64 %subtmp, %var.load28
  store i64 %subtmp29, ptr %var.j_idx, align 8
  %var.load30 = load ptr, ptr %var.name_part, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %s.read.len31 = load i64, ptr %s.read.len, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %str.tag33 = lshr i64 %s.read.len31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

loop.exit.nat.45:                                 ; preds = %loop.header.45
  br label %loop.exit.45

loop.latch.45:                                    ; preds = %choice.exit47
  %step.val = load i64, ptr %loop.step.45, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.45, align 8
  br label %loop.header.45

loop.exit.45:                                     ; preds = %loop.exit.nat.45
  %var.load49 = load i64, ptr %"var.dot_idx'", align 8
  %cmptmp50 = icmp sge i64 %var.load49, 0
  br i1 %cmptmp50, label %choice.then51, label %choice.else52

str_gen_check35:                                  ; preds = %loop.body.45
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %str.tag33)
  br i1 %tag.valid39, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %loop.body.45
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data, align 8
  %var.load41 = load i64, ptr %var.j_idx, align 8
  %idx.neg = icmp slt i64 %var.load41, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale37:                                      ; preds = %str_gen_check35
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

idx_big_check:                                    ; preds = %str_ok36
  %idx.big = icmp sge i64 %var.load41, %s.read.len32
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data40, i64 %var.load41
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp, label %and.46.then, label %and.46.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok36
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.46.then:                                      ; preds = %idx_ok
  %var.load42 = load i64, ptr %"var.dot_idx'", align 8
  %cmptmp43 = icmp slt i64 %var.load42, 0
  br label %and.46.exit

and.46.else:                                      ; preds = %idx_ok
  br label %and.46.exit

and.46.exit:                                      ; preds = %and.46.else, %and.46.then
  %and.46.phi = phi i1 [ %cmptmp43, %and.46.then ], [ %cmptmp, %and.46.else ]
  br i1 %and.46.phi, label %and.47.then, label %and.47.else

and.47.then:                                      ; preds = %and.46.exit
  %var.load44 = load i64, ptr %var.j_idx, align 8
  %cmptmp45 = icmp sgt i64 %var.load44, 0
  br label %and.47.exit

and.47.else:                                      ; preds = %and.46.exit
  br label %and.47.exit

and.47.exit:                                      ; preds = %and.47.else, %and.47.then
  %and.47.phi = phi i1 [ %cmptmp45, %and.47.then ], [ %and.46.phi, %and.47.else ]
  br i1 %and.47.phi, label %choice.then46, label %choice.exit47

choice.then46:                                    ; preds = %and.47.exit
  %var.load48 = load i64, ptr %var.j_idx, align 8
  store i64 %var.load48, ptr %"var.dot_idx'", align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.then46, %and.47.exit
  br label %loop.latch.45

choice.then51:                                    ; preds = %loop.exit.45
  %var.load54 = load ptr, ptr %var.name_part, align 8
  %s.read.len55 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %s.read.len56 = load i64, ptr %s.read.len55, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %str.tag58 = lshr i64 %s.read.len56, 48
  %str.immortal59 = icmp eq i64 %str.tag58, 0
  br i1 %str.immortal59, label %str_ok61, label %str_gen_check60

choice.else52:                                    ; preds = %loop.exit.45
  %var.load69 = load ptr, ptr %var.name_part, align 8
  br label %choice.exit53

choice.exit53:                                    ; preds = %choice.else52, %str_ok61
  %choice.res70 = phi ptr [ %str.view, %str_ok61 ], [ %var.load69, %choice.else52 ]
  store ptr %choice.res70, ptr %var.base_name, align 8
  %var.load71 = load i64, ptr %"var.dot_idx'", align 8
  %cmptmp72 = icmp sge i64 %var.load71, 0
  br i1 %cmptmp72, label %choice.then73, label %choice.else74

str_gen_check60:                                  ; preds = %choice.then51
  %arena.cur63 = call ptr @dva_arena_current()
  %tag.valid64 = call i1 @dva_arena_validate_tag(ptr %arena.cur63, i64 %str.tag58)
  br i1 %tag.valid64, label %str_ok61, label %str_stale62

str_ok61:                                         ; preds = %str_stale62, %str_gen_check60, %choice.then51
  %s.read.data65 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %s.read.data66 = load ptr, ptr %s.read.data65, align 8
  %var.load67 = load i64, ptr %"var.dot_idx'", align 8
  %rel.start = add i64 %s.read.len57, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len57
  %final.start = select i1 %start.gt.len, i64 %s.read.len57, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load67, 0
  %rel.end = add i64 %s.read.len57, %var.load67
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load67
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len57
  %final.end = select i1 %end.gt.len, i64 %s.read.len57, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data66, i64 %final.start
  %arena.cur68 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit53

str_stale62:                                      ; preds = %str_gen_check60
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok61

choice.then73:                                    ; preds = %choice.exit53
  %var.load76 = load ptr, ptr %var.name_part, align 8
  %s.read.len77 = getelementptr inbounds { i64, ptr }, ptr %var.load76, i32 0, i32 0
  %s.read.len78 = load i64, ptr %s.read.len77, align 8
  %s.read.len79 = and i64 %s.read.len78, 281474976710655
  %str.tag80 = lshr i64 %s.read.len78, 48
  %str.immortal81 = icmp eq i64 %str.tag80, 0
  br i1 %str.immortal81, label %str_ok83, label %str_gen_check82

choice.else74:                                    ; preds = %choice.exit53
  br label %choice.exit75

choice.exit75:                                    ; preds = %choice.else74, %str_ok83
  %choice.res111 = phi ptr [ %str.view108, %str_ok83 ], [ @str.2.struct, %choice.else74 ]
  store ptr %choice.res111, ptr %var.ext_part, align 8
  %var.load112 = load ptr, ptr %var.full_p, align 8
  store ptr %var.load112, ptr %"var.cand_path'", align 8
  store i64 1, ptr %loop.idx.48, align 8
  br label %loop.header.48

str_gen_check82:                                  ; preds = %choice.then73
  %arena.cur85 = call ptr @dva_arena_current()
  %tag.valid86 = call i1 @dva_arena_validate_tag(ptr %arena.cur85, i64 %str.tag80)
  br i1 %tag.valid86, label %str_ok83, label %str_stale84

str_ok83:                                         ; preds = %str_stale84, %str_gen_check82, %choice.then73
  %s.read.data87 = getelementptr inbounds { i64, ptr }, ptr %var.load76, i32 0, i32 1
  %s.read.data88 = load ptr, ptr %s.read.data87, align 8
  %var.load89 = load i64, ptr %"var.dot_idx'", align 8
  %start.is_neg = icmp slt i64 %var.load89, 0
  %rel.start90 = add i64 %s.read.len79, %var.load89
  %norm.start91 = select i1 %start.is_neg, i64 %rel.start90, i64 %var.load89
  %start.lt.092 = icmp slt i64 %norm.start91, 0
  %c.start.093 = select i1 %start.lt.092, i64 0, i64 %norm.start91
  %start.gt.len94 = icmp sgt i64 %c.start.093, %s.read.len79
  %final.start95 = select i1 %start.gt.len94, i64 %s.read.len79, i64 %c.start.093
  %end.is_neg96 = icmp slt i64 %s.read.len79, 0
  %rel.end97 = add i64 %s.read.len79, %s.read.len79
  %norm.end98 = select i1 %end.is_neg96, i64 %rel.end97, i64 %s.read.len79
  %end.lt.099 = icmp slt i64 %norm.end98, 0
  %c.end.0100 = select i1 %end.lt.099, i64 0, i64 %norm.end98
  %end.gt.len101 = icmp sgt i64 %c.end.0100, %s.read.len79
  %final.end102 = select i1 %end.gt.len101, i64 %s.read.len79, i64 %c.end.0100
  %view.empty103 = icmp sle i64 %final.end102, %final.start95
  %view.len.sub104 = sub i64 %final.end102, %final.start95
  %view.len105 = select i1 %view.empty103, i64 0, i64 %view.len.sub104
  %view.data106 = getelementptr i8, ptr %s.read.data88, i64 %final.start95
  %arena.cur107 = call ptr @dva_arena_current()
  %str.view108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 16)
  %str.build.len.gep109 = getelementptr inbounds { i64, ptr }, ptr %str.view108, i32 0, i32 0
  store i64 %view.len105, ptr %str.build.len.gep109, align 8
  %str.build.data.gep110 = getelementptr inbounds { i64, ptr }, ptr %str.view108, i32 0, i32 1
  store ptr %view.data106, ptr %str.build.data.gep110, align 8
  br label %choice.exit75

str_stale84:                                      ; preds = %str_gen_check82
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok83

loop.header.48:                                   ; preds = %loop.latch.48, %choice.exit75
  %counter.load113 = load i64, ptr %loop.idx.48, align 8
  %loop.cond114 = icmp slt i64 %counter.load113, 1000
  br i1 %loop.cond114, label %loop.body.48, label %loop.exit.nat.48

loop.body.48:                                     ; preds = %loop.header.48
  %loop.rel.i115 = sub i64 %counter.load113, 1
  store i64 1, ptr %loop.step.48, align 8
  store i64 %loop.rel.i115, ptr %var._i116, align 8
  store i64 %counter.load113, ptr %var._117, align 8
  store i64 %counter.load113, ptr %var.num, align 8
  %var.load118 = load ptr, ptr %var.dir_part, align 8
  %eq.lhs.len119 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %eq.lhs.len120 = load i64, ptr %eq.lhs.len119, align 8
  %eq.lhs.len121 = and i64 %eq.lhs.len120, 281474976710655
  %str.tag122 = lshr i64 %eq.lhs.len120, 48
  %str.immortal123 = icmp eq i64 %str.tag122, 0
  br i1 %str.immortal123, label %str_ok125, label %str_gen_check124

loop.exit.nat.48:                                 ; preds = %loop.header.48
  br label %loop.exit.48

loop.latch.48:                                    ; preds = %choice.exit653
  %step.val655 = load i64, ptr %loop.step.48, align 8
  %loop.next656 = add i64 %counter.load113, %step.val655
  store i64 %loop.next656, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.exit.48:                                     ; preds = %choice.then652, %loop.exit.nat.48
  %var.load657 = load ptr, ptr %"var.cand_path'", align 8
  ret ptr %var.load657

str_gen_check124:                                 ; preds = %loop.body.48
  %arena.cur127 = call ptr @dva_arena_current()
  %tag.valid128 = call i1 @dva_arena_validate_tag(ptr %arena.cur127, i64 %str.tag122)
  br i1 %tag.valid128, label %str_ok125, label %str_stale126

str_ok125:                                        ; preds = %str_stale126, %str_gen_check124, %loop.body.48
  %eq.rhs.len129 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len130 = and i64 %eq.rhs.len129, 281474976710655
  %str.tag131 = lshr i64 %eq.rhs.len129, 48
  %str.immortal132 = icmp eq i64 %str.tag131, 0
  br i1 %str.immortal132, label %str_ok134, label %str_gen_check133

str_stale126:                                     ; preds = %str_gen_check124
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok125

str_gen_check133:                                 ; preds = %str_ok125
  %arena.cur136 = call ptr @dva_arena_current()
  %tag.valid137 = call i1 @dva_arena_validate_tag(ptr %arena.cur136, i64 %str.tag131)
  br i1 %tag.valid137, label %str_ok134, label %str_stale135

str_ok134:                                        ; preds = %str_stale135, %str_gen_check133, %str_ok125
  %eq.len138 = icmp eq i64 %eq.lhs.len121, %eq.rhs.len130
  br i1 %eq.len138, label %str.eq.then139, label %str.eq.else140

str_stale135:                                     ; preds = %str_gen_check133
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok134

str.eq.then139:                                   ; preds = %str_ok134
  %eq.lhs.data142 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %eq.lhs.data143 = load ptr, ptr %eq.lhs.data142, align 8
  %eq.rhs.data144 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp145 = call i32 @memcmp(ptr %eq.lhs.data143, ptr %eq.rhs.data144, i64 %eq.lhs.len121)
  %eq.cmp.zero146 = icmp eq i32 %eq.memcmp145, 0
  br label %str.eq.merge141

str.eq.else140:                                   ; preds = %str_ok134
  br label %str.eq.merge141

str.eq.merge141:                                  ; preds = %str.eq.else140, %str.eq.then139
  %str.eq.result147 = phi i1 [ %eq.cmp.zero146, %str.eq.then139 ], [ false, %str.eq.else140 ]
  %str.neq = xor i1 %str.eq.result147, true
  br i1 %str.neq, label %choice.then148, label %choice.else149

choice.then148:                                   ; preds = %str.eq.merge141
  %var.load151 = load ptr, ptr %var.dir_part, align 8
  %concat.lhs = load i64, ptr @str.2.struct, align 8
  %concat.lhs152 = and i64 %concat.lhs, 281474976710655
  %str.tag153 = lshr i64 %concat.lhs, 48
  %str.immortal154 = icmp eq i64 %str.tag153, 0
  br i1 %str.immortal154, label %str_ok156, label %str_gen_check155

choice.else149:                                   ; preds = %str.eq.merge141
  %var.load434 = load ptr, ptr %var.base_name, align 8
  %concat.lhs435 = load i64, ptr @str.2.struct, align 8
  %concat.lhs436 = and i64 %concat.lhs435, 281474976710655
  %str.tag437 = lshr i64 %concat.lhs435, 48
  %str.immortal438 = icmp eq i64 %str.tag437, 0
  br i1 %str.immortal438, label %str_ok440, label %str_gen_check439

choice.exit150:                                   ; preds = %concat.tot.len639, %concat.tot.len424
  %choice.res649 = phi ptr [ %concat.str431, %concat.tot.len424 ], [ %concat.str646, %concat.tot.len639 ]
  store ptr %choice.res649, ptr %var.cand, align 8
  %var.load650 = load ptr, ptr %var.cand, align 8
  %call.res651 = call i1 @"fs::exists"(ptr %var.load650)
  %nottmp = xor i1 %call.res651, true
  br i1 %nottmp, label %choice.then652, label %choice.exit653

str_gen_check155:                                 ; preds = %choice.then148
  %arena.cur158 = call ptr @dva_arena_current()
  %tag.valid159 = call i1 @dva_arena_validate_tag(ptr %arena.cur158, i64 %str.tag153)
  br i1 %tag.valid159, label %str_ok156, label %str_stale157

str_ok156:                                        ; preds = %str_stale157, %str_gen_check155, %choice.then148
  %concat.lhs160 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 0
  %concat.rhs161 = load i64, ptr %concat.rhs, align 8
  %concat.rhs162 = and i64 %concat.rhs161, 281474976710655
  %str.tag163 = lshr i64 %concat.rhs161, 48
  %str.immortal164 = icmp eq i64 %str.tag163, 0
  br i1 %str.immortal164, label %str_ok166, label %str_gen_check165

str_stale157:                                     ; preds = %str_gen_check155
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok156

str_gen_check165:                                 ; preds = %str_ok156
  %arena.cur168 = call ptr @dva_arena_current()
  %tag.valid169 = call i1 @dva_arena_validate_tag(ptr %arena.cur168, i64 %str.tag163)
  br i1 %tag.valid169, label %str_ok166, label %str_stale167

str_ok166:                                        ; preds = %str_stale167, %str_gen_check165, %str_ok156
  %concat.rhs170 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 1
  %concat.rhs171 = load ptr, ptr %concat.rhs170, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs152, i64 %concat.rhs162)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len172

str_stale167:                                     ; preds = %str_gen_check165
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok166

concat.sum.len172:                                ; preds = %str_overflow_abort, %str_ok166
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum173 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf174 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf174, label %str_overflow_abort176, label %concat.tot.len175

str_overflow_abort:                               ; preds = %str_ok166
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len172

concat.tot.len175:                                ; preds = %str_overflow_abort176, %concat.sum.len172
  %arena.cur177 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 %sum173)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs160, i64 %concat.lhs152, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs152
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs171, i64 %concat.rhs162, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur178 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 16)
  %str.build.len.gep179 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep179, align 8
  %str.build.data.gep180 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep180, align 8
  %concat.lhs181 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs182 = load i64, ptr %concat.lhs181, align 8
  %concat.lhs183 = and i64 %concat.lhs182, 281474976710655
  %str.tag184 = lshr i64 %concat.lhs182, 48
  %str.immortal185 = icmp eq i64 %str.tag184, 0
  br i1 %str.immortal185, label %str_ok187, label %str_gen_check186

str_overflow_abort176:                            ; preds = %concat.sum.len172
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len175

str_gen_check186:                                 ; preds = %concat.tot.len175
  %arena.cur189 = call ptr @dva_arena_current()
  %tag.valid190 = call i1 @dva_arena_validate_tag(ptr %arena.cur189, i64 %str.tag184)
  br i1 %tag.valid190, label %str_ok187, label %str_stale188

str_ok187:                                        ; preds = %str_stale188, %str_gen_check186, %concat.tot.len175
  %concat.lhs191 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs192 = load ptr, ptr %concat.lhs191, align 8
  %concat.rhs193 = load i64, ptr @str.0.struct, align 8
  %concat.rhs194 = and i64 %concat.rhs193, 281474976710655
  %str.tag195 = lshr i64 %concat.rhs193, 48
  %str.immortal196 = icmp eq i64 %str.tag195, 0
  br i1 %str.immortal196, label %str_ok198, label %str_gen_check197

str_stale188:                                     ; preds = %str_gen_check186
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok187

str_gen_check197:                                 ; preds = %str_ok187
  %arena.cur200 = call ptr @dva_arena_current()
  %tag.valid201 = call i1 @dva_arena_validate_tag(ptr %arena.cur200, i64 %str.tag195)
  br i1 %tag.valid201, label %str_ok198, label %str_stale199

str_ok198:                                        ; preds = %str_stale199, %str_gen_check197, %str_ok187
  %concat.rhs202 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.sum.len203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs183, i64 %concat.rhs194)
  %sum204 = extractvalue { i64, i1 } %concat.sum.len203, 0
  %ovf205 = extractvalue { i64, i1 } %concat.sum.len203, 1
  br i1 %ovf205, label %str_overflow_abort207, label %concat.sum.len206

str_stale199:                                     ; preds = %str_gen_check197
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok198

concat.sum.len206:                                ; preds = %str_overflow_abort207, %str_ok198
  %concat.tot.len208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum204, i64 1)
  %sum209 = extractvalue { i64, i1 } %concat.tot.len208, 0
  %ovf210 = extractvalue { i64, i1 } %concat.tot.len208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %concat.tot.len211

str_overflow_abort207:                            ; preds = %str_ok198
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len206

concat.tot.len211:                                ; preds = %str_overflow_abort212, %concat.sum.len206
  %arena.cur213 = call ptr @dva_arena_current()
  %concat.buf214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 %sum209)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf214, ptr align 1 %concat.lhs192, i64 %concat.lhs183, i1 false)
  %concat.mid215 = getelementptr i8, ptr %concat.buf214, i64 %concat.lhs183
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid215, ptr align 1 %concat.rhs202, i64 %concat.rhs194, i1 false)
  %concat.nul216 = getelementptr i8, ptr %concat.buf214, i64 %sum204
  store i8 0, ptr %concat.nul216, align 1
  %arena.cur217 = call ptr @dva_arena_current()
  %concat.str218 = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 16)
  %str.build.len.gep219 = getelementptr inbounds { i64, ptr }, ptr %concat.str218, i32 0, i32 0
  store i64 %sum204, ptr %str.build.len.gep219, align 8
  %str.build.data.gep220 = getelementptr inbounds { i64, ptr }, ptr %concat.str218, i32 0, i32 1
  store ptr %concat.buf214, ptr %str.build.data.gep220, align 8
  %var.load221 = load ptr, ptr %var.base_name, align 8
  %concat.lhs222 = getelementptr inbounds { i64, ptr }, ptr %concat.str218, i32 0, i32 0
  %concat.lhs223 = load i64, ptr %concat.lhs222, align 8
  %concat.lhs224 = and i64 %concat.lhs223, 281474976710655
  %str.tag225 = lshr i64 %concat.lhs223, 48
  %str.immortal226 = icmp eq i64 %str.tag225, 0
  br i1 %str.immortal226, label %str_ok228, label %str_gen_check227

str_overflow_abort212:                            ; preds = %concat.sum.len206
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len211

str_gen_check227:                                 ; preds = %concat.tot.len211
  %arena.cur230 = call ptr @dva_arena_current()
  %tag.valid231 = call i1 @dva_arena_validate_tag(ptr %arena.cur230, i64 %str.tag225)
  br i1 %tag.valid231, label %str_ok228, label %str_stale229

str_ok228:                                        ; preds = %str_stale229, %str_gen_check227, %concat.tot.len211
  %concat.lhs232 = getelementptr inbounds { i64, ptr }, ptr %concat.str218, i32 0, i32 1
  %concat.lhs233 = load ptr, ptr %concat.lhs232, align 8
  %concat.rhs234 = getelementptr inbounds { i64, ptr }, ptr %var.load221, i32 0, i32 0
  %concat.rhs235 = load i64, ptr %concat.rhs234, align 8
  %concat.rhs236 = and i64 %concat.rhs235, 281474976710655
  %str.tag237 = lshr i64 %concat.rhs235, 48
  %str.immortal238 = icmp eq i64 %str.tag237, 0
  br i1 %str.immortal238, label %str_ok240, label %str_gen_check239

str_stale229:                                     ; preds = %str_gen_check227
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok228

str_gen_check239:                                 ; preds = %str_ok228
  %arena.cur242 = call ptr @dva_arena_current()
  %tag.valid243 = call i1 @dva_arena_validate_tag(ptr %arena.cur242, i64 %str.tag237)
  br i1 %tag.valid243, label %str_ok240, label %str_stale241

str_ok240:                                        ; preds = %str_stale241, %str_gen_check239, %str_ok228
  %concat.rhs244 = getelementptr inbounds { i64, ptr }, ptr %var.load221, i32 0, i32 1
  %concat.rhs245 = load ptr, ptr %concat.rhs244, align 8
  %concat.sum.len246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs224, i64 %concat.rhs236)
  %sum247 = extractvalue { i64, i1 } %concat.sum.len246, 0
  %ovf248 = extractvalue { i64, i1 } %concat.sum.len246, 1
  br i1 %ovf248, label %str_overflow_abort250, label %concat.sum.len249

str_stale241:                                     ; preds = %str_gen_check239
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok240

concat.sum.len249:                                ; preds = %str_overflow_abort250, %str_ok240
  %concat.tot.len251 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum247, i64 1)
  %sum252 = extractvalue { i64, i1 } %concat.tot.len251, 0
  %ovf253 = extractvalue { i64, i1 } %concat.tot.len251, 1
  br i1 %ovf253, label %str_overflow_abort255, label %concat.tot.len254

str_overflow_abort250:                            ; preds = %str_ok240
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len249

concat.tot.len254:                                ; preds = %str_overflow_abort255, %concat.sum.len249
  %arena.cur256 = call ptr @dva_arena_current()
  %concat.buf257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 %sum252)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf257, ptr align 1 %concat.lhs233, i64 %concat.lhs224, i1 false)
  %concat.mid258 = getelementptr i8, ptr %concat.buf257, i64 %concat.lhs224
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid258, ptr align 1 %concat.rhs245, i64 %concat.rhs236, i1 false)
  %concat.nul259 = getelementptr i8, ptr %concat.buf257, i64 %sum247
  store i8 0, ptr %concat.nul259, align 1
  %arena.cur260 = call ptr @dva_arena_current()
  %concat.str261 = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 16)
  %str.build.len.gep262 = getelementptr inbounds { i64, ptr }, ptr %concat.str261, i32 0, i32 0
  store i64 %sum247, ptr %str.build.len.gep262, align 8
  %str.build.data.gep263 = getelementptr inbounds { i64, ptr }, ptr %concat.str261, i32 0, i32 1
  store ptr %concat.buf257, ptr %str.build.data.gep263, align 8
  %concat.lhs264 = getelementptr inbounds { i64, ptr }, ptr %concat.str261, i32 0, i32 0
  %concat.lhs265 = load i64, ptr %concat.lhs264, align 8
  %concat.lhs266 = and i64 %concat.lhs265, 281474976710655
  %str.tag267 = lshr i64 %concat.lhs265, 48
  %str.immortal268 = icmp eq i64 %str.tag267, 0
  br i1 %str.immortal268, label %str_ok270, label %str_gen_check269

str_overflow_abort255:                            ; preds = %concat.sum.len249
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len254

str_gen_check269:                                 ; preds = %concat.tot.len254
  %arena.cur272 = call ptr @dva_arena_current()
  %tag.valid273 = call i1 @dva_arena_validate_tag(ptr %arena.cur272, i64 %str.tag267)
  br i1 %tag.valid273, label %str_ok270, label %str_stale271

str_ok270:                                        ; preds = %str_stale271, %str_gen_check269, %concat.tot.len254
  %concat.lhs274 = getelementptr inbounds { i64, ptr }, ptr %concat.str261, i32 0, i32 1
  %concat.lhs275 = load ptr, ptr %concat.lhs274, align 8
  %concat.rhs276 = load i64, ptr @str.16.struct, align 8
  %concat.rhs277 = and i64 %concat.rhs276, 281474976710655
  %str.tag278 = lshr i64 %concat.rhs276, 48
  %str.immortal279 = icmp eq i64 %str.tag278, 0
  br i1 %str.immortal279, label %str_ok281, label %str_gen_check280

str_stale271:                                     ; preds = %str_gen_check269
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok270

str_gen_check280:                                 ; preds = %str_ok270
  %arena.cur283 = call ptr @dva_arena_current()
  %tag.valid284 = call i1 @dva_arena_validate_tag(ptr %arena.cur283, i64 %str.tag278)
  br i1 %tag.valid284, label %str_ok281, label %str_stale282

str_ok281:                                        ; preds = %str_stale282, %str_gen_check280, %str_ok270
  %concat.rhs285 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %concat.sum.len286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs266, i64 %concat.rhs277)
  %sum287 = extractvalue { i64, i1 } %concat.sum.len286, 0
  %ovf288 = extractvalue { i64, i1 } %concat.sum.len286, 1
  br i1 %ovf288, label %str_overflow_abort290, label %concat.sum.len289

str_stale282:                                     ; preds = %str_gen_check280
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok281

concat.sum.len289:                                ; preds = %str_overflow_abort290, %str_ok281
  %concat.tot.len291 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum287, i64 1)
  %sum292 = extractvalue { i64, i1 } %concat.tot.len291, 0
  %ovf293 = extractvalue { i64, i1 } %concat.tot.len291, 1
  br i1 %ovf293, label %str_overflow_abort295, label %concat.tot.len294

str_overflow_abort290:                            ; preds = %str_ok281
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len289

concat.tot.len294:                                ; preds = %str_overflow_abort295, %concat.sum.len289
  %arena.cur296 = call ptr @dva_arena_current()
  %concat.buf297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 %sum292)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf297, ptr align 1 %concat.lhs275, i64 %concat.lhs266, i1 false)
  %concat.mid298 = getelementptr i8, ptr %concat.buf297, i64 %concat.lhs266
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid298, ptr align 1 %concat.rhs285, i64 %concat.rhs277, i1 false)
  %concat.nul299 = getelementptr i8, ptr %concat.buf297, i64 %sum287
  store i8 0, ptr %concat.nul299, align 1
  %arena.cur300 = call ptr @dva_arena_current()
  %concat.str301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 16)
  %str.build.len.gep302 = getelementptr inbounds { i64, ptr }, ptr %concat.str301, i32 0, i32 0
  store i64 %sum287, ptr %str.build.len.gep302, align 8
  %str.build.data.gep303 = getelementptr inbounds { i64, ptr }, ptr %concat.str301, i32 0, i32 1
  store ptr %concat.buf297, ptr %str.build.data.gep303, align 8
  %var.load304 = load i64, ptr %var.num, align 8
  %arena.cur305 = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 32)
  %to_str.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf, i64 32, ptr @dva_fmt_i64, i64 %var.load304)
  %to_str.len = zext i32 %to_str.n to i64
  %arena.cur306 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 16)
  %str.build.len.gep307 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.len, ptr %str.build.len.gep307, align 8
  %str.build.data.gep308 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep308, align 8
  %concat.lhs309 = getelementptr inbounds { i64, ptr }, ptr %concat.str301, i32 0, i32 0
  %concat.lhs310 = load i64, ptr %concat.lhs309, align 8
  %concat.lhs311 = and i64 %concat.lhs310, 281474976710655
  %str.tag312 = lshr i64 %concat.lhs310, 48
  %str.immortal313 = icmp eq i64 %str.tag312, 0
  br i1 %str.immortal313, label %str_ok315, label %str_gen_check314

str_overflow_abort295:                            ; preds = %concat.sum.len289
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len294

str_gen_check314:                                 ; preds = %concat.tot.len294
  %arena.cur317 = call ptr @dva_arena_current()
  %tag.valid318 = call i1 @dva_arena_validate_tag(ptr %arena.cur317, i64 %str.tag312)
  br i1 %tag.valid318, label %str_ok315, label %str_stale316

str_ok315:                                        ; preds = %str_stale316, %str_gen_check314, %concat.tot.len294
  %concat.lhs319 = getelementptr inbounds { i64, ptr }, ptr %concat.str301, i32 0, i32 1
  %concat.lhs320 = load ptr, ptr %concat.lhs319, align 8
  %concat.rhs321 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  %concat.rhs322 = load i64, ptr %concat.rhs321, align 8
  %concat.rhs323 = and i64 %concat.rhs322, 281474976710655
  %str.tag324 = lshr i64 %concat.rhs322, 48
  %str.immortal325 = icmp eq i64 %str.tag324, 0
  br i1 %str.immortal325, label %str_ok327, label %str_gen_check326

str_stale316:                                     ; preds = %str_gen_check314
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok315

str_gen_check326:                                 ; preds = %str_ok315
  %arena.cur329 = call ptr @dva_arena_current()
  %tag.valid330 = call i1 @dva_arena_validate_tag(ptr %arena.cur329, i64 %str.tag324)
  br i1 %tag.valid330, label %str_ok327, label %str_stale328

str_ok327:                                        ; preds = %str_stale328, %str_gen_check326, %str_ok315
  %concat.rhs331 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  %concat.rhs332 = load ptr, ptr %concat.rhs331, align 8
  %concat.sum.len333 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs311, i64 %concat.rhs323)
  %sum334 = extractvalue { i64, i1 } %concat.sum.len333, 0
  %ovf335 = extractvalue { i64, i1 } %concat.sum.len333, 1
  br i1 %ovf335, label %str_overflow_abort337, label %concat.sum.len336

str_stale328:                                     ; preds = %str_gen_check326
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok327

concat.sum.len336:                                ; preds = %str_overflow_abort337, %str_ok327
  %concat.tot.len338 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum334, i64 1)
  %sum339 = extractvalue { i64, i1 } %concat.tot.len338, 0
  %ovf340 = extractvalue { i64, i1 } %concat.tot.len338, 1
  br i1 %ovf340, label %str_overflow_abort342, label %concat.tot.len341

str_overflow_abort337:                            ; preds = %str_ok327
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len336

concat.tot.len341:                                ; preds = %str_overflow_abort342, %concat.sum.len336
  %arena.cur343 = call ptr @dva_arena_current()
  %concat.buf344 = call ptr @dva_arena_alloc(ptr %arena.cur343, i64 %sum339)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf344, ptr align 1 %concat.lhs320, i64 %concat.lhs311, i1 false)
  %concat.mid345 = getelementptr i8, ptr %concat.buf344, i64 %concat.lhs311
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid345, ptr align 1 %concat.rhs332, i64 %concat.rhs323, i1 false)
  %concat.nul346 = getelementptr i8, ptr %concat.buf344, i64 %sum334
  store i8 0, ptr %concat.nul346, align 1
  %arena.cur347 = call ptr @dva_arena_current()
  %concat.str348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 16)
  %str.build.len.gep349 = getelementptr inbounds { i64, ptr }, ptr %concat.str348, i32 0, i32 0
  store i64 %sum334, ptr %str.build.len.gep349, align 8
  %str.build.data.gep350 = getelementptr inbounds { i64, ptr }, ptr %concat.str348, i32 0, i32 1
  store ptr %concat.buf344, ptr %str.build.data.gep350, align 8
  %concat.lhs351 = getelementptr inbounds { i64, ptr }, ptr %concat.str348, i32 0, i32 0
  %concat.lhs352 = load i64, ptr %concat.lhs351, align 8
  %concat.lhs353 = and i64 %concat.lhs352, 281474976710655
  %str.tag354 = lshr i64 %concat.lhs352, 48
  %str.immortal355 = icmp eq i64 %str.tag354, 0
  br i1 %str.immortal355, label %str_ok357, label %str_gen_check356

str_overflow_abort342:                            ; preds = %concat.sum.len336
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len341

str_gen_check356:                                 ; preds = %concat.tot.len341
  %arena.cur359 = call ptr @dva_arena_current()
  %tag.valid360 = call i1 @dva_arena_validate_tag(ptr %arena.cur359, i64 %str.tag354)
  br i1 %tag.valid360, label %str_ok357, label %str_stale358

str_ok357:                                        ; preds = %str_stale358, %str_gen_check356, %concat.tot.len341
  %concat.lhs361 = getelementptr inbounds { i64, ptr }, ptr %concat.str348, i32 0, i32 1
  %concat.lhs362 = load ptr, ptr %concat.lhs361, align 8
  %concat.rhs363 = load i64, ptr @str.17.struct, align 8
  %concat.rhs364 = and i64 %concat.rhs363, 281474976710655
  %str.tag365 = lshr i64 %concat.rhs363, 48
  %str.immortal366 = icmp eq i64 %str.tag365, 0
  br i1 %str.immortal366, label %str_ok368, label %str_gen_check367

str_stale358:                                     ; preds = %str_gen_check356
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok357

str_gen_check367:                                 ; preds = %str_ok357
  %arena.cur370 = call ptr @dva_arena_current()
  %tag.valid371 = call i1 @dva_arena_validate_tag(ptr %arena.cur370, i64 %str.tag365)
  br i1 %tag.valid371, label %str_ok368, label %str_stale369

str_ok368:                                        ; preds = %str_stale369, %str_gen_check367, %str_ok357
  %concat.rhs372 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %concat.sum.len373 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs353, i64 %concat.rhs364)
  %sum374 = extractvalue { i64, i1 } %concat.sum.len373, 0
  %ovf375 = extractvalue { i64, i1 } %concat.sum.len373, 1
  br i1 %ovf375, label %str_overflow_abort377, label %concat.sum.len376

str_stale369:                                     ; preds = %str_gen_check367
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok368

concat.sum.len376:                                ; preds = %str_overflow_abort377, %str_ok368
  %concat.tot.len378 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum374, i64 1)
  %sum379 = extractvalue { i64, i1 } %concat.tot.len378, 0
  %ovf380 = extractvalue { i64, i1 } %concat.tot.len378, 1
  br i1 %ovf380, label %str_overflow_abort382, label %concat.tot.len381

str_overflow_abort377:                            ; preds = %str_ok368
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len376

concat.tot.len381:                                ; preds = %str_overflow_abort382, %concat.sum.len376
  %arena.cur383 = call ptr @dva_arena_current()
  %concat.buf384 = call ptr @dva_arena_alloc(ptr %arena.cur383, i64 %sum379)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf384, ptr align 1 %concat.lhs362, i64 %concat.lhs353, i1 false)
  %concat.mid385 = getelementptr i8, ptr %concat.buf384, i64 %concat.lhs353
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid385, ptr align 1 %concat.rhs372, i64 %concat.rhs364, i1 false)
  %concat.nul386 = getelementptr i8, ptr %concat.buf384, i64 %sum374
  store i8 0, ptr %concat.nul386, align 1
  %arena.cur387 = call ptr @dva_arena_current()
  %concat.str388 = call ptr @dva_arena_alloc(ptr %arena.cur387, i64 16)
  %str.build.len.gep389 = getelementptr inbounds { i64, ptr }, ptr %concat.str388, i32 0, i32 0
  store i64 %sum374, ptr %str.build.len.gep389, align 8
  %str.build.data.gep390 = getelementptr inbounds { i64, ptr }, ptr %concat.str388, i32 0, i32 1
  store ptr %concat.buf384, ptr %str.build.data.gep390, align 8
  %var.load391 = load ptr, ptr %var.ext_part, align 8
  %concat.lhs392 = getelementptr inbounds { i64, ptr }, ptr %concat.str388, i32 0, i32 0
  %concat.lhs393 = load i64, ptr %concat.lhs392, align 8
  %concat.lhs394 = and i64 %concat.lhs393, 281474976710655
  %str.tag395 = lshr i64 %concat.lhs393, 48
  %str.immortal396 = icmp eq i64 %str.tag395, 0
  br i1 %str.immortal396, label %str_ok398, label %str_gen_check397

str_overflow_abort382:                            ; preds = %concat.sum.len376
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len381

str_gen_check397:                                 ; preds = %concat.tot.len381
  %arena.cur400 = call ptr @dva_arena_current()
  %tag.valid401 = call i1 @dva_arena_validate_tag(ptr %arena.cur400, i64 %str.tag395)
  br i1 %tag.valid401, label %str_ok398, label %str_stale399

str_ok398:                                        ; preds = %str_stale399, %str_gen_check397, %concat.tot.len381
  %concat.lhs402 = getelementptr inbounds { i64, ptr }, ptr %concat.str388, i32 0, i32 1
  %concat.lhs403 = load ptr, ptr %concat.lhs402, align 8
  %concat.rhs404 = getelementptr inbounds { i64, ptr }, ptr %var.load391, i32 0, i32 0
  %concat.rhs405 = load i64, ptr %concat.rhs404, align 8
  %concat.rhs406 = and i64 %concat.rhs405, 281474976710655
  %str.tag407 = lshr i64 %concat.rhs405, 48
  %str.immortal408 = icmp eq i64 %str.tag407, 0
  br i1 %str.immortal408, label %str_ok410, label %str_gen_check409

str_stale399:                                     ; preds = %str_gen_check397
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok398

str_gen_check409:                                 ; preds = %str_ok398
  %arena.cur412 = call ptr @dva_arena_current()
  %tag.valid413 = call i1 @dva_arena_validate_tag(ptr %arena.cur412, i64 %str.tag407)
  br i1 %tag.valid413, label %str_ok410, label %str_stale411

str_ok410:                                        ; preds = %str_stale411, %str_gen_check409, %str_ok398
  %concat.rhs414 = getelementptr inbounds { i64, ptr }, ptr %var.load391, i32 0, i32 1
  %concat.rhs415 = load ptr, ptr %concat.rhs414, align 8
  %concat.sum.len416 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs394, i64 %concat.rhs406)
  %sum417 = extractvalue { i64, i1 } %concat.sum.len416, 0
  %ovf418 = extractvalue { i64, i1 } %concat.sum.len416, 1
  br i1 %ovf418, label %str_overflow_abort420, label %concat.sum.len419

str_stale411:                                     ; preds = %str_gen_check409
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok410

concat.sum.len419:                                ; preds = %str_overflow_abort420, %str_ok410
  %concat.tot.len421 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum417, i64 1)
  %sum422 = extractvalue { i64, i1 } %concat.tot.len421, 0
  %ovf423 = extractvalue { i64, i1 } %concat.tot.len421, 1
  br i1 %ovf423, label %str_overflow_abort425, label %concat.tot.len424

str_overflow_abort420:                            ; preds = %str_ok410
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len419

concat.tot.len424:                                ; preds = %str_overflow_abort425, %concat.sum.len419
  %arena.cur426 = call ptr @dva_arena_current()
  %concat.buf427 = call ptr @dva_arena_alloc(ptr %arena.cur426, i64 %sum422)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf427, ptr align 1 %concat.lhs403, i64 %concat.lhs394, i1 false)
  %concat.mid428 = getelementptr i8, ptr %concat.buf427, i64 %concat.lhs394
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid428, ptr align 1 %concat.rhs415, i64 %concat.rhs406, i1 false)
  %concat.nul429 = getelementptr i8, ptr %concat.buf427, i64 %sum417
  store i8 0, ptr %concat.nul429, align 1
  %arena.cur430 = call ptr @dva_arena_current()
  %concat.str431 = call ptr @dva_arena_alloc(ptr %arena.cur430, i64 16)
  %str.build.len.gep432 = getelementptr inbounds { i64, ptr }, ptr %concat.str431, i32 0, i32 0
  store i64 %sum417, ptr %str.build.len.gep432, align 8
  %str.build.data.gep433 = getelementptr inbounds { i64, ptr }, ptr %concat.str431, i32 0, i32 1
  store ptr %concat.buf427, ptr %str.build.data.gep433, align 8
  br label %choice.exit150

str_overflow_abort425:                            ; preds = %concat.sum.len419
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len424

str_gen_check439:                                 ; preds = %choice.else149
  %arena.cur442 = call ptr @dva_arena_current()
  %tag.valid443 = call i1 @dva_arena_validate_tag(ptr %arena.cur442, i64 %str.tag437)
  br i1 %tag.valid443, label %str_ok440, label %str_stale441

str_ok440:                                        ; preds = %str_stale441, %str_gen_check439, %choice.else149
  %concat.lhs444 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs445 = getelementptr inbounds { i64, ptr }, ptr %var.load434, i32 0, i32 0
  %concat.rhs446 = load i64, ptr %concat.rhs445, align 8
  %concat.rhs447 = and i64 %concat.rhs446, 281474976710655
  %str.tag448 = lshr i64 %concat.rhs446, 48
  %str.immortal449 = icmp eq i64 %str.tag448, 0
  br i1 %str.immortal449, label %str_ok451, label %str_gen_check450

str_stale441:                                     ; preds = %str_gen_check439
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok440

str_gen_check450:                                 ; preds = %str_ok440
  %arena.cur453 = call ptr @dva_arena_current()
  %tag.valid454 = call i1 @dva_arena_validate_tag(ptr %arena.cur453, i64 %str.tag448)
  br i1 %tag.valid454, label %str_ok451, label %str_stale452

str_ok451:                                        ; preds = %str_stale452, %str_gen_check450, %str_ok440
  %concat.rhs455 = getelementptr inbounds { i64, ptr }, ptr %var.load434, i32 0, i32 1
  %concat.rhs456 = load ptr, ptr %concat.rhs455, align 8
  %concat.sum.len457 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs436, i64 %concat.rhs447)
  %sum458 = extractvalue { i64, i1 } %concat.sum.len457, 0
  %ovf459 = extractvalue { i64, i1 } %concat.sum.len457, 1
  br i1 %ovf459, label %str_overflow_abort461, label %concat.sum.len460

str_stale452:                                     ; preds = %str_gen_check450
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok451

concat.sum.len460:                                ; preds = %str_overflow_abort461, %str_ok451
  %concat.tot.len462 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum458, i64 1)
  %sum463 = extractvalue { i64, i1 } %concat.tot.len462, 0
  %ovf464 = extractvalue { i64, i1 } %concat.tot.len462, 1
  br i1 %ovf464, label %str_overflow_abort466, label %concat.tot.len465

str_overflow_abort461:                            ; preds = %str_ok451
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len460

concat.tot.len465:                                ; preds = %str_overflow_abort466, %concat.sum.len460
  %arena.cur467 = call ptr @dva_arena_current()
  %concat.buf468 = call ptr @dva_arena_alloc(ptr %arena.cur467, i64 %sum463)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf468, ptr align 1 %concat.lhs444, i64 %concat.lhs436, i1 false)
  %concat.mid469 = getelementptr i8, ptr %concat.buf468, i64 %concat.lhs436
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid469, ptr align 1 %concat.rhs456, i64 %concat.rhs447, i1 false)
  %concat.nul470 = getelementptr i8, ptr %concat.buf468, i64 %sum458
  store i8 0, ptr %concat.nul470, align 1
  %arena.cur471 = call ptr @dva_arena_current()
  %concat.str472 = call ptr @dva_arena_alloc(ptr %arena.cur471, i64 16)
  %str.build.len.gep473 = getelementptr inbounds { i64, ptr }, ptr %concat.str472, i32 0, i32 0
  store i64 %sum458, ptr %str.build.len.gep473, align 8
  %str.build.data.gep474 = getelementptr inbounds { i64, ptr }, ptr %concat.str472, i32 0, i32 1
  store ptr %concat.buf468, ptr %str.build.data.gep474, align 8
  %concat.lhs475 = getelementptr inbounds { i64, ptr }, ptr %concat.str472, i32 0, i32 0
  %concat.lhs476 = load i64, ptr %concat.lhs475, align 8
  %concat.lhs477 = and i64 %concat.lhs476, 281474976710655
  %str.tag478 = lshr i64 %concat.lhs476, 48
  %str.immortal479 = icmp eq i64 %str.tag478, 0
  br i1 %str.immortal479, label %str_ok481, label %str_gen_check480

str_overflow_abort466:                            ; preds = %concat.sum.len460
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len465

str_gen_check480:                                 ; preds = %concat.tot.len465
  %arena.cur483 = call ptr @dva_arena_current()
  %tag.valid484 = call i1 @dva_arena_validate_tag(ptr %arena.cur483, i64 %str.tag478)
  br i1 %tag.valid484, label %str_ok481, label %str_stale482

str_ok481:                                        ; preds = %str_stale482, %str_gen_check480, %concat.tot.len465
  %concat.lhs485 = getelementptr inbounds { i64, ptr }, ptr %concat.str472, i32 0, i32 1
  %concat.lhs486 = load ptr, ptr %concat.lhs485, align 8
  %concat.rhs487 = load i64, ptr @str.16.struct, align 8
  %concat.rhs488 = and i64 %concat.rhs487, 281474976710655
  %str.tag489 = lshr i64 %concat.rhs487, 48
  %str.immortal490 = icmp eq i64 %str.tag489, 0
  br i1 %str.immortal490, label %str_ok492, label %str_gen_check491

str_stale482:                                     ; preds = %str_gen_check480
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok481

str_gen_check491:                                 ; preds = %str_ok481
  %arena.cur494 = call ptr @dva_arena_current()
  %tag.valid495 = call i1 @dva_arena_validate_tag(ptr %arena.cur494, i64 %str.tag489)
  br i1 %tag.valid495, label %str_ok492, label %str_stale493

str_ok492:                                        ; preds = %str_stale493, %str_gen_check491, %str_ok481
  %concat.rhs496 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %concat.sum.len497 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs477, i64 %concat.rhs488)
  %sum498 = extractvalue { i64, i1 } %concat.sum.len497, 0
  %ovf499 = extractvalue { i64, i1 } %concat.sum.len497, 1
  br i1 %ovf499, label %str_overflow_abort501, label %concat.sum.len500

str_stale493:                                     ; preds = %str_gen_check491
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok492

concat.sum.len500:                                ; preds = %str_overflow_abort501, %str_ok492
  %concat.tot.len502 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum498, i64 1)
  %sum503 = extractvalue { i64, i1 } %concat.tot.len502, 0
  %ovf504 = extractvalue { i64, i1 } %concat.tot.len502, 1
  br i1 %ovf504, label %str_overflow_abort506, label %concat.tot.len505

str_overflow_abort501:                            ; preds = %str_ok492
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len500

concat.tot.len505:                                ; preds = %str_overflow_abort506, %concat.sum.len500
  %arena.cur507 = call ptr @dva_arena_current()
  %concat.buf508 = call ptr @dva_arena_alloc(ptr %arena.cur507, i64 %sum503)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf508, ptr align 1 %concat.lhs486, i64 %concat.lhs477, i1 false)
  %concat.mid509 = getelementptr i8, ptr %concat.buf508, i64 %concat.lhs477
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid509, ptr align 1 %concat.rhs496, i64 %concat.rhs488, i1 false)
  %concat.nul510 = getelementptr i8, ptr %concat.buf508, i64 %sum498
  store i8 0, ptr %concat.nul510, align 1
  %arena.cur511 = call ptr @dva_arena_current()
  %concat.str512 = call ptr @dva_arena_alloc(ptr %arena.cur511, i64 16)
  %str.build.len.gep513 = getelementptr inbounds { i64, ptr }, ptr %concat.str512, i32 0, i32 0
  store i64 %sum498, ptr %str.build.len.gep513, align 8
  %str.build.data.gep514 = getelementptr inbounds { i64, ptr }, ptr %concat.str512, i32 0, i32 1
  store ptr %concat.buf508, ptr %str.build.data.gep514, align 8
  %var.load515 = load i64, ptr %var.num, align 8
  %arena.cur516 = call ptr @dva_arena_current()
  %to_str.buf517 = call ptr @dva_arena_alloc(ptr %arena.cur516, i64 32)
  %to_str.n518 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf517, i64 32, ptr @dva_fmt_i64, i64 %var.load515)
  %to_str.len519 = zext i32 %to_str.n518 to i64
  %arena.cur520 = call ptr @dva_arena_current()
  %to_str.res521 = call ptr @dva_arena_alloc(ptr %arena.cur520, i64 16)
  %str.build.len.gep522 = getelementptr inbounds { i64, ptr }, ptr %to_str.res521, i32 0, i32 0
  store i64 %to_str.len519, ptr %str.build.len.gep522, align 8
  %str.build.data.gep523 = getelementptr inbounds { i64, ptr }, ptr %to_str.res521, i32 0, i32 1
  store ptr %to_str.buf517, ptr %str.build.data.gep523, align 8
  %concat.lhs524 = getelementptr inbounds { i64, ptr }, ptr %concat.str512, i32 0, i32 0
  %concat.lhs525 = load i64, ptr %concat.lhs524, align 8
  %concat.lhs526 = and i64 %concat.lhs525, 281474976710655
  %str.tag527 = lshr i64 %concat.lhs525, 48
  %str.immortal528 = icmp eq i64 %str.tag527, 0
  br i1 %str.immortal528, label %str_ok530, label %str_gen_check529

str_overflow_abort506:                            ; preds = %concat.sum.len500
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len505

str_gen_check529:                                 ; preds = %concat.tot.len505
  %arena.cur532 = call ptr @dva_arena_current()
  %tag.valid533 = call i1 @dva_arena_validate_tag(ptr %arena.cur532, i64 %str.tag527)
  br i1 %tag.valid533, label %str_ok530, label %str_stale531

str_ok530:                                        ; preds = %str_stale531, %str_gen_check529, %concat.tot.len505
  %concat.lhs534 = getelementptr inbounds { i64, ptr }, ptr %concat.str512, i32 0, i32 1
  %concat.lhs535 = load ptr, ptr %concat.lhs534, align 8
  %concat.rhs536 = getelementptr inbounds { i64, ptr }, ptr %to_str.res521, i32 0, i32 0
  %concat.rhs537 = load i64, ptr %concat.rhs536, align 8
  %concat.rhs538 = and i64 %concat.rhs537, 281474976710655
  %str.tag539 = lshr i64 %concat.rhs537, 48
  %str.immortal540 = icmp eq i64 %str.tag539, 0
  br i1 %str.immortal540, label %str_ok542, label %str_gen_check541

str_stale531:                                     ; preds = %str_gen_check529
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok530

str_gen_check541:                                 ; preds = %str_ok530
  %arena.cur544 = call ptr @dva_arena_current()
  %tag.valid545 = call i1 @dva_arena_validate_tag(ptr %arena.cur544, i64 %str.tag539)
  br i1 %tag.valid545, label %str_ok542, label %str_stale543

str_ok542:                                        ; preds = %str_stale543, %str_gen_check541, %str_ok530
  %concat.rhs546 = getelementptr inbounds { i64, ptr }, ptr %to_str.res521, i32 0, i32 1
  %concat.rhs547 = load ptr, ptr %concat.rhs546, align 8
  %concat.sum.len548 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs526, i64 %concat.rhs538)
  %sum549 = extractvalue { i64, i1 } %concat.sum.len548, 0
  %ovf550 = extractvalue { i64, i1 } %concat.sum.len548, 1
  br i1 %ovf550, label %str_overflow_abort552, label %concat.sum.len551

str_stale543:                                     ; preds = %str_gen_check541
  %47 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok542

concat.sum.len551:                                ; preds = %str_overflow_abort552, %str_ok542
  %concat.tot.len553 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum549, i64 1)
  %sum554 = extractvalue { i64, i1 } %concat.tot.len553, 0
  %ovf555 = extractvalue { i64, i1 } %concat.tot.len553, 1
  br i1 %ovf555, label %str_overflow_abort557, label %concat.tot.len556

str_overflow_abort552:                            ; preds = %str_ok542
  %48 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len551

concat.tot.len556:                                ; preds = %str_overflow_abort557, %concat.sum.len551
  %arena.cur558 = call ptr @dva_arena_current()
  %concat.buf559 = call ptr @dva_arena_alloc(ptr %arena.cur558, i64 %sum554)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf559, ptr align 1 %concat.lhs535, i64 %concat.lhs526, i1 false)
  %concat.mid560 = getelementptr i8, ptr %concat.buf559, i64 %concat.lhs526
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid560, ptr align 1 %concat.rhs547, i64 %concat.rhs538, i1 false)
  %concat.nul561 = getelementptr i8, ptr %concat.buf559, i64 %sum549
  store i8 0, ptr %concat.nul561, align 1
  %arena.cur562 = call ptr @dva_arena_current()
  %concat.str563 = call ptr @dva_arena_alloc(ptr %arena.cur562, i64 16)
  %str.build.len.gep564 = getelementptr inbounds { i64, ptr }, ptr %concat.str563, i32 0, i32 0
  store i64 %sum549, ptr %str.build.len.gep564, align 8
  %str.build.data.gep565 = getelementptr inbounds { i64, ptr }, ptr %concat.str563, i32 0, i32 1
  store ptr %concat.buf559, ptr %str.build.data.gep565, align 8
  %concat.lhs566 = getelementptr inbounds { i64, ptr }, ptr %concat.str563, i32 0, i32 0
  %concat.lhs567 = load i64, ptr %concat.lhs566, align 8
  %concat.lhs568 = and i64 %concat.lhs567, 281474976710655
  %str.tag569 = lshr i64 %concat.lhs567, 48
  %str.immortal570 = icmp eq i64 %str.tag569, 0
  br i1 %str.immortal570, label %str_ok572, label %str_gen_check571

str_overflow_abort557:                            ; preds = %concat.sum.len551
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len556

str_gen_check571:                                 ; preds = %concat.tot.len556
  %arena.cur574 = call ptr @dva_arena_current()
  %tag.valid575 = call i1 @dva_arena_validate_tag(ptr %arena.cur574, i64 %str.tag569)
  br i1 %tag.valid575, label %str_ok572, label %str_stale573

str_ok572:                                        ; preds = %str_stale573, %str_gen_check571, %concat.tot.len556
  %concat.lhs576 = getelementptr inbounds { i64, ptr }, ptr %concat.str563, i32 0, i32 1
  %concat.lhs577 = load ptr, ptr %concat.lhs576, align 8
  %concat.rhs578 = load i64, ptr @str.17.struct, align 8
  %concat.rhs579 = and i64 %concat.rhs578, 281474976710655
  %str.tag580 = lshr i64 %concat.rhs578, 48
  %str.immortal581 = icmp eq i64 %str.tag580, 0
  br i1 %str.immortal581, label %str_ok583, label %str_gen_check582

str_stale573:                                     ; preds = %str_gen_check571
  %50 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok572

str_gen_check582:                                 ; preds = %str_ok572
  %arena.cur585 = call ptr @dva_arena_current()
  %tag.valid586 = call i1 @dva_arena_validate_tag(ptr %arena.cur585, i64 %str.tag580)
  br i1 %tag.valid586, label %str_ok583, label %str_stale584

str_ok583:                                        ; preds = %str_stale584, %str_gen_check582, %str_ok572
  %concat.rhs587 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %concat.sum.len588 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs568, i64 %concat.rhs579)
  %sum589 = extractvalue { i64, i1 } %concat.sum.len588, 0
  %ovf590 = extractvalue { i64, i1 } %concat.sum.len588, 1
  br i1 %ovf590, label %str_overflow_abort592, label %concat.sum.len591

str_stale584:                                     ; preds = %str_gen_check582
  %51 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok583

concat.sum.len591:                                ; preds = %str_overflow_abort592, %str_ok583
  %concat.tot.len593 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum589, i64 1)
  %sum594 = extractvalue { i64, i1 } %concat.tot.len593, 0
  %ovf595 = extractvalue { i64, i1 } %concat.tot.len593, 1
  br i1 %ovf595, label %str_overflow_abort597, label %concat.tot.len596

str_overflow_abort592:                            ; preds = %str_ok583
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len591

concat.tot.len596:                                ; preds = %str_overflow_abort597, %concat.sum.len591
  %arena.cur598 = call ptr @dva_arena_current()
  %concat.buf599 = call ptr @dva_arena_alloc(ptr %arena.cur598, i64 %sum594)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf599, ptr align 1 %concat.lhs577, i64 %concat.lhs568, i1 false)
  %concat.mid600 = getelementptr i8, ptr %concat.buf599, i64 %concat.lhs568
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid600, ptr align 1 %concat.rhs587, i64 %concat.rhs579, i1 false)
  %concat.nul601 = getelementptr i8, ptr %concat.buf599, i64 %sum589
  store i8 0, ptr %concat.nul601, align 1
  %arena.cur602 = call ptr @dva_arena_current()
  %concat.str603 = call ptr @dva_arena_alloc(ptr %arena.cur602, i64 16)
  %str.build.len.gep604 = getelementptr inbounds { i64, ptr }, ptr %concat.str603, i32 0, i32 0
  store i64 %sum589, ptr %str.build.len.gep604, align 8
  %str.build.data.gep605 = getelementptr inbounds { i64, ptr }, ptr %concat.str603, i32 0, i32 1
  store ptr %concat.buf599, ptr %str.build.data.gep605, align 8
  %var.load606 = load ptr, ptr %var.ext_part, align 8
  %concat.lhs607 = getelementptr inbounds { i64, ptr }, ptr %concat.str603, i32 0, i32 0
  %concat.lhs608 = load i64, ptr %concat.lhs607, align 8
  %concat.lhs609 = and i64 %concat.lhs608, 281474976710655
  %str.tag610 = lshr i64 %concat.lhs608, 48
  %str.immortal611 = icmp eq i64 %str.tag610, 0
  br i1 %str.immortal611, label %str_ok613, label %str_gen_check612

str_overflow_abort597:                            ; preds = %concat.sum.len591
  %53 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len596

str_gen_check612:                                 ; preds = %concat.tot.len596
  %arena.cur615 = call ptr @dva_arena_current()
  %tag.valid616 = call i1 @dva_arena_validate_tag(ptr %arena.cur615, i64 %str.tag610)
  br i1 %tag.valid616, label %str_ok613, label %str_stale614

str_ok613:                                        ; preds = %str_stale614, %str_gen_check612, %concat.tot.len596
  %concat.lhs617 = getelementptr inbounds { i64, ptr }, ptr %concat.str603, i32 0, i32 1
  %concat.lhs618 = load ptr, ptr %concat.lhs617, align 8
  %concat.rhs619 = getelementptr inbounds { i64, ptr }, ptr %var.load606, i32 0, i32 0
  %concat.rhs620 = load i64, ptr %concat.rhs619, align 8
  %concat.rhs621 = and i64 %concat.rhs620, 281474976710655
  %str.tag622 = lshr i64 %concat.rhs620, 48
  %str.immortal623 = icmp eq i64 %str.tag622, 0
  br i1 %str.immortal623, label %str_ok625, label %str_gen_check624

str_stale614:                                     ; preds = %str_gen_check612
  %54 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok613

str_gen_check624:                                 ; preds = %str_ok613
  %arena.cur627 = call ptr @dva_arena_current()
  %tag.valid628 = call i1 @dva_arena_validate_tag(ptr %arena.cur627, i64 %str.tag622)
  br i1 %tag.valid628, label %str_ok625, label %str_stale626

str_ok625:                                        ; preds = %str_stale626, %str_gen_check624, %str_ok613
  %concat.rhs629 = getelementptr inbounds { i64, ptr }, ptr %var.load606, i32 0, i32 1
  %concat.rhs630 = load ptr, ptr %concat.rhs629, align 8
  %concat.sum.len631 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs609, i64 %concat.rhs621)
  %sum632 = extractvalue { i64, i1 } %concat.sum.len631, 0
  %ovf633 = extractvalue { i64, i1 } %concat.sum.len631, 1
  br i1 %ovf633, label %str_overflow_abort635, label %concat.sum.len634

str_stale626:                                     ; preds = %str_gen_check624
  %55 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok625

concat.sum.len634:                                ; preds = %str_overflow_abort635, %str_ok625
  %concat.tot.len636 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum632, i64 1)
  %sum637 = extractvalue { i64, i1 } %concat.tot.len636, 0
  %ovf638 = extractvalue { i64, i1 } %concat.tot.len636, 1
  br i1 %ovf638, label %str_overflow_abort640, label %concat.tot.len639

str_overflow_abort635:                            ; preds = %str_ok625
  %56 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len634

concat.tot.len639:                                ; preds = %str_overflow_abort640, %concat.sum.len634
  %arena.cur641 = call ptr @dva_arena_current()
  %concat.buf642 = call ptr @dva_arena_alloc(ptr %arena.cur641, i64 %sum637)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf642, ptr align 1 %concat.lhs618, i64 %concat.lhs609, i1 false)
  %concat.mid643 = getelementptr i8, ptr %concat.buf642, i64 %concat.lhs609
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid643, ptr align 1 %concat.rhs630, i64 %concat.rhs621, i1 false)
  %concat.nul644 = getelementptr i8, ptr %concat.buf642, i64 %sum632
  store i8 0, ptr %concat.nul644, align 1
  %arena.cur645 = call ptr @dva_arena_current()
  %concat.str646 = call ptr @dva_arena_alloc(ptr %arena.cur645, i64 16)
  %str.build.len.gep647 = getelementptr inbounds { i64, ptr }, ptr %concat.str646, i32 0, i32 0
  store i64 %sum632, ptr %str.build.len.gep647, align 8
  %str.build.data.gep648 = getelementptr inbounds { i64, ptr }, ptr %concat.str646, i32 0, i32 1
  store ptr %concat.buf642, ptr %str.build.data.gep648, align 8
  br label %choice.exit150

str_overflow_abort640:                            ; preds = %concat.sum.len634
  %57 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len639

choice.then652:                                   ; preds = %choice.exit150
  %var.load654 = load ptr, ptr %var.cand, align 8
  store ptr %var.load654, ptr %"var.cand_path'", align 8
  br label %loop.exit.48

choice.exit653:                                   ; preds = %choice.exit150
  br label %loop.latch.48
}

define i64 @"fs::cmp_entries"(ptr %0, ptr %1, i64 %2, i1 %3) #1 {
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

choice.exit:                                      ; preds = %choice.next66, %choice.exit83, %choice.exit45, %choice.exit14, %choice.case
  %var.load100 = load i1, ptr %var.rev, align 1
  br i1 %var.load100, label %choice.then101, label %choice.else102

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
  %call.res71 = call ptr @"fs::ext"(ptr %fld.load70)
  store ptr %call.res71, ptr %var.ext1, align 8
  %var.load72 = load ptr, ptr %var.e2, align 8
  %fld.gep73 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load72, i32 0, i32 0
  %fld.load74 = load ptr, ptr %fld.gep73, align 8
  %call.res75 = call ptr @"fs::ext"(ptr %fld.load74)
  store ptr %call.res75, ptr %var.ext2, align 8
  %var.load76 = load ptr, ptr %var.ext1, align 8
  %var.load77 = load ptr, ptr %var.ext2, align 8
  %call.res78 = call i64 @"str::cmp"(ptr %var.load76, ptr %var.load77)
  store i64 %call.res78, ptr %var.cmp_ext, align 8
  %var.load79 = load i64, ptr %var.cmp_ext, align 8
  %cmptmp80 = icmp ne i64 %var.load79, 0
  br i1 %cmptmp80, label %choice.then81, label %choice.else82

choice.next66:                                    ; preds = %choice.next34
  %var.load93 = load ptr, ptr %var.e1, align 8
  %fld.gep94 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load93, i32 0, i32 0
  %fld.load95 = load ptr, ptr %fld.gep94, align 8
  %var.load96 = load ptr, ptr %var.e2, align 8
  %fld.gep97 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load96, i32 0, i32 0
  %fld.load98 = load ptr, ptr %fld.gep97, align 8
  %call.res99 = call i64 @"str::cmp"(ptr %fld.load95, ptr %fld.load98)
  store i64 %call.res99, ptr %"var.res'", align 8
  br label %choice.exit

choice.then81:                                    ; preds = %choice.case65
  %var.load84 = load i64, ptr %var.cmp_ext, align 8
  br label %choice.exit83

choice.else82:                                    ; preds = %choice.case65
  %var.load85 = load ptr, ptr %var.e1, align 8
  %fld.gep86 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load85, i32 0, i32 0
  %fld.load87 = load ptr, ptr %fld.gep86, align 8
  %var.load88 = load ptr, ptr %var.e2, align 8
  %fld.gep89 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load88, i32 0, i32 0
  %fld.load90 = load ptr, ptr %fld.gep89, align 8
  %call.res91 = call i64 @"str::cmp"(ptr %fld.load87, ptr %fld.load90)
  br label %choice.exit83

choice.exit83:                                    ; preds = %choice.else82, %choice.then81
  %choice.res92 = phi i64 [ %var.load84, %choice.then81 ], [ %call.res91, %choice.else82 ]
  store i64 %choice.res92, ptr %"var.res'", align 8
  br label %choice.exit

choice.then101:                                   ; preds = %choice.exit
  %var.load104 = load i64, ptr %"var.res'", align 8
  %subtmp = sub i64 0, %var.load104
  br label %choice.exit103

choice.else102:                                   ; preds = %choice.exit
  %var.load105 = load i64, ptr %"var.res'", align 8
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.else102, %choice.then101
  %choice.res106 = phi i64 [ %subtmp, %choice.then101 ], [ %var.load105, %choice.else102 ]
  ret i64 %choice.res106
}

declare i64 @"str::cmp"(ptr, ptr) #1

define ptr @"fs::list_dir_simple"(ptr %0) #1 {
entry:
  %var.dir_path = alloca ptr, align 8
  store ptr %0, ptr %var.dir_path, align 8
  %var.load = load ptr, ptr %var.dir_path, align 8
  %call.res = call ptr @"fs::list_dir"(ptr %var.load, i1 false, i64 0, i1 false)
  ret ptr %call.res
}

define ptr @"fs::list_dir"(ptr %0, i1 %1, i64 %2, i1 %3) #1 {
entry:
  %var._876 = alloca ptr, align 8
  %var._i875 = alloca i64, align 8
  %var.file_item = alloca ptr, align 8
  %loop.step.61 = alloca i64, align 8
  %loop.idx.61 = alloca i64, align 8
  %var._820 = alloca ptr, align 8
  %var._i819 = alloca i64, align 8
  %var.dir_item = alloca ptr, align 8
  %loop.step.60 = alloca i64, align 8
  %loop.idx.60 = alloca i64, align 8
  %var.f2 = alloca ptr, align 8
  %var.f1 = alloca ptr, align 8
  %var._463 = alloca i64, align 8
  %var._i462 = alloca i64, align 8
  %var.j456 = alloca i64, align 8
  %loop.step.57 = alloca i64, align 8
  %loop.idx.57 = alloca i64, align 8
  %var._453 = alloca i64, align 8
  %var._i452 = alloca i64, align 8
  %loop.step.56 = alloca i64, align 8
  %loop.idx.56 = alloca i64, align 8
  %var.nf = alloca i64, align 8
  %var.d2 = alloca ptr, align 8
  %var.d1 = alloca ptr, align 8
  %var._167 = alloca i64, align 8
  %var._i166 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.53 = alloca i64, align 8
  %loop.idx.53 = alloca i64, align 8
  %var._161 = alloca i64, align 8
  %var._i160 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.52 = alloca i64, align 8
  %loop.idx.52 = alloca i64, align 8
  %var.nd = alloca i64, align 8
  %var.entry = alloca ptr, align 8
  %var.perms = alloca ptr, align 8
  %var.fmt_sz = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._55 = alloca ptr, align 8
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
  %loop.step.49 = alloca i64, align 8
  %loop.idx.49 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.header.49:                                   ; preds = %loop.latch.49, %a.after
  %counter.load = load i64, ptr %loop.idx.49, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len24
  br i1 %loop.cond, label %loop.body.49, label %loop.exit.nat.49

loop.body.49:                                     ; preds = %loop.header.49
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.49, align 8
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
  br i1 %nottmp, label %and.50.then, label %and.50.else

loop.exit.nat.49:                                 ; preds = %loop.header.49
  br label %loop.exit.49

loop.latch.49:                                    ; preds = %choice.exit95, %choice.then
  %step.val = load i64, ptr %loop.step.49, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.exit.49:                                     ; preds = %loop.exit.nat.49
  %var.load142 = load ptr, ptr %var.dirs, align 8
  %a.load143 = load ptr, ptr %var.dirs, align 8
  %a.null144 = icmp eq ptr %a.load143, null
  br i1 %a.null144, label %a.create145, label %a.after146

and.50.then:                                      ; preds = %loop.body.49
  %var.load28 = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %str.tag = lshr i64 %str.len.query29, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.50.else:                                      ; preds = %loop.body.49
  br label %and.50.exit

and.50.exit:                                      ; preds = %and.50.else, %str_ok
  %and.50.phi = phi i1 [ %cmptmp, %str_ok ], [ %nottmp, %and.50.else ]
  br i1 %and.50.phi, label %and.51.then, label %and.51.else

str_gen_check:                                    ; preds = %and.50.then
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.50.then
  %cmptmp = icmp sgt i64 %str.len.query30, 0
  br label %and.50.exit

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.51.then:                                      ; preds = %and.50.exit
  %var.load32 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %str.tag35 = lshr i64 %s.read.len33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

and.51.else:                                      ; preds = %and.50.exit
  br label %and.51.exit

and.51.exit:                                      ; preds = %and.51.else, %idx_ok
  %and.51.phi = phi i1 [ %cmptmp43, %idx_ok ], [ %and.50.phi, %and.51.else ]
  br i1 %and.51.phi, label %choice.then, label %choice.exit

str_gen_check37:                                  ; preds = %and.51.then
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %and.51.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %s.read.data42 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale39:                                      ; preds = %str_gen_check37
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

idx_big_check:                                    ; preds = %str_ok38
  %idx.big = icmp sge i64 0, %s.read.len34
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data42, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp43 = icmp eq i64 %s.byte.val, 46
  br label %and.51.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok38
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.51.exit
  br label %loop.latch.49

choice.exit:                                      ; preds = %and.51.exit
  %var.load44 = load ptr, ptr %var.dir_path, align 8
  %var.load45 = load ptr, ptr %var.name, align 8
  %call.res46 = call ptr @"fs::join"(ptr %var.load44, ptr %var.load45)
  store ptr %call.res46, ptr %var.full_path, align 8
  %var.load47 = load ptr, ptr %var.full_path, align 8
  %call.res48 = call ptr @"fs::stat"(ptr %var.load47)
  store ptr %call.res48, ptr %var.meta, align 8
  %var.load49 = load ptr, ptr %var.e, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load49, i32 0, i32 1
  %fld.load51 = load i1, ptr %fld.gep50, align 1
  store i1 %fld.load51, ptr %"var.is_d'", align 1
  store i1 false, ptr %"var.is_x'", align 1
  store i64 0, ptr %"var.size'", align 8
  store i64 0, ptr %"var.mtime'", align 8
  store i64 0, ptr %"var.mode'", align 8
  %var.load52 = load ptr, ptr %var.meta, align 8
  %niche.ne.null = icmp ne ptr %var.load52, null
  br i1 %niche.ne.null, label %choice.then53, label %choice.exit54

choice.then53:                                    ; preds = %choice.exit
  store ptr %var.load52, ptr %var._55, align 8
  store ptr %var.load52, ptr %var.m, align 8
  %var.load56 = load ptr, ptr %var.m, align 8
  %fld.gep57 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load56, i32 0, i32 0
  %fld.load58 = load i64, ptr %fld.gep57, align 8
  store i64 %fld.load58, ptr %"var.size'", align 8
  %var.load59 = load ptr, ptr %var.m, align 8
  %fld.gep60 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load59, i32 0, i32 2
  %fld.load61 = load i64, ptr %fld.gep60, align 8
  store i64 %fld.load61, ptr %"var.mtime'", align 8
  %var.load62 = load ptr, ptr %var.m, align 8
  %fld.gep63 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load62, i32 0, i32 1
  %fld.load64 = load i64, ptr %fld.gep63, align 8
  store i64 %fld.load64, ptr %"var.mode'", align 8
  %var.load65 = load ptr, ptr %var.m, align 8
  %fld.gep66 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load65, i32 0, i32 5
  %fld.load67 = load i1, ptr %fld.gep66, align 1
  store i1 %fld.load67, ptr %"var.is_d'", align 1
  %var.load68 = load ptr, ptr %var.m, align 8
  %fld.gep69 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load68, i32 0, i32 8
  %fld.load70 = load i1, ptr %fld.gep69, align 1
  store i1 %fld.load70, ptr %"var.is_x'", align 1
  br label %choice.exit54

choice.exit54:                                    ; preds = %choice.then53, %choice.exit
  %var.load71 = load i64, ptr %"var.size'", align 8
  %var.load72 = load i1, ptr %"var.is_d'", align 1
  %call.res73 = call ptr @"fs::format_size"(i64 %var.load71, i1 %var.load72)
  store ptr %call.res73, ptr %var.fmt_sz, align 8
  %var.load74 = load i64, ptr %"var.mode'", align 8
  %var.load75 = load i1, ptr %"var.is_d'", align 1
  %call.res76 = call ptr @"fs::format_perms"(i64 %var.load74, i1 %var.load75)
  store ptr %call.res76, ptr %var.perms, align 8
  %var.load77 = load ptr, ptr %var.name, align 8
  %var.load78 = load i1, ptr %"var.is_d'", align 1
  %var.load79 = load i1, ptr %"var.is_x'", align 1
  %var.load80 = load i64, ptr %"var.size'", align 8
  %var.load81 = load ptr, ptr %var.fmt_sz, align 8
  %var.load82 = load ptr, ptr %var.perms, align 8
  %var.load83 = load i64, ptr %"var.mtime'", align 8
  %var.load84 = load i64, ptr %"var.mode'", align 8
  %arena.cur85 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load77, ptr %rec.fld, align 8
  %rec.fld86 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load78, ptr %rec.fld86, align 1
  %rec.fld87 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load79, ptr %rec.fld87, align 1
  %rec.fld88 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load80, ptr %rec.fld88, align 8
  %rec.fld89 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store ptr %var.load81, ptr %rec.fld89, align 8
  %rec.fld90 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store ptr %var.load82, ptr %rec.fld90, align 8
  %rec.fld91 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %var.load83, ptr %rec.fld91, align 8
  %rec.fld92 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %var.load84, ptr %rec.fld92, align 8
  store ptr %rec.alloc, ptr %var.entry, align 8
  %var.load93 = load i1, ptr %"var.is_d'", align 1
  br i1 %var.load93, label %choice.then94, label %choice.else

choice.then94:                                    ; preds = %choice.exit54
  %var.load96 = load ptr, ptr %var.entry, align 8
  %a.load97 = load ptr, ptr %var.dirs, align 8
  %a.null98 = icmp eq ptr %a.load97, null
  br i1 %a.null98, label %a.create99, label %a.after100

choice.else:                                      ; preds = %choice.exit54
  %var.load113 = load ptr, ptr %var.entry, align 8
  %a.load114 = load ptr, ptr %var.file_list, align 8
  %a.null115 = icmp eq ptr %a.load114, null
  br i1 %a.null115, label %a.create116, label %a.after117

choice.exit95:                                    ; preds = %a.store128, %a.store
  br label %loop.latch.49

a.create99:                                       ; preds = %choice.then94
  %arena.cur101 = call ptr @dva_arena_current()
  %a.create102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 24)
  %arena.cur103 = call ptr @dva_arena_current()
  %a.buf104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 128)
  %a.len.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 0
  store i64 0, ptr %a.len.gep105, align 8
  %a.data.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 1
  store ptr %a.buf104, ptr %a.data.gep106, align 8
  %a.cap.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 2
  store i64 16, ptr %a.cap.gep107, align 8
  store ptr %a.create102, ptr %var.dirs, align 8
  br label %a.after100

a.after100:                                       ; preds = %a.create99, %choice.then94
  %a.load2108 = load ptr, ptr %var.dirs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after100
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 0
  %a.len109 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 2
  %a.cap110 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len109, %a.cap110
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2108)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 1
  %a.cur.data111 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 0
  %a.cur.len112 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data111, i64 %a.cur.len112
  %slot.p2i = ptrtoint ptr %var.load96 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len112, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit95

a.create116:                                      ; preds = %choice.else
  %arena.cur118 = call ptr @dva_arena_current()
  %a.create119 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 24)
  %arena.cur120 = call ptr @dva_arena_current()
  %a.buf121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 128)
  %a.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create119, i32 0, i32 0
  store i64 0, ptr %a.len.gep122, align 8
  %a.data.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create119, i32 0, i32 1
  store ptr %a.buf121, ptr %a.data.gep123, align 8
  %a.cap.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create119, i32 0, i32 2
  store i64 16, ptr %a.cap.gep124, align 8
  store ptr %a.create119, ptr %var.file_list, align 8
  br label %a.after117

a.after117:                                       ; preds = %a.create116, %choice.else
  %a.load2125 = load ptr, ptr %var.file_list, align 8
  br label %a.check126

a.check126:                                       ; preds = %a.after117
  %a.len129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2125, i32 0, i32 0
  %a.len130 = load i64, ptr %a.len129, align 8
  %a.cap131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2125, i32 0, i32 2
  %a.cap132 = load i64, ptr %a.cap131, align 8
  %a.needs.grow133 = icmp eq i64 %a.len130, %a.cap132
  br i1 %a.needs.grow133, label %a.grow127, label %a.store128

a.grow127:                                        ; preds = %a.check126
  call void @dva_array_grow(ptr %a.load2125)
  br label %a.store128

a.store128:                                       ; preds = %a.grow127, %a.check126
  %a.cur.data134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2125, i32 0, i32 1
  %a.cur.data135 = load ptr, ptr %a.cur.data134, align 8
  %a.cur.len136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2125, i32 0, i32 0
  %a.cur.len137 = load i64, ptr %a.cur.len136, align 8
  %a.elem.gep138 = getelementptr i64, ptr %a.cur.data135, i64 %a.cur.len137
  %slot.p2i139 = ptrtoint ptr %var.load113 to i64
  store i64 %slot.p2i139, ptr %a.elem.gep138, align 8
  %a.next.len140 = add i64 %a.cur.len137, 1
  %b.len.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2125, i32 0, i32 0
  store i64 %a.next.len140, ptr %b.len.gep141, align 8
  br label %choice.exit95

a.create145:                                      ; preds = %loop.exit.49
  %arena.cur147 = call ptr @dva_arena_current()
  %a.create148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 24)
  %arena.cur149 = call ptr @dva_arena_current()
  %a.buf150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 128)
  %a.len.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 0
  store i64 0, ptr %a.len.gep151, align 8
  %a.data.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 1
  store ptr %a.buf150, ptr %a.data.gep152, align 8
  %a.cap.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 2
  store i64 16, ptr %a.cap.gep153, align 8
  store ptr %a.create148, ptr %var.dirs, align 8
  br label %a.after146

a.after146:                                       ; preds = %a.create145, %loop.exit.49
  %a.load2154 = load ptr, ptr %var.dirs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2154, i32 0, i32 0
  %a.len.query155 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query155, ptr %var.nd, align 8
  %var.load156 = load i64, ptr %var.nd, align 8
  store i64 0, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.header.52:                                   ; preds = %loop.latch.52, %a.after146
  %counter.load157 = load i64, ptr %loop.idx.52, align 8
  %loop.cond158 = icmp slt i64 %counter.load157, %var.load156
  br i1 %loop.cond158, label %loop.body.52, label %loop.exit.nat.52

loop.body.52:                                     ; preds = %loop.header.52
  %loop.rel.i159 = sub i64 %counter.load157, 0
  store i64 1, ptr %loop.step.52, align 8
  store i64 %loop.rel.i159, ptr %var._i160, align 8
  store i64 %counter.load157, ptr %var._161, align 8
  store i64 %counter.load157, ptr %var.i, align 8
  %var.load162 = load i64, ptr %var.nd, align 8
  %subtmp = sub i64 %var.load162, 1
  store i64 0, ptr %loop.idx.53, align 8
  %cycle.prev.u = load i64, ptr %var._161, align 8
  %cycle.prev.i = load i64, ptr %var._i160, align 8
  br label %loop.header.53

loop.exit.nat.52:                                 ; preds = %loop.header.52
  br label %loop.exit.52

loop.latch.52:                                    ; preds = %loop.exit.53
  %step.val431 = load i64, ptr %loop.step.52, align 8
  %loop.next432 = add i64 %counter.load157, %step.val431
  store i64 %loop.next432, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.exit.52:                                     ; preds = %loop.exit.nat.52
  %var.load433 = load ptr, ptr %var.file_list, align 8
  %a.load434 = load ptr, ptr %var.file_list, align 8
  %a.null435 = icmp eq ptr %a.load434, null
  br i1 %a.null435, label %a.create436, label %a.after437

loop.header.53:                                   ; preds = %loop.latch.53, %loop.body.52
  %counter.load163 = load i64, ptr %loop.idx.53, align 8
  %loop.cond164 = icmp slt i64 %counter.load163, %subtmp
  br i1 %loop.cond164, label %loop.body.53, label %loop.exit.nat.53

loop.body.53:                                     ; preds = %loop.header.53
  %loop.rel.i165 = sub i64 %counter.load163, 0
  store i64 1, ptr %loop.step.53, align 8
  store i64 %loop.rel.i165, ptr %var._i166, align 8
  store i64 %counter.load163, ptr %var._167, align 8
  store i64 %counter.load163, ptr %var.j, align 8
  %var.load168 = load ptr, ptr %var.dirs, align 8
  %a.load169 = load ptr, ptr %var.dirs, align 8
  %a.null170 = icmp eq ptr %a.load169, null
  br i1 %a.null170, label %a.create171, label %a.after172

loop.exit.nat.53:                                 ; preds = %loop.header.53
  br label %loop.exit.53

loop.latch.53:                                    ; preds = %choice.exit331
  %step.val429 = load i64, ptr %loop.step.53, align 8
  %loop.next430 = add i64 %counter.load163, %step.val429
  store i64 %loop.next430, ptr %loop.idx.53, align 8
  br label %loop.header.53

loop.exit.53:                                     ; preds = %loop.exit.nat.53
  store i64 %cycle.prev.u, ptr %var._161, align 8
  store i64 %cycle.prev.i, ptr %var._i160, align 8
  br label %loop.latch.52

a.create171:                                      ; preds = %loop.body.53
  %arena.cur173 = call ptr @dva_arena_current()
  %a.create174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 24)
  %arena.cur175 = call ptr @dva_arena_current()
  %a.buf176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 128)
  %a.len.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 0
  store i64 0, ptr %a.len.gep177, align 8
  %a.data.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 1
  store ptr %a.buf176, ptr %a.data.gep178, align 8
  %a.cap.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 2
  store i64 16, ptr %a.cap.gep179, align 8
  store ptr %a.create174, ptr %var.dirs, align 8
  br label %a.after172

a.after172:                                       ; preds = %a.create171, %loop.body.53
  %a.load2180 = load ptr, ptr %var.dirs, align 8
  %var.load181 = load i64, ptr %var.j, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2180, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after172
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 0
  %a.rd.len182 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load181, 0
  %a.rd.lt = icmp slt i64 %var.load181, %a.rd.len182
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 1
  %a.rd.data183 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data183, i64 %var.load181
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after172
  %arena.cur184 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 733, ptr %err.line.gep, align 8
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
  %arena.cur185 = call ptr @dva_arena_current()
  %err.alloc186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 56)
  %err.code.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 0
  store i64 4011, ptr %err.code.gep187, align 8
  %err.msg.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep188, align 8
  %err.file.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep189, align 8
  %err.line.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 3
  store i64 733, ptr %err.line.gep190, align 8
  %err.col.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 4
  store i64 22, ptr %err.col.gep191, align 8
  %err.ctx.gep192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 5
  %err.ctx0.gep193 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep192, i32 0, i32 0
  store i64 %var.load181, ptr %err.ctx0.gep193, align 8
  %err.ctx1.gep194 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep192, i32 0, i32 1
  store i64 %a.rd.len182, ptr %err.ctx1.gep194, align 8
  %err.p2i195 = ptrtoint ptr %err.alloc186 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i195, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.54, label %unwrap.abort.54

unwrap.pos.54:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.d1, align 8
  %var.load221 = load ptr, ptr %var.dirs, align 8
  %a.load222 = load ptr, ptr %var.dirs, align 8
  %a.null223 = icmp eq ptr %a.load222, null
  br i1 %a.null223, label %a.create224, label %a.after225

unwrap.abort.54:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep196, align 8
  %err.msg.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep197, align 8
  %err.file.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep198, align 8
  %err.line.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep199, align 8
  %err.col.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep200, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len201 = load i64, ptr %err.msg.len, align 8
  %err.msg.len202 = and i64 %err.msg.len201, 281474976710655
  %str.tag203 = lshr i64 %err.msg.len201, 48
  %str.immortal204 = icmp eq i64 %str.tag203, 0
  br i1 %str.immortal204, label %str_ok206, label %str_gen_check205

str_gen_check205:                                 ; preds = %unwrap.abort.54
  %arena.cur208 = call ptr @dva_arena_current()
  %tag.valid209 = call i1 @dva_arena_validate_tag(ptr %arena.cur208, i64 %str.tag203)
  br i1 %tag.valid209, label %str_ok206, label %str_stale207

str_ok206:                                        ; preds = %str_stale207, %str_gen_check205, %unwrap.abort.54
  %err.msg.len32 = trunc i64 %err.msg.len202 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data210 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len211 = load i64, ptr %err.file.len, align 8
  %err.file.len212 = and i64 %err.file.len211, 281474976710655
  %str.tag213 = lshr i64 %err.file.len211, 48
  %str.immortal214 = icmp eq i64 %str.tag213, 0
  br i1 %str.immortal214, label %str_ok216, label %str_gen_check215

str_stale207:                                     ; preds = %str_gen_check205
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok206

str_gen_check215:                                 ; preds = %str_ok206
  %arena.cur218 = call ptr @dva_arena_current()
  %tag.valid219 = call i1 @dva_arena_validate_tag(ptr %arena.cur218, i64 %str.tag213)
  br i1 %tag.valid219, label %str_ok216, label %str_stale217

str_ok216:                                        ; preds = %str_stale217, %str_gen_check215, %str_ok206
  %err.file.len32 = trunc i64 %err.file.len212 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data220 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale217:                                     ; preds = %str_gen_check215
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok216

err.thread:                                       ; preds = %str_ok216
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok216
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data210, i32 %err.file.len32, ptr %err.file.data220, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create224:                                      ; preds = %unwrap.pos.54
  %arena.cur226 = call ptr @dva_arena_current()
  %a.create227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 24)
  %arena.cur228 = call ptr @dva_arena_current()
  %a.buf229 = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 128)
  %a.len.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create227, i32 0, i32 0
  store i64 0, ptr %a.len.gep230, align 8
  %a.data.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create227, i32 0, i32 1
  store ptr %a.buf229, ptr %a.data.gep231, align 8
  %a.cap.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create227, i32 0, i32 2
  store i64 16, ptr %a.cap.gep232, align 8
  store ptr %a.create227, ptr %var.dirs, align 8
  br label %a.after225

a.after225:                                       ; preds = %a.create224, %unwrap.pos.54
  %a.load2233 = load ptr, ptr %var.dirs, align 8
  %var.load234 = load i64, ptr %var.j, align 8
  %addtmp = add i64 %var.load234, 1
  %a.rd.nonnull235 = icmp ne ptr %a.load2233, null
  br i1 %a.rd.nonnull235, label %a.rd.check236, label %a.rd.err.null238

a.rd.check236:                                    ; preds = %a.after225
  %a.rd.len241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2233, i32 0, i32 0
  %a.rd.len242 = load i64, ptr %a.rd.len241, align 8
  %a.rd.ge0243 = icmp sge i64 %addtmp, 0
  %a.rd.lt244 = icmp slt i64 %addtmp, %a.rd.len242
  %a.rd.bounds245 = and i1 %a.rd.ge0243, %a.rd.lt244
  br i1 %a.rd.bounds245, label %a.rd.ok237, label %a.rd.err.oob239

a.rd.ok237:                                       ; preds = %a.rd.check236
  %a.rd.data246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2233, i32 0, i32 1
  %a.rd.data247 = load ptr, ptr %a.rd.data246, align 8
  %a.rd.elem.gep248 = getelementptr i64, ptr %a.rd.data247, i64 %addtmp
  %a.rd.elem249 = load i64, ptr %a.rd.elem.gep248, align 8
  br label %a.rd.done240

a.rd.err.null238:                                 ; preds = %a.after225
  %arena.cur250 = call ptr @dva_arena_current()
  %err.alloc251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 56)
  %err.code.gep252 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 0
  store i64 4011, ptr %err.code.gep252, align 8
  %err.msg.gep253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep253, align 8
  %err.file.gep254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep254, align 8
  %err.line.gep255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 3
  store i64 734, ptr %err.line.gep255, align 8
  %err.col.gep256 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 4
  store i64 26, ptr %err.col.gep256, align 8
  %err.ctx.gep257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 5
  %err.ctx0.gep258 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep257, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep258, align 8
  %err.ctx1.gep259 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep257, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep259, align 8
  %err.p2i260 = ptrtoint ptr %err.alloc251 to i64
  br label %a.rd.done240

a.rd.err.oob239:                                  ; preds = %a.rd.check236
  %arena.cur261 = call ptr @dva_arena_current()
  %err.alloc262 = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 56)
  %err.code.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 0
  store i64 4011, ptr %err.code.gep263, align 8
  %err.msg.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep264, align 8
  %err.file.gep265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep265, align 8
  %err.line.gep266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 3
  store i64 734, ptr %err.line.gep266, align 8
  %err.col.gep267 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 4
  store i64 26, ptr %err.col.gep267, align 8
  %err.ctx.gep268 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 5
  %err.ctx0.gep269 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep268, i32 0, i32 0
  store i64 %addtmp, ptr %err.ctx0.gep269, align 8
  %err.ctx1.gep270 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep268, i32 0, i32 1
  store i64 %a.rd.len242, ptr %err.ctx1.gep270, align 8
  %err.p2i271 = ptrtoint ptr %err.alloc262 to i64
  br label %a.rd.done240

a.rd.done240:                                     ; preds = %a.rd.err.oob239, %a.rd.err.null238, %a.rd.ok237
  %a.rd.tag272 = phi i1 [ true, %a.rd.ok237 ], [ false, %a.rd.err.null238 ], [ false, %a.rd.err.oob239 ]
  %a.rd.pay273 = phi i64 [ %a.rd.elem249, %a.rd.ok237 ], [ %err.p2i260, %a.rd.err.null238 ], [ %err.p2i271, %a.rd.err.oob239 ]
  %ram.tag274 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag272, 0
  %ram.pay275 = insertvalue { i1, i64 } %ram.tag274, i64 %a.rd.pay273, 1
  %unwrap.is_pos276 = extractvalue { i1, i64 } %ram.pay275, 0
  br i1 %unwrap.is_pos276, label %unwrap.pos.55, label %unwrap.abort.55

unwrap.pos.55:                                    ; preds = %a.rd.done240
  %unwrap.pay.pos322 = extractvalue { i1, i64 } %ram.pay275, 1
  %pay.ptr323 = inttoptr i64 %unwrap.pay.pos322 to ptr
  store ptr %pay.ptr323, ptr %var.d2, align 8
  %var.load324 = load ptr, ptr %var.d1, align 8
  %var.load325 = load ptr, ptr %var.d2, align 8
  %var.load326 = load i64, ptr %var.sort_mode, align 8
  %var.load327 = load i1, ptr %var.sort_rev, align 1
  %call.res328 = call i64 @"fs::cmp_entries"(ptr %var.load324, ptr %var.load325, i64 %var.load326, i1 %var.load327)
  %cmptmp329 = icmp sgt i64 %call.res328, 0
  br i1 %cmptmp329, label %choice.then330, label %choice.exit331

unwrap.abort.55:                                  ; preds = %a.rd.done240
  %unwrap.pay.abort277 = extractvalue { i1, i64 } %ram.pay275, 1
  %err.ptr278 = inttoptr i64 %unwrap.pay.abort277 to ptr
  %err.code.gep279 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr278, i32 0, i32 0
  %err.code280 = load i64, ptr %err.code.gep279, align 8
  %err.msg.gep281 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr278, i32 0, i32 1
  %err.msg.struct282 = load ptr, ptr %err.msg.gep281, align 8
  %err.file.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr278, i32 0, i32 2
  %err.file.struct284 = load ptr, ptr %err.file.gep283, align 8
  %err.line.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr278, i32 0, i32 3
  %err.line286 = load i64, ptr %err.line.gep285, align 8
  %err.col.gep287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr278, i32 0, i32 4
  %err.col288 = load i64, ptr %err.col.gep287, align 8
  %err.msg.len289 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct282, i32 0, i32 0
  %err.msg.len290 = load i64, ptr %err.msg.len289, align 8
  %err.msg.len291 = and i64 %err.msg.len290, 281474976710655
  %str.tag292 = lshr i64 %err.msg.len290, 48
  %str.immortal293 = icmp eq i64 %str.tag292, 0
  br i1 %str.immortal293, label %str_ok295, label %str_gen_check294

str_gen_check294:                                 ; preds = %unwrap.abort.55
  %arena.cur297 = call ptr @dva_arena_current()
  %tag.valid298 = call i1 @dva_arena_validate_tag(ptr %arena.cur297, i64 %str.tag292)
  br i1 %tag.valid298, label %str_ok295, label %str_stale296

str_ok295:                                        ; preds = %str_stale296, %str_gen_check294, %unwrap.abort.55
  %err.msg.len32299 = trunc i64 %err.msg.len291 to i32
  %err.msg.data300 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct282, i32 0, i32 1
  %err.msg.data301 = load ptr, ptr %err.msg.data300, align 8
  %err.file.len302 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct284, i32 0, i32 0
  %err.file.len303 = load i64, ptr %err.file.len302, align 8
  %err.file.len304 = and i64 %err.file.len303, 281474976710655
  %str.tag305 = lshr i64 %err.file.len303, 48
  %str.immortal306 = icmp eq i64 %str.tag305, 0
  br i1 %str.immortal306, label %str_ok308, label %str_gen_check307

str_stale296:                                     ; preds = %str_gen_check294
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok295

str_gen_check307:                                 ; preds = %str_ok295
  %arena.cur310 = call ptr @dva_arena_current()
  %tag.valid311 = call i1 @dva_arena_validate_tag(ptr %arena.cur310, i64 %str.tag305)
  br i1 %tag.valid311, label %str_ok308, label %str_stale309

str_ok308:                                        ; preds = %str_stale309, %str_gen_check307, %str_ok295
  %err.file.len32312 = trunc i64 %err.file.len304 to i32
  %err.file.data313 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct284, i32 0, i32 1
  %err.file.data314 = load ptr, ptr %err.file.data313, align 8
  %err.thread.rec315 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread316 = icmp ne ptr %err.thread.rec315, null
  br i1 %err.is.thread316, label %err.thread317, label %err.normal318

str_stale309:                                     ; preds = %str_gen_check307
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok308

err.thread317:                                    ; preds = %str_ok308
  %err.haserr.gep319 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec315, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep319, align 8
  %err.err.gep320 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec315, i32 0, i32 7
  store ptr %err.ptr278, ptr %err.err.gep320, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal318:                                    ; preds = %str_ok308
  %err.panic.printf321 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code280, i32 %err.msg.len32299, ptr %err.msg.data301, i32 %err.file.len32312, ptr %err.file.data314, i64 %err.line286, i64 %err.col288)
  call void @exit(i32 1)
  unreachable

choice.then330:                                   ; preds = %unwrap.pos.55
  %var.load332 = load ptr, ptr %var.dirs, align 8
  %a.load333 = load ptr, ptr %var.dirs, align 8
  %a.null334 = icmp eq ptr %a.load333, null
  br i1 %a.null334, label %a.create335, label %a.after336

choice.exit331:                                   ; preds = %a.wr.done394, %unwrap.pos.55
  br label %loop.latch.53

a.create335:                                      ; preds = %choice.then330
  %arena.cur337 = call ptr @dva_arena_current()
  %a.create338 = call ptr @dva_arena_alloc(ptr %arena.cur337, i64 24)
  %arena.cur339 = call ptr @dva_arena_current()
  %a.buf340 = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 128)
  %a.len.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create338, i32 0, i32 0
  store i64 0, ptr %a.len.gep341, align 8
  %a.data.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create338, i32 0, i32 1
  store ptr %a.buf340, ptr %a.data.gep342, align 8
  %a.cap.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create338, i32 0, i32 2
  store i64 16, ptr %a.cap.gep343, align 8
  store ptr %a.create338, ptr %var.dirs, align 8
  br label %a.after336

a.after336:                                       ; preds = %a.create335, %choice.then330
  %a.load2344 = load ptr, ptr %var.dirs, align 8
  %var.load345 = load i64, ptr %var.j, align 8
  %var.load346 = load ptr, ptr %var.d2, align 8
  %slot.p2i347 = ptrtoint ptr %var.load346 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2344, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after336
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2344, i32 0, i32 0
  %a.wr.len348 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load345, 0
  %a.wr.lt = icmp slt i64 %var.load345, %a.wr.len348
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2344, i32 0, i32 1
  %a.wr.data349 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep350 = getelementptr i64, ptr %a.wr.data349, i64 %var.load345
  store i64 %slot.p2i347, ptr %a.elem.gep350, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after336
  %arena.cur351 = call ptr @dva_arena_current()
  %err.alloc352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 56)
  %err.code.gep353 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 0
  store i64 4011, ptr %err.code.gep353, align 8
  %err.msg.gep354 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep354, align 8
  %err.file.gep355 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep355, align 8
  %err.line.gep356 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 3
  store i64 0, ptr %err.line.gep356, align 8
  %err.col.gep357 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 4
  store i64 0, ptr %err.col.gep357, align 8
  %err.ctx.gep358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 5
  %err.ctx0.gep359 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep358, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep359, align 8
  %err.ctx1.gep360 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep358, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep360, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur361 = call ptr @dva_arena_current()
  %err.alloc362 = call ptr @dva_arena_alloc(ptr %arena.cur361, i64 56)
  %err.code.gep363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 0
  store i64 4011, ptr %err.code.gep363, align 8
  %err.msg.gep364 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep364, align 8
  %err.file.gep365 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep365, align 8
  %err.line.gep366 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 3
  store i64 0, ptr %err.line.gep366, align 8
  %err.col.gep367 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 4
  store i64 0, ptr %err.col.gep367, align 8
  %err.ctx.gep368 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 5
  %err.ctx0.gep369 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep368, i32 0, i32 0
  store i64 %var.load345, ptr %err.ctx0.gep369, align 8
  %err.ctx1.gep370 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep368, i32 0, i32 1
  store i64 %a.wr.len348, ptr %err.ctx1.gep370, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.tag = phi i64 [ 1, %a.wr.ok ], [ 0, %a.wr.err.null ], [ 0, %a.wr.err.oob ]
  %a.wr.pay = phi ptr [ null, %a.wr.ok ], [ %err.alloc352, %a.wr.err.null ], [ %err.alloc362, %a.wr.err.oob ]
  %arena.cur371 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur371, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store i64 %a.wr.tag, ptr %tag.gep, align 8
  store ptr %a.wr.pay, ptr %pay.gep, align 8
  %var.load372 = load ptr, ptr %var.dirs, align 8
  %a.load373 = load ptr, ptr %var.dirs, align 8
  %a.null374 = icmp eq ptr %a.load373, null
  br i1 %a.null374, label %a.create375, label %a.after376

a.create375:                                      ; preds = %a.wr.done
  %arena.cur377 = call ptr @dva_arena_current()
  %a.create378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 24)
  %arena.cur379 = call ptr @dva_arena_current()
  %a.buf380 = call ptr @dva_arena_alloc(ptr %arena.cur379, i64 128)
  %a.len.gep381 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create378, i32 0, i32 0
  store i64 0, ptr %a.len.gep381, align 8
  %a.data.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create378, i32 0, i32 1
  store ptr %a.buf380, ptr %a.data.gep382, align 8
  %a.cap.gep383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create378, i32 0, i32 2
  store i64 16, ptr %a.cap.gep383, align 8
  store ptr %a.create378, ptr %var.dirs, align 8
  br label %a.after376

a.after376:                                       ; preds = %a.create375, %a.wr.done
  %a.load2384 = load ptr, ptr %var.dirs, align 8
  %var.load385 = load i64, ptr %var.j, align 8
  %addtmp386 = add i64 %var.load385, 1
  %var.load387 = load ptr, ptr %var.d1, align 8
  %slot.p2i388 = ptrtoint ptr %var.load387 to i64
  %a.wr.nonnull389 = icmp ne ptr %a.load2384, null
  br i1 %a.wr.nonnull389, label %a.wr.check390, label %a.wr.err.null392

a.wr.check390:                                    ; preds = %a.after376
  %a.wr.len395 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 0
  %a.wr.len396 = load i64, ptr %a.wr.len395, align 8
  %a.wr.ge0397 = icmp sge i64 %addtmp386, 0
  %a.wr.lt398 = icmp slt i64 %addtmp386, %a.wr.len396
  %a.wr.bounds399 = and i1 %a.wr.ge0397, %a.wr.lt398
  br i1 %a.wr.bounds399, label %a.wr.ok391, label %a.wr.err.oob393

a.wr.ok391:                                       ; preds = %a.wr.check390
  %a.wr.data400 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 1
  %a.wr.data401 = load ptr, ptr %a.wr.data400, align 8
  %a.elem.gep402 = getelementptr i64, ptr %a.wr.data401, i64 %addtmp386
  store i64 %slot.p2i388, ptr %a.elem.gep402, align 8
  br label %a.wr.done394

a.wr.err.null392:                                 ; preds = %a.after376
  %arena.cur403 = call ptr @dva_arena_current()
  %err.alloc404 = call ptr @dva_arena_alloc(ptr %arena.cur403, i64 56)
  %err.code.gep405 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc404, i32 0, i32 0
  store i64 4011, ptr %err.code.gep405, align 8
  %err.msg.gep406 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc404, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep406, align 8
  %err.file.gep407 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc404, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep407, align 8
  %err.line.gep408 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc404, i32 0, i32 3
  store i64 0, ptr %err.line.gep408, align 8
  %err.col.gep409 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc404, i32 0, i32 4
  store i64 0, ptr %err.col.gep409, align 8
  %err.ctx.gep410 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc404, i32 0, i32 5
  %err.ctx0.gep411 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep410, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep411, align 8
  %err.ctx1.gep412 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep410, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep412, align 8
  br label %a.wr.done394

a.wr.err.oob393:                                  ; preds = %a.wr.check390
  %arena.cur413 = call ptr @dva_arena_current()
  %err.alloc414 = call ptr @dva_arena_alloc(ptr %arena.cur413, i64 56)
  %err.code.gep415 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc414, i32 0, i32 0
  store i64 4011, ptr %err.code.gep415, align 8
  %err.msg.gep416 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc414, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep416, align 8
  %err.file.gep417 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc414, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep417, align 8
  %err.line.gep418 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc414, i32 0, i32 3
  store i64 0, ptr %err.line.gep418, align 8
  %err.col.gep419 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc414, i32 0, i32 4
  store i64 0, ptr %err.col.gep419, align 8
  %err.ctx.gep420 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc414, i32 0, i32 5
  %err.ctx0.gep421 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep420, i32 0, i32 0
  store i64 %addtmp386, ptr %err.ctx0.gep421, align 8
  %err.ctx1.gep422 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep420, i32 0, i32 1
  store i64 %a.wr.len396, ptr %err.ctx1.gep422, align 8
  br label %a.wr.done394

a.wr.done394:                                     ; preds = %a.wr.err.oob393, %a.wr.err.null392, %a.wr.ok391
  %a.wr.tag423 = phi i64 [ 1, %a.wr.ok391 ], [ 0, %a.wr.err.null392 ], [ 0, %a.wr.err.oob393 ]
  %a.wr.pay424 = phi ptr [ null, %a.wr.ok391 ], [ %err.alloc404, %a.wr.err.null392 ], [ %err.alloc414, %a.wr.err.oob393 ]
  %arena.cur425 = call ptr @dva_arena_current()
  %a.wr.succ426 = call ptr @dva_arena_alloc(ptr %arena.cur425, i64 16)
  %tag.gep427 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ426, i32 0, i32 0
  %pay.gep428 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ426, i32 0, i32 1
  store i64 %a.wr.tag423, ptr %tag.gep427, align 8
  store ptr %a.wr.pay424, ptr %pay.gep428, align 8
  br label %choice.exit331

a.create436:                                      ; preds = %loop.exit.52
  %arena.cur438 = call ptr @dva_arena_current()
  %a.create439 = call ptr @dva_arena_alloc(ptr %arena.cur438, i64 24)
  %arena.cur440 = call ptr @dva_arena_current()
  %a.buf441 = call ptr @dva_arena_alloc(ptr %arena.cur440, i64 128)
  %a.len.gep442 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create439, i32 0, i32 0
  store i64 0, ptr %a.len.gep442, align 8
  %a.data.gep443 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create439, i32 0, i32 1
  store ptr %a.buf441, ptr %a.data.gep443, align 8
  %a.cap.gep444 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create439, i32 0, i32 2
  store i64 16, ptr %a.cap.gep444, align 8
  store ptr %a.create439, ptr %var.file_list, align 8
  br label %a.after437

a.after437:                                       ; preds = %a.create436, %loop.exit.52
  %a.load2445 = load ptr, ptr %var.file_list, align 8
  %a.len.query446 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2445, i32 0, i32 0
  %a.len.query447 = load i64, ptr %a.len.query446, align 8
  store i64 %a.len.query447, ptr %var.nf, align 8
  %var.load448 = load i64, ptr %var.nf, align 8
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.header.56:                                   ; preds = %loop.latch.56, %a.after437
  %counter.load449 = load i64, ptr %loop.idx.56, align 8
  %loop.cond450 = icmp slt i64 %counter.load449, %var.load448
  br i1 %loop.cond450, label %loop.body.56, label %loop.exit.nat.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i451 = sub i64 %counter.load449, 0
  store i64 1, ptr %loop.step.56, align 8
  store i64 %loop.rel.i451, ptr %var._i452, align 8
  store i64 %counter.load449, ptr %var._453, align 8
  store i64 %counter.load449, ptr %var.i, align 8
  %var.load454 = load i64, ptr %var.nf, align 8
  %subtmp455 = sub i64 %var.load454, 1
  store i64 0, ptr %loop.idx.57, align 8
  %cycle.prev.u457 = load i64, ptr %var._453, align 8
  %cycle.prev.i458 = load i64, ptr %var._i452, align 8
  br label %loop.header.57

loop.exit.nat.56:                                 ; preds = %loop.header.56
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %loop.exit.57
  %step.val794 = load i64, ptr %loop.step.56, align 8
  %loop.next795 = add i64 %counter.load449, %step.val794
  store i64 %loop.next795, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %loop.exit.nat.56
  %var.load796 = load ptr, ptr %var.dirs, align 8
  %a.load797 = load ptr, ptr %var.dirs, align 8
  %a.null798 = icmp eq ptr %a.load797, null
  br i1 %a.null798, label %a.create799, label %a.after800

loop.header.57:                                   ; preds = %loop.latch.57, %loop.body.56
  %counter.load459 = load i64, ptr %loop.idx.57, align 8
  %loop.cond460 = icmp slt i64 %counter.load459, %subtmp455
  br i1 %loop.cond460, label %loop.body.57, label %loop.exit.nat.57

loop.body.57:                                     ; preds = %loop.header.57
  %loop.rel.i461 = sub i64 %counter.load459, 0
  store i64 1, ptr %loop.step.57, align 8
  store i64 %loop.rel.i461, ptr %var._i462, align 8
  store i64 %counter.load459, ptr %var._463, align 8
  store i64 %counter.load459, ptr %var.j456, align 8
  %var.load464 = load ptr, ptr %var.file_list, align 8
  %a.load465 = load ptr, ptr %var.file_list, align 8
  %a.null466 = icmp eq ptr %a.load465, null
  br i1 %a.null466, label %a.create467, label %a.after468

loop.exit.nat.57:                                 ; preds = %loop.header.57
  br label %loop.exit.57

loop.latch.57:                                    ; preds = %choice.exit678
  %step.val792 = load i64, ptr %loop.step.57, align 8
  %loop.next793 = add i64 %counter.load459, %step.val792
  store i64 %loop.next793, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.exit.57:                                     ; preds = %loop.exit.nat.57
  store i64 %cycle.prev.u457, ptr %var._453, align 8
  store i64 %cycle.prev.i458, ptr %var._i452, align 8
  br label %loop.latch.56

a.create467:                                      ; preds = %loop.body.57
  %arena.cur469 = call ptr @dva_arena_current()
  %a.create470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 24)
  %arena.cur471 = call ptr @dva_arena_current()
  %a.buf472 = call ptr @dva_arena_alloc(ptr %arena.cur471, i64 128)
  %a.len.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 0
  store i64 0, ptr %a.len.gep473, align 8
  %a.data.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 1
  store ptr %a.buf472, ptr %a.data.gep474, align 8
  %a.cap.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 2
  store i64 16, ptr %a.cap.gep475, align 8
  store ptr %a.create470, ptr %var.file_list, align 8
  br label %a.after468

a.after468:                                       ; preds = %a.create467, %loop.body.57
  %a.load2476 = load ptr, ptr %var.file_list, align 8
  %var.load477 = load i64, ptr %var.j456, align 8
  %a.rd.nonnull478 = icmp ne ptr %a.load2476, null
  br i1 %a.rd.nonnull478, label %a.rd.check479, label %a.rd.err.null481

a.rd.check479:                                    ; preds = %a.after468
  %a.rd.len484 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2476, i32 0, i32 0
  %a.rd.len485 = load i64, ptr %a.rd.len484, align 8
  %a.rd.ge0486 = icmp sge i64 %var.load477, 0
  %a.rd.lt487 = icmp slt i64 %var.load477, %a.rd.len485
  %a.rd.bounds488 = and i1 %a.rd.ge0486, %a.rd.lt487
  br i1 %a.rd.bounds488, label %a.rd.ok480, label %a.rd.err.oob482

a.rd.ok480:                                       ; preds = %a.rd.check479
  %a.rd.data489 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2476, i32 0, i32 1
  %a.rd.data490 = load ptr, ptr %a.rd.data489, align 8
  %a.rd.elem.gep491 = getelementptr i64, ptr %a.rd.data490, i64 %var.load477
  %a.rd.elem492 = load i64, ptr %a.rd.elem.gep491, align 8
  br label %a.rd.done483

a.rd.err.null481:                                 ; preds = %a.after468
  %arena.cur493 = call ptr @dva_arena_current()
  %err.alloc494 = call ptr @dva_arena_alloc(ptr %arena.cur493, i64 56)
  %err.code.gep495 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc494, i32 0, i32 0
  store i64 4011, ptr %err.code.gep495, align 8
  %err.msg.gep496 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc494, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep496, align 8
  %err.file.gep497 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc494, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep497, align 8
  %err.line.gep498 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc494, i32 0, i32 3
  store i64 743, ptr %err.line.gep498, align 8
  %err.col.gep499 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc494, i32 0, i32 4
  store i64 27, ptr %err.col.gep499, align 8
  %err.ctx.gep500 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc494, i32 0, i32 5
  %err.ctx0.gep501 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep500, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep501, align 8
  %err.ctx1.gep502 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep500, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep502, align 8
  %err.p2i503 = ptrtoint ptr %err.alloc494 to i64
  br label %a.rd.done483

a.rd.err.oob482:                                  ; preds = %a.rd.check479
  %arena.cur504 = call ptr @dva_arena_current()
  %err.alloc505 = call ptr @dva_arena_alloc(ptr %arena.cur504, i64 56)
  %err.code.gep506 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc505, i32 0, i32 0
  store i64 4011, ptr %err.code.gep506, align 8
  %err.msg.gep507 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc505, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep507, align 8
  %err.file.gep508 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc505, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep508, align 8
  %err.line.gep509 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc505, i32 0, i32 3
  store i64 743, ptr %err.line.gep509, align 8
  %err.col.gep510 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc505, i32 0, i32 4
  store i64 27, ptr %err.col.gep510, align 8
  %err.ctx.gep511 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc505, i32 0, i32 5
  %err.ctx0.gep512 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep511, i32 0, i32 0
  store i64 %var.load477, ptr %err.ctx0.gep512, align 8
  %err.ctx1.gep513 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep511, i32 0, i32 1
  store i64 %a.rd.len485, ptr %err.ctx1.gep513, align 8
  %err.p2i514 = ptrtoint ptr %err.alloc505 to i64
  br label %a.rd.done483

a.rd.done483:                                     ; preds = %a.rd.err.oob482, %a.rd.err.null481, %a.rd.ok480
  %a.rd.tag515 = phi i1 [ true, %a.rd.ok480 ], [ false, %a.rd.err.null481 ], [ false, %a.rd.err.oob482 ]
  %a.rd.pay516 = phi i64 [ %a.rd.elem492, %a.rd.ok480 ], [ %err.p2i503, %a.rd.err.null481 ], [ %err.p2i514, %a.rd.err.oob482 ]
  %ram.tag517 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag515, 0
  %ram.pay518 = insertvalue { i1, i64 } %ram.tag517, i64 %a.rd.pay516, 1
  %unwrap.is_pos519 = extractvalue { i1, i64 } %ram.pay518, 0
  br i1 %unwrap.is_pos519, label %unwrap.pos.58, label %unwrap.abort.58

unwrap.pos.58:                                    ; preds = %a.rd.done483
  %unwrap.pay.pos565 = extractvalue { i1, i64 } %ram.pay518, 1
  %pay.ptr566 = inttoptr i64 %unwrap.pay.pos565 to ptr
  store ptr %pay.ptr566, ptr %var.f1, align 8
  %var.load567 = load ptr, ptr %var.file_list, align 8
  %a.load568 = load ptr, ptr %var.file_list, align 8
  %a.null569 = icmp eq ptr %a.load568, null
  br i1 %a.null569, label %a.create570, label %a.after571

unwrap.abort.58:                                  ; preds = %a.rd.done483
  %unwrap.pay.abort520 = extractvalue { i1, i64 } %ram.pay518, 1
  %err.ptr521 = inttoptr i64 %unwrap.pay.abort520 to ptr
  %err.code.gep522 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr521, i32 0, i32 0
  %err.code523 = load i64, ptr %err.code.gep522, align 8
  %err.msg.gep524 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr521, i32 0, i32 1
  %err.msg.struct525 = load ptr, ptr %err.msg.gep524, align 8
  %err.file.gep526 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr521, i32 0, i32 2
  %err.file.struct527 = load ptr, ptr %err.file.gep526, align 8
  %err.line.gep528 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr521, i32 0, i32 3
  %err.line529 = load i64, ptr %err.line.gep528, align 8
  %err.col.gep530 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr521, i32 0, i32 4
  %err.col531 = load i64, ptr %err.col.gep530, align 8
  %err.msg.len532 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct525, i32 0, i32 0
  %err.msg.len533 = load i64, ptr %err.msg.len532, align 8
  %err.msg.len534 = and i64 %err.msg.len533, 281474976710655
  %str.tag535 = lshr i64 %err.msg.len533, 48
  %str.immortal536 = icmp eq i64 %str.tag535, 0
  br i1 %str.immortal536, label %str_ok538, label %str_gen_check537

str_gen_check537:                                 ; preds = %unwrap.abort.58
  %arena.cur540 = call ptr @dva_arena_current()
  %tag.valid541 = call i1 @dva_arena_validate_tag(ptr %arena.cur540, i64 %str.tag535)
  br i1 %tag.valid541, label %str_ok538, label %str_stale539

str_ok538:                                        ; preds = %str_stale539, %str_gen_check537, %unwrap.abort.58
  %err.msg.len32542 = trunc i64 %err.msg.len534 to i32
  %err.msg.data543 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct525, i32 0, i32 1
  %err.msg.data544 = load ptr, ptr %err.msg.data543, align 8
  %err.file.len545 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct527, i32 0, i32 0
  %err.file.len546 = load i64, ptr %err.file.len545, align 8
  %err.file.len547 = and i64 %err.file.len546, 281474976710655
  %str.tag548 = lshr i64 %err.file.len546, 48
  %str.immortal549 = icmp eq i64 %str.tag548, 0
  br i1 %str.immortal549, label %str_ok551, label %str_gen_check550

str_stale539:                                     ; preds = %str_gen_check537
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok538

str_gen_check550:                                 ; preds = %str_ok538
  %arena.cur553 = call ptr @dva_arena_current()
  %tag.valid554 = call i1 @dva_arena_validate_tag(ptr %arena.cur553, i64 %str.tag548)
  br i1 %tag.valid554, label %str_ok551, label %str_stale552

str_ok551:                                        ; preds = %str_stale552, %str_gen_check550, %str_ok538
  %err.file.len32555 = trunc i64 %err.file.len547 to i32
  %err.file.data556 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct527, i32 0, i32 1
  %err.file.data557 = load ptr, ptr %err.file.data556, align 8
  %err.thread.rec558 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread559 = icmp ne ptr %err.thread.rec558, null
  br i1 %err.is.thread559, label %err.thread560, label %err.normal561

str_stale552:                                     ; preds = %str_gen_check550
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok551

err.thread560:                                    ; preds = %str_ok551
  %err.haserr.gep562 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec558, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep562, align 8
  %err.err.gep563 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec558, i32 0, i32 7
  store ptr %err.ptr521, ptr %err.err.gep563, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal561:                                    ; preds = %str_ok551
  %err.panic.printf564 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code523, i32 %err.msg.len32542, ptr %err.msg.data544, i32 %err.file.len32555, ptr %err.file.data557, i64 %err.line529, i64 %err.col531)
  call void @exit(i32 1)
  unreachable

a.create570:                                      ; preds = %unwrap.pos.58
  %arena.cur572 = call ptr @dva_arena_current()
  %a.create573 = call ptr @dva_arena_alloc(ptr %arena.cur572, i64 24)
  %arena.cur574 = call ptr @dva_arena_current()
  %a.buf575 = call ptr @dva_arena_alloc(ptr %arena.cur574, i64 128)
  %a.len.gep576 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create573, i32 0, i32 0
  store i64 0, ptr %a.len.gep576, align 8
  %a.data.gep577 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create573, i32 0, i32 1
  store ptr %a.buf575, ptr %a.data.gep577, align 8
  %a.cap.gep578 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create573, i32 0, i32 2
  store i64 16, ptr %a.cap.gep578, align 8
  store ptr %a.create573, ptr %var.file_list, align 8
  br label %a.after571

a.after571:                                       ; preds = %a.create570, %unwrap.pos.58
  %a.load2579 = load ptr, ptr %var.file_list, align 8
  %var.load580 = load i64, ptr %var.j456, align 8
  %addtmp581 = add i64 %var.load580, 1
  %a.rd.nonnull582 = icmp ne ptr %a.load2579, null
  br i1 %a.rd.nonnull582, label %a.rd.check583, label %a.rd.err.null585

a.rd.check583:                                    ; preds = %a.after571
  %a.rd.len588 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2579, i32 0, i32 0
  %a.rd.len589 = load i64, ptr %a.rd.len588, align 8
  %a.rd.ge0590 = icmp sge i64 %addtmp581, 0
  %a.rd.lt591 = icmp slt i64 %addtmp581, %a.rd.len589
  %a.rd.bounds592 = and i1 %a.rd.ge0590, %a.rd.lt591
  br i1 %a.rd.bounds592, label %a.rd.ok584, label %a.rd.err.oob586

a.rd.ok584:                                       ; preds = %a.rd.check583
  %a.rd.data593 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2579, i32 0, i32 1
  %a.rd.data594 = load ptr, ptr %a.rd.data593, align 8
  %a.rd.elem.gep595 = getelementptr i64, ptr %a.rd.data594, i64 %addtmp581
  %a.rd.elem596 = load i64, ptr %a.rd.elem.gep595, align 8
  br label %a.rd.done587

a.rd.err.null585:                                 ; preds = %a.after571
  %arena.cur597 = call ptr @dva_arena_current()
  %err.alloc598 = call ptr @dva_arena_alloc(ptr %arena.cur597, i64 56)
  %err.code.gep599 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 0
  store i64 4011, ptr %err.code.gep599, align 8
  %err.msg.gep600 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep600, align 8
  %err.file.gep601 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep601, align 8
  %err.line.gep602 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 3
  store i64 744, ptr %err.line.gep602, align 8
  %err.col.gep603 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 4
  store i64 31, ptr %err.col.gep603, align 8
  %err.ctx.gep604 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 5
  %err.ctx0.gep605 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep604, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep605, align 8
  %err.ctx1.gep606 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep604, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep606, align 8
  %err.p2i607 = ptrtoint ptr %err.alloc598 to i64
  br label %a.rd.done587

a.rd.err.oob586:                                  ; preds = %a.rd.check583
  %arena.cur608 = call ptr @dva_arena_current()
  %err.alloc609 = call ptr @dva_arena_alloc(ptr %arena.cur608, i64 56)
  %err.code.gep610 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc609, i32 0, i32 0
  store i64 4011, ptr %err.code.gep610, align 8
  %err.msg.gep611 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc609, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep611, align 8
  %err.file.gep612 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc609, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep612, align 8
  %err.line.gep613 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc609, i32 0, i32 3
  store i64 744, ptr %err.line.gep613, align 8
  %err.col.gep614 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc609, i32 0, i32 4
  store i64 31, ptr %err.col.gep614, align 8
  %err.ctx.gep615 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc609, i32 0, i32 5
  %err.ctx0.gep616 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep615, i32 0, i32 0
  store i64 %addtmp581, ptr %err.ctx0.gep616, align 8
  %err.ctx1.gep617 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep615, i32 0, i32 1
  store i64 %a.rd.len589, ptr %err.ctx1.gep617, align 8
  %err.p2i618 = ptrtoint ptr %err.alloc609 to i64
  br label %a.rd.done587

a.rd.done587:                                     ; preds = %a.rd.err.oob586, %a.rd.err.null585, %a.rd.ok584
  %a.rd.tag619 = phi i1 [ true, %a.rd.ok584 ], [ false, %a.rd.err.null585 ], [ false, %a.rd.err.oob586 ]
  %a.rd.pay620 = phi i64 [ %a.rd.elem596, %a.rd.ok584 ], [ %err.p2i607, %a.rd.err.null585 ], [ %err.p2i618, %a.rd.err.oob586 ]
  %ram.tag621 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag619, 0
  %ram.pay622 = insertvalue { i1, i64 } %ram.tag621, i64 %a.rd.pay620, 1
  %unwrap.is_pos623 = extractvalue { i1, i64 } %ram.pay622, 0
  br i1 %unwrap.is_pos623, label %unwrap.pos.59, label %unwrap.abort.59

unwrap.pos.59:                                    ; preds = %a.rd.done587
  %unwrap.pay.pos669 = extractvalue { i1, i64 } %ram.pay622, 1
  %pay.ptr670 = inttoptr i64 %unwrap.pay.pos669 to ptr
  store ptr %pay.ptr670, ptr %var.f2, align 8
  %var.load671 = load ptr, ptr %var.f1, align 8
  %var.load672 = load ptr, ptr %var.f2, align 8
  %var.load673 = load i64, ptr %var.sort_mode, align 8
  %var.load674 = load i1, ptr %var.sort_rev, align 1
  %call.res675 = call i64 @"fs::cmp_entries"(ptr %var.load671, ptr %var.load672, i64 %var.load673, i1 %var.load674)
  %cmptmp676 = icmp sgt i64 %call.res675, 0
  br i1 %cmptmp676, label %choice.then677, label %choice.exit678

unwrap.abort.59:                                  ; preds = %a.rd.done587
  %unwrap.pay.abort624 = extractvalue { i1, i64 } %ram.pay622, 1
  %err.ptr625 = inttoptr i64 %unwrap.pay.abort624 to ptr
  %err.code.gep626 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr625, i32 0, i32 0
  %err.code627 = load i64, ptr %err.code.gep626, align 8
  %err.msg.gep628 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr625, i32 0, i32 1
  %err.msg.struct629 = load ptr, ptr %err.msg.gep628, align 8
  %err.file.gep630 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr625, i32 0, i32 2
  %err.file.struct631 = load ptr, ptr %err.file.gep630, align 8
  %err.line.gep632 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr625, i32 0, i32 3
  %err.line633 = load i64, ptr %err.line.gep632, align 8
  %err.col.gep634 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr625, i32 0, i32 4
  %err.col635 = load i64, ptr %err.col.gep634, align 8
  %err.msg.len636 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct629, i32 0, i32 0
  %err.msg.len637 = load i64, ptr %err.msg.len636, align 8
  %err.msg.len638 = and i64 %err.msg.len637, 281474976710655
  %str.tag639 = lshr i64 %err.msg.len637, 48
  %str.immortal640 = icmp eq i64 %str.tag639, 0
  br i1 %str.immortal640, label %str_ok642, label %str_gen_check641

str_gen_check641:                                 ; preds = %unwrap.abort.59
  %arena.cur644 = call ptr @dva_arena_current()
  %tag.valid645 = call i1 @dva_arena_validate_tag(ptr %arena.cur644, i64 %str.tag639)
  br i1 %tag.valid645, label %str_ok642, label %str_stale643

str_ok642:                                        ; preds = %str_stale643, %str_gen_check641, %unwrap.abort.59
  %err.msg.len32646 = trunc i64 %err.msg.len638 to i32
  %err.msg.data647 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct629, i32 0, i32 1
  %err.msg.data648 = load ptr, ptr %err.msg.data647, align 8
  %err.file.len649 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct631, i32 0, i32 0
  %err.file.len650 = load i64, ptr %err.file.len649, align 8
  %err.file.len651 = and i64 %err.file.len650, 281474976710655
  %str.tag652 = lshr i64 %err.file.len650, 48
  %str.immortal653 = icmp eq i64 %str.tag652, 0
  br i1 %str.immortal653, label %str_ok655, label %str_gen_check654

str_stale643:                                     ; preds = %str_gen_check641
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok642

str_gen_check654:                                 ; preds = %str_ok642
  %arena.cur657 = call ptr @dva_arena_current()
  %tag.valid658 = call i1 @dva_arena_validate_tag(ptr %arena.cur657, i64 %str.tag652)
  br i1 %tag.valid658, label %str_ok655, label %str_stale656

str_ok655:                                        ; preds = %str_stale656, %str_gen_check654, %str_ok642
  %err.file.len32659 = trunc i64 %err.file.len651 to i32
  %err.file.data660 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct631, i32 0, i32 1
  %err.file.data661 = load ptr, ptr %err.file.data660, align 8
  %err.thread.rec662 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread663 = icmp ne ptr %err.thread.rec662, null
  br i1 %err.is.thread663, label %err.thread664, label %err.normal665

str_stale656:                                     ; preds = %str_gen_check654
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok655

err.thread664:                                    ; preds = %str_ok655
  %err.haserr.gep666 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec662, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep666, align 8
  %err.err.gep667 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec662, i32 0, i32 7
  store ptr %err.ptr625, ptr %err.err.gep667, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal665:                                    ; preds = %str_ok655
  %err.panic.printf668 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code627, i32 %err.msg.len32646, ptr %err.msg.data648, i32 %err.file.len32659, ptr %err.file.data661, i64 %err.line633, i64 %err.col635)
  call void @exit(i32 1)
  unreachable

choice.then677:                                   ; preds = %unwrap.pos.59
  %var.load679 = load ptr, ptr %var.file_list, align 8
  %a.load680 = load ptr, ptr %var.file_list, align 8
  %a.null681 = icmp eq ptr %a.load680, null
  br i1 %a.null681, label %a.create682, label %a.after683

choice.exit678:                                   ; preds = %a.wr.done757, %unwrap.pos.59
  br label %loop.latch.57

a.create682:                                      ; preds = %choice.then677
  %arena.cur684 = call ptr @dva_arena_current()
  %a.create685 = call ptr @dva_arena_alloc(ptr %arena.cur684, i64 24)
  %arena.cur686 = call ptr @dva_arena_current()
  %a.buf687 = call ptr @dva_arena_alloc(ptr %arena.cur686, i64 128)
  %a.len.gep688 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create685, i32 0, i32 0
  store i64 0, ptr %a.len.gep688, align 8
  %a.data.gep689 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create685, i32 0, i32 1
  store ptr %a.buf687, ptr %a.data.gep689, align 8
  %a.cap.gep690 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create685, i32 0, i32 2
  store i64 16, ptr %a.cap.gep690, align 8
  store ptr %a.create685, ptr %var.file_list, align 8
  br label %a.after683

a.after683:                                       ; preds = %a.create682, %choice.then677
  %a.load2691 = load ptr, ptr %var.file_list, align 8
  %var.load692 = load i64, ptr %var.j456, align 8
  %var.load693 = load ptr, ptr %var.f2, align 8
  %slot.p2i694 = ptrtoint ptr %var.load693 to i64
  %a.wr.nonnull695 = icmp ne ptr %a.load2691, null
  br i1 %a.wr.nonnull695, label %a.wr.check696, label %a.wr.err.null698

a.wr.check696:                                    ; preds = %a.after683
  %a.wr.len701 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2691, i32 0, i32 0
  %a.wr.len702 = load i64, ptr %a.wr.len701, align 8
  %a.wr.ge0703 = icmp sge i64 %var.load692, 0
  %a.wr.lt704 = icmp slt i64 %var.load692, %a.wr.len702
  %a.wr.bounds705 = and i1 %a.wr.ge0703, %a.wr.lt704
  br i1 %a.wr.bounds705, label %a.wr.ok697, label %a.wr.err.oob699

a.wr.ok697:                                       ; preds = %a.wr.check696
  %a.wr.data706 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2691, i32 0, i32 1
  %a.wr.data707 = load ptr, ptr %a.wr.data706, align 8
  %a.elem.gep708 = getelementptr i64, ptr %a.wr.data707, i64 %var.load692
  store i64 %slot.p2i694, ptr %a.elem.gep708, align 8
  br label %a.wr.done700

a.wr.err.null698:                                 ; preds = %a.after683
  %arena.cur709 = call ptr @dva_arena_current()
  %err.alloc710 = call ptr @dva_arena_alloc(ptr %arena.cur709, i64 56)
  %err.code.gep711 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc710, i32 0, i32 0
  store i64 4011, ptr %err.code.gep711, align 8
  %err.msg.gep712 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc710, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep712, align 8
  %err.file.gep713 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc710, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep713, align 8
  %err.line.gep714 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc710, i32 0, i32 3
  store i64 0, ptr %err.line.gep714, align 8
  %err.col.gep715 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc710, i32 0, i32 4
  store i64 0, ptr %err.col.gep715, align 8
  %err.ctx.gep716 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc710, i32 0, i32 5
  %err.ctx0.gep717 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep716, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep717, align 8
  %err.ctx1.gep718 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep716, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep718, align 8
  br label %a.wr.done700

a.wr.err.oob699:                                  ; preds = %a.wr.check696
  %arena.cur719 = call ptr @dva_arena_current()
  %err.alloc720 = call ptr @dva_arena_alloc(ptr %arena.cur719, i64 56)
  %err.code.gep721 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc720, i32 0, i32 0
  store i64 4011, ptr %err.code.gep721, align 8
  %err.msg.gep722 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc720, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep722, align 8
  %err.file.gep723 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc720, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep723, align 8
  %err.line.gep724 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc720, i32 0, i32 3
  store i64 0, ptr %err.line.gep724, align 8
  %err.col.gep725 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc720, i32 0, i32 4
  store i64 0, ptr %err.col.gep725, align 8
  %err.ctx.gep726 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc720, i32 0, i32 5
  %err.ctx0.gep727 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep726, i32 0, i32 0
  store i64 %var.load692, ptr %err.ctx0.gep727, align 8
  %err.ctx1.gep728 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep726, i32 0, i32 1
  store i64 %a.wr.len702, ptr %err.ctx1.gep728, align 8
  br label %a.wr.done700

a.wr.done700:                                     ; preds = %a.wr.err.oob699, %a.wr.err.null698, %a.wr.ok697
  %a.wr.tag729 = phi i64 [ 1, %a.wr.ok697 ], [ 0, %a.wr.err.null698 ], [ 0, %a.wr.err.oob699 ]
  %a.wr.pay730 = phi ptr [ null, %a.wr.ok697 ], [ %err.alloc710, %a.wr.err.null698 ], [ %err.alloc720, %a.wr.err.oob699 ]
  %arena.cur731 = call ptr @dva_arena_current()
  %a.wr.succ732 = call ptr @dva_arena_alloc(ptr %arena.cur731, i64 16)
  %tag.gep733 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ732, i32 0, i32 0
  %pay.gep734 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ732, i32 0, i32 1
  store i64 %a.wr.tag729, ptr %tag.gep733, align 8
  store ptr %a.wr.pay730, ptr %pay.gep734, align 8
  %var.load735 = load ptr, ptr %var.file_list, align 8
  %a.load736 = load ptr, ptr %var.file_list, align 8
  %a.null737 = icmp eq ptr %a.load736, null
  br i1 %a.null737, label %a.create738, label %a.after739

a.create738:                                      ; preds = %a.wr.done700
  %arena.cur740 = call ptr @dva_arena_current()
  %a.create741 = call ptr @dva_arena_alloc(ptr %arena.cur740, i64 24)
  %arena.cur742 = call ptr @dva_arena_current()
  %a.buf743 = call ptr @dva_arena_alloc(ptr %arena.cur742, i64 128)
  %a.len.gep744 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create741, i32 0, i32 0
  store i64 0, ptr %a.len.gep744, align 8
  %a.data.gep745 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create741, i32 0, i32 1
  store ptr %a.buf743, ptr %a.data.gep745, align 8
  %a.cap.gep746 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create741, i32 0, i32 2
  store i64 16, ptr %a.cap.gep746, align 8
  store ptr %a.create741, ptr %var.file_list, align 8
  br label %a.after739

a.after739:                                       ; preds = %a.create738, %a.wr.done700
  %a.load2747 = load ptr, ptr %var.file_list, align 8
  %var.load748 = load i64, ptr %var.j456, align 8
  %addtmp749 = add i64 %var.load748, 1
  %var.load750 = load ptr, ptr %var.f1, align 8
  %slot.p2i751 = ptrtoint ptr %var.load750 to i64
  %a.wr.nonnull752 = icmp ne ptr %a.load2747, null
  br i1 %a.wr.nonnull752, label %a.wr.check753, label %a.wr.err.null755

a.wr.check753:                                    ; preds = %a.after739
  %a.wr.len758 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2747, i32 0, i32 0
  %a.wr.len759 = load i64, ptr %a.wr.len758, align 8
  %a.wr.ge0760 = icmp sge i64 %addtmp749, 0
  %a.wr.lt761 = icmp slt i64 %addtmp749, %a.wr.len759
  %a.wr.bounds762 = and i1 %a.wr.ge0760, %a.wr.lt761
  br i1 %a.wr.bounds762, label %a.wr.ok754, label %a.wr.err.oob756

a.wr.ok754:                                       ; preds = %a.wr.check753
  %a.wr.data763 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2747, i32 0, i32 1
  %a.wr.data764 = load ptr, ptr %a.wr.data763, align 8
  %a.elem.gep765 = getelementptr i64, ptr %a.wr.data764, i64 %addtmp749
  store i64 %slot.p2i751, ptr %a.elem.gep765, align 8
  br label %a.wr.done757

a.wr.err.null755:                                 ; preds = %a.after739
  %arena.cur766 = call ptr @dva_arena_current()
  %err.alloc767 = call ptr @dva_arena_alloc(ptr %arena.cur766, i64 56)
  %err.code.gep768 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 0
  store i64 4011, ptr %err.code.gep768, align 8
  %err.msg.gep769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep769, align 8
  %err.file.gep770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep770, align 8
  %err.line.gep771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 3
  store i64 0, ptr %err.line.gep771, align 8
  %err.col.gep772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 4
  store i64 0, ptr %err.col.gep772, align 8
  %err.ctx.gep773 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc767, i32 0, i32 5
  %err.ctx0.gep774 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep773, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep774, align 8
  %err.ctx1.gep775 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep773, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep775, align 8
  br label %a.wr.done757

a.wr.err.oob756:                                  ; preds = %a.wr.check753
  %arena.cur776 = call ptr @dva_arena_current()
  %err.alloc777 = call ptr @dva_arena_alloc(ptr %arena.cur776, i64 56)
  %err.code.gep778 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc777, i32 0, i32 0
  store i64 4011, ptr %err.code.gep778, align 8
  %err.msg.gep779 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc777, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep779, align 8
  %err.file.gep780 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc777, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep780, align 8
  %err.line.gep781 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc777, i32 0, i32 3
  store i64 0, ptr %err.line.gep781, align 8
  %err.col.gep782 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc777, i32 0, i32 4
  store i64 0, ptr %err.col.gep782, align 8
  %err.ctx.gep783 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc777, i32 0, i32 5
  %err.ctx0.gep784 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep783, i32 0, i32 0
  store i64 %addtmp749, ptr %err.ctx0.gep784, align 8
  %err.ctx1.gep785 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep783, i32 0, i32 1
  store i64 %a.wr.len759, ptr %err.ctx1.gep785, align 8
  br label %a.wr.done757

a.wr.done757:                                     ; preds = %a.wr.err.oob756, %a.wr.err.null755, %a.wr.ok754
  %a.wr.tag786 = phi i64 [ 1, %a.wr.ok754 ], [ 0, %a.wr.err.null755 ], [ 0, %a.wr.err.oob756 ]
  %a.wr.pay787 = phi ptr [ null, %a.wr.ok754 ], [ %err.alloc767, %a.wr.err.null755 ], [ %err.alloc777, %a.wr.err.oob756 ]
  %arena.cur788 = call ptr @dva_arena_current()
  %a.wr.succ789 = call ptr @dva_arena_alloc(ptr %arena.cur788, i64 16)
  %tag.gep790 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ789, i32 0, i32 0
  %pay.gep791 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ789, i32 0, i32 1
  store i64 %a.wr.tag786, ptr %tag.gep790, align 8
  store ptr %a.wr.pay787, ptr %pay.gep791, align 8
  br label %choice.exit678

a.create799:                                      ; preds = %loop.exit.56
  %arena.cur801 = call ptr @dva_arena_current()
  %a.create802 = call ptr @dva_arena_alloc(ptr %arena.cur801, i64 24)
  %arena.cur803 = call ptr @dva_arena_current()
  %a.buf804 = call ptr @dva_arena_alloc(ptr %arena.cur803, i64 128)
  %a.len.gep805 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create802, i32 0, i32 0
  store i64 0, ptr %a.len.gep805, align 8
  %a.data.gep806 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create802, i32 0, i32 1
  store ptr %a.buf804, ptr %a.data.gep806, align 8
  %a.cap.gep807 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create802, i32 0, i32 2
  store i64 16, ptr %a.cap.gep807, align 8
  store ptr %a.create802, ptr %var.dirs, align 8
  br label %a.after800

a.after800:                                       ; preds = %a.create799, %loop.exit.56
  %a.load2808 = load ptr, ptr %var.dirs, align 8
  %arr.cycle.len809 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2808, i32 0, i32 0
  %arr.cycle.len810 = load i64, ptr %arr.cycle.len809, align 8
  %arr.cycle.data811 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2808, i32 0, i32 1
  %arr.cycle.data812 = load ptr, ptr %arr.cycle.data811, align 8
  store i64 0, ptr %loop.idx.60, align 8
  br label %loop.header.60

loop.header.60:                                   ; preds = %loop.latch.60, %a.after800
  %counter.load813 = load i64, ptr %loop.idx.60, align 8
  %loop.cond814 = icmp slt i64 %counter.load813, %arr.cycle.len810
  br i1 %loop.cond814, label %loop.body.60, label %loop.exit.nat.60

loop.body.60:                                     ; preds = %loop.header.60
  %loop.rel.i815 = sub i64 %counter.load813, 0
  store i64 1, ptr %loop.step.60, align 8
  %arr.elem.gep816 = getelementptr i64, ptr %arr.cycle.data812, i64 %counter.load813
  %arr.elem.raw817 = load i64, ptr %arr.elem.gep816, align 8
  %slot.i2p818 = inttoptr i64 %arr.elem.raw817 to ptr
  store i64 %loop.rel.i815, ptr %var._i819, align 8
  store ptr %slot.i2p818, ptr %var._820, align 8
  store ptr %slot.i2p818, ptr %var.dir_item, align 8
  %var.load821 = load ptr, ptr %var.dir_item, align 8
  %a.load822 = load ptr, ptr %var.res, align 8
  %a.null823 = icmp eq ptr %a.load822, null
  br i1 %a.null823, label %a.create824, label %a.after825

loop.exit.nat.60:                                 ; preds = %loop.header.60
  br label %loop.exit.60

loop.latch.60:                                    ; preds = %a.store836
  %step.val850 = load i64, ptr %loop.step.60, align 8
  %loop.next851 = add i64 %counter.load813, %step.val850
  store i64 %loop.next851, ptr %loop.idx.60, align 8
  br label %loop.header.60

loop.exit.60:                                     ; preds = %loop.exit.nat.60
  %var.load852 = load ptr, ptr %var.file_list, align 8
  %a.load853 = load ptr, ptr %var.file_list, align 8
  %a.null854 = icmp eq ptr %a.load853, null
  br i1 %a.null854, label %a.create855, label %a.after856

a.create824:                                      ; preds = %loop.body.60
  %arena.cur826 = call ptr @dva_arena_current()
  %a.create827 = call ptr @dva_arena_alloc(ptr %arena.cur826, i64 24)
  %arena.cur828 = call ptr @dva_arena_current()
  %a.buf829 = call ptr @dva_arena_alloc(ptr %arena.cur828, i64 128)
  %a.len.gep830 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create827, i32 0, i32 0
  store i64 0, ptr %a.len.gep830, align 8
  %a.data.gep831 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create827, i32 0, i32 1
  store ptr %a.buf829, ptr %a.data.gep831, align 8
  %a.cap.gep832 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create827, i32 0, i32 2
  store i64 16, ptr %a.cap.gep832, align 8
  store ptr %a.create827, ptr %var.res, align 8
  br label %a.after825

a.after825:                                       ; preds = %a.create824, %loop.body.60
  %a.load2833 = load ptr, ptr %var.res, align 8
  br label %a.check834

a.check834:                                       ; preds = %a.after825
  %a.len837 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2833, i32 0, i32 0
  %a.len838 = load i64, ptr %a.len837, align 8
  %a.cap839 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2833, i32 0, i32 2
  %a.cap840 = load i64, ptr %a.cap839, align 8
  %a.needs.grow841 = icmp eq i64 %a.len838, %a.cap840
  br i1 %a.needs.grow841, label %a.grow835, label %a.store836

a.grow835:                                        ; preds = %a.check834
  call void @dva_array_grow(ptr %a.load2833)
  br label %a.store836

a.store836:                                       ; preds = %a.grow835, %a.check834
  %a.cur.data842 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2833, i32 0, i32 1
  %a.cur.data843 = load ptr, ptr %a.cur.data842, align 8
  %a.cur.len844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2833, i32 0, i32 0
  %a.cur.len845 = load i64, ptr %a.cur.len844, align 8
  %a.elem.gep846 = getelementptr i64, ptr %a.cur.data843, i64 %a.cur.len845
  %slot.p2i847 = ptrtoint ptr %var.load821 to i64
  store i64 %slot.p2i847, ptr %a.elem.gep846, align 8
  %a.next.len848 = add i64 %a.cur.len845, 1
  %b.len.gep849 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2833, i32 0, i32 0
  store i64 %a.next.len848, ptr %b.len.gep849, align 8
  br label %loop.latch.60

a.create855:                                      ; preds = %loop.exit.60
  %arena.cur857 = call ptr @dva_arena_current()
  %a.create858 = call ptr @dva_arena_alloc(ptr %arena.cur857, i64 24)
  %arena.cur859 = call ptr @dva_arena_current()
  %a.buf860 = call ptr @dva_arena_alloc(ptr %arena.cur859, i64 128)
  %a.len.gep861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create858, i32 0, i32 0
  store i64 0, ptr %a.len.gep861, align 8
  %a.data.gep862 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create858, i32 0, i32 1
  store ptr %a.buf860, ptr %a.data.gep862, align 8
  %a.cap.gep863 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create858, i32 0, i32 2
  store i64 16, ptr %a.cap.gep863, align 8
  store ptr %a.create858, ptr %var.file_list, align 8
  br label %a.after856

a.after856:                                       ; preds = %a.create855, %loop.exit.60
  %a.load2864 = load ptr, ptr %var.file_list, align 8
  %arr.cycle.len865 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2864, i32 0, i32 0
  %arr.cycle.len866 = load i64, ptr %arr.cycle.len865, align 8
  %arr.cycle.data867 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2864, i32 0, i32 1
  %arr.cycle.data868 = load ptr, ptr %arr.cycle.data867, align 8
  store i64 0, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.header.61:                                   ; preds = %loop.latch.61, %a.after856
  %counter.load869 = load i64, ptr %loop.idx.61, align 8
  %loop.cond870 = icmp slt i64 %counter.load869, %arr.cycle.len866
  br i1 %loop.cond870, label %loop.body.61, label %loop.exit.nat.61

loop.body.61:                                     ; preds = %loop.header.61
  %loop.rel.i871 = sub i64 %counter.load869, 0
  store i64 1, ptr %loop.step.61, align 8
  %arr.elem.gep872 = getelementptr i64, ptr %arr.cycle.data868, i64 %counter.load869
  %arr.elem.raw873 = load i64, ptr %arr.elem.gep872, align 8
  %slot.i2p874 = inttoptr i64 %arr.elem.raw873 to ptr
  store i64 %loop.rel.i871, ptr %var._i875, align 8
  store ptr %slot.i2p874, ptr %var._876, align 8
  store ptr %slot.i2p874, ptr %var.file_item, align 8
  %var.load877 = load ptr, ptr %var.file_item, align 8
  %a.load878 = load ptr, ptr %var.res, align 8
  %a.null879 = icmp eq ptr %a.load878, null
  br i1 %a.null879, label %a.create880, label %a.after881

loop.exit.nat.61:                                 ; preds = %loop.header.61
  br label %loop.exit.61

loop.latch.61:                                    ; preds = %a.store892
  %step.val906 = load i64, ptr %loop.step.61, align 8
  %loop.next907 = add i64 %counter.load869, %step.val906
  store i64 %loop.next907, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.exit.61:                                     ; preds = %loop.exit.nat.61
  %var.load908 = load ptr, ptr %var.res, align 8
  %a.load909 = load ptr, ptr %var.res, align 8
  %a.null910 = icmp eq ptr %a.load909, null
  br i1 %a.null910, label %a.create911, label %a.after912

a.create880:                                      ; preds = %loop.body.61
  %arena.cur882 = call ptr @dva_arena_current()
  %a.create883 = call ptr @dva_arena_alloc(ptr %arena.cur882, i64 24)
  %arena.cur884 = call ptr @dva_arena_current()
  %a.buf885 = call ptr @dva_arena_alloc(ptr %arena.cur884, i64 128)
  %a.len.gep886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create883, i32 0, i32 0
  store i64 0, ptr %a.len.gep886, align 8
  %a.data.gep887 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create883, i32 0, i32 1
  store ptr %a.buf885, ptr %a.data.gep887, align 8
  %a.cap.gep888 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create883, i32 0, i32 2
  store i64 16, ptr %a.cap.gep888, align 8
  store ptr %a.create883, ptr %var.res, align 8
  br label %a.after881

a.after881:                                       ; preds = %a.create880, %loop.body.61
  %a.load2889 = load ptr, ptr %var.res, align 8
  br label %a.check890

a.check890:                                       ; preds = %a.after881
  %a.len893 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2889, i32 0, i32 0
  %a.len894 = load i64, ptr %a.len893, align 8
  %a.cap895 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2889, i32 0, i32 2
  %a.cap896 = load i64, ptr %a.cap895, align 8
  %a.needs.grow897 = icmp eq i64 %a.len894, %a.cap896
  br i1 %a.needs.grow897, label %a.grow891, label %a.store892

a.grow891:                                        ; preds = %a.check890
  call void @dva_array_grow(ptr %a.load2889)
  br label %a.store892

a.store892:                                       ; preds = %a.grow891, %a.check890
  %a.cur.data898 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2889, i32 0, i32 1
  %a.cur.data899 = load ptr, ptr %a.cur.data898, align 8
  %a.cur.len900 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2889, i32 0, i32 0
  %a.cur.len901 = load i64, ptr %a.cur.len900, align 8
  %a.elem.gep902 = getelementptr i64, ptr %a.cur.data899, i64 %a.cur.len901
  %slot.p2i903 = ptrtoint ptr %var.load877 to i64
  store i64 %slot.p2i903, ptr %a.elem.gep902, align 8
  %a.next.len904 = add i64 %a.cur.len901, 1
  %b.len.gep905 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2889, i32 0, i32 0
  store i64 %a.next.len904, ptr %b.len.gep905, align 8
  br label %loop.latch.61

a.create911:                                      ; preds = %loop.exit.61
  %arena.cur913 = call ptr @dva_arena_current()
  %a.create914 = call ptr @dva_arena_alloc(ptr %arena.cur913, i64 24)
  %arena.cur915 = call ptr @dva_arena_current()
  %a.buf916 = call ptr @dva_arena_alloc(ptr %arena.cur915, i64 128)
  %a.len.gep917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create914, i32 0, i32 0
  store i64 0, ptr %a.len.gep917, align 8
  %a.data.gep918 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create914, i32 0, i32 1
  store ptr %a.buf916, ptr %a.data.gep918, align 8
  %a.cap.gep919 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create914, i32 0, i32 2
  store i64 16, ptr %a.cap.gep919, align 8
  store ptr %a.create914, ptr %var.res, align 8
  br label %a.after912

a.after912:                                       ; preds = %a.create911, %loop.exit.61
  %a.load2920 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2920
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
