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

define internal void @__dva_global_init_ccl() #0 {
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

define ptr @"ccl::doc_new"() #0 {
entry:
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
  ret ptr %a.new
}

define ptr @"ccl::entry_new_str"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1 = load ptr, ptr %var.s, align 8
  store ptr %var.load1, ptr %pay.gep, align 8
  %var.load2 = load i64, ptr %var.line, align 8
  %var.load3 = load i64, ptr %var.col, align 8
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
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

define ptr @"ccl::entry_new_block"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1 = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
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
  store ptr %a.create3, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  store ptr %a.load2, ptr %pay.gep, align 8
  %var.load5 = load i64, ptr %var.line, align 8
  %var.load6 = load i64, ptr %var.col, align 8
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
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

define i1 @"ccl::is_space"(i64 %0) #0 {
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

define i64 @"ccl::trim_left_idx"(ptr %0, i64 %1) #0 {
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
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.88.then, label %and.88.else

and.88.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.88.else:                                      ; preds = %entry
  br label %and.88.exit

and.88.exit:                                      ; preds = %and.88.else, %idx_ok
  %and.88.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.88.else ]
  br i1 %and.88.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.88.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ccl::is_space"(i64 %s.byte.val)
  br label %and.88.exit

idx_oob:                                          ; preds = %and.88.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.88.exit
  %var.load9 = load ptr, ptr %var.s, align 8
  %var.load10 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load10, 1
  %call.res11 = call i64 @"ccl::trim_left_idx"(ptr %var.load9, i64 %addtmp)
  br label %choice.exit

choice.else:                                      ; preds = %and.88.exit
  %var.load12 = load i64, ptr %var.i, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %call.res11, %choice.then ], [ %var.load12, %choice.else ]
  ret i64 %choice.res
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

define i64 @"ccl::trim_right_idx"(ptr %0, i64 %1) #0 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %cmptmp = icmp sgt i64 %var.load, 0
  br i1 %cmptmp, label %and.89.then, label %and.89.else

and.89.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %s.read.len2 = load i64, ptr %s.read.len, align 8
  %s.read.len3 = and i64 %s.read.len2, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %s.read.data4 = load ptr, ptr %s.read.data, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load5, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.89.else:                                      ; preds = %entry
  br label %and.89.exit

and.89.exit:                                      ; preds = %and.89.else, %choice.exit
  %and.89.phi = phi i1 [ %choice.res, %choice.exit ], [ %cmptmp, %and.89.else ]
  br i1 %and.89.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.89.then
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

idx_oob:                                          ; preds = %and.89.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.89.exit

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit

choice.then:                                      ; preds = %and.89.exit
  %var.load12 = load ptr, ptr %var.s, align 8
  %var.load13 = load i64, ptr %var.i, align 8
  %subtmp14 = sub i64 %var.load13, 1
  %call.res = call i64 @"ccl::trim_right_idx"(ptr %var.load12, i64 %subtmp14)
  br label %choice.exit11

choice.else:                                      ; preds = %and.89.exit
  %var.load15 = load i64, ptr %var.i, align 8
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else, %choice.then
  %choice.res16 = phi i64 [ %call.res, %choice.then ], [ %var.load15, %choice.else ]
  ret i64 %choice.res16
}

define { i64, ptr } @"ccl::trim_str"(ptr %0) #0 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %var.end = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
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
  %ret.pack10 = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack10

choice.exit9:                                     ; preds = %ret.dead11, %choice.exit
  %var.load12 = load ptr, ptr %var.s, align 8
  %var.load13 = load i64, ptr %var.len, align 8
  %call.res14 = call i64 @"ccl::trim_right_idx"(ptr %var.load12, i64 %var.load13)
  store i64 %call.res14, ptr %var.end, align 8
  %var.load15 = load i64, ptr %var.end, align 8
  %var.load16 = load i64, ptr %var.start, align 8
  %cmptmp17 = icmp sle i64 %var.load15, %var.load16
  br i1 %cmptmp17, label %choice.then18, label %choice.else

ret.dead11:                                       ; No predecessors!
  br label %choice.exit9

choice.then18:                                    ; preds = %choice.exit9
  br label %choice.exit19

choice.else:                                      ; preds = %choice.exit9
  %var.load20 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %s.read.len21 = load i64, ptr %s.read.len, align 8
  %s.read.len22 = and i64 %s.read.len21, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data, align 8
  %var.load24 = load i64, ptr %var.start, align 8
  %var.load25 = load i64, ptr %var.end, align 8
  %start.is_neg = icmp slt i64 %var.load24, 0
  %rel.start = add i64 %s.read.len22, %var.load24
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load24
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
  %view.data = getelementptr i8, ptr %s.read.data23, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else, %choice.then18
  %choice.res = phi ptr [ @str.0.struct, %choice.then18 ], [ %str.view, %choice.else ]
  %ret.pack26 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack26
}

define i64 @"ccl::find_char_idx"(ptr %0, i64 %1, i64 %2) #0 {
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
  %cmptmp = icmp sge i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i64 -1

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load8, %s.read.len6
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load9 = load i64, ptr %var.ch, align 8
  %cmptmp10 = icmp eq i64 %s.byte.val, %var.load9
  br i1 %cmptmp10, label %choice.then11, label %choice.else

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then11:                                    ; preds = %idx_ok
  %var.load13 = load i64, ptr %var.i, align 8
  br label %choice.exit12

choice.else:                                      ; preds = %idx_ok
  %var.load14 = load ptr, ptr %var.s, align 8
  %var.load15 = load i64, ptr %var.ch, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load16, 1
  %call.res = call i64 @"ccl::find_char_idx"(ptr %var.load14, i64 %var.load15, i64 %addtmp)
  br label %choice.exit12

choice.exit12:                                    ; preds = %choice.else, %choice.then11
  %choice.res = phi i64 [ %var.load13, %choice.then11 ], [ %call.res, %choice.else ]
  ret i64 %choice.res
}

define i64 @"ccl::find_first_eq"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call i64 @"ccl::find_char_idx"(ptr %var.load, i64 61, i64 0)
  ret i64 %call.res
}

define ptr @"ccl::sort_strings"(ptr %0) #0 {
entry:
  %var._308 = alloca ptr, align 8
  %var._307 = alloca ptr, align 8
  %var._306 = alloca ptr, align 8
  %var._235 = alloca ptr, align 8
  %var._234 = alloca ptr, align 8
  %var._233 = alloca ptr, align 8
  %var.prev = alloca ptr, align 8
  %var._184 = alloca ptr, align 8
  %var._181 = alloca ptr, align 8
  %var._115 = alloca i64, align 8
  %var._i114 = alloca i64, align 8
  %loop.step.92 = alloca i64, align 8
  %loop.idx.92 = alloca i64, align 8
  %"var.j'" = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var._110 = alloca ptr, align 8
  %var._107 = alloca ptr, align 8
  %var._74 = alloca i64, align 8
  %var._i73 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.91 = alloca i64, align 8
  %loop.idx.91 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %loop.step.90 = alloca i64, align 8
  %loop.idx.90 = alloca i64, align 8
  %var._map_out_77 = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.arr = alloca ptr, align 8
  store ptr %0, ptr %var.arr, align 8
  %var.load = load ptr, ptr %var.arr, align 8
  %a.load = load ptr, ptr %var.arr, align 8
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
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep21, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  store ptr %a.new, ptr %var._map_out_77, align 8
  %var.load24 = load ptr, ptr %var.arr, align 8
  %a.load25 = load ptr, ptr %var.arr, align 8
  %a.null26 = icmp eq ptr %a.load25, null
  br i1 %a.null26, label %a.create27, label %a.after28

a.create8:                                        ; preds = %choice.then
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 24)
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
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
  store i64 0, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.header.90:                                   ; preds = %loop.latch.90, %a.after28
  %counter.load = load i64, ptr %loop.idx.90, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len37
  br i1 %loop.cond, label %loop.body.90, label %loop.exit.nat.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.90, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data38, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.s, align 8
  %var.load39 = load ptr, ptr %var.s, align 8
  %a.load40 = load ptr, ptr %var._map_out_77, align 8
  %a.null41 = icmp eq ptr %a.load40, null
  br i1 %a.null41, label %a.create42, label %a.after43

loop.exit.nat.90:                                 ; preds = %loop.header.90
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.90, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %loop.exit.nat.90
  %var.load56 = load ptr, ptr %var._map_out_77, align 8
  %a.load57 = load ptr, ptr %var._map_out_77, align 8
  %a.null58 = icmp eq ptr %a.load57, null
  br i1 %a.null58, label %a.create59, label %a.after60

a.create42:                                       ; preds = %loop.body.90
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 24)
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 128)
  %a.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 0
  store i64 0, ptr %a.len.gep48, align 8
  %a.data.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 1
  store ptr %a.buf47, ptr %a.data.gep49, align 8
  %a.cap.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 2
  store i64 16, ptr %a.cap.gep50, align 8
  store ptr %a.create45, ptr %var._map_out_77, align 8
  br label %a.after43

a.after43:                                        ; preds = %a.create42, %loop.body.90
  %a.load251 = load ptr, ptr %var._map_out_77, align 8
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
  br label %loop.latch.90

a.create59:                                       ; preds = %loop.exit.90
  %arena.cur61 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 24)
  %arena.cur63 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 128)
  %a.len.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 0
  store i64 0, ptr %a.len.gep65, align 8
  %a.data.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 1
  store ptr %a.buf64, ptr %a.data.gep66, align 8
  %a.cap.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 2
  store i64 16, ptr %a.cap.gep67, align 8
  store ptr %a.create62, ptr %var._map_out_77, align 8
  br label %a.after60

a.after60:                                        ; preds = %a.create59, %loop.exit.90
  %a.load268 = load ptr, ptr %var._map_out_77, align 8
  store ptr %a.load268, ptr %var.out, align 8
  %var.load69 = load i64, ptr %var.n, align 8
  store i64 1, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.header.91:                                   ; preds = %loop.latch.91, %a.after60
  %counter.load70 = load i64, ptr %loop.idx.91, align 8
  %loop.cond71 = icmp slt i64 %counter.load70, %var.load69
  br i1 %loop.cond71, label %loop.body.91, label %loop.exit.nat.91

loop.body.91:                                     ; preds = %loop.header.91
  %loop.rel.i72 = sub i64 %counter.load70, 1
  store i64 1, ptr %loop.step.91, align 8
  store i64 %loop.rel.i72, ptr %var._i73, align 8
  store i64 %counter.load70, ptr %var._74, align 8
  store i64 %counter.load70, ptr %var.i, align 8
  %var.load75 = load ptr, ptr %var.out, align 8
  %a.load76 = load ptr, ptr %var.out, align 8
  %a.null77 = icmp eq ptr %a.load76, null
  br i1 %a.null77, label %a.create78, label %a.after79

loop.exit.nat.91:                                 ; preds = %loop.header.91
  br label %loop.exit.91

loop.latch.91:                                    ; preds = %choice.exit305
  %step.val339 = load i64, ptr %loop.step.91, align 8
  %loop.next340 = add i64 %counter.load70, %step.val339
  store i64 %loop.next340, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.exit.91:                                     ; preds = %loop.exit.nat.91
  %var.load341 = load ptr, ptr %var.out, align 8
  %a.load342 = load ptr, ptr %var.out, align 8
  %a.null343 = icmp eq ptr %a.load342, null
  br i1 %a.null343, label %a.create344, label %a.after345

a.create78:                                       ; preds = %loop.body.91
  %arena.cur80 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 24)
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf83 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 128)
  %a.len.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create81, i32 0, i32 0
  store i64 0, ptr %a.len.gep84, align 8
  %a.data.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create81, i32 0, i32 1
  store ptr %a.buf83, ptr %a.data.gep85, align 8
  %a.cap.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create81, i32 0, i32 2
  store i64 16, ptr %a.cap.gep86, align 8
  store ptr %a.create81, ptr %var.out, align 8
  br label %a.after79

a.after79:                                        ; preds = %a.create78, %loop.body.91
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
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur92 = load ptr, ptr @dva_active_arena_tls, align 8
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
  store i64 0, ptr %loop.idx.92, align 8
  %cycle.prev.u = load i64, ptr %var._74, align 8
  %cycle.prev.i = load i64, ptr %var._i73, align 8
  br label %loop.header.92

loop.header.92:                                   ; preds = %loop.latch.92, %choice.exit105
  %counter.load112 = load i64, ptr %loop.idx.92, align 8
  br label %loop.body.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i113 = sub i64 %counter.load112, 0
  store i64 1, ptr %loop.step.92, align 8
  store i64 %loop.rel.i113, ptr %var._i114, align 8
  store i64 %counter.load112, ptr %var._115, align 8
  %var.load116 = load i64, ptr %"var.j'", align 8
  %cmptmp117 = icmp sle i64 %var.load116, 0
  br i1 %cmptmp117, label %choice.then118, label %choice.exit119

loop.exit.nat.92:                                 ; No predecessors!
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %choice.exit232
  %step.val249 = load i64, ptr %loop.step.92, align 8
  %loop.next250 = add i64 %counter.load112, %step.val249
  store i64 %loop.next250, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %choice.then189, %choice.then118, %loop.exit.nat.92
  store i64 %cycle.prev.u, ptr %var._74, align 8
  store i64 %cycle.prev.i, ptr %var._i73, align 8
  %var.load251 = load ptr, ptr %var.out, align 8
  %a.load252 = load ptr, ptr %var.out, align 8
  %a.null253 = icmp eq ptr %a.load252, null
  br i1 %a.null253, label %a.create254, label %a.after255

choice.then118:                                   ; preds = %loop.body.92
  br label %loop.exit.92

choice.exit119:                                   ; preds = %loop.body.92
  %var.load120 = load ptr, ptr %var.out, align 8
  %a.load121 = load ptr, ptr %var.out, align 8
  %a.null122 = icmp eq ptr %a.load121, null
  br i1 %a.null122, label %a.create123, label %a.after124

a.create123:                                      ; preds = %choice.exit119
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 24)
  %arena.cur127 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur149 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur160 = load ptr, ptr @dva_active_arena_tls, align 8
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
  br label %loop.exit.92

choice.exit190:                                   ; preds = %choice.exit178
  %var.load191 = load ptr, ptr %var.out, align 8
  %a.load192 = load ptr, ptr %var.out, align 8
  %a.null193 = icmp eq ptr %a.load192, null
  br i1 %a.null193, label %a.create194, label %a.after195

a.create194:                                      ; preds = %choice.exit190
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
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur220 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %err.msg.len32 = trunc i64 %err.msg.len242 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data243 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len244 = load i64, ptr %err.file.len, align 8
  %err.file.len245 = and i64 %err.file.len244, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len245 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data246 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

choice.exit232:                                   ; preds = %err.abort, %choice.then230
  %var.load247 = load i64, ptr %"var.j'", align 8
  %subtmp248 = sub i64 %var.load247, 1
  store i64 %subtmp248, ptr %"var.j'", align 8
  br label %loop.latch.92

err.thread:                                       ; preds = %choice.else231
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %choice.else231
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data243, i32 %err.file.len32, ptr %err.file.data246, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit232

a.create254:                                      ; preds = %loop.exit.92
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
  store ptr %a.create257, ptr %var.out, align 8
  br label %a.after255

a.after255:                                       ; preds = %a.create254, %loop.exit.92
  %a.load2263 = load ptr, ptr %var.out, align 8
  %var.load264 = load i64, ptr %"var.j'", align 8
  %var.load265 = load ptr, ptr %var.key, align 8
  %slot.p2i266 = ptrtoint ptr %var.load265 to i64
  %a.wr.nonnull267 = icmp ne ptr %a.load2263, null
  br i1 %a.wr.nonnull267, label %a.wr.check268, label %a.wr.err.null270

a.wr.check268:                                    ; preds = %a.after255
  %a.wr.len273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2263, i32 0, i32 0
  %a.wr.len274 = load i64, ptr %a.wr.len273, align 8
  %a.wr.ge0275 = icmp sge i64 %var.load264, 0
  %a.wr.lt276 = icmp slt i64 %var.load264, %a.wr.len274
  %a.wr.bounds277 = and i1 %a.wr.ge0275, %a.wr.lt276
  br i1 %a.wr.bounds277, label %a.wr.ok269, label %a.wr.err.oob271

a.wr.ok269:                                       ; preds = %a.wr.check268
  %a.wr.data278 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2263, i32 0, i32 1
  %a.wr.data279 = load ptr, ptr %a.wr.data278, align 8
  %a.elem.gep280 = getelementptr i64, ptr %a.wr.data279, i64 %var.load264
  store i64 %slot.p2i266, ptr %a.elem.gep280, align 8
  br label %a.wr.done272

a.wr.err.null270:                                 ; preds = %a.after255
  %arena.cur281 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 56)
  %err.code.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 0
  store i64 4011, ptr %err.code.gep283, align 8
  %err.msg.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep284, align 8
  %err.file.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep285, align 8
  %err.line.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 3
  store i64 0, ptr %err.line.gep286, align 8
  %err.col.gep287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 4
  store i64 0, ptr %err.col.gep287, align 8
  %err.ctx.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 5
  %err.ctx0.gep289 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep288, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep289, align 8
  %err.ctx1.gep290 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep288, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep290, align 8
  br label %a.wr.done272

a.wr.err.oob271:                                  ; preds = %a.wr.check268
  %arena.cur291 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc292 = call ptr @dva_arena_alloc(ptr %arena.cur291, i64 56)
  %err.code.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc292, i32 0, i32 0
  store i64 4011, ptr %err.code.gep293, align 8
  %err.msg.gep294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc292, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep294, align 8
  %err.file.gep295 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc292, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep295, align 8
  %err.line.gep296 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc292, i32 0, i32 3
  store i64 0, ptr %err.line.gep296, align 8
  %err.col.gep297 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc292, i32 0, i32 4
  store i64 0, ptr %err.col.gep297, align 8
  %err.ctx.gep298 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc292, i32 0, i32 5
  %err.ctx0.gep299 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep298, i32 0, i32 0
  store i64 %var.load264, ptr %err.ctx0.gep299, align 8
  %err.ctx1.gep300 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep298, i32 0, i32 1
  store i64 %a.wr.len274, ptr %err.ctx1.gep300, align 8
  br label %a.wr.done272

a.wr.done272:                                     ; preds = %a.wr.err.oob271, %a.wr.err.null270, %a.wr.ok269
  %a.wr.niche301 = phi ptr [ null, %a.wr.ok269 ], [ %err.alloc282, %a.wr.err.null270 ], [ %err.alloc292, %a.wr.err.oob271 ]
  %niche.eq.null302 = icmp eq ptr %a.wr.niche301, null
  br i1 %niche.eq.null302, label %choice.then303, label %choice.else304

choice.then303:                                   ; preds = %a.wr.done272
  br label %choice.exit305

choice.else304:                                   ; preds = %a.wr.done272
  store ptr %a.wr.niche301, ptr %var._306, align 8
  store ptr %a.wr.niche301, ptr %var._307, align 8
  store ptr %a.wr.niche301, ptr %var._308, align 8
  %err.code.gep309 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche301, i32 0, i32 0
  %err.code310 = load i64, ptr %err.code.gep309, align 8
  %err.msg.gep311 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche301, i32 0, i32 1
  %err.msg.struct312 = load ptr, ptr %err.msg.gep311, align 8
  %err.file.gep313 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche301, i32 0, i32 2
  %err.file.struct314 = load ptr, ptr %err.file.gep313, align 8
  %err.line.gep315 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche301, i32 0, i32 3
  %err.line316 = load i64, ptr %err.line.gep315, align 8
  %err.col.gep317 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche301, i32 0, i32 4
  %err.col318 = load i64, ptr %err.col.gep317, align 8
  %err.msg.len319 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct312, i32 0, i32 0
  %err.msg.len320 = load i64, ptr %err.msg.len319, align 8
  %err.msg.len321 = and i64 %err.msg.len320, 281474976710655
  %err.msg.len32322 = trunc i64 %err.msg.len321 to i32
  %err.msg.data323 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct312, i32 0, i32 1
  %err.msg.data324 = load ptr, ptr %err.msg.data323, align 8
  %err.file.len325 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct314, i32 0, i32 0
  %err.file.len326 = load i64, ptr %err.file.len325, align 8
  %err.file.len327 = and i64 %err.file.len326, 281474976710655
  %err.file.len32328 = trunc i64 %err.file.len327 to i32
  %err.file.data329 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct314, i32 0, i32 1
  %err.file.data330 = load ptr, ptr %err.file.data329, align 8
  %err.thread.rec331 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread332 = icmp ne ptr %err.thread.rec331, null
  br i1 %err.is.thread332, label %err.thread333, label %err.normal334

choice.exit305:                                   ; preds = %err.abort338, %choice.then303
  br label %loop.latch.91

err.thread333:                                    ; preds = %choice.else304
  %err.haserr.gep335 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec331, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep335, align 8
  %err.err.gep336 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec331, i32 0, i32 7
  store ptr %a.wr.niche301, ptr %err.err.gep336, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal334:                                    ; preds = %choice.else304
  %err.panic.printf337 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code310, i32 %err.msg.len32322, ptr %err.msg.data324, i32 %err.file.len32328, ptr %err.file.data330, i64 %err.line316, i64 %err.col318)
  call void @exit(i32 1)
  unreachable

err.abort338:                                     ; No predecessors!
  br label %choice.exit305

a.create344:                                      ; preds = %loop.exit.91
  %arena.cur346 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create347 = call ptr @dva_arena_alloc(ptr %arena.cur346, i64 24)
  %arena.cur348 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf349 = call ptr @dva_arena_alloc(ptr %arena.cur348, i64 128)
  %a.len.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create347, i32 0, i32 0
  store i64 0, ptr %a.len.gep350, align 8
  %a.data.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create347, i32 0, i32 1
  store ptr %a.buf349, ptr %a.data.gep351, align 8
  %a.cap.gep352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create347, i32 0, i32 2
  store i64 16, ptr %a.cap.gep352, align 8
  store ptr %a.create347, ptr %var.out, align 8
  br label %a.after345

a.after345:                                       ; preds = %a.create344, %loop.exit.91
  %a.load2353 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2353
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i64 @"str::cmp"(ptr, ptr) #0

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define ptr @"ccl::ccl_error"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.msg = alloca ptr, align 8
  %var.file = alloca ptr, align 8
  store ptr %0, ptr %var.file, align 8
  store ptr %1, ptr %var.msg, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
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

define i1 @"ccl::has"(ptr %0, ptr %1) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.93 = alloca i64, align 8
  %loop.idx.93 = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.header.93:                                   ; preds = %loop.latch.93, %a.after
  %counter.load = load i64, ptr %loop.idx.93, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.93, label %loop.exit.nat.93

loop.body.93:                                     ; preds = %loop.header.93
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.93, align 8
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
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.93:                                 ; preds = %loop.header.93
  br label %loop.exit.93

loop.latch.93:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.93, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.exit.93:                                     ; preds = %loop.exit.nat.93
  ret i1 false

str.eq.then:                                      ; preds = %loop.body.93
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data12 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data12, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.93
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.93

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

declare i32 @memcmp(ptr, ptr, i64) #0

define i64 @"ccl::count"(ptr %0, ptr %1) #0 {
entry:
  %var._fold_v_98 = alloca i64, align 8
  %var._18 = alloca i64, align 8
  %var.acc = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.94 = alloca i64, align 8
  %loop.idx.94 = alloca i64, align 8
  %var._fold_acc_98 = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  store i64 0, ptr %var._fold_acc_98, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.header.94:                                   ; preds = %loop.latch.94, %a.after
  %counter.load = load i64, ptr %loop.idx.94, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.94, label %loop.exit.nat.94

loop.body.94:                                     ; preds = %loop.header.94
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.94, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load i64, ptr %var._fold_acc_98, align 8
  store i64 %var.load5, ptr %var.acc, align 8
  %var.load6 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load7 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len8 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len9 = and i64 %eq.lhs.len8, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %eq.rhs.len10 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len11 = and i64 %eq.rhs.len10, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len9, %eq.rhs.len11
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.94:                                 ; preds = %loop.header.94
  br label %loop.exit.94

loop.latch.94:                                    ; preds = %choice.exit16
  %step.val = load i64, ptr %loop.step.94, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.exit.94:                                     ; preds = %loop.exit.nat.94
  %var.load20 = load i64, ptr %var._fold_acc_98, align 8
  ret i64 %var.load20

str.eq.then:                                      ; preds = %loop.body.94
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data12 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %eq.rhs.data13 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data12, ptr %eq.rhs.data13, i64 %eq.lhs.len9)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.94
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load14 = load i64, ptr %var.acc, align 8
  %addtmp = add i64 %var.load14, 1
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %addtmp, 1
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ zeroinitializer, %choice.else ]
  %ram.tag = extractvalue { i1, i64 } %choice.res, 0
  br i1 %ram.tag, label %choice.then15, label %choice.exit16

choice.then15:                                    ; preds = %choice.exit
  %ram.pay17 = extractvalue { i1, i64 } %choice.res, 1
  store i64 %ram.pay17, ptr %var._18, align 8
  store i64 %ram.pay17, ptr %var._fold_v_98, align 8
  %var.load19 = load i64, ptr %var._fold_v_98, align 8
  store i64 %var.load19, ptr %var._fold_acc_98, align 8
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.then15, %choice.exit
  br label %loop.latch.94
}

define ptr @"ccl::get_entry"(ptr %0, ptr %1) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.96 = alloca i64, align 8
  %loop.idx.96 = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.96, align 8
  br label %loop.header.96

loop.header.96:                                   ; preds = %loop.latch.96, %a.after
  %counter.load = load i64, ptr %loop.idx.96, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.96, label %loop.exit.nat.96

loop.body.96:                                     ; preds = %loop.header.96
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.96, align 8
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
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.96:                                 ; preds = %loop.header.96
  br label %loop.exit.96

loop.latch.96:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.96, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.96, align 8
  br label %loop.header.96

loop.exit.96:                                     ; preds = %loop.exit.nat.96
  ret ptr null

str.eq.then:                                      ; preds = %loop.body.96
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data12 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data12, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.96
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load13 = load ptr, ptr %var.e, align 8
  ret ptr %var.load13

choice.exit:                                      ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.96

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define { i64, ptr } @"ccl::get"(ptr %0, ptr %1) #0 {
entry:
  %var.s = alloca ptr, align 8
  %var._17 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.98 = alloca i64, align 8
  %loop.idx.98 = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.98, align 8
  br label %loop.header.98

loop.header.98:                                   ; preds = %loop.latch.98, %a.after
  %counter.load = load i64, ptr %loop.idx.98, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.98, label %loop.exit.nat.98

loop.body.98:                                     ; preds = %loop.header.98
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.98, align 8
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
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.98:                                 ; preds = %loop.header.98
  br label %loop.exit.98

loop.latch.98:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.98, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.98, align 8
  br label %loop.header.98

loop.exit.98:                                     ; preds = %loop.exit.nat.98
  ret { i64, ptr } zeroinitializer

str.eq.then:                                      ; preds = %loop.body.98
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data12 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data12, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.98
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load13 = load ptr, ptr %var.e, align 8
  %fld.gep14 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit16, %str.eq.merge
  br label %loop.latch.98

choice.exit16:                                    ; preds = %choice.next, %ret.dead
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._17, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load18 = load ptr, ptr %var.s, align 8
  %ret.niche.nn = icmp ne ptr %var.load18, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

choice.next:                                      ; preds = %choice.then
  br label %choice.exit16

