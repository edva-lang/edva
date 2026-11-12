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
@"var.io::STDIN" = external global i64
@"var.io::STDOUT" = external global i64
@"var.io::STDERR" = external global i64
@"var.io::EOF" = external global i64
@"var.io::EINTR" = external global i64
@"var.io::EBADF" = external global i64
@"var.io::EAGAIN" = external global i64
@"var.io::EWOULDBLOCK" = external global i64
@clo.const = internal constant { ptr, ptr } { ptr @"ccl::doc_new", ptr null }
@"var.ccl::doc_new" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"ccl::entry_new_str", ptr null }
@"var.ccl::entry_new_str" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"ccl::entry_new_block", ptr null }
@"var.ccl::entry_new_block" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"ccl::is_space", ptr null }
@"var.ccl::is_space" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"ccl::trim_left_idx", ptr null }
@"var.ccl::trim_left_idx" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"ccl::trim_right_idx", ptr null }
@"var.ccl::trim_right_idx" = global ptr null
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"ccl::trim_str", ptr null }
@"var.ccl::trim_str" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"ccl::find_char_idx", ptr null }
@"var.ccl::find_char_idx" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"ccl::find_first_eq", ptr null }
@"var.ccl::find_first_eq" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@str.1 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.1 }
@str.2 = internal unnamed_addr constant [8 x i8] c"ccl.dva\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.2 }
@str.3 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.3 }
@dva_thread_rec = external thread_local global ptr
@clo.const.9 = internal constant { ptr, ptr } { ptr @"ccl::sort_strings", ptr null }
@"var.ccl::sort_strings" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"ccl::ccl_error", ptr null }
@"var.ccl::ccl_error" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"ccl::has", ptr null }
@"var.ccl::has" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"ccl::count", ptr null }
@"var.ccl::count" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"ccl::get_entry", ptr null }
@"var.ccl::get_entry" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"ccl::get", ptr null }
@"var.ccl::get" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"ccl::get_section", ptr null }
@"var.ccl::get_section" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"ccl::get_list", ptr null }
@"var.ccl::get_list" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"ccl::entries_for", ptr null }
@"var.ccl::entries_for" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"ccl::split_raw_lines", ptr null }
@"var.ccl::split_raw_lines" = global ptr null
@str.4 = internal unnamed_addr constant [3 x i8] c"/=\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.4 }
@str.5 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.5 }
@str.6 = internal unnamed_addr constant [33 x i8] c"syntax error: line missing '=': \00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.6 }
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.19 = internal constant { ptr, ptr } { ptr @"ccl::parse_block_from", ptr null }
@"var.ccl::parse_block_from" = global ptr null
@str.7 = internal unnamed_addr constant [32 x i8] c"syntax error: unexpected dedent\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.7 }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"ccl::parse", ptr null }
@"var.ccl::parse" = global ptr null
@str.8 = internal unnamed_addr constant [19 x i8] c"cannot open file: \00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 18, ptr @str.8 }
@str.9 = internal unnamed_addr constant [19 x i8] c"cannot read file: \00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 18, ptr @str.9 }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"ccl::parse_file", ptr null }
@"var.ccl::parse_file" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"ccl::has_newline", ptr null }
@"var.ccl::has_newline" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"ccl::append_multiline_str", ptr null }
@"var.ccl::append_multiline_str" = global ptr null
@str.10 = internal unnamed_addr constant [4 x i8] c"/= \00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.10 }
@str.11 = internal unnamed_addr constant [2 x i8] c"=\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.11 }
@str.12 = internal unnamed_addr constant [3 x i8] c"= \00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.12 }
@str.13 = internal unnamed_addr constant [3 x i8] c" =\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.13 }
@str.14 = internal unnamed_addr constant [4 x i8] c" = \00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.14 }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"ccl::serialize_doc_indent", ptr null }
@"var.ccl::serialize_doc_indent" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"ccl::to_ccl", ptr null }
@"var.ccl::to_ccl" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"ccl::first_non_comment_entry", ptr null }
@"var.ccl::first_non_comment_entry" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"ccl::non_comment_entries", ptr null }
@"var.ccl::non_comment_entries" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_ccl, ptr null }]

declare ptr @dva_arena_current()

declare ptr @dva_arena_set_current(ptr)

declare ptr @malloc(i64)

declare void @free(ptr)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

declare void @dva_arena_init(ptr, i64)

declare ptr @dva_arena_alloc(ptr, i64)

declare void @dva_arena_destroy(ptr)

declare i64 @dva_arena_save(ptr)

declare void @dva_arena_restore(ptr, i64)

declare i1 @dva_arena_validate_tag(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_ccl() #1 {
entry:
  store ptr @clo.const, ptr @"var.ccl::doc_new", align 8
  store ptr @clo.const.1, ptr @"var.ccl::entry_new_str", align 8
  store ptr @clo.const.2, ptr @"var.ccl::entry_new_block", align 8
  store ptr @clo.const.3, ptr @"var.ccl::is_space", align 8
  store ptr @clo.const.4, ptr @"var.ccl::trim_left_idx", align 8
  store ptr @clo.const.5, ptr @"var.ccl::trim_right_idx", align 8
  store ptr @clo.const.6, ptr @"var.ccl::trim_str", align 8
  store ptr @clo.const.7, ptr @"var.ccl::find_char_idx", align 8
  store ptr @clo.const.8, ptr @"var.ccl::find_first_eq", align 8
  store ptr @clo.const.9, ptr @"var.ccl::sort_strings", align 8
  store ptr @clo.const.10, ptr @"var.ccl::ccl_error", align 8
  store ptr @clo.const.11, ptr @"var.ccl::has", align 8
  store ptr @clo.const.12, ptr @"var.ccl::count", align 8
  store ptr @clo.const.13, ptr @"var.ccl::get_entry", align 8
  store ptr @clo.const.14, ptr @"var.ccl::get", align 8
  store ptr @clo.const.15, ptr @"var.ccl::get_section", align 8
  store ptr @clo.const.16, ptr @"var.ccl::get_list", align 8
  store ptr @clo.const.17, ptr @"var.ccl::entries_for", align 8
  store ptr @clo.const.18, ptr @"var.ccl::split_raw_lines", align 8
  store ptr @clo.const.19, ptr @"var.ccl::parse_block_from", align 8
  store ptr @clo.const.20, ptr @"var.ccl::parse", align 8
  store ptr @clo.const.21, ptr @"var.ccl::parse_file", align 8
  store ptr @clo.const.22, ptr @"var.ccl::has_newline", align 8
  store ptr @clo.const.23, ptr @"var.ccl::append_multiline_str", align 8
  store ptr @clo.const.24, ptr @"var.ccl::serialize_doc_indent", align 8
  store ptr @clo.const.25, ptr @"var.ccl::to_ccl", align 8
  store ptr @clo.const.26, ptr @"var.ccl::first_non_comment_entry", align 8
  store ptr @clo.const.27, ptr @"var.ccl::non_comment_entries", align 8
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

declare void @exit(i32)

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

declare i64 @strlen(ptr)

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

define ptr @"ccl::doc_new"() #1 {
entry:
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
  ret ptr %a.new
}

define ptr @"ccl::entry_new_str"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.k = alloca ptr, align 8
  store ptr %0, ptr %var.k, align 8
  store ptr %1, ptr %var.s, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.k, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1 = load ptr, ptr %var.s, align 8
  store ptr %var.load1, ptr %pay.gep, align 8
  %var.load2 = load i64, ptr %var.line, align 8
  %var.load3 = load i64, ptr %var.col, align 8
  %arena.cur4 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load2, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load3, ptr %rec.fld7, align 8
  ret ptr %rec.alloc
}

define ptr @"ccl::entry_new_block"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.doc = alloca ptr, align 8
  %var.k = alloca ptr, align 8
  store ptr %0, ptr %var.k, align 8
  store ptr %1, ptr %var.doc, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.k, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1 = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  store ptr %a.load2, ptr %pay.gep, align 8
  %var.load5 = load i64, ptr %var.line, align 8
  %var.load6 = load i64, ptr %var.col, align 8
  %arena.cur7 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load5, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load6, ptr %rec.fld10, align 8
  ret ptr %rec.alloc
}

define i1 @"ccl::is_space"(i64 %0) #1 {
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

define i64 @"ccl::trim_left_idx"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
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
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.81.then, label %and.81.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.81.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.81.else:                                      ; preds = %str_ok
  br label %and.81.exit

and.81.exit:                                      ; preds = %and.81.else, %idx_ok
  %and.81.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.81.else ]
  br i1 %and.81.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.81.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.81.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ccl::is_space"(i64 %s.byte.val)
  br label %and.81.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.81.exit
  %var.load16 = load ptr, ptr %var.s, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load17, 1
  %call.res18 = call i64 @"ccl::trim_left_idx"(ptr %var.load16, i64 %addtmp)
  br label %choice.exit

choice.else:                                      ; preds = %and.81.exit
  %var.load19 = load i64, ptr %var.i, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %call.res18, %choice.then ], [ %var.load19, %choice.else ]
  ret i64 %choice.res
}

define i64 @"ccl::trim_right_idx"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %cmptmp = icmp sgt i64 %var.load, 0
  br i1 %cmptmp, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %s.read.len2 = load i64, ptr %s.read.len, align 8
  %s.read.len3 = and i64 %s.read.len2, 281474976710655
  %str.tag = lshr i64 %s.read.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.82.else:                                      ; preds = %entry
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %choice.exit
  %and.82.phi = phi i1 [ %choice.res, %choice.exit ], [ %cmptmp, %and.82.else ]
  br i1 %and.82.phi, label %choice.then, label %choice.else

str_gen_check:                                    ; preds = %and.82.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.82.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %s.read.data4 = load ptr, ptr %s.read.data, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load5, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %subtmp, %s.read.len3
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data4, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 32
  %val.match6 = icmp eq i64 %s.byte.val, 9
  %case.or = or i1 %val.match, %val.match6
  %val.match7 = icmp eq i64 %s.byte.val, 13
  %case.or8 = or i1 %case.or, %val.match7
  %val.match9 = icmp eq i64 %s.byte.val, 10
  %case.or10 = or i1 %case.or8, %val.match9
  br i1 %case.or10, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.82.exit

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit

choice.then:                                      ; preds = %and.82.exit
  %var.load12 = load ptr, ptr %var.s, align 8
  %var.load13 = load i64, ptr %var.i, align 8
  %subtmp14 = sub i64 %var.load13, 1
  %call.res = call i64 @"ccl::trim_right_idx"(ptr %var.load12, i64 %subtmp14)
  br label %choice.exit11

choice.else:                                      ; preds = %and.82.exit
  %var.load15 = load i64, ptr %var.i, align 8
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else, %choice.then
  %choice.res16 = phi i64 [ %call.res, %choice.then ], [ %var.load15, %choice.else ]
  ret i64 %choice.res16
}

define ptr @"ccl::trim_str"(ptr %0) #1 {
entry:
  %var.end = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
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
  ret ptr @str.0.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %call.res = call i64 @"ccl::trim_left_idx"(ptr %var.load4, i64 0)
  store i64 %call.res, ptr %var.start, align 8
  %var.load5 = load i64, ptr %var.start, align 8
  %var.load6 = load i64, ptr %var.len, align 8
  %cmptmp7 = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp7, label %choice.then8, label %choice.exit9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then8:                                     ; preds = %choice.exit
  ret ptr @str.0.struct

choice.exit9:                                     ; preds = %ret.dead10, %choice.exit
  %var.load11 = load ptr, ptr %var.s, align 8
  %var.load12 = load i64, ptr %var.len, align 8
  %call.res13 = call i64 @"ccl::trim_right_idx"(ptr %var.load11, i64 %var.load12)
  store i64 %call.res13, ptr %var.end, align 8
  %var.load14 = load i64, ptr %var.end, align 8
  %var.load15 = load i64, ptr %var.start, align 8
  %cmptmp16 = icmp sle i64 %var.load14, %var.load15
  br i1 %cmptmp16, label %choice.then17, label %choice.else

ret.dead10:                                       ; No predecessors!
  br label %choice.exit9

choice.then17:                                    ; preds = %choice.exit9
  br label %choice.exit18

choice.else:                                      ; preds = %choice.exit9
  %var.load19 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %str.tag22 = lshr i64 %s.read.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

choice.exit18:                                    ; preds = %str_ok25, %choice.then17
  %choice.res = phi ptr [ @str.0.struct, %choice.then17 ], [ %str.view, %str_ok25 ]
  ret ptr %choice.res

str_gen_check24:                                  ; preds = %choice.else
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %var.load30 = load i64, ptr %var.start, align 8
  %var.load31 = load i64, ptr %var.end, align 8
  %start.is_neg = icmp slt i64 %var.load30, 0
  %rel.start = add i64 %s.read.len21, %var.load30
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load30
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len21
  %final.start = select i1 %start.gt.len, i64 %s.read.len21, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load31, 0
  %rel.end = add i64 %s.read.len21, %var.load31
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load31
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len21
  %final.end = select i1 %end.gt.len, i64 %s.read.len21, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data29, i64 %final.start
  %arena.cur32 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit18

str_stale26:                                      ; preds = %str_gen_check24
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25
}

define i64 @"ccl::find_char_idx"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.ch, align 8
  store i64 %2, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
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
  %cmptmp = icmp sge i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i64 -1

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
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
  %var.load15 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load16 = load i64, ptr %var.ch, align 8
  %cmptmp17 = icmp eq i64 %s.byte.val, %var.load16
  br i1 %cmptmp17, label %choice.then18, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then18:                                    ; preds = %idx_ok
  %var.load20 = load i64, ptr %var.i, align 8
  br label %choice.exit19

choice.else:                                      ; preds = %idx_ok
  %var.load21 = load ptr, ptr %var.s, align 8
  %var.load22 = load i64, ptr %var.ch, align 8
  %var.load23 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load23, 1
  %call.res = call i64 @"ccl::find_char_idx"(ptr %var.load21, i64 %var.load22, i64 %addtmp)
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else, %choice.then18
  %choice.res = phi i64 [ %var.load20, %choice.then18 ], [ %call.res, %choice.else ]
  ret i64 %choice.res
}

define i64 @"ccl::find_first_eq"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call i64 @"ccl::find_char_idx"(ptr %var.load, i64 61, i64 0)
  ret i64 %call.res
}

define ptr @"ccl::sort_strings"(ptr %0) #1 {
entry:
  %var._316 = alloca ptr, align 8
  %var._315 = alloca ptr, align 8
  %var._314 = alloca ptr, align 8
  %var._235 = alloca ptr, align 8
  %var._234 = alloca ptr, align 8
  %var._233 = alloca ptr, align 8
  %var.prev = alloca ptr, align 8
  %var._184 = alloca ptr, align 8
  %var._181 = alloca ptr, align 8
  %var._115 = alloca i64, align 8
  %var._i114 = alloca i64, align 8
  %loop.step.85 = alloca i64, align 8
  %loop.idx.85 = alloca i64, align 8
  %"var.j'" = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var._110 = alloca ptr, align 8
  %var._107 = alloca ptr, align 8
  %var._74 = alloca i64, align 8
  %var._i73 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.84 = alloca i64, align 8
  %loop.idx.84 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %loop.step.83 = alloca i64, align 8
  %loop.idx.83 = alloca i64, align 8
  %var._map_out_42 = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.arr = alloca ptr, align 8
  store ptr %0, ptr %var.arr, align 8
  %var.load = load ptr, ptr %var.arr, align 8
  %a.load = load ptr, ptr %var.arr, align 8
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
  store ptr %a.create1, ptr %var.arr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.arr, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load4, 2
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after
  %var.load5 = load ptr, ptr %var.arr, align 8
  %a.load6 = load ptr, ptr %var.arr, align 8
  %a.null7 = icmp eq ptr %a.load6, null
  br i1 %a.null7, label %a.create8, label %a.after9

choice.exit:                                      ; preds = %ret.dead, %a.after
  %arena.cur18 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 24)
  %arena.cur19 = call ptr @dva_arena_current()
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep21, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  store ptr %a.new, ptr %var._map_out_42, align 8
  %var.load24 = load ptr, ptr %var.arr, align 8
  %a.load25 = load ptr, ptr %var.arr, align 8
  %a.null26 = icmp eq ptr %a.load25, null
  br i1 %a.null26, label %a.create27, label %a.after28

a.create8:                                        ; preds = %choice.then
  %arena.cur10 = call ptr @dva_arena_current()
  %a.create11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 24)
  %arena.cur12 = call ptr @dva_arena_current()
  %a.buf13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  %a.len.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 0
  store i64 0, ptr %a.len.gep14, align 8
  %a.data.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 1
  store ptr %a.buf13, ptr %a.data.gep15, align 8
  %a.cap.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep16, align 8
  store ptr %a.create11, ptr %var.arr, align 8
  br label %a.after9

a.after9:                                         ; preds = %a.create8, %choice.then
  %a.load217 = load ptr, ptr %var.arr, align 8
  ret ptr %a.load217

ret.dead:                                         ; No predecessors!
  br label %choice.exit

a.create27:                                       ; preds = %choice.exit
  %arena.cur29 = call ptr @dva_arena_current()
  %a.create30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %arena.cur31 = call ptr @dva_arena_current()
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  store ptr %a.create30, ptr %var.arr, align 8
  br label %a.after28

a.after28:                                        ; preds = %a.create27, %choice.exit
  %a.load236 = load ptr, ptr %var.arr, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load236, i32 0, i32 0
  %arr.cycle.len37 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load236, i32 0, i32 1
  %arr.cycle.data38 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.83, align 8
  br label %loop.header.83

loop.header.83:                                   ; preds = %loop.latch.83, %a.after28
  %counter.load = load i64, ptr %loop.idx.83, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len37
  br i1 %loop.cond, label %loop.body.83, label %loop.exit.nat.83

loop.body.83:                                     ; preds = %loop.header.83
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.83, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data38, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.s, align 8
  %var.load39 = load ptr, ptr %var.s, align 8
  %a.load40 = load ptr, ptr %var._map_out_42, align 8
  %a.null41 = icmp eq ptr %a.load40, null
  br i1 %a.null41, label %a.create42, label %a.after43

loop.exit.nat.83:                                 ; preds = %loop.header.83
  br label %loop.exit.83

loop.latch.83:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.83, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.83, align 8
  br label %loop.header.83

loop.exit.83:                                     ; preds = %loop.exit.nat.83
  %var.load56 = load ptr, ptr %var._map_out_42, align 8
  %a.load57 = load ptr, ptr %var._map_out_42, align 8
  %a.null58 = icmp eq ptr %a.load57, null
  br i1 %a.null58, label %a.create59, label %a.after60

a.create42:                                       ; preds = %loop.body.83
  %arena.cur44 = call ptr @dva_arena_current()
  %a.create45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 24)
  %arena.cur46 = call ptr @dva_arena_current()
  %a.buf47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 128)
  %a.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 0
  store i64 0, ptr %a.len.gep48, align 8
  %a.data.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 1
  store ptr %a.buf47, ptr %a.data.gep49, align 8
  %a.cap.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 2
  store i64 16, ptr %a.cap.gep50, align 8
  store ptr %a.create45, ptr %var._map_out_42, align 8
  br label %a.after43

a.after43:                                        ; preds = %a.create42, %loop.body.83
  %a.load251 = load ptr, ptr %var._map_out_42, align 8
  br label %a.check

a.check:                                          ; preds = %a.after43
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 0
  %a.len52 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 2
  %a.cap53 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len52, %a.cap53
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load251)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 1
  %a.cur.data54 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 0
  %a.cur.len55 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data54, i64 %a.cur.len55
  %slot.p2i = ptrtoint ptr %var.load39 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len55, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.83

a.create59:                                       ; preds = %loop.exit.83
  %arena.cur61 = call ptr @dva_arena_current()
  %a.create62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 24)
  %arena.cur63 = call ptr @dva_arena_current()
  %a.buf64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 128)
  %a.len.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 0
  store i64 0, ptr %a.len.gep65, align 8
  %a.data.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 1
  store ptr %a.buf64, ptr %a.data.gep66, align 8
  %a.cap.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 2
  store i64 16, ptr %a.cap.gep67, align 8
  store ptr %a.create62, ptr %var._map_out_42, align 8
  br label %a.after60

a.after60:                                        ; preds = %a.create59, %loop.exit.83
  %a.load268 = load ptr, ptr %var._map_out_42, align 8
  store ptr %a.load268, ptr %var.out, align 8
  %var.load69 = load i64, ptr %var.n, align 8
  store i64 1, ptr %loop.idx.84, align 8
  br label %loop.header.84

loop.header.84:                                   ; preds = %loop.latch.84, %a.after60
  %counter.load70 = load i64, ptr %loop.idx.84, align 8
  %loop.cond71 = icmp slt i64 %counter.load70, %var.load69
  br i1 %loop.cond71, label %loop.body.84, label %loop.exit.nat.84

loop.body.84:                                     ; preds = %loop.header.84
  %loop.rel.i72 = sub i64 %counter.load70, 1
  store i64 1, ptr %loop.step.84, align 8
  store i64 %loop.rel.i72, ptr %var._i73, align 8
  store i64 %counter.load70, ptr %var._74, align 8
  store i64 %counter.load70, ptr %var.i, align 8
  %var.load75 = load ptr, ptr %var.out, align 8
  %a.load76 = load ptr, ptr %var.out, align 8
  %a.null77 = icmp eq ptr %a.load76, null
  br i1 %a.null77, label %a.create78, label %a.after79

loop.exit.nat.84:                                 ; preds = %loop.header.84
  br label %loop.exit.84

loop.latch.84:                                    ; preds = %choice.exit313
  %step.val361 = load i64, ptr %loop.step.84, align 8
  %loop.next362 = add i64 %counter.load70, %step.val361
  store i64 %loop.next362, ptr %loop.idx.84, align 8
  br label %loop.header.84

loop.exit.84:                                     ; preds = %loop.exit.nat.84
  %var.load363 = load ptr, ptr %var.out, align 8
  %a.load364 = load ptr, ptr %var.out, align 8
  %a.null365 = icmp eq ptr %a.load364, null
  br i1 %a.null365, label %a.create366, label %a.after367

a.create78:                                       ; preds = %loop.body.84
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
  store ptr %a.create81, ptr %var.out, align 8
  br label %a.after79

a.after79:                                        ; preds = %a.create78, %loop.body.84
  %a.load287 = load ptr, ptr %var.out, align 8
  %var.load88 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load287, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after79
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load287, i32 0, i32 0
  %a.rd.len89 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load88, 0
  %a.rd.lt = icmp slt i64 %var.load88, %a.rd.len89
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load287, i32 0, i32 1
  %a.rd.data90 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data90, i64 %var.load88
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after79
  %arena.cur91 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 86, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 20, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur92 = call ptr @dva_arena_current()
  %err.alloc93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 56)
  %err.code.gep94 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc93, i32 0, i32 0
  store i64 4011, ptr %err.code.gep94, align 8
  %err.msg.gep95 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc93, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep95, align 8
  %err.file.gep96 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc93, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep96, align 8
  %err.line.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc93, i32 0, i32 3
  store i64 86, ptr %err.line.gep97, align 8
  %err.col.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc93, i32 0, i32 4
  store i64 20, ptr %err.col.gep98, align 8
  %err.ctx.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc93, i32 0, i32 5
  %err.ctx0.gep100 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep99, i32 0, i32 0
  store i64 %var.load88, ptr %err.ctx0.gep100, align 8
  %err.ctx1.gep101 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep99, i32 0, i32 1
  store i64 %a.rd.len89, ptr %err.ctx1.gep101, align 8
  %err.p2i102 = ptrtoint ptr %err.alloc93 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i102, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag103 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag103, label %choice.then104, label %choice.else

choice.then104:                                   ; preds = %a.rd.done
  %ram.pay106 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay106 to ptr
  store ptr %pay.ptr, ptr %var._107, align 8
  br label %choice.exit105

choice.else:                                      ; preds = %a.rd.done
  %ram.pay108 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr109 = inttoptr i64 %ram.pay108 to ptr
  store ptr %pay.ptr109, ptr %var._110, align 8
  br label %choice.exit105

choice.exit105:                                   ; preds = %choice.else, %choice.then104
  %choice.res = phi ptr [ %pay.ptr, %choice.then104 ], [ @str.0.struct, %choice.else ]
  store ptr %choice.res, ptr %var.key, align 8
  %var.load111 = load i64, ptr %var.i, align 8
  store i64 %var.load111, ptr %"var.j'", align 8
  store i64 0, ptr %loop.idx.85, align 8
  %cycle.prev.u = load i64, ptr %var._74, align 8
  %cycle.prev.i = load i64, ptr %var._i73, align 8
  br label %loop.header.85

loop.header.85:                                   ; preds = %loop.latch.85, %choice.exit105
  %counter.load112 = load i64, ptr %loop.idx.85, align 8
  br label %loop.body.85

loop.body.85:                                     ; preds = %loop.header.85
  %loop.rel.i113 = sub i64 %counter.load112, 0
  store i64 1, ptr %loop.step.85, align 8
  store i64 %loop.rel.i113, ptr %var._i114, align 8
  store i64 %counter.load112, ptr %var._115, align 8
  %var.load116 = load i64, ptr %"var.j'", align 8
  %cmptmp117 = icmp sle i64 %var.load116, 0
  br i1 %cmptmp117, label %choice.then118, label %choice.exit119

loop.exit.nat.85:                                 ; No predecessors!
  br label %loop.exit.85

loop.latch.85:                                    ; preds = %choice.exit232
  %step.val257 = load i64, ptr %loop.step.85, align 8
  %loop.next258 = add i64 %counter.load112, %step.val257
  store i64 %loop.next258, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %choice.then189, %choice.then118, %loop.exit.nat.85
  store i64 %cycle.prev.u, ptr %var._74, align 8
  store i64 %cycle.prev.i, ptr %var._i73, align 8
  %var.load259 = load ptr, ptr %var.out, align 8
  %a.load260 = load ptr, ptr %var.out, align 8
  %a.null261 = icmp eq ptr %a.load260, null
  br i1 %a.null261, label %a.create262, label %a.after263

choice.then118:                                   ; preds = %loop.body.85
  br label %loop.exit.85

choice.exit119:                                   ; preds = %loop.body.85
  %var.load120 = load ptr, ptr %var.out, align 8
  %a.load121 = load ptr, ptr %var.out, align 8
  %a.null122 = icmp eq ptr %a.load121, null
  br i1 %a.null122, label %a.create123, label %a.after124

a.create123:                                      ; preds = %choice.exit119
  %arena.cur125 = call ptr @dva_arena_current()
  %a.create126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 24)
  %arena.cur127 = call ptr @dva_arena_current()
  %a.buf128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 128)
  %a.len.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 0
  store i64 0, ptr %a.len.gep129, align 8
  %a.data.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 1
  store ptr %a.buf128, ptr %a.data.gep130, align 8
  %a.cap.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 2
  store i64 16, ptr %a.cap.gep131, align 8
  store ptr %a.create126, ptr %var.out, align 8
  br label %a.after124

a.after124:                                       ; preds = %a.create123, %choice.exit119
  %a.load2132 = load ptr, ptr %var.out, align 8
  %var.load133 = load i64, ptr %"var.j'", align 8
  %subtmp = sub i64 %var.load133, 1
  %a.rd.nonnull134 = icmp ne ptr %a.load2132, null
  br i1 %a.rd.nonnull134, label %a.rd.check135, label %a.rd.err.null137

a.rd.check135:                                    ; preds = %a.after124
  %a.rd.len140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 0
  %a.rd.len141 = load i64, ptr %a.rd.len140, align 8
  %a.rd.ge0142 = icmp sge i64 %subtmp, 0
  %a.rd.lt143 = icmp slt i64 %subtmp, %a.rd.len141
  %a.rd.bounds144 = and i1 %a.rd.ge0142, %a.rd.lt143
  br i1 %a.rd.bounds144, label %a.rd.ok136, label %a.rd.err.oob138

a.rd.ok136:                                       ; preds = %a.rd.check135
  %a.rd.data145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 1
  %a.rd.data146 = load ptr, ptr %a.rd.data145, align 8
  %a.rd.elem.gep147 = getelementptr i64, ptr %a.rd.data146, i64 %subtmp
  %a.rd.elem148 = load i64, ptr %a.rd.elem.gep147, align 8
  br label %a.rd.done139

a.rd.err.null137:                                 ; preds = %a.after124
  %arena.cur149 = call ptr @dva_arena_current()
  %err.alloc150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 56)
  %err.code.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 0
  store i64 4011, ptr %err.code.gep151, align 8
  %err.msg.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep152, align 8
  %err.file.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep153, align 8
  %err.line.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 3
  store i64 90, ptr %err.line.gep154, align 8
  %err.col.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 4
  store i64 29, ptr %err.col.gep155, align 8
  %err.ctx.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 5
  %err.ctx0.gep157 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep156, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep157, align 8
  %err.ctx1.gep158 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep156, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep158, align 8
  %err.p2i159 = ptrtoint ptr %err.alloc150 to i64
  br label %a.rd.done139

a.rd.err.oob138:                                  ; preds = %a.rd.check135
  %arena.cur160 = call ptr @dva_arena_current()
  %err.alloc161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 56)
  %err.code.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 0
  store i64 4011, ptr %err.code.gep162, align 8
  %err.msg.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep163, align 8
  %err.file.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep164, align 8
  %err.line.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 3
  store i64 90, ptr %err.line.gep165, align 8
  %err.col.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 4
  store i64 29, ptr %err.col.gep166, align 8
  %err.ctx.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 5
  %err.ctx0.gep168 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep167, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep168, align 8
  %err.ctx1.gep169 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep167, i32 0, i32 1
  store i64 %a.rd.len141, ptr %err.ctx1.gep169, align 8
  %err.p2i170 = ptrtoint ptr %err.alloc161 to i64
  br label %a.rd.done139

a.rd.done139:                                     ; preds = %a.rd.err.oob138, %a.rd.err.null137, %a.rd.ok136
  %a.rd.tag171 = phi i1 [ true, %a.rd.ok136 ], [ false, %a.rd.err.null137 ], [ false, %a.rd.err.oob138 ]
  %a.rd.pay172 = phi i64 [ %a.rd.elem148, %a.rd.ok136 ], [ %err.p2i159, %a.rd.err.null137 ], [ %err.p2i170, %a.rd.err.oob138 ]
  %ram.tag173 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag171, 0
  %ram.pay174 = insertvalue { i1, i64 } %ram.tag173, i64 %a.rd.pay172, 1
  %ram.tag175 = extractvalue { i1, i64 } %ram.pay174, 0
  br i1 %ram.tag175, label %choice.then176, label %choice.else177

choice.then176:                                   ; preds = %a.rd.done139
  %ram.pay179 = extractvalue { i1, i64 } %ram.pay174, 1
  %pay.ptr180 = inttoptr i64 %ram.pay179 to ptr
  store ptr %pay.ptr180, ptr %var._181, align 8
  br label %choice.exit178

choice.else177:                                   ; preds = %a.rd.done139
  %ram.pay182 = extractvalue { i1, i64 } %ram.pay174, 1
  %pay.ptr183 = inttoptr i64 %ram.pay182 to ptr
  store ptr %pay.ptr183, ptr %var._184, align 8
  br label %choice.exit178

choice.exit178:                                   ; preds = %choice.else177, %choice.then176
  %choice.res185 = phi ptr [ %pay.ptr180, %choice.then176 ], [ @str.0.struct, %choice.else177 ]
  store ptr %choice.res185, ptr %var.prev, align 8
  %var.load186 = load ptr, ptr %var.prev, align 8
  %var.load187 = load ptr, ptr %var.key, align 8
  %call.res = call i64 @"str::cmp"(ptr %var.load186, ptr %var.load187)
  %cmptmp188 = icmp sle i64 %call.res, 0
  br i1 %cmptmp188, label %choice.then189, label %choice.exit190

choice.then189:                                   ; preds = %choice.exit178
  br label %loop.exit.85

choice.exit190:                                   ; preds = %choice.exit178
  %var.load191 = load ptr, ptr %var.out, align 8
  %a.load192 = load ptr, ptr %var.out, align 8
  %a.null193 = icmp eq ptr %a.load192, null
  br i1 %a.null193, label %a.create194, label %a.after195

a.create194:                                      ; preds = %choice.exit190
  %arena.cur196 = call ptr @dva_arena_current()
  %a.create197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 24)
  %arena.cur198 = call ptr @dva_arena_current()
  %a.buf199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 128)
  %a.len.gep200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create197, i32 0, i32 0
  store i64 0, ptr %a.len.gep200, align 8
  %a.data.gep201 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create197, i32 0, i32 1
  store ptr %a.buf199, ptr %a.data.gep201, align 8
  %a.cap.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create197, i32 0, i32 2
  store i64 16, ptr %a.cap.gep202, align 8
  store ptr %a.create197, ptr %var.out, align 8
  br label %a.after195

a.after195:                                       ; preds = %a.create194, %choice.exit190
  %a.load2203 = load ptr, ptr %var.out, align 8
  %var.load204 = load i64, ptr %"var.j'", align 8
  %var.load205 = load ptr, ptr %var.prev, align 8
  %slot.p2i206 = ptrtoint ptr %var.load205 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2203, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after195
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2203, i32 0, i32 0
  %a.wr.len207 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load204, 0
  %a.wr.lt = icmp slt i64 %var.load204, %a.wr.len207
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2203, i32 0, i32 1
  %a.wr.data208 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep209 = getelementptr i64, ptr %a.wr.data208, i64 %var.load204
  store i64 %slot.p2i206, ptr %a.elem.gep209, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after195
  %arena.cur210 = call ptr @dva_arena_current()
  %err.alloc211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 56)
  %err.code.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 0
  store i64 4011, ptr %err.code.gep212, align 8
  %err.msg.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep213, align 8
  %err.file.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep214, align 8
  %err.line.gep215 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 3
  store i64 0, ptr %err.line.gep215, align 8
  %err.col.gep216 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 4
  store i64 0, ptr %err.col.gep216, align 8
  %err.ctx.gep217 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc211, i32 0, i32 5
  %err.ctx0.gep218 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep217, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep218, align 8
  %err.ctx1.gep219 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep217, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep219, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur220 = call ptr @dva_arena_current()
  %err.alloc221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 56)
  %err.code.gep222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 0
  store i64 4011, ptr %err.code.gep222, align 8
  %err.msg.gep223 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep223, align 8
  %err.file.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep224, align 8
  %err.line.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 3
  store i64 0, ptr %err.line.gep225, align 8
  %err.col.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 4
  store i64 0, ptr %err.col.gep226, align 8
  %err.ctx.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 5
  %err.ctx0.gep228 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep227, i32 0, i32 0
  store i64 %var.load204, ptr %err.ctx0.gep228, align 8
  %err.ctx1.gep229 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep227, i32 0, i32 1
  store i64 %a.wr.len207, ptr %err.ctx1.gep229, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc211, %a.wr.err.null ], [ %err.alloc221, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then230, label %choice.else231

choice.then230:                                   ; preds = %a.wr.done
  br label %choice.exit232

choice.else231:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._233, align 8
  store ptr %a.wr.niche, ptr %var._234, align 8
  store ptr %a.wr.niche, ptr %var._235, align 8
  %err.code.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep236, align 8
  %err.msg.gep237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep237, align 8
  %err.file.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep238, align 8
  %err.line.gep239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep239, align 8
  %err.col.gep240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep240, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len241 = load i64, ptr %err.msg.len, align 8
  %err.msg.len242 = and i64 %err.msg.len241, 281474976710655
  %str.tag = lshr i64 %err.msg.len241, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit232:                                   ; preds = %err.abort, %choice.then230
  %var.load255 = load i64, ptr %"var.j'", align 8
  %subtmp256 = sub i64 %var.load255, 1
  store i64 %subtmp256, ptr %"var.j'", align 8
  br label %loop.latch.85

str_gen_check:                                    ; preds = %choice.else231
  %arena.cur243 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur243, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else231
  %err.msg.len32 = trunc i64 %err.msg.len242 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data244 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len245 = load i64, ptr %err.file.len, align 8
  %err.file.len246 = and i64 %err.file.len245, 281474976710655
  %str.tag247 = lshr i64 %err.file.len245, 48
  %str.immortal248 = icmp eq i64 %str.tag247, 0
  br i1 %str.immortal248, label %str_ok250, label %str_gen_check249

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check249:                                 ; preds = %str_ok
  %arena.cur252 = call ptr @dva_arena_current()
  %tag.valid253 = call i1 @dva_arena_validate_tag(ptr %arena.cur252, i64 %str.tag247)
  br i1 %tag.valid253, label %str_ok250, label %str_stale251

str_ok250:                                        ; preds = %str_stale251, %str_gen_check249, %str_ok
  %err.file.len32 = trunc i64 %err.file.len246 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data254 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale251:                                     ; preds = %str_gen_check249
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok250

err.thread:                                       ; preds = %str_ok250
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok250
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data244, i32 %err.file.len32, ptr %err.file.data254, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit232

a.create262:                                      ; preds = %loop.exit.85
  %arena.cur264 = call ptr @dva_arena_current()
  %a.create265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 24)
  %arena.cur266 = call ptr @dva_arena_current()
  %a.buf267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 128)
  %a.len.gep268 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create265, i32 0, i32 0
  store i64 0, ptr %a.len.gep268, align 8
  %a.data.gep269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create265, i32 0, i32 1
  store ptr %a.buf267, ptr %a.data.gep269, align 8
  %a.cap.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create265, i32 0, i32 2
  store i64 16, ptr %a.cap.gep270, align 8
  store ptr %a.create265, ptr %var.out, align 8
  br label %a.after263

