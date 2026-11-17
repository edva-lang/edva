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
@"var.io::STDIN" = global i64 0
@"var.io::STDOUT" = global i64 1
@"var.io::STDERR" = global i64 2
@"var.io::EOF" = global i64 0
@"var.io::EINTR" = global i64 4
@"var.io::EBADF" = global i64 9
@"var.io::EAGAIN" = global i64 11
@"var.io::EWOULDBLOCK" = global i64 11
@clo.const = internal constant { ptr, ptr } { ptr @"io::reader", ptr null }
@"var.io::reader" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"io::reader_with_cap", ptr null }
@"var.io::reader_with_cap" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"io::reader_err", ptr null }
@"var.io::reader_err" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"io::reader_eof", ptr null }
@"var.io::reader_eof" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"io::reader_would_block", ptr null }
@"var.io::reader_would_block" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"io::reader_has_err", ptr null }
@"var.io::reader_has_err" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"io::reader_clear", ptr null }
@"var.io::reader_clear" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.7 = internal constant { ptr, ptr } { ptr @"io::#clean_addr", ptr null }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"io::write", ptr null }
@"var.io::write" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"io::#show_rune", ptr null }
@"var.io::#show_rune" = global ptr null
@"var.io::#clean_addr" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"io::#writev_all", ptr null }
@"var.io::#writev_all" = global ptr null
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.11 = internal constant { ptr, ptr } { ptr @"io::#refill", ptr null }
@"var.io::#refill" = global ptr null
@str.0 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"io::outs", ptr null }
@"var.io::outs" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"io::errs", ptr null }
@"var.io::errs" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"io::read", ptr null }
@"var.io::read" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"io::read_all", ptr null }
@"var.io::read_all" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.16 = internal constant { ptr, ptr } { ptr @"io::read_byte", ptr null }
@"var.io::read_byte" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"io::read_until", ptr null }
@"var.io::read_until" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"io::read_line", ptr null }
@"var.io::read_line" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_io, ptr null }]

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

define internal void @__dva_global_init_io() #0 {
entry:
  store i64 0, ptr @"var.io::STDIN", align 8
  store i64 1, ptr @"var.io::STDOUT", align 8
  store i64 2, ptr @"var.io::STDERR", align 8
  store i64 0, ptr @"var.io::EOF", align 8
  store i64 4, ptr @"var.io::EINTR", align 8
  store i64 9, ptr @"var.io::EBADF", align 8
  store i64 11, ptr @"var.io::EAGAIN", align 8
  store i64 11, ptr @"var.io::EWOULDBLOCK", align 8
  store ptr @clo.const, ptr @"var.io::reader", align 8
  store ptr @clo.const.1, ptr @"var.io::reader_with_cap", align 8
  store ptr @clo.const.2, ptr @"var.io::reader_err", align 8
  store ptr @clo.const.3, ptr @"var.io::reader_eof", align 8
  store ptr @clo.const.4, ptr @"var.io::reader_would_block", align 8
  store ptr @clo.const.5, ptr @"var.io::reader_has_err", align 8
  store ptr @clo.const.6, ptr @"var.io::reader_clear", align 8
  store ptr @clo.const.8, ptr @"var.io::write", align 8
  store ptr @clo.const.9, ptr @"var.io::#show_rune", align 8
  store ptr @clo.const.7, ptr @"var.io::#clean_addr", align 8
  store ptr @clo.const.10, ptr @"var.io::#writev_all", align 8
  store ptr @clo.const.11, ptr @"var.io::#refill", align 8
  store ptr @clo.const.12, ptr @"var.io::outs", align 8
  store ptr @clo.const.13, ptr @"var.io::errs", align 8
  store ptr @clo.const.14, ptr @"var.io::read", align 8
  store ptr @clo.const.15, ptr @"var.io::read_all", align 8
  store ptr @clo.const.16, ptr @"var.io::read_byte", align 8
  store ptr @clo.const.17, ptr @"var.io::read_until", align 8
  store ptr @clo.const.18, ptr @"var.io::read_line", align 8
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

define ptr @"io::reader"(i64 %0) #0 {
entry:
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  %var.load = load i64, ptr %var.fd, align 8
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
  %arena.cur3 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, i64, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %builder.new, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 4096, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld8, align 1
  ret ptr %rec.alloc

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1
}

define ptr @"io::reader_with_cap"(i64 %0, i64 %1) #0 {
entry:
  %var.c = alloca i64, align 8
  %var.cap = alloca i64, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store i64 %1, ptr %var.cap, align 8
  %var.load = load i64, ptr %var.cap, align 8
  %cmptmp = icmp sgt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.cap, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load1, %choice.then ], [ 4096, %choice.else ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load i64, ptr %var.c, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load3, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load3
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

b.buf.len4:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur5 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  %var.load6 = load i64, ptr %var.c, align 8
  %arena.cur7 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, i64, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load2, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %builder.new, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load6, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld12, align 1
  ret ptr %rec.alloc

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len4
}

define i64 @"io::reader_err"(ptr %0) #0 {
entry:
  %var._acc_1 = alloca ptr, align 8
  store ptr %0, ptr %var._acc_1, align 8
  %var.load = load ptr, ptr %var._acc_1, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i1 @"io::reader_eof"(ptr %0) #0 {
entry:
  %var._acc_2 = alloca ptr, align 8
  store ptr %0, ptr %var._acc_2, align 8
  %var.load = load ptr, ptr %var._acc_2, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i1, ptr %fld.gep, align 1
  ret i1 %fld.load
}

define i1 @"io::reader_would_block"(ptr %0) #0 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %val.match = icmp eq i64 %fld.load, 11
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"io::reader_has_err"(ptr %0) #0 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp ne i64 %fld.load, 0
  ret i1 %cmptmp
}

define void @"io::reader_clear"(ptr %0) #0 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  store i64 0, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 5
  store i1 false, ptr %fld.gep2, align 1
  ret void
}

define i64 @"io::write"(i64 %0, ptr %1) #0 {
entry:
  %var.errno_val = alloca i64, align 8
  %var.w = alloca i64, align 8
  %var.buf_addr = alloca ptr, align 8
  %var.rem = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.58 = alloca i64, align 8
  %loop.idx.58 = alloca i64, align 8
  %"var.off'" = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store ptr %1, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.total, align 8
  %var.load3 = load i64, ptr %var.total, align 8
  %val.match = icmp eq i64 %var.load3, 0
  br i1 %val.match, label %choice.case, label %choice.next

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

choice.exit:                                      ; preds = %choice.next, %ret.dead
  store i64 0, ptr %"var.off'", align 8
  store i64 0, ptr %loop.idx.58, align 8
  br label %loop.header.58

choice.case:                                      ; preds = %str_ok
  ret i64 0

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.58:                                   ; preds = %loop.latch.58, %choice.exit
  %counter.load = load i64, ptr %loop.idx.58, align 8
  br label %loop.body.58

loop.body.58:                                     ; preds = %loop.header.58
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.58, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.off'", align 8
  %var.load5 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit6

loop.exit.nat.58:                                 ; No predecessors!
  br label %loop.exit.58

loop.latch.58:                                    ; preds = %choice.exit17, %choice.then24
  %step.val = load i64, ptr %loop.step.58, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.58, align 8
  br label %loop.header.58

loop.exit.58:                                     ; preds = %choice.case34, %choice.else29, %choice.then, %loop.exit.nat.58
  %var.load40 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load40

choice.then:                                      ; preds = %loop.body.58
  br label %loop.exit.58

choice.exit6:                                     ; preds = %loop.body.58
  %var.load7 = load i64, ptr %var.total, align 8
  %var.load8 = load i64, ptr %"var.off'", align 8
  %subtmp = sub i64 %var.load7, %var.load8
  store i64 %subtmp, ptr %var.rem, align 8
  %var.load9 = load ptr, ptr %var.s, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.ptr10 = load ptr, ptr %s.ptr, align 8
  %var.load11 = load i64, ptr %"var.off'", align 8
  %ptr.int.l = ptrtoint ptr %s.ptr10 to i64
  %addtmp = add i64 %ptr.int.l, %var.load11
  %ptr.res = inttoptr i64 %addtmp to ptr
  %call.res = call ptr @"io::#clean_addr"(ptr %ptr.res)
  store ptr %call.res, ptr %var.buf_addr, align 8
  %var.load12 = load i64, ptr %var.fd, align 8
  %var.load13 = load ptr, ptr %var.buf_addr, align 8
  %addr.ffi.int = ptrtoint ptr %var.load13 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load14 = load i64, ptr %var.rem, align 8
  %coerce.trunc = trunc i64 %var.load12 to i32
  %call.res15 = call i64 @write(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load14)
  store i64 %call.res15, ptr %var.w, align 8
  %var.load16 = load i64, ptr %var.w, align 8
  %cmptmp20 = icmp slt i64 %var.load16, 0
  br i1 %cmptmp20, label %choice.case18, label %choice.next19

choice.exit17:                                    ; preds = %choice.exit33, %choice.exit25
  br label %loop.latch.58

choice.case18:                                    ; preds = %choice.exit6
  %call.res21 = call i64 @"libc::errno"()
  store i64 %call.res21, ptr %var.errno_val, align 8
  %var.load22 = load i64, ptr %var.errno_val, align 8
  %cmptmp23 = icmp eq i64 %var.load22, 4
  br i1 %cmptmp23, label %choice.then24, label %choice.else

choice.next19:                                    ; preds = %choice.exit6
  %var.load32 = load i64, ptr %var.w, align 8
  %val.match36 = icmp eq i64 %var.load32, 0
  br i1 %val.match36, label %choice.case34, label %choice.next35

choice.then24:                                    ; preds = %choice.case18
  br label %loop.latch.58

choice.else:                                      ; preds = %choice.case18
  %var.load26 = load i64, ptr %"var.off'", align 8
  %cmptmp27 = icmp eq i64 %var.load26, 0
  br i1 %cmptmp27, label %choice.then28, label %choice.else29

choice.exit25:                                    ; preds = %choice.exit30
  br label %choice.exit17

choice.then28:                                    ; preds = %choice.else
  ret i64 -1

choice.else29:                                    ; preds = %choice.else
  br label %loop.exit.58

choice.exit30:                                    ; preds = %ret.dead31
  br label %choice.exit25

ret.dead31:                                       ; No predecessors!
  br label %choice.exit30

choice.exit33:                                    ; preds = %choice.next35
  %var.load37 = load i64, ptr %"var.off'", align 8
  %var.load38 = load i64, ptr %var.w, align 8
  %addtmp39 = add i64 %var.load37, %var.load38
  store i64 %addtmp39, ptr %"var.off'", align 8
  br label %choice.exit17

choice.case34:                                    ; preds = %choice.next19
  br label %loop.exit.58

choice.next35:                                    ; preds = %choice.next19
  br label %choice.exit33
}

define internal ptr @"io::#clean_addr"(ptr %0) #0 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %ptrmask = call ptr @llvm.ptrmask.p0.i64(ptr %var.load, i64 281474976710655)
  ret ptr %ptrmask
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #1

declare i64 @"libc::errno"() #0

