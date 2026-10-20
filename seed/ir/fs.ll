; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin24.6.0"

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
@str.14 = internal unnamed_addr constant [5 x i8] c"0644\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.14 }
@str.15 = internal unnamed_addr constant [2 x i8] c"0\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.15 }
@clo.const.53 = internal constant { ptr, ptr } { ptr @"fs::octal_perms", ptr null }
@"var.fs::octal_perms" = global ptr null
@str.16 = internal unnamed_addr constant [3 x i8] c" (\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.16 }
@str.17 = internal unnamed_addr constant [2 x i8] c")\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.17 }
@clo.const.54 = internal constant { ptr, ptr } { ptr @"fs::auto_rename_path", ptr null }
@"var.fs::auto_rename_path" = global ptr null
@clo.const.55 = internal constant { ptr, ptr } { ptr @"fs::cmp_entries", ptr null }
@"var.fs::cmp_entries" = global ptr null
@str.18 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.18 }
@str.19 = internal unnamed_addr constant [7 x i8] c"fs.dva\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.19 }
@str.20 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.20 }
@dva_thread_rec = external thread_local global ptr
@clo.const.56 = internal constant { ptr, ptr } { ptr @"fs::list_dir", ptr null }
@clo.const.57 = internal constant { ptr, ptr } { ptr @"fs::list_dir_simple", ptr null }
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

declare ptr @__error()

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
  %var.is_reg = alloca i1, align 1
  %var.is_d = alloca i1, align 1
  %var.fmt = alloca i64, align 8
  %var.m = alloca i64, align 8
  %var.is_link = alloca i1, align 1
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i1 %1, ptr %var.is_link, align 1
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call i64 @"fs::stat_mode"(ptr %var.load)
  store i64 %call.res, ptr %var.m, align 8
  %var.load1 = load i64, ptr %var.m, align 8
  %bandtmp = and i64 %var.load1, 61440
  store i64 %bandtmp, ptr %var.fmt, align 8
  %var.load2 = load i64, ptr %var.fmt, align 8
  %cmptmp = icmp eq i64 %var.load2, 16384
  store i1 %cmptmp, ptr %var.is_d, align 1
  %var.load3 = load i64, ptr %var.fmt, align 8
  %cmptmp4 = icmp eq i64 %var.load3, 32768
  store i1 %cmptmp4, ptr %var.is_reg, align 1
  %var.load5 = load i64, ptr %var.m, align 8
  %bandtmp6 = and i64 %var.load5, 73
  %cmptmp7 = icmp ne i64 %bandtmp6, 0
  br i1 %cmptmp7, label %and.18.then, label %and.18.else

and.18.then:                                      ; preds = %entry
  %var.load8 = load i1, ptr %var.is_d, align 1
  %nottmp = xor i1 %var.load8, true
  br label %and.18.exit

and.18.else:                                      ; preds = %entry
  br label %and.18.exit

and.18.exit:                                      ; preds = %and.18.else, %and.18.then
  %and.18.phi = phi i1 [ %nottmp, %and.18.then ], [ %cmptmp7, %and.18.else ]
  store i1 %and.18.phi, ptr %var.is_x, align 1
  %var.load9 = load ptr, ptr %var.s, align 8
  %call.res10 = call i64 @"fs::stat_size"(ptr %var.load9)
  %var.load11 = load i64, ptr %var.m, align 8
  %var.load12 = load ptr, ptr %var.s, align 8
  %call.res13 = call i64 @"fs::stat_mtime_sec"(ptr %var.load12)
  %var.load14 = load ptr, ptr %var.s, align 8
  %call.res15 = call i64 @"fs::stat_mtime_nsec"(ptr %var.load14)
  %var.load16 = load ptr, ptr %var.s, align 8
  %call.res17 = call i64 @"fs::stat_atime_sec"(ptr %var.load16)
  %var.load18 = load i1, ptr %var.is_d, align 1
  %var.load19 = load i1, ptr %var.is_reg, align 1
  %var.load20 = load i1, ptr %var.is_link, align 1
  %var.load21 = load i1, ptr %var.is_x, align 1
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %call.res10, ptr %rec.fld, align 8
  %rec.fld22 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load11, ptr %rec.fld22, align 8
  %rec.fld23 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %call.res13, ptr %rec.fld23, align 8
  %rec.fld24 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %call.res15, ptr %rec.fld24, align 8
  %rec.fld25 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %call.res17, ptr %rec.fld25, align 8
  %rec.fld26 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load18, ptr %rec.fld26, align 1
  %rec.fld27 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 %var.load19, ptr %rec.fld27, align 1
  %rec.fld28 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 7
  store i1 %var.load20, ptr %rec.fld28, align 1
  %rec.fld29 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 8
  store i1 %var.load21, ptr %rec.fld29, align 1
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
  %var.load14 = load i64, ptr %var.m, align 8
  %bandtmp = and i64 %var.load14, 61440
  %cmptmp15 = icmp eq i64 %bandtmp, 40960
  store i1 %cmptmp15, ptr %var.is_link, align 1
  %var.load16 = load ptr, ptr %"var.s'", align 8
  %var.load17 = load i1, ptr %var.is_link, align 1
  %call.res18 = call ptr @"fs::make_metadata"(ptr %var.load16, i1 %var.load17)
  ret ptr %call.res18

ret.dead:                                         ; No predecessors!
  br label %choice.exit
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
  %loop.step.19 = alloca i64, align 8
  %loop.idx.19 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.19, align 8
  br label %loop.header.19

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

loop.header.19:                                   ; preds = %loop.latch.19, %choice.exit
  %counter.load = load i64, ptr %loop.idx.19, align 8
  br label %loop.body.19

loop.body.19:                                     ; preds = %loop.header.19
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.19, align 8
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

loop.exit.nat.19:                                 ; No predecessors!
  br label %loop.exit.19

loop.latch.19:                                    ; preds = %a.store, %choice.then91
  %step.val = load i64, ptr %loop.step.19, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.exit.19:                                     ; preds = %choice.then29, %loop.exit.nat.19
  %var.load169 = load ptr, ptr %var.dp, align 8
  %addr.ffi.int170 = ptrtoint ptr %var.load169 to i64
  %addr.ffi.masked171 = and i64 %addr.ffi.int170, 281474976710655
  %addr.ffi.clean172 = inttoptr i64 %addr.ffi.masked171 to ptr
  %call.res173 = call i64 @closedir(ptr %addr.ffi.clean172)
  %var.load174 = load ptr, ptr %var.res, align 8
  %a.load175 = load ptr, ptr %var.res, align 8
  %a.null176 = icmp eq ptr %a.load175, null
  br i1 %a.null176, label %a.create177, label %a.after178

choice.then29:                                    ; preds = %loop.body.19
  br label %loop.exit.19

choice.exit30:                                    ; preds = %loop.body.19
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
  br i1 %str.eq.result, label %or.20.then, label %or.20.else

or.20.then:                                       ; preds = %str.eq.merge
  br label %or.20.exit

or.20.else:                                       ; preds = %str.eq.merge
  %var.load61 = load ptr, ptr %var.name, align 8
  %eq.lhs.len62 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %eq.lhs.len63 = load i64, ptr %eq.lhs.len62, align 8
  %eq.lhs.len64 = and i64 %eq.lhs.len63, 281474976710655
  %str.tag65 = lshr i64 %eq.lhs.len63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

or.20.exit:                                       ; preds = %str.eq.merge84, %or.20.then
  %or.20.phi = phi i1 [ %str.eq.result, %or.20.then ], [ %str.eq.result90, %str.eq.merge84 ]
  br i1 %or.20.phi, label %choice.then91, label %choice.exit92

str_gen_check67:                                  ; preds = %or.20.else
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %or.20.else
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
  br label %or.20.exit

choice.then91:                                    ; preds = %or.20.exit
  br label %loop.latch.19

choice.exit92:                                    ; preds = %or.20.exit
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
  br label %loop.latch.19

a.create177:                                      ; preds = %loop.exit.19
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

a.after178:                                       ; preds = %a.create177, %loop.exit.19
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
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
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

choice.exit24:                                    ; preds = %loop.exit.21, %choice.exit48
  %choice.res183 = phi ptr [ %choice.res58, %choice.exit48 ], [ %var.load182, %loop.exit.21 ]
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
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

str_overflow_abort79:                             ; preds = %str_ok63
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len78

loop.header.21:                                   ; preds = %loop.latch.21, %b.buf.len78
  %counter.load = load i64, ptr %loop.idx.21, align 8
  br label %loop.body.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.21, align 8
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

loop.exit.nat.21:                                 ; No predecessors!
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %concat.tot.len173
  %step.val = load i64, ptr %loop.step.21, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %choice.then95, %loop.exit.nat.21
  %var.load179 = load i64, ptr %var.fd, align 8
  %coerce.trunc180 = trunc i64 %var.load179 to i32
  %call.res181 = call i32 @close(i32 %coerce.trunc180)
  %var.load182 = load ptr, ptr %"var.b'", align 8
  br label %choice.exit24

choice.then95:                                    ; preds = %loop.body.21
  br label %loop.exit.21

choice.exit96:                                    ; preds = %loop.body.21
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
  br label %loop.latch.21

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
  %loop.step.22 = alloca i64, align 8
  %loop.idx.22 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.22, align 8
  br label %loop.header.22

str_overflow_abort52:                             ; preds = %choice.exit43
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len51

loop.header.22:                                   ; preds = %loop.latch.22, %b.buf.len51
  %counter.load = load i64, ptr %loop.idx.22, align 8
  br label %loop.body.22

loop.body.22:                                     ; preds = %loop.header.22
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.22, align 8
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

loop.exit.nat.22:                                 ; No predecessors!
  br label %loop.exit.22

loop.latch.22:                                    ; preds = %choice.exit77
  %step.val = load i64, ptr %loop.step.22, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.exit.22:                                     ; preds = %choice.then76, %choice.then61, %loop.exit.nat.22
  %var.load78 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc79 = trunc i64 %var.load78 to i32
  %call.res80 = call i32 @close(i32 %coerce.trunc79)
  %var.load81 = load i64, ptr %var.d_fd, align 8
  %coerce.trunc82 = trunc i64 %var.load81 to i32
  %call.res83 = call i32 @close(i32 %coerce.trunc82)
  %var.load84 = load i1, ptr %"var.ok'", align 1
  ret i1 %var.load84

choice.then61:                                    ; preds = %loop.body.22
  br label %loop.exit.22

choice.exit62:                                    ; preds = %loop.body.22
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
  br label %loop.exit.22

choice.exit77:                                    ; preds = %choice.exit62
  br label %loop.latch.22
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
  br i1 %str.neq, label %and.23.then, label %and.23.else

and.23.then:                                      ; preds = %str.eq.merge
  %var.load15 = load ptr, ptr %var.p, align 8
  %var.load16 = load ptr, ptr %var.path, align 8
  %eq.lhs.len17 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %eq.lhs.len18 = load i64, ptr %eq.lhs.len17, align 8
  %eq.lhs.len19 = and i64 %eq.lhs.len18, 281474976710655
  %str.tag20 = lshr i64 %eq.lhs.len18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

and.23.else:                                      ; preds = %str.eq.merge
  br label %and.23.exit

and.23.exit:                                      ; preds = %and.23.else, %str.eq.merge40
  %and.23.phi = phi i1 [ %str.neq48, %str.eq.merge40 ], [ %str.neq, %and.23.else ]
  br i1 %and.23.phi, label %and.24.then, label %and.24.else

str_gen_check22:                                  ; preds = %and.23.then
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %and.23.then
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
  br label %and.23.exit

and.24.then:                                      ; preds = %and.23.exit
  %var.load49 = load ptr, ptr %var.p, align 8
  %call.res50 = call i1 @"fs::is_dir"(ptr %var.load49)
  %nottmp = xor i1 %call.res50, true
  br label %and.24.exit

and.24.else:                                      ; preds = %and.23.exit
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %and.24.then
  %and.24.phi = phi i1 [ %nottmp, %and.24.then ], [ %and.23.phi, %and.24.else ]
  br i1 %and.24.phi, label %choice.then51, label %choice.exit52

choice.then51:                                    ; preds = %and.24.exit
  %var.load53 = load ptr, ptr %var.p, align 8
  %call.res54 = call i1 @"fs::create_dir_all"(ptr %var.load53)
  store i1 %call.res54, ptr %var.ok, align 1
  %var.load55 = load i1, ptr %var.ok, align 1
  %nottmp56 = xor i1 %var.load55, true
  br i1 %nottmp56, label %choice.then57, label %choice.exit58

choice.exit52:                                    ; preds = %choice.exit58, %and.24.exit
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
  br i1 %call.res, label %and.25.then, label %and.25.else

and.25.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call i1 @"fs::is_symlink"(ptr %var.load1)
  %nottmp = xor i1 %call.res2, true
  br label %and.25.exit

and.25.else:                                      ; preds = %entry
  br label %and.25.exit

and.25.exit:                                      ; preds = %and.25.else, %and.25.then
  %and.25.phi = phi i1 [ %nottmp, %and.25.then ], [ %call.res, %and.25.else ]
  br i1 %and.25.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.25.exit
  %var.load3 = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %arg.str.ptr4 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr5 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %arg.str.ptr6 = load i64, ptr %arg.str.ptr5, align 8
  %arg.str.ptr7 = and i64 %arg.str.ptr6, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %and.25.exit
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
  %loop.step.28 = alloca i64, align 8
  %loop.idx.28 = alloca i64, align 8
  %"var.all_ok'" = alloca i1, align 1
  %var.ents = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::exists"(ptr %var.load)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %and.26.then, label %and.26.else

and.26.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call i1 @"fs::is_symlink"(ptr %var.load1)
  %nottmp3 = xor i1 %call.res2, true
  br label %and.26.exit

and.26.else:                                      ; preds = %entry
  br label %and.26.exit

and.26.exit:                                      ; preds = %and.26.else, %and.26.then
  %and.26.phi = phi i1 [ %nottmp3, %and.26.then ], [ %nottmp, %and.26.else ]
  br i1 %and.26.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.26.exit
  br label %choice.exit

choice.else:                                      ; preds = %and.26.exit
  %var.load4 = load ptr, ptr %var.path, align 8
  %call.res5 = call i1 @"fs::is_dir"(ptr %var.load4)
  br i1 %call.res5, label %and.27.then, label %and.27.else

choice.exit:                                      ; preds = %choice.exit11, %choice.then
  %choice.res73 = phi i1 [ true, %choice.then ], [ %choice.res, %choice.exit11 ]
  ret i1 %choice.res73

and.27.then:                                      ; preds = %choice.else
  %var.load6 = load ptr, ptr %var.path, align 8
  %call.res7 = call i1 @"fs::is_symlink"(ptr %var.load6)
  %nottmp8 = xor i1 %call.res7, true
  br label %and.27.exit

and.27.else:                                      ; preds = %choice.else
  br label %and.27.exit

and.27.exit:                                      ; preds = %and.27.else, %and.27.then
  %and.27.phi = phi i1 [ %nottmp8, %and.27.then ], [ %call.res5, %and.27.else ]
  br i1 %and.27.phi, label %choice.then9, label %choice.else10

choice.then9:                                     ; preds = %and.27.exit
  %var.load12 = load ptr, ptr %var.path, align 8
  %call.res13 = call ptr @"fs::read_dir"(ptr %var.load12)
  store ptr %call.res13, ptr %var.ents, align 8
  store i1 true, ptr %"var.all_ok'", align 1
  %var.load14 = load ptr, ptr %var.ents, align 8
  %a.load = load ptr, ptr %var.ents, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else10:                                    ; preds = %and.27.exit
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
  store i64 0, ptr %loop.idx.28, align 8
  br label %loop.header.28

loop.header.28:                                   ; preds = %loop.latch.28, %a.after
  %counter.load = load i64, ptr %loop.idx.28, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len17
  br i1 %loop.cond, label %loop.body.28, label %loop.exit.nat.28

loop.body.28:                                     ; preds = %loop.header.28
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.28, align 8
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

loop.exit.nat.28:                                 ; preds = %loop.header.28
  br label %loop.exit.28

loop.latch.28:                                    ; preds = %choice.exit27
  %step.val = load i64, ptr %loop.step.28, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.28, align 8
  br label %loop.header.28

loop.exit.28:                                     ; preds = %loop.exit.nat.28
  %var.load28 = load i1, ptr %"var.all_ok'", align 1
  %nottmp29 = xor i1 %var.load28, true
  br i1 %nottmp29, label %choice.then30, label %choice.exit31

choice.then26:                                    ; preds = %loop.body.28
  store i1 false, ptr %"var.all_ok'", align 1
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.then26, %loop.body.28
  br label %loop.latch.28

choice.then30:                                    ; preds = %loop.exit.28
  ret i1 false

choice.exit31:                                    ; preds = %ret.dead, %loop.exit.28
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

choice.exit2:                                     ; preds = %concat.tot.len160, %concat.tot.len111, %concat.tot.len59, %concat.tot.len20
  %choice.res = phi ptr [ %concat.str, %concat.tot.len20 ], [ %concat.str66, %concat.tot.len59 ], [ %concat.str118, %concat.tot.len111 ], [ %concat.str167, %concat.tot.len160 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %choice.exit
  %var.load3 = load i64, ptr %var.sz, align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load3)
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.lhs4 = load i64, ptr %concat.lhs, align 8
  %concat.lhs5 = and i64 %concat.lhs4, 281474976710655
  %str.tag = lshr i64 %concat.lhs4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.next:                                      ; preds = %choice.exit
  %cmptmp26 = icmp slt i64 %var.load1, 1048576
  br i1 %cmptmp26, label %choice.case24, label %choice.next25

str_gen_check:                                    ; preds = %choice.case
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %concat.lhs6 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.lhs7 = load ptr, ptr %concat.lhs6, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs8 = and i64 %concat.rhs, 281474976710655
  %str.tag9 = lshr i64 %concat.rhs, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %concat.rhs16 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs5, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len17

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

concat.sum.len17:                                 ; preds = %str_overflow_abort, %str_ok12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum18 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf19 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf19, label %str_overflow_abort21, label %concat.tot.len20

str_overflow_abort:                               ; preds = %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len17

concat.tot.len20:                                 ; preds = %str_overflow_abort21, %concat.sum.len17
  %arena.cur22 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 %sum18)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs7, i64 %concat.lhs5, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs16, i64 %concat.rhs8, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit2

str_overflow_abort21:                             ; preds = %concat.sum.len17
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len20

choice.case24:                                    ; preds = %choice.next
  %var.load27 = load i64, ptr %var.sz, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next25:                                    ; preds = %choice.next
  %cmptmp71 = icmp slt i64 %var.load1, 1073741824
  br i1 %cmptmp71, label %choice.case69, label %choice.next70

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case24
  %div.is.min = icmp eq i64 %var.load27, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.case24
  %6 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load27, 1024
  %call.res28 = call ptr @"str::from_int"(i64 %divtmp)
  %concat.lhs29 = getelementptr inbounds { i64, ptr }, ptr %call.res28, i32 0, i32 0
  %concat.lhs30 = load i64, ptr %concat.lhs29, align 8
  %concat.lhs31 = and i64 %concat.lhs30, 281474976710655
  %str.tag32 = lshr i64 %concat.lhs30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

div.ovf_abort:                                    ; preds = %div.not_zero
  %7 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

str_gen_check34:                                  ; preds = %div.ok
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %div.ok
  %concat.lhs39 = getelementptr inbounds { i64, ptr }, ptr %call.res28, i32 0, i32 1
  %concat.lhs40 = load ptr, ptr %concat.lhs39, align 8
  %concat.rhs41 = load i64, ptr @str.9.struct, align 8
  %concat.rhs42 = and i64 %concat.rhs41, 281474976710655
  %str.tag43 = lshr i64 %concat.rhs41, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

str_stale36:                                      ; preds = %str_gen_check34
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

str_gen_check45:                                  ; preds = %str_ok35
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag43)
  br i1 %tag.valid49, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %str_ok35
  %concat.rhs50 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %concat.sum.len51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs31, i64 %concat.rhs42)
  %sum52 = extractvalue { i64, i1 } %concat.sum.len51, 0
  %ovf53 = extractvalue { i64, i1 } %concat.sum.len51, 1
  br i1 %ovf53, label %str_overflow_abort55, label %concat.sum.len54

str_stale47:                                      ; preds = %str_gen_check45
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

concat.sum.len54:                                 ; preds = %str_overflow_abort55, %str_ok46
  %concat.tot.len56 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum52, i64 1)
  %sum57 = extractvalue { i64, i1 } %concat.tot.len56, 0
  %ovf58 = extractvalue { i64, i1 } %concat.tot.len56, 1
  br i1 %ovf58, label %str_overflow_abort60, label %concat.tot.len59

str_overflow_abort55:                             ; preds = %str_ok46
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len54

concat.tot.len59:                                 ; preds = %str_overflow_abort60, %concat.sum.len54
  %arena.cur61 = call ptr @dva_arena_current()
  %concat.buf62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum57)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf62, ptr align 1 %concat.lhs40, i64 %concat.lhs31, i1 false)
  %concat.mid63 = getelementptr i8, ptr %concat.buf62, i64 %concat.lhs31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid63, ptr align 1 %concat.rhs50, i64 %concat.rhs42, i1 false)
  %concat.nul64 = getelementptr i8, ptr %concat.buf62, i64 %sum52
  store i8 0, ptr %concat.nul64, align 1
  %arena.cur65 = call ptr @dva_arena_current()
  %concat.str66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  %str.build.len.gep67 = getelementptr inbounds { i64, ptr }, ptr %concat.str66, i32 0, i32 0
  store i64 %sum52, ptr %str.build.len.gep67, align 8
  %str.build.data.gep68 = getelementptr inbounds { i64, ptr }, ptr %concat.str66, i32 0, i32 1
  store ptr %concat.buf62, ptr %str.build.data.gep68, align 8
  br label %choice.exit2

str_overflow_abort60:                             ; preds = %concat.sum.len54
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len59

choice.case69:                                    ; preds = %choice.next25
  %var.load72 = load i64, ptr %var.sz, align 8
  br i1 false, label %div.zero_abort74, label %div.not_zero73

choice.next70:                                    ; preds = %choice.next25
  %var.load121 = load i64, ptr %var.sz, align 8
  br i1 false, label %div.zero_abort123, label %div.not_zero122

div.not_zero73:                                   ; preds = %div.zero_abort74, %choice.case69
  %div.is.min75 = icmp eq i64 %var.load72, -9223372036854775808
  %div.is.ovf76 = and i1 %div.is.min75, false
  br i1 %div.is.ovf76, label %div.ovf_abort78, label %div.ok77

div.zero_abort74:                                 ; preds = %choice.case69
  %12 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero73

div.ok77:                                         ; preds = %div.ovf_abort78, %div.not_zero73
  %divtmp79 = sdiv i64 %var.load72, 1048576
  %call.res80 = call ptr @"str::from_int"(i64 %divtmp79)
  %concat.lhs81 = getelementptr inbounds { i64, ptr }, ptr %call.res80, i32 0, i32 0
  %concat.lhs82 = load i64, ptr %concat.lhs81, align 8
  %concat.lhs83 = and i64 %concat.lhs82, 281474976710655
  %str.tag84 = lshr i64 %concat.lhs82, 48
  %str.immortal85 = icmp eq i64 %str.tag84, 0
  br i1 %str.immortal85, label %str_ok87, label %str_gen_check86

div.ovf_abort78:                                  ; preds = %div.not_zero73
  %13 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok77

str_gen_check86:                                  ; preds = %div.ok77
  %arena.cur89 = call ptr @dva_arena_current()
  %tag.valid90 = call i1 @dva_arena_validate_tag(ptr %arena.cur89, i64 %str.tag84)
  br i1 %tag.valid90, label %str_ok87, label %str_stale88

str_ok87:                                         ; preds = %str_stale88, %str_gen_check86, %div.ok77
  %concat.lhs91 = getelementptr inbounds { i64, ptr }, ptr %call.res80, i32 0, i32 1
  %concat.lhs92 = load ptr, ptr %concat.lhs91, align 8
  %concat.rhs93 = load i64, ptr @str.10.struct, align 8
  %concat.rhs94 = and i64 %concat.rhs93, 281474976710655
  %str.tag95 = lshr i64 %concat.rhs93, 48
  %str.immortal96 = icmp eq i64 %str.tag95, 0
  br i1 %str.immortal96, label %str_ok98, label %str_gen_check97

str_stale88:                                      ; preds = %str_gen_check86
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok87

str_gen_check97:                                  ; preds = %str_ok87
  %arena.cur100 = call ptr @dva_arena_current()
  %tag.valid101 = call i1 @dva_arena_validate_tag(ptr %arena.cur100, i64 %str.tag95)
  br i1 %tag.valid101, label %str_ok98, label %str_stale99

str_ok98:                                         ; preds = %str_stale99, %str_gen_check97, %str_ok87
  %concat.rhs102 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %concat.sum.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs83, i64 %concat.rhs94)
  %sum104 = extractvalue { i64, i1 } %concat.sum.len103, 0
  %ovf105 = extractvalue { i64, i1 } %concat.sum.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %concat.sum.len106

str_stale99:                                      ; preds = %str_gen_check97
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok98

concat.sum.len106:                                ; preds = %str_overflow_abort107, %str_ok98
  %concat.tot.len108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum104, i64 1)
  %sum109 = extractvalue { i64, i1 } %concat.tot.len108, 0
  %ovf110 = extractvalue { i64, i1 } %concat.tot.len108, 1
  br i1 %ovf110, label %str_overflow_abort112, label %concat.tot.len111

str_overflow_abort107:                            ; preds = %str_ok98
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len106

concat.tot.len111:                                ; preds = %str_overflow_abort112, %concat.sum.len106
  %arena.cur113 = call ptr @dva_arena_current()
  %concat.buf114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 %sum109)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf114, ptr align 1 %concat.lhs92, i64 %concat.lhs83, i1 false)
  %concat.mid115 = getelementptr i8, ptr %concat.buf114, i64 %concat.lhs83
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid115, ptr align 1 %concat.rhs102, i64 %concat.rhs94, i1 false)
  %concat.nul116 = getelementptr i8, ptr %concat.buf114, i64 %sum104
  store i8 0, ptr %concat.nul116, align 1
  %arena.cur117 = call ptr @dva_arena_current()
  %concat.str118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 16)
  %str.build.len.gep119 = getelementptr inbounds { i64, ptr }, ptr %concat.str118, i32 0, i32 0
  store i64 %sum104, ptr %str.build.len.gep119, align 8
  %str.build.data.gep120 = getelementptr inbounds { i64, ptr }, ptr %concat.str118, i32 0, i32 1
  store ptr %concat.buf114, ptr %str.build.data.gep120, align 8
  br label %choice.exit2

str_overflow_abort112:                            ; preds = %concat.sum.len106
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len111

div.not_zero122:                                  ; preds = %div.zero_abort123, %choice.next70
  %div.is.min124 = icmp eq i64 %var.load121, -9223372036854775808
  %div.is.ovf125 = and i1 %div.is.min124, false
  br i1 %div.is.ovf125, label %div.ovf_abort127, label %div.ok126

div.zero_abort123:                                ; preds = %choice.next70
  %18 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero122

div.ok126:                                        ; preds = %div.ovf_abort127, %div.not_zero122
  %divtmp128 = sdiv i64 %var.load121, 1073741824
  %call.res129 = call ptr @"str::from_int"(i64 %divtmp128)
  %concat.lhs130 = getelementptr inbounds { i64, ptr }, ptr %call.res129, i32 0, i32 0
  %concat.lhs131 = load i64, ptr %concat.lhs130, align 8
  %concat.lhs132 = and i64 %concat.lhs131, 281474976710655
  %str.tag133 = lshr i64 %concat.lhs131, 48
  %str.immortal134 = icmp eq i64 %str.tag133, 0
  br i1 %str.immortal134, label %str_ok136, label %str_gen_check135

div.ovf_abort127:                                 ; preds = %div.not_zero122
  %19 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok126

str_gen_check135:                                 ; preds = %div.ok126
  %arena.cur138 = call ptr @dva_arena_current()
  %tag.valid139 = call i1 @dva_arena_validate_tag(ptr %arena.cur138, i64 %str.tag133)
  br i1 %tag.valid139, label %str_ok136, label %str_stale137

str_ok136:                                        ; preds = %str_stale137, %str_gen_check135, %div.ok126
  %concat.lhs140 = getelementptr inbounds { i64, ptr }, ptr %call.res129, i32 0, i32 1
  %concat.lhs141 = load ptr, ptr %concat.lhs140, align 8
  %concat.rhs142 = load i64, ptr @str.11.struct, align 8
  %concat.rhs143 = and i64 %concat.rhs142, 281474976710655
  %str.tag144 = lshr i64 %concat.rhs142, 48
  %str.immortal145 = icmp eq i64 %str.tag144, 0
  br i1 %str.immortal145, label %str_ok147, label %str_gen_check146

str_stale137:                                     ; preds = %str_gen_check135
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok136

str_gen_check146:                                 ; preds = %str_ok136
  %arena.cur149 = call ptr @dva_arena_current()
  %tag.valid150 = call i1 @dva_arena_validate_tag(ptr %arena.cur149, i64 %str.tag144)
  br i1 %tag.valid150, label %str_ok147, label %str_stale148

str_ok147:                                        ; preds = %str_stale148, %str_gen_check146, %str_ok136
  %concat.rhs151 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %concat.sum.len152 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs132, i64 %concat.rhs143)
  %sum153 = extractvalue { i64, i1 } %concat.sum.len152, 0
  %ovf154 = extractvalue { i64, i1 } %concat.sum.len152, 1
  br i1 %ovf154, label %str_overflow_abort156, label %concat.sum.len155

str_stale148:                                     ; preds = %str_gen_check146
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok147

concat.sum.len155:                                ; preds = %str_overflow_abort156, %str_ok147
  %concat.tot.len157 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum153, i64 1)
  %sum158 = extractvalue { i64, i1 } %concat.tot.len157, 0
  %ovf159 = extractvalue { i64, i1 } %concat.tot.len157, 1
  br i1 %ovf159, label %str_overflow_abort161, label %concat.tot.len160

str_overflow_abort156:                            ; preds = %str_ok147
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len155

concat.tot.len160:                                ; preds = %str_overflow_abort161, %concat.sum.len155
  %arena.cur162 = call ptr @dva_arena_current()
  %concat.buf163 = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 %sum158)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf163, ptr align 1 %concat.lhs141, i64 %concat.lhs132, i1 false)
  %concat.mid164 = getelementptr i8, ptr %concat.buf163, i64 %concat.lhs132
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid164, ptr align 1 %concat.rhs151, i64 %concat.rhs143, i1 false)
  %concat.nul165 = getelementptr i8, ptr %concat.buf163, i64 %sum153
  store i8 0, ptr %concat.nul165, align 1
  %arena.cur166 = call ptr @dva_arena_current()
  %concat.str167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 16)
  %str.build.len.gep168 = getelementptr inbounds { i64, ptr }, ptr %concat.str167, i32 0, i32 0
  store i64 %sum153, ptr %str.build.len.gep168, align 8
  %str.build.data.gep169 = getelementptr inbounds { i64, ptr }, ptr %concat.str167, i32 0, i32 1
  store ptr %concat.buf163, ptr %str.build.data.gep169, align 8
  br label %choice.exit2

str_overflow_abort161:                            ; preds = %concat.sum.len155
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len160
}

declare ptr @"str::from_int"(i64) #1

define ptr @"fs::format_perms"(i64 %0, i1 %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.is_d = alloca i1, align 1
  %var.mode = alloca i64, align 8
  store i64 %0, ptr %var.mode, align 8
  store i1 %1, ptr %var.is_d, align 1
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
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
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load i1, ptr %var.is_d, align 1
  br i1 %var.load, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  br label %choice.exit

choice.else:                                      ; preds = %b.buf.len1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i32 [ 100, %choice.then ], [ 45, %choice.else ]
  %b.load = load ptr, ptr %var.b, align 8
  %var.load3 = load i1, ptr %var.is_d, align 1
  br i1 %var.load3, label %choice.then4, label %choice.else5

choice.then4:                                     ; preds = %choice.exit
  br label %choice.exit6

choice.else5:                                     ; preds = %choice.exit
  br label %choice.exit6

choice.exit6:                                     ; preds = %choice.else5, %choice.then4
  %choice.res7 = phi i32 [ 100, %choice.then4 ], [ 45, %choice.else5 ]
  %coerce.sext = sext i32 %choice.res7 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len8 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len8, i64 %br.width)
  %sum9 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf10 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf10, label %str_overflow_abort12, label %b.rn.new.len11

b.rn.new.len11:                                   ; preds = %str_overflow_abort12, %choice.exit6
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap13 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap13, %sum9
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort12:                             ; preds = %choice.exit6
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len11

b.grow2:                                          ; preds = %b.rn.new.len11
  %b.cap2 = mul i64 %b.cap13, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum9
  %b.new.cap = select i1 %b.cap.need, i64 %sum9, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len214 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data215 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum16 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf17 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf17, label %str_overflow_abort19, label %b.new.buf.len218

b.nogrow2:                                        ; preds = %b.rn.new.len11
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len218
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data21 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data21, i64 %b.rn.cur.len8
  br i1 %br.cmp1, label %br.b1.29, label %br.c2.29

b.new.buf.len218:                                 ; preds = %str_overflow_abort19, %b.grow2
  %arena.cur20 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 %sum16)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data215, i64 %b.cur.len214, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len214
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort19:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len218