a.after263:                                       ; preds = %a.create262, %loop.exit.85
  %a.load2271 = load ptr, ptr %var.out, align 8
  %var.load272 = load i64, ptr %"var.j'", align 8
  %var.load273 = load ptr, ptr %var.key, align 8
  %slot.p2i274 = ptrtoint ptr %var.load273 to i64
  %a.wr.nonnull275 = icmp ne ptr %a.load2271, null
  br i1 %a.wr.nonnull275, label %a.wr.check276, label %a.wr.err.null278

a.wr.check276:                                    ; preds = %a.after263
  %a.wr.len281 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2271, i32 0, i32 0
  %a.wr.len282 = load i64, ptr %a.wr.len281, align 8
  %a.wr.ge0283 = icmp sge i64 %var.load272, 0
  %a.wr.lt284 = icmp slt i64 %var.load272, %a.wr.len282
  %a.wr.bounds285 = and i1 %a.wr.ge0283, %a.wr.lt284
  br i1 %a.wr.bounds285, label %a.wr.ok277, label %a.wr.err.oob279

a.wr.ok277:                                       ; preds = %a.wr.check276
  %a.wr.data286 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2271, i32 0, i32 1
  %a.wr.data287 = load ptr, ptr %a.wr.data286, align 8
  %a.elem.gep288 = getelementptr i64, ptr %a.wr.data287, i64 %var.load272
  store i64 %slot.p2i274, ptr %a.elem.gep288, align 8
  br label %a.wr.done280

a.wr.err.null278:                                 ; preds = %a.after263
  %arena.cur289 = call ptr @dva_arena_current()
  %err.alloc290 = call ptr @dva_arena_alloc(ptr %arena.cur289, i64 56)
  %err.code.gep291 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 0
  store i64 4011, ptr %err.code.gep291, align 8
  %err.msg.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep292, align 8
  %err.file.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep293, align 8
  %err.line.gep294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 3
  store i64 0, ptr %err.line.gep294, align 8
  %err.col.gep295 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 4
  store i64 0, ptr %err.col.gep295, align 8
  %err.ctx.gep296 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 5
  %err.ctx0.gep297 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep296, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep297, align 8
  %err.ctx1.gep298 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep296, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep298, align 8
  br label %a.wr.done280

a.wr.err.oob279:                                  ; preds = %a.wr.check276
  %arena.cur299 = call ptr @dva_arena_current()
  %err.alloc300 = call ptr @dva_arena_alloc(ptr %arena.cur299, i64 56)
  %err.code.gep301 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 0
  store i64 4011, ptr %err.code.gep301, align 8
  %err.msg.gep302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep302, align 8
  %err.file.gep303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep303, align 8
  %err.line.gep304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 3
  store i64 0, ptr %err.line.gep304, align 8
  %err.col.gep305 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 4
  store i64 0, ptr %err.col.gep305, align 8
  %err.ctx.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc300, i32 0, i32 5
  %err.ctx0.gep307 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep306, i32 0, i32 0
  store i64 %var.load272, ptr %err.ctx0.gep307, align 8
  %err.ctx1.gep308 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep306, i32 0, i32 1
  store i64 %a.wr.len282, ptr %err.ctx1.gep308, align 8
  br label %a.wr.done280

a.wr.done280:                                     ; preds = %a.wr.err.oob279, %a.wr.err.null278, %a.wr.ok277
  %a.wr.niche309 = phi ptr [ null, %a.wr.ok277 ], [ %err.alloc290, %a.wr.err.null278 ], [ %err.alloc300, %a.wr.err.oob279 ]
  %niche.eq.null310 = icmp eq ptr %a.wr.niche309, null
  br i1 %niche.eq.null310, label %choice.then311, label %choice.else312

choice.then311:                                   ; preds = %a.wr.done280
  br label %choice.exit313

choice.else312:                                   ; preds = %a.wr.done280
  store ptr %a.wr.niche309, ptr %var._314, align 8
  store ptr %a.wr.niche309, ptr %var._315, align 8
  store ptr %a.wr.niche309, ptr %var._316, align 8
  %err.code.gep317 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche309, i32 0, i32 0
  %err.code318 = load i64, ptr %err.code.gep317, align 8
  %err.msg.gep319 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche309, i32 0, i32 1
  %err.msg.struct320 = load ptr, ptr %err.msg.gep319, align 8
  %err.file.gep321 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche309, i32 0, i32 2
  %err.file.struct322 = load ptr, ptr %err.file.gep321, align 8
  %err.line.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche309, i32 0, i32 3
  %err.line324 = load i64, ptr %err.line.gep323, align 8
  %err.col.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche309, i32 0, i32 4
  %err.col326 = load i64, ptr %err.col.gep325, align 8
  %err.msg.len327 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct320, i32 0, i32 0
  %err.msg.len328 = load i64, ptr %err.msg.len327, align 8
  %err.msg.len329 = and i64 %err.msg.len328, 281474976710655
  %str.tag330 = lshr i64 %err.msg.len328, 48
  %str.immortal331 = icmp eq i64 %str.tag330, 0
  br i1 %str.immortal331, label %str_ok333, label %str_gen_check332

choice.exit313:                                   ; preds = %err.abort360, %choice.then311
  br label %loop.latch.84

str_gen_check332:                                 ; preds = %choice.else312
  %arena.cur335 = call ptr @dva_arena_current()
  %tag.valid336 = call i1 @dva_arena_validate_tag(ptr %arena.cur335, i64 %str.tag330)
  br i1 %tag.valid336, label %str_ok333, label %str_stale334

str_ok333:                                        ; preds = %str_stale334, %str_gen_check332, %choice.else312
  %err.msg.len32337 = trunc i64 %err.msg.len329 to i32
  %err.msg.data338 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct320, i32 0, i32 1
  %err.msg.data339 = load ptr, ptr %err.msg.data338, align 8
  %err.file.len340 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct322, i32 0, i32 0
  %err.file.len341 = load i64, ptr %err.file.len340, align 8
  %err.file.len342 = and i64 %err.file.len341, 281474976710655
  %str.tag343 = lshr i64 %err.file.len341, 48
  %str.immortal344 = icmp eq i64 %str.tag343, 0
  br i1 %str.immortal344, label %str_ok346, label %str_gen_check345

str_stale334:                                     ; preds = %str_gen_check332
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok333

str_gen_check345:                                 ; preds = %str_ok333
  %arena.cur348 = call ptr @dva_arena_current()
  %tag.valid349 = call i1 @dva_arena_validate_tag(ptr %arena.cur348, i64 %str.tag343)
  br i1 %tag.valid349, label %str_ok346, label %str_stale347

str_ok346:                                        ; preds = %str_stale347, %str_gen_check345, %str_ok333
  %err.file.len32350 = trunc i64 %err.file.len342 to i32
  %err.file.data351 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct322, i32 0, i32 1
  %err.file.data352 = load ptr, ptr %err.file.data351, align 8
  %err.thread.rec353 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread354 = icmp ne ptr %err.thread.rec353, null
  br i1 %err.is.thread354, label %err.thread355, label %err.normal356

str_stale347:                                     ; preds = %str_gen_check345
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok346

err.thread355:                                    ; preds = %str_ok346
  %err.haserr.gep357 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec353, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep357, align 8
  %err.err.gep358 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec353, i32 0, i32 7
  store ptr %a.wr.niche309, ptr %err.err.gep358, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal356:                                    ; preds = %str_ok346
  %err.panic.printf359 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code318, i32 %err.msg.len32337, ptr %err.msg.data339, i32 %err.file.len32350, ptr %err.file.data352, i64 %err.line324, i64 %err.col326)
  call void @exit(i32 1)
  unreachable

err.abort360:                                     ; No predecessors!
  br label %choice.exit313

a.create366:                                      ; preds = %loop.exit.84
  %arena.cur368 = call ptr @dva_arena_current()
  %a.create369 = call ptr @dva_arena_alloc(ptr %arena.cur368, i64 24)
  %arena.cur370 = call ptr @dva_arena_current()
  %a.buf371 = call ptr @dva_arena_alloc(ptr %arena.cur370, i64 128)
  %a.len.gep372 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create369, i32 0, i32 0
  store i64 0, ptr %a.len.gep372, align 8
  %a.data.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create369, i32 0, i32 1
  store ptr %a.buf371, ptr %a.data.gep373, align 8
  %a.cap.gep374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create369, i32 0, i32 2
  store i64 16, ptr %a.cap.gep374, align 8
  store ptr %a.create369, ptr %var.out, align 8
  br label %a.after367

a.after367:                                       ; preds = %a.create366, %loop.exit.84
  %a.load2375 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2375
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i64 @"str::cmp"(ptr, ptr) #1

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define ptr @"ccl::ccl_error"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.msg = alloca ptr, align 8
  %var.file = alloca ptr, align 8
  store ptr %0, ptr %var.file, align 8
  store ptr %1, ptr %var.msg, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %var.load = load ptr, ptr %var.msg, align 8
  %var.load1 = load ptr, ptr %var.file, align 8
  %var.load2 = load i64, ptr %var.line, align 8
  %var.load3 = load i64, ptr %var.col, align 8
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 5050, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr %var.load, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr %var.load1, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 %var.load2, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 %var.load3, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur4 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld5, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  ret ptr %err.alloc
}

define i1 @"ccl::has"(ptr %0, ptr %1) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %a.after
  %counter.load = load i64, ptr %loop.idx.86, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.86, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load6 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.86:                                 ; preds = %loop.header.86
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.86, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  ret i1 false

str_gen_check:                                    ; preds = %loop.body.86
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.86
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len10 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len11 = and i64 %eq.rhs.len10, 281474976710655
  %str.tag12 = lshr i64 %eq.rhs.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check14:                                  ; preds = %str_ok
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len11
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str.eq.then:                                      ; preds = %str_ok15
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data20 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data20, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok15
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.86

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

declare i32 @memcmp(ptr, ptr, i64)

define i64 @"ccl::count"(ptr %0, ptr %1) #1 {
entry:
  %var._fold_v_63 = alloca i64, align 8
  %var._26 = alloca i64, align 8
  %var.acc = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.87 = alloca i64, align 8
  %loop.idx.87 = alloca i64, align 8
  %var._fold_acc_63 = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  store i64 0, ptr %var._fold_acc_63, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.header.87:                                   ; preds = %loop.latch.87, %a.after
  %counter.load = load i64, ptr %loop.idx.87, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.87, label %loop.exit.nat.87

loop.body.87:                                     ; preds = %loop.header.87
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.87, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load i64, ptr %var._fold_acc_63, align 8
  store i64 %var.load5, ptr %var.acc, align 8
  %var.load6 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load7 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len8 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len9 = and i64 %eq.lhs.len8, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len8, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.87:                                 ; preds = %loop.header.87
  br label %loop.exit.87

loop.latch.87:                                    ; preds = %choice.exit24
  %step.val = load i64, ptr %loop.step.87, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.exit.87:                                     ; preds = %loop.exit.nat.87
  %var.load28 = load i64, ptr %var._fold_acc_63, align 8
  ret i64 %var.load28

str_gen_check:                                    ; preds = %loop.body.87
  %arena.cur10 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur10, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.87
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %eq.rhs.len11 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len12 = and i64 %eq.rhs.len11, 281474976710655
  %str.tag13 = lshr i64 %eq.rhs.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check15:                                  ; preds = %str_ok
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len9, %eq.rhs.len12
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale17:                                      ; preds = %str_gen_check15
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

str.eq.then:                                      ; preds = %str_ok16
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data20 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %eq.rhs.data21 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data20, ptr %eq.rhs.data21, i64 %eq.lhs.len9)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok16
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load22 = load i64, ptr %var.acc, align 8
  %addtmp = add i64 %var.load22, 1
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %addtmp, 1
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ zeroinitializer, %choice.else ]
  %ram.tag = extractvalue { i1, i64 } %choice.res, 0
  br i1 %ram.tag, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %choice.exit
  %ram.pay25 = extractvalue { i1, i64 } %choice.res, 1
  store i64 %ram.pay25, ptr %var._26, align 8
  store i64 %ram.pay25, ptr %var._fold_v_63, align 8
  %var.load27 = load i64, ptr %var._fold_v_63, align 8
  store i64 %var.load27, ptr %var._fold_acc_63, align 8
  br label %choice.exit24

choice.exit24:                                    ; preds = %choice.then23, %choice.exit
  br label %loop.latch.87
}

define ptr @"ccl::get_entry"(ptr %0, ptr %1) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.88 = alloca i64, align 8
  %loop.idx.88 = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.header.88:                                   ; preds = %loop.latch.88, %a.after
  %counter.load = load i64, ptr %loop.idx.88, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.88, label %loop.exit.nat.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.88, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load6 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.88:                                 ; preds = %loop.header.88
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.88, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %loop.exit.nat.88
  ret ptr null

str_gen_check:                                    ; preds = %loop.body.88
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.88
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len10 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len11 = and i64 %eq.rhs.len10, 281474976710655
  %str.tag12 = lshr i64 %eq.rhs.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check14:                                  ; preds = %str_ok
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len11
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str.eq.then:                                      ; preds = %str_ok15
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data20 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data20, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok15
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load21 = load ptr, ptr %var.e, align 8
  ret ptr %var.load21

choice.exit:                                      ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.88

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define ptr @"ccl::get"(ptr %0, ptr %1) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var._25 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.89 = alloca i64, align 8
  %loop.idx.89 = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.header.89:                                   ; preds = %loop.latch.89, %a.after
  %counter.load = load i64, ptr %loop.idx.89, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.89, label %loop.exit.nat.89

loop.body.89:                                     ; preds = %loop.header.89
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.89, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load6 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.89:                                 ; preds = %loop.header.89
  br label %loop.exit.89

loop.latch.89:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.89, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.exit.89:                                     ; preds = %loop.exit.nat.89
  ret ptr null

str_gen_check:                                    ; preds = %loop.body.89
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.89
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len10 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len11 = and i64 %eq.rhs.len10, 281474976710655
  %str.tag12 = lshr i64 %eq.rhs.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check14:                                  ; preds = %str_ok
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len11
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str.eq.then:                                      ; preds = %str_ok15
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data20 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data20, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok15
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load21 = load ptr, ptr %var.e, align 8
  %fld.gep22 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load21, i32 0, i32 1
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit24, %str.eq.merge
  br label %loop.latch.89

choice.exit24:                                    ; preds = %choice.next, %ret.dead
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._25, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load26 = load ptr, ptr %var.s, align 8
  ret ptr %var.load26

choice.next:                                      ; preds = %choice.then
  br label %choice.exit24

ret.dead:                                         ; No predecessors!
  br label %choice.exit24
}

define { i1, i64 } @"ccl::get_section"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var._25 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.90 = alloca i64, align 8
  %loop.idx.90 = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.header.90:                                   ; preds = %loop.latch.90, %a.after
  %counter.load = load i64, ptr %loop.idx.90, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.90, label %loop.exit.nat.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.90, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load6 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.90:                                 ; preds = %loop.header.90
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.90, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %loop.exit.nat.90
  ret { i1, i64 } zeroinitializer

str_gen_check:                                    ; preds = %loop.body.90
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.90
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len10 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len11 = and i64 %eq.rhs.len10, 281474976710655
  %str.tag12 = lshr i64 %eq.rhs.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check14:                                  ; preds = %str_ok
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len11
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str.eq.then:                                      ; preds = %str_ok15
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data20 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data20, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok15
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load21 = load ptr, ptr %var.e, align 8
  %fld.gep22 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load21, i32 0, i32 1
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit24, %str.eq.merge
  br label %loop.latch.90

choice.exit24:                                    ; preds = %choice.next, %ret.dead
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._25, align 8
  store ptr %payload.ptr, ptr %var.b, align 8
  %var.load26 = load ptr, ptr %var.b, align 8
  %a.load27 = load ptr, ptr %var.b, align 8
  %a.null28 = icmp eq ptr %a.load27, null
  br i1 %a.null28, label %a.create29, label %a.after30

choice.next:                                      ; preds = %choice.then
  br label %choice.exit24

a.create29:                                       ; preds = %choice.case
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
  store ptr %a.create32, ptr %var.b, align 8
  br label %a.after30

a.after30:                                        ; preds = %a.create29, %choice.case
  %a.load238 = load ptr, ptr %var.b, align 8
  %p.to.i64 = ptrtoint ptr %a.load238 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

ret.dead:                                         ; No predecessors!
  br label %choice.exit24
}

define { i1, i64 } @"ccl::get_list"(ptr %0, ptr %1) #1 {
entry:
  %var._map_v_87 = alloca ptr, align 8
  %var._47 = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var._42 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.92 = alloca i64, align 8
  %loop.idx.92 = alloca i64, align 8
  %var._map_out_87 = alloca ptr, align 8
  %var.sec = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %var.load3 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"ccl::get_section"(ptr %a.load2, ptr %var.load3)
  %prop.is_pos = extractvalue { i1, i64 } %call.res, 0
  br i1 %prop.is_pos, label %prop.pos.91, label %prop.ret.91

prop.pos.91:                                      ; preds = %a.after
  %prop.pay.pos = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.sec, align 8
  %arena.cur4 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
  %a.buf6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep7, align 8
  %a.data.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf6, ptr %a.data.gep8, align 8
  %a.cap.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep9, align 8
  store ptr %a.new, ptr %var._map_out_87, align 8
  %var.load10 = load ptr, ptr %var.sec, align 8
  %a.load11 = load ptr, ptr %var.sec, align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

prop.ret.91:                                      ; preds = %a.after
  ret { i1, i64 } %call.res

a.create13:                                       ; preds = %prop.pos.91
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
  store ptr %a.create16, ptr %var.sec, align 8
  br label %a.after14

a.after14:                                        ; preds = %a.create13, %prop.pos.91
  %a.load222 = load ptr, ptr %var.sec, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %arr.cycle.len23 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 1
  %arr.cycle.data24 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.header.92:                                   ; preds = %loop.latch.92, %a.after14
  %counter.load = load i64, ptr %loop.idx.92, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len23
  br i1 %loop.cond, label %loop.body.92, label %loop.exit.nat.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.92, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data24, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load25 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load25, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len26 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len27 = and i64 %eq.lhs.len26, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len26, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.92:                                 ; preds = %loop.header.92
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %choice.exit46
  %step.val = load i64, ptr %loop.step.92, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %loop.exit.nat.92
  %var.load65 = load ptr, ptr %var._map_out_87, align 8
  %a.load66 = load ptr, ptr %var._map_out_87, align 8
  %a.null67 = icmp eq ptr %a.load66, null
  br i1 %a.null67, label %a.create68, label %a.after69

str_gen_check:                                    ; preds = %loop.body.92
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.92
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len29 = and i64 %eq.rhs.len, 281474976710655
  %str.tag30 = lshr i64 %eq.rhs.len, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check32:                                  ; preds = %str_ok
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len27, %eq.rhs.len29
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale34:                                      ; preds = %str_gen_check32
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str.eq.then:                                      ; preds = %str_ok33
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data37 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data37, ptr %eq.rhs.data, i64 %eq.lhs.len27)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok33
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load38 = load ptr, ptr %var.e, align 8
  %fld.gep39 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load38, i32 0, i32 1
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit41
  %choice.res44 = phi ptr [ %choice.res, %choice.exit41 ], [ null, %choice.else ]
  %niche.ne.null = icmp ne ptr %choice.res44, null
  br i1 %niche.ne.null, label %choice.then45, label %choice.exit46

choice.exit41:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %var.load43, %choice.case ], [ null, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._42, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load43 = load ptr, ptr %var.s, align 8
  br label %choice.exit41

choice.next:                                      ; preds = %choice.then
  br label %choice.exit41

choice.then45:                                    ; preds = %choice.exit
  store ptr %choice.res44, ptr %var._47, align 8
  store ptr %choice.res44, ptr %var._map_v_87, align 8
  %var.load48 = load ptr, ptr %var._map_v_87, align 8
  %a.load49 = load ptr, ptr %var._map_out_87, align 8
  %a.null50 = icmp eq ptr %a.load49, null
  br i1 %a.null50, label %a.create51, label %a.after52

choice.exit46:                                    ; preds = %a.store, %choice.exit
  br label %loop.latch.92

a.create51:                                       ; preds = %choice.then45
  %arena.cur53 = call ptr @dva_arena_current()
  %a.create54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 24)
  %arena.cur55 = call ptr @dva_arena_current()
  %a.buf56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 128)
  %a.len.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 0
  store i64 0, ptr %a.len.gep57, align 8
  %a.data.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 1
  store ptr %a.buf56, ptr %a.data.gep58, align 8
  %a.cap.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 2
  store i64 16, ptr %a.cap.gep59, align 8
  store ptr %a.create54, ptr %var._map_out_87, align 8
  br label %a.after52

a.after52:                                        ; preds = %a.create51, %choice.then45
  %a.load260 = load ptr, ptr %var._map_out_87, align 8
  br label %a.check

a.check:                                          ; preds = %a.after52
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load260, i32 0, i32 0
  %a.len61 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load260, i32 0, i32 2
  %a.cap62 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len61, %a.cap62
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load260)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load260, i32 0, i32 1
  %a.cur.data63 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load260, i32 0, i32 0
  %a.cur.len64 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data63, i64 %a.cur.len64
  %slot.p2i = ptrtoint ptr %var.load48 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len64, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load260, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit46

a.create68:                                       ; preds = %loop.exit.92
  %arena.cur70 = call ptr @dva_arena_current()
  %a.create71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 24)
  %arena.cur72 = call ptr @dva_arena_current()
  %a.buf73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 128)
  %a.len.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create71, i32 0, i32 0
  store i64 0, ptr %a.len.gep74, align 8
  %a.data.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create71, i32 0, i32 1
  store ptr %a.buf73, ptr %a.data.gep75, align 8
  %a.cap.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create71, i32 0, i32 2
  store i64 16, ptr %a.cap.gep76, align 8
  store ptr %a.create71, ptr %var._map_out_87, align 8
  br label %a.after69

a.after69:                                        ; preds = %a.create68, %loop.exit.92
  %a.load277 = load ptr, ptr %var._map_out_87, align 8
  %p.to.i64 = ptrtoint ptr %a.load277 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay
}

define ptr @"ccl::entries_for"(ptr %0, ptr %1) #1 {
entry:
  %var._map_v_96 = alloca ptr, align 8
  %var._30 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.93 = alloca i64, align 8
  %loop.idx.93 = alloca i64, align 8
  %var._map_out_96 = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
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
  store ptr %a.new, ptr %var._map_out_96, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  store ptr %a.create3, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len9 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data10 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.header.93:                                   ; preds = %loop.latch.93, %a.after
  %counter.load = load i64, ptr %loop.idx.93, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.93, label %loop.exit.nat.93

loop.body.93:                                     ; preds = %loop.header.93
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.93, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data10, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load11 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load12 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len13 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len14 = and i64 %eq.lhs.len13, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len13, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.93:                                 ; preds = %loop.header.93
  br label %loop.exit.93

loop.latch.93:                                    ; preds = %choice.exit29
  %step.val = load i64, ptr %loop.step.93, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.exit.93:                                     ; preds = %loop.exit.nat.93
  %var.load48 = load ptr, ptr %var._map_out_96, align 8
  %a.load49 = load ptr, ptr %var._map_out_96, align 8
  %a.null50 = icmp eq ptr %a.load49, null
  br i1 %a.null50, label %a.create51, label %a.after52

str_gen_check:                                    ; preds = %loop.body.93
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.93
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %eq.rhs.len16 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len17 = and i64 %eq.rhs.len16, 281474976710655
  %str.tag18 = lshr i64 %eq.rhs.len16, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check20:                                  ; preds = %str_ok
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len14, %eq.rhs.len17
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale22:                                      ; preds = %str_gen_check20
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

str.eq.then:                                      ; preds = %str_ok21
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data25 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %eq.rhs.data26 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data25, ptr %eq.rhs.data26, i64 %eq.lhs.len14)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok21
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load27 = load ptr, ptr %var.e, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %var.load27, %choice.then ], [ null, %choice.else ]
  %niche.ne.null = icmp ne ptr %choice.res, null
  br i1 %niche.ne.null, label %choice.then28, label %choice.exit29

choice.then28:                                    ; preds = %choice.exit
  store ptr %choice.res, ptr %var._30, align 8
  store ptr %choice.res, ptr %var._map_v_96, align 8
  %var.load31 = load ptr, ptr %var._map_v_96, align 8
  %a.load32 = load ptr, ptr %var._map_out_96, align 8
  %a.null33 = icmp eq ptr %a.load32, null
  br i1 %a.null33, label %a.create34, label %a.after35

choice.exit29:                                    ; preds = %a.store, %choice.exit
  br label %loop.latch.93

a.create34:                                       ; preds = %choice.then28
  %arena.cur36 = call ptr @dva_arena_current()
  %a.create37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 24)
  %arena.cur38 = call ptr @dva_arena_current()
  %a.buf39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 128)
  %a.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 0
  store i64 0, ptr %a.len.gep40, align 8
  %a.data.gep41 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 1
  store ptr %a.buf39, ptr %a.data.gep41, align 8
  %a.cap.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 2
  store i64 16, ptr %a.cap.gep42, align 8
  store ptr %a.create37, ptr %var._map_out_96, align 8
  br label %a.after35

a.after35:                                        ; preds = %a.create34, %choice.then28
  %a.load243 = load ptr, ptr %var._map_out_96, align 8
  br label %a.check

a.check:                                          ; preds = %a.after35
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load243, i32 0, i32 0
  %a.len44 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load243, i32 0, i32 2
  %a.cap45 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len44, %a.cap45
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load243)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load243, i32 0, i32 1
  %a.cur.data46 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load243, i32 0, i32 0
  %a.cur.len47 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data46, i64 %a.cur.len47
  %slot.p2i = ptrtoint ptr %var.load31 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len47, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load243, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit29

a.create51:                                       ; preds = %loop.exit.93
  %arena.cur53 = call ptr @dva_arena_current()
  %a.create54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 24)
  %arena.cur55 = call ptr @dva_arena_current()
  %a.buf56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 128)
  %a.len.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 0
  store i64 0, ptr %a.len.gep57, align 8
  %a.data.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 1
  store ptr %a.buf56, ptr %a.data.gep58, align 8
  %a.cap.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 2
  store i64 16, ptr %a.cap.gep59, align 8
  store ptr %a.create54, ptr %var._map_out_96, align 8
  br label %a.after52

a.after52:                                        ; preds = %a.create51, %loop.exit.93
  %a.load260 = load ptr, ptr %var._map_out_96, align 8
  ret ptr %a.load260
}

define ptr @"ccl::split_raw_lines"(ptr %0) #1 {
entry:
  %var.ind209 = alloca i64, align 8
  %var.raw206 = alloca ptr, align 8
  %var.line_end168 = alloca i64, align 8
  %var.ind = alloca i64, align 8
  %var.raw = alloca ptr, align 8
  %var.line_end = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.94 = alloca i64, align 8
  %loop.idx.94 = alloca i64, align 8
  %"var.line_no'" = alloca i64, align 8
  %"var.cur_start'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.lines = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr null, ptr %var.lines, align 8
  %var.load = load ptr, ptr %var.src, align 8
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
  %var.load4 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %str_ok
  store i64 0, ptr %"var.cur_start'", align 8
  store i64 1, ptr %"var.line_no'", align 8
  %var.load8 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.94, align 8
  br label %loop.header.94

a.create:                                         ; preds = %choice.then
  %arena.cur5 = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.lines, align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.94:                                   ; preds = %loop.latch.94, %choice.exit
  %counter.load = load i64, ptr %loop.idx.94, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load8
  br i1 %loop.cond, label %loop.body.94, label %loop.exit.nat.94

loop.body.94:                                     ; preds = %loop.header.94
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.94, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load9 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag12 = lshr i64 %s.read.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

loop.exit.nat.94:                                 ; preds = %loop.header.94
  br label %loop.exit.94

loop.latch.94:                                    ; preds = %choice.exit23
  %step.val = load i64, ptr %loop.step.94, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.exit.94:                                     ; preds = %loop.exit.nat.94
  %var.load132 = load i64, ptr %"var.cur_start'", align 8
  %var.load133 = load i64, ptr %var.len, align 8
  %cmptmp134 = icmp slt i64 %var.load132, %var.load133
  br i1 %cmptmp134, label %choice.then135, label %choice.exit136

str_gen_check14:                                  ; preds = %loop.body.94
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %loop.body.94
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %var.load20 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load20, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale16:                                      ; preds = %str_gen_check14
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

idx_big_check:                                    ; preds = %str_ok15
  %idx.big = icmp sge i64 %var.load20, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data19, i64 %var.load20
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp21 = icmp eq i64 %s.byte.val, 10
  br i1 %cmptmp21, label %choice.then22, label %choice.exit23

idx_oob:                                          ; preds = %idx_big_check, %str_ok15
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then22:                                    ; preds = %idx_ok
  %var.load24 = load i64, ptr %var.i, align 8
  %var.load25 = load i64, ptr %"var.cur_start'", align 8
  %cmptmp26 = icmp sgt i64 %var.load24, %var.load25
  br i1 %cmptmp26, label %and.95.then, label %and.95.else

choice.exit23:                                    ; preds = %a.store, %idx_ok
  br label %loop.latch.94

and.95.then:                                      ; preds = %choice.then22
  %var.load27 = load ptr, ptr %var.src, align 8
  %s.read.len28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len28, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %str.tag31 = lshr i64 %s.read.len29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

and.95.else:                                      ; preds = %choice.then22
  br label %and.95.exit

and.95.exit:                                      ; preds = %and.95.else, %idx_ok43
  %and.95.phi = phi i1 [ %cmptmp49, %idx_ok43 ], [ %cmptmp26, %and.95.else ]
  br i1 %and.95.phi, label %choice.then50, label %choice.else

str_gen_check33:                                  ; preds = %and.95.then
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %and.95.then
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load40, 1
  %idx.neg41 = icmp slt i64 %subtmp, 0
  br i1 %idx.neg41, label %idx_oob44, label %idx_big_check42

str_stale35:                                      ; preds = %str_gen_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

idx_big_check42:                                  ; preds = %str_ok34
  %idx.big45 = icmp sge i64 %subtmp, %s.read.len30
  br i1 %idx.big45, label %idx_oob44, label %idx_ok43

idx_ok43:                                         ; preds = %idx_oob44, %idx_big_check42
  %s.byte.gep46 = getelementptr i8, ptr %s.read.data39, i64 %subtmp
  %s.byte47 = load i8, ptr %s.byte.gep46, align 1
  %s.byte.val48 = zext i8 %s.byte47 to i64
  %cmptmp49 = icmp eq i64 %s.byte.val48, 13
  br label %and.95.exit

idx_oob44:                                        ; preds = %idx_big_check42, %str_ok34
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok43

choice.then50:                                    ; preds = %and.95.exit
  %var.load52 = load i64, ptr %var.i, align 8
  %subtmp53 = sub i64 %var.load52, 1
  br label %choice.exit51

choice.else:                                      ; preds = %and.95.exit
  %var.load54 = load i64, ptr %var.i, align 8
  br label %choice.exit51

choice.exit51:                                    ; preds = %choice.else, %choice.then50
  %choice.res = phi i64 [ %subtmp53, %choice.then50 ], [ %var.load54, %choice.else ]
  store i64 %choice.res, ptr %var.line_end, align 8
  %var.load55 = load ptr, ptr %var.src, align 8
  %s.read.len56 = getelementptr inbounds { i64, ptr }, ptr %var.load55, i32 0, i32 0
  %s.read.len57 = load i64, ptr %s.read.len56, align 8
  %s.read.len58 = and i64 %s.read.len57, 281474976710655
  %str.tag59 = lshr i64 %s.read.len57, 48
  %str.immortal60 = icmp eq i64 %str.tag59, 0
  br i1 %str.immortal60, label %str_ok62, label %str_gen_check61

str_gen_check61:                                  ; preds = %choice.exit51
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %str.tag59)
  br i1 %tag.valid65, label %str_ok62, label %str_stale63

str_ok62:                                         ; preds = %str_stale63, %str_gen_check61, %choice.exit51
  %s.read.data66 = getelementptr inbounds { i64, ptr }, ptr %var.load55, i32 0, i32 1
  %s.read.data67 = load ptr, ptr %s.read.data66, align 8
  %var.load68 = load i64, ptr %"var.cur_start'", align 8
  %var.load69 = load i64, ptr %var.line_end, align 8
  %start.is_neg = icmp slt i64 %var.load68, 0
  %rel.start = add i64 %s.read.len58, %var.load68
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load68
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len58
  %final.start = select i1 %start.gt.len, i64 %s.read.len58, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load69, 0
  %rel.end = add i64 %s.read.len58, %var.load69
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load69
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len58
  %final.end = select i1 %end.gt.len, i64 %s.read.len58, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data67, i64 %final.start
  %arena.cur70 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw, align 8
  %var.load71 = load ptr, ptr %var.raw, align 8
  %call.res = call i64 @"ccl::trim_left_idx"(ptr %var.load71, i64 0)
  store i64 %call.res, ptr %var.ind, align 8
  %var.load72 = load i64, ptr %"var.line_no'", align 8
  %var.load73 = load i64, ptr %var.ind, align 8
  %var.load74 = load ptr, ptr %var.raw, align 8
  %s.read.len75 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 0
  %s.read.len76 = load i64, ptr %s.read.len75, align 8
  %s.read.len77 = and i64 %s.read.len76, 281474976710655
  %str.tag78 = lshr i64 %s.read.len76, 48
  %str.immortal79 = icmp eq i64 %str.tag78, 0
  br i1 %str.immortal79, label %str_ok81, label %str_gen_check80

str_stale63:                                      ; preds = %str_gen_check61
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok62

str_gen_check80:                                  ; preds = %str_ok62
  %arena.cur83 = call ptr @dva_arena_current()
  %tag.valid84 = call i1 @dva_arena_validate_tag(ptr %arena.cur83, i64 %str.tag78)
  br i1 %tag.valid84, label %str_ok81, label %str_stale82

