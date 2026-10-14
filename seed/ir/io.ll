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

declare i64 @creat(ptr, i64)

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

declare i64 @time(ptr)

declare ptr @signal(i64, ptr)

declare i64 @raise(i64)

declare i64 @getrlimit(i64, ptr)

declare i64 @setrlimit(i64, ptr)

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
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i1 @"io::reader_eof"(ptr %0) #1 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
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
  %var.b285 = alloca ptr, align 8
  %var.b94 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.r = alloca i32, align 4
  store i32 %0, ptr %var.r, align 4
  %var.load = load i32, ptr %var.r, align 4
  %coerce.sext = sext i32 %var.load to i64
  %cmptmp = icmp slt i64 %coerce.sext, 128
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %b.freeze.done485, %b.freeze.done246, %b.freeze.done, %choice.case
  %choice.res = phi ptr [ %call.res, %choice.case ], [ %builder.freeze, %b.freeze.done ], [ %builder.freeze266, %b.freeze.done246 ], [ %builder.freeze505, %b.freeze.done485 ]
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
  %coerce.sext79 = sext i32 %var.load to i64
  %cmptmp80 = icmp slt i64 %coerce.sext79, 65536
  br i1 %cmptmp80, label %choice.case77, label %choice.next78

b.buf.len7:                                       ; preds = %str_overflow_abort, %choice.case3
  %arena.cur8 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 2, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load9 = load i32, ptr %var.r, align 4
  %shrtmp = lshr i32 %var.load9, 6
  %coerce.sext10 = sext i32 %shrtmp to i64
  %addtmp = add i64 192, %coerce.sext10
  %b.load = load ptr, ptr %var.b, align 8
  %var.load11 = load i32, ptr %var.r, align 4
  %shrtmp12 = lshr i32 %var.load11, 6
  %coerce.sext13 = sext i32 %shrtmp12 to i64
  %addtmp14 = add i64 192, %coerce.sext13
  %b.b.ge0 = icmp sge i64 %addtmp14, 0
  %b.b.le255 = icmp sle i64 %addtmp14, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %choice.case3
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len7

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len7
  %b.byte.i8 = trunc i64 %addtmp14 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len15 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap16 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data17 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len15, %b.cap16
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len7
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap16, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum18 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf19 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf19, label %str_overflow_abort21, label %b.new.buf.len20

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len20
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data23 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len24 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data23, i64 %b.cur.len24
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len24, 1
  %b.nul = getelementptr i8, ptr %b.cur.data23, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep25, align 8
  %var.load26 = load i32, ptr %var.r, align 4
  %coerce.sext27 = sext i32 %var.load26 to i64
  %bandtmp = and i64 %coerce.sext27, 63
  %addtmp28 = add i64 128, %bandtmp
  %b.load29 = load ptr, ptr %var.b, align 8
  %var.load30 = load i32, ptr %var.r, align 4
  %coerce.sext31 = sext i32 %var.load30 to i64
  %bandtmp32 = and i64 %coerce.sext31, 63
  %addtmp33 = add i64 128, %bandtmp32
  %b.b.ge034 = icmp sge i64 %addtmp33, 0
  %b.b.le25535 = icmp sle i64 %addtmp33, 255
  %b.byte.range36 = and i1 %b.b.ge034, %b.b.le25535
  br i1 %b.byte.range36, label %b.byte_ok37, label %b.byte_err38

b.new.buf.len20:                                  ; preds = %str_overflow_abort21, %b.grow
  %arena.cur22 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 %sum18)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data17, i64 %b.len15, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len15
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort21:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len20

b.byte_ok37:                                      ; preds = %b.byte_err38, %b.push_done
  %b.byte.i839 = trunc i64 %addtmp33 to i8
  %b.len40 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  %b.len41 = load i64, ptr %b.len40, align 8
  %b.cap42 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 2
  %b.cap43 = load i64, ptr %b.cap42, align 8
  %b.data44 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  %b.data45 = load ptr, ptr %b.data44, align 8
  %b.needs.grow46 = icmp eq i64 %b.len41, %b.cap43
  br i1 %b.needs.grow46, label %b.grow47, label %b.nogrow48

b.byte_err38:                                     ; preds = %b.push_done
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok37

b.grow47:                                         ; preds = %b.byte_ok37
  %b.cap250 = mul i64 %b.cap43, 2
  %b.cap.small51 = icmp slt i64 %b.cap250, 16
  %b.new.cap52 = select i1 %b.cap.small51, i64 16, i64 %b.cap250
  %b.new.buf.len53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap52, i64 1)
  %sum54 = extractvalue { i64, i1 } %b.new.buf.len53, 0
  %ovf55 = extractvalue { i64, i1 } %b.new.buf.len53, 1
  br i1 %ovf55, label %str_overflow_abort57, label %b.new.buf.len56

b.nogrow48:                                       ; preds = %b.byte_ok37
  br label %b.push_done49

b.push_done49:                                    ; preds = %b.nogrow48, %b.new.buf.len56
  %b.cur.data63 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  %b.cur.data64 = load ptr, ptr %b.cur.data63, align 8
  %b.cur.len65 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  %b.cur.len66 = load i64, ptr %b.cur.len65, align 8
  %b.byte.gep67 = getelementptr i8, ptr %b.cur.data64, i64 %b.cur.len66
  store i8 %b.byte.i839, ptr %b.byte.gep67, align 1
  %b.next.len68 = add i64 %b.cur.len66, 1
  %b.nul69 = getelementptr i8, ptr %b.cur.data64, i64 %b.next.len68
  store i8 0, ptr %b.nul69, align 1
  %b.len.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  store i64 %b.next.len68, ptr %b.len.gep70, align 8
  %var.load71 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 0
  %b.freeze.len72 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 1
  %b.freeze.data73 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len56:                                  ; preds = %str_overflow_abort57, %b.grow47
  %arena.cur58 = call ptr @dva_arena_current()
  %b.new.buf59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf59, ptr align 1 %b.data45, i64 %b.len41, i1 false)
  %b.grow.nul60 = getelementptr i8, ptr %b.new.buf59, i64 %b.len41
  store i8 0, ptr %b.grow.nul60, align 1
  %b.new.data.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  store ptr %b.new.buf59, ptr %b.new.data.gep61, align 8
  %b.new.cap.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 2
  store i64 %b.new.cap52, ptr %b.new.cap.gep62, align 8
  br label %b.push_done49

str_overflow_abort57:                             ; preds = %b.grow47
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len56

b.freeze.check:                                   ; preds = %b.push_done49
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data73, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data73, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data73, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur74 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %b.freeze.len72)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data73, i64 %b.freeze.len72, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.push_done49
  %b.freeze.data75 = phi ptr [ %b.freeze.data73, %b.push_done49 ], [ %b.freeze.data73, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur76 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len72, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data75, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit

choice.case77:                                    ; preds = %choice.next4
  %arena.cur81 = call ptr @dva_arena_current()
  %builder.new82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 24)
  %b.data.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new82, i32 0, i32 1
  %b.len.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new82, i32 0, i32 0
  %b.cap.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new82, i32 0, i32 2
  %b.buf.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 3, i64 1)
  %sum87 = extractvalue { i64, i1 } %b.buf.len86, 0
  %ovf88 = extractvalue { i64, i1 } %b.buf.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %b.buf.len89

choice.next78:                                    ; preds = %choice.next4
  %arena.cur272 = call ptr @dva_arena_current()
  %builder.new273 = call ptr @dva_arena_alloc(ptr %arena.cur272, i64 24)
  %b.data.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new273, i32 0, i32 1
  %b.len.gep275 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new273, i32 0, i32 0
  %b.cap.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new273, i32 0, i32 2
  %b.buf.len277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 1)
  %sum278 = extractvalue { i64, i1 } %b.buf.len277, 0
  %ovf279 = extractvalue { i64, i1 } %b.buf.len277, 1
  br i1 %ovf279, label %str_overflow_abort281, label %b.buf.len280

