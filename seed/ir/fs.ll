; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
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
@detached_builder = internal unnamed_addr constant [93 x i8] c"E4013: Builder buffer was detached by freeze. Append data or create a new Builder before &b\0A\00"
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
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
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
@clo.const.56 = internal constant { ptr, ptr } { ptr @"fs::list_dir", ptr null }
@clo.const.57 = internal constant { ptr, ptr } { ptr @"fs::list_dir_simple", ptr null }
@"var.fs::list_dir_simple" = global ptr null
@"var.fs::list_dir" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_fs, ptr null }]

declare void @free(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

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

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #3

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

declare i32 @close(i32)

declare i64 @read(i32, ptr, i64)

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

declare ptr @opendir(ptr)

declare ptr @readdir(ptr)

declare i64 @closedir(ptr)

declare i64 @stat(ptr, ptr)

declare i64 @fstat(i32, ptr)

declare i64 @rename(ptr, ptr)

declare i64 @unlink(ptr)

declare ptr @realpath(ptr, ptr)

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
  %var.raw = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  %0 = icmp eq ptr %b.ptr3, null
  br i1 %0, label %b.detached, label %b.writable

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.detached:                                       ; preds = %b.buf.len1
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %b.buf.len1
  %addr.ffi.int = ptrtoint ptr %b.ptr3 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @getcwd(ptr %addr.ffi.clean, i64 1024)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

abort.dead4:                                      ; No predecessors!
  unreachable

choice.then:                                      ; preds = %b.writable
  store ptr %call.res, ptr %var._, align 8
  store ptr %call.res, ptr %var.raw, align 8
  %var.load5 = load ptr, ptr %var.raw, align 8
  %call.res6 = call { i64, ptr } @"sys::c_str"(ptr %var.load5)
  store { i64, ptr } %call.res6, ptr %ret.ub.salloc, align 8
  br label %choice.exit

choice.else:                                      ; preds = %b.writable
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.salloc, %choice.then ], [ @str.0.struct, %choice.else ]
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_detached_builder() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @detached_builder, i64 92)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare { i64, ptr } @"sys::c_str"(ptr) #0

define { i64, ptr } @"fs::home"() #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.raw = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

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
  store ptr %call.res, ptr %var._, align 8
  store ptr %call.res, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %call.res6 = call { i64, ptr } @"sys::c_str"(ptr %var.load)
  store { i64, ptr } %call.res6, ptr %ret.ub.salloc, align 8
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.salloc, %choice.then ], [ @str.2.struct, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define { i64, ptr } @"fs::resolve"(ptr %0) #0 {
entry:
  %var.resolved = alloca ptr, align 8
  %ret.ub.salloc87 = alloca { i64, ptr }, align 8
  %var.raw = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.full = alloca ptr, align 8
  %ret.ub.salloc57 = alloca { i64, ptr }, align 8
  %ret.ub.salloc12 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res = call { i64, ptr } @"fs::cwd"()
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load4 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %eq.rhs.len = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str.eq.then:                                      ; preds = %choice.exit
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data8 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data8, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then9, label %choice.exit10

choice.then9:                                     ; preds = %str.eq.merge
  %call.res11 = call { i64, ptr } @"fs::home"()
  store { i64, ptr } %call.res11, ptr %ret.ub.salloc12, align 8
  %ret.pack13 = load { i64, ptr }, ptr %ret.ub.salloc12, align 8
  ret { i64, ptr } %ret.pack13

choice.exit10:                                    ; preds = %ret.dead14, %str.eq.merge
  %var.load15 = load i64, ptr %var.len, align 8
  %cmptmp16 = icmp sge i64 %var.load15, 2
  br i1 %cmptmp16, label %and.94.then, label %and.94.else

ret.dead14:                                       ; No predecessors!
  br label %choice.exit10

and.94.then:                                      ; preds = %choice.exit10
  %var.load17 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len19, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len19
  %final.start = select i1 %start.gt.len, i64 %s.read.len19, i64 %c.start.0
  %rel.end = add i64 %s.read.len19, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len19
  %final.end = select i1 %end.gt.len, i64 %s.read.len19, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data20, i64 %final.start
  %cmp.str = load i64, ptr @str.4.struct, align 8
  %cmp.str21 = and i64 %cmp.str, 281474976710655
  %cmp.str22 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.len23 = icmp eq i64 %view.len, %cmp.str21
  br i1 %eq.len23, label %str.eq.then24, label %str.eq.else25

and.94.else:                                      ; preds = %choice.exit10
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %str.eq.merge26
  %and.94.phi = phi i1 [ %str.eq.result29, %str.eq.merge26 ], [ %cmptmp16, %and.94.else ]
  br i1 %and.94.phi, label %choice.then30, label %choice.exit31

str.eq.then24:                                    ; preds = %and.94.then
  %eq.memcmp27 = call i32 @memcmp(ptr %view.data, ptr %cmp.str22, i64 %view.len)
  %eq.cmp.zero28 = icmp eq i32 %eq.memcmp27, 0
  br label %str.eq.merge26

str.eq.else25:                                    ; preds = %and.94.then
  br label %str.eq.merge26

str.eq.merge26:                                   ; preds = %str.eq.else25, %str.eq.then24
  %str.eq.result29 = phi i1 [ %eq.cmp.zero28, %str.eq.then24 ], [ false, %str.eq.else25 ]
  br label %and.94.exit

choice.then30:                                    ; preds = %and.94.exit
  %call.res32 = call { i64, ptr } @"fs::home"()
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res32, ptr %ret.ub.alloc, align 8
  %var.load33 = load ptr, ptr %var.p, align 8
  %s.read.len34 = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %s.read.len35 = load i64, ptr %s.read.len34, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %s.read.data37 = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %s.read.data38 = load ptr, ptr %s.read.data37, align 8
  %rel.start39 = add i64 %s.read.len36, 2
  %norm.start40 = select i1 false, i64 %rel.start39, i64 2
  %start.lt.041 = icmp slt i64 %norm.start40, 0
  %c.start.042 = select i1 %start.lt.041, i64 0, i64 %norm.start40
  %start.gt.len43 = icmp sgt i64 %c.start.042, %s.read.len36
  %final.start44 = select i1 %start.gt.len43, i64 %s.read.len36, i64 %c.start.042
  %end.is_neg = icmp slt i64 %s.read.len36, 0
  %rel.end45 = add i64 %s.read.len36, %s.read.len36
  %norm.end46 = select i1 %end.is_neg, i64 %rel.end45, i64 %s.read.len36
  %end.lt.047 = icmp slt i64 %norm.end46, 0
  %c.end.048 = select i1 %end.lt.047, i64 0, i64 %norm.end46
  %end.gt.len49 = icmp sgt i64 %c.end.048, %s.read.len36
  %final.end50 = select i1 %end.gt.len49, i64 %s.read.len36, i64 %c.end.048
  %view.empty51 = icmp sle i64 %final.end50, %final.start44
  %view.len.sub52 = sub i64 %final.end50, %final.start44
  %view.len53 = select i1 %view.empty51, i64 0, i64 %view.len.sub52
  %view.data54 = getelementptr i8, ptr %s.read.data38, i64 %final.start44
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len53, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data54, ptr %str.build.data.gep, align 8
  %call.res56 = call { i64, ptr } @"path::join"(ptr %ret.ub.alloc, ptr %str.view)
  store { i64, ptr } %call.res56, ptr %ret.ub.salloc57, align 8
  %ret.pack58 = load { i64, ptr }, ptr %ret.ub.salloc57, align 8
  ret { i64, ptr } %ret.pack58

choice.exit31:                                    ; preds = %ret.dead59, %and.94.exit
  %var.load60 = load ptr, ptr %var.p, align 8
  %call.res61 = call i1 @"path::is_abs"(ptr %var.load60)
  br i1 %call.res61, label %choice.then62, label %choice.else

ret.dead59:                                       ; No predecessors!
  br label %choice.exit31

choice.then62:                                    ; preds = %choice.exit31
  %var.load64 = load ptr, ptr %var.p, align 8
  br label %choice.exit63

choice.else:                                      ; preds = %choice.exit31
  %call.res65 = call { i64, ptr } @"fs::cwd"()
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  store { i64, ptr } %call.res65, ptr %ret.ub.alloc67, align 8
  %var.load68 = load ptr, ptr %var.p, align 8
  %call.res69 = call { i64, ptr } @"path::join"(ptr %ret.ub.alloc67, ptr %var.load68)
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  store { i64, ptr } %call.res69, ptr %ret.ub.alloc71, align 8
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.else, %choice.then62
  %choice.res = phi ptr [ %var.load64, %choice.then62 ], [ %ret.ub.alloc71, %choice.else ]
  store ptr %choice.res, ptr %var.full, align 8
  %var.load72 = load ptr, ptr %var.full, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 1
  %arg.str.ptr73 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr74 = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 0
  %arg.str.ptr75 = load i64, ptr %arg.str.ptr74, align 8
  %arg.str.ptr76 = and i64 %arg.str.ptr75, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr73, i64 %arg.str.ptr76
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr77, label %nulcopy

arg.str.ptr77:                                    ; preds = %choice.exit63
  br label %nulmerge

nulcopy:                                          ; preds = %choice.exit63
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr76, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len78

nulmerge:                                         ; preds = %nulcopy.len78, %arg.str.ptr77
  %arg.str.ptr80 = phi ptr [ %arg.str.ptr73, %arg.str.ptr77 ], [ %nulcopy.buf, %nulcopy.len78 ]
  %call.res81 = call ptr @realpath(ptr %arg.str.ptr80, ptr null)
  %niche.ne.null = icmp ne ptr %call.res81, null
  br i1 %niche.ne.null, label %choice.then82, label %choice.else83

nulcopy.len78:                                    ; preds = %abort.dead, %nulcopy
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr73, i64 %arg.str.ptr76, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr76
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len78

choice.then82:                                    ; preds = %nulmerge
  store ptr %call.res81, ptr %var._, align 8
  store ptr %call.res81, ptr %var.raw, align 8
  %var.load85 = load ptr, ptr %var.raw, align 8
  %call.res86 = call { i64, ptr } @"sys::c_str"(ptr %var.load85)
  store { i64, ptr } %call.res86, ptr %ret.ub.salloc87, align 8
  store ptr %ret.ub.salloc87, ptr %var.resolved, align 8
  %var.load88 = load ptr, ptr %var.raw, align 8
  %addr.ffi.int = ptrtoint ptr %var.load88 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @free(ptr %addr.ffi.clean)
  %var.load89 = load ptr, ptr %var.resolved, align 8
  br label %choice.exit84

choice.else83:                                    ; preds = %nulmerge
  %var.load90 = load ptr, ptr %var.full, align 8
  br label %choice.exit84

choice.exit84:                                    ; preds = %choice.else83, %choice.then82
  %choice.res91 = phi ptr [ %var.load89, %choice.then82 ], [ %var.load90, %choice.else83 ]
  %ret.pack92 = load { i64, ptr }, ptr %choice.res91, align 8
  ret { i64, ptr } %ret.pack92
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
  br i1 %var.load7, label %or.95.then, label %or.95.else

or.95.then:                                       ; preds = %entry
  br label %or.95.exit

or.95.else:                                       ; preds = %entry
  %var.load8 = load i16, ptr %var.fmt, align 2
  %coerce.zext9 = zext i16 %var.load8 to i64
  %cmptmp10 = icmp eq i64 %coerce.zext9, 10
  br label %or.95.exit

or.95.exit:                                       ; preds = %or.95.else, %or.95.then
  %or.95.phi = phi i1 [ %var.load7, %or.95.then ], [ %cmptmp10, %or.95.else ]
  store i1 %or.95.phi, ptr %var.is_l, align 1
  %var.load11 = load i64, ptr %var.m, align 8
  %coerce.trunc12 = trunc i64 %var.load11 to i16
  store i16 %coerce.trunc12, ptr %var.pb, align 2
  %var.load13 = load i16, ptr %var.pb, align 2
  %bf.load14 = load i16, ptr %var.pb, align 2
  %bf.shr15 = lshr i16 %bf.load14, 6
  %bf.mask16 = and i16 %bf.shr15, 1
  %bf.flag = trunc i16 %bf.mask16 to i1
  br i1 %bf.flag, label %or.96.then, label %or.96.else

or.96.then:                                       ; preds = %or.95.exit
  br label %or.96.exit

or.96.else:                                       ; preds = %or.95.exit
  %var.load17 = load i16, ptr %var.pb, align 2
  %bf.load18 = load i16, ptr %var.pb, align 2
  %bf.shr19 = lshr i16 %bf.load18, 3
  %bf.mask20 = and i16 %bf.shr19, 1
  %bf.flag21 = trunc i16 %bf.mask20 to i1
  br label %or.96.exit

or.96.exit:                                       ; preds = %or.96.else, %or.96.then
  %or.96.phi = phi i1 [ %bf.flag, %or.96.then ], [ %bf.flag21, %or.96.else ]
  br i1 %or.96.phi, label %or.97.then, label %or.97.else

or.97.then:                                       ; preds = %or.96.exit
  br label %or.97.exit

or.97.else:                                       ; preds = %or.96.exit
  %var.load22 = load i16, ptr %var.pb, align 2
  %bf.load23 = load i16, ptr %var.pb, align 2
  %bf.mask24 = and i16 %bf.load23, 1
  %bf.flag25 = trunc i16 %bf.mask24 to i1
  br label %or.97.exit

or.97.exit:                                       ; preds = %or.97.else, %or.97.then
  %or.97.phi = phi i1 [ %or.96.phi, %or.97.then ], [ %bf.flag25, %or.97.else ]
  br i1 %or.97.phi, label %and.98.then, label %and.98.else

and.98.then:                                      ; preds = %or.97.exit
  %var.load26 = load i1, ptr %var.is_d, align 1
  %nottmp = xor i1 %var.load26, true
  br label %and.98.exit

and.98.else:                                      ; preds = %or.97.exit
  br label %and.98.exit

and.98.exit:                                      ; preds = %and.98.else, %and.98.then
  %and.98.phi = phi i1 [ %nottmp, %and.98.then ], [ %or.97.phi, %and.98.else ]
  store i1 %and.98.phi, ptr %var.is_x, align 1
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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
  %var.load = load ptr, ptr %var.buf, align 8
  %load.path = load ptr, ptr %var.path, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 8)
  %env.store.gep = getelementptr inbounds { ptr }, ptr %env.alloc, i32 0, i32 0
  store ptr %load.path, ptr %env.store.gep, align 8
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 0
  store ptr @"$anon_fn.128", ptr %clo.fn.gep, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 1
  store ptr %env.alloc, ptr %clo.env.gep, align 8
  %call.res = call i64 @"mem::write_tail"(ptr %var.load, i64 1024, ptr %clo.alloc)
  store i64 %call.res, ptr %var.n, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load5, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  ret { i64, ptr } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %b.buf.len1
  %var.load6 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %b.freeze.len7 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 1
  %b.freeze.data8 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.exit
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data8, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data8, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data8, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len7, 1
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data8, i64 %b.freeze.len7, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len7
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit
  %b.freeze.data10 = phi ptr [ %b.freeze.data8, %choice.exit ], [ %b.freeze.data8, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len7, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data10, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 2
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

define internal i64 @"$anon_fn.128"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %var.avail = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  %env.gep = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr %1, ptr %var.dst, align 8
  store i64 %2, ptr %var.avail, align 8
  %var.load = load ptr, ptr %env.gep, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load8 = load ptr, ptr %var.dst, align 8
  %addr.ffi.int = ptrtoint ptr %var.load8 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load9 = load i64, ptr %var.avail, align 8
  %call.res = call i64 @readlink(ptr %arg.str.ptr7, ptr %addr.ffi.clean, i64 %var.load9)
  ret i64 %call.res

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

declare i64 @"mem::write_tail"(ptr, i64, ptr) #0

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
  %var.raw27 = alloca ptr, align 8
  %var._26 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var._19 = alloca i64, align 8
  %loop.step.102 = alloca i64, align 8
  %loop.idx.102 = alloca i64, align 8
  %var.dp = alloca ptr, align 8
  %var.raw = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr2, i64 %arg.str.ptr5
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr6, label %nulcopy

arg.str.ptr6:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr5, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len7

nulmerge:                                         ; preds = %nulcopy.len7, %arg.str.ptr6
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr2, %arg.str.ptr6 ], [ %nulcopy.buf, %nulcopy.len7 ]
  %call.res = call ptr @opendir(ptr %arg.str.ptr9)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

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
  store ptr %call.res, ptr %var._, align 8
  store ptr %call.res, ptr %var.raw, align 8
  %var.load10 = load ptr, ptr %var.raw, align 8
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  %var.load11 = load ptr, ptr %var.res, align 8
  %a.load = load ptr, ptr %var.res, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %choice.then
  %choice.res = phi ptr [ %var.load10, %choice.then ], [ null, %ret.dead ]
  store ptr %choice.res, ptr %var.dp, align 8
  store i64 0, ptr %loop.idx.102, align 8
  br label %loop.header.102

a.create:                                         ; preds = %choice.else
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
  store ptr %a.create13, ptr %var.res, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.102:                                  ; preds = %loop.latch.102, %choice.exit
  %counter.load = load i64, ptr %loop.idx.102, align 8
  br label %loop.body.102

loop.body.102:                                    ; preds = %loop.header.102
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.102, align 8
  store i64 %counter.load, ptr %var._19, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load20 = load ptr, ptr %var.dp, align 8
  %addr.ffi.int = ptrtoint ptr %var.load20 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res21 = call ptr @readdir(ptr %addr.ffi.clean)
  %niche.ne.null22 = icmp ne ptr %call.res21, null
  br i1 %niche.ne.null22, label %choice.then23, label %choice.else24

loop.exit.nat.102:                                ; No predecessors!
  br label %loop.exit.102

loop.latch.102:                                   ; preds = %a.store, %choice.then54
  %step.val = load i64, ptr %loop.step.102, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.102, align 8
  br label %loop.header.102

loop.exit.102:                                    ; preds = %choice.else24, %loop.exit.nat.102
  %var.load112 = load ptr, ptr %var.dp, align 8
  %addr.ffi.int113 = ptrtoint ptr %var.load112 to i64
  %addr.ffi.masked114 = and i64 %addr.ffi.int113, 281474976710655
  %addr.ffi.clean115 = inttoptr i64 %addr.ffi.masked114 to ptr
  %call.res116 = call i64 @closedir(ptr %addr.ffi.clean115)
  %var.load117 = load ptr, ptr %var.res, align 8
  %a.load118 = load ptr, ptr %var.res, align 8
  %a.null119 = icmp eq ptr %a.load118, null
  br i1 %a.null119, label %a.create120, label %a.after121

choice.then23:                                    ; preds = %loop.body.102
  store ptr %call.res21, ptr %var._26, align 8
  store ptr %call.res21, ptr %var.raw27, align 8
  %var.load28 = load ptr, ptr %var.raw27, align 8
  br label %choice.exit25

choice.else24:                                    ; preds = %loop.body.102
  br label %loop.exit.102

choice.exit25:                                    ; preds = %choice.then23
  %choice.res29 = phi ptr [ %var.load28, %choice.then23 ]
  store ptr %choice.res29, ptr %var.ent, align 8
  %var.load30 = load ptr, ptr %var.ent, align 8
  %ptr.int.l = ptrtoint ptr %var.load30 to i64
  %addtmp = add i64 %ptr.int.l, 19
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

str.eq.then:                                      ; preds = %choice.exit25
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %eq.lhs.data37 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data37, ptr %eq.rhs.data, i64 %eq.lhs.len35)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit25
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.103.then, label %or.103.else

or.103.then:                                      ; preds = %str.eq.merge
  br label %or.103.exit

or.103.else:                                      ; preds = %str.eq.merge
  %var.load38 = load ptr, ptr %var.name, align 8
  %eq.lhs.len39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %eq.lhs.len40 = load i64, ptr %eq.lhs.len39, align 8
  %eq.lhs.len41 = and i64 %eq.lhs.len40, 281474976710655
  %eq.rhs.len42 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len43 = and i64 %eq.rhs.len42, 281474976710655
  %eq.len44 = icmp eq i64 %eq.lhs.len41, %eq.rhs.len43
  br i1 %eq.len44, label %str.eq.then45, label %str.eq.else46

or.103.exit:                                      ; preds = %str.eq.merge47, %or.103.then
  %or.103.phi = phi i1 [ %str.eq.result, %or.103.then ], [ %str.eq.result53, %str.eq.merge47 ]
  br i1 %or.103.phi, label %choice.then54, label %choice.exit55