str_ok81:                                         ; preds = %str_stale82, %str_gen_check80, %str_ok62
  %s.read.data85 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 1
  %s.read.data86 = load ptr, ptr %s.read.data85, align 8
  %var.load87 = load i64, ptr %var.ind, align 8
  %start.is_neg88 = icmp slt i64 %var.load87, 0
  %rel.start89 = add i64 %s.read.len77, %var.load87
  %norm.start90 = select i1 %start.is_neg88, i64 %rel.start89, i64 %var.load87
  %start.lt.091 = icmp slt i64 %norm.start90, 0
  %c.start.092 = select i1 %start.lt.091, i64 0, i64 %norm.start90
  %start.gt.len93 = icmp sgt i64 %c.start.092, %s.read.len77
  %final.start94 = select i1 %start.gt.len93, i64 %s.read.len77, i64 %c.start.092
  %end.is_neg95 = icmp slt i64 %s.read.len77, 0
  %rel.end96 = add i64 %s.read.len77, %s.read.len77
  %norm.end97 = select i1 %end.is_neg95, i64 %rel.end96, i64 %s.read.len77
  %end.lt.098 = icmp slt i64 %norm.end97, 0
  %c.end.099 = select i1 %end.lt.098, i64 0, i64 %norm.end97
  %end.gt.len100 = icmp sgt i64 %c.end.099, %s.read.len77
  %final.end101 = select i1 %end.gt.len100, i64 %s.read.len77, i64 %c.end.099
  %view.empty102 = icmp sle i64 %final.end101, %final.start94
  %view.len.sub103 = sub i64 %final.end101, %final.start94
  %view.len104 = select i1 %view.empty102, i64 0, i64 %view.len.sub103
  %view.data105 = getelementptr i8, ptr %s.read.data86, i64 %final.start94
  %arena.cur106 = call ptr @dva_arena_current()
  %str.view107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 16)
  %str.build.len.gep108 = getelementptr inbounds { i64, ptr }, ptr %str.view107, i32 0, i32 0
  store i64 %view.len104, ptr %str.build.len.gep108, align 8
  %str.build.data.gep109 = getelementptr inbounds { i64, ptr }, ptr %str.view107, i32 0, i32 1
  store ptr %view.data105, ptr %str.build.data.gep109, align 8
  %arena.cur110 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load72, ptr %rec.fld, align 8
  %rec.fld111 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load73, ptr %rec.fld111, align 8
  %rec.fld112 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %str.view107, ptr %rec.fld112, align 8
  %a.load113 = load ptr, ptr %var.lines, align 8
  %a.null114 = icmp eq ptr %a.load113, null
  br i1 %a.null114, label %a.create115, label %a.after116

str_stale82:                                      ; preds = %str_gen_check80
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok81

a.create115:                                      ; preds = %str_ok81
  %arena.cur117 = call ptr @dva_arena_current()
  %a.create118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 24)
  %arena.cur119 = call ptr @dva_arena_current()
  %a.buf120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 128)
  %a.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create118, i32 0, i32 0
  store i64 0, ptr %a.len.gep121, align 8
  %a.data.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create118, i32 0, i32 1
  store ptr %a.buf120, ptr %a.data.gep122, align 8
  %a.cap.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create118, i32 0, i32 2
  store i64 16, ptr %a.cap.gep123, align 8
  store ptr %a.create118, ptr %var.lines, align 8
  br label %a.after116

a.after116:                                       ; preds = %a.create115, %str_ok81
  %a.load2124 = load ptr, ptr %var.lines, align 8
  br label %a.check

a.check:                                          ; preds = %a.after116
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2124, i32 0, i32 0
  %a.len125 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2124, i32 0, i32 2
  %a.cap126 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len125, %a.cap126
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2124)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2124, i32 0, i32 1
  %a.cur.data127 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2124, i32 0, i32 0
  %a.cur.len128 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data127, i64 %a.cur.len128
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len128, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2124, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load129 = load i64, ptr %"var.line_no'", align 8
  %addtmp = add i64 %var.load129, 1
  store i64 %addtmp, ptr %"var.line_no'", align 8
  %var.load130 = load i64, ptr %var.i, align 8
  %addtmp131 = add i64 %var.load130, 1
  store i64 %addtmp131, ptr %"var.cur_start'", align 8
  br label %choice.exit23

choice.then135:                                   ; preds = %loop.exit.94
  %var.load137 = load ptr, ptr %var.src, align 8
  %s.read.len138 = getelementptr inbounds { i64, ptr }, ptr %var.load137, i32 0, i32 0
  %s.read.len139 = load i64, ptr %s.read.len138, align 8
  %s.read.len140 = and i64 %s.read.len139, 281474976710655
  %str.tag141 = lshr i64 %s.read.len139, 48
  %str.immortal142 = icmp eq i64 %str.tag141, 0
  br i1 %str.immortal142, label %str_ok144, label %str_gen_check143

choice.exit136:                                   ; preds = %a.store267, %loop.exit.94
  %var.load281 = load ptr, ptr %var.lines, align 8
  %a.load282 = load ptr, ptr %var.lines, align 8
  %a.null283 = icmp eq ptr %a.load282, null
  br i1 %a.null283, label %a.create284, label %a.after285

str_gen_check143:                                 ; preds = %choice.then135
  %arena.cur146 = call ptr @dva_arena_current()
  %tag.valid147 = call i1 @dva_arena_validate_tag(ptr %arena.cur146, i64 %str.tag141)
  br i1 %tag.valid147, label %str_ok144, label %str_stale145

str_ok144:                                        ; preds = %str_stale145, %str_gen_check143, %choice.then135
  %s.read.data148 = getelementptr inbounds { i64, ptr }, ptr %var.load137, i32 0, i32 1
  %s.read.data149 = load ptr, ptr %s.read.data148, align 8
  %var.load150 = load i64, ptr %var.len, align 8
  %subtmp151 = sub i64 %var.load150, 1
  %idx.neg152 = icmp slt i64 %subtmp151, 0
  br i1 %idx.neg152, label %idx_oob155, label %idx_big_check153

str_stale145:                                     ; preds = %str_gen_check143
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok144

idx_big_check153:                                 ; preds = %str_ok144
  %idx.big156 = icmp sge i64 %subtmp151, %s.read.len140
  br i1 %idx.big156, label %idx_oob155, label %idx_ok154

idx_ok154:                                        ; preds = %idx_oob155, %idx_big_check153
  %s.byte.gep157 = getelementptr i8, ptr %s.read.data149, i64 %subtmp151
  %s.byte158 = load i8, ptr %s.byte.gep157, align 1
  %s.byte.val159 = zext i8 %s.byte158 to i64
  %cmptmp160 = icmp eq i64 %s.byte.val159, 13
  br i1 %cmptmp160, label %choice.then161, label %choice.else162

idx_oob155:                                       ; preds = %idx_big_check153, %str_ok144
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok154

choice.then161:                                   ; preds = %idx_ok154
  %var.load164 = load i64, ptr %var.len, align 8
  %subtmp165 = sub i64 %var.load164, 1
  br label %choice.exit163

choice.else162:                                   ; preds = %idx_ok154
  %var.load166 = load i64, ptr %var.len, align 8
  br label %choice.exit163

choice.exit163:                                   ; preds = %choice.else162, %choice.then161
  %choice.res167 = phi i64 [ %subtmp165, %choice.then161 ], [ %var.load166, %choice.else162 ]
  store i64 %choice.res167, ptr %var.line_end168, align 8
  %var.load169 = load ptr, ptr %var.src, align 8
  %s.read.len170 = getelementptr inbounds { i64, ptr }, ptr %var.load169, i32 0, i32 0
  %s.read.len171 = load i64, ptr %s.read.len170, align 8
  %s.read.len172 = and i64 %s.read.len171, 281474976710655
  %str.tag173 = lshr i64 %s.read.len171, 48
  %str.immortal174 = icmp eq i64 %str.tag173, 0
  br i1 %str.immortal174, label %str_ok176, label %str_gen_check175

str_gen_check175:                                 ; preds = %choice.exit163
  %arena.cur178 = call ptr @dva_arena_current()
  %tag.valid179 = call i1 @dva_arena_validate_tag(ptr %arena.cur178, i64 %str.tag173)
  br i1 %tag.valid179, label %str_ok176, label %str_stale177

str_ok176:                                        ; preds = %str_stale177, %str_gen_check175, %choice.exit163
  %s.read.data180 = getelementptr inbounds { i64, ptr }, ptr %var.load169, i32 0, i32 1
  %s.read.data181 = load ptr, ptr %s.read.data180, align 8
  %var.load182 = load i64, ptr %"var.cur_start'", align 8
  %var.load183 = load i64, ptr %var.line_end168, align 8
  %start.is_neg184 = icmp slt i64 %var.load182, 0
  %rel.start185 = add i64 %s.read.len172, %var.load182
  %norm.start186 = select i1 %start.is_neg184, i64 %rel.start185, i64 %var.load182
  %start.lt.0187 = icmp slt i64 %norm.start186, 0
  %c.start.0188 = select i1 %start.lt.0187, i64 0, i64 %norm.start186
  %start.gt.len189 = icmp sgt i64 %c.start.0188, %s.read.len172
  %final.start190 = select i1 %start.gt.len189, i64 %s.read.len172, i64 %c.start.0188
  %end.is_neg191 = icmp slt i64 %var.load183, 0
  %rel.end192 = add i64 %s.read.len172, %var.load183
  %norm.end193 = select i1 %end.is_neg191, i64 %rel.end192, i64 %var.load183
  %end.lt.0194 = icmp slt i64 %norm.end193, 0
  %c.end.0195 = select i1 %end.lt.0194, i64 0, i64 %norm.end193
  %end.gt.len196 = icmp sgt i64 %c.end.0195, %s.read.len172
  %final.end197 = select i1 %end.gt.len196, i64 %s.read.len172, i64 %c.end.0195
  %view.empty198 = icmp sle i64 %final.end197, %final.start190
  %view.len.sub199 = sub i64 %final.end197, %final.start190
  %view.len200 = select i1 %view.empty198, i64 0, i64 %view.len.sub199
  %view.data201 = getelementptr i8, ptr %s.read.data181, i64 %final.start190
  %arena.cur202 = call ptr @dva_arena_current()
  %str.view203 = call ptr @dva_arena_alloc(ptr %arena.cur202, i64 16)
  %str.build.len.gep204 = getelementptr inbounds { i64, ptr }, ptr %str.view203, i32 0, i32 0
  store i64 %view.len200, ptr %str.build.len.gep204, align 8
  %str.build.data.gep205 = getelementptr inbounds { i64, ptr }, ptr %str.view203, i32 0, i32 1
  store ptr %view.data201, ptr %str.build.data.gep205, align 8
  store ptr %str.view203, ptr %var.raw206, align 8
  %var.load207 = load ptr, ptr %var.raw206, align 8
  %call.res208 = call i64 @"ccl::trim_left_idx"(ptr %var.load207, i64 0)
  store i64 %call.res208, ptr %var.ind209, align 8
  %var.load210 = load i64, ptr %"var.line_no'", align 8
  %var.load211 = load i64, ptr %var.ind209, align 8
  %var.load212 = load ptr, ptr %var.raw206, align 8
  %s.read.len213 = getelementptr inbounds { i64, ptr }, ptr %var.load212, i32 0, i32 0
  %s.read.len214 = load i64, ptr %s.read.len213, align 8
  %s.read.len215 = and i64 %s.read.len214, 281474976710655
  %str.tag216 = lshr i64 %s.read.len214, 48
  %str.immortal217 = icmp eq i64 %str.tag216, 0
  br i1 %str.immortal217, label %str_ok219, label %str_gen_check218

str_stale177:                                     ; preds = %str_gen_check175
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok176

str_gen_check218:                                 ; preds = %str_ok176
  %arena.cur221 = call ptr @dva_arena_current()
  %tag.valid222 = call i1 @dva_arena_validate_tag(ptr %arena.cur221, i64 %str.tag216)
  br i1 %tag.valid222, label %str_ok219, label %str_stale220

str_ok219:                                        ; preds = %str_stale220, %str_gen_check218, %str_ok176
  %s.read.data223 = getelementptr inbounds { i64, ptr }, ptr %var.load212, i32 0, i32 1
  %s.read.data224 = load ptr, ptr %s.read.data223, align 8
  %var.load225 = load i64, ptr %var.ind209, align 8
  %start.is_neg226 = icmp slt i64 %var.load225, 0
  %rel.start227 = add i64 %s.read.len215, %var.load225
  %norm.start228 = select i1 %start.is_neg226, i64 %rel.start227, i64 %var.load225
  %start.lt.0229 = icmp slt i64 %norm.start228, 0
  %c.start.0230 = select i1 %start.lt.0229, i64 0, i64 %norm.start228
  %start.gt.len231 = icmp sgt i64 %c.start.0230, %s.read.len215
  %final.start232 = select i1 %start.gt.len231, i64 %s.read.len215, i64 %c.start.0230
  %end.is_neg233 = icmp slt i64 %s.read.len215, 0
  %rel.end234 = add i64 %s.read.len215, %s.read.len215
  %norm.end235 = select i1 %end.is_neg233, i64 %rel.end234, i64 %s.read.len215
  %end.lt.0236 = icmp slt i64 %norm.end235, 0
  %c.end.0237 = select i1 %end.lt.0236, i64 0, i64 %norm.end235
  %end.gt.len238 = icmp sgt i64 %c.end.0237, %s.read.len215
  %final.end239 = select i1 %end.gt.len238, i64 %s.read.len215, i64 %c.end.0237
  %view.empty240 = icmp sle i64 %final.end239, %final.start232
  %view.len.sub241 = sub i64 %final.end239, %final.start232
  %view.len242 = select i1 %view.empty240, i64 0, i64 %view.len.sub241
  %view.data243 = getelementptr i8, ptr %s.read.data224, i64 %final.start232
  %arena.cur244 = call ptr @dva_arena_current()
  %str.view245 = call ptr @dva_arena_alloc(ptr %arena.cur244, i64 16)
  %str.build.len.gep246 = getelementptr inbounds { i64, ptr }, ptr %str.view245, i32 0, i32 0
  store i64 %view.len242, ptr %str.build.len.gep246, align 8
  %str.build.data.gep247 = getelementptr inbounds { i64, ptr }, ptr %str.view245, i32 0, i32 1
  store ptr %view.data243, ptr %str.build.data.gep247, align 8
  %arena.cur248 = call ptr @dva_arena_current()
  %rec.alloc249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld250 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc249, i32 0, i32 0
  store i64 %var.load210, ptr %rec.fld250, align 8
  %rec.fld251 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc249, i32 0, i32 1
  store i64 %var.load211, ptr %rec.fld251, align 8
  %rec.fld252 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc249, i32 0, i32 2
  store ptr %str.view245, ptr %rec.fld252, align 8
  %a.load253 = load ptr, ptr %var.lines, align 8
  %a.null254 = icmp eq ptr %a.load253, null
  br i1 %a.null254, label %a.create255, label %a.after256

str_stale220:                                     ; preds = %str_gen_check218
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok219

a.create255:                                      ; preds = %str_ok219
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
  store ptr %a.create258, ptr %var.lines, align 8
  br label %a.after256

a.after256:                                       ; preds = %a.create255, %str_ok219
  %a.load2264 = load ptr, ptr %var.lines, align 8
  br label %a.check265

a.check265:                                       ; preds = %a.after256
  %a.len268 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2264, i32 0, i32 0
  %a.len269 = load i64, ptr %a.len268, align 8
  %a.cap270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2264, i32 0, i32 2
  %a.cap271 = load i64, ptr %a.cap270, align 8
  %a.needs.grow272 = icmp eq i64 %a.len269, %a.cap271
  br i1 %a.needs.grow272, label %a.grow266, label %a.store267

a.grow266:                                        ; preds = %a.check265
  call void @dva_array_grow(ptr %a.load2264)
  br label %a.store267

a.store267:                                       ; preds = %a.grow266, %a.check265
  %a.cur.data273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2264, i32 0, i32 1
  %a.cur.data274 = load ptr, ptr %a.cur.data273, align 8
  %a.cur.len275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2264, i32 0, i32 0
  %a.cur.len276 = load i64, ptr %a.cur.len275, align 8
  %a.elem.gep277 = getelementptr i64, ptr %a.cur.data274, i64 %a.cur.len276
  %slot.p2i278 = ptrtoint ptr %rec.alloc249 to i64
  store i64 %slot.p2i278, ptr %a.elem.gep277, align 8
  %a.next.len279 = add i64 %a.cur.len276, 1
  %b.len.gep280 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2264, i32 0, i32 0
  store i64 %a.next.len279, ptr %b.len.gep280, align 8
  br label %choice.exit136

a.create284:                                      ; preds = %choice.exit136
  %arena.cur286 = call ptr @dva_arena_current()
  %a.create287 = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 24)
  %arena.cur288 = call ptr @dva_arena_current()
  %a.buf289 = call ptr @dva_arena_alloc(ptr %arena.cur288, i64 128)
  %a.len.gep290 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create287, i32 0, i32 0
  store i64 0, ptr %a.len.gep290, align 8
  %a.data.gep291 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create287, i32 0, i32 1
  store ptr %a.buf289, ptr %a.data.gep291, align 8
  %a.cap.gep292 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create287, i32 0, i32 2
  store i64 16, ptr %a.cap.gep292, align 8
  store ptr %a.create287, ptr %var.lines, align 8
  br label %a.after285

a.after285:                                       ; preds = %a.create284, %choice.exit136
  %a.load2293 = load ptr, ptr %var.lines, align 8
  ret ptr %a.load2293
}

define { i1, i64 } @"ccl::parse_block_from"(ptr %0, i64 %1, i64 %2, ptr %3) #1 {
entry:
  %var.cl = alloca ptr, align 8
  %var._795 = alloca ptr, align 8
  %var._792 = alloca ptr, align 8
  %var._725 = alloca i64, align 8
  %var._i724 = alloca i64, align 8
  %loop.step.101 = alloca i64, align 8
  %loop.idx.101 = alloca i64, align 8
  %var.tb = alloca ptr, align 8
  %var.cres = alloca ptr, align 8
  %var.cand_line = alloca ptr, align 8
  %var._637 = alloca ptr, align 8
  %var._634 = alloca ptr, align 8
  %var.cand = alloca ptr, align 8
  %var._478 = alloca ptr, align 8
  %var._475 = alloca ptr, align 8
  %var._408 = alloca i64, align 8
  %var._i407 = alloca i64, align 8
  %loop.step.99 = alloca i64, align 8
  %loop.idx.99 = alloca i64, align 8
  %"var.child_ind'" = alloca i64, align 8
  %"var.next_idx'" = alloca i64, align 8
  %var.after_trim = alloca ptr, align 8
  %var.k = alloca ptr, align 8
  %var.eq_idx = alloca i64, align 8
  %var.pl = alloca ptr, align 8
  %var._42 = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.96 = alloca i64, align 8
  %loop.idx.96 = alloca i64, align 8
  %"var.base_indent'" = alloca i64, align 8
  %var.total = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %var.doc = alloca ptr, align 8
  %var.file = alloca ptr, align 8
  %var.min_indent = alloca i64, align 8
  %var.start_idx = alloca i64, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  store i64 %1, ptr %var.start_idx, align 8
  store i64 %2, ptr %var.min_indent, align 8
  store ptr %3, ptr %var.file, align 8
  %call.res = call ptr @"ccl::doc_new"()
  store ptr %call.res, ptr %var.doc, align 8
  %var.load = load i64, ptr %var.start_idx, align 8
  store i64 %var.load, ptr %"var.idx'", align 8
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
  store i64 %a.len.query4, ptr %var.total, align 8
  store i64 -1, ptr %"var.base_indent'", align 8
  store i64 0, ptr %loop.idx.96, align 8
  br label %loop.header.96

loop.header.96:                                   ; preds = %loop.latch.96, %a.after
  %counter.load = load i64, ptr %loop.idx.96, align 8
  br label %loop.body.96

loop.body.96:                                     ; preds = %loop.header.96
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.96, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.idx'", align 8
  %var.load6 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.96:                                 ; No predecessors!
  br label %loop.exit.96

loop.latch.96:                                    ; preds = %choice.exit61
  %step.val980 = load i64, ptr %loop.step.96, align 8
  %loop.next981 = add i64 %counter.load, %step.val980
  store i64 %loop.next981, ptr %loop.idx.96, align 8
  br label %loop.header.96

loop.exit.96:                                     ; preds = %choice.then80, %choice.then, %loop.exit.nat.96
  %var.load982 = load ptr, ptr %var.doc, align 8
  %a.load983 = load ptr, ptr %var.doc, align 8
  %a.null984 = icmp eq ptr %a.load983, null
  br i1 %a.null984, label %a.create985, label %a.after986

choice.then:                                      ; preds = %loop.body.96
  br label %loop.exit.96

choice.exit:                                      ; preds = %loop.body.96
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
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 187, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 24, ptr %err.col.gep, align 8
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
  store ptr @str.3.struct, ptr %err.msg.gep27, align 8
  %err.file.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep28, align 8
  %err.line.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 3
  store i64 187, ptr %err.line.gep29, align 8
  %err.col.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 4
  store i64 24, ptr %err.col.gep30, align 8
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
  %ram.tag35 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag35, label %choice.then36, label %choice.else

choice.then36:                                    ; preds = %a.rd.done
  %ram.pay38 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay38 to ptr
  store ptr %pay.ptr, ptr %var._39, align 8
  br label %choice.exit37

choice.else:                                      ; preds = %a.rd.done
  %ram.pay40 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr41 = inttoptr i64 %ram.pay40 to ptr
  store ptr %pay.ptr41, ptr %var._42, align 8
  %arena.cur43 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld44 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld44, align 8
  %rec.fld45 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld45, align 8
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.else, %choice.then36
  %choice.res = phi ptr [ %pay.ptr, %choice.then36 ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.pl, align 8
  %var.load46 = load ptr, ptr %var.pl, align 8
  %fld.gep = getelementptr inbounds { i64, i64, ptr }, ptr %var.load46, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len47 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len48 = and i64 %eq.lhs.len47, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len47, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit37
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit37
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len50 = and i64 %eq.rhs.len, 281474976710655
  %str.tag51 = lshr i64 %eq.rhs.len, 48
  %str.immortal52 = icmp eq i64 %str.tag51, 0
  br i1 %str.immortal52, label %str_ok54, label %str_gen_check53

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check53:                                  ; preds = %str_ok
  %arena.cur56 = call ptr @dva_arena_current()
  %tag.valid57 = call i1 @dva_arena_validate_tag(ptr %arena.cur56, i64 %str.tag51)
  br i1 %tag.valid57, label %str_ok54, label %str_stale55

str_ok54:                                         ; preds = %str_stale55, %str_gen_check53, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len48, %eq.rhs.len50
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale55:                                      ; preds = %str_gen_check53
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok54

str.eq.then:                                      ; preds = %str_ok54
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data58 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data58, ptr %eq.rhs.data, i64 %eq.lhs.len48)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok54
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then59, label %choice.else60

choice.then59:                                    ; preds = %str.eq.merge
  %var.load62 = load i64, ptr %"var.idx'", align 8
  %addtmp = add i64 %var.load62, 1
  store i64 %addtmp, ptr %"var.idx'", align 8
  br label %choice.exit61

choice.else60:                                    ; preds = %str.eq.merge
  %var.load63 = load i64, ptr %"var.base_indent'", align 8
  %cmptmp64 = icmp slt i64 %var.load63, 0
  br i1 %cmptmp64, label %choice.then65, label %choice.exit66

choice.exit61:                                    ; preds = %choice.exit140, %choice.then59
  br label %loop.latch.96

choice.then65:                                    ; preds = %choice.else60
  %var.load67 = load ptr, ptr %var.pl, align 8
  %fld.gep68 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load67, i32 0, i32 1
  %fld.load69 = load i64, ptr %fld.gep68, align 8
  store i64 %fld.load69, ptr %"var.base_indent'", align 8
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.then65, %choice.else60
  %var.load70 = load ptr, ptr %var.pl, align 8
  %fld.gep71 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load70, i32 0, i32 1
  %fld.load72 = load i64, ptr %fld.gep71, align 8
  %var.load73 = load i64, ptr %var.min_indent, align 8
  %cmptmp74 = icmp slt i64 %fld.load72, %var.load73
  br i1 %cmptmp74, label %or.97.then, label %or.97.else

or.97.then:                                       ; preds = %choice.exit66
  br label %or.97.exit

or.97.else:                                       ; preds = %choice.exit66
  %var.load75 = load ptr, ptr %var.pl, align 8
  %fld.gep76 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load75, i32 0, i32 1
  %fld.load77 = load i64, ptr %fld.gep76, align 8
  %var.load78 = load i64, ptr %"var.base_indent'", align 8
  %cmptmp79 = icmp slt i64 %fld.load77, %var.load78
  br label %or.97.exit

or.97.exit:                                       ; preds = %or.97.else, %or.97.then
  %or.97.phi = phi i1 [ %cmptmp74, %or.97.then ], [ %cmptmp79, %or.97.else ]
  br i1 %or.97.phi, label %choice.then80, label %choice.exit81

choice.then80:                                    ; preds = %or.97.exit
  br label %loop.exit.96

choice.exit81:                                    ; preds = %or.97.exit
  %var.load82 = load ptr, ptr %var.pl, align 8
  %fld.gep83 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load82, i32 0, i32 2
  %fld.load84 = load ptr, ptr %fld.gep83, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load84, i32 0, i32 0
  %str.len.query85 = load i64, ptr %str.len.query, align 8
  %str.len.query86 = and i64 %str.len.query85, 281474976710655
  %str.tag87 = lshr i64 %str.len.query85, 48
  %str.immortal88 = icmp eq i64 %str.tag87, 0
  br i1 %str.immortal88, label %str_ok90, label %str_gen_check89

str_gen_check89:                                  ; preds = %choice.exit81
  %arena.cur92 = call ptr @dva_arena_current()
  %tag.valid93 = call i1 @dva_arena_validate_tag(ptr %arena.cur92, i64 %str.tag87)
  br i1 %tag.valid93, label %str_ok90, label %str_stale91

str_ok90:                                         ; preds = %str_stale91, %str_gen_check89, %choice.exit81
  %cmptmp94 = icmp sgt i64 %str.len.query86, 1
  br i1 %cmptmp94, label %and.98.then, label %and.98.else

str_stale91:                                      ; preds = %str_gen_check89
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok90

and.98.then:                                      ; preds = %str_ok90
  %var.load95 = load ptr, ptr %var.pl, align 8
  %fld.gep96 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load95, i32 0, i32 2
  %fld.load97 = load ptr, ptr %fld.gep96, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load97, i32 0, i32 0
  %s.read.len98 = load i64, ptr %s.read.len, align 8
  %s.read.len99 = and i64 %s.read.len98, 281474976710655
  %str.tag100 = lshr i64 %s.read.len98, 48
  %str.immortal101 = icmp eq i64 %str.tag100, 0
  br i1 %str.immortal101, label %str_ok103, label %str_gen_check102

and.98.else:                                      ; preds = %str_ok90
  br label %and.98.exit

and.98.exit:                                      ; preds = %and.98.else, %str.eq.merge131
  %and.98.phi = phi i1 [ %str.eq.result137, %str.eq.merge131 ], [ %cmptmp94, %and.98.else ]
  br i1 %and.98.phi, label %choice.then138, label %choice.else139

str_gen_check102:                                 ; preds = %and.98.then
  %arena.cur105 = call ptr @dva_arena_current()
  %tag.valid106 = call i1 @dva_arena_validate_tag(ptr %arena.cur105, i64 %str.tag100)
  br i1 %tag.valid106, label %str_ok103, label %str_stale104

str_ok103:                                        ; preds = %str_stale104, %str_gen_check102, %and.98.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load97, i32 0, i32 1
  %s.read.data107 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len99, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len99
  %final.start = select i1 %start.gt.len, i64 %s.read.len99, i64 %c.start.0
  %rel.end = add i64 %s.read.len99, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len99
  %final.end = select i1 %end.gt.len, i64 %s.read.len99, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data107, i64 %final.start
  %arena.cur108 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len109 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len110 = load i64, ptr %eq.lhs.len109, align 8
  %eq.lhs.len111 = and i64 %eq.lhs.len110, 281474976710655
  %str.tag112 = lshr i64 %eq.lhs.len110, 48
  %str.immortal113 = icmp eq i64 %str.tag112, 0
  br i1 %str.immortal113, label %str_ok115, label %str_gen_check114

str_stale104:                                     ; preds = %str_gen_check102
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok103

str_gen_check114:                                 ; preds = %str_ok103
  %arena.cur117 = call ptr @dva_arena_current()
  %tag.valid118 = call i1 @dva_arena_validate_tag(ptr %arena.cur117, i64 %str.tag112)
  br i1 %tag.valid118, label %str_ok115, label %str_stale116

str_ok115:                                        ; preds = %str_stale116, %str_gen_check114, %str_ok103
  %eq.rhs.len119 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len120 = and i64 %eq.rhs.len119, 281474976710655
  %str.tag121 = lshr i64 %eq.rhs.len119, 48
  %str.immortal122 = icmp eq i64 %str.tag121, 0
  br i1 %str.immortal122, label %str_ok124, label %str_gen_check123

str_stale116:                                     ; preds = %str_gen_check114
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok115

str_gen_check123:                                 ; preds = %str_ok115
  %arena.cur126 = call ptr @dva_arena_current()
  %tag.valid127 = call i1 @dva_arena_validate_tag(ptr %arena.cur126, i64 %str.tag121)
  br i1 %tag.valid127, label %str_ok124, label %str_stale125

str_ok124:                                        ; preds = %str_stale125, %str_gen_check123, %str_ok115
  %eq.len128 = icmp eq i64 %eq.lhs.len111, %eq.rhs.len120
  br i1 %eq.len128, label %str.eq.then129, label %str.eq.else130

str_stale125:                                     ; preds = %str_gen_check123
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok124

str.eq.then129:                                   ; preds = %str_ok124
  %eq.lhs.data132 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data133 = load ptr, ptr %eq.lhs.data132, align 8
  %eq.rhs.data134 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp135 = call i32 @memcmp(ptr %eq.lhs.data133, ptr %eq.rhs.data134, i64 %eq.lhs.len111)
  %eq.cmp.zero136 = icmp eq i32 %eq.memcmp135, 0
  br label %str.eq.merge131

str.eq.else130:                                   ; preds = %str_ok124
  br label %str.eq.merge131

str.eq.merge131:                                  ; preds = %str.eq.else130, %str.eq.then129
  %str.eq.result137 = phi i1 [ %eq.cmp.zero136, %str.eq.then129 ], [ false, %str.eq.else130 ]
  br label %and.98.exit

choice.then138:                                   ; preds = %and.98.exit
  %var.load141 = load ptr, ptr %var.pl, align 8
  %fld.gep142 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load141, i32 0, i32 2
  %fld.load143 = load ptr, ptr %fld.gep142, align 8
  %s.read.len144 = getelementptr inbounds { i64, ptr }, ptr %fld.load143, i32 0, i32 0
  %s.read.len145 = load i64, ptr %s.read.len144, align 8
  %s.read.len146 = and i64 %s.read.len145, 281474976710655
  %str.tag147 = lshr i64 %s.read.len145, 48
  %str.immortal148 = icmp eq i64 %str.tag147, 0
  br i1 %str.immortal148, label %str_ok150, label %str_gen_check149

choice.else139:                                   ; preds = %and.98.exit
  %var.load203 = load ptr, ptr %var.pl, align 8
  %fld.gep204 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load203, i32 0, i32 2
  %fld.load205 = load ptr, ptr %fld.gep204, align 8
  %call.res206 = call i64 @"ccl::find_first_eq"(ptr %fld.load205)
  store i64 %call.res206, ptr %var.eq_idx, align 8
  %var.load207 = load i64, ptr %var.eq_idx, align 8
  %cmptmp208 = icmp slt i64 %var.load207, 0
  br i1 %cmptmp208, label %choice.then209, label %choice.exit210

choice.exit140:                                   ; preds = %choice.exit362, %a.store
  br label %choice.exit61

str_gen_check149:                                 ; preds = %choice.then138
  %arena.cur152 = call ptr @dva_arena_current()
  %tag.valid153 = call i1 @dva_arena_validate_tag(ptr %arena.cur152, i64 %str.tag147)
  br i1 %tag.valid153, label %str_ok150, label %str_stale151

str_ok150:                                        ; preds = %str_stale151, %str_gen_check149, %choice.then138
  %s.read.data154 = getelementptr inbounds { i64, ptr }, ptr %fld.load143, i32 0, i32 1
  %s.read.data155 = load ptr, ptr %s.read.data154, align 8
  %rel.start156 = add i64 %s.read.len146, 2
  %norm.start157 = select i1 false, i64 %rel.start156, i64 2
  %start.lt.0158 = icmp slt i64 %norm.start157, 0
  %c.start.0159 = select i1 %start.lt.0158, i64 0, i64 %norm.start157
  %start.gt.len160 = icmp sgt i64 %c.start.0159, %s.read.len146
  %final.start161 = select i1 %start.gt.len160, i64 %s.read.len146, i64 %c.start.0159
  %end.is_neg = icmp slt i64 %s.read.len146, 0
  %rel.end162 = add i64 %s.read.len146, %s.read.len146
  %norm.end163 = select i1 %end.is_neg, i64 %rel.end162, i64 %s.read.len146
  %end.lt.0164 = icmp slt i64 %norm.end163, 0
  %c.end.0165 = select i1 %end.lt.0164, i64 0, i64 %norm.end163
  %end.gt.len166 = icmp sgt i64 %c.end.0165, %s.read.len146
  %final.end167 = select i1 %end.gt.len166, i64 %s.read.len146, i64 %c.end.0165
  %view.empty168 = icmp sle i64 %final.end167, %final.start161
  %view.len.sub169 = sub i64 %final.end167, %final.start161
  %view.len170 = select i1 %view.empty168, i64 0, i64 %view.len.sub169
  %view.data171 = getelementptr i8, ptr %s.read.data155, i64 %final.start161
  %arena.cur172 = call ptr @dva_arena_current()
  %str.view173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 16)
  %str.build.len.gep174 = getelementptr inbounds { i64, ptr }, ptr %str.view173, i32 0, i32 0
  store i64 %view.len170, ptr %str.build.len.gep174, align 8
  %str.build.data.gep175 = getelementptr inbounds { i64, ptr }, ptr %str.view173, i32 0, i32 1
  store ptr %view.data171, ptr %str.build.data.gep175, align 8
  %call.res176 = call ptr @"ccl::trim_str"(ptr %str.view173)
  %var.load177 = load ptr, ptr %var.pl, align 8
  %fld.gep178 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load177, i32 0, i32 0
  %fld.load179 = load i64, ptr %fld.gep178, align 8
  %var.load180 = load ptr, ptr %var.pl, align 8
  %fld.gep181 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load180, i32 0, i32 1
  %fld.load182 = load i64, ptr %fld.gep181, align 8
  %addtmp183 = add i64 %fld.load182, 1
  %call.res184 = call ptr @"ccl::entry_new_str"(ptr @str.5.struct, ptr %call.res176, i64 %fld.load179, i64 %addtmp183)
  %a.load185 = load ptr, ptr %var.doc, align 8
  %a.null186 = icmp eq ptr %a.load185, null
  br i1 %a.null186, label %a.create187, label %a.after188

str_stale151:                                     ; preds = %str_gen_check149
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok150

a.create187:                                      ; preds = %str_ok150
  %arena.cur189 = call ptr @dva_arena_current()
  %a.create190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 24)
  %arena.cur191 = call ptr @dva_arena_current()
  %a.buf192 = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 128)
  %a.len.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create190, i32 0, i32 0
  store i64 0, ptr %a.len.gep193, align 8
  %a.data.gep194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create190, i32 0, i32 1
  store ptr %a.buf192, ptr %a.data.gep194, align 8
  %a.cap.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create190, i32 0, i32 2
  store i64 16, ptr %a.cap.gep195, align 8
  store ptr %a.create190, ptr %var.doc, align 8
  br label %a.after188

a.after188:                                       ; preds = %a.create187, %str_ok150
  %a.load2196 = load ptr, ptr %var.doc, align 8
  br label %a.check