define internal { i64, ptr } @"io::#show_rune"(i32 %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.r = alloca i32, align 4
  store i32 %0, ptr %var.r, align 4
  %var.load = load i32, ptr %var.r, align 4
  %call.res = call { i64, ptr } @"utf::encode_rune"(i32 %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"utf::encode_rune"(i32) #0

define internal i64 @"io::#writev_all"(i64 %0, ptr %1, ptr %2) #0 {
entry:
  %var.errno_val104 = alloca i64, align 8
  %var.w97 = alloca i64, align 8
  %var.p288 = alloca ptr, align 8
  %var.rem2 = alloca i64, align 8
  %var.off2 = alloca i64, align 8
  %var.errno_val = alloca i64, align 8
  %var.w = alloca i64, align 8
  %var.iov = alloca ptr, align 8
  %var.p2 = alloca ptr, align 8
  %var.p1 = alloca ptr, align 8
  %var.rem1 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.59 = alloca i64, align 8
  %loop.idx.59 = alloca i64, align 8
  %"var.off'" = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.len2 = alloca i64, align 8
  %var.len1 = alloca i64, align 8
  %var.s2 = alloca ptr, align 8
  %var.s1 = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store ptr %1, ptr %var.s1, align 8
  store ptr %2, ptr %var.s2, align 8
  %var.load = load ptr, ptr %var.s1, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len1, align 8
  %var.load3 = load ptr, ptr %var.s2, align 8
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
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok8:                                          ; preds = %abort.dead17, %tag.slow_check11, %tag.gen_check10, %str_ok
  store i64 %str.len.query6, ptr %var.len2, align 8
  %var.load18 = load i64, ptr %var.len1, align 8
  %var.load19 = load i64, ptr %var.len2, align 8
  %addtmp = add i64 %var.load18, %var.load19
  store i64 %addtmp, ptr %var.total, align 8
  %var.load20 = load i64, ptr %var.total, align 8
  %val.match = icmp eq i64 %var.load20, 0
  br i1 %val.match, label %choice.case, label %choice.next

tag.gen_check10:                                  ; preds = %str_ok
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok14 = icmp eq i64 %str.tag7, %active.gen13
  br i1 %tag.fast.ok14, label %str_ok8, label %tag.slow_check11

tag.slow_check11:                                 ; preds = %tag.gen_check10
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag7)
  br i1 %tag.valid16, label %str_ok8, label %tag.stale12

tag.stale12:                                      ; preds = %tag.slow_check11
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %str_ok8

choice.exit:                                      ; preds = %choice.next, %ret.dead
  store i64 0, ptr %"var.off'", align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

choice.case:                                      ; preds = %str_ok8
  ret i64 0

choice.next:                                      ; preds = %str_ok8
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.59:                                   ; preds = %loop.latch.59, %choice.exit
  %counter.load = load i64, ptr %loop.idx.59, align 8
  br label %loop.body.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load21 = load i64, ptr %"var.off'", align 8
  %var.load22 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load21, %var.load22
  br i1 %cmptmp, label %choice.then, label %choice.exit23

loop.exit.nat.59:                                 ; No predecessors!
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit28, %choice.then107, %choice.then58
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %choice.case117, %choice.else112, %choice.case68, %choice.else63, %choice.then, %loop.exit.nat.59
  %var.load123 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load123

choice.then:                                      ; preds = %loop.body.59
  br label %loop.exit.59

choice.exit23:                                    ; preds = %loop.body.59
  %var.load24 = load i64, ptr %"var.off'", align 8
  %var.load25 = load i64, ptr %var.len1, align 8
  %cmptmp26 = icmp slt i64 %var.load24, %var.load25
  br i1 %cmptmp26, label %choice.then27, label %choice.else

choice.then27:                                    ; preds = %choice.exit23
  %var.load29 = load i64, ptr %var.len1, align 8
  %var.load30 = load i64, ptr %"var.off'", align 8
  %subtmp = sub i64 %var.load29, %var.load30
  store i64 %subtmp, ptr %var.rem1, align 8
  %var.load31 = load ptr, ptr %var.s1, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.ptr32 = load ptr, ptr %s.ptr, align 8
  %var.load33 = load i64, ptr %"var.off'", align 8
  %ptr.int.l = ptrtoint ptr %s.ptr32 to i64
  %addtmp34 = add i64 %ptr.int.l, %var.load33
  %ptr.res = inttoptr i64 %addtmp34 to ptr
  %call.res = call ptr @"io::#clean_addr"(ptr %ptr.res)
  store ptr %call.res, ptr %var.p1, align 8
  %var.load35 = load ptr, ptr %var.s2, align 8
  %s.ptr36 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 1
  %s.ptr37 = load ptr, ptr %s.ptr36, align 8
  %call.res38 = call ptr @"io::#clean_addr"(ptr %s.ptr37)
  store ptr %call.res38, ptr %var.p2, align 8
  %var.load39 = load ptr, ptr %var.p1, align 8
  %var.load40 = load i64, ptr %var.rem1, align 8
  %var.load41 = load ptr, ptr %var.p2, align 8
  %var.load42 = load i64, ptr %var.len2, align 8
  %arena.cur43 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load39, ptr %rec.fld, align 8
  %rec.fld44 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load40, ptr %rec.fld44, align 8
  %rec.fld45 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load41, ptr %rec.fld45, align 8
  %rec.fld46 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load42, ptr %rec.fld46, align 8
  store ptr %rec.alloc, ptr %var.iov, align 8
  %var.load47 = load i64, ptr %var.fd, align 8
  %var.load48 = load ptr, ptr %var.iov, align 8
  %addr.ffi.int = ptrtoint ptr %var.load48 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load47 to i32
  %call.res49 = call i64 @writev(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 2)
  store i64 %call.res49, ptr %var.w, align 8
  %var.load50 = load i64, ptr %var.w, align 8
  %cmptmp51 = icmp slt i64 %var.load50, 0
  br i1 %cmptmp51, label %choice.then52, label %choice.else53

choice.else:                                      ; preds = %choice.exit23
  %var.load74 = load i64, ptr %"var.off'", align 8
  %var.load75 = load i64, ptr %var.len1, align 8
  %subtmp76 = sub i64 %var.load74, %var.load75
  store i64 %subtmp76, ptr %var.off2, align 8
  %var.load77 = load i64, ptr %var.len2, align 8
  %var.load78 = load i64, ptr %var.off2, align 8
  %subtmp79 = sub i64 %var.load77, %var.load78
  store i64 %subtmp79, ptr %var.rem2, align 8
  %var.load80 = load ptr, ptr %var.s2, align 8
  %s.ptr81 = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 1
  %s.ptr82 = load ptr, ptr %s.ptr81, align 8
  %var.load83 = load i64, ptr %var.off2, align 8
  %ptr.int.l84 = ptrtoint ptr %s.ptr82 to i64
  %addtmp85 = add i64 %ptr.int.l84, %var.load83
  %ptr.res86 = inttoptr i64 %addtmp85 to ptr
  %call.res87 = call ptr @"io::#clean_addr"(ptr %ptr.res86)
  store ptr %call.res87, ptr %var.p288, align 8
  %var.load89 = load i64, ptr %var.fd, align 8
  %var.load90 = load ptr, ptr %var.p288, align 8
  %addr.ffi.int91 = ptrtoint ptr %var.load90 to i64
  %addr.ffi.masked92 = and i64 %addr.ffi.int91, 281474976710655
  %addr.ffi.clean93 = inttoptr i64 %addr.ffi.masked92 to ptr
  %var.load94 = load i64, ptr %var.rem2, align 8
  %coerce.trunc95 = trunc i64 %var.load89 to i32
  %call.res96 = call i64 @write(i32 %coerce.trunc95, ptr %addr.ffi.clean93, i64 %var.load94)
  store i64 %call.res96, ptr %var.w97, align 8
  %var.load98 = load i64, ptr %var.w97, align 8
  %cmptmp99 = icmp slt i64 %var.load98, 0
  br i1 %cmptmp99, label %choice.then100, label %choice.else101

choice.exit28:                                    ; preds = %choice.exit102, %choice.exit54
  br label %loop.latch.59

choice.then52:                                    ; preds = %choice.then27
  %call.res55 = call i64 @"libc::errno"()
  store i64 %call.res55, ptr %var.errno_val, align 8
  %var.load56 = load i64, ptr %var.errno_val, align 8
  %cmptmp57 = icmp eq i64 %var.load56, 4
  br i1 %cmptmp57, label %choice.then58, label %choice.exit59

choice.else53:                                    ; preds = %choice.then27
  %var.load66 = load i64, ptr %var.w, align 8
  %val.match70 = icmp eq i64 %var.load66, 0
  br i1 %val.match70, label %choice.case68, label %choice.next69

choice.exit54:                                    ; preds = %choice.exit67, %choice.exit64
  br label %choice.exit28

choice.then58:                                    ; preds = %choice.then52
  br label %loop.latch.59

choice.exit59:                                    ; preds = %choice.then52
  %var.load60 = load i64, ptr %"var.off'", align 8
  %cmptmp61 = icmp eq i64 %var.load60, 0
  br i1 %cmptmp61, label %choice.then62, label %choice.else63

choice.then62:                                    ; preds = %choice.exit59
  ret i64 -1

choice.else63:                                    ; preds = %choice.exit59
  br label %loop.exit.59

choice.exit64:                                    ; preds = %ret.dead65
  br label %choice.exit54

ret.dead65:                                       ; No predecessors!
  br label %choice.exit64

choice.exit67:                                    ; preds = %choice.next69
  %var.load71 = load i64, ptr %"var.off'", align 8
  %var.load72 = load i64, ptr %var.w, align 8
  %addtmp73 = add i64 %var.load71, %var.load72
  store i64 %addtmp73, ptr %"var.off'", align 8
  br label %choice.exit54

choice.case68:                                    ; preds = %choice.else53
  br label %loop.exit.59

choice.next69:                                    ; preds = %choice.else53
  br label %choice.exit67

choice.then100:                                   ; preds = %choice.else
  %call.res103 = call i64 @"libc::errno"()
  store i64 %call.res103, ptr %var.errno_val104, align 8
  %var.load105 = load i64, ptr %var.errno_val104, align 8
  %cmptmp106 = icmp eq i64 %var.load105, 4
  br i1 %cmptmp106, label %choice.then107, label %choice.exit108

choice.else101:                                   ; preds = %choice.else
  %var.load115 = load i64, ptr %var.w97, align 8
  %val.match119 = icmp eq i64 %var.load115, 0
  br i1 %val.match119, label %choice.case117, label %choice.next118

choice.exit102:                                   ; preds = %choice.exit116, %choice.exit113
  br label %choice.exit28

choice.then107:                                   ; preds = %choice.then100
  br label %loop.latch.59

choice.exit108:                                   ; preds = %choice.then100
  %var.load109 = load i64, ptr %"var.off'", align 8
  %cmptmp110 = icmp eq i64 %var.load109, 0
  br i1 %cmptmp110, label %choice.then111, label %choice.else112

choice.then111:                                   ; preds = %choice.exit108
  ret i64 -1

choice.else112:                                   ; preds = %choice.exit108
  br label %loop.exit.59

choice.exit113:                                   ; preds = %ret.dead114
  br label %choice.exit102

ret.dead114:                                      ; No predecessors!
  br label %choice.exit113

choice.exit116:                                   ; preds = %choice.next118
  %var.load120 = load i64, ptr %"var.off'", align 8
  %var.load121 = load i64, ptr %var.w97, align 8
  %addtmp122 = add i64 %var.load120, %var.load121
  store i64 %addtmp122, ptr %"var.off'", align 8
  br label %choice.exit102

choice.case117:                                   ; preds = %choice.else101
  br label %loop.exit.59

choice.next118:                                   ; preds = %choice.else101
  br label %choice.exit116
}

define internal i64 @"io::#refill"(ptr %0) #0 {
entry:
  %var.errno_val = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.60 = alloca i64, align 8
  %loop.idx.60 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.space = alloca i64, align 8
  %var.read_cap = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.buf, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %cmptmp = icmp sgt i64 %fld.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.buf, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %subtmp = sub i64 %b.len5, %fld.load8
  store i64 %subtmp, ptr %var.rem, align 8
  %var.load9 = load i64, ptr %var.rem, align 8
  %cmptmp10 = icmp sgt i64 %var.load9, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