str.eq.then45:                                    ; preds = %or.103.else
  %eq.lhs.data48 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %eq.lhs.data49 = load ptr, ptr %eq.lhs.data48, align 8
  %eq.rhs.data50 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp51 = call i32 @memcmp(ptr %eq.lhs.data49, ptr %eq.rhs.data50, i64 %eq.lhs.len41)
  %eq.cmp.zero52 = icmp eq i32 %eq.memcmp51, 0
  br label %str.eq.merge47

str.eq.else46:                                    ; preds = %or.103.else
  br label %str.eq.merge47

str.eq.merge47:                                   ; preds = %str.eq.else46, %str.eq.then45
  %str.eq.result53 = phi i1 [ %eq.cmp.zero52, %str.eq.then45 ], [ false, %str.eq.else46 ]
  br label %or.103.exit

choice.then54:                                    ; preds = %or.103.exit
  br label %loop.latch.102

choice.exit55:                                    ; preds = %or.103.exit
  %var.load56 = load ptr, ptr %var.ent, align 8
  store ptr %var.load56, ptr %var.dp_ent, align 8
  %var.load57 = load ptr, ptr %var.dp_ent, align 8
  %fld.gep = getelementptr inbounds <{ i64, i64, i16, i8 }>, ptr %var.load57, i32 0, i32 3
  %fld.load = load i8, ptr %fld.gep, align 1
  %coerce.zext = zext i8 %fld.load to i64
  store i64 %coerce.zext, ptr %var.dt, align 8
  %var.load58 = load i64, ptr %var.dt, align 8
  %cmptmp = icmp eq i64 %var.load58, 4
  store i1 %cmptmp, ptr %var.is_d, align 1
  %var.load59 = load i64, ptr %var.dt, align 8
  %cmptmp60 = icmp eq i64 %var.load59, 8
  store i1 %cmptmp60, ptr %var.is_f, align 1
  %var.load61 = load i64, ptr %var.dt, align 8
  %cmptmp62 = icmp eq i64 %var.load61, 10
  store i1 %cmptmp62, ptr %var.is_l, align 1
  %var.load63 = load i64, ptr %var.dt, align 8
  %cmptmp64 = icmp eq i64 %var.load63, 0
  br i1 %cmptmp64, label %choice.then65, label %choice.exit66

choice.then65:                                    ; preds = %choice.exit55
  %var.load67 = load ptr, ptr %var.dir_path, align 8
  %var.load68 = load ptr, ptr %var.name, align 8
  %call.res69 = call { i64, ptr } @"fs::join"(ptr %var.load67, ptr %var.load68)
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  store { i64, ptr } %call.res69, ptr %ret.ub.alloc71, align 8
  store ptr %ret.ub.alloc71, ptr %var.sub_p, align 8
  %var.load72 = load ptr, ptr %var.sub_p, align 8
  %call.res73 = call ptr @"fs::lstat_meta"(ptr %var.load72)
  store ptr %call.res73, ptr %var.meta, align 8
  %var.load74 = load ptr, ptr %var.meta, align 8
  %niche.ne.null75 = icmp ne ptr %var.load74, null
  br i1 %niche.ne.null75, label %choice.then76, label %choice.exit77

choice.exit66:                                    ; preds = %choice.exit77, %choice.exit55
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

choice.then76:                                    ; preds = %choice.then65
  store ptr %var.load74, ptr %var._78, align 8
  store ptr %var.load74, ptr %var.mi, align 8
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

choice.exit77:                                    ; preds = %choice.then76, %choice.then65
  br label %choice.exit66

a.create98:                                       ; preds = %choice.exit66
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

a.after99:                                        ; preds = %a.create98, %choice.exit66
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
  br label %loop.latch.102

a.create120:                                      ; preds = %loop.exit.102
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

a.after121:                                       ; preds = %a.create120, %loop.exit.102
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
  %var.n76 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.104 = alloca i64, align 8
  %loop.idx.104 = alloca i64, align 8
  %"var.read_err'" = alloca i1, align 1
  %var.out = alloca ptr, align 8
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
  %addr.tag.int = ptrtoint ptr %var.load11 to i64
  %addr.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift = shl i64 %addr.tag.gen, 48
  %addr.tagged = or i64 %addr.tag.int, %addr.tag.shift
  %addr.tagged.ptr = inttoptr i64 %addr.tagged to ptr
  %addr.ffi.int = ptrtoint ptr %addr.tagged.ptr to i64
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
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 24)
  %b.data.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new53, i32 0, i32 1
  %b.len.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new53, i32 0, i32 0
  %b.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new53, i32 0, i32 2
  %b.buf.len57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum58 = extractvalue { i64, i1 } %b.buf.len57, 0
  %ovf59 = extractvalue { i64, i1 } %b.buf.len57, 1
  br i1 %ovf59, label %str_overflow_abort61, label %b.buf.len60

choice.exit23:                                    ; preds = %choice.exit91, %choice.exit41
  %choice.res135 = phi ptr [ %choice.res51, %choice.exit41 ], [ %choice.res134, %choice.exit91 ]
  %ret.niche.nn = icmp ne ptr %choice.res135, null
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
  %var.load32 = load ptr, ptr %var.buf, align 8
  %var.load33 = load i64, ptr %var.sz, align 8
  %load.fd = load i64, ptr %var.fd, align 8
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 8)
  %env.store.gep = getelementptr inbounds { i64 }, ptr %env.alloc, i32 0, i32 0
  store i64 %load.fd, ptr %env.store.gep, align 8
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 16)
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 0
  store ptr @"$anon_fn.136", ptr %clo.fn.gep, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 1
  store ptr %env.alloc, ptr %clo.env.gep, align 8
  %call.res36 = call i64 @"mem::write_tail"(ptr %var.load32, i64 %var.load33, ptr %clo.alloc)
  store i64 %call.res36, ptr %var.n, align 8
  %var.load37 = load i64, ptr %var.fd, align 8
  %coerce.trunc38 = trunc i64 %var.load37 to i32
  %call.res39 = call i32 @close(i32 %coerce.trunc38)
  %var.load40 = load i64, ptr %var.n, align 8
  %cmptmp42 = icmp slt i64 %var.load40, 0
  br i1 %cmptmp42, label %choice.case, label %choice.next

str_overflow_abort29:                             ; preds = %choice.then21
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %b.buf.len28

choice.exit41:                                    ; preds = %b.freeze.done, %choice.case43, %choice.case
  %choice.res51 = phi ptr [ null, %choice.case ], [ @str.5.struct, %choice.case43 ], [ %builder.freeze, %b.freeze.done ]
  br label %choice.exit23

choice.case:                                      ; preds = %b.buf.len28
  br label %choice.exit41

choice.next:                                      ; preds = %b.buf.len28
  %val.match = icmp eq i64 %var.load40, 0
  br i1 %val.match, label %choice.case43, label %choice.next44

choice.case43:                                    ; preds = %choice.next
  br label %choice.exit41

choice.next44:                                    ; preds = %choice.next
  %var.load45 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 0
  %b.freeze.len46 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 1
  %b.freeze.data47 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %choice.next44
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data47, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data47, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data47, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len46, 1
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data47, i64 %b.freeze.len46, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len46
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.next44
  %b.freeze.data49 = phi ptr [ %b.freeze.data47, %choice.next44 ], [ %b.freeze.data47, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len46, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data49, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit41

b.buf.len60:                                      ; preds = %abort.dead62, %choice.else22
  %arena.cur63 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 %sum58)
  %b.nul065 = getelementptr i8, ptr %b.buf64, i64 0
  store i8 0, ptr %b.nul065, align 1
  store i64 0, ptr %b.len.gep55, align 8
  store ptr %b.buf64, ptr %b.data.gep54, align 8
  store i64 4096, ptr %b.cap.gep56, align 8
  store ptr %builder.new53, ptr %var.out, align 8
  store i1 false, ptr %"var.read_err'", align 1
  store i64 0, ptr %loop.idx.104, align 8
  br label %loop.header.104

str_overflow_abort61:                             ; preds = %choice.else22
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %b.buf.len60

loop.header.104:                                  ; preds = %loop.latch.104, %b.buf.len60
  %counter.load = load i64, ptr %loop.idx.104, align 8
  br label %loop.body.104

loop.body.104:                                    ; preds = %loop.header.104
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.104, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load66 = load ptr, ptr %var.out, align 8
  %load.fd67 = load i64, ptr %var.fd, align 8
  %arena.cur68 = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 8)
  %env.store.gep70 = getelementptr inbounds { i64 }, ptr %env.alloc69, i32 0, i32 0
  store i64 %load.fd67, ptr %env.store.gep70, align 8
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 16)
  %clo.fn.gep73 = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc72, i32 0, i32 0
  store ptr @"$anon_fn.137", ptr %clo.fn.gep73, align 8
  %clo.env.gep74 = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc72, i32 0, i32 1
  store ptr %env.alloc69, ptr %clo.env.gep74, align 8
  %call.res75 = call i64 @"mem::write_tail"(ptr %var.load66, i64 4096, ptr %clo.alloc72)
  store i64 %call.res75, ptr %var.n76, align 8
  %var.load77 = load i64, ptr %var.n76, align 8
  %cmptmp78 = icmp slt i64 %var.load77, 0
  br i1 %cmptmp78, label %choice.then79, label %choice.exit80

loop.exit.nat.104:                                ; No predecessors!
  br label %loop.exit.104

loop.latch.104:                                   ; preds = %choice.exit84
  %step.val = load i64, ptr %loop.step.104, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.exit.104:                                    ; preds = %choice.then83, %choice.then79, %loop.exit.nat.104
  %var.load85 = load i64, ptr %var.fd, align 8
  %coerce.trunc86 = trunc i64 %var.load85 to i32
  %call.res87 = call i32 @close(i32 %coerce.trunc86)
  %var.load88 = load i1, ptr %"var.read_err'", align 1
  br i1 %var.load88, label %choice.then89, label %choice.else90

choice.then79:                                    ; preds = %loop.body.104
  store i1 true, ptr %"var.read_err'", align 1
  br label %loop.exit.104

choice.exit80:                                    ; preds = %loop.body.104
  %var.load81 = load i64, ptr %var.n76, align 8
  %cmptmp82 = icmp eq i64 %var.load81, 0
  br i1 %cmptmp82, label %choice.then83, label %choice.exit84

choice.then83:                                    ; preds = %choice.exit80
  br label %loop.exit.104

choice.exit84:                                    ; preds = %choice.exit80
  br label %loop.latch.104

choice.then89:                                    ; preds = %loop.exit.104
  br label %choice.exit91

choice.else90:                                    ; preds = %loop.exit.104
  %var.load92 = load ptr, ptr %var.out, align 8
  %b.freeze.len93 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load92, i32 0, i32 0
  %b.freeze.len94 = load i64, ptr %b.freeze.len93, align 8
  %b.freeze.data95 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load92, i32 0, i32 1
  %b.freeze.data96 = load ptr, ptr %b.freeze.data95, align 8
  %b.freeze.arena97 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep98 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena97, i32 0, i32 1
  %b.freeze.nc99 = load i64, ptr %b.freeze.nc.gep98, align 8
  %b.freeze.has.chunk100 = icmp sgt i64 %b.freeze.nc99, 0
  br i1 %b.freeze.has.chunk100, label %b.freeze.check101, label %b.freeze.done103

choice.exit91:                                    ; preds = %b.freeze.done103, %choice.then89
  %choice.res134 = phi ptr [ null, %choice.then89 ], [ %builder.freeze125, %b.freeze.done103 ]
  br label %choice.exit23

b.freeze.check101:                                ; preds = %choice.else90
  %b.freeze.last.idx104 = sub i64 %b.freeze.nc99, 1
  %b.freeze.chunks.gep105 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena97, i32 0, i32 3
  %b.freeze.chunk.slot106 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep105, i64 0, i64 %b.freeze.last.idx104
  %b.freeze.last.chunk107 = load ptr, ptr %b.freeze.chunk.slot106, align 8
  %b.freeze.off.gep108 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena97, i32 0, i32 2
  %b.freeze.off109 = load i64, ptr %b.freeze.off.gep108, align 8
  %b.freeze.bump110 = getelementptr i8, ptr %b.freeze.last.chunk107, i64 %b.freeze.off109
  %b.freeze.cap.gep111 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena97, i32 0, i32 0
  %b.freeze.cap112 = load i64, ptr %b.freeze.cap.gep111, align 8
  %b.freeze.chunk.end113 = getelementptr i8, ptr %b.freeze.last.chunk107, i64 %b.freeze.cap112
  %b.freeze.ge.chunk114 = icmp uge ptr %b.freeze.data96, %b.freeze.last.chunk107
  %b.freeze.lt.end115 = icmp ult ptr %b.freeze.data96, %b.freeze.chunk.end113
  %b.freeze.in.chunk116 = and i1 %b.freeze.ge.chunk114, %b.freeze.lt.end115
  %b.freeze.ge.bump117 = icmp uge ptr %b.freeze.data96, %b.freeze.bump110
  %b.freeze.reaped118 = and i1 %b.freeze.in.chunk116, %b.freeze.ge.bump117
  br i1 %b.freeze.reaped118, label %b.freeze.copy102, label %b.freeze.done103

b.freeze.copy102:                                 ; preds = %b.freeze.check101
  %b.freeze.alen119 = add i64 %b.freeze.len94, 1
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 %b.freeze.alen119)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh121, ptr align 1 %b.freeze.data96, i64 %b.freeze.len94, i1 false)
  %b.freeze.nul122 = getelementptr i8, ptr %b.freeze.fresh121, i64 %b.freeze.len94
  store i8 0, ptr %b.freeze.nul122, align 1
  br label %b.freeze.done103

b.freeze.done103:                                 ; preds = %b.freeze.copy102, %b.freeze.check101, %choice.else90
  %b.freeze.data123 = phi ptr [ %b.freeze.data96, %choice.else90 ], [ %b.freeze.data96, %b.freeze.check101 ], [ %b.freeze.fresh121, %b.freeze.copy102 ]
  %arena.cur124 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze125 = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 16)
  %str.build.len.gep126 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze125, i32 0, i32 0
  %str.tag.gen127 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift128 = shl i64 %str.tag.gen127, 48
  %str.tagged.len129 = or i64 %b.freeze.len94, %str.tag.shift128
  store i64 %str.tagged.len129, ptr %str.build.len.gep126, align 8
  %str.build.data.gep130 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze125, i32 0, i32 1
  store ptr %b.freeze.data123, ptr %str.build.data.gep130, align 8
  %b.freeze.rst.len131 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load92, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len131, align 8
  %b.freeze.rst.data132 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load92, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data132, align 8
  %b.freeze.rst.cap133 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load92, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap133, align 8
  br label %choice.exit91

ret.niche.load:                                   ; preds = %choice.exit23
  %ret.niche.val = load { i64, ptr }, ptr %choice.res135, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit23
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit23 ]
  ret { i64, ptr } %ret.niche.pack
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

define internal i64 @"$anon_fn.136"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %var.avail = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  %env.gep = getelementptr inbounds { i64 }, ptr %0, i32 0, i32 0
  store ptr %1, ptr %var.dst, align 8
  store i64 %2, ptr %var.avail, align 8
  %var.load = load i64, ptr %env.gep, align 8
  %var.load1 = load ptr, ptr %var.dst, align 8
  %addr.ffi.int = ptrtoint ptr %var.load1 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load2 = load i64, ptr %var.avail, align 8
  %coerce.trunc = trunc i64 %var.load to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load2)
  ret i64 %call.res
}

define internal i64 @"$anon_fn.137"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %var.avail = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  %env.gep = getelementptr inbounds { i64 }, ptr %0, i32 0, i32 0
  store ptr %1, ptr %var.dst, align 8
  store i64 %2, ptr %var.avail, align 8
  %var.load = load i64, ptr %env.gep, align 8
  %var.load1 = load ptr, ptr %var.dst, align 8
  %addr.ffi.int = ptrtoint ptr %var.load1 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load2 = load i64, ptr %var.avail, align 8
  %coerce.trunc = trunc i64 %var.load to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load2)
  ret i64 %call.res
}

define i1 @"fs::write_file"(ptr %0, ptr %1) #0 {
entry:
  %var.rc = alloca i64, align 8
  %var.w = alloca i64, align 8
  %var.v = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.105 = alloca i64, align 8
  %loop.idx.105 = alloca i64, align 8
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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
  store i64 %str.len.query12, ptr %var.len, align 8
  store i64 0, ptr %"var.off'", align 8
  store i1 true, ptr %"var.ok'", align 1
  store i64 0, ptr %loop.idx.105, align 8
  br label %loop.header.105

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.105:                                  ; preds = %loop.latch.105, %choice.exit
  %counter.load = load i64, ptr %loop.idx.105, align 8
  br label %loop.body.105

loop.body.105:                                    ; preds = %loop.header.105
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.105, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load13 = load i64, ptr %"var.off'", align 8
  %var.load14 = load i64, ptr %var.len, align 8
  %cmptmp15 = icmp sge i64 %var.load13, %var.load14
  br i1 %cmptmp15, label %choice.then16, label %choice.exit17

loop.exit.nat.105:                                ; No predecessors!
  br label %loop.exit.105

loop.latch.105:                                   ; preds = %choice.exit57
  %step.val = load i64, ptr %loop.step.105, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.exit.105:                                    ; preds = %choice.then56, %choice.then16, %loop.exit.nat.105
  %var.load60 = load i64, ptr %var.fd, align 8
  %coerce.trunc61 = trunc i64 %var.load60 to i32
  %call.res62 = call i32 @close(i32 %coerce.trunc61)
  %coerce.sext63 = sext i32 %call.res62 to i64
  store i64 %coerce.sext63, ptr %var.rc, align 8
  %var.load64 = load i1, ptr %"var.ok'", align 1
  br i1 %var.load64, label %and.106.then, label %and.106.else

choice.then16:                                    ; preds = %loop.body.105
  br label %loop.exit.105

choice.exit17:                                    ; preds = %loop.body.105
  %var.load18 = load ptr, ptr %var.content, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data, align 8
  %var.load22 = load i64, ptr %"var.off'", align 8
  %var.load23 = load i64, ptr %var.len, align 8
  %start.is_neg = icmp slt i64 %var.load22, 0
  %rel.start = add i64 %s.read.len20, %var.load22
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load22
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len20
  %final.start = select i1 %start.gt.len, i64 %s.read.len20, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load23, 0
  %rel.end = add i64 %s.read.len20, %var.load23
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load23
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len20
  %final.end = select i1 %end.gt.len, i64 %s.read.len20, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data21, i64 %final.start
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.v, align 8
  %var.load25 = load i64, ptr %var.fd, align 8
  %var.load26 = load ptr, ptr %var.v, align 8
  %arg.str.ptr27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %arg.str.ptr28 = load ptr, ptr %arg.str.ptr27, align 8
  %arg.str.ptr29 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %arg.str.ptr30 = load i64, ptr %arg.str.ptr29, align 8
  %arg.str.ptr31 = and i64 %arg.str.ptr30, 281474976710655
  %nulcheck.gep32 = getelementptr i8, ptr %arg.str.ptr28, i64 %arg.str.ptr31
  %nulcheck.byte33 = load i8, ptr %nulcheck.gep32, align 1
  %nulcheck34 = icmp eq i8 %nulcheck.byte33, 0
  br i1 %nulcheck34, label %arg.str.ptr35, label %nulcopy36

arg.str.ptr35:                                    ; preds = %choice.exit17
  br label %nulmerge37

nulcopy36:                                        ; preds = %choice.exit17
  %nulcopy.len38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr31, i64 1)
  %sum39 = extractvalue { i64, i1 } %nulcopy.len38, 0
  %ovf40 = extractvalue { i64, i1 } %nulcopy.len38, 1
  br i1 %ovf40, label %str_overflow_abort42, label %nulcopy.len41