a.check:                                          ; preds = %a.after188
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2196, i32 0, i32 0
  %a.len197 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2196, i32 0, i32 2
  %a.cap198 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len197, %a.cap198
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2196)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2196, i32 0, i32 1
  %a.cur.data199 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2196, i32 0, i32 0
  %a.cur.len200 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data199, i64 %a.cur.len200
  %slot.p2i = ptrtoint ptr %call.res184 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len200, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2196, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load201 = load i64, ptr %"var.idx'", align 8
  %addtmp202 = add i64 %var.load201, 1
  store i64 %addtmp202, ptr %"var.idx'", align 8
  br label %choice.exit140

choice.then209:                                   ; preds = %choice.else139
  %var.load211 = load ptr, ptr %var.file, align 8
  %var.load212 = load ptr, ptr %var.pl, align 8
  %fld.gep213 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load212, i32 0, i32 2
  %fld.load214 = load ptr, ptr %fld.gep213, align 8
  %concat.lhs = load i64, ptr @str.6.struct, align 8
  %concat.lhs215 = and i64 %concat.lhs, 281474976710655
  %str.tag216 = lshr i64 %concat.lhs, 48
  %str.immortal217 = icmp eq i64 %str.tag216, 0
  br i1 %str.immortal217, label %str_ok219, label %str_gen_check218

choice.exit210:                                   ; preds = %ret.dead, %choice.else139
  %var.load253 = load ptr, ptr %var.pl, align 8
  %fld.gep254 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load253, i32 0, i32 2
  %fld.load255 = load ptr, ptr %fld.gep254, align 8
  %s.read.len256 = getelementptr inbounds { i64, ptr }, ptr %fld.load255, i32 0, i32 0
  %s.read.len257 = load i64, ptr %s.read.len256, align 8
  %s.read.len258 = and i64 %s.read.len257, 281474976710655
  %str.tag259 = lshr i64 %s.read.len257, 48
  %str.immortal260 = icmp eq i64 %str.tag259, 0
  br i1 %str.immortal260, label %str_ok262, label %str_gen_check261

str_gen_check218:                                 ; preds = %choice.then209
  %arena.cur221 = call ptr @dva_arena_current()
  %tag.valid222 = call i1 @dva_arena_validate_tag(ptr %arena.cur221, i64 %str.tag216)
  br i1 %tag.valid222, label %str_ok219, label %str_stale220

str_ok219:                                        ; preds = %str_stale220, %str_gen_check218, %choice.then209
  %concat.lhs223 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load214, i32 0, i32 0
  %concat.rhs224 = load i64, ptr %concat.rhs, align 8
  %concat.rhs225 = and i64 %concat.rhs224, 281474976710655
  %str.tag226 = lshr i64 %concat.rhs224, 48
  %str.immortal227 = icmp eq i64 %str.tag226, 0
  br i1 %str.immortal227, label %str_ok229, label %str_gen_check228

str_stale220:                                     ; preds = %str_gen_check218
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok219

str_gen_check228:                                 ; preds = %str_ok219
  %arena.cur231 = call ptr @dva_arena_current()
  %tag.valid232 = call i1 @dva_arena_validate_tag(ptr %arena.cur231, i64 %str.tag226)
  br i1 %tag.valid232, label %str_ok229, label %str_stale230

str_ok229:                                        ; preds = %str_stale230, %str_gen_check228, %str_ok219
  %concat.rhs233 = getelementptr inbounds { i64, ptr }, ptr %fld.load214, i32 0, i32 1
  %concat.rhs234 = load ptr, ptr %concat.rhs233, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs215, i64 %concat.rhs225)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len235

str_stale230:                                     ; preds = %str_gen_check228
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok229

concat.sum.len235:                                ; preds = %str_overflow_abort, %str_ok229
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum236 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf237 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf237, label %str_overflow_abort239, label %concat.tot.len238

str_overflow_abort:                               ; preds = %str_ok229
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len235

concat.tot.len238:                                ; preds = %str_overflow_abort239, %concat.sum.len235
  %arena.cur240 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 %sum236)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs223, i64 %concat.lhs215, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs215
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs234, i64 %concat.rhs225, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur241 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 16)
  %str.build.len.gep242 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep242, align 8
  %str.build.data.gep243 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep243, align 8
  %var.load244 = load ptr, ptr %var.pl, align 8
  %fld.gep245 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load244, i32 0, i32 0
  %fld.load246 = load i64, ptr %fld.gep245, align 8
  %var.load247 = load ptr, ptr %var.pl, align 8
  %fld.gep248 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load247, i32 0, i32 1
  %fld.load249 = load i64, ptr %fld.gep248, align 8
  %addtmp250 = add i64 %fld.load249, 1
  %call.res251 = call ptr @"ccl::ccl_error"(ptr %var.load211, ptr %concat.str, i64 %fld.load246, i64 %addtmp250)
  %p.to.i64 = ptrtoint ptr %call.res251 to i64
  %ram.pay252 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay252

str_overflow_abort239:                            ; preds = %concat.sum.len235
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len238

ret.dead:                                         ; No predecessors!
  br label %choice.exit210

str_gen_check261:                                 ; preds = %choice.exit210
  %arena.cur264 = call ptr @dva_arena_current()
  %tag.valid265 = call i1 @dva_arena_validate_tag(ptr %arena.cur264, i64 %str.tag259)
  br i1 %tag.valid265, label %str_ok262, label %str_stale263

str_ok262:                                        ; preds = %str_stale263, %str_gen_check261, %choice.exit210
  %s.read.data266 = getelementptr inbounds { i64, ptr }, ptr %fld.load255, i32 0, i32 1
  %s.read.data267 = load ptr, ptr %s.read.data266, align 8
  %var.load268 = load i64, ptr %var.eq_idx, align 8
  %rel.start269 = add i64 %s.read.len258, 0
  %norm.start270 = select i1 false, i64 %rel.start269, i64 0
  %start.lt.0271 = icmp slt i64 %norm.start270, 0
  %c.start.0272 = select i1 %start.lt.0271, i64 0, i64 %norm.start270
  %start.gt.len273 = icmp sgt i64 %c.start.0272, %s.read.len258
  %final.start274 = select i1 %start.gt.len273, i64 %s.read.len258, i64 %c.start.0272
  %end.is_neg275 = icmp slt i64 %var.load268, 0
  %rel.end276 = add i64 %s.read.len258, %var.load268
  %norm.end277 = select i1 %end.is_neg275, i64 %rel.end276, i64 %var.load268
  %end.lt.0278 = icmp slt i64 %norm.end277, 0
  %c.end.0279 = select i1 %end.lt.0278, i64 0, i64 %norm.end277
  %end.gt.len280 = icmp sgt i64 %c.end.0279, %s.read.len258
  %final.end281 = select i1 %end.gt.len280, i64 %s.read.len258, i64 %c.end.0279
  %view.empty282 = icmp sle i64 %final.end281, %final.start274
  %view.len.sub283 = sub i64 %final.end281, %final.start274
  %view.len284 = select i1 %view.empty282, i64 0, i64 %view.len.sub283
  %view.data285 = getelementptr i8, ptr %s.read.data267, i64 %final.start274
  %arena.cur286 = call ptr @dva_arena_current()
  %str.view287 = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 16)
  %str.build.len.gep288 = getelementptr inbounds { i64, ptr }, ptr %str.view287, i32 0, i32 0
  store i64 %view.len284, ptr %str.build.len.gep288, align 8
  %str.build.data.gep289 = getelementptr inbounds { i64, ptr }, ptr %str.view287, i32 0, i32 1
  store ptr %view.data285, ptr %str.build.data.gep289, align 8
  %call.res290 = call ptr @"ccl::trim_str"(ptr %str.view287)
  store ptr %call.res290, ptr %var.k, align 8
  %var.load291 = load ptr, ptr %var.pl, align 8
  %fld.gep292 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load291, i32 0, i32 2
  %fld.load293 = load ptr, ptr %fld.gep292, align 8
  %s.read.len294 = getelementptr inbounds { i64, ptr }, ptr %fld.load293, i32 0, i32 0
  %s.read.len295 = load i64, ptr %s.read.len294, align 8
  %s.read.len296 = and i64 %s.read.len295, 281474976710655
  %str.tag297 = lshr i64 %s.read.len295, 48
  %str.immortal298 = icmp eq i64 %str.tag297, 0
  br i1 %str.immortal298, label %str_ok300, label %str_gen_check299

str_stale263:                                     ; preds = %str_gen_check261
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok262

str_gen_check299:                                 ; preds = %str_ok262
  %arena.cur302 = call ptr @dva_arena_current()
  %tag.valid303 = call i1 @dva_arena_validate_tag(ptr %arena.cur302, i64 %str.tag297)
  br i1 %tag.valid303, label %str_ok300, label %str_stale301

str_ok300:                                        ; preds = %str_stale301, %str_gen_check299, %str_ok262
  %s.read.data304 = getelementptr inbounds { i64, ptr }, ptr %fld.load293, i32 0, i32 1
  %s.read.data305 = load ptr, ptr %s.read.data304, align 8
  %var.load306 = load i64, ptr %var.eq_idx, align 8
  %addtmp307 = add i64 %var.load306, 1
  %start.is_neg = icmp slt i64 %addtmp307, 0
  %rel.start308 = add i64 %s.read.len296, %addtmp307
  %norm.start309 = select i1 %start.is_neg, i64 %rel.start308, i64 %addtmp307
  %start.lt.0310 = icmp slt i64 %norm.start309, 0
  %c.start.0311 = select i1 %start.lt.0310, i64 0, i64 %norm.start309
  %start.gt.len312 = icmp sgt i64 %c.start.0311, %s.read.len296
  %final.start313 = select i1 %start.gt.len312, i64 %s.read.len296, i64 %c.start.0311
  %end.is_neg314 = icmp slt i64 %s.read.len296, 0
  %rel.end315 = add i64 %s.read.len296, %s.read.len296
  %norm.end316 = select i1 %end.is_neg314, i64 %rel.end315, i64 %s.read.len296
  %end.lt.0317 = icmp slt i64 %norm.end316, 0
  %c.end.0318 = select i1 %end.lt.0317, i64 0, i64 %norm.end316
  %end.gt.len319 = icmp sgt i64 %c.end.0318, %s.read.len296
  %final.end320 = select i1 %end.gt.len319, i64 %s.read.len296, i64 %c.end.0318
  %view.empty321 = icmp sle i64 %final.end320, %final.start313
  %view.len.sub322 = sub i64 %final.end320, %final.start313
  %view.len323 = select i1 %view.empty321, i64 0, i64 %view.len.sub322
  %view.data324 = getelementptr i8, ptr %s.read.data305, i64 %final.start313
  %arena.cur325 = call ptr @dva_arena_current()
  %str.view326 = call ptr @dva_arena_alloc(ptr %arena.cur325, i64 16)
  %str.build.len.gep327 = getelementptr inbounds { i64, ptr }, ptr %str.view326, i32 0, i32 0
  store i64 %view.len323, ptr %str.build.len.gep327, align 8
  %str.build.data.gep328 = getelementptr inbounds { i64, ptr }, ptr %str.view326, i32 0, i32 1
  store ptr %view.data324, ptr %str.build.data.gep328, align 8
  %call.res329 = call ptr @"ccl::trim_str"(ptr %str.view326)
  store ptr %call.res329, ptr %var.after_trim, align 8
  %var.load330 = load ptr, ptr %var.after_trim, align 8
  %eq.lhs.len331 = getelementptr inbounds { i64, ptr }, ptr %var.load330, i32 0, i32 0
  %eq.lhs.len332 = load i64, ptr %eq.lhs.len331, align 8
  %eq.lhs.len333 = and i64 %eq.lhs.len332, 281474976710655
  %str.tag334 = lshr i64 %eq.lhs.len332, 48
  %str.immortal335 = icmp eq i64 %str.tag334, 0
  br i1 %str.immortal335, label %str_ok337, label %str_gen_check336

str_stale301:                                     ; preds = %str_gen_check299
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok300

str_gen_check336:                                 ; preds = %str_ok300
  %arena.cur339 = call ptr @dva_arena_current()
  %tag.valid340 = call i1 @dva_arena_validate_tag(ptr %arena.cur339, i64 %str.tag334)
  br i1 %tag.valid340, label %str_ok337, label %str_stale338

str_ok337:                                        ; preds = %str_stale338, %str_gen_check336, %str_ok300
  %eq.rhs.len341 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len342 = and i64 %eq.rhs.len341, 281474976710655
  %str.tag343 = lshr i64 %eq.rhs.len341, 48
  %str.immortal344 = icmp eq i64 %str.tag343, 0
  br i1 %str.immortal344, label %str_ok346, label %str_gen_check345

str_stale338:                                     ; preds = %str_gen_check336
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok337

str_gen_check345:                                 ; preds = %str_ok337
  %arena.cur348 = call ptr @dva_arena_current()
  %tag.valid349 = call i1 @dva_arena_validate_tag(ptr %arena.cur348, i64 %str.tag343)
  br i1 %tag.valid349, label %str_ok346, label %str_stale347

str_ok346:                                        ; preds = %str_stale347, %str_gen_check345, %str_ok337
  %eq.len350 = icmp eq i64 %eq.lhs.len333, %eq.rhs.len342
  br i1 %eq.len350, label %str.eq.then351, label %str.eq.else352

str_stale347:                                     ; preds = %str_gen_check345
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok346

str.eq.then351:                                   ; preds = %str_ok346
  %eq.lhs.data354 = getelementptr inbounds { i64, ptr }, ptr %var.load330, i32 0, i32 1
  %eq.lhs.data355 = load ptr, ptr %eq.lhs.data354, align 8
  %eq.rhs.data356 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp357 = call i32 @memcmp(ptr %eq.lhs.data355, ptr %eq.rhs.data356, i64 %eq.lhs.len333)
  %eq.cmp.zero358 = icmp eq i32 %eq.memcmp357, 0
  br label %str.eq.merge353

str.eq.else352:                                   ; preds = %str_ok346
  br label %str.eq.merge353

str.eq.merge353:                                  ; preds = %str.eq.else352, %str.eq.then351
  %str.eq.result359 = phi i1 [ %eq.cmp.zero358, %str.eq.then351 ], [ false, %str.eq.else352 ]
  %str.neq = xor i1 %str.eq.result359, true
  br i1 %str.neq, label %choice.then360, label %choice.else361

choice.then360:                                   ; preds = %str.eq.merge353
  %var.load363 = load ptr, ptr %var.k, align 8
  %var.load364 = load ptr, ptr %var.after_trim, align 8
  %var.load365 = load ptr, ptr %var.pl, align 8
  %fld.gep366 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load365, i32 0, i32 0
  %fld.load367 = load i64, ptr %fld.gep366, align 8
  %var.load368 = load ptr, ptr %var.pl, align 8
  %fld.gep369 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load368, i32 0, i32 1
  %fld.load370 = load i64, ptr %fld.gep369, align 8
  %addtmp371 = add i64 %fld.load370, 1
  %call.res372 = call ptr @"ccl::entry_new_str"(ptr %var.load363, ptr %var.load364, i64 %fld.load367, i64 %addtmp371)
  %a.load373 = load ptr, ptr %var.doc, align 8
  %a.null374 = icmp eq ptr %a.load373, null
  br i1 %a.null374, label %a.create375, label %a.after376

choice.else361:                                   ; preds = %str.eq.merge353
  %var.load403 = load i64, ptr %"var.idx'", align 8
  %addtmp404 = add i64 %var.load403, 1
  store i64 %addtmp404, ptr %"var.next_idx'", align 8
  store i64 -1, ptr %"var.child_ind'", align 8
  store i64 0, ptr %loop.idx.99, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.99

choice.exit362:                                   ; preds = %choice.exit533, %a.store387
  br label %choice.exit140

a.create375:                                      ; preds = %choice.then360
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
  store ptr %a.create378, ptr %var.doc, align 8
  br label %a.after376

a.after376:                                       ; preds = %a.create375, %choice.then360
  %a.load2384 = load ptr, ptr %var.doc, align 8
  br label %a.check385

a.check385:                                       ; preds = %a.after376
  %a.len388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 0
  %a.len389 = load i64, ptr %a.len388, align 8
  %a.cap390 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 2
  %a.cap391 = load i64, ptr %a.cap390, align 8
  %a.needs.grow392 = icmp eq i64 %a.len389, %a.cap391
  br i1 %a.needs.grow392, label %a.grow386, label %a.store387

a.grow386:                                        ; preds = %a.check385
  call void @dva_array_grow(ptr %a.load2384)
  br label %a.store387

a.store387:                                       ; preds = %a.grow386, %a.check385
  %a.cur.data393 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 1
  %a.cur.data394 = load ptr, ptr %a.cur.data393, align 8
  %a.cur.len395 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 0
  %a.cur.len396 = load i64, ptr %a.cur.len395, align 8
  %a.elem.gep397 = getelementptr i64, ptr %a.cur.data394, i64 %a.cur.len396
  %slot.p2i398 = ptrtoint ptr %call.res372 to i64
  store i64 %slot.p2i398, ptr %a.elem.gep397, align 8
  %a.next.len399 = add i64 %a.cur.len396, 1
  %b.len.gep400 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2384, i32 0, i32 0
  store i64 %a.next.len399, ptr %b.len.gep400, align 8
  %var.load401 = load i64, ptr %"var.idx'", align 8
  %addtmp402 = add i64 %var.load401, 1
  store i64 %addtmp402, ptr %"var.idx'", align 8
  br label %choice.exit362

loop.header.99:                                   ; preds = %loop.latch.99, %choice.else361
  %counter.load405 = load i64, ptr %loop.idx.99, align 8
  br label %loop.body.99

loop.body.99:                                     ; preds = %loop.header.99
  %loop.rel.i406 = sub i64 %counter.load405, 0
  store i64 1, ptr %loop.step.99, align 8
  store i64 %loop.rel.i406, ptr %var._i407, align 8
  store i64 %counter.load405, ptr %var._408, align 8
  %var.load409 = load i64, ptr %"var.next_idx'", align 8
  %var.load410 = load i64, ptr %var.total, align 8
  %cmptmp411 = icmp sge i64 %var.load409, %var.load410
  br i1 %cmptmp411, label %choice.then412, label %choice.exit413

loop.exit.nat.99:                                 ; No predecessors!
  br label %loop.exit.99

loop.latch.99:                                    ; preds = %choice.exit520
  %step.val = load i64, ptr %loop.step.99, align 8
  %loop.next = add i64 %counter.load405, %step.val
  store i64 %loop.next, ptr %loop.idx.99, align 8
  br label %loop.header.99

loop.exit.99:                                     ; preds = %choice.then518, %choice.then412, %loop.exit.nat.99
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load526 = load i64, ptr %"var.child_ind'", align 8
  %var.load527 = load ptr, ptr %var.pl, align 8
  %fld.gep528 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load527, i32 0, i32 1
  %fld.load529 = load i64, ptr %fld.gep528, align 8
  %cmptmp530 = icmp sle i64 %var.load526, %fld.load529
  br i1 %cmptmp530, label %choice.then531, label %choice.else532

choice.then412:                                   ; preds = %loop.body.99
  br label %loop.exit.99

choice.exit413:                                   ; preds = %loop.body.99
  %var.load414 = load ptr, ptr %var.lines, align 8
  %a.load415 = load ptr, ptr %var.lines, align 8
  %a.null416 = icmp eq ptr %a.load415, null
  br i1 %a.null416, label %a.create417, label %a.after418

a.create417:                                      ; preds = %choice.exit413
  %arena.cur419 = call ptr @dva_arena_current()
  %a.create420 = call ptr @dva_arena_alloc(ptr %arena.cur419, i64 24)
  %arena.cur421 = call ptr @dva_arena_current()
  %a.buf422 = call ptr @dva_arena_alloc(ptr %arena.cur421, i64 128)
  %a.len.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create420, i32 0, i32 0
  store i64 0, ptr %a.len.gep423, align 8
  %a.data.gep424 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create420, i32 0, i32 1
  store ptr %a.buf422, ptr %a.data.gep424, align 8
  %a.cap.gep425 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create420, i32 0, i32 2
  store i64 16, ptr %a.cap.gep425, align 8
  store ptr %a.create420, ptr %var.lines, align 8
  br label %a.after418

a.after418:                                       ; preds = %a.create417, %choice.exit413
  %a.load2426 = load ptr, ptr %var.lines, align 8
  %var.load427 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull428 = icmp ne ptr %a.load2426, null
  br i1 %a.rd.nonnull428, label %a.rd.check429, label %a.rd.err.null431

a.rd.check429:                                    ; preds = %a.after418
  %a.rd.len434 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2426, i32 0, i32 0
  %a.rd.len435 = load i64, ptr %a.rd.len434, align 8
  %a.rd.ge0436 = icmp sge i64 %var.load427, 0
  %a.rd.lt437 = icmp slt i64 %var.load427, %a.rd.len435
  %a.rd.bounds438 = and i1 %a.rd.ge0436, %a.rd.lt437
  br i1 %a.rd.bounds438, label %a.rd.ok430, label %a.rd.err.oob432

a.rd.ok430:                                       ; preds = %a.rd.check429
  %a.rd.data439 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2426, i32 0, i32 1
  %a.rd.data440 = load ptr, ptr %a.rd.data439, align 8
  %a.rd.elem.gep441 = getelementptr i64, ptr %a.rd.data440, i64 %var.load427
  %a.rd.elem442 = load i64, ptr %a.rd.elem.gep441, align 8
  br label %a.rd.done433

a.rd.err.null431:                                 ; preds = %a.after418
  %arena.cur443 = call ptr @dva_arena_current()
  %err.alloc444 = call ptr @dva_arena_alloc(ptr %arena.cur443, i64 56)
  %err.code.gep445 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc444, i32 0, i32 0
  store i64 4011, ptr %err.code.gep445, align 8
  %err.msg.gep446 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc444, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep446, align 8
  %err.file.gep447 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc444, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep447, align 8
  %err.line.gep448 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc444, i32 0, i32 3
  store i64 214, ptr %err.line.gep448, align 8
  %err.col.gep449 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc444, i32 0, i32 4
  store i64 52, ptr %err.col.gep449, align 8
  %err.ctx.gep450 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc444, i32 0, i32 5
  %err.ctx0.gep451 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep450, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep451, align 8
  %err.ctx1.gep452 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep450, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep452, align 8
  %err.p2i453 = ptrtoint ptr %err.alloc444 to i64
  br label %a.rd.done433

a.rd.err.oob432:                                  ; preds = %a.rd.check429
  %arena.cur454 = call ptr @dva_arena_current()
  %err.alloc455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 56)
  %err.code.gep456 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc455, i32 0, i32 0
  store i64 4011, ptr %err.code.gep456, align 8
  %err.msg.gep457 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc455, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep457, align 8
  %err.file.gep458 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc455, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep458, align 8
  %err.line.gep459 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc455, i32 0, i32 3
  store i64 214, ptr %err.line.gep459, align 8
  %err.col.gep460 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc455, i32 0, i32 4
  store i64 52, ptr %err.col.gep460, align 8
  %err.ctx.gep461 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc455, i32 0, i32 5
  %err.ctx0.gep462 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep461, i32 0, i32 0
  store i64 %var.load427, ptr %err.ctx0.gep462, align 8
  %err.ctx1.gep463 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep461, i32 0, i32 1
  store i64 %a.rd.len435, ptr %err.ctx1.gep463, align 8
  %err.p2i464 = ptrtoint ptr %err.alloc455 to i64
  br label %a.rd.done433

a.rd.done433:                                     ; preds = %a.rd.err.oob432, %a.rd.err.null431, %a.rd.ok430
  %a.rd.tag465 = phi i1 [ true, %a.rd.ok430 ], [ false, %a.rd.err.null431 ], [ false, %a.rd.err.oob432 ]
  %a.rd.pay466 = phi i64 [ %a.rd.elem442, %a.rd.ok430 ], [ %err.p2i453, %a.rd.err.null431 ], [ %err.p2i464, %a.rd.err.oob432 ]
  %ram.tag467 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag465, 0
  %ram.pay468 = insertvalue { i1, i64 } %ram.tag467, i64 %a.rd.pay466, 1
  %ram.tag469 = extractvalue { i1, i64 } %ram.pay468, 0
  br i1 %ram.tag469, label %choice.then470, label %choice.else471

choice.then470:                                   ; preds = %a.rd.done433
  %ram.pay473 = extractvalue { i1, i64 } %ram.pay468, 1
  %pay.ptr474 = inttoptr i64 %ram.pay473 to ptr
  store ptr %pay.ptr474, ptr %var._475, align 8
  br label %choice.exit472