b.buf.len89:                                      ; preds = %str_overflow_abort90, %choice.case77
  %arena.cur91 = call ptr @dva_arena_current()
  %b.buf92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 %sum87)
  %b.nul093 = getelementptr i8, ptr %b.buf92, i64 0
  store i8 0, ptr %b.nul093, align 1
  store i64 0, ptr %b.len.gep84, align 8
  store ptr %b.buf92, ptr %b.data.gep83, align 8
  store i64 3, ptr %b.cap.gep85, align 8
  store ptr %builder.new82, ptr %var.b94, align 8
  %var.load95 = load i32, ptr %var.r, align 4
  %shrtmp96 = lshr i32 %var.load95, 12
  %coerce.sext97 = sext i32 %shrtmp96 to i64
  %addtmp98 = add i64 224, %coerce.sext97
  %b.load99 = load ptr, ptr %var.b94, align 8
  %var.load100 = load i32, ptr %var.r, align 4
  %shrtmp101 = lshr i32 %var.load100, 12
  %coerce.sext102 = sext i32 %shrtmp101 to i64
  %addtmp103 = add i64 224, %coerce.sext102
  %b.b.ge0104 = icmp sge i64 %addtmp103, 0
  %b.b.le255105 = icmp sle i64 %addtmp103, 255
  %b.byte.range106 = and i1 %b.b.ge0104, %b.b.le255105
  br i1 %b.byte.range106, label %b.byte_ok107, label %b.byte_err108

str_overflow_abort90:                             ; preds = %choice.case77
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len89

b.byte_ok107:                                     ; preds = %b.byte_err108, %b.buf.len89
  %b.byte.i8109 = trunc i64 %addtmp103 to i8
  %b.len110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  %b.len111 = load i64, ptr %b.len110, align 8
  %b.cap112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  %b.cap113 = load i64, ptr %b.cap112, align 8
  %b.data114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  %b.data115 = load ptr, ptr %b.data114, align 8
  %b.needs.grow116 = icmp eq i64 %b.len111, %b.cap113
  br i1 %b.needs.grow116, label %b.grow117, label %b.nogrow118

b.byte_err108:                                    ; preds = %b.buf.len89
  %7 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok107

b.grow117:                                        ; preds = %b.byte_ok107
  %b.cap2120 = mul i64 %b.cap113, 2
  %b.cap.small121 = icmp slt i64 %b.cap2120, 16
  %b.new.cap122 = select i1 %b.cap.small121, i64 16, i64 %b.cap2120
  %b.new.buf.len123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap122, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.new.buf.len123, 0
  %ovf125 = extractvalue { i64, i1 } %b.new.buf.len123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.new.buf.len126

b.nogrow118:                                      ; preds = %b.byte_ok107
  br label %b.push_done119

b.push_done119:                                   ; preds = %b.nogrow118, %b.new.buf.len126
  %b.cur.data133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  %b.cur.data134 = load ptr, ptr %b.cur.data133, align 8
  %b.cur.len135 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  %b.cur.len136 = load i64, ptr %b.cur.len135, align 8
  %b.byte.gep137 = getelementptr i8, ptr %b.cur.data134, i64 %b.cur.len136
  store i8 %b.byte.i8109, ptr %b.byte.gep137, align 1
  %b.next.len138 = add i64 %b.cur.len136, 1
  %b.nul139 = getelementptr i8, ptr %b.cur.data134, i64 %b.next.len138
  store i8 0, ptr %b.nul139, align 1
  %b.len.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  store i64 %b.next.len138, ptr %b.len.gep140, align 8
  %var.load141 = load i32, ptr %var.r, align 4
  %shrtmp142 = lshr i32 %var.load141, 6
  %coerce.sext143 = sext i32 %shrtmp142 to i64
  %bandtmp144 = and i64 %coerce.sext143, 63
  %addtmp145 = add i64 128, %bandtmp144
  %b.load146 = load ptr, ptr %var.b94, align 8
  %var.load147 = load i32, ptr %var.r, align 4
  %shrtmp148 = lshr i32 %var.load147, 6
  %coerce.sext149 = sext i32 %shrtmp148 to i64
  %bandtmp150 = and i64 %coerce.sext149, 63
  %addtmp151 = add i64 128, %bandtmp150
  %b.b.ge0152 = icmp sge i64 %addtmp151, 0
  %b.b.le255153 = icmp sle i64 %addtmp151, 255
  %b.byte.range154 = and i1 %b.b.ge0152, %b.b.le255153
  br i1 %b.byte.range154, label %b.byte_ok155, label %b.byte_err156

b.new.buf.len126:                                 ; preds = %str_overflow_abort127, %b.grow117
  %arena.cur128 = call ptr @dva_arena_current()
  %b.new.buf129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 %sum124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf129, ptr align 1 %b.data115, i64 %b.len111, i1 false)
  %b.grow.nul130 = getelementptr i8, ptr %b.new.buf129, i64 %b.len111
  store i8 0, ptr %b.grow.nul130, align 1
  %b.new.data.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  store ptr %b.new.buf129, ptr %b.new.data.gep131, align 8
  %b.new.cap.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  store i64 %b.new.cap122, ptr %b.new.cap.gep132, align 8
  br label %b.push_done119

str_overflow_abort127:                            ; preds = %b.grow117
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len126

b.byte_ok155:                                     ; preds = %b.byte_err156, %b.push_done119
  %b.byte.i8157 = trunc i64 %addtmp151 to i8
  %b.len158 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 0
  %b.len159 = load i64, ptr %b.len158, align 8
  %b.cap160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 2
  %b.cap161 = load i64, ptr %b.cap160, align 8
  %b.data162 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 1
  %b.data163 = load ptr, ptr %b.data162, align 8
  %b.needs.grow164 = icmp eq i64 %b.len159, %b.cap161
  br i1 %b.needs.grow164, label %b.grow165, label %b.nogrow166

b.byte_err156:                                    ; preds = %b.push_done119
  %9 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok155

b.grow165:                                        ; preds = %b.byte_ok155
  %b.cap2168 = mul i64 %b.cap161, 2
  %b.cap.small169 = icmp slt i64 %b.cap2168, 16
  %b.new.cap170 = select i1 %b.cap.small169, i64 16, i64 %b.cap2168
  %b.new.buf.len171 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap170, i64 1)
  %sum172 = extractvalue { i64, i1 } %b.new.buf.len171, 0
  %ovf173 = extractvalue { i64, i1 } %b.new.buf.len171, 1
  br i1 %ovf173, label %str_overflow_abort175, label %b.new.buf.len174

b.nogrow166:                                      ; preds = %b.byte_ok155
  br label %b.push_done167

b.push_done167:                                   ; preds = %b.nogrow166, %b.new.buf.len174
  %b.cur.data181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 1
  %b.cur.data182 = load ptr, ptr %b.cur.data181, align 8
  %b.cur.len183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 0
  %b.cur.len184 = load i64, ptr %b.cur.len183, align 8
  %b.byte.gep185 = getelementptr i8, ptr %b.cur.data182, i64 %b.cur.len184
  store i8 %b.byte.i8157, ptr %b.byte.gep185, align 1
  %b.next.len186 = add i64 %b.cur.len184, 1
  %b.nul187 = getelementptr i8, ptr %b.cur.data182, i64 %b.next.len186
  store i8 0, ptr %b.nul187, align 1
  %b.len.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 0
  store i64 %b.next.len186, ptr %b.len.gep188, align 8
  %var.load189 = load i32, ptr %var.r, align 4
  %coerce.sext190 = sext i32 %var.load189 to i64
  %bandtmp191 = and i64 %coerce.sext190, 63
  %addtmp192 = add i64 128, %bandtmp191
  %b.load193 = load ptr, ptr %var.b94, align 8
  %var.load194 = load i32, ptr %var.r, align 4
  %coerce.sext195 = sext i32 %var.load194 to i64
  %bandtmp196 = and i64 %coerce.sext195, 63
  %addtmp197 = add i64 128, %bandtmp196
  %b.b.ge0198 = icmp sge i64 %addtmp197, 0
  %b.b.le255199 = icmp sle i64 %addtmp197, 255
  %b.byte.range200 = and i1 %b.b.ge0198, %b.b.le255199
  br i1 %b.byte.range200, label %b.byte_ok201, label %b.byte_err202

b.new.buf.len174:                                 ; preds = %str_overflow_abort175, %b.grow165
  %arena.cur176 = call ptr @dva_arena_current()
  %b.new.buf177 = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 %sum172)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf177, ptr align 1 %b.data163, i64 %b.len159, i1 false)
  %b.grow.nul178 = getelementptr i8, ptr %b.new.buf177, i64 %b.len159
  store i8 0, ptr %b.grow.nul178, align 1
  %b.new.data.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 1
  store ptr %b.new.buf177, ptr %b.new.data.gep179, align 8
  %b.new.cap.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 2
  store i64 %b.new.cap170, ptr %b.new.cap.gep180, align 8
  br label %b.push_done167

str_overflow_abort175:                            ; preds = %b.grow165
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len174