br.b1.29:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.29

br.c2.29:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.29, label %br.c3.29

br.b2.29:                                         ; preds = %br.c2.29
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.29

br.c3.29:                                         ; preds = %br.c2.29
  br i1 %br.cmp3, label %br.b3.29, label %br.b4.29

br.b3.29:                                         ; preds = %br.c3.29
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
  br label %br.done.29

br.b4.29:                                         ; preds = %br.c3.29
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
  br label %br.done.29

br.done.29:                                       ; preds = %br.b4.29, %br.b3.29, %br.b2.29, %br.b1.29
  %br.nul = getelementptr i8, ptr %b.rn.data21, i64 %sum9
  store i8 0, ptr %br.nul, align 1
  %b.len.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum9, ptr %b.len.gep22, align 8
  %var.load23 = load i64, ptr %var.mode, align 8
  %bandtmp = and i64 %var.load23, 256
  %cmptmp = icmp ne i64 %bandtmp, 0
  br i1 %cmptmp, label %choice.then24, label %choice.else25

choice.then24:                                    ; preds = %br.done.29
  br label %choice.exit26

choice.else25:                                    ; preds = %br.done.29
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %choice.then24
  %choice.res27 = phi i32 [ 114, %choice.then24 ], [ 45, %choice.else25 ]
  %b.load28 = load ptr, ptr %var.b, align 8
  %var.load29 = load i64, ptr %var.mode, align 8
  %bandtmp30 = and i64 %var.load29, 256
  %cmptmp31 = icmp ne i64 %bandtmp30, 0
  br i1 %cmptmp31, label %choice.then32, label %choice.else33

choice.then32:                                    ; preds = %choice.exit26
  br label %choice.exit34

choice.else33:                                    ; preds = %choice.exit26
  br label %choice.exit34

choice.exit34:                                    ; preds = %choice.else33, %choice.then32
  %choice.res35 = phi i32 [ 114, %choice.then32 ], [ 45, %choice.else33 ]
  %coerce.sext36 = sext i32 %choice.res35 to i64
  %br.cmp137 = icmp slt i64 %coerce.sext36, 128
  %br.cmp238 = icmp slt i64 %coerce.sext36, 2048
  %br.cmp339 = icmp slt i64 %coerce.sext36, 65536
  %br.w340 = select i1 %br.cmp339, i64 3, i64 4
  %br.w241 = select i1 %br.cmp238, i64 2, i64 %br.w340
  %br.width42 = select i1 %br.cmp137, i64 1, i64 %br.w241
  %b.rn.cur.len43 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.rn.cur.len44 = load i64, ptr %b.rn.cur.len43, align 8
  %b.rn.new.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len44, i64 %br.width42)
  %sum46 = extractvalue { i64, i1 } %b.rn.new.len45, 0
  %ovf47 = extractvalue { i64, i1 } %b.rn.new.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.rn.new.len48

b.rn.new.len48:                                   ; preds = %str_overflow_abort49, %choice.exit34
  %b.cap50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  %b.cap51 = load i64, ptr %b.cap50, align 8
  %b.need.grow52 = icmp slt i64 %b.cap51, %sum46
  br i1 %b.need.grow52, label %b.grow253, label %b.nogrow254

str_overflow_abort49:                             ; preds = %choice.exit34
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len48

b.grow253:                                        ; preds = %b.rn.new.len48
  %b.cap256 = mul i64 %b.cap51, 2
  %b.cap.small57 = icmp slt i64 %b.cap256, 16
  %b.cap.grow58 = select i1 %b.cap.small57, i64 16, i64 %b.cap256
  %b.cap.need59 = icmp slt i64 %b.cap.grow58, %sum46
  %b.new.cap60 = select i1 %b.cap.need59, i64 %sum46, i64 %b.cap.grow58
  %b.cur.len261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.cur.len262 = load i64, ptr %b.cur.len261, align 8
  %b.cur.data263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.cur.data264 = load ptr, ptr %b.cur.data263, align 8
  %b.new.buf.len265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap60, i64 1)
  %sum66 = extractvalue { i64, i1 } %b.new.buf.len265, 0
  %ovf67 = extractvalue { i64, i1 } %b.new.buf.len265, 1
  br i1 %ovf67, label %str_overflow_abort69, label %b.new.buf.len268

b.nogrow254:                                      ; preds = %b.rn.new.len48
  br label %b.grow_done55

b.grow_done55:                                    ; preds = %b.nogrow254, %b.new.buf.len268
  %b.rn.data75 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.rn.data76 = load ptr, ptr %b.rn.data75, align 8
  %b.rn.dst77 = getelementptr i8, ptr %b.rn.data76, i64 %b.rn.cur.len44
  br i1 %br.cmp137, label %br.b1.30, label %br.c2.30

b.new.buf.len268:                                 ; preds = %str_overflow_abort69, %b.grow253
  %arena.cur70 = call ptr @dva_arena_current()
  %b.new.buf271 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 %sum66)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf271, ptr align 1 %b.cur.data264, i64 %b.cur.len262, i1 false)
  %b.grow2.nul72 = getelementptr i8, ptr %b.new.buf271, i64 %b.cur.len262
  store i8 0, ptr %b.grow2.nul72, align 1
  %b.new.data2.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  store ptr %b.new.buf271, ptr %b.new.data2.gep73, align 8
  %b.new.cap2.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  store i64 %b.new.cap60, ptr %b.new.cap2.gep74, align 8
  br label %b.grow_done55

str_overflow_abort69:                             ; preds = %b.grow253
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len268

br.b1.30:                                         ; preds = %b.grow_done55
  %br.b1.078 = trunc i64 %coerce.sext36 to i8
  store i8 %br.b1.078, ptr %b.rn.dst77, align 1
  br label %br.done.30

br.c2.30:                                         ; preds = %b.grow_done55
  br i1 %br.cmp238, label %br.b2.30, label %br.c3.30

br.b2.30:                                         ; preds = %br.c2.30
  %br.sh679 = lshr i64 %coerce.sext36, 6
  %br.b2.080 = or i64 %br.sh679, 192
  %br.b2.0t81 = trunc i64 %br.b2.080 to i8
  %br.m682 = and i64 %coerce.sext36, 63
  %br.b2.183 = or i64 %br.m682, 128
  %br.b2.1t84 = trunc i64 %br.b2.183 to i8
  store i8 %br.b2.0t81, ptr %b.rn.dst77, align 1
  %br.dst185 = getelementptr i8, ptr %b.rn.dst77, i64 1
  store i8 %br.b2.1t84, ptr %br.dst185, align 1
  br label %br.done.30

br.c3.30:                                         ; preds = %br.c2.30
  br i1 %br.cmp339, label %br.b3.30, label %br.b4.30

br.b3.30:                                         ; preds = %br.c3.30
  %br.sh1286 = lshr i64 %coerce.sext36, 12
  %br.b3.087 = or i64 %br.sh1286, 224
  %br.b3.0t88 = trunc i64 %br.b3.087 to i8
  %br.sh6.389 = lshr i64 %coerce.sext36, 6
  %br.m6.390 = and i64 %br.sh6.389, 63
  %br.b3.191 = or i64 %br.m6.390, 128
  %br.b3.1t92 = trunc i64 %br.b3.191 to i8
  %br.mend93 = and i64 %coerce.sext36, 63
  %br.b3.294 = or i64 %br.mend93, 128
  %br.b3.2t95 = trunc i64 %br.b3.294 to i8
  store i8 %br.b3.0t88, ptr %b.rn.dst77, align 1
  %br.dst1.396 = getelementptr i8, ptr %b.rn.dst77, i64 1
  store i8 %br.b3.1t92, ptr %br.dst1.396, align 1
  %br.dst2.397 = getelementptr i8, ptr %b.rn.dst77, i64 2
  store i8 %br.b3.2t95, ptr %br.dst2.397, align 1
  br label %br.done.30

br.b4.30:                                         ; preds = %br.c3.30
  %br.sh1898 = lshr i64 %coerce.sext36, 18
  %br.b4.099 = or i64 %br.sh1898, 240
  %br.b4.0t100 = trunc i64 %br.b4.099 to i8
  %br.sh12.4101 = lshr i64 %coerce.sext36, 12
  %br.m12.4102 = and i64 %br.sh12.4101, 63
  %br.b4.1103 = or i64 %br.m12.4102, 128
  %br.b4.1t104 = trunc i64 %br.b4.1103 to i8
  %br.sh6.4105 = lshr i64 %coerce.sext36, 6
  %br.m6.4106 = and i64 %br.sh6.4105, 63
  %br.b4.2107 = or i64 %br.m6.4106, 128
  %br.b4.2t108 = trunc i64 %br.b4.2107 to i8
  %br.mend4109 = and i64 %coerce.sext36, 63
  %br.b4.3110 = or i64 %br.mend4109, 128
  %br.b4.3t111 = trunc i64 %br.b4.3110 to i8
  store i8 %br.b4.0t100, ptr %b.rn.dst77, align 1
  %br.dst1.4112 = getelementptr i8, ptr %b.rn.dst77, i64 1
  store i8 %br.b4.1t104, ptr %br.dst1.4112, align 1
  %br.dst2.4113 = getelementptr i8, ptr %b.rn.dst77, i64 2
  store i8 %br.b4.2t108, ptr %br.dst2.4113, align 1
  %br.dst3.4114 = getelementptr i8, ptr %b.rn.dst77, i64 3
  store i8 %br.b4.3t111, ptr %br.dst3.4114, align 1
  br label %br.done.30

br.done.30:                                       ; preds = %br.b4.30, %br.b3.30, %br.b2.30, %br.b1.30
  %br.nul115 = getelementptr i8, ptr %b.rn.data76, i64 %sum46
  store i8 0, ptr %br.nul115, align 1
  %b.len.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  store i64 %sum46, ptr %b.len.gep116, align 8
  %var.load117 = load i64, ptr %var.mode, align 8
  %bandtmp118 = and i64 %var.load117, 128
  %cmptmp119 = icmp ne i64 %bandtmp118, 0
  br i1 %cmptmp119, label %choice.then120, label %choice.else121

choice.then120:                                   ; preds = %br.done.30
  br label %choice.exit122

choice.else121:                                   ; preds = %br.done.30
  br label %choice.exit122

choice.exit122:                                   ; preds = %choice.else121, %choice.then120
  %choice.res123 = phi i32 [ 119, %choice.then120 ], [ 45, %choice.else121 ]
  %b.load124 = load ptr, ptr %var.b, align 8
  %var.load125 = load i64, ptr %var.mode, align 8
  %bandtmp126 = and i64 %var.load125, 128
  %cmptmp127 = icmp ne i64 %bandtmp126, 0
  br i1 %cmptmp127, label %choice.then128, label %choice.else129

choice.then128:                                   ; preds = %choice.exit122
  br label %choice.exit130

choice.else129:                                   ; preds = %choice.exit122
  br label %choice.exit130

choice.exit130:                                   ; preds = %choice.else129, %choice.then128
  %choice.res131 = phi i32 [ 119, %choice.then128 ], [ 45, %choice.else129 ]
  %coerce.sext132 = sext i32 %choice.res131 to i64
  %br.cmp1133 = icmp slt i64 %coerce.sext132, 128
  %br.cmp2134 = icmp slt i64 %coerce.sext132, 2048
  %br.cmp3135 = icmp slt i64 %coerce.sext132, 65536
  %br.w3136 = select i1 %br.cmp3135, i64 3, i64 4
  %br.w2137 = select i1 %br.cmp2134, i64 2, i64 %br.w3136
  %br.width138 = select i1 %br.cmp1133, i64 1, i64 %br.w2137
  %b.rn.cur.len139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  %b.rn.cur.len140 = load i64, ptr %b.rn.cur.len139, align 8
  %b.rn.new.len141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len140, i64 %br.width138)
  %sum142 = extractvalue { i64, i1 } %b.rn.new.len141, 0
  %ovf143 = extractvalue { i64, i1 } %b.rn.new.len141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %b.rn.new.len144

b.rn.new.len144:                                  ; preds = %str_overflow_abort145, %choice.exit130
  %b.cap146 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 2
  %b.cap147 = load i64, ptr %b.cap146, align 8
  %b.need.grow148 = icmp slt i64 %b.cap147, %sum142
  br i1 %b.need.grow148, label %b.grow2149, label %b.nogrow2150

str_overflow_abort145:                            ; preds = %choice.exit130
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len144

b.grow2149:                                       ; preds = %b.rn.new.len144
  %b.cap2152 = mul i64 %b.cap147, 2
  %b.cap.small153 = icmp slt i64 %b.cap2152, 16
  %b.cap.grow154 = select i1 %b.cap.small153, i64 16, i64 %b.cap2152
  %b.cap.need155 = icmp slt i64 %b.cap.grow154, %sum142
  %b.new.cap156 = select i1 %b.cap.need155, i64 %sum142, i64 %b.cap.grow154
  %b.cur.len2157 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  %b.cur.len2158 = load i64, ptr %b.cur.len2157, align 8
  %b.cur.data2159 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  %b.cur.data2160 = load ptr, ptr %b.cur.data2159, align 8
  %b.new.buf.len2161 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap156, i64 1)
  %sum162 = extractvalue { i64, i1 } %b.new.buf.len2161, 0
  %ovf163 = extractvalue { i64, i1 } %b.new.buf.len2161, 1
  br i1 %ovf163, label %str_overflow_abort165, label %b.new.buf.len2164

b.nogrow2150:                                     ; preds = %b.rn.new.len144
  br label %b.grow_done151

b.grow_done151:                                   ; preds = %b.nogrow2150, %b.new.buf.len2164
  %b.rn.data171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  %b.rn.data172 = load ptr, ptr %b.rn.data171, align 8
  %b.rn.dst173 = getelementptr i8, ptr %b.rn.data172, i64 %b.rn.cur.len140
  br i1 %br.cmp1133, label %br.b1.31, label %br.c2.31

b.new.buf.len2164:                                ; preds = %str_overflow_abort165, %b.grow2149
  %arena.cur166 = call ptr @dva_arena_current()
  %b.new.buf2167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 %sum162)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2167, ptr align 1 %b.cur.data2160, i64 %b.cur.len2158, i1 false)
  %b.grow2.nul168 = getelementptr i8, ptr %b.new.buf2167, i64 %b.cur.len2158
  store i8 0, ptr %b.grow2.nul168, align 1
  %b.new.data2.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  store ptr %b.new.buf2167, ptr %b.new.data2.gep169, align 8
  %b.new.cap2.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 2
  store i64 %b.new.cap156, ptr %b.new.cap2.gep170, align 8
  br label %b.grow_done151

str_overflow_abort165:                            ; preds = %b.grow2149
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2164

br.b1.31:                                         ; preds = %b.grow_done151
  %br.b1.0174 = trunc i64 %coerce.sext132 to i8
  store i8 %br.b1.0174, ptr %b.rn.dst173, align 1
  br label %br.done.31

br.c2.31:                                         ; preds = %b.grow_done151
  br i1 %br.cmp2134, label %br.b2.31, label %br.c3.31

br.b2.31:                                         ; preds = %br.c2.31
  %br.sh6175 = lshr i64 %coerce.sext132, 6
  %br.b2.0176 = or i64 %br.sh6175, 192
  %br.b2.0t177 = trunc i64 %br.b2.0176 to i8
  %br.m6178 = and i64 %coerce.sext132, 63
  %br.b2.1179 = or i64 %br.m6178, 128
  %br.b2.1t180 = trunc i64 %br.b2.1179 to i8
  store i8 %br.b2.0t177, ptr %b.rn.dst173, align 1
  %br.dst1181 = getelementptr i8, ptr %b.rn.dst173, i64 1
  store i8 %br.b2.1t180, ptr %br.dst1181, align 1
  br label %br.done.31

br.c3.31:                                         ; preds = %br.c2.31
  br i1 %br.cmp3135, label %br.b3.31, label %br.b4.31

br.b3.31:                                         ; preds = %br.c3.31
  %br.sh12182 = lshr i64 %coerce.sext132, 12
  %br.b3.0183 = or i64 %br.sh12182, 224
  %br.b3.0t184 = trunc i64 %br.b3.0183 to i8
  %br.sh6.3185 = lshr i64 %coerce.sext132, 6
  %br.m6.3186 = and i64 %br.sh6.3185, 63
  %br.b3.1187 = or i64 %br.m6.3186, 128
  %br.b3.1t188 = trunc i64 %br.b3.1187 to i8
  %br.mend189 = and i64 %coerce.sext132, 63
  %br.b3.2190 = or i64 %br.mend189, 128
  %br.b3.2t191 = trunc i64 %br.b3.2190 to i8
  store i8 %br.b3.0t184, ptr %b.rn.dst173, align 1
  %br.dst1.3192 = getelementptr i8, ptr %b.rn.dst173, i64 1
  store i8 %br.b3.1t188, ptr %br.dst1.3192, align 1
  %br.dst2.3193 = getelementptr i8, ptr %b.rn.dst173, i64 2
  store i8 %br.b3.2t191, ptr %br.dst2.3193, align 1
  br label %br.done.31

br.b4.31:                                         ; preds = %br.c3.31
  %br.sh18194 = lshr i64 %coerce.sext132, 18
  %br.b4.0195 = or i64 %br.sh18194, 240
  %br.b4.0t196 = trunc i64 %br.b4.0195 to i8
  %br.sh12.4197 = lshr i64 %coerce.sext132, 12
  %br.m12.4198 = and i64 %br.sh12.4197, 63
  %br.b4.1199 = or i64 %br.m12.4198, 128
  %br.b4.1t200 = trunc i64 %br.b4.1199 to i8
  %br.sh6.4201 = lshr i64 %coerce.sext132, 6
  %br.m6.4202 = and i64 %br.sh6.4201, 63
  %br.b4.2203 = or i64 %br.m6.4202, 128
  %br.b4.2t204 = trunc i64 %br.b4.2203 to i8
  %br.mend4205 = and i64 %coerce.sext132, 63
  %br.b4.3206 = or i64 %br.mend4205, 128
  %br.b4.3t207 = trunc i64 %br.b4.3206 to i8
  store i8 %br.b4.0t196, ptr %b.rn.dst173, align 1
  %br.dst1.4208 = getelementptr i8, ptr %b.rn.dst173, i64 1
  store i8 %br.b4.1t200, ptr %br.dst1.4208, align 1
  %br.dst2.4209 = getelementptr i8, ptr %b.rn.dst173, i64 2
  store i8 %br.b4.2t204, ptr %br.dst2.4209, align 1
  %br.dst3.4210 = getelementptr i8, ptr %b.rn.dst173, i64 3
  store i8 %br.b4.3t207, ptr %br.dst3.4210, align 1
  br label %br.done.31

br.done.31:                                       ; preds = %br.b4.31, %br.b3.31, %br.b2.31, %br.b1.31
  %br.nul211 = getelementptr i8, ptr %b.rn.data172, i64 %sum142
  store i8 0, ptr %br.nul211, align 1
  %b.len.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  store i64 %sum142, ptr %b.len.gep212, align 8
  %var.load213 = load i64, ptr %var.mode, align 8
  %bandtmp214 = and i64 %var.load213, 64
  %cmptmp215 = icmp ne i64 %bandtmp214, 0
  br i1 %cmptmp215, label %choice.then216, label %choice.else217

choice.then216:                                   ; preds = %br.done.31
  br label %choice.exit218

choice.else217:                                   ; preds = %br.done.31
  br label %choice.exit218

choice.exit218:                                   ; preds = %choice.else217, %choice.then216
  %choice.res219 = phi i32 [ 120, %choice.then216 ], [ 45, %choice.else217 ]
  %b.load220 = load ptr, ptr %var.b, align 8
  %var.load221 = load i64, ptr %var.mode, align 8
  %bandtmp222 = and i64 %var.load221, 64
  %cmptmp223 = icmp ne i64 %bandtmp222, 0
  br i1 %cmptmp223, label %choice.then224, label %choice.else225

choice.then224:                                   ; preds = %choice.exit218
  br label %choice.exit226

choice.else225:                                   ; preds = %choice.exit218
  br label %choice.exit226

choice.exit226:                                   ; preds = %choice.else225, %choice.then224
  %choice.res227 = phi i32 [ 120, %choice.then224 ], [ 45, %choice.else225 ]
  %coerce.sext228 = sext i32 %choice.res227 to i64
  %br.cmp1229 = icmp slt i64 %coerce.sext228, 128
  %br.cmp2230 = icmp slt i64 %coerce.sext228, 2048
  %br.cmp3231 = icmp slt i64 %coerce.sext228, 65536
  %br.w3232 = select i1 %br.cmp3231, i64 3, i64 4
  %br.w2233 = select i1 %br.cmp2230, i64 2, i64 %br.w3232
  %br.width234 = select i1 %br.cmp1229, i64 1, i64 %br.w2233
  %b.rn.cur.len235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load220, i32 0, i32 0
  %b.rn.cur.len236 = load i64, ptr %b.rn.cur.len235, align 8
  %b.rn.new.len237 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len236, i64 %br.width234)
  %sum238 = extractvalue { i64, i1 } %b.rn.new.len237, 0
  %ovf239 = extractvalue { i64, i1 } %b.rn.new.len237, 1
  br i1 %ovf239, label %str_overflow_abort241, label %b.rn.new.len240

b.rn.new.len240:                                  ; preds = %str_overflow_abort241, %choice.exit226
  %b.cap242 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load220, i32 0, i32 2
  %b.cap243 = load i64, ptr %b.cap242, align 8
  %b.need.grow244 = icmp slt i64 %b.cap243, %sum238
  br i1 %b.need.grow244, label %b.grow2245, label %b.nogrow2246

str_overflow_abort241:                            ; preds = %choice.exit226
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len240

b.grow2245:                                       ; preds = %b.rn.new.len240
  %b.cap2248 = mul i64 %b.cap243, 2
  %b.cap.small249 = icmp slt i64 %b.cap2248, 16
  %b.cap.grow250 = select i1 %b.cap.small249, i64 16, i64 %b.cap2248
  %b.cap.need251 = icmp slt i64 %b.cap.grow250, %sum238
  %b.new.cap252 = select i1 %b.cap.need251, i64 %sum238, i64 %b.cap.grow250
  %b.cur.len2253 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load220, i32 0, i32 0
  %b.cur.len2254 = load i64, ptr %b.cur.len2253, align 8
  %b.cur.data2255 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load220, i32 0, i32 1
  %b.cur.data2256 = load ptr, ptr %b.cur.data2255, align 8
  %b.new.buf.len2257 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap252, i64 1)
  %sum258 = extractvalue { i64, i1 } %b.new.buf.len2257, 0
  %ovf259 = extractvalue { i64, i1 } %b.new.buf.len2257, 1
  br i1 %ovf259, label %str_overflow_abort261, label %b.new.buf.len2260

b.nogrow2246:                                     ; preds = %b.rn.new.len240
  br label %b.grow_done247

b.grow_done247:                                   ; preds = %b.nogrow2246, %b.new.buf.len2260
  %b.rn.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load220, i32 0, i32 1
  %b.rn.data268 = load ptr, ptr %b.rn.data267, align 8
  %b.rn.dst269 = getelementptr i8, ptr %b.rn.data268, i64 %b.rn.cur.len236
  br i1 %br.cmp1229, label %br.b1.32, label %br.c2.32

b.new.buf.len2260:                                ; preds = %str_overflow_abort261, %b.grow2245
  %arena.cur262 = call ptr @dva_arena_current()
  %b.new.buf2263 = call ptr @dva_arena_alloc(ptr %arena.cur262, i64 %sum258)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2263, ptr align 1 %b.cur.data2256, i64 %b.cur.len2254, i1 false)
  %b.grow2.nul264 = getelementptr i8, ptr %b.new.buf2263, i64 %b.cur.len2254
  store i8 0, ptr %b.grow2.nul264, align 1
  %b.new.data2.gep265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load220, i32 0, i32 1
  store ptr %b.new.buf2263, ptr %b.new.data2.gep265, align 8
  %b.new.cap2.gep266 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load220, i32 0, i32 2
  store i64 %b.new.cap252, ptr %b.new.cap2.gep266, align 8
  br label %b.grow_done247

str_overflow_abort261:                            ; preds = %b.grow2245
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2260

br.b1.32:                                         ; preds = %b.grow_done247
  %br.b1.0270 = trunc i64 %coerce.sext228 to i8
  store i8 %br.b1.0270, ptr %b.rn.dst269, align 1
  br label %br.done.32

br.c2.32:                                         ; preds = %b.grow_done247
  br i1 %br.cmp2230, label %br.b2.32, label %br.c3.32

br.b2.32:                                         ; preds = %br.c2.32
  %br.sh6271 = lshr i64 %coerce.sext228, 6
  %br.b2.0272 = or i64 %br.sh6271, 192
  %br.b2.0t273 = trunc i64 %br.b2.0272 to i8
  %br.m6274 = and i64 %coerce.sext228, 63
  %br.b2.1275 = or i64 %br.m6274, 128
  %br.b2.1t276 = trunc i64 %br.b2.1275 to i8
  store i8 %br.b2.0t273, ptr %b.rn.dst269, align 1
  %br.dst1277 = getelementptr i8, ptr %b.rn.dst269, i64 1
  store i8 %br.b2.1t276, ptr %br.dst1277, align 1
  br label %br.done.32

br.c3.32:                                         ; preds = %br.c2.32
  br i1 %br.cmp3231, label %br.b3.32, label %br.b4.32

br.b3.32:                                         ; preds = %br.c3.32
  %br.sh12278 = lshr i64 %coerce.sext228, 12
  %br.b3.0279 = or i64 %br.sh12278, 224
  %br.b3.0t280 = trunc i64 %br.b3.0279 to i8
  %br.sh6.3281 = lshr i64 %coerce.sext228, 6
  %br.m6.3282 = and i64 %br.sh6.3281, 63
  %br.b3.1283 = or i64 %br.m6.3282, 128
  %br.b3.1t284 = trunc i64 %br.b3.1283 to i8
  %br.mend285 = and i64 %coerce.sext228, 63
  %br.b3.2286 = or i64 %br.mend285, 128
  %br.b3.2t287 = trunc i64 %br.b3.2286 to i8
  store i8 %br.b3.0t280, ptr %b.rn.dst269, align 1
  %br.dst1.3288 = getelementptr i8, ptr %b.rn.dst269, i64 1
  store i8 %br.b3.1t284, ptr %br.dst1.3288, align 1
  %br.dst2.3289 = getelementptr i8, ptr %b.rn.dst269, i64 2
  store i8 %br.b3.2t287, ptr %br.dst2.3289, align 1
  br label %br.done.32

br.b4.32:                                         ; preds = %br.c3.32
  %br.sh18290 = lshr i64 %coerce.sext228, 18
  %br.b4.0291 = or i64 %br.sh18290, 240
  %br.b4.0t292 = trunc i64 %br.b4.0291 to i8
  %br.sh12.4293 = lshr i64 %coerce.sext228, 12
  %br.m12.4294 = and i64 %br.sh12.4293, 63
  %br.b4.1295 = or i64 %br.m12.4294, 128
  %br.b4.1t296 = trunc i64 %br.b4.1295 to i8
  %br.sh6.4297 = lshr i64 %coerce.sext228, 6
  %br.m6.4298 = and i64 %br.sh6.4297, 63
  %br.b4.2299 = or i64 %br.m6.4298, 128
  %br.b4.2t300 = trunc i64 %br.b4.2299 to i8
  %br.mend4301 = and i64 %coerce.sext228, 63
  %br.b4.3302 = or i64 %br.mend4301, 128
  %br.b4.3t303 = trunc i64 %br.b4.3302 to i8
  store i8 %br.b4.0t292, ptr %b.rn.dst269, align 1
  %br.dst1.4304 = getelementptr i8, ptr %b.rn.dst269, i64 1
  store i8 %br.b4.1t296, ptr %br.dst1.4304, align 1
  %br.dst2.4305 = getelementptr i8, ptr %b.rn.dst269, i64 2
  store i8 %br.b4.2t300, ptr %br.dst2.4305, align 1
  %br.dst3.4306 = getelementptr i8, ptr %b.rn.dst269, i64 3
  store i8 %br.b4.3t303, ptr %br.dst3.4306, align 1
  br label %br.done.32

br.done.32:                                       ; preds = %br.b4.32, %br.b3.32, %br.b2.32, %br.b1.32
  %br.nul307 = getelementptr i8, ptr %b.rn.data268, i64 %sum238
  store i8 0, ptr %br.nul307, align 1
  %b.len.gep308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load220, i32 0, i32 0
  store i64 %sum238, ptr %b.len.gep308, align 8
  %var.load309 = load i64, ptr %var.mode, align 8
  %bandtmp310 = and i64 %var.load309, 32
  %cmptmp311 = icmp ne i64 %bandtmp310, 0
  br i1 %cmptmp311, label %choice.then312, label %choice.else313

choice.then312:                                   ; preds = %br.done.32
  br label %choice.exit314

choice.else313:                                   ; preds = %br.done.32
  br label %choice.exit314

choice.exit314:                                   ; preds = %choice.else313, %choice.then312
  %choice.res315 = phi i32 [ 114, %choice.then312 ], [ 45, %choice.else313 ]
  %b.load316 = load ptr, ptr %var.b, align 8
  %var.load317 = load i64, ptr %var.mode, align 8
  %bandtmp318 = and i64 %var.load317, 32
  %cmptmp319 = icmp ne i64 %bandtmp318, 0
  br i1 %cmptmp319, label %choice.then320, label %choice.else321

choice.then320:                                   ; preds = %choice.exit314
  br label %choice.exit322

choice.else321:                                   ; preds = %choice.exit314
  br label %choice.exit322

choice.exit322:                                   ; preds = %choice.else321, %choice.then320
  %choice.res323 = phi i32 [ 114, %choice.then320 ], [ 45, %choice.else321 ]
  %coerce.sext324 = sext i32 %choice.res323 to i64
  %br.cmp1325 = icmp slt i64 %coerce.sext324, 128
  %br.cmp2326 = icmp slt i64 %coerce.sext324, 2048
  %br.cmp3327 = icmp slt i64 %coerce.sext324, 65536
  %br.w3328 = select i1 %br.cmp3327, i64 3, i64 4
  %br.w2329 = select i1 %br.cmp2326, i64 2, i64 %br.w3328
  %br.width330 = select i1 %br.cmp1325, i64 1, i64 %br.w2329
  %b.rn.cur.len331 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 0
  %b.rn.cur.len332 = load i64, ptr %b.rn.cur.len331, align 8
  %b.rn.new.len333 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len332, i64 %br.width330)
  %sum334 = extractvalue { i64, i1 } %b.rn.new.len333, 0
  %ovf335 = extractvalue { i64, i1 } %b.rn.new.len333, 1
  br i1 %ovf335, label %str_overflow_abort337, label %b.rn.new.len336

b.rn.new.len336:                                  ; preds = %str_overflow_abort337, %choice.exit322
  %b.cap338 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 2
  %b.cap339 = load i64, ptr %b.cap338, align 8
  %b.need.grow340 = icmp slt i64 %b.cap339, %sum334
  br i1 %b.need.grow340, label %b.grow2341, label %b.nogrow2342

str_overflow_abort337:                            ; preds = %choice.exit322
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len336

b.grow2341:                                       ; preds = %b.rn.new.len336
  %b.cap2344 = mul i64 %b.cap339, 2
  %b.cap.small345 = icmp slt i64 %b.cap2344, 16
  %b.cap.grow346 = select i1 %b.cap.small345, i64 16, i64 %b.cap2344
  %b.cap.need347 = icmp slt i64 %b.cap.grow346, %sum334
  %b.new.cap348 = select i1 %b.cap.need347, i64 %sum334, i64 %b.cap.grow346
  %b.cur.len2349 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 0
  %b.cur.len2350 = load i64, ptr %b.cur.len2349, align 8
  %b.cur.data2351 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 1
  %b.cur.data2352 = load ptr, ptr %b.cur.data2351, align 8
  %b.new.buf.len2353 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap348, i64 1)
  %sum354 = extractvalue { i64, i1 } %b.new.buf.len2353, 0
  %ovf355 = extractvalue { i64, i1 } %b.new.buf.len2353, 1
  br i1 %ovf355, label %str_overflow_abort357, label %b.new.buf.len2356

b.nogrow2342:                                     ; preds = %b.rn.new.len336
  br label %b.grow_done343

b.grow_done343:                                   ; preds = %b.nogrow2342, %b.new.buf.len2356
  %b.rn.data363 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 1
  %b.rn.data364 = load ptr, ptr %b.rn.data363, align 8
  %b.rn.dst365 = getelementptr i8, ptr %b.rn.data364, i64 %b.rn.cur.len332
  br i1 %br.cmp1325, label %br.b1.33, label %br.c2.33

b.new.buf.len2356:                                ; preds = %str_overflow_abort357, %b.grow2341
  %arena.cur358 = call ptr @dva_arena_current()
  %b.new.buf2359 = call ptr @dva_arena_alloc(ptr %arena.cur358, i64 %sum354)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2359, ptr align 1 %b.cur.data2352, i64 %b.cur.len2350, i1 false)
  %b.grow2.nul360 = getelementptr i8, ptr %b.new.buf2359, i64 %b.cur.len2350
  store i8 0, ptr %b.grow2.nul360, align 1
  %b.new.data2.gep361 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 1
  store ptr %b.new.buf2359, ptr %b.new.data2.gep361, align 8
  %b.new.cap2.gep362 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 2
  store i64 %b.new.cap348, ptr %b.new.cap2.gep362, align 8
  br label %b.grow_done343