choice.else471:                                   ; preds = %a.rd.done433
  %ram.pay476 = extractvalue { i1, i64 } %ram.pay468, 1
  %pay.ptr477 = inttoptr i64 %ram.pay476 to ptr
  store ptr %pay.ptr477, ptr %var._478, align 8
  %arena.cur479 = call ptr @dva_arena_current()
  %rec.alloc480 = call ptr @dva_arena_alloc(ptr %arena.cur479, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld481 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc480, i32 0, i32 0
  store i64 0, ptr %rec.fld481, align 8
  %rec.fld482 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc480, i32 0, i32 1
  store i64 0, ptr %rec.fld482, align 8
  %rec.fld483 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc480, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld483, align 8
  br label %choice.exit472

choice.exit472:                                   ; preds = %choice.else471, %choice.then470
  %choice.res484 = phi ptr [ %pay.ptr474, %choice.then470 ], [ %rec.alloc480, %choice.else471 ]
  store ptr %choice.res484, ptr %var.cand, align 8
  %var.load485 = load ptr, ptr %var.cand, align 8
  %fld.gep486 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load485, i32 0, i32 2
  %fld.load487 = load ptr, ptr %fld.gep486, align 8
  %eq.lhs.len488 = getelementptr inbounds { i64, ptr }, ptr %fld.load487, i32 0, i32 0
  %eq.lhs.len489 = load i64, ptr %eq.lhs.len488, align 8
  %eq.lhs.len490 = and i64 %eq.lhs.len489, 281474976710655
  %str.tag491 = lshr i64 %eq.lhs.len489, 48
  %str.immortal492 = icmp eq i64 %str.tag491, 0
  br i1 %str.immortal492, label %str_ok494, label %str_gen_check493

str_gen_check493:                                 ; preds = %choice.exit472
  %arena.cur496 = call ptr @dva_arena_current()
  %tag.valid497 = call i1 @dva_arena_validate_tag(ptr %arena.cur496, i64 %str.tag491)
  br i1 %tag.valid497, label %str_ok494, label %str_stale495

str_ok494:                                        ; preds = %str_stale495, %str_gen_check493, %choice.exit472
  %eq.rhs.len498 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len499 = and i64 %eq.rhs.len498, 281474976710655
  %str.tag500 = lshr i64 %eq.rhs.len498, 48
  %str.immortal501 = icmp eq i64 %str.tag500, 0
  br i1 %str.immortal501, label %str_ok503, label %str_gen_check502

str_stale495:                                     ; preds = %str_gen_check493
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok494

str_gen_check502:                                 ; preds = %str_ok494
  %arena.cur505 = call ptr @dva_arena_current()
  %tag.valid506 = call i1 @dva_arena_validate_tag(ptr %arena.cur505, i64 %str.tag500)
  br i1 %tag.valid506, label %str_ok503, label %str_stale504

str_ok503:                                        ; preds = %str_stale504, %str_gen_check502, %str_ok494
  %eq.len507 = icmp eq i64 %eq.lhs.len490, %eq.rhs.len499
  br i1 %eq.len507, label %str.eq.then508, label %str.eq.else509

str_stale504:                                     ; preds = %str_gen_check502
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok503

str.eq.then508:                                   ; preds = %str_ok503
  %eq.lhs.data511 = getelementptr inbounds { i64, ptr }, ptr %fld.load487, i32 0, i32 1
  %eq.lhs.data512 = load ptr, ptr %eq.lhs.data511, align 8
  %eq.rhs.data513 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp514 = call i32 @memcmp(ptr %eq.lhs.data512, ptr %eq.rhs.data513, i64 %eq.lhs.len490)
  %eq.cmp.zero515 = icmp eq i32 %eq.memcmp514, 0
  br label %str.eq.merge510

str.eq.else509:                                   ; preds = %str_ok503
  br label %str.eq.merge510

str.eq.merge510:                                  ; preds = %str.eq.else509, %str.eq.then508
  %str.eq.result516 = phi i1 [ %eq.cmp.zero515, %str.eq.then508 ], [ false, %str.eq.else509 ]
  %str.neq517 = xor i1 %str.eq.result516, true
  br i1 %str.neq517, label %choice.then518, label %choice.else519

choice.then518:                                   ; preds = %str.eq.merge510
  %var.load521 = load ptr, ptr %var.cand, align 8
  %fld.gep522 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load521, i32 0, i32 1
  %fld.load523 = load i64, ptr %fld.gep522, align 8
  store i64 %fld.load523, ptr %"var.child_ind'", align 8
  br label %loop.exit.99

choice.else519:                                   ; preds = %str.eq.merge510
  %var.load524 = load i64, ptr %"var.next_idx'", align 8
  %addtmp525 = add i64 %var.load524, 1
  store i64 %addtmp525, ptr %"var.next_idx'", align 8
  br label %choice.exit520

choice.exit520:                                   ; preds = %choice.else519
  br label %loop.latch.99

choice.then531:                                   ; preds = %loop.exit.99
  %var.load534 = load ptr, ptr %var.k, align 8
  %var.load535 = load ptr, ptr %var.pl, align 8
  %fld.gep536 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load535, i32 0, i32 0
  %fld.load537 = load i64, ptr %fld.gep536, align 8
  %var.load538 = load ptr, ptr %var.pl, align 8
  %fld.gep539 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load538, i32 0, i32 1
  %fld.load540 = load i64, ptr %fld.gep539, align 8
  %addtmp541 = add i64 %fld.load540, 1
  %call.res542 = call ptr @"ccl::entry_new_str"(ptr %var.load534, ptr @str.0.struct, i64 %fld.load537, i64 %addtmp541)
  %a.load543 = load ptr, ptr %var.doc, align 8
  %a.null544 = icmp eq ptr %a.load543, null
  br i1 %a.null544, label %a.create545, label %a.after546

choice.else532:                                   ; preds = %loop.exit.99
  %var.load573 = load ptr, ptr %var.lines, align 8
  %a.load574 = load ptr, ptr %var.lines, align 8
  %a.null575 = icmp eq ptr %a.load574, null
  br i1 %a.null575, label %a.create576, label %a.after577

choice.exit533:                                   ; preds = %choice.exit651, %a.store557
  br label %choice.exit362

a.create545:                                      ; preds = %choice.then531
  %arena.cur547 = call ptr @dva_arena_current()
  %a.create548 = call ptr @dva_arena_alloc(ptr %arena.cur547, i64 24)
  %arena.cur549 = call ptr @dva_arena_current()
  %a.buf550 = call ptr @dva_arena_alloc(ptr %arena.cur549, i64 128)
  %a.len.gep551 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 0
  store i64 0, ptr %a.len.gep551, align 8
  %a.data.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 1
  store ptr %a.buf550, ptr %a.data.gep552, align 8
  %a.cap.gep553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 2
  store i64 16, ptr %a.cap.gep553, align 8
  store ptr %a.create548, ptr %var.doc, align 8
  br label %a.after546

a.after546:                                       ; preds = %a.create545, %choice.then531
  %a.load2554 = load ptr, ptr %var.doc, align 8
  br label %a.check555

a.check555:                                       ; preds = %a.after546
  %a.len558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2554, i32 0, i32 0
  %a.len559 = load i64, ptr %a.len558, align 8
  %a.cap560 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2554, i32 0, i32 2
  %a.cap561 = load i64, ptr %a.cap560, align 8
  %a.needs.grow562 = icmp eq i64 %a.len559, %a.cap561
  br i1 %a.needs.grow562, label %a.grow556, label %a.store557

a.grow556:                                        ; preds = %a.check555
  call void @dva_array_grow(ptr %a.load2554)
  br label %a.store557

a.store557:                                       ; preds = %a.grow556, %a.check555
  %a.cur.data563 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2554, i32 0, i32 1
  %a.cur.data564 = load ptr, ptr %a.cur.data563, align 8
  %a.cur.len565 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2554, i32 0, i32 0
  %a.cur.len566 = load i64, ptr %a.cur.len565, align 8
  %a.elem.gep567 = getelementptr i64, ptr %a.cur.data564, i64 %a.cur.len566
  %slot.p2i568 = ptrtoint ptr %call.res542 to i64
  store i64 %slot.p2i568, ptr %a.elem.gep567, align 8
  %a.next.len569 = add i64 %a.cur.len566, 1
  %b.len.gep570 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2554, i32 0, i32 0
  store i64 %a.next.len569, ptr %b.len.gep570, align 8
  %var.load571 = load i64, ptr %"var.idx'", align 8
  %addtmp572 = add i64 %var.load571, 1
  store i64 %addtmp572, ptr %"var.idx'", align 8
  br label %choice.exit533

a.create576:                                      ; preds = %choice.else532
  %arena.cur578 = call ptr @dva_arena_current()
  %a.create579 = call ptr @dva_arena_alloc(ptr %arena.cur578, i64 24)
  %arena.cur580 = call ptr @dva_arena_current()
  %a.buf581 = call ptr @dva_arena_alloc(ptr %arena.cur580, i64 128)
  %a.len.gep582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create579, i32 0, i32 0
  store i64 0, ptr %a.len.gep582, align 8
  %a.data.gep583 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create579, i32 0, i32 1
  store ptr %a.buf581, ptr %a.data.gep583, align 8
  %a.cap.gep584 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create579, i32 0, i32 2
  store i64 16, ptr %a.cap.gep584, align 8
  store ptr %a.create579, ptr %var.lines, align 8
  br label %a.after577

a.after577:                                       ; preds = %a.create576, %choice.else532
  %a.load2585 = load ptr, ptr %var.lines, align 8
  %var.load586 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull587 = icmp ne ptr %a.load2585, null
  br i1 %a.rd.nonnull587, label %a.rd.check588, label %a.rd.err.null590

a.rd.check588:                                    ; preds = %a.after577
  %a.rd.len593 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2585, i32 0, i32 0
  %a.rd.len594 = load i64, ptr %a.rd.len593, align 8
  %a.rd.ge0595 = icmp sge i64 %var.load586, 0
  %a.rd.lt596 = icmp slt i64 %var.load586, %a.rd.len594
  %a.rd.bounds597 = and i1 %a.rd.ge0595, %a.rd.lt596
  br i1 %a.rd.bounds597, label %a.rd.ok589, label %a.rd.err.oob591

a.rd.ok589:                                       ; preds = %a.rd.check588
  %a.rd.data598 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2585, i32 0, i32 1
  %a.rd.data599 = load ptr, ptr %a.rd.data598, align 8
  %a.rd.elem.gep600 = getelementptr i64, ptr %a.rd.data599, i64 %var.load586
  %a.rd.elem601 = load i64, ptr %a.rd.elem.gep600, align 8
  br label %a.rd.done592

a.rd.err.null590:                                 ; preds = %a.after577
  %arena.cur602 = call ptr @dva_arena_current()
  %err.alloc603 = call ptr @dva_arena_alloc(ptr %arena.cur602, i64 56)
  %err.code.gep604 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 0
  store i64 4011, ptr %err.code.gep604, align 8
  %err.msg.gep605 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep605, align 8
  %err.file.gep606 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep606, align 8
  %err.line.gep607 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 3
  store i64 226, ptr %err.line.gep607, align 8
  %err.col.gep608 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 4
  store i64 60, ptr %err.col.gep608, align 8
  %err.ctx.gep609 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 5
  %err.ctx0.gep610 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep609, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep610, align 8
  %err.ctx1.gep611 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep609, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep611, align 8
  %err.p2i612 = ptrtoint ptr %err.alloc603 to i64
  br label %a.rd.done592

a.rd.err.oob591:                                  ; preds = %a.rd.check588
  %arena.cur613 = call ptr @dva_arena_current()
  %err.alloc614 = call ptr @dva_arena_alloc(ptr %arena.cur613, i64 56)
  %err.code.gep615 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc614, i32 0, i32 0
  store i64 4011, ptr %err.code.gep615, align 8
  %err.msg.gep616 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc614, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep616, align 8
  %err.file.gep617 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc614, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep617, align 8
  %err.line.gep618 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc614, i32 0, i32 3
  store i64 226, ptr %err.line.gep618, align 8
  %err.col.gep619 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc614, i32 0, i32 4
  store i64 60, ptr %err.col.gep619, align 8
  %err.ctx.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc614, i32 0, i32 5
  %err.ctx0.gep621 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep620, i32 0, i32 0
  store i64 %var.load586, ptr %err.ctx0.gep621, align 8
  %err.ctx1.gep622 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep620, i32 0, i32 1
  store i64 %a.rd.len594, ptr %err.ctx1.gep622, align 8
  %err.p2i623 = ptrtoint ptr %err.alloc614 to i64
  br label %a.rd.done592

a.rd.done592:                                     ; preds = %a.rd.err.oob591, %a.rd.err.null590, %a.rd.ok589
  %a.rd.tag624 = phi i1 [ true, %a.rd.ok589 ], [ false, %a.rd.err.null590 ], [ false, %a.rd.err.oob591 ]
  %a.rd.pay625 = phi i64 [ %a.rd.elem601, %a.rd.ok589 ], [ %err.p2i612, %a.rd.err.null590 ], [ %err.p2i623, %a.rd.err.oob591 ]
  %ram.tag626 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag624, 0
  %ram.pay627 = insertvalue { i1, i64 } %ram.tag626, i64 %a.rd.pay625, 1
  %ram.tag628 = extractvalue { i1, i64 } %ram.pay627, 0
  br i1 %ram.tag628, label %choice.then629, label %choice.else630

choice.then629:                                   ; preds = %a.rd.done592
  %ram.pay632 = extractvalue { i1, i64 } %ram.pay627, 1
  %pay.ptr633 = inttoptr i64 %ram.pay632 to ptr
  store ptr %pay.ptr633, ptr %var._634, align 8
  br label %choice.exit631

choice.else630:                                   ; preds = %a.rd.done592
  %ram.pay635 = extractvalue { i1, i64 } %ram.pay627, 1
  %pay.ptr636 = inttoptr i64 %ram.pay635 to ptr
  store ptr %pay.ptr636, ptr %var._637, align 8
  %arena.cur638 = call ptr @dva_arena_current()
  %rec.alloc639 = call ptr @dva_arena_alloc(ptr %arena.cur638, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld640 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc639, i32 0, i32 0
  store i64 0, ptr %rec.fld640, align 8
  %rec.fld641 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc639, i32 0, i32 1
  store i64 0, ptr %rec.fld641, align 8
  %rec.fld642 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc639, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld642, align 8
  br label %choice.exit631

choice.exit631:                                   ; preds = %choice.else630, %choice.then629
  %choice.res643 = phi ptr [ %pay.ptr633, %choice.then629 ], [ %rec.alloc639, %choice.else630 ]
  store ptr %choice.res643, ptr %var.cand_line, align 8
  %var.load644 = load ptr, ptr %var.cand_line, align 8
  %fld.gep645 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load644, i32 0, i32 2
  %fld.load646 = load ptr, ptr %fld.gep645, align 8
  %call.res647 = call i64 @"ccl::find_first_eq"(ptr %fld.load646)
  %cmptmp648 = icmp sge i64 %call.res647, 0
  br i1 %cmptmp648, label %choice.then649, label %choice.else650

choice.then649:                                   ; preds = %choice.exit631
  %var.load652 = load ptr, ptr %var.lines, align 8
  %a.load653 = load ptr, ptr %var.lines, align 8
  %a.null654 = icmp eq ptr %a.load653, null
  br i1 %a.null654, label %a.create655, label %a.after656

choice.else650:                                   ; preds = %choice.exit631
  %arena.cur713 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur713, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep714 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum715 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf716 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf716, label %str_overflow_abort718, label %b.buf.len717

choice.exit651:                                   ; preds = %a.store965, %a.store696
  br label %choice.exit533

a.create655:                                      ; preds = %choice.then649
  %arena.cur657 = call ptr @dva_arena_current()
  %a.create658 = call ptr @dva_arena_alloc(ptr %arena.cur657, i64 24)
  %arena.cur659 = call ptr @dva_arena_current()
  %a.buf660 = call ptr @dva_arena_alloc(ptr %arena.cur659, i64 128)
  %a.len.gep661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create658, i32 0, i32 0
  store i64 0, ptr %a.len.gep661, align 8
  %a.data.gep662 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create658, i32 0, i32 1
  store ptr %a.buf660, ptr %a.data.gep662, align 8
  %a.cap.gep663 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create658, i32 0, i32 2
  store i64 16, ptr %a.cap.gep663, align 8
  store ptr %a.create658, ptr %var.lines, align 8
  br label %a.after656

a.after656:                                       ; preds = %a.create655, %choice.then649
  %a.load2664 = load ptr, ptr %var.lines, align 8
  %var.load665 = load i64, ptr %"var.next_idx'", align 8
  %var.load666 = load i64, ptr %"var.child_ind'", align 8
  %var.load667 = load ptr, ptr %var.file, align 8
  %call.res668 = call { i1, i64 } @"ccl::parse_block_from"(ptr %a.load2664, i64 %var.load665, i64 %var.load666, ptr %var.load667)
  %prop.is_pos = extractvalue { i1, i64 } %call.res668, 0
  br i1 %prop.is_pos, label %prop.pos.100, label %prop.ret.100

prop.pos.100:                                     ; preds = %a.after656
  %prop.pay.pos = extractvalue { i1, i64 } %call.res668, 1
  %pay.ptr669 = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr669, ptr %var.cres, align 8
  %var.load670 = load ptr, ptr %var.k, align 8
  %var.load671 = load ptr, ptr %var.cres, align 8
  %fld.gep672 = getelementptr inbounds { ptr, i64 }, ptr %var.load671, i32 0, i32 0
  %fld.load673 = load ptr, ptr %fld.gep672, align 8
  %var.load674 = load ptr, ptr %var.pl, align 8
  %fld.gep675 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load674, i32 0, i32 0
  %fld.load676 = load i64, ptr %fld.gep675, align 8
  %var.load677 = load ptr, ptr %var.pl, align 8
  %fld.gep678 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load677, i32 0, i32 1
  %fld.load679 = load i64, ptr %fld.gep678, align 8
  %addtmp680 = add i64 %fld.load679, 1
  %call.res681 = call ptr @"ccl::entry_new_block"(ptr %var.load670, ptr %fld.load673, i64 %fld.load676, i64 %addtmp680)
  %a.load682 = load ptr, ptr %var.doc, align 8
  %a.null683 = icmp eq ptr %a.load682, null
  br i1 %a.null683, label %a.create684, label %a.after685

prop.ret.100:                                     ; preds = %a.after656
  ret { i1, i64 } %call.res668

a.create684:                                      ; preds = %prop.pos.100
  %arena.cur686 = call ptr @dva_arena_current()
  %a.create687 = call ptr @dva_arena_alloc(ptr %arena.cur686, i64 24)
  %arena.cur688 = call ptr @dva_arena_current()
  %a.buf689 = call ptr @dva_arena_alloc(ptr %arena.cur688, i64 128)
  %a.len.gep690 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create687, i32 0, i32 0
  store i64 0, ptr %a.len.gep690, align 8
  %a.data.gep691 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create687, i32 0, i32 1
  store ptr %a.buf689, ptr %a.data.gep691, align 8
  %a.cap.gep692 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create687, i32 0, i32 2
  store i64 16, ptr %a.cap.gep692, align 8
  store ptr %a.create687, ptr %var.doc, align 8
  br label %a.after685

a.after685:                                       ; preds = %a.create684, %prop.pos.100
  %a.load2693 = load ptr, ptr %var.doc, align 8
  br label %a.check694

a.check694:                                       ; preds = %a.after685
  %a.len697 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2693, i32 0, i32 0
  %a.len698 = load i64, ptr %a.len697, align 8
  %a.cap699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2693, i32 0, i32 2
  %a.cap700 = load i64, ptr %a.cap699, align 8
  %a.needs.grow701 = icmp eq i64 %a.len698, %a.cap700
  br i1 %a.needs.grow701, label %a.grow695, label %a.store696

a.grow695:                                        ; preds = %a.check694
  call void @dva_array_grow(ptr %a.load2693)
  br label %a.store696

a.store696:                                       ; preds = %a.grow695, %a.check694
  %a.cur.data702 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2693, i32 0, i32 1
  %a.cur.data703 = load ptr, ptr %a.cur.data702, align 8
  %a.cur.len704 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2693, i32 0, i32 0
  %a.cur.len705 = load i64, ptr %a.cur.len704, align 8
  %a.elem.gep706 = getelementptr i64, ptr %a.cur.data703, i64 %a.cur.len705
  %slot.p2i707 = ptrtoint ptr %call.res681 to i64
  store i64 %slot.p2i707, ptr %a.elem.gep706, align 8
  %a.next.len708 = add i64 %a.cur.len705, 1
  %b.len.gep709 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2693, i32 0, i32 0
  store i64 %a.next.len708, ptr %b.len.gep709, align 8
  %var.load710 = load ptr, ptr %var.cres, align 8
  %fld.gep711 = getelementptr inbounds { ptr, i64 }, ptr %var.load710, i32 0, i32 1
  %fld.load712 = load i64, ptr %fld.gep711, align 8
  store i64 %fld.load712, ptr %"var.idx'", align 8
  br label %choice.exit651

b.buf.len717:                                     ; preds = %str_overflow_abort718, %choice.else650
  %arena.cur719 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur719, i64 %sum715)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep714, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.tb, align 8
  store i64 0, ptr %loop.idx.101, align 8
  %cycle.prev.u720 = load i64, ptr %var._, align 8
  %cycle.prev.i721 = load i64, ptr %var._i, align 8
  br label %loop.header.101

str_overflow_abort718:                            ; preds = %choice.else650
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len717

loop.header.101:                                  ; preds = %loop.latch.101, %b.buf.len717
  %counter.load722 = load i64, ptr %loop.idx.101, align 8
  br label %loop.body.101

loop.body.101:                                    ; preds = %loop.header.101
  %loop.rel.i723 = sub i64 %counter.load722, 0
  store i64 1, ptr %loop.step.101, align 8
  store i64 %loop.rel.i723, ptr %var._i724, align 8
  store i64 %counter.load722, ptr %var._725, align 8
  %var.load726 = load i64, ptr %"var.next_idx'", align 8
  %var.load727 = load i64, ptr %var.total, align 8
  %cmptmp728 = icmp sge i64 %var.load726, %var.load727
  br i1 %cmptmp728, label %choice.then729, label %choice.exit730

loop.exit.nat.101:                                ; No predecessors!
  br label %loop.exit.101

loop.latch.101:                                   ; preds = %choice.exit836
  %step.val932 = load i64, ptr %loop.step.101, align 8
  %loop.next933 = add i64 %counter.load722, %step.val932
  store i64 %loop.next933, ptr %loop.idx.101, align 8
  br label %loop.header.101

loop.exit.101:                                    ; preds = %choice.then855, %choice.then729, %loop.exit.nat.101
  store i64 %cycle.prev.u720, ptr %var._, align 8
  store i64 %cycle.prev.i721, ptr %var._i, align 8
  %var.load934 = load ptr, ptr %var.k, align 8
  %var.load935 = load ptr, ptr %var.tb, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load935, i32 0, i32 0
  %b.freeze.len936 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load935, i32 0, i32 1
  %b.freeze.data937 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then729:                                   ; preds = %loop.body.101
  br label %loop.exit.101

choice.exit730:                                   ; preds = %loop.body.101
  %var.load731 = load ptr, ptr %var.lines, align 8
  %a.load732 = load ptr, ptr %var.lines, align 8
  %a.null733 = icmp eq ptr %a.load732, null
  br i1 %a.null733, label %a.create734, label %a.after735

a.create734:                                      ; preds = %choice.exit730
  %arena.cur736 = call ptr @dva_arena_current()
  %a.create737 = call ptr @dva_arena_alloc(ptr %arena.cur736, i64 24)
  %arena.cur738 = call ptr @dva_arena_current()
  %a.buf739 = call ptr @dva_arena_alloc(ptr %arena.cur738, i64 128)
  %a.len.gep740 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create737, i32 0, i32 0
  store i64 0, ptr %a.len.gep740, align 8
  %a.data.gep741 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create737, i32 0, i32 1
  store ptr %a.buf739, ptr %a.data.gep741, align 8
  %a.cap.gep742 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create737, i32 0, i32 2
  store i64 16, ptr %a.cap.gep742, align 8
  store ptr %a.create737, ptr %var.lines, align 8
  br label %a.after735

a.after735:                                       ; preds = %a.create734, %choice.exit730
  %a.load2743 = load ptr, ptr %var.lines, align 8
  %var.load744 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull745 = icmp ne ptr %a.load2743, null
  br i1 %a.rd.nonnull745, label %a.rd.check746, label %a.rd.err.null748

a.rd.check746:                                    ; preds = %a.after735
  %a.rd.len751 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2743, i32 0, i32 0
  %a.rd.len752 = load i64, ptr %a.rd.len751, align 8
  %a.rd.ge0753 = icmp sge i64 %var.load744, 0
  %a.rd.lt754 = icmp slt i64 %var.load744, %a.rd.len752
  %a.rd.bounds755 = and i1 %a.rd.ge0753, %a.rd.lt754
  br i1 %a.rd.bounds755, label %a.rd.ok747, label %a.rd.err.oob749

a.rd.ok747:                                       ; preds = %a.rd.check746
  %a.rd.data756 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2743, i32 0, i32 1
  %a.rd.data757 = load ptr, ptr %a.rd.data756, align 8
  %a.rd.elem.gep758 = getelementptr i64, ptr %a.rd.data757, i64 %var.load744
  %a.rd.elem759 = load i64, ptr %a.rd.elem.gep758, align 8
  br label %a.rd.done750

a.rd.err.null748:                                 ; preds = %a.after735
  %arena.cur760 = call ptr @dva_arena_current()
  %err.alloc761 = call ptr @dva_arena_alloc(ptr %arena.cur760, i64 56)
  %err.code.gep762 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc761, i32 0, i32 0
  store i64 4011, ptr %err.code.gep762, align 8
  %err.msg.gep763 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc761, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep763, align 8
  %err.file.gep764 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc761, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep764, align 8
  %err.line.gep765 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc761, i32 0, i32 3
  store i64 237, ptr %err.line.gep765, align 8
  %err.col.gep766 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc761, i32 0, i32 4
  store i64 62, ptr %err.col.gep766, align 8
  %err.ctx.gep767 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc761, i32 0, i32 5
  %err.ctx0.gep768 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep767, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep768, align 8
  %err.ctx1.gep769 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep767, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep769, align 8
  %err.p2i770 = ptrtoint ptr %err.alloc761 to i64
  br label %a.rd.done750

a.rd.err.oob749:                                  ; preds = %a.rd.check746
  %arena.cur771 = call ptr @dva_arena_current()
  %err.alloc772 = call ptr @dva_arena_alloc(ptr %arena.cur771, i64 56)
  %err.code.gep773 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 0
  store i64 4011, ptr %err.code.gep773, align 8
  %err.msg.gep774 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep774, align 8
  %err.file.gep775 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep775, align 8
  %err.line.gep776 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 3
  store i64 237, ptr %err.line.gep776, align 8
  %err.col.gep777 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 4
  store i64 62, ptr %err.col.gep777, align 8
  %err.ctx.gep778 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc772, i32 0, i32 5
  %err.ctx0.gep779 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep778, i32 0, i32 0
  store i64 %var.load744, ptr %err.ctx0.gep779, align 8
  %err.ctx1.gep780 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep778, i32 0, i32 1
  store i64 %a.rd.len752, ptr %err.ctx1.gep780, align 8
  %err.p2i781 = ptrtoint ptr %err.alloc772 to i64
  br label %a.rd.done750

a.rd.done750:                                     ; preds = %a.rd.err.oob749, %a.rd.err.null748, %a.rd.ok747
  %a.rd.tag782 = phi i1 [ true, %a.rd.ok747 ], [ false, %a.rd.err.null748 ], [ false, %a.rd.err.oob749 ]
  %a.rd.pay783 = phi i64 [ %a.rd.elem759, %a.rd.ok747 ], [ %err.p2i770, %a.rd.err.null748 ], [ %err.p2i781, %a.rd.err.oob749 ]
  %ram.tag784 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag782, 0
  %ram.pay785 = insertvalue { i1, i64 } %ram.tag784, i64 %a.rd.pay783, 1
  %ram.tag786 = extractvalue { i1, i64 } %ram.pay785, 0
  br i1 %ram.tag786, label %choice.then787, label %choice.else788

choice.then787:                                   ; preds = %a.rd.done750
  %ram.pay790 = extractvalue { i1, i64 } %ram.pay785, 1
  %pay.ptr791 = inttoptr i64 %ram.pay790 to ptr
  store ptr %pay.ptr791, ptr %var._792, align 8
  br label %choice.exit789

choice.else788:                                   ; preds = %a.rd.done750
  %ram.pay793 = extractvalue { i1, i64 } %ram.pay785, 1
  %pay.ptr794 = inttoptr i64 %ram.pay793 to ptr
  store ptr %pay.ptr794, ptr %var._795, align 8
  %arena.cur796 = call ptr @dva_arena_current()
  %rec.alloc797 = call ptr @dva_arena_alloc(ptr %arena.cur796, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld798 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc797, i32 0, i32 0
  store i64 0, ptr %rec.fld798, align 8
  %rec.fld799 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc797, i32 0, i32 1
  store i64 0, ptr %rec.fld799, align 8
  %rec.fld800 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc797, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld800, align 8
  br label %choice.exit789

choice.exit789:                                   ; preds = %choice.else788, %choice.then787
  %choice.res801 = phi ptr [ %pay.ptr791, %choice.then787 ], [ %rec.alloc797, %choice.else788 ]
  store ptr %choice.res801, ptr %var.cl, align 8
  %var.load802 = load ptr, ptr %var.cl, align 8
  %fld.gep803 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load802, i32 0, i32 2
  %fld.load804 = load ptr, ptr %fld.gep803, align 8
  %eq.lhs.len805 = getelementptr inbounds { i64, ptr }, ptr %fld.load804, i32 0, i32 0
  %eq.lhs.len806 = load i64, ptr %eq.lhs.len805, align 8
  %eq.lhs.len807 = and i64 %eq.lhs.len806, 281474976710655
  %str.tag808 = lshr i64 %eq.lhs.len806, 48
  %str.immortal809 = icmp eq i64 %str.tag808, 0
  br i1 %str.immortal809, label %str_ok811, label %str_gen_check810

str_gen_check810:                                 ; preds = %choice.exit789
  %arena.cur813 = call ptr @dva_arena_current()
  %tag.valid814 = call i1 @dva_arena_validate_tag(ptr %arena.cur813, i64 %str.tag808)
  br i1 %tag.valid814, label %str_ok811, label %str_stale812

str_ok811:                                        ; preds = %str_stale812, %str_gen_check810, %choice.exit789
  %eq.rhs.len815 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len816 = and i64 %eq.rhs.len815, 281474976710655
  %str.tag817 = lshr i64 %eq.rhs.len815, 48
  %str.immortal818 = icmp eq i64 %str.tag817, 0
  br i1 %str.immortal818, label %str_ok820, label %str_gen_check819

str_stale812:                                     ; preds = %str_gen_check810
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok811

str_gen_check819:                                 ; preds = %str_ok811
  %arena.cur822 = call ptr @dva_arena_current()
  %tag.valid823 = call i1 @dva_arena_validate_tag(ptr %arena.cur822, i64 %str.tag817)
  br i1 %tag.valid823, label %str_ok820, label %str_stale821

str_ok820:                                        ; preds = %str_stale821, %str_gen_check819, %str_ok811
  %eq.len824 = icmp eq i64 %eq.lhs.len807, %eq.rhs.len816
  br i1 %eq.len824, label %str.eq.then825, label %str.eq.else826

str_stale821:                                     ; preds = %str_gen_check819
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok820

str.eq.then825:                                   ; preds = %str_ok820
  %eq.lhs.data828 = getelementptr inbounds { i64, ptr }, ptr %fld.load804, i32 0, i32 1
  %eq.lhs.data829 = load ptr, ptr %eq.lhs.data828, align 8
  %eq.rhs.data830 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp831 = call i32 @memcmp(ptr %eq.lhs.data829, ptr %eq.rhs.data830, i64 %eq.lhs.len807)
  %eq.cmp.zero832 = icmp eq i32 %eq.memcmp831, 0
  br label %str.eq.merge827

str.eq.else826:                                   ; preds = %str_ok820
  br label %str.eq.merge827

str.eq.merge827:                                  ; preds = %str.eq.else826, %str.eq.then825
  %str.eq.result833 = phi i1 [ %eq.cmp.zero832, %str.eq.then825 ], [ false, %str.eq.else826 ]
  br i1 %str.eq.result833, label %choice.then834, label %choice.else835

choice.then834:                                   ; preds = %str.eq.merge827
  %b.load = load ptr, ptr %var.tb, align 8
  br i1 true, label %b.byte_ok, label %b.byte_err

choice.else835:                                   ; preds = %str.eq.merge827
  %var.load850 = load ptr, ptr %var.cl, align 8
  %fld.gep851 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load850, i32 0, i32 1
  %fld.load852 = load i64, ptr %fld.gep851, align 8
  %var.load853 = load i64, ptr %"var.child_ind'", align 8
  %cmptmp854 = icmp slt i64 %fld.load852, %var.load853
  br i1 %cmptmp854, label %choice.then855, label %choice.exit856

choice.exit836:                                   ; preds = %b.grow_done, %b.push_done
  br label %loop.latch.101

b.byte_ok:                                        ; preds = %b.byte_err, %choice.then834
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len837 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap838 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data839 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len837, %b.cap838
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then834
  %24 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap838, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum840 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf841 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf841, label %str_overflow_abort843, label %b.new.buf.len842

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len842
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data845 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len846 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data845, i64 %b.cur.len846
  store i8 10, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len846, 1
  %b.nul = getelementptr i8, ptr %b.cur.data845, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep847 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep847, align 8
  %var.load848 = load i64, ptr %"var.next_idx'", align 8
  %addtmp849 = add i64 %var.load848, 1
  store i64 %addtmp849, ptr %"var.next_idx'", align 8
  br label %choice.exit836

b.new.buf.len842:                                 ; preds = %str_overflow_abort843, %b.grow
  %arena.cur844 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur844, i64 %sum840)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data839, i64 %b.len837, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len837
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort843:                            ; preds = %b.grow
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len842

choice.then855:                                   ; preds = %choice.else835
  br label %loop.exit.101

choice.exit856:                                   ; preds = %choice.else835
  %var.load857 = load ptr, ptr %var.tb, align 8
  %b.len858 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load857, i32 0, i32 0
  %b.len859 = load i64, ptr %b.len858, align 8
  %cmptmp860 = icmp sgt i64 %b.len859, 0
  br i1 %cmptmp860, label %choice.then861, label %choice.exit862

choice.then861:                                   ; preds = %choice.exit856
  %b.load863 = load ptr, ptr %var.tb, align 8
  br i1 true, label %b.byte_ok864, label %b.byte_err865

choice.exit862:                                   ; preds = %b.push_done875, %choice.exit856
  %b.load897 = load ptr, ptr %var.tb, align 8
  %var.load898 = load ptr, ptr %var.cl, align 8
  %fld.gep899 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load898, i32 0, i32 2
  %fld.load900 = load ptr, ptr %fld.gep899, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load900, i32 0, i32 0
  %app.str.len901 = load i64, ptr %app.str.len, align 8
  %app.str.len902 = and i64 %app.str.len901, 281474976710655
  %str.tag903 = lshr i64 %app.str.len901, 48
  %str.immortal904 = icmp eq i64 %str.tag903, 0
  br i1 %str.immortal904, label %str_ok906, label %str_gen_check905

b.byte_ok864:                                     ; preds = %b.byte_err865, %choice.then861
  %b.len866 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load863, i32 0, i32 0
  %b.len867 = load i64, ptr %b.len866, align 8
  %b.cap868 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load863, i32 0, i32 2
  %b.cap869 = load i64, ptr %b.cap868, align 8
  %b.data870 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load863, i32 0, i32 1
  %b.data871 = load ptr, ptr %b.data870, align 8
  %b.needs.grow872 = icmp eq i64 %b.len867, %b.cap869
  br i1 %b.needs.grow872, label %b.grow873, label %b.nogrow874

b.byte_err865:                                    ; preds = %choice.then861
  %26 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok864

b.grow873:                                        ; preds = %b.byte_ok864
  %b.cap2876 = mul i64 %b.cap869, 2
  %b.cap.small877 = icmp slt i64 %b.cap2876, 16
  %b.new.cap878 = select i1 %b.cap.small877, i64 16, i64 %b.cap2876
  %b.new.buf.len879 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap878, i64 1)
  %sum880 = extractvalue { i64, i1 } %b.new.buf.len879, 0
  %ovf881 = extractvalue { i64, i1 } %b.new.buf.len879, 1
  br i1 %ovf881, label %str_overflow_abort883, label %b.new.buf.len882

b.nogrow874:                                      ; preds = %b.byte_ok864
  br label %b.push_done875

b.push_done875:                                   ; preds = %b.nogrow874, %b.new.buf.len882
  %b.cur.data889 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load863, i32 0, i32 1
  %b.cur.data890 = load ptr, ptr %b.cur.data889, align 8
  %b.cur.len891 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load863, i32 0, i32 0
  %b.cur.len892 = load i64, ptr %b.cur.len891, align 8
  %b.byte.gep893 = getelementptr i8, ptr %b.cur.data890, i64 %b.cur.len892
  store i8 10, ptr %b.byte.gep893, align 1
  %b.next.len894 = add i64 %b.cur.len892, 1
  %b.nul895 = getelementptr i8, ptr %b.cur.data890, i64 %b.next.len894
  store i8 0, ptr %b.nul895, align 1
  %b.len.gep896 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load863, i32 0, i32 0
  store i64 %b.next.len894, ptr %b.len.gep896, align 8
  br label %choice.exit862

b.new.buf.len882:                                 ; preds = %str_overflow_abort883, %b.grow873
  %arena.cur884 = call ptr @dva_arena_current()
  %b.new.buf885 = call ptr @dva_arena_alloc(ptr %arena.cur884, i64 %sum880)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf885, ptr align 1 %b.data871, i64 %b.len867, i1 false)
  %b.grow.nul886 = getelementptr i8, ptr %b.new.buf885, i64 %b.len867
  store i8 0, ptr %b.grow.nul886, align 1
  %b.new.data.gep887 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load863, i32 0, i32 1
  store ptr %b.new.buf885, ptr %b.new.data.gep887, align 8
  %b.new.cap.gep888 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load863, i32 0, i32 2
  store i64 %b.new.cap878, ptr %b.new.cap.gep888, align 8
  br label %b.push_done875

str_overflow_abort883:                            ; preds = %b.grow873
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len882

str_gen_check905:                                 ; preds = %choice.exit862
  %arena.cur908 = call ptr @dva_arena_current()
  %tag.valid909 = call i1 @dva_arena_validate_tag(ptr %arena.cur908, i64 %str.tag903)
  br i1 %tag.valid909, label %str_ok906, label %str_stale907

str_ok906:                                        ; preds = %str_stale907, %str_gen_check905, %choice.exit862
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 0
  %b.app.cur.len910 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len910, i64 %app.str.len902)
  %sum911 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf912 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf912, label %str_overflow_abort914, label %b.app.new.len913

str_stale907:                                     ; preds = %str_gen_check905
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok906

b.app.new.len913:                                 ; preds = %str_overflow_abort914, %str_ok906
  %b.cap915 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 2
  %b.cap916 = load i64, ptr %b.cap915, align 8
  %b.need.grow = icmp slt i64 %b.cap916, %sum911
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort914:                            ; preds = %str_ok906
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len913

b.grow2:                                          ; preds = %b.app.new.len913
  %b.cap2917 = mul i64 %b.cap916, 2
  %b.cap.small918 = icmp slt i64 %b.cap2917, 16
  %b.cap.grow = select i1 %b.cap.small918, i64 16, i64 %b.cap2917
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum911
  %b.new.cap919 = select i1 %b.cap.need, i64 %sum911, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 0
  %b.cur.len2920 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 1
  %b.cur.data2921 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap919, i64 1)
  %sum922 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf923 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf923, label %str_overflow_abort925, label %b.new.buf.len2924

b.nogrow2:                                        ; preds = %b.app.new.len913
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2924
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load900, i32 0, i32 1
  %app.str.data927 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 1
  %b.app.data928 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data928, i64 %b.app.cur.len910
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data927, i64 %app.str.len902, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data928, i64 %sum911
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep929 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 0
  store i64 %sum911, ptr %b.len.gep929, align 8
  %var.load930 = load i64, ptr %"var.next_idx'", align 8
  %addtmp931 = add i64 %var.load930, 1
  store i64 %addtmp931, ptr %"var.next_idx'", align 8
  br label %choice.exit836

b.new.buf.len2924:                                ; preds = %str_overflow_abort925, %b.grow2
  %arena.cur926 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur926, i64 %sum922)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2921, i64 %b.cur.len2920, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2920
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 2
  store i64 %b.new.cap919, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort925:                            ; preds = %b.grow2
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2924

b.freeze.check:                                   ; preds = %loop.exit.101
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data937, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data937, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data937, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len936, 1
  %arena.cur938 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur938, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data937, i64 %b.freeze.len936, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len936
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.101
  %b.freeze.data939 = phi ptr [ %b.freeze.data937, %loop.exit.101 ], [ %b.freeze.data937, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur940 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur940, i64 16)
  %str.build.len.gep941 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len936, ptr %str.build.len.gep941, align 8
  %str.build.data.gep942 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data939, ptr %str.build.data.gep942, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load935, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load935, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load935, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %var.load943 = load ptr, ptr %var.pl, align 8
  %fld.gep944 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load943, i32 0, i32 0
  %fld.load945 = load i64, ptr %fld.gep944, align 8
  %var.load946 = load ptr, ptr %var.pl, align 8
  %fld.gep947 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load946, i32 0, i32 1
  %fld.load948 = load i64, ptr %fld.gep947, align 8
  %addtmp949 = add i64 %fld.load948, 1
  %call.res950 = call ptr @"ccl::entry_new_str"(ptr %var.load934, ptr %builder.freeze, i64 %fld.load945, i64 %addtmp949)
  %a.load951 = load ptr, ptr %var.doc, align 8
  %a.null952 = icmp eq ptr %a.load951, null
  br i1 %a.null952, label %a.create953, label %a.after954

a.create953:                                      ; preds = %b.freeze.done
  %arena.cur955 = call ptr @dva_arena_current()
  %a.create956 = call ptr @dva_arena_alloc(ptr %arena.cur955, i64 24)
  %arena.cur957 = call ptr @dva_arena_current()
  %a.buf958 = call ptr @dva_arena_alloc(ptr %arena.cur957, i64 128)
  %a.len.gep959 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create956, i32 0, i32 0
  store i64 0, ptr %a.len.gep959, align 8
  %a.data.gep960 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create956, i32 0, i32 1
  store ptr %a.buf958, ptr %a.data.gep960, align 8
  %a.cap.gep961 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create956, i32 0, i32 2
  store i64 16, ptr %a.cap.gep961, align 8
  store ptr %a.create956, ptr %var.doc, align 8
  br label %a.after954

a.after954:                                       ; preds = %a.create953, %b.freeze.done
  %a.load2962 = load ptr, ptr %var.doc, align 8
  br label %a.check963

a.check963:                                       ; preds = %a.after954
  %a.len966 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2962, i32 0, i32 0
  %a.len967 = load i64, ptr %a.len966, align 8
  %a.cap968 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2962, i32 0, i32 2
  %a.cap969 = load i64, ptr %a.cap968, align 8
  %a.needs.grow970 = icmp eq i64 %a.len967, %a.cap969
  br i1 %a.needs.grow970, label %a.grow964, label %a.store965

a.grow964:                                        ; preds = %a.check963
  call void @dva_array_grow(ptr %a.load2962)
  br label %a.store965

a.store965:                                       ; preds = %a.grow964, %a.check963
  %a.cur.data971 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2962, i32 0, i32 1
  %a.cur.data972 = load ptr, ptr %a.cur.data971, align 8
  %a.cur.len973 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2962, i32 0, i32 0
  %a.cur.len974 = load i64, ptr %a.cur.len973, align 8
  %a.elem.gep975 = getelementptr i64, ptr %a.cur.data972, i64 %a.cur.len974
  %slot.p2i976 = ptrtoint ptr %call.res950 to i64
  store i64 %slot.p2i976, ptr %a.elem.gep975, align 8
  %a.next.len977 = add i64 %a.cur.len974, 1
  %b.len.gep978 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2962, i32 0, i32 0
  store i64 %a.next.len977, ptr %b.len.gep978, align 8
  %var.load979 = load i64, ptr %"var.next_idx'", align 8
  store i64 %var.load979, ptr %"var.idx'", align 8
  br label %choice.exit651

a.create985:                                      ; preds = %loop.exit.96
  %arena.cur987 = call ptr @dva_arena_current()
  %a.create988 = call ptr @dva_arena_alloc(ptr %arena.cur987, i64 24)
  %arena.cur989 = call ptr @dva_arena_current()
  %a.buf990 = call ptr @dva_arena_alloc(ptr %arena.cur989, i64 128)
  %a.len.gep991 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create988, i32 0, i32 0
  store i64 0, ptr %a.len.gep991, align 8
  %a.data.gep992 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create988, i32 0, i32 1
  store ptr %a.buf990, ptr %a.data.gep992, align 8
  %a.cap.gep993 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create988, i32 0, i32 2
  store i64 16, ptr %a.cap.gep993, align 8
  store ptr %a.create988, ptr %var.doc, align 8
  br label %a.after986

a.after986:                                       ; preds = %a.create985, %loop.exit.96
  %a.load2994 = load ptr, ptr %var.doc, align 8
  %var.load995 = load i64, ptr %"var.idx'", align 8
  %arena.cur996 = call ptr @dva_arena_current()
  %rec.alloc997 = call ptr @dva_arena_alloc(ptr %arena.cur996, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld998 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc997, i32 0, i32 0
  store ptr %a.load2994, ptr %rec.fld998, align 8
  %rec.fld999 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc997, i32 0, i32 1
  store i64 %var.load995, ptr %rec.fld999, align 8
  %p.to.i641000 = ptrtoint ptr %rec.alloc997 to i64
  %ram.pay1001 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i641000, 1
  ret { i1, i64 } %ram.pay1001
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define { i1, i64 } @"ccl::parse"(ptr %0, ptr %1) #1 {
entry:
  %var.bad = alloca ptr, align 8
  %var._58 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.pair = alloca ptr, align 8
  %var.lines = alloca ptr, align 8
  %var.file = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr %1, ptr %var.file, align 8
  %var.load = load ptr, ptr %var.src, align 8
  %call.res = call ptr @"ccl::split_raw_lines"(ptr %var.load)
  store ptr %call.res, ptr %var.lines, align 8
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
  %var.load4 = load ptr, ptr %var.file, align 8
  %call.res5 = call { i1, i64 } @"ccl::parse_block_from"(ptr %a.load2, i64 0, i64 0, ptr %var.load4)
  %prop.is_pos = extractvalue { i1, i64 } %call.res5, 0
  br i1 %prop.is_pos, label %prop.pos.102, label %prop.ret.102

prop.pos.102:                                     ; preds = %a.after
  %prop.pay.pos = extractvalue { i1, i64 } %call.res5, 1
  %pay.ptr = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.pair, align 8
  %var.load6 = load ptr, ptr %var.pair, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load7 = load ptr, ptr %var.lines, align 8
  %a.load8 = load ptr, ptr %var.lines, align 8
  %a.null9 = icmp eq ptr %a.load8, null
  br i1 %a.null9, label %a.create10, label %a.after11

prop.ret.102:                                     ; preds = %a.after
  ret { i1, i64 } %call.res5

a.create10:                                       ; preds = %prop.pos.102
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

a.after11:                                        ; preds = %a.create10, %prop.pos.102
  %a.load219 = load ptr, ptr %var.lines, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load219, i32 0, i32 0
  %a.len.query20 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp slt i64 %fld.load, %a.len.query20
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after11
  %var.load21 = load ptr, ptr %var.lines, align 8
  %a.load22 = load ptr, ptr %var.lines, align 8
  %a.null23 = icmp eq ptr %a.load22, null
  br i1 %a.null23, label %a.create24, label %a.after25

choice.exit:                                      ; preds = %ret.dead, %a.after11
  %var.load71 = load ptr, ptr %var.pair, align 8
  %fld.gep72 = getelementptr inbounds { ptr, i64 }, ptr %var.load71, i32 0, i32 0
  %fld.load73 = load ptr, ptr %fld.gep72, align 8
  %p.to.i6474 = ptrtoint ptr %fld.load73 to i64
  %ram.pay75 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6474, 1
  ret { i1, i64 } %ram.pay75

a.create24:                                       ; preds = %choice.then
  %arena.cur26 = call ptr @dva_arena_current()
  %a.create27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 24)
  %arena.cur28 = call ptr @dva_arena_current()
  %a.buf29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 128)
  %a.len.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 0
  store i64 0, ptr %a.len.gep30, align 8
  %a.data.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 1
  store ptr %a.buf29, ptr %a.data.gep31, align 8
  %a.cap.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 2
  store i64 16, ptr %a.cap.gep32, align 8
  store ptr %a.create27, ptr %var.lines, align 8
  br label %a.after25

