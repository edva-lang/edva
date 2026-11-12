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

define internal void @__dva_global_init_io() #1 {
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

define ptr @"io::reader"(i64 %0) #1 {
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

b.buf.len1:                                       ; preds = %str_overflow_abort, %entry
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
  br label %b.buf.len1
}

define ptr @"io::reader_with_cap"(i64 %0, i64 %1) #1 {
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

b.buf.len4:                                       ; preds = %str_overflow_abort, %choice.exit
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
  br label %b.buf.len4
}

define i64 @"io::reader_err"(ptr %0) #1 {
entry:
  %var._acc_1 = alloca ptr, align 8
  store ptr %0, ptr %var._acc_1, align 8
  %var.load = load ptr, ptr %var._acc_1, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i1 @"io::reader_eof"(ptr %0) #1 {
entry:
  %var._acc_2 = alloca ptr, align 8
  store ptr %0, ptr %var._acc_2, align 8
  %var.load = load ptr, ptr %var._acc_2, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i1, ptr %fld.gep, align 1
  ret i1 %fld.load
}

define i1 @"io::reader_would_block"(ptr %0) #1 {
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

define i1 @"io::reader_has_err"(ptr %0) #1 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp ne i64 %fld.load, 0
  ret i1 %cmptmp
}

define void @"io::reader_clear"(ptr %0) #1 {
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

define i64 @"io::write"(i64 %0, ptr %1) #1 {
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.total, align 8
  %var.load3 = load i64, ptr %var.total, align 8
  %val.match = icmp eq i64 %var.load3, 0
  br i1 %val.match, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
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

define internal ptr @"io::#clean_addr"(ptr %0) #1 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %ptrmask = call ptr @llvm.ptrmask.p0.i64(ptr %var.load, i64 281474976710655)
  ret ptr %ptrmask
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #0

declare i64 @"libc::errno"() #1

define internal ptr @"io::#show_rune"(i32 %0) #1 {
entry:
  %var.r = alloca i32, align 4
  store i32 %0, ptr %var.r, align 4
  %var.load = load i32, ptr %var.r, align 4
  %call.res = call ptr @"utf::encode_rune"(i32 %var.load)
  ret ptr %call.res
}

declare ptr @"utf::encode_rune"(i32) #1

define internal i64 @"io::#writev_all"(i64 %0, ptr %1, ptr %2) #1 {
entry:
  %var.errno_val100 = alloca i64, align 8
  %var.w93 = alloca i64, align 8
  %var.p284 = alloca ptr, align 8
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.len1, align 8
  %var.load3 = load ptr, ptr %var.s2, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  store i64 %str.len.query6, ptr %var.len2, align 8
  %var.load14 = load i64, ptr %var.len1, align 8
  %var.load15 = load i64, ptr %var.len2, align 8
  %addtmp = add i64 %var.load14, %var.load15
  store i64 %addtmp, ptr %var.total, align 8
  %var.load16 = load i64, ptr %var.total, align 8
  %val.match = icmp eq i64 %var.load16, 0
  br i1 %val.match, label %choice.case, label %choice.next

str_stale11:                                      ; preds = %str_gen_check9
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

choice.exit:                                      ; preds = %choice.next, %ret.dead
  store i64 0, ptr %"var.off'", align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

choice.case:                                      ; preds = %str_ok10
  ret i64 0

choice.next:                                      ; preds = %str_ok10
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
  %var.load17 = load i64, ptr %"var.off'", align 8
  %var.load18 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load17, %var.load18
  br i1 %cmptmp, label %choice.then, label %choice.exit19

loop.exit.nat.59:                                 ; No predecessors!
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit24, %choice.then103, %choice.then54
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %choice.case113, %choice.else108, %choice.case64, %choice.else59, %choice.then, %loop.exit.nat.59
  %var.load119 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load119

choice.then:                                      ; preds = %loop.body.59
  br label %loop.exit.59

choice.exit19:                                    ; preds = %loop.body.59
  %var.load20 = load i64, ptr %"var.off'", align 8
  %var.load21 = load i64, ptr %var.len1, align 8
  %cmptmp22 = icmp slt i64 %var.load20, %var.load21
  br i1 %cmptmp22, label %choice.then23, label %choice.else

choice.then23:                                    ; preds = %choice.exit19
  %var.load25 = load i64, ptr %var.len1, align 8
  %var.load26 = load i64, ptr %"var.off'", align 8
  %subtmp = sub i64 %var.load25, %var.load26
  store i64 %subtmp, ptr %var.rem1, align 8
  %var.load27 = load ptr, ptr %var.s1, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.ptr28 = load ptr, ptr %s.ptr, align 8
  %var.load29 = load i64, ptr %"var.off'", align 8
  %ptr.int.l = ptrtoint ptr %s.ptr28 to i64
  %addtmp30 = add i64 %ptr.int.l, %var.load29
  %ptr.res = inttoptr i64 %addtmp30 to ptr
  %call.res = call ptr @"io::#clean_addr"(ptr %ptr.res)
  store ptr %call.res, ptr %var.p1, align 8
  %var.load31 = load ptr, ptr %var.s2, align 8
  %s.ptr32 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.ptr33 = load ptr, ptr %s.ptr32, align 8
  %call.res34 = call ptr @"io::#clean_addr"(ptr %s.ptr33)
  store ptr %call.res34, ptr %var.p2, align 8
  %var.load35 = load ptr, ptr %var.p1, align 8
  %var.load36 = load i64, ptr %var.rem1, align 8
  %var.load37 = load ptr, ptr %var.p2, align 8
  %var.load38 = load i64, ptr %var.len2, align 8
  %arena.cur39 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load35, ptr %rec.fld, align 8
  %rec.fld40 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load36, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load37, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load38, ptr %rec.fld42, align 8
  store ptr %rec.alloc, ptr %var.iov, align 8
  %var.load43 = load i64, ptr %var.fd, align 8
  %var.load44 = load ptr, ptr %var.iov, align 8
  %addr.ffi.int = ptrtoint ptr %var.load44 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load43 to i32
  %call.res45 = call i64 @writev(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 2)
  store i64 %call.res45, ptr %var.w, align 8
  %var.load46 = load i64, ptr %var.w, align 8
  %cmptmp47 = icmp slt i64 %var.load46, 0
  br i1 %cmptmp47, label %choice.then48, label %choice.else49

choice.else:                                      ; preds = %choice.exit19
  %var.load70 = load i64, ptr %"var.off'", align 8
  %var.load71 = load i64, ptr %var.len1, align 8
  %subtmp72 = sub i64 %var.load70, %var.load71
  store i64 %subtmp72, ptr %var.off2, align 8
  %var.load73 = load i64, ptr %var.len2, align 8
  %var.load74 = load i64, ptr %var.off2, align 8
  %subtmp75 = sub i64 %var.load73, %var.load74
  store i64 %subtmp75, ptr %var.rem2, align 8
  %var.load76 = load ptr, ptr %var.s2, align 8
  %s.ptr77 = getelementptr inbounds { i64, ptr }, ptr %var.load76, i32 0, i32 1
  %s.ptr78 = load ptr, ptr %s.ptr77, align 8
  %var.load79 = load i64, ptr %var.off2, align 8
  %ptr.int.l80 = ptrtoint ptr %s.ptr78 to i64
  %addtmp81 = add i64 %ptr.int.l80, %var.load79
  %ptr.res82 = inttoptr i64 %addtmp81 to ptr
  %call.res83 = call ptr @"io::#clean_addr"(ptr %ptr.res82)
  store ptr %call.res83, ptr %var.p284, align 8
  %var.load85 = load i64, ptr %var.fd, align 8
  %var.load86 = load ptr, ptr %var.p284, align 8
  %addr.ffi.int87 = ptrtoint ptr %var.load86 to i64
  %addr.ffi.masked88 = and i64 %addr.ffi.int87, 281474976710655
  %addr.ffi.clean89 = inttoptr i64 %addr.ffi.masked88 to ptr
  %var.load90 = load i64, ptr %var.rem2, align 8
  %coerce.trunc91 = trunc i64 %var.load85 to i32
  %call.res92 = call i64 @write(i32 %coerce.trunc91, ptr %addr.ffi.clean89, i64 %var.load90)
  store i64 %call.res92, ptr %var.w93, align 8
  %var.load94 = load i64, ptr %var.w93, align 8
  %cmptmp95 = icmp slt i64 %var.load94, 0
  br i1 %cmptmp95, label %choice.then96, label %choice.else97

choice.exit24:                                    ; preds = %choice.exit98, %choice.exit50
  br label %loop.latch.59

choice.then48:                                    ; preds = %choice.then23
  %call.res51 = call i64 @"libc::errno"()
  store i64 %call.res51, ptr %var.errno_val, align 8
  %var.load52 = load i64, ptr %var.errno_val, align 8
  %cmptmp53 = icmp eq i64 %var.load52, 4
  br i1 %cmptmp53, label %choice.then54, label %choice.exit55

