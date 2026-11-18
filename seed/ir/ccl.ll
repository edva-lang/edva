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
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.88.then, label %and.88.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.88.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load8, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.88.else:                                      ; preds = %str_ok
  br label %and.88.exit

and.88.exit:                                      ; preds = %and.88.else, %idx_ok
  %and.88.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.88.else ]
  br i1 %and.88.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.88.then
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ccl::is_space"(i64 %s.byte.val)
  br label %and.88.exit

idx_oob:                                          ; preds = %idx_big_check, %and.88.then
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
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.89.else:                                      ; preds = %entry
  br label %and.89.exit

and.89.exit:                                      ; preds = %and.89.else, %choice.exit
  %and.89.phi = phi i1 [ %choice.res, %choice.exit ], [ %cmptmp, %and.89.else ]
  br i1 %and.89.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.89.then
  %idx.big = icmp sge i64 %subtmp, %s.read.len3
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
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

idx_oob:                                          ; preds = %idx_big_check, %and.89.then
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
  %ret.pack = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack

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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
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
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sge i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i64 -1

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load8, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load9 = load i64, ptr %var.ch, align 8
  %cmptmp10 = icmp eq i64 %s.byte.val, %var.load9
  br i1 %cmptmp10, label %choice.then11, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
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
  %var.ind168 = alloca i64, align 8
  %var.raw165 = alloca ptr, align 8
  %var.line_end134 = alloca i64, align 8
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
  %var.load4 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %str_ok
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
  %idx.neg = icmp slt i64 %var.load12, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.106:                                ; preds = %loop.header.106
  br label %loop.exit.106

loop.latch.106:                                   ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.106, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.106, align 8
  br label %loop.header.106

loop.exit.106:                                    ; preds = %loop.exit.nat.106
  %var.load104 = load i64, ptr %"var.cur_start'", align 8
  %var.load105 = load i64, ptr %var.len, align 8
  %cmptmp106 = icmp slt i64 %var.load104, %var.load105
  br i1 %cmptmp106, label %choice.then107, label %choice.exit108

idx_big_check:                                    ; preds = %loop.body.106
  %idx.big = icmp sge i64 %var.load12, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp13 = icmp eq i64 %s.byte.val, 10
  br i1 %cmptmp13, label %choice.then14, label %choice.exit15

idx_oob:                                          ; preds = %idx_big_check, %loop.body.106
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then14:                                    ; preds = %idx_ok
  %var.load16 = load i64, ptr %var.i, align 8
  %var.load17 = load i64, ptr %"var.cur_start'", align 8
  %cmptmp18 = icmp sgt i64 %var.load16, %var.load17
  br i1 %cmptmp18, label %and.107.then, label %and.107.else

choice.exit15:                                    ; preds = %a.store, %idx_ok
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
  %idx.neg26 = icmp slt i64 %subtmp, 0
  br i1 %idx.neg26, label %idx_oob29, label %idx_big_check27

and.107.else:                                     ; preds = %choice.then14
  br label %and.107.exit

and.107.exit:                                     ; preds = %and.107.else, %idx_ok28
  %and.107.phi = phi i1 [ %cmptmp35, %idx_ok28 ], [ %cmptmp18, %and.107.else ]
  br i1 %and.107.phi, label %choice.then36, label %choice.else

idx_big_check27:                                  ; preds = %and.107.then
  %idx.big30 = icmp sge i64 %subtmp, %s.read.len22
  br i1 %idx.big30, label %idx_oob29, label %idx_ok28

idx_ok28:                                         ; preds = %abort.dead31, %idx_big_check27
  %s.byte.gep32 = getelementptr i8, ptr %s.read.data24, i64 %subtmp
  %s.byte33 = load i8, ptr %s.byte.gep32, align 1
  %s.byte.val34 = zext i8 %s.byte33 to i64
  %cmptmp35 = icmp eq i64 %s.byte.val34, 13
  br label %and.107.exit

idx_oob29:                                        ; preds = %idx_big_check27, %and.107.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %idx_ok28

choice.then36:                                    ; preds = %and.107.exit
  %var.load38 = load i64, ptr %var.i, align 8
  %subtmp39 = sub i64 %var.load38, 1
  br label %choice.exit37

choice.else:                                      ; preds = %and.107.exit
  %var.load40 = load i64, ptr %var.i, align 8
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.else, %choice.then36
  %choice.res = phi i64 [ %subtmp39, %choice.then36 ], [ %var.load40, %choice.else ]
  store i64 %choice.res, ptr %var.line_end, align 8
  %var.load41 = load ptr, ptr %var.src, align 8
  %s.read.len42 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %s.read.len43 = load i64, ptr %s.read.len42, align 8
  %s.read.len44 = and i64 %s.read.len43, 281474976710655
  %s.read.data45 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %s.read.data46 = load ptr, ptr %s.read.data45, align 8
  %var.load47 = load i64, ptr %"var.cur_start'", align 8
  %var.load48 = load i64, ptr %var.line_end, align 8
  %start.is_neg = icmp slt i64 %var.load47, 0
  %rel.start = add i64 %s.read.len44, %var.load47
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load47
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len44
  %final.start = select i1 %start.gt.len, i64 %s.read.len44, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load48, 0
  %rel.end = add i64 %s.read.len44, %var.load48
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load48
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len44
  %final.end = select i1 %end.gt.len, i64 %s.read.len44, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data46, i64 %final.start
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw, align 8
  %var.load50 = load ptr, ptr %var.raw, align 8
  %call.res = call i64 @"ccl::trim_left_idx"(ptr %var.load50, i64 0)
  store i64 %call.res, ptr %var.ind, align 8
  %var.load51 = load i64, ptr %"var.line_no'", align 8
  %var.load52 = load i64, ptr %var.ind, align 8
  %var.load53 = load ptr, ptr %var.raw, align 8
  %s.read.len54 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %s.read.len55 = load i64, ptr %s.read.len54, align 8
  %s.read.len56 = and i64 %s.read.len55, 281474976710655
  %s.read.data57 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 1
  %s.read.data58 = load ptr, ptr %s.read.data57, align 8
  %var.load59 = load i64, ptr %var.ind, align 8
  %start.is_neg60 = icmp slt i64 %var.load59, 0
  %rel.start61 = add i64 %s.read.len56, %var.load59
  %norm.start62 = select i1 %start.is_neg60, i64 %rel.start61, i64 %var.load59
  %start.lt.063 = icmp slt i64 %norm.start62, 0
  %c.start.064 = select i1 %start.lt.063, i64 0, i64 %norm.start62
  %start.gt.len65 = icmp sgt i64 %c.start.064, %s.read.len56
  %final.start66 = select i1 %start.gt.len65, i64 %s.read.len56, i64 %c.start.064
  %end.is_neg67 = icmp slt i64 %s.read.len56, 0
  %rel.end68 = add i64 %s.read.len56, %s.read.len56
  %norm.end69 = select i1 %end.is_neg67, i64 %rel.end68, i64 %s.read.len56
  %end.lt.070 = icmp slt i64 %norm.end69, 0
  %c.end.071 = select i1 %end.lt.070, i64 0, i64 %norm.end69
  %end.gt.len72 = icmp sgt i64 %c.end.071, %s.read.len56
  %final.end73 = select i1 %end.gt.len72, i64 %s.read.len56, i64 %c.end.071
  %view.empty74 = icmp sle i64 %final.end73, %final.start66
  %view.len.sub75 = sub i64 %final.end73, %final.start66
  %view.len76 = select i1 %view.empty74, i64 0, i64 %view.len.sub75
  %view.data77 = getelementptr i8, ptr %s.read.data58, i64 %final.start66
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 16)
  %str.build.len.gep80 = getelementptr inbounds { i64, ptr }, ptr %str.view79, i32 0, i32 0
  store i64 %view.len76, ptr %str.build.len.gep80, align 8
  %str.build.data.gep81 = getelementptr inbounds { i64, ptr }, ptr %str.view79, i32 0, i32 1
  store ptr %view.data77, ptr %str.build.data.gep81, align 8
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load51, ptr %rec.fld, align 8
  %rec.fld83 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load52, ptr %rec.fld83, align 8
  %rec.fld84 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %str.view79, ptr %rec.fld84, align 8
  %a.load85 = load ptr, ptr %var.lines, align 8
  %a.null86 = icmp eq ptr %a.load85, null
  br i1 %a.null86, label %a.create87, label %a.after88

a.create87:                                       ; preds = %choice.exit37
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

a.after88:                                        ; preds = %a.create87, %choice.exit37
  %a.load296 = load ptr, ptr %var.lines, align 8
  br label %a.check

a.check:                                          ; preds = %a.after88
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load296, i32 0, i32 0
  %a.len97 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load296, i32 0, i32 2
  %a.cap98 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len97, %a.cap98
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load296)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load296, i32 0, i32 1
  %a.cur.data99 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load296, i32 0, i32 0
  %a.cur.len100 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data99, i64 %a.cur.len100
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len100, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load296, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load101 = load i64, ptr %"var.line_no'", align 8
  %addtmp = add i64 %var.load101, 1
  store i64 %addtmp, ptr %"var.line_no'", align 8
  %var.load102 = load i64, ptr %var.i, align 8
  %addtmp103 = add i64 %var.load102, 1
  store i64 %addtmp103, ptr %"var.cur_start'", align 8
  br label %choice.exit15

choice.then107:                                   ; preds = %loop.exit.106
  %var.load109 = load ptr, ptr %var.src, align 8
  %s.read.len110 = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 0
  %s.read.len111 = load i64, ptr %s.read.len110, align 8
  %s.read.len112 = and i64 %s.read.len111, 281474976710655
  %s.read.data113 = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 1
  %s.read.data114 = load ptr, ptr %s.read.data113, align 8
  %var.load115 = load i64, ptr %var.len, align 8
  %subtmp116 = sub i64 %var.load115, 1
  %idx.neg117 = icmp slt i64 %subtmp116, 0
  br i1 %idx.neg117, label %idx_oob120, label %idx_big_check118

choice.exit108:                                   ; preds = %a.store219, %loop.exit.106
  %var.load233 = load ptr, ptr %var.lines, align 8
  %a.load234 = load ptr, ptr %var.lines, align 8
  %a.null235 = icmp eq ptr %a.load234, null
  br i1 %a.null235, label %a.create236, label %a.after237

idx_big_check118:                                 ; preds = %choice.then107
  %idx.big121 = icmp sge i64 %subtmp116, %s.read.len112
  br i1 %idx.big121, label %idx_oob120, label %idx_ok119

idx_ok119:                                        ; preds = %abort.dead122, %idx_big_check118
  %s.byte.gep123 = getelementptr i8, ptr %s.read.data114, i64 %subtmp116
  %s.byte124 = load i8, ptr %s.byte.gep123, align 1
  %s.byte.val125 = zext i8 %s.byte124 to i64
  %cmptmp126 = icmp eq i64 %s.byte.val125, 13
  br i1 %cmptmp126, label %choice.then127, label %choice.else128

idx_oob120:                                       ; preds = %idx_big_check118, %choice.then107
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead122:                                    ; No predecessors!
  br label %idx_ok119

choice.then127:                                   ; preds = %idx_ok119
  %var.load130 = load i64, ptr %var.len, align 8
  %subtmp131 = sub i64 %var.load130, 1
  br label %choice.exit129

choice.else128:                                   ; preds = %idx_ok119
  %var.load132 = load i64, ptr %var.len, align 8
  br label %choice.exit129

choice.exit129:                                   ; preds = %choice.else128, %choice.then127
  %choice.res133 = phi i64 [ %subtmp131, %choice.then127 ], [ %var.load132, %choice.else128 ]
  store i64 %choice.res133, ptr %var.line_end134, align 8
  %var.load135 = load ptr, ptr %var.src, align 8
  %s.read.len136 = getelementptr inbounds { i64, ptr }, ptr %var.load135, i32 0, i32 0
  %s.read.len137 = load i64, ptr %s.read.len136, align 8
  %s.read.len138 = and i64 %s.read.len137, 281474976710655
  %s.read.data139 = getelementptr inbounds { i64, ptr }, ptr %var.load135, i32 0, i32 1
  %s.read.data140 = load ptr, ptr %s.read.data139, align 8
  %var.load141 = load i64, ptr %"var.cur_start'", align 8
  %var.load142 = load i64, ptr %var.line_end134, align 8
  %start.is_neg143 = icmp slt i64 %var.load141, 0
  %rel.start144 = add i64 %s.read.len138, %var.load141
  %norm.start145 = select i1 %start.is_neg143, i64 %rel.start144, i64 %var.load141
  %start.lt.0146 = icmp slt i64 %norm.start145, 0
  %c.start.0147 = select i1 %start.lt.0146, i64 0, i64 %norm.start145
  %start.gt.len148 = icmp sgt i64 %c.start.0147, %s.read.len138
  %final.start149 = select i1 %start.gt.len148, i64 %s.read.len138, i64 %c.start.0147
  %end.is_neg150 = icmp slt i64 %var.load142, 0
  %rel.end151 = add i64 %s.read.len138, %var.load142
  %norm.end152 = select i1 %end.is_neg150, i64 %rel.end151, i64 %var.load142
  %end.lt.0153 = icmp slt i64 %norm.end152, 0
  %c.end.0154 = select i1 %end.lt.0153, i64 0, i64 %norm.end152
  %end.gt.len155 = icmp sgt i64 %c.end.0154, %s.read.len138
  %final.end156 = select i1 %end.gt.len155, i64 %s.read.len138, i64 %c.end.0154
  %view.empty157 = icmp sle i64 %final.end156, %final.start149
  %view.len.sub158 = sub i64 %final.end156, %final.start149
  %view.len159 = select i1 %view.empty157, i64 0, i64 %view.len.sub158
  %view.data160 = getelementptr i8, ptr %s.read.data140, i64 %final.start149
  %arena.cur161 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 16)
  %str.build.len.gep163 = getelementptr inbounds { i64, ptr }, ptr %str.view162, i32 0, i32 0
  store i64 %view.len159, ptr %str.build.len.gep163, align 8
  %str.build.data.gep164 = getelementptr inbounds { i64, ptr }, ptr %str.view162, i32 0, i32 1
  store ptr %view.data160, ptr %str.build.data.gep164, align 8
  store ptr %str.view162, ptr %var.raw165, align 8
  %var.load166 = load ptr, ptr %var.raw165, align 8
  %call.res167 = call i64 @"ccl::trim_left_idx"(ptr %var.load166, i64 0)
  store i64 %call.res167, ptr %var.ind168, align 8
  %var.load169 = load i64, ptr %"var.line_no'", align 8
  %var.load170 = load i64, ptr %var.ind168, align 8
  %var.load171 = load ptr, ptr %var.raw165, align 8
  %s.read.len172 = getelementptr inbounds { i64, ptr }, ptr %var.load171, i32 0, i32 0
  %s.read.len173 = load i64, ptr %s.read.len172, align 8
  %s.read.len174 = and i64 %s.read.len173, 281474976710655
  %s.read.data175 = getelementptr inbounds { i64, ptr }, ptr %var.load171, i32 0, i32 1
  %s.read.data176 = load ptr, ptr %s.read.data175, align 8
  %var.load177 = load i64, ptr %var.ind168, align 8
  %start.is_neg178 = icmp slt i64 %var.load177, 0
  %rel.start179 = add i64 %s.read.len174, %var.load177
  %norm.start180 = select i1 %start.is_neg178, i64 %rel.start179, i64 %var.load177
  %start.lt.0181 = icmp slt i64 %norm.start180, 0
  %c.start.0182 = select i1 %start.lt.0181, i64 0, i64 %norm.start180
  %start.gt.len183 = icmp sgt i64 %c.start.0182, %s.read.len174
  %final.start184 = select i1 %start.gt.len183, i64 %s.read.len174, i64 %c.start.0182
  %end.is_neg185 = icmp slt i64 %s.read.len174, 0
  %rel.end186 = add i64 %s.read.len174, %s.read.len174
  %norm.end187 = select i1 %end.is_neg185, i64 %rel.end186, i64 %s.read.len174
  %end.lt.0188 = icmp slt i64 %norm.end187, 0
  %c.end.0189 = select i1 %end.lt.0188, i64 0, i64 %norm.end187
  %end.gt.len190 = icmp sgt i64 %c.end.0189, %s.read.len174
  %final.end191 = select i1 %end.gt.len190, i64 %s.read.len174, i64 %c.end.0189
  %view.empty192 = icmp sle i64 %final.end191, %final.start184
  %view.len.sub193 = sub i64 %final.end191, %final.start184
  %view.len194 = select i1 %view.empty192, i64 0, i64 %view.len.sub193
  %view.data195 = getelementptr i8, ptr %s.read.data176, i64 %final.start184
  %arena.cur196 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 16)
  %str.build.len.gep198 = getelementptr inbounds { i64, ptr }, ptr %str.view197, i32 0, i32 0
  store i64 %view.len194, ptr %str.build.len.gep198, align 8
  %str.build.data.gep199 = getelementptr inbounds { i64, ptr }, ptr %str.view197, i32 0, i32 1
  store ptr %view.data195, ptr %str.build.data.gep199, align 8
  %arena.cur200 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld202 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc201, i32 0, i32 0
  store i64 %var.load169, ptr %rec.fld202, align 8
  %rec.fld203 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc201, i32 0, i32 1
  store i64 %var.load170, ptr %rec.fld203, align 8
  %rec.fld204 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc201, i32 0, i32 2
  store ptr %str.view197, ptr %rec.fld204, align 8
  %a.load205 = load ptr, ptr %var.lines, align 8
  %a.null206 = icmp eq ptr %a.load205, null
  br i1 %a.null206, label %a.create207, label %a.after208