b.byte_ok201:                                     ; preds = %b.byte_err202, %b.push_done167
  %b.byte.i8203 = trunc i64 %addtmp197 to i8
  %b.len204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load193, i32 0, i32 0
  %b.len205 = load i64, ptr %b.len204, align 8
  %b.cap206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load193, i32 0, i32 2
  %b.cap207 = load i64, ptr %b.cap206, align 8
  %b.data208 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load193, i32 0, i32 1
  %b.data209 = load ptr, ptr %b.data208, align 8
  %b.needs.grow210 = icmp eq i64 %b.len205, %b.cap207
  br i1 %b.needs.grow210, label %b.grow211, label %b.nogrow212

b.byte_err202:                                    ; preds = %b.push_done167
  %11 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok201

b.grow211:                                        ; preds = %b.byte_ok201
  %b.cap2214 = mul i64 %b.cap207, 2
  %b.cap.small215 = icmp slt i64 %b.cap2214, 16
  %b.new.cap216 = select i1 %b.cap.small215, i64 16, i64 %b.cap2214
  %b.new.buf.len217 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap216, i64 1)
  %sum218 = extractvalue { i64, i1 } %b.new.buf.len217, 0
  %ovf219 = extractvalue { i64, i1 } %b.new.buf.len217, 1
  br i1 %ovf219, label %str_overflow_abort221, label %b.new.buf.len220

b.nogrow212:                                      ; preds = %b.byte_ok201
  br label %b.push_done213

b.push_done213:                                   ; preds = %b.nogrow212, %b.new.buf.len220
  %b.cur.data227 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load193, i32 0, i32 1
  %b.cur.data228 = load ptr, ptr %b.cur.data227, align 8
  %b.cur.len229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load193, i32 0, i32 0
  %b.cur.len230 = load i64, ptr %b.cur.len229, align 8
  %b.byte.gep231 = getelementptr i8, ptr %b.cur.data228, i64 %b.cur.len230
  store i8 %b.byte.i8203, ptr %b.byte.gep231, align 1
  %b.next.len232 = add i64 %b.cur.len230, 1
  %b.nul233 = getelementptr i8, ptr %b.cur.data228, i64 %b.next.len232
  store i8 0, ptr %b.nul233, align 1
  %b.len.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load193, i32 0, i32 0
  store i64 %b.next.len232, ptr %b.len.gep234, align 8
  %var.load235 = load ptr, ptr %var.b94, align 8
  %b.freeze.len236 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load235, i32 0, i32 0
  %b.freeze.len237 = load i64, ptr %b.freeze.len236, align 8
  %b.freeze.data238 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load235, i32 0, i32 1
  %b.freeze.data239 = load ptr, ptr %b.freeze.data238, align 8
  %b.freeze.arena240 = call ptr @dva_arena_current()
  %b.freeze.nc.gep241 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena240, i32 0, i32 1
  %b.freeze.nc242 = load i64, ptr %b.freeze.nc.gep241, align 8
  %b.freeze.has.chunk243 = icmp sgt i64 %b.freeze.nc242, 0
  br i1 %b.freeze.has.chunk243, label %b.freeze.check244, label %b.freeze.done246

b.new.buf.len220:                                 ; preds = %str_overflow_abort221, %b.grow211
  %arena.cur222 = call ptr @dva_arena_current()
  %b.new.buf223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 %sum218)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf223, ptr align 1 %b.data209, i64 %b.len205, i1 false)
  %b.grow.nul224 = getelementptr i8, ptr %b.new.buf223, i64 %b.len205
  store i8 0, ptr %b.grow.nul224, align 1
  %b.new.data.gep225 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load193, i32 0, i32 1
  store ptr %b.new.buf223, ptr %b.new.data.gep225, align 8
  %b.new.cap.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load193, i32 0, i32 2
  store i64 %b.new.cap216, ptr %b.new.cap.gep226, align 8
  br label %b.push_done213

str_overflow_abort221:                            ; preds = %b.grow211
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len220

b.freeze.check244:                                ; preds = %b.push_done213
  %b.freeze.last.idx247 = sub i64 %b.freeze.nc242, 1
  %b.freeze.chunks.gep248 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena240, i32 0, i32 3
  %b.freeze.chunk.slot249 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep248, i64 0, i64 %b.freeze.last.idx247
  %b.freeze.last.chunk250 = load ptr, ptr %b.freeze.chunk.slot249, align 8
  %b.freeze.off.gep251 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena240, i32 0, i32 2
  %b.freeze.off252 = load i64, ptr %b.freeze.off.gep251, align 8
  %b.freeze.bump253 = getelementptr i8, ptr %b.freeze.last.chunk250, i64 %b.freeze.off252
  %b.freeze.cap.gep254 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena240, i32 0, i32 0
  %b.freeze.cap255 = load i64, ptr %b.freeze.cap.gep254, align 8
  %b.freeze.chunk.end256 = getelementptr i8, ptr %b.freeze.last.chunk250, i64 %b.freeze.cap255
  %b.freeze.ge.chunk257 = icmp uge ptr %b.freeze.data239, %b.freeze.last.chunk250
  %b.freeze.lt.end258 = icmp ult ptr %b.freeze.data239, %b.freeze.chunk.end256
  %b.freeze.in.chunk259 = and i1 %b.freeze.ge.chunk257, %b.freeze.lt.end258
  %b.freeze.ge.bump260 = icmp uge ptr %b.freeze.data239, %b.freeze.bump253
  %b.freeze.reaped261 = and i1 %b.freeze.in.chunk259, %b.freeze.ge.bump260
  br i1 %b.freeze.reaped261, label %b.freeze.copy245, label %b.freeze.done246

b.freeze.copy245:                                 ; preds = %b.freeze.check244
  %arena.cur262 = call ptr @dva_arena_current()
  %b.freeze.fresh263 = call ptr @dva_arena_alloc(ptr %arena.cur262, i64 %b.freeze.len237)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh263, ptr align 1 %b.freeze.data239, i64 %b.freeze.len237, i1 false)
  br label %b.freeze.done246

b.freeze.done246:                                 ; preds = %b.freeze.copy245, %b.freeze.check244, %b.push_done213
  %b.freeze.data264 = phi ptr [ %b.freeze.data239, %b.push_done213 ], [ %b.freeze.data239, %b.freeze.check244 ], [ %b.freeze.fresh263, %b.freeze.copy245 ]
  %arena.cur265 = call ptr @dva_arena_current()
  %builder.freeze266 = call ptr @dva_arena_alloc(ptr %arena.cur265, i64 16)
  %str.build.len.gep267 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze266, i32 0, i32 0
  store i64 %b.freeze.len237, ptr %str.build.len.gep267, align 8
  %str.build.data.gep268 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze266, i32 0, i32 1
  store ptr %b.freeze.data264, ptr %str.build.data.gep268, align 8
  %b.freeze.rst.len269 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load235, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len269, align 8
  %b.freeze.rst.data270 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load235, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data270, align 8
  %b.freeze.rst.cap271 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load235, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap271, align 8
  br label %choice.exit

b.buf.len280:                                     ; preds = %str_overflow_abort281, %choice.next78
  %arena.cur282 = call ptr @dva_arena_current()
  %b.buf283 = call ptr @dva_arena_alloc(ptr %arena.cur282, i64 %sum278)
  %b.nul0284 = getelementptr i8, ptr %b.buf283, i64 0
  store i8 0, ptr %b.nul0284, align 1
  store i64 0, ptr %b.len.gep275, align 8
  store ptr %b.buf283, ptr %b.data.gep274, align 8
  store i64 4, ptr %b.cap.gep276, align 8
  store ptr %builder.new273, ptr %var.b285, align 8
  %var.load286 = load i32, ptr %var.r, align 4
  %shrtmp287 = lshr i32 %var.load286, 18
  %coerce.sext288 = sext i32 %shrtmp287 to i64
  %addtmp289 = add i64 240, %coerce.sext288
  %b.load290 = load ptr, ptr %var.b285, align 8
  %var.load291 = load i32, ptr %var.r, align 4
  %shrtmp292 = lshr i32 %var.load291, 18
  %coerce.sext293 = sext i32 %shrtmp292 to i64
  %addtmp294 = add i64 240, %coerce.sext293
  %b.b.ge0295 = icmp sge i64 %addtmp294, 0
  %b.b.le255296 = icmp sle i64 %addtmp294, 255
  %b.byte.range297 = and i1 %b.b.ge0295, %b.b.le255296
  br i1 %b.byte.range297, label %b.byte_ok298, label %b.byte_err299

str_overflow_abort281:                            ; preds = %choice.next78
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len280

