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
@"var.io::STDIN" = global i64 0
@"var.io::STDOUT" = global i64 0
@"var.io::STDERR" = global i64 0
@"var.io::EOF" = global i64 0
@"var.io::EINTR" = global i64 0
@"var.io::EBADF" = global i64 0
@"var.io::EAGAIN" = global i64 0
@"var.io::EWOULDBLOCK" = global i64 0
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
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.8 = internal constant { ptr, ptr } { ptr @"io::write", ptr null }
@"var.io::write" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.9 = internal constant { ptr, ptr } { ptr @"io::#show_rune", ptr null }
@"var.io::#show_rune" = global ptr null
@"var.io::#clean_addr" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"io::#writev_all", ptr null }
@"var.io::#writev_all" = global ptr null
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
@clo.const.16 = internal constant { ptr, ptr } { ptr @"io::read_byte", ptr null }
@"var.io::read_byte" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"io::read_until", ptr null }
@"var.io::read_until" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.18 = internal constant { ptr, ptr } { ptr @"io::read_line", ptr null }
@"var.io::read_line" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_io, ptr null }]

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
  %var.errno_val = alloca i32, align 4
  %var.w = alloca i64, align 8
  %var.buf_addr = alloca ptr, align 8
  %var.rem = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.0 = alloca i64, align 8
  %loop.idx.0 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.0, align 8
  br label %loop.header.0

choice.case:                                      ; preds = %str_ok
  ret i64 0

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.0:                                    ; preds = %loop.latch.0, %choice.exit
  %counter.load = load i64, ptr %loop.idx.0, align 8
  br label %loop.body.0

loop.body.0:                                      ; preds = %loop.header.0
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.0, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.off'", align 8
  %var.load5 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit6

loop.exit.nat.0:                                  ; No predecessors!
  br label %loop.exit.0

loop.latch.0:                                     ; preds = %choice.exit17, %choice.then26
  %step.val = load i64, ptr %loop.step.0, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.0, align 8
  br label %loop.header.0

loop.exit.0:                                      ; preds = %choice.case36, %choice.else31, %choice.then, %loop.exit.nat.0
  %var.load42 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load42

choice.then:                                      ; preds = %loop.body.0
  br label %loop.exit.0

choice.exit6:                                     ; preds = %loop.body.0
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

choice.exit17:                                    ; preds = %choice.exit35, %choice.exit27
  br label %loop.latch.0

choice.case18:                                    ; preds = %choice.exit6
  %call.res21 = call ptr @__errno_location()
  %raw.int = ptrtoint ptr %call.res21 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.next19:                                    ; preds = %choice.exit6
  %var.load34 = load i64, ptr %var.w, align 8
  %val.match38 = icmp eq i64 %var.load34, 0
  br i1 %val.match38, label %choice.case36, label %choice.next37

addr_gen_check:                                   ; preds = %choice.case18
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %addr.tag)
  br i1 %tag.valid23, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.case18
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load24 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load24 to i64
  %cmptmp25 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp25, label %choice.then26, label %choice.else

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then26:                                    ; preds = %addr_ok
  br label %loop.latch.0

choice.else:                                      ; preds = %addr_ok
  %var.load28 = load i64, ptr %"var.off'", align 8
  %cmptmp29 = icmp eq i64 %var.load28, 0
  br i1 %cmptmp29, label %choice.then30, label %choice.else31

choice.exit27:                                    ; preds = %choice.exit32
  br label %choice.exit17

choice.then30:                                    ; preds = %choice.else
  ret i64 -1

choice.else31:                                    ; preds = %choice.else
  br label %loop.exit.0

choice.exit32:                                    ; preds = %ret.dead33
  br label %choice.exit27

ret.dead33:                                       ; No predecessors!
  br label %choice.exit32

choice.exit35:                                    ; preds = %choice.next37
  %var.load39 = load i64, ptr %"var.off'", align 8
  %var.load40 = load i64, ptr %var.w, align 8
  %addtmp41 = add i64 %var.load39, %var.load40
  store i64 %addtmp41, ptr %"var.off'", align 8
  br label %choice.exit17

choice.case36:                                    ; preds = %choice.next19
  br label %loop.exit.0

choice.next37:                                    ; preds = %choice.next19
  br label %choice.exit35
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

define internal ptr @"io::#show_rune"(i32 %0) #1 {
entry:
  %var.b266 = alloca ptr, align 8
  %var.b86 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.r = alloca i32, align 4
  store i32 %0, ptr %var.r, align 4
  %var.load = load i32, ptr %var.r, align 4
  %coerce.sext = sext i32 %var.load to i64
  %cmptmp = icmp slt i64 %coerce.sext, 128
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %b.freeze.done448, %b.freeze.done225, %b.freeze.done, %choice.case
  %choice.res = phi ptr [ %call.res, %choice.case ], [ %builder.freeze, %b.freeze.done ], [ %builder.freeze247, %b.freeze.done225 ], [ %builder.freeze470, %b.freeze.done448 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %var.load1 = load i32, ptr %var.r, align 4
  %coerce.sext2 = sext i32 %var.load1 to i64
  %call.res = call ptr @"str::from_byte"(i64 %coerce.sext2)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %coerce.sext5 = sext i32 %var.load to i64
  %cmptmp6 = icmp slt i64 %coerce.sext5, 2048
  br i1 %cmptmp6, label %choice.case3, label %choice.next4

choice.case3:                                     ; preds = %choice.next
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len7

choice.next4:                                     ; preds = %choice.next
  %coerce.sext71 = sext i32 %var.load to i64
  %cmptmp72 = icmp slt i64 %coerce.sext71, 65536
  br i1 %cmptmp72, label %choice.case69, label %choice.next70

b.buf.len7:                                       ; preds = %str_overflow_abort, %choice.case3
  %arena.cur8 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 2, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load9 = load i32, ptr %var.r, align 4
  %shrtmp = lshr i32 %var.load9, 6
  %coerce.sext10 = sext i32 %shrtmp to i64
  %addtmp = add i64 192, %coerce.sext10
  %b.b.ge0 = icmp sge i64 %addtmp, 0
  %b.b.le255 = icmp sle i64 %addtmp, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %choice.case3
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len7

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len7
  %b.byte.i8 = trunc i64 %addtmp to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len11 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap12 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data13 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len11, %b.cap12
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len7
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap12, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum14 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf15 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %b.new.buf.len16

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len16
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data19 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len20 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data19, i64 %b.cur.len20
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len20, 1
  %b.nul = getelementptr i8, ptr %b.cur.data19, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep21, align 8
  %b.load22 = load ptr, ptr %var.b, align 8
  %var.load23 = load i32, ptr %var.r, align 4
  %coerce.sext24 = sext i32 %var.load23 to i64
  %bandtmp = and i64 %coerce.sext24, 63
  %addtmp25 = add i64 128, %bandtmp
  %b.b.ge026 = icmp sge i64 %addtmp25, 0
  %b.b.le25527 = icmp sle i64 %addtmp25, 255
  %b.byte.range28 = and i1 %b.b.ge026, %b.b.le25527
  br i1 %b.byte.range28, label %b.byte_ok29, label %b.byte_err30

b.new.buf.len16:                                  ; preds = %str_overflow_abort17, %b.grow
  %arena.cur18 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 %sum14)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data13, i64 %b.len11, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len11
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort17:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len16

b.byte_ok29:                                      ; preds = %b.byte_err30, %b.push_done
  %b.byte.i831 = trunc i64 %addtmp25 to i8
  %b.len32 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load22, i32 0, i32 0
  %b.len33 = load i64, ptr %b.len32, align 8
  %b.cap34 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load22, i32 0, i32 2
  %b.cap35 = load i64, ptr %b.cap34, align 8
  %b.data36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load22, i32 0, i32 1
  %b.data37 = load ptr, ptr %b.data36, align 8
  %b.needs.grow38 = icmp eq i64 %b.len33, %b.cap35
  br i1 %b.needs.grow38, label %b.grow39, label %b.nogrow40

b.byte_err30:                                     ; preds = %b.push_done
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok29

b.grow39:                                         ; preds = %b.byte_ok29
  %b.cap242 = mul i64 %b.cap35, 2
  %b.cap.small43 = icmp slt i64 %b.cap242, 16
  %b.new.cap44 = select i1 %b.cap.small43, i64 16, i64 %b.cap242
  %b.new.buf.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap44, i64 1)
  %sum46 = extractvalue { i64, i1 } %b.new.buf.len45, 0
  %ovf47 = extractvalue { i64, i1 } %b.new.buf.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.new.buf.len48

b.nogrow40:                                       ; preds = %b.byte_ok29
  br label %b.push_done41

b.push_done41:                                    ; preds = %b.nogrow40, %b.new.buf.len48
  %b.cur.data55 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load22, i32 0, i32 1
  %b.cur.data56 = load ptr, ptr %b.cur.data55, align 8
  %b.cur.len57 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load22, i32 0, i32 0
  %b.cur.len58 = load i64, ptr %b.cur.len57, align 8
  %b.byte.gep59 = getelementptr i8, ptr %b.cur.data56, i64 %b.cur.len58
  store i8 %b.byte.i831, ptr %b.byte.gep59, align 1
  %b.next.len60 = add i64 %b.cur.len58, 1
  %b.nul61 = getelementptr i8, ptr %b.cur.data56, i64 %b.next.len60
  store i8 0, ptr %b.nul61, align 1
  %b.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load22, i32 0, i32 0
  store i64 %b.next.len60, ptr %b.len.gep62, align 8
  %var.load63 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 0
  %b.freeze.len64 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 1
  %b.freeze.data65 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len48:                                  ; preds = %str_overflow_abort49, %b.grow39
  %arena.cur50 = call ptr @dva_arena_current()
  %b.new.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf51, ptr align 1 %b.data37, i64 %b.len33, i1 false)
  %b.grow.nul52 = getelementptr i8, ptr %b.new.buf51, i64 %b.len33
  store i8 0, ptr %b.grow.nul52, align 1
  %b.new.data.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load22, i32 0, i32 1
  store ptr %b.new.buf51, ptr %b.new.data.gep53, align 8
  %b.new.cap.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load22, i32 0, i32 2
  store i64 %b.new.cap44, ptr %b.new.cap.gep54, align 8
  br label %b.push_done41

str_overflow_abort49:                             ; preds = %b.grow39
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len48

b.freeze.check:                                   ; preds = %b.push_done41
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data65, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data65, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data65, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len64, 1
  %arena.cur66 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data65, i64 %b.freeze.len64, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len64
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.push_done41
  %b.freeze.data67 = phi ptr [ %b.freeze.data65, %b.push_done41 ], [ %b.freeze.data65, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur68 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len64, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data67, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load63, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit

choice.case69:                                    ; preds = %choice.next4
  %arena.cur73 = call ptr @dva_arena_current()
  %builder.new74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 24)
  %b.data.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new74, i32 0, i32 1
  %b.len.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new74, i32 0, i32 0
  %b.cap.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new74, i32 0, i32 2
  %b.buf.len78 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 3, i64 1)
  %sum79 = extractvalue { i64, i1 } %b.buf.len78, 0
  %ovf80 = extractvalue { i64, i1 } %b.buf.len78, 1
  br i1 %ovf80, label %str_overflow_abort82, label %b.buf.len81

choice.next70:                                    ; preds = %choice.next4
  %arena.cur253 = call ptr @dva_arena_current()
  %builder.new254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 24)
  %b.data.gep255 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new254, i32 0, i32 1
  %b.len.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new254, i32 0, i32 0
  %b.cap.gep257 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new254, i32 0, i32 2
  %b.buf.len258 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 1)
  %sum259 = extractvalue { i64, i1 } %b.buf.len258, 0
  %ovf260 = extractvalue { i64, i1 } %b.buf.len258, 1
  br i1 %ovf260, label %str_overflow_abort262, label %b.buf.len261

b.buf.len81:                                      ; preds = %str_overflow_abort82, %choice.case69
  %arena.cur83 = call ptr @dva_arena_current()
  %b.buf84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 %sum79)
  %b.nul085 = getelementptr i8, ptr %b.buf84, i64 0
  store i8 0, ptr %b.nul085, align 1
  store i64 0, ptr %b.len.gep76, align 8
  store ptr %b.buf84, ptr %b.data.gep75, align 8
  store i64 3, ptr %b.cap.gep77, align 8
  store ptr %builder.new74, ptr %var.b86, align 8
  %b.load87 = load ptr, ptr %var.b86, align 8
  %var.load88 = load i32, ptr %var.r, align 4
  %shrtmp89 = lshr i32 %var.load88, 12
  %coerce.sext90 = sext i32 %shrtmp89 to i64
  %addtmp91 = add i64 224, %coerce.sext90
  %b.b.ge092 = icmp sge i64 %addtmp91, 0
  %b.b.le25593 = icmp sle i64 %addtmp91, 255
  %b.byte.range94 = and i1 %b.b.ge092, %b.b.le25593
  br i1 %b.byte.range94, label %b.byte_ok95, label %b.byte_err96

str_overflow_abort82:                             ; preds = %choice.case69
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len81