nulmerge37:                                       ; preds = %nulcopy.len41, %arg.str.ptr35
  %arg.str.ptr47 = phi ptr [ %arg.str.ptr28, %arg.str.ptr35 ], [ %nulcopy.buf45, %nulcopy.len41 ]
  %var.load48 = load ptr, ptr %var.v, align 8
  %str.len.query49 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %str.len.query50 = load i64, ptr %str.len.query49, align 8
  %str.len.query51 = and i64 %str.len.query50, 281474976710655
  %coerce.trunc52 = trunc i64 %var.load25 to i32
  %call.res53 = call i64 @write(i32 %coerce.trunc52, ptr %arg.str.ptr47, i64 %str.len.query51)
  store i64 %call.res53, ptr %var.w, align 8
  %var.load54 = load i64, ptr %var.w, align 8
  %cmptmp55 = icmp sle i64 %var.load54, 0
  br i1 %cmptmp55, label %choice.then56, label %choice.else

nulcopy.len41:                                    ; preds = %abort.dead43, %nulcopy36
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %sum39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf45, ptr align 1 %arg.str.ptr28, i64 %arg.str.ptr31, i1 false)
  %nulcopy.nul46 = getelementptr i8, ptr %nulcopy.buf45, i64 %arg.str.ptr31
  store i8 0, ptr %nulcopy.nul46, align 1
  br label %nulmerge37

str_overflow_abort42:                             ; preds = %nulcopy36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %nulcopy.len41

choice.then56:                                    ; preds = %nulmerge37
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.105

choice.else:                                      ; preds = %nulmerge37
  %var.load58 = load i64, ptr %"var.off'", align 8
  %var.load59 = load i64, ptr %var.w, align 8
  %addtmp = add i64 %var.load58, %var.load59
  store i64 %addtmp, ptr %"var.off'", align 8
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.else
  br label %loop.latch.105

and.106.then:                                     ; preds = %loop.exit.105
  %var.load65 = load i64, ptr %var.rc, align 8
  %cmptmp66 = icmp eq i64 %var.load65, 0
  br label %and.106.exit

and.106.else:                                     ; preds = %loop.exit.105
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %and.106.then
  %and.106.phi = phi i1 [ %cmptmp66, %and.106.then ], [ %var.load64, %and.106.else ]
  ret i1 %and.106.phi
}

define i1 @"fs::copy_file"(ptr %0, ptr %1) #0 {
entry:
  %var.w = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.107 = alloca i64, align 8
  %loop.idx.107 = alloca i64, align 8
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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
  %nulcheck.gep15 = getelementptr i8, ptr %arg.str.ptr11, i64 %arg.str.ptr14
  %nulcheck.byte16 = load i8, ptr %nulcheck.gep15, align 1
  %nulcheck17 = icmp eq i8 %nulcheck.byte16, 0
  br i1 %nulcheck17, label %arg.str.ptr18, label %nulcopy19

ret.dead:                                         ; No predecessors!
  br label %choice.exit

arg.str.ptr18:                                    ; preds = %choice.exit
  br label %nulmerge20

nulcopy19:                                        ; preds = %choice.exit
  %nulcopy.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr14, i64 1)
  %sum22 = extractvalue { i64, i1 } %nulcopy.len21, 0
  %ovf23 = extractvalue { i64, i1 } %nulcopy.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %nulcopy.len24

nulmerge20:                                       ; preds = %nulcopy.len24, %arg.str.ptr18
  %arg.str.ptr30 = phi ptr [ %arg.str.ptr11, %arg.str.ptr18 ], [ %nulcopy.buf28, %nulcopy.len24 ]
  %call.res31 = call i64 @"fs::open_wronly_creat_trunc"()
  %coerce.trunc = trunc i64 %call.res31 to i32
  %call.res32 = call i32 @open(ptr %arg.str.ptr30, i32 %coerce.trunc, i64 420)
  %coerce.sext33 = sext i32 %call.res32 to i64
  store i64 %coerce.sext33, ptr %var.d_fd, align 8
  %var.load34 = load i64, ptr %var.d_fd, align 8
  %cmptmp35 = icmp slt i64 %var.load34, 0
  br i1 %cmptmp35, label %choice.then36, label %choice.exit37

nulcopy.len24:                                    ; preds = %abort.dead26, %nulcopy19
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %sum22)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf28, ptr align 1 %arg.str.ptr11, i64 %arg.str.ptr14, i1 false)
  %nulcopy.nul29 = getelementptr i8, ptr %nulcopy.buf28, i64 %arg.str.ptr14
  store i8 0, ptr %nulcopy.nul29, align 1
  br label %nulmerge20

str_overflow_abort25:                             ; preds = %nulcopy19
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %nulcopy.len24

choice.then36:                                    ; preds = %nulmerge20
  %var.load38 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc39 = trunc i64 %var.load38 to i32
  %call.res40 = call i32 @close(i32 %coerce.trunc39)
  ret i1 false

choice.exit37:                                    ; preds = %ret.dead41, %nulmerge20
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16384, i64 1)
  %sum43 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf44 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf44, label %str_overflow_abort46, label %b.buf.len45

ret.dead41:                                       ; No predecessors!
  br label %choice.exit37

b.buf.len45:                                      ; preds = %abort.dead47, %choice.exit37
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %sum43)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16384, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  store i1 true, ptr %"var.ok'", align 1
  store i64 0, ptr %loop.idx.107, align 8
  br label %loop.header.107

str_overflow_abort46:                             ; preds = %choice.exit37
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %b.buf.len45

loop.header.107:                                  ; preds = %loop.latch.107, %b.buf.len45
  %counter.load = load i64, ptr %loop.idx.107, align 8
  br label %loop.body.107

loop.body.107:                                    ; preds = %loop.header.107
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.107, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load49 = load i64, ptr %var.s_fd, align 8
  %var.load50 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load50, i32 0, i32 1
  %b.ptr51 = load ptr, ptr %b.ptr, align 8
  %2 = icmp eq ptr %b.ptr51, null
  br i1 %2, label %b.detached, label %b.writable

loop.exit.nat.107:                                ; No predecessors!
  br label %loop.exit.107

loop.latch.107:                                   ; preds = %choice.exit76
  %step.val = load i64, ptr %loop.step.107, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.107, align 8
  br label %loop.header.107

loop.exit.107:                                    ; preds = %choice.then75, %choice.then57, %loop.exit.nat.107
  %var.load77 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc78 = trunc i64 %var.load77 to i32
  %call.res79 = call i32 @close(i32 %coerce.trunc78)
  %var.load80 = load i64, ptr %var.d_fd, align 8
  %coerce.trunc81 = trunc i64 %var.load80 to i32
  %call.res82 = call i32 @close(i32 %coerce.trunc81)
  %var.load83 = load i1, ptr %"var.ok'", align 1
  ret i1 %var.load83

b.detached:                                       ; preds = %loop.body.107
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %loop.body.107
  %addr.ffi.int = ptrtoint ptr %b.ptr51 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc53 = trunc i64 %var.load49 to i32
  %call.res54 = call i64 @read(i32 %coerce.trunc53, ptr %addr.ffi.clean, i64 16384)
  store i64 %call.res54, ptr %var.n, align 8
  %var.load55 = load i64, ptr %var.n, align 8
  %cmptmp56 = icmp sle i64 %var.load55, 0
  br i1 %cmptmp56, label %choice.then57, label %choice.exit58

abort.dead52:                                     ; No predecessors!
  unreachable

choice.then57:                                    ; preds = %b.writable
  br label %loop.exit.107

choice.exit58:                                    ; preds = %b.writable
  %var.load59 = load i64, ptr %var.d_fd, align 8
  %var.load60 = load ptr, ptr %var.buf, align 8
  %b.ptr61 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 1
  %b.ptr62 = load ptr, ptr %b.ptr61, align 8
  %3 = icmp eq ptr %b.ptr62, null
  br i1 %3, label %b.detached63, label %b.writable64

b.detached63:                                     ; preds = %choice.exit58
  call void @dva_abort_detached_builder()
  unreachable

b.writable64:                                     ; preds = %choice.exit58
  %addr.ffi.int66 = ptrtoint ptr %b.ptr62 to i64
  %addr.ffi.masked67 = and i64 %addr.ffi.int66, 281474976710655
  %addr.ffi.clean68 = inttoptr i64 %addr.ffi.masked67 to ptr
  %var.load69 = load i64, ptr %var.n, align 8
  %coerce.trunc70 = trunc i64 %var.load59 to i32
  %call.res71 = call i64 @write(i32 %coerce.trunc70, ptr %addr.ffi.clean68, i64 %var.load69)
  store i64 %call.res71, ptr %var.w, align 8
  %var.load72 = load i64, ptr %var.w, align 8
  %var.load73 = load i64, ptr %var.n, align 8
  %cmptmp74 = icmp ne i64 %var.load72, %var.load73
  br i1 %cmptmp74, label %choice.then75, label %choice.exit76

abort.dead65:                                     ; No predecessors!
  unreachable

choice.then75:                                    ; preds = %b.writable64
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.107

choice.exit76:                                    ; preds = %b.writable64
  br label %loop.latch.107
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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
  %nulcheck.gep14 = getelementptr i8, ptr %arg.str.ptr10, i64 %arg.str.ptr13
  %nulcheck.byte15 = load i8, ptr %nulcheck.gep14, align 1
  %nulcheck16 = icmp eq i8 %nulcheck.byte15, 0
  br i1 %nulcheck16, label %arg.str.ptr17, label %nulcopy18

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

arg.str.ptr17:                                    ; preds = %nulmerge
  br label %nulmerge19

nulcopy18:                                        ; preds = %nulmerge
  %nulcopy.len20 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr13, i64 1)
  %sum21 = extractvalue { i64, i1 } %nulcopy.len20, 0
  %ovf22 = extractvalue { i64, i1 } %nulcopy.len20, 1
  br i1 %ovf22, label %str_overflow_abort24, label %nulcopy.len23

nulmerge19:                                       ; preds = %nulcopy.len23, %arg.str.ptr17
  %arg.str.ptr29 = phi ptr [ %arg.str.ptr10, %arg.str.ptr17 ], [ %nulcopy.buf27, %nulcopy.len23 ]
  %call.res = call i64 @rename(ptr %arg.str.ptr7, ptr %arg.str.ptr29)
  %cmptmp = icmp eq i64 %call.res, 0
  ret i1 %cmptmp

nulcopy.len23:                                    ; preds = %abort.dead25, %nulcopy18
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf27, ptr align 1 %arg.str.ptr10, i64 %arg.str.ptr13, i1 false)
  %nulcopy.nul28 = getelementptr i8, ptr %nulcopy.buf27, i64 %arg.str.ptr13
  store i8 0, ptr %nulcopy.nul28, align 1
  br label %nulmerge19

str_overflow_abort24:                             ; preds = %nulcopy18
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %nulcopy.len23
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.exit:                                      ; preds = %choice.exit31, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %call.res39, %choice.exit31 ]
  ret i1 %choice.res

str.eq.then:                                      ; preds = %choice.else
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data7 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data7, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.else
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.108.then, label %and.108.else

and.108.then:                                     ; preds = %str.eq.merge
  %var.load8 = load ptr, ptr %var.p, align 8
  %var.load9 = load ptr, ptr %var.path, align 8
  %eq.lhs.len10 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %eq.lhs.len11 = load i64, ptr %eq.lhs.len10, align 8
  %eq.lhs.len12 = and i64 %eq.lhs.len11, 281474976710655
  %eq.rhs.len13 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %eq.rhs.len14 = load i64, ptr %eq.rhs.len13, align 8
  %eq.rhs.len15 = and i64 %eq.rhs.len14, 281474976710655
  %eq.len16 = icmp eq i64 %eq.lhs.len12, %eq.rhs.len15
  br i1 %eq.len16, label %str.eq.then17, label %str.eq.else18

and.108.else:                                     ; preds = %str.eq.merge
  br label %and.108.exit

and.108.exit:                                     ; preds = %and.108.else, %str.eq.merge19
  %and.108.phi = phi i1 [ %str.neq27, %str.eq.merge19 ], [ %str.neq, %and.108.else ]
  br i1 %and.108.phi, label %and.109.then, label %and.109.else

str.eq.then17:                                    ; preds = %and.108.then
  %eq.lhs.data20 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %eq.lhs.data21 = load ptr, ptr %eq.lhs.data20, align 8
  %eq.rhs.data22 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %eq.rhs.data23 = load ptr, ptr %eq.rhs.data22, align 8
  %eq.memcmp24 = call i32 @memcmp(ptr %eq.lhs.data21, ptr %eq.rhs.data23, i64 %eq.lhs.len12)
  %eq.cmp.zero25 = icmp eq i32 %eq.memcmp24, 0
  br label %str.eq.merge19

str.eq.else18:                                    ; preds = %and.108.then
  br label %str.eq.merge19

str.eq.merge19:                                   ; preds = %str.eq.else18, %str.eq.then17
  %str.eq.result26 = phi i1 [ %eq.cmp.zero25, %str.eq.then17 ], [ false, %str.eq.else18 ]
  %str.neq27 = xor i1 %str.eq.result26, true
  br label %and.108.exit

and.109.then:                                     ; preds = %and.108.exit
  %var.load28 = load ptr, ptr %var.p, align 8
  %call.res29 = call i1 @"fs::is_dir"(ptr %var.load28)
  %nottmp = xor i1 %call.res29, true
  br label %and.109.exit

and.109.else:                                     ; preds = %and.108.exit
  br label %and.109.exit

and.109.exit:                                     ; preds = %and.109.else, %and.109.then
  %and.109.phi = phi i1 [ %nottmp, %and.109.then ], [ %and.108.phi, %and.109.else ]
  br i1 %and.109.phi, label %choice.then30, label %choice.exit31

choice.then30:                                    ; preds = %and.109.exit
  %var.load32 = load ptr, ptr %var.p, align 8
  %call.res33 = call i1 @"fs::create_dir_all"(ptr %var.load32)
  store i1 %call.res33, ptr %var.ok, align 1
  %var.load34 = load i1, ptr %var.ok, align 1
  %nottmp35 = xor i1 %var.load34, true
  br i1 %nottmp35, label %choice.then36, label %choice.exit37

choice.exit31:                                    ; preds = %choice.exit37, %and.109.exit
  %var.load38 = load ptr, ptr %var.path, align 8
  %call.res39 = call i1 @"fs::create_dir"(ptr %var.load38)
  br label %choice.exit

choice.then36:                                    ; preds = %choice.then30
  ret i1 false

choice.exit37:                                    ; preds = %ret.dead, %choice.then30
  br label %choice.exit31

ret.dead:                                         ; No predecessors!
  br label %choice.exit37
}

define i1 @"fs::remove"(ptr %0) #0 {
entry:
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::is_dir"(ptr %var.load)
  br i1 %call.res, label %and.110.then, label %and.110.else

and.110.then:                                     ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call i1 @"fs::is_symlink"(ptr %var.load1)
  %nottmp = xor i1 %call.res2, true
  br label %and.110.exit

and.110.else:                                     ; preds = %entry
  br label %and.110.exit

and.110.exit:                                     ; preds = %and.110.else, %and.110.then
  %and.110.phi = phi i1 [ %nottmp, %and.110.then ], [ %call.res, %and.110.else ]
  br i1 %and.110.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.110.exit
  %var.load3 = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %arg.str.ptr4 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr5 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %arg.str.ptr6 = load i64, ptr %arg.str.ptr5, align 8
  %arg.str.ptr7 = and i64 %arg.str.ptr6, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr4, i64 %arg.str.ptr7
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr8, label %nulcopy

choice.else:                                      ; preds = %and.110.exit
  %var.load12 = load ptr, ptr %var.path, align 8
  %arg.str.ptr13 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %arg.str.ptr14 = load ptr, ptr %arg.str.ptr13, align 8
  %arg.str.ptr15 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %arg.str.ptr16 = load i64, ptr %arg.str.ptr15, align 8
  %arg.str.ptr17 = and i64 %arg.str.ptr16, 281474976710655
  %nulcheck.gep18 = getelementptr i8, ptr %arg.str.ptr14, i64 %arg.str.ptr17
  %nulcheck.byte19 = load i8, ptr %nulcheck.gep18, align 1
  %nulcheck20 = icmp eq i8 %nulcheck.byte19, 0
  br i1 %nulcheck20, label %arg.str.ptr21, label %nulcopy22

choice.exit:                                      ; preds = %nulmerge23, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ %cmptmp35, %nulmerge23 ]
  ret i1 %choice.res

arg.str.ptr8:                                     ; preds = %choice.then
  br label %nulmerge

nulcopy:                                          ; preds = %choice.then
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

arg.str.ptr21:                                    ; preds = %choice.else
  br label %nulmerge23

nulcopy22:                                        ; preds = %choice.else
  %nulcopy.len24 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr17, i64 1)
  %sum25 = extractvalue { i64, i1 } %nulcopy.len24, 0
  %ovf26 = extractvalue { i64, i1 } %nulcopy.len24, 1
  br i1 %ovf26, label %str_overflow_abort28, label %nulcopy.len27

nulmerge23:                                       ; preds = %nulcopy.len27, %arg.str.ptr21
  %arg.str.ptr33 = phi ptr [ %arg.str.ptr14, %arg.str.ptr21 ], [ %nulcopy.buf31, %nulcopy.len27 ]
  %call.res34 = call i64 @unlink(ptr %arg.str.ptr33)
  %cmptmp35 = icmp eq i64 %call.res34, 0
  br label %choice.exit

nulcopy.len27:                                    ; preds = %abort.dead29, %nulcopy22
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 %sum25)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf31, ptr align 1 %arg.str.ptr14, i64 %arg.str.ptr17, i1 false)
  %nulcopy.nul32 = getelementptr i8, ptr %nulcopy.buf31, i64 %arg.str.ptr17
  store i8 0, ptr %nulcopy.nul32, align 1
  br label %nulmerge23

str_overflow_abort28:                             ; preds = %nulcopy22
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %nulcopy.len27
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
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.113 = alloca i64, align 8
  %loop.idx.113 = alloca i64, align 8
  %var.ents = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::exists"(ptr %var.load)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %and.111.then, label %and.111.else

and.111.then:                                     ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call i1 @"fs::is_symlink"(ptr %var.load1)
  %nottmp3 = xor i1 %call.res2, true
  br label %and.111.exit

and.111.else:                                     ; preds = %entry
  br label %and.111.exit

and.111.exit:                                     ; preds = %and.111.else, %and.111.then
  %and.111.phi = phi i1 [ %nottmp3, %and.111.then ], [ %nottmp, %and.111.else ]
  br i1 %and.111.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.111.exit
  br label %choice.exit

choice.else:                                      ; preds = %and.111.exit
  %var.load4 = load ptr, ptr %var.path, align 8
  %call.res5 = call i1 @"fs::is_dir"(ptr %var.load4)
  br i1 %call.res5, label %and.112.then, label %and.112.else

choice.exit:                                      ; preds = %choice.exit11, %choice.then
  %choice.res61 = phi i1 [ true, %choice.then ], [ %choice.res, %choice.exit11 ]
  ret i1 %choice.res61

and.112.then:                                     ; preds = %choice.else
  %var.load6 = load ptr, ptr %var.path, align 8
  %call.res7 = call i1 @"fs::is_symlink"(ptr %var.load6)
  %nottmp8 = xor i1 %call.res7, true
  br label %and.112.exit

and.112.else:                                     ; preds = %choice.else
  br label %and.112.exit

and.112.exit:                                     ; preds = %and.112.else, %and.112.then
  %and.112.phi = phi i1 [ %nottmp8, %and.112.then ], [ %call.res5, %and.112.else ]
  br i1 %and.112.phi, label %choice.then9, label %choice.else10

choice.then9:                                     ; preds = %and.112.exit
  %var.load12 = load ptr, ptr %var.path, align 8
  %call.res13 = call ptr @"fs::read_dir"(ptr %var.load12)
  store ptr %call.res13, ptr %var.ents, align 8
  %var.load14 = load ptr, ptr %var.ents, align 8
  %a.load = load ptr, ptr %var.ents, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else10:                                    ; preds = %and.112.exit
  %var.load37 = load ptr, ptr %var.path, align 8
  %arg.str.ptr38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %arg.str.ptr39 = load ptr, ptr %arg.str.ptr38, align 8
  %arg.str.ptr40 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %arg.str.ptr41 = load i64, ptr %arg.str.ptr40, align 8
  %arg.str.ptr42 = and i64 %arg.str.ptr41, 281474976710655
  %nulcheck.gep43 = getelementptr i8, ptr %arg.str.ptr39, i64 %arg.str.ptr42
  %nulcheck.byte44 = load i8, ptr %nulcheck.gep43, align 1
  %nulcheck45 = icmp eq i8 %nulcheck.byte44, 0
  br i1 %nulcheck45, label %arg.str.ptr46, label %nulcopy47