choice.else49:                                    ; preds = %choice.then23
  %var.load62 = load i64, ptr %var.w, align 8
  %val.match66 = icmp eq i64 %var.load62, 0
  br i1 %val.match66, label %choice.case64, label %choice.next65

choice.exit50:                                    ; preds = %choice.exit63, %choice.exit60
  br label %choice.exit24

choice.then54:                                    ; preds = %choice.then48
  br label %loop.latch.59

choice.exit55:                                    ; preds = %choice.then48
  %var.load56 = load i64, ptr %"var.off'", align 8
  %cmptmp57 = icmp eq i64 %var.load56, 0
  br i1 %cmptmp57, label %choice.then58, label %choice.else59

choice.then58:                                    ; preds = %choice.exit55
  ret i64 -1

choice.else59:                                    ; preds = %choice.exit55
  br label %loop.exit.59

choice.exit60:                                    ; preds = %ret.dead61
  br label %choice.exit50

ret.dead61:                                       ; No predecessors!
  br label %choice.exit60

choice.exit63:                                    ; preds = %choice.next65
  %var.load67 = load i64, ptr %"var.off'", align 8
  %var.load68 = load i64, ptr %var.w, align 8
  %addtmp69 = add i64 %var.load67, %var.load68
  store i64 %addtmp69, ptr %"var.off'", align 8
  br label %choice.exit50

choice.case64:                                    ; preds = %choice.else49
  br label %loop.exit.59

choice.next65:                                    ; preds = %choice.else49
  br label %choice.exit63

choice.then96:                                    ; preds = %choice.else
  %call.res99 = call i64 @"libc::errno"()
  store i64 %call.res99, ptr %var.errno_val100, align 8
  %var.load101 = load i64, ptr %var.errno_val100, align 8
  %cmptmp102 = icmp eq i64 %var.load101, 4
  br i1 %cmptmp102, label %choice.then103, label %choice.exit104

choice.else97:                                    ; preds = %choice.else
  %var.load111 = load i64, ptr %var.w93, align 8
  %val.match115 = icmp eq i64 %var.load111, 0
  br i1 %val.match115, label %choice.case113, label %choice.next114

choice.exit98:                                    ; preds = %choice.exit112, %choice.exit109
  br label %choice.exit24

choice.then103:                                   ; preds = %choice.then96
  br label %loop.latch.59

choice.exit104:                                   ; preds = %choice.then96
  %var.load105 = load i64, ptr %"var.off'", align 8
  %cmptmp106 = icmp eq i64 %var.load105, 0
  br i1 %cmptmp106, label %choice.then107, label %choice.else108

choice.then107:                                   ; preds = %choice.exit104
  ret i64 -1

choice.else108:                                   ; preds = %choice.exit104
  br label %loop.exit.59

choice.exit109:                                   ; preds = %ret.dead110
  br label %choice.exit98

ret.dead110:                                      ; No predecessors!
  br label %choice.exit109

choice.exit112:                                   ; preds = %choice.next114
  %var.load116 = load i64, ptr %"var.off'", align 8
  %var.load117 = load i64, ptr %var.w93, align 8
  %addtmp118 = add i64 %var.load116, %var.load117
  store i64 %addtmp118, ptr %"var.off'", align 8
  br label %choice.exit98

choice.case113:                                   ; preds = %choice.else97
  br label %loop.exit.59

choice.next114:                                   ; preds = %choice.else97
  br label %choice.exit112
}

define internal i64 @"io::#refill"(ptr %0) #1 {
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
  %var.load36 = load ptr, ptr %var.r, align 8
  %fld.gep37 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load36, i32 0, i32 3
  %fld.load38 = load i64, ptr %fld.gep37, align 8
  %cmptmp39 = icmp sgt i64 %fld.load38, 0
  br i1 %cmptmp39, label %choice.then40, label %choice.else

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
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.exit12:                                    ; preds = %addr_ok28, %choice.then
  %var.load32 = load i64, ptr %var.rem, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap33 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load32, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check:                                   ; preds = %choice.then11
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then11
  %raw.int22 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int23 = and i64 %raw.int22, 281474976710655
  %raw.clean.ptr24 = inttoptr i64 %raw.clean.int23 to ptr
  %addr.tag25 = lshr i64 %raw.int22, 48
  %addr.immortal26 = icmp eq i64 %addr.tag25, 0
  br i1 %addr.immortal26, label %addr_ok28, label %addr_gen_check27

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check27:                                 ; preds = %addr_ok
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid31 = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %addr.tag25)
  br i1 %tag.valid31, label %addr_ok28, label %addr_stale29

addr_ok28:                                        ; preds = %addr_stale29, %addr_gen_check27, %addr_ok
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr24, i64 %var.load21, i1 false)
  br label %choice.exit12

addr_stale29:                                     ; preds = %addr_gen_check27
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok28

b.len_big_check:                                  ; preds = %choice.exit12
  %b.len.big = icmp sgt i64 %var.load32, %b.cap33
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load32, ptr %b.len.gep, align 8
  %var.load34 = load ptr, ptr %var.r, align 8
  %fld.gep35 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load34, i32 0, i32 2
  store i64 0, ptr %fld.gep35, align 8
  br label %choice.exit

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit12
  %3 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

choice.then40:                                    ; preds = %choice.exit
  %var.load42 = load ptr, ptr %var.r, align 8
  %fld.gep43 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load42, i32 0, i32 3
  %fld.load44 = load i64, ptr %fld.gep43, align 8
  br label %choice.exit41

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else, %choice.then40
  %choice.res = phi i64 [ %fld.load44, %choice.then40 ], [ 4096, %choice.else ]
  store i64 %choice.res, ptr %var.read_cap, align 8
  %var.load45 = load i64, ptr %var.read_cap, align 8
  %var.load46 = load ptr, ptr %var.buf, align 8
  %b.len47 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load46, i32 0, i32 0
  %b.len48 = load i64, ptr %b.len47, align 8
  %subtmp49 = sub i64 %var.load45, %b.len48
  store i64 %subtmp49, ptr %var.space, align 8
  %var.load50 = load i64, ptr %var.space, align 8
  %cmptmp51 = icmp sle i64 %var.load50, 0
  br i1 %cmptmp51, label %choice.then52, label %choice.else53

choice.then52:                                    ; preds = %choice.exit41
  br label %choice.exit54

choice.else53:                                    ; preds = %choice.exit41
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.60, align 8
  br label %loop.header.60

choice.exit54:                                    ; preds = %loop.exit.60, %choice.then52
  %choice.res114 = phi i64 [ 0, %choice.then52 ], [ %var.load113, %loop.exit.60 ]
  ret i64 %choice.res114

loop.header.60:                                   ; preds = %loop.latch.60, %choice.else53
  %counter.load = load i64, ptr %loop.idx.60, align 8
  br label %loop.body.60

loop.body.60:                                     ; preds = %loop.header.60
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.60, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load55 = load ptr, ptr %var.buf, align 8
  %b.len56 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load55, i32 0, i32 0
  %b.len57 = load i64, ptr %b.len56, align 8
  store i64 %b.len57, ptr %var.cur, align 8
  %var.load58 = load ptr, ptr %var.r, align 8
  %fld.gep59 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load58, i32 0, i32 0
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  %var.load61 = load ptr, ptr %var.buf, align 8
  %b.ptr62 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 1
  %b.ptr63 = load ptr, ptr %b.ptr62, align 8
  %var.load64 = load i64, ptr %var.cur, align 8
  %ptr.int.l65 = ptrtoint ptr %b.ptr63 to i64
  %addtmp66 = add i64 %ptr.int.l65, %var.load64
  %ptr.res67 = inttoptr i64 %addtmp66 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res67 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load68 = load i64, ptr %var.space, align 8
  %coerce.trunc = trunc i64 %fld.load60 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load68)
  store i64 %call.res, ptr %var.n, align 8
  %var.load69 = load i64, ptr %var.n, align 8
  %cmptmp70 = icmp slt i64 %var.load69, 0
  br i1 %cmptmp70, label %choice.then71, label %choice.else72

loop.exit.nat.60:                                 ; No predecessors!
  br label %loop.exit.60

loop.latch.60:                                    ; preds = %choice.exit73, %choice.then77
  %step.val = load i64, ptr %loop.step.60, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.60, align 8
  br label %loop.header.60

loop.exit.60:                                     ; preds = %b.len_ok106, %choice.then91, %choice.exit84, %loop.exit.nat.60
  %var.load113 = load i64, ptr %"var.n'", align 8
  br label %choice.exit54

choice.then71:                                    ; preds = %loop.body.60
  %call.res74 = call i64 @"libc::errno"()
  store i64 %call.res74, ptr %var.errno_val, align 8
  %var.load75 = load i64, ptr %var.errno_val, align 8
  %cmptmp76 = icmp eq i64 %var.load75, 4
  br i1 %cmptmp76, label %choice.then77, label %choice.exit78