choice.exit:                                      ; preds = %b.len_ok, %entry
  %var.load41 = load ptr, ptr %var.r, align 8
  %fld.gep42 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load41, i32 0, i32 3
  %fld.load43 = load i64, ptr %fld.gep42, align 8
  %cmptmp44 = icmp sgt i64 %fld.load43, 0
  br i1 %cmptmp44, label %choice.then45, label %choice.else

choice.then11:                                    ; preds = %choice.then
  %var.load13 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 1
  %b.ptr14 = load ptr, ptr %b.ptr, align 8
  %var.load15 = load ptr, ptr %var.buf, align 8
  %b.ptr16 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 1
  %b.ptr17 = load ptr, ptr %b.ptr16, align 8
  %var.load18 = load ptr, ptr %var.r, align 8
  %fld.gep19 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load18, i32 0, i32 2
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr17 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load20
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load21 = load i64, ptr %var.rem, align 8
  %raw.int = ptrtoint ptr %b.ptr14 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

choice.exit12:                                    ; preds = %addr_ok26, %choice.then
  %var.load36 = load i64, ptr %var.rem, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load36, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then11
  %raw.int22 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int23 = and i64 %raw.int22, 281474976710655
  %raw.clean.ptr24 = inttoptr i64 %raw.clean.int23 to ptr
  %addr.tag25 = lshr i64 %raw.int22, 48
  %tag.immortal27 = icmp eq i64 %addr.tag25, 0
  br i1 %tag.immortal27, label %addr_ok26, label %tag.gen_check28

tag.gen_check:                                    ; preds = %choice.then11
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok26:                                        ; preds = %abort.dead35, %tag.slow_check29, %tag.gen_check28, %addr_ok
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr24, i64 %var.load21, i1 false)
  br label %choice.exit12

tag.gen_check28:                                  ; preds = %addr_ok
  %active.gen31 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok32 = icmp eq i64 %addr.tag25, %active.gen31
  br i1 %tag.fast.ok32, label %addr_ok26, label %tag.slow_check29

tag.slow_check29:                                 ; preds = %tag.gen_check28
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %addr.tag25)
  br i1 %tag.valid34, label %addr_ok26, label %tag.stale30

tag.stale30:                                      ; preds = %tag.slow_check29
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %addr_ok26

b.len_big_check:                                  ; preds = %choice.exit12
  %b.len.big = icmp sgt i64 %var.load36, %b.cap37
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead38, %b.len_big_check
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load36, ptr %b.len.gep, align 8
  %var.load39 = load ptr, ptr %var.r, align 8
  %fld.gep40 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load39, i32 0, i32 2
  store i64 0, ptr %fld.gep40, align 8
  br label %choice.exit

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit12
  %3 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %b.len_ok

choice.then45:                                    ; preds = %choice.exit
  %var.load47 = load ptr, ptr %var.r, align 8
  %fld.gep48 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load47, i32 0, i32 3
  %fld.load49 = load i64, ptr %fld.gep48, align 8
  br label %choice.exit46

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit46

choice.exit46:                                    ; preds = %choice.else, %choice.then45
  %choice.res = phi i64 [ %fld.load49, %choice.then45 ], [ 4096, %choice.else ]
  store i64 %choice.res, ptr %var.read_cap, align 8
  %var.load50 = load i64, ptr %var.read_cap, align 8
  %var.load51 = load ptr, ptr %var.buf, align 8
  %b.len52 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 0
  %b.len53 = load i64, ptr %b.len52, align 8
  %subtmp54 = sub i64 %var.load50, %b.len53
  store i64 %subtmp54, ptr %var.space, align 8
  %var.load55 = load i64, ptr %var.space, align 8
  %cmptmp56 = icmp sle i64 %var.load55, 0
  br i1 %cmptmp56, label %choice.then57, label %choice.else58

choice.then57:                                    ; preds = %choice.exit46
  br label %choice.exit59

choice.else58:                                    ; preds = %choice.exit46
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.60, align 8
  br label %loop.header.60

choice.exit59:                                    ; preds = %loop.exit.60, %choice.then57
  %choice.res120 = phi i64 [ 0, %choice.then57 ], [ %var.load119, %loop.exit.60 ]
  ret i64 %choice.res120

loop.header.60:                                   ; preds = %loop.latch.60, %choice.else58
  %counter.load = load i64, ptr %loop.idx.60, align 8
  br label %loop.body.60

loop.body.60:                                     ; preds = %loop.header.60
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.60, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load60 = load ptr, ptr %var.buf, align 8
  %b.len61 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 0
  %b.len62 = load i64, ptr %b.len61, align 8
  store i64 %b.len62, ptr %var.cur, align 8
  %var.load63 = load ptr, ptr %var.r, align 8
  %fld.gep64 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load63, i32 0, i32 0
  %fld.load65 = load i64, ptr %fld.gep64, align 8
  %var.load66 = load ptr, ptr %var.buf, align 8
  %b.ptr67 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load66, i32 0, i32 1
  %b.ptr68 = load ptr, ptr %b.ptr67, align 8
  %var.load69 = load i64, ptr %var.cur, align 8
  %ptr.int.l70 = ptrtoint ptr %b.ptr68 to i64
  %addtmp71 = add i64 %ptr.int.l70, %var.load69
  %ptr.res72 = inttoptr i64 %addtmp71 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res72 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load73 = load i64, ptr %var.space, align 8
  %coerce.trunc = trunc i64 %fld.load65 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load73)
  store i64 %call.res, ptr %var.n, align 8
  %var.load74 = load i64, ptr %var.n, align 8
  %cmptmp75 = icmp slt i64 %var.load74, 0
  br i1 %cmptmp75, label %choice.then76, label %choice.else77

loop.exit.nat.60:                                 ; No predecessors!
  br label %loop.exit.60

loop.latch.60:                                    ; preds = %choice.exit78, %choice.then82
  %step.val = load i64, ptr %loop.step.60, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.60, align 8
  br label %loop.header.60

loop.exit.60:                                     ; preds = %b.len_ok111, %choice.then96, %choice.exit89, %loop.exit.nat.60
  %var.load119 = load i64, ptr %"var.n'", align 8
  br label %choice.exit59

choice.then76:                                    ; preds = %loop.body.60
  %call.res79 = call i64 @"libc::errno"()
  store i64 %call.res79, ptr %var.errno_val, align 8
  %var.load80 = load i64, ptr %var.errno_val, align 8
  %cmptmp81 = icmp eq i64 %var.load80, 4
  br i1 %cmptmp81, label %choice.then82, label %choice.exit83

choice.else77:                                    ; preds = %loop.body.60
  %var.load94 = load i64, ptr %var.n, align 8
  %cmptmp95 = icmp eq i64 %var.load94, 0
  br i1 %cmptmp95, label %choice.then96, label %choice.else97

choice.exit78:                                    ; preds = %choice.exit98
  br label %loop.latch.60

choice.then82:                                    ; preds = %choice.then76
  br label %loop.latch.60

choice.exit83:                                    ; preds = %choice.then76
  %var.load84 = load ptr, ptr %var.r, align 8
  %var.load85 = load i64, ptr %var.errno_val, align 8
  %cmptmp86 = icmp eq i64 %var.load85, 11
  br i1 %cmptmp86, label %choice.then87, label %choice.else88

choice.then87:                                    ; preds = %choice.exit83
  br label %choice.exit89

choice.else88:                                    ; preds = %choice.exit83
  %var.load90 = load i64, ptr %var.errno_val, align 8
  br label %choice.exit89

choice.exit89:                                    ; preds = %choice.else88, %choice.then87
  %choice.res91 = phi i64 [ 11, %choice.then87 ], [ %var.load90, %choice.else88 ]
  %fld.gep92 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load84, i32 0, i32 4
  store i64 %choice.res91, ptr %fld.gep92, align 8
  %var.load93 = load i64, ptr %var.n, align 8
  store i64 %var.load93, ptr %"var.n'", align 8
  br label %loop.exit.60

choice.then96:                                    ; preds = %choice.else77
  %var.load99 = load ptr, ptr %var.r, align 8
  %fld.gep100 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load99, i32 0, i32 5
  store i1 true, ptr %fld.gep100, align 1
  %var.load101 = load ptr, ptr %var.r, align 8
  %fld.gep102 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load101, i32 0, i32 4
  store i64 0, ptr %fld.gep102, align 8
  store i64 0, ptr %"var.n'", align 8
  br label %loop.exit.60

choice.else97:                                    ; preds = %choice.else77
  %var.load103 = load i64, ptr %var.cur, align 8
  %var.load104 = load i64, ptr %var.n, align 8
  %addtmp105 = add i64 %var.load103, %var.load104
  %b.load106 = load ptr, ptr %var.buf, align 8
  %b.cap107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 2
  %b.cap108 = load i64, ptr %b.cap107, align 8
  %b.len.neg109 = icmp slt i64 %addtmp105, 0
  br i1 %b.len.neg109, label %b.len_oob112, label %b.len_big_check110

choice.exit98:                                    ; No predecessors!
  br label %choice.exit78

b.len_big_check110:                               ; preds = %choice.else97
  %b.len.big113 = icmp sgt i64 %addtmp105, %b.cap108
  br i1 %b.len.big113, label %b.len_oob112, label %b.len_ok111

b.len_ok111:                                      ; preds = %abort.dead114, %b.len_big_check110
  %b.len.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 0
  store i64 %addtmp105, ptr %b.len.gep115, align 8
  %var.load116 = load ptr, ptr %var.r, align 8
  %fld.gep117 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load116, i32 0, i32 4
  store i64 0, ptr %fld.gep117, align 8
  %var.load118 = load i64, ptr %var.n, align 8
  store i64 %var.load118, ptr %"var.n'", align 8
  br label %loop.exit.60

b.len_oob112:                                     ; preds = %b.len_big_check110, %choice.else97
  %4 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead114:                                    ; No predecessors!
  br label %b.len_ok111
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

define void @"io::outs"(ptr %0) #0 {
entry:
  %var.nl = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr @str.0.struct, ptr %var.nl, align 8
  %var.load = load i64, ptr @"var.io::STDOUT", align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %var.load2 = load ptr, ptr %var.nl, align 8
  %call.res = call i64 @"io::#writev_all"(i64 %var.load, ptr %var.load1, ptr %var.load2)
  ret void
}

define void @"io::errs"(ptr %0) #0 {
entry:
  %var.nl = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr @str.0.struct, ptr %var.nl, align 8
  %var.load = load i64, ptr @"var.io::STDERR", align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %var.load2 = load ptr, ptr %var.nl, align 8
  %call.res = call i64 @"io::#writev_all"(i64 %var.load, ptr %var.load1, ptr %var.load2)
  ret void
}

define { i64, ptr } @"io::read"(ptr %0, i64 %1) #0 {
entry:
  %var.res = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.take = alloca i64, align 8
  %var.avail = alloca i64, align 8
  %var.max = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.max, align 8
  %var.load = load i64, ptr %var.max, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i64, ptr } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load2 = load ptr, ptr %var.r, align 8
  %fld.gep3 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load2, i32 0, i32 1
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %cmptmp6 = icmp sge i64 %fld.load, %b.len5
  br i1 %cmptmp6, label %choice.then7, label %choice.exit8

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then7:                                     ; preds = %choice.exit
  %var.load9 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load9)
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.then7, %choice.exit
  %var.load10 = load ptr, ptr %var.r, align 8
  %fld.gep11 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %var.load13 = load ptr, ptr %var.r, align 8
  %fld.gep14 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %b.len16 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load15, i32 0, i32 0
  %b.len17 = load i64, ptr %b.len16, align 8
  %cmptmp18 = icmp sge i64 %fld.load12, %b.len17
  br i1 %cmptmp18, label %choice.then19, label %choice.exit20

choice.then19:                                    ; preds = %choice.exit8
  ret { i64, ptr } zeroinitializer