a.create207:                                      ; preds = %choice.exit129
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
  store ptr %a.create210, ptr %var.lines, align 8
  br label %a.after208

a.after208:                                       ; preds = %a.create207, %choice.exit129
  %a.load2216 = load ptr, ptr %var.lines, align 8
  br label %a.check217

a.check217:                                       ; preds = %a.after208
  %a.len220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2216, i32 0, i32 0
  %a.len221 = load i64, ptr %a.len220, align 8
  %a.cap222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2216, i32 0, i32 2
  %a.cap223 = load i64, ptr %a.cap222, align 8
  %a.needs.grow224 = icmp eq i64 %a.len221, %a.cap223
  br i1 %a.needs.grow224, label %a.grow218, label %a.store219

a.grow218:                                        ; preds = %a.check217
  call void @dva_array_grow(ptr %a.load2216)
  br label %a.store219

a.store219:                                       ; preds = %a.grow218, %a.check217
  %a.cur.data225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2216, i32 0, i32 1
  %a.cur.data226 = load ptr, ptr %a.cur.data225, align 8
  %a.cur.len227 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2216, i32 0, i32 0
  %a.cur.len228 = load i64, ptr %a.cur.len227, align 8
  %a.elem.gep229 = getelementptr i64, ptr %a.cur.data226, i64 %a.cur.len228
  %slot.p2i230 = ptrtoint ptr %rec.alloc201 to i64
  store i64 %slot.p2i230, ptr %a.elem.gep229, align 8
  %a.next.len231 = add i64 %a.cur.len228, 1
  %b.len.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2216, i32 0, i32 0
  store i64 %a.next.len231, ptr %b.len.gep232, align 8
  br label %choice.exit108

a.create236:                                      ; preds = %choice.exit108
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
  store ptr %a.create239, ptr %var.lines, align 8
  br label %a.after237

a.after237:                                       ; preds = %a.create236, %choice.exit108
  %a.load2245 = load ptr, ptr %var.lines, align 8
  ret ptr %a.load2245
}

define { i1, i64 } @"ccl::parse_block_from"(ptr %0, i64 %1, i64 %2, ptr %3) #0 {
entry:
  %var.cl = alloca ptr, align 8
  %var._695 = alloca ptr, align 8
  %var._692 = alloca ptr, align 8
  %var._625 = alloca i64, align 8
  %var._i624 = alloca i64, align 8
  %loop.step.114 = alloca i64, align 8
  %loop.idx.114 = alloca i64, align 8
  %var.tb = alloca ptr, align 8
  %var.cres = alloca ptr, align 8
  %var.cand_line = alloca ptr, align 8
  %var._536 = alloca ptr, align 8
  %var._533 = alloca ptr, align 8
  %var.cand = alloca ptr, align 8
  %var._391 = alloca ptr, align 8
  %var._388 = alloca ptr, align 8
  %var._321 = alloca i64, align 8
  %var._i320 = alloca i64, align 8
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
  %step.val865 = load i64, ptr %loop.step.109, align 8
  %loop.next866 = add i64 %counter.load, %step.val865
  store i64 %loop.next866, ptr %loop.idx.109, align 8
  br label %loop.header.109

loop.exit.109:                                    ; preds = %choice.then72, %choice.then, %loop.exit.nat.109
  %var.load867 = load ptr, ptr %var.doc, align 8
  %a.load868 = load ptr, ptr %var.doc, align 8
  %a.null869 = icmp eq ptr %a.load868, null
  br i1 %a.null869, label %a.create870, label %a.after871

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

choice.exit53:                                    ; preds = %choice.exit99, %choice.then51
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
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load82, i32 0, i32 0
  %s.chk.len83 = load i64, ptr %s.chk.len, align 8
  %s.chk.len84 = and i64 %s.chk.len83, 281474976710655
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load82, i32 0, i32 0
  %s.read.len85 = load i64, ptr %s.read.len, align 8
  %s.read.len86 = and i64 %s.read.len85, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load82, i32 0, i32 1
  %s.read.data87 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len86, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len86
  %final.start = select i1 %start.gt.len, i64 %s.read.len86, i64 %c.start.0
  %rel.end = add i64 %s.read.len86, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len86
  %final.end = select i1 %end.gt.len, i64 %s.read.len86, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data87, i64 %final.start
  %cmp.str = load i64, ptr @str.4.struct, align 8
  %cmp.str88 = and i64 %cmp.str, 281474976710655
  %cmp.str89 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.len90 = icmp eq i64 %view.len, %cmp.str88
  br i1 %eq.len90, label %str.eq.then91, label %str.eq.else92

and.111.else:                                     ; preds = %choice.exit73
  br label %and.111.exit

and.111.exit:                                     ; preds = %and.111.else, %str.eq.merge93
  %and.111.phi = phi i1 [ %str.eq.result96, %str.eq.merge93 ], [ %cmptmp79, %and.111.else ]
  br i1 %and.111.phi, label %choice.then97, label %choice.else98

str.eq.then91:                                    ; preds = %and.111.then
  %eq.memcmp94 = call i32 @memcmp(ptr %view.data, ptr %cmp.str89, i64 %view.len)
  %eq.cmp.zero95 = icmp eq i32 %eq.memcmp94, 0
  br label %str.eq.merge93

str.eq.else92:                                    ; preds = %and.111.then
  br label %str.eq.merge93

str.eq.merge93:                                   ; preds = %str.eq.else92, %str.eq.then91
  %str.eq.result96 = phi i1 [ %eq.cmp.zero95, %str.eq.then91 ], [ false, %str.eq.else92 ]
  br label %and.111.exit

choice.then97:                                    ; preds = %and.111.exit
  %var.load100 = load ptr, ptr %var.pl, align 8
  %fld.gep101 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load100, i32 0, i32 2
  %fld.load102 = load ptr, ptr %fld.gep101, align 8
  %s.read.len103 = getelementptr inbounds { i64, ptr }, ptr %fld.load102, i32 0, i32 0
  %s.read.len104 = load i64, ptr %s.read.len103, align 8
  %s.read.len105 = and i64 %s.read.len104, 281474976710655
  %s.read.data106 = getelementptr inbounds { i64, ptr }, ptr %fld.load102, i32 0, i32 1
  %s.read.data107 = load ptr, ptr %s.read.data106, align 8
  %rel.start108 = add i64 %s.read.len105, 2
  %norm.start109 = select i1 false, i64 %rel.start108, i64 2
  %start.lt.0110 = icmp slt i64 %norm.start109, 0
  %c.start.0111 = select i1 %start.lt.0110, i64 0, i64 %norm.start109
  %start.gt.len112 = icmp sgt i64 %c.start.0111, %s.read.len105
  %final.start113 = select i1 %start.gt.len112, i64 %s.read.len105, i64 %c.start.0111
  %end.is_neg = icmp slt i64 %s.read.len105, 0
  %rel.end114 = add i64 %s.read.len105, %s.read.len105
  %norm.end115 = select i1 %end.is_neg, i64 %rel.end114, i64 %s.read.len105
  %end.lt.0116 = icmp slt i64 %norm.end115, 0
  %c.end.0117 = select i1 %end.lt.0116, i64 0, i64 %norm.end115
  %end.gt.len118 = icmp sgt i64 %c.end.0117, %s.read.len105
  %final.end119 = select i1 %end.gt.len118, i64 %s.read.len105, i64 %c.end.0117
  %view.empty120 = icmp sle i64 %final.end119, %final.start113
  %view.len.sub121 = sub i64 %final.end119, %final.start113
  %view.len122 = select i1 %view.empty120, i64 0, i64 %view.len.sub121
  %view.data123 = getelementptr i8, ptr %s.read.data107, i64 %final.start113
  %arena.cur124 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len122, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data123, ptr %str.build.data.gep, align 8
  %call.res125 = call { i64, ptr } @"ccl::trim_str"(ptr %str.view)
  %arena.cur126 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 16)
  store { i64, ptr } %call.res125, ptr %ret.ub.alloc, align 8
  %var.load127 = load ptr, ptr %var.pl, align 8
  %fld.gep128 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load127, i32 0, i32 0
  %fld.load129 = load i64, ptr %fld.gep128, align 8
  %var.load130 = load ptr, ptr %var.pl, align 8
  %fld.gep131 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load130, i32 0, i32 1
  %fld.load132 = load i64, ptr %fld.gep131, align 8
  %addtmp133 = add i64 %fld.load132, 1
  %call.res134 = call ptr @"ccl::entry_new_str"(ptr @str.5.struct, ptr %ret.ub.alloc, i64 %fld.load129, i64 %addtmp133)
  %a.load135 = load ptr, ptr %var.doc, align 8
  %a.null136 = icmp eq ptr %a.load135, null
  br i1 %a.null136, label %a.create137, label %a.after138

choice.else98:                                    ; preds = %and.111.exit
  %var.load153 = load ptr, ptr %var.pl, align 8
  %fld.gep154 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load153, i32 0, i32 2
  %fld.load155 = load ptr, ptr %fld.gep154, align 8
  %call.res156 = call i64 @"ccl::find_first_eq"(ptr %fld.load155)
  store i64 %call.res156, ptr %var.eq_idx, align 8
  %var.load157 = load i64, ptr %var.eq_idx, align 8
  %cmptmp158 = icmp slt i64 %var.load157, 0
  br i1 %cmptmp158, label %choice.then159, label %choice.exit160

choice.exit99:                                    ; preds = %choice.exit275, %a.store
  br label %choice.exit53

a.create137:                                      ; preds = %choice.then97
  %arena.cur139 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 24)
  %arena.cur141 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 128)
  %a.len.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create140, i32 0, i32 0
  store i64 0, ptr %a.len.gep143, align 8
  %a.data.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create140, i32 0, i32 1
  store ptr %a.buf142, ptr %a.data.gep144, align 8
  %a.cap.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create140, i32 0, i32 2
  store i64 16, ptr %a.cap.gep145, align 8
  store ptr %a.create140, ptr %var.doc, align 8
  br label %a.after138

a.after138:                                       ; preds = %a.create137, %choice.then97
  %a.load2146 = load ptr, ptr %var.doc, align 8
  br label %a.check

a.check:                                          ; preds = %a.after138
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2146, i32 0, i32 0
  %a.len147 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2146, i32 0, i32 2
  %a.cap148 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len147, %a.cap148
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2146)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2146, i32 0, i32 1
  %a.cur.data149 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2146, i32 0, i32 0
  %a.cur.len150 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data149, i64 %a.cur.len150
  %slot.p2i = ptrtoint ptr %call.res134 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len150, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2146, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load151 = load i64, ptr %"var.idx'", align 8
  %addtmp152 = add i64 %var.load151, 1
  store i64 %addtmp152, ptr %"var.idx'", align 8
  br label %choice.exit99

choice.then159:                                   ; preds = %choice.else98
  %var.load161 = load ptr, ptr %var.file, align 8
  %var.load162 = load ptr, ptr %var.pl, align 8
  %fld.gep163 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load162, i32 0, i32 2
  %fld.load164 = load ptr, ptr %fld.gep163, align 8
  %concat.lhs = load i64, ptr @str.6.struct, align 8
  %concat.lhs165 = and i64 %concat.lhs, 281474976710655
  %concat.lhs166 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load164, i32 0, i32 0
  %concat.rhs167 = load i64, ptr %concat.rhs, align 8
  %concat.rhs168 = and i64 %concat.rhs167, 281474976710655
  %concat.rhs169 = getelementptr inbounds { i64, ptr }, ptr %fld.load164, i32 0, i32 1
  %concat.rhs170 = load ptr, ptr %concat.rhs169, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs165, i64 %concat.rhs168)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len171