b.byte_ok298:                                     ; preds = %b.byte_err299, %b.buf.len280
  %b.byte.i8300 = trunc i64 %addtmp294 to i8
  %b.len301 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  %b.len302 = load i64, ptr %b.len301, align 8
  %b.cap303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 2
  %b.cap304 = load i64, ptr %b.cap303, align 8
  %b.data305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  %b.data306 = load ptr, ptr %b.data305, align 8
  %b.needs.grow307 = icmp eq i64 %b.len302, %b.cap304
  br i1 %b.needs.grow307, label %b.grow308, label %b.nogrow309

b.byte_err299:                                    ; preds = %b.buf.len280
  %14 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok298

b.grow308:                                        ; preds = %b.byte_ok298
  %b.cap2311 = mul i64 %b.cap304, 2
  %b.cap.small312 = icmp slt i64 %b.cap2311, 16
  %b.new.cap313 = select i1 %b.cap.small312, i64 16, i64 %b.cap2311
  %b.new.buf.len314 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap313, i64 1)
  %sum315 = extractvalue { i64, i1 } %b.new.buf.len314, 0
  %ovf316 = extractvalue { i64, i1 } %b.new.buf.len314, 1
  br i1 %ovf316, label %str_overflow_abort318, label %b.new.buf.len317

b.nogrow309:                                      ; preds = %b.byte_ok298
  br label %b.push_done310

b.push_done310:                                   ; preds = %b.nogrow309, %b.new.buf.len317
  %b.cur.data324 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  %b.cur.data325 = load ptr, ptr %b.cur.data324, align 8
  %b.cur.len326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  %b.cur.len327 = load i64, ptr %b.cur.len326, align 8
  %b.byte.gep328 = getelementptr i8, ptr %b.cur.data325, i64 %b.cur.len327
  store i8 %b.byte.i8300, ptr %b.byte.gep328, align 1
  %b.next.len329 = add i64 %b.cur.len327, 1
  %b.nul330 = getelementptr i8, ptr %b.cur.data325, i64 %b.next.len329
  store i8 0, ptr %b.nul330, align 1
  %b.len.gep331 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  store i64 %b.next.len329, ptr %b.len.gep331, align 8
  %var.load332 = load i32, ptr %var.r, align 4
  %shrtmp333 = lshr i32 %var.load332, 12
  %coerce.sext334 = sext i32 %shrtmp333 to i64
  %bandtmp335 = and i64 %coerce.sext334, 63
  %addtmp336 = add i64 128, %bandtmp335
  %b.load337 = load ptr, ptr %var.b285, align 8
  %var.load338 = load i32, ptr %var.r, align 4
  %shrtmp339 = lshr i32 %var.load338, 12
  %coerce.sext340 = sext i32 %shrtmp339 to i64
  %bandtmp341 = and i64 %coerce.sext340, 63
  %addtmp342 = add i64 128, %bandtmp341
  %b.b.ge0343 = icmp sge i64 %addtmp342, 0
  %b.b.le255344 = icmp sle i64 %addtmp342, 255
  %b.byte.range345 = and i1 %b.b.ge0343, %b.b.le255344
  br i1 %b.byte.range345, label %b.byte_ok346, label %b.byte_err347

b.new.buf.len317:                                 ; preds = %str_overflow_abort318, %b.grow308
  %arena.cur319 = call ptr @dva_arena_current()
  %b.new.buf320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 %sum315)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf320, ptr align 1 %b.data306, i64 %b.len302, i1 false)
  %b.grow.nul321 = getelementptr i8, ptr %b.new.buf320, i64 %b.len302
  store i8 0, ptr %b.grow.nul321, align 1
  %b.new.data.gep322 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  store ptr %b.new.buf320, ptr %b.new.data.gep322, align 8
  %b.new.cap.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 2
  store i64 %b.new.cap313, ptr %b.new.cap.gep323, align 8
  br label %b.push_done310

str_overflow_abort318:                            ; preds = %b.grow308
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len317

b.byte_ok346:                                     ; preds = %b.byte_err347, %b.push_done310
  %b.byte.i8348 = trunc i64 %addtmp342 to i8
  %b.len349 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 0
  %b.len350 = load i64, ptr %b.len349, align 8
  %b.cap351 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 2
  %b.cap352 = load i64, ptr %b.cap351, align 8
  %b.data353 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 1
  %b.data354 = load ptr, ptr %b.data353, align 8
  %b.needs.grow355 = icmp eq i64 %b.len350, %b.cap352
  br i1 %b.needs.grow355, label %b.grow356, label %b.nogrow357

b.byte_err347:                                    ; preds = %b.push_done310
  %16 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok346

b.grow356:                                        ; preds = %b.byte_ok346
  %b.cap2359 = mul i64 %b.cap352, 2
  %b.cap.small360 = icmp slt i64 %b.cap2359, 16
  %b.new.cap361 = select i1 %b.cap.small360, i64 16, i64 %b.cap2359
  %b.new.buf.len362 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap361, i64 1)
  %sum363 = extractvalue { i64, i1 } %b.new.buf.len362, 0
  %ovf364 = extractvalue { i64, i1 } %b.new.buf.len362, 1
  br i1 %ovf364, label %str_overflow_abort366, label %b.new.buf.len365

b.nogrow357:                                      ; preds = %b.byte_ok346
  br label %b.push_done358

b.push_done358:                                   ; preds = %b.nogrow357, %b.new.buf.len365
  %b.cur.data372 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 1
  %b.cur.data373 = load ptr, ptr %b.cur.data372, align 8
  %b.cur.len374 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 0
  %b.cur.len375 = load i64, ptr %b.cur.len374, align 8
  %b.byte.gep376 = getelementptr i8, ptr %b.cur.data373, i64 %b.cur.len375
  store i8 %b.byte.i8348, ptr %b.byte.gep376, align 1
  %b.next.len377 = add i64 %b.cur.len375, 1
  %b.nul378 = getelementptr i8, ptr %b.cur.data373, i64 %b.next.len377
  store i8 0, ptr %b.nul378, align 1
  %b.len.gep379 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 0
  store i64 %b.next.len377, ptr %b.len.gep379, align 8
  %var.load380 = load i32, ptr %var.r, align 4
  %shrtmp381 = lshr i32 %var.load380, 6
  %coerce.sext382 = sext i32 %shrtmp381 to i64
  %bandtmp383 = and i64 %coerce.sext382, 63
  %addtmp384 = add i64 128, %bandtmp383
  %b.load385 = load ptr, ptr %var.b285, align 8
  %var.load386 = load i32, ptr %var.r, align 4
  %shrtmp387 = lshr i32 %var.load386, 6
  %coerce.sext388 = sext i32 %shrtmp387 to i64
  %bandtmp389 = and i64 %coerce.sext388, 63
  %addtmp390 = add i64 128, %bandtmp389
  %b.b.ge0391 = icmp sge i64 %addtmp390, 0
  %b.b.le255392 = icmp sle i64 %addtmp390, 255
  %b.byte.range393 = and i1 %b.b.ge0391, %b.b.le255392
  br i1 %b.byte.range393, label %b.byte_ok394, label %b.byte_err395

b.new.buf.len365:                                 ; preds = %str_overflow_abort366, %b.grow356
  %arena.cur367 = call ptr @dva_arena_current()
  %b.new.buf368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 %sum363)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf368, ptr align 1 %b.data354, i64 %b.len350, i1 false)
  %b.grow.nul369 = getelementptr i8, ptr %b.new.buf368, i64 %b.len350
  store i8 0, ptr %b.grow.nul369, align 1
  %b.new.data.gep370 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 1
  store ptr %b.new.buf368, ptr %b.new.data.gep370, align 8
  %b.new.cap.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 2
  store i64 %b.new.cap361, ptr %b.new.cap.gep371, align 8
  br label %b.push_done358

str_overflow_abort366:                            ; preds = %b.grow356
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len365

b.byte_ok394:                                     ; preds = %b.byte_err395, %b.push_done358
  %b.byte.i8396 = trunc i64 %addtmp390 to i8
  %b.len397 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load385, i32 0, i32 0
  %b.len398 = load i64, ptr %b.len397, align 8
  %b.cap399 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load385, i32 0, i32 2
  %b.cap400 = load i64, ptr %b.cap399, align 8
  %b.data401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load385, i32 0, i32 1
  %b.data402 = load ptr, ptr %b.data401, align 8
  %b.needs.grow403 = icmp eq i64 %b.len398, %b.cap400
  br i1 %b.needs.grow403, label %b.grow404, label %b.nogrow405

b.byte_err395:                                    ; preds = %b.push_done358
  %18 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok394