choice.else72:                                    ; preds = %loop.body.60
  %var.load89 = load i64, ptr %var.n, align 8
  %cmptmp90 = icmp eq i64 %var.load89, 0
  br i1 %cmptmp90, label %choice.then91, label %choice.else92

choice.exit73:                                    ; preds = %choice.exit93
  br label %loop.latch.60

choice.then77:                                    ; preds = %choice.then71
  br label %loop.latch.60

choice.exit78:                                    ; preds = %choice.then71
  %var.load79 = load ptr, ptr %var.r, align 8
  %var.load80 = load i64, ptr %var.errno_val, align 8
  %cmptmp81 = icmp eq i64 %var.load80, 11
  br i1 %cmptmp81, label %choice.then82, label %choice.else83

choice.then82:                                    ; preds = %choice.exit78
  br label %choice.exit84

choice.else83:                                    ; preds = %choice.exit78
  %var.load85 = load i64, ptr %var.errno_val, align 8
  br label %choice.exit84

choice.exit84:                                    ; preds = %choice.else83, %choice.then82
  %choice.res86 = phi i64 [ 11, %choice.then82 ], [ %var.load85, %choice.else83 ]
  %fld.gep87 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load79, i32 0, i32 4
  store i64 %choice.res86, ptr %fld.gep87, align 8
  %var.load88 = load i64, ptr %var.n, align 8
  store i64 %var.load88, ptr %"var.n'", align 8
  br label %loop.exit.60

choice.then91:                                    ; preds = %choice.else72
  %var.load94 = load ptr, ptr %var.r, align 8
  %fld.gep95 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load94, i32 0, i32 5
  store i1 true, ptr %fld.gep95, align 1
  %var.load96 = load ptr, ptr %var.r, align 8
  %fld.gep97 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load96, i32 0, i32 4
  store i64 0, ptr %fld.gep97, align 8
  store i64 0, ptr %"var.n'", align 8
  br label %loop.exit.60

choice.else92:                                    ; preds = %choice.else72
  %var.load98 = load i64, ptr %var.cur, align 8
  %var.load99 = load i64, ptr %var.n, align 8
  %addtmp100 = add i64 %var.load98, %var.load99
  %b.load101 = load ptr, ptr %var.buf, align 8
  %b.cap102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 2
  %b.cap103 = load i64, ptr %b.cap102, align 8
  %b.len.neg104 = icmp slt i64 %addtmp100, 0
  br i1 %b.len.neg104, label %b.len_oob107, label %b.len_big_check105

choice.exit93:                                    ; No predecessors!
  br label %choice.exit73

b.len_big_check105:                               ; preds = %choice.else92
  %b.len.big108 = icmp sgt i64 %addtmp100, %b.cap103
  br i1 %b.len.big108, label %b.len_oob107, label %b.len_ok106

b.len_ok106:                                      ; preds = %b.len_oob107, %b.len_big_check105
  %b.len.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 0
  store i64 %addtmp100, ptr %b.len.gep109, align 8
  %var.load110 = load ptr, ptr %var.r, align 8
  %fld.gep111 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load110, i32 0, i32 4
  store i64 0, ptr %fld.gep111, align 8
  %var.load112 = load i64, ptr %var.n, align 8
  store i64 %var.load112, ptr %"var.n'", align 8
  br label %loop.exit.60

b.len_oob107:                                     ; preds = %b.len_big_check105, %choice.else92
  %4 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok106
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define void @"io::outs"(ptr %0) #1 {
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

define void @"io::errs"(ptr %0) #1 {
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

define ptr @"io::read"(ptr %0, i64 %1) #1 {
entry:
  %var.res = alloca ptr, align 8
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
  ret ptr null

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
  ret ptr null

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
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load37, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load37
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len38

b.buf.len38:                                      ; preds = %str_overflow_abort, %choice.exit34
  %arena.cur39 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.res, align 8
  %b.load = load ptr, ptr %var.res, align 8
  %var.load40 = load ptr, ptr %var.r, align 8
  %fld.gep41 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load40, i32 0, i32 1
  %fld.load42 = load ptr, ptr %fld.gep41, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load42, i32 0, i32 0
  %b.read.len43 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load42, i32 0, i32 1
  %b.read.data44 = load ptr, ptr %b.read.data, align 8
  %var.load45 = load ptr, ptr %var.r, align 8
  %fld.gep46 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load45, i32 0, i32 2
  %fld.load47 = load i64, ptr %fld.gep46, align 8
  %var.load48 = load ptr, ptr %var.r, align 8
  %fld.gep49 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load48, i32 0, i32 2
  %fld.load50 = load i64, ptr %fld.gep49, align 8
  %var.load51 = load i64, ptr %var.take, align 8
  %addtmp = add i64 %fld.load50, %var.load51
  %start.is_neg = icmp slt i64 %fld.load47, 0
  %rel.start = add i64 %b.read.len43, %fld.load47
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load47
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len43
  %final.start = select i1 %start.gt.len, i64 %b.read.len43, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %b.read.len43, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len43
  %final.end = select i1 %end.gt.len, i64 %b.read.len43, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data44, i64 %final.start
  %arena.cur52 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len53 = load i64, ptr %app.str.len, align 8
  %app.str.len54 = and i64 %app.str.len53, 281474976710655
  %str.tag = lshr i64 %app.str.len53, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort:                               ; preds = %choice.exit34
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len38

str_gen_check:                                    ; preds = %b.buf.len38
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len38
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len56 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len56, i64 %app.str.len54)
  %sum57 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf58 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf58, label %str_overflow_abort60, label %b.app.new.len59

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len59:                                  ; preds = %str_overflow_abort60, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap61 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap61, %sum57
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort60:                             ; preds = %str_ok
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len59

b.grow2:                                          ; preds = %b.app.new.len59
  %b.cap2 = mul i64 %b.cap61, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum57
  %b.new.cap = select i1 %b.cap.need, i64 %sum57, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len262 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data263 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum64 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf65 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf65, label %str_overflow_abort67, label %b.new.buf.len266

b.nogrow2:                                        ; preds = %b.app.new.len59
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len266
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data69 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data70 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data70, i64 %b.app.cur.len56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data69, i64 %app.str.len54, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data70, i64 %sum57
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum57, ptr %b.len.gep71, align 8
  %var.load72 = load ptr, ptr %var.r, align 8
  %var.load73 = load ptr, ptr %var.r, align 8
  %fld.gep74 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load73, i32 0, i32 2
  %fld.load75 = load i64, ptr %fld.gep74, align 8
  %var.load76 = load i64, ptr %var.take, align 8
  %addtmp77 = add i64 %fld.load75, %var.load76
  %fld.gep78 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load72, i32 0, i32 2
  store i64 %addtmp77, ptr %fld.gep78, align 8
  %var.load79 = load ptr, ptr %var.res, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 0
  %b.freeze.len80 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 1
  %b.freeze.data81 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len266:                                 ; preds = %str_overflow_abort67, %b.grow2
  %arena.cur68 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %sum64)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data263, i64 %b.cur.len262, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len262
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort67:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len266

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data81, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data81, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data81, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len80, 1
  %arena.cur82 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data81, i64 %b.freeze.len80, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len80
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data83 = phi ptr [ %b.freeze.data81, %b.grow_done ], [ %b.freeze.data81, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur84 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 16)
  %str.build.len.gep85 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len80, ptr %str.build.len.gep85, align 8
  %str.build.data.gep86 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data83, ptr %str.build.data.gep86, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"io::read_all"(ptr %0, i64 %1) #1 {
entry:
  %var.errno_val = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var.to_read = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.61 = alloca i64, align 8
  %loop.idx.61 = alloca i64, align 8
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
  ret ptr null

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

b.buf.len2:                                       ; preds = %str_overflow_abort, %choice.exit
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
  br label %b.buf.len2

choice.then11:                                    ; preds = %b.buf.len2
  %var.load13 = load i64, ptr %var.avail, align 8
  %var.load14 = load i64, ptr %var.max, align 8
  %cmptmp15 = icmp slt i64 %var.load13, %var.load14
  br i1 %cmptmp15, label %choice.then16, label %choice.else

choice.exit12:                                    ; preds = %b.grow_done, %b.buf.len2
  store i64 4096, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.61, align 8
  br label %loop.header.61

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
  %arena.cur32 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len33 = load i64, ptr %app.str.len, align 8
  %app.str.len34 = and i64 %app.str.len33, 281474976710655
  %str.tag = lshr i64 %app.str.len33, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit17
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit17
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len36 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len36, i64 %app.str.len34)
  %sum37 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf38 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.app.new.len39

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len39:                                  ; preds = %str_overflow_abort40, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap41 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap41, %sum37
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort40:                             ; preds = %str_ok
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len39