choice.exit160:                                   ; preds = %ret.dead, %choice.else98
  %var.load190 = load ptr, ptr %var.pl, align 8
  %fld.gep191 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load190, i32 0, i32 2
  %fld.load192 = load ptr, ptr %fld.gep191, align 8
  %s.read.len193 = getelementptr inbounds { i64, ptr }, ptr %fld.load192, i32 0, i32 0
  %s.read.len194 = load i64, ptr %s.read.len193, align 8
  %s.read.len195 = and i64 %s.read.len194, 281474976710655
  %s.read.data196 = getelementptr inbounds { i64, ptr }, ptr %fld.load192, i32 0, i32 1
  %s.read.data197 = load ptr, ptr %s.read.data196, align 8
  %var.load198 = load i64, ptr %var.eq_idx, align 8
  %rel.start199 = add i64 %s.read.len195, 0
  %norm.start200 = select i1 false, i64 %rel.start199, i64 0
  %start.lt.0201 = icmp slt i64 %norm.start200, 0
  %c.start.0202 = select i1 %start.lt.0201, i64 0, i64 %norm.start200
  %start.gt.len203 = icmp sgt i64 %c.start.0202, %s.read.len195
  %final.start204 = select i1 %start.gt.len203, i64 %s.read.len195, i64 %c.start.0202
  %end.is_neg205 = icmp slt i64 %var.load198, 0
  %rel.end206 = add i64 %s.read.len195, %var.load198
  %norm.end207 = select i1 %end.is_neg205, i64 %rel.end206, i64 %var.load198
  %end.lt.0208 = icmp slt i64 %norm.end207, 0
  %c.end.0209 = select i1 %end.lt.0208, i64 0, i64 %norm.end207
  %end.gt.len210 = icmp sgt i64 %c.end.0209, %s.read.len195
  %final.end211 = select i1 %end.gt.len210, i64 %s.read.len195, i64 %c.end.0209
  %view.empty212 = icmp sle i64 %final.end211, %final.start204
  %view.len.sub213 = sub i64 %final.end211, %final.start204
  %view.len214 = select i1 %view.empty212, i64 0, i64 %view.len.sub213
  %view.data215 = getelementptr i8, ptr %s.read.data197, i64 %final.start204
  %arena.cur216 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 16)
  %str.build.len.gep218 = getelementptr inbounds { i64, ptr }, ptr %str.view217, i32 0, i32 0
  store i64 %view.len214, ptr %str.build.len.gep218, align 8
  %str.build.data.gep219 = getelementptr inbounds { i64, ptr }, ptr %str.view217, i32 0, i32 1
  store ptr %view.data215, ptr %str.build.data.gep219, align 8
  %call.res220 = call { i64, ptr } @"ccl::trim_str"(ptr %str.view217)
  %arena.cur221 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc222 = call ptr @dva_arena_alloc(ptr %arena.cur221, i64 16)
  store { i64, ptr } %call.res220, ptr %ret.ub.alloc222, align 8
  store ptr %ret.ub.alloc222, ptr %var.k, align 8
  %var.load223 = load ptr, ptr %var.pl, align 8
  %fld.gep224 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load223, i32 0, i32 2
  %fld.load225 = load ptr, ptr %fld.gep224, align 8
  %s.read.len226 = getelementptr inbounds { i64, ptr }, ptr %fld.load225, i32 0, i32 0
  %s.read.len227 = load i64, ptr %s.read.len226, align 8
  %s.read.len228 = and i64 %s.read.len227, 281474976710655
  %s.read.data229 = getelementptr inbounds { i64, ptr }, ptr %fld.load225, i32 0, i32 1
  %s.read.data230 = load ptr, ptr %s.read.data229, align 8
  %var.load231 = load i64, ptr %var.eq_idx, align 8
  %addtmp232 = add i64 %var.load231, 1
  %start.is_neg = icmp slt i64 %addtmp232, 0
  %rel.start233 = add i64 %s.read.len228, %addtmp232
  %norm.start234 = select i1 %start.is_neg, i64 %rel.start233, i64 %addtmp232
  %start.lt.0235 = icmp slt i64 %norm.start234, 0
  %c.start.0236 = select i1 %start.lt.0235, i64 0, i64 %norm.start234
  %start.gt.len237 = icmp sgt i64 %c.start.0236, %s.read.len228
  %final.start238 = select i1 %start.gt.len237, i64 %s.read.len228, i64 %c.start.0236
  %end.is_neg239 = icmp slt i64 %s.read.len228, 0
  %rel.end240 = add i64 %s.read.len228, %s.read.len228
  %norm.end241 = select i1 %end.is_neg239, i64 %rel.end240, i64 %s.read.len228
  %end.lt.0242 = icmp slt i64 %norm.end241, 0
  %c.end.0243 = select i1 %end.lt.0242, i64 0, i64 %norm.end241
  %end.gt.len244 = icmp sgt i64 %c.end.0243, %s.read.len228
  %final.end245 = select i1 %end.gt.len244, i64 %s.read.len228, i64 %c.end.0243
  %view.empty246 = icmp sle i64 %final.end245, %final.start238
  %view.len.sub247 = sub i64 %final.end245, %final.start238
  %view.len248 = select i1 %view.empty246, i64 0, i64 %view.len.sub247
  %view.data249 = getelementptr i8, ptr %s.read.data230, i64 %final.start238
  %arena.cur250 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 16)
  %str.build.len.gep252 = getelementptr inbounds { i64, ptr }, ptr %str.view251, i32 0, i32 0
  store i64 %view.len248, ptr %str.build.len.gep252, align 8
  %str.build.data.gep253 = getelementptr inbounds { i64, ptr }, ptr %str.view251, i32 0, i32 1
  store ptr %view.data249, ptr %str.build.data.gep253, align 8
  %call.res254 = call { i64, ptr } @"ccl::trim_str"(ptr %str.view251)
  %arena.cur255 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc256 = call ptr @dva_arena_alloc(ptr %arena.cur255, i64 16)
  store { i64, ptr } %call.res254, ptr %ret.ub.alloc256, align 8
  store ptr %ret.ub.alloc256, ptr %var.after_trim, align 8
  %var.load257 = load ptr, ptr %var.after_trim, align 8
  %eq.lhs.len258 = getelementptr inbounds { i64, ptr }, ptr %var.load257, i32 0, i32 0
  %eq.lhs.len259 = load i64, ptr %eq.lhs.len258, align 8
  %eq.lhs.len260 = and i64 %eq.lhs.len259, 281474976710655
  %eq.rhs.len261 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len262 = and i64 %eq.rhs.len261, 281474976710655
  %eq.len263 = icmp eq i64 %eq.lhs.len260, %eq.rhs.len262
  br i1 %eq.len263, label %str.eq.then264, label %str.eq.else265

concat.sum.len171:                                ; preds = %abort.dead, %choice.then159
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum172 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf173 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf173, label %str_overflow_abort175, label %concat.tot.len174

str_overflow_abort:                               ; preds = %choice.then159
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len171

concat.tot.len174:                                ; preds = %abort.dead176, %concat.sum.len171
  %arena.cur177 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 %sum172)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs166, i64 %concat.lhs165, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs165
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs170, i64 %concat.rhs168, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur178 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 16)
  %str.build.len.gep179 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep179, align 8
  %str.build.data.gep180 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep180, align 8
  %var.load181 = load ptr, ptr %var.pl, align 8
  %fld.gep182 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load181, i32 0, i32 0
  %fld.load183 = load i64, ptr %fld.gep182, align 8
  %var.load184 = load ptr, ptr %var.pl, align 8
  %fld.gep185 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load184, i32 0, i32 1
  %fld.load186 = load i64, ptr %fld.gep185, align 8
  %addtmp187 = add i64 %fld.load186, 1
  %call.res188 = call ptr @"ccl::ccl_error"(ptr %var.load161, ptr %concat.str, i64 %fld.load183, i64 %addtmp187)
  %p.to.i64 = ptrtoint ptr %call.res188 to i64
  %ram.pay189 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay189

str_overflow_abort175:                            ; preds = %concat.sum.len171
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead176:                                    ; No predecessors!
  br label %concat.tot.len174

ret.dead:                                         ; No predecessors!
  br label %choice.exit160

str.eq.then264:                                   ; preds = %choice.exit160
  %eq.lhs.data267 = getelementptr inbounds { i64, ptr }, ptr %var.load257, i32 0, i32 1
  %eq.lhs.data268 = load ptr, ptr %eq.lhs.data267, align 8
  %eq.rhs.data269 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp270 = call i32 @memcmp(ptr %eq.lhs.data268, ptr %eq.rhs.data269, i64 %eq.lhs.len260)
  %eq.cmp.zero271 = icmp eq i32 %eq.memcmp270, 0
  br label %str.eq.merge266

str.eq.else265:                                   ; preds = %choice.exit160
  br label %str.eq.merge266

str.eq.merge266:                                  ; preds = %str.eq.else265, %str.eq.then264
  %str.eq.result272 = phi i1 [ %eq.cmp.zero271, %str.eq.then264 ], [ false, %str.eq.else265 ]
  %str.neq = xor i1 %str.eq.result272, true
  br i1 %str.neq, label %choice.then273, label %choice.else274

choice.then273:                                   ; preds = %str.eq.merge266
  %var.load276 = load ptr, ptr %var.k, align 8
  %var.load277 = load ptr, ptr %var.after_trim, align 8
  %var.load278 = load ptr, ptr %var.pl, align 8
  %fld.gep279 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load278, i32 0, i32 0
  %fld.load280 = load i64, ptr %fld.gep279, align 8
  %var.load281 = load ptr, ptr %var.pl, align 8
  %fld.gep282 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load281, i32 0, i32 1
  %fld.load283 = load i64, ptr %fld.gep282, align 8
  %addtmp284 = add i64 %fld.load283, 1
  %call.res285 = call ptr @"ccl::entry_new_str"(ptr %var.load276, ptr %var.load277, i64 %fld.load280, i64 %addtmp284)
  %a.load286 = load ptr, ptr %var.doc, align 8
  %a.null287 = icmp eq ptr %a.load286, null
  br i1 %a.null287, label %a.create288, label %a.after289

choice.else274:                                   ; preds = %str.eq.merge266
  %var.load316 = load i64, ptr %"var.idx'", align 8
  %addtmp317 = add i64 %var.load316, 1
  store i64 %addtmp317, ptr %"var.next_idx'", align 8
  store i64 -1, ptr %"var.child_ind'", align 8
  store i64 0, ptr %loop.idx.112, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.112

choice.exit275:                                   ; preds = %choice.exit432, %a.store300
  br label %choice.exit99

a.create288:                                      ; preds = %choice.then273
  %arena.cur290 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 24)
  %arena.cur292 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf293 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 128)
  %a.len.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 0
  store i64 0, ptr %a.len.gep294, align 8
  %a.data.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 1
  store ptr %a.buf293, ptr %a.data.gep295, align 8
  %a.cap.gep296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 2
  store i64 16, ptr %a.cap.gep296, align 8
  store ptr %a.create291, ptr %var.doc, align 8
  br label %a.after289

a.after289:                                       ; preds = %a.create288, %choice.then273
  %a.load2297 = load ptr, ptr %var.doc, align 8
  br label %a.check298

a.check298:                                       ; preds = %a.after289
  %a.len301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 0
  %a.len302 = load i64, ptr %a.len301, align 8
  %a.cap303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 2
  %a.cap304 = load i64, ptr %a.cap303, align 8
  %a.needs.grow305 = icmp eq i64 %a.len302, %a.cap304
  br i1 %a.needs.grow305, label %a.grow299, label %a.store300

a.grow299:                                        ; preds = %a.check298
  call void @dva_array_grow(ptr %a.load2297)
  br label %a.store300

a.store300:                                       ; preds = %a.grow299, %a.check298
  %a.cur.data306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 1
  %a.cur.data307 = load ptr, ptr %a.cur.data306, align 8
  %a.cur.len308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 0
  %a.cur.len309 = load i64, ptr %a.cur.len308, align 8
  %a.elem.gep310 = getelementptr i64, ptr %a.cur.data307, i64 %a.cur.len309
  %slot.p2i311 = ptrtoint ptr %call.res285 to i64
  store i64 %slot.p2i311, ptr %a.elem.gep310, align 8
  %a.next.len312 = add i64 %a.cur.len309, 1
  %b.len.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2297, i32 0, i32 0
  store i64 %a.next.len312, ptr %b.len.gep313, align 8
  %var.load314 = load i64, ptr %"var.idx'", align 8
  %addtmp315 = add i64 %var.load314, 1
  store i64 %addtmp315, ptr %"var.idx'", align 8
  br label %choice.exit275

loop.header.112:                                  ; preds = %loop.latch.112, %choice.else274
  %counter.load318 = load i64, ptr %loop.idx.112, align 8
  br label %loop.body.112

loop.body.112:                                    ; preds = %loop.header.112
  %loop.rel.i319 = sub i64 %counter.load318, 0
  store i64 1, ptr %loop.step.112, align 8
  store i64 %loop.rel.i319, ptr %var._i320, align 8
  store i64 %counter.load318, ptr %var._321, align 8
  %var.load322 = load i64, ptr %"var.next_idx'", align 8
  %var.load323 = load i64, ptr %var.total, align 8
  %cmptmp324 = icmp sge i64 %var.load322, %var.load323
  br i1 %cmptmp324, label %choice.then325, label %choice.exit326

loop.exit.nat.112:                                ; No predecessors!
  br label %loop.exit.112

loop.latch.112:                                   ; preds = %choice.exit419
  %step.val = load i64, ptr %loop.step.112, align 8
  %loop.next = add i64 %counter.load318, %step.val
  store i64 %loop.next, ptr %loop.idx.112, align 8
  br label %loop.header.112

loop.exit.112:                                    ; preds = %choice.then417, %choice.then325, %loop.exit.nat.112
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load425 = load i64, ptr %"var.child_ind'", align 8
  %var.load426 = load ptr, ptr %var.pl, align 8
  %fld.gep427 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load426, i32 0, i32 1
  %fld.load428 = load i64, ptr %fld.gep427, align 8
  %cmptmp429 = icmp sle i64 %var.load425, %fld.load428
  br i1 %cmptmp429, label %choice.then430, label %choice.else431

choice.then325:                                   ; preds = %loop.body.112
  br label %loop.exit.112

choice.exit326:                                   ; preds = %loop.body.112
  %var.load327 = load ptr, ptr %var.lines, align 8
  %a.load328 = load ptr, ptr %var.lines, align 8
  %a.null329 = icmp eq ptr %a.load328, null
  br i1 %a.null329, label %a.create330, label %a.after331

a.create330:                                      ; preds = %choice.exit326
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
  store ptr %a.create333, ptr %var.lines, align 8
  br label %a.after331

a.after331:                                       ; preds = %a.create330, %choice.exit326
  %a.load2339 = load ptr, ptr %var.lines, align 8
  %var.load340 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull341 = icmp ne ptr %a.load2339, null
  br i1 %a.rd.nonnull341, label %a.rd.check342, label %a.rd.err.null344

a.rd.check342:                                    ; preds = %a.after331
  %a.rd.len347 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2339, i32 0, i32 0
  %a.rd.len348 = load i64, ptr %a.rd.len347, align 8
  %a.rd.ge0349 = icmp sge i64 %var.load340, 0
  %a.rd.lt350 = icmp slt i64 %var.load340, %a.rd.len348
  %a.rd.bounds351 = and i1 %a.rd.ge0349, %a.rd.lt350
  br i1 %a.rd.bounds351, label %a.rd.ok343, label %a.rd.err.oob345

a.rd.ok343:                                       ; preds = %a.rd.check342
  %a.rd.data352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2339, i32 0, i32 1
  %a.rd.data353 = load ptr, ptr %a.rd.data352, align 8
  %a.rd.elem.gep354 = getelementptr i64, ptr %a.rd.data353, i64 %var.load340
  %a.rd.elem355 = load i64, ptr %a.rd.elem.gep354, align 8
  br label %a.rd.done346