b.grow404:                                        ; preds = %b.byte_ok394
  %b.cap2407 = mul i64 %b.cap400, 2
  %b.cap.small408 = icmp slt i64 %b.cap2407, 16
  %b.new.cap409 = select i1 %b.cap.small408, i64 16, i64 %b.cap2407
  %b.new.buf.len410 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap409, i64 1)
  %sum411 = extractvalue { i64, i1 } %b.new.buf.len410, 0
  %ovf412 = extractvalue { i64, i1 } %b.new.buf.len410, 1
  br i1 %ovf412, label %str_overflow_abort414, label %b.new.buf.len413

b.nogrow405:                                      ; preds = %b.byte_ok394
  br label %b.push_done406

b.push_done406:                                   ; preds = %b.nogrow405, %b.new.buf.len413
  %b.cur.data420 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load385, i32 0, i32 1
  %b.cur.data421 = load ptr, ptr %b.cur.data420, align 8
  %b.cur.len422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load385, i32 0, i32 0
  %b.cur.len423 = load i64, ptr %b.cur.len422, align 8
  %b.byte.gep424 = getelementptr i8, ptr %b.cur.data421, i64 %b.cur.len423
  store i8 %b.byte.i8396, ptr %b.byte.gep424, align 1
  %b.next.len425 = add i64 %b.cur.len423, 1
  %b.nul426 = getelementptr i8, ptr %b.cur.data421, i64 %b.next.len425
  store i8 0, ptr %b.nul426, align 1
  %b.len.gep427 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load385, i32 0, i32 0
  store i64 %b.next.len425, ptr %b.len.gep427, align 8
  %var.load428 = load i32, ptr %var.r, align 4
  %coerce.sext429 = sext i32 %var.load428 to i64
  %bandtmp430 = and i64 %coerce.sext429, 63
  %addtmp431 = add i64 128, %bandtmp430
  %b.load432 = load ptr, ptr %var.b285, align 8
  %var.load433 = load i32, ptr %var.r, align 4
  %coerce.sext434 = sext i32 %var.load433 to i64
  %bandtmp435 = and i64 %coerce.sext434, 63
  %addtmp436 = add i64 128, %bandtmp435
  %b.b.ge0437 = icmp sge i64 %addtmp436, 0
  %b.b.le255438 = icmp sle i64 %addtmp436, 255
  %b.byte.range439 = and i1 %b.b.ge0437, %b.b.le255438
  br i1 %b.byte.range439, label %b.byte_ok440, label %b.byte_err441

b.new.buf.len413:                                 ; preds = %str_overflow_abort414, %b.grow404
  %arena.cur415 = call ptr @dva_arena_current()
  %b.new.buf416 = call ptr @dva_arena_alloc(ptr %arena.cur415, i64 %sum411)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf416, ptr align 1 %b.data402, i64 %b.len398, i1 false)
  %b.grow.nul417 = getelementptr i8, ptr %b.new.buf416, i64 %b.len398
  store i8 0, ptr %b.grow.nul417, align 1
  %b.new.data.gep418 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load385, i32 0, i32 1
  store ptr %b.new.buf416, ptr %b.new.data.gep418, align 8
  %b.new.cap.gep419 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load385, i32 0, i32 2
  store i64 %b.new.cap409, ptr %b.new.cap.gep419, align 8
  br label %b.push_done406

str_overflow_abort414:                            ; preds = %b.grow404
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len413

b.byte_ok440:                                     ; preds = %b.byte_err441, %b.push_done406
  %b.byte.i8442 = trunc i64 %addtmp436 to i8
  %b.len443 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 0
  %b.len444 = load i64, ptr %b.len443, align 8
  %b.cap445 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 2
  %b.cap446 = load i64, ptr %b.cap445, align 8
  %b.data447 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 1
  %b.data448 = load ptr, ptr %b.data447, align 8
  %b.needs.grow449 = icmp eq i64 %b.len444, %b.cap446
  br i1 %b.needs.grow449, label %b.grow450, label %b.nogrow451

b.byte_err441:                                    ; preds = %b.push_done406
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok440

b.grow450:                                        ; preds = %b.byte_ok440
  %b.cap2453 = mul i64 %b.cap446, 2
  %b.cap.small454 = icmp slt i64 %b.cap2453, 16
  %b.new.cap455 = select i1 %b.cap.small454, i64 16, i64 %b.cap2453
  %b.new.buf.len456 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap455, i64 1)
  %sum457 = extractvalue { i64, i1 } %b.new.buf.len456, 0
  %ovf458 = extractvalue { i64, i1 } %b.new.buf.len456, 1
  br i1 %ovf458, label %str_overflow_abort460, label %b.new.buf.len459

b.nogrow451:                                      ; preds = %b.byte_ok440
  br label %b.push_done452

b.push_done452:                                   ; preds = %b.nogrow451, %b.new.buf.len459
  %b.cur.data466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 1
  %b.cur.data467 = load ptr, ptr %b.cur.data466, align 8
  %b.cur.len468 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 0
  %b.cur.len469 = load i64, ptr %b.cur.len468, align 8
  %b.byte.gep470 = getelementptr i8, ptr %b.cur.data467, i64 %b.cur.len469
  store i8 %b.byte.i8442, ptr %b.byte.gep470, align 1
  %b.next.len471 = add i64 %b.cur.len469, 1
  %b.nul472 = getelementptr i8, ptr %b.cur.data467, i64 %b.next.len471
  store i8 0, ptr %b.nul472, align 1
  %b.len.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 0
  store i64 %b.next.len471, ptr %b.len.gep473, align 8
  %var.load474 = load ptr, ptr %var.b285, align 8
  %b.freeze.len475 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load474, i32 0, i32 0
  %b.freeze.len476 = load i64, ptr %b.freeze.len475, align 8
  %b.freeze.data477 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load474, i32 0, i32 1
  %b.freeze.data478 = load ptr, ptr %b.freeze.data477, align 8
  %b.freeze.arena479 = call ptr @dva_arena_current()
  %b.freeze.nc.gep480 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena479, i32 0, i32 1
  %b.freeze.nc481 = load i64, ptr %b.freeze.nc.gep480, align 8
  %b.freeze.has.chunk482 = icmp sgt i64 %b.freeze.nc481, 0
  br i1 %b.freeze.has.chunk482, label %b.freeze.check483, label %b.freeze.done485

b.new.buf.len459:                                 ; preds = %str_overflow_abort460, %b.grow450
  %arena.cur461 = call ptr @dva_arena_current()
  %b.new.buf462 = call ptr @dva_arena_alloc(ptr %arena.cur461, i64 %sum457)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf462, ptr align 1 %b.data448, i64 %b.len444, i1 false)
  %b.grow.nul463 = getelementptr i8, ptr %b.new.buf462, i64 %b.len444
  store i8 0, ptr %b.grow.nul463, align 1
  %b.new.data.gep464 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 1
  store ptr %b.new.buf462, ptr %b.new.data.gep464, align 8
  %b.new.cap.gep465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 2
  store i64 %b.new.cap455, ptr %b.new.cap.gep465, align 8
  br label %b.push_done452

str_overflow_abort460:                            ; preds = %b.grow450
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len459

b.freeze.check483:                                ; preds = %b.push_done452
  %b.freeze.last.idx486 = sub i64 %b.freeze.nc481, 1
  %b.freeze.chunks.gep487 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena479, i32 0, i32 3
  %b.freeze.chunk.slot488 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep487, i64 0, i64 %b.freeze.last.idx486
  %b.freeze.last.chunk489 = load ptr, ptr %b.freeze.chunk.slot488, align 8
  %b.freeze.off.gep490 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena479, i32 0, i32 2
  %b.freeze.off491 = load i64, ptr %b.freeze.off.gep490, align 8
  %b.freeze.bump492 = getelementptr i8, ptr %b.freeze.last.chunk489, i64 %b.freeze.off491
  %b.freeze.cap.gep493 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena479, i32 0, i32 0
  %b.freeze.cap494 = load i64, ptr %b.freeze.cap.gep493, align 8
  %b.freeze.chunk.end495 = getelementptr i8, ptr %b.freeze.last.chunk489, i64 %b.freeze.cap494
  %b.freeze.ge.chunk496 = icmp uge ptr %b.freeze.data478, %b.freeze.last.chunk489
  %b.freeze.lt.end497 = icmp ult ptr %b.freeze.data478, %b.freeze.chunk.end495
  %b.freeze.in.chunk498 = and i1 %b.freeze.ge.chunk496, %b.freeze.lt.end497
  %b.freeze.ge.bump499 = icmp uge ptr %b.freeze.data478, %b.freeze.bump492
  %b.freeze.reaped500 = and i1 %b.freeze.in.chunk498, %b.freeze.ge.bump499
  br i1 %b.freeze.reaped500, label %b.freeze.copy484, label %b.freeze.done485