b.grow2:                                          ; preds = %b.app.new.len39
  %b.cap2 = mul i64 %b.cap41, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum37
  %b.new.cap = select i1 %b.cap.need, i64 %sum37, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len242 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data243 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum44 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf45 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf45, label %str_overflow_abort47, label %b.new.buf.len246

b.nogrow2:                                        ; preds = %b.app.new.len39
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len246
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data49 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data50 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data50, i64 %b.app.cur.len36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data49, i64 %app.str.len34, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data50, i64 %sum37
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum37, ptr %b.len.gep51, align 8
  %var.load52 = load ptr, ptr %var.r, align 8
  %var.load53 = load ptr, ptr %var.r, align 8
  %fld.gep54 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load53, i32 0, i32 2
  %fld.load55 = load i64, ptr %fld.gep54, align 8
  %var.load56 = load i64, ptr %var.take, align 8
  %addtmp57 = add i64 %fld.load55, %var.load56
  %fld.gep58 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load52, i32 0, i32 2
  store i64 %addtmp57, ptr %fld.gep58, align 8
  br label %choice.exit12

b.new.buf.len246:                                 ; preds = %str_overflow_abort47, %b.grow2
  %arena.cur48 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %sum44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data243, i64 %b.cur.len242, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len242
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort47:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len246

loop.header.61:                                   ; preds = %loop.latch.61, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.61, align 8
  br label %loop.body.61

loop.body.61:                                     ; preds = %loop.header.61
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.61, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load59 = load i64, ptr %var.max, align 8
  %var.load60 = load ptr, ptr %var.res_b, align 8
  %b.len61 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 0
  %b.len62 = load i64, ptr %b.len61, align 8
  %subtmp63 = sub i64 %var.load59, %b.len62
  store i64 %subtmp63, ptr %var.rem, align 8
  %var.load64 = load i64, ptr %var.rem, align 8
  %cmptmp65 = icmp sle i64 %var.load64, 0
  br i1 %cmptmp65, label %choice.then66, label %choice.exit67

loop.exit.nat.61:                                 ; No predecessors!
  br label %loop.exit.61

loop.latch.61:                                    ; preds = %choice.exit92, %choice.then96
  %step.val = load i64, ptr %loop.step.61, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.exit.61:                                     ; preds = %choice.then109, %choice.exit103, %choice.then66, %loop.exit.nat.61
  %var.load125 = load ptr, ptr %var.res_b, align 8
  %b.len126 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load125, i32 0, i32 0
  %b.len127 = load i64, ptr %b.len126, align 8
  %cmptmp128 = icmp eq i64 %b.len127, 0
  br i1 %cmptmp128, label %choice.then129, label %choice.exit130

choice.then66:                                    ; preds = %loop.body.61
  br label %loop.exit.61

choice.exit67:                                    ; preds = %loop.body.61
  %var.load68 = load i64, ptr %var.rem, align 8
  %var.load69 = load i64, ptr %var.chunk, align 8
  %cmptmp70 = icmp slt i64 %var.load68, %var.load69
  br i1 %cmptmp70, label %choice.then71, label %choice.else72

choice.then71:                                    ; preds = %choice.exit67
  %var.load74 = load i64, ptr %var.rem, align 8
  br label %choice.exit73

choice.else72:                                    ; preds = %choice.exit67
  %var.load75 = load i64, ptr %var.chunk, align 8
  br label %choice.exit73

choice.exit73:                                    ; preds = %choice.else72, %choice.then71
  %choice.res76 = phi i64 [ %var.load74, %choice.then71 ], [ %var.load75, %choice.else72 ]
  store i64 %choice.res76, ptr %var.to_read, align 8
  %var.load77 = load ptr, ptr %var.res_b, align 8
  %b.len78 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load77, i32 0, i32 0
  %b.len79 = load i64, ptr %b.len78, align 8
  store i64 %b.len79, ptr %var.cur, align 8
  %var.load80 = load ptr, ptr %var.r, align 8
  %fld.gep81 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load80, i32 0, i32 0
  %fld.load82 = load i64, ptr %fld.gep81, align 8
  %var.load83 = load ptr, ptr %var.res_b, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load83, i32 0, i32 1
  %b.ptr84 = load ptr, ptr %b.ptr, align 8
  %var.load85 = load i64, ptr %var.cur, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr84 to i64
  %addtmp86 = add i64 %ptr.int.l, %var.load85
  %ptr.res = inttoptr i64 %addtmp86 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load87 = load i64, ptr %var.to_read, align 8
  %coerce.trunc = trunc i64 %fld.load82 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load87)
  store i64 %call.res, ptr %var.n, align 8
  %var.load88 = load i64, ptr %var.n, align 8
  %cmptmp89 = icmp slt i64 %var.load88, 0
  br i1 %cmptmp89, label %choice.then90, label %choice.else91

choice.then90:                                    ; preds = %choice.exit73
  %call.res93 = call i64 @"libc::errno"()
  store i64 %call.res93, ptr %var.errno_val, align 8
  %var.load94 = load i64, ptr %var.errno_val, align 8
  %cmptmp95 = icmp eq i64 %var.load94, 4
  br i1 %cmptmp95, label %choice.then96, label %choice.exit97

choice.else91:                                    ; preds = %choice.exit73
  %var.load107 = load i64, ptr %var.n, align 8
  %cmptmp108 = icmp eq i64 %var.load107, 0
  br i1 %cmptmp108, label %choice.then109, label %choice.else110

choice.exit92:                                    ; preds = %choice.exit111
  br label %loop.latch.61

choice.then96:                                    ; preds = %choice.then90
  br label %loop.latch.61

choice.exit97:                                    ; preds = %choice.then90
  %var.load98 = load ptr, ptr %var.r, align 8
  %var.load99 = load i64, ptr %var.errno_val, align 8
  %cmptmp100 = icmp eq i64 %var.load99, 11
  br i1 %cmptmp100, label %choice.then101, label %choice.else102

choice.then101:                                   ; preds = %choice.exit97
  br label %choice.exit103

choice.else102:                                   ; preds = %choice.exit97
  %var.load104 = load i64, ptr %var.errno_val, align 8
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.else102, %choice.then101
  %choice.res105 = phi i64 [ 11, %choice.then101 ], [ %var.load104, %choice.else102 ]
  %fld.gep106 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load98, i32 0, i32 4
  store i64 %choice.res105, ptr %fld.gep106, align 8
  br label %loop.exit.61

choice.then109:                                   ; preds = %choice.else91
  %var.load112 = load ptr, ptr %var.r, align 8
  %fld.gep113 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load112, i32 0, i32 5
  store i1 true, ptr %fld.gep113, align 1
  %var.load114 = load ptr, ptr %var.r, align 8
  %fld.gep115 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load114, i32 0, i32 4
  store i64 0, ptr %fld.gep115, align 8
  br label %loop.exit.61

choice.else110:                                   ; preds = %choice.else91
  %var.load116 = load ptr, ptr %var.r, align 8
  %fld.gep117 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load116, i32 0, i32 4
  store i64 0, ptr %fld.gep117, align 8
  %var.load118 = load i64, ptr %var.cur, align 8
  %var.load119 = load i64, ptr %var.n, align 8
  %addtmp120 = add i64 %var.load118, %var.load119
  %b.load121 = load ptr, ptr %var.res_b, align 8
  %b.cap122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load121, i32 0, i32 2
  %b.cap123 = load i64, ptr %b.cap122, align 8
  %b.len.neg = icmp slt i64 %addtmp120, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

choice.exit111:                                   ; preds = %b.len_ok
  br label %choice.exit92

b.len_big_check:                                  ; preds = %choice.else110
  %b.len.big = icmp sgt i64 %addtmp120, %b.cap123
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load121, i32 0, i32 0
  store i64 %addtmp120, ptr %b.len.gep124, align 8
  br label %choice.exit111

b.len_oob:                                        ; preds = %b.len_big_check, %choice.else110
  %6 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

choice.then129:                                   ; preds = %loop.exit.61
  ret ptr null

choice.exit130:                                   ; preds = %ret.dead131, %loop.exit.61
  %var.load132 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load132, i32 0, i32 0
  %b.freeze.len133 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load132, i32 0, i32 1
  %b.freeze.data134 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead131:                                      ; No predecessors!
  br label %choice.exit130

b.freeze.check:                                   ; preds = %choice.exit130
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data134, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data134, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data134, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len133, 1
  %arena.cur135 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data134, i64 %b.freeze.len133, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len133
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit130
  %b.freeze.data136 = phi ptr [ %b.freeze.data134, %choice.exit130 ], [ %b.freeze.data134, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur137 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 16)
  %str.build.len.gep138 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len133, ptr %str.build.len.gep138, align 8
  %str.build.data.gep139 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data136, ptr %str.build.data.gep139, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load132, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load132, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load132, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define { i1, i64 } @"io::read_byte"(ptr %0) #1 {
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

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
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
  br label %idx_ok
}