str_overflow_abort357:                            ; preds = %b.grow2341
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2356

br.b1.33:                                         ; preds = %b.grow_done343
  %br.b1.0366 = trunc i64 %coerce.sext324 to i8
  store i8 %br.b1.0366, ptr %b.rn.dst365, align 1
  br label %br.done.33

br.c2.33:                                         ; preds = %b.grow_done343
  br i1 %br.cmp2326, label %br.b2.33, label %br.c3.33

br.b2.33:                                         ; preds = %br.c2.33
  %br.sh6367 = lshr i64 %coerce.sext324, 6
  %br.b2.0368 = or i64 %br.sh6367, 192
  %br.b2.0t369 = trunc i64 %br.b2.0368 to i8
  %br.m6370 = and i64 %coerce.sext324, 63
  %br.b2.1371 = or i64 %br.m6370, 128
  %br.b2.1t372 = trunc i64 %br.b2.1371 to i8
  store i8 %br.b2.0t369, ptr %b.rn.dst365, align 1
  %br.dst1373 = getelementptr i8, ptr %b.rn.dst365, i64 1
  store i8 %br.b2.1t372, ptr %br.dst1373, align 1
  br label %br.done.33

br.c3.33:                                         ; preds = %br.c2.33
  br i1 %br.cmp3327, label %br.b3.33, label %br.b4.33

br.b3.33:                                         ; preds = %br.c3.33
  %br.sh12374 = lshr i64 %coerce.sext324, 12
  %br.b3.0375 = or i64 %br.sh12374, 224
  %br.b3.0t376 = trunc i64 %br.b3.0375 to i8
  %br.sh6.3377 = lshr i64 %coerce.sext324, 6
  %br.m6.3378 = and i64 %br.sh6.3377, 63
  %br.b3.1379 = or i64 %br.m6.3378, 128
  %br.b3.1t380 = trunc i64 %br.b3.1379 to i8
  %br.mend381 = and i64 %coerce.sext324, 63
  %br.b3.2382 = or i64 %br.mend381, 128
  %br.b3.2t383 = trunc i64 %br.b3.2382 to i8
  store i8 %br.b3.0t376, ptr %b.rn.dst365, align 1
  %br.dst1.3384 = getelementptr i8, ptr %b.rn.dst365, i64 1
  store i8 %br.b3.1t380, ptr %br.dst1.3384, align 1
  %br.dst2.3385 = getelementptr i8, ptr %b.rn.dst365, i64 2
  store i8 %br.b3.2t383, ptr %br.dst2.3385, align 1
  br label %br.done.33

br.b4.33:                                         ; preds = %br.c3.33
  %br.sh18386 = lshr i64 %coerce.sext324, 18
  %br.b4.0387 = or i64 %br.sh18386, 240
  %br.b4.0t388 = trunc i64 %br.b4.0387 to i8
  %br.sh12.4389 = lshr i64 %coerce.sext324, 12
  %br.m12.4390 = and i64 %br.sh12.4389, 63
  %br.b4.1391 = or i64 %br.m12.4390, 128
  %br.b4.1t392 = trunc i64 %br.b4.1391 to i8
  %br.sh6.4393 = lshr i64 %coerce.sext324, 6
  %br.m6.4394 = and i64 %br.sh6.4393, 63
  %br.b4.2395 = or i64 %br.m6.4394, 128
  %br.b4.2t396 = trunc i64 %br.b4.2395 to i8
  %br.mend4397 = and i64 %coerce.sext324, 63
  %br.b4.3398 = or i64 %br.mend4397, 128
  %br.b4.3t399 = trunc i64 %br.b4.3398 to i8
  store i8 %br.b4.0t388, ptr %b.rn.dst365, align 1
  %br.dst1.4400 = getelementptr i8, ptr %b.rn.dst365, i64 1
  store i8 %br.b4.1t392, ptr %br.dst1.4400, align 1
  %br.dst2.4401 = getelementptr i8, ptr %b.rn.dst365, i64 2
  store i8 %br.b4.2t396, ptr %br.dst2.4401, align 1
  %br.dst3.4402 = getelementptr i8, ptr %b.rn.dst365, i64 3
  store i8 %br.b4.3t399, ptr %br.dst3.4402, align 1
  br label %br.done.33

br.done.33:                                       ; preds = %br.b4.33, %br.b3.33, %br.b2.33, %br.b1.33
  %br.nul403 = getelementptr i8, ptr %b.rn.data364, i64 %sum334
  store i8 0, ptr %br.nul403, align 1
  %b.len.gep404 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 0
  store i64 %sum334, ptr %b.len.gep404, align 8
  %var.load405 = load i64, ptr %var.mode, align 8
  %bandtmp406 = and i64 %var.load405, 16
  %cmptmp407 = icmp ne i64 %bandtmp406, 0
  br i1 %cmptmp407, label %choice.then408, label %choice.else409

choice.then408:                                   ; preds = %br.done.33
  br label %choice.exit410

choice.else409:                                   ; preds = %br.done.33
  br label %choice.exit410

choice.exit410:                                   ; preds = %choice.else409, %choice.then408
  %choice.res411 = phi i32 [ 119, %choice.then408 ], [ 45, %choice.else409 ]
  %b.load412 = load ptr, ptr %var.b, align 8
  %var.load413 = load i64, ptr %var.mode, align 8
  %bandtmp414 = and i64 %var.load413, 16
  %cmptmp415 = icmp ne i64 %bandtmp414, 0
  br i1 %cmptmp415, label %choice.then416, label %choice.else417

choice.then416:                                   ; preds = %choice.exit410
  br label %choice.exit418

choice.else417:                                   ; preds = %choice.exit410
  br label %choice.exit418

choice.exit418:                                   ; preds = %choice.else417, %choice.then416
  %choice.res419 = phi i32 [ 119, %choice.then416 ], [ 45, %choice.else417 ]
  %coerce.sext420 = sext i32 %choice.res419 to i64
  %br.cmp1421 = icmp slt i64 %coerce.sext420, 128
  %br.cmp2422 = icmp slt i64 %coerce.sext420, 2048
  %br.cmp3423 = icmp slt i64 %coerce.sext420, 65536
  %br.w3424 = select i1 %br.cmp3423, i64 3, i64 4
  %br.w2425 = select i1 %br.cmp2422, i64 2, i64 %br.w3424
  %br.width426 = select i1 %br.cmp1421, i64 1, i64 %br.w2425
  %b.rn.cur.len427 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 0
  %b.rn.cur.len428 = load i64, ptr %b.rn.cur.len427, align 8
  %b.rn.new.len429 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len428, i64 %br.width426)
  %sum430 = extractvalue { i64, i1 } %b.rn.new.len429, 0
  %ovf431 = extractvalue { i64, i1 } %b.rn.new.len429, 1
  br i1 %ovf431, label %str_overflow_abort433, label %b.rn.new.len432

b.rn.new.len432:                                  ; preds = %str_overflow_abort433, %choice.exit418
  %b.cap434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 2
  %b.cap435 = load i64, ptr %b.cap434, align 8
  %b.need.grow436 = icmp slt i64 %b.cap435, %sum430
  br i1 %b.need.grow436, label %b.grow2437, label %b.nogrow2438

str_overflow_abort433:                            ; preds = %choice.exit418
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len432

b.grow2437:                                       ; preds = %b.rn.new.len432
  %b.cap2440 = mul i64 %b.cap435, 2
  %b.cap.small441 = icmp slt i64 %b.cap2440, 16
  %b.cap.grow442 = select i1 %b.cap.small441, i64 16, i64 %b.cap2440
  %b.cap.need443 = icmp slt i64 %b.cap.grow442, %sum430
  %b.new.cap444 = select i1 %b.cap.need443, i64 %sum430, i64 %b.cap.grow442
  %b.cur.len2445 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 0
  %b.cur.len2446 = load i64, ptr %b.cur.len2445, align 8
  %b.cur.data2447 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 1
  %b.cur.data2448 = load ptr, ptr %b.cur.data2447, align 8
  %b.new.buf.len2449 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap444, i64 1)
  %sum450 = extractvalue { i64, i1 } %b.new.buf.len2449, 0
  %ovf451 = extractvalue { i64, i1 } %b.new.buf.len2449, 1
  br i1 %ovf451, label %str_overflow_abort453, label %b.new.buf.len2452

b.nogrow2438:                                     ; preds = %b.rn.new.len432
  br label %b.grow_done439

b.grow_done439:                                   ; preds = %b.nogrow2438, %b.new.buf.len2452
  %b.rn.data459 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 1
  %b.rn.data460 = load ptr, ptr %b.rn.data459, align 8
  %b.rn.dst461 = getelementptr i8, ptr %b.rn.data460, i64 %b.rn.cur.len428
  br i1 %br.cmp1421, label %br.b1.34, label %br.c2.34

b.new.buf.len2452:                                ; preds = %str_overflow_abort453, %b.grow2437
  %arena.cur454 = call ptr @dva_arena_current()
  %b.new.buf2455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 %sum450)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2455, ptr align 1 %b.cur.data2448, i64 %b.cur.len2446, i1 false)
  %b.grow2.nul456 = getelementptr i8, ptr %b.new.buf2455, i64 %b.cur.len2446
  store i8 0, ptr %b.grow2.nul456, align 1
  %b.new.data2.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 1
  store ptr %b.new.buf2455, ptr %b.new.data2.gep457, align 8
  %b.new.cap2.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 2
  store i64 %b.new.cap444, ptr %b.new.cap2.gep458, align 8
  br label %b.grow_done439

str_overflow_abort453:                            ; preds = %b.grow2437
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2452

br.b1.34:                                         ; preds = %b.grow_done439
  %br.b1.0462 = trunc i64 %coerce.sext420 to i8
  store i8 %br.b1.0462, ptr %b.rn.dst461, align 1
  br label %br.done.34

br.c2.34:                                         ; preds = %b.grow_done439
  br i1 %br.cmp2422, label %br.b2.34, label %br.c3.34

br.b2.34:                                         ; preds = %br.c2.34
  %br.sh6463 = lshr i64 %coerce.sext420, 6
  %br.b2.0464 = or i64 %br.sh6463, 192
  %br.b2.0t465 = trunc i64 %br.b2.0464 to i8
  %br.m6466 = and i64 %coerce.sext420, 63
  %br.b2.1467 = or i64 %br.m6466, 128
  %br.b2.1t468 = trunc i64 %br.b2.1467 to i8
  store i8 %br.b2.0t465, ptr %b.rn.dst461, align 1
  %br.dst1469 = getelementptr i8, ptr %b.rn.dst461, i64 1
  store i8 %br.b2.1t468, ptr %br.dst1469, align 1
  br label %br.done.34

br.c3.34:                                         ; preds = %br.c2.34
  br i1 %br.cmp3423, label %br.b3.34, label %br.b4.34

br.b3.34:                                         ; preds = %br.c3.34
  %br.sh12470 = lshr i64 %coerce.sext420, 12
  %br.b3.0471 = or i64 %br.sh12470, 224
  %br.b3.0t472 = trunc i64 %br.b3.0471 to i8
  %br.sh6.3473 = lshr i64 %coerce.sext420, 6
  %br.m6.3474 = and i64 %br.sh6.3473, 63
  %br.b3.1475 = or i64 %br.m6.3474, 128
  %br.b3.1t476 = trunc i64 %br.b3.1475 to i8
  %br.mend477 = and i64 %coerce.sext420, 63
  %br.b3.2478 = or i64 %br.mend477, 128
  %br.b3.2t479 = trunc i64 %br.b3.2478 to i8
  store i8 %br.b3.0t472, ptr %b.rn.dst461, align 1
  %br.dst1.3480 = getelementptr i8, ptr %b.rn.dst461, i64 1
  store i8 %br.b3.1t476, ptr %br.dst1.3480, align 1
  %br.dst2.3481 = getelementptr i8, ptr %b.rn.dst461, i64 2
  store i8 %br.b3.2t479, ptr %br.dst2.3481, align 1
  br label %br.done.34

br.b4.34:                                         ; preds = %br.c3.34
  %br.sh18482 = lshr i64 %coerce.sext420, 18
  %br.b4.0483 = or i64 %br.sh18482, 240
  %br.b4.0t484 = trunc i64 %br.b4.0483 to i8
  %br.sh12.4485 = lshr i64 %coerce.sext420, 12
  %br.m12.4486 = and i64 %br.sh12.4485, 63
  %br.b4.1487 = or i64 %br.m12.4486, 128
  %br.b4.1t488 = trunc i64 %br.b4.1487 to i8
  %br.sh6.4489 = lshr i64 %coerce.sext420, 6
  %br.m6.4490 = and i64 %br.sh6.4489, 63
  %br.b4.2491 = or i64 %br.m6.4490, 128
  %br.b4.2t492 = trunc i64 %br.b4.2491 to i8
  %br.mend4493 = and i64 %coerce.sext420, 63
  %br.b4.3494 = or i64 %br.mend4493, 128
  %br.b4.3t495 = trunc i64 %br.b4.3494 to i8
  store i8 %br.b4.0t484, ptr %b.rn.dst461, align 1
  %br.dst1.4496 = getelementptr i8, ptr %b.rn.dst461, i64 1
  store i8 %br.b4.1t488, ptr %br.dst1.4496, align 1
  %br.dst2.4497 = getelementptr i8, ptr %b.rn.dst461, i64 2
  store i8 %br.b4.2t492, ptr %br.dst2.4497, align 1
  %br.dst3.4498 = getelementptr i8, ptr %b.rn.dst461, i64 3
  store i8 %br.b4.3t495, ptr %br.dst3.4498, align 1
  br label %br.done.34

br.done.34:                                       ; preds = %br.b4.34, %br.b3.34, %br.b2.34, %br.b1.34
  %br.nul499 = getelementptr i8, ptr %b.rn.data460, i64 %sum430
  store i8 0, ptr %br.nul499, align 1
  %b.len.gep500 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load412, i32 0, i32 0
  store i64 %sum430, ptr %b.len.gep500, align 8
  %var.load501 = load i64, ptr %var.mode, align 8
  %bandtmp502 = and i64 %var.load501, 8
  %cmptmp503 = icmp ne i64 %bandtmp502, 0
  br i1 %cmptmp503, label %choice.then504, label %choice.else505

choice.then504:                                   ; preds = %br.done.34
  br label %choice.exit506

choice.else505:                                   ; preds = %br.done.34
  br label %choice.exit506

choice.exit506:                                   ; preds = %choice.else505, %choice.then504
  %choice.res507 = phi i32 [ 120, %choice.then504 ], [ 45, %choice.else505 ]
  %b.load508 = load ptr, ptr %var.b, align 8
  %var.load509 = load i64, ptr %var.mode, align 8
  %bandtmp510 = and i64 %var.load509, 8
  %cmptmp511 = icmp ne i64 %bandtmp510, 0
  br i1 %cmptmp511, label %choice.then512, label %choice.else513

choice.then512:                                   ; preds = %choice.exit506
  br label %choice.exit514

choice.else513:                                   ; preds = %choice.exit506
  br label %choice.exit514

choice.exit514:                                   ; preds = %choice.else513, %choice.then512
  %choice.res515 = phi i32 [ 120, %choice.then512 ], [ 45, %choice.else513 ]
  %coerce.sext516 = sext i32 %choice.res515 to i64
  %br.cmp1517 = icmp slt i64 %coerce.sext516, 128
  %br.cmp2518 = icmp slt i64 %coerce.sext516, 2048
  %br.cmp3519 = icmp slt i64 %coerce.sext516, 65536
  %br.w3520 = select i1 %br.cmp3519, i64 3, i64 4
  %br.w2521 = select i1 %br.cmp2518, i64 2, i64 %br.w3520
  %br.width522 = select i1 %br.cmp1517, i64 1, i64 %br.w2521
  %b.rn.cur.len523 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 0
  %b.rn.cur.len524 = load i64, ptr %b.rn.cur.len523, align 8
  %b.rn.new.len525 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len524, i64 %br.width522)
  %sum526 = extractvalue { i64, i1 } %b.rn.new.len525, 0
  %ovf527 = extractvalue { i64, i1 } %b.rn.new.len525, 1
  br i1 %ovf527, label %str_overflow_abort529, label %b.rn.new.len528

b.rn.new.len528:                                  ; preds = %str_overflow_abort529, %choice.exit514
  %b.cap530 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 2
  %b.cap531 = load i64, ptr %b.cap530, align 8
  %b.need.grow532 = icmp slt i64 %b.cap531, %sum526
  br i1 %b.need.grow532, label %b.grow2533, label %b.nogrow2534

str_overflow_abort529:                            ; preds = %choice.exit514
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len528

b.grow2533:                                       ; preds = %b.rn.new.len528
  %b.cap2536 = mul i64 %b.cap531, 2
  %b.cap.small537 = icmp slt i64 %b.cap2536, 16
  %b.cap.grow538 = select i1 %b.cap.small537, i64 16, i64 %b.cap2536
  %b.cap.need539 = icmp slt i64 %b.cap.grow538, %sum526
  %b.new.cap540 = select i1 %b.cap.need539, i64 %sum526, i64 %b.cap.grow538
  %b.cur.len2541 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 0
  %b.cur.len2542 = load i64, ptr %b.cur.len2541, align 8
  %b.cur.data2543 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 1
  %b.cur.data2544 = load ptr, ptr %b.cur.data2543, align 8
  %b.new.buf.len2545 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap540, i64 1)
  %sum546 = extractvalue { i64, i1 } %b.new.buf.len2545, 0
  %ovf547 = extractvalue { i64, i1 } %b.new.buf.len2545, 1
  br i1 %ovf547, label %str_overflow_abort549, label %b.new.buf.len2548

b.nogrow2534:                                     ; preds = %b.rn.new.len528
  br label %b.grow_done535

b.grow_done535:                                   ; preds = %b.nogrow2534, %b.new.buf.len2548
  %b.rn.data555 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 1
  %b.rn.data556 = load ptr, ptr %b.rn.data555, align 8
  %b.rn.dst557 = getelementptr i8, ptr %b.rn.data556, i64 %b.rn.cur.len524
  br i1 %br.cmp1517, label %br.b1.35, label %br.c2.35

b.new.buf.len2548:                                ; preds = %str_overflow_abort549, %b.grow2533
  %arena.cur550 = call ptr @dva_arena_current()
  %b.new.buf2551 = call ptr @dva_arena_alloc(ptr %arena.cur550, i64 %sum546)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2551, ptr align 1 %b.cur.data2544, i64 %b.cur.len2542, i1 false)
  %b.grow2.nul552 = getelementptr i8, ptr %b.new.buf2551, i64 %b.cur.len2542
  store i8 0, ptr %b.grow2.nul552, align 1
  %b.new.data2.gep553 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 1
  store ptr %b.new.buf2551, ptr %b.new.data2.gep553, align 8
  %b.new.cap2.gep554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 2
  store i64 %b.new.cap540, ptr %b.new.cap2.gep554, align 8
  br label %b.grow_done535

str_overflow_abort549:                            ; preds = %b.grow2533
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2548

br.b1.35:                                         ; preds = %b.grow_done535
  %br.b1.0558 = trunc i64 %coerce.sext516 to i8
  store i8 %br.b1.0558, ptr %b.rn.dst557, align 1
  br label %br.done.35

br.c2.35:                                         ; preds = %b.grow_done535
  br i1 %br.cmp2518, label %br.b2.35, label %br.c3.35

br.b2.35:                                         ; preds = %br.c2.35
  %br.sh6559 = lshr i64 %coerce.sext516, 6
  %br.b2.0560 = or i64 %br.sh6559, 192
  %br.b2.0t561 = trunc i64 %br.b2.0560 to i8
  %br.m6562 = and i64 %coerce.sext516, 63
  %br.b2.1563 = or i64 %br.m6562, 128
  %br.b2.1t564 = trunc i64 %br.b2.1563 to i8
  store i8 %br.b2.0t561, ptr %b.rn.dst557, align 1
  %br.dst1565 = getelementptr i8, ptr %b.rn.dst557, i64 1
  store i8 %br.b2.1t564, ptr %br.dst1565, align 1
  br label %br.done.35

br.c3.35:                                         ; preds = %br.c2.35
  br i1 %br.cmp3519, label %br.b3.35, label %br.b4.35

br.b3.35:                                         ; preds = %br.c3.35
  %br.sh12566 = lshr i64 %coerce.sext516, 12
  %br.b3.0567 = or i64 %br.sh12566, 224
  %br.b3.0t568 = trunc i64 %br.b3.0567 to i8
  %br.sh6.3569 = lshr i64 %coerce.sext516, 6
  %br.m6.3570 = and i64 %br.sh6.3569, 63
  %br.b3.1571 = or i64 %br.m6.3570, 128
  %br.b3.1t572 = trunc i64 %br.b3.1571 to i8
  %br.mend573 = and i64 %coerce.sext516, 63
  %br.b3.2574 = or i64 %br.mend573, 128
  %br.b3.2t575 = trunc i64 %br.b3.2574 to i8
  store i8 %br.b3.0t568, ptr %b.rn.dst557, align 1
  %br.dst1.3576 = getelementptr i8, ptr %b.rn.dst557, i64 1
  store i8 %br.b3.1t572, ptr %br.dst1.3576, align 1
  %br.dst2.3577 = getelementptr i8, ptr %b.rn.dst557, i64 2
  store i8 %br.b3.2t575, ptr %br.dst2.3577, align 1
  br label %br.done.35

br.b4.35:                                         ; preds = %br.c3.35
  %br.sh18578 = lshr i64 %coerce.sext516, 18
  %br.b4.0579 = or i64 %br.sh18578, 240
  %br.b4.0t580 = trunc i64 %br.b4.0579 to i8
  %br.sh12.4581 = lshr i64 %coerce.sext516, 12
  %br.m12.4582 = and i64 %br.sh12.4581, 63
  %br.b4.1583 = or i64 %br.m12.4582, 128
  %br.b4.1t584 = trunc i64 %br.b4.1583 to i8
  %br.sh6.4585 = lshr i64 %coerce.sext516, 6
  %br.m6.4586 = and i64 %br.sh6.4585, 63
  %br.b4.2587 = or i64 %br.m6.4586, 128
  %br.b4.2t588 = trunc i64 %br.b4.2587 to i8
  %br.mend4589 = and i64 %coerce.sext516, 63
  %br.b4.3590 = or i64 %br.mend4589, 128
  %br.b4.3t591 = trunc i64 %br.b4.3590 to i8
  store i8 %br.b4.0t580, ptr %b.rn.dst557, align 1
  %br.dst1.4592 = getelementptr i8, ptr %b.rn.dst557, i64 1
  store i8 %br.b4.1t584, ptr %br.dst1.4592, align 1
  %br.dst2.4593 = getelementptr i8, ptr %b.rn.dst557, i64 2
  store i8 %br.b4.2t588, ptr %br.dst2.4593, align 1
  %br.dst3.4594 = getelementptr i8, ptr %b.rn.dst557, i64 3
  store i8 %br.b4.3t591, ptr %br.dst3.4594, align 1
  br label %br.done.35

br.done.35:                                       ; preds = %br.b4.35, %br.b3.35, %br.b2.35, %br.b1.35
  %br.nul595 = getelementptr i8, ptr %b.rn.data556, i64 %sum526
  store i8 0, ptr %br.nul595, align 1
  %b.len.gep596 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 0
  store i64 %sum526, ptr %b.len.gep596, align 8
  %var.load597 = load i64, ptr %var.mode, align 8
  %bandtmp598 = and i64 %var.load597, 4
  %cmptmp599 = icmp ne i64 %bandtmp598, 0
  br i1 %cmptmp599, label %choice.then600, label %choice.else601

choice.then600:                                   ; preds = %br.done.35
  br label %choice.exit602

choice.else601:                                   ; preds = %br.done.35
  br label %choice.exit602

choice.exit602:                                   ; preds = %choice.else601, %choice.then600
  %choice.res603 = phi i32 [ 114, %choice.then600 ], [ 45, %choice.else601 ]
  %b.load604 = load ptr, ptr %var.b, align 8
  %var.load605 = load i64, ptr %var.mode, align 8
  %bandtmp606 = and i64 %var.load605, 4
  %cmptmp607 = icmp ne i64 %bandtmp606, 0
  br i1 %cmptmp607, label %choice.then608, label %choice.else609

choice.then608:                                   ; preds = %choice.exit602
  br label %choice.exit610

choice.else609:                                   ; preds = %choice.exit602
  br label %choice.exit610

choice.exit610:                                   ; preds = %choice.else609, %choice.then608
  %choice.res611 = phi i32 [ 114, %choice.then608 ], [ 45, %choice.else609 ]
  %coerce.sext612 = sext i32 %choice.res611 to i64
  %br.cmp1613 = icmp slt i64 %coerce.sext612, 128
  %br.cmp2614 = icmp slt i64 %coerce.sext612, 2048
  %br.cmp3615 = icmp slt i64 %coerce.sext612, 65536
  %br.w3616 = select i1 %br.cmp3615, i64 3, i64 4
  %br.w2617 = select i1 %br.cmp2614, i64 2, i64 %br.w3616
  %br.width618 = select i1 %br.cmp1613, i64 1, i64 %br.w2617
  %b.rn.cur.len619 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 0
  %b.rn.cur.len620 = load i64, ptr %b.rn.cur.len619, align 8
  %b.rn.new.len621 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len620, i64 %br.width618)
  %sum622 = extractvalue { i64, i1 } %b.rn.new.len621, 0
  %ovf623 = extractvalue { i64, i1 } %b.rn.new.len621, 1
  br i1 %ovf623, label %str_overflow_abort625, label %b.rn.new.len624

b.rn.new.len624:                                  ; preds = %str_overflow_abort625, %choice.exit610
  %b.cap626 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 2
  %b.cap627 = load i64, ptr %b.cap626, align 8
  %b.need.grow628 = icmp slt i64 %b.cap627, %sum622
  br i1 %b.need.grow628, label %b.grow2629, label %b.nogrow2630

str_overflow_abort625:                            ; preds = %choice.exit610
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len624

b.grow2629:                                       ; preds = %b.rn.new.len624
  %b.cap2632 = mul i64 %b.cap627, 2
  %b.cap.small633 = icmp slt i64 %b.cap2632, 16
  %b.cap.grow634 = select i1 %b.cap.small633, i64 16, i64 %b.cap2632
  %b.cap.need635 = icmp slt i64 %b.cap.grow634, %sum622
  %b.new.cap636 = select i1 %b.cap.need635, i64 %sum622, i64 %b.cap.grow634
  %b.cur.len2637 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 0
  %b.cur.len2638 = load i64, ptr %b.cur.len2637, align 8
  %b.cur.data2639 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 1
  %b.cur.data2640 = load ptr, ptr %b.cur.data2639, align 8
  %b.new.buf.len2641 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap636, i64 1)
  %sum642 = extractvalue { i64, i1 } %b.new.buf.len2641, 0
  %ovf643 = extractvalue { i64, i1 } %b.new.buf.len2641, 1
  br i1 %ovf643, label %str_overflow_abort645, label %b.new.buf.len2644

b.nogrow2630:                                     ; preds = %b.rn.new.len624
  br label %b.grow_done631

b.grow_done631:                                   ; preds = %b.nogrow2630, %b.new.buf.len2644
  %b.rn.data651 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 1
  %b.rn.data652 = load ptr, ptr %b.rn.data651, align 8
  %b.rn.dst653 = getelementptr i8, ptr %b.rn.data652, i64 %b.rn.cur.len620
  br i1 %br.cmp1613, label %br.b1.36, label %br.c2.36

b.new.buf.len2644:                                ; preds = %str_overflow_abort645, %b.grow2629
  %arena.cur646 = call ptr @dva_arena_current()
  %b.new.buf2647 = call ptr @dva_arena_alloc(ptr %arena.cur646, i64 %sum642)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2647, ptr align 1 %b.cur.data2640, i64 %b.cur.len2638, i1 false)
  %b.grow2.nul648 = getelementptr i8, ptr %b.new.buf2647, i64 %b.cur.len2638
  store i8 0, ptr %b.grow2.nul648, align 1
  %b.new.data2.gep649 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 1
  store ptr %b.new.buf2647, ptr %b.new.data2.gep649, align 8
  %b.new.cap2.gep650 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 2
  store i64 %b.new.cap636, ptr %b.new.cap2.gep650, align 8
  br label %b.grow_done631

str_overflow_abort645:                            ; preds = %b.grow2629
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2644

br.b1.36:                                         ; preds = %b.grow_done631
  %br.b1.0654 = trunc i64 %coerce.sext612 to i8
  store i8 %br.b1.0654, ptr %b.rn.dst653, align 1
  br label %br.done.36

br.c2.36:                                         ; preds = %b.grow_done631
  br i1 %br.cmp2614, label %br.b2.36, label %br.c3.36

br.b2.36:                                         ; preds = %br.c2.36
  %br.sh6655 = lshr i64 %coerce.sext612, 6
  %br.b2.0656 = or i64 %br.sh6655, 192
  %br.b2.0t657 = trunc i64 %br.b2.0656 to i8
  %br.m6658 = and i64 %coerce.sext612, 63
  %br.b2.1659 = or i64 %br.m6658, 128
  %br.b2.1t660 = trunc i64 %br.b2.1659 to i8
  store i8 %br.b2.0t657, ptr %b.rn.dst653, align 1
  %br.dst1661 = getelementptr i8, ptr %b.rn.dst653, i64 1
  store i8 %br.b2.1t660, ptr %br.dst1661, align 1
  br label %br.done.36

br.c3.36:                                         ; preds = %br.c2.36
  br i1 %br.cmp3615, label %br.b3.36, label %br.b4.36

br.b3.36:                                         ; preds = %br.c3.36
  %br.sh12662 = lshr i64 %coerce.sext612, 12
  %br.b3.0663 = or i64 %br.sh12662, 224
  %br.b3.0t664 = trunc i64 %br.b3.0663 to i8
  %br.sh6.3665 = lshr i64 %coerce.sext612, 6
  %br.m6.3666 = and i64 %br.sh6.3665, 63
  %br.b3.1667 = or i64 %br.m6.3666, 128
  %br.b3.1t668 = trunc i64 %br.b3.1667 to i8
  %br.mend669 = and i64 %coerce.sext612, 63
  %br.b3.2670 = or i64 %br.mend669, 128
  %br.b3.2t671 = trunc i64 %br.b3.2670 to i8
  store i8 %br.b3.0t664, ptr %b.rn.dst653, align 1
  %br.dst1.3672 = getelementptr i8, ptr %b.rn.dst653, i64 1
  store i8 %br.b3.1t668, ptr %br.dst1.3672, align 1
  %br.dst2.3673 = getelementptr i8, ptr %b.rn.dst653, i64 2
  store i8 %br.b3.2t671, ptr %br.dst2.3673, align 1
  br label %br.done.36

br.b4.36:                                         ; preds = %br.c3.36
  %br.sh18674 = lshr i64 %coerce.sext612, 18
  %br.b4.0675 = or i64 %br.sh18674, 240
  %br.b4.0t676 = trunc i64 %br.b4.0675 to i8
  %br.sh12.4677 = lshr i64 %coerce.sext612, 12
  %br.m12.4678 = and i64 %br.sh12.4677, 63
  %br.b4.1679 = or i64 %br.m12.4678, 128
  %br.b4.1t680 = trunc i64 %br.b4.1679 to i8
  %br.sh6.4681 = lshr i64 %coerce.sext612, 6
  %br.m6.4682 = and i64 %br.sh6.4681, 63
  %br.b4.2683 = or i64 %br.m6.4682, 128
  %br.b4.2t684 = trunc i64 %br.b4.2683 to i8
  %br.mend4685 = and i64 %coerce.sext612, 63
  %br.b4.3686 = or i64 %br.mend4685, 128
  %br.b4.3t687 = trunc i64 %br.b4.3686 to i8
  store i8 %br.b4.0t676, ptr %b.rn.dst653, align 1
  %br.dst1.4688 = getelementptr i8, ptr %b.rn.dst653, i64 1
  store i8 %br.b4.1t680, ptr %br.dst1.4688, align 1
  %br.dst2.4689 = getelementptr i8, ptr %b.rn.dst653, i64 2
  store i8 %br.b4.2t684, ptr %br.dst2.4689, align 1
  %br.dst3.4690 = getelementptr i8, ptr %b.rn.dst653, i64 3
  store i8 %br.b4.3t687, ptr %br.dst3.4690, align 1
  br label %br.done.36

br.done.36:                                       ; preds = %br.b4.36, %br.b3.36, %br.b2.36, %br.b1.36
  %br.nul691 = getelementptr i8, ptr %b.rn.data652, i64 %sum622
  store i8 0, ptr %br.nul691, align 1
  %b.len.gep692 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 0
  store i64 %sum622, ptr %b.len.gep692, align 8
  %var.load693 = load i64, ptr %var.mode, align 8
  %bandtmp694 = and i64 %var.load693, 2
  %cmptmp695 = icmp ne i64 %bandtmp694, 0
  br i1 %cmptmp695, label %choice.then696, label %choice.else697

choice.then696:                                   ; preds = %br.done.36
  br label %choice.exit698

choice.else697:                                   ; preds = %br.done.36
  br label %choice.exit698

choice.exit698:                                   ; preds = %choice.else697, %choice.then696
  %choice.res699 = phi i32 [ 119, %choice.then696 ], [ 45, %choice.else697 ]
  %b.load700 = load ptr, ptr %var.b, align 8
  %var.load701 = load i64, ptr %var.mode, align 8
  %bandtmp702 = and i64 %var.load701, 2
  %cmptmp703 = icmp ne i64 %bandtmp702, 0
  br i1 %cmptmp703, label %choice.then704, label %choice.else705