choice.exit20:                                    ; preds = %ret.dead21, %choice.exit8
  %var.load22 = load ptr, ptr %var.r, align 8
  %fld.gep23 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load22, i32 0, i32 1
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %b.len25 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load24, i32 0, i32 0
  %b.len26 = load i64, ptr %b.len25, align 8
  %var.load27 = load ptr, ptr %var.r, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load27, i32 0, i32 2
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %subtmp = sub i64 %b.len26, %fld.load29
  store i64 %subtmp, ptr %var.avail, align 8
  %var.load30 = load i64, ptr %var.avail, align 8
  %var.load31 = load i64, ptr %var.max, align 8
  %cmptmp32 = icmp slt i64 %var.load30, %var.load31
  br i1 %cmptmp32, label %choice.then33, label %choice.else

ret.dead21:                                       ; No predecessors!
  br label %choice.exit20

choice.then33:                                    ; preds = %choice.exit20
  %var.load35 = load i64, ptr %var.avail, align 8
  br label %choice.exit34

choice.else:                                      ; preds = %choice.exit20
  %var.load36 = load i64, ptr %var.max, align 8
  br label %choice.exit34

choice.exit34:                                    ; preds = %choice.else, %choice.then33
  %choice.res = phi i64 [ %var.load35, %choice.then33 ], [ %var.load36, %choice.else ]
  store i64 %choice.res, ptr %var.take, align 8
  %var.load37 = load i64, ptr %var.take, align 8
  %cap.neg = icmp slt i64 %var.load37, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load37
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len38

b.buf.len38:                                      ; preds = %abort.dead, %choice.exit34
  %arena.cur = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.res, align 8
  %b.load = load ptr, ptr %var.res, align 8
  %var.load39 = load ptr, ptr %var.r, align 8
  %fld.gep40 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load39, i32 0, i32 1
  %fld.load41 = load ptr, ptr %fld.gep40, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load41, i32 0, i32 0
  %b.read.len42 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load41, i32 0, i32 1
  %b.read.data43 = load ptr, ptr %b.read.data, align 8
  %var.load44 = load ptr, ptr %var.r, align 8
  %fld.gep45 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load44, i32 0, i32 2
  %fld.load46 = load i64, ptr %fld.gep45, align 8
  %var.load47 = load ptr, ptr %var.r, align 8
  %fld.gep48 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load47, i32 0, i32 2
  %fld.load49 = load i64, ptr %fld.gep48, align 8
  %var.load50 = load i64, ptr %var.take, align 8
  %addtmp = add i64 %fld.load49, %var.load50
  %start.is_neg = icmp slt i64 %fld.load46, 0
  %rel.start = add i64 %b.read.len42, %fld.load46
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load46
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len42
  %final.start = select i1 %start.gt.len, i64 %b.read.len42, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %b.read.len42, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len42
  %final.end = select i1 %end.gt.len, i64 %b.read.len42, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data43, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len51 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len51, i64 %view.len)
  %sum52 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf53 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf53, label %str_overflow_abort55, label %b.app.new.len54

str_overflow_abort:                               ; preds = %choice.exit34
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len38

b.app.new.len54:                                  ; preds = %abort.dead56, %b.buf.len38
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap57 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap57, %sum52
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort55:                             ; preds = %b.buf.len38
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %b.app.new.len54

b.grow2:                                          ; preds = %b.app.new.len54
  %b.cap2 = mul i64 %b.cap57, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum52
  %b.new.cap = select i1 %b.cap.need, i64 %sum52, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len258 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data259 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum60 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf61 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf61, label %str_overflow_abort63, label %b.new.buf.len262

b.nogrow2:                                        ; preds = %b.app.new.len54
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len262
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data66 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data66, i64 %b.app.cur.len51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data66, i64 %sum52
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum52, ptr %b.len.gep67, align 8
  %var.load68 = load ptr, ptr %var.r, align 8
  %var.load69 = load ptr, ptr %var.r, align 8
  %fld.gep70 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load69, i32 0, i32 2
  %fld.load71 = load i64, ptr %fld.gep70, align 8
  %var.load72 = load i64, ptr %var.take, align 8
  %addtmp73 = add i64 %fld.load71, %var.load72
  %fld.gep74 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load68, i32 0, i32 2
  store i64 %addtmp73, ptr %fld.gep74, align 8
  %var.load75 = load ptr, ptr %var.res, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 0
  %b.freeze.len76 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 1
  %b.freeze.data77 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len262:                                 ; preds = %abort.dead64, %b.grow2
  %arena.cur65 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %sum60)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data259, i64 %b.cur.len258, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len258
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort63:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %b.new.buf.len262

b.freeze.check:                                   ; preds = %b.grow_done
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data77, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data77, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data77, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len76, 1
  %arena.cur78 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data77, i64 %b.freeze.len76, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len76
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data79 = phi ptr [ %b.freeze.data77, %b.grow_done ], [ %b.freeze.data77, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur80 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len76, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data79, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 2
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

define { i64, ptr } @"io::read_all"(ptr %0, i64 %1) #0 {
entry:
  %var.errno_val = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var.to_read = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.62 = alloca i64, align 8
  %loop.idx.62 = alloca i64, align 8
  %var.chunk = alloca i64, align 8
  %var.take = alloca i64, align 8
  %var.avail = alloca i64, align 8
  %var.res_b = alloca ptr, align 8
  %var.max = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.max, align 8
  %var.load = load i64, ptr %var.max, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i64, ptr } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.max, align 8
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
  store ptr %builder.new, ptr %var.res_b, align 8
  %var.load4 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load4, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %subtmp = sub i64 %b.len5, %fld.load8
  store i64 %subtmp, ptr %var.avail, align 8
  %var.load9 = load i64, ptr %var.avail, align 8
  %cmptmp10 = icmp sgt i64 %var.load9, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

choice.then11:                                    ; preds = %b.buf.len2
  %var.load13 = load i64, ptr %var.avail, align 8
  %var.load14 = load i64, ptr %var.max, align 8
  %cmptmp15 = icmp slt i64 %var.load13, %var.load14
  br i1 %cmptmp15, label %choice.then16, label %choice.else

choice.exit12:                                    ; preds = %b.grow_done, %b.buf.len2
  store i64 4096, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.62, align 8
  br label %loop.header.62

choice.then16:                                    ; preds = %choice.then11
  %var.load18 = load i64, ptr %var.avail, align 8
  br label %choice.exit17

choice.else:                                      ; preds = %choice.then11
  %var.load19 = load i64, ptr %var.max, align 8
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else, %choice.then16
  %choice.res = phi i64 [ %var.load18, %choice.then16 ], [ %var.load19, %choice.else ]
  store i64 %choice.res, ptr %var.take, align 8
  %b.load = load ptr, ptr %var.res_b, align 8
  %var.load20 = load ptr, ptr %var.r, align 8
  %fld.gep21 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load20, i32 0, i32 1
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load22, i32 0, i32 0
  %b.read.len23 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load22, i32 0, i32 1
  %b.read.data24 = load ptr, ptr %b.read.data, align 8
  %var.load25 = load ptr, ptr %var.r, align 8
  %fld.gep26 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 2
  %fld.load27 = load i64, ptr %fld.gep26, align 8
  %var.load28 = load ptr, ptr %var.r, align 8
  %fld.gep29 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load28, i32 0, i32 2
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %var.load31 = load i64, ptr %var.take, align 8
  %addtmp = add i64 %fld.load30, %var.load31
  %start.is_neg = icmp slt i64 %fld.load27, 0
  %rel.start = add i64 %b.read.len23, %fld.load27
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load27
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len23
  %final.start = select i1 %start.gt.len, i64 %b.read.len23, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %b.read.len23, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len23
  %final.end = select i1 %end.gt.len, i64 %b.read.len23, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data24, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len32 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len32, i64 %view.len)
  %sum33 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf34 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf34, label %str_overflow_abort36, label %b.app.new.len35

b.app.new.len35:                                  ; preds = %abort.dead37, %choice.exit17
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap38 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap38, %sum33
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort36:                             ; preds = %choice.exit17
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %b.app.new.len35

b.grow2:                                          ; preds = %b.app.new.len35
  %b.cap2 = mul i64 %b.cap38, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum33
  %b.new.cap = select i1 %b.cap.need, i64 %sum33, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len239 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data240 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf42 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.new.buf.len243

b.nogrow2:                                        ; preds = %b.app.new.len35
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len243
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data47 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data47, i64 %b.app.cur.len32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data47, i64 %sum33
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum33, ptr %b.len.gep48, align 8
  %var.load49 = load ptr, ptr %var.r, align 8
  %var.load50 = load ptr, ptr %var.r, align 8
  %fld.gep51 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load50, i32 0, i32 2
  %fld.load52 = load i64, ptr %fld.gep51, align 8
  %var.load53 = load i64, ptr %var.take, align 8
  %addtmp54 = add i64 %fld.load52, %var.load53
  %fld.gep55 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load49, i32 0, i32 2
  store i64 %addtmp54, ptr %fld.gep55, align 8
  br label %choice.exit12

b.new.buf.len243:                                 ; preds = %abort.dead45, %b.grow2
  %arena.cur46 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data240, i64 %b.cur.len239, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len239
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort44:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %b.new.buf.len243

loop.header.62:                                   ; preds = %loop.latch.62, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.62, align 8
  br label %loop.body.62

loop.body.62:                                     ; preds = %loop.header.62
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.62, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load56 = load i64, ptr %var.max, align 8
  %var.load57 = load ptr, ptr %var.res_b, align 8
  %b.len58 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load57, i32 0, i32 0
  %b.len59 = load i64, ptr %b.len58, align 8
  %subtmp60 = sub i64 %var.load56, %b.len59
  store i64 %subtmp60, ptr %var.rem, align 8
  %var.load61 = load i64, ptr %var.rem, align 8
  %cmptmp62 = icmp sle i64 %var.load61, 0
  br i1 %cmptmp62, label %choice.then63, label %choice.exit64

loop.exit.nat.62:                                 ; No predecessors!
  br label %loop.exit.62

loop.latch.62:                                    ; preds = %choice.exit89, %choice.then93
  %step.val = load i64, ptr %loop.step.62, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.exit.62:                                     ; preds = %choice.then106, %choice.exit100, %choice.then63, %loop.exit.nat.62
  %var.load123 = load ptr, ptr %var.res_b, align 8
  %b.len124 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 0
  %b.len125 = load i64, ptr %b.len124, align 8
  %cmptmp126 = icmp eq i64 %b.len125, 0
  br i1 %cmptmp126, label %choice.then127, label %choice.exit128

choice.then63:                                    ; preds = %loop.body.62
  br label %loop.exit.62

choice.exit64:                                    ; preds = %loop.body.62
  %var.load65 = load i64, ptr %var.rem, align 8
  %var.load66 = load i64, ptr %var.chunk, align 8
  %cmptmp67 = icmp slt i64 %var.load65, %var.load66
  br i1 %cmptmp67, label %choice.then68, label %choice.else69

choice.then68:                                    ; preds = %choice.exit64
  %var.load71 = load i64, ptr %var.rem, align 8
  br label %choice.exit70

choice.else69:                                    ; preds = %choice.exit64
  %var.load72 = load i64, ptr %var.chunk, align 8
  br label %choice.exit70