define ptr @"io::read_until"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.has_delim = alloca i1, align 1
  %var._52 = alloca i64, align 8
  %var._i51 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.63 = alloca i64, align 8
  %loop.idx.63 = alloca i64, align 8
  %"var.found_idx'" = alloca i64, align 8
  %var.scan_count = alloca i64, align 8
  %var.in_buf = alloca i64, align 8
  %var.rem_budget = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.62 = alloca i64, align 8
  %loop.idx.62 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.exit352, %choice.then
  %choice.res393 = phi ptr [ null, %choice.then ], [ %choice.res392, %choice.exit352 ]
  ret ptr %choice.res393

b.buf.len2:                                       ; preds = %str_overflow_abort, %choice.else
  %arena.cur3 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  store i64 0, ptr %loop.idx.62, align 8
  br label %loop.header.62

str_overflow_abort:                               ; preds = %choice.else
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

loop.header.62:                                   ; preds = %loop.latch.62, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.62, align 8
  br label %loop.body.62

loop.body.62:                                     ; preds = %loop.header.62
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.62, align 8
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

loop.exit.nat.62:                                 ; No predecessors!
  br label %loop.exit.62

loop.latch.62:                                    ; preds = %choice.exit71
  %step.val344 = load i64, ptr %loop.step.62, align 8
  %loop.next345 = add i64 %counter.load, %step.val344
  store i64 %loop.next345, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.exit.62:                                     ; preds = %choice.then15, %loop.exit.nat.62
  %var.load346 = load ptr, ptr %var.out, align 8
  %b.len347 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load346, i32 0, i32 0
  %b.len348 = load i64, ptr %b.len347, align 8
  %cmptmp349 = icmp sgt i64 %b.len348, 0
  br i1 %cmptmp349, label %choice.then350, label %choice.else351

choice.then10:                                    ; preds = %loop.body.62
  %var.load12 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load12)
  store i64 %call.res, ptr %var.n, align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.exit11:                                    ; preds = %choice.exit16, %loop.body.62
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
  br label %loop.exit.62

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
  ret ptr %builder.freeze

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
  store i64 0, ptr %loop.idx.63, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.63

loop.header.63:                                   ; preds = %loop.latch.63, %choice.exit45
  %counter.load49 = load i64, ptr %loop.idx.63, align 8
  %loop.cond = icmp slt i64 %counter.load49, %var.load48
  br i1 %loop.cond, label %loop.body.63, label %loop.exit.nat.63

loop.body.63:                                     ; preds = %loop.header.63
  %loop.rel.i50 = sub i64 %counter.load49, 0
  store i64 1, ptr %loop.step.63, align 8
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

loop.exit.nat.63:                                 ; preds = %loop.header.63
  br label %loop.exit.63

loop.latch.63:                                    ; preds = %choice.exit65
  %step.val = load i64, ptr %loop.step.63, align 8
  %loop.next = add i64 %counter.load49, %step.val
  store i64 %loop.next, ptr %loop.idx.63, align 8
  br label %loop.header.63

loop.exit.63:                                     ; preds = %choice.then64, %loop.exit.nat.63
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load67 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp68 = icmp sge i64 %var.load67, 0
  br i1 %cmptmp68, label %choice.then69, label %choice.else70

idx_big_check:                                    ; preds = %loop.body.63
  %idx.big = icmp sge i64 %addtmp, %b.read.len56
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %b.read.data57, i64 %addtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load62 = load i64, ptr %var.delim, align 8
  %cmptmp63 = icmp eq i64 %s.byte.val, %var.load62
  br i1 %cmptmp63, label %choice.then64, label %choice.exit65

idx_oob:                                          ; preds = %idx_big_check, %loop.body.63
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then64:                                    ; preds = %idx_ok
  %var.load66 = load i64, ptr %var.i, align 8
  store i64 %var.load66, ptr %"var.found_idx'", align 8
  br label %loop.exit.63

choice.exit65:                                    ; preds = %idx_ok
  br label %loop.latch.63

choice.then69:                                    ; preds = %loop.exit.63
  %var.load72 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp73 = icmp sgt i64 %var.load72, 0
  br i1 %cmptmp73, label %choice.then74, label %choice.exit75

choice.else70:                                    ; preds = %loop.exit.63
  %var.load161 = load i64, ptr %var.scan_count, align 8
  %cmptmp162 = icmp sgt i64 %var.load161, 0
  br i1 %cmptmp162, label %choice.then163, label %choice.exit164

choice.exit71:                                    ; preds = %choice.exit265, %ret.dead160
  br label %loop.latch.62

choice.then74:                                    ; preds = %choice.then69
  %b.load = load ptr, ptr %var.out, align 8
  %var.load76 = load ptr, ptr %var.r, align 8
  %fld.gep77 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load76, i32 0, i32 1
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %b.read.len79 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 0
  %b.read.len80 = load i64, ptr %b.read.len79, align 8
  %b.read.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 1
  %b.read.data82 = load ptr, ptr %b.read.data81, align 8
  %var.load83 = load ptr, ptr %var.r, align 8
  %fld.gep84 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load83, i32 0, i32 2
  %fld.load85 = load i64, ptr %fld.gep84, align 8
  %var.load86 = load ptr, ptr %var.r, align 8
  %fld.gep87 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load86, i32 0, i32 2
  %fld.load88 = load i64, ptr %fld.gep87, align 8
  %var.load89 = load i64, ptr %"var.found_idx'", align 8
  %addtmp90 = add i64 %fld.load88, %var.load89
  %start.is_neg = icmp slt i64 %fld.load85, 0
  %rel.start = add i64 %b.read.len80, %fld.load85
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load85
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len80
  %final.start = select i1 %start.gt.len, i64 %b.read.len80, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp90, 0
  %rel.end = add i64 %b.read.len80, %addtmp90
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp90
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len80
  %final.end = select i1 %end.gt.len, i64 %b.read.len80, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data82, i64 %final.start
  %arena.cur91 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 16)
  %str.build.len.gep92 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep92, align 8
  %str.build.data.gep93 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep93, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len94 = load i64, ptr %app.str.len, align 8
  %app.str.len95 = and i64 %app.str.len94, 281474976710655
  %str.tag = lshr i64 %app.str.len94, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit75:                                    ; preds = %b.grow_done, %choice.then69
  %var.load113 = load ptr, ptr %var.r, align 8
  %var.load114 = load ptr, ptr %var.r, align 8
  %fld.gep115 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load114, i32 0, i32 2
  %fld.load116 = load i64, ptr %fld.gep115, align 8
  %var.load117 = load i64, ptr %"var.found_idx'", align 8
  %addtmp118 = add i64 %fld.load116, %var.load117
  %addtmp119 = add i64 %addtmp118, 1
  %fld.gep120 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load113, i32 0, i32 2
  store i64 %addtmp119, ptr %fld.gep120, align 8
  %var.load121 = load ptr, ptr %var.out, align 8
  %b.freeze.len122 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load121, i32 0, i32 0
  %b.freeze.len123 = load i64, ptr %b.freeze.len122, align 8
  %b.freeze.data124 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load121, i32 0, i32 1
  %b.freeze.data125 = load ptr, ptr %b.freeze.data124, align 8
  %b.freeze.arena126 = call ptr @dva_arena_current()
  %b.freeze.nc.gep127 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena126, i32 0, i32 1
  %b.freeze.nc128 = load i64, ptr %b.freeze.nc.gep127, align 8
  %b.freeze.has.chunk129 = icmp sgt i64 %b.freeze.nc128, 0
  br i1 %b.freeze.has.chunk129, label %b.freeze.check130, label %b.freeze.done132

str_gen_check:                                    ; preds = %choice.then74
  %arena.cur96 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur96, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then74
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len97 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len97, i64 %app.str.len95)
  %sum98 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf99 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf99, label %str_overflow_abort101, label %b.app.new.len100

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len100:                                 ; preds = %str_overflow_abort101, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap102 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap102, %sum98
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort101:                            ; preds = %str_ok
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len100

b.grow2:                                          ; preds = %b.app.new.len100
  %b.cap2 = mul i64 %b.cap102, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum98
  %b.new.cap = select i1 %b.cap.need, i64 %sum98, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2103 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2104 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum105 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf106 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf106, label %str_overflow_abort108, label %b.new.buf.len2107

b.nogrow2:                                        ; preds = %b.app.new.len100
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2107
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data110 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data111 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data111, i64 %b.app.cur.len97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data110, i64 %app.str.len95, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data111, i64 %sum98
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum98, ptr %b.len.gep112, align 8
  br label %choice.exit75

b.new.buf.len2107:                                ; preds = %str_overflow_abort108, %b.grow2
  %arena.cur109 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 %sum105)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2104, i64 %b.cur.len2103, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2103
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort108:                            ; preds = %b.grow2
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2107