a.after25:                                        ; preds = %a.create24, %choice.then
  %a.load233 = load ptr, ptr %var.lines, align 8
  %var.load34 = load ptr, ptr %var.pair, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64 }, ptr %var.load34, i32 0, i32 1
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  %a.rd.nonnull = icmp ne ptr %a.load233, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after25
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load233, i32 0, i32 0
  %a.rd.len37 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %fld.load36, 0
  %a.rd.lt = icmp slt i64 %fld.load36, %a.rd.len37
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load233, i32 0, i32 1
  %a.rd.data38 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data38, i64 %fld.load36
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after25
  %arena.cur39 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 257, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 27, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur40 = call ptr @dva_arena_current()
  %err.alloc41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 56)
  %err.code.gep42 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc41, i32 0, i32 0
  store i64 4011, ptr %err.code.gep42, align 8
  %err.msg.gep43 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc41, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep43, align 8
  %err.file.gep44 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc41, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep44, align 8
  %err.line.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc41, i32 0, i32 3
  store i64 257, ptr %err.line.gep45, align 8
  %err.col.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc41, i32 0, i32 4
  store i64 27, ptr %err.col.gep46, align 8
  %err.ctx.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc41, i32 0, i32 5
  %err.ctx0.gep48 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep47, i32 0, i32 0
  store i64 %fld.load36, ptr %err.ctx0.gep48, align 8
  %err.ctx1.gep49 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep47, i32 0, i32 1
  store i64 %a.rd.len37, ptr %err.ctx1.gep49, align 8
  %err.p2i50 = ptrtoint ptr %err.alloc41 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i50, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag51 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag51, label %choice.then52, label %choice.else

choice.then52:                                    ; preds = %a.rd.done
  %ram.pay54 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr55 = inttoptr i64 %ram.pay54 to ptr
  store ptr %pay.ptr55, ptr %var._, align 8
  br label %choice.exit53

choice.else:                                      ; preds = %a.rd.done
  %ram.pay56 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr57 = inttoptr i64 %ram.pay56 to ptr
  store ptr %pay.ptr57, ptr %var._58, align 8
  %arena.cur59 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 1, ptr %rec.fld, align 8
  %rec.fld60 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld60, align 8
  %rec.fld61 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld61, align 8
  br label %choice.exit53

choice.exit53:                                    ; preds = %choice.else, %choice.then52
  %choice.res = phi ptr [ %pay.ptr55, %choice.then52 ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.bad, align 8
  %var.load62 = load ptr, ptr %var.file, align 8
  %var.load63 = load ptr, ptr %var.bad, align 8
  %fld.gep64 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load63, i32 0, i32 0
  %fld.load65 = load i64, ptr %fld.gep64, align 8
  %var.load66 = load ptr, ptr %var.bad, align 8
  %fld.gep67 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load66, i32 0, i32 1
  %fld.load68 = load i64, ptr %fld.gep67, align 8
  %addtmp = add i64 %fld.load68, 1
  %call.res69 = call ptr @"ccl::ccl_error"(ptr %var.load62, ptr @str.7.struct, i64 %fld.load65, i64 %addtmp)
  %p.to.i64 = ptrtoint ptr %call.res69 to i64
  %ram.pay70 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay70

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define { i1, i64 } @"ccl::parse_file"(ptr %0) #1 {
entry:
  %var.content = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.txt = alloca ptr, align 8
  %var.r = alloca ptr, align 8
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
  %var.load10 = load ptr, ptr %var.path, align 8
  %var.load11 = load ptr, ptr %var.path, align 8
  %concat.lhs = load i64, ptr @str.8.struct, align 8
  %concat.lhs12 = and i64 %concat.lhs, 281474976710655
  %str.tag13 = lshr i64 %concat.lhs, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load43 = load i64, ptr %var.fd, align 8
  %call.res44 = call ptr @"io::reader"(i64 %var.load43)
  store ptr %call.res44, ptr %var.r, align 8
  %var.load45 = load ptr, ptr %var.r, align 8
  %call.res46 = call ptr @"io::read_all"(ptr %var.load45, i64 1048576)
  store ptr %call.res46, ptr %var.txt, align 8
  %var.load47 = load i64, ptr %var.fd, align 8
  %coerce.trunc = trunc i64 %var.load47 to i32
  %call.res48 = call i32 @close(i32 %coerce.trunc)
  %var.load49 = load ptr, ptr %var.txt, align 8
  %niche.ne.null = icmp ne ptr %var.load49, null
  br i1 %niche.ne.null, label %choice.then50, label %choice.else

str_gen_check15:                                  ; preds = %choice.then
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %choice.then
  %concat.lhs20 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %concat.rhs21 = load i64, ptr %concat.rhs, align 8
  %concat.rhs22 = and i64 %concat.rhs21, 281474976710655
  %str.tag23 = lshr i64 %concat.rhs21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

str_stale17:                                      ; preds = %str_gen_check15
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

str_gen_check25:                                  ; preds = %str_ok16
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %str_ok16
  %concat.rhs30 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %concat.rhs31 = load ptr, ptr %concat.rhs30, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs12, i64 %concat.rhs22)
  %sum32 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf33 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf33, label %str_overflow_abort35, label %concat.sum.len34

str_stale27:                                      ; preds = %str_gen_check25
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

concat.sum.len34:                                 ; preds = %str_overflow_abort35, %str_ok26
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum32, i64 1)
  %sum36 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf37 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf37, label %str_overflow_abort39, label %concat.tot.len38

str_overflow_abort35:                             ; preds = %str_ok26
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len34

concat.tot.len38:                                 ; preds = %str_overflow_abort39, %concat.sum.len34
  %arena.cur40 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs20, i64 %concat.lhs12, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs31, i64 %concat.rhs22, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum32
  store i8 0, ptr %concat.nul, align 1
  %arena.cur41 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum32, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res42 = call ptr @"ccl::ccl_error"(ptr %var.load10, ptr %concat.str, i64 1, i64 1)
  %p.to.i64 = ptrtoint ptr %call.res42 to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

str_overflow_abort39:                             ; preds = %concat.sum.len34
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len38

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then50:                                    ; preds = %choice.exit
  store ptr %var.load49, ptr %var._, align 8
  store ptr %var.load49, ptr %var.content, align 8
  %var.load52 = load ptr, ptr %var.content, align 8
  %var.load53 = load ptr, ptr %var.path, align 8
  %call.res54 = call { i1, i64 } @"ccl::parse"(ptr %var.load52, ptr %var.load53)
  br label %choice.exit51

choice.else:                                      ; preds = %choice.exit
  %var.load55 = load ptr, ptr %var.path, align 8
  %var.load56 = load ptr, ptr %var.path, align 8
  %concat.lhs57 = load i64, ptr @str.9.struct, align 8
  %concat.lhs58 = and i64 %concat.lhs57, 281474976710655
  %str.tag59 = lshr i64 %concat.lhs57, 48
  %str.immortal60 = icmp eq i64 %str.tag59, 0
  br i1 %str.immortal60, label %str_ok62, label %str_gen_check61

choice.exit51:                                    ; preds = %concat.tot.len87, %choice.then50
  %choice.res = phi { i1, i64 } [ %call.res54, %choice.then50 ], [ %ram.pay99, %concat.tot.len87 ]
  ret { i1, i64 } %choice.res

str_gen_check61:                                  ; preds = %choice.else
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %str.tag59)
  br i1 %tag.valid65, label %str_ok62, label %str_stale63

str_ok62:                                         ; preds = %str_stale63, %str_gen_check61, %choice.else
  %concat.lhs66 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %concat.rhs67 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %concat.rhs68 = load i64, ptr %concat.rhs67, align 8
  %concat.rhs69 = and i64 %concat.rhs68, 281474976710655
  %str.tag70 = lshr i64 %concat.rhs68, 48
  %str.immortal71 = icmp eq i64 %str.tag70, 0
  br i1 %str.immortal71, label %str_ok73, label %str_gen_check72

str_stale63:                                      ; preds = %str_gen_check61
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok62

str_gen_check72:                                  ; preds = %str_ok62
  %arena.cur75 = call ptr @dva_arena_current()
  %tag.valid76 = call i1 @dva_arena_validate_tag(ptr %arena.cur75, i64 %str.tag70)
  br i1 %tag.valid76, label %str_ok73, label %str_stale74

str_ok73:                                         ; preds = %str_stale74, %str_gen_check72, %str_ok62
  %concat.rhs77 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %concat.rhs78 = load ptr, ptr %concat.rhs77, align 8
  %concat.sum.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs58, i64 %concat.rhs69)
  %sum80 = extractvalue { i64, i1 } %concat.sum.len79, 0
  %ovf81 = extractvalue { i64, i1 } %concat.sum.len79, 1
  br i1 %ovf81, label %str_overflow_abort83, label %concat.sum.len82

str_stale74:                                      ; preds = %str_gen_check72
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok73

concat.sum.len82:                                 ; preds = %str_overflow_abort83, %str_ok73
  %concat.tot.len84 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum80, i64 1)
  %sum85 = extractvalue { i64, i1 } %concat.tot.len84, 0
  %ovf86 = extractvalue { i64, i1 } %concat.tot.len84, 1
  br i1 %ovf86, label %str_overflow_abort88, label %concat.tot.len87

str_overflow_abort83:                             ; preds = %str_ok73
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len82

concat.tot.len87:                                 ; preds = %str_overflow_abort88, %concat.sum.len82
  %arena.cur89 = call ptr @dva_arena_current()
  %concat.buf90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 %sum85)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf90, ptr align 1 %concat.lhs66, i64 %concat.lhs58, i1 false)
  %concat.mid91 = getelementptr i8, ptr %concat.buf90, i64 %concat.lhs58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid91, ptr align 1 %concat.rhs78, i64 %concat.rhs69, i1 false)
  %concat.nul92 = getelementptr i8, ptr %concat.buf90, i64 %sum80
  store i8 0, ptr %concat.nul92, align 1
  %arena.cur93 = call ptr @dva_arena_current()
  %concat.str94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 16)
  %str.build.len.gep95 = getelementptr inbounds { i64, ptr }, ptr %concat.str94, i32 0, i32 0
  store i64 %sum80, ptr %str.build.len.gep95, align 8
  %str.build.data.gep96 = getelementptr inbounds { i64, ptr }, ptr %concat.str94, i32 0, i32 1
  store ptr %concat.buf90, ptr %str.build.data.gep96, align 8
  %call.res97 = call ptr @"ccl::ccl_error"(ptr %var.load55, ptr %concat.str94, i64 1, i64 1)
  %p.to.i6498 = ptrtoint ptr %call.res97 to i64
  %ram.pay99 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6498, 1
  br label %choice.exit51

str_overflow_abort88:                             ; preds = %concat.sum.len82
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len87
}

declare ptr @"io::reader"(i64) #1

declare ptr @"io::read_all"(ptr, i64) #1

define i1 @"ccl::has_newline"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %loop.step.103 = alloca i64, align 8
  %loop.idx.103 = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %str.tag = lshr i64 %str.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.103, align 8
  br label %loop.header.103

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.103:                                  ; preds = %loop.latch.103, %str_ok
  %counter.load = load i64, ptr %loop.idx.103, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.103, label %loop.exit.nat.103

loop.body.103:                                    ; preds = %loop.header.103
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.103, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load4 = load i64, ptr %var.ch, align 8
  %cmptmp = icmp eq i64 %var.load4, 10
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.103:                                ; preds = %loop.header.103
  br label %loop.exit.103

loop.latch.103:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.103, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.exit.103:                                    ; preds = %loop.exit.nat.103
  ret i1 false

choice.then:                                      ; preds = %loop.body.103
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %loop.body.103
  br label %loop.latch.103

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define void @"ccl::append_multiline_str"(ptr %0, i64 %1, ptr %2) #1 {
entry:
  %var._184 = alloca i64, align 8
  %var._i183 = alloca i64, align 8
  %loop.step.108 = alloca i64, align 8
  %loop.idx.108 = alloca i64, align 8
  %var.last_part = alloca ptr, align 8
  %var._51 = alloca i64, align 8
  %var._i50 = alloca i64, align 8
  %loop.step.105 = alloca i64, align 8
  %loop.idx.105 = alloca i64, align 8
  %var.part = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.104 = alloca i64, align 8
  %loop.idx.104 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %"var.line_start'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.child_indent = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.child_indent, align 8
  store ptr %2, ptr %var.b, align 8
  store i64 0, ptr %"var.line_start'", align 8
  %var.load = load ptr, ptr %var.s, align 8
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
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.104, align 8
  br label %loop.header.104

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.104:                                  ; preds = %loop.latch.104, %str_ok
  %counter.load = load i64, ptr %loop.idx.104, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.104, label %loop.exit.nat.104

loop.body.104:                                    ; preds = %loop.header.104
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.104, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

loop.exit.nat.104:                                ; preds = %loop.header.104
  br label %loop.exit.104

loop.latch.104:                                   ; preds = %choice.exit
  %step.val124 = load i64, ptr %loop.step.104, align 8
  %loop.next125 = add i64 %counter.load, %step.val124
  store i64 %loop.next125, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.exit.104:                                    ; preds = %loop.exit.nat.104
  %var.load126 = load ptr, ptr %var.s, align 8
  %s.read.len127 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 0
  %s.read.len128 = load i64, ptr %s.read.len127, align 8
  %s.read.len129 = and i64 %s.read.len128, 281474976710655
  %str.tag130 = lshr i64 %s.read.len128, 48
  %str.immortal131 = icmp eq i64 %str.tag130, 0
  br i1 %str.immortal131, label %str_ok133, label %str_gen_check132

str_gen_check9:                                   ; preds = %loop.body.104
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %loop.body.104
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 10
  br i1 %cmptmp, label %choice.then, label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  %var.load16 = load ptr, ptr %var.s, align 8
  %s.read.len17 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len17, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %str.tag20 = lshr i64 %s.read.len18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

choice.exit:                                      ; preds = %b.push_done, %idx_ok
  br label %loop.latch.104

str_gen_check22:                                  ; preds = %choice.then
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %choice.then
  %s.read.data27 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data27, align 8
  %var.load29 = load i64, ptr %"var.line_start'", align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load29, 0
  %rel.start = add i64 %s.read.len19, %var.load29
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load29
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len19
  %final.start = select i1 %start.gt.len, i64 %s.read.len19, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load30, 0
  %rel.end = add i64 %s.read.len19, %var.load30
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load30
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len19
  %final.end = select i1 %end.gt.len, i64 %s.read.len19, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data28, i64 %final.start
  %arena.cur31 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.part, align 8
  %var.load32 = load ptr, ptr %var.part, align 8
  %str.len.query33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %str.len.query34 = load i64, ptr %str.len.query33, align 8
  %str.len.query35 = and i64 %str.len.query34, 281474976710655
  %str.tag36 = lshr i64 %str.len.query34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale24:                                      ; preds = %str_gen_check22
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23

str_gen_check38:                                  ; preds = %str_ok23
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok23
  %cmptmp43 = icmp sgt i64 %str.len.query35, 0
  br i1 %cmptmp43, label %choice.then44, label %choice.exit45

str_stale40:                                      ; preds = %str_gen_check38
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

choice.then44:                                    ; preds = %str_ok39
  %var.load46 = load i64, ptr %var.child_indent, align 8
  store i64 0, ptr %loop.idx.105, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.105

choice.exit45:                                    ; preds = %b.grow_done84, %str_ok39
  %b.load107 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok, label %b.byte_err

loop.header.105:                                  ; preds = %loop.latch.105, %choice.then44
  %counter.load47 = load i64, ptr %loop.idx.105, align 8
  %loop.cond48 = icmp slt i64 %counter.load47, %var.load46
  br i1 %loop.cond48, label %loop.body.105, label %loop.exit.nat.105

loop.body.105:                                    ; preds = %loop.header.105
  %loop.rel.i49 = sub i64 %counter.load47, 0
  store i64 1, ptr %loop.step.105, align 8
  store i64 %loop.rel.i49, ptr %var._i50, align 8
  store i64 %counter.load47, ptr %var._51, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len52 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len52, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len53

loop.exit.nat.105:                                ; preds = %loop.header.105
  br label %loop.exit.105

loop.latch.105:                                   ; preds = %br.done.106
  %step.val = load i64, ptr %loop.step.105, align 8
  %loop.next = add i64 %counter.load47, %step.val
  store i64 %loop.next, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.exit.105:                                    ; preds = %loop.exit.nat.105
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %b.load63 = load ptr, ptr %var.b, align 8
  %var.load64 = load ptr, ptr %var.part, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 0
  %app.str.len65 = load i64, ptr %app.str.len, align 8
  %app.str.len66 = and i64 %app.str.len65, 281474976710655
  %str.tag67 = lshr i64 %app.str.len65, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

b.rn.new.len53:                                   ; preds = %str_overflow_abort, %loop.body.105
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap54 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap54, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %loop.body.105
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len53

b.grow2:                                          ; preds = %b.rn.new.len53
  %b.cap2 = mul i64 %b.cap54, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len255 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data256 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum57 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf58 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf58, label %str_overflow_abort60, label %b.new.buf.len259

b.nogrow2:                                        ; preds = %b.rn.new.len53
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len259
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data62 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data62, i64 %b.rn.cur.len52
  br i1 true, label %br.b1.106, label %br.c2.106

b.new.buf.len259:                                 ; preds = %str_overflow_abort60, %b.grow2
  %arena.cur61 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum57)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data256, i64 %b.cur.len255, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len255
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort60:                             ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len259

br.b1.106:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.106

br.c2.106:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.106, label %br.c3.106

br.b2.106:                                        ; preds = %br.c2.106
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.106

br.c3.106:                                        ; preds = %br.c2.106
  br i1 true, label %br.b3.106, label %br.b4.106

br.b3.106:                                        ; preds = %br.c3.106
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.106

br.b4.106:                                        ; preds = %br.c3.106
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.106

br.done.106:                                      ; preds = %br.b4.106, %br.b3.106, %br.b2.106, %br.b1.106
  %br.nul = getelementptr i8, ptr %b.rn.data62, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %loop.latch.105

str_gen_check69:                                  ; preds = %loop.exit.105
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %loop.exit.105
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 0
  %b.app.cur.len74 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len74, i64 %app.str.len66)
  %sum75 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf76 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf76, label %str_overflow_abort78, label %b.app.new.len77

str_stale71:                                      ; preds = %str_gen_check69
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

b.app.new.len77:                                  ; preds = %str_overflow_abort78, %str_ok70
  %b.cap79 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 2
  %b.cap80 = load i64, ptr %b.cap79, align 8
  %b.need.grow81 = icmp slt i64 %b.cap80, %sum75
  br i1 %b.need.grow81, label %b.grow282, label %b.nogrow283

str_overflow_abort78:                             ; preds = %str_ok70
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len77

b.grow282:                                        ; preds = %b.app.new.len77
  %b.cap285 = mul i64 %b.cap80, 2
  %b.cap.small86 = icmp slt i64 %b.cap285, 16
  %b.cap.grow87 = select i1 %b.cap.small86, i64 16, i64 %b.cap285
  %b.cap.need88 = icmp slt i64 %b.cap.grow87, %sum75
  %b.new.cap89 = select i1 %b.cap.need88, i64 %sum75, i64 %b.cap.grow87
  %b.cur.len290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 0
  %b.cur.len291 = load i64, ptr %b.cur.len290, align 8
  %b.cur.data292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 1
  %b.cur.data293 = load ptr, ptr %b.cur.data292, align 8
  %b.new.buf.len294 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap89, i64 1)
  %sum95 = extractvalue { i64, i1 } %b.new.buf.len294, 0
  %ovf96 = extractvalue { i64, i1 } %b.new.buf.len294, 1
  br i1 %ovf96, label %str_overflow_abort98, label %b.new.buf.len297

b.nogrow283:                                      ; preds = %b.app.new.len77
  br label %b.grow_done84

b.grow_done84:                                    ; preds = %b.nogrow283, %b.new.buf.len297
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 1
  %app.str.data104 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 1
  %b.app.data105 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data105, i64 %b.app.cur.len74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data104, i64 %app.str.len66, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data105, i64 %sum75
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 0
  store i64 %sum75, ptr %b.len.gep106, align 8
  br label %choice.exit45

b.new.buf.len297:                                 ; preds = %str_overflow_abort98, %b.grow282
  %arena.cur99 = call ptr @dva_arena_current()
  %b.new.buf2100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 %sum95)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2100, ptr align 1 %b.cur.data293, i64 %b.cur.len291, i1 false)
  %b.grow2.nul101 = getelementptr i8, ptr %b.new.buf2100, i64 %b.cur.len291
  store i8 0, ptr %b.grow2.nul101, align 1
  %b.new.data2.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 1
  store ptr %b.new.buf2100, ptr %b.new.data2.gep102, align 8
  %b.new.cap2.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 2
  store i64 %b.new.cap89, ptr %b.new.cap2.gep103, align 8
  br label %b.grow_done84

str_overflow_abort98:                             ; preds = %b.grow282
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len297

b.byte_ok:                                        ; preds = %b.byte_err, %choice.exit45
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 0
  %b.len108 = load i64, ptr %b.len, align 8
  %b.cap109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 2
  %b.cap110 = load i64, ptr %b.cap109, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 1
  %b.data111 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len108, %b.cap110
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit45
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2112 = mul i64 %b.cap110, 2
  %b.cap.small113 = icmp slt i64 %b.cap2112, 16
  %b.new.cap114 = select i1 %b.cap.small113, i64 16, i64 %b.cap2112
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap114, i64 1)
  %sum115 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf116 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf116, label %str_overflow_abort118, label %b.new.buf.len117

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len117
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 1
  %b.cur.data120 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 0
  %b.cur.len121 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data120, i64 %b.cur.len121
  store i8 10, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len121, 1
  %b.nul = getelementptr i8, ptr %b.cur.data120, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep122, align 8
  %var.load123 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load123, 1
  store i64 %addtmp, ptr %"var.line_start'", align 8
  br label %choice.exit

b.new.buf.len117:                                 ; preds = %str_overflow_abort118, %b.grow
  %arena.cur119 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %sum115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data111, i64 %b.len108, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len108
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 2
  store i64 %b.new.cap114, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort118:                            ; preds = %b.grow
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len117

str_gen_check132:                                 ; preds = %loop.exit.104
  %arena.cur135 = call ptr @dva_arena_current()
  %tag.valid136 = call i1 @dva_arena_validate_tag(ptr %arena.cur135, i64 %str.tag130)
  br i1 %tag.valid136, label %str_ok133, label %str_stale134

str_ok133:                                        ; preds = %str_stale134, %str_gen_check132, %loop.exit.104
  %s.read.data137 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 1
  %s.read.data138 = load ptr, ptr %s.read.data137, align 8
  %var.load139 = load i64, ptr %"var.line_start'", align 8
  %var.load140 = load i64, ptr %var.n, align 8
  %start.is_neg141 = icmp slt i64 %var.load139, 0
  %rel.start142 = add i64 %s.read.len129, %var.load139
  %norm.start143 = select i1 %start.is_neg141, i64 %rel.start142, i64 %var.load139
  %start.lt.0144 = icmp slt i64 %norm.start143, 0
  %c.start.0145 = select i1 %start.lt.0144, i64 0, i64 %norm.start143
  %start.gt.len146 = icmp sgt i64 %c.start.0145, %s.read.len129
  %final.start147 = select i1 %start.gt.len146, i64 %s.read.len129, i64 %c.start.0145
  %end.is_neg148 = icmp slt i64 %var.load140, 0
  %rel.end149 = add i64 %s.read.len129, %var.load140
  %norm.end150 = select i1 %end.is_neg148, i64 %rel.end149, i64 %var.load140
  %end.lt.0151 = icmp slt i64 %norm.end150, 0
  %c.end.0152 = select i1 %end.lt.0151, i64 0, i64 %norm.end150
  %end.gt.len153 = icmp sgt i64 %c.end.0152, %s.read.len129
  %final.end154 = select i1 %end.gt.len153, i64 %s.read.len129, i64 %c.end.0152
  %view.empty155 = icmp sle i64 %final.end154, %final.start147
  %view.len.sub156 = sub i64 %final.end154, %final.start147
  %view.len157 = select i1 %view.empty155, i64 0, i64 %view.len.sub156
  %view.data158 = getelementptr i8, ptr %s.read.data138, i64 %final.start147
  %arena.cur159 = call ptr @dva_arena_current()
  %str.view160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 16)
  %str.build.len.gep161 = getelementptr inbounds { i64, ptr }, ptr %str.view160, i32 0, i32 0
  store i64 %view.len157, ptr %str.build.len.gep161, align 8
  %str.build.data.gep162 = getelementptr inbounds { i64, ptr }, ptr %str.view160, i32 0, i32 1
  store ptr %view.data158, ptr %str.build.data.gep162, align 8
  store ptr %str.view160, ptr %var.last_part, align 8
  %var.load163 = load ptr, ptr %var.last_part, align 8
  %str.len.query164 = getelementptr inbounds { i64, ptr }, ptr %var.load163, i32 0, i32 0
  %str.len.query165 = load i64, ptr %str.len.query164, align 8
  %str.len.query166 = and i64 %str.len.query165, 281474976710655
  %str.tag167 = lshr i64 %str.len.query165, 48
  %str.immortal168 = icmp eq i64 %str.tag167, 0
  br i1 %str.immortal168, label %str_ok170, label %str_gen_check169

str_stale134:                                     ; preds = %str_gen_check132
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok133

str_gen_check169:                                 ; preds = %str_ok133
  %arena.cur172 = call ptr @dva_arena_current()
  %tag.valid173 = call i1 @dva_arena_validate_tag(ptr %arena.cur172, i64 %str.tag167)
  br i1 %tag.valid173, label %str_ok170, label %str_stale171

str_ok170:                                        ; preds = %str_stale171, %str_gen_check169, %str_ok133
  %cmptmp174 = icmp sgt i64 %str.len.query166, 0
  br i1 %cmptmp174, label %or.107.then, label %or.107.else

str_stale171:                                     ; preds = %str_gen_check169
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok170

or.107.then:                                      ; preds = %str_ok170
  br label %or.107.exit

or.107.else:                                      ; preds = %str_ok170
  %var.load175 = load i64, ptr %var.n, align 8
  %cmptmp176 = icmp eq i64 %var.load175, 0
  br label %or.107.exit

or.107.exit:                                      ; preds = %or.107.else, %or.107.then
  %or.107.phi = phi i1 [ %cmptmp174, %or.107.then ], [ %cmptmp176, %or.107.else ]
  br i1 %or.107.phi, label %choice.then177, label %choice.exit178

choice.then177:                                   ; preds = %or.107.exit
  %var.load179 = load i64, ptr %var.child_indent, align 8
  store i64 0, ptr %loop.idx.108, align 8
  br label %loop.header.108

choice.exit178:                                   ; preds = %b.grow_done253, %or.107.exit
  ret void

loop.header.108:                                  ; preds = %loop.latch.108, %choice.then177
  %counter.load180 = load i64, ptr %loop.idx.108, align 8
  %loop.cond181 = icmp slt i64 %counter.load180, %var.load179
  br i1 %loop.cond181, label %loop.body.108, label %loop.exit.nat.108

loop.body.108:                                    ; preds = %loop.header.108
  %loop.rel.i182 = sub i64 %counter.load180, 0
  store i64 1, ptr %loop.step.108, align 8
  store i64 %loop.rel.i182, ptr %var._i183, align 8
  store i64 %counter.load180, ptr %var._184, align 8
  %b.load185 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.rn.cur.len187 = load i64, ptr %b.rn.cur.len186, align 8
  %b.rn.new.len188 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len187, i64 1)
  %sum189 = extractvalue { i64, i1 } %b.rn.new.len188, 0
  %ovf190 = extractvalue { i64, i1 } %b.rn.new.len188, 1
  br i1 %ovf190, label %str_overflow_abort192, label %b.rn.new.len191

loop.exit.nat.108:                                ; preds = %loop.header.108
  br label %loop.exit.108

loop.latch.108:                                   ; preds = %br.done.109
  %step.val229 = load i64, ptr %loop.step.108, align 8
  %loop.next230 = add i64 %counter.load180, %step.val229
  store i64 %loop.next230, ptr %loop.idx.108, align 8
  br label %loop.header.108

loop.exit.108:                                    ; preds = %loop.exit.nat.108
  %b.load231 = load ptr, ptr %var.b, align 8
  %var.load232 = load ptr, ptr %var.last_part, align 8
  %b.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load232, i32 0, i32 0
  %b.str.len233 = load i64, ptr %b.str.len, align 8
  %b.str.len234 = and i64 %b.str.len233, 281474976710655
  %str.tag235 = lshr i64 %b.str.len233, 48
  %str.immortal236 = icmp eq i64 %str.tag235, 0
  br i1 %str.immortal236, label %str_ok238, label %str_gen_check237

b.rn.new.len191:                                  ; preds = %str_overflow_abort192, %loop.body.108
  %b.cap193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  %b.cap194 = load i64, ptr %b.cap193, align 8
  %b.need.grow195 = icmp slt i64 %b.cap194, %sum189
  br i1 %b.need.grow195, label %b.grow2196, label %b.nogrow2197

str_overflow_abort192:                            ; preds = %loop.body.108
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len191

b.grow2196:                                       ; preds = %b.rn.new.len191
  %b.cap2199 = mul i64 %b.cap194, 2
  %b.cap.small200 = icmp slt i64 %b.cap2199, 16
  %b.cap.grow201 = select i1 %b.cap.small200, i64 16, i64 %b.cap2199
  %b.cap.need202 = icmp slt i64 %b.cap.grow201, %sum189
  %b.new.cap203 = select i1 %b.cap.need202, i64 %sum189, i64 %b.cap.grow201
  %b.cur.len2204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.cur.len2205 = load i64, ptr %b.cur.len2204, align 8
  %b.cur.data2206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.cur.data2207 = load ptr, ptr %b.cur.data2206, align 8
  %b.new.buf.len2208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap203, i64 1)
  %sum209 = extractvalue { i64, i1 } %b.new.buf.len2208, 0
  %ovf210 = extractvalue { i64, i1 } %b.new.buf.len2208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %b.new.buf.len2211

b.nogrow2197:                                     ; preds = %b.rn.new.len191
  br label %b.grow_done198

b.grow_done198:                                   ; preds = %b.nogrow2197, %b.new.buf.len2211
  %b.rn.data218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.rn.data219 = load ptr, ptr %b.rn.data218, align 8
  %b.rn.dst220 = getelementptr i8, ptr %b.rn.data219, i64 %b.rn.cur.len187
  br i1 true, label %br.b1.109, label %br.c2.109

b.new.buf.len2211:                                ; preds = %str_overflow_abort212, %b.grow2196
  %arena.cur213 = call ptr @dva_arena_current()
  %b.new.buf2214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 %sum209)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2214, ptr align 1 %b.cur.data2207, i64 %b.cur.len2205, i1 false)
  %b.grow2.nul215 = getelementptr i8, ptr %b.new.buf2214, i64 %b.cur.len2205
  store i8 0, ptr %b.grow2.nul215, align 1
  %b.new.data2.gep216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  store ptr %b.new.buf2214, ptr %b.new.data2.gep216, align 8
  %b.new.cap2.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  store i64 %b.new.cap203, ptr %b.new.cap2.gep217, align 8
  br label %b.grow_done198

str_overflow_abort212:                            ; preds = %b.grow2196
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2211

br.b1.109:                                        ; preds = %b.grow_done198
  store i8 32, ptr %b.rn.dst220, align 1
  br label %br.done.109

br.c2.109:                                        ; preds = %b.grow_done198
  br i1 true, label %br.b2.109, label %br.c3.109

br.b2.109:                                        ; preds = %br.c2.109
  store i8 -64, ptr %b.rn.dst220, align 1
  %br.dst1221 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -96, ptr %br.dst1221, align 1
  br label %br.done.109

br.c3.109:                                        ; preds = %br.c2.109
  br i1 true, label %br.b3.109, label %br.b4.109

br.b3.109:                                        ; preds = %br.c3.109
  store i8 -32, ptr %b.rn.dst220, align 1
  %br.dst1.3222 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -128, ptr %br.dst1.3222, align 1
  %br.dst2.3223 = getelementptr i8, ptr %b.rn.dst220, i64 2
  store i8 -96, ptr %br.dst2.3223, align 1
  br label %br.done.109

br.b4.109:                                        ; preds = %br.c3.109
  store i8 -16, ptr %b.rn.dst220, align 1
  %br.dst1.4224 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -128, ptr %br.dst1.4224, align 1
  %br.dst2.4225 = getelementptr i8, ptr %b.rn.dst220, i64 2
  store i8 -128, ptr %br.dst2.4225, align 1
  %br.dst3.4226 = getelementptr i8, ptr %b.rn.dst220, i64 3
  store i8 -96, ptr %br.dst3.4226, align 1
  br label %br.done.109

br.done.109:                                      ; preds = %br.b4.109, %br.b3.109, %br.b2.109, %br.b1.109
  %br.nul227 = getelementptr i8, ptr %b.rn.data219, i64 %sum189
  store i8 0, ptr %br.nul227, align 1
  %b.len.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  store i64 %sum189, ptr %b.len.gep228, align 8
  br label %loop.latch.108

str_gen_check237:                                 ; preds = %loop.exit.108
  %arena.cur240 = call ptr @dva_arena_current()
  %tag.valid241 = call i1 @dva_arena_validate_tag(ptr %arena.cur240, i64 %str.tag235)
  br i1 %tag.valid241, label %str_ok238, label %str_stale239

str_ok238:                                        ; preds = %str_stale239, %str_gen_check237, %loop.exit.108
  %b.add.len = add i64 0, %b.str.len234
  %b.add.len242 = add i64 %b.add.len, 1
  %b.rec.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  %b.rec.cur.len243 = load i64, ptr %b.rec.cur.len, align 8
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len243, i64 %b.add.len242)
  %sum244 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf245 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf245, label %str_overflow_abort247, label %b.rec.new.len246

str_stale239:                                     ; preds = %str_gen_check237
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok238

b.rec.new.len246:                                 ; preds = %str_overflow_abort247, %str_ok238
  %b.cap248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 2
  %b.cap249 = load i64, ptr %b.cap248, align 8
  %b.need.grow250 = icmp slt i64 %b.cap249, %sum244
  br i1 %b.need.grow250, label %b.grow2251, label %b.nogrow2252