b.byte_ok95:                                      ; preds = %b.byte_err96, %b.buf.len81
  %b.byte.i897 = trunc i64 %addtmp91 to i8
  %b.len98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 0
  %b.len99 = load i64, ptr %b.len98, align 8
  %b.cap100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 2
  %b.cap101 = load i64, ptr %b.cap100, align 8
  %b.data102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 1
  %b.data103 = load ptr, ptr %b.data102, align 8
  %b.needs.grow104 = icmp eq i64 %b.len99, %b.cap101
  br i1 %b.needs.grow104, label %b.grow105, label %b.nogrow106

b.byte_err96:                                     ; preds = %b.buf.len81
  %7 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok95

b.grow105:                                        ; preds = %b.byte_ok95
  %b.cap2108 = mul i64 %b.cap101, 2
  %b.cap.small109 = icmp slt i64 %b.cap2108, 16
  %b.new.cap110 = select i1 %b.cap.small109, i64 16, i64 %b.cap2108
  %b.new.buf.len111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap110, i64 1)
  %sum112 = extractvalue { i64, i1 } %b.new.buf.len111, 0
  %ovf113 = extractvalue { i64, i1 } %b.new.buf.len111, 1
  br i1 %ovf113, label %str_overflow_abort115, label %b.new.buf.len114

b.nogrow106:                                      ; preds = %b.byte_ok95
  br label %b.push_done107

b.push_done107:                                   ; preds = %b.nogrow106, %b.new.buf.len114
  %b.cur.data121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 1
  %b.cur.data122 = load ptr, ptr %b.cur.data121, align 8
  %b.cur.len123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 0
  %b.cur.len124 = load i64, ptr %b.cur.len123, align 8
  %b.byte.gep125 = getelementptr i8, ptr %b.cur.data122, i64 %b.cur.len124
  store i8 %b.byte.i897, ptr %b.byte.gep125, align 1
  %b.next.len126 = add i64 %b.cur.len124, 1
  %b.nul127 = getelementptr i8, ptr %b.cur.data122, i64 %b.next.len126
  store i8 0, ptr %b.nul127, align 1
  %b.len.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 0
  store i64 %b.next.len126, ptr %b.len.gep128, align 8
  %b.load129 = load ptr, ptr %var.b86, align 8
  %var.load130 = load i32, ptr %var.r, align 4
  %shrtmp131 = lshr i32 %var.load130, 6
  %coerce.sext132 = sext i32 %shrtmp131 to i64
  %bandtmp133 = and i64 %coerce.sext132, 63
  %addtmp134 = add i64 128, %bandtmp133
  %b.b.ge0135 = icmp sge i64 %addtmp134, 0
  %b.b.le255136 = icmp sle i64 %addtmp134, 255
  %b.byte.range137 = and i1 %b.b.ge0135, %b.b.le255136
  br i1 %b.byte.range137, label %b.byte_ok138, label %b.byte_err139

b.new.buf.len114:                                 ; preds = %str_overflow_abort115, %b.grow105
  %arena.cur116 = call ptr @dva_arena_current()
  %b.new.buf117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 %sum112)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf117, ptr align 1 %b.data103, i64 %b.len99, i1 false)
  %b.grow.nul118 = getelementptr i8, ptr %b.new.buf117, i64 %b.len99
  store i8 0, ptr %b.grow.nul118, align 1
  %b.new.data.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 1
  store ptr %b.new.buf117, ptr %b.new.data.gep119, align 8
  %b.new.cap.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 2
  store i64 %b.new.cap110, ptr %b.new.cap.gep120, align 8
  br label %b.push_done107

str_overflow_abort115:                            ; preds = %b.grow105
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len114

b.byte_ok138:                                     ; preds = %b.byte_err139, %b.push_done107
  %b.byte.i8140 = trunc i64 %addtmp134 to i8
  %b.len141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 0
  %b.len142 = load i64, ptr %b.len141, align 8
  %b.cap143 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 2
  %b.cap144 = load i64, ptr %b.cap143, align 8
  %b.data145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 1
  %b.data146 = load ptr, ptr %b.data145, align 8
  %b.needs.grow147 = icmp eq i64 %b.len142, %b.cap144
  br i1 %b.needs.grow147, label %b.grow148, label %b.nogrow149

b.byte_err139:                                    ; preds = %b.push_done107
  %9 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok138

b.grow148:                                        ; preds = %b.byte_ok138
  %b.cap2151 = mul i64 %b.cap144, 2
  %b.cap.small152 = icmp slt i64 %b.cap2151, 16
  %b.new.cap153 = select i1 %b.cap.small152, i64 16, i64 %b.cap2151
  %b.new.buf.len154 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap153, i64 1)
  %sum155 = extractvalue { i64, i1 } %b.new.buf.len154, 0
  %ovf156 = extractvalue { i64, i1 } %b.new.buf.len154, 1
  br i1 %ovf156, label %str_overflow_abort158, label %b.new.buf.len157

b.nogrow149:                                      ; preds = %b.byte_ok138
  br label %b.push_done150

b.push_done150:                                   ; preds = %b.nogrow149, %b.new.buf.len157
  %b.cur.data164 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 1
  %b.cur.data165 = load ptr, ptr %b.cur.data164, align 8
  %b.cur.len166 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 0
  %b.cur.len167 = load i64, ptr %b.cur.len166, align 8
  %b.byte.gep168 = getelementptr i8, ptr %b.cur.data165, i64 %b.cur.len167
  store i8 %b.byte.i8140, ptr %b.byte.gep168, align 1
  %b.next.len169 = add i64 %b.cur.len167, 1
  %b.nul170 = getelementptr i8, ptr %b.cur.data165, i64 %b.next.len169
  store i8 0, ptr %b.nul170, align 1
  %b.len.gep171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 0
  store i64 %b.next.len169, ptr %b.len.gep171, align 8
  %b.load172 = load ptr, ptr %var.b86, align 8
  %var.load173 = load i32, ptr %var.r, align 4
  %coerce.sext174 = sext i32 %var.load173 to i64
  %bandtmp175 = and i64 %coerce.sext174, 63
  %addtmp176 = add i64 128, %bandtmp175
  %b.b.ge0177 = icmp sge i64 %addtmp176, 0
  %b.b.le255178 = icmp sle i64 %addtmp176, 255
  %b.byte.range179 = and i1 %b.b.ge0177, %b.b.le255178
  br i1 %b.byte.range179, label %b.byte_ok180, label %b.byte_err181

b.new.buf.len157:                                 ; preds = %str_overflow_abort158, %b.grow148
  %arena.cur159 = call ptr @dva_arena_current()
  %b.new.buf160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 %sum155)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf160, ptr align 1 %b.data146, i64 %b.len142, i1 false)
  %b.grow.nul161 = getelementptr i8, ptr %b.new.buf160, i64 %b.len142
  store i8 0, ptr %b.grow.nul161, align 1
  %b.new.data.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 1
  store ptr %b.new.buf160, ptr %b.new.data.gep162, align 8
  %b.new.cap.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 2
  store i64 %b.new.cap153, ptr %b.new.cap.gep163, align 8
  br label %b.push_done150

str_overflow_abort158:                            ; preds = %b.grow148
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len157

b.byte_ok180:                                     ; preds = %b.byte_err181, %b.push_done150
  %b.byte.i8182 = trunc i64 %addtmp176 to i8
  %b.len183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load172, i32 0, i32 0
  %b.len184 = load i64, ptr %b.len183, align 8
  %b.cap185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load172, i32 0, i32 2
  %b.cap186 = load i64, ptr %b.cap185, align 8
  %b.data187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load172, i32 0, i32 1
  %b.data188 = load ptr, ptr %b.data187, align 8
  %b.needs.grow189 = icmp eq i64 %b.len184, %b.cap186
  br i1 %b.needs.grow189, label %b.grow190, label %b.nogrow191

b.byte_err181:                                    ; preds = %b.push_done150
  %11 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok180

b.grow190:                                        ; preds = %b.byte_ok180
  %b.cap2193 = mul i64 %b.cap186, 2
  %b.cap.small194 = icmp slt i64 %b.cap2193, 16
  %b.new.cap195 = select i1 %b.cap.small194, i64 16, i64 %b.cap2193
  %b.new.buf.len196 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap195, i64 1)
  %sum197 = extractvalue { i64, i1 } %b.new.buf.len196, 0
  %ovf198 = extractvalue { i64, i1 } %b.new.buf.len196, 1
  br i1 %ovf198, label %str_overflow_abort200, label %b.new.buf.len199

b.nogrow191:                                      ; preds = %b.byte_ok180
  br label %b.push_done192

b.push_done192:                                   ; preds = %b.nogrow191, %b.new.buf.len199
  %b.cur.data206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load172, i32 0, i32 1
  %b.cur.data207 = load ptr, ptr %b.cur.data206, align 8
  %b.cur.len208 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load172, i32 0, i32 0
  %b.cur.len209 = load i64, ptr %b.cur.len208, align 8
  %b.byte.gep210 = getelementptr i8, ptr %b.cur.data207, i64 %b.cur.len209
  store i8 %b.byte.i8182, ptr %b.byte.gep210, align 1
  %b.next.len211 = add i64 %b.cur.len209, 1
  %b.nul212 = getelementptr i8, ptr %b.cur.data207, i64 %b.next.len211
  store i8 0, ptr %b.nul212, align 1
  %b.len.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load172, i32 0, i32 0
  store i64 %b.next.len211, ptr %b.len.gep213, align 8
  %var.load214 = load ptr, ptr %var.b86, align 8
  %b.freeze.len215 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load214, i32 0, i32 0
  %b.freeze.len216 = load i64, ptr %b.freeze.len215, align 8
  %b.freeze.data217 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load214, i32 0, i32 1
  %b.freeze.data218 = load ptr, ptr %b.freeze.data217, align 8
  %b.freeze.arena219 = call ptr @dva_arena_current()
  %b.freeze.nc.gep220 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena219, i32 0, i32 1
  %b.freeze.nc221 = load i64, ptr %b.freeze.nc.gep220, align 8
  %b.freeze.has.chunk222 = icmp sgt i64 %b.freeze.nc221, 0
  br i1 %b.freeze.has.chunk222, label %b.freeze.check223, label %b.freeze.done225

b.new.buf.len199:                                 ; preds = %str_overflow_abort200, %b.grow190
  %arena.cur201 = call ptr @dva_arena_current()
  %b.new.buf202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 %sum197)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf202, ptr align 1 %b.data188, i64 %b.len184, i1 false)
  %b.grow.nul203 = getelementptr i8, ptr %b.new.buf202, i64 %b.len184
  store i8 0, ptr %b.grow.nul203, align 1
  %b.new.data.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load172, i32 0, i32 1
  store ptr %b.new.buf202, ptr %b.new.data.gep204, align 8
  %b.new.cap.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load172, i32 0, i32 2
  store i64 %b.new.cap195, ptr %b.new.cap.gep205, align 8
  br label %b.push_done192

str_overflow_abort200:                            ; preds = %b.grow190
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len199

b.freeze.check223:                                ; preds = %b.push_done192
  %b.freeze.last.idx226 = sub i64 %b.freeze.nc221, 1
  %b.freeze.chunks.gep227 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena219, i32 0, i32 3
  %b.freeze.chunk.slot228 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep227, i64 0, i64 %b.freeze.last.idx226
  %b.freeze.last.chunk229 = load ptr, ptr %b.freeze.chunk.slot228, align 8
  %b.freeze.off.gep230 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena219, i32 0, i32 2
  %b.freeze.off231 = load i64, ptr %b.freeze.off.gep230, align 8
  %b.freeze.bump232 = getelementptr i8, ptr %b.freeze.last.chunk229, i64 %b.freeze.off231
  %b.freeze.cap.gep233 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena219, i32 0, i32 0
  %b.freeze.cap234 = load i64, ptr %b.freeze.cap.gep233, align 8
  %b.freeze.chunk.end235 = getelementptr i8, ptr %b.freeze.last.chunk229, i64 %b.freeze.cap234
  %b.freeze.ge.chunk236 = icmp uge ptr %b.freeze.data218, %b.freeze.last.chunk229
  %b.freeze.lt.end237 = icmp ult ptr %b.freeze.data218, %b.freeze.chunk.end235
  %b.freeze.in.chunk238 = and i1 %b.freeze.ge.chunk236, %b.freeze.lt.end237
  %b.freeze.ge.bump239 = icmp uge ptr %b.freeze.data218, %b.freeze.bump232
  %b.freeze.reaped240 = and i1 %b.freeze.in.chunk238, %b.freeze.ge.bump239
  br i1 %b.freeze.reaped240, label %b.freeze.copy224, label %b.freeze.done225

b.freeze.copy224:                                 ; preds = %b.freeze.check223
  %b.freeze.alen241 = add i64 %b.freeze.len216, 1
  %arena.cur242 = call ptr @dva_arena_current()
  %b.freeze.fresh243 = call ptr @dva_arena_alloc(ptr %arena.cur242, i64 %b.freeze.alen241)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh243, ptr align 1 %b.freeze.data218, i64 %b.freeze.len216, i1 false)
  %b.freeze.nul244 = getelementptr i8, ptr %b.freeze.fresh243, i64 %b.freeze.len216
  store i8 0, ptr %b.freeze.nul244, align 1
  br label %b.freeze.done225