ret.niche.load:                                   ; preds = %choice.case
  %ret.niche.val = load { i64, ptr }, ptr %var.load18, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.case
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.case ]
  ret { i64, ptr } %ret.niche.pack

ret.dead:                                         ; No predecessors!
  br label %choice.exit16
}

define { i1, i64 } @"ccl::get_section"(ptr %0, ptr %1) #0 {
entry:
  %var.b = alloca ptr, align 8
  %var._17 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.100 = alloca i64, align 8
  %loop.idx.100 = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.header.100:                                  ; preds = %loop.latch.100, %a.after
  %counter.load = load i64, ptr %loop.idx.100, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.100, label %loop.exit.nat.100

loop.body.100:                                    ; preds = %loop.header.100
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.100, align 8
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
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len9 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len9, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.100:                                ; preds = %loop.header.100
  br label %loop.exit.100

loop.latch.100:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.100, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.exit.100:                                    ; preds = %loop.exit.nat.100
  ret { i1, i64 } zeroinitializer

str.eq.then:                                      ; preds = %loop.body.100
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data12 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data12, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.100
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load13 = load ptr, ptr %var.e, align 8
  %fld.gep14 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit16, %str.eq.merge
  br label %loop.latch.100

choice.exit16:                                    ; preds = %choice.next, %ret.dead
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._17, align 8
  store ptr %payload.ptr, ptr %var.b, align 8
  %var.load18 = load ptr, ptr %var.b, align 8
  %a.load19 = load ptr, ptr %var.b, align 8
  %a.null20 = icmp eq ptr %a.load19, null
  br i1 %a.null20, label %a.create21, label %a.after22

choice.next:                                      ; preds = %choice.then
  br label %choice.exit16

a.create21:                                       ; preds = %choice.case
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 24)
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 128)
  %a.len.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 0
  store i64 0, ptr %a.len.gep27, align 8
  %a.data.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 1
  store ptr %a.buf26, ptr %a.data.gep28, align 8
  %a.cap.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 2
  store i64 16, ptr %a.cap.gep29, align 8
  store ptr %a.create24, ptr %var.b, align 8
  br label %a.after22

a.after22:                                        ; preds = %a.create21, %choice.case
  %a.load230 = load ptr, ptr %var.b, align 8
  %p.to.i64 = ptrtoint ptr %a.load230 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

ret.dead:                                         ; No predecessors!
  br label %choice.exit16
}

define { i1, i64 } @"ccl::get_list"(ptr %0, ptr %1) #0 {
entry:
  %var._map_v_122 = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var._34 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.103 = alloca i64, align 8
  %loop.idx.103 = alloca i64, align 8
  %var._map_out_122 = alloca ptr, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %var.load3 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"ccl::get_section"(ptr %a.load2, ptr %var.load3)
  %prop.is_pos = extractvalue { i1, i64 } %call.res, 0
  br i1 %prop.is_pos, label %prop.pos.102, label %prop.ret.102

prop.pos.102:                                     ; preds = %a.after
  %prop.pay.pos = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.sec, align 8
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep7, align 8
  %a.data.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf6, ptr %a.data.gep8, align 8
  %a.cap.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep9, align 8
  store ptr %a.new, ptr %var._map_out_122, align 8
  %var.load10 = load ptr, ptr %var.sec, align 8
  %a.load11 = load ptr, ptr %var.sec, align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

prop.ret.102:                                     ; preds = %a.after
  ret { i1, i64 } %call.res

a.create13:                                       ; preds = %prop.pos.102
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 128)
  %a.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 0
  store i64 0, ptr %a.len.gep19, align 8
  %a.data.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 1
  store ptr %a.buf18, ptr %a.data.gep20, align 8
  %a.cap.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 2
  store i64 16, ptr %a.cap.gep21, align 8
  store ptr %a.create16, ptr %var.sec, align 8
  br label %a.after14

a.after14:                                        ; preds = %a.create13, %prop.pos.102
  %a.load222 = load ptr, ptr %var.sec, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %arr.cycle.len23 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 1
  %arr.cycle.data24 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.header.103:                                  ; preds = %loop.latch.103, %a.after14
  %counter.load = load i64, ptr %loop.idx.103, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len23
  br i1 %loop.cond, label %loop.body.103, label %loop.exit.nat.103

loop.body.103:                                    ; preds = %loop.header.103
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.103, align 8
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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len28 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len27, %eq.rhs.len28
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.103:                                ; preds = %loop.header.103
  br label %loop.exit.103

loop.latch.103:                                   ; preds = %choice.exit38
  %step.val = load i64, ptr %loop.step.103, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.exit.103:                                    ; preds = %loop.exit.nat.103
  %var.load57 = load ptr, ptr %var._map_out_122, align 8
  %a.load58 = load ptr, ptr %var._map_out_122, align 8
  %a.null59 = icmp eq ptr %a.load58, null
  br i1 %a.null59, label %a.create60, label %a.after61

str.eq.then:                                      ; preds = %loop.body.103
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data29 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data29, ptr %eq.rhs.data, i64 %eq.lhs.len27)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.103
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load30 = load ptr, ptr %var.e, align 8
  %fld.gep31 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load30, i32 0, i32 1
  %fld.load32 = load ptr, ptr %fld.gep31, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load32, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit33
  %choice.res36 = phi ptr [ %choice.res, %choice.exit33 ], [ null, %choice.else ]
  %niche.ne.null = icmp ne ptr %choice.res36, null
  br i1 %niche.ne.null, label %choice.then37, label %choice.exit38

choice.exit33:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %var.load35, %choice.case ], [ null, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load32, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._34, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load35 = load ptr, ptr %var.s, align 8
  br label %choice.exit33

choice.next:                                      ; preds = %choice.then
  br label %choice.exit33

choice.then37:                                    ; preds = %choice.exit
  store ptr %choice.res36, ptr %var._39, align 8
  store ptr %choice.res36, ptr %var._map_v_122, align 8
  %var.load40 = load ptr, ptr %var._map_v_122, align 8
  %a.load41 = load ptr, ptr %var._map_out_122, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

choice.exit38:                                    ; preds = %a.store, %choice.exit
  br label %loop.latch.103

a.create43:                                       ; preds = %choice.then37
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 24)
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 128)
  %a.len.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 0
  store i64 0, ptr %a.len.gep49, align 8
  %a.data.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 1
  store ptr %a.buf48, ptr %a.data.gep50, align 8
  %a.cap.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 2
  store i64 16, ptr %a.cap.gep51, align 8
  store ptr %a.create46, ptr %var._map_out_122, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %choice.then37
  %a.load252 = load ptr, ptr %var._map_out_122, align 8
  br label %a.check

a.check:                                          ; preds = %a.after44
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  %a.len53 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 2
  %a.cap54 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len53, %a.cap54
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load252)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 1
  %a.cur.data55 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  %a.cur.len56 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data55, i64 %a.cur.len56
  %slot.p2i = ptrtoint ptr %var.load40 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len56, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit38

a.create60:                                       ; preds = %loop.exit.103
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 24)
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 128)
  %a.len.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create63, i32 0, i32 0
  store i64 0, ptr %a.len.gep66, align 8
  %a.data.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create63, i32 0, i32 1
  store ptr %a.buf65, ptr %a.data.gep67, align 8
  %a.cap.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create63, i32 0, i32 2
  store i64 16, ptr %a.cap.gep68, align 8
  store ptr %a.create63, ptr %var._map_out_122, align 8
  br label %a.after61

a.after61:                                        ; preds = %a.create60, %loop.exit.103
  %a.load269 = load ptr, ptr %var._map_out_122, align 8
  %p.to.i64 = ptrtoint ptr %a.load269 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay
}

define ptr @"ccl::entries_for"(ptr %0, ptr %1) #0 {
entry:
  %var._map_v_131 = alloca ptr, align 8
  %var._22 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.104 = alloca i64, align 8
  %loop.idx.104 = alloca i64, align 8
  %var._map_out_131 = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
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
  store ptr %a.new, ptr %var._map_out_131, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
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
  store i64 0, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.header.104:                                  ; preds = %loop.latch.104, %a.after
  %counter.load = load i64, ptr %loop.idx.104, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.104, label %loop.exit.nat.104

loop.body.104:                                    ; preds = %loop.header.104
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.104, align 8
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
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %eq.rhs.len15 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len16 = and i64 %eq.rhs.len15, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len14, %eq.rhs.len16
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.104:                                ; preds = %loop.header.104
  br label %loop.exit.104

loop.latch.104:                                   ; preds = %choice.exit21
  %step.val = load i64, ptr %loop.step.104, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.exit.104:                                    ; preds = %loop.exit.nat.104
  %var.load40 = load ptr, ptr %var._map_out_131, align 8
  %a.load41 = load ptr, ptr %var._map_out_131, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

str.eq.then:                                      ; preds = %loop.body.104
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data17 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %eq.rhs.data18 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data17, ptr %eq.rhs.data18, i64 %eq.lhs.len14)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.104
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load19 = load ptr, ptr %var.e, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %var.load19, %choice.then ], [ null, %choice.else ]
  %niche.ne.null = icmp ne ptr %choice.res, null
  br i1 %niche.ne.null, label %choice.then20, label %choice.exit21

choice.then20:                                    ; preds = %choice.exit
  store ptr %choice.res, ptr %var._22, align 8
  store ptr %choice.res, ptr %var._map_v_131, align 8
  %var.load23 = load ptr, ptr %var._map_v_131, align 8
  %a.load24 = load ptr, ptr %var._map_out_131, align 8
  %a.null25 = icmp eq ptr %a.load24, null
  br i1 %a.null25, label %a.create26, label %a.after27

choice.exit21:                                    ; preds = %a.store, %choice.exit
  br label %loop.latch.104

a.create26:                                       ; preds = %choice.then20
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 24)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 128)
  %a.len.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 0
  store i64 0, ptr %a.len.gep32, align 8
  %a.data.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 1
  store ptr %a.buf31, ptr %a.data.gep33, align 8
  %a.cap.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 2
  store i64 16, ptr %a.cap.gep34, align 8
  store ptr %a.create29, ptr %var._map_out_131, align 8
  br label %a.after27

a.after27:                                        ; preds = %a.create26, %choice.then20
  %a.load235 = load ptr, ptr %var._map_out_131, align 8
  br label %a.check

a.check:                                          ; preds = %a.after27
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load235, i32 0, i32 0
  %a.len36 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load235, i32 0, i32 2
  %a.cap37 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len36, %a.cap37
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load235)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load235, i32 0, i32 1
  %a.cur.data38 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load235, i32 0, i32 0
  %a.cur.len39 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data38, i64 %a.cur.len39
  %slot.p2i = ptrtoint ptr %var.load23 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len39, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load235, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit21

a.create43:                                       ; preds = %loop.exit.104
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 24)
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 128)
  %a.len.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 0
  store i64 0, ptr %a.len.gep49, align 8
  %a.data.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 1
  store ptr %a.buf48, ptr %a.data.gep50, align 8
  %a.cap.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 2
  store i64 16, ptr %a.cap.gep51, align 8
  store ptr %a.create46, ptr %var._map_out_131, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %loop.exit.104
  %a.load252 = load ptr, ptr %var._map_out_131, align 8
  ret ptr %a.load252
}

define ptr @"ccl::split_raw_lines"(ptr %0) #0 {
entry:
  %var.ind160 = alloca i64, align 8
  %var.raw157 = alloca ptr, align 8
  %var.line_end126 = alloca i64, align 8
  %var.ind = alloca i64, align 8
  %var.raw = alloca ptr, align 8
  %var.line_end = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.106 = alloca i64, align 8
  %loop.idx.106 = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %entry
  store i64 0, ptr %"var.cur_start'", align 8
  store i64 1, ptr %"var.line_no'", align 8
  %var.load7 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.106, align 8
  br label %loop.header.106

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create5, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.lines, align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.106:                                  ; preds = %loop.latch.106, %choice.exit
  %counter.load = load i64, ptr %loop.idx.106, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load7
  br i1 %loop.cond, label %loop.body.106, label %loop.exit.nat.106

loop.body.106:                                    ; preds = %loop.header.106
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.106, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load8 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %var.load12 = load i64, ptr %var.i, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp13 = icmp eq i64 %s.byte.val, 10
  br i1 %cmptmp13, label %choice.then14, label %choice.exit15

loop.exit.nat.106:                                ; preds = %loop.header.106
  br label %loop.exit.106

loop.latch.106:                                   ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.106, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.106, align 8
  br label %loop.header.106

loop.exit.106:                                    ; preds = %loop.exit.nat.106
  %var.load98 = load i64, ptr %"var.cur_start'", align 8
  %var.load99 = load i64, ptr %var.len, align 8
  %cmptmp100 = icmp slt i64 %var.load98, %var.load99
  br i1 %cmptmp100, label %choice.then101, label %choice.exit102

choice.then14:                                    ; preds = %loop.body.106
  %var.load16 = load i64, ptr %var.i, align 8
  %var.load17 = load i64, ptr %"var.cur_start'", align 8
  %cmptmp18 = icmp sgt i64 %var.load16, %var.load17
  br i1 %cmptmp18, label %and.107.then, label %and.107.else

choice.exit15:                                    ; preds = %a.store, %loop.body.106
  br label %loop.latch.106

and.107.then:                                     ; preds = %choice.then14
  %var.load19 = load ptr, ptr %var.src, align 8
  %s.read.len20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len21 = load i64, ptr %s.read.len20, align 8
  %s.read.len22 = and i64 %s.read.len21, 281474976710655
  %s.read.data23 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data23, align 8
  %var.load25 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load25, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len22
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.107.else:                                     ; preds = %choice.then14
  br label %and.107.exit

and.107.exit:                                     ; preds = %and.107.else, %idx_ok
  %and.107.phi = phi i1 [ %cmptmp29, %idx_ok ], [ %cmptmp18, %and.107.else ]
  br i1 %and.107.phi, label %choice.then30, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.107.then
  %s.byte.gep26 = getelementptr i8, ptr %s.read.data24, i64 %subtmp
  %s.byte27 = load i8, ptr %s.byte.gep26, align 1
  %s.byte.val28 = zext i8 %s.byte27 to i64
  %cmptmp29 = icmp eq i64 %s.byte.val28, 13
  br label %and.107.exit

idx_oob:                                          ; preds = %and.107.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then30:                                    ; preds = %and.107.exit
  %var.load32 = load i64, ptr %var.i, align 8
  %subtmp33 = sub i64 %var.load32, 1
  br label %choice.exit31

choice.else:                                      ; preds = %and.107.exit
  %var.load34 = load i64, ptr %var.i, align 8
  br label %choice.exit31

choice.exit31:                                    ; preds = %choice.else, %choice.then30
  %choice.res = phi i64 [ %subtmp33, %choice.then30 ], [ %var.load34, %choice.else ]
  store i64 %choice.res, ptr %var.line_end, align 8
  %var.load35 = load ptr, ptr %var.src, align 8
  %s.read.len36 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %s.read.len37 = load i64, ptr %s.read.len36, align 8
  %s.read.len38 = and i64 %s.read.len37, 281474976710655
  %s.read.data39 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data39, align 8
  %var.load41 = load i64, ptr %"var.cur_start'", align 8
  %var.load42 = load i64, ptr %var.line_end, align 8
  %start.is_neg = icmp slt i64 %var.load41, 0
  %rel.start = add i64 %s.read.len38, %var.load41
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load41
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len38
  %final.start = select i1 %start.gt.len, i64 %s.read.len38, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load42, 0
  %rel.end = add i64 %s.read.len38, %var.load42
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load42
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len38
  %final.end = select i1 %end.gt.len, i64 %s.read.len38, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data40, i64 %final.start
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw, align 8
  %var.load44 = load ptr, ptr %var.raw, align 8
  %call.res = call i64 @"ccl::trim_left_idx"(ptr %var.load44, i64 0)
  store i64 %call.res, ptr %var.ind, align 8
  %var.load45 = load i64, ptr %"var.line_no'", align 8
  %var.load46 = load i64, ptr %var.ind, align 8
  %var.load47 = load ptr, ptr %var.raw, align 8
  %s.read.len48 = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 0
  %s.read.len49 = load i64, ptr %s.read.len48, align 8
  %s.read.len50 = and i64 %s.read.len49, 281474976710655
  %s.read.data51 = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 1
  %s.read.data52 = load ptr, ptr %s.read.data51, align 8
  %var.load53 = load i64, ptr %var.ind, align 8
  %start.is_neg54 = icmp slt i64 %var.load53, 0
  %rel.start55 = add i64 %s.read.len50, %var.load53
  %norm.start56 = select i1 %start.is_neg54, i64 %rel.start55, i64 %var.load53
  %start.lt.057 = icmp slt i64 %norm.start56, 0
  %c.start.058 = select i1 %start.lt.057, i64 0, i64 %norm.start56
  %start.gt.len59 = icmp sgt i64 %c.start.058, %s.read.len50
  %final.start60 = select i1 %start.gt.len59, i64 %s.read.len50, i64 %c.start.058
  %end.is_neg61 = icmp slt i64 %s.read.len50, 0
  %rel.end62 = add i64 %s.read.len50, %s.read.len50
  %norm.end63 = select i1 %end.is_neg61, i64 %rel.end62, i64 %s.read.len50
  %end.lt.064 = icmp slt i64 %norm.end63, 0
  %c.end.065 = select i1 %end.lt.064, i64 0, i64 %norm.end63
  %end.gt.len66 = icmp sgt i64 %c.end.065, %s.read.len50
  %final.end67 = select i1 %end.gt.len66, i64 %s.read.len50, i64 %c.end.065
  %view.empty68 = icmp sle i64 %final.end67, %final.start60
  %view.len.sub69 = sub i64 %final.end67, %final.start60
  %view.len70 = select i1 %view.empty68, i64 0, i64 %view.len.sub69
  %view.data71 = getelementptr i8, ptr %s.read.data52, i64 %final.start60
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 16)
  %str.build.len.gep74 = getelementptr inbounds { i64, ptr }, ptr %str.view73, i32 0, i32 0
  store i64 %view.len70, ptr %str.build.len.gep74, align 8
  %str.build.data.gep75 = getelementptr inbounds { i64, ptr }, ptr %str.view73, i32 0, i32 1
  store ptr %view.data71, ptr %str.build.data.gep75, align 8
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load45, ptr %rec.fld, align 8
  %rec.fld77 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load46, ptr %rec.fld77, align 8
  %rec.fld78 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %str.view73, ptr %rec.fld78, align 8
  %a.load79 = load ptr, ptr %var.lines, align 8
  %a.null80 = icmp eq ptr %a.load79, null
  br i1 %a.null80, label %a.create81, label %a.after82

a.create81:                                       ; preds = %choice.exit31
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 24)
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 128)
  %a.len.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create84, i32 0, i32 0
  store i64 0, ptr %a.len.gep87, align 8
  %a.data.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create84, i32 0, i32 1
  store ptr %a.buf86, ptr %a.data.gep88, align 8
  %a.cap.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create84, i32 0, i32 2
  store i64 16, ptr %a.cap.gep89, align 8
  store ptr %a.create84, ptr %var.lines, align 8
  br label %a.after82

a.after82:                                        ; preds = %a.create81, %choice.exit31
  %a.load290 = load ptr, ptr %var.lines, align 8
  br label %a.check

a.check:                                          ; preds = %a.after82
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load290, i32 0, i32 0
  %a.len91 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load290, i32 0, i32 2
  %a.cap92 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len91, %a.cap92
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load290)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load290, i32 0, i32 1
  %a.cur.data93 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load290, i32 0, i32 0
  %a.cur.len94 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data93, i64 %a.cur.len94
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len94, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load290, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load95 = load i64, ptr %"var.line_no'", align 8
  %addtmp = add i64 %var.load95, 1
  store i64 %addtmp, ptr %"var.line_no'", align 8
  %var.load96 = load i64, ptr %var.i, align 8
  %addtmp97 = add i64 %var.load96, 1
  store i64 %addtmp97, ptr %"var.cur_start'", align 8
  br label %choice.exit15

choice.then101:                                   ; preds = %loop.exit.106
  %var.load103 = load ptr, ptr %var.src, align 8
  %s.read.len104 = getelementptr inbounds { i64, ptr }, ptr %var.load103, i32 0, i32 0
  %s.read.len105 = load i64, ptr %s.read.len104, align 8
  %s.read.len106 = and i64 %s.read.len105, 281474976710655
  %s.read.data107 = getelementptr inbounds { i64, ptr }, ptr %var.load103, i32 0, i32 1
  %s.read.data108 = load ptr, ptr %s.read.data107, align 8
  %var.load109 = load i64, ptr %var.len, align 8
  %subtmp110 = sub i64 %var.load109, 1
  %idx.oob111 = icmp uge i64 %subtmp110, %s.read.len106
  br i1 %idx.oob111, label %idx_oob113, label %idx_ok112

choice.exit102:                                   ; preds = %a.store211, %loop.exit.106
  %var.load225 = load ptr, ptr %var.lines, align 8
  %a.load226 = load ptr, ptr %var.lines, align 8
  %a.null227 = icmp eq ptr %a.load226, null
  br i1 %a.null227, label %a.create228, label %a.after229

idx_ok112:                                        ; preds = %abort.dead114, %choice.then101
  %s.byte.gep115 = getelementptr i8, ptr %s.read.data108, i64 %subtmp110
  %s.byte116 = load i8, ptr %s.byte.gep115, align 1
  %s.byte.val117 = zext i8 %s.byte116 to i64
  %cmptmp118 = icmp eq i64 %s.byte.val117, 13
  br i1 %cmptmp118, label %choice.then119, label %choice.else120

idx_oob113:                                       ; preds = %choice.then101
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead114:                                    ; No predecessors!
  br label %idx_ok112

choice.then119:                                   ; preds = %idx_ok112
  %var.load122 = load i64, ptr %var.len, align 8
  %subtmp123 = sub i64 %var.load122, 1
  br label %choice.exit121

choice.else120:                                   ; preds = %idx_ok112
  %var.load124 = load i64, ptr %var.len, align 8
  br label %choice.exit121

choice.exit121:                                   ; preds = %choice.else120, %choice.then119
  %choice.res125 = phi i64 [ %subtmp123, %choice.then119 ], [ %var.load124, %choice.else120 ]
  store i64 %choice.res125, ptr %var.line_end126, align 8
  %var.load127 = load ptr, ptr %var.src, align 8
  %s.read.len128 = getelementptr inbounds { i64, ptr }, ptr %var.load127, i32 0, i32 0
  %s.read.len129 = load i64, ptr %s.read.len128, align 8
  %s.read.len130 = and i64 %s.read.len129, 281474976710655
  %s.read.data131 = getelementptr inbounds { i64, ptr }, ptr %var.load127, i32 0, i32 1
  %s.read.data132 = load ptr, ptr %s.read.data131, align 8
  %var.load133 = load i64, ptr %"var.cur_start'", align 8
  %var.load134 = load i64, ptr %var.line_end126, align 8
  %start.is_neg135 = icmp slt i64 %var.load133, 0
  %rel.start136 = add i64 %s.read.len130, %var.load133
  %norm.start137 = select i1 %start.is_neg135, i64 %rel.start136, i64 %var.load133
  %start.lt.0138 = icmp slt i64 %norm.start137, 0
  %c.start.0139 = select i1 %start.lt.0138, i64 0, i64 %norm.start137
  %start.gt.len140 = icmp sgt i64 %c.start.0139, %s.read.len130
  %final.start141 = select i1 %start.gt.len140, i64 %s.read.len130, i64 %c.start.0139
  %end.is_neg142 = icmp slt i64 %var.load134, 0
  %rel.end143 = add i64 %s.read.len130, %var.load134
  %norm.end144 = select i1 %end.is_neg142, i64 %rel.end143, i64 %var.load134
  %end.lt.0145 = icmp slt i64 %norm.end144, 0
  %c.end.0146 = select i1 %end.lt.0145, i64 0, i64 %norm.end144
  %end.gt.len147 = icmp sgt i64 %c.end.0146, %s.read.len130
  %final.end148 = select i1 %end.gt.len147, i64 %s.read.len130, i64 %c.end.0146
  %view.empty149 = icmp sle i64 %final.end148, %final.start141
  %view.len.sub150 = sub i64 %final.end148, %final.start141
  %view.len151 = select i1 %view.empty149, i64 0, i64 %view.len.sub150
  %view.data152 = getelementptr i8, ptr %s.read.data132, i64 %final.start141
  %arena.cur153 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 16)
  %str.build.len.gep155 = getelementptr inbounds { i64, ptr }, ptr %str.view154, i32 0, i32 0
  store i64 %view.len151, ptr %str.build.len.gep155, align 8
  %str.build.data.gep156 = getelementptr inbounds { i64, ptr }, ptr %str.view154, i32 0, i32 1
  store ptr %view.data152, ptr %str.build.data.gep156, align 8
  store ptr %str.view154, ptr %var.raw157, align 8
  %var.load158 = load ptr, ptr %var.raw157, align 8
  %call.res159 = call i64 @"ccl::trim_left_idx"(ptr %var.load158, i64 0)
  store i64 %call.res159, ptr %var.ind160, align 8
  %var.load161 = load i64, ptr %"var.line_no'", align 8
  %var.load162 = load i64, ptr %var.ind160, align 8
  %var.load163 = load ptr, ptr %var.raw157, align 8
  %s.read.len164 = getelementptr inbounds { i64, ptr }, ptr %var.load163, i32 0, i32 0
  %s.read.len165 = load i64, ptr %s.read.len164, align 8
  %s.read.len166 = and i64 %s.read.len165, 281474976710655
  %s.read.data167 = getelementptr inbounds { i64, ptr }, ptr %var.load163, i32 0, i32 1
  %s.read.data168 = load ptr, ptr %s.read.data167, align 8
  %var.load169 = load i64, ptr %var.ind160, align 8
  %start.is_neg170 = icmp slt i64 %var.load169, 0
  %rel.start171 = add i64 %s.read.len166, %var.load169
  %norm.start172 = select i1 %start.is_neg170, i64 %rel.start171, i64 %var.load169
  %start.lt.0173 = icmp slt i64 %norm.start172, 0
  %c.start.0174 = select i1 %start.lt.0173, i64 0, i64 %norm.start172
  %start.gt.len175 = icmp sgt i64 %c.start.0174, %s.read.len166
  %final.start176 = select i1 %start.gt.len175, i64 %s.read.len166, i64 %c.start.0174
  %end.is_neg177 = icmp slt i64 %s.read.len166, 0
  %rel.end178 = add i64 %s.read.len166, %s.read.len166
  %norm.end179 = select i1 %end.is_neg177, i64 %rel.end178, i64 %s.read.len166
  %end.lt.0180 = icmp slt i64 %norm.end179, 0
  %c.end.0181 = select i1 %end.lt.0180, i64 0, i64 %norm.end179
  %end.gt.len182 = icmp sgt i64 %c.end.0181, %s.read.len166
  %final.end183 = select i1 %end.gt.len182, i64 %s.read.len166, i64 %c.end.0181
  %view.empty184 = icmp sle i64 %final.end183, %final.start176
  %view.len.sub185 = sub i64 %final.end183, %final.start176
  %view.len186 = select i1 %view.empty184, i64 0, i64 %view.len.sub185
  %view.data187 = getelementptr i8, ptr %s.read.data168, i64 %final.start176
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 16)
  %str.build.len.gep190 = getelementptr inbounds { i64, ptr }, ptr %str.view189, i32 0, i32 0
  store i64 %view.len186, ptr %str.build.len.gep190, align 8
  %str.build.data.gep191 = getelementptr inbounds { i64, ptr }, ptr %str.view189, i32 0, i32 1
  store ptr %view.data187, ptr %str.build.data.gep191, align 8
  %arena.cur192 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld194 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc193, i32 0, i32 0
  store i64 %var.load161, ptr %rec.fld194, align 8
  %rec.fld195 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc193, i32 0, i32 1
  store i64 %var.load162, ptr %rec.fld195, align 8
  %rec.fld196 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc193, i32 0, i32 2
  store ptr %str.view189, ptr %rec.fld196, align 8
  %a.load197 = load ptr, ptr %var.lines, align 8
  %a.null198 = icmp eq ptr %a.load197, null
  br i1 %a.null198, label %a.create199, label %a.after200