choice.exit11:                                    ; preds = %nulmerge48, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ %cmptmp60, %nulmerge48 ]
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
  store i64 0, ptr %loop.idx.113, align 8
  br label %loop.header.113

loop.header.113:                                  ; preds = %loop.latch.113, %a.after
  %counter.load = load i64, ptr %loop.idx.113, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len17
  br i1 %loop.cond, label %loop.body.113, label %loop.exit.nat.113

loop.body.113:                                    ; preds = %loop.header.113
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.113, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data18, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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

loop.exit.nat.113:                                ; preds = %loop.header.113
  br label %loop.exit.113

loop.latch.113:                                   ; preds = %choice.exit26
  %step.val = load i64, ptr %loop.step.113, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.113, align 8
  br label %loop.header.113

loop.exit.113:                                    ; preds = %loop.exit.nat.113
  %var.load27 = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %arg.str.ptr28 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr29 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %arg.str.ptr30 = load i64, ptr %arg.str.ptr29, align 8
  %arg.str.ptr31 = and i64 %arg.str.ptr30, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr28, i64 %arg.str.ptr31
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr32, label %nulcopy

choice.then25:                                    ; preds = %loop.body.113
  ret i1 false

choice.exit26:                                    ; preds = %ret.dead, %loop.body.113
  br label %loop.latch.113

ret.dead:                                         ; No predecessors!
  br label %choice.exit26

arg.str.ptr32:                                    ; preds = %loop.exit.113
  br label %nulmerge

nulcopy:                                          ; preds = %loop.exit.113
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

arg.str.ptr46:                                    ; preds = %choice.else10
  br label %nulmerge48

nulcopy47:                                        ; preds = %choice.else10
  %nulcopy.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr42, i64 1)
  %sum50 = extractvalue { i64, i1 } %nulcopy.len49, 0
  %ovf51 = extractvalue { i64, i1 } %nulcopy.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %nulcopy.len52

nulmerge48:                                       ; preds = %nulcopy.len52, %arg.str.ptr46
  %arg.str.ptr58 = phi ptr [ %arg.str.ptr39, %arg.str.ptr46 ], [ %nulcopy.buf56, %nulcopy.len52 ]
  %call.res59 = call i64 @unlink(ptr %arg.str.ptr58)
  %cmptmp60 = icmp eq i64 %call.res59, 0
  br label %choice.exit11

nulcopy.len52:                                    ; preds = %abort.dead54, %nulcopy47
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %sum50)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf56, ptr align 1 %arg.str.ptr39, i64 %arg.str.ptr42, i1 false)
  %nulcopy.nul57 = getelementptr i8, ptr %nulcopy.buf56, i64 %arg.str.ptr42
  store i8 0, ptr %nulcopy.nul57, align 1
  br label %nulmerge48

str_overflow_abort53:                             ; preds = %nulcopy47
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %nulcopy.len52
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld40 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc39, i32 0, i32 0
  store i64 0, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc39, i32 0, i32 1
  store i64 0, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc39, i32 0, i32 2
  store i64 0, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc39, i32 0, i32 3
  store i64 0, ptr %rec.fld43, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit25
  %choice.res44 = phi ptr [ %rec.alloc, %choice.exit25 ], [ %rec.alloc39, %choice.else ]
  ret ptr %choice.res44

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
  %divtmp = sdiv i64 %var.load13, %var.load14
  store i64 %divtmp, ptr %var.total_gb, align 8
  %var.load15 = load i64, ptr %var.free_bytes, align 8
  %var.load16 = load i64, ptr %var.gb_div, align 8
  %divtmp17 = sdiv i64 %var.load15, %var.load16
  store i64 %divtmp17, ptr %var.free_gb, align 8
  %var.load18 = load i64, ptr %var.used_bytes, align 8
  %var.load19 = load i64, ptr %var.gb_div, align 8
  %divtmp20 = sdiv i64 %var.load18, %var.load19
  store i64 %divtmp20, ptr %var.used_gb, align 8
  %var.load21 = load i64, ptr %var.total_bytes, align 8
  %cmptmp22 = icmp sgt i64 %var.load21, 0
  br i1 %cmptmp22, label %choice.then23, label %choice.else24

choice.then23:                                    ; preds = %choice.exit10
  %var.load26 = load i64, ptr %var.used_bytes, align 8
  %multmp = mul i64 %var.load26, 100
  %var.load27 = load i64, ptr %var.total_bytes, align 8
  %div.is.zero = icmp eq i64 %var.load27, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.notzero

choice.else24:                                    ; preds = %choice.exit10
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else24, %div.ok
  %choice.res30 = phi i64 [ %divtmp29, %div.ok ], [ 0, %choice.else24 ]
  store i64 %choice.res30, ptr %var.pct, align 8
  %var.load31 = load i64, ptr %var.used_gb, align 8
  %var.load32 = load i64, ptr %var.total_gb, align 8
  %var.load33 = load i64, ptr %var.pct, align 8
  %var.load34 = load i64, ptr %var.free_gb, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load31, ptr %rec.fld, align 8
  %rec.fld35 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load32, ptr %rec.fld35, align 8
  %rec.fld36 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load33, ptr %rec.fld36, align 8
  %rec.fld37 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load34, ptr %rec.fld37, align 8
  br label %choice.exit

div.notzero:                                      ; preds = %abort.dead, %choice.then23
  %div.is.min = icmp eq i64 %multmp, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load27, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.then23
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %div.notzero

div.ok:                                           ; preds = %abort.dead28, %div.notzero
  %divtmp29 = sdiv i64 %multmp, %var.load27
  br label %choice.exit25

div.ovf_abort:                                    ; preds = %div.notzero
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %div.ok
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
  %concat.str91 = alloca { i64, ptr }, align 8
  %cat.ibuf70 = alloca [24 x i8], align 1
  %concat.str65 = alloca { i64, ptr }, align 8
  %cat.ibuf44 = alloca [24 x i8], align 1
  %concat.str36 = alloca { i64, ptr }, align 8
  %cat.ibuf15 = alloca [24 x i8], align 1
  %concat.str = alloca { i64, ptr }, align 8
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

choice.exit2:                                     ; preds = %concat.tot.len82, %concat.tot.len56, %concat.tot.len27, %concat.tot.len7
  %choice.res = phi ptr [ %concat.str, %concat.tot.len7 ], [ %concat.str36, %concat.tot.len27 ], [ %concat.str65, %concat.tot.len56 ], [ %concat.str91, %concat.tot.len82 ]
  %ret.pack94 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack94

choice.case:                                      ; preds = %choice.exit
  %var.load3 = load i64, ptr %var.sz, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %var.load3, i1 false)
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.ilen, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len4

choice.next:                                      ; preds = %choice.exit
  %cmptmp13 = icmp slt i64 %var.load1, 1048576
  br i1 %cmptmp13, label %choice.case11, label %choice.next12

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

choice.case11:                                    ; preds = %choice.next
  %var.load14 = load i64, ptr %var.sz, align 8
  %divtmp = sdiv i64 %var.load14, 1024
  %cat.ilen16 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf15, i64 %divtmp, i1 false)
  %cat.lit.data17 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %cat.sum.len18 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.ilen16, i64 3)
  %sum19 = extractvalue { i64, i1 } %cat.sum.len18, 0
  %ovf20 = extractvalue { i64, i1 } %cat.sum.len18, 1
  br i1 %ovf20, label %str_overflow_abort22, label %cat.sum.len21

choice.next12:                                    ; preds = %choice.next
  %cmptmp41 = icmp slt i64 %var.load1, 1073741824
  br i1 %cmptmp41, label %choice.case39, label %choice.next40

cat.sum.len21:                                    ; preds = %abort.dead23, %choice.case11
  %concat.tot.len24 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum19, i64 1)
  %sum25 = extractvalue { i64, i1 } %concat.tot.len24, 0
  %ovf26 = extractvalue { i64, i1 } %concat.tot.len24, 1
  br i1 %ovf26, label %str_overflow_abort28, label %concat.tot.len27

str_overflow_abort22:                             ; preds = %choice.case11
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %cat.sum.len21

concat.tot.len27:                                 ; preds = %abort.dead29, %cat.sum.len21
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 %sum25)
  %cat.dst32 = getelementptr i8, ptr %concat.buf31, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst32, ptr align 1 %cat.ibuf15, i64 %cat.ilen16, i1 false)
  %cat.off33 = add i64 0, %cat.ilen16
  %cat.dst34 = getelementptr i8, ptr %concat.buf31, i64 %cat.off33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst34, ptr align 1 %cat.lit.data17, i64 3, i1 false)
  %concat.nul35 = getelementptr i8, ptr %concat.buf31, i64 %sum19
  store i8 0, ptr %concat.nul35, align 1
  %str.build.len.gep37 = getelementptr inbounds { i64, ptr }, ptr %concat.str36, i32 0, i32 0
  store i64 %sum19, ptr %str.build.len.gep37, align 8
  %str.build.data.gep38 = getelementptr inbounds { i64, ptr }, ptr %concat.str36, i32 0, i32 1
  store ptr %concat.buf31, ptr %str.build.data.gep38, align 8
  br label %choice.exit2

str_overflow_abort28:                             ; preds = %cat.sum.len21
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %concat.tot.len27

choice.case39:                                    ; preds = %choice.next12
  %var.load42 = load i64, ptr %var.sz, align 8
  %divtmp43 = sdiv i64 %var.load42, 1048576
  %cat.ilen45 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf44, i64 %divtmp43, i1 false)
  %cat.lit.data46 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %cat.sum.len47 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.ilen45, i64 3)
  %sum48 = extractvalue { i64, i1 } %cat.sum.len47, 0
  %ovf49 = extractvalue { i64, i1 } %cat.sum.len47, 1
  br i1 %ovf49, label %str_overflow_abort51, label %cat.sum.len50

choice.next40:                                    ; preds = %choice.next12
  %var.load68 = load i64, ptr %var.sz, align 8
  %divtmp69 = sdiv i64 %var.load68, 1073741824
  %cat.ilen71 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf70, i64 %divtmp69, i1 false)
  %cat.lit.data72 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %cat.sum.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.ilen71, i64 3)
  %sum74 = extractvalue { i64, i1 } %cat.sum.len73, 0
  %ovf75 = extractvalue { i64, i1 } %cat.sum.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %cat.sum.len76

cat.sum.len50:                                    ; preds = %abort.dead52, %choice.case39
  %concat.tot.len53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum48, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len53, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len53, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort51:                             ; preds = %choice.case39
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %cat.sum.len50

concat.tot.len56:                                 ; preds = %abort.dead58, %cat.sum.len50
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %sum54)
  %cat.dst61 = getelementptr i8, ptr %concat.buf60, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst61, ptr align 1 %cat.ibuf44, i64 %cat.ilen45, i1 false)
  %cat.off62 = add i64 0, %cat.ilen45
  %cat.dst63 = getelementptr i8, ptr %concat.buf60, i64 %cat.off62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst63, ptr align 1 %cat.lit.data46, i64 3, i1 false)
  %concat.nul64 = getelementptr i8, ptr %concat.buf60, i64 %sum48
  store i8 0, ptr %concat.nul64, align 1
  %str.build.len.gep66 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  store i64 %sum48, ptr %str.build.len.gep66, align 8
  %str.build.data.gep67 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  store ptr %concat.buf60, ptr %str.build.data.gep67, align 8
  br label %choice.exit2

str_overflow_abort57:                             ; preds = %cat.sum.len50
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %concat.tot.len56

cat.sum.len76:                                    ; preds = %abort.dead78, %choice.next40
  %concat.tot.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum74, i64 1)
  %sum80 = extractvalue { i64, i1 } %concat.tot.len79, 0
  %ovf81 = extractvalue { i64, i1 } %concat.tot.len79, 1
  br i1 %ovf81, label %str_overflow_abort83, label %concat.tot.len82

str_overflow_abort77:                             ; preds = %choice.next40
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %cat.sum.len76

concat.tot.len82:                                 ; preds = %abort.dead84, %cat.sum.len76
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 %sum80)
  %cat.dst87 = getelementptr i8, ptr %concat.buf86, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst87, ptr align 1 %cat.ibuf70, i64 %cat.ilen71, i1 false)
  %cat.off88 = add i64 0, %cat.ilen71
  %cat.dst89 = getelementptr i8, ptr %concat.buf86, i64 %cat.off88
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst89, ptr align 1 %cat.lit.data72, i64 3, i1 false)
  %concat.nul90 = getelementptr i8, ptr %concat.buf86, i64 %sum74
  store i8 0, ptr %concat.nul90, align 1
  %str.build.len.gep92 = getelementptr inbounds { i64, ptr }, ptr %concat.str91, i32 0, i32 0
  store i64 %sum74, ptr %str.build.len.gep92, align 8
  %str.build.data.gep93 = getelementptr inbounds { i64, ptr }, ptr %concat.str91, i32 0, i32 1
  store ptr %concat.buf86, ptr %str.build.data.gep93, align 8
  br label %choice.exit2

str_overflow_abort83:                             ; preds = %cat.sum.len76
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %concat.tot.len82
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
  %var.len = alloca i64, align 8
  %var.out_buf = alloca ptr, align 8
  %var.converted = alloca ptr, align 8
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
  %addr.tag.int = ptrtoint ptr %var.t_val to i64
  %addr.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift = shl i64 %addr.tag.gen, 48
  %addr.tagged = or i64 %addr.tag.int, %addr.tag.shift
  %addr.tagged.ptr = inttoptr i64 %addr.tagged to ptr
  %addr.ffi.int = ptrtoint ptr %addr.tagged.ptr to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load5 = load ptr, ptr %var.tm_buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 1
  %b.ptr6 = load ptr, ptr %b.ptr, align 8
  %1 = icmp eq ptr %b.ptr6, null
  br i1 %1, label %b.detached, label %b.writable

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

b.detached:                                       ; preds = %b.buf.len2
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %b.buf.len2
  %addr.tag.int8 = ptrtoint ptr %b.ptr6 to i64
  %addr.tag.gen9 = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift10 = shl i64 %addr.tag.gen9, 48
  %addr.tagged11 = or i64 %addr.tag.int8, %addr.tag.shift10
  %addr.tagged.ptr12 = inttoptr i64 %addr.tagged11 to ptr
  %addr.ffi.int13 = ptrtoint ptr %addr.tagged.ptr12 to i64
  %addr.ffi.masked14 = and i64 %addr.ffi.int13, 281474976710655
  %addr.ffi.clean15 = inttoptr i64 %addr.ffi.masked14 to ptr
  %call.res = call ptr @localtime_r(ptr %addr.ffi.clean, ptr %addr.ffi.clean15)
  store ptr %call.res, ptr %var.converted, align 8
  %var.load16 = load ptr, ptr %var.converted, align 8
  %niche.ne.null = icmp ne ptr %var.load16, null
  %nottmp = xor i1 %niche.ne.null, true
  br i1 %nottmp, label %choice.then17, label %choice.exit18

abort.dead7:                                      ; No predecessors!
  unreachable

choice.then17:                                    ; preds = %b.writable
  %ret.pack19 = load { i64, ptr }, ptr @str.12.struct, align 8
  ret { i64, ptr } %ret.pack19

choice.exit18:                                    ; preds = %ret.dead20, %b.writable
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %b.data.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new22, i32 0, i32 1
  %b.len.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new22, i32 0, i32 0
  %b.cap.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new22, i32 0, i32 2
  %b.buf.len26 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum27 = extractvalue { i64, i1 } %b.buf.len26, 0
  %ovf28 = extractvalue { i64, i1 } %b.buf.len26, 1
  br i1 %ovf28, label %str_overflow_abort30, label %b.buf.len29

ret.dead20:                                       ; No predecessors!
  br label %choice.exit18

b.buf.len29:                                      ; preds = %abort.dead31, %choice.exit18
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 %sum27)
  %b.nul034 = getelementptr i8, ptr %b.buf33, i64 0
  store i8 0, ptr %b.nul034, align 1
  store i64 0, ptr %b.len.gep24, align 8
  store ptr %b.buf33, ptr %b.data.gep23, align 8
  store i64 64, ptr %b.cap.gep25, align 8
  store ptr %builder.new22, ptr %var.out_buf, align 8
  %var.load35 = load ptr, ptr %var.out_buf, align 8
  %load.tm_buf = load ptr, ptr %var.tm_buf, align 8
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 8)
  %env.store.gep = getelementptr inbounds { ptr }, ptr %env.alloc, i32 0, i32 0
  store ptr %load.tm_buf, ptr %env.store.gep, align 8
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 0
  store ptr @"$anon_fn.153", ptr %clo.fn.gep, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 1
  store ptr %env.alloc, ptr %clo.env.gep, align 8
  %call.res38 = call i64 @"mem::write_tail"(ptr %var.load35, i64 64, ptr %clo.alloc)
  store i64 %call.res38, ptr %var.len, align 8
  %var.load39 = load i64, ptr %var.len, align 8
  %cmptmp40 = icmp sle i64 %var.load39, 0
  br i1 %cmptmp40, label %choice.then41, label %choice.exit42

str_overflow_abort30:                             ; preds = %choice.exit18
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %b.buf.len29

choice.then41:                                    ; preds = %b.buf.len29
  %ret.pack43 = load { i64, ptr }, ptr @str.12.struct, align 8
  ret { i64, ptr } %ret.pack43

choice.exit42:                                    ; preds = %ret.dead44, %b.buf.len29
  %var.load45 = load ptr, ptr %var.out_buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 0
  %b.freeze.len46 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 1
  %b.freeze.data47 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead44:                                       ; No predecessors!
  br label %choice.exit42

b.freeze.check:                                   ; preds = %choice.exit42
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data47, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data47, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data47, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len46, 1
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data47, i64 %b.freeze.len46, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len46
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit42
  %b.freeze.data49 = phi ptr [ %b.freeze.data47, %choice.exit42 ], [ %b.freeze.data47, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len46, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data49, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack51 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack51
}

define internal i64 @"$anon_fn.153"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %var.avail = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  %env.gep = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr %1, ptr %var.dst, align 8
  store i64 %2, ptr %var.avail, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load1 = load i64, ptr %var.avail, align 8
  %arg.str.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %arg.str.ptr2 = load i64, ptr @str.13.struct, align 8
  %arg.str.ptr3 = and i64 %arg.str.ptr2, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr, i64 %arg.str.ptr3
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr4, label %nulcopy

arg.str.ptr4:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr3, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len5

nulmerge:                                         ; preds = %nulcopy.len5, %arg.str.ptr4
  %arg.str.ptr6 = phi ptr [ %arg.str.ptr, %arg.str.ptr4 ], [ %nulcopy.buf, %nulcopy.len5 ]
  %var.load7 = load ptr, ptr %env.gep, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 1
  %b.ptr8 = load ptr, ptr %b.ptr, align 8
  %3 = icmp eq ptr %b.ptr8, null
  br i1 %3, label %b.detached, label %b.writable

nulcopy.len5:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr, i64 %arg.str.ptr3, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr3
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len5

b.detached:                                       ; preds = %nulmerge
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %nulmerge
  %addr.ffi.int10 = ptrtoint ptr %b.ptr8 to i64
  %addr.ffi.masked11 = and i64 %addr.ffi.int10, 281474976710655
  %addr.ffi.clean12 = inttoptr i64 %addr.ffi.masked11 to ptr
  %call.res = call i64 @strftime(ptr %addr.ffi.clean, i64 %var.load1, ptr %arg.str.ptr6, ptr %addr.ffi.clean12)
  ret i64 %call.res

abort.dead9:                                      ; No predecessors!
  unreachable
}