b.freeze.done225:                                 ; preds = %b.freeze.copy224, %b.freeze.check223, %b.push_done192
  %b.freeze.data245 = phi ptr [ %b.freeze.data218, %b.push_done192 ], [ %b.freeze.data218, %b.freeze.check223 ], [ %b.freeze.fresh243, %b.freeze.copy224 ]
  %arena.cur246 = call ptr @dva_arena_current()
  %builder.freeze247 = call ptr @dva_arena_alloc(ptr %arena.cur246, i64 16)
  %str.build.len.gep248 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze247, i32 0, i32 0
  store i64 %b.freeze.len216, ptr %str.build.len.gep248, align 8
  %str.build.data.gep249 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze247, i32 0, i32 1
  store ptr %b.freeze.data245, ptr %str.build.data.gep249, align 8
  %b.freeze.rst.len250 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load214, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len250, align 8
  %b.freeze.rst.data251 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load214, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data251, align 8
  %b.freeze.rst.cap252 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load214, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap252, align 8
  br label %choice.exit

b.buf.len261:                                     ; preds = %str_overflow_abort262, %choice.next70
  %arena.cur263 = call ptr @dva_arena_current()
  %b.buf264 = call ptr @dva_arena_alloc(ptr %arena.cur263, i64 %sum259)
  %b.nul0265 = getelementptr i8, ptr %b.buf264, i64 0
  store i8 0, ptr %b.nul0265, align 1
  store i64 0, ptr %b.len.gep256, align 8
  store ptr %b.buf264, ptr %b.data.gep255, align 8
  store i64 4, ptr %b.cap.gep257, align 8
  store ptr %builder.new254, ptr %var.b266, align 8
  %b.load267 = load ptr, ptr %var.b266, align 8
  %var.load268 = load i32, ptr %var.r, align 4
  %shrtmp269 = lshr i32 %var.load268, 18
  %coerce.sext270 = sext i32 %shrtmp269 to i64
  %addtmp271 = add i64 240, %coerce.sext270
  %b.b.ge0272 = icmp sge i64 %addtmp271, 0
  %b.b.le255273 = icmp sle i64 %addtmp271, 255
  %b.byte.range274 = and i1 %b.b.ge0272, %b.b.le255273
  br i1 %b.byte.range274, label %b.byte_ok275, label %b.byte_err276

str_overflow_abort262:                            ; preds = %choice.next70
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len261

b.byte_ok275:                                     ; preds = %b.byte_err276, %b.buf.len261
  %b.byte.i8277 = trunc i64 %addtmp271 to i8
  %b.len278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load267, i32 0, i32 0
  %b.len279 = load i64, ptr %b.len278, align 8
  %b.cap280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load267, i32 0, i32 2
  %b.cap281 = load i64, ptr %b.cap280, align 8
  %b.data282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load267, i32 0, i32 1
  %b.data283 = load ptr, ptr %b.data282, align 8
  %b.needs.grow284 = icmp eq i64 %b.len279, %b.cap281
  br i1 %b.needs.grow284, label %b.grow285, label %b.nogrow286

b.byte_err276:                                    ; preds = %b.buf.len261
  %14 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok275

b.grow285:                                        ; preds = %b.byte_ok275
  %b.cap2288 = mul i64 %b.cap281, 2
  %b.cap.small289 = icmp slt i64 %b.cap2288, 16
  %b.new.cap290 = select i1 %b.cap.small289, i64 16, i64 %b.cap2288
  %b.new.buf.len291 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap290, i64 1)
  %sum292 = extractvalue { i64, i1 } %b.new.buf.len291, 0
  %ovf293 = extractvalue { i64, i1 } %b.new.buf.len291, 1
  br i1 %ovf293, label %str_overflow_abort295, label %b.new.buf.len294

b.nogrow286:                                      ; preds = %b.byte_ok275
  br label %b.push_done287

b.push_done287:                                   ; preds = %b.nogrow286, %b.new.buf.len294
  %b.cur.data301 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load267, i32 0, i32 1
  %b.cur.data302 = load ptr, ptr %b.cur.data301, align 8
  %b.cur.len303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load267, i32 0, i32 0
  %b.cur.len304 = load i64, ptr %b.cur.len303, align 8
  %b.byte.gep305 = getelementptr i8, ptr %b.cur.data302, i64 %b.cur.len304
  store i8 %b.byte.i8277, ptr %b.byte.gep305, align 1
  %b.next.len306 = add i64 %b.cur.len304, 1
  %b.nul307 = getelementptr i8, ptr %b.cur.data302, i64 %b.next.len306
  store i8 0, ptr %b.nul307, align 1
  %b.len.gep308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load267, i32 0, i32 0
  store i64 %b.next.len306, ptr %b.len.gep308, align 8
  %b.load309 = load ptr, ptr %var.b266, align 8
  %var.load310 = load i32, ptr %var.r, align 4
  %shrtmp311 = lshr i32 %var.load310, 12
  %coerce.sext312 = sext i32 %shrtmp311 to i64
  %bandtmp313 = and i64 %coerce.sext312, 63
  %addtmp314 = add i64 128, %bandtmp313
  %b.b.ge0315 = icmp sge i64 %addtmp314, 0
  %b.b.le255316 = icmp sle i64 %addtmp314, 255
  %b.byte.range317 = and i1 %b.b.ge0315, %b.b.le255316
  br i1 %b.byte.range317, label %b.byte_ok318, label %b.byte_err319

b.new.buf.len294:                                 ; preds = %str_overflow_abort295, %b.grow285
  %arena.cur296 = call ptr @dva_arena_current()
  %b.new.buf297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 %sum292)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf297, ptr align 1 %b.data283, i64 %b.len279, i1 false)
  %b.grow.nul298 = getelementptr i8, ptr %b.new.buf297, i64 %b.len279
  store i8 0, ptr %b.grow.nul298, align 1
  %b.new.data.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load267, i32 0, i32 1
  store ptr %b.new.buf297, ptr %b.new.data.gep299, align 8
  %b.new.cap.gep300 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load267, i32 0, i32 2
  store i64 %b.new.cap290, ptr %b.new.cap.gep300, align 8
  br label %b.push_done287

str_overflow_abort295:                            ; preds = %b.grow285
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len294

b.byte_ok318:                                     ; preds = %b.byte_err319, %b.push_done287
  %b.byte.i8320 = trunc i64 %addtmp314 to i8
  %b.len321 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 0
  %b.len322 = load i64, ptr %b.len321, align 8
  %b.cap323 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 2
  %b.cap324 = load i64, ptr %b.cap323, align 8
  %b.data325 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 1
  %b.data326 = load ptr, ptr %b.data325, align 8
  %b.needs.grow327 = icmp eq i64 %b.len322, %b.cap324
  br i1 %b.needs.grow327, label %b.grow328, label %b.nogrow329

b.byte_err319:                                    ; preds = %b.push_done287
  %16 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok318

b.grow328:                                        ; preds = %b.byte_ok318
  %b.cap2331 = mul i64 %b.cap324, 2
  %b.cap.small332 = icmp slt i64 %b.cap2331, 16
  %b.new.cap333 = select i1 %b.cap.small332, i64 16, i64 %b.cap2331
  %b.new.buf.len334 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap333, i64 1)
  %sum335 = extractvalue { i64, i1 } %b.new.buf.len334, 0
  %ovf336 = extractvalue { i64, i1 } %b.new.buf.len334, 1
  br i1 %ovf336, label %str_overflow_abort338, label %b.new.buf.len337

b.nogrow329:                                      ; preds = %b.byte_ok318
  br label %b.push_done330

b.push_done330:                                   ; preds = %b.nogrow329, %b.new.buf.len337
  %b.cur.data344 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 1
  %b.cur.data345 = load ptr, ptr %b.cur.data344, align 8
  %b.cur.len346 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 0
  %b.cur.len347 = load i64, ptr %b.cur.len346, align 8
  %b.byte.gep348 = getelementptr i8, ptr %b.cur.data345, i64 %b.cur.len347
  store i8 %b.byte.i8320, ptr %b.byte.gep348, align 1
  %b.next.len349 = add i64 %b.cur.len347, 1
  %b.nul350 = getelementptr i8, ptr %b.cur.data345, i64 %b.next.len349
  store i8 0, ptr %b.nul350, align 1
  %b.len.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 0
  store i64 %b.next.len349, ptr %b.len.gep351, align 8
  %b.load352 = load ptr, ptr %var.b266, align 8
  %var.load353 = load i32, ptr %var.r, align 4
  %shrtmp354 = lshr i32 %var.load353, 6
  %coerce.sext355 = sext i32 %shrtmp354 to i64
  %bandtmp356 = and i64 %coerce.sext355, 63
  %addtmp357 = add i64 128, %bandtmp356
  %b.b.ge0358 = icmp sge i64 %addtmp357, 0
  %b.b.le255359 = icmp sle i64 %addtmp357, 255
  %b.byte.range360 = and i1 %b.b.ge0358, %b.b.le255359
  br i1 %b.byte.range360, label %b.byte_ok361, label %b.byte_err362

b.new.buf.len337:                                 ; preds = %str_overflow_abort338, %b.grow328
  %arena.cur339 = call ptr @dva_arena_current()
  %b.new.buf340 = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 %sum335)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf340, ptr align 1 %b.data326, i64 %b.len322, i1 false)
  %b.grow.nul341 = getelementptr i8, ptr %b.new.buf340, i64 %b.len322
  store i8 0, ptr %b.grow.nul341, align 1
  %b.new.data.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 1
  store ptr %b.new.buf340, ptr %b.new.data.gep342, align 8
  %b.new.cap.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 2
  store i64 %b.new.cap333, ptr %b.new.cap.gep343, align 8
  br label %b.push_done330

str_overflow_abort338:                            ; preds = %b.grow328
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len337

b.byte_ok361:                                     ; preds = %b.byte_err362, %b.push_done330
  %b.byte.i8363 = trunc i64 %addtmp357 to i8
  %b.len364 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 0
  %b.len365 = load i64, ptr %b.len364, align 8
  %b.cap366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 2
  %b.cap367 = load i64, ptr %b.cap366, align 8
  %b.data368 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 1
  %b.data369 = load ptr, ptr %b.data368, align 8
  %b.needs.grow370 = icmp eq i64 %b.len365, %b.cap367
  br i1 %b.needs.grow370, label %b.grow371, label %b.nogrow372

b.byte_err362:                                    ; preds = %b.push_done330
  %18 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok361

b.grow371:                                        ; preds = %b.byte_ok361
  %b.cap2374 = mul i64 %b.cap367, 2
  %b.cap.small375 = icmp slt i64 %b.cap2374, 16
  %b.new.cap376 = select i1 %b.cap.small375, i64 16, i64 %b.cap2374
  %b.new.buf.len377 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap376, i64 1)
  %sum378 = extractvalue { i64, i1 } %b.new.buf.len377, 0
  %ovf379 = extractvalue { i64, i1 } %b.new.buf.len377, 1
  br i1 %ovf379, label %str_overflow_abort381, label %b.new.buf.len380

b.nogrow372:                                      ; preds = %b.byte_ok361
  br label %b.push_done373

b.push_done373:                                   ; preds = %b.nogrow372, %b.new.buf.len380
  %b.cur.data387 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 1
  %b.cur.data388 = load ptr, ptr %b.cur.data387, align 8
  %b.cur.len389 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 0
  %b.cur.len390 = load i64, ptr %b.cur.len389, align 8
  %b.byte.gep391 = getelementptr i8, ptr %b.cur.data388, i64 %b.cur.len390
  store i8 %b.byte.i8363, ptr %b.byte.gep391, align 1
  %b.next.len392 = add i64 %b.cur.len390, 1
  %b.nul393 = getelementptr i8, ptr %b.cur.data388, i64 %b.next.len392
  store i8 0, ptr %b.nul393, align 1
  %b.len.gep394 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 0
  store i64 %b.next.len392, ptr %b.len.gep394, align 8
  %b.load395 = load ptr, ptr %var.b266, align 8
  %var.load396 = load i32, ptr %var.r, align 4
  %coerce.sext397 = sext i32 %var.load396 to i64
  %bandtmp398 = and i64 %coerce.sext397, 63
  %addtmp399 = add i64 128, %bandtmp398
  %b.b.ge0400 = icmp sge i64 %addtmp399, 0
  %b.b.le255401 = icmp sle i64 %addtmp399, 255
  %b.byte.range402 = and i1 %b.b.ge0400, %b.b.le255401
  br i1 %b.byte.range402, label %b.byte_ok403, label %b.byte_err404

b.new.buf.len380:                                 ; preds = %str_overflow_abort381, %b.grow371
  %arena.cur382 = call ptr @dva_arena_current()
  %b.new.buf383 = call ptr @dva_arena_alloc(ptr %arena.cur382, i64 %sum378)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf383, ptr align 1 %b.data369, i64 %b.len365, i1 false)
  %b.grow.nul384 = getelementptr i8, ptr %b.new.buf383, i64 %b.len365
  store i8 0, ptr %b.grow.nul384, align 1
  %b.new.data.gep385 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 1
  store ptr %b.new.buf383, ptr %b.new.data.gep385, align 8
  %b.new.cap.gep386 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 2
  store i64 %b.new.cap376, ptr %b.new.cap.gep386, align 8
  br label %b.push_done373

str_overflow_abort381:                            ; preds = %b.grow371
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len380