b.freeze.copy484:                                 ; preds = %b.freeze.check483
  %arena.cur501 = call ptr @dva_arena_current()
  %b.freeze.fresh502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 %b.freeze.len476)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh502, ptr align 1 %b.freeze.data478, i64 %b.freeze.len476, i1 false)
  br label %b.freeze.done485

b.freeze.done485:                                 ; preds = %b.freeze.copy484, %b.freeze.check483, %b.push_done452
  %b.freeze.data503 = phi ptr [ %b.freeze.data478, %b.push_done452 ], [ %b.freeze.data478, %b.freeze.check483 ], [ %b.freeze.fresh502, %b.freeze.copy484 ]
  %arena.cur504 = call ptr @dva_arena_current()
  %builder.freeze505 = call ptr @dva_arena_alloc(ptr %arena.cur504, i64 16)
  %str.build.len.gep506 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze505, i32 0, i32 0
  store i64 %b.freeze.len476, ptr %str.build.len.gep506, align 8
  %str.build.data.gep507 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze505, i32 0, i32 1
  store ptr %b.freeze.data503, ptr %str.build.data.gep507, align 8
  %b.freeze.rst.len508 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load474, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len508, align 8
  %b.freeze.rst.data509 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load474, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data509, align 8
  %b.freeze.rst.cap510 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load474, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap510, align 8
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
  %choice.res119 = phi i64 [ 0, %choice.then52 ], [ %var.load118, %loop.exit.2 ]
  ret i64 %choice.res119

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

loop.exit.2:                                      ; preds = %b.len_ok111, %choice.then96, %choice.exit88, %loop.exit.nat.2
  %var.load118 = load i64, ptr %"var.n'", align 8
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
  %var.load94 = load i64, ptr %var.n, align 8
  %cmptmp95 = icmp eq i64 %var.load94, 0
  br i1 %cmptmp95, label %choice.then96, label %choice.else97

choice.exit73:                                    ; preds = %choice.exit98
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
  %var.load90 = load i32, ptr %var.errno_val, align 4
  %coerce.sext91 = sext i32 %var.load90 to i64
  %fld.gep92 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load89, i32 0, i32 4
  store i64 %coerce.sext91, ptr %fld.gep92, align 8
  %var.load93 = load i64, ptr %var.n, align 8
  store i64 %var.load93, ptr %"var.n'", align 8
  br label %loop.exit.2

choice.then96:                                    ; preds = %choice.else72
  %var.load99 = load ptr, ptr %var.r, align 8
  %fld.gep100 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load99, i32 0, i32 5
  store i1 true, ptr %fld.gep100, align 1
  %var.load101 = load ptr, ptr %var.r, align 8
  %fld.gep102 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load101, i32 0, i32 4
  store i64 0, ptr %fld.gep102, align 8
  store i64 0, ptr %"var.n'", align 8
  br label %loop.exit.2

choice.else97:                                    ; preds = %choice.else72
  %var.load103 = load i64, ptr %var.cur, align 8
  %var.load104 = load i64, ptr %var.n, align 8
  %addtmp105 = add i64 %var.load103, %var.load104
  %b.load106 = load ptr, ptr %var.buf, align 8
  %b.cap107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 2
  %b.cap108 = load i64, ptr %b.cap107, align 8
  %b.len.neg109 = icmp slt i64 %addtmp105, 0
  br i1 %b.len.neg109, label %b.len_oob112, label %b.len_big_check110

choice.exit98:                                    ; No predecessors!
  br label %choice.exit73

b.len_big_check110:                               ; preds = %choice.else97
  %b.len.big113 = icmp sgt i64 %addtmp105, %b.cap108
  br i1 %b.len.big113, label %b.len_oob112, label %b.len_ok111

b.len_ok111:                                      ; preds = %b.len_oob112, %b.len_big_check110
  %b.len.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 0
  store i64 %addtmp105, ptr %b.len.gep114, align 8
  %var.load115 = load ptr, ptr %var.r, align 8
  %fld.gep116 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load115, i32 0, i32 4
  store i64 0, ptr %fld.gep116, align 8
  %var.load117 = load i64, ptr %var.n, align 8
  store i64 %var.load117, ptr %"var.n'", align 8
  br label %loop.exit.2

b.len_oob112:                                     ; preds = %b.len_big_check110, %choice.else97
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok111
}

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
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

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
  %tag21 = load i64, ptr null, align 8
  %is_pos22 = icmp ne i64 %tag21, 0
  %pay.ptr23 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche24 = select i1 %is_pos22, ptr %pay.ptr23, ptr null
  ret ptr %ret.niche24

choice.exit20:                                    ; preds = %ret.dead25, %choice.exit8
  %var.load26 = load ptr, ptr %var.r, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load26, i32 0, i32 1
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %b.len29 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load28, i32 0, i32 0
  %b.len30 = load i64, ptr %b.len29, align 8
  %var.load31 = load ptr, ptr %var.r, align 8
  %fld.gep32 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load31, i32 0, i32 2
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %subtmp = sub i64 %b.len30, %fld.load33
  store i64 %subtmp, ptr %var.avail, align 8
  %var.load34 = load i64, ptr %var.avail, align 8
  %var.load35 = load i64, ptr %var.max, align 8
  %cmptmp36 = icmp slt i64 %var.load34, %var.load35
  br i1 %cmptmp36, label %choice.then37, label %choice.else

ret.dead25:                                       ; No predecessors!
  br label %choice.exit20

choice.then37:                                    ; preds = %choice.exit20
  %var.load39 = load i64, ptr %var.avail, align 8
  br label %choice.exit38

choice.else:                                      ; preds = %choice.exit20
  %var.load40 = load i64, ptr %var.max, align 8
  br label %choice.exit38

choice.exit38:                                    ; preds = %choice.else, %choice.then37
  %choice.res = phi i64 [ %var.load39, %choice.then37 ], [ %var.load40, %choice.else ]
  store i64 %choice.res, ptr %var.take, align 8
  %var.load41 = load i64, ptr %var.take, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load41, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load41
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len42

b.buf.len42:                                      ; preds = %str_overflow_abort, %choice.exit38
  %arena.cur43 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.res, align 8
  %var.load44 = load i64, ptr %var.take, align 8
  %cmptmp45 = icmp sgt i64 %var.load44, 0
  br i1 %cmptmp45, label %choice.then46, label %choice.exit47

str_overflow_abort:                               ; preds = %choice.exit38
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len42

choice.then46:                                    ; preds = %b.buf.len42
  %var.load48 = load ptr, ptr %var.res, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 1
  %b.ptr49 = load ptr, ptr %b.ptr, align 8
  %var.load50 = load ptr, ptr %var.r, align 8
  %fld.gep51 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load50, i32 0, i32 1
  %fld.load52 = load ptr, ptr %fld.gep51, align 8
  %b.ptr53 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load52, i32 0, i32 1
  %b.ptr54 = load ptr, ptr %b.ptr53, align 8
  %var.load55 = load ptr, ptr %var.r, align 8
  %fld.gep56 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load55, i32 0, i32 2
  %fld.load57 = load i64, ptr %fld.gep56, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr54 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load57
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load58 = load i64, ptr %var.take, align 8
  %raw.int = ptrtoint ptr %b.ptr49 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.exit47:                                    ; preds = %addr_ok66, %b.buf.len42
  %var.load70 = load i64, ptr %var.take, align 8
  %b.load = load ptr, ptr %var.res, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap71 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load70, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check:                                   ; preds = %choice.then46
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then46
  %raw.int60 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int61 = and i64 %raw.int60, 281474976710655
  %raw.clean.ptr62 = inttoptr i64 %raw.clean.int61 to ptr
  %addr.tag63 = lshr i64 %raw.int60, 48
  %addr.immortal64 = icmp eq i64 %addr.tag63, 0
  br i1 %addr.immortal64, label %addr_ok66, label %addr_gen_check65

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check65:                                 ; preds = %addr_ok
  %arena.cur68 = call ptr @dva_arena_current()
  %tag.valid69 = call i1 @dva_arena_validate_tag(ptr %arena.cur68, i64 %addr.tag63)
  br i1 %tag.valid69, label %addr_ok66, label %addr_stale67

addr_ok66:                                        ; preds = %addr_stale67, %addr_gen_check65, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr62, i64 %var.load58, i1 false)
  br label %choice.exit47

addr_stale67:                                     ; preds = %addr_gen_check65
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok66