define { i64, ptr } @"fs::format_number"(i64 %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.118 = alloca i64, align 8
  %loop.idx.118 = alloca i64, align 8
  %"var.rem'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %str.view = alloca { i64, ptr }, align 8
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
  %cmptmp = icmp sgt i64 %str.len.query4, 0
  br i1 %cmptmp, label %and.116.then, label %and.116.else

and.116.then:                                     ; preds = %entry
  %var.load5 = load ptr, ptr %var.s_full, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len7
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.116.else:                                     ; preds = %entry
  br label %and.116.exit

and.116.exit:                                     ; preds = %and.116.else, %idx_ok
  %and.116.phi = phi i1 [ %cmptmp9, %idx_ok ], [ %cmptmp, %and.116.else ]
  store i1 %and.116.phi, ptr %var.is_neg, align 1
  %var.load10 = load i1, ptr %var.is_neg, align 1
  br i1 %var.load10, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.116.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp eq i64 %s.byte.val, 45
  br label %and.116.exit

idx_oob:                                          ; preds = %and.116.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.116.exit
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
  %str.build.len.gep17 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep17, align 8
  %str.build.data.gep18 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep18, align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.116.exit
  %var.load19 = load ptr, ptr %var.s_full, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %str.view, %choice.then ], [ %var.load19, %choice.else ]
  store ptr %choice.res, ptr %var.s, align 8
  %var.load20 = load ptr, ptr %var.s, align 8
  %str.len.query21 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %str.len.query22 = load i64, ptr %str.len.query21, align 8
  %str.len.query23 = and i64 %str.len.query22, 281474976710655
  store i64 %str.len.query23, ptr %var.len, align 8
  %var.load24 = load i64, ptr %var.len, align 8
  %cmptmp25 = icmp slt i64 %var.load24, 4
  br i1 %cmptmp25, label %choice.then26, label %choice.exit27

choice.then26:                                    ; preds = %choice.exit
  %var.load28 = load ptr, ptr %var.s_full, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load28, align 8
  ret { i64, ptr } %ret.pack

choice.exit27:                                    ; preds = %ret.dead, %choice.exit
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len29

ret.dead:                                         ; No predecessors!
  br label %choice.exit27

b.buf.len29:                                      ; preds = %abort.dead30, %choice.exit27
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load32 = load i1, ptr %var.is_neg, align 1
  br i1 %var.load32, label %choice.then33, label %choice.exit34

str_overflow_abort:                               ; preds = %choice.exit27
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %b.buf.len29

choice.then33:                                    ; preds = %b.buf.len29
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len35 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len35, i64 1)
  %sum36 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf37 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf37, label %str_overflow_abort39, label %b.rn.new.len38

choice.exit34:                                    ; preds = %br.done.117, %b.buf.len29
  %var.load52 = load i64, ptr %var.len, align 8
  %modtmp = urem i64 %var.load52, 3
  store i64 %modtmp, ptr %"var.rem'", align 8
  %var.load53 = load i64, ptr %"var.rem'", align 8
  %cmptmp54 = icmp eq i64 %var.load53, 0
  br i1 %cmptmp54, label %choice.then55, label %choice.exit56

b.rn.new.len38:                                   ; preds = %abort.dead40, %choice.then33
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap41 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap41, %sum36
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort39:                             ; preds = %choice.then33
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %b.rn.new.len38

b.grow2:                                          ; preds = %b.rn.new.len38
  %b.cap2 = mul i64 %b.cap41, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum36
  %b.new.cap = select i1 %b.cap.need, i64 %sum36, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len242 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data243 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum44 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf45 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf45, label %str_overflow_abort47, label %b.new.buf.len246

b.nogrow2:                                        ; preds = %b.rn.new.len38
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len246
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data50 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data50, i64 %b.rn.cur.len35
  br i1 true, label %br.b1.117, label %br.c2.117

b.new.buf.len246:                                 ; preds = %abort.dead48, %b.grow2
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 %sum44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data243, i64 %b.cur.len242, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len242
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort47:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %b.new.buf.len246

br.b1.117:                                        ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.117

br.c2.117:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.117, label %br.c3.117

br.b2.117:                                        ; preds = %br.c2.117
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.117

br.c3.117:                                        ; preds = %br.c2.117
  br i1 true, label %br.b3.117, label %br.b4.117

br.b3.117:                                        ; preds = %br.c3.117
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.117

br.b4.117:                                        ; preds = %br.c3.117
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.117

br.done.117:                                      ; preds = %br.b4.117, %br.b3.117, %br.b2.117, %br.b1.117
  %br.nul = getelementptr i8, ptr %b.rn.data50, i64 %sum36
  store i8 0, ptr %br.nul, align 1
  %b.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum36, ptr %b.len.gep51, align 8
  br label %choice.exit34

choice.then55:                                    ; preds = %choice.exit34
  store i64 3, ptr %"var.rem'", align 8
  br label %choice.exit56

choice.exit56:                                    ; preds = %choice.then55, %choice.exit34
  %var.load57 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.118, align 8
  br label %loop.header.118

loop.header.118:                                  ; preds = %loop.latch.118, %choice.exit56
  %counter.load = load i64, ptr %loop.idx.118, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load57
  br i1 %loop.cond, label %loop.body.118, label %loop.exit.nat.118

loop.body.118:                                    ; preds = %loop.header.118
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.118, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load58 = load i64, ptr %var.i, align 8
  %cmptmp59 = icmp sgt i64 %var.load58, 0
  br i1 %cmptmp59, label %and.119.then, label %and.119.else

loop.exit.nat.118:                                ; preds = %loop.header.118
  br label %loop.exit.118

loop.latch.118:                                   ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.118, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.118, align 8
  br label %loop.header.118

loop.exit.118:                                    ; preds = %loop.exit.nat.118
  %var.load140 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load140, i32 0, i32 0
  %b.freeze.len141 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load140, i32 0, i32 1
  %b.freeze.data142 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep143 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len141, ptr %str.build.len.gep143, align 8
  %str.build.data.gep144 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data142, ptr %str.build.data.gep144, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load140, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load140, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load140, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack145 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack145

and.119.then:                                     ; preds = %loop.body.118
  %var.load60 = load i64, ptr %var.i, align 8
  %var.load61 = load i64, ptr %"var.rem'", align 8
  %subtmp = sub i64 %var.load60, %var.load61
  %modtmp62 = srem i64 %subtmp, 3
  %cmptmp63 = icmp eq i64 %modtmp62, 0
  br label %and.119.exit

and.119.else:                                     ; preds = %loop.body.118
  br label %and.119.exit

and.119.exit:                                     ; preds = %and.119.else, %and.119.then
  %and.119.phi = phi i1 [ %cmptmp63, %and.119.then ], [ %cmptmp59, %and.119.else ]
  br i1 %and.119.phi, label %choice.then64, label %choice.exit65

choice.then64:                                    ; preds = %and.119.exit
  %b.load66 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len67 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 0
  %b.rn.cur.len68 = load i64, ptr %b.rn.cur.len67, align 8
  %b.rn.new.len69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len68, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.rn.new.len69, 0
  %ovf71 = extractvalue { i64, i1 } %b.rn.new.len69, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.rn.new.len72

choice.exit65:                                    ; preds = %br.done.120, %and.119.exit
  %b.load112 = load ptr, ptr %var.b, align 8
  %var.load113 = load ptr, ptr %var.s, align 8
  %s.read.len114 = getelementptr inbounds { i64, ptr }, ptr %var.load113, i32 0, i32 0
  %s.read.len115 = load i64, ptr %s.read.len114, align 8
  %s.read.len116 = and i64 %s.read.len115, 281474976710655
  %s.read.data117 = getelementptr inbounds { i64, ptr }, ptr %var.load113, i32 0, i32 1
  %s.read.data118 = load ptr, ptr %s.read.data117, align 8
  %var.load119 = load i64, ptr %var.i, align 8
  %s.byte.gep120 = getelementptr i8, ptr %s.read.data118, i64 %var.load119
  %s.byte121 = load i8, ptr %s.byte.gep120, align 1
  %s.byte.val122 = zext i8 %s.byte121 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val122, 0
  %b.b.le255 = icmp sle i64 %s.byte.val122, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.rn.new.len72:                                   ; preds = %abort.dead74, %choice.then64
  %b.cap75 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 2
  %b.cap76 = load i64, ptr %b.cap75, align 8
  %b.need.grow77 = icmp slt i64 %b.cap76, %sum70
  br i1 %b.need.grow77, label %b.grow278, label %b.nogrow279

str_overflow_abort73:                             ; preds = %choice.then64
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %b.rn.new.len72

b.grow278:                                        ; preds = %b.rn.new.len72
  %b.cap281 = mul i64 %b.cap76, 2
  %b.cap.small82 = icmp slt i64 %b.cap281, 16
  %b.cap.grow83 = select i1 %b.cap.small82, i64 16, i64 %b.cap281
  %b.cap.need84 = icmp slt i64 %b.cap.grow83, %sum70
  %b.new.cap85 = select i1 %b.cap.need84, i64 %sum70, i64 %b.cap.grow83
  %b.cur.len286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 0
  %b.cur.len287 = load i64, ptr %b.cur.len286, align 8
  %b.cur.data288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 1
  %b.cur.data289 = load ptr, ptr %b.cur.data288, align 8
  %b.new.buf.len290 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap85, i64 1)
  %sum91 = extractvalue { i64, i1 } %b.new.buf.len290, 0
  %ovf92 = extractvalue { i64, i1 } %b.new.buf.len290, 1
  br i1 %ovf92, label %str_overflow_abort94, label %b.new.buf.len293

b.nogrow279:                                      ; preds = %b.rn.new.len72
  br label %b.grow_done80

b.grow_done80:                                    ; preds = %b.nogrow279, %b.new.buf.len293
  %b.rn.data101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 1
  %b.rn.data102 = load ptr, ptr %b.rn.data101, align 8
  %b.rn.dst103 = getelementptr i8, ptr %b.rn.data102, i64 %b.rn.cur.len68
  br i1 true, label %br.b1.120, label %br.c2.120

b.new.buf.len293:                                 ; preds = %abort.dead95, %b.grow278
  %arena.cur96 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf297 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum91)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf297, ptr align 1 %b.cur.data289, i64 %b.cur.len287, i1 false)
  %b.grow2.nul98 = getelementptr i8, ptr %b.new.buf297, i64 %b.cur.len287
  store i8 0, ptr %b.grow2.nul98, align 1
  %b.new.data2.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 1
  store ptr %b.new.buf297, ptr %b.new.data2.gep99, align 8
  %b.new.cap2.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 2
  store i64 %b.new.cap85, ptr %b.new.cap2.gep100, align 8
  br label %b.grow_done80

str_overflow_abort94:                             ; preds = %b.grow278
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %b.new.buf.len293

br.b1.120:                                        ; preds = %b.grow_done80
  store i8 44, ptr %b.rn.dst103, align 1
  br label %br.done.120

br.c2.120:                                        ; preds = %b.grow_done80
  br i1 true, label %br.b2.120, label %br.c3.120

br.b2.120:                                        ; preds = %br.c2.120
  store i8 -64, ptr %b.rn.dst103, align 1
  %br.dst1104 = getelementptr i8, ptr %b.rn.dst103, i64 1
  store i8 -84, ptr %br.dst1104, align 1
  br label %br.done.120

br.c3.120:                                        ; preds = %br.c2.120
  br i1 true, label %br.b3.120, label %br.b4.120

br.b3.120:                                        ; preds = %br.c3.120
  store i8 -32, ptr %b.rn.dst103, align 1
  %br.dst1.3105 = getelementptr i8, ptr %b.rn.dst103, i64 1
  store i8 -128, ptr %br.dst1.3105, align 1
  %br.dst2.3106 = getelementptr i8, ptr %b.rn.dst103, i64 2
  store i8 -84, ptr %br.dst2.3106, align 1
  br label %br.done.120

br.b4.120:                                        ; preds = %br.c3.120
  store i8 -16, ptr %b.rn.dst103, align 1
  %br.dst1.4107 = getelementptr i8, ptr %b.rn.dst103, i64 1
  store i8 -128, ptr %br.dst1.4107, align 1
  %br.dst2.4108 = getelementptr i8, ptr %b.rn.dst103, i64 2
  store i8 -128, ptr %br.dst2.4108, align 1
  %br.dst3.4109 = getelementptr i8, ptr %b.rn.dst103, i64 3
  store i8 -84, ptr %br.dst3.4109, align 1
  br label %br.done.120

br.done.120:                                      ; preds = %br.b4.120, %br.b3.120, %br.b2.120, %br.b1.120
  %br.nul110 = getelementptr i8, ptr %b.rn.data102, i64 %sum70
  store i8 0, ptr %br.nul110, align 1
  %b.len.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 0
  store i64 %sum70, ptr %b.len.gep111, align 8
  br label %choice.exit65

b.byte_ok:                                        ; preds = %abort.dead123, %choice.exit65
  %b.byte.i8 = trunc i64 %s.byte.val122 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load112, i32 0, i32 0
  %b.len124 = load i64, ptr %b.len, align 8
  %b.cap125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load112, i32 0, i32 2
  %b.cap126 = load i64, ptr %b.cap125, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load112, i32 0, i32 1
  %b.data127 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len124, %b.cap126
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit65
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead123:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2128 = mul i64 %b.cap126, 2
  %b.cap.small129 = icmp slt i64 %b.cap2128, 16
  %b.new.cap130 = select i1 %b.cap.small129, i64 16, i64 %b.cap2128
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap130, i64 1)
  %sum131 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf132 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf132, label %str_overflow_abort134, label %b.new.buf.len133

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len133
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load112, i32 0, i32 1
  %b.cur.data137 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load112, i32 0, i32 0
  %b.cur.len138 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data137, i64 %b.cur.len138
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len138, 1
  %b.nul = getelementptr i8, ptr %b.cur.data137, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load112, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep139, align 8
  br label %loop.latch.118

b.new.buf.len133:                                 ; preds = %abort.dead135, %b.grow
  %arena.cur136 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 %sum131)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data127, i64 %b.len124, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len124
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load112, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load112, i32 0, i32 2
  store i64 %b.new.cap130, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort134:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead135:                                    ; No predecessors!
  br label %b.new.buf.len133
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
  %var._i = alloca i64, align 8
  %var.num = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.121 = alloca i64, align 8
  %loop.idx.121 = alloca i64, align 8
  %"var.cand_path'" = alloca ptr, align 8
  %var.ext_part = alloca ptr, align 8
  %ret.ub.salloc5 = alloca { i64, ptr }, align 8
  %var.base_name = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
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
  store { i64, ptr } %call.res2, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.base_name, align 8
  %var.load3 = load ptr, ptr %var.full_p, align 8
  %call.res4 = call { i64, ptr } @"path::ext"(ptr %var.load3)
  store { i64, ptr } %call.res4, ptr %ret.ub.salloc5, align 8
  store ptr %ret.ub.salloc5, ptr %var.ext_part, align 8
  %var.load6 = load ptr, ptr %var.full_p, align 8
  store ptr %var.load6, ptr %"var.cand_path'", align 8
  store i64 1, ptr %loop.idx.121, align 8
  br label %loop.header.121

loop.header.121:                                  ; preds = %loop.latch.121, %entry
  %counter.load = load i64, ptr %loop.idx.121, align 8
  %loop.cond = icmp slt i64 %counter.load, 1000
  br i1 %loop.cond, label %loop.body.121, label %loop.exit.nat.121

loop.body.121:                                    ; preds = %loop.header.121
  %loop.rel.i = sub i64 %counter.load, 1
  store i64 1, ptr %loop.step.121, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.num, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load7 = load ptr, ptr %var.base_name, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %cat.seg8 = load i64, ptr %cat.seg, align 8
  %cat.seg9 = and i64 %cat.seg8, 281474976710655
  %cat.seg10 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %cat.seg11 = load ptr, ptr %cat.seg10, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %var.load12 = load i64, ptr %var.num, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %var.load12, i1 false)
  %cat.lit.data13 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %var.load14 = load ptr, ptr %var.ext_part, align 8
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %cat.seg16 = load i64, ptr %cat.seg15, align 8
  %cat.seg17 = and i64 %cat.seg16, 281474976710655
  %cat.seg18 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %cat.seg19 = load ptr, ptr %cat.seg18, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg9, i64 2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len20

loop.exit.nat.121:                                ; preds = %loop.header.121
  br label %loop.exit.121

loop.latch.121:                                   ; preds = %choice.exit67
  %step.val = load i64, ptr %loop.step.121, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.121, align 8
  br label %loop.header.121

loop.exit.121:                                    ; preds = %choice.then66, %loop.exit.nat.121
  %var.load69 = load ptr, ptr %"var.cand_path'", align 8
  %ret.pack = load { i64, ptr }, ptr %var.load69, align 8
  ret { i64, ptr } %ret.pack

cat.sum.len20:                                    ; preds = %abort.dead, %loop.body.121
  %cat.sum.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.ilen)
  %sum22 = extractvalue { i64, i1 } %cat.sum.len21, 0
  %ovf23 = extractvalue { i64, i1 } %cat.sum.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %cat.sum.len24

str_overflow_abort:                               ; preds = %loop.body.121
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len20

cat.sum.len24:                                    ; preds = %abort.dead26, %cat.sum.len20
  %cat.sum.len27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum22, i64 1)
  %sum28 = extractvalue { i64, i1 } %cat.sum.len27, 0
  %ovf29 = extractvalue { i64, i1 } %cat.sum.len27, 1
  br i1 %ovf29, label %str_overflow_abort31, label %cat.sum.len30

str_overflow_abort25:                             ; preds = %cat.sum.len20
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %cat.sum.len24

cat.sum.len30:                                    ; preds = %abort.dead32, %cat.sum.len24
  %cat.sum.len33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum28, i64 %cat.seg17)
  %sum34 = extractvalue { i64, i1 } %cat.sum.len33, 0
  %ovf35 = extractvalue { i64, i1 } %cat.sum.len33, 1
  br i1 %ovf35, label %str_overflow_abort37, label %cat.sum.len36

str_overflow_abort31:                             ; preds = %cat.sum.len24
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %cat.sum.len30

cat.sum.len36:                                    ; preds = %abort.dead38, %cat.sum.len30
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum34, i64 1)
  %sum39 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf40 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %concat.tot.len41

str_overflow_abort37:                             ; preds = %cat.sum.len30
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %cat.sum.len36

concat.tot.len41:                                 ; preds = %abort.dead43, %cat.sum.len36
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %sum39)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.seg11, i64 %cat.seg9, i1 false)
  %cat.off = add i64 0, %cat.seg9
  %cat.dst45 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst45, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.off46 = add i64 %cat.off, 2
  %cat.dst47 = getelementptr i8, ptr %concat.buf, i64 %cat.off46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst47, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off48 = add i64 %cat.off46, %cat.ilen
  %cat.dst49 = getelementptr i8, ptr %concat.buf, i64 %cat.off48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst49, ptr align 1 %cat.lit.data13, i64 1, i1 false)
  %cat.off50 = add i64 %cat.off48, 1
  %cat.dst51 = getelementptr i8, ptr %concat.buf, i64 %cat.off50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst51, ptr align 1 %cat.seg19, i64 %cat.seg17, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum34
  store i8 0, ptr %concat.nul, align 1
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum34, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.cand_name, align 8
  %var.load53 = load ptr, ptr %var.dir_part, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %eq.lhs.len54 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len55 = and i64 %eq.lhs.len54, 281474976710655
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len56 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len55, %eq.rhs.len56
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_overflow_abort42:                             ; preds = %cat.sum.len36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %concat.tot.len41

str.eq.then:                                      ; preds = %concat.tot.len41
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 1
  %eq.lhs.data57 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data57, ptr %eq.rhs.data, i64 %eq.lhs.len55)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %concat.tot.len41
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load58 = load ptr, ptr %var.dir_part, align 8
  %var.load59 = load ptr, ptr %var.cand_name, align 8
  %call.res60 = call { i64, ptr } @"path::join"(ptr %var.load58, ptr %var.load59)
  %arena.cur61 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 16)
  store { i64, ptr } %call.res60, ptr %ret.ub.alloc62, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load63 = load ptr, ptr %var.cand_name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.alloc62, %choice.then ], [ %var.load63, %choice.else ]
  store ptr %choice.res, ptr %var.cand, align 8
  %var.load64 = load ptr, ptr %var.cand, align 8
  %call.res65 = call i1 @"fs::exists"(ptr %var.load64)
  %nottmp = xor i1 %call.res65, true
  br i1 %nottmp, label %choice.then66, label %choice.exit67

choice.then66:                                    ; preds = %choice.exit
  %var.load68 = load ptr, ptr %var.cand, align 8
  store ptr %var.load68, ptr %"var.cand_path'", align 8
  br label %loop.exit.121

choice.exit67:                                    ; preds = %choice.exit
  br label %loop.latch.121
}

declare { i64, ptr } @"path::dirname"(ptr) #0

declare { i64, ptr } @"path::stem"(ptr) #0

define i64 @"fs::cmp_entries"(ptr %0, ptr %1, i64 %2, i1 %3) #0 {
entry:
  %var.cmp_ext = alloca i64, align 8
  %var.ext2 = alloca ptr, align 8
  %ret.ub.salloc76 = alloca { i64, ptr }, align 8
  %var.ext1 = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
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