a.rd.err.null344:                                 ; preds = %a.after331
  %arena.cur356 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc357 = call ptr @dva_arena_alloc(ptr %arena.cur356, i64 56)
  %err.code.gep358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 0
  store i64 4011, ptr %err.code.gep358, align 8
  %err.msg.gep359 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep359, align 8
  %err.file.gep360 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep360, align 8
  %err.line.gep361 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 3
  store i64 214, ptr %err.line.gep361, align 8
  %err.col.gep362 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 4
  store i64 52, ptr %err.col.gep362, align 8
  %err.ctx.gep363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 5
  %err.ctx0.gep364 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep363, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep364, align 8
  %err.ctx1.gep365 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep363, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep365, align 8
  %err.p2i366 = ptrtoint ptr %err.alloc357 to i64
  br label %a.rd.done346

a.rd.err.oob345:                                  ; preds = %a.rd.check342
  %arena.cur367 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 56)
  %err.code.gep369 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc368, i32 0, i32 0
  store i64 4011, ptr %err.code.gep369, align 8
  %err.msg.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc368, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep370, align 8
  %err.file.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc368, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep371, align 8
  %err.line.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc368, i32 0, i32 3
  store i64 214, ptr %err.line.gep372, align 8
  %err.col.gep373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc368, i32 0, i32 4
  store i64 52, ptr %err.col.gep373, align 8
  %err.ctx.gep374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc368, i32 0, i32 5
  %err.ctx0.gep375 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep374, i32 0, i32 0
  store i64 %var.load340, ptr %err.ctx0.gep375, align 8
  %err.ctx1.gep376 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep374, i32 0, i32 1
  store i64 %a.rd.len348, ptr %err.ctx1.gep376, align 8
  %err.p2i377 = ptrtoint ptr %err.alloc368 to i64
  br label %a.rd.done346

a.rd.done346:                                     ; preds = %a.rd.err.oob345, %a.rd.err.null344, %a.rd.ok343
  %a.rd.tag378 = phi i1 [ true, %a.rd.ok343 ], [ false, %a.rd.err.null344 ], [ false, %a.rd.err.oob345 ]
  %a.rd.pay379 = phi i64 [ %a.rd.elem355, %a.rd.ok343 ], [ %err.p2i366, %a.rd.err.null344 ], [ %err.p2i377, %a.rd.err.oob345 ]
  %ram.tag380 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag378, 0
  %ram.pay381 = insertvalue { i1, i64 } %ram.tag380, i64 %a.rd.pay379, 1
  %ram.tag382 = extractvalue { i1, i64 } %ram.pay381, 0
  br i1 %ram.tag382, label %choice.then383, label %choice.else384

choice.then383:                                   ; preds = %a.rd.done346
  %ram.pay386 = extractvalue { i1, i64 } %ram.pay381, 1
  %pay.ptr387 = inttoptr i64 %ram.pay386 to ptr
  store ptr %pay.ptr387, ptr %var._388, align 8
  br label %choice.exit385

choice.else384:                                   ; preds = %a.rd.done346
  %ram.pay389 = extractvalue { i1, i64 } %ram.pay381, 1
  %pay.ptr390 = inttoptr i64 %ram.pay389 to ptr
  store ptr %pay.ptr390, ptr %var._391, align 8
  %arena.cur392 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc393 = call ptr @dva_arena_alloc(ptr %arena.cur392, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld394 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc393, i32 0, i32 0
  store i64 0, ptr %rec.fld394, align 8
  %rec.fld395 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc393, i32 0, i32 1
  store i64 0, ptr %rec.fld395, align 8
  %rec.fld396 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc393, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld396, align 8
  br label %choice.exit385

choice.exit385:                                   ; preds = %choice.else384, %choice.then383
  %choice.res397 = phi ptr [ %pay.ptr387, %choice.then383 ], [ %rec.alloc393, %choice.else384 ]
  store ptr %choice.res397, ptr %var.cand, align 8
  %var.load398 = load ptr, ptr %var.cand, align 8
  %fld.gep399 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load398, i32 0, i32 2
  %fld.load400 = load ptr, ptr %fld.gep399, align 8
  %eq.lhs.len401 = getelementptr inbounds { i64, ptr }, ptr %fld.load400, i32 0, i32 0
  %eq.lhs.len402 = load i64, ptr %eq.lhs.len401, align 8
  %eq.lhs.len403 = and i64 %eq.lhs.len402, 281474976710655
  %eq.rhs.len404 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len405 = and i64 %eq.rhs.len404, 281474976710655
  %eq.len406 = icmp eq i64 %eq.lhs.len403, %eq.rhs.len405
  br i1 %eq.len406, label %str.eq.then407, label %str.eq.else408

str.eq.then407:                                   ; preds = %choice.exit385
  %eq.lhs.data410 = getelementptr inbounds { i64, ptr }, ptr %fld.load400, i32 0, i32 1
  %eq.lhs.data411 = load ptr, ptr %eq.lhs.data410, align 8
  %eq.rhs.data412 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp413 = call i32 @memcmp(ptr %eq.lhs.data411, ptr %eq.rhs.data412, i64 %eq.lhs.len403)
  %eq.cmp.zero414 = icmp eq i32 %eq.memcmp413, 0
  br label %str.eq.merge409

str.eq.else408:                                   ; preds = %choice.exit385
  br label %str.eq.merge409

str.eq.merge409:                                  ; preds = %str.eq.else408, %str.eq.then407
  %str.eq.result415 = phi i1 [ %eq.cmp.zero414, %str.eq.then407 ], [ false, %str.eq.else408 ]
  %str.neq416 = xor i1 %str.eq.result415, true
  br i1 %str.neq416, label %choice.then417, label %choice.else418

choice.then417:                                   ; preds = %str.eq.merge409
  %var.load420 = load ptr, ptr %var.cand, align 8
  %fld.gep421 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load420, i32 0, i32 1
  %fld.load422 = load i64, ptr %fld.gep421, align 8
  store i64 %fld.load422, ptr %"var.child_ind'", align 8
  br label %loop.exit.112

choice.else418:                                   ; preds = %str.eq.merge409
  %var.load423 = load i64, ptr %"var.next_idx'", align 8
  %addtmp424 = add i64 %var.load423, 1
  store i64 %addtmp424, ptr %"var.next_idx'", align 8
  br label %choice.exit419

choice.exit419:                                   ; preds = %choice.else418
  br label %loop.latch.112

choice.then430:                                   ; preds = %loop.exit.112
  %var.load433 = load ptr, ptr %var.k, align 8
  %var.load434 = load ptr, ptr %var.pl, align 8
  %fld.gep435 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load434, i32 0, i32 0
  %fld.load436 = load i64, ptr %fld.gep435, align 8
  %var.load437 = load ptr, ptr %var.pl, align 8
  %fld.gep438 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load437, i32 0, i32 1
  %fld.load439 = load i64, ptr %fld.gep438, align 8
  %addtmp440 = add i64 %fld.load439, 1
  %call.res441 = call ptr @"ccl::entry_new_str"(ptr %var.load433, ptr @str.0.struct, i64 %fld.load436, i64 %addtmp440)
  %a.load442 = load ptr, ptr %var.doc, align 8
  %a.null443 = icmp eq ptr %a.load442, null
  br i1 %a.null443, label %a.create444, label %a.after445

choice.else431:                                   ; preds = %loop.exit.112
  %var.load472 = load ptr, ptr %var.lines, align 8
  %a.load473 = load ptr, ptr %var.lines, align 8
  %a.null474 = icmp eq ptr %a.load473, null
  br i1 %a.null474, label %a.create475, label %a.after476

choice.exit432:                                   ; preds = %choice.exit550, %a.store456
  br label %choice.exit275

a.create444:                                      ; preds = %choice.then430
  %arena.cur446 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create447 = call ptr @dva_arena_alloc(ptr %arena.cur446, i64 24)
  %arena.cur448 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf449 = call ptr @dva_arena_alloc(ptr %arena.cur448, i64 128)
  %a.len.gep450 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create447, i32 0, i32 0
  store i64 0, ptr %a.len.gep450, align 8
  %a.data.gep451 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create447, i32 0, i32 1
  store ptr %a.buf449, ptr %a.data.gep451, align 8
  %a.cap.gep452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create447, i32 0, i32 2
  store i64 16, ptr %a.cap.gep452, align 8
  store ptr %a.create447, ptr %var.doc, align 8
  br label %a.after445

a.after445:                                       ; preds = %a.create444, %choice.then430
  %a.load2453 = load ptr, ptr %var.doc, align 8
  br label %a.check454

a.check454:                                       ; preds = %a.after445
  %a.len457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2453, i32 0, i32 0
  %a.len458 = load i64, ptr %a.len457, align 8
  %a.cap459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2453, i32 0, i32 2
  %a.cap460 = load i64, ptr %a.cap459, align 8
  %a.needs.grow461 = icmp eq i64 %a.len458, %a.cap460
  br i1 %a.needs.grow461, label %a.grow455, label %a.store456

a.grow455:                                        ; preds = %a.check454
  call void @dva_array_grow(ptr %a.load2453)
  br label %a.store456

a.store456:                                       ; preds = %a.grow455, %a.check454
  %a.cur.data462 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2453, i32 0, i32 1
  %a.cur.data463 = load ptr, ptr %a.cur.data462, align 8
  %a.cur.len464 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2453, i32 0, i32 0
  %a.cur.len465 = load i64, ptr %a.cur.len464, align 8
  %a.elem.gep466 = getelementptr i64, ptr %a.cur.data463, i64 %a.cur.len465
  %slot.p2i467 = ptrtoint ptr %call.res441 to i64
  store i64 %slot.p2i467, ptr %a.elem.gep466, align 8
  %a.next.len468 = add i64 %a.cur.len465, 1
  %b.len.gep469 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2453, i32 0, i32 0
  store i64 %a.next.len468, ptr %b.len.gep469, align 8
  %var.load470 = load i64, ptr %"var.idx'", align 8
  %addtmp471 = add i64 %var.load470, 1
  store i64 %addtmp471, ptr %"var.idx'", align 8
  br label %choice.exit432

a.create475:                                      ; preds = %choice.else431
  %arena.cur477 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create478 = call ptr @dva_arena_alloc(ptr %arena.cur477, i64 24)
  %arena.cur479 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf480 = call ptr @dva_arena_alloc(ptr %arena.cur479, i64 128)
  %a.len.gep481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create478, i32 0, i32 0
  store i64 0, ptr %a.len.gep481, align 8
  %a.data.gep482 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create478, i32 0, i32 1
  store ptr %a.buf480, ptr %a.data.gep482, align 8
  %a.cap.gep483 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create478, i32 0, i32 2
  store i64 16, ptr %a.cap.gep483, align 8
  store ptr %a.create478, ptr %var.lines, align 8
  br label %a.after476

a.after476:                                       ; preds = %a.create475, %choice.else431
  %a.load2484 = load ptr, ptr %var.lines, align 8
  %var.load485 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull486 = icmp ne ptr %a.load2484, null
  br i1 %a.rd.nonnull486, label %a.rd.check487, label %a.rd.err.null489

a.rd.check487:                                    ; preds = %a.after476
  %a.rd.len492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2484, i32 0, i32 0
  %a.rd.len493 = load i64, ptr %a.rd.len492, align 8
  %a.rd.ge0494 = icmp sge i64 %var.load485, 0
  %a.rd.lt495 = icmp slt i64 %var.load485, %a.rd.len493
  %a.rd.bounds496 = and i1 %a.rd.ge0494, %a.rd.lt495
  br i1 %a.rd.bounds496, label %a.rd.ok488, label %a.rd.err.oob490

a.rd.ok488:                                       ; preds = %a.rd.check487
  %a.rd.data497 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2484, i32 0, i32 1
  %a.rd.data498 = load ptr, ptr %a.rd.data497, align 8
  %a.rd.elem.gep499 = getelementptr i64, ptr %a.rd.data498, i64 %var.load485
  %a.rd.elem500 = load i64, ptr %a.rd.elem.gep499, align 8
  br label %a.rd.done491

a.rd.err.null489:                                 ; preds = %a.after476
  %arena.cur501 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 56)
  %err.code.gep503 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 0
  store i64 4011, ptr %err.code.gep503, align 8
  %err.msg.gep504 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep504, align 8
  %err.file.gep505 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep505, align 8
  %err.line.gep506 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 3
  store i64 226, ptr %err.line.gep506, align 8
  %err.col.gep507 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 4
  store i64 60, ptr %err.col.gep507, align 8
  %err.ctx.gep508 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 5
  %err.ctx0.gep509 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep508, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep509, align 8
  %err.ctx1.gep510 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep508, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep510, align 8
  %err.p2i511 = ptrtoint ptr %err.alloc502 to i64
  br label %a.rd.done491

a.rd.err.oob490:                                  ; preds = %a.rd.check487
  %arena.cur512 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc513 = call ptr @dva_arena_alloc(ptr %arena.cur512, i64 56)
  %err.code.gep514 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc513, i32 0, i32 0
  store i64 4011, ptr %err.code.gep514, align 8
  %err.msg.gep515 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc513, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep515, align 8
  %err.file.gep516 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc513, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep516, align 8
  %err.line.gep517 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc513, i32 0, i32 3
  store i64 226, ptr %err.line.gep517, align 8
  %err.col.gep518 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc513, i32 0, i32 4
  store i64 60, ptr %err.col.gep518, align 8
  %err.ctx.gep519 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc513, i32 0, i32 5
  %err.ctx0.gep520 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep519, i32 0, i32 0
  store i64 %var.load485, ptr %err.ctx0.gep520, align 8
  %err.ctx1.gep521 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep519, i32 0, i32 1
  store i64 %a.rd.len493, ptr %err.ctx1.gep521, align 8
  %err.p2i522 = ptrtoint ptr %err.alloc513 to i64
  br label %a.rd.done491

a.rd.done491:                                     ; preds = %a.rd.err.oob490, %a.rd.err.null489, %a.rd.ok488
  %a.rd.tag523 = phi i1 [ true, %a.rd.ok488 ], [ false, %a.rd.err.null489 ], [ false, %a.rd.err.oob490 ]
  %a.rd.pay524 = phi i64 [ %a.rd.elem500, %a.rd.ok488 ], [ %err.p2i511, %a.rd.err.null489 ], [ %err.p2i522, %a.rd.err.oob490 ]
  %ram.tag525 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag523, 0
  %ram.pay526 = insertvalue { i1, i64 } %ram.tag525, i64 %a.rd.pay524, 1
  %ram.tag527 = extractvalue { i1, i64 } %ram.pay526, 0
  br i1 %ram.tag527, label %choice.then528, label %choice.else529

choice.then528:                                   ; preds = %a.rd.done491
  %ram.pay531 = extractvalue { i1, i64 } %ram.pay526, 1
  %pay.ptr532 = inttoptr i64 %ram.pay531 to ptr
  store ptr %pay.ptr532, ptr %var._533, align 8
  br label %choice.exit530