b.len_big_check:                                  ; preds = %choice.exit47
  %b.len.big = icmp sgt i64 %var.load70, %b.cap71
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load70, ptr %b.len.gep72, align 8
  %var.load73 = load ptr, ptr %var.r, align 8
  %var.load74 = load ptr, ptr %var.r, align 8
  %fld.gep75 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load74, i32 0, i32 2
  %fld.load76 = load i64, ptr %fld.gep75, align 8
  %var.load77 = load i64, ptr %var.take, align 8
  %addtmp78 = add i64 %fld.load76, %var.load77
  %fld.gep79 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load73, i32 0, i32 2
  store i64 %addtmp78, ptr %fld.gep79, align 8
  %var.load80 = load ptr, ptr %var.res, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load80, i32 0, i32 0
  %b.freeze.len81 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load80, i32 0, i32 1
  %b.freeze.data82 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit47
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data82, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data82, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data82, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur83 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 %b.freeze.len81)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data82, i64 %b.freeze.len81, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data84 = phi ptr [ %b.freeze.data82, %b.len_ok ], [ %b.freeze.data82, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur85 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len81, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data84, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load80, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load80, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load80, i32 0, i32 2
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
  %loop.step.3 = alloca i64, align 8
  %loop.idx.3 = alloca i64, align 8
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
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

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
  store i64 0, ptr %loop.idx.3, align 8
  br label %loop.header.3

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

loop.header.3:                                    ; preds = %loop.latch.3, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.3, align 8
  br label %loop.body.3

loop.body.3:                                      ; preds = %loop.header.3
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.3, align 8
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

loop.exit.nat.3:                                  ; No predecessors!
  br label %loop.exit.3

loop.latch.3:                                     ; preds = %choice.exit98, %choice.then112
  %step.val = load i64, ptr %loop.step.3, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.3, align 8
  br label %loop.header.3

loop.exit.3:                                      ; preds = %choice.then120, %choice.exit113, %choice.then68, %loop.exit.nat.3
  %var.load141 = load ptr, ptr %var.res_b, align 8
  %b.len142 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load141, i32 0, i32 0
  %b.len143 = load i64, ptr %b.len142, align 8
  %cmptmp144 = icmp eq i64 %b.len143, 0
  br i1 %cmptmp144, label %choice.then145, label %choice.exit146

choice.then68:                                    ; preds = %loop.body.3
  br label %loop.exit.3

choice.exit69:                                    ; preds = %loop.body.3
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
  %var.load118 = load i64, ptr %var.n, align 8
  %cmptmp119 = icmp eq i64 %var.load118, 0
  br i1 %cmptmp119, label %choice.then120, label %choice.else121

choice.exit98:                                    ; preds = %choice.exit122
  br label %loop.latch.3

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
  br label %loop.latch.3

choice.exit113:                                   ; preds = %addr_ok106
  %var.load114 = load ptr, ptr %var.r, align 8
  %var.load115 = load i32, ptr %var.errno_val, align 4
  %coerce.sext116 = sext i32 %var.load115 to i64
  %fld.gep117 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load114, i32 0, i32 4
  store i64 %coerce.sext116, ptr %fld.gep117, align 8
  br label %loop.exit.3

choice.then120:                                   ; preds = %choice.else97
  %var.load123 = load ptr, ptr %var.r, align 8
  %fld.gep124 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load123, i32 0, i32 5
  store i1 true, ptr %fld.gep124, align 1
  %var.load125 = load ptr, ptr %var.r, align 8
  %fld.gep126 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load125, i32 0, i32 4
  store i64 0, ptr %fld.gep126, align 8
  br label %loop.exit.3

choice.else121:                                   ; preds = %choice.else97
  %var.load127 = load ptr, ptr %var.r, align 8
  %fld.gep128 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load127, i32 0, i32 4
  store i64 0, ptr %fld.gep128, align 8
  %var.load129 = load i64, ptr %var.cur82, align 8
  %var.load130 = load i64, ptr %var.n, align 8
  %addtmp131 = add i64 %var.load129, %var.load130
  %b.load132 = load ptr, ptr %var.res_b, align 8
  %b.cap133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 2
  %b.cap134 = load i64, ptr %b.cap133, align 8
  %b.len.neg135 = icmp slt i64 %addtmp131, 0
  br i1 %b.len.neg135, label %b.len_oob138, label %b.len_big_check136

choice.exit122:                                   ; preds = %b.len_ok137
  br label %choice.exit98

b.len_big_check136:                               ; preds = %choice.else121
  %b.len.big139 = icmp sgt i64 %addtmp131, %b.cap134
  br i1 %b.len.big139, label %b.len_oob138, label %b.len_ok137

b.len_ok137:                                      ; preds = %b.len_oob138, %b.len_big_check136
  %b.len.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 0
  store i64 %addtmp131, ptr %b.len.gep140, align 8
  br label %choice.exit122

b.len_oob138:                                     ; preds = %b.len_big_check136, %choice.else121
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok137

choice.then145:                                   ; preds = %loop.exit.3
  %tag147 = load i64, ptr null, align 8
  %is_pos148 = icmp ne i64 %tag147, 0
  %pay.ptr149 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche150 = select i1 %is_pos148, ptr %pay.ptr149, ptr null
  ret ptr %ret.niche150

choice.exit146:                                   ; preds = %ret.dead151, %loop.exit.3
  %var.load152 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load152, i32 0, i32 0
  %b.freeze.len153 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load152, i32 0, i32 1
  %b.freeze.data154 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead151:                                      ; No predecessors!
  br label %choice.exit146

b.freeze.check:                                   ; preds = %choice.exit146
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data154, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data154, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data154, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur155 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 %b.freeze.len153)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data154, i64 %b.freeze.len153, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit146
  %b.freeze.data156 = phi ptr [ %b.freeze.data154, %choice.exit146 ], [ %b.freeze.data154, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur157 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len153, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data156, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load152, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load152, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load152, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"io::read_byte"(ptr %0) #1 {
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
  %arena.cur = call ptr @dva_arena_current()
  %ram.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  ret ptr %ram.alloc

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
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit16
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.sext = sext i8 %raw.load to i64
  %bandtmp = and i64 %coerce.sext, 255
  store i64 %bandtmp, ptr %var.b, align 8
  %var.load25 = load ptr, ptr %var.r, align 8
  %var.load26 = load ptr, ptr %var.r, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %addtmp29 = add i64 %fld.load28, 1
  %fld.gep30 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 2
  store i64 %addtmp29, ptr %fld.gep30, align 8
  %arena.cur31 = call ptr @dva_arena_current()
  %ram.alloc32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  %tag.gep33 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc32, i32 0, i32 0
  store i64 1, ptr %tag.gep33, align 8
  %pay.gep34 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc32, i32 0, i32 1
  %var.load35 = load i64, ptr %var.b, align 8
  %arena.cur36 = call ptr @dva_arena_current()
  %pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 8)
  store i64 %var.load35, ptr %pay.alloc, align 8
  store ptr %pay.alloc, ptr %pay.gep34, align 8
  ret ptr %ram.alloc32

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define ptr @"io::read_until"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.cur131 = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var._46 = alloca i64, align 8
  %var._i45 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.5 = alloca i64, align 8
  %loop.idx.5 = alloca i64, align 8
  %"var.found_idx'" = alloca i64, align 8
  %var.scan_count = alloca i64, align 8
  %var.in_buf = alloca i64, align 8
  %var.rem_budget = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.4 = alloca i64, align 8
  %loop.idx.4 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.exit206, %choice.then
  %choice.res259 = phi ptr [ null, %choice.then ], [ %choice.res258, %choice.exit206 ]
  ret ptr %choice.res259

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
  store i64 0, ptr %loop.idx.4, align 8
  br label %loop.header.4

str_overflow_abort:                               ; preds = %choice.else
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

loop.header.4:                                    ; preds = %loop.latch.4, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.4, align 8
  br label %loop.body.4

loop.body.4:                                      ; preds = %loop.header.4
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.4, align 8
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

loop.exit.nat.4:                                  ; No predecessors!
  br label %loop.exit.4

loop.latch.4:                                     ; preds = %choice.exit68
  %step.val201 = load i64, ptr %loop.step.4, align 8
  %loop.next202 = add i64 %counter.load, %step.val201
  store i64 %loop.next202, ptr %loop.idx.4, align 8
  br label %loop.header.4

loop.exit.4:                                      ; preds = %choice.then199, %b.len_ok, %choice.then23, %choice.then15, %loop.exit.nat.4
  %var.load203 = load i1, ptr %"var.done'", align 1
  br i1 %var.load203, label %choice.then204, label %choice.else205

choice.then10:                                    ; preds = %loop.body.4
  %var.load12 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load12)
  store i64 %call.res, ptr %var.n, align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.exit11:                                    ; preds = %choice.exit16, %loop.body.4
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
  br label %loop.exit.4