choice.then704:                                   ; preds = %choice.exit698
  br label %choice.exit706

choice.else705:                                   ; preds = %choice.exit698
  br label %choice.exit706

choice.exit706:                                   ; preds = %choice.else705, %choice.then704
  %choice.res707 = phi i32 [ 119, %choice.then704 ], [ 45, %choice.else705 ]
  %coerce.sext708 = sext i32 %choice.res707 to i64
  %br.cmp1709 = icmp slt i64 %coerce.sext708, 128
  %br.cmp2710 = icmp slt i64 %coerce.sext708, 2048
  %br.cmp3711 = icmp slt i64 %coerce.sext708, 65536
  %br.w3712 = select i1 %br.cmp3711, i64 3, i64 4
  %br.w2713 = select i1 %br.cmp2710, i64 2, i64 %br.w3712
  %br.width714 = select i1 %br.cmp1709, i64 1, i64 %br.w2713
  %b.rn.cur.len715 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load700, i32 0, i32 0
  %b.rn.cur.len716 = load i64, ptr %b.rn.cur.len715, align 8
  %b.rn.new.len717 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len716, i64 %br.width714)
  %sum718 = extractvalue { i64, i1 } %b.rn.new.len717, 0
  %ovf719 = extractvalue { i64, i1 } %b.rn.new.len717, 1
  br i1 %ovf719, label %str_overflow_abort721, label %b.rn.new.len720

b.rn.new.len720:                                  ; preds = %str_overflow_abort721, %choice.exit706
  %b.cap722 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load700, i32 0, i32 2
  %b.cap723 = load i64, ptr %b.cap722, align 8
  %b.need.grow724 = icmp slt i64 %b.cap723, %sum718
  br i1 %b.need.grow724, label %b.grow2725, label %b.nogrow2726

str_overflow_abort721:                            ; preds = %choice.exit706
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len720

b.grow2725:                                       ; preds = %b.rn.new.len720
  %b.cap2728 = mul i64 %b.cap723, 2
  %b.cap.small729 = icmp slt i64 %b.cap2728, 16
  %b.cap.grow730 = select i1 %b.cap.small729, i64 16, i64 %b.cap2728
  %b.cap.need731 = icmp slt i64 %b.cap.grow730, %sum718
  %b.new.cap732 = select i1 %b.cap.need731, i64 %sum718, i64 %b.cap.grow730
  %b.cur.len2733 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load700, i32 0, i32 0
  %b.cur.len2734 = load i64, ptr %b.cur.len2733, align 8
  %b.cur.data2735 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load700, i32 0, i32 1
  %b.cur.data2736 = load ptr, ptr %b.cur.data2735, align 8
  %b.new.buf.len2737 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap732, i64 1)
  %sum738 = extractvalue { i64, i1 } %b.new.buf.len2737, 0
  %ovf739 = extractvalue { i64, i1 } %b.new.buf.len2737, 1
  br i1 %ovf739, label %str_overflow_abort741, label %b.new.buf.len2740

b.nogrow2726:                                     ; preds = %b.rn.new.len720
  br label %b.grow_done727

b.grow_done727:                                   ; preds = %b.nogrow2726, %b.new.buf.len2740
  %b.rn.data747 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load700, i32 0, i32 1
  %b.rn.data748 = load ptr, ptr %b.rn.data747, align 8
  %b.rn.dst749 = getelementptr i8, ptr %b.rn.data748, i64 %b.rn.cur.len716
  br i1 %br.cmp1709, label %br.b1.37, label %br.c2.37

b.new.buf.len2740:                                ; preds = %str_overflow_abort741, %b.grow2725
  %arena.cur742 = call ptr @dva_arena_current()
  %b.new.buf2743 = call ptr @dva_arena_alloc(ptr %arena.cur742, i64 %sum738)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2743, ptr align 1 %b.cur.data2736, i64 %b.cur.len2734, i1 false)
  %b.grow2.nul744 = getelementptr i8, ptr %b.new.buf2743, i64 %b.cur.len2734
  store i8 0, ptr %b.grow2.nul744, align 1
  %b.new.data2.gep745 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load700, i32 0, i32 1
  store ptr %b.new.buf2743, ptr %b.new.data2.gep745, align 8
  %b.new.cap2.gep746 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load700, i32 0, i32 2
  store i64 %b.new.cap732, ptr %b.new.cap2.gep746, align 8
  br label %b.grow_done727

str_overflow_abort741:                            ; preds = %b.grow2725
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2740

br.b1.37:                                         ; preds = %b.grow_done727
  %br.b1.0750 = trunc i64 %coerce.sext708 to i8
  store i8 %br.b1.0750, ptr %b.rn.dst749, align 1
  br label %br.done.37

br.c2.37:                                         ; preds = %b.grow_done727
  br i1 %br.cmp2710, label %br.b2.37, label %br.c3.37

br.b2.37:                                         ; preds = %br.c2.37
  %br.sh6751 = lshr i64 %coerce.sext708, 6
  %br.b2.0752 = or i64 %br.sh6751, 192
  %br.b2.0t753 = trunc i64 %br.b2.0752 to i8
  %br.m6754 = and i64 %coerce.sext708, 63
  %br.b2.1755 = or i64 %br.m6754, 128
  %br.b2.1t756 = trunc i64 %br.b2.1755 to i8
  store i8 %br.b2.0t753, ptr %b.rn.dst749, align 1
  %br.dst1757 = getelementptr i8, ptr %b.rn.dst749, i64 1
  store i8 %br.b2.1t756, ptr %br.dst1757, align 1
  br label %br.done.37

br.c3.37:                                         ; preds = %br.c2.37
  br i1 %br.cmp3711, label %br.b3.37, label %br.b4.37

br.b3.37:                                         ; preds = %br.c3.37
  %br.sh12758 = lshr i64 %coerce.sext708, 12
  %br.b3.0759 = or i64 %br.sh12758, 224
  %br.b3.0t760 = trunc i64 %br.b3.0759 to i8
  %br.sh6.3761 = lshr i64 %coerce.sext708, 6
  %br.m6.3762 = and i64 %br.sh6.3761, 63
  %br.b3.1763 = or i64 %br.m6.3762, 128
  %br.b3.1t764 = trunc i64 %br.b3.1763 to i8
  %br.mend765 = and i64 %coerce.sext708, 63
  %br.b3.2766 = or i64 %br.mend765, 128
  %br.b3.2t767 = trunc i64 %br.b3.2766 to i8
  store i8 %br.b3.0t760, ptr %b.rn.dst749, align 1
  %br.dst1.3768 = getelementptr i8, ptr %b.rn.dst749, i64 1
  store i8 %br.b3.1t764, ptr %br.dst1.3768, align 1
  %br.dst2.3769 = getelementptr i8, ptr %b.rn.dst749, i64 2
  store i8 %br.b3.2t767, ptr %br.dst2.3769, align 1
  br label %br.done.37

br.b4.37:                                         ; preds = %br.c3.37
  %br.sh18770 = lshr i64 %coerce.sext708, 18
  %br.b4.0771 = or i64 %br.sh18770, 240
  %br.b4.0t772 = trunc i64 %br.b4.0771 to i8
  %br.sh12.4773 = lshr i64 %coerce.sext708, 12
  %br.m12.4774 = and i64 %br.sh12.4773, 63
  %br.b4.1775 = or i64 %br.m12.4774, 128
  %br.b4.1t776 = trunc i64 %br.b4.1775 to i8
  %br.sh6.4777 = lshr i64 %coerce.sext708, 6
  %br.m6.4778 = and i64 %br.sh6.4777, 63
  %br.b4.2779 = or i64 %br.m6.4778, 128
  %br.b4.2t780 = trunc i64 %br.b4.2779 to i8
  %br.mend4781 = and i64 %coerce.sext708, 63
  %br.b4.3782 = or i64 %br.mend4781, 128
  %br.b4.3t783 = trunc i64 %br.b4.3782 to i8
  store i8 %br.b4.0t772, ptr %b.rn.dst749, align 1
  %br.dst1.4784 = getelementptr i8, ptr %b.rn.dst749, i64 1
  store i8 %br.b4.1t776, ptr %br.dst1.4784, align 1
  %br.dst2.4785 = getelementptr i8, ptr %b.rn.dst749, i64 2
  store i8 %br.b4.2t780, ptr %br.dst2.4785, align 1
  %br.dst3.4786 = getelementptr i8, ptr %b.rn.dst749, i64 3
  store i8 %br.b4.3t783, ptr %br.dst3.4786, align 1
  br label %br.done.37

br.done.37:                                       ; preds = %br.b4.37, %br.b3.37, %br.b2.37, %br.b1.37
  %br.nul787 = getelementptr i8, ptr %b.rn.data748, i64 %sum718
  store i8 0, ptr %br.nul787, align 1
  %b.len.gep788 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load700, i32 0, i32 0
  store i64 %sum718, ptr %b.len.gep788, align 8
  %var.load789 = load i64, ptr %var.mode, align 8
  %bandtmp790 = and i64 %var.load789, 1
  %cmptmp791 = icmp ne i64 %bandtmp790, 0
  br i1 %cmptmp791, label %choice.then792, label %choice.else793

choice.then792:                                   ; preds = %br.done.37
  br label %choice.exit794

choice.else793:                                   ; preds = %br.done.37
  br label %choice.exit794

choice.exit794:                                   ; preds = %choice.else793, %choice.then792
  %choice.res795 = phi i32 [ 120, %choice.then792 ], [ 45, %choice.else793 ]
  %b.load796 = load ptr, ptr %var.b, align 8
  %var.load797 = load i64, ptr %var.mode, align 8
  %bandtmp798 = and i64 %var.load797, 1
  %cmptmp799 = icmp ne i64 %bandtmp798, 0
  br i1 %cmptmp799, label %choice.then800, label %choice.else801

choice.then800:                                   ; preds = %choice.exit794
  br label %choice.exit802

choice.else801:                                   ; preds = %choice.exit794
  br label %choice.exit802

choice.exit802:                                   ; preds = %choice.else801, %choice.then800
  %choice.res803 = phi i32 [ 120, %choice.then800 ], [ 45, %choice.else801 ]
  %coerce.sext804 = sext i32 %choice.res803 to i64
  %br.cmp1805 = icmp slt i64 %coerce.sext804, 128
  %br.cmp2806 = icmp slt i64 %coerce.sext804, 2048
  %br.cmp3807 = icmp slt i64 %coerce.sext804, 65536
  %br.w3808 = select i1 %br.cmp3807, i64 3, i64 4
  %br.w2809 = select i1 %br.cmp2806, i64 2, i64 %br.w3808
  %br.width810 = select i1 %br.cmp1805, i64 1, i64 %br.w2809
  %b.rn.cur.len811 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load796, i32 0, i32 0
  %b.rn.cur.len812 = load i64, ptr %b.rn.cur.len811, align 8
  %b.rn.new.len813 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len812, i64 %br.width810)
  %sum814 = extractvalue { i64, i1 } %b.rn.new.len813, 0
  %ovf815 = extractvalue { i64, i1 } %b.rn.new.len813, 1
  br i1 %ovf815, label %str_overflow_abort817, label %b.rn.new.len816

b.rn.new.len816:                                  ; preds = %str_overflow_abort817, %choice.exit802
  %b.cap818 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load796, i32 0, i32 2
  %b.cap819 = load i64, ptr %b.cap818, align 8
  %b.need.grow820 = icmp slt i64 %b.cap819, %sum814
  br i1 %b.need.grow820, label %b.grow2821, label %b.nogrow2822

str_overflow_abort817:                            ; preds = %choice.exit802
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len816

b.grow2821:                                       ; preds = %b.rn.new.len816
  %b.cap2824 = mul i64 %b.cap819, 2
  %b.cap.small825 = icmp slt i64 %b.cap2824, 16
  %b.cap.grow826 = select i1 %b.cap.small825, i64 16, i64 %b.cap2824
  %b.cap.need827 = icmp slt i64 %b.cap.grow826, %sum814
  %b.new.cap828 = select i1 %b.cap.need827, i64 %sum814, i64 %b.cap.grow826
  %b.cur.len2829 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load796, i32 0, i32 0
  %b.cur.len2830 = load i64, ptr %b.cur.len2829, align 8
  %b.cur.data2831 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load796, i32 0, i32 1
  %b.cur.data2832 = load ptr, ptr %b.cur.data2831, align 8
  %b.new.buf.len2833 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap828, i64 1)
  %sum834 = extractvalue { i64, i1 } %b.new.buf.len2833, 0
  %ovf835 = extractvalue { i64, i1 } %b.new.buf.len2833, 1
  br i1 %ovf835, label %str_overflow_abort837, label %b.new.buf.len2836

b.nogrow2822:                                     ; preds = %b.rn.new.len816
  br label %b.grow_done823

b.grow_done823:                                   ; preds = %b.nogrow2822, %b.new.buf.len2836
  %b.rn.data843 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load796, i32 0, i32 1
  %b.rn.data844 = load ptr, ptr %b.rn.data843, align 8
  %b.rn.dst845 = getelementptr i8, ptr %b.rn.data844, i64 %b.rn.cur.len812
  br i1 %br.cmp1805, label %br.b1.38, label %br.c2.38

b.new.buf.len2836:                                ; preds = %str_overflow_abort837, %b.grow2821
  %arena.cur838 = call ptr @dva_arena_current()
  %b.new.buf2839 = call ptr @dva_arena_alloc(ptr %arena.cur838, i64 %sum834)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2839, ptr align 1 %b.cur.data2832, i64 %b.cur.len2830, i1 false)
  %b.grow2.nul840 = getelementptr i8, ptr %b.new.buf2839, i64 %b.cur.len2830
  store i8 0, ptr %b.grow2.nul840, align 1
  %b.new.data2.gep841 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load796, i32 0, i32 1
  store ptr %b.new.buf2839, ptr %b.new.data2.gep841, align 8
  %b.new.cap2.gep842 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load796, i32 0, i32 2
  store i64 %b.new.cap828, ptr %b.new.cap2.gep842, align 8
  br label %b.grow_done823

str_overflow_abort837:                            ; preds = %b.grow2821
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2836

br.b1.38:                                         ; preds = %b.grow_done823
  %br.b1.0846 = trunc i64 %coerce.sext804 to i8
  store i8 %br.b1.0846, ptr %b.rn.dst845, align 1
  br label %br.done.38

br.c2.38:                                         ; preds = %b.grow_done823
  br i1 %br.cmp2806, label %br.b2.38, label %br.c3.38

br.b2.38:                                         ; preds = %br.c2.38
  %br.sh6847 = lshr i64 %coerce.sext804, 6
  %br.b2.0848 = or i64 %br.sh6847, 192
  %br.b2.0t849 = trunc i64 %br.b2.0848 to i8
  %br.m6850 = and i64 %coerce.sext804, 63
  %br.b2.1851 = or i64 %br.m6850, 128
  %br.b2.1t852 = trunc i64 %br.b2.1851 to i8
  store i8 %br.b2.0t849, ptr %b.rn.dst845, align 1
  %br.dst1853 = getelementptr i8, ptr %b.rn.dst845, i64 1
  store i8 %br.b2.1t852, ptr %br.dst1853, align 1
  br label %br.done.38

br.c3.38:                                         ; preds = %br.c2.38
  br i1 %br.cmp3807, label %br.b3.38, label %br.b4.38

br.b3.38:                                         ; preds = %br.c3.38
  %br.sh12854 = lshr i64 %coerce.sext804, 12
  %br.b3.0855 = or i64 %br.sh12854, 224
  %br.b3.0t856 = trunc i64 %br.b3.0855 to i8
  %br.sh6.3857 = lshr i64 %coerce.sext804, 6
  %br.m6.3858 = and i64 %br.sh6.3857, 63
  %br.b3.1859 = or i64 %br.m6.3858, 128
  %br.b3.1t860 = trunc i64 %br.b3.1859 to i8
  %br.mend861 = and i64 %coerce.sext804, 63
  %br.b3.2862 = or i64 %br.mend861, 128
  %br.b3.2t863 = trunc i64 %br.b3.2862 to i8
  store i8 %br.b3.0t856, ptr %b.rn.dst845, align 1
  %br.dst1.3864 = getelementptr i8, ptr %b.rn.dst845, i64 1
  store i8 %br.b3.1t860, ptr %br.dst1.3864, align 1
  %br.dst2.3865 = getelementptr i8, ptr %b.rn.dst845, i64 2
  store i8 %br.b3.2t863, ptr %br.dst2.3865, align 1
  br label %br.done.38

br.b4.38:                                         ; preds = %br.c3.38
  %br.sh18866 = lshr i64 %coerce.sext804, 18
  %br.b4.0867 = or i64 %br.sh18866, 240
  %br.b4.0t868 = trunc i64 %br.b4.0867 to i8
  %br.sh12.4869 = lshr i64 %coerce.sext804, 12
  %br.m12.4870 = and i64 %br.sh12.4869, 63
  %br.b4.1871 = or i64 %br.m12.4870, 128
  %br.b4.1t872 = trunc i64 %br.b4.1871 to i8
  %br.sh6.4873 = lshr i64 %coerce.sext804, 6
  %br.m6.4874 = and i64 %br.sh6.4873, 63
  %br.b4.2875 = or i64 %br.m6.4874, 128
  %br.b4.2t876 = trunc i64 %br.b4.2875 to i8
  %br.mend4877 = and i64 %coerce.sext804, 63
  %br.b4.3878 = or i64 %br.mend4877, 128
  %br.b4.3t879 = trunc i64 %br.b4.3878 to i8
  store i8 %br.b4.0t868, ptr %b.rn.dst845, align 1
  %br.dst1.4880 = getelementptr i8, ptr %b.rn.dst845, i64 1
  store i8 %br.b4.1t872, ptr %br.dst1.4880, align 1
  %br.dst2.4881 = getelementptr i8, ptr %b.rn.dst845, i64 2
  store i8 %br.b4.2t876, ptr %br.dst2.4881, align 1
  %br.dst3.4882 = getelementptr i8, ptr %b.rn.dst845, i64 3
  store i8 %br.b4.3t879, ptr %br.dst3.4882, align 1
  br label %br.done.38

br.done.38:                                       ; preds = %br.b4.38, %br.b3.38, %br.b2.38, %br.b1.38
  %br.nul883 = getelementptr i8, ptr %b.rn.data844, i64 %sum814
  store i8 0, ptr %br.nul883, align 1
  %b.len.gep884 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load796, i32 0, i32 0
  store i64 %sum814, ptr %b.len.gep884, align 8
  %var.load885 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load885, i32 0, i32 0
  %b.freeze.len886 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load885, i32 0, i32 1
  %b.freeze.data887 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.38
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data887, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data887, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data887, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur888 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur888, i64 %b.freeze.len886)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data887, i64 %b.freeze.len886, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.38
  %b.freeze.data889 = phi ptr [ %b.freeze.data887, %br.done.38 ], [ %b.freeze.data887, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur890 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur890, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len886, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data889, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load885, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load885, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load885, i32 0, i32 2
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
  %loop.step.39 = alloca i64, align 8
  %loop.idx.39 = alloca i64, align 8
  %"var.rem'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load)
  store ptr %call.res, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query3, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp = icmp slt i64 %var.load4, 4
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load5 = load ptr, ptr %var.s, align 8
  ret ptr %var.load5

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %arena.cur6 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len7

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len7:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur8 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load9 = load i64, ptr %var.len, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len7

div.not_zero:                                     ; preds = %div.zero_abort, %b.buf.len7
  %div.is.min = icmp eq i64 %var.load9, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %b.buf.len7
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %var.load9, 3
  store i64 %modtmp, ptr %"var.rem'", align 8
  %var.load10 = load i64, ptr %"var.rem'", align 8
  %cmptmp11 = icmp eq i64 %var.load10, 0
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

div.ovf_abort:                                    ; preds = %div.not_zero
  %4 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

choice.then12:                                    ; preds = %div.ok
  store i64 3, ptr %"var.rem'", align 8
  br label %choice.exit13

choice.exit13:                                    ; preds = %choice.then12, %div.ok
  %var.load14 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.header.39:                                   ; preds = %loop.latch.39, %choice.exit13
  %counter.load = load i64, ptr %loop.idx.39, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load14
  br i1 %loop.cond, label %loop.body.39, label %loop.exit.nat.39

loop.body.39:                                     ; preds = %loop.header.39
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.39, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %cmptmp16 = icmp sgt i64 %var.load15, 0
  br i1 %cmptmp16, label %and.40.then, label %and.40.else

loop.exit.nat.39:                                 ; preds = %loop.header.39
  br label %loop.exit.39

loop.latch.39:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.39, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.exit.39:                                     ; preds = %loop.exit.nat.39
  %var.load94 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 0
  %b.freeze.len95 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 1
  %b.freeze.data96 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

and.40.then:                                      ; preds = %loop.body.39
  %var.load17 = load i64, ptr %var.i, align 8
  %var.load18 = load i64, ptr %"var.rem'", align 8
  %subtmp = sub i64 %var.load17, %var.load18
  br i1 false, label %div.zero_abort20, label %div.not_zero19

and.40.else:                                      ; preds = %loop.body.39
  br label %and.40.exit

and.40.exit:                                      ; preds = %and.40.else, %div.ok23
  %and.40.phi = phi i1 [ %cmptmp26, %div.ok23 ], [ %cmptmp16, %and.40.else ]
  br i1 %and.40.phi, label %choice.then27, label %choice.exit28

div.not_zero19:                                   ; preds = %div.zero_abort20, %and.40.then
  %div.is.min21 = icmp eq i64 %subtmp, -9223372036854775808
  %div.is.ovf22 = and i1 %div.is.min21, false
  br i1 %div.is.ovf22, label %div.ovf_abort24, label %div.ok23

div.zero_abort20:                                 ; preds = %and.40.then
  %5 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero19

div.ok23:                                         ; preds = %div.ovf_abort24, %div.not_zero19
  %modtmp25 = srem i64 %subtmp, 3
  %cmptmp26 = icmp eq i64 %modtmp25, 0
  br label %and.40.exit

div.ovf_abort24:                                  ; preds = %div.not_zero19
  %6 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok23

choice.then27:                                    ; preds = %and.40.exit
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len29 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len29, i64 1)
  %sum30 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf31 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf31, label %str_overflow_abort33, label %b.rn.new.len32

choice.exit28:                                    ; preds = %br.done.41, %and.40.exit
  %var.load44 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %s.read.len45 = load i64, ptr %s.read.len, align 8
  %s.read.len46 = and i64 %s.read.len45, 281474976710655
  %str.tag47 = lshr i64 %s.read.len45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

b.rn.new.len32:                                   ; preds = %str_overflow_abort33, %choice.then27
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap34 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap34, %sum30
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort33:                             ; preds = %choice.then27
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len32

b.grow2:                                          ; preds = %b.rn.new.len32
  %b.cap2 = mul i64 %b.cap34, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum30
  %b.new.cap = select i1 %b.cap.need, i64 %sum30, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len235 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data236 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum37 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf38 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.new.buf.len239

b.nogrow2:                                        ; preds = %b.rn.new.len32
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len239
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data42 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data42, i64 %b.rn.cur.len29
  br i1 true, label %br.b1.41, label %br.c2.41

b.new.buf.len239:                                 ; preds = %str_overflow_abort40, %b.grow2
  %arena.cur41 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 %sum37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data236, i64 %b.cur.len235, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len235
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort40:                             ; preds = %b.grow2
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len239

br.b1.41:                                         ; preds = %b.grow_done
  store i8 44, ptr %b.rn.dst, align 1
  br label %br.done.41

br.c2.41:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.41, label %br.c3.41

br.b2.41:                                         ; preds = %br.c2.41
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -84, ptr %br.dst1, align 1
  br label %br.done.41

br.c3.41:                                         ; preds = %br.c2.41
  br i1 true, label %br.b3.41, label %br.b4.41

br.b3.41:                                         ; preds = %br.c3.41
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -84, ptr %br.dst2.3, align 1
  br label %br.done.41

br.b4.41:                                         ; preds = %br.c3.41
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -84, ptr %br.dst3.4, align 1
  br label %br.done.41

br.done.41:                                       ; preds = %br.b4.41, %br.b3.41, %br.b2.41, %br.b1.41
  %br.nul = getelementptr i8, ptr %b.rn.data42, i64 %sum30
  store i8 0, ptr %br.nul, align 1
  %b.len.gep43 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum30, ptr %b.len.gep43, align 8
  br label %choice.exit28

str_gen_check49:                                  ; preds = %choice.exit28
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %choice.exit28
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %s.read.data54 = load ptr, ptr %s.read.data, align 8
  %var.load55 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load55, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale51:                                      ; preds = %str_gen_check49
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

idx_big_check:                                    ; preds = %str_ok50
  %idx.big = icmp sge i64 %var.load55, %s.read.len46
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data54, i64 %var.load55
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load56 = load ptr, ptr %var.b, align 8
  %var.load57 = load ptr, ptr %var.s, align 8
  %s.read.len58 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 0
  %s.read.len59 = load i64, ptr %s.read.len58, align 8
  %s.read.len60 = and i64 %s.read.len59, 281474976710655
  %str.tag61 = lshr i64 %s.read.len59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

idx_oob:                                          ; preds = %idx_big_check, %str_ok50
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check63:                                  ; preds = %idx_ok
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %idx_ok
  %s.read.data68 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data68, align 8
  %var.load70 = load i64, ptr %var.i, align 8
  %idx.neg71 = icmp slt i64 %var.load70, 0
  br i1 %idx.neg71, label %idx_oob74, label %idx_big_check72

str_stale65:                                      ; preds = %str_gen_check63
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

idx_big_check72:                                  ; preds = %str_ok64
  %idx.big75 = icmp sge i64 %var.load70, %s.read.len60
  br i1 %idx.big75, label %idx_oob74, label %idx_ok73

idx_ok73:                                         ; preds = %idx_oob74, %idx_big_check72
  %s.byte.gep76 = getelementptr i8, ptr %s.read.data69, i64 %var.load70
  %s.byte77 = load i8, ptr %s.byte.gep76, align 1
  %s.byte.val78 = zext i8 %s.byte77 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val78, 0
  %b.b.le255 = icmp sle i64 %s.byte.val78, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob74:                                        ; preds = %idx_big_check72, %str_ok64
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok73

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok73
  %b.byte.i8 = trunc i64 %s.byte.val78 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 0
  %b.len79 = load i64, ptr %b.len, align 8
  %b.cap80 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 2
  %b.cap81 = load i64, ptr %b.cap80, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 1
  %b.data82 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len79, %b.cap81
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok73
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap283 = mul i64 %b.cap81, 2
  %b.cap.small84 = icmp slt i64 %b.cap283, 16
  %b.new.cap85 = select i1 %b.cap.small84, i64 16, i64 %b.cap283
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap85, i64 1)
  %sum86 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf87 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf87, label %str_overflow_abort89, label %b.new.buf.len88

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len88
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 1
  %b.cur.data91 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 0
  %b.cur.len92 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data91, i64 %b.cur.len92
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len92, 1
  %b.nul = getelementptr i8, ptr %b.cur.data91, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep93, align 8
  br label %loop.latch.39

b.new.buf.len88:                                  ; preds = %str_overflow_abort89, %b.grow
  %arena.cur90 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 %sum86)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data82, i64 %b.len79, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len79
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 2
  store i64 %b.new.cap85, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort89:                             ; preds = %b.grow
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len88

b.freeze.check:                                   ; preds = %loop.exit.39
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data96, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data96, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data96, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur97 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 %b.freeze.len95)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data96, i64 %b.freeze.len95, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.39
  %b.freeze.data98 = phi ptr [ %b.freeze.data96, %loop.exit.39 ], [ %b.freeze.data96, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur99 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len95, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data98, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"fs::octal_perms"(ptr %0) #1 {
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
  ret ptr @str.14.struct

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
  %var.load223 = load i64, ptr %var.u, align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load223)
  %concat.lhs = load i64, ptr @str.15.struct, align 8
  %concat.lhs224 = and i64 %concat.lhs, 281474976710655
  %str.tag225 = lshr i64 %concat.lhs, 48
  %str.immortal226 = icmp eq i64 %str.tag225, 0
  br i1 %str.immortal226, label %str_ok228, label %str_gen_check227

str_gen_check227:                                 ; preds = %choice.exit220
  %arena.cur230 = call ptr @dva_arena_current()
  %tag.valid231 = call i1 @dva_arena_validate_tag(ptr %arena.cur230, i64 %str.tag225)
  br i1 %tag.valid231, label %str_ok228, label %str_stale229

str_ok228:                                        ; preds = %str_stale229, %str_gen_check227, %choice.exit220
  %concat.lhs232 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.rhs233 = load i64, ptr %concat.rhs, align 8
  %concat.rhs234 = and i64 %concat.rhs233, 281474976710655
  %str.tag235 = lshr i64 %concat.rhs233, 48
  %str.immortal236 = icmp eq i64 %str.tag235, 0
  br i1 %str.immortal236, label %str_ok238, label %str_gen_check237

str_stale229:                                     ; preds = %str_gen_check227
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok228

str_gen_check237:                                 ; preds = %str_ok228
  %arena.cur240 = call ptr @dva_arena_current()
  %tag.valid241 = call i1 @dva_arena_validate_tag(ptr %arena.cur240, i64 %str.tag235)
  br i1 %tag.valid241, label %str_ok238, label %str_stale239

str_ok238:                                        ; preds = %str_stale239, %str_gen_check237, %str_ok228
  %concat.rhs242 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.rhs243 = load ptr, ptr %concat.rhs242, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs224, i64 %concat.rhs234)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len244

str_stale239:                                     ; preds = %str_gen_check237
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok238

concat.sum.len244:                                ; preds = %str_overflow_abort, %str_ok238
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum245 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf246 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf246, label %str_overflow_abort248, label %concat.tot.len247

str_overflow_abort:                               ; preds = %str_ok238
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len244

concat.tot.len247:                                ; preds = %str_overflow_abort248, %concat.sum.len244
  %arena.cur249 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 %sum245)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs232, i64 %concat.lhs224, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs224
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs243, i64 %concat.rhs234, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur250 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load251 = load i64, ptr %var.g, align 8
  %call.res252 = call ptr @"str::from_int"(i64 %var.load251)
  %concat.lhs253 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs254 = load i64, ptr %concat.lhs253, align 8
  %concat.lhs255 = and i64 %concat.lhs254, 281474976710655
  %str.tag256 = lshr i64 %concat.lhs254, 48
  %str.immortal257 = icmp eq i64 %str.tag256, 0
  br i1 %str.immortal257, label %str_ok259, label %str_gen_check258

str_overflow_abort248:                            ; preds = %concat.sum.len244
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len247

str_gen_check258:                                 ; preds = %concat.tot.len247
  %arena.cur261 = call ptr @dva_arena_current()
  %tag.valid262 = call i1 @dva_arena_validate_tag(ptr %arena.cur261, i64 %str.tag256)
  br i1 %tag.valid262, label %str_ok259, label %str_stale260

str_ok259:                                        ; preds = %str_stale260, %str_gen_check258, %concat.tot.len247
  %concat.lhs263 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs264 = load ptr, ptr %concat.lhs263, align 8
  %concat.rhs265 = getelementptr inbounds { i64, ptr }, ptr %call.res252, i32 0, i32 0
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
  %concat.rhs275 = getelementptr inbounds { i64, ptr }, ptr %call.res252, i32 0, i32 1
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
  %var.load295 = load i64, ptr %var.o, align 8
  %call.res296 = call ptr @"str::from_int"(i64 %var.load295)
  %concat.lhs297 = getelementptr inbounds { i64, ptr }, ptr %concat.str292, i32 0, i32 0
  %concat.lhs298 = load i64, ptr %concat.lhs297, align 8
  %concat.lhs299 = and i64 %concat.lhs298, 281474976710655
  %str.tag300 = lshr i64 %concat.lhs298, 48
  %str.immortal301 = icmp eq i64 %str.tag300, 0
  br i1 %str.immortal301, label %str_ok303, label %str_gen_check302

str_overflow_abort286:                            ; preds = %concat.sum.len280
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len285

str_gen_check302:                                 ; preds = %concat.tot.len285
  %arena.cur305 = call ptr @dva_arena_current()
  %tag.valid306 = call i1 @dva_arena_validate_tag(ptr %arena.cur305, i64 %str.tag300)
  br i1 %tag.valid306, label %str_ok303, label %str_stale304

str_ok303:                                        ; preds = %str_stale304, %str_gen_check302, %concat.tot.len285
  %concat.lhs307 = getelementptr inbounds { i64, ptr }, ptr %concat.str292, i32 0, i32 1
  %concat.lhs308 = load ptr, ptr %concat.lhs307, align 8
  %concat.rhs309 = getelementptr inbounds { i64, ptr }, ptr %call.res296, i32 0, i32 0
  %concat.rhs310 = load i64, ptr %concat.rhs309, align 8
  %concat.rhs311 = and i64 %concat.rhs310, 281474976710655
  %str.tag312 = lshr i64 %concat.rhs310, 48
  %str.immortal313 = icmp eq i64 %str.tag312, 0
  br i1 %str.immortal313, label %str_ok315, label %str_gen_check314

str_stale304:                                     ; preds = %str_gen_check302
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok303