choice.else529:                                   ; preds = %a.rd.done491
  %ram.pay534 = extractvalue { i1, i64 } %ram.pay526, 1
  %pay.ptr535 = inttoptr i64 %ram.pay534 to ptr
  store ptr %pay.ptr535, ptr %var._536, align 8
  %arena.cur537 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc538 = call ptr @dva_arena_alloc(ptr %arena.cur537, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld539 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc538, i32 0, i32 0
  store i64 0, ptr %rec.fld539, align 8
  %rec.fld540 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc538, i32 0, i32 1
  store i64 0, ptr %rec.fld540, align 8
  %rec.fld541 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc538, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld541, align 8
  br label %choice.exit530

choice.exit530:                                   ; preds = %choice.else529, %choice.then528
  %choice.res542 = phi ptr [ %pay.ptr532, %choice.then528 ], [ %rec.alloc538, %choice.else529 ]
  store ptr %choice.res542, ptr %var.cand_line, align 8
  %var.load543 = load ptr, ptr %var.cand_line, align 8
  %fld.gep544 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load543, i32 0, i32 2
  %fld.load545 = load ptr, ptr %fld.gep544, align 8
  %call.res546 = call i64 @"ccl::find_first_eq"(ptr %fld.load545)
  %cmptmp547 = icmp sge i64 %call.res546, 0
  br i1 %cmptmp547, label %choice.then548, label %choice.else549

choice.then548:                                   ; preds = %choice.exit530
  %var.load551 = load ptr, ptr %var.lines, align 8
  %a.load552 = load ptr, ptr %var.lines, align 8
  %a.null553 = icmp eq ptr %a.load552, null
  br i1 %a.null553, label %a.create554, label %a.after555

choice.else549:                                   ; preds = %choice.exit530
  %arena.cur612 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur612, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep613 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum614 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf615 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf615, label %str_overflow_abort617, label %b.buf.len616

choice.exit550:                                   ; preds = %a.store850, %a.store595
  br label %choice.exit432

a.create554:                                      ; preds = %choice.then548
  %arena.cur556 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create557 = call ptr @dva_arena_alloc(ptr %arena.cur556, i64 24)
  %arena.cur558 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf559 = call ptr @dva_arena_alloc(ptr %arena.cur558, i64 128)
  %a.len.gep560 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create557, i32 0, i32 0
  store i64 0, ptr %a.len.gep560, align 8
  %a.data.gep561 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create557, i32 0, i32 1
  store ptr %a.buf559, ptr %a.data.gep561, align 8
  %a.cap.gep562 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create557, i32 0, i32 2
  store i64 16, ptr %a.cap.gep562, align 8
  store ptr %a.create557, ptr %var.lines, align 8
  br label %a.after555

a.after555:                                       ; preds = %a.create554, %choice.then548
  %a.load2563 = load ptr, ptr %var.lines, align 8
  %var.load564 = load i64, ptr %"var.next_idx'", align 8
  %var.load565 = load i64, ptr %"var.child_ind'", align 8
  %var.load566 = load ptr, ptr %var.file, align 8
  %call.res567 = call { i1, i64 } @"ccl::parse_block_from"(ptr %a.load2563, i64 %var.load564, i64 %var.load565, ptr %var.load566)
  %prop.is_pos = extractvalue { i1, i64 } %call.res567, 0
  br i1 %prop.is_pos, label %prop.pos.113, label %prop.ret.113

prop.pos.113:                                     ; preds = %a.after555
  %prop.pay.pos = extractvalue { i1, i64 } %call.res567, 1
  %pay.ptr568 = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr568, ptr %var.cres, align 8
  %var.load569 = load ptr, ptr %var.k, align 8
  %var.load570 = load ptr, ptr %var.cres, align 8
  %fld.gep571 = getelementptr inbounds { ptr, i64 }, ptr %var.load570, i32 0, i32 0
  %fld.load572 = load ptr, ptr %fld.gep571, align 8
  %var.load573 = load ptr, ptr %var.pl, align 8
  %fld.gep574 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load573, i32 0, i32 0
  %fld.load575 = load i64, ptr %fld.gep574, align 8
  %var.load576 = load ptr, ptr %var.pl, align 8
  %fld.gep577 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load576, i32 0, i32 1
  %fld.load578 = load i64, ptr %fld.gep577, align 8
  %addtmp579 = add i64 %fld.load578, 1
  %call.res580 = call ptr @"ccl::entry_new_block"(ptr %var.load569, ptr %fld.load572, i64 %fld.load575, i64 %addtmp579)
  %a.load581 = load ptr, ptr %var.doc, align 8
  %a.null582 = icmp eq ptr %a.load581, null
  br i1 %a.null582, label %a.create583, label %a.after584

prop.ret.113:                                     ; preds = %a.after555
  ret { i1, i64 } %call.res567

a.create583:                                      ; preds = %prop.pos.113
  %arena.cur585 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create586 = call ptr @dva_arena_alloc(ptr %arena.cur585, i64 24)
  %arena.cur587 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf588 = call ptr @dva_arena_alloc(ptr %arena.cur587, i64 128)
  %a.len.gep589 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create586, i32 0, i32 0
  store i64 0, ptr %a.len.gep589, align 8
  %a.data.gep590 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create586, i32 0, i32 1
  store ptr %a.buf588, ptr %a.data.gep590, align 8
  %a.cap.gep591 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create586, i32 0, i32 2
  store i64 16, ptr %a.cap.gep591, align 8
  store ptr %a.create586, ptr %var.doc, align 8
  br label %a.after584

a.after584:                                       ; preds = %a.create583, %prop.pos.113
  %a.load2592 = load ptr, ptr %var.doc, align 8
  br label %a.check593

a.check593:                                       ; preds = %a.after584
  %a.len596 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2592, i32 0, i32 0
  %a.len597 = load i64, ptr %a.len596, align 8
  %a.cap598 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2592, i32 0, i32 2
  %a.cap599 = load i64, ptr %a.cap598, align 8
  %a.needs.grow600 = icmp eq i64 %a.len597, %a.cap599
  br i1 %a.needs.grow600, label %a.grow594, label %a.store595

a.grow594:                                        ; preds = %a.check593
  call void @dva_array_grow(ptr %a.load2592)
  br label %a.store595

a.store595:                                       ; preds = %a.grow594, %a.check593
  %a.cur.data601 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2592, i32 0, i32 1
  %a.cur.data602 = load ptr, ptr %a.cur.data601, align 8
  %a.cur.len603 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2592, i32 0, i32 0
  %a.cur.len604 = load i64, ptr %a.cur.len603, align 8
  %a.elem.gep605 = getelementptr i64, ptr %a.cur.data602, i64 %a.cur.len604
  %slot.p2i606 = ptrtoint ptr %call.res580 to i64
  store i64 %slot.p2i606, ptr %a.elem.gep605, align 8
  %a.next.len607 = add i64 %a.cur.len604, 1
  %b.len.gep608 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2592, i32 0, i32 0
  store i64 %a.next.len607, ptr %b.len.gep608, align 8
  %var.load609 = load ptr, ptr %var.cres, align 8
  %fld.gep610 = getelementptr inbounds { ptr, i64 }, ptr %var.load609, i32 0, i32 1
  %fld.load611 = load i64, ptr %fld.gep610, align 8
  store i64 %fld.load611, ptr %"var.idx'", align 8
  br label %choice.exit550

b.buf.len616:                                     ; preds = %abort.dead618, %choice.else549
  %arena.cur619 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur619, i64 %sum614)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep613, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.tb, align 8
  store i64 0, ptr %loop.idx.114, align 8
  %cycle.prev.u620 = load i64, ptr %var._, align 8
  %cycle.prev.i621 = load i64, ptr %var._i, align 8
  br label %loop.header.114

str_overflow_abort617:                            ; preds = %choice.else549
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead618:                                    ; No predecessors!
  br label %b.buf.len616

loop.header.114:                                  ; preds = %loop.latch.114, %b.buf.len616
  %counter.load622 = load i64, ptr %loop.idx.114, align 8
  br label %loop.body.114

loop.body.114:                                    ; preds = %loop.header.114
  %loop.rel.i623 = sub i64 %counter.load622, 0
  store i64 1, ptr %loop.step.114, align 8
  store i64 %loop.rel.i623, ptr %var._i624, align 8
  store i64 %counter.load622, ptr %var._625, align 8
  %var.load626 = load i64, ptr %"var.next_idx'", align 8
  %var.load627 = load i64, ptr %var.total, align 8
  %cmptmp628 = icmp sge i64 %var.load626, %var.load627
  br i1 %cmptmp628, label %choice.then629, label %choice.exit630

loop.exit.nat.114:                                ; No predecessors!
  br label %loop.exit.114

loop.latch.114:                                   ; preds = %choice.exit722
  %step.val817 = load i64, ptr %loop.step.114, align 8
  %loop.next818 = add i64 %counter.load622, %step.val817
  store i64 %loop.next818, ptr %loop.idx.114, align 8
  br label %loop.header.114

loop.exit.114:                                    ; preds = %choice.then743, %choice.then629, %loop.exit.nat.114
  store i64 %cycle.prev.u620, ptr %var._, align 8
  store i64 %cycle.prev.i621, ptr %var._i, align 8
  %var.load819 = load ptr, ptr %var.k, align 8
  %var.load820 = load ptr, ptr %var.tb, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load820, i32 0, i32 0
  %b.freeze.len821 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load820, i32 0, i32 1
  %b.freeze.data822 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then629:                                   ; preds = %loop.body.114
  br label %loop.exit.114

choice.exit630:                                   ; preds = %loop.body.114
  %var.load631 = load ptr, ptr %var.lines, align 8
  %a.load632 = load ptr, ptr %var.lines, align 8
  %a.null633 = icmp eq ptr %a.load632, null
  br i1 %a.null633, label %a.create634, label %a.after635

a.create634:                                      ; preds = %choice.exit630
  %arena.cur636 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create637 = call ptr @dva_arena_alloc(ptr %arena.cur636, i64 24)
  %arena.cur638 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf639 = call ptr @dva_arena_alloc(ptr %arena.cur638, i64 128)
  %a.len.gep640 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create637, i32 0, i32 0
  store i64 0, ptr %a.len.gep640, align 8
  %a.data.gep641 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create637, i32 0, i32 1
  store ptr %a.buf639, ptr %a.data.gep641, align 8
  %a.cap.gep642 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create637, i32 0, i32 2
  store i64 16, ptr %a.cap.gep642, align 8
  store ptr %a.create637, ptr %var.lines, align 8
  br label %a.after635

a.after635:                                       ; preds = %a.create634, %choice.exit630
  %a.load2643 = load ptr, ptr %var.lines, align 8
  %var.load644 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull645 = icmp ne ptr %a.load2643, null
  br i1 %a.rd.nonnull645, label %a.rd.check646, label %a.rd.err.null648

a.rd.check646:                                    ; preds = %a.after635
  %a.rd.len651 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2643, i32 0, i32 0
  %a.rd.len652 = load i64, ptr %a.rd.len651, align 8
  %a.rd.ge0653 = icmp sge i64 %var.load644, 0
  %a.rd.lt654 = icmp slt i64 %var.load644, %a.rd.len652
  %a.rd.bounds655 = and i1 %a.rd.ge0653, %a.rd.lt654
  br i1 %a.rd.bounds655, label %a.rd.ok647, label %a.rd.err.oob649

a.rd.ok647:                                       ; preds = %a.rd.check646
  %a.rd.data656 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2643, i32 0, i32 1
  %a.rd.data657 = load ptr, ptr %a.rd.data656, align 8
  %a.rd.elem.gep658 = getelementptr i64, ptr %a.rd.data657, i64 %var.load644
  %a.rd.elem659 = load i64, ptr %a.rd.elem.gep658, align 8
  br label %a.rd.done650

a.rd.err.null648:                                 ; preds = %a.after635
  %arena.cur660 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc661 = call ptr @dva_arena_alloc(ptr %arena.cur660, i64 56)
  %err.code.gep662 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc661, i32 0, i32 0
  store i64 4011, ptr %err.code.gep662, align 8
  %err.msg.gep663 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc661, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep663, align 8
  %err.file.gep664 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc661, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep664, align 8
  %err.line.gep665 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc661, i32 0, i32 3
  store i64 237, ptr %err.line.gep665, align 8
  %err.col.gep666 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc661, i32 0, i32 4
  store i64 62, ptr %err.col.gep666, align 8
  %err.ctx.gep667 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc661, i32 0, i32 5
  %err.ctx0.gep668 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep667, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep668, align 8
  %err.ctx1.gep669 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep667, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep669, align 8
  %err.p2i670 = ptrtoint ptr %err.alloc661 to i64
  br label %a.rd.done650

a.rd.err.oob649:                                  ; preds = %a.rd.check646
  %arena.cur671 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc672 = call ptr @dva_arena_alloc(ptr %arena.cur671, i64 56)
  %err.code.gep673 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc672, i32 0, i32 0
  store i64 4011, ptr %err.code.gep673, align 8
  %err.msg.gep674 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc672, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep674, align 8
  %err.file.gep675 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc672, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep675, align 8
  %err.line.gep676 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc672, i32 0, i32 3
  store i64 237, ptr %err.line.gep676, align 8
  %err.col.gep677 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc672, i32 0, i32 4
  store i64 62, ptr %err.col.gep677, align 8
  %err.ctx.gep678 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc672, i32 0, i32 5
  %err.ctx0.gep679 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep678, i32 0, i32 0
  store i64 %var.load644, ptr %err.ctx0.gep679, align 8
  %err.ctx1.gep680 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep678, i32 0, i32 1
  store i64 %a.rd.len652, ptr %err.ctx1.gep680, align 8
  %err.p2i681 = ptrtoint ptr %err.alloc672 to i64
  br label %a.rd.done650

a.rd.done650:                                     ; preds = %a.rd.err.oob649, %a.rd.err.null648, %a.rd.ok647
  %a.rd.tag682 = phi i1 [ true, %a.rd.ok647 ], [ false, %a.rd.err.null648 ], [ false, %a.rd.err.oob649 ]
  %a.rd.pay683 = phi i64 [ %a.rd.elem659, %a.rd.ok647 ], [ %err.p2i670, %a.rd.err.null648 ], [ %err.p2i681, %a.rd.err.oob649 ]
  %ram.tag684 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag682, 0
  %ram.pay685 = insertvalue { i1, i64 } %ram.tag684, i64 %a.rd.pay683, 1
  %ram.tag686 = extractvalue { i1, i64 } %ram.pay685, 0
  br i1 %ram.tag686, label %choice.then687, label %choice.else688

choice.then687:                                   ; preds = %a.rd.done650
  %ram.pay690 = extractvalue { i1, i64 } %ram.pay685, 1
  %pay.ptr691 = inttoptr i64 %ram.pay690 to ptr
  store ptr %pay.ptr691, ptr %var._692, align 8
  br label %choice.exit689