b.byte_ok403:                                     ; preds = %b.byte_err404, %b.push_done373
  %b.byte.i8405 = trunc i64 %addtmp399 to i8
  %b.len406 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load395, i32 0, i32 0
  %b.len407 = load i64, ptr %b.len406, align 8
  %b.cap408 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load395, i32 0, i32 2
  %b.cap409 = load i64, ptr %b.cap408, align 8
  %b.data410 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load395, i32 0, i32 1
  %b.data411 = load ptr, ptr %b.data410, align 8
  %b.needs.grow412 = icmp eq i64 %b.len407, %b.cap409
  br i1 %b.needs.grow412, label %b.grow413, label %b.nogrow414

b.byte_err404:                                    ; preds = %b.push_done373
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok403

b.grow413:                                        ; preds = %b.byte_ok403
  %b.cap2416 = mul i64 %b.cap409, 2
  %b.cap.small417 = icmp slt i64 %b.cap2416, 16
  %b.new.cap418 = select i1 %b.cap.small417, i64 16, i64 %b.cap2416
  %b.new.buf.len419 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap418, i64 1)
  %sum420 = extractvalue { i64, i1 } %b.new.buf.len419, 0
  %ovf421 = extractvalue { i64, i1 } %b.new.buf.len419, 1
  br i1 %ovf421, label %str_overflow_abort423, label %b.new.buf.len422

b.nogrow414:                                      ; preds = %b.byte_ok403
  br label %b.push_done415

b.push_done415:                                   ; preds = %b.nogrow414, %b.new.buf.len422
  %b.cur.data429 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load395, i32 0, i32 1
  %b.cur.data430 = load ptr, ptr %b.cur.data429, align 8
  %b.cur.len431 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load395, i32 0, i32 0
  %b.cur.len432 = load i64, ptr %b.cur.len431, align 8
  %b.byte.gep433 = getelementptr i8, ptr %b.cur.data430, i64 %b.cur.len432
  store i8 %b.byte.i8405, ptr %b.byte.gep433, align 1
  %b.next.len434 = add i64 %b.cur.len432, 1
  %b.nul435 = getelementptr i8, ptr %b.cur.data430, i64 %b.next.len434
  store i8 0, ptr %b.nul435, align 1
  %b.len.gep436 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load395, i32 0, i32 0
  store i64 %b.next.len434, ptr %b.len.gep436, align 8
  %var.load437 = load ptr, ptr %var.b266, align 8
  %b.freeze.len438 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load437, i32 0, i32 0
  %b.freeze.len439 = load i64, ptr %b.freeze.len438, align 8
  %b.freeze.data440 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load437, i32 0, i32 1
  %b.freeze.data441 = load ptr, ptr %b.freeze.data440, align 8
  %b.freeze.arena442 = call ptr @dva_arena_current()
  %b.freeze.nc.gep443 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena442, i32 0, i32 1
  %b.freeze.nc444 = load i64, ptr %b.freeze.nc.gep443, align 8
  %b.freeze.has.chunk445 = icmp sgt i64 %b.freeze.nc444, 0
  br i1 %b.freeze.has.chunk445, label %b.freeze.check446, label %b.freeze.done448

b.new.buf.len422:                                 ; preds = %str_overflow_abort423, %b.grow413
  %arena.cur424 = call ptr @dva_arena_current()
  %b.new.buf425 = call ptr @dva_arena_alloc(ptr %arena.cur424, i64 %sum420)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf425, ptr align 1 %b.data411, i64 %b.len407, i1 false)
  %b.grow.nul426 = getelementptr i8, ptr %b.new.buf425, i64 %b.len407
  store i8 0, ptr %b.grow.nul426, align 1
  %b.new.data.gep427 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load395, i32 0, i32 1
  store ptr %b.new.buf425, ptr %b.new.data.gep427, align 8
  %b.new.cap.gep428 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load395, i32 0, i32 2
  store i64 %b.new.cap418, ptr %b.new.cap.gep428, align 8
  br label %b.push_done415

str_overflow_abort423:                            ; preds = %b.grow413
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len422

b.freeze.check446:                                ; preds = %b.push_done415
  %b.freeze.last.idx449 = sub i64 %b.freeze.nc444, 1
  %b.freeze.chunks.gep450 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena442, i32 0, i32 3
  %b.freeze.chunk.slot451 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep450, i64 0, i64 %b.freeze.last.idx449
  %b.freeze.last.chunk452 = load ptr, ptr %b.freeze.chunk.slot451, align 8
  %b.freeze.off.gep453 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena442, i32 0, i32 2
  %b.freeze.off454 = load i64, ptr %b.freeze.off.gep453, align 8
  %b.freeze.bump455 = getelementptr i8, ptr %b.freeze.last.chunk452, i64 %b.freeze.off454
  %b.freeze.cap.gep456 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena442, i32 0, i32 0
  %b.freeze.cap457 = load i64, ptr %b.freeze.cap.gep456, align 8
  %b.freeze.chunk.end458 = getelementptr i8, ptr %b.freeze.last.chunk452, i64 %b.freeze.cap457
  %b.freeze.ge.chunk459 = icmp uge ptr %b.freeze.data441, %b.freeze.last.chunk452
  %b.freeze.lt.end460 = icmp ult ptr %b.freeze.data441, %b.freeze.chunk.end458
  %b.freeze.in.chunk461 = and i1 %b.freeze.ge.chunk459, %b.freeze.lt.end460
  %b.freeze.ge.bump462 = icmp uge ptr %b.freeze.data441, %b.freeze.bump455
  %b.freeze.reaped463 = and i1 %b.freeze.in.chunk461, %b.freeze.ge.bump462
  br i1 %b.freeze.reaped463, label %b.freeze.copy447, label %b.freeze.done448

b.freeze.copy447:                                 ; preds = %b.freeze.check446
  %b.freeze.alen464 = add i64 %b.freeze.len439, 1
  %arena.cur465 = call ptr @dva_arena_current()
  %b.freeze.fresh466 = call ptr @dva_arena_alloc(ptr %arena.cur465, i64 %b.freeze.alen464)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh466, ptr align 1 %b.freeze.data441, i64 %b.freeze.len439, i1 false)
  %b.freeze.nul467 = getelementptr i8, ptr %b.freeze.fresh466, i64 %b.freeze.len439
  store i8 0, ptr %b.freeze.nul467, align 1
  br label %b.freeze.done448

b.freeze.done448:                                 ; preds = %b.freeze.copy447, %b.freeze.check446, %b.push_done415
  %b.freeze.data468 = phi ptr [ %b.freeze.data441, %b.push_done415 ], [ %b.freeze.data441, %b.freeze.check446 ], [ %b.freeze.fresh466, %b.freeze.copy447 ]
  %arena.cur469 = call ptr @dva_arena_current()
  %builder.freeze470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 16)
  %str.build.len.gep471 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze470, i32 0, i32 0
  store i64 %b.freeze.len439, ptr %str.build.len.gep471, align 8
  %str.build.data.gep472 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze470, i32 0, i32 1
  store ptr %b.freeze.data468, ptr %str.build.data.gep472, align 8
  %b.freeze.rst.len473 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load437, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len473, align 8
  %b.freeze.rst.data474 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load437, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data474, align 8
  %b.freeze.rst.cap475 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load437, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap475, align 8
  br label %choice.exit
}

declare ptr @"str::from_byte"(i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define internal i64 @"io::#writev_all"(i64 %0, ptr %1, ptr %2) #1 {
entry:
  %var.errno_val113 = alloca i32, align 4
  %var.w95 = alloca i64, align 8
  %var.p286 = alloca ptr, align 8
  %var.rem2 = alloca i64, align 8
  %var.off2 = alloca i64, align 8
  %var.errno_val = alloca i32, align 4
  %var.w = alloca i64, align 8
  %var.iov = alloca ptr, align 8
  %var.p2 = alloca ptr, align 8
  %var.p1 = alloca ptr, align 8
  %var.rem1 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.1 = alloca i64, align 8
  %loop.idx.1 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.1, align 8
  br label %loop.header.1

choice.case:                                      ; preds = %str_ok10
  ret i64 0

choice.next:                                      ; preds = %str_ok10
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.1:                                    ; preds = %loop.latch.1, %choice.exit
  %counter.load = load i64, ptr %loop.idx.1, align 8
  br label %loop.body.1

loop.body.1:                                      ; preds = %loop.header.1
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.1, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load17 = load i64, ptr %"var.off'", align 8
  %var.load18 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load17, %var.load18
  br i1 %cmptmp, label %choice.then, label %choice.exit19

loop.exit.nat.1:                                  ; No predecessors!
  br label %loop.exit.1

loop.latch.1:                                     ; preds = %choice.exit24, %choice.then117, %choice.then56
  %step.val = load i64, ptr %loop.step.1, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.1, align 8
  br label %loop.header.1

loop.exit.1:                                      ; preds = %choice.case127, %choice.else122, %choice.case66, %choice.else61, %choice.then, %loop.exit.nat.1
  %var.load133 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load133

choice.then:                                      ; preds = %loop.body.1
  br label %loop.exit.1

choice.exit19:                                    ; preds = %loop.body.1
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
  %var.load72 = load i64, ptr %"var.off'", align 8
  %var.load73 = load i64, ptr %var.len1, align 8
  %subtmp74 = sub i64 %var.load72, %var.load73
  store i64 %subtmp74, ptr %var.off2, align 8
  %var.load75 = load i64, ptr %var.len2, align 8
  %var.load76 = load i64, ptr %var.off2, align 8
  %subtmp77 = sub i64 %var.load75, %var.load76
  store i64 %subtmp77, ptr %var.rem2, align 8
  %var.load78 = load ptr, ptr %var.s2, align 8
  %s.ptr79 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %s.ptr80 = load ptr, ptr %s.ptr79, align 8
  %var.load81 = load i64, ptr %var.off2, align 8
  %ptr.int.l82 = ptrtoint ptr %s.ptr80 to i64
  %addtmp83 = add i64 %ptr.int.l82, %var.load81
  %ptr.res84 = inttoptr i64 %addtmp83 to ptr
  %call.res85 = call ptr @"io::#clean_addr"(ptr %ptr.res84)
  store ptr %call.res85, ptr %var.p286, align 8
  %var.load87 = load i64, ptr %var.fd, align 8
  %var.load88 = load ptr, ptr %var.p286, align 8
  %addr.ffi.int89 = ptrtoint ptr %var.load88 to i64
  %addr.ffi.masked90 = and i64 %addr.ffi.int89, 281474976710655
  %addr.ffi.clean91 = inttoptr i64 %addr.ffi.masked90 to ptr
  %var.load92 = load i64, ptr %var.rem2, align 8
  %coerce.trunc93 = trunc i64 %var.load87 to i32
  %call.res94 = call i64 @write(i32 %coerce.trunc93, ptr %addr.ffi.clean91, i64 %var.load92)
  store i64 %call.res94, ptr %var.w95, align 8
  %var.load96 = load i64, ptr %var.w95, align 8
  %cmptmp97 = icmp slt i64 %var.load96, 0
  br i1 %cmptmp97, label %choice.then98, label %choice.else99

choice.exit24:                                    ; preds = %choice.exit100, %choice.exit50
  br label %loop.latch.1

choice.then48:                                    ; preds = %choice.then23
  %call.res51 = call ptr @__errno_location()
  %raw.int = ptrtoint ptr %call.res51 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else49:                                    ; preds = %choice.then23
  %var.load64 = load i64, ptr %var.w, align 8
  %val.match68 = icmp eq i64 %var.load64, 0
  br i1 %val.match68, label %choice.case66, label %choice.next67

choice.exit50:                                    ; preds = %choice.exit65, %choice.exit62
  br label %choice.exit24

addr_gen_check:                                   ; preds = %choice.then48
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %addr.tag)
  br i1 %tag.valid53, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then48
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load54 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load54 to i64
  %cmptmp55 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp55, label %choice.then56, label %choice.exit57

addr_stale:                                       ; preds = %addr_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then56:                                    ; preds = %addr_ok
  br label %loop.latch.1

choice.exit57:                                    ; preds = %addr_ok
  %var.load58 = load i64, ptr %"var.off'", align 8
  %cmptmp59 = icmp eq i64 %var.load58, 0
  br i1 %cmptmp59, label %choice.then60, label %choice.else61

choice.then60:                                    ; preds = %choice.exit57
  ret i64 -1

choice.else61:                                    ; preds = %choice.exit57
  br label %loop.exit.1

choice.exit62:                                    ; preds = %ret.dead63
  br label %choice.exit50

ret.dead63:                                       ; No predecessors!
  br label %choice.exit62

choice.exit65:                                    ; preds = %choice.next67
  %var.load69 = load i64, ptr %"var.off'", align 8
  %var.load70 = load i64, ptr %var.w, align 8
  %addtmp71 = add i64 %var.load69, %var.load70
  store i64 %addtmp71, ptr %"var.off'", align 8
  br label %choice.exit50

choice.case66:                                    ; preds = %choice.else49
  br label %loop.exit.1

choice.next67:                                    ; preds = %choice.else49
  br label %choice.exit65

choice.then98:                                    ; preds = %choice.else
  %call.res101 = call ptr @__errno_location()
  %raw.int102 = ptrtoint ptr %call.res101 to i64
  %raw.clean.int103 = and i64 %raw.int102, 281474976710655
  %raw.clean.ptr104 = inttoptr i64 %raw.clean.int103 to ptr
  %addr.tag105 = lshr i64 %raw.int102, 48
  %addr.immortal106 = icmp eq i64 %addr.tag105, 0
  br i1 %addr.immortal106, label %addr_ok108, label %addr_gen_check107