choice.exit70:                                    ; preds = %choice.else69, %choice.then68
  %choice.res73 = phi i64 [ %var.load71, %choice.then68 ], [ %var.load72, %choice.else69 ]
  store i64 %choice.res73, ptr %var.to_read, align 8
  %var.load74 = load ptr, ptr %var.res_b, align 8
  %b.len75 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load74, i32 0, i32 0
  %b.len76 = load i64, ptr %b.len75, align 8
  store i64 %b.len76, ptr %var.cur, align 8
  %var.load77 = load ptr, ptr %var.r, align 8
  %fld.gep78 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load77, i32 0, i32 0
  %fld.load79 = load i64, ptr %fld.gep78, align 8
  %var.load80 = load ptr, ptr %var.res_b, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load80, i32 0, i32 1
  %b.ptr81 = load ptr, ptr %b.ptr, align 8
  %var.load82 = load i64, ptr %var.cur, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr81 to i64
  %addtmp83 = add i64 %ptr.int.l, %var.load82
  %ptr.res = inttoptr i64 %addtmp83 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load84 = load i64, ptr %var.to_read, align 8
  %coerce.trunc = trunc i64 %fld.load79 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load84)
  store i64 %call.res, ptr %var.n, align 8
  %var.load85 = load i64, ptr %var.n, align 8
  %cmptmp86 = icmp slt i64 %var.load85, 0
  br i1 %cmptmp86, label %choice.then87, label %choice.else88

choice.then87:                                    ; preds = %choice.exit70
  %call.res90 = call i64 @"libc::errno"()
  store i64 %call.res90, ptr %var.errno_val, align 8
  %var.load91 = load i64, ptr %var.errno_val, align 8
  %cmptmp92 = icmp eq i64 %var.load91, 4
  br i1 %cmptmp92, label %choice.then93, label %choice.exit94

choice.else88:                                    ; preds = %choice.exit70
  %var.load104 = load i64, ptr %var.n, align 8
  %cmptmp105 = icmp eq i64 %var.load104, 0
  br i1 %cmptmp105, label %choice.then106, label %choice.else107

choice.exit89:                                    ; preds = %choice.exit108
  br label %loop.latch.62

choice.then93:                                    ; preds = %choice.then87
  br label %loop.latch.62

choice.exit94:                                    ; preds = %choice.then87
  %var.load95 = load ptr, ptr %var.r, align 8
  %var.load96 = load i64, ptr %var.errno_val, align 8
  %cmptmp97 = icmp eq i64 %var.load96, 11
  br i1 %cmptmp97, label %choice.then98, label %choice.else99

choice.then98:                                    ; preds = %choice.exit94
  br label %choice.exit100

choice.else99:                                    ; preds = %choice.exit94
  %var.load101 = load i64, ptr %var.errno_val, align 8
  br label %choice.exit100

choice.exit100:                                   ; preds = %choice.else99, %choice.then98
  %choice.res102 = phi i64 [ 11, %choice.then98 ], [ %var.load101, %choice.else99 ]
  %fld.gep103 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load95, i32 0, i32 4
  store i64 %choice.res102, ptr %fld.gep103, align 8
  br label %loop.exit.62

choice.then106:                                   ; preds = %choice.else88
  %var.load109 = load ptr, ptr %var.r, align 8
  %fld.gep110 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load109, i32 0, i32 5
  store i1 true, ptr %fld.gep110, align 1
  %var.load111 = load ptr, ptr %var.r, align 8
  %fld.gep112 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load111, i32 0, i32 4
  store i64 0, ptr %fld.gep112, align 8
  br label %loop.exit.62

choice.else107:                                   ; preds = %choice.else88
  %var.load113 = load ptr, ptr %var.r, align 8
  %fld.gep114 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load113, i32 0, i32 4
  store i64 0, ptr %fld.gep114, align 8
  %var.load115 = load i64, ptr %var.cur, align 8
  %var.load116 = load i64, ptr %var.n, align 8
  %addtmp117 = add i64 %var.load115, %var.load116
  %b.load118 = load ptr, ptr %var.res_b, align 8
  %b.cap119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 2
  %b.cap120 = load i64, ptr %b.cap119, align 8
  %b.len.neg = icmp slt i64 %addtmp117, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

choice.exit108:                                   ; preds = %b.len_ok
  br label %choice.exit89

b.len_big_check:                                  ; preds = %choice.else107
  %b.len.big = icmp sgt i64 %addtmp117, %b.cap120
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead121, %b.len_big_check
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 0
  store i64 %addtmp117, ptr %b.len.gep122, align 8
  br label %choice.exit108

b.len_oob:                                        ; preds = %b.len_big_check, %choice.else107
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead121:                                    ; No predecessors!
  br label %b.len_ok

choice.then127:                                   ; preds = %loop.exit.62
  ret { i64, ptr } zeroinitializer

choice.exit128:                                   ; preds = %ret.dead129, %loop.exit.62
  %var.load130 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 0
  %b.freeze.len131 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 1
  %b.freeze.data132 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead129:                                      ; No predecessors!
  br label %choice.exit128

b.freeze.check:                                   ; preds = %choice.exit128
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data132, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data132, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data132, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len131, 1
  %arena.cur133 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data132, i64 %b.freeze.len131, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len131
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit128
  %b.freeze.data134 = phi ptr [ %b.freeze.data132, %choice.exit128 ], [ %b.freeze.data132, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur135 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len131, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data134, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 2
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

define { i1, i64 } @"io::read_byte"(ptr %0) #0 {
entry:
  %var.b = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load3, i32 0, i32 0
  %b.len4 = load i64, ptr %b.len, align 8
  %cmptmp = icmp sge i64 %fld.load, %b.len4
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load5)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %var.load9 = load ptr, ptr %var.r, align 8
  %fld.gep10 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load9, i32 0, i32 1
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %b.len12 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 0
  %b.len13 = load i64, ptr %b.len12, align 8
  %cmptmp14 = icmp sge i64 %fld.load8, %b.len13
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.then15:                                    ; preds = %choice.exit
  ret { i1, i64 } zeroinitializer

choice.exit16:                                    ; preds = %ret.dead, %choice.exit
  %var.load17 = load ptr, ptr %var.r, align 8
  %fld.gep18 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load ptr, ptr %fld.gep18, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 0
  %b.read.len20 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 1
  %b.read.data21 = load ptr, ptr %b.read.data, align 8
  %var.load22 = load ptr, ptr %var.r, align 8
  %fld.gep23 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load22, i32 0, i32 2
  %fld.load24 = load i64, ptr %fld.gep23, align 8
  %idx.neg = icmp slt i64 %fld.load24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit16

idx_big_check:                                    ; preds = %choice.exit16
  %idx.big = icmp sge i64 %fld.load24, %b.read.len20
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %b.read.data21, i64 %fld.load24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b, align 8
  %var.load25 = load ptr, ptr %var.r, align 8
  %var.load26 = load ptr, ptr %var.r, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %addtmp = add i64 %fld.load28, 1
  %fld.gep29 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 2
  store i64 %addtmp, ptr %fld.gep29, align 8
  %var.load30 = load i64, ptr %var.b, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load30, 1
  ret { i1, i64 } %ram.pay

idx_oob:                                          ; preds = %idx_big_check, %choice.exit16
  %1 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok
}

define { i64, ptr } @"io::read_until"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var.has_delim = alloca i1, align 1
  %var._52 = alloca i64, align 8
  %var._i51 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.65 = alloca i64, align 8
  %loop.idx.65 = alloca i64, align 8
  %"var.found_idx'" = alloca i64, align 8
  %var.scan_count = alloca i64, align 8
  %var.in_buf = alloca i64, align 8
  %var.rem_budget = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.64 = alloca i64, align 8
  %loop.idx.64 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.max = alloca i64, align 8
  %var.delim = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.delim, align 8
  store i64 %2, ptr %var.max, align 8
  %var.load = load i64, ptr %var.max, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.max, align 8
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

choice.exit:                                      ; preds = %choice.exit345, %choice.then
  %choice.res386 = phi ptr [ null, %choice.then ], [ %choice.res385, %choice.exit345 ]
  %ret.niche.nn387 = icmp ne ptr %choice.res386, null
  br i1 %ret.niche.nn387, label %ret.niche.load388, label %ret.niche.merge389

b.buf.len2:                                       ; preds = %abort.dead, %choice.else
  %arena.cur3 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  store i64 0, ptr %loop.idx.64, align 8
  br label %loop.header.64

str_overflow_abort:                               ; preds = %choice.else
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

loop.header.64:                                   ; preds = %loop.latch.64, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.64, align 8
  br label %loop.body.64

loop.body.64:                                     ; preds = %loop.header.64
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.64, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load4, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load5 = load ptr, ptr %var.r, align 8
  %fld.gep6 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load5, i32 0, i32 1
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load7, i32 0, i32 0
  %b.len8 = load i64, ptr %b.len, align 8
  %cmptmp9 = icmp sge i64 %fld.load, %b.len8
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

loop.exit.nat.64:                                 ; No predecessors!
  br label %loop.exit.64

loop.latch.64:                                    ; preds = %choice.exit72
  %step.val337 = load i64, ptr %loop.step.64, align 8
  %loop.next338 = add i64 %counter.load, %step.val337
  store i64 %loop.next338, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.exit.64:                                     ; preds = %choice.then15, %loop.exit.nat.64
  %var.load339 = load ptr, ptr %var.out, align 8
  %b.len340 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load339, i32 0, i32 0
  %b.len341 = load i64, ptr %b.len340, align 8
  %cmptmp342 = icmp sgt i64 %b.len341, 0
  br i1 %cmptmp342, label %choice.then343, label %choice.else344

choice.then10:                                    ; preds = %loop.body.64
  %var.load12 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load12)
  store i64 %call.res, ptr %var.n, align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.exit11:                                    ; preds = %choice.exit16, %loop.body.64
  %var.load17 = load i64, ptr %var.max, align 8
  %var.load18 = load ptr, ptr %var.out, align 8
  %b.len19 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load18, i32 0, i32 0
  %b.len20 = load i64, ptr %b.len19, align 8
  %subtmp = sub i64 %var.load17, %b.len20
  store i64 %subtmp, ptr %var.rem_budget, align 8
  %var.load21 = load i64, ptr %var.rem_budget, align 8
  %cmptmp22 = icmp sle i64 %var.load21, 0
  br i1 %cmptmp22, label %choice.then23, label %choice.exit24

choice.then15:                                    ; preds = %choice.then10
  br label %loop.exit.64

choice.exit16:                                    ; preds = %choice.then10
  br label %choice.exit11

choice.then23:                                    ; preds = %choice.exit11
  %var.load25 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  %b.freeze.len26 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  %b.freeze.data27 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit24:                                    ; preds = %ret.dead, %choice.exit11
  %var.load31 = load ptr, ptr %var.r, align 8
  %fld.gep32 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load31, i32 0, i32 1
  %fld.load33 = load ptr, ptr %fld.gep32, align 8
  %b.len34 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load33, i32 0, i32 0
  %b.len35 = load i64, ptr %b.len34, align 8
  %var.load36 = load ptr, ptr %var.r, align 8
  %fld.gep37 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load36, i32 0, i32 2
  %fld.load38 = load i64, ptr %fld.gep37, align 8
  %subtmp39 = sub i64 %b.len35, %fld.load38
  store i64 %subtmp39, ptr %var.in_buf, align 8
  %var.load40 = load i64, ptr %var.in_buf, align 8
  %var.load41 = load i64, ptr %var.rem_budget, align 8
  %cmptmp42 = icmp slt i64 %var.load40, %var.load41
  br i1 %cmptmp42, label %choice.then43, label %choice.else44

b.freeze.check:                                   ; preds = %choice.then23
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data27, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data27, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data27, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len26, 1
  %arena.cur28 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data27, i64 %b.freeze.len26, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len26
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then23
  %b.freeze.data29 = phi ptr [ %b.freeze.data27, %choice.then23 ], [ %b.freeze.data27, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur30 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len26, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data29, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.niche.nn = icmp ne ptr %builder.freeze, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

ret.niche.load:                                   ; preds = %b.freeze.done
  %ret.niche.val = load { i64, ptr }, ptr %builder.freeze, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %b.freeze.done
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %b.freeze.done ]
  ret { i64, ptr } %ret.niche.pack

ret.dead:                                         ; No predecessors!
  br label %choice.exit24