choice.else688:                                   ; preds = %a.rd.done650
  %ram.pay693 = extractvalue { i1, i64 } %ram.pay685, 1
  %pay.ptr694 = inttoptr i64 %ram.pay693 to ptr
  store ptr %pay.ptr694, ptr %var._695, align 8
  %arena.cur696 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc697 = call ptr @dva_arena_alloc(ptr %arena.cur696, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld698 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc697, i32 0, i32 0
  store i64 0, ptr %rec.fld698, align 8
  %rec.fld699 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc697, i32 0, i32 1
  store i64 0, ptr %rec.fld699, align 8
  %rec.fld700 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc697, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld700, align 8
  br label %choice.exit689

choice.exit689:                                   ; preds = %choice.else688, %choice.then687
  %choice.res701 = phi ptr [ %pay.ptr691, %choice.then687 ], [ %rec.alloc697, %choice.else688 ]
  store ptr %choice.res701, ptr %var.cl, align 8
  %var.load702 = load ptr, ptr %var.cl, align 8
  %fld.gep703 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load702, i32 0, i32 2
  %fld.load704 = load ptr, ptr %fld.gep703, align 8
  %eq.lhs.len705 = getelementptr inbounds { i64, ptr }, ptr %fld.load704, i32 0, i32 0
  %eq.lhs.len706 = load i64, ptr %eq.lhs.len705, align 8
  %eq.lhs.len707 = and i64 %eq.lhs.len706, 281474976710655
  %eq.rhs.len708 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len709 = and i64 %eq.rhs.len708, 281474976710655
  %eq.len710 = icmp eq i64 %eq.lhs.len707, %eq.rhs.len709
  br i1 %eq.len710, label %str.eq.then711, label %str.eq.else712

str.eq.then711:                                   ; preds = %choice.exit689
  %eq.lhs.data714 = getelementptr inbounds { i64, ptr }, ptr %fld.load704, i32 0, i32 1
  %eq.lhs.data715 = load ptr, ptr %eq.lhs.data714, align 8
  %eq.rhs.data716 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp717 = call i32 @memcmp(ptr %eq.lhs.data715, ptr %eq.rhs.data716, i64 %eq.lhs.len707)
  %eq.cmp.zero718 = icmp eq i32 %eq.memcmp717, 0
  br label %str.eq.merge713

str.eq.else712:                                   ; preds = %choice.exit689
  br label %str.eq.merge713

str.eq.merge713:                                  ; preds = %str.eq.else712, %str.eq.then711
  %str.eq.result719 = phi i1 [ %eq.cmp.zero718, %str.eq.then711 ], [ false, %str.eq.else712 ]
  br i1 %str.eq.result719, label %choice.then720, label %choice.else721

choice.then720:                                   ; preds = %str.eq.merge713
  %b.load = load ptr, ptr %var.tb, align 8
  br i1 true, label %b.byte_ok, label %b.byte_err

choice.else721:                                   ; preds = %str.eq.merge713
  %var.load738 = load ptr, ptr %var.cl, align 8
  %fld.gep739 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load738, i32 0, i32 1
  %fld.load740 = load i64, ptr %fld.gep739, align 8
  %var.load741 = load i64, ptr %"var.child_ind'", align 8
  %cmptmp742 = icmp slt i64 %fld.load740, %var.load741
  br i1 %cmptmp742, label %choice.then743, label %choice.exit744

choice.exit722:                                   ; preds = %b.grow_done, %b.push_done
  br label %loop.latch.114

b.byte_ok:                                        ; preds = %abort.dead723, %choice.then720
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len724 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap725 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data726 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len724, %b.cap725
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then720
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead723:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap725, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum727 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf728 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf728, label %str_overflow_abort730, label %b.new.buf.len729

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len729
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data733 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len734 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data733, i64 %b.cur.len734
  store i8 10, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len734, 1
  %b.nul = getelementptr i8, ptr %b.cur.data733, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep735 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep735, align 8
  %var.load736 = load i64, ptr %"var.next_idx'", align 8
  %addtmp737 = add i64 %var.load736, 1
  store i64 %addtmp737, ptr %"var.next_idx'", align 8
  br label %choice.exit722

b.new.buf.len729:                                 ; preds = %abort.dead731, %b.grow
  %arena.cur732 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur732, i64 %sum727)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data726, i64 %b.len724, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len724
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort730:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead731:                                    ; No predecessors!
  br label %b.new.buf.len729

choice.then743:                                   ; preds = %choice.else721
  br label %loop.exit.114

choice.exit744:                                   ; preds = %choice.else721
  %var.load745 = load ptr, ptr %var.tb, align 8
  %b.len746 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load745, i32 0, i32 0
  %b.len747 = load i64, ptr %b.len746, align 8
  %cmptmp748 = icmp sgt i64 %b.len747, 0
  br i1 %cmptmp748, label %choice.then749, label %choice.exit750

choice.then749:                                   ; preds = %choice.exit744
  %b.load751 = load ptr, ptr %var.tb, align 8
  br i1 true, label %b.byte_ok752, label %b.byte_err753

choice.exit750:                                   ; preds = %b.push_done764, %choice.exit744
  %b.load787 = load ptr, ptr %var.tb, align 8
  %var.load788 = load ptr, ptr %var.cl, align 8
  %fld.gep789 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load788, i32 0, i32 2
  %fld.load790 = load ptr, ptr %fld.gep789, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load790, i32 0, i32 0
  %app.str.len791 = load i64, ptr %app.str.len, align 8
  %app.str.len792 = and i64 %app.str.len791, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load790, i32 0, i32 1
  %app.str.data793 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 0
  %b.app.cur.len794 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len794, i64 %app.str.len792)
  %sum795 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf796 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf796, label %str_overflow_abort798, label %b.app.new.len797

b.byte_ok752:                                     ; preds = %abort.dead754, %choice.then749
  %b.len755 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load751, i32 0, i32 0
  %b.len756 = load i64, ptr %b.len755, align 8
  %b.cap757 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load751, i32 0, i32 2
  %b.cap758 = load i64, ptr %b.cap757, align 8
  %b.data759 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load751, i32 0, i32 1
  %b.data760 = load ptr, ptr %b.data759, align 8
  %b.needs.grow761 = icmp eq i64 %b.len756, %b.cap758
  br i1 %b.needs.grow761, label %b.grow762, label %b.nogrow763

b.byte_err753:                                    ; preds = %choice.then749
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead754:                                    ; No predecessors!
  br label %b.byte_ok752

b.grow762:                                        ; preds = %b.byte_ok752
  %b.cap2765 = mul i64 %b.cap758, 2
  %b.cap.small766 = icmp slt i64 %b.cap2765, 16
  %b.new.cap767 = select i1 %b.cap.small766, i64 16, i64 %b.cap2765
  %b.new.buf.len768 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap767, i64 1)
  %sum769 = extractvalue { i64, i1 } %b.new.buf.len768, 0
  %ovf770 = extractvalue { i64, i1 } %b.new.buf.len768, 1
  br i1 %ovf770, label %str_overflow_abort772, label %b.new.buf.len771

b.nogrow763:                                      ; preds = %b.byte_ok752
  br label %b.push_done764

b.push_done764:                                   ; preds = %b.nogrow763, %b.new.buf.len771
  %b.cur.data779 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load751, i32 0, i32 1
  %b.cur.data780 = load ptr, ptr %b.cur.data779, align 8
  %b.cur.len781 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load751, i32 0, i32 0
  %b.cur.len782 = load i64, ptr %b.cur.len781, align 8
  %b.byte.gep783 = getelementptr i8, ptr %b.cur.data780, i64 %b.cur.len782
  store i8 10, ptr %b.byte.gep783, align 1
  %b.next.len784 = add i64 %b.cur.len782, 1
  %b.nul785 = getelementptr i8, ptr %b.cur.data780, i64 %b.next.len784
  store i8 0, ptr %b.nul785, align 1
  %b.len.gep786 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load751, i32 0, i32 0
  store i64 %b.next.len784, ptr %b.len.gep786, align 8
  br label %choice.exit750

b.new.buf.len771:                                 ; preds = %abort.dead773, %b.grow762
  %arena.cur774 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf775 = call ptr @dva_arena_alloc(ptr %arena.cur774, i64 %sum769)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf775, ptr align 1 %b.data760, i64 %b.len756, i1 false)
  %b.grow.nul776 = getelementptr i8, ptr %b.new.buf775, i64 %b.len756
  store i8 0, ptr %b.grow.nul776, align 1
  %b.new.data.gep777 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load751, i32 0, i32 1
  store ptr %b.new.buf775, ptr %b.new.data.gep777, align 8
  %b.new.cap.gep778 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load751, i32 0, i32 2
  store i64 %b.new.cap767, ptr %b.new.cap.gep778, align 8
  br label %b.push_done764

str_overflow_abort772:                            ; preds = %b.grow762
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead773:                                    ; No predecessors!
  br label %b.new.buf.len771

b.app.new.len797:                                 ; preds = %abort.dead799, %choice.exit750
  %b.cap800 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 2
  %b.cap801 = load i64, ptr %b.cap800, align 8
  %b.need.grow = icmp slt i64 %b.cap801, %sum795
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort798:                            ; preds = %choice.exit750
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead799:                                    ; No predecessors!
  br label %b.app.new.len797

b.grow2:                                          ; preds = %b.app.new.len797
  %b.cap2802 = mul i64 %b.cap801, 2
  %b.cap.small803 = icmp slt i64 %b.cap2802, 16
  %b.cap.grow = select i1 %b.cap.small803, i64 16, i64 %b.cap2802
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum795
  %b.new.cap804 = select i1 %b.cap.need, i64 %sum795, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 0
  %b.cur.len2805 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 1
  %b.cur.data2806 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap804, i64 1)
  %sum807 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf808 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf808, label %str_overflow_abort810, label %b.new.buf.len2809

b.nogrow2:                                        ; preds = %b.app.new.len797
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2809
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 1
  %b.app.data813 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data813, i64 %b.app.cur.len794
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data793, i64 %app.str.len792, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data813, i64 %sum795
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep814 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 0
  store i64 %sum795, ptr %b.len.gep814, align 8
  %var.load815 = load i64, ptr %"var.next_idx'", align 8
  %addtmp816 = add i64 %var.load815, 1
  store i64 %addtmp816, ptr %"var.next_idx'", align 8
  br label %choice.exit722

b.new.buf.len2809:                                ; preds = %abort.dead811, %b.grow2
  %arena.cur812 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur812, i64 %sum807)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2806, i64 %b.cur.len2805, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2805
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load787, i32 0, i32 2
  store i64 %b.new.cap804, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort810:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead811:                                    ; No predecessors!
  br label %b.new.buf.len2809

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data822, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data822, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data822, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len821, 1
  %arena.cur823 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur823, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data822, i64 %b.freeze.len821, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len821
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.114
  %b.freeze.data824 = phi ptr [ %b.freeze.data822, %loop.exit.114 ], [ %b.freeze.data822, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur825 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur825, i64 16)
  %str.build.len.gep826 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len821, ptr %str.build.len.gep826, align 8
  %str.build.data.gep827 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data824, ptr %str.build.data.gep827, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load820, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load820, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load820, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %var.load828 = load ptr, ptr %var.pl, align 8
  %fld.gep829 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load828, i32 0, i32 0
  %fld.load830 = load i64, ptr %fld.gep829, align 8
  %var.load831 = load ptr, ptr %var.pl, align 8
  %fld.gep832 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load831, i32 0, i32 1
  %fld.load833 = load i64, ptr %fld.gep832, align 8
  %addtmp834 = add i64 %fld.load833, 1
  %call.res835 = call ptr @"ccl::entry_new_str"(ptr %var.load819, ptr %builder.freeze, i64 %fld.load830, i64 %addtmp834)
  %a.load836 = load ptr, ptr %var.doc, align 8
  %a.null837 = icmp eq ptr %a.load836, null
  br i1 %a.null837, label %a.create838, label %a.after839

a.create838:                                      ; preds = %b.freeze.done
  %arena.cur840 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create841 = call ptr @dva_arena_alloc(ptr %arena.cur840, i64 24)
  %arena.cur842 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf843 = call ptr @dva_arena_alloc(ptr %arena.cur842, i64 128)
  %a.len.gep844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create841, i32 0, i32 0
  store i64 0, ptr %a.len.gep844, align 8
  %a.data.gep845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create841, i32 0, i32 1
  store ptr %a.buf843, ptr %a.data.gep845, align 8
  %a.cap.gep846 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create841, i32 0, i32 2
  store i64 16, ptr %a.cap.gep846, align 8
  store ptr %a.create841, ptr %var.doc, align 8
  br label %a.after839

a.after839:                                       ; preds = %a.create838, %b.freeze.done
  %a.load2847 = load ptr, ptr %var.doc, align 8
  br label %a.check848

a.check848:                                       ; preds = %a.after839
  %a.len851 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2847, i32 0, i32 0
  %a.len852 = load i64, ptr %a.len851, align 8
  %a.cap853 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2847, i32 0, i32 2
  %a.cap854 = load i64, ptr %a.cap853, align 8
  %a.needs.grow855 = icmp eq i64 %a.len852, %a.cap854
  br i1 %a.needs.grow855, label %a.grow849, label %a.store850

a.grow849:                                        ; preds = %a.check848
  call void @dva_array_grow(ptr %a.load2847)
  br label %a.store850

a.store850:                                       ; preds = %a.grow849, %a.check848
  %a.cur.data856 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2847, i32 0, i32 1
  %a.cur.data857 = load ptr, ptr %a.cur.data856, align 8
  %a.cur.len858 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2847, i32 0, i32 0
  %a.cur.len859 = load i64, ptr %a.cur.len858, align 8
  %a.elem.gep860 = getelementptr i64, ptr %a.cur.data857, i64 %a.cur.len859
  %slot.p2i861 = ptrtoint ptr %call.res835 to i64
  store i64 %slot.p2i861, ptr %a.elem.gep860, align 8
  %a.next.len862 = add i64 %a.cur.len859, 1
  %b.len.gep863 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2847, i32 0, i32 0
  store i64 %a.next.len862, ptr %b.len.gep863, align 8
  %var.load864 = load i64, ptr %"var.next_idx'", align 8
  store i64 %var.load864, ptr %"var.idx'", align 8
  br label %choice.exit550

a.create870:                                      ; preds = %loop.exit.109
  %arena.cur872 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create873 = call ptr @dva_arena_alloc(ptr %arena.cur872, i64 24)
  %arena.cur874 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf875 = call ptr @dva_arena_alloc(ptr %arena.cur874, i64 128)
  %a.len.gep876 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create873, i32 0, i32 0
  store i64 0, ptr %a.len.gep876, align 8
  %a.data.gep877 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create873, i32 0, i32 1
  store ptr %a.buf875, ptr %a.data.gep877, align 8
  %a.cap.gep878 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create873, i32 0, i32 2
  store i64 16, ptr %a.cap.gep878, align 8
  store ptr %a.create873, ptr %var.doc, align 8
  br label %a.after871