a.create199:                                      ; preds = %choice.exit121
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
  store ptr %a.create202, ptr %var.lines, align 8
  br label %a.after200

a.after200:                                       ; preds = %a.create199, %choice.exit121
  %a.load2208 = load ptr, ptr %var.lines, align 8
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
  %slot.p2i222 = ptrtoint ptr %rec.alloc193 to i64
  store i64 %slot.p2i222, ptr %a.elem.gep221, align 8
  %a.next.len223 = add i64 %a.cur.len220, 1
  %b.len.gep224 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2208, i32 0, i32 0
  store i64 %a.next.len223, ptr %b.len.gep224, align 8
  br label %choice.exit102

a.create228:                                      ; preds = %choice.exit102
  %arena.cur230 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create231 = call ptr @dva_arena_alloc(ptr %arena.cur230, i64 24)
  %arena.cur232 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 128)
  %a.len.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create231, i32 0, i32 0
  store i64 0, ptr %a.len.gep234, align 8
  %a.data.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create231, i32 0, i32 1
  store ptr %a.buf233, ptr %a.data.gep235, align 8
  %a.cap.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create231, i32 0, i32 2
  store i64 16, ptr %a.cap.gep236, align 8
  store ptr %a.create231, ptr %var.lines, align 8
  br label %a.after229

a.after229:                                       ; preds = %a.create228, %choice.exit102
  %a.load2237 = load ptr, ptr %var.lines, align 8
  ret ptr %a.load2237
}

define { i1, i64 } @"ccl::parse_block_from"(ptr %0, i64 %1, i64 %2, ptr %3) #0 {
entry:
  %var.cl = alloca ptr, align 8
  %var._693 = alloca ptr, align 8
  %var._690 = alloca ptr, align 8
  %var._623 = alloca i64, align 8
  %var._i622 = alloca i64, align 8
  %loop.step.114 = alloca i64, align 8
  %loop.idx.114 = alloca i64, align 8
  %var.tb = alloca ptr, align 8
  %var.cres = alloca ptr, align 8
  %var.cand_line = alloca ptr, align 8
  %var._534 = alloca ptr, align 8
  %var._531 = alloca ptr, align 8
  %var.cand = alloca ptr, align 8
  %var._389 = alloca ptr, align 8
  %var._386 = alloca ptr, align 8
  %var._319 = alloca i64, align 8
  %var._i318 = alloca i64, align 8
  %loop.step.112 = alloca i64, align 8
  %loop.idx.112 = alloca i64, align 8
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
  %loop.step.109 = alloca i64, align 8
  %loop.idx.109 = alloca i64, align 8
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
  store i64 %a.len.query4, ptr %var.total, align 8
  store i64 -1, ptr %"var.base_indent'", align 8
  store i64 0, ptr %loop.idx.109, align 8
  br label %loop.header.109

loop.header.109:                                  ; preds = %loop.latch.109, %a.after
  %counter.load = load i64, ptr %loop.idx.109, align 8
  br label %loop.body.109

loop.body.109:                                    ; preds = %loop.header.109
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.109, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.idx'", align 8
  %var.load6 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.109:                                ; No predecessors!
  br label %loop.exit.109

loop.latch.109:                                   ; preds = %choice.exit53
  %step.val863 = load i64, ptr %loop.step.109, align 8
  %loop.next864 = add i64 %counter.load, %step.val863
  store i64 %loop.next864, ptr %loop.idx.109, align 8
  br label %loop.header.109

loop.exit.109:                                    ; preds = %choice.then72, %choice.then, %loop.exit.nat.109
  %var.load865 = load ptr, ptr %var.doc, align 8
  %a.load866 = load ptr, ptr %var.doc, align 8
  %a.null867 = icmp eq ptr %a.load866, null
  br i1 %a.null867, label %a.create868, label %a.after869

choice.then:                                      ; preds = %loop.body.109
  br label %loop.exit.109

choice.exit:                                      ; preds = %loop.body.109
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
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len49 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len48, %eq.rhs.len49
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %choice.exit37
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data50 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data50, ptr %eq.rhs.data, i64 %eq.lhs.len48)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit37
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then51, label %choice.else52

choice.then51:                                    ; preds = %str.eq.merge
  %var.load54 = load i64, ptr %"var.idx'", align 8
  %addtmp = add i64 %var.load54, 1
  store i64 %addtmp, ptr %"var.idx'", align 8
  br label %choice.exit53

choice.else52:                                    ; preds = %str.eq.merge
  %var.load55 = load i64, ptr %"var.base_indent'", align 8
  %cmptmp56 = icmp slt i64 %var.load55, 0
  br i1 %cmptmp56, label %choice.then57, label %choice.exit58

choice.exit53:                                    ; preds = %choice.exit97, %choice.then51
  br label %loop.latch.109

choice.then57:                                    ; preds = %choice.else52
  %var.load59 = load ptr, ptr %var.pl, align 8
  %fld.gep60 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load59, i32 0, i32 1
  %fld.load61 = load i64, ptr %fld.gep60, align 8
  store i64 %fld.load61, ptr %"var.base_indent'", align 8
  br label %choice.exit58

choice.exit58:                                    ; preds = %choice.then57, %choice.else52
  %var.load62 = load ptr, ptr %var.pl, align 8
  %fld.gep63 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load62, i32 0, i32 1
  %fld.load64 = load i64, ptr %fld.gep63, align 8
  %var.load65 = load i64, ptr %var.min_indent, align 8
  %cmptmp66 = icmp slt i64 %fld.load64, %var.load65
  br i1 %cmptmp66, label %or.110.then, label %or.110.else

or.110.then:                                      ; preds = %choice.exit58
  br label %or.110.exit

or.110.else:                                      ; preds = %choice.exit58
  %var.load67 = load ptr, ptr %var.pl, align 8
  %fld.gep68 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load67, i32 0, i32 1
  %fld.load69 = load i64, ptr %fld.gep68, align 8
  %var.load70 = load i64, ptr %"var.base_indent'", align 8
  %cmptmp71 = icmp slt i64 %fld.load69, %var.load70
  br label %or.110.exit

or.110.exit:                                      ; preds = %or.110.else, %or.110.then
  %or.110.phi = phi i1 [ %cmptmp66, %or.110.then ], [ %cmptmp71, %or.110.else ]
  br i1 %or.110.phi, label %choice.then72, label %choice.exit73

choice.then72:                                    ; preds = %or.110.exit
  br label %loop.exit.109

choice.exit73:                                    ; preds = %or.110.exit
  %var.load74 = load ptr, ptr %var.pl, align 8
  %fld.gep75 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load74, i32 0, i32 2
  %fld.load76 = load ptr, ptr %fld.gep75, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %str.len.query77 = load i64, ptr %str.len.query, align 8
  %str.len.query78 = and i64 %str.len.query77, 281474976710655
  %cmptmp79 = icmp sgt i64 %str.len.query78, 1
  br i1 %cmptmp79, label %and.111.then, label %and.111.else

and.111.then:                                     ; preds = %choice.exit73
  %var.load80 = load ptr, ptr %var.pl, align 8
  %fld.gep81 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load80, i32 0, i32 2
  %fld.load82 = load ptr, ptr %fld.gep81, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load82, i32 0, i32 0
  %s.read.len83 = load i64, ptr %s.read.len, align 8
  %s.read.len84 = and i64 %s.read.len83, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load82, i32 0, i32 1
  %s.read.data85 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len84, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len84
  %final.start = select i1 %start.gt.len, i64 %s.read.len84, i64 %c.start.0
  %rel.end = add i64 %s.read.len84, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len84
  %final.end = select i1 %end.gt.len, i64 %s.read.len84, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data85, i64 %final.start
  %cmp.str = load i64, ptr @str.4.struct, align 8
  %cmp.str86 = and i64 %cmp.str, 281474976710655
  %cmp.str87 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.len88 = icmp eq i64 %view.len, %cmp.str86
  br i1 %eq.len88, label %str.eq.then89, label %str.eq.else90

and.111.else:                                     ; preds = %choice.exit73
  br label %and.111.exit

and.111.exit:                                     ; preds = %and.111.else, %str.eq.merge91
  %and.111.phi = phi i1 [ %str.eq.result94, %str.eq.merge91 ], [ %cmptmp79, %and.111.else ]
  br i1 %and.111.phi, label %choice.then95, label %choice.else96

str.eq.then89:                                    ; preds = %and.111.then
  %eq.memcmp92 = call i32 @memcmp(ptr %view.data, ptr %cmp.str87, i64 %view.len)
  %eq.cmp.zero93 = icmp eq i32 %eq.memcmp92, 0
  br label %str.eq.merge91

str.eq.else90:                                    ; preds = %and.111.then
  br label %str.eq.merge91

str.eq.merge91:                                   ; preds = %str.eq.else90, %str.eq.then89
  %str.eq.result94 = phi i1 [ %eq.cmp.zero93, %str.eq.then89 ], [ false, %str.eq.else90 ]
  br label %and.111.exit

choice.then95:                                    ; preds = %and.111.exit
  %var.load98 = load ptr, ptr %var.pl, align 8
  %fld.gep99 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load98, i32 0, i32 2
  %fld.load100 = load ptr, ptr %fld.gep99, align 8
  %s.read.len101 = getelementptr inbounds { i64, ptr }, ptr %fld.load100, i32 0, i32 0
  %s.read.len102 = load i64, ptr %s.read.len101, align 8
  %s.read.len103 = and i64 %s.read.len102, 281474976710655
  %s.read.data104 = getelementptr inbounds { i64, ptr }, ptr %fld.load100, i32 0, i32 1
  %s.read.data105 = load ptr, ptr %s.read.data104, align 8
  %rel.start106 = add i64 %s.read.len103, 2
  %norm.start107 = select i1 false, i64 %rel.start106, i64 2
  %start.lt.0108 = icmp slt i64 %norm.start107, 0
  %c.start.0109 = select i1 %start.lt.0108, i64 0, i64 %norm.start107
  %start.gt.len110 = icmp sgt i64 %c.start.0109, %s.read.len103
  %final.start111 = select i1 %start.gt.len110, i64 %s.read.len103, i64 %c.start.0109
  %end.is_neg = icmp slt i64 %s.read.len103, 0
  %rel.end112 = add i64 %s.read.len103, %s.read.len103
  %norm.end113 = select i1 %end.is_neg, i64 %rel.end112, i64 %s.read.len103
  %end.lt.0114 = icmp slt i64 %norm.end113, 0
  %c.end.0115 = select i1 %end.lt.0114, i64 0, i64 %norm.end113
  %end.gt.len116 = icmp sgt i64 %c.end.0115, %s.read.len103
  %final.end117 = select i1 %end.gt.len116, i64 %s.read.len103, i64 %c.end.0115
  %view.empty118 = icmp sle i64 %final.end117, %final.start111
  %view.len.sub119 = sub i64 %final.end117, %final.start111
  %view.len120 = select i1 %view.empty118, i64 0, i64 %view.len.sub119
  %view.data121 = getelementptr i8, ptr %s.read.data105, i64 %final.start111
  %arena.cur122 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len120, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data121, ptr %str.build.data.gep, align 8
  %call.res123 = call { i64, ptr } @"ccl::trim_str"(ptr %str.view)
  %arena.cur124 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 16)
  store { i64, ptr } %call.res123, ptr %ret.ub.alloc, align 8
  %var.load125 = load ptr, ptr %var.pl, align 8
  %fld.gep126 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load125, i32 0, i32 0
  %fld.load127 = load i64, ptr %fld.gep126, align 8
  %var.load128 = load ptr, ptr %var.pl, align 8
  %fld.gep129 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load128, i32 0, i32 1
  %fld.load130 = load i64, ptr %fld.gep129, align 8
  %addtmp131 = add i64 %fld.load130, 1
  %call.res132 = call ptr @"ccl::entry_new_str"(ptr @str.5.struct, ptr %ret.ub.alloc, i64 %fld.load127, i64 %addtmp131)
  %a.load133 = load ptr, ptr %var.doc, align 8
  %a.null134 = icmp eq ptr %a.load133, null
  br i1 %a.null134, label %a.create135, label %a.after136

choice.else96:                                    ; preds = %and.111.exit
  %var.load151 = load ptr, ptr %var.pl, align 8
  %fld.gep152 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load151, i32 0, i32 2
  %fld.load153 = load ptr, ptr %fld.gep152, align 8
  %call.res154 = call i64 @"ccl::find_first_eq"(ptr %fld.load153)
  store i64 %call.res154, ptr %var.eq_idx, align 8
  %var.load155 = load i64, ptr %var.eq_idx, align 8
  %cmptmp156 = icmp slt i64 %var.load155, 0
  br i1 %cmptmp156, label %choice.then157, label %choice.exit158

choice.exit97:                                    ; preds = %choice.exit273, %a.store
  br label %choice.exit53

a.create135:                                      ; preds = %choice.then95
  %arena.cur137 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 24)
  %arena.cur139 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 128)
  %a.len.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 0
  store i64 0, ptr %a.len.gep141, align 8
  %a.data.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 1
  store ptr %a.buf140, ptr %a.data.gep142, align 8
  %a.cap.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 2
  store i64 16, ptr %a.cap.gep143, align 8
  store ptr %a.create138, ptr %var.doc, align 8
  br label %a.after136

a.after136:                                       ; preds = %a.create135, %choice.then95
  %a.load2144 = load ptr, ptr %var.doc, align 8
  br label %a.check

a.check:                                          ; preds = %a.after136
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2144, i32 0, i32 0
  %a.len145 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2144, i32 0, i32 2
  %a.cap146 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len145, %a.cap146
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2144)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2144, i32 0, i32 1
  %a.cur.data147 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2144, i32 0, i32 0
  %a.cur.len148 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data147, i64 %a.cur.len148
  %slot.p2i = ptrtoint ptr %call.res132 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len148, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2144, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load149 = load i64, ptr %"var.idx'", align 8
  %addtmp150 = add i64 %var.load149, 1
  store i64 %addtmp150, ptr %"var.idx'", align 8
  br label %choice.exit97

choice.then157:                                   ; preds = %choice.else96
  %var.load159 = load ptr, ptr %var.file, align 8
  %var.load160 = load ptr, ptr %var.pl, align 8
  %fld.gep161 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load160, i32 0, i32 2
  %fld.load162 = load ptr, ptr %fld.gep161, align 8
  %concat.lhs = load i64, ptr @str.6.struct, align 8
  %concat.lhs163 = and i64 %concat.lhs, 281474976710655
  %concat.lhs164 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load162, i32 0, i32 0
  %concat.rhs165 = load i64, ptr %concat.rhs, align 8
  %concat.rhs166 = and i64 %concat.rhs165, 281474976710655
  %concat.rhs167 = getelementptr inbounds { i64, ptr }, ptr %fld.load162, i32 0, i32 1
  %concat.rhs168 = load ptr, ptr %concat.rhs167, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs163, i64 %concat.rhs166)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len169

choice.exit158:                                   ; preds = %ret.dead, %choice.else96
  %var.load188 = load ptr, ptr %var.pl, align 8
  %fld.gep189 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load188, i32 0, i32 2
  %fld.load190 = load ptr, ptr %fld.gep189, align 8
  %s.read.len191 = getelementptr inbounds { i64, ptr }, ptr %fld.load190, i32 0, i32 0
  %s.read.len192 = load i64, ptr %s.read.len191, align 8
  %s.read.len193 = and i64 %s.read.len192, 281474976710655
  %s.read.data194 = getelementptr inbounds { i64, ptr }, ptr %fld.load190, i32 0, i32 1
  %s.read.data195 = load ptr, ptr %s.read.data194, align 8
  %var.load196 = load i64, ptr %var.eq_idx, align 8
  %rel.start197 = add i64 %s.read.len193, 0
  %norm.start198 = select i1 false, i64 %rel.start197, i64 0
  %start.lt.0199 = icmp slt i64 %norm.start198, 0
  %c.start.0200 = select i1 %start.lt.0199, i64 0, i64 %norm.start198
  %start.gt.len201 = icmp sgt i64 %c.start.0200, %s.read.len193
  %final.start202 = select i1 %start.gt.len201, i64 %s.read.len193, i64 %c.start.0200
  %end.is_neg203 = icmp slt i64 %var.load196, 0
  %rel.end204 = add i64 %s.read.len193, %var.load196
  %norm.end205 = select i1 %end.is_neg203, i64 %rel.end204, i64 %var.load196
  %end.lt.0206 = icmp slt i64 %norm.end205, 0
  %c.end.0207 = select i1 %end.lt.0206, i64 0, i64 %norm.end205
  %end.gt.len208 = icmp sgt i64 %c.end.0207, %s.read.len193
  %final.end209 = select i1 %end.gt.len208, i64 %s.read.len193, i64 %c.end.0207
  %view.empty210 = icmp sle i64 %final.end209, %final.start202
  %view.len.sub211 = sub i64 %final.end209, %final.start202
  %view.len212 = select i1 %view.empty210, i64 0, i64 %view.len.sub211
  %view.data213 = getelementptr i8, ptr %s.read.data195, i64 %final.start202
  %arena.cur214 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 16)
  %str.build.len.gep216 = getelementptr inbounds { i64, ptr }, ptr %str.view215, i32 0, i32 0
  store i64 %view.len212, ptr %str.build.len.gep216, align 8
  %str.build.data.gep217 = getelementptr inbounds { i64, ptr }, ptr %str.view215, i32 0, i32 1
  store ptr %view.data213, ptr %str.build.data.gep217, align 8
  %call.res218 = call { i64, ptr } @"ccl::trim_str"(ptr %str.view215)
  %arena.cur219 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc220 = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 16)
  store { i64, ptr } %call.res218, ptr %ret.ub.alloc220, align 8
  store ptr %ret.ub.alloc220, ptr %var.k, align 8
  %var.load221 = load ptr, ptr %var.pl, align 8
  %fld.gep222 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load221, i32 0, i32 2
  %fld.load223 = load ptr, ptr %fld.gep222, align 8
  %s.read.len224 = getelementptr inbounds { i64, ptr }, ptr %fld.load223, i32 0, i32 0
  %s.read.len225 = load i64, ptr %s.read.len224, align 8
  %s.read.len226 = and i64 %s.read.len225, 281474976710655
  %s.read.data227 = getelementptr inbounds { i64, ptr }, ptr %fld.load223, i32 0, i32 1
  %s.read.data228 = load ptr, ptr %s.read.data227, align 8
  %var.load229 = load i64, ptr %var.eq_idx, align 8
  %addtmp230 = add i64 %var.load229, 1
  %start.is_neg = icmp slt i64 %addtmp230, 0
  %rel.start231 = add i64 %s.read.len226, %addtmp230
  %norm.start232 = select i1 %start.is_neg, i64 %rel.start231, i64 %addtmp230
  %start.lt.0233 = icmp slt i64 %norm.start232, 0
  %c.start.0234 = select i1 %start.lt.0233, i64 0, i64 %norm.start232
  %start.gt.len235 = icmp sgt i64 %c.start.0234, %s.read.len226
  %final.start236 = select i1 %start.gt.len235, i64 %s.read.len226, i64 %c.start.0234
  %end.is_neg237 = icmp slt i64 %s.read.len226, 0
  %rel.end238 = add i64 %s.read.len226, %s.read.len226
  %norm.end239 = select i1 %end.is_neg237, i64 %rel.end238, i64 %s.read.len226
  %end.lt.0240 = icmp slt i64 %norm.end239, 0
  %c.end.0241 = select i1 %end.lt.0240, i64 0, i64 %norm.end239
  %end.gt.len242 = icmp sgt i64 %c.end.0241, %s.read.len226
  %final.end243 = select i1 %end.gt.len242, i64 %s.read.len226, i64 %c.end.0241
  %view.empty244 = icmp sle i64 %final.end243, %final.start236
  %view.len.sub245 = sub i64 %final.end243, %final.start236
  %view.len246 = select i1 %view.empty244, i64 0, i64 %view.len.sub245
  %view.data247 = getelementptr i8, ptr %s.read.data228, i64 %final.start236
  %arena.cur248 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 16)
  %str.build.len.gep250 = getelementptr inbounds { i64, ptr }, ptr %str.view249, i32 0, i32 0
  store i64 %view.len246, ptr %str.build.len.gep250, align 8
  %str.build.data.gep251 = getelementptr inbounds { i64, ptr }, ptr %str.view249, i32 0, i32 1
  store ptr %view.data247, ptr %str.build.data.gep251, align 8
  %call.res252 = call { i64, ptr } @"ccl::trim_str"(ptr %str.view249)
  %arena.cur253 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 16)
  store { i64, ptr } %call.res252, ptr %ret.ub.alloc254, align 8
  store ptr %ret.ub.alloc254, ptr %var.after_trim, align 8
  %var.load255 = load ptr, ptr %var.after_trim, align 8
  %eq.lhs.len256 = getelementptr inbounds { i64, ptr }, ptr %var.load255, i32 0, i32 0
  %eq.lhs.len257 = load i64, ptr %eq.lhs.len256, align 8
  %eq.lhs.len258 = and i64 %eq.lhs.len257, 281474976710655
  %eq.rhs.len259 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len260 = and i64 %eq.rhs.len259, 281474976710655
  %eq.len261 = icmp eq i64 %eq.lhs.len258, %eq.rhs.len260
  br i1 %eq.len261, label %str.eq.then262, label %str.eq.else263

concat.sum.len169:                                ; preds = %abort.dead, %choice.then157
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum170 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf171 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf171, label %str_overflow_abort173, label %concat.tot.len172

str_overflow_abort:                               ; preds = %choice.then157
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len169

concat.tot.len172:                                ; preds = %abort.dead174, %concat.sum.len169
  %arena.cur175 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 %sum170)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs164, i64 %concat.lhs163, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs163
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs168, i64 %concat.rhs166, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur176 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 16)
  %str.build.len.gep177 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep177, align 8
  %str.build.data.gep178 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep178, align 8
  %var.load179 = load ptr, ptr %var.pl, align 8
  %fld.gep180 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load179, i32 0, i32 0
  %fld.load181 = load i64, ptr %fld.gep180, align 8
  %var.load182 = load ptr, ptr %var.pl, align 8
  %fld.gep183 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load182, i32 0, i32 1
  %fld.load184 = load i64, ptr %fld.gep183, align 8
  %addtmp185 = add i64 %fld.load184, 1
  %call.res186 = call ptr @"ccl::ccl_error"(ptr %var.load159, ptr %concat.str, i64 %fld.load181, i64 %addtmp185)
  %p.to.i64 = ptrtoint ptr %call.res186 to i64
  %ram.pay187 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay187

str_overflow_abort173:                            ; preds = %concat.sum.len169
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead174:                                    ; No predecessors!
  br label %concat.tot.len172

ret.dead:                                         ; No predecessors!
  br label %choice.exit158

str.eq.then262:                                   ; preds = %choice.exit158
  %eq.lhs.data265 = getelementptr inbounds { i64, ptr }, ptr %var.load255, i32 0, i32 1
  %eq.lhs.data266 = load ptr, ptr %eq.lhs.data265, align 8
  %eq.rhs.data267 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp268 = call i32 @memcmp(ptr %eq.lhs.data266, ptr %eq.rhs.data267, i64 %eq.lhs.len258)
  %eq.cmp.zero269 = icmp eq i32 %eq.memcmp268, 0
  br label %str.eq.merge264

str.eq.else263:                                   ; preds = %choice.exit158
  br label %str.eq.merge264

str.eq.merge264:                                  ; preds = %str.eq.else263, %str.eq.then262
  %str.eq.result270 = phi i1 [ %eq.cmp.zero269, %str.eq.then262 ], [ false, %str.eq.else263 ]
  %str.neq = xor i1 %str.eq.result270, true
  br i1 %str.neq, label %choice.then271, label %choice.else272

choice.then271:                                   ; preds = %str.eq.merge264
  %var.load274 = load ptr, ptr %var.k, align 8
  %var.load275 = load ptr, ptr %var.after_trim, align 8
  %var.load276 = load ptr, ptr %var.pl, align 8
  %fld.gep277 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load276, i32 0, i32 0
  %fld.load278 = load i64, ptr %fld.gep277, align 8
  %var.load279 = load ptr, ptr %var.pl, align 8
  %fld.gep280 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load279, i32 0, i32 1
  %fld.load281 = load i64, ptr %fld.gep280, align 8
  %addtmp282 = add i64 %fld.load281, 1
  %call.res283 = call ptr @"ccl::entry_new_str"(ptr %var.load274, ptr %var.load275, i64 %fld.load278, i64 %addtmp282)
  %a.load284 = load ptr, ptr %var.doc, align 8
  %a.null285 = icmp eq ptr %a.load284, null
  br i1 %a.null285, label %a.create286, label %a.after287

choice.else272:                                   ; preds = %str.eq.merge264
  %var.load314 = load i64, ptr %"var.idx'", align 8
  %addtmp315 = add i64 %var.load314, 1
  store i64 %addtmp315, ptr %"var.next_idx'", align 8
  store i64 -1, ptr %"var.child_ind'", align 8
  store i64 0, ptr %loop.idx.112, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.112

choice.exit273:                                   ; preds = %choice.exit430, %a.store298
  br label %choice.exit97

a.create286:                                      ; preds = %choice.then271
  %arena.cur288 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create289 = call ptr @dva_arena_alloc(ptr %arena.cur288, i64 24)
  %arena.cur290 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 128)
  %a.len.gep292 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create289, i32 0, i32 0
  store i64 0, ptr %a.len.gep292, align 8
  %a.data.gep293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create289, i32 0, i32 1
  store ptr %a.buf291, ptr %a.data.gep293, align 8
  %a.cap.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create289, i32 0, i32 2
  store i64 16, ptr %a.cap.gep294, align 8
  store ptr %a.create289, ptr %var.doc, align 8
  br label %a.after287

a.after287:                                       ; preds = %a.create286, %choice.then271
  %a.load2295 = load ptr, ptr %var.doc, align 8
  br label %a.check296

a.check296:                                       ; preds = %a.after287
  %a.len299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2295, i32 0, i32 0
  %a.len300 = load i64, ptr %a.len299, align 8
  %a.cap301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2295, i32 0, i32 2
  %a.cap302 = load i64, ptr %a.cap301, align 8
  %a.needs.grow303 = icmp eq i64 %a.len300, %a.cap302
  br i1 %a.needs.grow303, label %a.grow297, label %a.store298

a.grow297:                                        ; preds = %a.check296
  call void @dva_array_grow(ptr %a.load2295)
  br label %a.store298