b.freeze.check130:                                ; preds = %choice.exit75
  %b.freeze.last.idx133 = sub i64 %b.freeze.nc128, 1
  %b.freeze.chunks.gep134 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena126, i32 0, i32 3
  %b.freeze.chunk.slot135 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep134, i64 0, i64 %b.freeze.last.idx133
  %b.freeze.last.chunk136 = load ptr, ptr %b.freeze.chunk.slot135, align 8
  %b.freeze.off.gep137 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena126, i32 0, i32 2
  %b.freeze.off138 = load i64, ptr %b.freeze.off.gep137, align 8
  %b.freeze.bump139 = getelementptr i8, ptr %b.freeze.last.chunk136, i64 %b.freeze.off138
  %b.freeze.cap.gep140 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena126, i32 0, i32 0
  %b.freeze.cap141 = load i64, ptr %b.freeze.cap.gep140, align 8
  %b.freeze.chunk.end142 = getelementptr i8, ptr %b.freeze.last.chunk136, i64 %b.freeze.cap141
  %b.freeze.ge.chunk143 = icmp uge ptr %b.freeze.data125, %b.freeze.last.chunk136
  %b.freeze.lt.end144 = icmp ult ptr %b.freeze.data125, %b.freeze.chunk.end142
  %b.freeze.in.chunk145 = and i1 %b.freeze.ge.chunk143, %b.freeze.lt.end144
  %b.freeze.ge.bump146 = icmp uge ptr %b.freeze.data125, %b.freeze.bump139
  %b.freeze.reaped147 = and i1 %b.freeze.in.chunk145, %b.freeze.ge.bump146
  br i1 %b.freeze.reaped147, label %b.freeze.copy131, label %b.freeze.done132

b.freeze.copy131:                                 ; preds = %b.freeze.check130
  %b.freeze.alen148 = add i64 %b.freeze.len123, 1
  %arena.cur149 = call ptr @dva_arena_current()
  %b.freeze.fresh150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 %b.freeze.alen148)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh150, ptr align 1 %b.freeze.data125, i64 %b.freeze.len123, i1 false)
  %b.freeze.nul151 = getelementptr i8, ptr %b.freeze.fresh150, i64 %b.freeze.len123
  store i8 0, ptr %b.freeze.nul151, align 1
  br label %b.freeze.done132

b.freeze.done132:                                 ; preds = %b.freeze.copy131, %b.freeze.check130, %choice.exit75
  %b.freeze.data152 = phi ptr [ %b.freeze.data125, %choice.exit75 ], [ %b.freeze.data125, %b.freeze.check130 ], [ %b.freeze.fresh150, %b.freeze.copy131 ]
  %arena.cur153 = call ptr @dva_arena_current()
  %builder.freeze154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 16)
  %str.build.len.gep155 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze154, i32 0, i32 0
  store i64 %b.freeze.len123, ptr %str.build.len.gep155, align 8
  %str.build.data.gep156 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze154, i32 0, i32 1
  store ptr %b.freeze.data152, ptr %str.build.data.gep156, align 8
  %b.freeze.rst.len157 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load121, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len157, align 8
  %b.freeze.rst.data158 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load121, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data158, align 8
  %b.freeze.rst.cap159 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load121, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap159, align 8
  ret ptr %builder.freeze154

ret.dead160:                                      ; No predecessors!
  br label %choice.exit71

choice.then163:                                   ; preds = %choice.else70
  %b.load165 = load ptr, ptr %var.out, align 8
  %var.load166 = load ptr, ptr %var.r, align 8
  %fld.gep167 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load166, i32 0, i32 1
  %fld.load168 = load ptr, ptr %fld.gep167, align 8
  %b.read.len169 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load168, i32 0, i32 0
  %b.read.len170 = load i64, ptr %b.read.len169, align 8
  %b.read.data171 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load168, i32 0, i32 1
  %b.read.data172 = load ptr, ptr %b.read.data171, align 8
  %var.load173 = load ptr, ptr %var.r, align 8
  %fld.gep174 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load173, i32 0, i32 2
  %fld.load175 = load i64, ptr %fld.gep174, align 8
  %var.load176 = load ptr, ptr %var.r, align 8
  %fld.gep177 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load176, i32 0, i32 2
  %fld.load178 = load i64, ptr %fld.gep177, align 8
  %var.load179 = load i64, ptr %var.scan_count, align 8
  %addtmp180 = add i64 %fld.load178, %var.load179
  %start.is_neg181 = icmp slt i64 %fld.load175, 0
  %rel.start182 = add i64 %b.read.len170, %fld.load175
  %norm.start183 = select i1 %start.is_neg181, i64 %rel.start182, i64 %fld.load175
  %start.lt.0184 = icmp slt i64 %norm.start183, 0
  %c.start.0185 = select i1 %start.lt.0184, i64 0, i64 %norm.start183
  %start.gt.len186 = icmp sgt i64 %c.start.0185, %b.read.len170
  %final.start187 = select i1 %start.gt.len186, i64 %b.read.len170, i64 %c.start.0185
  %end.is_neg188 = icmp slt i64 %addtmp180, 0
  %rel.end189 = add i64 %b.read.len170, %addtmp180
  %norm.end190 = select i1 %end.is_neg188, i64 %rel.end189, i64 %addtmp180
  %end.lt.0191 = icmp slt i64 %norm.end190, 0
  %c.end.0192 = select i1 %end.lt.0191, i64 0, i64 %norm.end190
  %end.gt.len193 = icmp sgt i64 %c.end.0192, %b.read.len170
  %final.end194 = select i1 %end.gt.len193, i64 %b.read.len170, i64 %c.end.0192
  %view.empty195 = icmp sle i64 %final.end194, %final.start187
  %view.len.sub196 = sub i64 %final.end194, %final.start187
  %view.len197 = select i1 %view.empty195, i64 0, i64 %view.len.sub196
  %view.data198 = getelementptr i8, ptr %b.read.data172, i64 %final.start187
  %arena.cur199 = call ptr @dva_arena_current()
  %str.view200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 16)
  %str.build.len.gep201 = getelementptr inbounds { i64, ptr }, ptr %str.view200, i32 0, i32 0
  store i64 %view.len197, ptr %str.build.len.gep201, align 8
  %str.build.data.gep202 = getelementptr inbounds { i64, ptr }, ptr %str.view200, i32 0, i32 1
  store ptr %view.data198, ptr %str.build.data.gep202, align 8
  %app.str.len203 = getelementptr inbounds { i64, ptr }, ptr %str.view200, i32 0, i32 0
  %app.str.len204 = load i64, ptr %app.str.len203, align 8
  %app.str.len205 = and i64 %app.str.len204, 281474976710655
  %str.tag206 = lshr i64 %app.str.len204, 48
  %str.immortal207 = icmp eq i64 %str.tag206, 0
  br i1 %str.immortal207, label %str_ok209, label %str_gen_check208

choice.exit164:                                   ; preds = %b.grow_done225, %choice.else70
  %var.load252 = load ptr, ptr %var.r, align 8
  %var.load253 = load ptr, ptr %var.r, align 8
  %fld.gep254 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load253, i32 0, i32 2
  %fld.load255 = load i64, ptr %fld.gep254, align 8
  %var.load256 = load i64, ptr %var.scan_count, align 8
  %addtmp257 = add i64 %fld.load255, %var.load256
  %fld.gep258 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load252, i32 0, i32 2
  store i64 %addtmp257, ptr %fld.gep258, align 8
  %var.load259 = load ptr, ptr %var.out, align 8
  %b.len260 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load259, i32 0, i32 0
  %b.len261 = load i64, ptr %b.len260, align 8
  %var.load262 = load i64, ptr %var.max, align 8
  %cmptmp263 = icmp sge i64 %b.len261, %var.load262
  br i1 %cmptmp263, label %choice.then264, label %choice.exit265

str_gen_check208:                                 ; preds = %choice.then163
  %arena.cur211 = call ptr @dva_arena_current()
  %tag.valid212 = call i1 @dva_arena_validate_tag(ptr %arena.cur211, i64 %str.tag206)
  br i1 %tag.valid212, label %str_ok209, label %str_stale210

str_ok209:                                        ; preds = %str_stale210, %str_gen_check208, %choice.then163
  %b.app.cur.len213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load165, i32 0, i32 0
  %b.app.cur.len214 = load i64, ptr %b.app.cur.len213, align 8
  %b.app.new.len215 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len214, i64 %app.str.len205)
  %sum216 = extractvalue { i64, i1 } %b.app.new.len215, 0
  %ovf217 = extractvalue { i64, i1 } %b.app.new.len215, 1
  br i1 %ovf217, label %str_overflow_abort219, label %b.app.new.len218

str_stale210:                                     ; preds = %str_gen_check208
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok209

b.app.new.len218:                                 ; preds = %str_overflow_abort219, %str_ok209
  %b.cap220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load165, i32 0, i32 2
  %b.cap221 = load i64, ptr %b.cap220, align 8
  %b.need.grow222 = icmp slt i64 %b.cap221, %sum216
  br i1 %b.need.grow222, label %b.grow2223, label %b.nogrow2224