str_overflow_abort247:                            ; preds = %str_ok238
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len246

b.grow2251:                                       ; preds = %b.rec.new.len246
  %b.cap2254 = mul i64 %b.cap249, 2
  %b.cap.small255 = icmp slt i64 %b.cap2254, 16
  %b.cap.grow256 = select i1 %b.cap.small255, i64 16, i64 %b.cap2254
  %b.cap.need257 = icmp slt i64 %b.cap.grow256, %sum244
  %b.new.cap258 = select i1 %b.cap.need257, i64 %sum244, i64 %b.cap.grow256
  %b.cur.len2259 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  %b.cur.len2260 = load i64, ptr %b.cur.len2259, align 8
  %b.cur.data2261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  %b.cur.data2262 = load ptr, ptr %b.cur.data2261, align 8
  %b.new.buf.len2263 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap258, i64 1)
  %sum264 = extractvalue { i64, i1 } %b.new.buf.len2263, 0
  %ovf265 = extractvalue { i64, i1 } %b.new.buf.len2263, 1
  br i1 %ovf265, label %str_overflow_abort267, label %b.new.buf.len2266

b.nogrow2252:                                     ; preds = %b.rec.new.len246
  br label %b.grow_done253

b.grow_done253:                                   ; preds = %b.nogrow2252, %b.new.buf.len2266
  %b.rec.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  %b.rec.data273 = load ptr, ptr %b.rec.data, align 8
  %b.rec.dst = getelementptr i8, ptr %b.rec.data273, i64 %b.rec.cur.len243
  %b.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load232, i32 0, i32 1
  %b.str.data274 = load ptr, ptr %b.str.data, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data274, i64 %b.str.len234, i1 false)
  %b.rec.off = add i64 %b.rec.cur.len243, %b.str.len234
  %b.rec.dst275 = getelementptr i8, ptr %b.rec.data273, i64 %b.rec.off
  store i8 10, ptr %b.rec.dst275, align 1
  %b.rec.off276 = add i64 %b.rec.off, 1
  %b.rec.nul = getelementptr i8, ptr %b.rec.data273, i64 %sum244
  store i8 0, ptr %b.rec.nul, align 1
  %b.len.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  store i64 %sum244, ptr %b.len.gep277, align 8
  br label %choice.exit178

b.new.buf.len2266:                                ; preds = %str_overflow_abort267, %b.grow2251
  %arena.cur268 = call ptr @dva_arena_current()
  %b.new.buf2269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 %sum264)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2269, ptr align 1 %b.cur.data2262, i64 %b.cur.len2260, i1 false)
  %b.grow2.nul270 = getelementptr i8, ptr %b.new.buf2269, i64 %b.cur.len2260
  store i8 0, ptr %b.grow2.nul270, align 1
  %b.new.data2.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  store ptr %b.new.buf2269, ptr %b.new.data2.gep271, align 8
  %b.new.cap2.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 2
  store i64 %b.new.cap258, ptr %b.new.cap2.gep272, align 8
  br label %b.grow_done253

str_overflow_abort267:                            ; preds = %b.grow2251
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2266
}

define void @"ccl::serialize_doc_indent"(ptr %0, i64 %1, ptr %2) #1 {
entry:
  %var.sub609 = alloca ptr, align 8
  %var._608 = alloca ptr, align 8
  %var.s469 = alloca ptr, align 8
  %var._468 = alloca ptr, align 8
  %var.sub = alloca ptr, align 8
  %var._341 = alloca ptr, align 8
  %var.s206 = alloca ptr, align 8
  %var._205 = alloca ptr, align 8
  %var._109 = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var._41 = alloca ptr, align 8
  %var._10 = alloca i64, align 8
  %var._i9 = alloca i64, align 8
  %loop.step.111 = alloca i64, align 8
  %loop.idx.111 = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.110 = alloca i64, align 8
  %loop.idx.110 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.indent = alloca i64, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store i64 %1, ptr %var.indent, align 8
  store ptr %2, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.110, align 8
  br label %loop.header.110

loop.header.110:                                  ; preds = %loop.latch.110, %a.after
  %counter.load = load i64, ptr %loop.idx.110, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.110, label %loop.exit.nat.110

loop.body.110:                                    ; preds = %loop.header.110
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.110, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load i64, ptr %var.indent, align 8
  store i64 0, ptr %loop.idx.111, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.111

loop.exit.nat.110:                                ; preds = %loop.header.110
  br label %loop.exit.110

loop.latch.110:                                   ; preds = %choice.exit
  %step.val679 = load i64, ptr %loop.step.110, align 8
  %loop.next680 = add i64 %counter.load, %step.val679
  store i64 %loop.next680, ptr %loop.idx.110, align 8
  br label %loop.header.110

loop.exit.110:                                    ; preds = %loop.exit.nat.110
  ret void

loop.header.111:                                  ; preds = %loop.latch.111, %loop.body.110
  %counter.load6 = load i64, ptr %loop.idx.111, align 8
  %loop.cond7 = icmp slt i64 %counter.load6, %var.load5
  br i1 %loop.cond7, label %loop.body.111, label %loop.exit.nat.111

loop.body.111:                                    ; preds = %loop.header.111
  %loop.rel.i8 = sub i64 %counter.load6, 0
  store i64 1, ptr %loop.step.111, align 8
  store i64 %loop.rel.i8, ptr %var._i9, align 8
  store i64 %counter.load6, ptr %var._10, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len11 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len11, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len12

loop.exit.nat.111:                                ; preds = %loop.header.111
  br label %loop.exit.111

loop.latch.111:                                   ; preds = %br.done.112
  %step.val = load i64, ptr %loop.step.111, align 8
  %loop.next = add i64 %counter.load6, %step.val
  store i64 %loop.next, ptr %loop.idx.111, align 8
  br label %loop.header.111

loop.exit.111:                                    ; preds = %loop.exit.nat.111
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load22 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load22, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len23 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len24 = and i64 %eq.lhs.len23, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len23, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

b.rn.new.len12:                                   ; preds = %str_overflow_abort, %loop.body.111
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap13 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap13, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %loop.body.111
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len12

b.grow2:                                          ; preds = %b.rn.new.len12
  %b.cap2 = mul i64 %b.cap13, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len214 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data215 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum16 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf17 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf17, label %str_overflow_abort19, label %b.new.buf.len218

b.nogrow2:                                        ; preds = %b.rn.new.len12
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len218
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data21 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data21, i64 %b.rn.cur.len11
  br i1 true, label %br.b1.112, label %br.c2.112

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

br.b1.112:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.112

br.c2.112:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.112, label %br.c3.112

br.b2.112:                                        ; preds = %br.c2.112
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.112

br.c3.112:                                        ; preds = %br.c2.112
  br i1 true, label %br.b3.112, label %br.b4.112

br.b3.112:                                        ; preds = %br.c3.112
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.112

br.b4.112:                                        ; preds = %br.c3.112
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.112

br.done.112:                                      ; preds = %br.b4.112, %br.b3.112, %br.b2.112, %br.b1.112
  %br.nul = getelementptr i8, ptr %b.rn.data21, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %loop.latch.111

choice.exit:                                      ; preds = %choice.exit460, %choice.exit197, %choice.exit38
  br label %loop.latch.110

choice.case:                                      ; preds = %str.eq.merge
  %var.load35 = load ptr, ptr %var.e, align 8
  %fld.gep36 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load35, i32 0, i32 1
  %fld.load37 = load ptr, ptr %fld.gep36, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case39, label %choice.next40

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len165 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len166 = load i64, ptr %eq.lhs.len165, align 8
  %eq.lhs.len167 = and i64 %eq.lhs.len166, 281474976710655
  %str.tag168 = lshr i64 %eq.lhs.len166, 48
  %str.immortal169 = icmp eq i64 %str.tag168, 0
  br i1 %str.immortal169, label %str_ok171, label %str_gen_check170

str_gen_check:                                    ; preds = %loop.exit.111
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.exit.111
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len26 = and i64 %eq.rhs.len, 281474976710655
  %str.tag27 = lshr i64 %eq.rhs.len, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check29:                                  ; preds = %str_ok
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len24, %eq.rhs.len26
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale31:                                      ; preds = %str_gen_check29
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str.eq.then:                                      ; preds = %str_ok30
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data34 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data34, ptr %eq.rhs.data, i64 %eq.lhs.len24)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok30
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.exit38:                                    ; preds = %choice.next103, %b.grow_done134, %b.grow_done74
  br label %choice.exit

choice.case39:                                    ; preds = %choice.case
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._41, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %b.load42 = load ptr, ptr %var.b, align 8
  %b.str.len = load i64, ptr @str.10.struct, align 8
  %b.str.len43 = and i64 %b.str.len, 281474976710655
  %str.tag44 = lshr i64 %b.str.len, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

choice.next40:                                    ; preds = %choice.case
  %tag.gep104 = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 0
  %tag.id105 = load i64, ptr %tag.gep104, align 8
  %tag.match106 = icmp eq i64 %tag.id105, 1
  br i1 %tag.match106, label %choice.case102, label %choice.next103

str_gen_check46:                                  ; preds = %choice.case39
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %choice.case39
  %b.add.len = add i64 0, %b.str.len43
  %var.load51 = load ptr, ptr %var.s, align 8
  %b.str.len52 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 0
  %b.str.len53 = load i64, ptr %b.str.len52, align 8
  %b.str.len54 = and i64 %b.str.len53, 281474976710655
  %str.tag55 = lshr i64 %b.str.len53, 48
  %str.immortal56 = icmp eq i64 %str.tag55, 0
  br i1 %str.immortal56, label %str_ok58, label %str_gen_check57

str_stale48:                                      ; preds = %str_gen_check46
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

str_gen_check57:                                  ; preds = %str_ok47
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag55)
  br i1 %tag.valid61, label %str_ok58, label %str_stale59

str_ok58:                                         ; preds = %str_stale59, %str_gen_check57, %str_ok47
  %b.add.len62 = add i64 %b.add.len, %b.str.len54
  %b.add.len63 = add i64 %b.add.len62, 1
  %b.rec.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  %b.rec.cur.len64 = load i64, ptr %b.rec.cur.len, align 8
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len64, i64 %b.add.len63)
  %sum65 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf66 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf66, label %str_overflow_abort68, label %b.rec.new.len67

str_stale59:                                      ; preds = %str_gen_check57
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok58

b.rec.new.len67:                                  ; preds = %str_overflow_abort68, %str_ok58
  %b.cap69 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 2
  %b.cap70 = load i64, ptr %b.cap69, align 8
  %b.need.grow71 = icmp slt i64 %b.cap70, %sum65
  br i1 %b.need.grow71, label %b.grow272, label %b.nogrow273

str_overflow_abort68:                             ; preds = %str_ok58
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len67

b.grow272:                                        ; preds = %b.rec.new.len67
  %b.cap275 = mul i64 %b.cap70, 2
  %b.cap.small76 = icmp slt i64 %b.cap275, 16
  %b.cap.grow77 = select i1 %b.cap.small76, i64 16, i64 %b.cap275
  %b.cap.need78 = icmp slt i64 %b.cap.grow77, %sum65
  %b.new.cap79 = select i1 %b.cap.need78, i64 %sum65, i64 %b.cap.grow77
  %b.cur.len280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  %b.cur.len281 = load i64, ptr %b.cur.len280, align 8
  %b.cur.data282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  %b.cur.data283 = load ptr, ptr %b.cur.data282, align 8
  %b.new.buf.len284 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap79, i64 1)
  %sum85 = extractvalue { i64, i1 } %b.new.buf.len284, 0
  %ovf86 = extractvalue { i64, i1 } %b.new.buf.len284, 1
  br i1 %ovf86, label %str_overflow_abort88, label %b.new.buf.len287

b.nogrow273:                                      ; preds = %b.rec.new.len67
  br label %b.grow_done74

b.grow_done74:                                    ; preds = %b.nogrow273, %b.new.buf.len287
  %b.rec.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  %b.rec.data94 = load ptr, ptr %b.rec.data, align 8
  %b.rec.dst = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.cur.len64
  %b.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data, i64 %b.str.len43, i1 false)
  %b.rec.off = add i64 %b.rec.cur.len64, %b.str.len43
  %b.rec.dst95 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off
  %b.str.data96 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 1
  %b.str.data97 = load ptr, ptr %b.str.data96, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst95, ptr align 1 %b.str.data97, i64 %b.str.len54, i1 false)
  %b.rec.off98 = add i64 %b.rec.off, %b.str.len54
  %b.rec.dst99 = getelementptr i8, ptr %b.rec.data94, i64 %b.rec.off98
  store i8 10, ptr %b.rec.dst99, align 1
  %b.rec.off100 = add i64 %b.rec.off98, 1
  %b.rec.nul = getelementptr i8, ptr %b.rec.data94, i64 %sum65
  store i8 0, ptr %b.rec.nul, align 1
  %b.len.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  store i64 %sum65, ptr %b.len.gep101, align 8
  br label %choice.exit38

b.new.buf.len287:                                 ; preds = %str_overflow_abort88, %b.grow272
  %arena.cur89 = call ptr @dva_arena_current()
  %b.new.buf290 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 %sum85)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf290, ptr align 1 %b.cur.data283, i64 %b.cur.len281, i1 false)
  %b.grow2.nul91 = getelementptr i8, ptr %b.new.buf290, i64 %b.cur.len281
  store i8 0, ptr %b.grow2.nul91, align 1
  %b.new.data2.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  store ptr %b.new.buf290, ptr %b.new.data2.gep92, align 8
  %b.new.cap2.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 2
  store i64 %b.new.cap79, ptr %b.new.cap2.gep93, align 8
  br label %b.grow_done74

str_overflow_abort88:                             ; preds = %b.grow272
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len287

choice.case102:                                   ; preds = %choice.next40
  %pay.gep107 = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 1
  %payload.ptr108 = load ptr, ptr %pay.gep107, align 8
  store ptr %payload.ptr108, ptr %var._109, align 8
  %b.load110 = load ptr, ptr %var.b, align 8
  %b.str.len111 = load i64, ptr @str.10.struct, align 8
  %b.str.len112 = and i64 %b.str.len111, 281474976710655
  %str.tag113 = lshr i64 %b.str.len111, 48
  %str.immortal114 = icmp eq i64 %str.tag113, 0
  br i1 %str.immortal114, label %str_ok116, label %str_gen_check115

choice.next103:                                   ; preds = %choice.next40
  br label %choice.exit38

str_gen_check115:                                 ; preds = %choice.case102
  %arena.cur118 = call ptr @dva_arena_current()
  %tag.valid119 = call i1 @dva_arena_validate_tag(ptr %arena.cur118, i64 %str.tag113)
  br i1 %tag.valid119, label %str_ok116, label %str_stale117

str_ok116:                                        ; preds = %str_stale117, %str_gen_check115, %choice.case102
  %b.add.len120 = add i64 0, %b.str.len112
  %b.add.len121 = add i64 %b.add.len120, 1
  %b.rec.cur.len122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load110, i32 0, i32 0
  %b.rec.cur.len123 = load i64, ptr %b.rec.cur.len122, align 8
  %b.rec.new.len124 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len123, i64 %b.add.len121)
  %sum125 = extractvalue { i64, i1 } %b.rec.new.len124, 0
  %ovf126 = extractvalue { i64, i1 } %b.rec.new.len124, 1
  br i1 %ovf126, label %str_overflow_abort128, label %b.rec.new.len127

str_stale117:                                     ; preds = %str_gen_check115
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok116

b.rec.new.len127:                                 ; preds = %str_overflow_abort128, %str_ok116
  %b.cap129 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load110, i32 0, i32 2
  %b.cap130 = load i64, ptr %b.cap129, align 8
  %b.need.grow131 = icmp slt i64 %b.cap130, %sum125
  br i1 %b.need.grow131, label %b.grow2132, label %b.nogrow2133

str_overflow_abort128:                            ; preds = %str_ok116
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len127

b.grow2132:                                       ; preds = %b.rec.new.len127
  %b.cap2135 = mul i64 %b.cap130, 2
  %b.cap.small136 = icmp slt i64 %b.cap2135, 16
  %b.cap.grow137 = select i1 %b.cap.small136, i64 16, i64 %b.cap2135
  %b.cap.need138 = icmp slt i64 %b.cap.grow137, %sum125
  %b.new.cap139 = select i1 %b.cap.need138, i64 %sum125, i64 %b.cap.grow137
  %b.cur.len2140 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load110, i32 0, i32 0
  %b.cur.len2141 = load i64, ptr %b.cur.len2140, align 8
  %b.cur.data2142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load110, i32 0, i32 1
  %b.cur.data2143 = load ptr, ptr %b.cur.data2142, align 8
  %b.new.buf.len2144 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap139, i64 1)
  %sum145 = extractvalue { i64, i1 } %b.new.buf.len2144, 0
  %ovf146 = extractvalue { i64, i1 } %b.new.buf.len2144, 1
  br i1 %ovf146, label %str_overflow_abort148, label %b.new.buf.len2147

b.nogrow2133:                                     ; preds = %b.rec.new.len127
  br label %b.grow_done134

b.grow_done134:                                   ; preds = %b.nogrow2133, %b.new.buf.len2147
  %b.rec.data154 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load110, i32 0, i32 1
  %b.rec.data155 = load ptr, ptr %b.rec.data154, align 8
  %b.rec.dst156 = getelementptr i8, ptr %b.rec.data155, i64 %b.rec.cur.len123
  %b.str.data157 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst156, ptr align 1 %b.str.data157, i64 %b.str.len112, i1 false)
  %b.rec.off158 = add i64 %b.rec.cur.len123, %b.str.len112
  %b.rec.dst159 = getelementptr i8, ptr %b.rec.data155, i64 %b.rec.off158
  store i8 10, ptr %b.rec.dst159, align 1
  %b.rec.off160 = add i64 %b.rec.off158, 1
  %b.rec.nul161 = getelementptr i8, ptr %b.rec.data155, i64 %sum125
  store i8 0, ptr %b.rec.nul161, align 1
  %b.len.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load110, i32 0, i32 0
  store i64 %sum125, ptr %b.len.gep162, align 8
  br label %choice.exit38

b.new.buf.len2147:                                ; preds = %str_overflow_abort148, %b.grow2132
  %arena.cur149 = call ptr @dva_arena_current()
  %b.new.buf2150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 %sum145)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2150, ptr align 1 %b.cur.data2143, i64 %b.cur.len2141, i1 false)
  %b.grow2.nul151 = getelementptr i8, ptr %b.new.buf2150, i64 %b.cur.len2141
  store i8 0, ptr %b.grow2.nul151, align 1
  %b.new.data2.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load110, i32 0, i32 1
  store ptr %b.new.buf2150, ptr %b.new.data2.gep152, align 8
  %b.new.cap2.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load110, i32 0, i32 2
  store i64 %b.new.cap139, ptr %b.new.cap2.gep153, align 8
  br label %b.grow_done134

str_overflow_abort148:                            ; preds = %b.grow2132
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2147

choice.case163:                                   ; preds = %str.eq.merge187
  %var.load194 = load ptr, ptr %var.e, align 8
  %fld.gep195 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load194, i32 0, i32 1
  %fld.load196 = load ptr, ptr %fld.gep195, align 8
  %tag.gep200 = getelementptr inbounds { i64, ptr }, ptr %fld.load196, i32 0, i32 0
  %tag.id201 = load i64, ptr %tag.gep200, align 8
  %tag.match202 = icmp eq i64 %tag.id201, 0
  br i1 %tag.match202, label %choice.case198, label %choice.next199

choice.next164:                                   ; preds = %str.eq.merge187
  %b.load411 = load ptr, ptr %var.b, align 8
  %var.load412 = load ptr, ptr %var.e, align 8
  %fld.gep413 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load412, i32 0, i32 0
  %fld.load414 = load ptr, ptr %fld.gep413, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load414, i32 0, i32 0
  %app.str.len415 = load i64, ptr %app.str.len, align 8
  %app.str.len416 = and i64 %app.str.len415, 281474976710655
  %str.tag417 = lshr i64 %app.str.len415, 48
  %str.immortal418 = icmp eq i64 %str.tag417, 0
  br i1 %str.immortal418, label %str_ok420, label %str_gen_check419

str_gen_check170:                                 ; preds = %choice.next
  %arena.cur173 = call ptr @dva_arena_current()
  %tag.valid174 = call i1 @dva_arena_validate_tag(ptr %arena.cur173, i64 %str.tag168)
  br i1 %tag.valid174, label %str_ok171, label %str_stale172

str_ok171:                                        ; preds = %str_stale172, %str_gen_check170, %choice.next
  %eq.rhs.len175 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len176 = and i64 %eq.rhs.len175, 281474976710655
  %str.tag177 = lshr i64 %eq.rhs.len175, 48
  %str.immortal178 = icmp eq i64 %str.tag177, 0
  br i1 %str.immortal178, label %str_ok180, label %str_gen_check179

str_stale172:                                     ; preds = %str_gen_check170
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok171

str_gen_check179:                                 ; preds = %str_ok171
  %arena.cur182 = call ptr @dva_arena_current()
  %tag.valid183 = call i1 @dva_arena_validate_tag(ptr %arena.cur182, i64 %str.tag177)
  br i1 %tag.valid183, label %str_ok180, label %str_stale181

str_ok180:                                        ; preds = %str_stale181, %str_gen_check179, %str_ok171
  %eq.len184 = icmp eq i64 %eq.lhs.len167, %eq.rhs.len176
  br i1 %eq.len184, label %str.eq.then185, label %str.eq.else186

str_stale181:                                     ; preds = %str_gen_check179
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok180

str.eq.then185:                                   ; preds = %str_ok180
  %eq.lhs.data188 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data189 = load ptr, ptr %eq.lhs.data188, align 8
  %eq.rhs.data190 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp191 = call i32 @memcmp(ptr %eq.lhs.data189, ptr %eq.rhs.data190, i64 %eq.lhs.len167)
  %eq.cmp.zero192 = icmp eq i32 %eq.memcmp191, 0
  br label %str.eq.merge187

str.eq.else186:                                   ; preds = %str_ok180
  br label %str.eq.merge187

str.eq.merge187:                                  ; preds = %str.eq.else186, %str.eq.then185
  %str.eq.result193 = phi i1 [ %eq.cmp.zero192, %str.eq.then185 ], [ false, %str.eq.else186 ]
  br i1 %str.eq.result193, label %choice.case163, label %choice.next164

choice.exit197:                                   ; preds = %choice.next335, %a.after399, %choice.exit208
  br label %choice.exit

choice.case198:                                   ; preds = %choice.case163
  %pay.gep203 = getelementptr inbounds { i64, ptr }, ptr %fld.load196, i32 0, i32 1
  %payload.ptr204 = load ptr, ptr %pay.gep203, align 8
  store ptr %payload.ptr204, ptr %var._205, align 8
  store ptr %payload.ptr204, ptr %var.s206, align 8
  %var.load207 = load ptr, ptr %var.s206, align 8
  %call.res = call i1 @"ccl::has_newline"(ptr %var.load207)
  br i1 %call.res, label %choice.then, label %choice.else

choice.next199:                                   ; preds = %choice.case163
  %tag.gep336 = getelementptr inbounds { i64, ptr }, ptr %fld.load196, i32 0, i32 0
  %tag.id337 = load i64, ptr %tag.gep336, align 8
  %tag.match338 = icmp eq i64 %tag.id337, 1
  br i1 %tag.match338, label %choice.case334, label %choice.next335

choice.then:                                      ; preds = %choice.case198
  %b.load209 = load ptr, ptr %var.b, align 8
  %b.str.len210 = load i64, ptr @str.11.struct, align 8
  %b.str.len211 = and i64 %b.str.len210, 281474976710655
  %str.tag212 = lshr i64 %b.str.len210, 48
  %str.immortal213 = icmp eq i64 %str.tag212, 0
  br i1 %str.immortal213, label %str_ok215, label %str_gen_check214

choice.else:                                      ; preds = %choice.case198
  %b.load265 = load ptr, ptr %var.b, align 8
  %b.str.len266 = load i64, ptr @str.12.struct, align 8
  %b.str.len267 = and i64 %b.str.len266, 281474976710655
  %str.tag268 = lshr i64 %b.str.len266, 48
  %str.immortal269 = icmp eq i64 %str.tag268, 0
  br i1 %str.immortal269, label %str_ok271, label %str_gen_check270

choice.exit208:                                   ; preds = %b.grow_done301, %b.grow_done233
  br label %choice.exit197

str_gen_check214:                                 ; preds = %choice.then
  %arena.cur217 = call ptr @dva_arena_current()
  %tag.valid218 = call i1 @dva_arena_validate_tag(ptr %arena.cur217, i64 %str.tag212)
  br i1 %tag.valid218, label %str_ok215, label %str_stale216

str_ok215:                                        ; preds = %str_stale216, %str_gen_check214, %choice.then
  %b.add.len219 = add i64 0, %b.str.len211
  %b.add.len220 = add i64 %b.add.len219, 1
  %b.rec.cur.len221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load209, i32 0, i32 0
  %b.rec.cur.len222 = load i64, ptr %b.rec.cur.len221, align 8
  %b.rec.new.len223 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len222, i64 %b.add.len220)
  %sum224 = extractvalue { i64, i1 } %b.rec.new.len223, 0
  %ovf225 = extractvalue { i64, i1 } %b.rec.new.len223, 1
  br i1 %ovf225, label %str_overflow_abort227, label %b.rec.new.len226

str_stale216:                                     ; preds = %str_gen_check214
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok215

b.rec.new.len226:                                 ; preds = %str_overflow_abort227, %str_ok215
  %b.cap228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load209, i32 0, i32 2
  %b.cap229 = load i64, ptr %b.cap228, align 8
  %b.need.grow230 = icmp slt i64 %b.cap229, %sum224
  br i1 %b.need.grow230, label %b.grow2231, label %b.nogrow2232

str_overflow_abort227:                            ; preds = %str_ok215
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len226

b.grow2231:                                       ; preds = %b.rec.new.len226
  %b.cap2234 = mul i64 %b.cap229, 2
  %b.cap.small235 = icmp slt i64 %b.cap2234, 16
  %b.cap.grow236 = select i1 %b.cap.small235, i64 16, i64 %b.cap2234
  %b.cap.need237 = icmp slt i64 %b.cap.grow236, %sum224
  %b.new.cap238 = select i1 %b.cap.need237, i64 %sum224, i64 %b.cap.grow236
  %b.cur.len2239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load209, i32 0, i32 0
  %b.cur.len2240 = load i64, ptr %b.cur.len2239, align 8
  %b.cur.data2241 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load209, i32 0, i32 1
  %b.cur.data2242 = load ptr, ptr %b.cur.data2241, align 8
  %b.new.buf.len2243 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap238, i64 1)
  %sum244 = extractvalue { i64, i1 } %b.new.buf.len2243, 0
  %ovf245 = extractvalue { i64, i1 } %b.new.buf.len2243, 1
  br i1 %ovf245, label %str_overflow_abort247, label %b.new.buf.len2246

b.nogrow2232:                                     ; preds = %b.rec.new.len226
  br label %b.grow_done233

b.grow_done233:                                   ; preds = %b.nogrow2232, %b.new.buf.len2246
  %b.rec.data253 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load209, i32 0, i32 1
  %b.rec.data254 = load ptr, ptr %b.rec.data253, align 8
  %b.rec.dst255 = getelementptr i8, ptr %b.rec.data254, i64 %b.rec.cur.len222
  %b.str.data256 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst255, ptr align 1 %b.str.data256, i64 %b.str.len211, i1 false)
  %b.rec.off257 = add i64 %b.rec.cur.len222, %b.str.len211
  %b.rec.dst258 = getelementptr i8, ptr %b.rec.data254, i64 %b.rec.off257
  store i8 10, ptr %b.rec.dst258, align 1
  %b.rec.off259 = add i64 %b.rec.off257, 1
  %b.rec.nul260 = getelementptr i8, ptr %b.rec.data254, i64 %sum224
  store i8 0, ptr %b.rec.nul260, align 1
  %b.len.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load209, i32 0, i32 0
  store i64 %sum224, ptr %b.len.gep261, align 8
  %var.load262 = load ptr, ptr %var.s206, align 8
  %var.load263 = load i64, ptr %var.indent, align 8
  %addtmp = add i64 %var.load263, 2
  %var.load264 = load ptr, ptr %var.b, align 8
  call void @"ccl::append_multiline_str"(ptr %var.load262, i64 %addtmp, ptr %var.load264)
  br label %choice.exit208

b.new.buf.len2246:                                ; preds = %str_overflow_abort247, %b.grow2231
  %arena.cur248 = call ptr @dva_arena_current()
  %b.new.buf2249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 %sum244)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2249, ptr align 1 %b.cur.data2242, i64 %b.cur.len2240, i1 false)
  %b.grow2.nul250 = getelementptr i8, ptr %b.new.buf2249, i64 %b.cur.len2240
  store i8 0, ptr %b.grow2.nul250, align 1
  %b.new.data2.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load209, i32 0, i32 1
  store ptr %b.new.buf2249, ptr %b.new.data2.gep251, align 8
  %b.new.cap2.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load209, i32 0, i32 2
  store i64 %b.new.cap238, ptr %b.new.cap2.gep252, align 8
  br label %b.grow_done233

str_overflow_abort247:                            ; preds = %b.grow2231
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2246

str_gen_check270:                                 ; preds = %choice.else
  %arena.cur273 = call ptr @dva_arena_current()
  %tag.valid274 = call i1 @dva_arena_validate_tag(ptr %arena.cur273, i64 %str.tag268)
  br i1 %tag.valid274, label %str_ok271, label %str_stale272

str_ok271:                                        ; preds = %str_stale272, %str_gen_check270, %choice.else
  %b.add.len275 = add i64 0, %b.str.len267
  %var.load276 = load ptr, ptr %var.s206, align 8
  %b.str.len277 = getelementptr inbounds { i64, ptr }, ptr %var.load276, i32 0, i32 0
  %b.str.len278 = load i64, ptr %b.str.len277, align 8
  %b.str.len279 = and i64 %b.str.len278, 281474976710655
  %str.tag280 = lshr i64 %b.str.len278, 48
  %str.immortal281 = icmp eq i64 %str.tag280, 0
  br i1 %str.immortal281, label %str_ok283, label %str_gen_check282

str_stale272:                                     ; preds = %str_gen_check270
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok271

str_gen_check282:                                 ; preds = %str_ok271
  %arena.cur285 = call ptr @dva_arena_current()
  %tag.valid286 = call i1 @dva_arena_validate_tag(ptr %arena.cur285, i64 %str.tag280)
  br i1 %tag.valid286, label %str_ok283, label %str_stale284

str_ok283:                                        ; preds = %str_stale284, %str_gen_check282, %str_ok271
  %b.add.len287 = add i64 %b.add.len275, %b.str.len279
  %b.add.len288 = add i64 %b.add.len287, 1
  %b.rec.cur.len289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load265, i32 0, i32 0
  %b.rec.cur.len290 = load i64, ptr %b.rec.cur.len289, align 8
  %b.rec.new.len291 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len290, i64 %b.add.len288)
  %sum292 = extractvalue { i64, i1 } %b.rec.new.len291, 0
  %ovf293 = extractvalue { i64, i1 } %b.rec.new.len291, 1
  br i1 %ovf293, label %str_overflow_abort295, label %b.rec.new.len294

str_stale284:                                     ; preds = %str_gen_check282
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok283

b.rec.new.len294:                                 ; preds = %str_overflow_abort295, %str_ok283
  %b.cap296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load265, i32 0, i32 2
  %b.cap297 = load i64, ptr %b.cap296, align 8
  %b.need.grow298 = icmp slt i64 %b.cap297, %sum292
  br i1 %b.need.grow298, label %b.grow2299, label %b.nogrow2300

str_overflow_abort295:                            ; preds = %str_ok283
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len294

b.grow2299:                                       ; preds = %b.rec.new.len294
  %b.cap2302 = mul i64 %b.cap297, 2
  %b.cap.small303 = icmp slt i64 %b.cap2302, 16
  %b.cap.grow304 = select i1 %b.cap.small303, i64 16, i64 %b.cap2302
  %b.cap.need305 = icmp slt i64 %b.cap.grow304, %sum292
  %b.new.cap306 = select i1 %b.cap.need305, i64 %sum292, i64 %b.cap.grow304
  %b.cur.len2307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load265, i32 0, i32 0
  %b.cur.len2308 = load i64, ptr %b.cur.len2307, align 8
  %b.cur.data2309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load265, i32 0, i32 1
  %b.cur.data2310 = load ptr, ptr %b.cur.data2309, align 8
  %b.new.buf.len2311 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap306, i64 1)
  %sum312 = extractvalue { i64, i1 } %b.new.buf.len2311, 0
  %ovf313 = extractvalue { i64, i1 } %b.new.buf.len2311, 1
  br i1 %ovf313, label %str_overflow_abort315, label %b.new.buf.len2314

b.nogrow2300:                                     ; preds = %b.rec.new.len294
  br label %b.grow_done301

b.grow_done301:                                   ; preds = %b.nogrow2300, %b.new.buf.len2314
  %b.rec.data321 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load265, i32 0, i32 1
  %b.rec.data322 = load ptr, ptr %b.rec.data321, align 8
  %b.rec.dst323 = getelementptr i8, ptr %b.rec.data322, i64 %b.rec.cur.len290
  %b.str.data324 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst323, ptr align 1 %b.str.data324, i64 %b.str.len267, i1 false)
  %b.rec.off325 = add i64 %b.rec.cur.len290, %b.str.len267
  %b.rec.dst326 = getelementptr i8, ptr %b.rec.data322, i64 %b.rec.off325
  %b.str.data327 = getelementptr inbounds { i64, ptr }, ptr %var.load276, i32 0, i32 1
  %b.str.data328 = load ptr, ptr %b.str.data327, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst326, ptr align 1 %b.str.data328, i64 %b.str.len279, i1 false)
  %b.rec.off329 = add i64 %b.rec.off325, %b.str.len279
  %b.rec.dst330 = getelementptr i8, ptr %b.rec.data322, i64 %b.rec.off329
  store i8 10, ptr %b.rec.dst330, align 1
  %b.rec.off331 = add i64 %b.rec.off329, 1
  %b.rec.nul332 = getelementptr i8, ptr %b.rec.data322, i64 %sum292
  store i8 0, ptr %b.rec.nul332, align 1
  %b.len.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load265, i32 0, i32 0
  store i64 %sum292, ptr %b.len.gep333, align 8
  br label %choice.exit208

b.new.buf.len2314:                                ; preds = %str_overflow_abort315, %b.grow2299
  %arena.cur316 = call ptr @dva_arena_current()
  %b.new.buf2317 = call ptr @dva_arena_alloc(ptr %arena.cur316, i64 %sum312)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2317, ptr align 1 %b.cur.data2310, i64 %b.cur.len2308, i1 false)
  %b.grow2.nul318 = getelementptr i8, ptr %b.new.buf2317, i64 %b.cur.len2308
  store i8 0, ptr %b.grow2.nul318, align 1
  %b.new.data2.gep319 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load265, i32 0, i32 1
  store ptr %b.new.buf2317, ptr %b.new.data2.gep319, align 8
  %b.new.cap2.gep320 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load265, i32 0, i32 2
  store i64 %b.new.cap306, ptr %b.new.cap2.gep320, align 8
  br label %b.grow_done301

str_overflow_abort315:                            ; preds = %b.grow2299
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2314

choice.case334:                                   ; preds = %choice.next199
  %pay.gep339 = getelementptr inbounds { i64, ptr }, ptr %fld.load196, i32 0, i32 1
  %payload.ptr340 = load ptr, ptr %pay.gep339, align 8
  store ptr %payload.ptr340, ptr %var._341, align 8
  store ptr %payload.ptr340, ptr %var.sub, align 8
  %b.load342 = load ptr, ptr %var.b, align 8
  %b.str.len343 = load i64, ptr @str.12.struct, align 8
  %b.str.len344 = and i64 %b.str.len343, 281474976710655
  %str.tag345 = lshr i64 %b.str.len343, 48
  %str.immortal346 = icmp eq i64 %str.tag345, 0
  br i1 %str.immortal346, label %str_ok348, label %str_gen_check347