a.store298:                                       ; preds = %a.grow297, %a.check296
  %a.cur.data304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2295, i32 0, i32 1
  %a.cur.data305 = load ptr, ptr %a.cur.data304, align 8
  %a.cur.len306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2295, i32 0, i32 0
  %a.cur.len307 = load i64, ptr %a.cur.len306, align 8
  %a.elem.gep308 = getelementptr i64, ptr %a.cur.data305, i64 %a.cur.len307
  %slot.p2i309 = ptrtoint ptr %call.res283 to i64
  store i64 %slot.p2i309, ptr %a.elem.gep308, align 8
  %a.next.len310 = add i64 %a.cur.len307, 1
  %b.len.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2295, i32 0, i32 0
  store i64 %a.next.len310, ptr %b.len.gep311, align 8
  %var.load312 = load i64, ptr %"var.idx'", align 8
  %addtmp313 = add i64 %var.load312, 1
  store i64 %addtmp313, ptr %"var.idx'", align 8
  br label %choice.exit273

loop.header.112:                                  ; preds = %loop.latch.112, %choice.else272
  %counter.load316 = load i64, ptr %loop.idx.112, align 8
  br label %loop.body.112

loop.body.112:                                    ; preds = %loop.header.112
  %loop.rel.i317 = sub i64 %counter.load316, 0
  store i64 1, ptr %loop.step.112, align 8
  store i64 %loop.rel.i317, ptr %var._i318, align 8
  store i64 %counter.load316, ptr %var._319, align 8
  %var.load320 = load i64, ptr %"var.next_idx'", align 8
  %var.load321 = load i64, ptr %var.total, align 8
  %cmptmp322 = icmp sge i64 %var.load320, %var.load321
  br i1 %cmptmp322, label %choice.then323, label %choice.exit324

loop.exit.nat.112:                                ; No predecessors!
  br label %loop.exit.112

loop.latch.112:                                   ; preds = %choice.exit417
  %step.val = load i64, ptr %loop.step.112, align 8
  %loop.next = add i64 %counter.load316, %step.val
  store i64 %loop.next, ptr %loop.idx.112, align 8
  br label %loop.header.112

loop.exit.112:                                    ; preds = %choice.then415, %choice.then323, %loop.exit.nat.112
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load423 = load i64, ptr %"var.child_ind'", align 8
  %var.load424 = load ptr, ptr %var.pl, align 8
  %fld.gep425 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load424, i32 0, i32 1
  %fld.load426 = load i64, ptr %fld.gep425, align 8
  %cmptmp427 = icmp sle i64 %var.load423, %fld.load426
  br i1 %cmptmp427, label %choice.then428, label %choice.else429

choice.then323:                                   ; preds = %loop.body.112
  br label %loop.exit.112

choice.exit324:                                   ; preds = %loop.body.112
  %var.load325 = load ptr, ptr %var.lines, align 8
  %a.load326 = load ptr, ptr %var.lines, align 8
  %a.null327 = icmp eq ptr %a.load326, null
  br i1 %a.null327, label %a.create328, label %a.after329

a.create328:                                      ; preds = %choice.exit324
  %arena.cur330 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create331 = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 24)
  %arena.cur332 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf333 = call ptr @dva_arena_alloc(ptr %arena.cur332, i64 128)
  %a.len.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create331, i32 0, i32 0
  store i64 0, ptr %a.len.gep334, align 8
  %a.data.gep335 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create331, i32 0, i32 1
  store ptr %a.buf333, ptr %a.data.gep335, align 8
  %a.cap.gep336 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create331, i32 0, i32 2
  store i64 16, ptr %a.cap.gep336, align 8
  store ptr %a.create331, ptr %var.lines, align 8
  br label %a.after329

a.after329:                                       ; preds = %a.create328, %choice.exit324
  %a.load2337 = load ptr, ptr %var.lines, align 8
  %var.load338 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull339 = icmp ne ptr %a.load2337, null
  br i1 %a.rd.nonnull339, label %a.rd.check340, label %a.rd.err.null342

a.rd.check340:                                    ; preds = %a.after329
  %a.rd.len345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2337, i32 0, i32 0
  %a.rd.len346 = load i64, ptr %a.rd.len345, align 8
  %a.rd.ge0347 = icmp sge i64 %var.load338, 0
  %a.rd.lt348 = icmp slt i64 %var.load338, %a.rd.len346
  %a.rd.bounds349 = and i1 %a.rd.ge0347, %a.rd.lt348
  br i1 %a.rd.bounds349, label %a.rd.ok341, label %a.rd.err.oob343

a.rd.ok341:                                       ; preds = %a.rd.check340
  %a.rd.data350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2337, i32 0, i32 1
  %a.rd.data351 = load ptr, ptr %a.rd.data350, align 8
  %a.rd.elem.gep352 = getelementptr i64, ptr %a.rd.data351, i64 %var.load338
  %a.rd.elem353 = load i64, ptr %a.rd.elem.gep352, align 8
  br label %a.rd.done344

a.rd.err.null342:                                 ; preds = %a.after329
  %arena.cur354 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc355 = call ptr @dva_arena_alloc(ptr %arena.cur354, i64 56)
  %err.code.gep356 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc355, i32 0, i32 0
  store i64 4011, ptr %err.code.gep356, align 8
  %err.msg.gep357 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc355, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep357, align 8
  %err.file.gep358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc355, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep358, align 8
  %err.line.gep359 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc355, i32 0, i32 3
  store i64 214, ptr %err.line.gep359, align 8
  %err.col.gep360 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc355, i32 0, i32 4
  store i64 52, ptr %err.col.gep360, align 8
  %err.ctx.gep361 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc355, i32 0, i32 5
  %err.ctx0.gep362 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep361, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep362, align 8
  %err.ctx1.gep363 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep361, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep363, align 8
  %err.p2i364 = ptrtoint ptr %err.alloc355 to i64
  br label %a.rd.done344

a.rd.err.oob343:                                  ; preds = %a.rd.check340
  %arena.cur365 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc366 = call ptr @dva_arena_alloc(ptr %arena.cur365, i64 56)
  %err.code.gep367 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc366, i32 0, i32 0
  store i64 4011, ptr %err.code.gep367, align 8
  %err.msg.gep368 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc366, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep368, align 8
  %err.file.gep369 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc366, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep369, align 8
  %err.line.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc366, i32 0, i32 3
  store i64 214, ptr %err.line.gep370, align 8
  %err.col.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc366, i32 0, i32 4
  store i64 52, ptr %err.col.gep371, align 8
  %err.ctx.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc366, i32 0, i32 5
  %err.ctx0.gep373 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep372, i32 0, i32 0
  store i64 %var.load338, ptr %err.ctx0.gep373, align 8
  %err.ctx1.gep374 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep372, i32 0, i32 1
  store i64 %a.rd.len346, ptr %err.ctx1.gep374, align 8
  %err.p2i375 = ptrtoint ptr %err.alloc366 to i64
  br label %a.rd.done344

a.rd.done344:                                     ; preds = %a.rd.err.oob343, %a.rd.err.null342, %a.rd.ok341
  %a.rd.tag376 = phi i1 [ true, %a.rd.ok341 ], [ false, %a.rd.err.null342 ], [ false, %a.rd.err.oob343 ]
  %a.rd.pay377 = phi i64 [ %a.rd.elem353, %a.rd.ok341 ], [ %err.p2i364, %a.rd.err.null342 ], [ %err.p2i375, %a.rd.err.oob343 ]
  %ram.tag378 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag376, 0
  %ram.pay379 = insertvalue { i1, i64 } %ram.tag378, i64 %a.rd.pay377, 1
  %ram.tag380 = extractvalue { i1, i64 } %ram.pay379, 0
  br i1 %ram.tag380, label %choice.then381, label %choice.else382

choice.then381:                                   ; preds = %a.rd.done344
  %ram.pay384 = extractvalue { i1, i64 } %ram.pay379, 1
  %pay.ptr385 = inttoptr i64 %ram.pay384 to ptr
  store ptr %pay.ptr385, ptr %var._386, align 8
  br label %choice.exit383

choice.else382:                                   ; preds = %a.rd.done344
  %ram.pay387 = extractvalue { i1, i64 } %ram.pay379, 1
  %pay.ptr388 = inttoptr i64 %ram.pay387 to ptr
  store ptr %pay.ptr388, ptr %var._389, align 8
  %arena.cur390 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc391 = call ptr @dva_arena_alloc(ptr %arena.cur390, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld392 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc391, i32 0, i32 0
  store i64 0, ptr %rec.fld392, align 8
  %rec.fld393 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc391, i32 0, i32 1
  store i64 0, ptr %rec.fld393, align 8
  %rec.fld394 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc391, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld394, align 8
  br label %choice.exit383

choice.exit383:                                   ; preds = %choice.else382, %choice.then381
  %choice.res395 = phi ptr [ %pay.ptr385, %choice.then381 ], [ %rec.alloc391, %choice.else382 ]
  store ptr %choice.res395, ptr %var.cand, align 8
  %var.load396 = load ptr, ptr %var.cand, align 8
  %fld.gep397 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load396, i32 0, i32 2
  %fld.load398 = load ptr, ptr %fld.gep397, align 8
  %eq.lhs.len399 = getelementptr inbounds { i64, ptr }, ptr %fld.load398, i32 0, i32 0
  %eq.lhs.len400 = load i64, ptr %eq.lhs.len399, align 8
  %eq.lhs.len401 = and i64 %eq.lhs.len400, 281474976710655
  %eq.rhs.len402 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len403 = and i64 %eq.rhs.len402, 281474976710655
  %eq.len404 = icmp eq i64 %eq.lhs.len401, %eq.rhs.len403
  br i1 %eq.len404, label %str.eq.then405, label %str.eq.else406

str.eq.then405:                                   ; preds = %choice.exit383
  %eq.lhs.data408 = getelementptr inbounds { i64, ptr }, ptr %fld.load398, i32 0, i32 1
  %eq.lhs.data409 = load ptr, ptr %eq.lhs.data408, align 8
  %eq.rhs.data410 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp411 = call i32 @memcmp(ptr %eq.lhs.data409, ptr %eq.rhs.data410, i64 %eq.lhs.len401)
  %eq.cmp.zero412 = icmp eq i32 %eq.memcmp411, 0
  br label %str.eq.merge407

str.eq.else406:                                   ; preds = %choice.exit383
  br label %str.eq.merge407

str.eq.merge407:                                  ; preds = %str.eq.else406, %str.eq.then405
  %str.eq.result413 = phi i1 [ %eq.cmp.zero412, %str.eq.then405 ], [ false, %str.eq.else406 ]
  %str.neq414 = xor i1 %str.eq.result413, true
  br i1 %str.neq414, label %choice.then415, label %choice.else416

choice.then415:                                   ; preds = %str.eq.merge407
  %var.load418 = load ptr, ptr %var.cand, align 8
  %fld.gep419 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load418, i32 0, i32 1
  %fld.load420 = load i64, ptr %fld.gep419, align 8
  store i64 %fld.load420, ptr %"var.child_ind'", align 8
  br label %loop.exit.112

choice.else416:                                   ; preds = %str.eq.merge407
  %var.load421 = load i64, ptr %"var.next_idx'", align 8
  %addtmp422 = add i64 %var.load421, 1
  store i64 %addtmp422, ptr %"var.next_idx'", align 8
  br label %choice.exit417

choice.exit417:                                   ; preds = %choice.else416
  br label %loop.latch.112

choice.then428:                                   ; preds = %loop.exit.112
  %var.load431 = load ptr, ptr %var.k, align 8
  %var.load432 = load ptr, ptr %var.pl, align 8
  %fld.gep433 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load432, i32 0, i32 0
  %fld.load434 = load i64, ptr %fld.gep433, align 8
  %var.load435 = load ptr, ptr %var.pl, align 8
  %fld.gep436 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load435, i32 0, i32 1
  %fld.load437 = load i64, ptr %fld.gep436, align 8
  %addtmp438 = add i64 %fld.load437, 1
  %call.res439 = call ptr @"ccl::entry_new_str"(ptr %var.load431, ptr @str.0.struct, i64 %fld.load434, i64 %addtmp438)
  %a.load440 = load ptr, ptr %var.doc, align 8
  %a.null441 = icmp eq ptr %a.load440, null
  br i1 %a.null441, label %a.create442, label %a.after443

choice.else429:                                   ; preds = %loop.exit.112
  %var.load470 = load ptr, ptr %var.lines, align 8
  %a.load471 = load ptr, ptr %var.lines, align 8
  %a.null472 = icmp eq ptr %a.load471, null
  br i1 %a.null472, label %a.create473, label %a.after474

choice.exit430:                                   ; preds = %choice.exit548, %a.store454
  br label %choice.exit273

a.create442:                                      ; preds = %choice.then428
  %arena.cur444 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create445 = call ptr @dva_arena_alloc(ptr %arena.cur444, i64 24)
  %arena.cur446 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf447 = call ptr @dva_arena_alloc(ptr %arena.cur446, i64 128)
  %a.len.gep448 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create445, i32 0, i32 0
  store i64 0, ptr %a.len.gep448, align 8
  %a.data.gep449 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create445, i32 0, i32 1
  store ptr %a.buf447, ptr %a.data.gep449, align 8
  %a.cap.gep450 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create445, i32 0, i32 2
  store i64 16, ptr %a.cap.gep450, align 8
  store ptr %a.create445, ptr %var.doc, align 8
  br label %a.after443

a.after443:                                       ; preds = %a.create442, %choice.then428
  %a.load2451 = load ptr, ptr %var.doc, align 8
  br label %a.check452

a.check452:                                       ; preds = %a.after443
  %a.len455 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2451, i32 0, i32 0
  %a.len456 = load i64, ptr %a.len455, align 8
  %a.cap457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2451, i32 0, i32 2
  %a.cap458 = load i64, ptr %a.cap457, align 8
  %a.needs.grow459 = icmp eq i64 %a.len456, %a.cap458
  br i1 %a.needs.grow459, label %a.grow453, label %a.store454

a.grow453:                                        ; preds = %a.check452
  call void @dva_array_grow(ptr %a.load2451)
  br label %a.store454

a.store454:                                       ; preds = %a.grow453, %a.check452
  %a.cur.data460 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2451, i32 0, i32 1
  %a.cur.data461 = load ptr, ptr %a.cur.data460, align 8
  %a.cur.len462 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2451, i32 0, i32 0
  %a.cur.len463 = load i64, ptr %a.cur.len462, align 8
  %a.elem.gep464 = getelementptr i64, ptr %a.cur.data461, i64 %a.cur.len463
  %slot.p2i465 = ptrtoint ptr %call.res439 to i64
  store i64 %slot.p2i465, ptr %a.elem.gep464, align 8
  %a.next.len466 = add i64 %a.cur.len463, 1
  %b.len.gep467 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2451, i32 0, i32 0
  store i64 %a.next.len466, ptr %b.len.gep467, align 8
  %var.load468 = load i64, ptr %"var.idx'", align 8
  %addtmp469 = add i64 %var.load468, 1
  store i64 %addtmp469, ptr %"var.idx'", align 8
  br label %choice.exit430

a.create473:                                      ; preds = %choice.else429
  %arena.cur475 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create476 = call ptr @dva_arena_alloc(ptr %arena.cur475, i64 24)
  %arena.cur477 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf478 = call ptr @dva_arena_alloc(ptr %arena.cur477, i64 128)
  %a.len.gep479 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create476, i32 0, i32 0
  store i64 0, ptr %a.len.gep479, align 8
  %a.data.gep480 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create476, i32 0, i32 1
  store ptr %a.buf478, ptr %a.data.gep480, align 8
  %a.cap.gep481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create476, i32 0, i32 2
  store i64 16, ptr %a.cap.gep481, align 8
  store ptr %a.create476, ptr %var.lines, align 8
  br label %a.after474

a.after474:                                       ; preds = %a.create473, %choice.else429
  %a.load2482 = load ptr, ptr %var.lines, align 8
  %var.load483 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull484 = icmp ne ptr %a.load2482, null
  br i1 %a.rd.nonnull484, label %a.rd.check485, label %a.rd.err.null487

a.rd.check485:                                    ; preds = %a.after474
  %a.rd.len490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2482, i32 0, i32 0
  %a.rd.len491 = load i64, ptr %a.rd.len490, align 8
  %a.rd.ge0492 = icmp sge i64 %var.load483, 0
  %a.rd.lt493 = icmp slt i64 %var.load483, %a.rd.len491
  %a.rd.bounds494 = and i1 %a.rd.ge0492, %a.rd.lt493
  br i1 %a.rd.bounds494, label %a.rd.ok486, label %a.rd.err.oob488

a.rd.ok486:                                       ; preds = %a.rd.check485
  %a.rd.data495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2482, i32 0, i32 1
  %a.rd.data496 = load ptr, ptr %a.rd.data495, align 8
  %a.rd.elem.gep497 = getelementptr i64, ptr %a.rd.data496, i64 %var.load483
  %a.rd.elem498 = load i64, ptr %a.rd.elem.gep497, align 8
  br label %a.rd.done489

a.rd.err.null487:                                 ; preds = %a.after474
  %arena.cur499 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc500 = call ptr @dva_arena_alloc(ptr %arena.cur499, i64 56)
  %err.code.gep501 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc500, i32 0, i32 0
  store i64 4011, ptr %err.code.gep501, align 8
  %err.msg.gep502 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc500, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep502, align 8
  %err.file.gep503 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc500, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep503, align 8
  %err.line.gep504 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc500, i32 0, i32 3
  store i64 226, ptr %err.line.gep504, align 8
  %err.col.gep505 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc500, i32 0, i32 4
  store i64 60, ptr %err.col.gep505, align 8
  %err.ctx.gep506 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc500, i32 0, i32 5
  %err.ctx0.gep507 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep506, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep507, align 8
  %err.ctx1.gep508 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep506, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep508, align 8
  %err.p2i509 = ptrtoint ptr %err.alloc500 to i64
  br label %a.rd.done489

a.rd.err.oob488:                                  ; preds = %a.rd.check485
  %arena.cur510 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc511 = call ptr @dva_arena_alloc(ptr %arena.cur510, i64 56)
  %err.code.gep512 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 0
  store i64 4011, ptr %err.code.gep512, align 8
  %err.msg.gep513 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep513, align 8
  %err.file.gep514 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep514, align 8
  %err.line.gep515 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 3
  store i64 226, ptr %err.line.gep515, align 8
  %err.col.gep516 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 4
  store i64 60, ptr %err.col.gep516, align 8
  %err.ctx.gep517 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 5
  %err.ctx0.gep518 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep517, i32 0, i32 0
  store i64 %var.load483, ptr %err.ctx0.gep518, align 8
  %err.ctx1.gep519 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep517, i32 0, i32 1
  store i64 %a.rd.len491, ptr %err.ctx1.gep519, align 8
  %err.p2i520 = ptrtoint ptr %err.alloc511 to i64
  br label %a.rd.done489

a.rd.done489:                                     ; preds = %a.rd.err.oob488, %a.rd.err.null487, %a.rd.ok486
  %a.rd.tag521 = phi i1 [ true, %a.rd.ok486 ], [ false, %a.rd.err.null487 ], [ false, %a.rd.err.oob488 ]
  %a.rd.pay522 = phi i64 [ %a.rd.elem498, %a.rd.ok486 ], [ %err.p2i509, %a.rd.err.null487 ], [ %err.p2i520, %a.rd.err.oob488 ]
  %ram.tag523 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag521, 0
  %ram.pay524 = insertvalue { i1, i64 } %ram.tag523, i64 %a.rd.pay522, 1
  %ram.tag525 = extractvalue { i1, i64 } %ram.pay524, 0
  br i1 %ram.tag525, label %choice.then526, label %choice.else527

choice.then526:                                   ; preds = %a.rd.done489
  %ram.pay529 = extractvalue { i1, i64 } %ram.pay524, 1
  %pay.ptr530 = inttoptr i64 %ram.pay529 to ptr
  store ptr %pay.ptr530, ptr %var._531, align 8
  br label %choice.exit528

choice.else527:                                   ; preds = %a.rd.done489
  %ram.pay532 = extractvalue { i1, i64 } %ram.pay524, 1
  %pay.ptr533 = inttoptr i64 %ram.pay532 to ptr
  store ptr %pay.ptr533, ptr %var._534, align 8
  %arena.cur535 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc536 = call ptr @dva_arena_alloc(ptr %arena.cur535, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld537 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc536, i32 0, i32 0
  store i64 0, ptr %rec.fld537, align 8
  %rec.fld538 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc536, i32 0, i32 1
  store i64 0, ptr %rec.fld538, align 8
  %rec.fld539 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc536, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld539, align 8
  br label %choice.exit528

choice.exit528:                                   ; preds = %choice.else527, %choice.then526
  %choice.res540 = phi ptr [ %pay.ptr530, %choice.then526 ], [ %rec.alloc536, %choice.else527 ]
  store ptr %choice.res540, ptr %var.cand_line, align 8
  %var.load541 = load ptr, ptr %var.cand_line, align 8
  %fld.gep542 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load541, i32 0, i32 2
  %fld.load543 = load ptr, ptr %fld.gep542, align 8
  %call.res544 = call i64 @"ccl::find_first_eq"(ptr %fld.load543)
  %cmptmp545 = icmp sge i64 %call.res544, 0
  br i1 %cmptmp545, label %choice.then546, label %choice.else547

choice.then546:                                   ; preds = %choice.exit528
  %var.load549 = load ptr, ptr %var.lines, align 8
  %a.load550 = load ptr, ptr %var.lines, align 8
  %a.null551 = icmp eq ptr %a.load550, null
  br i1 %a.null551, label %a.create552, label %a.after553

choice.else547:                                   ; preds = %choice.exit528
  %arena.cur610 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur610, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep611 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum612 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf613 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf613, label %str_overflow_abort615, label %b.buf.len614

choice.exit548:                                   ; preds = %a.store848, %a.store593
  br label %choice.exit430

a.create552:                                      ; preds = %choice.then546
  %arena.cur554 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create555 = call ptr @dva_arena_alloc(ptr %arena.cur554, i64 24)
  %arena.cur556 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf557 = call ptr @dva_arena_alloc(ptr %arena.cur556, i64 128)
  %a.len.gep558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create555, i32 0, i32 0
  store i64 0, ptr %a.len.gep558, align 8
  %a.data.gep559 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create555, i32 0, i32 1
  store ptr %a.buf557, ptr %a.data.gep559, align 8
  %a.cap.gep560 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create555, i32 0, i32 2
  store i64 16, ptr %a.cap.gep560, align 8
  store ptr %a.create555, ptr %var.lines, align 8
  br label %a.after553

a.after553:                                       ; preds = %a.create552, %choice.then546
  %a.load2561 = load ptr, ptr %var.lines, align 8
  %var.load562 = load i64, ptr %"var.next_idx'", align 8
  %var.load563 = load i64, ptr %"var.child_ind'", align 8
  %var.load564 = load ptr, ptr %var.file, align 8
  %call.res565 = call { i1, i64 } @"ccl::parse_block_from"(ptr %a.load2561, i64 %var.load562, i64 %var.load563, ptr %var.load564)
  %prop.is_pos = extractvalue { i1, i64 } %call.res565, 0
  br i1 %prop.is_pos, label %prop.pos.113, label %prop.ret.113

prop.pos.113:                                     ; preds = %a.after553
  %prop.pay.pos = extractvalue { i1, i64 } %call.res565, 1
  %pay.ptr566 = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr566, ptr %var.cres, align 8
  %var.load567 = load ptr, ptr %var.k, align 8
  %var.load568 = load ptr, ptr %var.cres, align 8
  %fld.gep569 = getelementptr inbounds { ptr, i64 }, ptr %var.load568, i32 0, i32 0
  %fld.load570 = load ptr, ptr %fld.gep569, align 8
  %var.load571 = load ptr, ptr %var.pl, align 8
  %fld.gep572 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load571, i32 0, i32 0
  %fld.load573 = load i64, ptr %fld.gep572, align 8
  %var.load574 = load ptr, ptr %var.pl, align 8
  %fld.gep575 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load574, i32 0, i32 1
  %fld.load576 = load i64, ptr %fld.gep575, align 8
  %addtmp577 = add i64 %fld.load576, 1
  %call.res578 = call ptr @"ccl::entry_new_block"(ptr %var.load567, ptr %fld.load570, i64 %fld.load573, i64 %addtmp577)
  %a.load579 = load ptr, ptr %var.doc, align 8
  %a.null580 = icmp eq ptr %a.load579, null
  br i1 %a.null580, label %a.create581, label %a.after582

prop.ret.113:                                     ; preds = %a.after553
  ret { i1, i64 } %call.res565

a.create581:                                      ; preds = %prop.pos.113
  %arena.cur583 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create584 = call ptr @dva_arena_alloc(ptr %arena.cur583, i64 24)
  %arena.cur585 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf586 = call ptr @dva_arena_alloc(ptr %arena.cur585, i64 128)
  %a.len.gep587 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create584, i32 0, i32 0
  store i64 0, ptr %a.len.gep587, align 8
  %a.data.gep588 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create584, i32 0, i32 1
  store ptr %a.buf586, ptr %a.data.gep588, align 8
  %a.cap.gep589 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create584, i32 0, i32 2
  store i64 16, ptr %a.cap.gep589, align 8
  store ptr %a.create584, ptr %var.doc, align 8
  br label %a.after582

a.after582:                                       ; preds = %a.create581, %prop.pos.113
  %a.load2590 = load ptr, ptr %var.doc, align 8
  br label %a.check591

a.check591:                                       ; preds = %a.after582
  %a.len594 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2590, i32 0, i32 0
  %a.len595 = load i64, ptr %a.len594, align 8
  %a.cap596 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2590, i32 0, i32 2
  %a.cap597 = load i64, ptr %a.cap596, align 8
  %a.needs.grow598 = icmp eq i64 %a.len595, %a.cap597
  br i1 %a.needs.grow598, label %a.grow592, label %a.store593

a.grow592:                                        ; preds = %a.check591
  call void @dva_array_grow(ptr %a.load2590)
  br label %a.store593

a.store593:                                       ; preds = %a.grow592, %a.check591
  %a.cur.data599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2590, i32 0, i32 1
  %a.cur.data600 = load ptr, ptr %a.cur.data599, align 8
  %a.cur.len601 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2590, i32 0, i32 0
  %a.cur.len602 = load i64, ptr %a.cur.len601, align 8
  %a.elem.gep603 = getelementptr i64, ptr %a.cur.data600, i64 %a.cur.len602
  %slot.p2i604 = ptrtoint ptr %call.res578 to i64
  store i64 %slot.p2i604, ptr %a.elem.gep603, align 8
  %a.next.len605 = add i64 %a.cur.len602, 1
  %b.len.gep606 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2590, i32 0, i32 0
  store i64 %a.next.len605, ptr %b.len.gep606, align 8
  %var.load607 = load ptr, ptr %var.cres, align 8
  %fld.gep608 = getelementptr inbounds { ptr, i64 }, ptr %var.load607, i32 0, i32 1
  %fld.load609 = load i64, ptr %fld.gep608, align 8
  store i64 %fld.load609, ptr %"var.idx'", align 8
  br label %choice.exit548

b.buf.len614:                                     ; preds = %abort.dead616, %choice.else547
  %arena.cur617 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur617, i64 %sum612)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep611, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.tb, align 8
  store i64 0, ptr %loop.idx.114, align 8
  %cycle.prev.u618 = load i64, ptr %var._, align 8
  %cycle.prev.i619 = load i64, ptr %var._i, align 8
  br label %loop.header.114

str_overflow_abort615:                            ; preds = %choice.else547
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead616:                                    ; No predecessors!
  br label %b.buf.len614

loop.header.114:                                  ; preds = %loop.latch.114, %b.buf.len614
  %counter.load620 = load i64, ptr %loop.idx.114, align 8
  br label %loop.body.114

loop.body.114:                                    ; preds = %loop.header.114
  %loop.rel.i621 = sub i64 %counter.load620, 0
  store i64 1, ptr %loop.step.114, align 8
  store i64 %loop.rel.i621, ptr %var._i622, align 8
  store i64 %counter.load620, ptr %var._623, align 8
  %var.load624 = load i64, ptr %"var.next_idx'", align 8
  %var.load625 = load i64, ptr %var.total, align 8
  %cmptmp626 = icmp sge i64 %var.load624, %var.load625
  br i1 %cmptmp626, label %choice.then627, label %choice.exit628

loop.exit.nat.114:                                ; No predecessors!
  br label %loop.exit.114

loop.latch.114:                                   ; preds = %choice.exit720
  %step.val815 = load i64, ptr %loop.step.114, align 8
  %loop.next816 = add i64 %counter.load620, %step.val815
  store i64 %loop.next816, ptr %loop.idx.114, align 8
  br label %loop.header.114

loop.exit.114:                                    ; preds = %choice.then741, %choice.then627, %loop.exit.nat.114
  store i64 %cycle.prev.u618, ptr %var._, align 8
  store i64 %cycle.prev.i619, ptr %var._i, align 8
  %var.load817 = load ptr, ptr %var.k, align 8
  %var.load818 = load ptr, ptr %var.tb, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load818, i32 0, i32 0
  %b.freeze.len819 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load818, i32 0, i32 1
  %b.freeze.data820 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then627:                                   ; preds = %loop.body.114
  br label %loop.exit.114

choice.exit628:                                   ; preds = %loop.body.114
  %var.load629 = load ptr, ptr %var.lines, align 8
  %a.load630 = load ptr, ptr %var.lines, align 8
  %a.null631 = icmp eq ptr %a.load630, null
  br i1 %a.null631, label %a.create632, label %a.after633

a.create632:                                      ; preds = %choice.exit628
  %arena.cur634 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create635 = call ptr @dva_arena_alloc(ptr %arena.cur634, i64 24)
  %arena.cur636 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf637 = call ptr @dva_arena_alloc(ptr %arena.cur636, i64 128)
  %a.len.gep638 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create635, i32 0, i32 0
  store i64 0, ptr %a.len.gep638, align 8
  %a.data.gep639 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create635, i32 0, i32 1
  store ptr %a.buf637, ptr %a.data.gep639, align 8
  %a.cap.gep640 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create635, i32 0, i32 2
  store i64 16, ptr %a.cap.gep640, align 8
  store ptr %a.create635, ptr %var.lines, align 8
  br label %a.after633

a.after633:                                       ; preds = %a.create632, %choice.exit628
  %a.load2641 = load ptr, ptr %var.lines, align 8
  %var.load642 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull643 = icmp ne ptr %a.load2641, null
  br i1 %a.rd.nonnull643, label %a.rd.check644, label %a.rd.err.null646

a.rd.check644:                                    ; preds = %a.after633
  %a.rd.len649 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2641, i32 0, i32 0
  %a.rd.len650 = load i64, ptr %a.rd.len649, align 8
  %a.rd.ge0651 = icmp sge i64 %var.load642, 0
  %a.rd.lt652 = icmp slt i64 %var.load642, %a.rd.len650
  %a.rd.bounds653 = and i1 %a.rd.ge0651, %a.rd.lt652
  br i1 %a.rd.bounds653, label %a.rd.ok645, label %a.rd.err.oob647

a.rd.ok645:                                       ; preds = %a.rd.check644
  %a.rd.data654 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2641, i32 0, i32 1
  %a.rd.data655 = load ptr, ptr %a.rd.data654, align 8
  %a.rd.elem.gep656 = getelementptr i64, ptr %a.rd.data655, i64 %var.load642
  %a.rd.elem657 = load i64, ptr %a.rd.elem.gep656, align 8
  br label %a.rd.done648

a.rd.err.null646:                                 ; preds = %a.after633
  %arena.cur658 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc659 = call ptr @dva_arena_alloc(ptr %arena.cur658, i64 56)
  %err.code.gep660 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 0
  store i64 4011, ptr %err.code.gep660, align 8
  %err.msg.gep661 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep661, align 8
  %err.file.gep662 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep662, align 8
  %err.line.gep663 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 3
  store i64 237, ptr %err.line.gep663, align 8
  %err.col.gep664 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 4
  store i64 62, ptr %err.col.gep664, align 8
  %err.ctx.gep665 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc659, i32 0, i32 5
  %err.ctx0.gep666 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep665, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep666, align 8
  %err.ctx1.gep667 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep665, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep667, align 8
  %err.p2i668 = ptrtoint ptr %err.alloc659 to i64
  br label %a.rd.done648

a.rd.err.oob647:                                  ; preds = %a.rd.check644
  %arena.cur669 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc670 = call ptr @dva_arena_alloc(ptr %arena.cur669, i64 56)
  %err.code.gep671 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 0
  store i64 4011, ptr %err.code.gep671, align 8
  %err.msg.gep672 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep672, align 8
  %err.file.gep673 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep673, align 8
  %err.line.gep674 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 3
  store i64 237, ptr %err.line.gep674, align 8
  %err.col.gep675 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 4
  store i64 62, ptr %err.col.gep675, align 8
  %err.ctx.gep676 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc670, i32 0, i32 5
  %err.ctx0.gep677 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep676, i32 0, i32 0
  store i64 %var.load642, ptr %err.ctx0.gep677, align 8
  %err.ctx1.gep678 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep676, i32 0, i32 1
  store i64 %a.rd.len650, ptr %err.ctx1.gep678, align 8
  %err.p2i679 = ptrtoint ptr %err.alloc670 to i64
  br label %a.rd.done648

a.rd.done648:                                     ; preds = %a.rd.err.oob647, %a.rd.err.null646, %a.rd.ok645
  %a.rd.tag680 = phi i1 [ true, %a.rd.ok645 ], [ false, %a.rd.err.null646 ], [ false, %a.rd.err.oob647 ]
  %a.rd.pay681 = phi i64 [ %a.rd.elem657, %a.rd.ok645 ], [ %err.p2i668, %a.rd.err.null646 ], [ %err.p2i679, %a.rd.err.oob647 ]
  %ram.tag682 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag680, 0
  %ram.pay683 = insertvalue { i1, i64 } %ram.tag682, i64 %a.rd.pay681, 1
  %ram.tag684 = extractvalue { i1, i64 } %ram.pay683, 0
  br i1 %ram.tag684, label %choice.then685, label %choice.else686

choice.then685:                                   ; preds = %a.rd.done648
  %ram.pay688 = extractvalue { i1, i64 } %ram.pay683, 1
  %pay.ptr689 = inttoptr i64 %ram.pay688 to ptr
  store ptr %pay.ptr689, ptr %var._690, align 8
  br label %choice.exit687

choice.else686:                                   ; preds = %a.rd.done648
  %ram.pay691 = extractvalue { i1, i64 } %ram.pay683, 1
  %pay.ptr692 = inttoptr i64 %ram.pay691 to ptr
  store ptr %pay.ptr692, ptr %var._693, align 8
  %arena.cur694 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc695 = call ptr @dva_arena_alloc(ptr %arena.cur694, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld696 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc695, i32 0, i32 0
  store i64 0, ptr %rec.fld696, align 8
  %rec.fld697 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc695, i32 0, i32 1
  store i64 0, ptr %rec.fld697, align 8
  %rec.fld698 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc695, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld698, align 8
  br label %choice.exit687

choice.exit687:                                   ; preds = %choice.else686, %choice.then685
  %choice.res699 = phi ptr [ %pay.ptr689, %choice.then685 ], [ %rec.alloc695, %choice.else686 ]
  store ptr %choice.res699, ptr %var.cl, align 8
  %var.load700 = load ptr, ptr %var.cl, align 8
  %fld.gep701 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load700, i32 0, i32 2
  %fld.load702 = load ptr, ptr %fld.gep701, align 8
  %eq.lhs.len703 = getelementptr inbounds { i64, ptr }, ptr %fld.load702, i32 0, i32 0
  %eq.lhs.len704 = load i64, ptr %eq.lhs.len703, align 8
  %eq.lhs.len705 = and i64 %eq.lhs.len704, 281474976710655
  %eq.rhs.len706 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len707 = and i64 %eq.rhs.len706, 281474976710655
  %eq.len708 = icmp eq i64 %eq.lhs.len705, %eq.rhs.len707
  br i1 %eq.len708, label %str.eq.then709, label %str.eq.else710

str.eq.then709:                                   ; preds = %choice.exit687
  %eq.lhs.data712 = getelementptr inbounds { i64, ptr }, ptr %fld.load702, i32 0, i32 1
  %eq.lhs.data713 = load ptr, ptr %eq.lhs.data712, align 8
  %eq.rhs.data714 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp715 = call i32 @memcmp(ptr %eq.lhs.data713, ptr %eq.rhs.data714, i64 %eq.lhs.len705)
  %eq.cmp.zero716 = icmp eq i32 %eq.memcmp715, 0
  br label %str.eq.merge711

str.eq.else710:                                   ; preds = %choice.exit687
  br label %str.eq.merge711

str.eq.merge711:                                  ; preds = %str.eq.else710, %str.eq.then709
  %str.eq.result717 = phi i1 [ %eq.cmp.zero716, %str.eq.then709 ], [ false, %str.eq.else710 ]
  br i1 %str.eq.result717, label %choice.then718, label %choice.else719

choice.then718:                                   ; preds = %str.eq.merge711
  %b.load = load ptr, ptr %var.tb, align 8
  br i1 true, label %b.byte_ok, label %b.byte_err

choice.else719:                                   ; preds = %str.eq.merge711
  %var.load736 = load ptr, ptr %var.cl, align 8
  %fld.gep737 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load736, i32 0, i32 1
  %fld.load738 = load i64, ptr %fld.gep737, align 8
  %var.load739 = load i64, ptr %"var.child_ind'", align 8
  %cmptmp740 = icmp slt i64 %fld.load738, %var.load739
  br i1 %cmptmp740, label %choice.then741, label %choice.exit742

choice.exit720:                                   ; preds = %b.grow_done, %b.push_done
  br label %loop.latch.114

b.byte_ok:                                        ; preds = %abort.dead721, %choice.then718
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len722 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap723 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data724 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len722, %b.cap723
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then718
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead721:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap723, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum725 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf726 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf726, label %str_overflow_abort728, label %b.new.buf.len727

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len727
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data731 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len732 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data731, i64 %b.cur.len732
  store i8 10, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len732, 1
  %b.nul = getelementptr i8, ptr %b.cur.data731, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep733 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep733, align 8
  %var.load734 = load i64, ptr %"var.next_idx'", align 8
  %addtmp735 = add i64 %var.load734, 1
  store i64 %addtmp735, ptr %"var.next_idx'", align 8
  br label %choice.exit720

b.new.buf.len727:                                 ; preds = %abort.dead729, %b.grow
  %arena.cur730 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur730, i64 %sum725)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data724, i64 %b.len722, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len722
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort728:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead729:                                    ; No predecessors!
  br label %b.new.buf.len727

choice.then741:                                   ; preds = %choice.else719
  br label %loop.exit.114

choice.exit742:                                   ; preds = %choice.else719
  %var.load743 = load ptr, ptr %var.tb, align 8
  %b.len744 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load743, i32 0, i32 0
  %b.len745 = load i64, ptr %b.len744, align 8
  %cmptmp746 = icmp sgt i64 %b.len745, 0
  br i1 %cmptmp746, label %choice.then747, label %choice.exit748

choice.then747:                                   ; preds = %choice.exit742
  %b.load749 = load ptr, ptr %var.tb, align 8
  br i1 true, label %b.byte_ok750, label %b.byte_err751

choice.exit748:                                   ; preds = %b.push_done762, %choice.exit742
  %b.load785 = load ptr, ptr %var.tb, align 8
  %var.load786 = load ptr, ptr %var.cl, align 8
  %fld.gep787 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load786, i32 0, i32 2
  %fld.load788 = load ptr, ptr %fld.gep787, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load788, i32 0, i32 0
  %app.str.len789 = load i64, ptr %app.str.len, align 8
  %app.str.len790 = and i64 %app.str.len789, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load788, i32 0, i32 1
  %app.str.data791 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load785, i32 0, i32 0
  %b.app.cur.len792 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len792, i64 %app.str.len790)
  %sum793 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf794 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf794, label %str_overflow_abort796, label %b.app.new.len795