str_gen_check314:                                 ; preds = %str_ok303
  %arena.cur317 = call ptr @dva_arena_current()
  %tag.valid318 = call i1 @dva_arena_validate_tag(ptr %arena.cur317, i64 %str.tag312)
  br i1 %tag.valid318, label %str_ok315, label %str_stale316

str_ok315:                                        ; preds = %str_stale316, %str_gen_check314, %str_ok303
  %concat.rhs319 = getelementptr inbounds { i64, ptr }, ptr %call.res296, i32 0, i32 1
  %concat.rhs320 = load ptr, ptr %concat.rhs319, align 8
  %concat.sum.len321 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs299, i64 %concat.rhs311)
  %sum322 = extractvalue { i64, i1 } %concat.sum.len321, 0
  %ovf323 = extractvalue { i64, i1 } %concat.sum.len321, 1
  br i1 %ovf323, label %str_overflow_abort325, label %concat.sum.len324

str_stale316:                                     ; preds = %str_gen_check314
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok315

concat.sum.len324:                                ; preds = %str_overflow_abort325, %str_ok315
  %concat.tot.len326 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum322, i64 1)
  %sum327 = extractvalue { i64, i1 } %concat.tot.len326, 0
  %ovf328 = extractvalue { i64, i1 } %concat.tot.len326, 1
  br i1 %ovf328, label %str_overflow_abort330, label %concat.tot.len329

str_overflow_abort325:                            ; preds = %str_ok315
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len324

concat.tot.len329:                                ; preds = %str_overflow_abort330, %concat.sum.len324
  %arena.cur331 = call ptr @dva_arena_current()
  %concat.buf332 = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 %sum327)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf332, ptr align 1 %concat.lhs308, i64 %concat.lhs299, i1 false)
  %concat.mid333 = getelementptr i8, ptr %concat.buf332, i64 %concat.lhs299
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid333, ptr align 1 %concat.rhs320, i64 %concat.rhs311, i1 false)
  %concat.nul334 = getelementptr i8, ptr %concat.buf332, i64 %sum322
  store i8 0, ptr %concat.nul334, align 1
  %arena.cur335 = call ptr @dva_arena_current()
  %concat.str336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 16)
  %str.build.len.gep337 = getelementptr inbounds { i64, ptr }, ptr %concat.str336, i32 0, i32 0
  store i64 %sum322, ptr %str.build.len.gep337, align 8
  %str.build.data.gep338 = getelementptr inbounds { i64, ptr }, ptr %concat.str336, i32 0, i32 1
  store ptr %concat.buf332, ptr %str.build.data.gep338, align 8
  ret ptr %concat.str336

str_overflow_abort330:                            ; preds = %concat.sum.len324
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len329
}

define ptr @"fs::auto_rename_path"(ptr %0) #1 {
entry:
  %var.cand = alloca ptr, align 8
  %var._117 = alloca i64, align 8
  %var._i116 = alloca i64, align 8
  %var.num = alloca i64, align 8
  %loop.step.45 = alloca i64, align 8
  %loop.idx.45 = alloca i64, align 8
  %"var.cand_path'" = alloca ptr, align 8
  %var.ext_part = alloca ptr, align 8
  %var.base_name = alloca ptr, align 8
  %var.j_idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.42 = alloca i64, align 8
  %loop.idx.42 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.42, align 8
  br label %loop.header.42

str_stale23:                                      ; preds = %str_gen_check21
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

loop.header.42:                                   ; preds = %loop.latch.42, %str_ok22
  %counter.load = load i64, ptr %loop.idx.42, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load26
  br i1 %loop.cond, label %loop.body.42, label %loop.exit.nat.42

loop.body.42:                                     ; preds = %loop.header.42
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.42, align 8
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

loop.exit.nat.42:                                 ; preds = %loop.header.42
  br label %loop.exit.42

loop.latch.42:                                    ; preds = %choice.exit47
  %step.val = load i64, ptr %loop.step.42, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.exit.42:                                     ; preds = %loop.exit.nat.42
  %var.load49 = load i64, ptr %"var.dot_idx'", align 8
  %cmptmp50 = icmp sge i64 %var.load49, 0
  br i1 %cmptmp50, label %choice.then51, label %choice.else52

str_gen_check35:                                  ; preds = %loop.body.42
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %str.tag33)
  br i1 %tag.valid39, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %loop.body.42
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
  br i1 %cmptmp, label %and.43.then, label %and.43.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok36
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.43.then:                                      ; preds = %idx_ok
  %var.load42 = load i64, ptr %"var.dot_idx'", align 8
  %cmptmp43 = icmp slt i64 %var.load42, 0
  br label %and.43.exit

and.43.else:                                      ; preds = %idx_ok
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %and.43.then
  %and.43.phi = phi i1 [ %cmptmp43, %and.43.then ], [ %cmptmp, %and.43.else ]
  br i1 %and.43.phi, label %and.44.then, label %and.44.else

and.44.then:                                      ; preds = %and.43.exit
  %var.load44 = load i64, ptr %var.j_idx, align 8
  %cmptmp45 = icmp sgt i64 %var.load44, 0
  br label %and.44.exit

and.44.else:                                      ; preds = %and.43.exit
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %and.44.then
  %and.44.phi = phi i1 [ %cmptmp45, %and.44.then ], [ %and.43.phi, %and.44.else ]
  br i1 %and.44.phi, label %choice.then46, label %choice.exit47

choice.then46:                                    ; preds = %and.44.exit
  %var.load48 = load i64, ptr %var.j_idx, align 8
  store i64 %var.load48, ptr %"var.dot_idx'", align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.then46, %and.44.exit
  br label %loop.latch.42

choice.then51:                                    ; preds = %loop.exit.42
  %var.load54 = load ptr, ptr %var.name_part, align 8
  %s.read.len55 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %s.read.len56 = load i64, ptr %s.read.len55, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %str.tag58 = lshr i64 %s.read.len56, 48
  %str.immortal59 = icmp eq i64 %str.tag58, 0
  br i1 %str.immortal59, label %str_ok61, label %str_gen_check60

choice.else52:                                    ; preds = %loop.exit.42
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
  store i64 1, ptr %loop.idx.45, align 8
  br label %loop.header.45

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

loop.header.45:                                   ; preds = %loop.latch.45, %choice.exit75
  %counter.load113 = load i64, ptr %loop.idx.45, align 8
  %loop.cond114 = icmp slt i64 %counter.load113, 1000
  br i1 %loop.cond114, label %loop.body.45, label %loop.exit.nat.45

loop.body.45:                                     ; preds = %loop.header.45
  %loop.rel.i115 = sub i64 %counter.load113, 1
  store i64 1, ptr %loop.step.45, align 8
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

loop.exit.nat.45:                                 ; preds = %loop.header.45
  br label %loop.exit.45

loop.latch.45:                                    ; preds = %choice.exit563
  %step.val565 = load i64, ptr %loop.step.45, align 8
  %loop.next566 = add i64 %counter.load113, %step.val565
  store i64 %loop.next566, ptr %loop.idx.45, align 8
  br label %loop.header.45

loop.exit.45:                                     ; preds = %choice.then562, %loop.exit.nat.45
  %var.load567 = load ptr, ptr %"var.cand_path'", align 8
  ret ptr %var.load567

str_gen_check124:                                 ; preds = %loop.body.45
  %arena.cur127 = call ptr @dva_arena_current()
  %tag.valid128 = call i1 @dva_arena_validate_tag(ptr %arena.cur127, i64 %str.tag122)
  br i1 %tag.valid128, label %str_ok125, label %str_stale126

str_ok125:                                        ; preds = %str_stale126, %str_gen_check124, %loop.body.45
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
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 0
  %concat.lhs152 = load i64, ptr %concat.lhs, align 8
  %concat.lhs153 = and i64 %concat.lhs152, 281474976710655
  %str.tag154 = lshr i64 %concat.lhs152, 48
  %str.immortal155 = icmp eq i64 %str.tag154, 0
  br i1 %str.immortal155, label %str_ok157, label %str_gen_check156

choice.else149:                                   ; preds = %str.eq.merge141
  %var.load391 = load ptr, ptr %var.base_name, align 8
  %concat.lhs392 = getelementptr inbounds { i64, ptr }, ptr %var.load391, i32 0, i32 0
  %concat.lhs393 = load i64, ptr %concat.lhs392, align 8
  %concat.lhs394 = and i64 %concat.lhs393, 281474976710655
  %str.tag395 = lshr i64 %concat.lhs393, 48
  %str.immortal396 = icmp eq i64 %str.tag395, 0
  br i1 %str.immortal396, label %str_ok398, label %str_gen_check397

choice.exit150:                                   ; preds = %concat.tot.len549, %concat.tot.len381
  %choice.res559 = phi ptr [ %concat.str388, %concat.tot.len381 ], [ %concat.str556, %concat.tot.len549 ]
  store ptr %choice.res559, ptr %var.cand, align 8
  %var.load560 = load ptr, ptr %var.cand, align 8
  %call.res561 = call i1 @"fs::exists"(ptr %var.load560)
  %nottmp = xor i1 %call.res561, true
  br i1 %nottmp, label %choice.then562, label %choice.exit563

str_gen_check156:                                 ; preds = %choice.then148
  %arena.cur159 = call ptr @dva_arena_current()
  %tag.valid160 = call i1 @dva_arena_validate_tag(ptr %arena.cur159, i64 %str.tag154)
  br i1 %tag.valid160, label %str_ok157, label %str_stale158

str_ok157:                                        ; preds = %str_stale158, %str_gen_check156, %choice.then148
  %concat.lhs161 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 1
  %concat.lhs162 = load ptr, ptr %concat.lhs161, align 8
  %concat.rhs = load i64, ptr @str.0.struct, align 8
  %concat.rhs163 = and i64 %concat.rhs, 281474976710655
  %str.tag164 = lshr i64 %concat.rhs, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

str_stale158:                                     ; preds = %str_gen_check156
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok157

str_gen_check166:                                 ; preds = %str_ok157
  %arena.cur169 = call ptr @dva_arena_current()
  %tag.valid170 = call i1 @dva_arena_validate_tag(ptr %arena.cur169, i64 %str.tag164)
  br i1 %tag.valid170, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %str_ok157
  %concat.rhs171 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs153, i64 %concat.rhs163)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len172

str_stale168:                                     ; preds = %str_gen_check166
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

concat.sum.len172:                                ; preds = %str_overflow_abort, %str_ok167
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum173 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf174 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf174, label %str_overflow_abort176, label %concat.tot.len175

str_overflow_abort:                               ; preds = %str_ok167
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len172

concat.tot.len175:                                ; preds = %str_overflow_abort176, %concat.sum.len172
  %arena.cur177 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 %sum173)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs162, i64 %concat.lhs153, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs153
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs171, i64 %concat.rhs163, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur178 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 16)
  %str.build.len.gep179 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep179, align 8
  %str.build.data.gep180 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep180, align 8
  %var.load181 = load ptr, ptr %var.base_name, align 8
  %concat.lhs182 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs183 = load i64, ptr %concat.lhs182, align 8
  %concat.lhs184 = and i64 %concat.lhs183, 281474976710655
  %str.tag185 = lshr i64 %concat.lhs183, 48
  %str.immortal186 = icmp eq i64 %str.tag185, 0
  br i1 %str.immortal186, label %str_ok188, label %str_gen_check187

str_overflow_abort176:                            ; preds = %concat.sum.len172
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len175

str_gen_check187:                                 ; preds = %concat.tot.len175
  %arena.cur190 = call ptr @dva_arena_current()
  %tag.valid191 = call i1 @dva_arena_validate_tag(ptr %arena.cur190, i64 %str.tag185)
  br i1 %tag.valid191, label %str_ok188, label %str_stale189

str_ok188:                                        ; preds = %str_stale189, %str_gen_check187, %concat.tot.len175
  %concat.lhs192 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs193 = load ptr, ptr %concat.lhs192, align 8
  %concat.rhs194 = getelementptr inbounds { i64, ptr }, ptr %var.load181, i32 0, i32 0
  %concat.rhs195 = load i64, ptr %concat.rhs194, align 8
  %concat.rhs196 = and i64 %concat.rhs195, 281474976710655
  %str.tag197 = lshr i64 %concat.rhs195, 48
  %str.immortal198 = icmp eq i64 %str.tag197, 0
  br i1 %str.immortal198, label %str_ok200, label %str_gen_check199

str_stale189:                                     ; preds = %str_gen_check187
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok188

str_gen_check199:                                 ; preds = %str_ok188
  %arena.cur202 = call ptr @dva_arena_current()
  %tag.valid203 = call i1 @dva_arena_validate_tag(ptr %arena.cur202, i64 %str.tag197)
  br i1 %tag.valid203, label %str_ok200, label %str_stale201

str_ok200:                                        ; preds = %str_stale201, %str_gen_check199, %str_ok188
  %concat.rhs204 = getelementptr inbounds { i64, ptr }, ptr %var.load181, i32 0, i32 1
  %concat.rhs205 = load ptr, ptr %concat.rhs204, align 8
  %concat.sum.len206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs184, i64 %concat.rhs196)
  %sum207 = extractvalue { i64, i1 } %concat.sum.len206, 0
  %ovf208 = extractvalue { i64, i1 } %concat.sum.len206, 1
  br i1 %ovf208, label %str_overflow_abort210, label %concat.sum.len209

str_stale201:                                     ; preds = %str_gen_check199
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok200

concat.sum.len209:                                ; preds = %str_overflow_abort210, %str_ok200
  %concat.tot.len211 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum207, i64 1)
  %sum212 = extractvalue { i64, i1 } %concat.tot.len211, 0
  %ovf213 = extractvalue { i64, i1 } %concat.tot.len211, 1
  br i1 %ovf213, label %str_overflow_abort215, label %concat.tot.len214

str_overflow_abort210:                            ; preds = %str_ok200
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len209

concat.tot.len214:                                ; preds = %str_overflow_abort215, %concat.sum.len209
  %arena.cur216 = call ptr @dva_arena_current()
  %concat.buf217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 %sum212)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf217, ptr align 1 %concat.lhs193, i64 %concat.lhs184, i1 false)
  %concat.mid218 = getelementptr i8, ptr %concat.buf217, i64 %concat.lhs184
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid218, ptr align 1 %concat.rhs205, i64 %concat.rhs196, i1 false)
  %concat.nul219 = getelementptr i8, ptr %concat.buf217, i64 %sum207
  store i8 0, ptr %concat.nul219, align 1
  %arena.cur220 = call ptr @dva_arena_current()
  %concat.str221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 16)
  %str.build.len.gep222 = getelementptr inbounds { i64, ptr }, ptr %concat.str221, i32 0, i32 0
  store i64 %sum207, ptr %str.build.len.gep222, align 8
  %str.build.data.gep223 = getelementptr inbounds { i64, ptr }, ptr %concat.str221, i32 0, i32 1
  store ptr %concat.buf217, ptr %str.build.data.gep223, align 8
  %concat.lhs224 = getelementptr inbounds { i64, ptr }, ptr %concat.str221, i32 0, i32 0
  %concat.lhs225 = load i64, ptr %concat.lhs224, align 8
  %concat.lhs226 = and i64 %concat.lhs225, 281474976710655
  %str.tag227 = lshr i64 %concat.lhs225, 48
  %str.immortal228 = icmp eq i64 %str.tag227, 0
  br i1 %str.immortal228, label %str_ok230, label %str_gen_check229

str_overflow_abort215:                            ; preds = %concat.sum.len209
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len214

str_gen_check229:                                 ; preds = %concat.tot.len214
  %arena.cur232 = call ptr @dva_arena_current()
  %tag.valid233 = call i1 @dva_arena_validate_tag(ptr %arena.cur232, i64 %str.tag227)
  br i1 %tag.valid233, label %str_ok230, label %str_stale231

str_ok230:                                        ; preds = %str_stale231, %str_gen_check229, %concat.tot.len214
  %concat.lhs234 = getelementptr inbounds { i64, ptr }, ptr %concat.str221, i32 0, i32 1
  %concat.lhs235 = load ptr, ptr %concat.lhs234, align 8
  %concat.rhs236 = load i64, ptr @str.16.struct, align 8
  %concat.rhs237 = and i64 %concat.rhs236, 281474976710655
  %str.tag238 = lshr i64 %concat.rhs236, 48
  %str.immortal239 = icmp eq i64 %str.tag238, 0
  br i1 %str.immortal239, label %str_ok241, label %str_gen_check240

str_stale231:                                     ; preds = %str_gen_check229
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok230

str_gen_check240:                                 ; preds = %str_ok230
  %arena.cur243 = call ptr @dva_arena_current()
  %tag.valid244 = call i1 @dva_arena_validate_tag(ptr %arena.cur243, i64 %str.tag238)
  br i1 %tag.valid244, label %str_ok241, label %str_stale242

str_ok241:                                        ; preds = %str_stale242, %str_gen_check240, %str_ok230
  %concat.rhs245 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %concat.sum.len246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs226, i64 %concat.rhs237)
  %sum247 = extractvalue { i64, i1 } %concat.sum.len246, 0
  %ovf248 = extractvalue { i64, i1 } %concat.sum.len246, 1
  br i1 %ovf248, label %str_overflow_abort250, label %concat.sum.len249

str_stale242:                                     ; preds = %str_gen_check240
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok241

concat.sum.len249:                                ; preds = %str_overflow_abort250, %str_ok241
  %concat.tot.len251 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum247, i64 1)
  %sum252 = extractvalue { i64, i1 } %concat.tot.len251, 0
  %ovf253 = extractvalue { i64, i1 } %concat.tot.len251, 1
  br i1 %ovf253, label %str_overflow_abort255, label %concat.tot.len254

str_overflow_abort250:                            ; preds = %str_ok241
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len249

concat.tot.len254:                                ; preds = %str_overflow_abort255, %concat.sum.len249
  %arena.cur256 = call ptr @dva_arena_current()
  %concat.buf257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 %sum252)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf257, ptr align 1 %concat.lhs235, i64 %concat.lhs226, i1 false)
  %concat.mid258 = getelementptr i8, ptr %concat.buf257, i64 %concat.lhs226
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid258, ptr align 1 %concat.rhs245, i64 %concat.rhs237, i1 false)
  %concat.nul259 = getelementptr i8, ptr %concat.buf257, i64 %sum247
  store i8 0, ptr %concat.nul259, align 1
  %arena.cur260 = call ptr @dva_arena_current()
  %concat.str261 = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 16)
  %str.build.len.gep262 = getelementptr inbounds { i64, ptr }, ptr %concat.str261, i32 0, i32 0
  store i64 %sum247, ptr %str.build.len.gep262, align 8
  %str.build.data.gep263 = getelementptr inbounds { i64, ptr }, ptr %concat.str261, i32 0, i32 1
  store ptr %concat.buf257, ptr %str.build.data.gep263, align 8
  %var.load264 = load i64, ptr %var.num, align 8
  %call.res265 = call ptr @"str::from_int"(i64 %var.load264)
  %concat.lhs266 = getelementptr inbounds { i64, ptr }, ptr %concat.str261, i32 0, i32 0
  %concat.lhs267 = load i64, ptr %concat.lhs266, align 8
  %concat.lhs268 = and i64 %concat.lhs267, 281474976710655
  %str.tag269 = lshr i64 %concat.lhs267, 48
  %str.immortal270 = icmp eq i64 %str.tag269, 0
  br i1 %str.immortal270, label %str_ok272, label %str_gen_check271

str_overflow_abort255:                            ; preds = %concat.sum.len249
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len254

str_gen_check271:                                 ; preds = %concat.tot.len254
  %arena.cur274 = call ptr @dva_arena_current()
  %tag.valid275 = call i1 @dva_arena_validate_tag(ptr %arena.cur274, i64 %str.tag269)
  br i1 %tag.valid275, label %str_ok272, label %str_stale273

str_ok272:                                        ; preds = %str_stale273, %str_gen_check271, %concat.tot.len254
  %concat.lhs276 = getelementptr inbounds { i64, ptr }, ptr %concat.str261, i32 0, i32 1
  %concat.lhs277 = load ptr, ptr %concat.lhs276, align 8
  %concat.rhs278 = getelementptr inbounds { i64, ptr }, ptr %call.res265, i32 0, i32 0
  %concat.rhs279 = load i64, ptr %concat.rhs278, align 8
  %concat.rhs280 = and i64 %concat.rhs279, 281474976710655
  %str.tag281 = lshr i64 %concat.rhs279, 48
  %str.immortal282 = icmp eq i64 %str.tag281, 0
  br i1 %str.immortal282, label %str_ok284, label %str_gen_check283

str_stale273:                                     ; preds = %str_gen_check271
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok272

str_gen_check283:                                 ; preds = %str_ok272
  %arena.cur286 = call ptr @dva_arena_current()
  %tag.valid287 = call i1 @dva_arena_validate_tag(ptr %arena.cur286, i64 %str.tag281)
  br i1 %tag.valid287, label %str_ok284, label %str_stale285

str_ok284:                                        ; preds = %str_stale285, %str_gen_check283, %str_ok272
  %concat.rhs288 = getelementptr inbounds { i64, ptr }, ptr %call.res265, i32 0, i32 1
  %concat.rhs289 = load ptr, ptr %concat.rhs288, align 8
  %concat.sum.len290 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs268, i64 %concat.rhs280)
  %sum291 = extractvalue { i64, i1 } %concat.sum.len290, 0
  %ovf292 = extractvalue { i64, i1 } %concat.sum.len290, 1
  br i1 %ovf292, label %str_overflow_abort294, label %concat.sum.len293

str_stale285:                                     ; preds = %str_gen_check283
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok284

concat.sum.len293:                                ; preds = %str_overflow_abort294, %str_ok284
  %concat.tot.len295 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum291, i64 1)
  %sum296 = extractvalue { i64, i1 } %concat.tot.len295, 0
  %ovf297 = extractvalue { i64, i1 } %concat.tot.len295, 1
  br i1 %ovf297, label %str_overflow_abort299, label %concat.tot.len298

str_overflow_abort294:                            ; preds = %str_ok284
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len293

concat.tot.len298:                                ; preds = %str_overflow_abort299, %concat.sum.len293
  %arena.cur300 = call ptr @dva_arena_current()
  %concat.buf301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 %sum296)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf301, ptr align 1 %concat.lhs277, i64 %concat.lhs268, i1 false)
  %concat.mid302 = getelementptr i8, ptr %concat.buf301, i64 %concat.lhs268
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid302, ptr align 1 %concat.rhs289, i64 %concat.rhs280, i1 false)
  %concat.nul303 = getelementptr i8, ptr %concat.buf301, i64 %sum291
  store i8 0, ptr %concat.nul303, align 1
  %arena.cur304 = call ptr @dva_arena_current()
  %concat.str305 = call ptr @dva_arena_alloc(ptr %arena.cur304, i64 16)
  %str.build.len.gep306 = getelementptr inbounds { i64, ptr }, ptr %concat.str305, i32 0, i32 0
  store i64 %sum291, ptr %str.build.len.gep306, align 8
  %str.build.data.gep307 = getelementptr inbounds { i64, ptr }, ptr %concat.str305, i32 0, i32 1
  store ptr %concat.buf301, ptr %str.build.data.gep307, align 8
  %concat.lhs308 = getelementptr inbounds { i64, ptr }, ptr %concat.str305, i32 0, i32 0
  %concat.lhs309 = load i64, ptr %concat.lhs308, align 8
  %concat.lhs310 = and i64 %concat.lhs309, 281474976710655
  %str.tag311 = lshr i64 %concat.lhs309, 48
  %str.immortal312 = icmp eq i64 %str.tag311, 0
  br i1 %str.immortal312, label %str_ok314, label %str_gen_check313

str_overflow_abort299:                            ; preds = %concat.sum.len293
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len298

str_gen_check313:                                 ; preds = %concat.tot.len298
  %arena.cur316 = call ptr @dva_arena_current()
  %tag.valid317 = call i1 @dva_arena_validate_tag(ptr %arena.cur316, i64 %str.tag311)
  br i1 %tag.valid317, label %str_ok314, label %str_stale315

str_ok314:                                        ; preds = %str_stale315, %str_gen_check313, %concat.tot.len298
  %concat.lhs318 = getelementptr inbounds { i64, ptr }, ptr %concat.str305, i32 0, i32 1
  %concat.lhs319 = load ptr, ptr %concat.lhs318, align 8
  %concat.rhs320 = load i64, ptr @str.17.struct, align 8
  %concat.rhs321 = and i64 %concat.rhs320, 281474976710655
  %str.tag322 = lshr i64 %concat.rhs320, 48
  %str.immortal323 = icmp eq i64 %str.tag322, 0
  br i1 %str.immortal323, label %str_ok325, label %str_gen_check324

str_stale315:                                     ; preds = %str_gen_check313
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok314

str_gen_check324:                                 ; preds = %str_ok314
  %arena.cur327 = call ptr @dva_arena_current()
  %tag.valid328 = call i1 @dva_arena_validate_tag(ptr %arena.cur327, i64 %str.tag322)
  br i1 %tag.valid328, label %str_ok325, label %str_stale326

str_ok325:                                        ; preds = %str_stale326, %str_gen_check324, %str_ok314
  %concat.rhs329 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %concat.sum.len330 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs310, i64 %concat.rhs321)
  %sum331 = extractvalue { i64, i1 } %concat.sum.len330, 0
  %ovf332 = extractvalue { i64, i1 } %concat.sum.len330, 1
  br i1 %ovf332, label %str_overflow_abort334, label %concat.sum.len333

str_stale326:                                     ; preds = %str_gen_check324
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok325

concat.sum.len333:                                ; preds = %str_overflow_abort334, %str_ok325
  %concat.tot.len335 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum331, i64 1)
  %sum336 = extractvalue { i64, i1 } %concat.tot.len335, 0
  %ovf337 = extractvalue { i64, i1 } %concat.tot.len335, 1
  br i1 %ovf337, label %str_overflow_abort339, label %concat.tot.len338

str_overflow_abort334:                            ; preds = %str_ok325
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len333

concat.tot.len338:                                ; preds = %str_overflow_abort339, %concat.sum.len333
  %arena.cur340 = call ptr @dva_arena_current()
  %concat.buf341 = call ptr @dva_arena_alloc(ptr %arena.cur340, i64 %sum336)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf341, ptr align 1 %concat.lhs319, i64 %concat.lhs310, i1 false)
  %concat.mid342 = getelementptr i8, ptr %concat.buf341, i64 %concat.lhs310
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid342, ptr align 1 %concat.rhs329, i64 %concat.rhs321, i1 false)
  %concat.nul343 = getelementptr i8, ptr %concat.buf341, i64 %sum331
  store i8 0, ptr %concat.nul343, align 1
  %arena.cur344 = call ptr @dva_arena_current()
  %concat.str345 = call ptr @dva_arena_alloc(ptr %arena.cur344, i64 16)
  %str.build.len.gep346 = getelementptr inbounds { i64, ptr }, ptr %concat.str345, i32 0, i32 0
  store i64 %sum331, ptr %str.build.len.gep346, align 8
  %str.build.data.gep347 = getelementptr inbounds { i64, ptr }, ptr %concat.str345, i32 0, i32 1
  store ptr %concat.buf341, ptr %str.build.data.gep347, align 8
  %var.load348 = load ptr, ptr %var.ext_part, align 8
  %concat.lhs349 = getelementptr inbounds { i64, ptr }, ptr %concat.str345, i32 0, i32 0
  %concat.lhs350 = load i64, ptr %concat.lhs349, align 8
  %concat.lhs351 = and i64 %concat.lhs350, 281474976710655
  %str.tag352 = lshr i64 %concat.lhs350, 48
  %str.immortal353 = icmp eq i64 %str.tag352, 0
  br i1 %str.immortal353, label %str_ok355, label %str_gen_check354

str_overflow_abort339:                            ; preds = %concat.sum.len333
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len338

str_gen_check354:                                 ; preds = %concat.tot.len338
  %arena.cur357 = call ptr @dva_arena_current()
  %tag.valid358 = call i1 @dva_arena_validate_tag(ptr %arena.cur357, i64 %str.tag352)
  br i1 %tag.valid358, label %str_ok355, label %str_stale356

str_ok355:                                        ; preds = %str_stale356, %str_gen_check354, %concat.tot.len338
  %concat.lhs359 = getelementptr inbounds { i64, ptr }, ptr %concat.str345, i32 0, i32 1
  %concat.lhs360 = load ptr, ptr %concat.lhs359, align 8
  %concat.rhs361 = getelementptr inbounds { i64, ptr }, ptr %var.load348, i32 0, i32 0
  %concat.rhs362 = load i64, ptr %concat.rhs361, align 8
  %concat.rhs363 = and i64 %concat.rhs362, 281474976710655
  %str.tag364 = lshr i64 %concat.rhs362, 48
  %str.immortal365 = icmp eq i64 %str.tag364, 0
  br i1 %str.immortal365, label %str_ok367, label %str_gen_check366

str_stale356:                                     ; preds = %str_gen_check354
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok355

str_gen_check366:                                 ; preds = %str_ok355
  %arena.cur369 = call ptr @dva_arena_current()
  %tag.valid370 = call i1 @dva_arena_validate_tag(ptr %arena.cur369, i64 %str.tag364)
  br i1 %tag.valid370, label %str_ok367, label %str_stale368

str_ok367:                                        ; preds = %str_stale368, %str_gen_check366, %str_ok355
  %concat.rhs371 = getelementptr inbounds { i64, ptr }, ptr %var.load348, i32 0, i32 1
  %concat.rhs372 = load ptr, ptr %concat.rhs371, align 8
  %concat.sum.len373 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs351, i64 %concat.rhs363)
  %sum374 = extractvalue { i64, i1 } %concat.sum.len373, 0
  %ovf375 = extractvalue { i64, i1 } %concat.sum.len373, 1
  br i1 %ovf375, label %str_overflow_abort377, label %concat.sum.len376

str_stale368:                                     ; preds = %str_gen_check366
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok367

concat.sum.len376:                                ; preds = %str_overflow_abort377, %str_ok367
  %concat.tot.len378 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum374, i64 1)
  %sum379 = extractvalue { i64, i1 } %concat.tot.len378, 0
  %ovf380 = extractvalue { i64, i1 } %concat.tot.len378, 1
  br i1 %ovf380, label %str_overflow_abort382, label %concat.tot.len381

str_overflow_abort377:                            ; preds = %str_ok367
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len376

concat.tot.len381:                                ; preds = %str_overflow_abort382, %concat.sum.len376
  %arena.cur383 = call ptr @dva_arena_current()
  %concat.buf384 = call ptr @dva_arena_alloc(ptr %arena.cur383, i64 %sum379)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf384, ptr align 1 %concat.lhs360, i64 %concat.lhs351, i1 false)
  %concat.mid385 = getelementptr i8, ptr %concat.buf384, i64 %concat.lhs351
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid385, ptr align 1 %concat.rhs372, i64 %concat.rhs363, i1 false)
  %concat.nul386 = getelementptr i8, ptr %concat.buf384, i64 %sum374
  store i8 0, ptr %concat.nul386, align 1
  %arena.cur387 = call ptr @dva_arena_current()
  %concat.str388 = call ptr @dva_arena_alloc(ptr %arena.cur387, i64 16)
  %str.build.len.gep389 = getelementptr inbounds { i64, ptr }, ptr %concat.str388, i32 0, i32 0
  store i64 %sum374, ptr %str.build.len.gep389, align 8
  %str.build.data.gep390 = getelementptr inbounds { i64, ptr }, ptr %concat.str388, i32 0, i32 1
  store ptr %concat.buf384, ptr %str.build.data.gep390, align 8
  br label %choice.exit150

str_overflow_abort382:                            ; preds = %concat.sum.len376
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len381

str_gen_check397:                                 ; preds = %choice.else149
  %arena.cur400 = call ptr @dva_arena_current()
  %tag.valid401 = call i1 @dva_arena_validate_tag(ptr %arena.cur400, i64 %str.tag395)
  br i1 %tag.valid401, label %str_ok398, label %str_stale399

str_ok398:                                        ; preds = %str_stale399, %str_gen_check397, %choice.else149
  %concat.lhs402 = getelementptr inbounds { i64, ptr }, ptr %var.load391, i32 0, i32 1
  %concat.lhs403 = load ptr, ptr %concat.lhs402, align 8
  %concat.rhs404 = load i64, ptr @str.16.struct, align 8
  %concat.rhs405 = and i64 %concat.rhs404, 281474976710655
  %str.tag406 = lshr i64 %concat.rhs404, 48
  %str.immortal407 = icmp eq i64 %str.tag406, 0
  br i1 %str.immortal407, label %str_ok409, label %str_gen_check408

str_stale399:                                     ; preds = %str_gen_check397
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok398

str_gen_check408:                                 ; preds = %str_ok398
  %arena.cur411 = call ptr @dva_arena_current()
  %tag.valid412 = call i1 @dva_arena_validate_tag(ptr %arena.cur411, i64 %str.tag406)
  br i1 %tag.valid412, label %str_ok409, label %str_stale410

str_ok409:                                        ; preds = %str_stale410, %str_gen_check408, %str_ok398
  %concat.rhs413 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %concat.sum.len414 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs394, i64 %concat.rhs405)
  %sum415 = extractvalue { i64, i1 } %concat.sum.len414, 0
  %ovf416 = extractvalue { i64, i1 } %concat.sum.len414, 1
  br i1 %ovf416, label %str_overflow_abort418, label %concat.sum.len417