choice.else99:                                    ; preds = %choice.else
  %var.load125 = load i64, ptr %var.w95, align 8
  %val.match129 = icmp eq i64 %var.load125, 0
  br i1 %val.match129, label %choice.case127, label %choice.next128

choice.exit100:                                   ; preds = %choice.exit126, %choice.exit123
  br label %choice.exit24

addr_gen_check107:                                ; preds = %choice.then98
  %arena.cur110 = call ptr @dva_arena_current()
  %tag.valid111 = call i1 @dva_arena_validate_tag(ptr %arena.cur110, i64 %addr.tag105)
  br i1 %tag.valid111, label %addr_ok108, label %addr_stale109

addr_ok108:                                       ; preds = %addr_stale109, %addr_gen_check107, %choice.then98
  %raw.load112 = load volatile i32, ptr %raw.clean.ptr104, align 4
  store i32 %raw.load112, ptr %var.errno_val113, align 4
  %var.load114 = load i32, ptr %var.errno_val113, align 4
  %coerce.sext115 = sext i32 %var.load114 to i64
  %cmptmp116 = icmp eq i64 %coerce.sext115, 4
  br i1 %cmptmp116, label %choice.then117, label %choice.exit118

addr_stale109:                                    ; preds = %addr_gen_check107
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok108

choice.then117:                                   ; preds = %addr_ok108
  br label %loop.latch.1

choice.exit118:                                   ; preds = %addr_ok108
  %var.load119 = load i64, ptr %"var.off'", align 8
  %cmptmp120 = icmp eq i64 %var.load119, 0
  br i1 %cmptmp120, label %choice.then121, label %choice.else122

choice.then121:                                   ; preds = %choice.exit118
  ret i64 -1

choice.else122:                                   ; preds = %choice.exit118
  br label %loop.exit.1

choice.exit123:                                   ; preds = %ret.dead124
  br label %choice.exit100

ret.dead124:                                      ; No predecessors!
  br label %choice.exit123

choice.exit126:                                   ; preds = %choice.next128
  %var.load130 = load i64, ptr %"var.off'", align 8
  %var.load131 = load i64, ptr %var.w95, align 8
  %addtmp132 = add i64 %var.load130, %var.load131
  store i64 %addtmp132, ptr %"var.off'", align 8
  br label %choice.exit100

choice.case127:                                   ; preds = %choice.else99
  br label %loop.exit.1

choice.next128:                                   ; preds = %choice.else99
  br label %choice.exit126
}

define internal i64 @"io::#refill"(ptr %0) #1 {
entry:
  %var.errno_val = alloca i32, align 4
  %var.n = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.2 = alloca i64, align 8
  %loop.idx.2 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.2, align 8
  br label %loop.header.2

choice.exit54:                                    ; preds = %loop.exit.2, %choice.then52
  %choice.res127 = phi i64 [ 0, %choice.then52 ], [ %var.load126, %loop.exit.2 ]
  ret i64 %choice.res127

loop.header.2:                                    ; preds = %loop.latch.2, %choice.else53
  %counter.load = load i64, ptr %loop.idx.2, align 8
  br label %loop.body.2

loop.body.2:                                      ; preds = %loop.header.2
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.2, align 8
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

loop.exit.nat.2:                                  ; No predecessors!
  br label %loop.exit.2

loop.latch.2:                                     ; preds = %choice.exit73, %choice.then87
  %step.val = load i64, ptr %loop.step.2, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.2, align 8
  br label %loop.header.2

loop.exit.2:                                      ; preds = %b.len_ok119, %choice.then104, %choice.exit96, %loop.exit.nat.2
  %var.load126 = load i64, ptr %"var.n'", align 8
  br label %choice.exit54

choice.then71:                                    ; preds = %loop.body.2
  %call.res74 = call ptr @__errno_location()
  %raw.int75 = ptrtoint ptr %call.res74 to i64
  %raw.clean.int76 = and i64 %raw.int75, 281474976710655
  %raw.clean.ptr77 = inttoptr i64 %raw.clean.int76 to ptr
  %addr.tag78 = lshr i64 %raw.int75, 48
  %addr.immortal79 = icmp eq i64 %addr.tag78, 0
  br i1 %addr.immortal79, label %addr_ok81, label %addr_gen_check80

choice.else72:                                    ; preds = %loop.body.2
  %var.load102 = load i64, ptr %var.n, align 8
  %cmptmp103 = icmp eq i64 %var.load102, 0
  br i1 %cmptmp103, label %choice.then104, label %choice.else105

choice.exit73:                                    ; preds = %choice.exit106
  br label %loop.latch.2

addr_gen_check80:                                 ; preds = %choice.then71
  %arena.cur83 = call ptr @dva_arena_current()
  %tag.valid84 = call i1 @dva_arena_validate_tag(ptr %arena.cur83, i64 %addr.tag78)
  br i1 %tag.valid84, label %addr_ok81, label %addr_stale82

addr_ok81:                                        ; preds = %addr_stale82, %addr_gen_check80, %choice.then71
  %raw.load = load volatile i32, ptr %raw.clean.ptr77, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load85 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load85 to i64
  %cmptmp86 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp86, label %choice.then87, label %choice.exit88

addr_stale82:                                     ; preds = %addr_gen_check80
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok81

choice.then87:                                    ; preds = %addr_ok81
  br label %loop.latch.2

choice.exit88:                                    ; preds = %addr_ok81
  %var.load89 = load ptr, ptr %var.r, align 8
  %call.res90 = call i1 @"libc::is_darwin"()
  br i1 %call.res90, label %and.3.then, label %and.3.else

and.3.then:                                       ; preds = %choice.exit88
  %var.load91 = load i32, ptr %var.errno_val, align 4
  %coerce.sext92 = sext i32 %var.load91 to i64
  %cmptmp93 = icmp eq i64 %coerce.sext92, 35
  br label %and.3.exit

and.3.else:                                       ; preds = %choice.exit88
  br label %and.3.exit

and.3.exit:                                       ; preds = %and.3.else, %and.3.then
  %and.3.phi = phi i1 [ %cmptmp93, %and.3.then ], [ %call.res90, %and.3.else ]
  br i1 %and.3.phi, label %choice.then94, label %choice.else95

choice.then94:                                    ; preds = %and.3.exit
  br label %choice.exit96

choice.else95:                                    ; preds = %and.3.exit
  %var.load97 = load i32, ptr %var.errno_val, align 4
  %coerce.sext98 = sext i32 %var.load97 to i64
  br label %choice.exit96

choice.exit96:                                    ; preds = %choice.else95, %choice.then94
  %choice.res99 = phi i64 [ 11, %choice.then94 ], [ %coerce.sext98, %choice.else95 ]
  %fld.gep100 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load89, i32 0, i32 4
  store i64 %choice.res99, ptr %fld.gep100, align 8
  %var.load101 = load i64, ptr %var.n, align 8
  store i64 %var.load101, ptr %"var.n'", align 8
  br label %loop.exit.2

choice.then104:                                   ; preds = %choice.else72
  %var.load107 = load ptr, ptr %var.r, align 8
  %fld.gep108 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load107, i32 0, i32 5
  store i1 true, ptr %fld.gep108, align 1
  %var.load109 = load ptr, ptr %var.r, align 8
  %fld.gep110 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load109, i32 0, i32 4
  store i64 0, ptr %fld.gep110, align 8
  store i64 0, ptr %"var.n'", align 8
  br label %loop.exit.2

choice.else105:                                   ; preds = %choice.else72
  %var.load111 = load i64, ptr %var.cur, align 8
  %var.load112 = load i64, ptr %var.n, align 8
  %addtmp113 = add i64 %var.load111, %var.load112
  %b.load114 = load ptr, ptr %var.buf, align 8
  %b.cap115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load114, i32 0, i32 2
  %b.cap116 = load i64, ptr %b.cap115, align 8
  %b.len.neg117 = icmp slt i64 %addtmp113, 0
  br i1 %b.len.neg117, label %b.len_oob120, label %b.len_big_check118

choice.exit106:                                   ; No predecessors!
  br label %choice.exit73

b.len_big_check118:                               ; preds = %choice.else105
  %b.len.big121 = icmp sgt i64 %addtmp113, %b.cap116
  br i1 %b.len.big121, label %b.len_oob120, label %b.len_ok119

b.len_ok119:                                      ; preds = %b.len_oob120, %b.len_big_check118
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load114, i32 0, i32 0
  store i64 %addtmp113, ptr %b.len.gep122, align 8
  %var.load123 = load ptr, ptr %var.r, align 8
  %fld.gep124 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load123, i32 0, i32 4
  store i64 0, ptr %fld.gep124, align 8
  %var.load125 = load i64, ptr %var.n, align 8
  store i64 %var.load125, ptr %"var.n'", align 8
  br label %loop.exit.2

b.len_oob120:                                     ; preds = %b.len_big_check118, %choice.else105
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok119
}

declare i1 @"libc::is_darwin"() #1

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
  %var.load40 = load i64, ptr %var.take, align 8
  %cmptmp41 = icmp sgt i64 %var.load40, 0
  br i1 %cmptmp41, label %choice.then42, label %choice.exit43

str_overflow_abort:                               ; preds = %choice.exit34
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len38

choice.then42:                                    ; preds = %b.buf.len38
  %var.load44 = load ptr, ptr %var.res, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load44, i32 0, i32 1
  %b.ptr45 = load ptr, ptr %b.ptr, align 8
  %var.load46 = load ptr, ptr %var.r, align 8
  %fld.gep47 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load46, i32 0, i32 1
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  %b.ptr49 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load48, i32 0, i32 1
  %b.ptr50 = load ptr, ptr %b.ptr49, align 8
  %var.load51 = load ptr, ptr %var.r, align 8
  %fld.gep52 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load51, i32 0, i32 2
  %fld.load53 = load i64, ptr %fld.gep52, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr50 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load53
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load54 = load i64, ptr %var.take, align 8
  %raw.int = ptrtoint ptr %b.ptr45 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.exit43:                                    ; preds = %addr_ok62, %b.buf.len38
  %var.load66 = load i64, ptr %var.take, align 8
  %b.load = load ptr, ptr %var.res, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap67 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load66, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check:                                   ; preds = %choice.then42
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then42
  %raw.int56 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int57 = and i64 %raw.int56, 281474976710655
  %raw.clean.ptr58 = inttoptr i64 %raw.clean.int57 to ptr
  %addr.tag59 = lshr i64 %raw.int56, 48
  %addr.immortal60 = icmp eq i64 %addr.tag59, 0
  br i1 %addr.immortal60, label %addr_ok62, label %addr_gen_check61

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check61:                                 ; preds = %addr_ok
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %addr.tag59)
  br i1 %tag.valid65, label %addr_ok62, label %addr_stale63

addr_ok62:                                        ; preds = %addr_stale63, %addr_gen_check61, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr58, i64 %var.load54, i1 false)
  br label %choice.exit43

addr_stale63:                                     ; preds = %addr_gen_check61
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok62

b.len_big_check:                                  ; preds = %choice.exit43
  %b.len.big = icmp sgt i64 %var.load66, %b.cap67
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load66, ptr %b.len.gep68, align 8
  %var.load69 = load ptr, ptr %var.r, align 8
  %var.load70 = load ptr, ptr %var.r, align 8
  %fld.gep71 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load70, i32 0, i32 2
  %fld.load72 = load i64, ptr %fld.gep71, align 8
  %var.load73 = load i64, ptr %var.take, align 8
  %addtmp74 = add i64 %fld.load72, %var.load73
  %fld.gep75 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load69, i32 0, i32 2
  store i64 %addtmp74, ptr %fld.gep75, align 8
  %var.load76 = load ptr, ptr %var.res, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 0
  %b.freeze.len77 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 1
  %b.freeze.data78 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit43
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data78, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data78, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data78, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len77, 1
  %arena.cur79 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data78, i64 %b.freeze.len77, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len77
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data80 = phi ptr [ %b.freeze.data78, %b.len_ok ], [ %b.freeze.data78, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur81 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len77, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data80, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"io::read_all"(ptr %0, i64 %1) #1 {
entry:
  %var.errno_val = alloca i32, align 4
  %var.n = alloca i64, align 8
  %var.cur82 = alloca i64, align 8
  %var.to_read = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.4 = alloca i64, align 8
  %loop.idx.4 = alloca i64, align 8
  %var.chunk = alloca i64, align 8
  %var.cur = alloca i64, align 8
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

choice.exit12:                                    ; preds = %b.len_ok, %b.buf.len2
  store i64 4096, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.4, align 8
  br label %loop.header.4

choice.then16:                                    ; preds = %choice.then11
  %var.load18 = load i64, ptr %var.avail, align 8
  br label %choice.exit17

choice.else:                                      ; preds = %choice.then11
  %var.load19 = load i64, ptr %var.max, align 8
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else, %choice.then16
  %choice.res = phi i64 [ %var.load18, %choice.then16 ], [ %var.load19, %choice.else ]
  store i64 %choice.res, ptr %var.take, align 8
  %var.load20 = load ptr, ptr %var.res_b, align 8
  %b.len21 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 0
  %b.len22 = load i64, ptr %b.len21, align 8
  store i64 %b.len22, ptr %var.cur, align 8
  %var.load23 = load ptr, ptr %var.res_b, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 1
  %b.ptr24 = load ptr, ptr %b.ptr, align 8
  %var.load25 = load i64, ptr %var.cur, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr24 to i64
  %addtmp = add i64 %ptr.int.l, %var.load25
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load26 = load ptr, ptr %var.r, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load26, i32 0, i32 1
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %b.ptr29 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load28, i32 0, i32 1
  %b.ptr30 = load ptr, ptr %b.ptr29, align 8
  %var.load31 = load ptr, ptr %var.r, align 8
  %fld.gep32 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load31, i32 0, i32 2
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %ptr.int.l34 = ptrtoint ptr %b.ptr30 to i64
  %addtmp35 = add i64 %ptr.int.l34, %fld.load33
  %ptr.res36 = inttoptr i64 %addtmp35 to ptr
  %var.load37 = load i64, ptr %var.take, align 8
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %choice.exit17
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit17
  %raw.int39 = ptrtoint ptr %ptr.res36 to i64
  %raw.clean.int40 = and i64 %raw.int39, 281474976710655
  %raw.clean.ptr41 = inttoptr i64 %raw.clean.int40 to ptr
  %addr.tag42 = lshr i64 %raw.int39, 48
  %addr.immortal43 = icmp eq i64 %addr.tag42, 0
  br i1 %addr.immortal43, label %addr_ok45, label %addr_gen_check44

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check44:                                 ; preds = %addr_ok
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %addr.tag42)
  br i1 %tag.valid48, label %addr_ok45, label %addr_stale46