choice.next335:                                   ; preds = %choice.next199
  br label %choice.exit197

str_gen_check347:                                 ; preds = %choice.case334
  %arena.cur350 = call ptr @dva_arena_current()
  %tag.valid351 = call i1 @dva_arena_validate_tag(ptr %arena.cur350, i64 %str.tag345)
  br i1 %tag.valid351, label %str_ok348, label %str_stale349

str_ok348:                                        ; preds = %str_stale349, %str_gen_check347, %choice.case334
  %b.add.len352 = add i64 0, %b.str.len344
  %b.add.len353 = add i64 %b.add.len352, 1
  %b.rec.cur.len354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load342, i32 0, i32 0
  %b.rec.cur.len355 = load i64, ptr %b.rec.cur.len354, align 8
  %b.rec.new.len356 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len355, i64 %b.add.len353)
  %sum357 = extractvalue { i64, i1 } %b.rec.new.len356, 0
  %ovf358 = extractvalue { i64, i1 } %b.rec.new.len356, 1
  br i1 %ovf358, label %str_overflow_abort360, label %b.rec.new.len359

str_stale349:                                     ; preds = %str_gen_check347
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok348

b.rec.new.len359:                                 ; preds = %str_overflow_abort360, %str_ok348
  %b.cap361 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load342, i32 0, i32 2
  %b.cap362 = load i64, ptr %b.cap361, align 8
  %b.need.grow363 = icmp slt i64 %b.cap362, %sum357
  br i1 %b.need.grow363, label %b.grow2364, label %b.nogrow2365

str_overflow_abort360:                            ; preds = %str_ok348
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len359

b.grow2364:                                       ; preds = %b.rec.new.len359
  %b.cap2367 = mul i64 %b.cap362, 2
  %b.cap.small368 = icmp slt i64 %b.cap2367, 16
  %b.cap.grow369 = select i1 %b.cap.small368, i64 16, i64 %b.cap2367
  %b.cap.need370 = icmp slt i64 %b.cap.grow369, %sum357
  %b.new.cap371 = select i1 %b.cap.need370, i64 %sum357, i64 %b.cap.grow369
  %b.cur.len2372 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load342, i32 0, i32 0
  %b.cur.len2373 = load i64, ptr %b.cur.len2372, align 8
  %b.cur.data2374 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load342, i32 0, i32 1
  %b.cur.data2375 = load ptr, ptr %b.cur.data2374, align 8
  %b.new.buf.len2376 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap371, i64 1)
  %sum377 = extractvalue { i64, i1 } %b.new.buf.len2376, 0
  %ovf378 = extractvalue { i64, i1 } %b.new.buf.len2376, 1
  br i1 %ovf378, label %str_overflow_abort380, label %b.new.buf.len2379

b.nogrow2365:                                     ; preds = %b.rec.new.len359
  br label %b.grow_done366

b.grow_done366:                                   ; preds = %b.nogrow2365, %b.new.buf.len2379
  %b.rec.data386 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load342, i32 0, i32 1
  %b.rec.data387 = load ptr, ptr %b.rec.data386, align 8
  %b.rec.dst388 = getelementptr i8, ptr %b.rec.data387, i64 %b.rec.cur.len355
  %b.str.data389 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst388, ptr align 1 %b.str.data389, i64 %b.str.len344, i1 false)
  %b.rec.off390 = add i64 %b.rec.cur.len355, %b.str.len344
  %b.rec.dst391 = getelementptr i8, ptr %b.rec.data387, i64 %b.rec.off390
  store i8 10, ptr %b.rec.dst391, align 1
  %b.rec.off392 = add i64 %b.rec.off390, 1
  %b.rec.nul393 = getelementptr i8, ptr %b.rec.data387, i64 %sum357
  store i8 0, ptr %b.rec.nul393, align 1
  %b.len.gep394 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load342, i32 0, i32 0
  store i64 %sum357, ptr %b.len.gep394, align 8
  %var.load395 = load ptr, ptr %var.sub, align 8
  %a.load396 = load ptr, ptr %var.sub, align 8
  %a.null397 = icmp eq ptr %a.load396, null
  br i1 %a.null397, label %a.create398, label %a.after399

b.new.buf.len2379:                                ; preds = %str_overflow_abort380, %b.grow2364
  %arena.cur381 = call ptr @dva_arena_current()
  %b.new.buf2382 = call ptr @dva_arena_alloc(ptr %arena.cur381, i64 %sum377)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2382, ptr align 1 %b.cur.data2375, i64 %b.cur.len2373, i1 false)
  %b.grow2.nul383 = getelementptr i8, ptr %b.new.buf2382, i64 %b.cur.len2373
  store i8 0, ptr %b.grow2.nul383, align 1
  %b.new.data2.gep384 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load342, i32 0, i32 1
  store ptr %b.new.buf2382, ptr %b.new.data2.gep384, align 8
  %b.new.cap2.gep385 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load342, i32 0, i32 2
  store i64 %b.new.cap371, ptr %b.new.cap2.gep385, align 8
  br label %b.grow_done366

str_overflow_abort380:                            ; preds = %b.grow2364
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2379

a.create398:                                      ; preds = %b.grow_done366
  %arena.cur400 = call ptr @dva_arena_current()
  %a.create401 = call ptr @dva_arena_alloc(ptr %arena.cur400, i64 24)
  %arena.cur402 = call ptr @dva_arena_current()
  %a.buf403 = call ptr @dva_arena_alloc(ptr %arena.cur402, i64 128)
  %a.len.gep404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create401, i32 0, i32 0
  store i64 0, ptr %a.len.gep404, align 8
  %a.data.gep405 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create401, i32 0, i32 1
  store ptr %a.buf403, ptr %a.data.gep405, align 8
  %a.cap.gep406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create401, i32 0, i32 2
  store i64 16, ptr %a.cap.gep406, align 8
  store ptr %a.create401, ptr %var.sub, align 8
  br label %a.after399

a.after399:                                       ; preds = %a.create398, %b.grow_done366
  %a.load2407 = load ptr, ptr %var.sub, align 8
  %var.load408 = load i64, ptr %var.indent, align 8
  %addtmp409 = add i64 %var.load408, 2
  %var.load410 = load ptr, ptr %var.b, align 8
  call void @"ccl::serialize_doc_indent"(ptr %a.load2407, i64 %addtmp409, ptr %var.load410)
  br label %choice.exit197

str_gen_check419:                                 ; preds = %choice.next164
  %arena.cur422 = call ptr @dva_arena_current()
  %tag.valid423 = call i1 @dva_arena_validate_tag(ptr %arena.cur422, i64 %str.tag417)
  br i1 %tag.valid423, label %str_ok420, label %str_stale421

str_ok420:                                        ; preds = %str_stale421, %str_gen_check419, %choice.next164
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load411, i32 0, i32 0
  %b.app.cur.len424 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len424, i64 %app.str.len416)
  %sum425 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf426 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf426, label %str_overflow_abort428, label %b.app.new.len427

str_stale421:                                     ; preds = %str_gen_check419
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok420

b.app.new.len427:                                 ; preds = %str_overflow_abort428, %str_ok420
  %b.cap429 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load411, i32 0, i32 2
  %b.cap430 = load i64, ptr %b.cap429, align 8
  %b.need.grow431 = icmp slt i64 %b.cap430, %sum425
  br i1 %b.need.grow431, label %b.grow2432, label %b.nogrow2433

str_overflow_abort428:                            ; preds = %str_ok420
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len427

b.grow2432:                                       ; preds = %b.app.new.len427
  %b.cap2435 = mul i64 %b.cap430, 2
  %b.cap.small436 = icmp slt i64 %b.cap2435, 16
  %b.cap.grow437 = select i1 %b.cap.small436, i64 16, i64 %b.cap2435
  %b.cap.need438 = icmp slt i64 %b.cap.grow437, %sum425
  %b.new.cap439 = select i1 %b.cap.need438, i64 %sum425, i64 %b.cap.grow437
  %b.cur.len2440 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load411, i32 0, i32 0
  %b.cur.len2441 = load i64, ptr %b.cur.len2440, align 8
  %b.cur.data2442 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load411, i32 0, i32 1
  %b.cur.data2443 = load ptr, ptr %b.cur.data2442, align 8
  %b.new.buf.len2444 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap439, i64 1)
  %sum445 = extractvalue { i64, i1 } %b.new.buf.len2444, 0
  %ovf446 = extractvalue { i64, i1 } %b.new.buf.len2444, 1
  br i1 %ovf446, label %str_overflow_abort448, label %b.new.buf.len2447

b.nogrow2433:                                     ; preds = %b.app.new.len427
  br label %b.grow_done434

b.grow_done434:                                   ; preds = %b.nogrow2433, %b.new.buf.len2447
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load414, i32 0, i32 1
  %app.str.data454 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load411, i32 0, i32 1
  %b.app.data455 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data455, i64 %b.app.cur.len424
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data454, i64 %app.str.len416, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data455, i64 %sum425
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load411, i32 0, i32 0
  store i64 %sum425, ptr %b.len.gep456, align 8
  %var.load457 = load ptr, ptr %var.e, align 8
  %fld.gep458 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load457, i32 0, i32 1
  %fld.load459 = load ptr, ptr %fld.gep458, align 8
  %tag.gep463 = getelementptr inbounds { i64, ptr }, ptr %fld.load459, i32 0, i32 0
  %tag.id464 = load i64, ptr %tag.gep463, align 8
  %tag.match465 = icmp eq i64 %tag.id464, 0
  br i1 %tag.match465, label %choice.case461, label %choice.next462

b.new.buf.len2447:                                ; preds = %str_overflow_abort448, %b.grow2432
  %arena.cur449 = call ptr @dva_arena_current()
  %b.new.buf2450 = call ptr @dva_arena_alloc(ptr %arena.cur449, i64 %sum445)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2450, ptr align 1 %b.cur.data2443, i64 %b.cur.len2441, i1 false)
  %b.grow2.nul451 = getelementptr i8, ptr %b.new.buf2450, i64 %b.cur.len2441
  store i8 0, ptr %b.grow2.nul451, align 1
  %b.new.data2.gep452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load411, i32 0, i32 1
  store ptr %b.new.buf2450, ptr %b.new.data2.gep452, align 8
  %b.new.cap2.gep453 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load411, i32 0, i32 2
  store i64 %b.new.cap439, ptr %b.new.cap2.gep453, align 8
  br label %b.grow_done434

str_overflow_abort448:                            ; preds = %b.grow2432
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2447

choice.exit460:                                   ; preds = %choice.next602, %a.after667, %choice.exit474
  br label %choice.exit

choice.case461:                                   ; preds = %b.grow_done434
  %pay.gep466 = getelementptr inbounds { i64, ptr }, ptr %fld.load459, i32 0, i32 1
  %payload.ptr467 = load ptr, ptr %pay.gep466, align 8
  store ptr %payload.ptr467, ptr %var._468, align 8
  store ptr %payload.ptr467, ptr %var.s469, align 8
  %var.load470 = load ptr, ptr %var.s469, align 8
  %call.res471 = call i1 @"ccl::has_newline"(ptr %var.load470)
  br i1 %call.res471, label %choice.then472, label %choice.else473

choice.next462:                                   ; preds = %b.grow_done434
  %tag.gep603 = getelementptr inbounds { i64, ptr }, ptr %fld.load459, i32 0, i32 0
  %tag.id604 = load i64, ptr %tag.gep603, align 8
  %tag.match605 = icmp eq i64 %tag.id604, 1
  br i1 %tag.match605, label %choice.case601, label %choice.next602

choice.then472:                                   ; preds = %choice.case461
  %b.load475 = load ptr, ptr %var.b, align 8
  %b.str.len476 = load i64, ptr @str.13.struct, align 8
  %b.str.len477 = and i64 %b.str.len476, 281474976710655
  %str.tag478 = lshr i64 %b.str.len476, 48
  %str.immortal479 = icmp eq i64 %str.tag478, 0
  br i1 %str.immortal479, label %str_ok481, label %str_gen_check480

choice.else473:                                   ; preds = %choice.case461
  %b.load532 = load ptr, ptr %var.b, align 8
  %b.str.len533 = load i64, ptr @str.14.struct, align 8
  %b.str.len534 = and i64 %b.str.len533, 281474976710655
  %str.tag535 = lshr i64 %b.str.len533, 48
  %str.immortal536 = icmp eq i64 %str.tag535, 0
  br i1 %str.immortal536, label %str_ok538, label %str_gen_check537

choice.exit474:                                   ; preds = %b.grow_done568, %b.grow_done499
  br label %choice.exit460

str_gen_check480:                                 ; preds = %choice.then472
  %arena.cur483 = call ptr @dva_arena_current()
  %tag.valid484 = call i1 @dva_arena_validate_tag(ptr %arena.cur483, i64 %str.tag478)
  br i1 %tag.valid484, label %str_ok481, label %str_stale482

str_ok481:                                        ; preds = %str_stale482, %str_gen_check480, %choice.then472
  %b.add.len485 = add i64 0, %b.str.len477
  %b.add.len486 = add i64 %b.add.len485, 1
  %b.rec.cur.len487 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 0
  %b.rec.cur.len488 = load i64, ptr %b.rec.cur.len487, align 8
  %b.rec.new.len489 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len488, i64 %b.add.len486)
  %sum490 = extractvalue { i64, i1 } %b.rec.new.len489, 0
  %ovf491 = extractvalue { i64, i1 } %b.rec.new.len489, 1
  br i1 %ovf491, label %str_overflow_abort493, label %b.rec.new.len492

str_stale482:                                     ; preds = %str_gen_check480
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok481

b.rec.new.len492:                                 ; preds = %str_overflow_abort493, %str_ok481
  %b.cap494 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 2
  %b.cap495 = load i64, ptr %b.cap494, align 8
  %b.need.grow496 = icmp slt i64 %b.cap495, %sum490
  br i1 %b.need.grow496, label %b.grow2497, label %b.nogrow2498

str_overflow_abort493:                            ; preds = %str_ok481
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len492

b.grow2497:                                       ; preds = %b.rec.new.len492
  %b.cap2500 = mul i64 %b.cap495, 2
  %b.cap.small501 = icmp slt i64 %b.cap2500, 16
  %b.cap.grow502 = select i1 %b.cap.small501, i64 16, i64 %b.cap2500
  %b.cap.need503 = icmp slt i64 %b.cap.grow502, %sum490
  %b.new.cap504 = select i1 %b.cap.need503, i64 %sum490, i64 %b.cap.grow502
  %b.cur.len2505 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 0
  %b.cur.len2506 = load i64, ptr %b.cur.len2505, align 8
  %b.cur.data2507 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 1
  %b.cur.data2508 = load ptr, ptr %b.cur.data2507, align 8
  %b.new.buf.len2509 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap504, i64 1)
  %sum510 = extractvalue { i64, i1 } %b.new.buf.len2509, 0
  %ovf511 = extractvalue { i64, i1 } %b.new.buf.len2509, 1
  br i1 %ovf511, label %str_overflow_abort513, label %b.new.buf.len2512

b.nogrow2498:                                     ; preds = %b.rec.new.len492
  br label %b.grow_done499

b.grow_done499:                                   ; preds = %b.nogrow2498, %b.new.buf.len2512
  %b.rec.data519 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 1
  %b.rec.data520 = load ptr, ptr %b.rec.data519, align 8
  %b.rec.dst521 = getelementptr i8, ptr %b.rec.data520, i64 %b.rec.cur.len488
  %b.str.data522 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst521, ptr align 1 %b.str.data522, i64 %b.str.len477, i1 false)
  %b.rec.off523 = add i64 %b.rec.cur.len488, %b.str.len477
  %b.rec.dst524 = getelementptr i8, ptr %b.rec.data520, i64 %b.rec.off523
  store i8 10, ptr %b.rec.dst524, align 1
  %b.rec.off525 = add i64 %b.rec.off523, 1
  %b.rec.nul526 = getelementptr i8, ptr %b.rec.data520, i64 %sum490
  store i8 0, ptr %b.rec.nul526, align 1
  %b.len.gep527 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 0
  store i64 %sum490, ptr %b.len.gep527, align 8
  %var.load528 = load ptr, ptr %var.s469, align 8
  %var.load529 = load i64, ptr %var.indent, align 8
  %addtmp530 = add i64 %var.load529, 2
  %var.load531 = load ptr, ptr %var.b, align 8
  call void @"ccl::append_multiline_str"(ptr %var.load528, i64 %addtmp530, ptr %var.load531)
  br label %choice.exit474

b.new.buf.len2512:                                ; preds = %str_overflow_abort513, %b.grow2497
  %arena.cur514 = call ptr @dva_arena_current()
  %b.new.buf2515 = call ptr @dva_arena_alloc(ptr %arena.cur514, i64 %sum510)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2515, ptr align 1 %b.cur.data2508, i64 %b.cur.len2506, i1 false)
  %b.grow2.nul516 = getelementptr i8, ptr %b.new.buf2515, i64 %b.cur.len2506
  store i8 0, ptr %b.grow2.nul516, align 1
  %b.new.data2.gep517 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 1
  store ptr %b.new.buf2515, ptr %b.new.data2.gep517, align 8
  %b.new.cap2.gep518 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 2
  store i64 %b.new.cap504, ptr %b.new.cap2.gep518, align 8
  br label %b.grow_done499

str_overflow_abort513:                            ; preds = %b.grow2497
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2512

str_gen_check537:                                 ; preds = %choice.else473
  %arena.cur540 = call ptr @dva_arena_current()
  %tag.valid541 = call i1 @dva_arena_validate_tag(ptr %arena.cur540, i64 %str.tag535)
  br i1 %tag.valid541, label %str_ok538, label %str_stale539

str_ok538:                                        ; preds = %str_stale539, %str_gen_check537, %choice.else473
  %b.add.len542 = add i64 0, %b.str.len534
  %var.load543 = load ptr, ptr %var.s469, align 8
  %b.str.len544 = getelementptr inbounds { i64, ptr }, ptr %var.load543, i32 0, i32 0
  %b.str.len545 = load i64, ptr %b.str.len544, align 8
  %b.str.len546 = and i64 %b.str.len545, 281474976710655
  %str.tag547 = lshr i64 %b.str.len545, 48
  %str.immortal548 = icmp eq i64 %str.tag547, 0
  br i1 %str.immortal548, label %str_ok550, label %str_gen_check549

str_stale539:                                     ; preds = %str_gen_check537
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok538

str_gen_check549:                                 ; preds = %str_ok538
  %arena.cur552 = call ptr @dva_arena_current()
  %tag.valid553 = call i1 @dva_arena_validate_tag(ptr %arena.cur552, i64 %str.tag547)
  br i1 %tag.valid553, label %str_ok550, label %str_stale551

str_ok550:                                        ; preds = %str_stale551, %str_gen_check549, %str_ok538
  %b.add.len554 = add i64 %b.add.len542, %b.str.len546
  %b.add.len555 = add i64 %b.add.len554, 1
  %b.rec.cur.len556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 0
  %b.rec.cur.len557 = load i64, ptr %b.rec.cur.len556, align 8
  %b.rec.new.len558 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len557, i64 %b.add.len555)
  %sum559 = extractvalue { i64, i1 } %b.rec.new.len558, 0
  %ovf560 = extractvalue { i64, i1 } %b.rec.new.len558, 1
  br i1 %ovf560, label %str_overflow_abort562, label %b.rec.new.len561

str_stale551:                                     ; preds = %str_gen_check549
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok550

b.rec.new.len561:                                 ; preds = %str_overflow_abort562, %str_ok550
  %b.cap563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 2
  %b.cap564 = load i64, ptr %b.cap563, align 8
  %b.need.grow565 = icmp slt i64 %b.cap564, %sum559
  br i1 %b.need.grow565, label %b.grow2566, label %b.nogrow2567

str_overflow_abort562:                            ; preds = %str_ok550
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len561

b.grow2566:                                       ; preds = %b.rec.new.len561
  %b.cap2569 = mul i64 %b.cap564, 2
  %b.cap.small570 = icmp slt i64 %b.cap2569, 16
  %b.cap.grow571 = select i1 %b.cap.small570, i64 16, i64 %b.cap2569
  %b.cap.need572 = icmp slt i64 %b.cap.grow571, %sum559
  %b.new.cap573 = select i1 %b.cap.need572, i64 %sum559, i64 %b.cap.grow571
  %b.cur.len2574 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 0
  %b.cur.len2575 = load i64, ptr %b.cur.len2574, align 8
  %b.cur.data2576 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 1
  %b.cur.data2577 = load ptr, ptr %b.cur.data2576, align 8
  %b.new.buf.len2578 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap573, i64 1)
  %sum579 = extractvalue { i64, i1 } %b.new.buf.len2578, 0
  %ovf580 = extractvalue { i64, i1 } %b.new.buf.len2578, 1
  br i1 %ovf580, label %str_overflow_abort582, label %b.new.buf.len2581

b.nogrow2567:                                     ; preds = %b.rec.new.len561
  br label %b.grow_done568

b.grow_done568:                                   ; preds = %b.nogrow2567, %b.new.buf.len2581
  %b.rec.data588 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 1
  %b.rec.data589 = load ptr, ptr %b.rec.data588, align 8
  %b.rec.dst590 = getelementptr i8, ptr %b.rec.data589, i64 %b.rec.cur.len557
  %b.str.data591 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst590, ptr align 1 %b.str.data591, i64 %b.str.len534, i1 false)
  %b.rec.off592 = add i64 %b.rec.cur.len557, %b.str.len534
  %b.rec.dst593 = getelementptr i8, ptr %b.rec.data589, i64 %b.rec.off592
  %b.str.data594 = getelementptr inbounds { i64, ptr }, ptr %var.load543, i32 0, i32 1
  %b.str.data595 = load ptr, ptr %b.str.data594, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst593, ptr align 1 %b.str.data595, i64 %b.str.len546, i1 false)
  %b.rec.off596 = add i64 %b.rec.off592, %b.str.len546
  %b.rec.dst597 = getelementptr i8, ptr %b.rec.data589, i64 %b.rec.off596
  store i8 10, ptr %b.rec.dst597, align 1
  %b.rec.off598 = add i64 %b.rec.off596, 1
  %b.rec.nul599 = getelementptr i8, ptr %b.rec.data589, i64 %sum559
  store i8 0, ptr %b.rec.nul599, align 1
  %b.len.gep600 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 0
  store i64 %sum559, ptr %b.len.gep600, align 8
  br label %choice.exit474

b.new.buf.len2581:                                ; preds = %str_overflow_abort582, %b.grow2566
  %arena.cur583 = call ptr @dva_arena_current()
  %b.new.buf2584 = call ptr @dva_arena_alloc(ptr %arena.cur583, i64 %sum579)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2584, ptr align 1 %b.cur.data2577, i64 %b.cur.len2575, i1 false)
  %b.grow2.nul585 = getelementptr i8, ptr %b.new.buf2584, i64 %b.cur.len2575
  store i8 0, ptr %b.grow2.nul585, align 1
  %b.new.data2.gep586 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 1
  store ptr %b.new.buf2584, ptr %b.new.data2.gep586, align 8
  %b.new.cap2.gep587 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 2
  store i64 %b.new.cap573, ptr %b.new.cap2.gep587, align 8
  br label %b.grow_done568

str_overflow_abort582:                            ; preds = %b.grow2566
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2581

choice.case601:                                   ; preds = %choice.next462
  %pay.gep606 = getelementptr inbounds { i64, ptr }, ptr %fld.load459, i32 0, i32 1
  %payload.ptr607 = load ptr, ptr %pay.gep606, align 8
  store ptr %payload.ptr607, ptr %var._608, align 8
  store ptr %payload.ptr607, ptr %var.sub609, align 8
  %b.load610 = load ptr, ptr %var.b, align 8
  %b.str.len611 = load i64, ptr @str.14.struct, align 8
  %b.str.len612 = and i64 %b.str.len611, 281474976710655
  %str.tag613 = lshr i64 %b.str.len611, 48
  %str.immortal614 = icmp eq i64 %str.tag613, 0
  br i1 %str.immortal614, label %str_ok616, label %str_gen_check615

choice.next602:                                   ; preds = %choice.next462
  br label %choice.exit460

str_gen_check615:                                 ; preds = %choice.case601
  %arena.cur618 = call ptr @dva_arena_current()
  %tag.valid619 = call i1 @dva_arena_validate_tag(ptr %arena.cur618, i64 %str.tag613)
  br i1 %tag.valid619, label %str_ok616, label %str_stale617

str_ok616:                                        ; preds = %str_stale617, %str_gen_check615, %choice.case601
  %b.add.len620 = add i64 0, %b.str.len612
  %b.add.len621 = add i64 %b.add.len620, 1
  %b.rec.cur.len622 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load610, i32 0, i32 0
  %b.rec.cur.len623 = load i64, ptr %b.rec.cur.len622, align 8
  %b.rec.new.len624 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len623, i64 %b.add.len621)
  %sum625 = extractvalue { i64, i1 } %b.rec.new.len624, 0
  %ovf626 = extractvalue { i64, i1 } %b.rec.new.len624, 1
  br i1 %ovf626, label %str_overflow_abort628, label %b.rec.new.len627

str_stale617:                                     ; preds = %str_gen_check615
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok616

b.rec.new.len627:                                 ; preds = %str_overflow_abort628, %str_ok616
  %b.cap629 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load610, i32 0, i32 2
  %b.cap630 = load i64, ptr %b.cap629, align 8
  %b.need.grow631 = icmp slt i64 %b.cap630, %sum625
  br i1 %b.need.grow631, label %b.grow2632, label %b.nogrow2633

str_overflow_abort628:                            ; preds = %str_ok616
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rec.new.len627

b.grow2632:                                       ; preds = %b.rec.new.len627
  %b.cap2635 = mul i64 %b.cap630, 2
  %b.cap.small636 = icmp slt i64 %b.cap2635, 16
  %b.cap.grow637 = select i1 %b.cap.small636, i64 16, i64 %b.cap2635
  %b.cap.need638 = icmp slt i64 %b.cap.grow637, %sum625
  %b.new.cap639 = select i1 %b.cap.need638, i64 %sum625, i64 %b.cap.grow637
  %b.cur.len2640 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load610, i32 0, i32 0
  %b.cur.len2641 = load i64, ptr %b.cur.len2640, align 8
  %b.cur.data2642 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load610, i32 0, i32 1
  %b.cur.data2643 = load ptr, ptr %b.cur.data2642, align 8
  %b.new.buf.len2644 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap639, i64 1)
  %sum645 = extractvalue { i64, i1 } %b.new.buf.len2644, 0
  %ovf646 = extractvalue { i64, i1 } %b.new.buf.len2644, 1
  br i1 %ovf646, label %str_overflow_abort648, label %b.new.buf.len2647

b.nogrow2633:                                     ; preds = %b.rec.new.len627
  br label %b.grow_done634

b.grow_done634:                                   ; preds = %b.nogrow2633, %b.new.buf.len2647
  %b.rec.data654 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load610, i32 0, i32 1
  %b.rec.data655 = load ptr, ptr %b.rec.data654, align 8
  %b.rec.dst656 = getelementptr i8, ptr %b.rec.data655, i64 %b.rec.cur.len623
  %b.str.data657 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst656, ptr align 1 %b.str.data657, i64 %b.str.len612, i1 false)
  %b.rec.off658 = add i64 %b.rec.cur.len623, %b.str.len612
  %b.rec.dst659 = getelementptr i8, ptr %b.rec.data655, i64 %b.rec.off658
  store i8 10, ptr %b.rec.dst659, align 1
  %b.rec.off660 = add i64 %b.rec.off658, 1
  %b.rec.nul661 = getelementptr i8, ptr %b.rec.data655, i64 %sum625
  store i8 0, ptr %b.rec.nul661, align 1
  %b.len.gep662 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load610, i32 0, i32 0
  store i64 %sum625, ptr %b.len.gep662, align 8
  %var.load663 = load ptr, ptr %var.sub609, align 8
  %a.load664 = load ptr, ptr %var.sub609, align 8
  %a.null665 = icmp eq ptr %a.load664, null
  br i1 %a.null665, label %a.create666, label %a.after667

b.new.buf.len2647:                                ; preds = %str_overflow_abort648, %b.grow2632
  %arena.cur649 = call ptr @dva_arena_current()
  %b.new.buf2650 = call ptr @dva_arena_alloc(ptr %arena.cur649, i64 %sum645)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2650, ptr align 1 %b.cur.data2643, i64 %b.cur.len2641, i1 false)
  %b.grow2.nul651 = getelementptr i8, ptr %b.new.buf2650, i64 %b.cur.len2641
  store i8 0, ptr %b.grow2.nul651, align 1
  %b.new.data2.gep652 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load610, i32 0, i32 1
  store ptr %b.new.buf2650, ptr %b.new.data2.gep652, align 8
  %b.new.cap2.gep653 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load610, i32 0, i32 2
  store i64 %b.new.cap639, ptr %b.new.cap2.gep653, align 8
  br label %b.grow_done634

str_overflow_abort648:                            ; preds = %b.grow2632
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2647

a.create666:                                      ; preds = %b.grow_done634
  %arena.cur668 = call ptr @dva_arena_current()
  %a.create669 = call ptr @dva_arena_alloc(ptr %arena.cur668, i64 24)
  %arena.cur670 = call ptr @dva_arena_current()
  %a.buf671 = call ptr @dva_arena_alloc(ptr %arena.cur670, i64 128)
  %a.len.gep672 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 0
  store i64 0, ptr %a.len.gep672, align 8
  %a.data.gep673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 1
  store ptr %a.buf671, ptr %a.data.gep673, align 8
  %a.cap.gep674 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 2
  store i64 16, ptr %a.cap.gep674, align 8
  store ptr %a.create669, ptr %var.sub609, align 8
  br label %a.after667

a.after667:                                       ; preds = %a.create666, %b.grow_done634
  %a.load2675 = load ptr, ptr %var.sub609, align 8
  %var.load676 = load i64, ptr %var.indent, align 8
  %addtmp677 = add i64 %var.load676, 2
  %var.load678 = load ptr, ptr %var.b, align 8
  call void @"ccl::serialize_doc_indent"(ptr %a.load2675, i64 %addtmp677, ptr %var.load678)
  br label %choice.exit460
}

define ptr @"ccl::to_ccl"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 512, i64 1)
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
  store i64 512, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  store ptr %a.create4, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.buf.len1
  %a.load2 = load ptr, ptr %var.doc, align 8
  %var.load6 = load ptr, ptr %var.b, align 8
  call void @"ccl::serialize_doc_indent"(ptr %a.load2, i64 0, ptr %var.load6)
  %var.load7 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 0
  %b.freeze.len8 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 1
  %b.freeze.data9 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %a.after
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data9, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data9, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data9, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len8, 1
  %arena.cur10 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data9, i64 %b.freeze.len8, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len8
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after
  %b.freeze.data11 = phi ptr [ %b.freeze.data9, %a.after ], [ %b.freeze.data9, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur12 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len8, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data11, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"ccl::first_non_comment_entry"(ptr %0) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.113 = alloca i64, align 8
  %loop.idx.113 = alloca i64, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.113, align 8
  br label %loop.header.113

loop.header.113:                                  ; preds = %loop.latch.113, %a.after
  %counter.load = load i64, ptr %loop.idx.113, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.113, label %loop.exit.nat.113

loop.body.113:                                    ; preds = %loop.header.113
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.113, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.113:                                ; preds = %loop.header.113
  br label %loop.exit.113

loop.latch.113:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.113, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.113, align 8
  br label %loop.header.113

loop.exit.113:                                    ; preds = %loop.exit.nat.113
  ret ptr null

str_gen_check:                                    ; preds = %loop.body.113
  %arena.cur8 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur8, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.113
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len9 = and i64 %eq.rhs.len, 281474976710655
  %str.tag10 = lshr i64 %eq.rhs.len, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check12:                                  ; preds = %str_ok
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len9
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale14:                                      ; preds = %str_gen_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

str.eq.then:                                      ; preds = %str_ok13
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data17 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data17, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok13
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load18 = load ptr, ptr %var.e, align 8
  ret ptr %var.load18

choice.exit:                                      ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.113

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define ptr @"ccl::non_comment_entries"(ptr %0) #1 {
entry:
  %var._map_v_283 = alloca ptr, align 8
  %var._27 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.114 = alloca i64, align 8
  %loop.idx.114 = alloca i64, align 8
  %var._map_out_283 = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
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
  store ptr %a.new, ptr %var._map_out_283, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  store ptr %a.create3, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len9 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data10 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.114, align 8
  br label %loop.header.114

loop.header.114:                                  ; preds = %loop.latch.114, %a.after
  %counter.load = load i64, ptr %loop.idx.114, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.114, label %loop.exit.nat.114

loop.body.114:                                    ; preds = %loop.header.114
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.114, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data10, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load11 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len12 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len13 = and i64 %eq.lhs.len12, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len12, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.114:                                ; preds = %loop.header.114
  br label %loop.exit.114

loop.latch.114:                                   ; preds = %choice.exit26
  %step.val = load i64, ptr %loop.step.114, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.114, align 8
  br label %loop.header.114

loop.exit.114:                                    ; preds = %loop.exit.nat.114
  %var.load45 = load ptr, ptr %var._map_out_283, align 8
  %a.load46 = load ptr, ptr %var._map_out_283, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

str_gen_check:                                    ; preds = %loop.body.114
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.114
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len15 = and i64 %eq.rhs.len, 281474976710655
  %str.tag16 = lshr i64 %eq.rhs.len, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check18:                                  ; preds = %str_ok
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len13, %eq.rhs.len15
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale20:                                      ; preds = %str_gen_check18
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

str.eq.then:                                      ; preds = %str_ok19
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data23 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data23, ptr %eq.rhs.data, i64 %eq.lhs.len13)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok19
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load24 = load ptr, ptr %var.e, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %var.load24, %choice.then ], [ null, %choice.else ]
  %niche.ne.null = icmp ne ptr %choice.res, null
  br i1 %niche.ne.null, label %choice.then25, label %choice.exit26

choice.then25:                                    ; preds = %choice.exit
  store ptr %choice.res, ptr %var._27, align 8
  store ptr %choice.res, ptr %var._map_v_283, align 8
  %var.load28 = load ptr, ptr %var._map_v_283, align 8
  %a.load29 = load ptr, ptr %var._map_out_283, align 8
  %a.null30 = icmp eq ptr %a.load29, null
  br i1 %a.null30, label %a.create31, label %a.after32

choice.exit26:                                    ; preds = %a.store, %choice.exit
  br label %loop.latch.114

a.create31:                                       ; preds = %choice.then25
  %arena.cur33 = call ptr @dva_arena_current()
  %a.create34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 24)
  %arena.cur35 = call ptr @dva_arena_current()
  %a.buf36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 128)
  %a.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 0
  store i64 0, ptr %a.len.gep37, align 8
  %a.data.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 1
  store ptr %a.buf36, ptr %a.data.gep38, align 8
  %a.cap.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 2
  store i64 16, ptr %a.cap.gep39, align 8
  store ptr %a.create34, ptr %var._map_out_283, align 8
  br label %a.after32

a.after32:                                        ; preds = %a.create31, %choice.then25
  %a.load240 = load ptr, ptr %var._map_out_283, align 8
  br label %a.check

a.check:                                          ; preds = %a.after32
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  %a.len41 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 2
  %a.cap42 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len41, %a.cap42
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load240)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 1
  %a.cur.data43 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  %a.cur.len44 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data43, i64 %a.cur.len44
  %slot.p2i = ptrtoint ptr %var.load28 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len44, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit26

a.create48:                                       ; preds = %loop.exit.114
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
  store ptr %a.create51, ptr %var._map_out_283, align 8
  br label %a.after49

a.after49:                                        ; preds = %a.create48, %loop.exit.114
  %a.load257 = load ptr, ptr %var._map_out_283, align 8
  ret ptr %a.load257
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