b.byte_ok750:                                     ; preds = %abort.dead752, %choice.then747
  %b.len753 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load749, i32 0, i32 0
  %b.len754 = load i64, ptr %b.len753, align 8
  %b.cap755 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load749, i32 0, i32 2
  %b.cap756 = load i64, ptr %b.cap755, align 8
  %b.data757 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load749, i32 0, i32 1
  %b.data758 = load ptr, ptr %b.data757, align 8
  %b.needs.grow759 = icmp eq i64 %b.len754, %b.cap756
  br i1 %b.needs.grow759, label %b.grow760, label %b.nogrow761

b.byte_err751:                                    ; preds = %choice.then747
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead752:                                    ; No predecessors!
  br label %b.byte_ok750

b.grow760:                                        ; preds = %b.byte_ok750
  %b.cap2763 = mul i64 %b.cap756, 2
  %b.cap.small764 = icmp slt i64 %b.cap2763, 16
  %b.new.cap765 = select i1 %b.cap.small764, i64 16, i64 %b.cap2763
  %b.new.buf.len766 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap765, i64 1)
  %sum767 = extractvalue { i64, i1 } %b.new.buf.len766, 0
  %ovf768 = extractvalue { i64, i1 } %b.new.buf.len766, 1
  br i1 %ovf768, label %str_overflow_abort770, label %b.new.buf.len769

b.nogrow761:                                      ; preds = %b.byte_ok750
  br label %b.push_done762

b.push_done762:                                   ; preds = %b.nogrow761, %b.new.buf.len769
  %b.cur.data777 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load749, i32 0, i32 1
  %b.cur.data778 = load ptr, ptr %b.cur.data777, align 8
  %b.cur.len779 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load749, i32 0, i32 0
  %b.cur.len780 = load i64, ptr %b.cur.len779, align 8
  %b.byte.gep781 = getelementptr i8, ptr %b.cur.data778, i64 %b.cur.len780
  store i8 10, ptr %b.byte.gep781, align 1
  %b.next.len782 = add i64 %b.cur.len780, 1
  %b.nul783 = getelementptr i8, ptr %b.cur.data778, i64 %b.next.len782
  store i8 0, ptr %b.nul783, align 1
  %b.len.gep784 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load749, i32 0, i32 0
  store i64 %b.next.len782, ptr %b.len.gep784, align 8
  br label %choice.exit748

b.new.buf.len769:                                 ; preds = %abort.dead771, %b.grow760
  %arena.cur772 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf773 = call ptr @dva_arena_alloc(ptr %arena.cur772, i64 %sum767)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf773, ptr align 1 %b.data758, i64 %b.len754, i1 false)
  %b.grow.nul774 = getelementptr i8, ptr %b.new.buf773, i64 %b.len754
  store i8 0, ptr %b.grow.nul774, align 1
  %b.new.data.gep775 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load749, i32 0, i32 1
  store ptr %b.new.buf773, ptr %b.new.data.gep775, align 8
  %b.new.cap.gep776 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load749, i32 0, i32 2
  store i64 %b.new.cap765, ptr %b.new.cap.gep776, align 8
  br label %b.push_done762

str_overflow_abort770:                            ; preds = %b.grow760
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead771:                                    ; No predecessors!
  br label %b.new.buf.len769

b.app.new.len795:                                 ; preds = %abort.dead797, %choice.exit748
  %b.cap798 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load785, i32 0, i32 2
  %b.cap799 = load i64, ptr %b.cap798, align 8
  %b.need.grow = icmp slt i64 %b.cap799, %sum793
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort796:                            ; preds = %choice.exit748
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead797:                                    ; No predecessors!
  br label %b.app.new.len795

b.grow2:                                          ; preds = %b.app.new.len795
  %b.cap2800 = mul i64 %b.cap799, 2
  %b.cap.small801 = icmp slt i64 %b.cap2800, 16
  %b.cap.grow = select i1 %b.cap.small801, i64 16, i64 %b.cap2800
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum793
  %b.new.cap802 = select i1 %b.cap.need, i64 %sum793, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load785, i32 0, i32 0
  %b.cur.len2803 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load785, i32 0, i32 1
  %b.cur.data2804 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap802, i64 1)
  %sum805 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf806 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf806, label %str_overflow_abort808, label %b.new.buf.len2807

b.nogrow2:                                        ; preds = %b.app.new.len795
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2807
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load785, i32 0, i32 1
  %b.app.data811 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data811, i64 %b.app.cur.len792
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data791, i64 %app.str.len790, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data811, i64 %sum793
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep812 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load785, i32 0, i32 0
  store i64 %sum793, ptr %b.len.gep812, align 8
  %var.load813 = load i64, ptr %"var.next_idx'", align 8
  %addtmp814 = add i64 %var.load813, 1
  store i64 %addtmp814, ptr %"var.next_idx'", align 8
  br label %choice.exit720

b.new.buf.len2807:                                ; preds = %abort.dead809, %b.grow2
  %arena.cur810 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur810, i64 %sum805)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2804, i64 %b.cur.len2803, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2803
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load785, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load785, i32 0, i32 2
  store i64 %b.new.cap802, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort808:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead809:                                    ; No predecessors!
  br label %b.new.buf.len2807

b.freeze.check:                                   ; preds = %loop.exit.114
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data820, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data820, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data820, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len819, 1
  %arena.cur821 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur821, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data820, i64 %b.freeze.len819, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len819
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.114
  %b.freeze.data822 = phi ptr [ %b.freeze.data820, %loop.exit.114 ], [ %b.freeze.data820, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur823 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur823, i64 16)
  %str.build.len.gep824 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len819, ptr %str.build.len.gep824, align 8
  %str.build.data.gep825 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data822, ptr %str.build.data.gep825, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load818, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load818, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load818, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %var.load826 = load ptr, ptr %var.pl, align 8
  %fld.gep827 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load826, i32 0, i32 0
  %fld.load828 = load i64, ptr %fld.gep827, align 8
  %var.load829 = load ptr, ptr %var.pl, align 8
  %fld.gep830 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load829, i32 0, i32 1
  %fld.load831 = load i64, ptr %fld.gep830, align 8
  %addtmp832 = add i64 %fld.load831, 1
  %call.res833 = call ptr @"ccl::entry_new_str"(ptr %var.load817, ptr %builder.freeze, i64 %fld.load828, i64 %addtmp832)
  %a.load834 = load ptr, ptr %var.doc, align 8
  %a.null835 = icmp eq ptr %a.load834, null
  br i1 %a.null835, label %a.create836, label %a.after837

a.create836:                                      ; preds = %b.freeze.done
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
  store ptr %a.create839, ptr %var.doc, align 8
  br label %a.after837

a.after837:                                       ; preds = %a.create836, %b.freeze.done
  %a.load2845 = load ptr, ptr %var.doc, align 8
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
  %slot.p2i859 = ptrtoint ptr %call.res833 to i64
  store i64 %slot.p2i859, ptr %a.elem.gep858, align 8
  %a.next.len860 = add i64 %a.cur.len857, 1
  %b.len.gep861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2845, i32 0, i32 0
  store i64 %a.next.len860, ptr %b.len.gep861, align 8
  %var.load862 = load i64, ptr %"var.next_idx'", align 8
  store i64 %var.load862, ptr %"var.idx'", align 8
  br label %choice.exit548

a.create868:                                      ; preds = %loop.exit.109
  %arena.cur870 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create871 = call ptr @dva_arena_alloc(ptr %arena.cur870, i64 24)
  %arena.cur872 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf873 = call ptr @dva_arena_alloc(ptr %arena.cur872, i64 128)
  %a.len.gep874 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create871, i32 0, i32 0
  store i64 0, ptr %a.len.gep874, align 8
  %a.data.gep875 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create871, i32 0, i32 1
  store ptr %a.buf873, ptr %a.data.gep875, align 8
  %a.cap.gep876 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create871, i32 0, i32 2
  store i64 16, ptr %a.cap.gep876, align 8
  store ptr %a.create871, ptr %var.doc, align 8
  br label %a.after869

a.after869:                                       ; preds = %a.create868, %loop.exit.109
  %a.load2877 = load ptr, ptr %var.doc, align 8
  %var.load878 = load i64, ptr %"var.idx'", align 8
  %arena.cur879 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc880 = call ptr @dva_arena_alloc(ptr %arena.cur879, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld881 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc880, i32 0, i32 0
  store ptr %a.load2877, ptr %rec.fld881, align 8
  %rec.fld882 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc880, i32 0, i32 1
  store i64 %var.load878, ptr %rec.fld882, align 8
  %p.to.i64883 = ptrtoint ptr %rec.alloc880 to i64
  %ram.pay884 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64883, 1
  ret { i1, i64 } %ram.pay884
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
define internal void @dva_abort_b_byte_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

define { i1, i64 } @"ccl::parse"(ptr %0, ptr %1) #0 {
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
  %var.load4 = load ptr, ptr %var.file, align 8
  %call.res5 = call { i1, i64 } @"ccl::parse_block_from"(ptr %a.load2, i64 0, i64 0, ptr %var.load4)
  %prop.is_pos = extractvalue { i1, i64 } %call.res5, 0
  br i1 %prop.is_pos, label %prop.pos.116, label %prop.ret.116

prop.pos.116:                                     ; preds = %a.after
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

prop.ret.116:                                     ; preds = %a.after
  ret { i1, i64 } %call.res5

a.create10:                                       ; preds = %prop.pos.116
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

a.after11:                                        ; preds = %a.create10, %prop.pos.116
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
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 24)
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
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

define { i1, i64 } @"ccl::parse_file"(ptr %0) #0 {
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
  %var.load9 = load ptr, ptr %var.path, align 8
  %var.load10 = load ptr, ptr %var.path, align 8
  %concat.lhs = load i64, ptr @str.8.struct, align 8
  %concat.lhs11 = and i64 %concat.lhs, 281474976710655
  %concat.lhs12 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %concat.rhs13 = load i64, ptr %concat.rhs, align 8
  %concat.rhs14 = and i64 %concat.rhs13, 281474976710655
  %concat.rhs15 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %concat.rhs16 = load ptr, ptr %concat.rhs15, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs11, i64 %concat.rhs14)
  %sum17 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.sum.len19

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load30 = load i64, ptr %var.fd, align 8
  %call.res31 = call ptr @"io::reader"(i64 %var.load30)
  store ptr %call.res31, ptr %var.r, align 8
  %var.load32 = load ptr, ptr %var.r, align 8
  %call.res33 = call { i64, ptr } @"io::read_all"(ptr %var.load32, i64 1048576)
  %ret.niche.data = extractvalue { i64, ptr } %call.res33, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

concat.sum.len19:                                 ; preds = %abort.dead21, %choice.then
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum17, i64 1)
  %sum22 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf23 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf23, label %str_overflow_abort25, label %concat.tot.len24

str_overflow_abort20:                             ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %concat.sum.len19

concat.tot.len24:                                 ; preds = %abort.dead26, %concat.sum.len19
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %sum22)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs12, i64 %concat.lhs11, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs16, i64 %concat.rhs14, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum17
  store i8 0, ptr %concat.nul, align 1
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum17, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res29 = call ptr @"ccl::ccl_error"(ptr %var.load9, ptr %concat.str, i64 1, i64 1)
  %p.to.i64 = ptrtoint ptr %call.res29 to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

str_overflow_abort25:                             ; preds = %concat.sum.len19
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %concat.tot.len24

ret.dead:                                         ; No predecessors!
  br label %choice.exit

ret.niche.alloc:                                  ; preds = %choice.exit
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  store { i64, ptr } %call.res33, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit ]
  store ptr %ret.niche.ptr, ptr %var.txt, align 8
  %var.load35 = load i64, ptr %var.fd, align 8
  %coerce.trunc = trunc i64 %var.load35 to i32
  %call.res36 = call i32 @close(i32 %coerce.trunc)
  %var.load37 = load ptr, ptr %var.txt, align 8
  %niche.ne.null = icmp ne ptr %var.load37, null
  br i1 %niche.ne.null, label %choice.then38, label %choice.else

choice.then38:                                    ; preds = %ret.niche.done
  store ptr %var.load37, ptr %var._, align 8
  store ptr %var.load37, ptr %var.content, align 8
  %var.load40 = load ptr, ptr %var.content, align 8
  %var.load41 = load ptr, ptr %var.path, align 8
  %call.res42 = call { i1, i64 } @"ccl::parse"(ptr %var.load40, ptr %var.load41)
  br label %choice.exit39

choice.else:                                      ; preds = %ret.niche.done
  %var.load43 = load ptr, ptr %var.path, align 8
  %var.load44 = load ptr, ptr %var.path, align 8
  %concat.lhs45 = load i64, ptr @str.9.struct, align 8
  %concat.lhs46 = and i64 %concat.lhs45, 281474976710655
  %concat.lhs47 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %concat.rhs48 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %concat.rhs49 = load i64, ptr %concat.rhs48, align 8
  %concat.rhs50 = and i64 %concat.rhs49, 281474976710655
  %concat.rhs51 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %concat.rhs52 = load ptr, ptr %concat.rhs51, align 8
  %concat.sum.len53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs46, i64 %concat.rhs50)
  %sum54 = extractvalue { i64, i1 } %concat.sum.len53, 0
  %ovf55 = extractvalue { i64, i1 } %concat.sum.len53, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.sum.len56

choice.exit39:                                    ; preds = %concat.tot.len62, %choice.then38
  %choice.res = phi { i1, i64 } [ %call.res42, %choice.then38 ], [ %ram.pay75, %concat.tot.len62 ]
  ret { i1, i64 } %choice.res

concat.sum.len56:                                 ; preds = %abort.dead58, %choice.else
  %concat.tot.len59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum54, i64 1)
  %sum60 = extractvalue { i64, i1 } %concat.tot.len59, 0
  %ovf61 = extractvalue { i64, i1 } %concat.tot.len59, 1
  br i1 %ovf61, label %str_overflow_abort63, label %concat.tot.len62

str_overflow_abort57:                             ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %concat.sum.len56

concat.tot.len62:                                 ; preds = %abort.dead64, %concat.sum.len56
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %sum60)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf66, ptr align 1 %concat.lhs47, i64 %concat.lhs46, i1 false)
  %concat.mid67 = getelementptr i8, ptr %concat.buf66, i64 %concat.lhs46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid67, ptr align 1 %concat.rhs52, i64 %concat.rhs50, i1 false)
  %concat.nul68 = getelementptr i8, ptr %concat.buf66, i64 %sum54
  store i8 0, ptr %concat.nul68, align 1
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 16)
  %str.build.len.gep71 = getelementptr inbounds { i64, ptr }, ptr %concat.str70, i32 0, i32 0
  store i64 %sum54, ptr %str.build.len.gep71, align 8
  %str.build.data.gep72 = getelementptr inbounds { i64, ptr }, ptr %concat.str70, i32 0, i32 1
  store ptr %concat.buf66, ptr %str.build.data.gep72, align 8
  %call.res73 = call ptr @"ccl::ccl_error"(ptr %var.load43, ptr %concat.str70, i64 1, i64 1)
  %p.to.i6474 = ptrtoint ptr %call.res73 to i64
  %ram.pay75 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6474, 1
  br label %choice.exit39