choice.then43:                                    ; preds = %choice.exit24
  %var.load46 = load i64, ptr %var.in_buf, align 8
  br label %choice.exit45

choice.else44:                                    ; preds = %choice.exit24
  %var.load47 = load i64, ptr %var.rem_budget, align 8
  br label %choice.exit45

choice.exit45:                                    ; preds = %choice.else44, %choice.then43
  %choice.res = phi i64 [ %var.load46, %choice.then43 ], [ %var.load47, %choice.else44 ]
  store i64 %choice.res, ptr %var.scan_count, align 8
  store i64 -1, ptr %"var.found_idx'", align 8
  %var.load48 = load i64, ptr %var.scan_count, align 8
  store i64 0, ptr %loop.idx.65, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.65

loop.header.65:                                   ; preds = %loop.latch.65, %choice.exit45
  %counter.load49 = load i64, ptr %loop.idx.65, align 8
  %loop.cond = icmp slt i64 %counter.load49, %var.load48
  br i1 %loop.cond, label %loop.body.65, label %loop.exit.nat.65

loop.body.65:                                     ; preds = %loop.header.65
  %loop.rel.i50 = sub i64 %counter.load49, 0
  store i64 1, ptr %loop.step.65, align 8
  store i64 %loop.rel.i50, ptr %var._i51, align 8
  store i64 %counter.load49, ptr %var._52, align 8
  store i64 %counter.load49, ptr %var.i, align 8
  %var.load53 = load ptr, ptr %var.r, align 8
  %fld.gep54 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load53, i32 0, i32 1
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load55, i32 0, i32 0
  %b.read.len56 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load55, i32 0, i32 1
  %b.read.data57 = load ptr, ptr %b.read.data, align 8
  %var.load58 = load ptr, ptr %var.r, align 8
  %fld.gep59 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load58, i32 0, i32 2
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  %var.load61 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %fld.load60, %var.load61
  %idx.neg = icmp slt i64 %addtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.65:                                 ; preds = %loop.header.65
  br label %loop.exit.65

loop.latch.65:                                    ; preds = %choice.exit66
  %step.val = load i64, ptr %loop.step.65, align 8
  %loop.next = add i64 %counter.load49, %step.val
  store i64 %loop.next, ptr %loop.idx.65, align 8
  br label %loop.header.65

loop.exit.65:                                     ; preds = %choice.then65, %loop.exit.nat.65
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load68 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp69 = icmp sge i64 %var.load68, 0
  br i1 %cmptmp69, label %choice.then70, label %choice.else71

idx_big_check:                                    ; preds = %loop.body.65
  %idx.big = icmp sge i64 %addtmp, %b.read.len56
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead62, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %b.read.data57, i64 %addtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load63 = load i64, ptr %var.delim, align 8
  %cmptmp64 = icmp eq i64 %s.byte.val, %var.load63
  br i1 %cmptmp64, label %choice.then65, label %choice.exit66

idx_oob:                                          ; preds = %idx_big_check, %loop.body.65
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %idx_ok

choice.then65:                                    ; preds = %idx_ok
  %var.load67 = load i64, ptr %var.i, align 8
  store i64 %var.load67, ptr %"var.found_idx'", align 8
  br label %loop.exit.65

choice.exit66:                                    ; preds = %idx_ok
  br label %loop.latch.65

choice.then70:                                    ; preds = %loop.exit.65
  %var.load73 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp74 = icmp sgt i64 %var.load73, 0
  br i1 %cmptmp74, label %choice.then75, label %choice.exit76

choice.else71:                                    ; preds = %loop.exit.65
  %var.load162 = load i64, ptr %var.scan_count, align 8
  %cmptmp163 = icmp sgt i64 %var.load162, 0
  br i1 %cmptmp163, label %choice.then164, label %choice.exit165

choice.exit72:                                    ; preds = %choice.exit252, %ret.dead161
  br label %loop.latch.64

choice.then75:                                    ; preds = %choice.then70
  %b.load = load ptr, ptr %var.out, align 8
  %var.load77 = load ptr, ptr %var.r, align 8
  %fld.gep78 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load77, i32 0, i32 1
  %fld.load79 = load ptr, ptr %fld.gep78, align 8
  %b.read.len80 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load79, i32 0, i32 0
  %b.read.len81 = load i64, ptr %b.read.len80, align 8
  %b.read.data82 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load79, i32 0, i32 1
  %b.read.data83 = load ptr, ptr %b.read.data82, align 8
  %var.load84 = load ptr, ptr %var.r, align 8
  %fld.gep85 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load84, i32 0, i32 2
  %fld.load86 = load i64, ptr %fld.gep85, align 8
  %var.load87 = load ptr, ptr %var.r, align 8
  %fld.gep88 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load87, i32 0, i32 2
  %fld.load89 = load i64, ptr %fld.gep88, align 8
  %var.load90 = load i64, ptr %"var.found_idx'", align 8
  %addtmp91 = add i64 %fld.load89, %var.load90
  %start.is_neg = icmp slt i64 %fld.load86, 0
  %rel.start = add i64 %b.read.len81, %fld.load86
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load86
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len81
  %final.start = select i1 %start.gt.len, i64 %b.read.len81, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp91, 0
  %rel.end = add i64 %b.read.len81, %addtmp91
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp91
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len81
  %final.end = select i1 %end.gt.len, i64 %b.read.len81, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data83, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len92 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len92, i64 %view.len)
  %sum93 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf94 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf94, label %str_overflow_abort96, label %b.app.new.len95

choice.exit76:                                    ; preds = %b.grow_done, %choice.then70
  %var.load109 = load ptr, ptr %var.r, align 8
  %var.load110 = load ptr, ptr %var.r, align 8
  %fld.gep111 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load110, i32 0, i32 2
  %fld.load112 = load i64, ptr %fld.gep111, align 8
  %var.load113 = load i64, ptr %"var.found_idx'", align 8
  %addtmp114 = add i64 %fld.load112, %var.load113
  %addtmp115 = add i64 %addtmp114, 1
  %fld.gep116 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load109, i32 0, i32 2
  store i64 %addtmp115, ptr %fld.gep116, align 8
  %var.load117 = load ptr, ptr %var.out, align 8
  %b.freeze.len118 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 0
  %b.freeze.len119 = load i64, ptr %b.freeze.len118, align 8
  %b.freeze.data120 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 1
  %b.freeze.data121 = load ptr, ptr %b.freeze.data120, align 8
  %b.freeze.arena122 = call ptr @dva_arena_current()
  %b.freeze.nc.gep123 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 1
  %b.freeze.nc124 = load i64, ptr %b.freeze.nc.gep123, align 8
  %b.freeze.has.chunk125 = icmp sgt i64 %b.freeze.nc124, 0
  br i1 %b.freeze.has.chunk125, label %b.freeze.check126, label %b.freeze.done128

b.app.new.len95:                                  ; preds = %abort.dead97, %choice.then75
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap98 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap98, %sum93
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort96:                             ; preds = %choice.then75
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead97:                                     ; No predecessors!
  br label %b.app.new.len95

b.grow2:                                          ; preds = %b.app.new.len95
  %b.cap2 = mul i64 %b.cap98, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum93
  %b.new.cap = select i1 %b.cap.need, i64 %sum93, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len299 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2100 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum101 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf102 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf102, label %str_overflow_abort104, label %b.new.buf.len2103

b.nogrow2:                                        ; preds = %b.app.new.len95
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2103
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data107 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data107, i64 %b.app.cur.len92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data107, i64 %sum93
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum93, ptr %b.len.gep108, align 8
  br label %choice.exit76

b.new.buf.len2103:                                ; preds = %abort.dead105, %b.grow2
  %arena.cur106 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 %sum101)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2100, i64 %b.cur.len299, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len299
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort104:                            ; preds = %b.grow2
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead105:                                    ; No predecessors!
  br label %b.new.buf.len2103

b.freeze.check126:                                ; preds = %choice.exit76
  %b.freeze.last.idx129 = sub i64 %b.freeze.nc124, 1
  %b.freeze.chunks.gep130 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 3
  %b.freeze.chunk.slot131 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep130, i64 0, i64 %b.freeze.last.idx129
  %b.freeze.last.chunk132 = load ptr, ptr %b.freeze.chunk.slot131, align 8
  %b.freeze.off.gep133 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 2
  %b.freeze.off134 = load i64, ptr %b.freeze.off.gep133, align 8
  %b.freeze.bump135 = getelementptr i8, ptr %b.freeze.last.chunk132, i64 %b.freeze.off134
  %b.freeze.cap.gep136 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 0
  %b.freeze.cap137 = load i64, ptr %b.freeze.cap.gep136, align 8
  %b.freeze.chunk.end138 = getelementptr i8, ptr %b.freeze.last.chunk132, i64 %b.freeze.cap137
  %b.freeze.ge.chunk139 = icmp uge ptr %b.freeze.data121, %b.freeze.last.chunk132
  %b.freeze.lt.end140 = icmp ult ptr %b.freeze.data121, %b.freeze.chunk.end138
  %b.freeze.in.chunk141 = and i1 %b.freeze.ge.chunk139, %b.freeze.lt.end140
  %b.freeze.ge.bump142 = icmp uge ptr %b.freeze.data121, %b.freeze.bump135
  %b.freeze.reaped143 = and i1 %b.freeze.in.chunk141, %b.freeze.ge.bump142
  br i1 %b.freeze.reaped143, label %b.freeze.copy127, label %b.freeze.done128

b.freeze.copy127:                                 ; preds = %b.freeze.check126
  %b.freeze.alen144 = add i64 %b.freeze.len119, 1
  %arena.cur145 = call ptr @dva_arena_current()
  %b.freeze.fresh146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 %b.freeze.alen144)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh146, ptr align 1 %b.freeze.data121, i64 %b.freeze.len119, i1 false)
  %b.freeze.nul147 = getelementptr i8, ptr %b.freeze.fresh146, i64 %b.freeze.len119
  store i8 0, ptr %b.freeze.nul147, align 1
  br label %b.freeze.done128

b.freeze.done128:                                 ; preds = %b.freeze.copy127, %b.freeze.check126, %choice.exit76
  %b.freeze.data148 = phi ptr [ %b.freeze.data121, %choice.exit76 ], [ %b.freeze.data121, %b.freeze.check126 ], [ %b.freeze.fresh146, %b.freeze.copy127 ]
  %arena.cur149 = call ptr @dva_arena_current()
  %builder.freeze150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 16)
  %str.build.len.gep151 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze150, i32 0, i32 0
  store i64 %b.freeze.len119, ptr %str.build.len.gep151, align 8
  %str.build.data.gep152 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze150, i32 0, i32 1
  store ptr %b.freeze.data148, ptr %str.build.data.gep152, align 8
  %b.freeze.rst.len153 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len153, align 8
  %b.freeze.rst.data154 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data154, align 8
  %b.freeze.rst.cap155 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap155, align 8
  %ret.niche.nn156 = icmp ne ptr %builder.freeze150, null
  br i1 %ret.niche.nn156, label %ret.niche.load157, label %ret.niche.merge158

ret.niche.load157:                                ; preds = %b.freeze.done128
  %ret.niche.val159 = load { i64, ptr }, ptr %builder.freeze150, align 8
  br label %ret.niche.merge158

ret.niche.merge158:                               ; preds = %ret.niche.load157, %b.freeze.done128
  %ret.niche.pack160 = phi { i64, ptr } [ %ret.niche.val159, %ret.niche.load157 ], [ zeroinitializer, %b.freeze.done128 ]
  ret { i64, ptr } %ret.niche.pack160

ret.dead161:                                      ; No predecessors!
  br label %choice.exit72