a.after871:                                       ; preds = %a.create870, %loop.exit.109
  %a.load2879 = load ptr, ptr %var.doc, align 8
  %var.load880 = load i64, ptr %"var.idx'", align 8
  %arena.cur881 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc882 = call ptr @dva_arena_alloc(ptr %arena.cur881, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld883 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc882, i32 0, i32 0
  store ptr %a.load2879, ptr %rec.fld883, align 8
  %rec.fld884 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc882, i32 0, i32 1
  store i64 %var.load880, ptr %rec.fld884, align 8
  %p.to.i64885 = ptrtoint ptr %rec.alloc882 to i64
  %ram.pay886 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64885, 1
  ret { i1, i64 } %ram.pay886
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
  %var.load9 = load ptr, ptr %var.path, align 8
  %var.load10 = load ptr, ptr %var.path, align 8
  %concat.lhs = load i64, ptr @str.8.struct, align 8
  %concat.lhs11 = and i64 %concat.lhs, 281474976710655
  %concat.lhs12 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %concat.rhs13 = load i64, ptr %concat.rhs, align 8
  %concat.rhs14 = and i64 %concat.rhs13, 281474976710655
  %str.tag15 = lshr i64 %concat.rhs13, 48
  %tag.immortal17 = icmp eq i64 %str.tag15, 0
  %active.gen18 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current19 = icmp eq i64 %str.tag15, %active.gen18
  %tag.fast.ok20 = or i1 %tag.immortal17, %tag.current19
  br i1 %tag.fast.ok20, label %str_ok16, label %tag.slow_check21

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load37 = load i64, ptr %var.fd, align 8
  %call.res38 = call ptr @"io::reader"(i64 %var.load37)
  store ptr %call.res38, ptr %var.r, align 8
  %var.load39 = load ptr, ptr %var.r, align 8
  %call.res40 = call { i64, ptr } @"io::read_all"(ptr %var.load39, i64 1048576)
  %ret.niche.data = extractvalue { i64, ptr } %call.res40, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

str_ok16:                                         ; preds = %tag.slow_check21, %choice.then
  %concat.rhs22 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %concat.rhs23 = load ptr, ptr %concat.rhs22, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs11, i64 %concat.rhs14)
  %sum24 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf25 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf25, label %str_overflow_abort27, label %concat.sum.len26

tag.slow_check21:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag15)
  br label %str_ok16

concat.sum.len26:                                 ; preds = %abort.dead28, %str_ok16
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum24, i64 1)
  %sum29 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf30 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf30, label %str_overflow_abort32, label %concat.tot.len31

str_overflow_abort27:                             ; preds = %str_ok16
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %concat.sum.len26

concat.tot.len31:                                 ; preds = %abort.dead33, %concat.sum.len26
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %sum29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs12, i64 %concat.lhs11, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs23, i64 %concat.rhs14, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum24
  store i8 0, ptr %concat.nul, align 1
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum24, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res36 = call ptr @"ccl::ccl_error"(ptr %var.load9, ptr %concat.str, i64 1, i64 1)
  %p.to.i64 = ptrtoint ptr %call.res36 to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

str_overflow_abort32:                             ; preds = %concat.sum.len26
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %concat.tot.len31

ret.dead:                                         ; No predecessors!
  br label %choice.exit

ret.niche.alloc:                                  ; preds = %choice.exit
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  store { i64, ptr } %call.res40, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit ]
  store ptr %ret.niche.ptr, ptr %var.txt, align 8
  %var.load42 = load i64, ptr %var.fd, align 8
  %coerce.trunc = trunc i64 %var.load42 to i32
  %call.res43 = call i32 @close(i32 %coerce.trunc)
  %var.load44 = load ptr, ptr %var.txt, align 8
  %niche.ne.null = icmp ne ptr %var.load44, null
  br i1 %niche.ne.null, label %choice.then45, label %choice.else

choice.then45:                                    ; preds = %ret.niche.done
  store ptr %var.load44, ptr %var._, align 8
  store ptr %var.load44, ptr %var.content, align 8
  %var.load47 = load ptr, ptr %var.content, align 8
  %var.load48 = load ptr, ptr %var.path, align 8
  %call.res49 = call { i1, i64 } @"ccl::parse"(ptr %var.load47, ptr %var.load48)
  br label %choice.exit46

choice.else:                                      ; preds = %ret.niche.done
  %var.load50 = load ptr, ptr %var.path, align 8
  %var.load51 = load ptr, ptr %var.path, align 8
  %concat.lhs52 = load i64, ptr @str.9.struct, align 8
  %concat.lhs53 = and i64 %concat.lhs52, 281474976710655
  %concat.lhs54 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %concat.rhs55 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 0
  %concat.rhs56 = load i64, ptr %concat.rhs55, align 8
  %concat.rhs57 = and i64 %concat.rhs56, 281474976710655
  %str.tag58 = lshr i64 %concat.rhs56, 48
  %tag.immortal60 = icmp eq i64 %str.tag58, 0
  %active.gen61 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current62 = icmp eq i64 %str.tag58, %active.gen61
  %tag.fast.ok63 = or i1 %tag.immortal60, %tag.current62
  br i1 %tag.fast.ok63, label %str_ok59, label %tag.slow_check64

choice.exit46:                                    ; preds = %concat.tot.len76, %choice.then45
  %choice.res = phi { i1, i64 } [ %call.res49, %choice.then45 ], [ %ram.pay89, %concat.tot.len76 ]
  ret { i1, i64 } %choice.res

str_ok59:                                         ; preds = %tag.slow_check64, %choice.else
  %concat.rhs65 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 1
  %concat.rhs66 = load ptr, ptr %concat.rhs65, align 8
  %concat.sum.len67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs53, i64 %concat.rhs57)
  %sum68 = extractvalue { i64, i1 } %concat.sum.len67, 0
  %ovf69 = extractvalue { i64, i1 } %concat.sum.len67, 1
  br i1 %ovf69, label %str_overflow_abort71, label %concat.sum.len70

tag.slow_check64:                                 ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag58)
  br label %str_ok59

concat.sum.len70:                                 ; preds = %abort.dead72, %str_ok59
  %concat.tot.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum68, i64 1)
  %sum74 = extractvalue { i64, i1 } %concat.tot.len73, 0
  %ovf75 = extractvalue { i64, i1 } %concat.tot.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %concat.tot.len76

str_overflow_abort71:                             ; preds = %str_ok59
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead72:                                     ; No predecessors!
  br label %concat.sum.len70

concat.tot.len76:                                 ; preds = %abort.dead78, %concat.sum.len70
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %sum74)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf80, ptr align 1 %concat.lhs54, i64 %concat.lhs53, i1 false)
  %concat.mid81 = getelementptr i8, ptr %concat.buf80, i64 %concat.lhs53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid81, ptr align 1 %concat.rhs66, i64 %concat.rhs57, i1 false)
  %concat.nul82 = getelementptr i8, ptr %concat.buf80, i64 %sum68
  store i8 0, ptr %concat.nul82, align 1
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 16)
  %str.build.len.gep85 = getelementptr inbounds { i64, ptr }, ptr %concat.str84, i32 0, i32 0
  store i64 %sum68, ptr %str.build.len.gep85, align 8
  %str.build.data.gep86 = getelementptr inbounds { i64, ptr }, ptr %concat.str84, i32 0, i32 1
  store ptr %concat.buf80, ptr %str.build.data.gep86, align 8
  %call.res87 = call ptr @"ccl::ccl_error"(ptr %var.load50, ptr %concat.str84, i64 1, i64 1)
  %p.to.i6488 = ptrtoint ptr %call.res87 to i64
  %ram.pay89 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6488, 1
  br label %choice.exit46

str_overflow_abort77:                             ; preds = %concat.sum.len70
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %concat.tot.len76
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
  %str.tag = lshr i64 %str.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.117, align 8
  br label %loop.header.117

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.117:                                  ; preds = %loop.latch.117, %str_ok
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
  %var._154 = alloca i64, align 8
  %var._i153 = alloca i64, align 8
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
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.118, align 8
  br label %loop.header.118

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.118:                                  ; preds = %loop.latch.118, %str_ok
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
  %idx.neg = icmp slt i64 %var.load8, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.118:                                ; preds = %loop.header.118
  br label %loop.exit.118

loop.latch.118:                                   ; preds = %choice.exit
  %step.val101 = load i64, ptr %loop.step.118, align 8
  %loop.next102 = add i64 %counter.load, %step.val101
  store i64 %loop.next102, ptr %loop.idx.118, align 8
  br label %loop.header.118

loop.exit.118:                                    ; preds = %loop.exit.nat.118
  %var.load103 = load ptr, ptr %var.s, align 8
  %s.read.len104 = getelementptr inbounds { i64, ptr }, ptr %var.load103, i32 0, i32 0
  %s.read.len105 = load i64, ptr %s.read.len104, align 8
  %s.read.len106 = and i64 %s.read.len105, 281474976710655
  %s.read.data107 = getelementptr inbounds { i64, ptr }, ptr %var.load103, i32 0, i32 1
  %s.read.data108 = load ptr, ptr %s.read.data107, align 8
  %var.load109 = load i64, ptr %"var.line_start'", align 8
  %var.load110 = load i64, ptr %var.n, align 8
  %start.is_neg111 = icmp slt i64 %var.load109, 0
  %rel.start112 = add i64 %s.read.len106, %var.load109
  %norm.start113 = select i1 %start.is_neg111, i64 %rel.start112, i64 %var.load109
  %start.lt.0114 = icmp slt i64 %norm.start113, 0
  %c.start.0115 = select i1 %start.lt.0114, i64 0, i64 %norm.start113
  %start.gt.len116 = icmp sgt i64 %c.start.0115, %s.read.len106
  %final.start117 = select i1 %start.gt.len116, i64 %s.read.len106, i64 %c.start.0115
  %end.is_neg118 = icmp slt i64 %var.load110, 0
  %rel.end119 = add i64 %s.read.len106, %var.load110
  %norm.end120 = select i1 %end.is_neg118, i64 %rel.end119, i64 %var.load110
  %end.lt.0121 = icmp slt i64 %norm.end120, 0
  %c.end.0122 = select i1 %end.lt.0121, i64 0, i64 %norm.end120
  %end.gt.len123 = icmp sgt i64 %c.end.0122, %s.read.len106
  %final.end124 = select i1 %end.gt.len123, i64 %s.read.len106, i64 %c.end.0122
  %view.empty125 = icmp sle i64 %final.end124, %final.start117
  %view.len.sub126 = sub i64 %final.end124, %final.start117
  %view.len127 = select i1 %view.empty125, i64 0, i64 %view.len.sub126
  %view.data128 = getelementptr i8, ptr %s.read.data108, i64 %final.start117
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 16)
  %str.build.len.gep131 = getelementptr inbounds { i64, ptr }, ptr %str.view130, i32 0, i32 0
  store i64 %view.len127, ptr %str.build.len.gep131, align 8
  %str.build.data.gep132 = getelementptr inbounds { i64, ptr }, ptr %str.view130, i32 0, i32 1
  store ptr %view.data128, ptr %str.build.data.gep132, align 8
  store ptr %str.view130, ptr %var.last_part, align 8
  %var.load133 = load ptr, ptr %var.last_part, align 8
  %str.len.query134 = getelementptr inbounds { i64, ptr }, ptr %var.load133, i32 0, i32 0
  %str.len.query135 = load i64, ptr %str.len.query134, align 8
  %str.len.query136 = and i64 %str.len.query135, 281474976710655
  %str.tag137 = lshr i64 %str.len.query135, 48
  %tag.immortal139 = icmp eq i64 %str.tag137, 0
  %active.gen140 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current141 = icmp eq i64 %str.tag137, %active.gen140
  %tag.fast.ok142 = or i1 %tag.immortal139, %tag.current141
  br i1 %tag.fast.ok142, label %str_ok138, label %tag.slow_check143

idx_big_check:                                    ; preds = %loop.body.118
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 10
  br i1 %cmptmp, label %choice.then, label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %loop.body.118
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
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

choice.exit:                                      ; preds = %b.push_done, %idx_ok
  br label %loop.latch.118

choice.then22:                                    ; preds = %choice.then
  %var.load24 = load i64, ptr %var.child_indent, align 8
  store i64 0, ptr %loop.idx.119, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.119

choice.exit23:                                    ; preds = %b.grow_done59, %choice.then
  %b.load82 = load ptr, ptr %var.b, align 8
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
  %b.load43 = load ptr, ptr %var.b, align 8
  %var.load44 = load ptr, ptr %var.part, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %app.str.len45 = load i64, ptr %app.str.len, align 8
  %app.str.len46 = and i64 %app.str.len45, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %app.str.data47 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load43, i32 0, i32 0
  %b.app.cur.len48 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len48, i64 %app.str.len46)
  %sum49 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf50 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf50, label %str_overflow_abort52, label %b.app.new.len51

b.rn.new.len31:                                   ; preds = %abort.dead32, %loop.body.119
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap33 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap33, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %loop.body.119
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %b.rn.new.len31

b.grow2:                                          ; preds = %b.rn.new.len31
  %b.cap2 = mul i64 %b.cap33, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len234 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data235 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum36 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf37 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf37, label %str_overflow_abort39, label %b.new.buf.len238

b.nogrow2:                                        ; preds = %b.rn.new.len31
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len238
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data42 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data42, i64 %b.rn.cur.len30
  br i1 true, label %br.b1.120, label %br.c2.120

b.new.buf.len238:                                 ; preds = %abort.dead40, %b.grow2
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 %sum36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data235, i64 %b.cur.len234, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len234
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort39:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %b.new.buf.len238

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
  %br.nul = getelementptr i8, ptr %b.rn.data42, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %loop.latch.119

b.app.new.len51:                                  ; preds = %abort.dead53, %loop.exit.119
  %b.cap54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load43, i32 0, i32 2
  %b.cap55 = load i64, ptr %b.cap54, align 8
  %b.need.grow56 = icmp slt i64 %b.cap55, %sum49
  br i1 %b.need.grow56, label %b.grow257, label %b.nogrow258

str_overflow_abort52:                             ; preds = %loop.exit.119
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %b.app.new.len51

b.grow257:                                        ; preds = %b.app.new.len51
  %b.cap260 = mul i64 %b.cap55, 2
  %b.cap.small61 = icmp slt i64 %b.cap260, 16
  %b.cap.grow62 = select i1 %b.cap.small61, i64 16, i64 %b.cap260
  %b.cap.need63 = icmp slt i64 %b.cap.grow62, %sum49
  %b.new.cap64 = select i1 %b.cap.need63, i64 %sum49, i64 %b.cap.grow62
  %b.cur.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load43, i32 0, i32 0
  %b.cur.len266 = load i64, ptr %b.cur.len265, align 8
  %b.cur.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load43, i32 0, i32 1
  %b.cur.data268 = load ptr, ptr %b.cur.data267, align 8
  %b.new.buf.len269 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap64, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.new.buf.len269, 0
  %ovf71 = extractvalue { i64, i1 } %b.new.buf.len269, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.new.buf.len272

b.nogrow258:                                      ; preds = %b.app.new.len51
  br label %b.grow_done59

b.grow_done59:                                    ; preds = %b.nogrow258, %b.new.buf.len272
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load43, i32 0, i32 1
  %b.app.data80 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data80, i64 %b.app.cur.len48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data47, i64 %app.str.len46, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data80, i64 %sum49
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load43, i32 0, i32 0
  store i64 %sum49, ptr %b.len.gep81, align 8
  br label %choice.exit23