addr_ok45:                                        ; preds = %addr_stale46, %addr_gen_check44, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr41, i64 %var.load37, i1 false)
  %var.load49 = load i64, ptr %var.cur, align 8
  %var.load50 = load i64, ptr %var.take, align 8
  %addtmp51 = add i64 %var.load49, %var.load50
  %b.load = load ptr, ptr %var.res_b, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap52 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %addtmp51, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_stale46:                                     ; preds = %addr_gen_check44
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok45

b.len_big_check:                                  ; preds = %addr_ok45
  %b.len.big = icmp sgt i64 %addtmp51, %b.cap52
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %addtmp51, ptr %b.len.gep53, align 8
  %var.load54 = load ptr, ptr %var.r, align 8
  %var.load55 = load ptr, ptr %var.r, align 8
  %fld.gep56 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load55, i32 0, i32 2
  %fld.load57 = load i64, ptr %fld.gep56, align 8
  %var.load58 = load i64, ptr %var.take, align 8
  %addtmp59 = add i64 %fld.load57, %var.load58
  %fld.gep60 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load54, i32 0, i32 2
  store i64 %addtmp59, ptr %fld.gep60, align 8
  br label %choice.exit12

b.len_oob:                                        ; preds = %b.len_big_check, %addr_ok45
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

loop.header.4:                                    ; preds = %loop.latch.4, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.4, align 8
  br label %loop.body.4

loop.body.4:                                      ; preds = %loop.header.4
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.4, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load61 = load i64, ptr %var.max, align 8
  %var.load62 = load ptr, ptr %var.res_b, align 8
  %b.len63 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 0
  %b.len64 = load i64, ptr %b.len63, align 8
  %subtmp65 = sub i64 %var.load61, %b.len64
  store i64 %subtmp65, ptr %var.rem, align 8
  %var.load66 = load i64, ptr %var.rem, align 8
  %cmptmp67 = icmp sle i64 %var.load66, 0
  br i1 %cmptmp67, label %choice.then68, label %choice.exit69

loop.exit.nat.4:                                  ; No predecessors!
  br label %loop.exit.4

loop.latch.4:                                     ; preds = %choice.exit98, %choice.then112
  %step.val = load i64, ptr %loop.step.4, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.4, align 8
  br label %loop.header.4

loop.exit.4:                                      ; preds = %choice.then128, %choice.exit121, %choice.then68, %loop.exit.nat.4
  %var.load149 = load ptr, ptr %var.res_b, align 8
  %b.len150 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load149, i32 0, i32 0
  %b.len151 = load i64, ptr %b.len150, align 8
  %cmptmp152 = icmp eq i64 %b.len151, 0
  br i1 %cmptmp152, label %choice.then153, label %choice.exit154

choice.then68:                                    ; preds = %loop.body.4
  br label %loop.exit.4

choice.exit69:                                    ; preds = %loop.body.4
  %var.load70 = load i64, ptr %var.rem, align 8
  %var.load71 = load i64, ptr %var.chunk, align 8
  %cmptmp72 = icmp slt i64 %var.load70, %var.load71
  br i1 %cmptmp72, label %choice.then73, label %choice.else74

choice.then73:                                    ; preds = %choice.exit69
  %var.load76 = load i64, ptr %var.rem, align 8
  br label %choice.exit75

choice.else74:                                    ; preds = %choice.exit69
  %var.load77 = load i64, ptr %var.chunk, align 8
  br label %choice.exit75

choice.exit75:                                    ; preds = %choice.else74, %choice.then73
  %choice.res78 = phi i64 [ %var.load76, %choice.then73 ], [ %var.load77, %choice.else74 ]
  store i64 %choice.res78, ptr %var.to_read, align 8
  %var.load79 = load ptr, ptr %var.res_b, align 8
  %b.len80 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 0
  %b.len81 = load i64, ptr %b.len80, align 8
  store i64 %b.len81, ptr %var.cur82, align 8
  %var.load83 = load ptr, ptr %var.r, align 8
  %fld.gep84 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load83, i32 0, i32 0
  %fld.load85 = load i64, ptr %fld.gep84, align 8
  %var.load86 = load ptr, ptr %var.res_b, align 8
  %b.ptr87 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load86, i32 0, i32 1
  %b.ptr88 = load ptr, ptr %b.ptr87, align 8
  %var.load89 = load i64, ptr %var.cur82, align 8
  %ptr.int.l90 = ptrtoint ptr %b.ptr88 to i64
  %addtmp91 = add i64 %ptr.int.l90, %var.load89
  %ptr.res92 = inttoptr i64 %addtmp91 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res92 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load93 = load i64, ptr %var.to_read, align 8
  %coerce.trunc = trunc i64 %fld.load85 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load93)
  store i64 %call.res, ptr %var.n, align 8
  %var.load94 = load i64, ptr %var.n, align 8
  %cmptmp95 = icmp slt i64 %var.load94, 0
  br i1 %cmptmp95, label %choice.then96, label %choice.else97

choice.then96:                                    ; preds = %choice.exit75
  %call.res99 = call ptr @__errno_location()
  %raw.int100 = ptrtoint ptr %call.res99 to i64
  %raw.clean.int101 = and i64 %raw.int100, 281474976710655
  %raw.clean.ptr102 = inttoptr i64 %raw.clean.int101 to ptr
  %addr.tag103 = lshr i64 %raw.int100, 48
  %addr.immortal104 = icmp eq i64 %addr.tag103, 0
  br i1 %addr.immortal104, label %addr_ok106, label %addr_gen_check105

choice.else97:                                    ; preds = %choice.exit75
  %var.load126 = load i64, ptr %var.n, align 8
  %cmptmp127 = icmp eq i64 %var.load126, 0
  br i1 %cmptmp127, label %choice.then128, label %choice.else129

choice.exit98:                                    ; preds = %choice.exit130
  br label %loop.latch.4

addr_gen_check105:                                ; preds = %choice.then96
  %arena.cur108 = call ptr @dva_arena_current()
  %tag.valid109 = call i1 @dva_arena_validate_tag(ptr %arena.cur108, i64 %addr.tag103)
  br i1 %tag.valid109, label %addr_ok106, label %addr_stale107

addr_ok106:                                       ; preds = %addr_stale107, %addr_gen_check105, %choice.then96
  %raw.load = load volatile i32, ptr %raw.clean.ptr102, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load110 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load110 to i64
  %cmptmp111 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp111, label %choice.then112, label %choice.exit113

addr_stale107:                                    ; preds = %addr_gen_check105
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok106

choice.then112:                                   ; preds = %addr_ok106
  br label %loop.latch.4

choice.exit113:                                   ; preds = %addr_ok106
  %var.load114 = load ptr, ptr %var.r, align 8
  %call.res115 = call i1 @"libc::is_darwin"()
  br i1 %call.res115, label %and.5.then, label %and.5.else

and.5.then:                                       ; preds = %choice.exit113
  %var.load116 = load i32, ptr %var.errno_val, align 4
  %coerce.sext117 = sext i32 %var.load116 to i64
  %cmptmp118 = icmp eq i64 %coerce.sext117, 35
  br label %and.5.exit

and.5.else:                                       ; preds = %choice.exit113
  br label %and.5.exit

and.5.exit:                                       ; preds = %and.5.else, %and.5.then
  %and.5.phi = phi i1 [ %cmptmp118, %and.5.then ], [ %call.res115, %and.5.else ]
  br i1 %and.5.phi, label %choice.then119, label %choice.else120

choice.then119:                                   ; preds = %and.5.exit
  br label %choice.exit121

choice.else120:                                   ; preds = %and.5.exit
  %var.load122 = load i32, ptr %var.errno_val, align 4
  %coerce.sext123 = sext i32 %var.load122 to i64
  br label %choice.exit121

choice.exit121:                                   ; preds = %choice.else120, %choice.then119
  %choice.res124 = phi i64 [ 11, %choice.then119 ], [ %coerce.sext123, %choice.else120 ]
  %fld.gep125 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load114, i32 0, i32 4
  store i64 %choice.res124, ptr %fld.gep125, align 8
  br label %loop.exit.4

choice.then128:                                   ; preds = %choice.else97
  %var.load131 = load ptr, ptr %var.r, align 8
  %fld.gep132 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load131, i32 0, i32 5
  store i1 true, ptr %fld.gep132, align 1
  %var.load133 = load ptr, ptr %var.r, align 8
  %fld.gep134 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load133, i32 0, i32 4
  store i64 0, ptr %fld.gep134, align 8
  br label %loop.exit.4

choice.else129:                                   ; preds = %choice.else97
  %var.load135 = load ptr, ptr %var.r, align 8
  %fld.gep136 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load135, i32 0, i32 4
  store i64 0, ptr %fld.gep136, align 8
  %var.load137 = load i64, ptr %var.cur82, align 8
  %var.load138 = load i64, ptr %var.n, align 8
  %addtmp139 = add i64 %var.load137, %var.load138
  %b.load140 = load ptr, ptr %var.res_b, align 8
  %b.cap141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load140, i32 0, i32 2
  %b.cap142 = load i64, ptr %b.cap141, align 8
  %b.len.neg143 = icmp slt i64 %addtmp139, 0
  br i1 %b.len.neg143, label %b.len_oob146, label %b.len_big_check144

choice.exit130:                                   ; preds = %b.len_ok145
  br label %choice.exit98

b.len_big_check144:                               ; preds = %choice.else129
  %b.len.big147 = icmp sgt i64 %addtmp139, %b.cap142
  br i1 %b.len.big147, label %b.len_oob146, label %b.len_ok145

b.len_ok145:                                      ; preds = %b.len_oob146, %b.len_big_check144
  %b.len.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load140, i32 0, i32 0
  store i64 %addtmp139, ptr %b.len.gep148, align 8
  br label %choice.exit130

b.len_oob146:                                     ; preds = %b.len_big_check144, %choice.else129
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok145

choice.then153:                                   ; preds = %loop.exit.4
  ret ptr null

choice.exit154:                                   ; preds = %ret.dead155, %loop.exit.4
  %var.load156 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 0
  %b.freeze.len157 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 1
  %b.freeze.data158 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead155:                                      ; No predecessors!
  br label %choice.exit154