choice.then164:                                   ; preds = %choice.else71
  %b.load166 = load ptr, ptr %var.out, align 8
  %var.load167 = load ptr, ptr %var.r, align 8
  %fld.gep168 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load167, i32 0, i32 1
  %fld.load169 = load ptr, ptr %fld.gep168, align 8
  %b.read.len170 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load169, i32 0, i32 0
  %b.read.len171 = load i64, ptr %b.read.len170, align 8
  %b.read.data172 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load169, i32 0, i32 1
  %b.read.data173 = load ptr, ptr %b.read.data172, align 8
  %var.load174 = load ptr, ptr %var.r, align 8
  %fld.gep175 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load174, i32 0, i32 2
  %fld.load176 = load i64, ptr %fld.gep175, align 8
  %var.load177 = load ptr, ptr %var.r, align 8
  %fld.gep178 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load177, i32 0, i32 2
  %fld.load179 = load i64, ptr %fld.gep178, align 8
  %var.load180 = load i64, ptr %var.scan_count, align 8
  %addtmp181 = add i64 %fld.load179, %var.load180
  %start.is_neg182 = icmp slt i64 %fld.load176, 0
  %rel.start183 = add i64 %b.read.len171, %fld.load176
  %norm.start184 = select i1 %start.is_neg182, i64 %rel.start183, i64 %fld.load176
  %start.lt.0185 = icmp slt i64 %norm.start184, 0
  %c.start.0186 = select i1 %start.lt.0185, i64 0, i64 %norm.start184
  %start.gt.len187 = icmp sgt i64 %c.start.0186, %b.read.len171
  %final.start188 = select i1 %start.gt.len187, i64 %b.read.len171, i64 %c.start.0186
  %end.is_neg189 = icmp slt i64 %addtmp181, 0
  %rel.end190 = add i64 %b.read.len171, %addtmp181
  %norm.end191 = select i1 %end.is_neg189, i64 %rel.end190, i64 %addtmp181
  %end.lt.0192 = icmp slt i64 %norm.end191, 0
  %c.end.0193 = select i1 %end.lt.0192, i64 0, i64 %norm.end191
  %end.gt.len194 = icmp sgt i64 %c.end.0193, %b.read.len171
  %final.end195 = select i1 %end.gt.len194, i64 %b.read.len171, i64 %c.end.0193
  %view.empty196 = icmp sle i64 %final.end195, %final.start188
  %view.len.sub197 = sub i64 %final.end195, %final.start188
  %view.len198 = select i1 %view.empty196, i64 0, i64 %view.len.sub197
  %view.data199 = getelementptr i8, ptr %b.read.data173, i64 %final.start188
  %b.app.cur.len200 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load166, i32 0, i32 0
  %b.app.cur.len201 = load i64, ptr %b.app.cur.len200, align 8
  %b.app.new.len202 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len201, i64 %view.len198)
  %sum203 = extractvalue { i64, i1 } %b.app.new.len202, 0
  %ovf204 = extractvalue { i64, i1 } %b.app.new.len202, 1
  br i1 %ovf204, label %str_overflow_abort206, label %b.app.new.len205

choice.exit165:                                   ; preds = %b.grow_done213, %choice.else71
  %var.load239 = load ptr, ptr %var.r, align 8
  %var.load240 = load ptr, ptr %var.r, align 8
  %fld.gep241 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load240, i32 0, i32 2
  %fld.load242 = load i64, ptr %fld.gep241, align 8
  %var.load243 = load i64, ptr %var.scan_count, align 8
  %addtmp244 = add i64 %fld.load242, %var.load243
  %fld.gep245 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load239, i32 0, i32 2
  store i64 %addtmp244, ptr %fld.gep245, align 8
  %var.load246 = load ptr, ptr %var.out, align 8
  %b.len247 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load246, i32 0, i32 0
  %b.len248 = load i64, ptr %b.len247, align 8
  %var.load249 = load i64, ptr %var.max, align 8
  %cmptmp250 = icmp sge i64 %b.len248, %var.load249
  br i1 %cmptmp250, label %choice.then251, label %choice.exit252

b.app.new.len205:                                 ; preds = %abort.dead207, %choice.then164
  %b.cap208 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load166, i32 0, i32 2
  %b.cap209 = load i64, ptr %b.cap208, align 8
  %b.need.grow210 = icmp slt i64 %b.cap209, %sum203
  br i1 %b.need.grow210, label %b.grow2211, label %b.nogrow2212

str_overflow_abort206:                            ; preds = %choice.then164
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead207:                                    ; No predecessors!
  br label %b.app.new.len205

b.grow2211:                                       ; preds = %b.app.new.len205
  %b.cap2214 = mul i64 %b.cap209, 2
  %b.cap.small215 = icmp slt i64 %b.cap2214, 16
  %b.cap.grow216 = select i1 %b.cap.small215, i64 16, i64 %b.cap2214
  %b.cap.need217 = icmp slt i64 %b.cap.grow216, %sum203
  %b.new.cap218 = select i1 %b.cap.need217, i64 %sum203, i64 %b.cap.grow216
  %b.cur.len2219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load166, i32 0, i32 0
  %b.cur.len2220 = load i64, ptr %b.cur.len2219, align 8
  %b.cur.data2221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load166, i32 0, i32 1
  %b.cur.data2222 = load ptr, ptr %b.cur.data2221, align 8
  %b.new.buf.len2223 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap218, i64 1)
  %sum224 = extractvalue { i64, i1 } %b.new.buf.len2223, 0
  %ovf225 = extractvalue { i64, i1 } %b.new.buf.len2223, 1
  br i1 %ovf225, label %str_overflow_abort227, label %b.new.buf.len2226

b.nogrow2212:                                     ; preds = %b.app.new.len205
  br label %b.grow_done213

b.grow_done213:                                   ; preds = %b.nogrow2212, %b.new.buf.len2226
  %b.app.data234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load166, i32 0, i32 1
  %b.app.data235 = load ptr, ptr %b.app.data234, align 8
  %b.app.dst236 = getelementptr i8, ptr %b.app.data235, i64 %b.app.cur.len201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst236, ptr align 1 %view.data199, i64 %view.len198, i1 false)
  %b.app.nul237 = getelementptr i8, ptr %b.app.data235, i64 %sum203
  store i8 0, ptr %b.app.nul237, align 1
  %b.len.gep238 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load166, i32 0, i32 0
  store i64 %sum203, ptr %b.len.gep238, align 8
  br label %choice.exit165

b.new.buf.len2226:                                ; preds = %abort.dead228, %b.grow2211
  %arena.cur229 = call ptr @dva_arena_current()
  %b.new.buf2230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 %sum224)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2230, ptr align 1 %b.cur.data2222, i64 %b.cur.len2220, i1 false)
  %b.grow2.nul231 = getelementptr i8, ptr %b.new.buf2230, i64 %b.cur.len2220
  store i8 0, ptr %b.grow2.nul231, align 1
  %b.new.data2.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load166, i32 0, i32 1
  store ptr %b.new.buf2230, ptr %b.new.data2.gep232, align 8
  %b.new.cap2.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load166, i32 0, i32 2
  store i64 %b.new.cap218, ptr %b.new.cap2.gep233, align 8
  br label %b.grow_done213

str_overflow_abort227:                            ; preds = %b.grow2211
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead228:                                    ; No predecessors!
  br label %b.new.buf.len2226

choice.then251:                                   ; preds = %choice.exit165
  %var.load253 = load ptr, ptr %var.r, align 8
  %fld.gep254 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load253, i32 0, i32 2
  %fld.load255 = load i64, ptr %fld.gep254, align 8
  %var.load256 = load ptr, ptr %var.r, align 8
  %fld.gep257 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load256, i32 0, i32 1
  %fld.load258 = load ptr, ptr %fld.gep257, align 8
  %b.len259 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load258, i32 0, i32 0
  %b.len260 = load i64, ptr %b.len259, align 8
  %cmptmp261 = icmp slt i64 %fld.load255, %b.len260
  br i1 %cmptmp261, label %and.66.then, label %and.66.else

choice.exit252:                                   ; preds = %ret.dead336, %choice.exit165
  br label %choice.exit72

and.66.then:                                      ; preds = %choice.then251
  %var.load262 = load ptr, ptr %var.r, align 8
  %fld.gep263 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load262, i32 0, i32 1
  %fld.load264 = load ptr, ptr %fld.gep263, align 8
  %b.read.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load264, i32 0, i32 0
  %b.read.len266 = load i64, ptr %b.read.len265, align 8
  %b.read.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load264, i32 0, i32 1
  %b.read.data268 = load ptr, ptr %b.read.data267, align 8
  %var.load269 = load ptr, ptr %var.r, align 8
  %fld.gep270 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load269, i32 0, i32 2
  %fld.load271 = load i64, ptr %fld.gep270, align 8
  %idx.neg272 = icmp slt i64 %fld.load271, 0
  br i1 %idx.neg272, label %idx_oob275, label %idx_big_check273

and.66.else:                                      ; preds = %choice.then251
  br label %and.66.exit

and.66.exit:                                      ; preds = %and.66.else, %idx_ok274
  %and.66.phi = phi i1 [ %cmptmp282, %idx_ok274 ], [ %cmptmp261, %and.66.else ]
  store i1 %and.66.phi, ptr %var.has_delim, align 1
  %var.load283 = load i1, ptr %var.has_delim, align 1
  br i1 %var.load283, label %choice.then284, label %choice.exit285

idx_big_check273:                                 ; preds = %and.66.then
  %idx.big276 = icmp sge i64 %fld.load271, %b.read.len266
  br i1 %idx.big276, label %idx_oob275, label %idx_ok274

idx_ok274:                                        ; preds = %abort.dead277, %idx_big_check273
  %s.byte.gep278 = getelementptr i8, ptr %b.read.data268, i64 %fld.load271
  %s.byte279 = load i8, ptr %s.byte.gep278, align 1
  %s.byte.val280 = zext i8 %s.byte279 to i64
  %var.load281 = load i64, ptr %var.delim, align 8
  %cmptmp282 = icmp eq i64 %s.byte.val280, %var.load281
  br label %and.66.exit

idx_oob275:                                       ; preds = %idx_big_check273, %and.66.then
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead277:                                    ; No predecessors!
  br label %idx_ok274

choice.then284:                                   ; preds = %and.66.exit
  %var.load286 = load ptr, ptr %var.r, align 8
  %var.load287 = load ptr, ptr %var.r, align 8
  %fld.gep288 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load287, i32 0, i32 2
  %fld.load289 = load i64, ptr %fld.gep288, align 8
  %addtmp290 = add i64 %fld.load289, 1
  %fld.gep291 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load286, i32 0, i32 2
  store i64 %addtmp290, ptr %fld.gep291, align 8
  br label %choice.exit285

choice.exit285:                                   ; preds = %choice.then284, %and.66.exit
  %var.load292 = load ptr, ptr %var.out, align 8
  %b.freeze.len293 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load292, i32 0, i32 0
  %b.freeze.len294 = load i64, ptr %b.freeze.len293, align 8
  %b.freeze.data295 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load292, i32 0, i32 1
  %b.freeze.data296 = load ptr, ptr %b.freeze.data295, align 8
  %b.freeze.arena297 = call ptr @dva_arena_current()
  %b.freeze.nc.gep298 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena297, i32 0, i32 1
  %b.freeze.nc299 = load i64, ptr %b.freeze.nc.gep298, align 8
  %b.freeze.has.chunk300 = icmp sgt i64 %b.freeze.nc299, 0
  br i1 %b.freeze.has.chunk300, label %b.freeze.check301, label %b.freeze.done303