str_stale410:                                     ; preds = %str_gen_check408
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok409

concat.sum.len417:                                ; preds = %str_overflow_abort418, %str_ok409
  %concat.tot.len419 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum415, i64 1)
  %sum420 = extractvalue { i64, i1 } %concat.tot.len419, 0
  %ovf421 = extractvalue { i64, i1 } %concat.tot.len419, 1
  br i1 %ovf421, label %str_overflow_abort423, label %concat.tot.len422

str_overflow_abort418:                            ; preds = %str_ok409
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len417

concat.tot.len422:                                ; preds = %str_overflow_abort423, %concat.sum.len417
  %arena.cur424 = call ptr @dva_arena_current()
  %concat.buf425 = call ptr @dva_arena_alloc(ptr %arena.cur424, i64 %sum420)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf425, ptr align 1 %concat.lhs403, i64 %concat.lhs394, i1 false)
  %concat.mid426 = getelementptr i8, ptr %concat.buf425, i64 %concat.lhs394
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid426, ptr align 1 %concat.rhs413, i64 %concat.rhs405, i1 false)
  %concat.nul427 = getelementptr i8, ptr %concat.buf425, i64 %sum415
  store i8 0, ptr %concat.nul427, align 1
  %arena.cur428 = call ptr @dva_arena_current()
  %concat.str429 = call ptr @dva_arena_alloc(ptr %arena.cur428, i64 16)
  %str.build.len.gep430 = getelementptr inbounds { i64, ptr }, ptr %concat.str429, i32 0, i32 0
  store i64 %sum415, ptr %str.build.len.gep430, align 8
  %str.build.data.gep431 = getelementptr inbounds { i64, ptr }, ptr %concat.str429, i32 0, i32 1
  store ptr %concat.buf425, ptr %str.build.data.gep431, align 8
  %var.load432 = load i64, ptr %var.num, align 8
  %call.res433 = call ptr @"str::from_int"(i64 %var.load432)
  %concat.lhs434 = getelementptr inbounds { i64, ptr }, ptr %concat.str429, i32 0, i32 0
  %concat.lhs435 = load i64, ptr %concat.lhs434, align 8
  %concat.lhs436 = and i64 %concat.lhs435, 281474976710655
  %str.tag437 = lshr i64 %concat.lhs435, 48
  %str.immortal438 = icmp eq i64 %str.tag437, 0
  br i1 %str.immortal438, label %str_ok440, label %str_gen_check439

str_overflow_abort423:                            ; preds = %concat.sum.len417
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len422

str_gen_check439:                                 ; preds = %concat.tot.len422
  %arena.cur442 = call ptr @dva_arena_current()
  %tag.valid443 = call i1 @dva_arena_validate_tag(ptr %arena.cur442, i64 %str.tag437)
  br i1 %tag.valid443, label %str_ok440, label %str_stale441

str_ok440:                                        ; preds = %str_stale441, %str_gen_check439, %concat.tot.len422
  %concat.lhs444 = getelementptr inbounds { i64, ptr }, ptr %concat.str429, i32 0, i32 1
  %concat.lhs445 = load ptr, ptr %concat.lhs444, align 8
  %concat.rhs446 = getelementptr inbounds { i64, ptr }, ptr %call.res433, i32 0, i32 0
  %concat.rhs447 = load i64, ptr %concat.rhs446, align 8
  %concat.rhs448 = and i64 %concat.rhs447, 281474976710655
  %str.tag449 = lshr i64 %concat.rhs447, 48
  %str.immortal450 = icmp eq i64 %str.tag449, 0
  br i1 %str.immortal450, label %str_ok452, label %str_gen_check451

str_stale441:                                     ; preds = %str_gen_check439
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok440

str_gen_check451:                                 ; preds = %str_ok440
  %arena.cur454 = call ptr @dva_arena_current()
  %tag.valid455 = call i1 @dva_arena_validate_tag(ptr %arena.cur454, i64 %str.tag449)
  br i1 %tag.valid455, label %str_ok452, label %str_stale453

str_ok452:                                        ; preds = %str_stale453, %str_gen_check451, %str_ok440
  %concat.rhs456 = getelementptr inbounds { i64, ptr }, ptr %call.res433, i32 0, i32 1
  %concat.rhs457 = load ptr, ptr %concat.rhs456, align 8
  %concat.sum.len458 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs436, i64 %concat.rhs448)
  %sum459 = extractvalue { i64, i1 } %concat.sum.len458, 0
  %ovf460 = extractvalue { i64, i1 } %concat.sum.len458, 1
  br i1 %ovf460, label %str_overflow_abort462, label %concat.sum.len461

str_stale453:                                     ; preds = %str_gen_check451
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok452

concat.sum.len461:                                ; preds = %str_overflow_abort462, %str_ok452
  %concat.tot.len463 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum459, i64 1)
  %sum464 = extractvalue { i64, i1 } %concat.tot.len463, 0
  %ovf465 = extractvalue { i64, i1 } %concat.tot.len463, 1
  br i1 %ovf465, label %str_overflow_abort467, label %concat.tot.len466

str_overflow_abort462:                            ; preds = %str_ok452
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len461

concat.tot.len466:                                ; preds = %str_overflow_abort467, %concat.sum.len461
  %arena.cur468 = call ptr @dva_arena_current()
  %concat.buf469 = call ptr @dva_arena_alloc(ptr %arena.cur468, i64 %sum464)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf469, ptr align 1 %concat.lhs445, i64 %concat.lhs436, i1 false)
  %concat.mid470 = getelementptr i8, ptr %concat.buf469, i64 %concat.lhs436
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid470, ptr align 1 %concat.rhs457, i64 %concat.rhs448, i1 false)
  %concat.nul471 = getelementptr i8, ptr %concat.buf469, i64 %sum459
  store i8 0, ptr %concat.nul471, align 1
  %arena.cur472 = call ptr @dva_arena_current()
  %concat.str473 = call ptr @dva_arena_alloc(ptr %arena.cur472, i64 16)
  %str.build.len.gep474 = getelementptr inbounds { i64, ptr }, ptr %concat.str473, i32 0, i32 0
  store i64 %sum459, ptr %str.build.len.gep474, align 8
  %str.build.data.gep475 = getelementptr inbounds { i64, ptr }, ptr %concat.str473, i32 0, i32 1
  store ptr %concat.buf469, ptr %str.build.data.gep475, align 8
  %concat.lhs476 = getelementptr inbounds { i64, ptr }, ptr %concat.str473, i32 0, i32 0
  %concat.lhs477 = load i64, ptr %concat.lhs476, align 8
  %concat.lhs478 = and i64 %concat.lhs477, 281474976710655
  %str.tag479 = lshr i64 %concat.lhs477, 48
  %str.immortal480 = icmp eq i64 %str.tag479, 0
  br i1 %str.immortal480, label %str_ok482, label %str_gen_check481

str_overflow_abort467:                            ; preds = %concat.sum.len461
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len466

str_gen_check481:                                 ; preds = %concat.tot.len466
  %arena.cur484 = call ptr @dva_arena_current()
  %tag.valid485 = call i1 @dva_arena_validate_tag(ptr %arena.cur484, i64 %str.tag479)
  br i1 %tag.valid485, label %str_ok482, label %str_stale483

str_ok482:                                        ; preds = %str_stale483, %str_gen_check481, %concat.tot.len466
  %concat.lhs486 = getelementptr inbounds { i64, ptr }, ptr %concat.str473, i32 0, i32 1
  %concat.lhs487 = load ptr, ptr %concat.lhs486, align 8
  %concat.rhs488 = load i64, ptr @str.17.struct, align 8
  %concat.rhs489 = and i64 %concat.rhs488, 281474976710655
  %str.tag490 = lshr i64 %concat.rhs488, 48
  %str.immortal491 = icmp eq i64 %str.tag490, 0
  br i1 %str.immortal491, label %str_ok493, label %str_gen_check492

str_stale483:                                     ; preds = %str_gen_check481
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok482

str_gen_check492:                                 ; preds = %str_ok482
  %arena.cur495 = call ptr @dva_arena_current()
  %tag.valid496 = call i1 @dva_arena_validate_tag(ptr %arena.cur495, i64 %str.tag490)
  br i1 %tag.valid496, label %str_ok493, label %str_stale494

str_ok493:                                        ; preds = %str_stale494, %str_gen_check492, %str_ok482
  %concat.rhs497 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %concat.sum.len498 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs478, i64 %concat.rhs489)
  %sum499 = extractvalue { i64, i1 } %concat.sum.len498, 0
  %ovf500 = extractvalue { i64, i1 } %concat.sum.len498, 1
  br i1 %ovf500, label %str_overflow_abort502, label %concat.sum.len501

str_stale494:                                     ; preds = %str_gen_check492
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok493

concat.sum.len501:                                ; preds = %str_overflow_abort502, %str_ok493
  %concat.tot.len503 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum499, i64 1)
  %sum504 = extractvalue { i64, i1 } %concat.tot.len503, 0
  %ovf505 = extractvalue { i64, i1 } %concat.tot.len503, 1
  br i1 %ovf505, label %str_overflow_abort507, label %concat.tot.len506

str_overflow_abort502:                            ; preds = %str_ok493
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len501

concat.tot.len506:                                ; preds = %str_overflow_abort507, %concat.sum.len501
  %arena.cur508 = call ptr @dva_arena_current()
  %concat.buf509 = call ptr @dva_arena_alloc(ptr %arena.cur508, i64 %sum504)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf509, ptr align 1 %concat.lhs487, i64 %concat.lhs478, i1 false)
  %concat.mid510 = getelementptr i8, ptr %concat.buf509, i64 %concat.lhs478
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid510, ptr align 1 %concat.rhs497, i64 %concat.rhs489, i1 false)
  %concat.nul511 = getelementptr i8, ptr %concat.buf509, i64 %sum499
  store i8 0, ptr %concat.nul511, align 1
  %arena.cur512 = call ptr @dva_arena_current()
  %concat.str513 = call ptr @dva_arena_alloc(ptr %arena.cur512, i64 16)
  %str.build.len.gep514 = getelementptr inbounds { i64, ptr }, ptr %concat.str513, i32 0, i32 0
  store i64 %sum499, ptr %str.build.len.gep514, align 8
  %str.build.data.gep515 = getelementptr inbounds { i64, ptr }, ptr %concat.str513, i32 0, i32 1
  store ptr %concat.buf509, ptr %str.build.data.gep515, align 8
  %var.load516 = load ptr, ptr %var.ext_part, align 8
  %concat.lhs517 = getelementptr inbounds { i64, ptr }, ptr %concat.str513, i32 0, i32 0
  %concat.lhs518 = load i64, ptr %concat.lhs517, align 8
  %concat.lhs519 = and i64 %concat.lhs518, 281474976710655
  %str.tag520 = lshr i64 %concat.lhs518, 48
  %str.immortal521 = icmp eq i64 %str.tag520, 0
  br i1 %str.immortal521, label %str_ok523, label %str_gen_check522

str_overflow_abort507:                            ; preds = %concat.sum.len501
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len506

str_gen_check522:                                 ; preds = %concat.tot.len506
  %arena.cur525 = call ptr @dva_arena_current()
  %tag.valid526 = call i1 @dva_arena_validate_tag(ptr %arena.cur525, i64 %str.tag520)
  br i1 %tag.valid526, label %str_ok523, label %str_stale524

str_ok523:                                        ; preds = %str_stale524, %str_gen_check522, %concat.tot.len506
  %concat.lhs527 = getelementptr inbounds { i64, ptr }, ptr %concat.str513, i32 0, i32 1
  %concat.lhs528 = load ptr, ptr %concat.lhs527, align 8
  %concat.rhs529 = getelementptr inbounds { i64, ptr }, ptr %var.load516, i32 0, i32 0
  %concat.rhs530 = load i64, ptr %concat.rhs529, align 8
  %concat.rhs531 = and i64 %concat.rhs530, 281474976710655
  %str.tag532 = lshr i64 %concat.rhs530, 48
  %str.immortal533 = icmp eq i64 %str.tag532, 0
  br i1 %str.immortal533, label %str_ok535, label %str_gen_check534

str_stale524:                                     ; preds = %str_gen_check522
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok523

str_gen_check534:                                 ; preds = %str_ok523
  %arena.cur537 = call ptr @dva_arena_current()
  %tag.valid538 = call i1 @dva_arena_validate_tag(ptr %arena.cur537, i64 %str.tag532)
  br i1 %tag.valid538, label %str_ok535, label %str_stale536

str_ok535:                                        ; preds = %str_stale536, %str_gen_check534, %str_ok523
  %concat.rhs539 = getelementptr inbounds { i64, ptr }, ptr %var.load516, i32 0, i32 1
  %concat.rhs540 = load ptr, ptr %concat.rhs539, align 8
  %concat.sum.len541 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs519, i64 %concat.rhs531)
  %sum542 = extractvalue { i64, i1 } %concat.sum.len541, 0
  %ovf543 = extractvalue { i64, i1 } %concat.sum.len541, 1
  br i1 %ovf543, label %str_overflow_abort545, label %concat.sum.len544

str_stale536:                                     ; preds = %str_gen_check534
  %47 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok535

concat.sum.len544:                                ; preds = %str_overflow_abort545, %str_ok535
  %concat.tot.len546 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum542, i64 1)
  %sum547 = extractvalue { i64, i1 } %concat.tot.len546, 0
  %ovf548 = extractvalue { i64, i1 } %concat.tot.len546, 1
  br i1 %ovf548, label %str_overflow_abort550, label %concat.tot.len549

str_overflow_abort545:                            ; preds = %str_ok535
  %48 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len544

concat.tot.len549:                                ; preds = %str_overflow_abort550, %concat.sum.len544
  %arena.cur551 = call ptr @dva_arena_current()
  %concat.buf552 = call ptr @dva_arena_alloc(ptr %arena.cur551, i64 %sum547)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf552, ptr align 1 %concat.lhs528, i64 %concat.lhs519, i1 false)
  %concat.mid553 = getelementptr i8, ptr %concat.buf552, i64 %concat.lhs519
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid553, ptr align 1 %concat.rhs540, i64 %concat.rhs531, i1 false)
  %concat.nul554 = getelementptr i8, ptr %concat.buf552, i64 %sum542
  store i8 0, ptr %concat.nul554, align 1
  %arena.cur555 = call ptr @dva_arena_current()
  %concat.str556 = call ptr @dva_arena_alloc(ptr %arena.cur555, i64 16)
  %str.build.len.gep557 = getelementptr inbounds { i64, ptr }, ptr %concat.str556, i32 0, i32 0
  store i64 %sum542, ptr %str.build.len.gep557, align 8
  %str.build.data.gep558 = getelementptr inbounds { i64, ptr }, ptr %concat.str556, i32 0, i32 1
  store ptr %concat.buf552, ptr %str.build.data.gep558, align 8
  br label %choice.exit150

str_overflow_abort550:                            ; preds = %concat.sum.len544
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len549

choice.then562:                                   ; preds = %choice.exit150
  %var.load564 = load ptr, ptr %var.cand, align 8
  store ptr %var.load564, ptr %"var.cand_path'", align 8
  br label %loop.exit.45

choice.exit563:                                   ; preds = %choice.exit150
  br label %loop.latch.45
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
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load2 = load ptr, ptr %var.e2, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %call.res = call i64 @"str::cmp"(ptr %fld.load, ptr %fld.load4)
  store i64 %call.res, ptr %"var.res'", align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match7 = icmp eq i64 %var.load, 1
  br i1 %val.match7, label %choice.case5, label %choice.next6

choice.case5:                                     ; preds = %choice.next
  %var.load8 = load ptr, ptr %var.e1, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load8, i32 0, i32 3
  %fld.load10 = load i64, ptr %fld.gep9, align 8
  %var.load11 = load ptr, ptr %var.e2, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load11, i32 0, i32 3
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
  %fld.gep16 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load15, i32 0, i32 3
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %var.load18 = load ptr, ptr %var.e2, align 8
  %fld.gep19 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load18, i32 0, i32 3
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
  %fld.gep26 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %var.load28 = load ptr, ptr %var.e2, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load28, i32 0, i32 0
  %fld.load30 = load ptr, ptr %fld.gep29, align 8
  %call.res31 = call i64 @"str::cmp"(ptr %fld.load27, ptr %fld.load30)
  br label %choice.exit24

choice.exit24:                                    ; preds = %choice.else23, %choice.then22
  %choice.res = phi i64 [ 1, %choice.then22 ], [ %call.res31, %choice.else23 ]
  br label %choice.exit14

choice.case33:                                    ; preds = %choice.next6
  %var.load36 = load ptr, ptr %var.e1, align 8
  %fld.gep37 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 6
  %fld.load38 = load i64, ptr %fld.gep37, align 8
  %var.load39 = load ptr, ptr %var.e2, align 8
  %fld.gep40 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load39, i32 0, i32 6
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
  %fld.gep47 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load46, i32 0, i32 6
  %fld.load48 = load i64, ptr %fld.gep47, align 8
  %var.load49 = load ptr, ptr %var.e2, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load49, i32 0, i32 6
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
  %fld.gep57 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load56, i32 0, i32 0
  %fld.load58 = load ptr, ptr %fld.gep57, align 8
  %var.load59 = load ptr, ptr %var.e2, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load59, i32 0, i32 0
  %fld.load61 = load ptr, ptr %fld.gep60, align 8
  %call.res62 = call i64 @"str::cmp"(ptr %fld.load58, ptr %fld.load61)
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.else54, %choice.then53
  %choice.res63 = phi i64 [ 1, %choice.then53 ], [ %call.res62, %choice.else54 ]
  br label %choice.exit45

choice.case65:                                    ; preds = %choice.next34
  %var.load68 = load ptr, ptr %var.e1, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load68, i32 0, i32 0
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  %call.res71 = call ptr @"fs::ext"(ptr %fld.load70)
  store ptr %call.res71, ptr %var.ext1, align 8
  %var.load72 = load ptr, ptr %var.e2, align 8
  %fld.gep73 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load72, i32 0, i32 0
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
  %fld.gep94 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load93, i32 0, i32 0
  %fld.load95 = load ptr, ptr %fld.gep94, align 8
  %var.load96 = load ptr, ptr %var.e2, align 8
  %fld.gep97 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load96, i32 0, i32 0
  %fld.load98 = load ptr, ptr %fld.gep97, align 8
  %call.res99 = call i64 @"str::cmp"(ptr %fld.load95, ptr %fld.load98)
  store i64 %call.res99, ptr %"var.res'", align 8
  br label %choice.exit

choice.then81:                                    ; preds = %choice.case65
  %var.load84 = load i64, ptr %var.cmp_ext, align 8
  br label %choice.exit83

choice.else82:                                    ; preds = %choice.case65
  %var.load85 = load ptr, ptr %var.e1, align 8
  %fld.gep86 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load85, i32 0, i32 0
  %fld.load87 = load ptr, ptr %fld.gep86, align 8
  %var.load88 = load ptr, ptr %var.e2, align 8
  %fld.gep89 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %var.load88, i32 0, i32 0
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
  %var._874 = alloca ptr, align 8
  %var._i873 = alloca i64, align 8
  %var.file_item = alloca ptr, align 8
  %loop.step.58 = alloca i64, align 8
  %loop.idx.58 = alloca i64, align 8
  %var._818 = alloca ptr, align 8
  %var._i817 = alloca i64, align 8
  %var.dir_item = alloca ptr, align 8
  %loop.step.57 = alloca i64, align 8
  %loop.idx.57 = alloca i64, align 8
  %var.f2 = alloca ptr, align 8
  %var.f1 = alloca ptr, align 8
  %var._461 = alloca i64, align 8
  %var._i460 = alloca i64, align 8
  %var.j454 = alloca i64, align 8
  %loop.step.54 = alloca i64, align 8
  %loop.idx.54 = alloca i64, align 8
  %var._451 = alloca i64, align 8
  %var._i450 = alloca i64, align 8
  %loop.step.53 = alloca i64, align 8
  %loop.idx.53 = alloca i64, align 8
  %var.nf = alloca i64, align 8
  %var.d2 = alloca ptr, align 8
  %var.d1 = alloca ptr, align 8
  %var._165 = alloca i64, align 8
  %var._i164 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.50 = alloca i64, align 8
  %loop.idx.50 = alloca i64, align 8
  %var._159 = alloca i64, align 8
  %var._i158 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.49 = alloca i64, align 8
  %loop.idx.49 = alloca i64, align 8
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
  %loop.step.46 = alloca i64, align 8
  %loop.idx.46 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.46, align 8
  br label %loop.header.46

loop.header.46:                                   ; preds = %loop.latch.46, %a.after
  %counter.load = load i64, ptr %loop.idx.46, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len24
  br i1 %loop.cond, label %loop.body.46, label %loop.exit.nat.46

loop.body.46:                                     ; preds = %loop.header.46
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.46, align 8
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
  br i1 %nottmp, label %and.47.then, label %and.47.else

loop.exit.nat.46:                                 ; preds = %loop.header.46
  br label %loop.exit.46

loop.latch.46:                                    ; preds = %choice.exit93, %choice.then
  %step.val = load i64, ptr %loop.step.46, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.46, align 8
  br label %loop.header.46

loop.exit.46:                                     ; preds = %loop.exit.nat.46
  %var.load140 = load ptr, ptr %var.dirs, align 8
  %a.load141 = load ptr, ptr %var.dirs, align 8
  %a.null142 = icmp eq ptr %a.load141, null
  br i1 %a.null142, label %a.create143, label %a.after144

and.47.then:                                      ; preds = %loop.body.46
  %var.load28 = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %str.tag = lshr i64 %str.len.query29, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.47.else:                                      ; preds = %loop.body.46
  br label %and.47.exit

and.47.exit:                                      ; preds = %and.47.else, %str_ok
  %and.47.phi = phi i1 [ %cmptmp, %str_ok ], [ %nottmp, %and.47.else ]
  br i1 %and.47.phi, label %and.48.then, label %and.48.else

str_gen_check:                                    ; preds = %and.47.then
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.47.then
  %cmptmp = icmp sgt i64 %str.len.query30, 0
  br label %and.47.exit

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.48.then:                                      ; preds = %and.47.exit
  %var.load32 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %str.tag35 = lshr i64 %s.read.len33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

and.48.else:                                      ; preds = %and.47.exit
  br label %and.48.exit

and.48.exit:                                      ; preds = %and.48.else, %idx_ok
  %and.48.phi = phi i1 [ %cmptmp43, %idx_ok ], [ %and.47.phi, %and.48.else ]
  br i1 %and.48.phi, label %choice.then, label %choice.exit

str_gen_check37:                                  ; preds = %and.48.then
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %and.48.then
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
  br label %and.48.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok38
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.48.exit
  br label %loop.latch.46

choice.exit:                                      ; preds = %and.48.exit
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
  %arena.cur84 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i64, ptr, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load77, ptr %rec.fld, align 8
  %rec.fld85 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load78, ptr %rec.fld85, align 1
  %rec.fld86 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load79, ptr %rec.fld86, align 1
  %rec.fld87 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load80, ptr %rec.fld87, align 8
  %rec.fld88 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %rec.alloc, i32 0, i32 4
  store ptr %var.load81, ptr %rec.fld88, align 8
  %rec.fld89 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %rec.alloc, i32 0, i32 5
  store ptr %var.load82, ptr %rec.fld89, align 8
  %rec.fld90 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %var.load83, ptr %rec.fld90, align 8
  store ptr %rec.alloc, ptr %var.entry, align 8
  %var.load91 = load i1, ptr %"var.is_d'", align 1
  br i1 %var.load91, label %choice.then92, label %choice.else

choice.then92:                                    ; preds = %choice.exit54
  %var.load94 = load ptr, ptr %var.entry, align 8
  %a.load95 = load ptr, ptr %var.dirs, align 8
  %a.null96 = icmp eq ptr %a.load95, null
  br i1 %a.null96, label %a.create97, label %a.after98

choice.else:                                      ; preds = %choice.exit54
  %var.load111 = load ptr, ptr %var.entry, align 8
  %a.load112 = load ptr, ptr %var.file_list, align 8
  %a.null113 = icmp eq ptr %a.load112, null
  br i1 %a.null113, label %a.create114, label %a.after115

choice.exit93:                                    ; preds = %a.store126, %a.store
  br label %loop.latch.46

a.create97:                                       ; preds = %choice.then92
  %arena.cur99 = call ptr @dva_arena_current()
  %a.create100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 24)
  %arena.cur101 = call ptr @dva_arena_current()
  %a.buf102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 128)
  %a.len.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 0
  store i64 0, ptr %a.len.gep103, align 8
  %a.data.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 1
  store ptr %a.buf102, ptr %a.data.gep104, align 8
  %a.cap.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep105, align 8
  store ptr %a.create100, ptr %var.dirs, align 8
  br label %a.after98

a.after98:                                        ; preds = %a.create97, %choice.then92
  %a.load2106 = load ptr, ptr %var.dirs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after98
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  %a.len107 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 2
  %a.cap108 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len107, %a.cap108
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2106)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 1
  %a.cur.data109 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  %a.cur.len110 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data109, i64 %a.cur.len110
  %slot.p2i = ptrtoint ptr %var.load94 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len110, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit93

a.create114:                                      ; preds = %choice.else
  %arena.cur116 = call ptr @dva_arena_current()
  %a.create117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 24)
  %arena.cur118 = call ptr @dva_arena_current()
  %a.buf119 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 128)
  %a.len.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create117, i32 0, i32 0
  store i64 0, ptr %a.len.gep120, align 8
  %a.data.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create117, i32 0, i32 1
  store ptr %a.buf119, ptr %a.data.gep121, align 8
  %a.cap.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create117, i32 0, i32 2
  store i64 16, ptr %a.cap.gep122, align 8
  store ptr %a.create117, ptr %var.file_list, align 8
  br label %a.after115

a.after115:                                       ; preds = %a.create114, %choice.else
  %a.load2123 = load ptr, ptr %var.file_list, align 8
  br label %a.check124

a.check124:                                       ; preds = %a.after115
  %a.len127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2123, i32 0, i32 0
  %a.len128 = load i64, ptr %a.len127, align 8
  %a.cap129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2123, i32 0, i32 2
  %a.cap130 = load i64, ptr %a.cap129, align 8
  %a.needs.grow131 = icmp eq i64 %a.len128, %a.cap130
  br i1 %a.needs.grow131, label %a.grow125, label %a.store126

a.grow125:                                        ; preds = %a.check124
  call void @dva_array_grow(ptr %a.load2123)
  br label %a.store126

a.store126:                                       ; preds = %a.grow125, %a.check124
  %a.cur.data132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2123, i32 0, i32 1
  %a.cur.data133 = load ptr, ptr %a.cur.data132, align 8
  %a.cur.len134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2123, i32 0, i32 0
  %a.cur.len135 = load i64, ptr %a.cur.len134, align 8
  %a.elem.gep136 = getelementptr i64, ptr %a.cur.data133, i64 %a.cur.len135
  %slot.p2i137 = ptrtoint ptr %var.load111 to i64
  store i64 %slot.p2i137, ptr %a.elem.gep136, align 8
  %a.next.len138 = add i64 %a.cur.len135, 1
  %b.len.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2123, i32 0, i32 0
  store i64 %a.next.len138, ptr %b.len.gep139, align 8
  br label %choice.exit93

a.create143:                                      ; preds = %loop.exit.46
  %arena.cur145 = call ptr @dva_arena_current()
  %a.create146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 24)
  %arena.cur147 = call ptr @dva_arena_current()
  %a.buf148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 128)
  %a.len.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 0
  store i64 0, ptr %a.len.gep149, align 8
  %a.data.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 1
  store ptr %a.buf148, ptr %a.data.gep150, align 8
  %a.cap.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 2
  store i64 16, ptr %a.cap.gep151, align 8
  store ptr %a.create146, ptr %var.dirs, align 8
  br label %a.after144

a.after144:                                       ; preds = %a.create143, %loop.exit.46
  %a.load2152 = load ptr, ptr %var.dirs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2152, i32 0, i32 0
  %a.len.query153 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query153, ptr %var.nd, align 8
  %var.load154 = load i64, ptr %var.nd, align 8
  store i64 0, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.header.49:                                   ; preds = %loop.latch.49, %a.after144
  %counter.load155 = load i64, ptr %loop.idx.49, align 8
  %loop.cond156 = icmp slt i64 %counter.load155, %var.load154
  br i1 %loop.cond156, label %loop.body.49, label %loop.exit.nat.49

loop.body.49:                                     ; preds = %loop.header.49
  %loop.rel.i157 = sub i64 %counter.load155, 0
  store i64 1, ptr %loop.step.49, align 8
  store i64 %loop.rel.i157, ptr %var._i158, align 8
  store i64 %counter.load155, ptr %var._159, align 8
  store i64 %counter.load155, ptr %var.i, align 8
  %var.load160 = load i64, ptr %var.nd, align 8
  %subtmp = sub i64 %var.load160, 1
  store i64 0, ptr %loop.idx.50, align 8
  %cycle.prev.u = load i64, ptr %var._159, align 8
  %cycle.prev.i = load i64, ptr %var._i158, align 8
  br label %loop.header.50

loop.exit.nat.49:                                 ; preds = %loop.header.49
  br label %loop.exit.49

loop.latch.49:                                    ; preds = %loop.exit.50
  %step.val429 = load i64, ptr %loop.step.49, align 8
  %loop.next430 = add i64 %counter.load155, %step.val429
  store i64 %loop.next430, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.exit.49:                                     ; preds = %loop.exit.nat.49
  %var.load431 = load ptr, ptr %var.file_list, align 8
  %a.load432 = load ptr, ptr %var.file_list, align 8
  %a.null433 = icmp eq ptr %a.load432, null
  br i1 %a.null433, label %a.create434, label %a.after435

loop.header.50:                                   ; preds = %loop.latch.50, %loop.body.49
  %counter.load161 = load i64, ptr %loop.idx.50, align 8
  %loop.cond162 = icmp slt i64 %counter.load161, %subtmp
  br i1 %loop.cond162, label %loop.body.50, label %loop.exit.nat.50

loop.body.50:                                     ; preds = %loop.header.50
  %loop.rel.i163 = sub i64 %counter.load161, 0
  store i64 1, ptr %loop.step.50, align 8
  store i64 %loop.rel.i163, ptr %var._i164, align 8
  store i64 %counter.load161, ptr %var._165, align 8
  store i64 %counter.load161, ptr %var.j, align 8
  %var.load166 = load ptr, ptr %var.dirs, align 8
  %a.load167 = load ptr, ptr %var.dirs, align 8
  %a.null168 = icmp eq ptr %a.load167, null
  br i1 %a.null168, label %a.create169, label %a.after170

loop.exit.nat.50:                                 ; preds = %loop.header.50
  br label %loop.exit.50

loop.latch.50:                                    ; preds = %choice.exit329
  %step.val427 = load i64, ptr %loop.step.50, align 8
  %loop.next428 = add i64 %counter.load161, %step.val427
  store i64 %loop.next428, ptr %loop.idx.50, align 8
  br label %loop.header.50

loop.exit.50:                                     ; preds = %loop.exit.nat.50
  store i64 %cycle.prev.u, ptr %var._159, align 8
  store i64 %cycle.prev.i, ptr %var._i158, align 8
  br label %loop.latch.49

a.create169:                                      ; preds = %loop.body.50
  %arena.cur171 = call ptr @dva_arena_current()
  %a.create172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 24)
  %arena.cur173 = call ptr @dva_arena_current()
  %a.buf174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 128)
  %a.len.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 0
  store i64 0, ptr %a.len.gep175, align 8
  %a.data.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 1
  store ptr %a.buf174, ptr %a.data.gep176, align 8
  %a.cap.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 2
  store i64 16, ptr %a.cap.gep177, align 8
  store ptr %a.create172, ptr %var.dirs, align 8
  br label %a.after170

a.after170:                                       ; preds = %a.create169, %loop.body.50
  %a.load2178 = load ptr, ptr %var.dirs, align 8
  %var.load179 = load i64, ptr %var.j, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2178, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after170
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2178, i32 0, i32 0
  %a.rd.len180 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load179, 0
  %a.rd.lt = icmp slt i64 %var.load179, %a.rd.len180
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2178, i32 0, i32 1
  %a.rd.data181 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data181, i64 %var.load179
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after170
  %arena.cur182 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 677, ptr %err.line.gep, align 8
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
  %arena.cur183 = call ptr @dva_arena_current()
  %err.alloc184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 56)
  %err.code.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc184, i32 0, i32 0
  store i64 4011, ptr %err.code.gep185, align 8
  %err.msg.gep186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc184, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep186, align 8
  %err.file.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc184, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep187, align 8
  %err.line.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc184, i32 0, i32 3
  store i64 677, ptr %err.line.gep188, align 8
  %err.col.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc184, i32 0, i32 4
  store i64 22, ptr %err.col.gep189, align 8
  %err.ctx.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc184, i32 0, i32 5
  %err.ctx0.gep191 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep190, i32 0, i32 0
  store i64 %var.load179, ptr %err.ctx0.gep191, align 8
  %err.ctx1.gep192 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep190, i32 0, i32 1
  store i64 %a.rd.len180, ptr %err.ctx1.gep192, align 8
  %err.p2i193 = ptrtoint ptr %err.alloc184 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i193, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.51, label %unwrap.abort.51

unwrap.pos.51:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.d1, align 8
  %var.load219 = load ptr, ptr %var.dirs, align 8
  %a.load220 = load ptr, ptr %var.dirs, align 8
  %a.null221 = icmp eq ptr %a.load220, null
  br i1 %a.null221, label %a.create222, label %a.after223