choice.exit:                                      ; preds = %choice.next66, %choice.exit84, %choice.exit45, %choice.exit14, %choice.case
  %var.load101 = load i1, ptr %var.rev, align 1
  br i1 %var.load101, label %choice.then102, label %choice.else103

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
  store { i64, ptr } %call.res71, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.ext1, align 8
  %var.load72 = load ptr, ptr %var.e2, align 8
  %fld.gep73 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load72, i32 0, i32 0
  %fld.load74 = load ptr, ptr %fld.gep73, align 8
  %call.res75 = call { i64, ptr } @"fs::ext"(ptr %fld.load74)
  store { i64, ptr } %call.res75, ptr %ret.ub.salloc76, align 8
  store ptr %ret.ub.salloc76, ptr %var.ext2, align 8
  %var.load77 = load ptr, ptr %var.ext1, align 8
  %var.load78 = load ptr, ptr %var.ext2, align 8
  %call.res79 = call i64 @"str::cmp"(ptr %var.load77, ptr %var.load78)
  store i64 %call.res79, ptr %var.cmp_ext, align 8
  %var.load80 = load i64, ptr %var.cmp_ext, align 8
  %cmptmp81 = icmp ne i64 %var.load80, 0
  br i1 %cmptmp81, label %choice.then82, label %choice.else83

choice.next66:                                    ; preds = %choice.next34
  %var.load94 = load ptr, ptr %var.e1, align 8
  %fld.gep95 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load94, i32 0, i32 0
  %fld.load96 = load ptr, ptr %fld.gep95, align 8
  %var.load97 = load ptr, ptr %var.e2, align 8
  %fld.gep98 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load97, i32 0, i32 0
  %fld.load99 = load ptr, ptr %fld.gep98, align 8
  %call.res100 = call i64 @"str::cmp"(ptr %fld.load96, ptr %fld.load99)
  store i64 %call.res100, ptr %"var.res'", align 8
  br label %choice.exit

choice.then82:                                    ; preds = %choice.case65
  %var.load85 = load i64, ptr %var.cmp_ext, align 8
  br label %choice.exit84

choice.else83:                                    ; preds = %choice.case65
  %var.load86 = load ptr, ptr %var.e1, align 8
  %fld.gep87 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load86, i32 0, i32 0
  %fld.load88 = load ptr, ptr %fld.gep87, align 8
  %var.load89 = load ptr, ptr %var.e2, align 8
  %fld.gep90 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load89, i32 0, i32 0
  %fld.load91 = load ptr, ptr %fld.gep90, align 8
  %call.res92 = call i64 @"str::cmp"(ptr %fld.load88, ptr %fld.load91)
  br label %choice.exit84

choice.exit84:                                    ; preds = %choice.else83, %choice.then82
  %choice.res93 = phi i64 [ %var.load85, %choice.then82 ], [ %call.res92, %choice.else83 ]
  store i64 %choice.res93, ptr %"var.res'", align 8
  br label %choice.exit

choice.then102:                                   ; preds = %choice.exit
  %var.load105 = load i64, ptr %"var.res'", align 8
  %negtmp = sub i64 0, %var.load105
  br label %choice.exit104

choice.else103:                                   ; preds = %choice.exit
  %var.load106 = load i64, ptr %"var.res'", align 8
  br label %choice.exit104

choice.exit104:                                   ; preds = %choice.else103, %choice.then102
  %choice.res107 = phi i64 [ %negtmp, %choice.then102 ], [ %var.load106, %choice.else103 ]
  ret i64 %choice.res107
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
  %var._i712 = alloca i64, align 8
  %var.file_item = alloca ptr, align 8
  %var._711 = alloca ptr, align 8
  %loop.step.131 = alloca i64, align 8
  %loop.idx.131 = alloca i64, align 8
  %var._i656 = alloca i64, align 8
  %var.dir_item = alloca ptr, align 8
  %var._655 = alloca ptr, align 8
  %loop.step.130 = alloca i64, align 8
  %loop.idx.130 = alloca i64, align 8
  %var.right516 = alloca ptr, align 8
  %var._515 = alloca ptr, align 8
  %var.left453 = alloca ptr, align 8
  %var._452 = alloca ptr, align 8
  %var._i391 = alloca i64, align 8
  %var.j390 = alloca i64, align 8
  %var._389 = alloca i64, align 8
  %loop.step.129 = alloca i64, align 8
  %loop.idx.129 = alloca i64, align 8
  %var._i383 = alloca i64, align 8
  %var.i382 = alloca i64, align 8
  %var._381 = alloca i64, align 8
  %loop.step.128 = alloca i64, align 8
  %loop.idx.128 = alloca i64, align 8
  %var.nf = alloca i64, align 8
  %var.right = alloca ptr, align 8
  %var._258 = alloca ptr, align 8
  %var.left = alloca ptr, align 8
  %var._197 = alloca ptr, align 8
  %var._i164 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %var._163 = alloca i64, align 8
  %loop.step.127 = alloca i64, align 8
  %loop.idx.127 = alloca i64, align 8
  %var._i158 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._157 = alloca i64, align 8
  %loop.step.126 = alloca i64, align 8
  %loop.idx.126 = alloca i64, align 8
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
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.123 = alloca i64, align 8
  %loop.idx.123 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.123, align 8
  br label %loop.header.123

loop.header.123:                                  ; preds = %loop.latch.123, %a.after
  %counter.load = load i64, ptr %loop.idx.123, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len24
  br i1 %loop.cond, label %loop.body.123, label %loop.exit.nat.123

loop.body.123:                                    ; preds = %loop.header.123
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.123, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data25, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load26 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load26, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.name, align 8
  %var.load27 = load i1, ptr %var.show_hidden, align 1
  %nottmp = xor i1 %var.load27, true
  br i1 %nottmp, label %and.124.then, label %and.124.else

loop.exit.nat.123:                                ; preds = %loop.header.123
  br label %loop.exit.123

loop.latch.123:                                   ; preds = %choice.exit92, %choice.then
  %step.val = load i64, ptr %loop.step.123, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.123, align 8
  br label %loop.header.123

loop.exit.123:                                    ; preds = %loop.exit.nat.123
  %var.load139 = load ptr, ptr %var.dirs, align 8
  %a.load140 = load ptr, ptr %var.dirs, align 8
  %a.null141 = icmp eq ptr %a.load140, null
  br i1 %a.null141, label %a.create142, label %a.after143

and.124.then:                                     ; preds = %loop.body.123
  %var.load28 = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query30, 0
  br label %and.124.exit

and.124.else:                                     ; preds = %loop.body.123
  br label %and.124.exit

and.124.exit:                                     ; preds = %and.124.else, %and.124.then
  %and.124.phi = phi i1 [ %cmptmp, %and.124.then ], [ %nottmp, %and.124.else ]
  br i1 %and.124.phi, label %and.125.then, label %and.125.else

and.125.then:                                     ; preds = %and.124.exit
  %var.load31 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len33
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.125.else:                                     ; preds = %and.124.exit
  br label %and.125.exit

and.125.exit:                                     ; preds = %and.125.else, %idx_ok
  %and.125.phi = phi i1 [ %cmptmp35, %idx_ok ], [ %and.124.phi, %and.125.else ]
  br i1 %and.125.phi, label %choice.then, label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %and.125.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data34, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp35 = icmp eq i64 %s.byte.val, 46
  br label %and.125.exit

idx_oob:                                          ; preds = %and.125.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.125.exit
  br label %loop.latch.123

choice.exit:                                      ; preds = %and.125.exit
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
  br label %loop.latch.123

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

a.create142:                                      ; preds = %loop.exit.123
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

a.after143:                                       ; preds = %a.create142, %loop.exit.123
  %a.load2151 = load ptr, ptr %var.dirs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2151, i32 0, i32 0
  %a.len.query152 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query152, ptr %var.nd, align 8
  %var.load153 = load i64, ptr %var.nd, align 8
  store i64 0, ptr %loop.idx.126, align 8
  br label %loop.header.126

loop.header.126:                                  ; preds = %loop.latch.126, %a.after143
  %counter.load154 = load i64, ptr %loop.idx.126, align 8
  %loop.cond155 = icmp slt i64 %counter.load154, %var.load153
  br i1 %loop.cond155, label %loop.body.126, label %loop.exit.nat.126

loop.body.126:                                    ; preds = %loop.header.126
  %loop.rel.i156 = sub i64 %counter.load154, 0
  store i64 1, ptr %loop.step.126, align 8
  store i64 %counter.load154, ptr %var._157, align 8
  store i64 %counter.load154, ptr %var.i, align 8
  store i64 %loop.rel.i156, ptr %var._i158, align 8
  %var.load159 = load i64, ptr %var.nd, align 8
  %subtmp = sub i64 %var.load159, 1
  store i64 0, ptr %loop.idx.127, align 8
  br label %loop.header.127

loop.exit.nat.126:                                ; preds = %loop.header.126
  br label %loop.exit.126

loop.latch.126:                                   ; preds = %loop.exit.127
  %step.val360 = load i64, ptr %loop.step.126, align 8
  %loop.next361 = add i64 %counter.load154, %step.val360
  store i64 %loop.next361, ptr %loop.idx.126, align 8
  br label %loop.header.126

loop.exit.126:                                    ; preds = %loop.exit.nat.126
  %var.load362 = load ptr, ptr %var.file_list, align 8
  %a.load363 = load ptr, ptr %var.file_list, align 8
  %a.null364 = icmp eq ptr %a.load363, null
  br i1 %a.null364, label %a.create365, label %a.after366

loop.header.127:                                  ; preds = %loop.latch.127, %loop.body.126
  %counter.load160 = load i64, ptr %loop.idx.127, align 8
  %loop.cond161 = icmp slt i64 %counter.load160, %subtmp
  br i1 %loop.cond161, label %loop.body.127, label %loop.exit.nat.127

loop.body.127:                                    ; preds = %loop.header.127
  %loop.rel.i162 = sub i64 %counter.load160, 0
  store i64 1, ptr %loop.step.127, align 8
  store i64 %counter.load160, ptr %var._163, align 8
  store i64 %counter.load160, ptr %var.j, align 8
  store i64 %loop.rel.i162, ptr %var._i164, align 8
  %var.load165 = load ptr, ptr %var.dirs, align 8
  %a.load166 = load ptr, ptr %var.dirs, align 8
  %a.null167 = icmp eq ptr %a.load166, null
  br i1 %a.null167, label %a.create168, label %a.after169

loop.exit.nat.127:                                ; preds = %loop.header.127
  br label %loop.exit.127

loop.latch.127:                                   ; preds = %choice.exit195
  %step.val358 = load i64, ptr %loop.step.127, align 8
  %loop.next359 = add i64 %counter.load160, %step.val358
  store i64 %loop.next359, ptr %loop.idx.127, align 8
  br label %loop.header.127

loop.exit.127:                                    ; preds = %loop.exit.nat.127
  br label %loop.latch.126

a.create168:                                      ; preds = %loop.body.127
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

a.after169:                                       ; preds = %a.create168, %loop.body.127
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
  store i64 694, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 17, ptr %err.col.gep, align 8
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
  store i64 694, ptr %err.line.gep187, align 8
  %err.col.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 4
  store i64 17, ptr %err.col.gep188, align 8
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
  %ram.tag193 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag193, label %choice.then194, label %choice.exit195

choice.then194:                                   ; preds = %a.rd.done
  %ram.pay196 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay196 to ptr
  store ptr %pay.ptr, ptr %var._197, align 8
  store ptr %pay.ptr, ptr %var.left, align 8
  %var.load198 = load ptr, ptr %var.dirs, align 8
  %a.load199 = load ptr, ptr %var.dirs, align 8
  %a.null200 = icmp eq ptr %a.load199, null
  br i1 %a.null200, label %a.create201, label %a.after202

choice.exit195:                                   ; preds = %choice.exit255, %a.rd.done
  br label %loop.latch.127

a.create201:                                      ; preds = %choice.then194
  %arena.cur203 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 24)
  %arena.cur205 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 128)
  %a.len.gep207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create204, i32 0, i32 0
  store i64 0, ptr %a.len.gep207, align 8
  %a.data.gep208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create204, i32 0, i32 1
  store ptr %a.buf206, ptr %a.data.gep208, align 8
  %a.cap.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create204, i32 0, i32 2
  store i64 16, ptr %a.cap.gep209, align 8
  store ptr %a.create204, ptr %var.dirs, align 8
  br label %a.after202

a.after202:                                       ; preds = %a.create201, %choice.then194
  %a.load2210 = load ptr, ptr %var.dirs, align 8
  %var.load211 = load i64, ptr %var.j, align 8
  %addtmp = add i64 %var.load211, 1
  %a.rd.nonnull212 = icmp ne ptr %a.load2210, null
  br i1 %a.rd.nonnull212, label %a.rd.check213, label %a.rd.err.null215

a.rd.check213:                                    ; preds = %a.after202
  %a.rd.len218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2210, i32 0, i32 0
  %a.rd.len219 = load i64, ptr %a.rd.len218, align 8
  %a.rd.ge0220 = icmp sge i64 %addtmp, 0
  %a.rd.lt221 = icmp slt i64 %addtmp, %a.rd.len219
  %a.rd.bounds222 = and i1 %a.rd.ge0220, %a.rd.lt221
  br i1 %a.rd.bounds222, label %a.rd.ok214, label %a.rd.err.oob216

a.rd.ok214:                                       ; preds = %a.rd.check213
  %a.rd.data223 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2210, i32 0, i32 1
  %a.rd.data224 = load ptr, ptr %a.rd.data223, align 8
  %a.rd.elem.gep225 = getelementptr i64, ptr %a.rd.data224, i64 %addtmp
  %a.rd.elem226 = load i64, ptr %a.rd.elem.gep225, align 8
  br label %a.rd.done217

a.rd.err.null215:                                 ; preds = %a.after202
  %arena.cur227 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc228 = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 56)
  %err.code.gep229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc228, i32 0, i32 0
  store i64 4011, ptr %err.code.gep229, align 8
  %err.msg.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc228, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep230, align 8
  %err.file.gep231 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc228, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep231, align 8
  %err.line.gep232 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc228, i32 0, i32 3
  store i64 696, ptr %err.line.gep232, align 8
  %err.col.gep233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc228, i32 0, i32 4
  store i64 27, ptr %err.col.gep233, align 8
  %err.ctx.gep234 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc228, i32 0, i32 5
  %err.ctx0.gep235 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep234, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep235, align 8
  %err.ctx1.gep236 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep234, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep236, align 8
  %err.p2i237 = ptrtoint ptr %err.alloc228 to i64
  br label %a.rd.done217

a.rd.err.oob216:                                  ; preds = %a.rd.check213
  %arena.cur238 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 56)
  %err.code.gep240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc239, i32 0, i32 0
  store i64 4011, ptr %err.code.gep240, align 8
  %err.msg.gep241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc239, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep241, align 8
  %err.file.gep242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc239, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep242, align 8
  %err.line.gep243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc239, i32 0, i32 3
  store i64 696, ptr %err.line.gep243, align 8
  %err.col.gep244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc239, i32 0, i32 4
  store i64 27, ptr %err.col.gep244, align 8
  %err.ctx.gep245 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc239, i32 0, i32 5
  %err.ctx0.gep246 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep245, i32 0, i32 0
  store i64 %addtmp, ptr %err.ctx0.gep246, align 8
  %err.ctx1.gep247 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep245, i32 0, i32 1
  store i64 %a.rd.len219, ptr %err.ctx1.gep247, align 8
  %err.p2i248 = ptrtoint ptr %err.alloc239 to i64
  br label %a.rd.done217

a.rd.done217:                                     ; preds = %a.rd.err.oob216, %a.rd.err.null215, %a.rd.ok214
  %a.rd.tag249 = phi i1 [ true, %a.rd.ok214 ], [ false, %a.rd.err.null215 ], [ false, %a.rd.err.oob216 ]
  %a.rd.pay250 = phi i64 [ %a.rd.elem226, %a.rd.ok214 ], [ %err.p2i237, %a.rd.err.null215 ], [ %err.p2i248, %a.rd.err.oob216 ]
  %ram.tag251 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag249, 0
  %ram.pay252 = insertvalue { i1, i64 } %ram.tag251, i64 %a.rd.pay250, 1
  %ram.tag253 = extractvalue { i1, i64 } %ram.pay252, 0
  br i1 %ram.tag253, label %choice.then254, label %choice.exit255

choice.then254:                                   ; preds = %a.rd.done217
  %ram.pay256 = extractvalue { i1, i64 } %ram.pay252, 1
  %pay.ptr257 = inttoptr i64 %ram.pay256 to ptr
  store ptr %pay.ptr257, ptr %var._258, align 8
  store ptr %pay.ptr257, ptr %var.right, align 8
  %var.load259 = load ptr, ptr %var.left, align 8
  %var.load260 = load ptr, ptr %var.right, align 8
  %var.load261 = load i64, ptr %var.sort_mode, align 8
  %var.load262 = load i1, ptr %var.sort_rev, align 1
  %call.res263 = call i64 @"fs::cmp_entries"(ptr %var.load259, ptr %var.load260, i64 %var.load261, i1 %var.load262)
  %cmptmp264 = icmp sgt i64 %call.res263, 0
  br i1 %cmptmp264, label %choice.then265, label %choice.exit266

choice.exit255:                                   ; preds = %choice.exit266, %a.rd.done217
  br label %choice.exit195

choice.then265:                                   ; preds = %choice.then254
  %var.load267 = load ptr, ptr %var.dirs, align 8
  %a.load268 = load ptr, ptr %var.dirs, align 8
  %a.null269 = icmp eq ptr %a.load268, null
  br i1 %a.null269, label %a.create270, label %a.after271

choice.exit266:                                   ; preds = %a.wr.done328, %choice.then254
  br label %choice.exit255

a.create270:                                      ; preds = %choice.then265
  %arena.cur272 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create273 = call ptr @dva_arena_alloc(ptr %arena.cur272, i64 24)
  %arena.cur274 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 128)
  %a.len.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create273, i32 0, i32 0
  store i64 0, ptr %a.len.gep276, align 8
  %a.data.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create273, i32 0, i32 1
  store ptr %a.buf275, ptr %a.data.gep277, align 8
  %a.cap.gep278 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create273, i32 0, i32 2
  store i64 16, ptr %a.cap.gep278, align 8
  store ptr %a.create273, ptr %var.dirs, align 8
  br label %a.after271

a.after271:                                       ; preds = %a.create270, %choice.then265
  %a.load2279 = load ptr, ptr %var.dirs, align 8
  %var.load280 = load i64, ptr %var.j, align 8
  %var.load281 = load ptr, ptr %var.right, align 8
  %slot.p2i282 = ptrtoint ptr %var.load281 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2279, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after271
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2279, i32 0, i32 0
  %a.wr.len283 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load280, 0
  %a.wr.lt = icmp slt i64 %var.load280, %a.wr.len283
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2279, i32 0, i32 1
  %a.wr.data284 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep285 = getelementptr i64, ptr %a.wr.data284, i64 %var.load280
  store i64 %slot.p2i282, ptr %a.elem.gep285, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after271
  %arena.cur286 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc287 = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 56)
  %err.code.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 0
  store i64 4011, ptr %err.code.gep288, align 8
  %err.msg.gep289 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep289, align 8
  %err.file.gep290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep290, align 8
  %err.line.gep291 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 3
  store i64 0, ptr %err.line.gep291, align 8
  %err.col.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 4
  store i64 0, ptr %err.col.gep292, align 8
  %err.ctx.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc287, i32 0, i32 5
  %err.ctx0.gep294 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep293, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep294, align 8
  %err.ctx1.gep295 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep293, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep295, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur296 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 56)
  %err.code.gep298 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 0
  store i64 4011, ptr %err.code.gep298, align 8
  %err.msg.gep299 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep299, align 8
  %err.file.gep300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep300, align 8
  %err.line.gep301 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 3
  store i64 0, ptr %err.line.gep301, align 8
  %err.col.gep302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 4
  store i64 0, ptr %err.col.gep302, align 8
  %err.ctx.gep303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc297, i32 0, i32 5
  %err.ctx0.gep304 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep303, i32 0, i32 0
  store i64 %var.load280, ptr %err.ctx0.gep304, align 8
  %err.ctx1.gep305 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep303, i32 0, i32 1
  store i64 %a.wr.len283, ptr %err.ctx1.gep305, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc287, %a.wr.err.null ], [ %err.alloc297, %a.wr.err.oob ]
  %var.load306 = load ptr, ptr %var.dirs, align 8
  %a.load307 = load ptr, ptr %var.dirs, align 8
  %a.null308 = icmp eq ptr %a.load307, null
  br i1 %a.null308, label %a.create309, label %a.after310