str_overflow_abort219:                            ; preds = %str_ok209
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len218

b.grow2223:                                       ; preds = %b.app.new.len218
  %b.cap2226 = mul i64 %b.cap221, 2
  %b.cap.small227 = icmp slt i64 %b.cap2226, 16
  %b.cap.grow228 = select i1 %b.cap.small227, i64 16, i64 %b.cap2226
  %b.cap.need229 = icmp slt i64 %b.cap.grow228, %sum216
  %b.new.cap230 = select i1 %b.cap.need229, i64 %sum216, i64 %b.cap.grow228
  %b.cur.len2231 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load165, i32 0, i32 0
  %b.cur.len2232 = load i64, ptr %b.cur.len2231, align 8
  %b.cur.data2233 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load165, i32 0, i32 1
  %b.cur.data2234 = load ptr, ptr %b.cur.data2233, align 8
  %b.new.buf.len2235 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap230, i64 1)
  %sum236 = extractvalue { i64, i1 } %b.new.buf.len2235, 0
  %ovf237 = extractvalue { i64, i1 } %b.new.buf.len2235, 1
  br i1 %ovf237, label %str_overflow_abort239, label %b.new.buf.len2238

b.nogrow2224:                                     ; preds = %b.app.new.len218
  br label %b.grow_done225

b.grow_done225:                                   ; preds = %b.nogrow2224, %b.new.buf.len2238
  %app.str.data245 = getelementptr inbounds { i64, ptr }, ptr %str.view200, i32 0, i32 1
  %app.str.data246 = load ptr, ptr %app.str.data245, align 8
  %b.app.data247 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load165, i32 0, i32 1
  %b.app.data248 = load ptr, ptr %b.app.data247, align 8
  %b.app.dst249 = getelementptr i8, ptr %b.app.data248, i64 %b.app.cur.len214
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst249, ptr align 1 %app.str.data246, i64 %app.str.len205, i1 false)
  %b.app.nul250 = getelementptr i8, ptr %b.app.data248, i64 %sum216
  store i8 0, ptr %b.app.nul250, align 1
  %b.len.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load165, i32 0, i32 0
  store i64 %sum216, ptr %b.len.gep251, align 8
  br label %choice.exit164

b.new.buf.len2238:                                ; preds = %str_overflow_abort239, %b.grow2223
  %arena.cur240 = call ptr @dva_arena_current()
  %b.new.buf2241 = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 %sum236)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2241, ptr align 1 %b.cur.data2234, i64 %b.cur.len2232, i1 false)
  %b.grow2.nul242 = getelementptr i8, ptr %b.new.buf2241, i64 %b.cur.len2232
  store i8 0, ptr %b.grow2.nul242, align 1
  %b.new.data2.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load165, i32 0, i32 1
  store ptr %b.new.buf2241, ptr %b.new.data2.gep243, align 8
  %b.new.cap2.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load165, i32 0, i32 2
  store i64 %b.new.cap230, ptr %b.new.cap2.gep244, align 8
  br label %b.grow_done225

str_overflow_abort239:                            ; preds = %b.grow2223
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2238

choice.then264:                                   ; preds = %choice.exit164
  %var.load266 = load ptr, ptr %var.r, align 8
  %fld.gep267 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load266, i32 0, i32 2
  %fld.load268 = load i64, ptr %fld.gep267, align 8
  %var.load269 = load ptr, ptr %var.r, align 8
  %fld.gep270 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load269, i32 0, i32 1
  %fld.load271 = load ptr, ptr %fld.gep270, align 8
  %b.len272 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load271, i32 0, i32 0
  %b.len273 = load i64, ptr %b.len272, align 8
  %cmptmp274 = icmp slt i64 %fld.load268, %b.len273
  br i1 %cmptmp274, label %and.64.then, label %and.64.else

choice.exit265:                                   ; preds = %ret.dead343, %choice.exit164
  br label %choice.exit71

and.64.then:                                      ; preds = %choice.then264
  %var.load275 = load ptr, ptr %var.r, align 8
  %fld.gep276 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load275, i32 0, i32 1
  %fld.load277 = load ptr, ptr %fld.gep276, align 8
  %b.read.len278 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load277, i32 0, i32 0
  %b.read.len279 = load i64, ptr %b.read.len278, align 8
  %b.read.data280 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load277, i32 0, i32 1
  %b.read.data281 = load ptr, ptr %b.read.data280, align 8
  %var.load282 = load ptr, ptr %var.r, align 8
  %fld.gep283 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load282, i32 0, i32 2
  %fld.load284 = load i64, ptr %fld.gep283, align 8
  %idx.neg285 = icmp slt i64 %fld.load284, 0
  br i1 %idx.neg285, label %idx_oob288, label %idx_big_check286

and.64.else:                                      ; preds = %choice.then264
  br label %and.64.exit

and.64.exit:                                      ; preds = %and.64.else, %idx_ok287
  %and.64.phi = phi i1 [ %cmptmp294, %idx_ok287 ], [ %cmptmp274, %and.64.else ]
  store i1 %and.64.phi, ptr %var.has_delim, align 1
  %var.load295 = load i1, ptr %var.has_delim, align 1
  br i1 %var.load295, label %choice.then296, label %choice.exit297

idx_big_check286:                                 ; preds = %and.64.then
  %idx.big289 = icmp sge i64 %fld.load284, %b.read.len279
  br i1 %idx.big289, label %idx_oob288, label %idx_ok287

idx_ok287:                                        ; preds = %idx_oob288, %idx_big_check286
  %s.byte.gep290 = getelementptr i8, ptr %b.read.data281, i64 %fld.load284
  %s.byte291 = load i8, ptr %s.byte.gep290, align 1
  %s.byte.val292 = zext i8 %s.byte291 to i64
  %var.load293 = load i64, ptr %var.delim, align 8
  %cmptmp294 = icmp eq i64 %s.byte.val292, %var.load293
  br label %and.64.exit

idx_oob288:                                       ; preds = %idx_big_check286, %and.64.then
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok287

choice.then296:                                   ; preds = %and.64.exit
  %var.load298 = load ptr, ptr %var.r, align 8
  %var.load299 = load ptr, ptr %var.r, align 8
  %fld.gep300 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load299, i32 0, i32 2
  %fld.load301 = load i64, ptr %fld.gep300, align 8
  %addtmp302 = add i64 %fld.load301, 1
  %fld.gep303 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load298, i32 0, i32 2
  store i64 %addtmp302, ptr %fld.gep303, align 8
  br label %choice.exit297

choice.exit297:                                   ; preds = %choice.then296, %and.64.exit
  %var.load304 = load ptr, ptr %var.out, align 8
  %b.freeze.len305 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 0
  %b.freeze.len306 = load i64, ptr %b.freeze.len305, align 8
  %b.freeze.data307 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 1
  %b.freeze.data308 = load ptr, ptr %b.freeze.data307, align 8
  %b.freeze.arena309 = call ptr @dva_arena_current()
  %b.freeze.nc.gep310 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena309, i32 0, i32 1
  %b.freeze.nc311 = load i64, ptr %b.freeze.nc.gep310, align 8
  %b.freeze.has.chunk312 = icmp sgt i64 %b.freeze.nc311, 0
  br i1 %b.freeze.has.chunk312, label %b.freeze.check313, label %b.freeze.done315

b.freeze.check313:                                ; preds = %choice.exit297
  %b.freeze.last.idx316 = sub i64 %b.freeze.nc311, 1
  %b.freeze.chunks.gep317 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena309, i32 0, i32 3
  %b.freeze.chunk.slot318 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep317, i64 0, i64 %b.freeze.last.idx316
  %b.freeze.last.chunk319 = load ptr, ptr %b.freeze.chunk.slot318, align 8
  %b.freeze.off.gep320 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena309, i32 0, i32 2
  %b.freeze.off321 = load i64, ptr %b.freeze.off.gep320, align 8
  %b.freeze.bump322 = getelementptr i8, ptr %b.freeze.last.chunk319, i64 %b.freeze.off321
  %b.freeze.cap.gep323 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena309, i32 0, i32 0
  %b.freeze.cap324 = load i64, ptr %b.freeze.cap.gep323, align 8
  %b.freeze.chunk.end325 = getelementptr i8, ptr %b.freeze.last.chunk319, i64 %b.freeze.cap324
  %b.freeze.ge.chunk326 = icmp uge ptr %b.freeze.data308, %b.freeze.last.chunk319
  %b.freeze.lt.end327 = icmp ult ptr %b.freeze.data308, %b.freeze.chunk.end325
  %b.freeze.in.chunk328 = and i1 %b.freeze.ge.chunk326, %b.freeze.lt.end327
  %b.freeze.ge.bump329 = icmp uge ptr %b.freeze.data308, %b.freeze.bump322
  %b.freeze.reaped330 = and i1 %b.freeze.in.chunk328, %b.freeze.ge.bump329
  br i1 %b.freeze.reaped330, label %b.freeze.copy314, label %b.freeze.done315