unwrap.abort.51:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep194 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep194, align 8
  %err.msg.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep195, align 8
  %err.file.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep196, align 8
  %err.line.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep197, align 8
  %err.col.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep198, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len199 = load i64, ptr %err.msg.len, align 8
  %err.msg.len200 = and i64 %err.msg.len199, 281474976710655
  %str.tag201 = lshr i64 %err.msg.len199, 48
  %str.immortal202 = icmp eq i64 %str.tag201, 0
  br i1 %str.immortal202, label %str_ok204, label %str_gen_check203

str_gen_check203:                                 ; preds = %unwrap.abort.51
  %arena.cur206 = call ptr @dva_arena_current()
  %tag.valid207 = call i1 @dva_arena_validate_tag(ptr %arena.cur206, i64 %str.tag201)
  br i1 %tag.valid207, label %str_ok204, label %str_stale205

str_ok204:                                        ; preds = %str_stale205, %str_gen_check203, %unwrap.abort.51
  %err.msg.len32 = trunc i64 %err.msg.len200 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data208 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len209 = load i64, ptr %err.file.len, align 8
  %err.file.len210 = and i64 %err.file.len209, 281474976710655
  %str.tag211 = lshr i64 %err.file.len209, 48
  %str.immortal212 = icmp eq i64 %str.tag211, 0
  br i1 %str.immortal212, label %str_ok214, label %str_gen_check213

str_stale205:                                     ; preds = %str_gen_check203
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok204

str_gen_check213:                                 ; preds = %str_ok204
  %arena.cur216 = call ptr @dva_arena_current()
  %tag.valid217 = call i1 @dva_arena_validate_tag(ptr %arena.cur216, i64 %str.tag211)
  br i1 %tag.valid217, label %str_ok214, label %str_stale215

str_ok214:                                        ; preds = %str_stale215, %str_gen_check213, %str_ok204
  %err.file.len32 = trunc i64 %err.file.len210 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data218 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale215:                                     ; preds = %str_gen_check213
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok214

err.thread:                                       ; preds = %str_ok214
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok214
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data208, i32 %err.file.len32, ptr %err.file.data218, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create222:                                      ; preds = %unwrap.pos.51
  %arena.cur224 = call ptr @dva_arena_current()
  %a.create225 = call ptr @dva_arena_alloc(ptr %arena.cur224, i64 24)
  %arena.cur226 = call ptr @dva_arena_current()
  %a.buf227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 128)
  %a.len.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create225, i32 0, i32 0
  store i64 0, ptr %a.len.gep228, align 8
  %a.data.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create225, i32 0, i32 1
  store ptr %a.buf227, ptr %a.data.gep229, align 8
  %a.cap.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create225, i32 0, i32 2
  store i64 16, ptr %a.cap.gep230, align 8
  store ptr %a.create225, ptr %var.dirs, align 8
  br label %a.after223

a.after223:                                       ; preds = %a.create222, %unwrap.pos.51
  %a.load2231 = load ptr, ptr %var.dirs, align 8
  %var.load232 = load i64, ptr %var.j, align 8
  %addtmp = add i64 %var.load232, 1
  %a.rd.nonnull233 = icmp ne ptr %a.load2231, null
  br i1 %a.rd.nonnull233, label %a.rd.check234, label %a.rd.err.null236

a.rd.check234:                                    ; preds = %a.after223
  %a.rd.len239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2231, i32 0, i32 0
  %a.rd.len240 = load i64, ptr %a.rd.len239, align 8
  %a.rd.ge0241 = icmp sge i64 %addtmp, 0
  %a.rd.lt242 = icmp slt i64 %addtmp, %a.rd.len240
  %a.rd.bounds243 = and i1 %a.rd.ge0241, %a.rd.lt242
  br i1 %a.rd.bounds243, label %a.rd.ok235, label %a.rd.err.oob237

a.rd.ok235:                                       ; preds = %a.rd.check234
  %a.rd.data244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2231, i32 0, i32 1
  %a.rd.data245 = load ptr, ptr %a.rd.data244, align 8
  %a.rd.elem.gep246 = getelementptr i64, ptr %a.rd.data245, i64 %addtmp
  %a.rd.elem247 = load i64, ptr %a.rd.elem.gep246, align 8
  br label %a.rd.done238

a.rd.err.null236:                                 ; preds = %a.after223
  %arena.cur248 = call ptr @dva_arena_current()
  %err.alloc249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 56)
  %err.code.gep250 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 0
  store i64 4011, ptr %err.code.gep250, align 8
  %err.msg.gep251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep251, align 8
  %err.file.gep252 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep252, align 8
  %err.line.gep253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 3
  store i64 678, ptr %err.line.gep253, align 8
  %err.col.gep254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 4
  store i64 26, ptr %err.col.gep254, align 8
  %err.ctx.gep255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc249, i32 0, i32 5
  %err.ctx0.gep256 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep255, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep256, align 8
  %err.ctx1.gep257 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep255, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep257, align 8
  %err.p2i258 = ptrtoint ptr %err.alloc249 to i64
  br label %a.rd.done238

a.rd.err.oob237:                                  ; preds = %a.rd.check234
  %arena.cur259 = call ptr @dva_arena_current()
  %err.alloc260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 56)
  %err.code.gep261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 0
  store i64 4011, ptr %err.code.gep261, align 8
  %err.msg.gep262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep262, align 8
  %err.file.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep263, align 8
  %err.line.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 3
  store i64 678, ptr %err.line.gep264, align 8
  %err.col.gep265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 4
  store i64 26, ptr %err.col.gep265, align 8
  %err.ctx.gep266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc260, i32 0, i32 5
  %err.ctx0.gep267 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep266, i32 0, i32 0
  store i64 %addtmp, ptr %err.ctx0.gep267, align 8
  %err.ctx1.gep268 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep266, i32 0, i32 1
  store i64 %a.rd.len240, ptr %err.ctx1.gep268, align 8
  %err.p2i269 = ptrtoint ptr %err.alloc260 to i64
  br label %a.rd.done238

a.rd.done238:                                     ; preds = %a.rd.err.oob237, %a.rd.err.null236, %a.rd.ok235
  %a.rd.tag270 = phi i1 [ true, %a.rd.ok235 ], [ false, %a.rd.err.null236 ], [ false, %a.rd.err.oob237 ]
  %a.rd.pay271 = phi i64 [ %a.rd.elem247, %a.rd.ok235 ], [ %err.p2i258, %a.rd.err.null236 ], [ %err.p2i269, %a.rd.err.oob237 ]
  %ram.tag272 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag270, 0
  %ram.pay273 = insertvalue { i1, i64 } %ram.tag272, i64 %a.rd.pay271, 1
  %unwrap.is_pos274 = extractvalue { i1, i64 } %ram.pay273, 0
  br i1 %unwrap.is_pos274, label %unwrap.pos.52, label %unwrap.abort.52

unwrap.pos.52:                                    ; preds = %a.rd.done238
  %unwrap.pay.pos320 = extractvalue { i1, i64 } %ram.pay273, 1
  %pay.ptr321 = inttoptr i64 %unwrap.pay.pos320 to ptr
  store ptr %pay.ptr321, ptr %var.d2, align 8
  %var.load322 = load ptr, ptr %var.d1, align 8
  %var.load323 = load ptr, ptr %var.d2, align 8
  %var.load324 = load i64, ptr %var.sort_mode, align 8
  %var.load325 = load i1, ptr %var.sort_rev, align 1
  %call.res326 = call i64 @"fs::cmp_entries"(ptr %var.load322, ptr %var.load323, i64 %var.load324, i1 %var.load325)
  %cmptmp327 = icmp sgt i64 %call.res326, 0
  br i1 %cmptmp327, label %choice.then328, label %choice.exit329

unwrap.abort.52:                                  ; preds = %a.rd.done238
  %unwrap.pay.abort275 = extractvalue { i1, i64 } %ram.pay273, 1
  %err.ptr276 = inttoptr i64 %unwrap.pay.abort275 to ptr
  %err.code.gep277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr276, i32 0, i32 0
  %err.code278 = load i64, ptr %err.code.gep277, align 8
  %err.msg.gep279 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr276, i32 0, i32 1
  %err.msg.struct280 = load ptr, ptr %err.msg.gep279, align 8
  %err.file.gep281 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr276, i32 0, i32 2
  %err.file.struct282 = load ptr, ptr %err.file.gep281, align 8
  %err.line.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr276, i32 0, i32 3
  %err.line284 = load i64, ptr %err.line.gep283, align 8
  %err.col.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr276, i32 0, i32 4
  %err.col286 = load i64, ptr %err.col.gep285, align 8
  %err.msg.len287 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct280, i32 0, i32 0
  %err.msg.len288 = load i64, ptr %err.msg.len287, align 8
  %err.msg.len289 = and i64 %err.msg.len288, 281474976710655
  %str.tag290 = lshr i64 %err.msg.len288, 48
  %str.immortal291 = icmp eq i64 %str.tag290, 0
  br i1 %str.immortal291, label %str_ok293, label %str_gen_check292

str_gen_check292:                                 ; preds = %unwrap.abort.52
  %arena.cur295 = call ptr @dva_arena_current()
  %tag.valid296 = call i1 @dva_arena_validate_tag(ptr %arena.cur295, i64 %str.tag290)
  br i1 %tag.valid296, label %str_ok293, label %str_stale294

str_ok293:                                        ; preds = %str_stale294, %str_gen_check292, %unwrap.abort.52
  %err.msg.len32297 = trunc i64 %err.msg.len289 to i32
  %err.msg.data298 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct280, i32 0, i32 1
  %err.msg.data299 = load ptr, ptr %err.msg.data298, align 8
  %err.file.len300 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct282, i32 0, i32 0
  %err.file.len301 = load i64, ptr %err.file.len300, align 8
  %err.file.len302 = and i64 %err.file.len301, 281474976710655
  %str.tag303 = lshr i64 %err.file.len301, 48
  %str.immortal304 = icmp eq i64 %str.tag303, 0
  br i1 %str.immortal304, label %str_ok306, label %str_gen_check305

str_stale294:                                     ; preds = %str_gen_check292
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok293

str_gen_check305:                                 ; preds = %str_ok293
  %arena.cur308 = call ptr @dva_arena_current()
  %tag.valid309 = call i1 @dva_arena_validate_tag(ptr %arena.cur308, i64 %str.tag303)
  br i1 %tag.valid309, label %str_ok306, label %str_stale307

str_ok306:                                        ; preds = %str_stale307, %str_gen_check305, %str_ok293
  %err.file.len32310 = trunc i64 %err.file.len302 to i32
  %err.file.data311 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct282, i32 0, i32 1
  %err.file.data312 = load ptr, ptr %err.file.data311, align 8
  %err.thread.rec313 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread314 = icmp ne ptr %err.thread.rec313, null
  br i1 %err.is.thread314, label %err.thread315, label %err.normal316

str_stale307:                                     ; preds = %str_gen_check305
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok306

err.thread315:                                    ; preds = %str_ok306
  %err.haserr.gep317 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec313, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep317, align 8
  %err.err.gep318 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec313, i32 0, i32 7
  store ptr %err.ptr276, ptr %err.err.gep318, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal316:                                    ; preds = %str_ok306
  %err.panic.printf319 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code278, i32 %err.msg.len32297, ptr %err.msg.data299, i32 %err.file.len32310, ptr %err.file.data312, i64 %err.line284, i64 %err.col286)
  call void @exit(i32 1)
  unreachable

choice.then328:                                   ; preds = %unwrap.pos.52
  %var.load330 = load ptr, ptr %var.dirs, align 8
  %a.load331 = load ptr, ptr %var.dirs, align 8
  %a.null332 = icmp eq ptr %a.load331, null
  br i1 %a.null332, label %a.create333, label %a.after334

choice.exit329:                                   ; preds = %a.wr.done392, %unwrap.pos.52
  br label %loop.latch.50

a.create333:                                      ; preds = %choice.then328
  %arena.cur335 = call ptr @dva_arena_current()
  %a.create336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 24)
  %arena.cur337 = call ptr @dva_arena_current()
  %a.buf338 = call ptr @dva_arena_alloc(ptr %arena.cur337, i64 128)
  %a.len.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create336, i32 0, i32 0
  store i64 0, ptr %a.len.gep339, align 8
  %a.data.gep340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create336, i32 0, i32 1
  store ptr %a.buf338, ptr %a.data.gep340, align 8
  %a.cap.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create336, i32 0, i32 2
  store i64 16, ptr %a.cap.gep341, align 8
  store ptr %a.create336, ptr %var.dirs, align 8
  br label %a.after334

a.after334:                                       ; preds = %a.create333, %choice.then328
  %a.load2342 = load ptr, ptr %var.dirs, align 8
  %var.load343 = load i64, ptr %var.j, align 8
  %var.load344 = load ptr, ptr %var.d2, align 8
  %slot.p2i345 = ptrtoint ptr %var.load344 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2342, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after334
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2342, i32 0, i32 0
  %a.wr.len346 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load343, 0
  %a.wr.lt = icmp slt i64 %var.load343, %a.wr.len346
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2342, i32 0, i32 1
  %a.wr.data347 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep348 = getelementptr i64, ptr %a.wr.data347, i64 %var.load343
  store i64 %slot.p2i345, ptr %a.elem.gep348, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after334
  %arena.cur349 = call ptr @dva_arena_current()
  %err.alloc350 = call ptr @dva_arena_alloc(ptr %arena.cur349, i64 56)
  %err.code.gep351 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc350, i32 0, i32 0
  store i64 4011, ptr %err.code.gep351, align 8
  %err.msg.gep352 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc350, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep352, align 8
  %err.file.gep353 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc350, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep353, align 8
  %err.line.gep354 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc350, i32 0, i32 3
  store i64 0, ptr %err.line.gep354, align 8
  %err.col.gep355 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc350, i32 0, i32 4
  store i64 0, ptr %err.col.gep355, align 8
  %err.ctx.gep356 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc350, i32 0, i32 5
  %err.ctx0.gep357 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep356, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep357, align 8
  %err.ctx1.gep358 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep356, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep358, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur359 = call ptr @dva_arena_current()
  %err.alloc360 = call ptr @dva_arena_alloc(ptr %arena.cur359, i64 56)
  %err.code.gep361 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 0
  store i64 4011, ptr %err.code.gep361, align 8
  %err.msg.gep362 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep362, align 8
  %err.file.gep363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep363, align 8
  %err.line.gep364 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 3
  store i64 0, ptr %err.line.gep364, align 8
  %err.col.gep365 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 4
  store i64 0, ptr %err.col.gep365, align 8
  %err.ctx.gep366 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 5
  %err.ctx0.gep367 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep366, i32 0, i32 0
  store i64 %var.load343, ptr %err.ctx0.gep367, align 8
  %err.ctx1.gep368 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep366, i32 0, i32 1
  store i64 %a.wr.len346, ptr %err.ctx1.gep368, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.tag = phi i64 [ 1, %a.wr.ok ], [ 0, %a.wr.err.null ], [ 0, %a.wr.err.oob ]
  %a.wr.pay = phi ptr [ null, %a.wr.ok ], [ %err.alloc350, %a.wr.err.null ], [ %err.alloc360, %a.wr.err.oob ]
  %arena.cur369 = call ptr @dva_arena_current()
  %a.wr.succ = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 0
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ, i32 0, i32 1
  store i64 %a.wr.tag, ptr %tag.gep, align 8
  store ptr %a.wr.pay, ptr %pay.gep, align 8
  %var.load370 = load ptr, ptr %var.dirs, align 8
  %a.load371 = load ptr, ptr %var.dirs, align 8
  %a.null372 = icmp eq ptr %a.load371, null
  br i1 %a.null372, label %a.create373, label %a.after374

a.create373:                                      ; preds = %a.wr.done
  %arena.cur375 = call ptr @dva_arena_current()
  %a.create376 = call ptr @dva_arena_alloc(ptr %arena.cur375, i64 24)
  %arena.cur377 = call ptr @dva_arena_current()
  %a.buf378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 128)
  %a.len.gep379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create376, i32 0, i32 0
  store i64 0, ptr %a.len.gep379, align 8
  %a.data.gep380 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create376, i32 0, i32 1
  store ptr %a.buf378, ptr %a.data.gep380, align 8
  %a.cap.gep381 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create376, i32 0, i32 2
  store i64 16, ptr %a.cap.gep381, align 8
  store ptr %a.create376, ptr %var.dirs, align 8
  br label %a.after374

a.after374:                                       ; preds = %a.create373, %a.wr.done
  %a.load2382 = load ptr, ptr %var.dirs, align 8
  %var.load383 = load i64, ptr %var.j, align 8
  %addtmp384 = add i64 %var.load383, 1
  %var.load385 = load ptr, ptr %var.d1, align 8
  %slot.p2i386 = ptrtoint ptr %var.load385 to i64
  %a.wr.nonnull387 = icmp ne ptr %a.load2382, null
  br i1 %a.wr.nonnull387, label %a.wr.check388, label %a.wr.err.null390

a.wr.check388:                                    ; preds = %a.after374
  %a.wr.len393 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2382, i32 0, i32 0
  %a.wr.len394 = load i64, ptr %a.wr.len393, align 8
  %a.wr.ge0395 = icmp sge i64 %addtmp384, 0
  %a.wr.lt396 = icmp slt i64 %addtmp384, %a.wr.len394
  %a.wr.bounds397 = and i1 %a.wr.ge0395, %a.wr.lt396
  br i1 %a.wr.bounds397, label %a.wr.ok389, label %a.wr.err.oob391

a.wr.ok389:                                       ; preds = %a.wr.check388
  %a.wr.data398 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2382, i32 0, i32 1
  %a.wr.data399 = load ptr, ptr %a.wr.data398, align 8
  %a.elem.gep400 = getelementptr i64, ptr %a.wr.data399, i64 %addtmp384
  store i64 %slot.p2i386, ptr %a.elem.gep400, align 8
  br label %a.wr.done392

a.wr.err.null390:                                 ; preds = %a.after374
  %arena.cur401 = call ptr @dva_arena_current()
  %err.alloc402 = call ptr @dva_arena_alloc(ptr %arena.cur401, i64 56)
  %err.code.gep403 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc402, i32 0, i32 0
  store i64 4011, ptr %err.code.gep403, align 8
  %err.msg.gep404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc402, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep404, align 8
  %err.file.gep405 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc402, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep405, align 8
  %err.line.gep406 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc402, i32 0, i32 3
  store i64 0, ptr %err.line.gep406, align 8
  %err.col.gep407 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc402, i32 0, i32 4
  store i64 0, ptr %err.col.gep407, align 8
  %err.ctx.gep408 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc402, i32 0, i32 5
  %err.ctx0.gep409 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep408, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep409, align 8
  %err.ctx1.gep410 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep408, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep410, align 8
  br label %a.wr.done392

a.wr.err.oob391:                                  ; preds = %a.wr.check388
  %arena.cur411 = call ptr @dva_arena_current()
  %err.alloc412 = call ptr @dva_arena_alloc(ptr %arena.cur411, i64 56)
  %err.code.gep413 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc412, i32 0, i32 0
  store i64 4011, ptr %err.code.gep413, align 8
  %err.msg.gep414 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc412, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep414, align 8
  %err.file.gep415 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc412, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep415, align 8
  %err.line.gep416 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc412, i32 0, i32 3
  store i64 0, ptr %err.line.gep416, align 8
  %err.col.gep417 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc412, i32 0, i32 4
  store i64 0, ptr %err.col.gep417, align 8
  %err.ctx.gep418 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc412, i32 0, i32 5
  %err.ctx0.gep419 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep418, i32 0, i32 0
  store i64 %addtmp384, ptr %err.ctx0.gep419, align 8
  %err.ctx1.gep420 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep418, i32 0, i32 1
  store i64 %a.wr.len394, ptr %err.ctx1.gep420, align 8
  br label %a.wr.done392

a.wr.done392:                                     ; preds = %a.wr.err.oob391, %a.wr.err.null390, %a.wr.ok389
  %a.wr.tag421 = phi i64 [ 1, %a.wr.ok389 ], [ 0, %a.wr.err.null390 ], [ 0, %a.wr.err.oob391 ]
  %a.wr.pay422 = phi ptr [ null, %a.wr.ok389 ], [ %err.alloc402, %a.wr.err.null390 ], [ %err.alloc412, %a.wr.err.oob391 ]
  %arena.cur423 = call ptr @dva_arena_current()
  %a.wr.succ424 = call ptr @dva_arena_alloc(ptr %arena.cur423, i64 16)
  %tag.gep425 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ424, i32 0, i32 0
  %pay.gep426 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ424, i32 0, i32 1
  store i64 %a.wr.tag421, ptr %tag.gep425, align 8
  store ptr %a.wr.pay422, ptr %pay.gep426, align 8
  br label %choice.exit329

a.create434:                                      ; preds = %loop.exit.49
  %arena.cur436 = call ptr @dva_arena_current()
  %a.create437 = call ptr @dva_arena_alloc(ptr %arena.cur436, i64 24)
  %arena.cur438 = call ptr @dva_arena_current()
  %a.buf439 = call ptr @dva_arena_alloc(ptr %arena.cur438, i64 128)
  %a.len.gep440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 0
  store i64 0, ptr %a.len.gep440, align 8
  %a.data.gep441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 1
  store ptr %a.buf439, ptr %a.data.gep441, align 8
  %a.cap.gep442 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 2
  store i64 16, ptr %a.cap.gep442, align 8
  store ptr %a.create437, ptr %var.file_list, align 8
  br label %a.after435

a.after435:                                       ; preds = %a.create434, %loop.exit.49
  %a.load2443 = load ptr, ptr %var.file_list, align 8
  %a.len.query444 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2443, i32 0, i32 0
  %a.len.query445 = load i64, ptr %a.len.query444, align 8
  store i64 %a.len.query445, ptr %var.nf, align 8
  %var.load446 = load i64, ptr %var.nf, align 8
  store i64 0, ptr %loop.idx.53, align 8
  br label %loop.header.53

loop.header.53:                                   ; preds = %loop.latch.53, %a.after435
  %counter.load447 = load i64, ptr %loop.idx.53, align 8
  %loop.cond448 = icmp slt i64 %counter.load447, %var.load446
  br i1 %loop.cond448, label %loop.body.53, label %loop.exit.nat.53

loop.body.53:                                     ; preds = %loop.header.53
  %loop.rel.i449 = sub i64 %counter.load447, 0
  store i64 1, ptr %loop.step.53, align 8
  store i64 %loop.rel.i449, ptr %var._i450, align 8
  store i64 %counter.load447, ptr %var._451, align 8
  store i64 %counter.load447, ptr %var.i, align 8
  %var.load452 = load i64, ptr %var.nf, align 8
  %subtmp453 = sub i64 %var.load452, 1
  store i64 0, ptr %loop.idx.54, align 8
  %cycle.prev.u455 = load i64, ptr %var._451, align 8
  %cycle.prev.i456 = load i64, ptr %var._i450, align 8
  br label %loop.header.54

loop.exit.nat.53:                                 ; preds = %loop.header.53
  br label %loop.exit.53

loop.latch.53:                                    ; preds = %loop.exit.54
  %step.val792 = load i64, ptr %loop.step.53, align 8
  %loop.next793 = add i64 %counter.load447, %step.val792
  store i64 %loop.next793, ptr %loop.idx.53, align 8
  br label %loop.header.53

loop.exit.53:                                     ; preds = %loop.exit.nat.53
  %var.load794 = load ptr, ptr %var.dirs, align 8
  %a.load795 = load ptr, ptr %var.dirs, align 8
  %a.null796 = icmp eq ptr %a.load795, null
  br i1 %a.null796, label %a.create797, label %a.after798

loop.header.54:                                   ; preds = %loop.latch.54, %loop.body.53
  %counter.load457 = load i64, ptr %loop.idx.54, align 8
  %loop.cond458 = icmp slt i64 %counter.load457, %subtmp453
  br i1 %loop.cond458, label %loop.body.54, label %loop.exit.nat.54

loop.body.54:                                     ; preds = %loop.header.54
  %loop.rel.i459 = sub i64 %counter.load457, 0
  store i64 1, ptr %loop.step.54, align 8
  store i64 %loop.rel.i459, ptr %var._i460, align 8
  store i64 %counter.load457, ptr %var._461, align 8
  store i64 %counter.load457, ptr %var.j454, align 8
  %var.load462 = load ptr, ptr %var.file_list, align 8
  %a.load463 = load ptr, ptr %var.file_list, align 8
  %a.null464 = icmp eq ptr %a.load463, null
  br i1 %a.null464, label %a.create465, label %a.after466

loop.exit.nat.54:                                 ; preds = %loop.header.54
  br label %loop.exit.54

loop.latch.54:                                    ; preds = %choice.exit676
  %step.val790 = load i64, ptr %loop.step.54, align 8
  %loop.next791 = add i64 %counter.load457, %step.val790
  store i64 %loop.next791, ptr %loop.idx.54, align 8
  br label %loop.header.54

loop.exit.54:                                     ; preds = %loop.exit.nat.54
  store i64 %cycle.prev.u455, ptr %var._451, align 8
  store i64 %cycle.prev.i456, ptr %var._i450, align 8
  br label %loop.latch.53

a.create465:                                      ; preds = %loop.body.54
  %arena.cur467 = call ptr @dva_arena_current()
  %a.create468 = call ptr @dva_arena_alloc(ptr %arena.cur467, i64 24)
  %arena.cur469 = call ptr @dva_arena_current()
  %a.buf470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 128)
  %a.len.gep471 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create468, i32 0, i32 0
  store i64 0, ptr %a.len.gep471, align 8
  %a.data.gep472 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create468, i32 0, i32 1
  store ptr %a.buf470, ptr %a.data.gep472, align 8
  %a.cap.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create468, i32 0, i32 2
  store i64 16, ptr %a.cap.gep473, align 8
  store ptr %a.create468, ptr %var.file_list, align 8
  br label %a.after466

a.after466:                                       ; preds = %a.create465, %loop.body.54
  %a.load2474 = load ptr, ptr %var.file_list, align 8
  %var.load475 = load i64, ptr %var.j454, align 8
  %a.rd.nonnull476 = icmp ne ptr %a.load2474, null
  br i1 %a.rd.nonnull476, label %a.rd.check477, label %a.rd.err.null479

a.rd.check477:                                    ; preds = %a.after466
  %a.rd.len482 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2474, i32 0, i32 0
  %a.rd.len483 = load i64, ptr %a.rd.len482, align 8
  %a.rd.ge0484 = icmp sge i64 %var.load475, 0
  %a.rd.lt485 = icmp slt i64 %var.load475, %a.rd.len483
  %a.rd.bounds486 = and i1 %a.rd.ge0484, %a.rd.lt485
  br i1 %a.rd.bounds486, label %a.rd.ok478, label %a.rd.err.oob480

a.rd.ok478:                                       ; preds = %a.rd.check477
  %a.rd.data487 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2474, i32 0, i32 1
  %a.rd.data488 = load ptr, ptr %a.rd.data487, align 8
  %a.rd.elem.gep489 = getelementptr i64, ptr %a.rd.data488, i64 %var.load475
  %a.rd.elem490 = load i64, ptr %a.rd.elem.gep489, align 8
  br label %a.rd.done481

a.rd.err.null479:                                 ; preds = %a.after466
  %arena.cur491 = call ptr @dva_arena_current()
  %err.alloc492 = call ptr @dva_arena_alloc(ptr %arena.cur491, i64 56)
  %err.code.gep493 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc492, i32 0, i32 0
  store i64 4011, ptr %err.code.gep493, align 8
  %err.msg.gep494 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc492, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep494, align 8
  %err.file.gep495 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc492, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep495, align 8
  %err.line.gep496 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc492, i32 0, i32 3
  store i64 687, ptr %err.line.gep496, align 8
  %err.col.gep497 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc492, i32 0, i32 4
  store i64 27, ptr %err.col.gep497, align 8
  %err.ctx.gep498 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc492, i32 0, i32 5
  %err.ctx0.gep499 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep498, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep499, align 8
  %err.ctx1.gep500 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep498, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep500, align 8
  %err.p2i501 = ptrtoint ptr %err.alloc492 to i64
  br label %a.rd.done481

a.rd.err.oob480:                                  ; preds = %a.rd.check477
  %arena.cur502 = call ptr @dva_arena_current()
  %err.alloc503 = call ptr @dva_arena_alloc(ptr %arena.cur502, i64 56)
  %err.code.gep504 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 0
  store i64 4011, ptr %err.code.gep504, align 8
  %err.msg.gep505 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep505, align 8
  %err.file.gep506 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep506, align 8
  %err.line.gep507 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 3
  store i64 687, ptr %err.line.gep507, align 8
  %err.col.gep508 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 4
  store i64 27, ptr %err.col.gep508, align 8
  %err.ctx.gep509 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc503, i32 0, i32 5
  %err.ctx0.gep510 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep509, i32 0, i32 0
  store i64 %var.load475, ptr %err.ctx0.gep510, align 8
  %err.ctx1.gep511 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep509, i32 0, i32 1
  store i64 %a.rd.len483, ptr %err.ctx1.gep511, align 8
  %err.p2i512 = ptrtoint ptr %err.alloc503 to i64
  br label %a.rd.done481

a.rd.done481:                                     ; preds = %a.rd.err.oob480, %a.rd.err.null479, %a.rd.ok478
  %a.rd.tag513 = phi i1 [ true, %a.rd.ok478 ], [ false, %a.rd.err.null479 ], [ false, %a.rd.err.oob480 ]
  %a.rd.pay514 = phi i64 [ %a.rd.elem490, %a.rd.ok478 ], [ %err.p2i501, %a.rd.err.null479 ], [ %err.p2i512, %a.rd.err.oob480 ]
  %ram.tag515 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag513, 0
  %ram.pay516 = insertvalue { i1, i64 } %ram.tag515, i64 %a.rd.pay514, 1
  %unwrap.is_pos517 = extractvalue { i1, i64 } %ram.pay516, 0
  br i1 %unwrap.is_pos517, label %unwrap.pos.55, label %unwrap.abort.55

unwrap.pos.55:                                    ; preds = %a.rd.done481
  %unwrap.pay.pos563 = extractvalue { i1, i64 } %ram.pay516, 1
  %pay.ptr564 = inttoptr i64 %unwrap.pay.pos563 to ptr
  store ptr %pay.ptr564, ptr %var.f1, align 8
  %var.load565 = load ptr, ptr %var.file_list, align 8
  %a.load566 = load ptr, ptr %var.file_list, align 8
  %a.null567 = icmp eq ptr %a.load566, null
  br i1 %a.null567, label %a.create568, label %a.after569

unwrap.abort.55:                                  ; preds = %a.rd.done481
  %unwrap.pay.abort518 = extractvalue { i1, i64 } %ram.pay516, 1
  %err.ptr519 = inttoptr i64 %unwrap.pay.abort518 to ptr
  %err.code.gep520 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr519, i32 0, i32 0
  %err.code521 = load i64, ptr %err.code.gep520, align 8
  %err.msg.gep522 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr519, i32 0, i32 1
  %err.msg.struct523 = load ptr, ptr %err.msg.gep522, align 8
  %err.file.gep524 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr519, i32 0, i32 2
  %err.file.struct525 = load ptr, ptr %err.file.gep524, align 8
  %err.line.gep526 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr519, i32 0, i32 3
  %err.line527 = load i64, ptr %err.line.gep526, align 8
  %err.col.gep528 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr519, i32 0, i32 4
  %err.col529 = load i64, ptr %err.col.gep528, align 8
  %err.msg.len530 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct523, i32 0, i32 0
  %err.msg.len531 = load i64, ptr %err.msg.len530, align 8
  %err.msg.len532 = and i64 %err.msg.len531, 281474976710655
  %str.tag533 = lshr i64 %err.msg.len531, 48
  %str.immortal534 = icmp eq i64 %str.tag533, 0
  br i1 %str.immortal534, label %str_ok536, label %str_gen_check535

str_gen_check535:                                 ; preds = %unwrap.abort.55
  %arena.cur538 = call ptr @dva_arena_current()
  %tag.valid539 = call i1 @dva_arena_validate_tag(ptr %arena.cur538, i64 %str.tag533)
  br i1 %tag.valid539, label %str_ok536, label %str_stale537

str_ok536:                                        ; preds = %str_stale537, %str_gen_check535, %unwrap.abort.55
  %err.msg.len32540 = trunc i64 %err.msg.len532 to i32
  %err.msg.data541 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct523, i32 0, i32 1
  %err.msg.data542 = load ptr, ptr %err.msg.data541, align 8
  %err.file.len543 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct525, i32 0, i32 0
  %err.file.len544 = load i64, ptr %err.file.len543, align 8
  %err.file.len545 = and i64 %err.file.len544, 281474976710655
  %str.tag546 = lshr i64 %err.file.len544, 48
  %str.immortal547 = icmp eq i64 %str.tag546, 0
  br i1 %str.immortal547, label %str_ok549, label %str_gen_check548

str_stale537:                                     ; preds = %str_gen_check535
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok536

str_gen_check548:                                 ; preds = %str_ok536
  %arena.cur551 = call ptr @dva_arena_current()
  %tag.valid552 = call i1 @dva_arena_validate_tag(ptr %arena.cur551, i64 %str.tag546)
  br i1 %tag.valid552, label %str_ok549, label %str_stale550