a.create309:                                      ; preds = %a.wr.done
  %arena.cur311 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 24)
  %arena.cur313 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf314 = call ptr @dva_arena_alloc(ptr %arena.cur313, i64 128)
  %a.len.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create312, i32 0, i32 0
  store i64 0, ptr %a.len.gep315, align 8
  %a.data.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create312, i32 0, i32 1
  store ptr %a.buf314, ptr %a.data.gep316, align 8
  %a.cap.gep317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create312, i32 0, i32 2
  store i64 16, ptr %a.cap.gep317, align 8
  store ptr %a.create312, ptr %var.dirs, align 8
  br label %a.after310

a.after310:                                       ; preds = %a.create309, %a.wr.done
  %a.load2318 = load ptr, ptr %var.dirs, align 8
  %var.load319 = load i64, ptr %var.j, align 8
  %addtmp320 = add i64 %var.load319, 1
  %var.load321 = load ptr, ptr %var.left, align 8
  %slot.p2i322 = ptrtoint ptr %var.load321 to i64
  %a.wr.nonnull323 = icmp ne ptr %a.load2318, null
  br i1 %a.wr.nonnull323, label %a.wr.check324, label %a.wr.err.null326

a.wr.check324:                                    ; preds = %a.after310
  %a.wr.len329 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2318, i32 0, i32 0
  %a.wr.len330 = load i64, ptr %a.wr.len329, align 8
  %a.wr.ge0331 = icmp sge i64 %addtmp320, 0
  %a.wr.lt332 = icmp slt i64 %addtmp320, %a.wr.len330
  %a.wr.bounds333 = and i1 %a.wr.ge0331, %a.wr.lt332
  br i1 %a.wr.bounds333, label %a.wr.ok325, label %a.wr.err.oob327

a.wr.ok325:                                       ; preds = %a.wr.check324
  %a.wr.data334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2318, i32 0, i32 1
  %a.wr.data335 = load ptr, ptr %a.wr.data334, align 8
  %a.elem.gep336 = getelementptr i64, ptr %a.wr.data335, i64 %addtmp320
  store i64 %slot.p2i322, ptr %a.elem.gep336, align 8
  br label %a.wr.done328

a.wr.err.null326:                                 ; preds = %a.after310
  %arena.cur337 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc338 = call ptr @dva_arena_alloc(ptr %arena.cur337, i64 56)
  %err.code.gep339 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc338, i32 0, i32 0
  store i64 4011, ptr %err.code.gep339, align 8
  %err.msg.gep340 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc338, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep340, align 8
  %err.file.gep341 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc338, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep341, align 8
  %err.line.gep342 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc338, i32 0, i32 3
  store i64 0, ptr %err.line.gep342, align 8
  %err.col.gep343 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc338, i32 0, i32 4
  store i64 0, ptr %err.col.gep343, align 8
  %err.ctx.gep344 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc338, i32 0, i32 5
  %err.ctx0.gep345 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep344, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep345, align 8
  %err.ctx1.gep346 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep344, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep346, align 8
  br label %a.wr.done328

a.wr.err.oob327:                                  ; preds = %a.wr.check324
  %arena.cur347 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 56)
  %err.code.gep349 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc348, i32 0, i32 0
  store i64 4011, ptr %err.code.gep349, align 8
  %err.msg.gep350 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc348, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep350, align 8
  %err.file.gep351 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc348, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep351, align 8
  %err.line.gep352 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc348, i32 0, i32 3
  store i64 0, ptr %err.line.gep352, align 8
  %err.col.gep353 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc348, i32 0, i32 4
  store i64 0, ptr %err.col.gep353, align 8
  %err.ctx.gep354 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc348, i32 0, i32 5
  %err.ctx0.gep355 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep354, i32 0, i32 0
  store i64 %addtmp320, ptr %err.ctx0.gep355, align 8
  %err.ctx1.gep356 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep354, i32 0, i32 1
  store i64 %a.wr.len330, ptr %err.ctx1.gep356, align 8
  br label %a.wr.done328

a.wr.done328:                                     ; preds = %a.wr.err.oob327, %a.wr.err.null326, %a.wr.ok325
  %a.wr.niche357 = phi ptr [ null, %a.wr.ok325 ], [ %err.alloc338, %a.wr.err.null326 ], [ %err.alloc348, %a.wr.err.oob327 ]
  br label %choice.exit266

a.create365:                                      ; preds = %loop.exit.126
  %arena.cur367 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 24)
  %arena.cur369 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 128)
  %a.len.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create368, i32 0, i32 0
  store i64 0, ptr %a.len.gep371, align 8
  %a.data.gep372 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create368, i32 0, i32 1
  store ptr %a.buf370, ptr %a.data.gep372, align 8
  %a.cap.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create368, i32 0, i32 2
  store i64 16, ptr %a.cap.gep373, align 8
  store ptr %a.create368, ptr %var.file_list, align 8
  br label %a.after366

a.after366:                                       ; preds = %a.create365, %loop.exit.126
  %a.load2374 = load ptr, ptr %var.file_list, align 8
  %a.len.query375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2374, i32 0, i32 0
  %a.len.query376 = load i64, ptr %a.len.query375, align 8
  store i64 %a.len.query376, ptr %var.nf, align 8
  %var.load377 = load i64, ptr %var.nf, align 8
  store i64 0, ptr %loop.idx.128, align 8
  br label %loop.header.128

loop.header.128:                                  ; preds = %loop.latch.128, %a.after366
  %counter.load378 = load i64, ptr %loop.idx.128, align 8
  %loop.cond379 = icmp slt i64 %counter.load378, %var.load377
  br i1 %loop.cond379, label %loop.body.128, label %loop.exit.nat.128

loop.body.128:                                    ; preds = %loop.header.128
  %loop.rel.i380 = sub i64 %counter.load378, 0
  store i64 1, ptr %loop.step.128, align 8
  store i64 %counter.load378, ptr %var._381, align 8
  store i64 %counter.load378, ptr %var.i382, align 8
  store i64 %loop.rel.i380, ptr %var._i383, align 8
  %var.load384 = load i64, ptr %var.nf, align 8
  %subtmp385 = sub i64 %var.load384, 1
  store i64 0, ptr %loop.idx.129, align 8
  br label %loop.header.129

loop.exit.nat.128:                                ; preds = %loop.header.128
  br label %loop.exit.128

loop.latch.128:                                   ; preds = %loop.exit.129
  %step.val630 = load i64, ptr %loop.step.128, align 8
  %loop.next631 = add i64 %counter.load378, %step.val630
  store i64 %loop.next631, ptr %loop.idx.128, align 8
  br label %loop.header.128

loop.exit.128:                                    ; preds = %loop.exit.nat.128
  %var.load632 = load ptr, ptr %var.dirs, align 8
  %a.load633 = load ptr, ptr %var.dirs, align 8
  %a.null634 = icmp eq ptr %a.load633, null
  br i1 %a.null634, label %a.create635, label %a.after636

loop.header.129:                                  ; preds = %loop.latch.129, %loop.body.128
  %counter.load386 = load i64, ptr %loop.idx.129, align 8
  %loop.cond387 = icmp slt i64 %counter.load386, %subtmp385
  br i1 %loop.cond387, label %loop.body.129, label %loop.exit.nat.129

loop.body.129:                                    ; preds = %loop.header.129
  %loop.rel.i388 = sub i64 %counter.load386, 0
  store i64 1, ptr %loop.step.129, align 8
  store i64 %counter.load386, ptr %var._389, align 8
  store i64 %counter.load386, ptr %var.j390, align 8
  store i64 %loop.rel.i388, ptr %var._i391, align 8
  %var.load392 = load ptr, ptr %var.file_list, align 8
  %a.load393 = load ptr, ptr %var.file_list, align 8
  %a.null394 = icmp eq ptr %a.load393, null
  br i1 %a.null394, label %a.create395, label %a.after396

loop.exit.nat.129:                                ; preds = %loop.header.129
  br label %loop.exit.129

loop.latch.129:                                   ; preds = %choice.exit449
  %step.val628 = load i64, ptr %loop.step.129, align 8
  %loop.next629 = add i64 %counter.load386, %step.val628
  store i64 %loop.next629, ptr %loop.idx.129, align 8
  br label %loop.header.129

loop.exit.129:                                    ; preds = %loop.exit.nat.129
  br label %loop.latch.128

a.create395:                                      ; preds = %loop.body.129
  %arena.cur397 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create398 = call ptr @dva_arena_alloc(ptr %arena.cur397, i64 24)
  %arena.cur399 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf400 = call ptr @dva_arena_alloc(ptr %arena.cur399, i64 128)
  %a.len.gep401 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create398, i32 0, i32 0
  store i64 0, ptr %a.len.gep401, align 8
  %a.data.gep402 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create398, i32 0, i32 1
  store ptr %a.buf400, ptr %a.data.gep402, align 8
  %a.cap.gep403 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create398, i32 0, i32 2
  store i64 16, ptr %a.cap.gep403, align 8
  store ptr %a.create398, ptr %var.file_list, align 8
  br label %a.after396

a.after396:                                       ; preds = %a.create395, %loop.body.129
  %a.load2404 = load ptr, ptr %var.file_list, align 8
  %var.load405 = load i64, ptr %var.j390, align 8
  %a.rd.nonnull406 = icmp ne ptr %a.load2404, null
  br i1 %a.rd.nonnull406, label %a.rd.check407, label %a.rd.err.null409

a.rd.check407:                                    ; preds = %a.after396
  %a.rd.len412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2404, i32 0, i32 0
  %a.rd.len413 = load i64, ptr %a.rd.len412, align 8
  %a.rd.ge0414 = icmp sge i64 %var.load405, 0
  %a.rd.lt415 = icmp slt i64 %var.load405, %a.rd.len413
  %a.rd.bounds416 = and i1 %a.rd.ge0414, %a.rd.lt415
  br i1 %a.rd.bounds416, label %a.rd.ok408, label %a.rd.err.oob410

a.rd.ok408:                                       ; preds = %a.rd.check407
  %a.rd.data417 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2404, i32 0, i32 1
  %a.rd.data418 = load ptr, ptr %a.rd.data417, align 8
  %a.rd.elem.gep419 = getelementptr i64, ptr %a.rd.data418, i64 %var.load405
  %a.rd.elem420 = load i64, ptr %a.rd.elem.gep419, align 8
  br label %a.rd.done411

a.rd.err.null409:                                 ; preds = %a.after396
  %arena.cur421 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc422 = call ptr @dva_arena_alloc(ptr %arena.cur421, i64 56)
  %err.code.gep423 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc422, i32 0, i32 0
  store i64 4011, ptr %err.code.gep423, align 8
  %err.msg.gep424 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc422, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep424, align 8
  %err.file.gep425 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc422, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep425, align 8
  %err.line.gep426 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc422, i32 0, i32 3
  store i64 707, ptr %err.line.gep426, align 8
  %err.col.gep427 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc422, i32 0, i32 4
  store i64 22, ptr %err.col.gep427, align 8
  %err.ctx.gep428 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc422, i32 0, i32 5
  %err.ctx0.gep429 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep428, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep429, align 8
  %err.ctx1.gep430 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep428, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep430, align 8
  %err.p2i431 = ptrtoint ptr %err.alloc422 to i64
  br label %a.rd.done411

a.rd.err.oob410:                                  ; preds = %a.rd.check407
  %arena.cur432 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc433 = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 56)
  %err.code.gep434 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc433, i32 0, i32 0
  store i64 4011, ptr %err.code.gep434, align 8
  %err.msg.gep435 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc433, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep435, align 8
  %err.file.gep436 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc433, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep436, align 8
  %err.line.gep437 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc433, i32 0, i32 3
  store i64 707, ptr %err.line.gep437, align 8
  %err.col.gep438 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc433, i32 0, i32 4
  store i64 22, ptr %err.col.gep438, align 8
  %err.ctx.gep439 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc433, i32 0, i32 5
  %err.ctx0.gep440 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep439, i32 0, i32 0
  store i64 %var.load405, ptr %err.ctx0.gep440, align 8
  %err.ctx1.gep441 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep439, i32 0, i32 1
  store i64 %a.rd.len413, ptr %err.ctx1.gep441, align 8
  %err.p2i442 = ptrtoint ptr %err.alloc433 to i64
  br label %a.rd.done411

a.rd.done411:                                     ; preds = %a.rd.err.oob410, %a.rd.err.null409, %a.rd.ok408
  %a.rd.tag443 = phi i1 [ true, %a.rd.ok408 ], [ false, %a.rd.err.null409 ], [ false, %a.rd.err.oob410 ]
  %a.rd.pay444 = phi i64 [ %a.rd.elem420, %a.rd.ok408 ], [ %err.p2i431, %a.rd.err.null409 ], [ %err.p2i442, %a.rd.err.oob410 ]
  %ram.tag445 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag443, 0
  %ram.pay446 = insertvalue { i1, i64 } %ram.tag445, i64 %a.rd.pay444, 1
  %ram.tag447 = extractvalue { i1, i64 } %ram.pay446, 0
  br i1 %ram.tag447, label %choice.then448, label %choice.exit449

choice.then448:                                   ; preds = %a.rd.done411
  %ram.pay450 = extractvalue { i1, i64 } %ram.pay446, 1
  %pay.ptr451 = inttoptr i64 %ram.pay450 to ptr
  store ptr %pay.ptr451, ptr %var._452, align 8
  store ptr %pay.ptr451, ptr %var.left453, align 8
  %var.load454 = load ptr, ptr %var.file_list, align 8
  %a.load455 = load ptr, ptr %var.file_list, align 8
  %a.null456 = icmp eq ptr %a.load455, null
  br i1 %a.null456, label %a.create457, label %a.after458

choice.exit449:                                   ; preds = %choice.exit512, %a.rd.done411
  br label %loop.latch.129

a.create457:                                      ; preds = %choice.then448
  %arena.cur459 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create460 = call ptr @dva_arena_alloc(ptr %arena.cur459, i64 24)
  %arena.cur461 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf462 = call ptr @dva_arena_alloc(ptr %arena.cur461, i64 128)
  %a.len.gep463 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create460, i32 0, i32 0
  store i64 0, ptr %a.len.gep463, align 8
  %a.data.gep464 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create460, i32 0, i32 1
  store ptr %a.buf462, ptr %a.data.gep464, align 8
  %a.cap.gep465 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create460, i32 0, i32 2
  store i64 16, ptr %a.cap.gep465, align 8
  store ptr %a.create460, ptr %var.file_list, align 8
  br label %a.after458

a.after458:                                       ; preds = %a.create457, %choice.then448
  %a.load2466 = load ptr, ptr %var.file_list, align 8
  %var.load467 = load i64, ptr %var.j390, align 8
  %addtmp468 = add i64 %var.load467, 1
  %a.rd.nonnull469 = icmp ne ptr %a.load2466, null
  br i1 %a.rd.nonnull469, label %a.rd.check470, label %a.rd.err.null472

a.rd.check470:                                    ; preds = %a.after458
  %a.rd.len475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2466, i32 0, i32 0
  %a.rd.len476 = load i64, ptr %a.rd.len475, align 8
  %a.rd.ge0477 = icmp sge i64 %addtmp468, 0
  %a.rd.lt478 = icmp slt i64 %addtmp468, %a.rd.len476
  %a.rd.bounds479 = and i1 %a.rd.ge0477, %a.rd.lt478
  br i1 %a.rd.bounds479, label %a.rd.ok471, label %a.rd.err.oob473

a.rd.ok471:                                       ; preds = %a.rd.check470
  %a.rd.data480 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2466, i32 0, i32 1
  %a.rd.data481 = load ptr, ptr %a.rd.data480, align 8
  %a.rd.elem.gep482 = getelementptr i64, ptr %a.rd.data481, i64 %addtmp468
  %a.rd.elem483 = load i64, ptr %a.rd.elem.gep482, align 8
  br label %a.rd.done474

a.rd.err.null472:                                 ; preds = %a.after458
  %arena.cur484 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc485 = call ptr @dva_arena_alloc(ptr %arena.cur484, i64 56)
  %err.code.gep486 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 0
  store i64 4011, ptr %err.code.gep486, align 8
  %err.msg.gep487 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep487, align 8
  %err.file.gep488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep488, align 8
  %err.line.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 3
  store i64 709, ptr %err.line.gep489, align 8
  %err.col.gep490 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 4
  store i64 32, ptr %err.col.gep490, align 8
  %err.ctx.gep491 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc485, i32 0, i32 5
  %err.ctx0.gep492 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep491, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep492, align 8
  %err.ctx1.gep493 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep491, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep493, align 8
  %err.p2i494 = ptrtoint ptr %err.alloc485 to i64
  br label %a.rd.done474

a.rd.err.oob473:                                  ; preds = %a.rd.check470
  %arena.cur495 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc496 = call ptr @dva_arena_alloc(ptr %arena.cur495, i64 56)
  %err.code.gep497 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 0
  store i64 4011, ptr %err.code.gep497, align 8
  %err.msg.gep498 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep498, align 8
  %err.file.gep499 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep499, align 8
  %err.line.gep500 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 3
  store i64 709, ptr %err.line.gep500, align 8
  %err.col.gep501 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 4
  store i64 32, ptr %err.col.gep501, align 8
  %err.ctx.gep502 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc496, i32 0, i32 5
  %err.ctx0.gep503 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep502, i32 0, i32 0
  store i64 %addtmp468, ptr %err.ctx0.gep503, align 8
  %err.ctx1.gep504 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep502, i32 0, i32 1
  store i64 %a.rd.len476, ptr %err.ctx1.gep504, align 8
  %err.p2i505 = ptrtoint ptr %err.alloc496 to i64
  br label %a.rd.done474

a.rd.done474:                                     ; preds = %a.rd.err.oob473, %a.rd.err.null472, %a.rd.ok471
  %a.rd.tag506 = phi i1 [ true, %a.rd.ok471 ], [ false, %a.rd.err.null472 ], [ false, %a.rd.err.oob473 ]
  %a.rd.pay507 = phi i64 [ %a.rd.elem483, %a.rd.ok471 ], [ %err.p2i494, %a.rd.err.null472 ], [ %err.p2i505, %a.rd.err.oob473 ]
  %ram.tag508 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag506, 0
  %ram.pay509 = insertvalue { i1, i64 } %ram.tag508, i64 %a.rd.pay507, 1
  %ram.tag510 = extractvalue { i1, i64 } %ram.pay509, 0
  br i1 %ram.tag510, label %choice.then511, label %choice.exit512

choice.then511:                                   ; preds = %a.rd.done474
  %ram.pay513 = extractvalue { i1, i64 } %ram.pay509, 1
  %pay.ptr514 = inttoptr i64 %ram.pay513 to ptr
  store ptr %pay.ptr514, ptr %var._515, align 8
  store ptr %pay.ptr514, ptr %var.right516, align 8
  %var.load517 = load ptr, ptr %var.left453, align 8
  %var.load518 = load ptr, ptr %var.right516, align 8
  %var.load519 = load i64, ptr %var.sort_mode, align 8
  %var.load520 = load i1, ptr %var.sort_rev, align 1
  %call.res521 = call i64 @"fs::cmp_entries"(ptr %var.load517, ptr %var.load518, i64 %var.load519, i1 %var.load520)
  %cmptmp522 = icmp sgt i64 %call.res521, 0
  br i1 %cmptmp522, label %choice.then523, label %choice.exit524

choice.exit512:                                   ; preds = %choice.exit524, %a.rd.done474
  br label %choice.exit449

choice.then523:                                   ; preds = %choice.then511
  %var.load525 = load ptr, ptr %var.file_list, align 8
  %a.load526 = load ptr, ptr %var.file_list, align 8
  %a.null527 = icmp eq ptr %a.load526, null
  br i1 %a.null527, label %a.create528, label %a.after529

choice.exit524:                                   ; preds = %a.wr.done598, %choice.then511
  br label %choice.exit512