str_overflow_abort63:                             ; preds = %concat.sum.len56
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %concat.tot.len62
}

declare ptr @"io::reader"(i64) #0

declare { i64, ptr } @"io::read_all"(ptr, i64) #0

define i1 @"ccl::has_newline"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %loop.step.117 = alloca i64, align 8
  %loop.idx.117 = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.117, align 8
  br label %loop.header.117

loop.header.117:                                  ; preds = %loop.latch.117, %entry
  %counter.load = load i64, ptr %loop.idx.117, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.117, label %loop.exit.nat.117

loop.body.117:                                    ; preds = %loop.header.117
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.117, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load4 = load i64, ptr %var.ch, align 8
  %cmptmp = icmp eq i64 %var.load4, 10
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.117:                                ; preds = %loop.header.117
  br label %loop.exit.117

loop.latch.117:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.117, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.117, align 8
  br label %loop.header.117

loop.exit.117:                                    ; preds = %loop.exit.nat.117
  ret i1 false

choice.then:                                      ; preds = %loop.body.117
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %loop.body.117
  br label %loop.latch.117

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define void @"ccl::append_multiline_str"(ptr %0, i64 %1, ptr %2) #0 {
entry:
  %var._146 = alloca i64, align 8
  %var._i145 = alloca i64, align 8
  %loop.step.122 = alloca i64, align 8
  %loop.idx.122 = alloca i64, align 8
  %var.last_part = alloca ptr, align 8
  %var._29 = alloca i64, align 8
  %var._i28 = alloca i64, align 8
  %loop.step.119 = alloca i64, align 8
  %loop.idx.119 = alloca i64, align 8
  %var.part = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.118 = alloca i64, align 8
  %loop.idx.118 = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.118, align 8
  br label %loop.header.118

loop.header.118:                                  ; preds = %loop.latch.118, %entry
  %counter.load = load i64, ptr %loop.idx.118, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.118, label %loop.exit.nat.118

loop.body.118:                                    ; preds = %loop.header.118
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.118, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 10
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.118:                                ; preds = %loop.header.118
  br label %loop.exit.118

loop.latch.118:                                   ; preds = %choice.exit
  %step.val100 = load i64, ptr %loop.step.118, align 8
  %loop.next101 = add i64 %counter.load, %step.val100
  store i64 %loop.next101, ptr %loop.idx.118, align 8
  br label %loop.header.118

loop.exit.118:                                    ; preds = %loop.exit.nat.118
  %var.load102 = load ptr, ptr %var.s, align 8
  %s.read.len103 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 0
  %s.read.len104 = load i64, ptr %s.read.len103, align 8
  %s.read.len105 = and i64 %s.read.len104, 281474976710655
  %s.read.data106 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 1
  %s.read.data107 = load ptr, ptr %s.read.data106, align 8
  %var.load108 = load i64, ptr %"var.line_start'", align 8
  %var.load109 = load i64, ptr %var.n, align 8
  %start.is_neg110 = icmp slt i64 %var.load108, 0
  %rel.start111 = add i64 %s.read.len105, %var.load108
  %norm.start112 = select i1 %start.is_neg110, i64 %rel.start111, i64 %var.load108
  %start.lt.0113 = icmp slt i64 %norm.start112, 0
  %c.start.0114 = select i1 %start.lt.0113, i64 0, i64 %norm.start112
  %start.gt.len115 = icmp sgt i64 %c.start.0114, %s.read.len105
  %final.start116 = select i1 %start.gt.len115, i64 %s.read.len105, i64 %c.start.0114
  %end.is_neg117 = icmp slt i64 %var.load109, 0
  %rel.end118 = add i64 %s.read.len105, %var.load109
  %norm.end119 = select i1 %end.is_neg117, i64 %rel.end118, i64 %var.load109
  %end.lt.0120 = icmp slt i64 %norm.end119, 0
  %c.end.0121 = select i1 %end.lt.0120, i64 0, i64 %norm.end119
  %end.gt.len122 = icmp sgt i64 %c.end.0121, %s.read.len105
  %final.end123 = select i1 %end.gt.len122, i64 %s.read.len105, i64 %c.end.0121
  %view.empty124 = icmp sle i64 %final.end123, %final.start116
  %view.len.sub125 = sub i64 %final.end123, %final.start116
  %view.len126 = select i1 %view.empty124, i64 0, i64 %view.len.sub125
  %view.data127 = getelementptr i8, ptr %s.read.data107, i64 %final.start116
  %arena.cur128 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 16)
  %str.build.len.gep130 = getelementptr inbounds { i64, ptr }, ptr %str.view129, i32 0, i32 0
  store i64 %view.len126, ptr %str.build.len.gep130, align 8
  %str.build.data.gep131 = getelementptr inbounds { i64, ptr }, ptr %str.view129, i32 0, i32 1
  store ptr %view.data127, ptr %str.build.data.gep131, align 8
  store ptr %str.view129, ptr %var.last_part, align 8
  %var.load132 = load ptr, ptr %var.last_part, align 8
  %str.len.query133 = getelementptr inbounds { i64, ptr }, ptr %var.load132, i32 0, i32 0
  %str.len.query134 = load i64, ptr %str.len.query133, align 8
  %str.len.query135 = and i64 %str.len.query134, 281474976710655
  %cmptmp136 = icmp sgt i64 %str.len.query135, 0
  br i1 %cmptmp136, label %or.121.then, label %or.121.else

choice.then:                                      ; preds = %loop.body.118
  %var.load9 = load ptr, ptr %var.s, align 8
  %s.read.len10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len10, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data13 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data13, align 8
  %var.load15 = load i64, ptr %"var.line_start'", align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load15, 0
  %rel.start = add i64 %s.read.len12, %var.load15
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load15
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load16, 0
  %rel.end = add i64 %s.read.len12, %var.load16
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load16
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.part, align 8
  %var.load17 = load ptr, ptr %var.part, align 8
  %str.len.query18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %str.len.query19 = load i64, ptr %str.len.query18, align 8
  %str.len.query20 = and i64 %str.len.query19, 281474976710655
  %cmptmp21 = icmp sgt i64 %str.len.query20, 0
  br i1 %cmptmp21, label %choice.then22, label %choice.exit23

choice.exit:                                      ; preds = %b.push_done, %loop.body.118
  br label %loop.latch.118

choice.then22:                                    ; preds = %choice.then
  %var.load24 = load i64, ptr %var.child_indent, align 8
  store i64 0, ptr %loop.idx.119, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.119

choice.exit23:                                    ; preds = %b.grow_done58, %choice.then
  %b.load81 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok, label %b.byte_err

loop.header.119:                                  ; preds = %loop.latch.119, %choice.then22
  %counter.load25 = load i64, ptr %loop.idx.119, align 8
  %loop.cond26 = icmp slt i64 %counter.load25, %var.load24
  br i1 %loop.cond26, label %loop.body.119, label %loop.exit.nat.119

loop.body.119:                                    ; preds = %loop.header.119
  %loop.rel.i27 = sub i64 %counter.load25, 0
  store i64 1, ptr %loop.step.119, align 8
  store i64 %loop.rel.i27, ptr %var._i28, align 8
  store i64 %counter.load25, ptr %var._29, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len30 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len30, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len31

loop.exit.nat.119:                                ; preds = %loop.header.119
  br label %loop.exit.119

loop.latch.119:                                   ; preds = %br.done.120
  %step.val = load i64, ptr %loop.step.119, align 8
  %loop.next = add i64 %counter.load25, %step.val
  store i64 %loop.next, ptr %loop.idx.119, align 8
  br label %loop.header.119

loop.exit.119:                                    ; preds = %loop.exit.nat.119
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %b.load42 = load ptr, ptr %var.b, align 8
  %var.load43 = load ptr, ptr %var.part, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %app.str.len44 = load i64, ptr %app.str.len, align 8
  %app.str.len45 = and i64 %app.str.len44, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %app.str.data46 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  %b.app.cur.len47 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len47, i64 %app.str.len45)
  %sum48 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf49 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf49, label %str_overflow_abort51, label %b.app.new.len50

b.rn.new.len31:                                   ; preds = %abort.dead, %loop.body.119
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap32 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap32, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %loop.body.119
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.rn.new.len31

b.grow2:                                          ; preds = %b.rn.new.len31
  %b.cap2 = mul i64 %b.cap32, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len233 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data234 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum35 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf36 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf36, label %str_overflow_abort38, label %b.new.buf.len237

b.nogrow2:                                        ; preds = %b.rn.new.len31
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len237
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data41 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data41, i64 %b.rn.cur.len30
  br i1 true, label %br.b1.120, label %br.c2.120

b.new.buf.len237:                                 ; preds = %abort.dead39, %b.grow2
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum35)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data234, i64 %b.cur.len233, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len233
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort38:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %b.new.buf.len237

br.b1.120:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.120

br.c2.120:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.120, label %br.c3.120

br.b2.120:                                        ; preds = %br.c2.120
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.120

br.c3.120:                                        ; preds = %br.c2.120
  br i1 true, label %br.b3.120, label %br.b4.120

br.b3.120:                                        ; preds = %br.c3.120
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.120

br.b4.120:                                        ; preds = %br.c3.120
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.120

br.done.120:                                      ; preds = %br.b4.120, %br.b3.120, %br.b2.120, %br.b1.120
  %br.nul = getelementptr i8, ptr %b.rn.data41, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %loop.latch.119

b.app.new.len50:                                  ; preds = %abort.dead52, %loop.exit.119
  %b.cap53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 2
  %b.cap54 = load i64, ptr %b.cap53, align 8
  %b.need.grow55 = icmp slt i64 %b.cap54, %sum48
  br i1 %b.need.grow55, label %b.grow256, label %b.nogrow257

str_overflow_abort51:                             ; preds = %loop.exit.119
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %b.app.new.len50

b.grow256:                                        ; preds = %b.app.new.len50
  %b.cap259 = mul i64 %b.cap54, 2
  %b.cap.small60 = icmp slt i64 %b.cap259, 16
  %b.cap.grow61 = select i1 %b.cap.small60, i64 16, i64 %b.cap259
  %b.cap.need62 = icmp slt i64 %b.cap.grow61, %sum48
  %b.new.cap63 = select i1 %b.cap.need62, i64 %sum48, i64 %b.cap.grow61
  %b.cur.len264 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  %b.cur.len265 = load i64, ptr %b.cur.len264, align 8
  %b.cur.data266 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  %b.cur.data267 = load ptr, ptr %b.cur.data266, align 8
  %b.new.buf.len268 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap63, i64 1)
  %sum69 = extractvalue { i64, i1 } %b.new.buf.len268, 0
  %ovf70 = extractvalue { i64, i1 } %b.new.buf.len268, 1
  br i1 %ovf70, label %str_overflow_abort72, label %b.new.buf.len271

b.nogrow257:                                      ; preds = %b.app.new.len50
  br label %b.grow_done58

b.grow_done58:                                    ; preds = %b.nogrow257, %b.new.buf.len271
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  %b.app.data79 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data79, i64 %b.app.cur.len47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data46, i64 %app.str.len45, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data79, i64 %sum48
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  store i64 %sum48, ptr %b.len.gep80, align 8
  br label %choice.exit23

b.new.buf.len271:                                 ; preds = %abort.dead73, %b.grow256
  %arena.cur74 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf275 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %sum69)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf275, ptr align 1 %b.cur.data267, i64 %b.cur.len265, i1 false)
  %b.grow2.nul76 = getelementptr i8, ptr %b.new.buf275, i64 %b.cur.len265
  store i8 0, ptr %b.grow2.nul76, align 1
  %b.new.data2.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  store ptr %b.new.buf275, ptr %b.new.data2.gep77, align 8
  %b.new.cap2.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 2
  store i64 %b.new.cap63, ptr %b.new.cap2.gep78, align 8
  br label %b.grow_done58

str_overflow_abort72:                             ; preds = %b.grow256
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %b.new.buf.len271

b.byte_ok:                                        ; preds = %abort.dead82, %choice.exit23
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.len83 = load i64, ptr %b.len, align 8
  %b.cap84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  %b.cap85 = load i64, ptr %b.cap84, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.data86 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len83, %b.cap85
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit23
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap287 = mul i64 %b.cap85, 2
  %b.cap.small88 = icmp slt i64 %b.cap287, 16
  %b.new.cap89 = select i1 %b.cap.small88, i64 16, i64 %b.cap287
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap89, i64 1)
  %sum90 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf91 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf91, label %str_overflow_abort93, label %b.new.buf.len92

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len92
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.cur.data96 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.cur.len97 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data96, i64 %b.cur.len97
  store i8 10, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len97, 1
  %b.nul = getelementptr i8, ptr %b.cur.data96, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep98, align 8
  %var.load99 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load99, 1
  store i64 %addtmp, ptr %"var.line_start'", align 8
  br label %choice.exit

b.new.buf.len92:                                  ; preds = %abort.dead94, %b.grow
  %arena.cur95 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 %sum90)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data86, i64 %b.len83, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len83
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  store i64 %b.new.cap89, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort93:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead94:                                     ; No predecessors!
  br label %b.new.buf.len92

or.121.then:                                      ; preds = %loop.exit.118
  br label %or.121.exit

or.121.else:                                      ; preds = %loop.exit.118
  %var.load137 = load i64, ptr %var.n, align 8
  %cmptmp138 = icmp eq i64 %var.load137, 0
  br label %or.121.exit

or.121.exit:                                      ; preds = %or.121.else, %or.121.then
  %or.121.phi = phi i1 [ %cmptmp136, %or.121.then ], [ %cmptmp138, %or.121.else ]
  br i1 %or.121.phi, label %choice.then139, label %choice.exit140

choice.then139:                                   ; preds = %or.121.exit
  %var.load141 = load i64, ptr %var.child_indent, align 8
  store i64 0, ptr %loop.idx.122, align 8
  br label %loop.header.122

choice.exit140:                                   ; preds = %b.grow_done211, %or.121.exit
  ret void

loop.header.122:                                  ; preds = %loop.latch.122, %choice.then139
  %counter.load142 = load i64, ptr %loop.idx.122, align 8
  %loop.cond143 = icmp slt i64 %counter.load142, %var.load141
  br i1 %loop.cond143, label %loop.body.122, label %loop.exit.nat.122

loop.body.122:                                    ; preds = %loop.header.122
  %loop.rel.i144 = sub i64 %counter.load142, 0
  store i64 1, ptr %loop.step.122, align 8
  store i64 %loop.rel.i144, ptr %var._i145, align 8
  store i64 %counter.load142, ptr %var._146, align 8
  %b.load147 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len148 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  %b.rn.cur.len149 = load i64, ptr %b.rn.cur.len148, align 8
  %b.rn.new.len150 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len149, i64 1)
  %sum151 = extractvalue { i64, i1 } %b.rn.new.len150, 0
  %ovf152 = extractvalue { i64, i1 } %b.rn.new.len150, 1
  br i1 %ovf152, label %str_overflow_abort154, label %b.rn.new.len153

loop.exit.nat.122:                                ; preds = %loop.header.122
  br label %loop.exit.122

loop.latch.122:                                   ; preds = %br.done.123
  %step.val193 = load i64, ptr %loop.step.122, align 8
  %loop.next194 = add i64 %counter.load142, %step.val193
  store i64 %loop.next194, ptr %loop.idx.122, align 8
  br label %loop.header.122

loop.exit.122:                                    ; preds = %loop.exit.nat.122
  %b.load195 = load ptr, ptr %var.b, align 8
  %var.load196 = load ptr, ptr %var.last_part, align 8
  %b.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load196, i32 0, i32 0
  %b.str.len197 = load i64, ptr %b.str.len, align 8
  %b.str.len198 = and i64 %b.str.len197, 281474976710655
  %b.add.len = add i64 0, %b.str.len198
  %b.add.len199 = add i64 %b.add.len, 1
  %b.rec.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load195, i32 0, i32 0
  %b.rec.cur.len200 = load i64, ptr %b.rec.cur.len, align 8
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len200, i64 %b.add.len199)
  %sum201 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf202 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf202, label %str_overflow_abort204, label %b.rec.new.len203

b.rn.new.len153:                                  ; preds = %abort.dead155, %loop.body.122
  %b.cap156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 2
  %b.cap157 = load i64, ptr %b.cap156, align 8
  %b.need.grow158 = icmp slt i64 %b.cap157, %sum151
  br i1 %b.need.grow158, label %b.grow2159, label %b.nogrow2160

str_overflow_abort154:                            ; preds = %loop.body.122
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead155:                                    ; No predecessors!
  br label %b.rn.new.len153

b.grow2159:                                       ; preds = %b.rn.new.len153
  %b.cap2162 = mul i64 %b.cap157, 2
  %b.cap.small163 = icmp slt i64 %b.cap2162, 16
  %b.cap.grow164 = select i1 %b.cap.small163, i64 16, i64 %b.cap2162
  %b.cap.need165 = icmp slt i64 %b.cap.grow164, %sum151
  %b.new.cap166 = select i1 %b.cap.need165, i64 %sum151, i64 %b.cap.grow164
  %b.cur.len2167 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  %b.cur.len2168 = load i64, ptr %b.cur.len2167, align 8
  %b.cur.data2169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  %b.cur.data2170 = load ptr, ptr %b.cur.data2169, align 8
  %b.new.buf.len2171 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap166, i64 1)
  %sum172 = extractvalue { i64, i1 } %b.new.buf.len2171, 0
  %ovf173 = extractvalue { i64, i1 } %b.new.buf.len2171, 1
  br i1 %ovf173, label %str_overflow_abort175, label %b.new.buf.len2174

b.nogrow2160:                                     ; preds = %b.rn.new.len153
  br label %b.grow_done161

b.grow_done161:                                   ; preds = %b.nogrow2160, %b.new.buf.len2174
  %b.rn.data182 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  %b.rn.data183 = load ptr, ptr %b.rn.data182, align 8
  %b.rn.dst184 = getelementptr i8, ptr %b.rn.data183, i64 %b.rn.cur.len149
  br i1 true, label %br.b1.123, label %br.c2.123

b.new.buf.len2174:                                ; preds = %abort.dead176, %b.grow2159
  %arena.cur177 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2178 = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 %sum172)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2178, ptr align 1 %b.cur.data2170, i64 %b.cur.len2168, i1 false)
  %b.grow2.nul179 = getelementptr i8, ptr %b.new.buf2178, i64 %b.cur.len2168
  store i8 0, ptr %b.grow2.nul179, align 1
  %b.new.data2.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  store ptr %b.new.buf2178, ptr %b.new.data2.gep180, align 8
  %b.new.cap2.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 2
  store i64 %b.new.cap166, ptr %b.new.cap2.gep181, align 8
  br label %b.grow_done161

str_overflow_abort175:                            ; preds = %b.grow2159
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead176:                                    ; No predecessors!
  br label %b.new.buf.len2174

br.b1.123:                                        ; preds = %b.grow_done161
  store i8 32, ptr %b.rn.dst184, align 1
  br label %br.done.123

br.c2.123:                                        ; preds = %b.grow_done161
  br i1 true, label %br.b2.123, label %br.c3.123

br.b2.123:                                        ; preds = %br.c2.123
  store i8 -64, ptr %b.rn.dst184, align 1
  %br.dst1185 = getelementptr i8, ptr %b.rn.dst184, i64 1
  store i8 -96, ptr %br.dst1185, align 1
  br label %br.done.123

br.c3.123:                                        ; preds = %br.c2.123
  br i1 true, label %br.b3.123, label %br.b4.123

br.b3.123:                                        ; preds = %br.c3.123
  store i8 -32, ptr %b.rn.dst184, align 1
  %br.dst1.3186 = getelementptr i8, ptr %b.rn.dst184, i64 1
  store i8 -128, ptr %br.dst1.3186, align 1
  %br.dst2.3187 = getelementptr i8, ptr %b.rn.dst184, i64 2
  store i8 -96, ptr %br.dst2.3187, align 1
  br label %br.done.123

br.b4.123:                                        ; preds = %br.c3.123
  store i8 -16, ptr %b.rn.dst184, align 1
  %br.dst1.4188 = getelementptr i8, ptr %b.rn.dst184, i64 1
  store i8 -128, ptr %br.dst1.4188, align 1
  %br.dst2.4189 = getelementptr i8, ptr %b.rn.dst184, i64 2
  store i8 -128, ptr %br.dst2.4189, align 1
  %br.dst3.4190 = getelementptr i8, ptr %b.rn.dst184, i64 3
  store i8 -96, ptr %br.dst3.4190, align 1
  br label %br.done.123

br.done.123:                                      ; preds = %br.b4.123, %br.b3.123, %br.b2.123, %br.b1.123
  %br.nul191 = getelementptr i8, ptr %b.rn.data183, i64 %sum151
  store i8 0, ptr %br.nul191, align 1
  %b.len.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  store i64 %sum151, ptr %b.len.gep192, align 8
  br label %loop.latch.122

b.rec.new.len203:                                 ; preds = %abort.dead205, %loop.exit.122
  %b.cap206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load195, i32 0, i32 2
  %b.cap207 = load i64, ptr %b.cap206, align 8
  %b.need.grow208 = icmp slt i64 %b.cap207, %sum201
  br i1 %b.need.grow208, label %b.grow2209, label %b.nogrow2210

str_overflow_abort204:                            ; preds = %loop.exit.122
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead205:                                    ; No predecessors!
  br label %b.rec.new.len203

b.grow2209:                                       ; preds = %b.rec.new.len203
  %b.cap2212 = mul i64 %b.cap207, 2
  %b.cap.small213 = icmp slt i64 %b.cap2212, 16
  %b.cap.grow214 = select i1 %b.cap.small213, i64 16, i64 %b.cap2212
  %b.cap.need215 = icmp slt i64 %b.cap.grow214, %sum201
  %b.new.cap216 = select i1 %b.cap.need215, i64 %sum201, i64 %b.cap.grow214
  %b.cur.len2217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load195, i32 0, i32 0
  %b.cur.len2218 = load i64, ptr %b.cur.len2217, align 8
  %b.cur.data2219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load195, i32 0, i32 1
  %b.cur.data2220 = load ptr, ptr %b.cur.data2219, align 8
  %b.new.buf.len2221 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap216, i64 1)
  %sum222 = extractvalue { i64, i1 } %b.new.buf.len2221, 0
  %ovf223 = extractvalue { i64, i1 } %b.new.buf.len2221, 1
  br i1 %ovf223, label %str_overflow_abort225, label %b.new.buf.len2224

b.nogrow2210:                                     ; preds = %b.rec.new.len203
  br label %b.grow_done211

b.grow_done211:                                   ; preds = %b.nogrow2210, %b.new.buf.len2224
  %b.rec.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load195, i32 0, i32 1
  %b.rec.data232 = load ptr, ptr %b.rec.data, align 8
  %b.rec.dst = getelementptr i8, ptr %b.rec.data232, i64 %b.rec.cur.len200
  %b.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load196, i32 0, i32 1
  %b.str.data233 = load ptr, ptr %b.str.data, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data233, i64 %b.str.len198, i1 false)
  %b.rec.off = add i64 %b.rec.cur.len200, %b.str.len198
  %b.rec.dst234 = getelementptr i8, ptr %b.rec.data232, i64 %b.rec.off
  store i8 10, ptr %b.rec.dst234, align 1
  %b.rec.off235 = add i64 %b.rec.off, 1
  %b.rec.nul = getelementptr i8, ptr %b.rec.data232, i64 %sum201
  store i8 0, ptr %b.rec.nul, align 1
  %b.len.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load195, i32 0, i32 0
  store i64 %sum201, ptr %b.len.gep236, align 8
  br label %choice.exit140

b.new.buf.len2224:                                ; preds = %abort.dead226, %b.grow2209
  %arena.cur227 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2228 = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 %sum222)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2228, ptr align 1 %b.cur.data2220, i64 %b.cur.len2218, i1 false)
  %b.grow2.nul229 = getelementptr i8, ptr %b.new.buf2228, i64 %b.cur.len2218
  store i8 0, ptr %b.grow2.nul229, align 1
  %b.new.data2.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load195, i32 0, i32 1
  store ptr %b.new.buf2228, ptr %b.new.data2.gep230, align 8
  %b.new.cap2.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load195, i32 0, i32 2
  store i64 %b.new.cap216, ptr %b.new.cap2.gep231, align 8
  br label %b.grow_done211

str_overflow_abort225:                            ; preds = %b.grow2209
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead226:                                    ; No predecessors!
  br label %b.new.buf.len2224
}

define void @"ccl::serialize_doc_indent"(ptr %0, i64 %1, ptr %2) #0 {
entry:
  %var.sub527 = alloca ptr, align 8
  %var._526 = alloca ptr, align 8
  %var.s404 = alloca ptr, align 8
  %var._403 = alloca ptr, align 8
  %var.sub = alloca ptr, align 8
  %var._286 = alloca ptr, align 8
  %var.s168 = alloca ptr, align 8
  %var._167 = alloca ptr, align 8
  %var._90 = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var._34 = alloca ptr, align 8
  %var._10 = alloca i64, align 8
  %var._i9 = alloca i64, align 8
  %loop.step.125 = alloca i64, align 8
  %loop.idx.125 = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.124 = alloca i64, align 8
  %loop.idx.124 = alloca i64, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.header.124:                                  ; preds = %loop.latch.124, %a.after
  %counter.load = load i64, ptr %loop.idx.124, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.124, label %loop.exit.nat.124

loop.body.124:                                    ; preds = %loop.header.124
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.124, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load i64, ptr %var.indent, align 8
  store i64 0, ptr %loop.idx.125, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.125

loop.exit.nat.124:                                ; preds = %loop.header.124
  br label %loop.exit.124

loop.latch.124:                                   ; preds = %choice.exit
  %step.val592 = load i64, ptr %loop.step.124, align 8
  %loop.next593 = add i64 %counter.load, %step.val592
  store i64 %loop.next593, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.exit.124:                                    ; preds = %loop.exit.nat.124
  ret void

loop.header.125:                                  ; preds = %loop.latch.125, %loop.body.124
  %counter.load6 = load i64, ptr %loop.idx.125, align 8
  %loop.cond7 = icmp slt i64 %counter.load6, %var.load5
  br i1 %loop.cond7, label %loop.body.125, label %loop.exit.nat.125

loop.body.125:                                    ; preds = %loop.header.125
  %loop.rel.i8 = sub i64 %counter.load6, 0
  store i64 1, ptr %loop.step.125, align 8
  store i64 %loop.rel.i8, ptr %var._i9, align 8
  store i64 %counter.load6, ptr %var._10, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len11 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len11, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len12

loop.exit.nat.125:                                ; preds = %loop.header.125
  br label %loop.exit.125

loop.latch.125:                                   ; preds = %br.done.126
  %step.val = load i64, ptr %loop.step.125, align 8
  %loop.next = add i64 %counter.load6, %step.val
  store i64 %loop.next, ptr %loop.idx.125, align 8
  br label %loop.header.125

loop.exit.125:                                    ; preds = %loop.exit.nat.125
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load23 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load23, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len24 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len25 = and i64 %eq.lhs.len24, 281474976710655
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len26 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len25, %eq.rhs.len26
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

b.rn.new.len12:                                   ; preds = %abort.dead, %loop.body.125
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap13 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap13, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %loop.body.125
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
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
  %b.rn.data22 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data22, i64 %b.rn.cur.len11
  br i1 true, label %br.b1.126, label %br.c2.126

b.new.buf.len218:                                 ; preds = %abort.dead20, %b.grow2
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum16)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data215, i64 %b.cur.len214, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len214
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort19:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %b.new.buf.len218