str_ok549:                                        ; preds = %str_stale550, %str_gen_check548, %str_ok536
  %err.file.len32553 = trunc i64 %err.file.len545 to i32
  %err.file.data554 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct525, i32 0, i32 1
  %err.file.data555 = load ptr, ptr %err.file.data554, align 8
  %err.thread.rec556 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread557 = icmp ne ptr %err.thread.rec556, null
  br i1 %err.is.thread557, label %err.thread558, label %err.normal559

str_stale550:                                     ; preds = %str_gen_check548
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok549

err.thread558:                                    ; preds = %str_ok549
  %err.haserr.gep560 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec556, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep560, align 8
  %err.err.gep561 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec556, i32 0, i32 7
  store ptr %err.ptr519, ptr %err.err.gep561, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal559:                                    ; preds = %str_ok549
  %err.panic.printf562 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code521, i32 %err.msg.len32540, ptr %err.msg.data542, i32 %err.file.len32553, ptr %err.file.data555, i64 %err.line527, i64 %err.col529)
  call void @exit(i32 1)
  unreachable

a.create568:                                      ; preds = %unwrap.pos.55
  %arena.cur570 = call ptr @dva_arena_current()
  %a.create571 = call ptr @dva_arena_alloc(ptr %arena.cur570, i64 24)
  %arena.cur572 = call ptr @dva_arena_current()
  %a.buf573 = call ptr @dva_arena_alloc(ptr %arena.cur572, i64 128)
  %a.len.gep574 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create571, i32 0, i32 0
  store i64 0, ptr %a.len.gep574, align 8
  %a.data.gep575 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create571, i32 0, i32 1
  store ptr %a.buf573, ptr %a.data.gep575, align 8
  %a.cap.gep576 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create571, i32 0, i32 2
  store i64 16, ptr %a.cap.gep576, align 8
  store ptr %a.create571, ptr %var.file_list, align 8
  br label %a.after569

a.after569:                                       ; preds = %a.create568, %unwrap.pos.55
  %a.load2577 = load ptr, ptr %var.file_list, align 8
  %var.load578 = load i64, ptr %var.j454, align 8
  %addtmp579 = add i64 %var.load578, 1
  %a.rd.nonnull580 = icmp ne ptr %a.load2577, null
  br i1 %a.rd.nonnull580, label %a.rd.check581, label %a.rd.err.null583

a.rd.check581:                                    ; preds = %a.after569
  %a.rd.len586 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2577, i32 0, i32 0
  %a.rd.len587 = load i64, ptr %a.rd.len586, align 8
  %a.rd.ge0588 = icmp sge i64 %addtmp579, 0
  %a.rd.lt589 = icmp slt i64 %addtmp579, %a.rd.len587
  %a.rd.bounds590 = and i1 %a.rd.ge0588, %a.rd.lt589
  br i1 %a.rd.bounds590, label %a.rd.ok582, label %a.rd.err.oob584

a.rd.ok582:                                       ; preds = %a.rd.check581
  %a.rd.data591 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2577, i32 0, i32 1
  %a.rd.data592 = load ptr, ptr %a.rd.data591, align 8
  %a.rd.elem.gep593 = getelementptr i64, ptr %a.rd.data592, i64 %addtmp579
  %a.rd.elem594 = load i64, ptr %a.rd.elem.gep593, align 8
  br label %a.rd.done585

a.rd.err.null583:                                 ; preds = %a.after569
  %arena.cur595 = call ptr @dva_arena_current()
  %err.alloc596 = call ptr @dva_arena_alloc(ptr %arena.cur595, i64 56)
  %err.code.gep597 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 0
  store i64 4011, ptr %err.code.gep597, align 8
  %err.msg.gep598 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep598, align 8
  %err.file.gep599 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep599, align 8
  %err.line.gep600 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 3
  store i64 688, ptr %err.line.gep600, align 8
  %err.col.gep601 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 4
  store i64 31, ptr %err.col.gep601, align 8
  %err.ctx.gep602 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 5
  %err.ctx0.gep603 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep602, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep603, align 8
  %err.ctx1.gep604 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep602, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep604, align 8
  %err.p2i605 = ptrtoint ptr %err.alloc596 to i64
  br label %a.rd.done585

a.rd.err.oob584:                                  ; preds = %a.rd.check581
  %arena.cur606 = call ptr @dva_arena_current()
  %err.alloc607 = call ptr @dva_arena_alloc(ptr %arena.cur606, i64 56)
  %err.code.gep608 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 0
  store i64 4011, ptr %err.code.gep608, align 8
  %err.msg.gep609 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep609, align 8
  %err.file.gep610 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep610, align 8
  %err.line.gep611 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 3
  store i64 688, ptr %err.line.gep611, align 8
  %err.col.gep612 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 4
  store i64 31, ptr %err.col.gep612, align 8
  %err.ctx.gep613 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc607, i32 0, i32 5
  %err.ctx0.gep614 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep613, i32 0, i32 0
  store i64 %addtmp579, ptr %err.ctx0.gep614, align 8
  %err.ctx1.gep615 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep613, i32 0, i32 1
  store i64 %a.rd.len587, ptr %err.ctx1.gep615, align 8
  %err.p2i616 = ptrtoint ptr %err.alloc607 to i64
  br label %a.rd.done585

a.rd.done585:                                     ; preds = %a.rd.err.oob584, %a.rd.err.null583, %a.rd.ok582
  %a.rd.tag617 = phi i1 [ true, %a.rd.ok582 ], [ false, %a.rd.err.null583 ], [ false, %a.rd.err.oob584 ]
  %a.rd.pay618 = phi i64 [ %a.rd.elem594, %a.rd.ok582 ], [ %err.p2i605, %a.rd.err.null583 ], [ %err.p2i616, %a.rd.err.oob584 ]
  %ram.tag619 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag617, 0
  %ram.pay620 = insertvalue { i1, i64 } %ram.tag619, i64 %a.rd.pay618, 1
  %unwrap.is_pos621 = extractvalue { i1, i64 } %ram.pay620, 0
  br i1 %unwrap.is_pos621, label %unwrap.pos.56, label %unwrap.abort.56

unwrap.pos.56:                                    ; preds = %a.rd.done585
  %unwrap.pay.pos667 = extractvalue { i1, i64 } %ram.pay620, 1
  %pay.ptr668 = inttoptr i64 %unwrap.pay.pos667 to ptr
  store ptr %pay.ptr668, ptr %var.f2, align 8
  %var.load669 = load ptr, ptr %var.f1, align 8
  %var.load670 = load ptr, ptr %var.f2, align 8
  %var.load671 = load i64, ptr %var.sort_mode, align 8
  %var.load672 = load i1, ptr %var.sort_rev, align 1
  %call.res673 = call i64 @"fs::cmp_entries"(ptr %var.load669, ptr %var.load670, i64 %var.load671, i1 %var.load672)
  %cmptmp674 = icmp sgt i64 %call.res673, 0
  br i1 %cmptmp674, label %choice.then675, label %choice.exit676

unwrap.abort.56:                                  ; preds = %a.rd.done585
  %unwrap.pay.abort622 = extractvalue { i1, i64 } %ram.pay620, 1
  %err.ptr623 = inttoptr i64 %unwrap.pay.abort622 to ptr
  %err.code.gep624 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr623, i32 0, i32 0
  %err.code625 = load i64, ptr %err.code.gep624, align 8
  %err.msg.gep626 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr623, i32 0, i32 1
  %err.msg.struct627 = load ptr, ptr %err.msg.gep626, align 8
  %err.file.gep628 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr623, i32 0, i32 2
  %err.file.struct629 = load ptr, ptr %err.file.gep628, align 8
  %err.line.gep630 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr623, i32 0, i32 3
  %err.line631 = load i64, ptr %err.line.gep630, align 8
  %err.col.gep632 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr623, i32 0, i32 4
  %err.col633 = load i64, ptr %err.col.gep632, align 8
  %err.msg.len634 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct627, i32 0, i32 0
  %err.msg.len635 = load i64, ptr %err.msg.len634, align 8
  %err.msg.len636 = and i64 %err.msg.len635, 281474976710655
  %str.tag637 = lshr i64 %err.msg.len635, 48
  %str.immortal638 = icmp eq i64 %str.tag637, 0
  br i1 %str.immortal638, label %str_ok640, label %str_gen_check639

str_gen_check639:                                 ; preds = %unwrap.abort.56
  %arena.cur642 = call ptr @dva_arena_current()
  %tag.valid643 = call i1 @dva_arena_validate_tag(ptr %arena.cur642, i64 %str.tag637)
  br i1 %tag.valid643, label %str_ok640, label %str_stale641

str_ok640:                                        ; preds = %str_stale641, %str_gen_check639, %unwrap.abort.56
  %err.msg.len32644 = trunc i64 %err.msg.len636 to i32
  %err.msg.data645 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct627, i32 0, i32 1
  %err.msg.data646 = load ptr, ptr %err.msg.data645, align 8
  %err.file.len647 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct629, i32 0, i32 0
  %err.file.len648 = load i64, ptr %err.file.len647, align 8
  %err.file.len649 = and i64 %err.file.len648, 281474976710655
  %str.tag650 = lshr i64 %err.file.len648, 48
  %str.immortal651 = icmp eq i64 %str.tag650, 0
  br i1 %str.immortal651, label %str_ok653, label %str_gen_check652

str_stale641:                                     ; preds = %str_gen_check639
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok640

str_gen_check652:                                 ; preds = %str_ok640
  %arena.cur655 = call ptr @dva_arena_current()
  %tag.valid656 = call i1 @dva_arena_validate_tag(ptr %arena.cur655, i64 %str.tag650)
  br i1 %tag.valid656, label %str_ok653, label %str_stale654

str_ok653:                                        ; preds = %str_stale654, %str_gen_check652, %str_ok640
  %err.file.len32657 = trunc i64 %err.file.len649 to i32
  %err.file.data658 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct629, i32 0, i32 1
  %err.file.data659 = load ptr, ptr %err.file.data658, align 8
  %err.thread.rec660 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread661 = icmp ne ptr %err.thread.rec660, null
  br i1 %err.is.thread661, label %err.thread662, label %err.normal663

str_stale654:                                     ; preds = %str_gen_check652
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok653

err.thread662:                                    ; preds = %str_ok653
  %err.haserr.gep664 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec660, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep664, align 8
  %err.err.gep665 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec660, i32 0, i32 7
  store ptr %err.ptr623, ptr %err.err.gep665, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal663:                                    ; preds = %str_ok653
  %err.panic.printf666 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code625, i32 %err.msg.len32644, ptr %err.msg.data646, i32 %err.file.len32657, ptr %err.file.data659, i64 %err.line631, i64 %err.col633)
  call void @exit(i32 1)
  unreachable

choice.then675:                                   ; preds = %unwrap.pos.56
  %var.load677 = load ptr, ptr %var.file_list, align 8
  %a.load678 = load ptr, ptr %var.file_list, align 8
  %a.null679 = icmp eq ptr %a.load678, null
  br i1 %a.null679, label %a.create680, label %a.after681

choice.exit676:                                   ; preds = %a.wr.done755, %unwrap.pos.56
  br label %loop.latch.54

a.create680:                                      ; preds = %choice.then675
  %arena.cur682 = call ptr @dva_arena_current()
  %a.create683 = call ptr @dva_arena_alloc(ptr %arena.cur682, i64 24)
  %arena.cur684 = call ptr @dva_arena_current()
  %a.buf685 = call ptr @dva_arena_alloc(ptr %arena.cur684, i64 128)
  %a.len.gep686 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create683, i32 0, i32 0
  store i64 0, ptr %a.len.gep686, align 8
  %a.data.gep687 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create683, i32 0, i32 1
  store ptr %a.buf685, ptr %a.data.gep687, align 8
  %a.cap.gep688 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create683, i32 0, i32 2
  store i64 16, ptr %a.cap.gep688, align 8
  store ptr %a.create683, ptr %var.file_list, align 8
  br label %a.after681

a.after681:                                       ; preds = %a.create680, %choice.then675
  %a.load2689 = load ptr, ptr %var.file_list, align 8
  %var.load690 = load i64, ptr %var.j454, align 8
  %var.load691 = load ptr, ptr %var.f2, align 8
  %slot.p2i692 = ptrtoint ptr %var.load691 to i64
  %a.wr.nonnull693 = icmp ne ptr %a.load2689, null
  br i1 %a.wr.nonnull693, label %a.wr.check694, label %a.wr.err.null696

a.wr.check694:                                    ; preds = %a.after681
  %a.wr.len699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2689, i32 0, i32 0
  %a.wr.len700 = load i64, ptr %a.wr.len699, align 8
  %a.wr.ge0701 = icmp sge i64 %var.load690, 0
  %a.wr.lt702 = icmp slt i64 %var.load690, %a.wr.len700
  %a.wr.bounds703 = and i1 %a.wr.ge0701, %a.wr.lt702
  br i1 %a.wr.bounds703, label %a.wr.ok695, label %a.wr.err.oob697

a.wr.ok695:                                       ; preds = %a.wr.check694
  %a.wr.data704 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2689, i32 0, i32 1
  %a.wr.data705 = load ptr, ptr %a.wr.data704, align 8
  %a.elem.gep706 = getelementptr i64, ptr %a.wr.data705, i64 %var.load690
  store i64 %slot.p2i692, ptr %a.elem.gep706, align 8
  br label %a.wr.done698

a.wr.err.null696:                                 ; preds = %a.after681
  %arena.cur707 = call ptr @dva_arena_current()
  %err.alloc708 = call ptr @dva_arena_alloc(ptr %arena.cur707, i64 56)
  %err.code.gep709 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc708, i32 0, i32 0
  store i64 4011, ptr %err.code.gep709, align 8
  %err.msg.gep710 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc708, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep710, align 8
  %err.file.gep711 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc708, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep711, align 8
  %err.line.gep712 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc708, i32 0, i32 3
  store i64 0, ptr %err.line.gep712, align 8
  %err.col.gep713 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc708, i32 0, i32 4
  store i64 0, ptr %err.col.gep713, align 8
  %err.ctx.gep714 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc708, i32 0, i32 5
  %err.ctx0.gep715 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep714, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep715, align 8
  %err.ctx1.gep716 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep714, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep716, align 8
  br label %a.wr.done698

a.wr.err.oob697:                                  ; preds = %a.wr.check694
  %arena.cur717 = call ptr @dva_arena_current()
  %err.alloc718 = call ptr @dva_arena_alloc(ptr %arena.cur717, i64 56)
  %err.code.gep719 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc718, i32 0, i32 0
  store i64 4011, ptr %err.code.gep719, align 8
  %err.msg.gep720 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc718, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep720, align 8
  %err.file.gep721 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc718, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep721, align 8
  %err.line.gep722 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc718, i32 0, i32 3
  store i64 0, ptr %err.line.gep722, align 8
  %err.col.gep723 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc718, i32 0, i32 4
  store i64 0, ptr %err.col.gep723, align 8
  %err.ctx.gep724 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc718, i32 0, i32 5
  %err.ctx0.gep725 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep724, i32 0, i32 0
  store i64 %var.load690, ptr %err.ctx0.gep725, align 8
  %err.ctx1.gep726 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep724, i32 0, i32 1
  store i64 %a.wr.len700, ptr %err.ctx1.gep726, align 8
  br label %a.wr.done698

a.wr.done698:                                     ; preds = %a.wr.err.oob697, %a.wr.err.null696, %a.wr.ok695
  %a.wr.tag727 = phi i64 [ 1, %a.wr.ok695 ], [ 0, %a.wr.err.null696 ], [ 0, %a.wr.err.oob697 ]
  %a.wr.pay728 = phi ptr [ null, %a.wr.ok695 ], [ %err.alloc708, %a.wr.err.null696 ], [ %err.alloc718, %a.wr.err.oob697 ]
  %arena.cur729 = call ptr @dva_arena_current()
  %a.wr.succ730 = call ptr @dva_arena_alloc(ptr %arena.cur729, i64 16)
  %tag.gep731 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ730, i32 0, i32 0
  %pay.gep732 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ730, i32 0, i32 1
  store i64 %a.wr.tag727, ptr %tag.gep731, align 8
  store ptr %a.wr.pay728, ptr %pay.gep732, align 8
  %var.load733 = load ptr, ptr %var.file_list, align 8
  %a.load734 = load ptr, ptr %var.file_list, align 8
  %a.null735 = icmp eq ptr %a.load734, null
  br i1 %a.null735, label %a.create736, label %a.after737

a.create736:                                      ; preds = %a.wr.done698
  %arena.cur738 = call ptr @dva_arena_current()
  %a.create739 = call ptr @dva_arena_alloc(ptr %arena.cur738, i64 24)
  %arena.cur740 = call ptr @dva_arena_current()
  %a.buf741 = call ptr @dva_arena_alloc(ptr %arena.cur740, i64 128)
  %a.len.gep742 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create739, i32 0, i32 0
  store i64 0, ptr %a.len.gep742, align 8
  %a.data.gep743 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create739, i32 0, i32 1
  store ptr %a.buf741, ptr %a.data.gep743, align 8
  %a.cap.gep744 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create739, i32 0, i32 2
  store i64 16, ptr %a.cap.gep744, align 8
  store ptr %a.create739, ptr %var.file_list, align 8
  br label %a.after737

a.after737:                                       ; preds = %a.create736, %a.wr.done698
  %a.load2745 = load ptr, ptr %var.file_list, align 8
  %var.load746 = load i64, ptr %var.j454, align 8
  %addtmp747 = add i64 %var.load746, 1
  %var.load748 = load ptr, ptr %var.f1, align 8
  %slot.p2i749 = ptrtoint ptr %var.load748 to i64
  %a.wr.nonnull750 = icmp ne ptr %a.load2745, null
  br i1 %a.wr.nonnull750, label %a.wr.check751, label %a.wr.err.null753

a.wr.check751:                                    ; preds = %a.after737
  %a.wr.len756 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2745, i32 0, i32 0
  %a.wr.len757 = load i64, ptr %a.wr.len756, align 8
  %a.wr.ge0758 = icmp sge i64 %addtmp747, 0
  %a.wr.lt759 = icmp slt i64 %addtmp747, %a.wr.len757
  %a.wr.bounds760 = and i1 %a.wr.ge0758, %a.wr.lt759
  br i1 %a.wr.bounds760, label %a.wr.ok752, label %a.wr.err.oob754

a.wr.ok752:                                       ; preds = %a.wr.check751
  %a.wr.data761 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2745, i32 0, i32 1
  %a.wr.data762 = load ptr, ptr %a.wr.data761, align 8
  %a.elem.gep763 = getelementptr i64, ptr %a.wr.data762, i64 %addtmp747
  store i64 %slot.p2i749, ptr %a.elem.gep763, align 8
  br label %a.wr.done755

a.wr.err.null753:                                 ; preds = %a.after737
  %arena.cur764 = call ptr @dva_arena_current()
  %err.alloc765 = call ptr @dva_arena_alloc(ptr %arena.cur764, i64 56)
  %err.code.gep766 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 0
  store i64 4011, ptr %err.code.gep766, align 8
  %err.msg.gep767 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep767, align 8
  %err.file.gep768 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep768, align 8
  %err.line.gep769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 3
  store i64 0, ptr %err.line.gep769, align 8
  %err.col.gep770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 4
  store i64 0, ptr %err.col.gep770, align 8
  %err.ctx.gep771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 5
  %err.ctx0.gep772 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep771, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep772, align 8
  %err.ctx1.gep773 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep771, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep773, align 8
  br label %a.wr.done755

a.wr.err.oob754:                                  ; preds = %a.wr.check751
  %arena.cur774 = call ptr @dva_arena_current()
  %err.alloc775 = call ptr @dva_arena_alloc(ptr %arena.cur774, i64 56)
  %err.code.gep776 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc775, i32 0, i32 0
  store i64 4011, ptr %err.code.gep776, align 8
  %err.msg.gep777 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc775, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep777, align 8
  %err.file.gep778 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc775, i32 0, i32 2
  store ptr @str.19.struct, ptr %err.file.gep778, align 8
  %err.line.gep779 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc775, i32 0, i32 3
  store i64 0, ptr %err.line.gep779, align 8
  %err.col.gep780 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc775, i32 0, i32 4
  store i64 0, ptr %err.col.gep780, align 8
  %err.ctx.gep781 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc775, i32 0, i32 5
  %err.ctx0.gep782 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep781, i32 0, i32 0
  store i64 %addtmp747, ptr %err.ctx0.gep782, align 8
  %err.ctx1.gep783 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep781, i32 0, i32 1
  store i64 %a.wr.len757, ptr %err.ctx1.gep783, align 8
  br label %a.wr.done755

a.wr.done755:                                     ; preds = %a.wr.err.oob754, %a.wr.err.null753, %a.wr.ok752
  %a.wr.tag784 = phi i64 [ 1, %a.wr.ok752 ], [ 0, %a.wr.err.null753 ], [ 0, %a.wr.err.oob754 ]
  %a.wr.pay785 = phi ptr [ null, %a.wr.ok752 ], [ %err.alloc765, %a.wr.err.null753 ], [ %err.alloc775, %a.wr.err.oob754 ]
  %arena.cur786 = call ptr @dva_arena_current()
  %a.wr.succ787 = call ptr @dva_arena_alloc(ptr %arena.cur786, i64 16)
  %tag.gep788 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ787, i32 0, i32 0
  %pay.gep789 = getelementptr inbounds { i64, ptr }, ptr %a.wr.succ787, i32 0, i32 1
  store i64 %a.wr.tag784, ptr %tag.gep788, align 8
  store ptr %a.wr.pay785, ptr %pay.gep789, align 8
  br label %choice.exit676

a.create797:                                      ; preds = %loop.exit.53
  %arena.cur799 = call ptr @dva_arena_current()
  %a.create800 = call ptr @dva_arena_alloc(ptr %arena.cur799, i64 24)
  %arena.cur801 = call ptr @dva_arena_current()
  %a.buf802 = call ptr @dva_arena_alloc(ptr %arena.cur801, i64 128)
  %a.len.gep803 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create800, i32 0, i32 0
  store i64 0, ptr %a.len.gep803, align 8
  %a.data.gep804 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create800, i32 0, i32 1
  store ptr %a.buf802, ptr %a.data.gep804, align 8
  %a.cap.gep805 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create800, i32 0, i32 2
  store i64 16, ptr %a.cap.gep805, align 8
  store ptr %a.create800, ptr %var.dirs, align 8
  br label %a.after798

a.after798:                                       ; preds = %a.create797, %loop.exit.53
  %a.load2806 = load ptr, ptr %var.dirs, align 8
  %arr.cycle.len807 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2806, i32 0, i32 0
  %arr.cycle.len808 = load i64, ptr %arr.cycle.len807, align 8
  %arr.cycle.data809 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2806, i32 0, i32 1
  %arr.cycle.data810 = load ptr, ptr %arr.cycle.data809, align 8
  store i64 0, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.header.57:                                   ; preds = %loop.latch.57, %a.after798
  %counter.load811 = load i64, ptr %loop.idx.57, align 8
  %loop.cond812 = icmp slt i64 %counter.load811, %arr.cycle.len808
  br i1 %loop.cond812, label %loop.body.57, label %loop.exit.nat.57

loop.body.57:                                     ; preds = %loop.header.57
  %loop.rel.i813 = sub i64 %counter.load811, 0
  store i64 1, ptr %loop.step.57, align 8
  %arr.elem.gep814 = getelementptr i64, ptr %arr.cycle.data810, i64 %counter.load811
  %arr.elem.raw815 = load i64, ptr %arr.elem.gep814, align 8
  %slot.i2p816 = inttoptr i64 %arr.elem.raw815 to ptr
  store i64 %loop.rel.i813, ptr %var._i817, align 8
  store ptr %slot.i2p816, ptr %var._818, align 8
  store ptr %slot.i2p816, ptr %var.dir_item, align 8
  %var.load819 = load ptr, ptr %var.dir_item, align 8
  %a.load820 = load ptr, ptr %var.res, align 8
  %a.null821 = icmp eq ptr %a.load820, null
  br i1 %a.null821, label %a.create822, label %a.after823

loop.exit.nat.57:                                 ; preds = %loop.header.57
  br label %loop.exit.57

loop.latch.57:                                    ; preds = %a.store834
  %step.val848 = load i64, ptr %loop.step.57, align 8
  %loop.next849 = add i64 %counter.load811, %step.val848
  store i64 %loop.next849, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.exit.57:                                     ; preds = %loop.exit.nat.57
  %var.load850 = load ptr, ptr %var.file_list, align 8
  %a.load851 = load ptr, ptr %var.file_list, align 8
  %a.null852 = icmp eq ptr %a.load851, null
  br i1 %a.null852, label %a.create853, label %a.after854

a.create822:                                      ; preds = %loop.body.57
  %arena.cur824 = call ptr @dva_arena_current()
  %a.create825 = call ptr @dva_arena_alloc(ptr %arena.cur824, i64 24)
  %arena.cur826 = call ptr @dva_arena_current()
  %a.buf827 = call ptr @dva_arena_alloc(ptr %arena.cur826, i64 128)
  %a.len.gep828 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create825, i32 0, i32 0
  store i64 0, ptr %a.len.gep828, align 8
  %a.data.gep829 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create825, i32 0, i32 1
  store ptr %a.buf827, ptr %a.data.gep829, align 8
  %a.cap.gep830 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create825, i32 0, i32 2
  store i64 16, ptr %a.cap.gep830, align 8
  store ptr %a.create825, ptr %var.res, align 8
  br label %a.after823

a.after823:                                       ; preds = %a.create822, %loop.body.57
  %a.load2831 = load ptr, ptr %var.res, align 8
  br label %a.check832

a.check832:                                       ; preds = %a.after823
  %a.len835 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2831, i32 0, i32 0
  %a.len836 = load i64, ptr %a.len835, align 8
  %a.cap837 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2831, i32 0, i32 2
  %a.cap838 = load i64, ptr %a.cap837, align 8
  %a.needs.grow839 = icmp eq i64 %a.len836, %a.cap838
  br i1 %a.needs.grow839, label %a.grow833, label %a.store834

a.grow833:                                        ; preds = %a.check832
  call void @dva_array_grow(ptr %a.load2831)
  br label %a.store834

a.store834:                                       ; preds = %a.grow833, %a.check832
  %a.cur.data840 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2831, i32 0, i32 1
  %a.cur.data841 = load ptr, ptr %a.cur.data840, align 8
  %a.cur.len842 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2831, i32 0, i32 0
  %a.cur.len843 = load i64, ptr %a.cur.len842, align 8
  %a.elem.gep844 = getelementptr i64, ptr %a.cur.data841, i64 %a.cur.len843
  %slot.p2i845 = ptrtoint ptr %var.load819 to i64
  store i64 %slot.p2i845, ptr %a.elem.gep844, align 8
  %a.next.len846 = add i64 %a.cur.len843, 1
  %b.len.gep847 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2831, i32 0, i32 0
  store i64 %a.next.len846, ptr %b.len.gep847, align 8
  br label %loop.latch.57

a.create853:                                      ; preds = %loop.exit.57
  %arena.cur855 = call ptr @dva_arena_current()
  %a.create856 = call ptr @dva_arena_alloc(ptr %arena.cur855, i64 24)
  %arena.cur857 = call ptr @dva_arena_current()
  %a.buf858 = call ptr @dva_arena_alloc(ptr %arena.cur857, i64 128)
  %a.len.gep859 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create856, i32 0, i32 0
  store i64 0, ptr %a.len.gep859, align 8
  %a.data.gep860 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create856, i32 0, i32 1
  store ptr %a.buf858, ptr %a.data.gep860, align 8
  %a.cap.gep861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create856, i32 0, i32 2
  store i64 16, ptr %a.cap.gep861, align 8
  store ptr %a.create856, ptr %var.file_list, align 8
  br label %a.after854

a.after854:                                       ; preds = %a.create853, %loop.exit.57
  %a.load2862 = load ptr, ptr %var.file_list, align 8
  %arr.cycle.len863 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2862, i32 0, i32 0
  %arr.cycle.len864 = load i64, ptr %arr.cycle.len863, align 8
  %arr.cycle.data865 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2862, i32 0, i32 1
  %arr.cycle.data866 = load ptr, ptr %arr.cycle.data865, align 8
  store i64 0, ptr %loop.idx.58, align 8
  br label %loop.header.58

loop.header.58:                                   ; preds = %loop.latch.58, %a.after854
  %counter.load867 = load i64, ptr %loop.idx.58, align 8
  %loop.cond868 = icmp slt i64 %counter.load867, %arr.cycle.len864
  br i1 %loop.cond868, label %loop.body.58, label %loop.exit.nat.58

loop.body.58:                                     ; preds = %loop.header.58
  %loop.rel.i869 = sub i64 %counter.load867, 0
  store i64 1, ptr %loop.step.58, align 8
  %arr.elem.gep870 = getelementptr i64, ptr %arr.cycle.data866, i64 %counter.load867
  %arr.elem.raw871 = load i64, ptr %arr.elem.gep870, align 8
  %slot.i2p872 = inttoptr i64 %arr.elem.raw871 to ptr
  store i64 %loop.rel.i869, ptr %var._i873, align 8
  store ptr %slot.i2p872, ptr %var._874, align 8
  store ptr %slot.i2p872, ptr %var.file_item, align 8
  %var.load875 = load ptr, ptr %var.file_item, align 8
  %a.load876 = load ptr, ptr %var.res, align 8
  %a.null877 = icmp eq ptr %a.load876, null
  br i1 %a.null877, label %a.create878, label %a.after879

loop.exit.nat.58:                                 ; preds = %loop.header.58
  br label %loop.exit.58

loop.latch.58:                                    ; preds = %a.store890
  %step.val904 = load i64, ptr %loop.step.58, align 8
  %loop.next905 = add i64 %counter.load867, %step.val904
  store i64 %loop.next905, ptr %loop.idx.58, align 8
  br label %loop.header.58

loop.exit.58:                                     ; preds = %loop.exit.nat.58
  %var.load906 = load ptr, ptr %var.res, align 8
  %a.load907 = load ptr, ptr %var.res, align 8
  %a.null908 = icmp eq ptr %a.load907, null
  br i1 %a.null908, label %a.create909, label %a.after910

a.create878:                                      ; preds = %loop.body.58
  %arena.cur880 = call ptr @dva_arena_current()
  %a.create881 = call ptr @dva_arena_alloc(ptr %arena.cur880, i64 24)
  %arena.cur882 = call ptr @dva_arena_current()
  %a.buf883 = call ptr @dva_arena_alloc(ptr %arena.cur882, i64 128)
  %a.len.gep884 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 0
  store i64 0, ptr %a.len.gep884, align 8
  %a.data.gep885 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 1
  store ptr %a.buf883, ptr %a.data.gep885, align 8
  %a.cap.gep886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 2
  store i64 16, ptr %a.cap.gep886, align 8
  store ptr %a.create881, ptr %var.res, align 8
  br label %a.after879

a.after879:                                       ; preds = %a.create878, %loop.body.58
  %a.load2887 = load ptr, ptr %var.res, align 8
  br label %a.check888

a.check888:                                       ; preds = %a.after879
  %a.len891 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2887, i32 0, i32 0
  %a.len892 = load i64, ptr %a.len891, align 8
  %a.cap893 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2887, i32 0, i32 2
  %a.cap894 = load i64, ptr %a.cap893, align 8
  %a.needs.grow895 = icmp eq i64 %a.len892, %a.cap894
  br i1 %a.needs.grow895, label %a.grow889, label %a.store890

a.grow889:                                        ; preds = %a.check888
  call void @dva_array_grow(ptr %a.load2887)
  br label %a.store890

a.store890:                                       ; preds = %a.grow889, %a.check888
  %a.cur.data896 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2887, i32 0, i32 1
  %a.cur.data897 = load ptr, ptr %a.cur.data896, align 8
  %a.cur.len898 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2887, i32 0, i32 0
  %a.cur.len899 = load i64, ptr %a.cur.len898, align 8
  %a.elem.gep900 = getelementptr i64, ptr %a.cur.data897, i64 %a.cur.len899
  %slot.p2i901 = ptrtoint ptr %var.load875 to i64
  store i64 %slot.p2i901, ptr %a.elem.gep900, align 8
  %a.next.len902 = add i64 %a.cur.len899, 1
  %b.len.gep903 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2887, i32 0, i32 0
  store i64 %a.next.len902, ptr %b.len.gep903, align 8
  br label %loop.latch.58

a.create909:                                      ; preds = %loop.exit.58
  %arena.cur911 = call ptr @dva_arena_current()
  %a.create912 = call ptr @dva_arena_alloc(ptr %arena.cur911, i64 24)
  %arena.cur913 = call ptr @dva_arena_current()
  %a.buf914 = call ptr @dva_arena_alloc(ptr %arena.cur913, i64 128)
  %a.len.gep915 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create912, i32 0, i32 0
  store i64 0, ptr %a.len.gep915, align 8
  %a.data.gep916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create912, i32 0, i32 1
  store ptr %a.buf914, ptr %a.data.gep916, align 8
  %a.cap.gep917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create912, i32 0, i32 2
  store i64 16, ptr %a.cap.gep917, align 8
  store ptr %a.create912, ptr %var.res, align 8
  br label %a.after910

a.after910:                                       ; preds = %a.create909, %loop.exit.58
  %a.load2918 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2918
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