b.freeze.check:                                   ; preds = %choice.exit154
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data158, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data158, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data158, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len157, 1
  %arena.cur159 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data158, i64 %b.freeze.len157, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len157
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit154
  %b.freeze.data160 = phi ptr [ %b.freeze.data158, %choice.exit154 ], [ %b.freeze.data158, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur161 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len157, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data160, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 2
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
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 1
  %b.ptr20 = load ptr, ptr %b.ptr, align 8
  %var.load21 = load ptr, ptr %var.r, align 8
  %fld.gep22 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load21, i32 0, i32 2
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr20 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load23
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit16

addr_gen_check:                                   ; preds = %choice.exit16
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit16
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.sext = sext i8 %raw.load to i64
  %bandtmp = and i64 %coerce.sext, 255
  store i64 %bandtmp, ptr %var.b, align 8
  %var.load24 = load ptr, ptr %var.r, align 8
  %var.load25 = load ptr, ptr %var.r, align 8
  %fld.gep26 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 2
  %fld.load27 = load i64, ptr %fld.gep26, align 8
  %addtmp28 = add i64 %fld.load27, 1
  %fld.gep29 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load24, i32 0, i32 2
  store i64 %addtmp28, ptr %fld.gep29, align 8
  %var.load30 = load i64, ptr %var.b, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load30, 1
  ret { i1, i64 } %ram.pay

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define ptr @"io::read_until"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.has_delim = alloca i1, align 1
  %var.cur131 = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var._46 = alloca i64, align 8
  %var._i45 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.7 = alloca i64, align 8
  %loop.idx.7 = alloca i64, align 8
  %"var.found_idx'" = alloca i64, align 8
  %var.scan_count = alloca i64, align 8
  %var.in_buf = alloca i64, align 8
  %var.rem_budget = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.6 = alloca i64, align 8
  %loop.idx.6 = alloca i64, align 8
  %"var.done'" = alloca i1, align 1
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

choice.exit:                                      ; preds = %choice.exit250, %choice.then
  %choice.res305 = phi ptr [ null, %choice.then ], [ %choice.res304, %choice.exit250 ]
  ret ptr %choice.res305

b.buf.len2:                                       ; preds = %str_overflow_abort, %choice.else
  %arena.cur3 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  store i1 false, ptr %"var.done'", align 1
  store i64 0, ptr %loop.idx.6, align 8
  br label %loop.header.6

str_overflow_abort:                               ; preds = %choice.else
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

loop.header.6:                                    ; preds = %loop.latch.6, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.6, align 8
  br label %loop.body.6

loop.body.6:                                      ; preds = %loop.header.6
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.6, align 8
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

loop.exit.nat.6:                                  ; No predecessors!
  br label %loop.exit.6

loop.latch.6:                                     ; preds = %choice.exit68
  %step.val245 = load i64, ptr %loop.step.6, align 8
  %loop.next246 = add i64 %counter.load, %step.val245
  store i64 %loop.next246, ptr %loop.idx.6, align 8
  br label %loop.header.6

loop.exit.6:                                      ; preds = %choice.exit238, %b.len_ok, %choice.then23, %choice.then15, %loop.exit.nat.6
  %var.load247 = load i1, ptr %"var.done'", align 1
  br i1 %var.load247, label %choice.then248, label %choice.else249

choice.then10:                                    ; preds = %loop.body.6
  %var.load12 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load12)
  store i64 %call.res, ptr %var.n, align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.exit11:                                    ; preds = %choice.exit16, %loop.body.6
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
  br label %loop.exit.6

choice.exit16:                                    ; preds = %choice.then10
  br label %choice.exit11

choice.then23:                                    ; preds = %choice.exit11
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.6

choice.exit24:                                    ; preds = %choice.exit11
  %var.load25 = load ptr, ptr %var.r, align 8
  %fld.gep26 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 1
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %b.len28 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load27, i32 0, i32 0
  %b.len29 = load i64, ptr %b.len28, align 8
  %var.load30 = load ptr, ptr %var.r, align 8
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load30, i32 0, i32 2
  %fld.load32 = load i64, ptr %fld.gep31, align 8
  %subtmp33 = sub i64 %b.len29, %fld.load32
  store i64 %subtmp33, ptr %var.in_buf, align 8
  %var.load34 = load i64, ptr %var.in_buf, align 8
  %var.load35 = load i64, ptr %var.rem_budget, align 8
  %cmptmp36 = icmp slt i64 %var.load34, %var.load35
  br i1 %cmptmp36, label %choice.then37, label %choice.else38

choice.then37:                                    ; preds = %choice.exit24
  %var.load40 = load i64, ptr %var.in_buf, align 8
  br label %choice.exit39

choice.else38:                                    ; preds = %choice.exit24
  %var.load41 = load i64, ptr %var.rem_budget, align 8
  br label %choice.exit39

choice.exit39:                                    ; preds = %choice.else38, %choice.then37
  %choice.res = phi i64 [ %var.load40, %choice.then37 ], [ %var.load41, %choice.else38 ]
  store i64 %choice.res, ptr %var.scan_count, align 8
  store i64 -1, ptr %"var.found_idx'", align 8
  %var.load42 = load i64, ptr %var.scan_count, align 8
  store i64 0, ptr %loop.idx.7, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.7

loop.header.7:                                    ; preds = %loop.latch.7, %choice.exit39
  %counter.load43 = load i64, ptr %loop.idx.7, align 8
  %loop.cond = icmp slt i64 %counter.load43, %var.load42
  br i1 %loop.cond, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i44 = sub i64 %counter.load43, 0
  store i64 1, ptr %loop.step.7, align 8
  store i64 %loop.rel.i44, ptr %var._i45, align 8
  store i64 %counter.load43, ptr %var._46, align 8
  store i64 %counter.load43, ptr %var.i, align 8
  %var.load47 = load ptr, ptr %var.r, align 8
  %fld.gep48 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load47, i32 0, i32 1
  %fld.load49 = load ptr, ptr %fld.gep48, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load49, i32 0, i32 1
  %b.ptr50 = load ptr, ptr %b.ptr, align 8
  %var.load51 = load ptr, ptr %var.r, align 8
  %fld.gep52 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load51, i32 0, i32 2
  %fld.load53 = load i64, ptr %fld.gep52, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr50 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load53
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load54 = load i64, ptr %var.i, align 8
  %ptr.int.l55 = ptrtoint ptr %ptr.res to i64
  %addtmp56 = add i64 %ptr.int.l55, %var.load54
  %ptr.res57 = inttoptr i64 %addtmp56 to ptr
  %raw.int = ptrtoint ptr %ptr.res57 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %choice.exit62
  %step.val = load i64, ptr %loop.step.7, align 8
  %loop.next = add i64 %counter.load43, %step.val
  store i64 %loop.next, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %choice.then61, %loop.exit.nat.7
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load64 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp65 = icmp sge i64 %var.load64, 0
  br i1 %cmptmp65, label %choice.then66, label %choice.else67

addr_gen_check:                                   ; preds = %loop.body.7
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.7
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.sext = sext i8 %raw.load to i64
  %bandtmp = and i64 %coerce.sext, 255
  %var.load59 = load i64, ptr %var.delim, align 8
  %cmptmp60 = icmp eq i64 %bandtmp, %var.load59
  br i1 %cmptmp60, label %choice.then61, label %choice.exit62

addr_stale:                                       ; preds = %addr_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then61:                                    ; preds = %addr_ok
  %var.load63 = load i64, ptr %var.i, align 8
  store i64 %var.load63, ptr %"var.found_idx'", align 8
  br label %loop.exit.7

choice.exit62:                                    ; preds = %addr_ok
  br label %loop.latch.7

choice.then66:                                    ; preds = %loop.exit.7
  %var.load69 = load ptr, ptr %var.out, align 8
  %b.len70 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load69, i32 0, i32 0
  %b.len71 = load i64, ptr %b.len70, align 8
  store i64 %b.len71, ptr %var.cur, align 8
  %var.load72 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp73 = icmp sgt i64 %var.load72, 0
  br i1 %cmptmp73, label %choice.then74, label %choice.exit75

choice.else67:                                    ; preds = %loop.exit.7
  %var.load128 = load ptr, ptr %var.out, align 8
  %b.len129 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load128, i32 0, i32 0
  %b.len130 = load i64, ptr %b.len129, align 8
  store i64 %b.len130, ptr %var.cur131, align 8
  %var.load132 = load i64, ptr %var.scan_count, align 8
  %cmptmp133 = icmp sgt i64 %var.load132, 0
  br i1 %cmptmp133, label %choice.then134, label %choice.exit135

choice.exit68:                                    ; preds = %choice.exit200
  br label %loop.latch.6

choice.then74:                                    ; preds = %choice.then66
  %var.load76 = load ptr, ptr %var.out, align 8
  %b.ptr77 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 1
  %b.ptr78 = load ptr, ptr %b.ptr77, align 8
  %var.load79 = load i64, ptr %var.cur, align 8
  %ptr.int.l80 = ptrtoint ptr %b.ptr78 to i64
  %addtmp81 = add i64 %ptr.int.l80, %var.load79
  %ptr.res82 = inttoptr i64 %addtmp81 to ptr
  %var.load83 = load ptr, ptr %var.r, align 8
  %fld.gep84 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load83, i32 0, i32 1
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %b.ptr86 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load85, i32 0, i32 1
  %b.ptr87 = load ptr, ptr %b.ptr86, align 8
  %var.load88 = load ptr, ptr %var.r, align 8
  %fld.gep89 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load88, i32 0, i32 2
  %fld.load90 = load i64, ptr %fld.gep89, align 8
  %ptr.int.l91 = ptrtoint ptr %b.ptr87 to i64
  %addtmp92 = add i64 %ptr.int.l91, %fld.load90
  %ptr.res93 = inttoptr i64 %addtmp92 to ptr
  %var.load94 = load i64, ptr %"var.found_idx'", align 8
  %raw.int95 = ptrtoint ptr %ptr.res82 to i64
  %raw.clean.int96 = and i64 %raw.int95, 281474976710655
  %raw.clean.ptr97 = inttoptr i64 %raw.clean.int96 to ptr
  %addr.tag98 = lshr i64 %raw.int95, 48
  %addr.immortal99 = icmp eq i64 %addr.tag98, 0
  br i1 %addr.immortal99, label %addr_ok101, label %addr_gen_check100

choice.exit75:                                    ; preds = %addr_ok111, %choice.then66
  %var.load115 = load i64, ptr %var.cur, align 8
  %var.load116 = load i64, ptr %"var.found_idx'", align 8
  %addtmp117 = add i64 %var.load115, %var.load116
  %b.load = load ptr, ptr %var.out, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap118 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %addtmp117, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check100:                                ; preds = %choice.then74
  %arena.cur103 = call ptr @dva_arena_current()
  %tag.valid104 = call i1 @dva_arena_validate_tag(ptr %arena.cur103, i64 %addr.tag98)
  br i1 %tag.valid104, label %addr_ok101, label %addr_stale102

addr_ok101:                                       ; preds = %addr_stale102, %addr_gen_check100, %choice.then74
  %raw.int105 = ptrtoint ptr %ptr.res93 to i64
  %raw.clean.int106 = and i64 %raw.int105, 281474976710655
  %raw.clean.ptr107 = inttoptr i64 %raw.clean.int106 to ptr
  %addr.tag108 = lshr i64 %raw.int105, 48
  %addr.immortal109 = icmp eq i64 %addr.tag108, 0
  br i1 %addr.immortal109, label %addr_ok111, label %addr_gen_check110

addr_stale102:                                    ; preds = %addr_gen_check100
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok101

addr_gen_check110:                                ; preds = %addr_ok101
  %arena.cur113 = call ptr @dva_arena_current()
  %tag.valid114 = call i1 @dva_arena_validate_tag(ptr %arena.cur113, i64 %addr.tag108)
  br i1 %tag.valid114, label %addr_ok111, label %addr_stale112

addr_ok111:                                       ; preds = %addr_stale112, %addr_gen_check110, %addr_ok101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr97, ptr align 1 %raw.clean.ptr107, i64 %var.load94, i1 false)
  br label %choice.exit75

addr_stale112:                                    ; preds = %addr_gen_check110
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok111

b.len_big_check:                                  ; preds = %choice.exit75
  %b.len.big = icmp sgt i64 %addtmp117, %b.cap118
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %addtmp117, ptr %b.len.gep119, align 8
  %var.load120 = load ptr, ptr %var.r, align 8
  %var.load121 = load ptr, ptr %var.r, align 8
  %fld.gep122 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load121, i32 0, i32 2
  %fld.load123 = load i64, ptr %fld.gep122, align 8
  %var.load124 = load i64, ptr %"var.found_idx'", align 8
  %addtmp125 = add i64 %fld.load123, %var.load124
  %addtmp126 = add i64 %addtmp125, 1
  %fld.gep127 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load120, i32 0, i32 2
  store i64 %addtmp126, ptr %fld.gep127, align 8
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.6

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit75
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

choice.then134:                                   ; preds = %choice.else67
  %var.load136 = load ptr, ptr %var.out, align 8
  %b.ptr137 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 1
  %b.ptr138 = load ptr, ptr %b.ptr137, align 8
  %var.load139 = load i64, ptr %var.cur131, align 8
  %ptr.int.l140 = ptrtoint ptr %b.ptr138 to i64
  %addtmp141 = add i64 %ptr.int.l140, %var.load139
  %ptr.res142 = inttoptr i64 %addtmp141 to ptr
  %var.load143 = load ptr, ptr %var.r, align 8
  %fld.gep144 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load143, i32 0, i32 1
  %fld.load145 = load ptr, ptr %fld.gep144, align 8
  %b.ptr146 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load145, i32 0, i32 1
  %b.ptr147 = load ptr, ptr %b.ptr146, align 8
  %var.load148 = load ptr, ptr %var.r, align 8
  %fld.gep149 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load148, i32 0, i32 2
  %fld.load150 = load i64, ptr %fld.gep149, align 8
  %ptr.int.l151 = ptrtoint ptr %b.ptr147 to i64
  %addtmp152 = add i64 %ptr.int.l151, %fld.load150
  %ptr.res153 = inttoptr i64 %addtmp152 to ptr
  %var.load154 = load i64, ptr %var.scan_count, align 8
  %raw.int155 = ptrtoint ptr %ptr.res142 to i64
  %raw.clean.int156 = and i64 %raw.int155, 281474976710655
  %raw.clean.ptr157 = inttoptr i64 %raw.clean.int156 to ptr
  %addr.tag158 = lshr i64 %raw.int155, 48
  %addr.immortal159 = icmp eq i64 %addr.tag158, 0
  br i1 %addr.immortal159, label %addr_ok161, label %addr_gen_check160