br.b1.126:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.126

br.c2.126:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.126, label %br.c3.126

br.b2.126:                                        ; preds = %br.c2.126
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.126

br.c3.126:                                        ; preds = %br.c2.126
  br i1 true, label %br.b3.126, label %br.b4.126

br.b3.126:                                        ; preds = %br.c3.126
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.126

br.b4.126:                                        ; preds = %br.c3.126
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.126

br.done.126:                                      ; preds = %br.b4.126, %br.b3.126, %br.b2.126, %br.b1.126
  %br.nul = getelementptr i8, ptr %b.rn.data22, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %loop.latch.125

choice.exit:                                      ; preds = %choice.exit395, %choice.exit159, %choice.exit31
  br label %loop.latch.124

choice.case:                                      ; preds = %str.eq.merge
  %var.load28 = load ptr, ptr %var.e, align 8
  %fld.gep29 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load28, i32 0, i32 1
  %fld.load30 = load ptr, ptr %fld.gep29, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load30, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case32, label %choice.next33

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len141 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len142 = load i64, ptr %eq.lhs.len141, align 8
  %eq.lhs.len143 = and i64 %eq.lhs.len142, 281474976710655
  %eq.rhs.len144 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len145 = and i64 %eq.rhs.len144, 281474976710655
  %eq.len146 = icmp eq i64 %eq.lhs.len143, %eq.rhs.len145
  br i1 %eq.len146, label %str.eq.then147, label %str.eq.else148

str.eq.then:                                      ; preds = %loop.exit.125
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data27 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data27, ptr %eq.rhs.data, i64 %eq.lhs.len25)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.exit.125
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.exit31:                                    ; preds = %choice.next84, %b.grow_done109, %b.grow_done54
  br label %choice.exit

choice.case32:                                    ; preds = %choice.case
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load30, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._34, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %b.load35 = load ptr, ptr %var.b, align 8
  %b.str.len = load i64, ptr @str.10.struct, align 8
  %b.str.len36 = and i64 %b.str.len, 281474976710655
  %b.add.len = add i64 0, %b.str.len36
  %var.load37 = load ptr, ptr %var.s, align 8
  %b.str.len38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %b.str.len39 = load i64, ptr %b.str.len38, align 8
  %b.str.len40 = and i64 %b.str.len39, 281474976710655
  %b.add.len41 = add i64 %b.add.len, %b.str.len40
  %b.add.len42 = add i64 %b.add.len41, 1
  %b.rec.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.rec.cur.len43 = load i64, ptr %b.rec.cur.len, align 8
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len43, i64 %b.add.len42)
  %sum44 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf45 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf45, label %str_overflow_abort47, label %b.rec.new.len46

choice.next33:                                    ; preds = %choice.case
  %tag.gep85 = getelementptr inbounds { i64, ptr }, ptr %fld.load30, i32 0, i32 0
  %tag.id86 = load i64, ptr %tag.gep85, align 8
  %tag.match87 = icmp eq i64 %tag.id86, 1
  br i1 %tag.match87, label %choice.case83, label %choice.next84

b.rec.new.len46:                                  ; preds = %abort.dead48, %choice.case32
  %b.cap49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  %b.cap50 = load i64, ptr %b.cap49, align 8
  %b.need.grow51 = icmp slt i64 %b.cap50, %sum44
  br i1 %b.need.grow51, label %b.grow252, label %b.nogrow253

str_overflow_abort47:                             ; preds = %choice.case32
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %b.rec.new.len46

b.grow252:                                        ; preds = %b.rec.new.len46
  %b.cap255 = mul i64 %b.cap50, 2
  %b.cap.small56 = icmp slt i64 %b.cap255, 16
  %b.cap.grow57 = select i1 %b.cap.small56, i64 16, i64 %b.cap255
  %b.cap.need58 = icmp slt i64 %b.cap.grow57, %sum44
  %b.new.cap59 = select i1 %b.cap.need58, i64 %sum44, i64 %b.cap.grow57
  %b.cur.len260 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.cur.len261 = load i64, ptr %b.cur.len260, align 8
  %b.cur.data262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.cur.data263 = load ptr, ptr %b.cur.data262, align 8
  %b.new.buf.len264 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap59, i64 1)
  %sum65 = extractvalue { i64, i1 } %b.new.buf.len264, 0
  %ovf66 = extractvalue { i64, i1 } %b.new.buf.len264, 1
  br i1 %ovf66, label %str_overflow_abort68, label %b.new.buf.len267

b.nogrow253:                                      ; preds = %b.rec.new.len46
  br label %b.grow_done54

b.grow_done54:                                    ; preds = %b.nogrow253, %b.new.buf.len267
  %b.rec.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.rec.data75 = load ptr, ptr %b.rec.data, align 8
  %b.rec.dst = getelementptr i8, ptr %b.rec.data75, i64 %b.rec.cur.len43
  %b.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data, i64 %b.str.len36, i1 false)
  %b.rec.off = add i64 %b.rec.cur.len43, %b.str.len36
  %b.rec.dst76 = getelementptr i8, ptr %b.rec.data75, i64 %b.rec.off
  %b.str.data77 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %b.str.data78 = load ptr, ptr %b.str.data77, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst76, ptr align 1 %b.str.data78, i64 %b.str.len40, i1 false)
  %b.rec.off79 = add i64 %b.rec.off, %b.str.len40
  %b.rec.dst80 = getelementptr i8, ptr %b.rec.data75, i64 %b.rec.off79
  store i8 10, ptr %b.rec.dst80, align 1
  %b.rec.off81 = add i64 %b.rec.off79, 1
  %b.rec.nul = getelementptr i8, ptr %b.rec.data75, i64 %sum44
  store i8 0, ptr %b.rec.nul, align 1
  %b.len.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  store i64 %sum44, ptr %b.len.gep82, align 8
  br label %choice.exit31

b.new.buf.len267:                                 ; preds = %abort.dead69, %b.grow252
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf271 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 %sum65)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf271, ptr align 1 %b.cur.data263, i64 %b.cur.len261, i1 false)
  %b.grow2.nul72 = getelementptr i8, ptr %b.new.buf271, i64 %b.cur.len261
  store i8 0, ptr %b.grow2.nul72, align 1
  %b.new.data2.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  store ptr %b.new.buf271, ptr %b.new.data2.gep73, align 8
  %b.new.cap2.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  store i64 %b.new.cap59, ptr %b.new.cap2.gep74, align 8
  br label %b.grow_done54

str_overflow_abort68:                             ; preds = %b.grow252
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead69:                                     ; No predecessors!
  br label %b.new.buf.len267

choice.case83:                                    ; preds = %choice.next33
  %pay.gep88 = getelementptr inbounds { i64, ptr }, ptr %fld.load30, i32 0, i32 1
  %payload.ptr89 = load ptr, ptr %pay.gep88, align 8
  store ptr %payload.ptr89, ptr %var._90, align 8
  %b.load91 = load ptr, ptr %var.b, align 8
  %b.str.len92 = load i64, ptr @str.10.struct, align 8
  %b.str.len93 = and i64 %b.str.len92, 281474976710655
  %b.add.len94 = add i64 0, %b.str.len93
  %b.add.len95 = add i64 %b.add.len94, 1
  %b.rec.cur.len96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.rec.cur.len97 = load i64, ptr %b.rec.cur.len96, align 8
  %b.rec.new.len98 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len97, i64 %b.add.len95)
  %sum99 = extractvalue { i64, i1 } %b.rec.new.len98, 0
  %ovf100 = extractvalue { i64, i1 } %b.rec.new.len98, 1
  br i1 %ovf100, label %str_overflow_abort102, label %b.rec.new.len101

choice.next84:                                    ; preds = %choice.next33
  br label %choice.exit31

b.rec.new.len101:                                 ; preds = %abort.dead103, %choice.case83
  %b.cap104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  %b.cap105 = load i64, ptr %b.cap104, align 8
  %b.need.grow106 = icmp slt i64 %b.cap105, %sum99
  br i1 %b.need.grow106, label %b.grow2107, label %b.nogrow2108

str_overflow_abort102:                            ; preds = %choice.case83
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead103:                                    ; No predecessors!
  br label %b.rec.new.len101

b.grow2107:                                       ; preds = %b.rec.new.len101
  %b.cap2110 = mul i64 %b.cap105, 2
  %b.cap.small111 = icmp slt i64 %b.cap2110, 16
  %b.cap.grow112 = select i1 %b.cap.small111, i64 16, i64 %b.cap2110
  %b.cap.need113 = icmp slt i64 %b.cap.grow112, %sum99
  %b.new.cap114 = select i1 %b.cap.need113, i64 %sum99, i64 %b.cap.grow112
  %b.cur.len2115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.cur.len2116 = load i64, ptr %b.cur.len2115, align 8
  %b.cur.data2117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.cur.data2118 = load ptr, ptr %b.cur.data2117, align 8
  %b.new.buf.len2119 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap114, i64 1)
  %sum120 = extractvalue { i64, i1 } %b.new.buf.len2119, 0
  %ovf121 = extractvalue { i64, i1 } %b.new.buf.len2119, 1
  br i1 %ovf121, label %str_overflow_abort123, label %b.new.buf.len2122

b.nogrow2108:                                     ; preds = %b.rec.new.len101
  br label %b.grow_done109

b.grow_done109:                                   ; preds = %b.nogrow2108, %b.new.buf.len2122
  %b.rec.data130 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.rec.data131 = load ptr, ptr %b.rec.data130, align 8
  %b.rec.dst132 = getelementptr i8, ptr %b.rec.data131, i64 %b.rec.cur.len97
  %b.str.data133 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst132, ptr align 1 %b.str.data133, i64 %b.str.len93, i1 false)
  %b.rec.off134 = add i64 %b.rec.cur.len97, %b.str.len93
  %b.rec.dst135 = getelementptr i8, ptr %b.rec.data131, i64 %b.rec.off134
  store i8 10, ptr %b.rec.dst135, align 1
  %b.rec.off136 = add i64 %b.rec.off134, 1
  %b.rec.nul137 = getelementptr i8, ptr %b.rec.data131, i64 %sum99
  store i8 0, ptr %b.rec.nul137, align 1
  %b.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  store i64 %sum99, ptr %b.len.gep138, align 8
  br label %choice.exit31

b.new.buf.len2122:                                ; preds = %abort.dead124, %b.grow2107
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 %sum120)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2126, ptr align 1 %b.cur.data2118, i64 %b.cur.len2116, i1 false)
  %b.grow2.nul127 = getelementptr i8, ptr %b.new.buf2126, i64 %b.cur.len2116
  store i8 0, ptr %b.grow2.nul127, align 1
  %b.new.data2.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  store ptr %b.new.buf2126, ptr %b.new.data2.gep128, align 8
  %b.new.cap2.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  store i64 %b.new.cap114, ptr %b.new.cap2.gep129, align 8
  br label %b.grow_done109

str_overflow_abort123:                            ; preds = %b.grow2107
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead124:                                    ; No predecessors!
  br label %b.new.buf.len2122

choice.case139:                                   ; preds = %str.eq.merge149
  %var.load156 = load ptr, ptr %var.e, align 8
  %fld.gep157 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load156, i32 0, i32 1
  %fld.load158 = load ptr, ptr %fld.gep157, align 8
  %tag.gep162 = getelementptr inbounds { i64, ptr }, ptr %fld.load158, i32 0, i32 0
  %tag.id163 = load i64, ptr %tag.gep162, align 8
  %tag.match164 = icmp eq i64 %tag.id163, 0
  br i1 %tag.match164, label %choice.case160, label %choice.next161

choice.next140:                                   ; preds = %str.eq.merge149
  %b.load351 = load ptr, ptr %var.b, align 8
  %var.load352 = load ptr, ptr %var.e, align 8
  %fld.gep353 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load352, i32 0, i32 0
  %fld.load354 = load ptr, ptr %fld.gep353, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load354, i32 0, i32 0
  %app.str.len355 = load i64, ptr %app.str.len, align 8
  %app.str.len356 = and i64 %app.str.len355, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load354, i32 0, i32 1
  %app.str.data357 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 0
  %b.app.cur.len358 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len358, i64 %app.str.len356)
  %sum359 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf360 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf360, label %str_overflow_abort362, label %b.app.new.len361

str.eq.then147:                                   ; preds = %choice.next
  %eq.lhs.data150 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data151 = load ptr, ptr %eq.lhs.data150, align 8
  %eq.rhs.data152 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp153 = call i32 @memcmp(ptr %eq.lhs.data151, ptr %eq.rhs.data152, i64 %eq.lhs.len143)
  %eq.cmp.zero154 = icmp eq i32 %eq.memcmp153, 0
  br label %str.eq.merge149

str.eq.else148:                                   ; preds = %choice.next
  br label %str.eq.merge149

str.eq.merge149:                                  ; preds = %str.eq.else148, %str.eq.then147
  %str.eq.result155 = phi i1 [ %eq.cmp.zero154, %str.eq.then147 ], [ false, %str.eq.else148 ]
  br i1 %str.eq.result155, label %choice.case139, label %choice.next140

choice.exit159:                                   ; preds = %choice.next280, %a.after339, %choice.exit170
  br label %choice.exit

choice.case160:                                   ; preds = %choice.case139
  %pay.gep165 = getelementptr inbounds { i64, ptr }, ptr %fld.load158, i32 0, i32 1
  %payload.ptr166 = load ptr, ptr %pay.gep165, align 8
  store ptr %payload.ptr166, ptr %var._167, align 8
  store ptr %payload.ptr166, ptr %var.s168, align 8
  %var.load169 = load ptr, ptr %var.s168, align 8
  %call.res = call i1 @"ccl::has_newline"(ptr %var.load169)
  br i1 %call.res, label %choice.then, label %choice.else

choice.next161:                                   ; preds = %choice.case139
  %tag.gep281 = getelementptr inbounds { i64, ptr }, ptr %fld.load158, i32 0, i32 0
  %tag.id282 = load i64, ptr %tag.gep281, align 8
  %tag.match283 = icmp eq i64 %tag.id282, 1
  br i1 %tag.match283, label %choice.case279, label %choice.next280

choice.then:                                      ; preds = %choice.case160
  %b.load171 = load ptr, ptr %var.b, align 8
  %b.str.len172 = load i64, ptr @str.11.struct, align 8
  %b.str.len173 = and i64 %b.str.len172, 281474976710655
  %b.add.len174 = add i64 0, %b.str.len173
  %b.add.len175 = add i64 %b.add.len174, 1
  %b.rec.cur.len176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load171, i32 0, i32 0
  %b.rec.cur.len177 = load i64, ptr %b.rec.cur.len176, align 8
  %b.rec.new.len178 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len177, i64 %b.add.len175)
  %sum179 = extractvalue { i64, i1 } %b.rec.new.len178, 0
  %ovf180 = extractvalue { i64, i1 } %b.rec.new.len178, 1
  br i1 %ovf180, label %str_overflow_abort182, label %b.rec.new.len181

choice.else:                                      ; preds = %choice.case160
  %b.load222 = load ptr, ptr %var.b, align 8
  %b.str.len223 = load i64, ptr @str.12.struct, align 8
  %b.str.len224 = and i64 %b.str.len223, 281474976710655
  %b.add.len225 = add i64 0, %b.str.len224
  %var.load226 = load ptr, ptr %var.s168, align 8
  %b.str.len227 = getelementptr inbounds { i64, ptr }, ptr %var.load226, i32 0, i32 0
  %b.str.len228 = load i64, ptr %b.str.len227, align 8
  %b.str.len229 = and i64 %b.str.len228, 281474976710655
  %b.add.len230 = add i64 %b.add.len225, %b.str.len229
  %b.add.len231 = add i64 %b.add.len230, 1
  %b.rec.cur.len232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 0
  %b.rec.cur.len233 = load i64, ptr %b.rec.cur.len232, align 8
  %b.rec.new.len234 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len233, i64 %b.add.len231)
  %sum235 = extractvalue { i64, i1 } %b.rec.new.len234, 0
  %ovf236 = extractvalue { i64, i1 } %b.rec.new.len234, 1
  br i1 %ovf236, label %str_overflow_abort238, label %b.rec.new.len237

choice.exit170:                                   ; preds = %b.grow_done245, %b.grow_done189
  br label %choice.exit159

b.rec.new.len181:                                 ; preds = %abort.dead183, %choice.then
  %b.cap184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load171, i32 0, i32 2
  %b.cap185 = load i64, ptr %b.cap184, align 8
  %b.need.grow186 = icmp slt i64 %b.cap185, %sum179
  br i1 %b.need.grow186, label %b.grow2187, label %b.nogrow2188

str_overflow_abort182:                            ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead183:                                    ; No predecessors!
  br label %b.rec.new.len181

b.grow2187:                                       ; preds = %b.rec.new.len181
  %b.cap2190 = mul i64 %b.cap185, 2
  %b.cap.small191 = icmp slt i64 %b.cap2190, 16
  %b.cap.grow192 = select i1 %b.cap.small191, i64 16, i64 %b.cap2190
  %b.cap.need193 = icmp slt i64 %b.cap.grow192, %sum179
  %b.new.cap194 = select i1 %b.cap.need193, i64 %sum179, i64 %b.cap.grow192
  %b.cur.len2195 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load171, i32 0, i32 0
  %b.cur.len2196 = load i64, ptr %b.cur.len2195, align 8
  %b.cur.data2197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load171, i32 0, i32 1
  %b.cur.data2198 = load ptr, ptr %b.cur.data2197, align 8
  %b.new.buf.len2199 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap194, i64 1)
  %sum200 = extractvalue { i64, i1 } %b.new.buf.len2199, 0
  %ovf201 = extractvalue { i64, i1 } %b.new.buf.len2199, 1
  br i1 %ovf201, label %str_overflow_abort203, label %b.new.buf.len2202

b.nogrow2188:                                     ; preds = %b.rec.new.len181
  br label %b.grow_done189

b.grow_done189:                                   ; preds = %b.nogrow2188, %b.new.buf.len2202
  %b.rec.data210 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load171, i32 0, i32 1
  %b.rec.data211 = load ptr, ptr %b.rec.data210, align 8
  %b.rec.dst212 = getelementptr i8, ptr %b.rec.data211, i64 %b.rec.cur.len177
  %b.str.data213 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst212, ptr align 1 %b.str.data213, i64 %b.str.len173, i1 false)
  %b.rec.off214 = add i64 %b.rec.cur.len177, %b.str.len173
  %b.rec.dst215 = getelementptr i8, ptr %b.rec.data211, i64 %b.rec.off214
  store i8 10, ptr %b.rec.dst215, align 1
  %b.rec.off216 = add i64 %b.rec.off214, 1
  %b.rec.nul217 = getelementptr i8, ptr %b.rec.data211, i64 %sum179
  store i8 0, ptr %b.rec.nul217, align 1
  %b.len.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load171, i32 0, i32 0
  store i64 %sum179, ptr %b.len.gep218, align 8
  %var.load219 = load ptr, ptr %var.s168, align 8
  %var.load220 = load i64, ptr %var.indent, align 8
  %addtmp = add i64 %var.load220, 2
  %var.load221 = load ptr, ptr %var.b, align 8
  call void @"ccl::append_multiline_str"(ptr %var.load219, i64 %addtmp, ptr %var.load221)
  br label %choice.exit170

b.new.buf.len2202:                                ; preds = %abort.dead204, %b.grow2187
  %arena.cur205 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 %sum200)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2206, ptr align 1 %b.cur.data2198, i64 %b.cur.len2196, i1 false)
  %b.grow2.nul207 = getelementptr i8, ptr %b.new.buf2206, i64 %b.cur.len2196
  store i8 0, ptr %b.grow2.nul207, align 1
  %b.new.data2.gep208 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load171, i32 0, i32 1
  store ptr %b.new.buf2206, ptr %b.new.data2.gep208, align 8
  %b.new.cap2.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load171, i32 0, i32 2
  store i64 %b.new.cap194, ptr %b.new.cap2.gep209, align 8
  br label %b.grow_done189

str_overflow_abort203:                            ; preds = %b.grow2187
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead204:                                    ; No predecessors!
  br label %b.new.buf.len2202

b.rec.new.len237:                                 ; preds = %abort.dead239, %choice.else
  %b.cap240 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 2
  %b.cap241 = load i64, ptr %b.cap240, align 8
  %b.need.grow242 = icmp slt i64 %b.cap241, %sum235
  br i1 %b.need.grow242, label %b.grow2243, label %b.nogrow2244

str_overflow_abort238:                            ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead239:                                    ; No predecessors!
  br label %b.rec.new.len237

b.grow2243:                                       ; preds = %b.rec.new.len237
  %b.cap2246 = mul i64 %b.cap241, 2
  %b.cap.small247 = icmp slt i64 %b.cap2246, 16
  %b.cap.grow248 = select i1 %b.cap.small247, i64 16, i64 %b.cap2246
  %b.cap.need249 = icmp slt i64 %b.cap.grow248, %sum235
  %b.new.cap250 = select i1 %b.cap.need249, i64 %sum235, i64 %b.cap.grow248
  %b.cur.len2251 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 0
  %b.cur.len2252 = load i64, ptr %b.cur.len2251, align 8
  %b.cur.data2253 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 1
  %b.cur.data2254 = load ptr, ptr %b.cur.data2253, align 8
  %b.new.buf.len2255 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap250, i64 1)
  %sum256 = extractvalue { i64, i1 } %b.new.buf.len2255, 0
  %ovf257 = extractvalue { i64, i1 } %b.new.buf.len2255, 1
  br i1 %ovf257, label %str_overflow_abort259, label %b.new.buf.len2258

b.nogrow2244:                                     ; preds = %b.rec.new.len237
  br label %b.grow_done245

b.grow_done245:                                   ; preds = %b.nogrow2244, %b.new.buf.len2258
  %b.rec.data266 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 1
  %b.rec.data267 = load ptr, ptr %b.rec.data266, align 8
  %b.rec.dst268 = getelementptr i8, ptr %b.rec.data267, i64 %b.rec.cur.len233
  %b.str.data269 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst268, ptr align 1 %b.str.data269, i64 %b.str.len224, i1 false)
  %b.rec.off270 = add i64 %b.rec.cur.len233, %b.str.len224
  %b.rec.dst271 = getelementptr i8, ptr %b.rec.data267, i64 %b.rec.off270
  %b.str.data272 = getelementptr inbounds { i64, ptr }, ptr %var.load226, i32 0, i32 1
  %b.str.data273 = load ptr, ptr %b.str.data272, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst271, ptr align 1 %b.str.data273, i64 %b.str.len229, i1 false)
  %b.rec.off274 = add i64 %b.rec.off270, %b.str.len229
  %b.rec.dst275 = getelementptr i8, ptr %b.rec.data267, i64 %b.rec.off274
  store i8 10, ptr %b.rec.dst275, align 1
  %b.rec.off276 = add i64 %b.rec.off274, 1
  %b.rec.nul277 = getelementptr i8, ptr %b.rec.data267, i64 %sum235
  store i8 0, ptr %b.rec.nul277, align 1
  %b.len.gep278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 0
  store i64 %sum235, ptr %b.len.gep278, align 8
  br label %choice.exit170

b.new.buf.len2258:                                ; preds = %abort.dead260, %b.grow2243
  %arena.cur261 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2262 = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 %sum256)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2262, ptr align 1 %b.cur.data2254, i64 %b.cur.len2252, i1 false)
  %b.grow2.nul263 = getelementptr i8, ptr %b.new.buf2262, i64 %b.cur.len2252
  store i8 0, ptr %b.grow2.nul263, align 1
  %b.new.data2.gep264 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 1
  store ptr %b.new.buf2262, ptr %b.new.data2.gep264, align 8
  %b.new.cap2.gep265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 2
  store i64 %b.new.cap250, ptr %b.new.cap2.gep265, align 8
  br label %b.grow_done245

str_overflow_abort259:                            ; preds = %b.grow2243
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead260:                                    ; No predecessors!
  br label %b.new.buf.len2258

choice.case279:                                   ; preds = %choice.next161
  %pay.gep284 = getelementptr inbounds { i64, ptr }, ptr %fld.load158, i32 0, i32 1
  %payload.ptr285 = load ptr, ptr %pay.gep284, align 8
  store ptr %payload.ptr285, ptr %var._286, align 8
  store ptr %payload.ptr285, ptr %var.sub, align 8
  %b.load287 = load ptr, ptr %var.b, align 8
  %b.str.len288 = load i64, ptr @str.12.struct, align 8
  %b.str.len289 = and i64 %b.str.len288, 281474976710655
  %b.add.len290 = add i64 0, %b.str.len289
  %b.add.len291 = add i64 %b.add.len290, 1
  %b.rec.cur.len292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  %b.rec.cur.len293 = load i64, ptr %b.rec.cur.len292, align 8
  %b.rec.new.len294 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len293, i64 %b.add.len291)
  %sum295 = extractvalue { i64, i1 } %b.rec.new.len294, 0
  %ovf296 = extractvalue { i64, i1 } %b.rec.new.len294, 1
  br i1 %ovf296, label %str_overflow_abort298, label %b.rec.new.len297

choice.next280:                                   ; preds = %choice.next161
  br label %choice.exit159

b.rec.new.len297:                                 ; preds = %abort.dead299, %choice.case279
  %b.cap300 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 2
  %b.cap301 = load i64, ptr %b.cap300, align 8
  %b.need.grow302 = icmp slt i64 %b.cap301, %sum295
  br i1 %b.need.grow302, label %b.grow2303, label %b.nogrow2304

str_overflow_abort298:                            ; preds = %choice.case279
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead299:                                    ; No predecessors!
  br label %b.rec.new.len297

b.grow2303:                                       ; preds = %b.rec.new.len297
  %b.cap2306 = mul i64 %b.cap301, 2
  %b.cap.small307 = icmp slt i64 %b.cap2306, 16
  %b.cap.grow308 = select i1 %b.cap.small307, i64 16, i64 %b.cap2306
  %b.cap.need309 = icmp slt i64 %b.cap.grow308, %sum295
  %b.new.cap310 = select i1 %b.cap.need309, i64 %sum295, i64 %b.cap.grow308
  %b.cur.len2311 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  %b.cur.len2312 = load i64, ptr %b.cur.len2311, align 8
  %b.cur.data2313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  %b.cur.data2314 = load ptr, ptr %b.cur.data2313, align 8
  %b.new.buf.len2315 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap310, i64 1)
  %sum316 = extractvalue { i64, i1 } %b.new.buf.len2315, 0
  %ovf317 = extractvalue { i64, i1 } %b.new.buf.len2315, 1
  br i1 %ovf317, label %str_overflow_abort319, label %b.new.buf.len2318

b.nogrow2304:                                     ; preds = %b.rec.new.len297
  br label %b.grow_done305

b.grow_done305:                                   ; preds = %b.nogrow2304, %b.new.buf.len2318
  %b.rec.data326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  %b.rec.data327 = load ptr, ptr %b.rec.data326, align 8
  %b.rec.dst328 = getelementptr i8, ptr %b.rec.data327, i64 %b.rec.cur.len293
  %b.str.data329 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst328, ptr align 1 %b.str.data329, i64 %b.str.len289, i1 false)
  %b.rec.off330 = add i64 %b.rec.cur.len293, %b.str.len289
  %b.rec.dst331 = getelementptr i8, ptr %b.rec.data327, i64 %b.rec.off330
  store i8 10, ptr %b.rec.dst331, align 1
  %b.rec.off332 = add i64 %b.rec.off330, 1
  %b.rec.nul333 = getelementptr i8, ptr %b.rec.data327, i64 %sum295
  store i8 0, ptr %b.rec.nul333, align 1
  %b.len.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  store i64 %sum295, ptr %b.len.gep334, align 8
  %var.load335 = load ptr, ptr %var.sub, align 8
  %a.load336 = load ptr, ptr %var.sub, align 8
  %a.null337 = icmp eq ptr %a.load336, null
  br i1 %a.null337, label %a.create338, label %a.after339