b.freeze.check301:                                ; preds = %choice.exit285
  %b.freeze.last.idx304 = sub i64 %b.freeze.nc299, 1
  %b.freeze.chunks.gep305 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena297, i32 0, i32 3
  %b.freeze.chunk.slot306 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep305, i64 0, i64 %b.freeze.last.idx304
  %b.freeze.last.chunk307 = load ptr, ptr %b.freeze.chunk.slot306, align 8
  %b.freeze.off.gep308 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena297, i32 0, i32 2
  %b.freeze.off309 = load i64, ptr %b.freeze.off.gep308, align 8
  %b.freeze.bump310 = getelementptr i8, ptr %b.freeze.last.chunk307, i64 %b.freeze.off309
  %b.freeze.cap.gep311 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena297, i32 0, i32 0
  %b.freeze.cap312 = load i64, ptr %b.freeze.cap.gep311, align 8
  %b.freeze.chunk.end313 = getelementptr i8, ptr %b.freeze.last.chunk307, i64 %b.freeze.cap312
  %b.freeze.ge.chunk314 = icmp uge ptr %b.freeze.data296, %b.freeze.last.chunk307
  %b.freeze.lt.end315 = icmp ult ptr %b.freeze.data296, %b.freeze.chunk.end313
  %b.freeze.in.chunk316 = and i1 %b.freeze.ge.chunk314, %b.freeze.lt.end315
  %b.freeze.ge.bump317 = icmp uge ptr %b.freeze.data296, %b.freeze.bump310
  %b.freeze.reaped318 = and i1 %b.freeze.in.chunk316, %b.freeze.ge.bump317
  br i1 %b.freeze.reaped318, label %b.freeze.copy302, label %b.freeze.done303

b.freeze.copy302:                                 ; preds = %b.freeze.check301
  %b.freeze.alen319 = add i64 %b.freeze.len294, 1
  %arena.cur320 = call ptr @dva_arena_current()
  %b.freeze.fresh321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 %b.freeze.alen319)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh321, ptr align 1 %b.freeze.data296, i64 %b.freeze.len294, i1 false)
  %b.freeze.nul322 = getelementptr i8, ptr %b.freeze.fresh321, i64 %b.freeze.len294
  store i8 0, ptr %b.freeze.nul322, align 1
  br label %b.freeze.done303

b.freeze.done303:                                 ; preds = %b.freeze.copy302, %b.freeze.check301, %choice.exit285
  %b.freeze.data323 = phi ptr [ %b.freeze.data296, %choice.exit285 ], [ %b.freeze.data296, %b.freeze.check301 ], [ %b.freeze.fresh321, %b.freeze.copy302 ]
  %arena.cur324 = call ptr @dva_arena_current()
  %builder.freeze325 = call ptr @dva_arena_alloc(ptr %arena.cur324, i64 16)
  %str.build.len.gep326 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze325, i32 0, i32 0
  store i64 %b.freeze.len294, ptr %str.build.len.gep326, align 8
  %str.build.data.gep327 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze325, i32 0, i32 1
  store ptr %b.freeze.data323, ptr %str.build.data.gep327, align 8
  %b.freeze.rst.len328 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load292, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len328, align 8
  %b.freeze.rst.data329 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load292, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data329, align 8
  %b.freeze.rst.cap330 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load292, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap330, align 8
  %ret.niche.nn331 = icmp ne ptr %builder.freeze325, null
  br i1 %ret.niche.nn331, label %ret.niche.load332, label %ret.niche.merge333

ret.niche.load332:                                ; preds = %b.freeze.done303
  %ret.niche.val334 = load { i64, ptr }, ptr %builder.freeze325, align 8
  br label %ret.niche.merge333

ret.niche.merge333:                               ; preds = %ret.niche.load332, %b.freeze.done303
  %ret.niche.pack335 = phi { i64, ptr } [ %ret.niche.val334, %ret.niche.load332 ], [ zeroinitializer, %b.freeze.done303 ]
  ret { i64, ptr } %ret.niche.pack335

ret.dead336:                                      ; No predecessors!
  br label %choice.exit252

choice.then343:                                   ; preds = %loop.exit.64
  %var.load346 = load ptr, ptr %var.out, align 8
  %b.freeze.len347 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load346, i32 0, i32 0
  %b.freeze.len348 = load i64, ptr %b.freeze.len347, align 8
  %b.freeze.data349 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load346, i32 0, i32 1
  %b.freeze.data350 = load ptr, ptr %b.freeze.data349, align 8
  %b.freeze.arena351 = call ptr @dva_arena_current()
  %b.freeze.nc.gep352 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena351, i32 0, i32 1
  %b.freeze.nc353 = load i64, ptr %b.freeze.nc.gep352, align 8
  %b.freeze.has.chunk354 = icmp sgt i64 %b.freeze.nc353, 0
  br i1 %b.freeze.has.chunk354, label %b.freeze.check355, label %b.freeze.done357

choice.else344:                                   ; preds = %loop.exit.64
  br label %choice.exit345

choice.exit345:                                   ; preds = %choice.else344, %b.freeze.done357
  %choice.res385 = phi ptr [ %builder.freeze379, %b.freeze.done357 ], [ null, %choice.else344 ]
  br label %choice.exit

b.freeze.check355:                                ; preds = %choice.then343
  %b.freeze.last.idx358 = sub i64 %b.freeze.nc353, 1
  %b.freeze.chunks.gep359 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena351, i32 0, i32 3
  %b.freeze.chunk.slot360 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep359, i64 0, i64 %b.freeze.last.idx358
  %b.freeze.last.chunk361 = load ptr, ptr %b.freeze.chunk.slot360, align 8
  %b.freeze.off.gep362 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena351, i32 0, i32 2
  %b.freeze.off363 = load i64, ptr %b.freeze.off.gep362, align 8
  %b.freeze.bump364 = getelementptr i8, ptr %b.freeze.last.chunk361, i64 %b.freeze.off363
  %b.freeze.cap.gep365 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena351, i32 0, i32 0
  %b.freeze.cap366 = load i64, ptr %b.freeze.cap.gep365, align 8
  %b.freeze.chunk.end367 = getelementptr i8, ptr %b.freeze.last.chunk361, i64 %b.freeze.cap366
  %b.freeze.ge.chunk368 = icmp uge ptr %b.freeze.data350, %b.freeze.last.chunk361
  %b.freeze.lt.end369 = icmp ult ptr %b.freeze.data350, %b.freeze.chunk.end367
  %b.freeze.in.chunk370 = and i1 %b.freeze.ge.chunk368, %b.freeze.lt.end369
  %b.freeze.ge.bump371 = icmp uge ptr %b.freeze.data350, %b.freeze.bump364
  %b.freeze.reaped372 = and i1 %b.freeze.in.chunk370, %b.freeze.ge.bump371
  br i1 %b.freeze.reaped372, label %b.freeze.copy356, label %b.freeze.done357

b.freeze.copy356:                                 ; preds = %b.freeze.check355
  %b.freeze.alen373 = add i64 %b.freeze.len348, 1
  %arena.cur374 = call ptr @dva_arena_current()
  %b.freeze.fresh375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 %b.freeze.alen373)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh375, ptr align 1 %b.freeze.data350, i64 %b.freeze.len348, i1 false)
  %b.freeze.nul376 = getelementptr i8, ptr %b.freeze.fresh375, i64 %b.freeze.len348
  store i8 0, ptr %b.freeze.nul376, align 1
  br label %b.freeze.done357

b.freeze.done357:                                 ; preds = %b.freeze.copy356, %b.freeze.check355, %choice.then343
  %b.freeze.data377 = phi ptr [ %b.freeze.data350, %choice.then343 ], [ %b.freeze.data350, %b.freeze.check355 ], [ %b.freeze.fresh375, %b.freeze.copy356 ]
  %arena.cur378 = call ptr @dva_arena_current()
  %builder.freeze379 = call ptr @dva_arena_alloc(ptr %arena.cur378, i64 16)
  %str.build.len.gep380 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze379, i32 0, i32 0
  store i64 %b.freeze.len348, ptr %str.build.len.gep380, align 8
  %str.build.data.gep381 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze379, i32 0, i32 1
  store ptr %b.freeze.data377, ptr %str.build.data.gep381, align 8
  %b.freeze.rst.len382 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load346, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len382, align 8
  %b.freeze.rst.data383 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load346, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data383, align 8
  %b.freeze.rst.cap384 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load346, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap384, align 8
  br label %choice.exit345

ret.niche.load388:                                ; preds = %choice.exit
  %ret.niche.val390 = load { i64, ptr }, ptr %choice.res386, align 8
  br label %ret.niche.merge389

ret.niche.merge389:                               ; preds = %ret.niche.load388, %choice.exit
  %ret.niche.pack391 = phi { i64, ptr } [ %ret.niche.val390, %ret.niche.load388 ], [ zeroinitializer, %choice.exit ]
  ret { i64, ptr } %ret.niche.pack391
}

define { i64, ptr } @"io::read_line"(ptr %0, i64 %1) #0 {
entry:
  %var.end_idx = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.line = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.res = alloca ptr, align 8
  %var.max = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.max, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %var.load1 = load i64, ptr %var.max, align 8
  %call.res = call { i64, ptr } @"io::read_until"(ptr %var.load, i64 10, i64 %var.load1)
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
  store ptr %ret.niche.ptr, ptr %var.res, align 8
  %var.load2 = load ptr, ptr %var.res, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %ret.niche.done
  store ptr %var.load2, ptr %var._, align 8
  store ptr %var.load2, ptr %var.line, align 8
  %var.load3 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.else:                                      ; preds = %ret.niche.done
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit17
  %choice.res29 = phi ptr [ %choice.res, %choice.exit17 ], [ null, %choice.else ]
  %ret.niche.nn = icmp ne ptr %choice.res29, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then
  store i64 %str.len.query5, ptr %var.n, align 8
  %var.load7 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %var.load7, 0
  br i1 %cmptmp, label %and.67.then, label %and.67.else

tag.gen_check:                                    ; preds = %choice.then
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur6 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur6, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

and.67.then:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %var.load12 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load12, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.67.else:                                      ; preds = %str_ok
  br label %and.67.exit

and.67.exit:                                      ; preds = %and.67.else, %idx_ok
  %and.67.phi = phi i1 [ %cmptmp14, %idx_ok ], [ %cmptmp, %and.67.else ]
  br i1 %and.67.phi, label %choice.then15, label %choice.else16

idx_big_check:                                    ; preds = %and.67.then
  %idx.big = icmp sge i64 %subtmp, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead13, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp14 = icmp eq i64 %s.byte.val, 13
  br label %and.67.exit

idx_oob:                                          ; preds = %idx_big_check, %and.67.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %idx_ok

choice.then15:                                    ; preds = %and.67.exit
  %var.load18 = load i64, ptr %var.n, align 8
  %subtmp19 = sub i64 %var.load18, 1
  store i64 %subtmp19, ptr %var.end_idx, align 8
  %var.load20 = load ptr, ptr %var.line, align 8
  %s.read.len21 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %s.read.len22 = load i64, ptr %s.read.len21, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %s.read.data24 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data24, align 8
  %var.load26 = load i64, ptr %var.end_idx, align 8
  %rel.start = add i64 %s.read.len23, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len23
  %final.start = select i1 %start.gt.len, i64 %s.read.len23, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load26, 0
  %rel.end = add i64 %s.read.len23, %var.load26
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load26
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len23
  %final.end = select i1 %end.gt.len, i64 %s.read.len23, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data25, i64 %final.start
  %arena.cur27 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit17

choice.else16:                                    ; preds = %and.67.exit
  %var.load28 = load ptr, ptr %var.line, align 8
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else16, %choice.then15
  %choice.res = phi ptr [ %str.view, %choice.then15 ], [ %var.load28, %choice.else16 ]
  br label %choice.exit

ret.niche.load:                                   ; preds = %choice.exit
  %ret.niche.val = load { i64, ptr }, ptr %choice.res29, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit ]
  ret { i64, ptr } %ret.niche.pack
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