a.create528:                                      ; preds = %choice.then523
  %arena.cur530 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create531 = call ptr @dva_arena_alloc(ptr %arena.cur530, i64 24)
  %arena.cur532 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf533 = call ptr @dva_arena_alloc(ptr %arena.cur532, i64 128)
  %a.len.gep534 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create531, i32 0, i32 0
  store i64 0, ptr %a.len.gep534, align 8
  %a.data.gep535 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create531, i32 0, i32 1
  store ptr %a.buf533, ptr %a.data.gep535, align 8
  %a.cap.gep536 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create531, i32 0, i32 2
  store i64 16, ptr %a.cap.gep536, align 8
  store ptr %a.create531, ptr %var.file_list, align 8
  br label %a.after529

a.after529:                                       ; preds = %a.create528, %choice.then523
  %a.load2537 = load ptr, ptr %var.file_list, align 8
  %var.load538 = load i64, ptr %var.j390, align 8
  %var.load539 = load ptr, ptr %var.right516, align 8
  %slot.p2i540 = ptrtoint ptr %var.load539 to i64
  %a.wr.nonnull541 = icmp ne ptr %a.load2537, null
  br i1 %a.wr.nonnull541, label %a.wr.check542, label %a.wr.err.null544

a.wr.check542:                                    ; preds = %a.after529
  %a.wr.len547 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2537, i32 0, i32 0
  %a.wr.len548 = load i64, ptr %a.wr.len547, align 8
  %a.wr.ge0549 = icmp sge i64 %var.load538, 0
  %a.wr.lt550 = icmp slt i64 %var.load538, %a.wr.len548
  %a.wr.bounds551 = and i1 %a.wr.ge0549, %a.wr.lt550
  br i1 %a.wr.bounds551, label %a.wr.ok543, label %a.wr.err.oob545

a.wr.ok543:                                       ; preds = %a.wr.check542
  %a.wr.data552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2537, i32 0, i32 1
  %a.wr.data553 = load ptr, ptr %a.wr.data552, align 8
  %a.elem.gep554 = getelementptr i64, ptr %a.wr.data553, i64 %var.load538
  store i64 %slot.p2i540, ptr %a.elem.gep554, align 8
  br label %a.wr.done546

a.wr.err.null544:                                 ; preds = %a.after529
  %arena.cur555 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc556 = call ptr @dva_arena_alloc(ptr %arena.cur555, i64 56)
  %err.code.gep557 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc556, i32 0, i32 0
  store i64 4011, ptr %err.code.gep557, align 8
  %err.msg.gep558 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc556, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep558, align 8
  %err.file.gep559 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc556, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep559, align 8
  %err.line.gep560 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc556, i32 0, i32 3
  store i64 0, ptr %err.line.gep560, align 8
  %err.col.gep561 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc556, i32 0, i32 4
  store i64 0, ptr %err.col.gep561, align 8
  %err.ctx.gep562 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc556, i32 0, i32 5
  %err.ctx0.gep563 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep562, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep563, align 8
  %err.ctx1.gep564 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep562, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep564, align 8
  br label %a.wr.done546

a.wr.err.oob545:                                  ; preds = %a.wr.check542
  %arena.cur565 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc566 = call ptr @dva_arena_alloc(ptr %arena.cur565, i64 56)
  %err.code.gep567 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc566, i32 0, i32 0
  store i64 4011, ptr %err.code.gep567, align 8
  %err.msg.gep568 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc566, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep568, align 8
  %err.file.gep569 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc566, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep569, align 8
  %err.line.gep570 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc566, i32 0, i32 3
  store i64 0, ptr %err.line.gep570, align 8
  %err.col.gep571 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc566, i32 0, i32 4
  store i64 0, ptr %err.col.gep571, align 8
  %err.ctx.gep572 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc566, i32 0, i32 5
  %err.ctx0.gep573 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep572, i32 0, i32 0
  store i64 %var.load538, ptr %err.ctx0.gep573, align 8
  %err.ctx1.gep574 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep572, i32 0, i32 1
  store i64 %a.wr.len548, ptr %err.ctx1.gep574, align 8
  br label %a.wr.done546

a.wr.done546:                                     ; preds = %a.wr.err.oob545, %a.wr.err.null544, %a.wr.ok543
  %a.wr.niche575 = phi ptr [ null, %a.wr.ok543 ], [ %err.alloc556, %a.wr.err.null544 ], [ %err.alloc566, %a.wr.err.oob545 ]
  %var.load576 = load ptr, ptr %var.file_list, align 8
  %a.load577 = load ptr, ptr %var.file_list, align 8
  %a.null578 = icmp eq ptr %a.load577, null
  br i1 %a.null578, label %a.create579, label %a.after580

a.create579:                                      ; preds = %a.wr.done546
  %arena.cur581 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create582 = call ptr @dva_arena_alloc(ptr %arena.cur581, i64 24)
  %arena.cur583 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf584 = call ptr @dva_arena_alloc(ptr %arena.cur583, i64 128)
  %a.len.gep585 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create582, i32 0, i32 0
  store i64 0, ptr %a.len.gep585, align 8
  %a.data.gep586 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create582, i32 0, i32 1
  store ptr %a.buf584, ptr %a.data.gep586, align 8
  %a.cap.gep587 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create582, i32 0, i32 2
  store i64 16, ptr %a.cap.gep587, align 8
  store ptr %a.create582, ptr %var.file_list, align 8
  br label %a.after580

a.after580:                                       ; preds = %a.create579, %a.wr.done546
  %a.load2588 = load ptr, ptr %var.file_list, align 8
  %var.load589 = load i64, ptr %var.j390, align 8
  %addtmp590 = add i64 %var.load589, 1
  %var.load591 = load ptr, ptr %var.left453, align 8
  %slot.p2i592 = ptrtoint ptr %var.load591 to i64
  %a.wr.nonnull593 = icmp ne ptr %a.load2588, null
  br i1 %a.wr.nonnull593, label %a.wr.check594, label %a.wr.err.null596

a.wr.check594:                                    ; preds = %a.after580
  %a.wr.len599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2588, i32 0, i32 0
  %a.wr.len600 = load i64, ptr %a.wr.len599, align 8
  %a.wr.ge0601 = icmp sge i64 %addtmp590, 0
  %a.wr.lt602 = icmp slt i64 %addtmp590, %a.wr.len600
  %a.wr.bounds603 = and i1 %a.wr.ge0601, %a.wr.lt602
  br i1 %a.wr.bounds603, label %a.wr.ok595, label %a.wr.err.oob597

a.wr.ok595:                                       ; preds = %a.wr.check594
  %a.wr.data604 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2588, i32 0, i32 1
  %a.wr.data605 = load ptr, ptr %a.wr.data604, align 8
  %a.elem.gep606 = getelementptr i64, ptr %a.wr.data605, i64 %addtmp590
  store i64 %slot.p2i592, ptr %a.elem.gep606, align 8
  br label %a.wr.done598

a.wr.err.null596:                                 ; preds = %a.after580
  %arena.cur607 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc608 = call ptr @dva_arena_alloc(ptr %arena.cur607, i64 56)
  %err.code.gep609 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc608, i32 0, i32 0
  store i64 4011, ptr %err.code.gep609, align 8
  %err.msg.gep610 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc608, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep610, align 8
  %err.file.gep611 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc608, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep611, align 8
  %err.line.gep612 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc608, i32 0, i32 3
  store i64 0, ptr %err.line.gep612, align 8
  %err.col.gep613 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc608, i32 0, i32 4
  store i64 0, ptr %err.col.gep613, align 8
  %err.ctx.gep614 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc608, i32 0, i32 5
  %err.ctx0.gep615 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep614, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep615, align 8
  %err.ctx1.gep616 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep614, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep616, align 8
  br label %a.wr.done598

a.wr.err.oob597:                                  ; preds = %a.wr.check594
  %arena.cur617 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc618 = call ptr @dva_arena_alloc(ptr %arena.cur617, i64 56)
  %err.code.gep619 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 0
  store i64 4011, ptr %err.code.gep619, align 8
  %err.msg.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep620, align 8
  %err.file.gep621 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep621, align 8
  %err.line.gep622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 3
  store i64 0, ptr %err.line.gep622, align 8
  %err.col.gep623 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 4
  store i64 0, ptr %err.col.gep623, align 8
  %err.ctx.gep624 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc618, i32 0, i32 5
  %err.ctx0.gep625 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep624, i32 0, i32 0
  store i64 %addtmp590, ptr %err.ctx0.gep625, align 8
  %err.ctx1.gep626 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep624, i32 0, i32 1
  store i64 %a.wr.len600, ptr %err.ctx1.gep626, align 8
  br label %a.wr.done598

a.wr.done598:                                     ; preds = %a.wr.err.oob597, %a.wr.err.null596, %a.wr.ok595
  %a.wr.niche627 = phi ptr [ null, %a.wr.ok595 ], [ %err.alloc608, %a.wr.err.null596 ], [ %err.alloc618, %a.wr.err.oob597 ]
  br label %choice.exit524

a.create635:                                      ; preds = %loop.exit.128
  %arena.cur637 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create638 = call ptr @dva_arena_alloc(ptr %arena.cur637, i64 24)
  %arena.cur639 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf640 = call ptr @dva_arena_alloc(ptr %arena.cur639, i64 128)
  %a.len.gep641 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create638, i32 0, i32 0
  store i64 0, ptr %a.len.gep641, align 8
  %a.data.gep642 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create638, i32 0, i32 1
  store ptr %a.buf640, ptr %a.data.gep642, align 8
  %a.cap.gep643 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create638, i32 0, i32 2
  store i64 16, ptr %a.cap.gep643, align 8
  store ptr %a.create638, ptr %var.dirs, align 8
  br label %a.after636

a.after636:                                       ; preds = %a.create635, %loop.exit.128
  %a.load2644 = load ptr, ptr %var.dirs, align 8
  %arr.cycle.len645 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2644, i32 0, i32 0
  %arr.cycle.len646 = load i64, ptr %arr.cycle.len645, align 8
  %arr.cycle.data647 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2644, i32 0, i32 1
  %arr.cycle.data648 = load ptr, ptr %arr.cycle.data647, align 8
  store i64 0, ptr %loop.idx.130, align 8
  br label %loop.header.130

loop.header.130:                                  ; preds = %loop.latch.130, %a.after636
  %counter.load649 = load i64, ptr %loop.idx.130, align 8
  %loop.cond650 = icmp slt i64 %counter.load649, %arr.cycle.len646
  br i1 %loop.cond650, label %loop.body.130, label %loop.exit.nat.130

loop.body.130:                                    ; preds = %loop.header.130
  %loop.rel.i651 = sub i64 %counter.load649, 0
  store i64 1, ptr %loop.step.130, align 8
  %arr.elem.gep652 = getelementptr i64, ptr %arr.cycle.data648, i64 %counter.load649
  %arr.elem.raw653 = load i64, ptr %arr.elem.gep652, align 8
  %slot.i2p654 = inttoptr i64 %arr.elem.raw653 to ptr
  store ptr %slot.i2p654, ptr %var._655, align 8
  store ptr %slot.i2p654, ptr %var.dir_item, align 8
  store i64 %loop.rel.i651, ptr %var._i656, align 8
  %var.load657 = load ptr, ptr %var.dir_item, align 8
  %a.load658 = load ptr, ptr %var.res, align 8
  %a.null659 = icmp eq ptr %a.load658, null
  br i1 %a.null659, label %a.create660, label %a.after661

loop.exit.nat.130:                                ; preds = %loop.header.130
  br label %loop.exit.130

loop.latch.130:                                   ; preds = %a.store672
  %step.val686 = load i64, ptr %loop.step.130, align 8
  %loop.next687 = add i64 %counter.load649, %step.val686
  store i64 %loop.next687, ptr %loop.idx.130, align 8
  br label %loop.header.130

loop.exit.130:                                    ; preds = %loop.exit.nat.130
  %var.load688 = load ptr, ptr %var.file_list, align 8
  %a.load689 = load ptr, ptr %var.file_list, align 8
  %a.null690 = icmp eq ptr %a.load689, null
  br i1 %a.null690, label %a.create691, label %a.after692

a.create660:                                      ; preds = %loop.body.130
  %arena.cur662 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create663 = call ptr @dva_arena_alloc(ptr %arena.cur662, i64 24)
  %arena.cur664 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf665 = call ptr @dva_arena_alloc(ptr %arena.cur664, i64 128)
  %a.len.gep666 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create663, i32 0, i32 0
  store i64 0, ptr %a.len.gep666, align 8
  %a.data.gep667 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create663, i32 0, i32 1
  store ptr %a.buf665, ptr %a.data.gep667, align 8
  %a.cap.gep668 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create663, i32 0, i32 2
  store i64 16, ptr %a.cap.gep668, align 8
  store ptr %a.create663, ptr %var.res, align 8
  br label %a.after661

a.after661:                                       ; preds = %a.create660, %loop.body.130
  %a.load2669 = load ptr, ptr %var.res, align 8
  br label %a.check670

a.check670:                                       ; preds = %a.after661
  %a.len673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2669, i32 0, i32 0
  %a.len674 = load i64, ptr %a.len673, align 8
  %a.cap675 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2669, i32 0, i32 2
  %a.cap676 = load i64, ptr %a.cap675, align 8
  %a.needs.grow677 = icmp eq i64 %a.len674, %a.cap676
  br i1 %a.needs.grow677, label %a.grow671, label %a.store672

a.grow671:                                        ; preds = %a.check670
  call void @dva_array_grow(ptr %a.load2669)
  br label %a.store672

a.store672:                                       ; preds = %a.grow671, %a.check670
  %a.cur.data678 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2669, i32 0, i32 1
  %a.cur.data679 = load ptr, ptr %a.cur.data678, align 8
  %a.cur.len680 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2669, i32 0, i32 0
  %a.cur.len681 = load i64, ptr %a.cur.len680, align 8
  %a.elem.gep682 = getelementptr i64, ptr %a.cur.data679, i64 %a.cur.len681
  %slot.p2i683 = ptrtoint ptr %var.load657 to i64
  store i64 %slot.p2i683, ptr %a.elem.gep682, align 8
  %a.next.len684 = add i64 %a.cur.len681, 1
  %b.len.gep685 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2669, i32 0, i32 0
  store i64 %a.next.len684, ptr %b.len.gep685, align 8
  br label %loop.latch.130

a.create691:                                      ; preds = %loop.exit.130
  %arena.cur693 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create694 = call ptr @dva_arena_alloc(ptr %arena.cur693, i64 24)
  %arena.cur695 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf696 = call ptr @dva_arena_alloc(ptr %arena.cur695, i64 128)
  %a.len.gep697 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create694, i32 0, i32 0
  store i64 0, ptr %a.len.gep697, align 8
  %a.data.gep698 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create694, i32 0, i32 1
  store ptr %a.buf696, ptr %a.data.gep698, align 8
  %a.cap.gep699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create694, i32 0, i32 2
  store i64 16, ptr %a.cap.gep699, align 8
  store ptr %a.create694, ptr %var.file_list, align 8
  br label %a.after692

a.after692:                                       ; preds = %a.create691, %loop.exit.130
  %a.load2700 = load ptr, ptr %var.file_list, align 8
  %arr.cycle.len701 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2700, i32 0, i32 0
  %arr.cycle.len702 = load i64, ptr %arr.cycle.len701, align 8
  %arr.cycle.data703 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2700, i32 0, i32 1
  %arr.cycle.data704 = load ptr, ptr %arr.cycle.data703, align 8
  store i64 0, ptr %loop.idx.131, align 8
  br label %loop.header.131

loop.header.131:                                  ; preds = %loop.latch.131, %a.after692
  %counter.load705 = load i64, ptr %loop.idx.131, align 8
  %loop.cond706 = icmp slt i64 %counter.load705, %arr.cycle.len702
  br i1 %loop.cond706, label %loop.body.131, label %loop.exit.nat.131

loop.body.131:                                    ; preds = %loop.header.131
  %loop.rel.i707 = sub i64 %counter.load705, 0
  store i64 1, ptr %loop.step.131, align 8
  %arr.elem.gep708 = getelementptr i64, ptr %arr.cycle.data704, i64 %counter.load705
  %arr.elem.raw709 = load i64, ptr %arr.elem.gep708, align 8
  %slot.i2p710 = inttoptr i64 %arr.elem.raw709 to ptr
  store ptr %slot.i2p710, ptr %var._711, align 8
  store ptr %slot.i2p710, ptr %var.file_item, align 8
  store i64 %loop.rel.i707, ptr %var._i712, align 8
  %var.load713 = load ptr, ptr %var.file_item, align 8
  %a.load714 = load ptr, ptr %var.res, align 8
  %a.null715 = icmp eq ptr %a.load714, null
  br i1 %a.null715, label %a.create716, label %a.after717

loop.exit.nat.131:                                ; preds = %loop.header.131
  br label %loop.exit.131

loop.latch.131:                                   ; preds = %a.store728
  %step.val742 = load i64, ptr %loop.step.131, align 8
  %loop.next743 = add i64 %counter.load705, %step.val742
  store i64 %loop.next743, ptr %loop.idx.131, align 8
  br label %loop.header.131

loop.exit.131:                                    ; preds = %loop.exit.nat.131
  %var.load744 = load ptr, ptr %var.res, align 8
  %a.load745 = load ptr, ptr %var.res, align 8
  %a.null746 = icmp eq ptr %a.load745, null
  br i1 %a.null746, label %a.create747, label %a.after748

a.create716:                                      ; preds = %loop.body.131
  %arena.cur718 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create719 = call ptr @dva_arena_alloc(ptr %arena.cur718, i64 24)
  %arena.cur720 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf721 = call ptr @dva_arena_alloc(ptr %arena.cur720, i64 128)
  %a.len.gep722 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create719, i32 0, i32 0
  store i64 0, ptr %a.len.gep722, align 8
  %a.data.gep723 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create719, i32 0, i32 1
  store ptr %a.buf721, ptr %a.data.gep723, align 8
  %a.cap.gep724 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create719, i32 0, i32 2
  store i64 16, ptr %a.cap.gep724, align 8
  store ptr %a.create719, ptr %var.res, align 8
  br label %a.after717

a.after717:                                       ; preds = %a.create716, %loop.body.131
  %a.load2725 = load ptr, ptr %var.res, align 8
  br label %a.check726

a.check726:                                       ; preds = %a.after717
  %a.len729 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2725, i32 0, i32 0
  %a.len730 = load i64, ptr %a.len729, align 8
  %a.cap731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2725, i32 0, i32 2
  %a.cap732 = load i64, ptr %a.cap731, align 8
  %a.needs.grow733 = icmp eq i64 %a.len730, %a.cap732
  br i1 %a.needs.grow733, label %a.grow727, label %a.store728

a.grow727:                                        ; preds = %a.check726
  call void @dva_array_grow(ptr %a.load2725)
  br label %a.store728

a.store728:                                       ; preds = %a.grow727, %a.check726
  %a.cur.data734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2725, i32 0, i32 1
  %a.cur.data735 = load ptr, ptr %a.cur.data734, align 8
  %a.cur.len736 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2725, i32 0, i32 0
  %a.cur.len737 = load i64, ptr %a.cur.len736, align 8
  %a.elem.gep738 = getelementptr i64, ptr %a.cur.data735, i64 %a.cur.len737
  %slot.p2i739 = ptrtoint ptr %var.load713 to i64
  store i64 %slot.p2i739, ptr %a.elem.gep738, align 8
  %a.next.len740 = add i64 %a.cur.len737, 1
  %b.len.gep741 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2725, i32 0, i32 0
  store i64 %a.next.len740, ptr %b.len.gep741, align 8
  br label %loop.latch.131

a.create747:                                      ; preds = %loop.exit.131
  %arena.cur749 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create750 = call ptr @dva_arena_alloc(ptr %arena.cur749, i64 24)
  %arena.cur751 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf752 = call ptr @dva_arena_alloc(ptr %arena.cur751, i64 128)
  %a.len.gep753 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create750, i32 0, i32 0
  store i64 0, ptr %a.len.gep753, align 8
  %a.data.gep754 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create750, i32 0, i32 1
  store ptr %a.buf752, ptr %a.data.gep754, align 8
  %a.cap.gep755 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create750, i32 0, i32 2
  store i64 16, ptr %a.cap.gep755, align 8
  store ptr %a.create750, ptr %var.res, align 8
  br label %a.after748

a.after748:                                       ; preds = %a.create747, %loop.exit.131
  %a.load2756 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2756
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline "nounwind" }