b.new.buf.len272:                                 ; preds = %abort.dead74, %b.grow257
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf276 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %sum70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf276, ptr align 1 %b.cur.data268, i64 %b.cur.len266, i1 false)
  %b.grow2.nul77 = getelementptr i8, ptr %b.new.buf276, i64 %b.cur.len266
  store i8 0, ptr %b.grow2.nul77, align 1
  %b.new.data2.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load43, i32 0, i32 1
  store ptr %b.new.buf276, ptr %b.new.data2.gep78, align 8
  %b.new.cap2.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load43, i32 0, i32 2
  store i64 %b.new.cap64, ptr %b.new.cap2.gep79, align 8
  br label %b.grow_done59

str_overflow_abort73:                             ; preds = %b.grow257
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %b.new.buf.len272

b.byte_ok:                                        ; preds = %abort.dead83, %choice.exit23
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load82, i32 0, i32 0
  %b.len84 = load i64, ptr %b.len, align 8
  %b.cap85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load82, i32 0, i32 2
  %b.cap86 = load i64, ptr %b.cap85, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load82, i32 0, i32 1
  %b.data87 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len84, %b.cap86
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit23
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead83:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap288 = mul i64 %b.cap86, 2
  %b.cap.small89 = icmp slt i64 %b.cap288, 16
  %b.new.cap90 = select i1 %b.cap.small89, i64 16, i64 %b.cap288
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap90, i64 1)
  %sum91 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf92 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf92, label %str_overflow_abort94, label %b.new.buf.len93

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len93
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load82, i32 0, i32 1
  %b.cur.data97 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load82, i32 0, i32 0
  %b.cur.len98 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data97, i64 %b.cur.len98
  store i8 10, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len98, 1
  %b.nul = getelementptr i8, ptr %b.cur.data97, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load82, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep99, align 8
  %var.load100 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load100, 1
  store i64 %addtmp, ptr %"var.line_start'", align 8
  br label %choice.exit

b.new.buf.len93:                                  ; preds = %abort.dead95, %b.grow
  %arena.cur96 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum91)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data87, i64 %b.len84, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len84
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load82, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load82, i32 0, i32 2
  store i64 %b.new.cap90, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort94:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %b.new.buf.len93

str_ok138:                                        ; preds = %tag.slow_check143, %loop.exit.118
  %cmptmp144 = icmp sgt i64 %str.len.query136, 0
  br i1 %cmptmp144, label %or.121.then, label %or.121.else

tag.slow_check143:                                ; preds = %loop.exit.118
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag137)
  br label %str_ok138

or.121.then:                                      ; preds = %str_ok138
  br label %or.121.exit

or.121.else:                                      ; preds = %str_ok138
  %var.load145 = load i64, ptr %var.n, align 8
  %cmptmp146 = icmp eq i64 %var.load145, 0
  br label %or.121.exit

or.121.exit:                                      ; preds = %or.121.else, %or.121.then
  %or.121.phi = phi i1 [ %cmptmp144, %or.121.then ], [ %cmptmp146, %or.121.else ]
  br i1 %or.121.phi, label %choice.then147, label %choice.exit148

choice.then147:                                   ; preds = %or.121.exit
  %var.load149 = load i64, ptr %var.child_indent, align 8
  store i64 0, ptr %loop.idx.122, align 8
  br label %loop.header.122

choice.exit148:                                   ; preds = %b.grow_done226, %or.121.exit
  ret void

loop.header.122:                                  ; preds = %loop.latch.122, %choice.then147
  %counter.load150 = load i64, ptr %loop.idx.122, align 8
  %loop.cond151 = icmp slt i64 %counter.load150, %var.load149
  br i1 %loop.cond151, label %loop.body.122, label %loop.exit.nat.122

loop.body.122:                                    ; preds = %loop.header.122
  %loop.rel.i152 = sub i64 %counter.load150, 0
  store i64 1, ptr %loop.step.122, align 8
  store i64 %loop.rel.i152, ptr %var._i153, align 8
  store i64 %counter.load150, ptr %var._154, align 8
  %b.load155 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 0
  %b.rn.cur.len157 = load i64, ptr %b.rn.cur.len156, align 8
  %b.rn.new.len158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len157, i64 1)
  %sum159 = extractvalue { i64, i1 } %b.rn.new.len158, 0
  %ovf160 = extractvalue { i64, i1 } %b.rn.new.len158, 1
  br i1 %ovf160, label %str_overflow_abort162, label %b.rn.new.len161

loop.exit.nat.122:                                ; preds = %loop.header.122
  br label %loop.exit.122

loop.latch.122:                                   ; preds = %br.done.123
  %step.val201 = load i64, ptr %loop.step.122, align 8
  %loop.next202 = add i64 %counter.load150, %step.val201
  store i64 %loop.next202, ptr %loop.idx.122, align 8
  br label %loop.header.122

loop.exit.122:                                    ; preds = %loop.exit.nat.122
  %b.load203 = load ptr, ptr %var.b, align 8
  %var.load204 = load ptr, ptr %var.last_part, align 8
  %b.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load204, i32 0, i32 0
  %b.str.len205 = load i64, ptr %b.str.len, align 8
  %b.str.len206 = and i64 %b.str.len205, 281474976710655
  %str.tag207 = lshr i64 %b.str.len205, 48
  %tag.immortal209 = icmp eq i64 %str.tag207, 0
  %active.gen210 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current211 = icmp eq i64 %str.tag207, %active.gen210
  %tag.fast.ok212 = or i1 %tag.immortal209, %tag.current211
  br i1 %tag.fast.ok212, label %str_ok208, label %tag.slow_check213

b.rn.new.len161:                                  ; preds = %abort.dead163, %loop.body.122
  %b.cap164 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 2
  %b.cap165 = load i64, ptr %b.cap164, align 8
  %b.need.grow166 = icmp slt i64 %b.cap165, %sum159
  br i1 %b.need.grow166, label %b.grow2167, label %b.nogrow2168

str_overflow_abort162:                            ; preds = %loop.body.122
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead163:                                    ; No predecessors!
  br label %b.rn.new.len161

b.grow2167:                                       ; preds = %b.rn.new.len161
  %b.cap2170 = mul i64 %b.cap165, 2
  %b.cap.small171 = icmp slt i64 %b.cap2170, 16
  %b.cap.grow172 = select i1 %b.cap.small171, i64 16, i64 %b.cap2170
  %b.cap.need173 = icmp slt i64 %b.cap.grow172, %sum159
  %b.new.cap174 = select i1 %b.cap.need173, i64 %sum159, i64 %b.cap.grow172
  %b.cur.len2175 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 0
  %b.cur.len2176 = load i64, ptr %b.cur.len2175, align 8
  %b.cur.data2177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 1
  %b.cur.data2178 = load ptr, ptr %b.cur.data2177, align 8
  %b.new.buf.len2179 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap174, i64 1)
  %sum180 = extractvalue { i64, i1 } %b.new.buf.len2179, 0
  %ovf181 = extractvalue { i64, i1 } %b.new.buf.len2179, 1
  br i1 %ovf181, label %str_overflow_abort183, label %b.new.buf.len2182

b.nogrow2168:                                     ; preds = %b.rn.new.len161
  br label %b.grow_done169

b.grow_done169:                                   ; preds = %b.nogrow2168, %b.new.buf.len2182
  %b.rn.data190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 1
  %b.rn.data191 = load ptr, ptr %b.rn.data190, align 8
  %b.rn.dst192 = getelementptr i8, ptr %b.rn.data191, i64 %b.rn.cur.len157
  br i1 true, label %br.b1.123, label %br.c2.123

b.new.buf.len2182:                                ; preds = %abort.dead184, %b.grow2167
  %arena.cur185 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 %sum180)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2186, ptr align 1 %b.cur.data2178, i64 %b.cur.len2176, i1 false)
  %b.grow2.nul187 = getelementptr i8, ptr %b.new.buf2186, i64 %b.cur.len2176
  store i8 0, ptr %b.grow2.nul187, align 1
  %b.new.data2.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 1
  store ptr %b.new.buf2186, ptr %b.new.data2.gep188, align 8
  %b.new.cap2.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 2
  store i64 %b.new.cap174, ptr %b.new.cap2.gep189, align 8
  br label %b.grow_done169

str_overflow_abort183:                            ; preds = %b.grow2167
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead184:                                    ; No predecessors!
  br label %b.new.buf.len2182

br.b1.123:                                        ; preds = %b.grow_done169
  store i8 32, ptr %b.rn.dst192, align 1
  br label %br.done.123

br.c2.123:                                        ; preds = %b.grow_done169
  br i1 true, label %br.b2.123, label %br.c3.123

br.b2.123:                                        ; preds = %br.c2.123
  store i8 -64, ptr %b.rn.dst192, align 1
  %br.dst1193 = getelementptr i8, ptr %b.rn.dst192, i64 1
  store i8 -96, ptr %br.dst1193, align 1
  br label %br.done.123

br.c3.123:                                        ; preds = %br.c2.123
  br i1 true, label %br.b3.123, label %br.b4.123

br.b3.123:                                        ; preds = %br.c3.123
  store i8 -32, ptr %b.rn.dst192, align 1
  %br.dst1.3194 = getelementptr i8, ptr %b.rn.dst192, i64 1
  store i8 -128, ptr %br.dst1.3194, align 1
  %br.dst2.3195 = getelementptr i8, ptr %b.rn.dst192, i64 2
  store i8 -96, ptr %br.dst2.3195, align 1
  br label %br.done.123

br.b4.123:                                        ; preds = %br.c3.123
  store i8 -16, ptr %b.rn.dst192, align 1
  %br.dst1.4196 = getelementptr i8, ptr %b.rn.dst192, i64 1
  store i8 -128, ptr %br.dst1.4196, align 1
  %br.dst2.4197 = getelementptr i8, ptr %b.rn.dst192, i64 2
  store i8 -128, ptr %br.dst2.4197, align 1
  %br.dst3.4198 = getelementptr i8, ptr %b.rn.dst192, i64 3
  store i8 -96, ptr %br.dst3.4198, align 1
  br label %br.done.123

br.done.123:                                      ; preds = %br.b4.123, %br.b3.123, %br.b2.123, %br.b1.123
  %br.nul199 = getelementptr i8, ptr %b.rn.data191, i64 %sum159
  store i8 0, ptr %br.nul199, align 1
  %b.len.gep200 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 0
  store i64 %sum159, ptr %b.len.gep200, align 8
  br label %loop.latch.122

str_ok208:                                        ; preds = %tag.slow_check213, %loop.exit.122
  %b.add.len = add i64 0, %b.str.len206
  %b.add.len214 = add i64 %b.add.len, 1
  %b.rec.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load203, i32 0, i32 0
  %b.rec.cur.len215 = load i64, ptr %b.rec.cur.len, align 8
  %b.rec.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rec.cur.len215, i64 %b.add.len214)
  %sum216 = extractvalue { i64, i1 } %b.rec.new.len, 0
  %ovf217 = extractvalue { i64, i1 } %b.rec.new.len, 1
  br i1 %ovf217, label %str_overflow_abort219, label %b.rec.new.len218

tag.slow_check213:                                ; preds = %loop.exit.122
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag207)
  br label %str_ok208

b.rec.new.len218:                                 ; preds = %abort.dead220, %str_ok208
  %b.cap221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load203, i32 0, i32 2
  %b.cap222 = load i64, ptr %b.cap221, align 8
  %b.need.grow223 = icmp slt i64 %b.cap222, %sum216
  br i1 %b.need.grow223, label %b.grow2224, label %b.nogrow2225

str_overflow_abort219:                            ; preds = %str_ok208
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead220:                                    ; No predecessors!
  br label %b.rec.new.len218

b.grow2224:                                       ; preds = %b.rec.new.len218
  %b.cap2227 = mul i64 %b.cap222, 2
  %b.cap.small228 = icmp slt i64 %b.cap2227, 16
  %b.cap.grow229 = select i1 %b.cap.small228, i64 16, i64 %b.cap2227
  %b.cap.need230 = icmp slt i64 %b.cap.grow229, %sum216
  %b.new.cap231 = select i1 %b.cap.need230, i64 %sum216, i64 %b.cap.grow229
  %b.cur.len2232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load203, i32 0, i32 0
  %b.cur.len2233 = load i64, ptr %b.cur.len2232, align 8
  %b.cur.data2234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load203, i32 0, i32 1
  %b.cur.data2235 = load ptr, ptr %b.cur.data2234, align 8
  %b.new.buf.len2236 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap231, i64 1)
  %sum237 = extractvalue { i64, i1 } %b.new.buf.len2236, 0
  %ovf238 = extractvalue { i64, i1 } %b.new.buf.len2236, 1
  br i1 %ovf238, label %str_overflow_abort240, label %b.new.buf.len2239

b.nogrow2225:                                     ; preds = %b.rec.new.len218
  br label %b.grow_done226

b.grow_done226:                                   ; preds = %b.nogrow2225, %b.new.buf.len2239
  %b.rec.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load203, i32 0, i32 1
  %b.rec.data247 = load ptr, ptr %b.rec.data, align 8
  %b.rec.dst = getelementptr i8, ptr %b.rec.data247, i64 %b.rec.cur.len215
  %b.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load204, i32 0, i32 1
  %b.str.data248 = load ptr, ptr %b.str.data, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.rec.dst, ptr align 1 %b.str.data248, i64 %b.str.len206, i1 false)
  %b.rec.off = add i64 %b.rec.cur.len215, %b.str.len206
  %b.rec.dst249 = getelementptr i8, ptr %b.rec.data247, i64 %b.rec.off
  store i8 10, ptr %b.rec.dst249, align 1
  %b.rec.off250 = add i64 %b.rec.off, 1
  %b.rec.nul = getelementptr i8, ptr %b.rec.data247, i64 %sum216
  store i8 0, ptr %b.rec.nul, align 1
  %b.len.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load203, i32 0, i32 0
  store i64 %sum216, ptr %b.len.gep251, align 8
  br label %choice.exit148

b.new.buf.len2239:                                ; preds = %abort.dead241, %b.grow2224
  %arena.cur242 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 %sum237)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2243, ptr align 1 %b.cur.data2235, i64 %b.cur.len2233, i1 false)
  %b.grow2.nul244 = getelementptr i8, ptr %b.new.buf2243, i64 %b.cur.len2233
  store i8 0, ptr %b.grow2.nul244, align 1
  %b.new.data2.gep245 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load203, i32 0, i32 1
  store ptr %b.new.buf2243, ptr %b.new.data2.gep245, align 8
  %b.new.cap2.gep246 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load203, i32 0, i32 2
  store i64 %b.new.cap231, ptr %b.new.cap2.gep246, align 8
  br label %b.grow_done226

str_overflow_abort240:                            ; preds = %b.grow2224
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead241:                                    ; No predecessors!
  br label %b.new.buf.len2239
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
attributes #5 = { cold noinline "nounwind" }
attributes #6 = { cold noinline noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