b.freeze.copy314:                                 ; preds = %b.freeze.check313
  %b.freeze.alen331 = add i64 %b.freeze.len306, 1
  %arena.cur332 = call ptr @dva_arena_current()
  %b.freeze.fresh333 = call ptr @dva_arena_alloc(ptr %arena.cur332, i64 %b.freeze.alen331)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh333, ptr align 1 %b.freeze.data308, i64 %b.freeze.len306, i1 false)
  %b.freeze.nul334 = getelementptr i8, ptr %b.freeze.fresh333, i64 %b.freeze.len306
  store i8 0, ptr %b.freeze.nul334, align 1
  br label %b.freeze.done315

b.freeze.done315:                                 ; preds = %b.freeze.copy314, %b.freeze.check313, %choice.exit297
  %b.freeze.data335 = phi ptr [ %b.freeze.data308, %choice.exit297 ], [ %b.freeze.data308, %b.freeze.check313 ], [ %b.freeze.fresh333, %b.freeze.copy314 ]
  %arena.cur336 = call ptr @dva_arena_current()
  %builder.freeze337 = call ptr @dva_arena_alloc(ptr %arena.cur336, i64 16)
  %str.build.len.gep338 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze337, i32 0, i32 0
  store i64 %b.freeze.len306, ptr %str.build.len.gep338, align 8
  %str.build.data.gep339 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze337, i32 0, i32 1
  store ptr %b.freeze.data335, ptr %str.build.data.gep339, align 8
  %b.freeze.rst.len340 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len340, align 8
  %b.freeze.rst.data341 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data341, align 8
  %b.freeze.rst.cap342 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap342, align 8
  ret ptr %builder.freeze337

ret.dead343:                                      ; No predecessors!
  br label %choice.exit265

choice.then350:                                   ; preds = %loop.exit.62
  %var.load353 = load ptr, ptr %var.out, align 8
  %b.freeze.len354 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load353, i32 0, i32 0
  %b.freeze.len355 = load i64, ptr %b.freeze.len354, align 8
  %b.freeze.data356 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load353, i32 0, i32 1
  %b.freeze.data357 = load ptr, ptr %b.freeze.data356, align 8
  %b.freeze.arena358 = call ptr @dva_arena_current()
  %b.freeze.nc.gep359 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena358, i32 0, i32 1
  %b.freeze.nc360 = load i64, ptr %b.freeze.nc.gep359, align 8
  %b.freeze.has.chunk361 = icmp sgt i64 %b.freeze.nc360, 0
  br i1 %b.freeze.has.chunk361, label %b.freeze.check362, label %b.freeze.done364

choice.else351:                                   ; preds = %loop.exit.62
  br label %choice.exit352

choice.exit352:                                   ; preds = %choice.else351, %b.freeze.done364
  %choice.res392 = phi ptr [ %builder.freeze386, %b.freeze.done364 ], [ null, %choice.else351 ]
  br label %choice.exit

b.freeze.check362:                                ; preds = %choice.then350
  %b.freeze.last.idx365 = sub i64 %b.freeze.nc360, 1
  %b.freeze.chunks.gep366 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena358, i32 0, i32 3
  %b.freeze.chunk.slot367 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep366, i64 0, i64 %b.freeze.last.idx365
  %b.freeze.last.chunk368 = load ptr, ptr %b.freeze.chunk.slot367, align 8
  %b.freeze.off.gep369 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena358, i32 0, i32 2
  %b.freeze.off370 = load i64, ptr %b.freeze.off.gep369, align 8
  %b.freeze.bump371 = getelementptr i8, ptr %b.freeze.last.chunk368, i64 %b.freeze.off370
  %b.freeze.cap.gep372 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena358, i32 0, i32 0
  %b.freeze.cap373 = load i64, ptr %b.freeze.cap.gep372, align 8
  %b.freeze.chunk.end374 = getelementptr i8, ptr %b.freeze.last.chunk368, i64 %b.freeze.cap373
  %b.freeze.ge.chunk375 = icmp uge ptr %b.freeze.data357, %b.freeze.last.chunk368
  %b.freeze.lt.end376 = icmp ult ptr %b.freeze.data357, %b.freeze.chunk.end374
  %b.freeze.in.chunk377 = and i1 %b.freeze.ge.chunk375, %b.freeze.lt.end376
  %b.freeze.ge.bump378 = icmp uge ptr %b.freeze.data357, %b.freeze.bump371
  %b.freeze.reaped379 = and i1 %b.freeze.in.chunk377, %b.freeze.ge.bump378
  br i1 %b.freeze.reaped379, label %b.freeze.copy363, label %b.freeze.done364

b.freeze.copy363:                                 ; preds = %b.freeze.check362
  %b.freeze.alen380 = add i64 %b.freeze.len355, 1
  %arena.cur381 = call ptr @dva_arena_current()
  %b.freeze.fresh382 = call ptr @dva_arena_alloc(ptr %arena.cur381, i64 %b.freeze.alen380)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh382, ptr align 1 %b.freeze.data357, i64 %b.freeze.len355, i1 false)
  %b.freeze.nul383 = getelementptr i8, ptr %b.freeze.fresh382, i64 %b.freeze.len355
  store i8 0, ptr %b.freeze.nul383, align 1
  br label %b.freeze.done364

b.freeze.done364:                                 ; preds = %b.freeze.copy363, %b.freeze.check362, %choice.then350
  %b.freeze.data384 = phi ptr [ %b.freeze.data357, %choice.then350 ], [ %b.freeze.data357, %b.freeze.check362 ], [ %b.freeze.fresh382, %b.freeze.copy363 ]
  %arena.cur385 = call ptr @dva_arena_current()
  %builder.freeze386 = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 16)
  %str.build.len.gep387 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze386, i32 0, i32 0
  store i64 %b.freeze.len355, ptr %str.build.len.gep387, align 8
  %str.build.data.gep388 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze386, i32 0, i32 1
  store ptr %b.freeze.data384, ptr %str.build.data.gep388, align 8
  %b.freeze.rst.len389 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load353, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len389, align 8
  %b.freeze.rst.data390 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load353, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data390, align 8
  %b.freeze.rst.cap391 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load353, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap391, align 8
  br label %choice.exit352
}

define ptr @"io::read_line"(ptr %0, i64 %1) #1 {
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
  %call.res = call ptr @"io::read_until"(ptr %var.load, i64 10, i64 %var.load1)
  store ptr %call.res, ptr %var.res, align 8
  %var.load2 = load ptr, ptr %var.res, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load2, ptr %var._, align 8
  store ptr %var.load2, ptr %var.line, align 8
  %var.load3 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit22
  %choice.res41 = phi ptr [ %choice.res, %choice.exit22 ], [ null, %choice.else ]
  ret ptr %choice.res41

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  store i64 %str.len.query5, ptr %var.n, align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %var.load6, 0
  br i1 %cmptmp, label %and.65.then, label %and.65.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.65.then:                                      ; preds = %str_ok
  %var.load7 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

and.65.else:                                      ; preds = %str_ok
  br label %and.65.exit

and.65.exit:                                      ; preds = %and.65.else, %idx_ok
  %and.65.phi = phi i1 [ %cmptmp19, %idx_ok ], [ %cmptmp, %and.65.else ]
  br i1 %and.65.phi, label %choice.then20, label %choice.else21

str_gen_check12:                                  ; preds = %and.65.then
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %and.65.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load18, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale14:                                      ; preds = %str_gen_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

idx_big_check:                                    ; preds = %str_ok13
  %idx.big = icmp sge i64 %subtmp, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp eq i64 %s.byte.val, 13
  br label %and.65.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then20:                                    ; preds = %and.65.exit
  %var.load23 = load i64, ptr %var.n, align 8
  %subtmp24 = sub i64 %var.load23, 1
  store i64 %subtmp24, ptr %var.end_idx, align 8
  %var.load25 = load ptr, ptr %var.line, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %str.tag29 = lshr i64 %s.read.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

choice.else21:                                    ; preds = %and.65.exit
  %var.load40 = load ptr, ptr %var.line, align 8
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else21, %str_ok32
  %choice.res = phi ptr [ %str.view, %str_ok32 ], [ %var.load40, %choice.else21 ]
  br label %choice.exit

str_gen_check31:                                  ; preds = %choice.then20
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %choice.then20
  %s.read.data36 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data36, align 8
  %var.load38 = load i64, ptr %var.end_idx, align 8
  %rel.start = add i64 %s.read.len28, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len28
  %final.start = select i1 %start.gt.len, i64 %s.read.len28, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load38, 0
  %rel.end = add i64 %s.read.len28, %var.load38
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load38
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len28
  %final.end = select i1 %end.gt.len, i64 %s.read.len28, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data37, i64 %final.start
  %arena.cur39 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit22

str_stale33:                                      ; preds = %str_gen_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