b.new.buf.len2318:                                ; preds = %abort.dead320, %b.grow2303
  %arena.cur321 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 %sum316)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2322, ptr align 1 %b.cur.data2314, i64 %b.cur.len2312, i1 false)
  %b.grow2.nul323 = getelementptr i8, ptr %b.new.buf2322, i64 %b.cur.len2312
  store i8 0, ptr %b.grow2.nul323, align 1
  %b.new.data2.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  store ptr %b.new.buf2322, ptr %b.new.data2.gep324, align 8
  %b.new.cap2.gep325 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 2
  store i64 %b.new.cap310, ptr %b.new.cap2.gep325, align 8
  br label %b.grow_done305

str_overflow_abort319:                            ; preds = %b.grow2303
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead320:                                    ; No predecessors!
  br label %b.new.buf.len2318

a.create338:                                      ; preds = %b.grow_done305
  %arena.cur340 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create341 = call ptr @dva_arena_alloc(ptr %arena.cur340, i64 24)
  %arena.cur342 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf343 = call ptr @dva_arena_alloc(ptr %arena.cur342, i64 128)
  %a.len.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create341, i32 0, i32 0
  store i64 0, ptr %a.len.gep344, align 8
  %a.data.gep345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create341, i32 0, i32 1
  store ptr %a.buf343, ptr %a.data.gep345, align 8
  %a.cap.gep346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create341, i32 0, i32 2
  store i64 16, ptr %a.cap.gep346, align 8
  store ptr %a.create341, ptr %var.sub, align 8
  br label %a.after339

a.after339:                                       ; preds = %a.create338, %b.grow_done305
  %a.load2347 = load ptr, ptr %var.sub, align 8
  %var.load348 = load i64, ptr %var.indent, align 8
  %addtmp349 = add i64 %var.load348, 2
  %var.load350 = load ptr, ptr %var.b, align 8
  call void @"ccl::serialize_doc_indent"(ptr %a.load2347, i64 %addtmp349, ptr %var.load350)
  br label %choice.exit159

b.app.new.len361:                                 ; preds = %abort.dead363, %choice.next140
  %b.cap364 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 2
  %b.cap365 = load i64, ptr %b.cap364, align 8
  %b.need.grow366 = icmp slt i64 %b.cap365, %sum359
  br i1 %b.need.grow366, label %b.grow2367, label %b.nogrow2368

str_overflow_abort362:                            ; preds = %choice.next140
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead363:                                    ; No predecessors!
  br label %b.app.new.len361

b.grow2367:                                       ; preds = %b.app.new.len361
  %b.cap2370 = mul i64 %b.cap365, 2
  %b.cap.small371 = icmp slt i64 %b.cap2370, 16
  %b.cap.grow372 = select i1 %b.cap.small371, i64 16, i64 %b.cap2370
  %b.cap.need373 = icmp slt i64 %b.cap.grow372, %sum359
  %b.new.cap374 = select i1 %b.cap.need373, i64 %sum359, i64 %b.cap.grow372
  %b.cur.len2375 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 0
  %b.cur.len2376 = load i64, ptr %b.cur.len2375, align 8
  %b.cur.data2377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 1
  %b.cur.data2378 = load ptr, ptr %b.cur.data2377, align 8
  %b.new.buf.len2379 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap374, i64 1)
  %sum380 = extractvalue { i64, i1 } %b.new.buf.len2379, 0
  %ovf381 = extractvalue { i64, i1 } %b.new.buf.len2379, 1
  br i1 %ovf381, label %str_overflow_abort383, label %b.new.buf.len2382

b.nogrow2368:                                     ; preds = %b.app.new.len361
  br label %b.grow_done369

b.grow_done369:                                   ; preds = %b.nogrow2368, %b.new.buf.len2382
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 1
  %b.app.data390 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data390, i64 %b.app.cur.len358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data357, i64 %app.str.len356, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data390, i64 %sum359
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep391 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 0
  store i64 %sum359, ptr %b.len.gep391, align 8
  %var.load392 = load ptr, ptr %var.e, align 8
  %fld.gep393 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load392, i32 0, i32 1
  %fld.load394 = load ptr, ptr %fld.gep393, align 8
  %tag.gep398 = getelementptr inbounds { i64, ptr }, ptr %fld.load394, i32 0, i32 0
  %tag.id399 = load i64, ptr %tag.gep398, align 8
  %tag.match400 = icmp eq i64 %tag.id399, 0
  br i1 %tag.match400, label %choice.case396, label %choice.next397

b.new.buf.len2382:                                ; preds = %abort.dead384, %b.grow2367
  %arena.cur385 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2386 = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 %sum380)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2386, ptr align 1 %b.cur.data2378, i64 %b.cur.len2376, i1 false)
  %b.grow2.nul387 = getelementptr i8, ptr %b.new.buf2386, i64 %b.cur.len2376
  store i8 0, ptr %b.grow2.nul387, align 1
  %b.new.data2.gep388 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 1
  store ptr %b.new.buf2386, ptr %b.new.data2.gep388, align 8
  %b.new.cap2.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 2
  store i64 %b.new.cap374, ptr %b.new.cap2.gep389, align 8
  br label %b.grow_done369

str_overflow_abort383:                            ; preds = %b.grow2367
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead384:                                    ; No predecessors!
  br label %b.new.buf.len2382

choice.exit395:                                   ; preds = %choice.next520, %a.after580, %choice.exit409
  br label %choice.exit

choice.case396:                                   ; preds = %b.grow_done369
  %pay.gep401 = getelementptr inbounds { i64, ptr }, ptr %fld.load394, i32 0, i32 1
  %payload.ptr402 = load ptr, ptr %pay.gep401, align 8
  store ptr %payload.ptr402, ptr %var._403, align 8
  store ptr %payload.ptr402, ptr %var.s404, align 8
  %var.load405 = load ptr, ptr %var.s404, align 8
  %call.res406 = call i1 @"ccl::has_newline"(ptr %var.load405)
  br i1 %call.res406, label %choice.then407, label %choice.else408

choice.next397:                                   ; preds = %b.grow_done369
  %tag.gep521 = getelementptr inbounds { i64, ptr }, ptr %fld.load394, i32 0, i32 0
  %tag.id522 = load i64, ptr %tag.gep521, align 8
  %tag.match523 = icmp eq i64 %tag.id522, 1
  br i1 %tag.match523, label %choice.case519, label %choice.next520

choice.then407:                                   ; preds = %choice.case396
  %b.load410 = load ptr, ptr %var.b, align 8
  %b.str.len411 = load i64, ptr @str.13.struct, align 8
  %b.str.len412 = and i64 %b.str.len411, 281474976710655
  %b.add.len413 = add i64 0, %b.str.len412
  %b.add.len414 = add i64 %b.add.len413, 1
  %b.rec.cur.len415 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load410, i32 0, i32 0
  %b.rec.cur.len416 = load i64, ptr %b.rec.cur.len415, align 8
  %b.rec.new.len417 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len416, i64 %b.add.len414)
  %sum418 = extractvalue { i64, i1 } %b.rec.new.len417, 0
  %ovf419 = extractvalue { i64, i1 } %b.rec.new.len417, 1
  br i1 %ovf419, label %str_overflow_abort421, label %b.rec.new.len420

choice.else408:                                   ; preds = %choice.case396
  %b.load462 = load ptr, ptr %var.b, align 8
  %b.str.len463 = load i64, ptr @str.14.struct, align 8
  %b.str.len464 = and i64 %b.str.len463, 281474976710655
  %b.add.len465 = add i64 0, %b.str.len464
  %var.load466 = load ptr, ptr %var.s404, align 8
  %b.str.len467 = getelementptr inbounds { i64, ptr }, ptr %var.load466, i32 0, i32 0
  %b.str.len468 = load i64, ptr %b.str.len467, align 8
  %b.str.len469 = and i64 %b.str.len468, 281474976710655
  %b.add.len470 = add i64 %b.add.len465, %b.str.len469
  %b.add.len471 = add i64 %b.add.len470, 1
  %b.rec.cur.len472 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 0
  %b.rec.cur.len473 = load i64, ptr %b.rec.cur.len472, align 8
  %b.rec.new.len474 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len473, i64 %b.add.len471)
  %sum475 = extractvalue { i64, i1 } %b.rec.new.len474, 0
  %ovf476 = extractvalue { i64, i1 } %b.rec.new.len474, 1
  br i1 %ovf476, label %str_overflow_abort478, label %b.rec.new.len477

choice.exit409:                                   ; preds = %b.grow_done485, %b.grow_done428
  br label %choice.exit395

b.rec.new.len420:                                 ; preds = %abort.dead422, %choice.then407
  %b.cap423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load410, i32 0, i32 2
  %b.cap424 = load i64, ptr %b.cap423, align 8
  %b.need.grow425 = icmp slt i64 %b.cap424, %sum418
  br i1 %b.need.grow425, label %b.grow2426, label %b.nogrow2427

str_overflow_abort421:                            ; preds = %choice.then407
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead422:                                    ; No predecessors!
  br label %b.rec.new.len420

b.grow2426:                                       ; preds = %b.rec.new.len420
  %b.cap2429 = mul i64 %b.cap424, 2
  %b.cap.small430 = icmp slt i64 %b.cap2429, 16
  %b.cap.grow431 = select i1 %b.cap.small430, i64 16, i64 %b.cap2429
  %b.cap.need432 = icmp slt i64 %b.cap.grow431, %sum418
  %b.new.cap433 = select i1 %b.cap.need432, i64 %sum418, i64 %b.cap.grow431
  %b.cur.len2434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load410, i32 0, i32 0
  %b.cur.len2435 = load i64, ptr %b.cur.len2434, align 8
  %b.cur.data2436 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load410, i32 0, i32 1
  %b.cur.data2437 = load ptr, ptr %b.cur.data2436, align 8
  %b.new.buf.len2438 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap433, i64 1)
  %sum439 = extractvalue { i64, i1 } %b.new.buf.len2438, 0
  %ovf440 = extractvalue { i64, i1 } %b.new.buf.len2438, 1
  br i1 %ovf440, label %str_overflow_abort442, label %b.new.buf.len2441

b.nogrow2427:                                     ; preds = %b.rec.new.len420
  br label %b.grow_done428

b.grow_done428:                                   ; preds = %b.nogrow2427, %b.new.buf.len2441
  %b.rec.data449 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load410, i32 0, i32 1
  %b.rec.data450 = load ptr, ptr %b.rec.data449, align 8
  %b.rec.dst451 = getelementptr i8, ptr %b.rec.data450, i64 %b.rec.cur.len416
  %b.str.data452 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst451, ptr align 1 %b.str.data452, i64 %b.str.len412, i1 false)
  %b.rec.off453 = add i64 %b.rec.cur.len416, %b.str.len412
  %b.rec.dst454 = getelementptr i8, ptr %b.rec.data450, i64 %b.rec.off453
  store i8 10, ptr %b.rec.dst454, align 1
  %b.rec.off455 = add i64 %b.rec.off453, 1
  %b.rec.nul456 = getelementptr i8, ptr %b.rec.data450, i64 %sum418
  store i8 0, ptr %b.rec.nul456, align 1
  %b.len.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load410, i32 0, i32 0
  store i64 %sum418, ptr %b.len.gep457, align 8
  %var.load458 = load ptr, ptr %var.s404, align 8
  %var.load459 = load i64, ptr %var.indent, align 8
  %addtmp460 = add i64 %var.load459, 2
  %var.load461 = load ptr, ptr %var.b, align 8
  call void @"ccl::append_multiline_str"(ptr %var.load458, i64 %addtmp460, ptr %var.load461)
  br label %choice.exit409

b.new.buf.len2441:                                ; preds = %abort.dead443, %b.grow2426
  %arena.cur444 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2445 = call ptr @dva_arena_alloc(ptr %arena.cur444, i64 %sum439)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2445, ptr align 1 %b.cur.data2437, i64 %b.cur.len2435, i1 false)
  %b.grow2.nul446 = getelementptr i8, ptr %b.new.buf2445, i64 %b.cur.len2435
  store i8 0, ptr %b.grow2.nul446, align 1
  %b.new.data2.gep447 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load410, i32 0, i32 1
  store ptr %b.new.buf2445, ptr %b.new.data2.gep447, align 8
  %b.new.cap2.gep448 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load410, i32 0, i32 2
  store i64 %b.new.cap433, ptr %b.new.cap2.gep448, align 8
  br label %b.grow_done428

str_overflow_abort442:                            ; preds = %b.grow2426
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead443:                                    ; No predecessors!
  br label %b.new.buf.len2441

b.rec.new.len477:                                 ; preds = %abort.dead479, %choice.else408
  %b.cap480 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 2
  %b.cap481 = load i64, ptr %b.cap480, align 8
  %b.need.grow482 = icmp slt i64 %b.cap481, %sum475
  br i1 %b.need.grow482, label %b.grow2483, label %b.nogrow2484

str_overflow_abort478:                            ; preds = %choice.else408
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead479:                                    ; No predecessors!
  br label %b.rec.new.len477

b.grow2483:                                       ; preds = %b.rec.new.len477
  %b.cap2486 = mul i64 %b.cap481, 2
  %b.cap.small487 = icmp slt i64 %b.cap2486, 16
  %b.cap.grow488 = select i1 %b.cap.small487, i64 16, i64 %b.cap2486
  %b.cap.need489 = icmp slt i64 %b.cap.grow488, %sum475
  %b.new.cap490 = select i1 %b.cap.need489, i64 %sum475, i64 %b.cap.grow488
  %b.cur.len2491 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 0
  %b.cur.len2492 = load i64, ptr %b.cur.len2491, align 8
  %b.cur.data2493 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 1
  %b.cur.data2494 = load ptr, ptr %b.cur.data2493, align 8
  %b.new.buf.len2495 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap490, i64 1)
  %sum496 = extractvalue { i64, i1 } %b.new.buf.len2495, 0
  %ovf497 = extractvalue { i64, i1 } %b.new.buf.len2495, 1
  br i1 %ovf497, label %str_overflow_abort499, label %b.new.buf.len2498

b.nogrow2484:                                     ; preds = %b.rec.new.len477
  br label %b.grow_done485

b.grow_done485:                                   ; preds = %b.nogrow2484, %b.new.buf.len2498
  %b.rec.data506 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 1
  %b.rec.data507 = load ptr, ptr %b.rec.data506, align 8
  %b.rec.dst508 = getelementptr i8, ptr %b.rec.data507, i64 %b.rec.cur.len473
  %b.str.data509 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst508, ptr align 1 %b.str.data509, i64 %b.str.len464, i1 false)
  %b.rec.off510 = add i64 %b.rec.cur.len473, %b.str.len464
  %b.rec.dst511 = getelementptr i8, ptr %b.rec.data507, i64 %b.rec.off510
  %b.str.data512 = getelementptr inbounds { i64, ptr }, ptr %var.load466, i32 0, i32 1
  %b.str.data513 = load ptr, ptr %b.str.data512, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst511, ptr align 1 %b.str.data513, i64 %b.str.len469, i1 false)
  %b.rec.off514 = add i64 %b.rec.off510, %b.str.len469
  %b.rec.dst515 = getelementptr i8, ptr %b.rec.data507, i64 %b.rec.off514
  store i8 10, ptr %b.rec.dst515, align 1
  %b.rec.off516 = add i64 %b.rec.off514, 1
  %b.rec.nul517 = getelementptr i8, ptr %b.rec.data507, i64 %sum475
  store i8 0, ptr %b.rec.nul517, align 1
  %b.len.gep518 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 0
  store i64 %sum475, ptr %b.len.gep518, align 8
  br label %choice.exit409

b.new.buf.len2498:                                ; preds = %abort.dead500, %b.grow2483
  %arena.cur501 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 %sum496)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2502, ptr align 1 %b.cur.data2494, i64 %b.cur.len2492, i1 false)
  %b.grow2.nul503 = getelementptr i8, ptr %b.new.buf2502, i64 %b.cur.len2492
  store i8 0, ptr %b.grow2.nul503, align 1
  %b.new.data2.gep504 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 1
  store ptr %b.new.buf2502, ptr %b.new.data2.gep504, align 8
  %b.new.cap2.gep505 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 2
  store i64 %b.new.cap490, ptr %b.new.cap2.gep505, align 8
  br label %b.grow_done485

str_overflow_abort499:                            ; preds = %b.grow2483
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead500:                                    ; No predecessors!
  br label %b.new.buf.len2498

choice.case519:                                   ; preds = %choice.next397
  %pay.gep524 = getelementptr inbounds { i64, ptr }, ptr %fld.load394, i32 0, i32 1
  %payload.ptr525 = load ptr, ptr %pay.gep524, align 8
  store ptr %payload.ptr525, ptr %var._526, align 8
  store ptr %payload.ptr525, ptr %var.sub527, align 8
  %b.load528 = load ptr, ptr %var.b, align 8
  %b.str.len529 = load i64, ptr @str.14.struct, align 8
  %b.str.len530 = and i64 %b.str.len529, 281474976710655
  %b.add.len531 = add i64 0, %b.str.len530
  %b.add.len532 = add i64 %b.add.len531, 1
  %b.rec.cur.len533 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load528, i32 0, i32 0
  %b.rec.cur.len534 = load i64, ptr %b.rec.cur.len533, align 8
  %b.rec.new.len535 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len534, i64 %b.add.len532)
  %sum536 = extractvalue { i64, i1 } %b.rec.new.len535, 0
  %ovf537 = extractvalue { i64, i1 } %b.rec.new.len535, 1
  br i1 %ovf537, label %str_overflow_abort539, label %b.rec.new.len538

choice.next520:                                   ; preds = %choice.next397
  br label %choice.exit395

b.rec.new.len538:                                 ; preds = %abort.dead540, %choice.case519
  %b.cap541 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load528, i32 0, i32 2
  %b.cap542 = load i64, ptr %b.cap541, align 8
  %b.need.grow543 = icmp slt i64 %b.cap542, %sum536
  br i1 %b.need.grow543, label %b.grow2544, label %b.nogrow2545

str_overflow_abort539:                            ; preds = %choice.case519
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead540:                                    ; No predecessors!
  br label %b.rec.new.len538

b.grow2544:                                       ; preds = %b.rec.new.len538
  %b.cap2547 = mul i64 %b.cap542, 2
  %b.cap.small548 = icmp slt i64 %b.cap2547, 16
  %b.cap.grow549 = select i1 %b.cap.small548, i64 16, i64 %b.cap2547
  %b.cap.need550 = icmp slt i64 %b.cap.grow549, %sum536
  %b.new.cap551 = select i1 %b.cap.need550, i64 %sum536, i64 %b.cap.grow549
  %b.cur.len2552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load528, i32 0, i32 0
  %b.cur.len2553 = load i64, ptr %b.cur.len2552, align 8
  %b.cur.data2554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load528, i32 0, i32 1
  %b.cur.data2555 = load ptr, ptr %b.cur.data2554, align 8
  %b.new.buf.len2556 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap551, i64 1)
  %sum557 = extractvalue { i64, i1 } %b.new.buf.len2556, 0
  %ovf558 = extractvalue { i64, i1 } %b.new.buf.len2556, 1
  br i1 %ovf558, label %str_overflow_abort560, label %b.new.buf.len2559

b.nogrow2545:                                     ; preds = %b.rec.new.len538
  br label %b.grow_done546

b.grow_done546:                                   ; preds = %b.nogrow2545, %b.new.buf.len2559
  %b.rec.data567 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load528, i32 0, i32 1
  %b.rec.data568 = load ptr, ptr %b.rec.data567, align 8
  %b.rec.dst569 = getelementptr i8, ptr %b.rec.data568, i64 %b.rec.cur.len534
  %b.str.data570 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst569, ptr align 1 %b.str.data570, i64 %b.str.len530, i1 false)
  %b.rec.off571 = add i64 %b.rec.cur.len534, %b.str.len530
  %b.rec.dst572 = getelementptr i8, ptr %b.rec.data568, i64 %b.rec.off571
  store i8 10, ptr %b.rec.dst572, align 1
  %b.rec.off573 = add i64 %b.rec.off571, 1
  %b.rec.nul574 = getelementptr i8, ptr %b.rec.data568, i64 %sum536
  store i8 0, ptr %b.rec.nul574, align 1
  %b.len.gep575 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load528, i32 0, i32 0
  store i64 %sum536, ptr %b.len.gep575, align 8
  %var.load576 = load ptr, ptr %var.sub527, align 8
  %a.load577 = load ptr, ptr %var.sub527, align 8
  %a.null578 = icmp eq ptr %a.load577, null
  br i1 %a.null578, label %a.create579, label %a.after580

b.new.buf.len2559:                                ; preds = %abort.dead561, %b.grow2544
  %arena.cur562 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2563 = call ptr @dva_arena_alloc(ptr %arena.cur562, i64 %sum557)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2563, ptr align 1 %b.cur.data2555, i64 %b.cur.len2553, i1 false)
  %b.grow2.nul564 = getelementptr i8, ptr %b.new.buf2563, i64 %b.cur.len2553
  store i8 0, ptr %b.grow2.nul564, align 1
  %b.new.data2.gep565 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load528, i32 0, i32 1
  store ptr %b.new.buf2563, ptr %b.new.data2.gep565, align 8
  %b.new.cap2.gep566 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load528, i32 0, i32 2
  store i64 %b.new.cap551, ptr %b.new.cap2.gep566, align 8
  br label %b.grow_done546

str_overflow_abort560:                            ; preds = %b.grow2544
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead561:                                    ; No predecessors!
  br label %b.new.buf.len2559

a.create579:                                      ; preds = %b.grow_done546
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
  store ptr %a.create582, ptr %var.sub527, align 8
  br label %a.after580

a.after580:                                       ; preds = %a.create579, %b.grow_done546
  %a.load2588 = load ptr, ptr %var.sub527, align 8
  %var.load589 = load i64, ptr %var.indent, align 8
  %addtmp590 = add i64 %var.load589, 2
  %var.load591 = load ptr, ptr %var.b, align 8
  call void @"ccl::serialize_doc_indent"(ptr %a.load2588, i64 %addtmp590, ptr %var.load591)
  br label %choice.exit395
}

define { i64, ptr } @"ccl::to_ccl"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 512, i64 1)
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
  store i64 512, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data9, i64 %b.freeze.len8, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len8
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after
  %b.freeze.data11 = phi ptr [ %b.freeze.data9, %a.after ], [ %b.freeze.data9, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
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
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define ptr @"ccl::first_non_comment_entry"(ptr %0) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.127 = alloca i64, align 8
  %loop.idx.127 = alloca i64, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.127, align 8
  br label %loop.header.127

loop.header.127:                                  ; preds = %loop.latch.127, %a.after
  %counter.load = load i64, ptr %loop.idx.127, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.127, label %loop.exit.nat.127

loop.body.127:                                    ; preds = %loop.header.127
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.127, align 8
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
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len8 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len8
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.127:                                ; preds = %loop.header.127
  br label %loop.exit.127

loop.latch.127:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.127, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.127, align 8
  br label %loop.header.127

loop.exit.127:                                    ; preds = %loop.exit.nat.127
  ret ptr null

str.eq.then:                                      ; preds = %loop.body.127
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data9 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data9, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.127
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load10 = load ptr, ptr %var.e, align 8
  ret ptr %var.load10

choice.exit:                                      ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.127

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define ptr @"ccl::non_comment_entries"(ptr %0) #0 {
entry:
  %var._map_v_318 = alloca ptr, align 8
  %var._19 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.128 = alloca i64, align 8
  %loop.idx.128 = alloca i64, align 8
  %var._map_out_318 = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
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
  store ptr %a.new, ptr %var._map_out_318, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
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
  store i64 0, ptr %loop.idx.128, align 8
  br label %loop.header.128

loop.header.128:                                  ; preds = %loop.latch.128, %a.after
  %counter.load = load i64, ptr %loop.idx.128, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.128, label %loop.exit.nat.128

loop.body.128:                                    ; preds = %loop.header.128
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.128, align 8
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
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len14 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len13, %eq.rhs.len14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

loop.exit.nat.128:                                ; preds = %loop.header.128
  br label %loop.exit.128

loop.latch.128:                                   ; preds = %choice.exit18
  %step.val = load i64, ptr %loop.step.128, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.128, align 8
  br label %loop.header.128

loop.exit.128:                                    ; preds = %loop.exit.nat.128
  %var.load37 = load ptr, ptr %var._map_out_318, align 8
  %a.load38 = load ptr, ptr %var._map_out_318, align 8
  %a.null39 = icmp eq ptr %a.load38, null
  br i1 %a.null39, label %a.create40, label %a.after41

str.eq.then:                                      ; preds = %loop.body.128
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len13)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.body.128
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load16 = load ptr, ptr %var.e, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %var.load16, %choice.then ], [ null, %choice.else ]
  %niche.ne.null = icmp ne ptr %choice.res, null
  br i1 %niche.ne.null, label %choice.then17, label %choice.exit18

choice.then17:                                    ; preds = %choice.exit
  store ptr %choice.res, ptr %var._19, align 8
  store ptr %choice.res, ptr %var._map_v_318, align 8
  %var.load20 = load ptr, ptr %var._map_v_318, align 8
  %a.load21 = load ptr, ptr %var._map_out_318, align 8
  %a.null22 = icmp eq ptr %a.load21, null
  br i1 %a.null22, label %a.create23, label %a.after24

choice.exit18:                                    ; preds = %a.store, %choice.exit
  br label %loop.latch.128

a.create23:                                       ; preds = %choice.then17
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 24)
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 128)
  %a.len.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 0
  store i64 0, ptr %a.len.gep29, align 8
  %a.data.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 1
  store ptr %a.buf28, ptr %a.data.gep30, align 8
  %a.cap.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 2
  store i64 16, ptr %a.cap.gep31, align 8
  store ptr %a.create26, ptr %var._map_out_318, align 8
  br label %a.after24

a.after24:                                        ; preds = %a.create23, %choice.then17
  %a.load232 = load ptr, ptr %var._map_out_318, align 8
  br label %a.check

a.check:                                          ; preds = %a.after24
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load232, i32 0, i32 0
  %a.len33 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load232, i32 0, i32 2
  %a.cap34 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len33, %a.cap34
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load232)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load232, i32 0, i32 1
  %a.cur.data35 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load232, i32 0, i32 0
  %a.cur.len36 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data35, i64 %a.cur.len36
  %slot.p2i = ptrtoint ptr %var.load20 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len36, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load232, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit18

a.create40:                                       ; preds = %loop.exit.128
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 24)
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 128)
  %a.len.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create43, i32 0, i32 0
  store i64 0, ptr %a.len.gep46, align 8
  %a.data.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create43, i32 0, i32 1
  store ptr %a.buf45, ptr %a.data.gep47, align 8
  %a.cap.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create43, i32 0, i32 2
  store i64 16, ptr %a.cap.gep48, align 8
  store ptr %a.create43, ptr %var._map_out_318, align 8
  br label %a.after41

a.after41:                                        ; preds = %a.create40, %loop.exit.128
  %a.load249 = load ptr, ptr %var._map_out_318, align 8
  ret ptr %a.load249
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