choice.exit16:                                    ; preds = %choice.then10
  br label %choice.exit11

choice.then23:                                    ; preds = %choice.exit11
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.4

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
  store i64 0, ptr %loop.idx.5, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.5

loop.header.5:                                    ; preds = %loop.latch.5, %choice.exit39
  %counter.load43 = load i64, ptr %loop.idx.5, align 8
  %loop.cond = icmp slt i64 %counter.load43, %var.load42
  br i1 %loop.cond, label %loop.body.5, label %loop.exit.nat.5

loop.body.5:                                      ; preds = %loop.header.5
  %loop.rel.i44 = sub i64 %counter.load43, 0
  store i64 1, ptr %loop.step.5, align 8
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

loop.exit.nat.5:                                  ; preds = %loop.header.5
  br label %loop.exit.5

loop.latch.5:                                     ; preds = %choice.exit62
  %step.val = load i64, ptr %loop.step.5, align 8
  %loop.next = add i64 %counter.load43, %step.val
  store i64 %loop.next, ptr %loop.idx.5, align 8
  br label %loop.header.5

loop.exit.5:                                      ; preds = %choice.then61, %loop.exit.nat.5
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load64 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp65 = icmp sge i64 %var.load64, 0
  br i1 %cmptmp65, label %choice.then66, label %choice.else67

addr_gen_check:                                   ; preds = %loop.body.5
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.5
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
  br label %loop.exit.5

choice.exit62:                                    ; preds = %addr_ok
  br label %loop.latch.5

choice.then66:                                    ; preds = %loop.exit.5
  %var.load69 = load ptr, ptr %var.out, align 8
  %b.len70 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load69, i32 0, i32 0
  %b.len71 = load i64, ptr %b.len70, align 8
  store i64 %b.len71, ptr %var.cur, align 8
  %var.load72 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp73 = icmp sgt i64 %var.load72, 0
  br i1 %cmptmp73, label %choice.then74, label %choice.exit75

choice.else67:                                    ; preds = %loop.exit.5
  %var.load128 = load ptr, ptr %var.out, align 8
  %b.len129 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load128, i32 0, i32 0
  %b.len130 = load i64, ptr %b.len129, align 8
  store i64 %b.len130, ptr %var.cur131, align 8
  %var.load132 = load i64, ptr %var.scan_count, align 8
  %cmptmp133 = icmp sgt i64 %var.load132, 0
  br i1 %cmptmp133, label %choice.then134, label %choice.exit135

choice.exit68:                                    ; preds = %choice.exit200
  br label %loop.latch.4

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
  br label %loop.exit.4

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
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.4

choice.exit200:                                   ; preds = %b.len_ok183
  br label %choice.exit68

choice.then204:                                   ; preds = %loop.exit.4
  %var.load207 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load207, i32 0, i32 0
  %b.freeze.len208 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load207, i32 0, i32 1
  %b.freeze.data209 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else205:                                   ; preds = %loop.exit.4
  %var.load213 = load ptr, ptr %var.out, align 8
  %b.len214 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load213, i32 0, i32 0
  %b.len215 = load i64, ptr %b.len214, align 8
  %cmptmp216 = icmp sgt i64 %b.len215, 0
  br i1 %cmptmp216, label %choice.then217, label %choice.else218

choice.exit206:                                   ; preds = %choice.exit219, %b.freeze.done
  %choice.res258 = phi ptr [ %builder.freeze, %b.freeze.done ], [ %choice.res257, %choice.exit219 ]
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.then204
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data209, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data209, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data209, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur210 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 %b.freeze.len208)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data209, i64 %b.freeze.len208, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then204
  %b.freeze.data211 = phi ptr [ %b.freeze.data209, %choice.then204 ], [ %b.freeze.data209, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur212 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len208, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data211, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load207, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load207, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load207, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit206

choice.then217:                                   ; preds = %choice.else205
  %var.load220 = load ptr, ptr %var.out, align 8
  %b.freeze.len221 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load220, i32 0, i32 0
  %b.freeze.len222 = load i64, ptr %b.freeze.len221, align 8
  %b.freeze.data223 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load220, i32 0, i32 1
  %b.freeze.data224 = load ptr, ptr %b.freeze.data223, align 8
  %b.freeze.arena225 = call ptr @dva_arena_current()
  %b.freeze.nc.gep226 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena225, i32 0, i32 1
  %b.freeze.nc227 = load i64, ptr %b.freeze.nc.gep226, align 8
  %b.freeze.has.chunk228 = icmp sgt i64 %b.freeze.nc227, 0
  br i1 %b.freeze.has.chunk228, label %b.freeze.check229, label %b.freeze.done231

choice.else218:                                   ; preds = %choice.else205
  br label %choice.exit219

choice.exit219:                                   ; preds = %choice.else218, %b.freeze.done231
  %choice.res257 = phi ptr [ %builder.freeze251, %b.freeze.done231 ], [ null, %choice.else218 ]
  br label %choice.exit206

b.freeze.check229:                                ; preds = %choice.then217
  %b.freeze.last.idx232 = sub i64 %b.freeze.nc227, 1
  %b.freeze.chunks.gep233 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena225, i32 0, i32 3
  %b.freeze.chunk.slot234 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep233, i64 0, i64 %b.freeze.last.idx232
  %b.freeze.last.chunk235 = load ptr, ptr %b.freeze.chunk.slot234, align 8
  %b.freeze.off.gep236 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena225, i32 0, i32 2
  %b.freeze.off237 = load i64, ptr %b.freeze.off.gep236, align 8
  %b.freeze.bump238 = getelementptr i8, ptr %b.freeze.last.chunk235, i64 %b.freeze.off237
  %b.freeze.cap.gep239 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena225, i32 0, i32 0
  %b.freeze.cap240 = load i64, ptr %b.freeze.cap.gep239, align 8
  %b.freeze.chunk.end241 = getelementptr i8, ptr %b.freeze.last.chunk235, i64 %b.freeze.cap240
  %b.freeze.ge.chunk242 = icmp uge ptr %b.freeze.data224, %b.freeze.last.chunk235
  %b.freeze.lt.end243 = icmp ult ptr %b.freeze.data224, %b.freeze.chunk.end241
  %b.freeze.in.chunk244 = and i1 %b.freeze.ge.chunk242, %b.freeze.lt.end243
  %b.freeze.ge.bump245 = icmp uge ptr %b.freeze.data224, %b.freeze.bump238
  %b.freeze.reaped246 = and i1 %b.freeze.in.chunk244, %b.freeze.ge.bump245
  br i1 %b.freeze.reaped246, label %b.freeze.copy230, label %b.freeze.done231

b.freeze.copy230:                                 ; preds = %b.freeze.check229
  %arena.cur247 = call ptr @dva_arena_current()
  %b.freeze.fresh248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 %b.freeze.len222)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh248, ptr align 1 %b.freeze.data224, i64 %b.freeze.len222, i1 false)
  br label %b.freeze.done231

b.freeze.done231:                                 ; preds = %b.freeze.copy230, %b.freeze.check229, %choice.then217
  %b.freeze.data249 = phi ptr [ %b.freeze.data224, %choice.then217 ], [ %b.freeze.data224, %b.freeze.check229 ], [ %b.freeze.fresh248, %b.freeze.copy230 ]
  %arena.cur250 = call ptr @dva_arena_current()
  %builder.freeze251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 16)
  %str.build.len.gep252 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze251, i32 0, i32 0
  store i64 %b.freeze.len222, ptr %str.build.len.gep252, align 8
  %str.build.data.gep253 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze251, i32 0, i32 1
  store ptr %b.freeze.data249, ptr %str.build.data.gep253, align 8
  %b.freeze.rst.len254 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load220, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len254, align 8
  %b.freeze.rst.data255 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load220, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data255, align 8
  %b.freeze.rst.cap256 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load220, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap256, align 8
  br label %choice.exit219
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
  br i1 %cmptmp, label %and.6.then, label %and.6.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.6.then:                                       ; preds = %str_ok
  %var.load7 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

and.6.else:                                       ; preds = %str_ok
  br label %and.6.exit

and.6.exit:                                       ; preds = %and.6.else, %idx_ok
  %and.6.phi = phi i1 [ %cmptmp19, %idx_ok ], [ %cmptmp, %and.6.else ]
  br i1 %and.6.phi, label %choice.then20, label %choice.else21

str_gen_check12:                                  ; preds = %and.6.then
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %and.6.then
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
  br label %and.6.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then20:                                    ; preds = %and.6.exit
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

choice.else21:                                    ; preds = %and.6.exit
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