choice.exit135:                                   ; preds = %addr_ok171, %choice.else67
  %var.load175 = load i64, ptr %var.cur131, align 8
  %var.load176 = load i64, ptr %var.scan_count, align 8
  %addtmp177 = add i64 %var.load175, %var.load176
  %b.load178 = load ptr, ptr %var.out, align 8
  %b.cap179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 2
  %b.cap180 = load i64, ptr %b.cap179, align 8
  %b.len.neg181 = icmp slt i64 %addtmp177, 0
  br i1 %b.len.neg181, label %b.len_oob184, label %b.len_big_check182

addr_gen_check160:                                ; preds = %choice.then134
  %arena.cur163 = call ptr @dva_arena_current()
  %tag.valid164 = call i1 @dva_arena_validate_tag(ptr %arena.cur163, i64 %addr.tag158)
  br i1 %tag.valid164, label %addr_ok161, label %addr_stale162

addr_ok161:                                       ; preds = %addr_stale162, %addr_gen_check160, %choice.then134
  %raw.int165 = ptrtoint ptr %ptr.res153 to i64
  %raw.clean.int166 = and i64 %raw.int165, 281474976710655
  %raw.clean.ptr167 = inttoptr i64 %raw.clean.int166 to ptr
  %addr.tag168 = lshr i64 %raw.int165, 48
  %addr.immortal169 = icmp eq i64 %addr.tag168, 0
  br i1 %addr.immortal169, label %addr_ok171, label %addr_gen_check170

addr_stale162:                                    ; preds = %addr_gen_check160
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok161

addr_gen_check170:                                ; preds = %addr_ok161
  %arena.cur173 = call ptr @dva_arena_current()
  %tag.valid174 = call i1 @dva_arena_validate_tag(ptr %arena.cur173, i64 %addr.tag168)
  br i1 %tag.valid174, label %addr_ok171, label %addr_stale172

addr_ok171:                                       ; preds = %addr_stale172, %addr_gen_check170, %addr_ok161
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr157, ptr align 1 %raw.clean.ptr167, i64 %var.load154, i1 false)
  br label %choice.exit135

addr_stale172:                                    ; preds = %addr_gen_check170
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok171

b.len_big_check182:                               ; preds = %choice.exit135
  %b.len.big185 = icmp sgt i64 %addtmp177, %b.cap180
  br i1 %b.len.big185, label %b.len_oob184, label %b.len_ok183

b.len_ok183:                                      ; preds = %b.len_oob184, %b.len_big_check182
  %b.len.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  store i64 %addtmp177, ptr %b.len.gep186, align 8
  %var.load187 = load ptr, ptr %var.r, align 8
  %var.load188 = load ptr, ptr %var.r, align 8
  %fld.gep189 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load188, i32 0, i32 2
  %fld.load190 = load i64, ptr %fld.gep189, align 8
  %var.load191 = load i64, ptr %var.scan_count, align 8
  %addtmp192 = add i64 %fld.load190, %var.load191
  %fld.gep193 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load187, i32 0, i32 2
  store i64 %addtmp192, ptr %fld.gep193, align 8
  %var.load194 = load ptr, ptr %var.out, align 8
  %b.len195 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 0
  %b.len196 = load i64, ptr %b.len195, align 8
  %var.load197 = load i64, ptr %var.max, align 8
  %cmptmp198 = icmp sge i64 %b.len196, %var.load197
  br i1 %cmptmp198, label %choice.then199, label %choice.exit200

b.len_oob184:                                     ; preds = %b.len_big_check182, %choice.exit135
  %10 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok183

choice.then199:                                   ; preds = %b.len_ok183
  %var.load201 = load ptr, ptr %var.r, align 8
  %fld.gep202 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load201, i32 0, i32 2
  %fld.load203 = load i64, ptr %fld.gep202, align 8
  %var.load204 = load ptr, ptr %var.r, align 8
  %fld.gep205 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load204, i32 0, i32 1
  %fld.load206 = load ptr, ptr %fld.gep205, align 8
  %b.len207 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load206, i32 0, i32 0
  %b.len208 = load i64, ptr %b.len207, align 8
  %cmptmp209 = icmp slt i64 %fld.load203, %b.len208
  br i1 %cmptmp209, label %and.8.then, label %and.8.else

choice.exit200:                                   ; preds = %b.len_ok183
  br label %choice.exit68

and.8.then:                                       ; preds = %choice.then199
  %var.load210 = load ptr, ptr %var.r, align 8
  %fld.gep211 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load210, i32 0, i32 1
  %fld.load212 = load ptr, ptr %fld.gep211, align 8
  %b.ptr213 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load212, i32 0, i32 1
  %b.ptr214 = load ptr, ptr %b.ptr213, align 8
  %var.load215 = load ptr, ptr %var.r, align 8
  %fld.gep216 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load215, i32 0, i32 2
  %fld.load217 = load i64, ptr %fld.gep216, align 8
  %ptr.int.l218 = ptrtoint ptr %b.ptr214 to i64
  %addtmp219 = add i64 %ptr.int.l218, %fld.load217
  %ptr.res220 = inttoptr i64 %addtmp219 to ptr
  %raw.int221 = ptrtoint ptr %ptr.res220 to i64
  %raw.clean.int222 = and i64 %raw.int221, 281474976710655
  %raw.clean.ptr223 = inttoptr i64 %raw.clean.int222 to ptr
  %addr.tag224 = lshr i64 %raw.int221, 48
  %addr.immortal225 = icmp eq i64 %addr.tag224, 0
  br i1 %addr.immortal225, label %addr_ok227, label %addr_gen_check226

and.8.else:                                       ; preds = %choice.then199
  br label %and.8.exit

and.8.exit:                                       ; preds = %and.8.else, %addr_ok227
  %and.8.phi = phi i1 [ %cmptmp235, %addr_ok227 ], [ %cmptmp209, %and.8.else ]
  store i1 %and.8.phi, ptr %var.has_delim, align 1
  %var.load236 = load i1, ptr %var.has_delim, align 1
  br i1 %var.load236, label %choice.then237, label %choice.exit238

addr_gen_check226:                                ; preds = %and.8.then
  %arena.cur229 = call ptr @dva_arena_current()
  %tag.valid230 = call i1 @dva_arena_validate_tag(ptr %arena.cur229, i64 %addr.tag224)
  br i1 %tag.valid230, label %addr_ok227, label %addr_stale228

addr_ok227:                                       ; preds = %addr_stale228, %addr_gen_check226, %and.8.then
  %raw.load231 = load volatile i8, ptr %raw.clean.ptr223, align 1
  %coerce.sext232 = sext i8 %raw.load231 to i64
  %bandtmp233 = and i64 %coerce.sext232, 255
  %var.load234 = load i64, ptr %var.delim, align 8
  %cmptmp235 = icmp eq i64 %bandtmp233, %var.load234
  br label %and.8.exit

addr_stale228:                                    ; preds = %addr_gen_check226
  %11 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok227

choice.then237:                                   ; preds = %and.8.exit
  %var.load239 = load ptr, ptr %var.r, align 8
  %var.load240 = load ptr, ptr %var.r, align 8
  %fld.gep241 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load240, i32 0, i32 2
  %fld.load242 = load i64, ptr %fld.gep241, align 8
  %addtmp243 = add i64 %fld.load242, 1
  %fld.gep244 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load239, i32 0, i32 2
  store i64 %addtmp243, ptr %fld.gep244, align 8
  br label %choice.exit238

choice.exit238:                                   ; preds = %choice.then237, %and.8.exit
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.6

choice.then248:                                   ; preds = %loop.exit.6
  %var.load251 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load251, i32 0, i32 0
  %b.freeze.len252 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load251, i32 0, i32 1
  %b.freeze.data253 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else249:                                   ; preds = %loop.exit.6
  %var.load257 = load ptr, ptr %var.out, align 8
  %b.len258 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load257, i32 0, i32 0
  %b.len259 = load i64, ptr %b.len258, align 8
  %cmptmp260 = icmp sgt i64 %b.len259, 0
  br i1 %cmptmp260, label %choice.then261, label %choice.else262

choice.exit250:                                   ; preds = %choice.exit263, %b.freeze.done
  %choice.res304 = phi ptr [ %builder.freeze, %b.freeze.done ], [ %choice.res303, %choice.exit263 ]
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.then248
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data253, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data253, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data253, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len252, 1
  %arena.cur254 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data253, i64 %b.freeze.len252, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len252
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then248
  %b.freeze.data255 = phi ptr [ %b.freeze.data253, %choice.then248 ], [ %b.freeze.data253, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur256 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len252, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data255, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load251, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load251, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load251, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit250

choice.then261:                                   ; preds = %choice.else249
  %var.load264 = load ptr, ptr %var.out, align 8
  %b.freeze.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load264, i32 0, i32 0
  %b.freeze.len266 = load i64, ptr %b.freeze.len265, align 8
  %b.freeze.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load264, i32 0, i32 1
  %b.freeze.data268 = load ptr, ptr %b.freeze.data267, align 8
  %b.freeze.arena269 = call ptr @dva_arena_current()
  %b.freeze.nc.gep270 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena269, i32 0, i32 1
  %b.freeze.nc271 = load i64, ptr %b.freeze.nc.gep270, align 8
  %b.freeze.has.chunk272 = icmp sgt i64 %b.freeze.nc271, 0
  br i1 %b.freeze.has.chunk272, label %b.freeze.check273, label %b.freeze.done275

choice.else262:                                   ; preds = %choice.else249
  br label %choice.exit263

choice.exit263:                                   ; preds = %choice.else262, %b.freeze.done275
  %choice.res303 = phi ptr [ %builder.freeze297, %b.freeze.done275 ], [ null, %choice.else262 ]
  br label %choice.exit250

b.freeze.check273:                                ; preds = %choice.then261
  %b.freeze.last.idx276 = sub i64 %b.freeze.nc271, 1
  %b.freeze.chunks.gep277 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena269, i32 0, i32 3
  %b.freeze.chunk.slot278 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep277, i64 0, i64 %b.freeze.last.idx276
  %b.freeze.last.chunk279 = load ptr, ptr %b.freeze.chunk.slot278, align 8
  %b.freeze.off.gep280 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena269, i32 0, i32 2
  %b.freeze.off281 = load i64, ptr %b.freeze.off.gep280, align 8
  %b.freeze.bump282 = getelementptr i8, ptr %b.freeze.last.chunk279, i64 %b.freeze.off281
  %b.freeze.cap.gep283 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena269, i32 0, i32 0
  %b.freeze.cap284 = load i64, ptr %b.freeze.cap.gep283, align 8
  %b.freeze.chunk.end285 = getelementptr i8, ptr %b.freeze.last.chunk279, i64 %b.freeze.cap284
  %b.freeze.ge.chunk286 = icmp uge ptr %b.freeze.data268, %b.freeze.last.chunk279
  %b.freeze.lt.end287 = icmp ult ptr %b.freeze.data268, %b.freeze.chunk.end285
  %b.freeze.in.chunk288 = and i1 %b.freeze.ge.chunk286, %b.freeze.lt.end287
  %b.freeze.ge.bump289 = icmp uge ptr %b.freeze.data268, %b.freeze.bump282
  %b.freeze.reaped290 = and i1 %b.freeze.in.chunk288, %b.freeze.ge.bump289
  br i1 %b.freeze.reaped290, label %b.freeze.copy274, label %b.freeze.done275

b.freeze.copy274:                                 ; preds = %b.freeze.check273
  %b.freeze.alen291 = add i64 %b.freeze.len266, 1
  %arena.cur292 = call ptr @dva_arena_current()
  %b.freeze.fresh293 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 %b.freeze.alen291)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh293, ptr align 1 %b.freeze.data268, i64 %b.freeze.len266, i1 false)
  %b.freeze.nul294 = getelementptr i8, ptr %b.freeze.fresh293, i64 %b.freeze.len266
  store i8 0, ptr %b.freeze.nul294, align 1
  br label %b.freeze.done275

b.freeze.done275:                                 ; preds = %b.freeze.copy274, %b.freeze.check273, %choice.then261
  %b.freeze.data295 = phi ptr [ %b.freeze.data268, %choice.then261 ], [ %b.freeze.data268, %b.freeze.check273 ], [ %b.freeze.fresh293, %b.freeze.copy274 ]
  %arena.cur296 = call ptr @dva_arena_current()
  %builder.freeze297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 16)
  %str.build.len.gep298 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze297, i32 0, i32 0
  store i64 %b.freeze.len266, ptr %str.build.len.gep298, align 8
  %str.build.data.gep299 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze297, i32 0, i32 1
  store ptr %b.freeze.data295, ptr %str.build.data.gep299, align 8
  %b.freeze.rst.len300 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load264, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len300, align 8
  %b.freeze.rst.data301 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load264, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data301, align 8
  %b.freeze.rst.cap302 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load264, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap302, align 8
  br label %choice.exit263
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
  br i1 %cmptmp, label %and.9.then, label %and.9.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.9.then:                                       ; preds = %str_ok
  %var.load7 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

and.9.else:                                       ; preds = %str_ok
  br label %and.9.exit

and.9.exit:                                       ; preds = %and.9.else, %idx_ok
  %and.9.phi = phi i1 [ %cmptmp19, %idx_ok ], [ %cmptmp, %and.9.else ]
  br i1 %and.9.phi, label %choice.then20, label %choice.else21

str_gen_check12:                                  ; preds = %and.9.then
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %and.9.then
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
  br label %and.9.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then20:                                    ; preds = %and.9.exit
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

choice.else21:                                    ; preds = %and.9.exit
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
