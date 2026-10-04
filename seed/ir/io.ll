; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64 }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@"var.io::STDIN" = global i64 0
@"var.io::STDOUT" = global i64 0
@"var.io::STDERR" = global i64 0
@clo.const = internal constant { ptr, ptr } { ptr @"io::reader", ptr null }
@"var.io::reader" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"io::reader_with_cap", ptr null }
@"var.io::reader_with_cap" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"io::write", ptr null }
@"var.io::write" = global ptr null
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"io::#refill", ptr null }
@"var.io::#refill" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"io::read", ptr null }
@"var.io::read" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"io::read_all", ptr null }
@"var.io::read_all" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"io::read_byte", ptr null }
@"var.io::read_byte" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"io::read_until", ptr null }
@"var.io::read_until" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.8 = internal constant { ptr, ptr } { ptr @"io::read_line", ptr null }
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

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @strlen(ptr)

declare i32 @memcmp(ptr, ptr, i64)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_io() #1 {
entry:
  store i64 0, ptr @"var.io::STDIN", align 8
  store i64 1, ptr @"var.io::STDOUT", align 8
  store i64 2, ptr @"var.io::STDERR", align 8
  store ptr @clo.const, ptr @"var.io::reader", align 8
  store ptr @clo.const.1, ptr @"var.io::reader_with_cap", align 8
  store ptr @clo.const.2, ptr @"var.io::write", align 8
  store ptr @clo.const.3, ptr @"var.io::#refill", align 8
  store ptr @clo.const.4, ptr @"var.io::read", align 8
  store ptr @clo.const.5, ptr @"var.io::read_all", align 8
  store ptr @clo.const.6, ptr @"var.io::read_byte", align 8
  store ptr @clo.const.7, ptr @"var.io::read_until", align 8
  store ptr @clo.const.8, ptr @"var.io::read_line", align 8
  ret void
}

declare i32 @open(ptr, i32)

declare i32 @close(i32)

declare i64 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @waitpid(i64, ptr, i64)

declare i64 @read(i32, ptr, i64)

declare i64 @lseek(i32, i64, i64)

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
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %builder.new, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld5, align 8
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
  %arena.cur6 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load2, ptr %rec.fld, align 8
  %rec.fld7 = getelementptr inbounds { i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %builder.new, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld8, align 8
  ret ptr %rec.alloc

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len4
}

define void @"io::write"(i64 %0, ptr %1) #1 {
entry:
  %var._ = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store ptr %1, ptr %var.s, align 8
  %var.load = load i64, ptr %var.fd, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %arg.str.ptr2 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr3 = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %arg.str.ptr4 = load i64, ptr %arg.str.ptr3, align 8
  %arg.str.ptr5 = and i64 %arg.str.ptr4, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr2, i64 %arg.str.ptr5
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
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr5, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len9

nulmerge:                                         ; preds = %nulcopy.len9, %arg.str.ptr8
  %arg.str.ptr10 = phi ptr [ %arg.str.ptr2, %arg.str.ptr8 ], [ %nulcopy.buf, %nulcopy.len9 ]
  %var.load11 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %str.len.query12 = load i64, ptr %str.len.query, align 8
  %str.len.query13 = and i64 %str.len.query12, 281474976710655
  %str.tag14 = lshr i64 %str.len.query12, 48
  %str.immortal15 = icmp eq i64 %str.tag14, 0
  br i1 %str.immortal15, label %str_ok17, label %str_gen_check16

nulcopy.len9:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr2, i64 %arg.str.ptr5, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr5
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len9

str_gen_check16:                                  ; preds = %nulmerge
  %arena.gen19 = call ptr @dva_arena_current()
  %arena.gen20 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen19, i32 0, i32 4
  %arena.gen21 = load i64, ptr %arena.gen20, align 8
  %str.tag.match22 = icmp eq i64 %str.tag14, %arena.gen21
  br i1 %str.tag.match22, label %str_ok17, label %str_stale18

str_ok17:                                         ; preds = %str_stale18, %str_gen_check16, %nulmerge
  %coerce.trunc = trunc i64 %var.load to i32
  %call.res = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr10, i64 %str.len.query13)
  store i64 %call.res, ptr %var._, align 8
  ret void

str_stale18:                                      ; preds = %str_gen_check16
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define internal i64 @"io::#refill"(ptr %0) #1 {
entry:
  %var.errno_val = alloca i32, align 4
  %var.n = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.0 = alloca i64, align 8
  %loop.idx.0 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.space = alloca i64, align 8
  %var.read_cap = alloca i64, align 8
  %var.cap = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.buf, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %cmptmp = icmp sgt i64 %fld.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.buf, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %subtmp = sub i64 %b.len5, %fld.load8
  store i64 %subtmp, ptr %var.rem, align 8
  %var.load9 = load i64, ptr %var.rem, align 8
  %cmptmp10 = icmp sgt i64 %var.load9, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

choice.exit:                                      ; preds = %b.len_ok, %entry
  %var.load40 = load ptr, ptr %var.buf, align 8
  %ptr.int.l41 = ptrtoint ptr %var.load40 to i64
  %addtmp42 = add i64 %ptr.int.l41, 16
  %ptr.res43 = inttoptr i64 %addtmp42 to ptr
  %raw.int44 = ptrtoint ptr %ptr.res43 to i64
  %raw.clean.int45 = and i64 %raw.int44, 281474976710655
  %raw.clean.ptr46 = inttoptr i64 %raw.clean.int45 to ptr
  %addr.tag47 = lshr i64 %raw.int44, 48
  %addr.immortal48 = icmp eq i64 %addr.tag47, 0
  br i1 %addr.immortal48, label %addr_ok50, label %addr_gen_check49

choice.then11:                                    ; preds = %choice.then
  %var.load13 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 1
  %b.ptr14 = load ptr, ptr %b.ptr, align 8
  %var.load15 = load ptr, ptr %var.buf, align 8
  %b.ptr16 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 1
  %b.ptr17 = load ptr, ptr %b.ptr16, align 8
  %var.load18 = load ptr, ptr %var.r, align 8
  %fld.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load18, i32 0, i32 2
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

choice.exit12:                                    ; preds = %addr_ok30, %choice.then
  %var.load36 = load i64, ptr %var.rem, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load36, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check:                                   ; preds = %choice.then11
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen22 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen23 = load i64, ptr %arena.gen22, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen23
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then11
  %raw.int24 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int25 = and i64 %raw.int24, 281474976710655
  %raw.clean.ptr26 = inttoptr i64 %raw.clean.int25 to ptr
  %addr.tag27 = lshr i64 %raw.int24, 48
  %addr.immortal28 = icmp eq i64 %addr.tag27, 0
  br i1 %addr.immortal28, label %addr_ok30, label %addr_gen_check29

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check29:                                 ; preds = %addr_ok
  %arena.gen32 = call ptr @dva_arena_current()
  %arena.gen33 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen32, i32 0, i32 4
  %arena.gen34 = load i64, ptr %arena.gen33, align 8
  %addr.tag.match35 = icmp eq i64 %addr.tag27, %arena.gen34
  br i1 %addr.tag.match35, label %addr_ok30, label %addr_stale31

addr_ok30:                                        ; preds = %addr_stale31, %addr_gen_check29, %addr_ok
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr26, i64 %var.load21, i1 false)
  br label %choice.exit12

addr_stale31:                                     ; preds = %addr_gen_check29
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok30

b.len_big_check:                                  ; preds = %choice.exit12
  %b.len.big = icmp sgt i64 %var.load36, %b.cap37
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load36, ptr %b.len.gep, align 8
  %var.load38 = load ptr, ptr %var.r, align 8
  %fld.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load38, i32 0, i32 2
  store i64 0, ptr %fld.gep39, align 8
  br label %choice.exit

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit12
  %3 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

addr_gen_check49:                                 ; preds = %choice.exit
  %arena.gen52 = call ptr @dva_arena_current()
  %arena.gen53 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen52, i32 0, i32 4
  %arena.gen54 = load i64, ptr %arena.gen53, align 8
  %addr.tag.match55 = icmp eq i64 %addr.tag47, %arena.gen54
  br i1 %addr.tag.match55, label %addr_ok50, label %addr_stale51

addr_ok50:                                        ; preds = %addr_stale51, %addr_gen_check49, %choice.exit
  %raw.load = load volatile i64, ptr %raw.clean.ptr46, align 8
  store i64 %raw.load, ptr %var.cap, align 8
  %var.load56 = load i64, ptr %var.cap, align 8
  %cmptmp57 = icmp sgt i64 %var.load56, 0
  br i1 %cmptmp57, label %choice.then58, label %choice.else

addr_stale51:                                     ; preds = %addr_gen_check49
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok50

choice.then58:                                    ; preds = %addr_ok50
  %var.load60 = load i64, ptr %var.cap, align 8
  br label %choice.exit59

choice.else:                                      ; preds = %addr_ok50
  br label %choice.exit59

choice.exit59:                                    ; preds = %choice.else, %choice.then58
  %choice.res = phi i64 [ %var.load60, %choice.then58 ], [ 4096, %choice.else ]
  store i64 %choice.res, ptr %var.read_cap, align 8
  %var.load61 = load i64, ptr %var.read_cap, align 8
  %var.load62 = load ptr, ptr %var.buf, align 8
  %b.len63 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 0
  %b.len64 = load i64, ptr %b.len63, align 8
  %subtmp65 = sub i64 %var.load61, %b.len64
  store i64 %subtmp65, ptr %var.space, align 8
  %var.load66 = load i64, ptr %var.space, align 8
  %cmptmp67 = icmp sle i64 %var.load66, 0
  br i1 %cmptmp67, label %choice.then68, label %choice.else69

choice.then68:                                    ; preds = %choice.exit59
  br label %choice.exit70

choice.else69:                                    ; preds = %choice.exit59
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.0, align 8
  br label %loop.header.0

choice.exit70:                                    ; preds = %loop.exit.0, %choice.then68
  %choice.res127 = phi i64 [ 0, %choice.then68 ], [ %var.load126, %loop.exit.0 ]
  ret i64 %choice.res127

loop.header.0:                                    ; preds = %loop.latch.0, %choice.else69
  %counter.load = load i64, ptr %loop.idx.0, align 8
  br label %loop.body.0

loop.body.0:                                      ; preds = %loop.header.0
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.0, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load71 = load ptr, ptr %var.buf, align 8
  %b.len72 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 0
  %b.len73 = load i64, ptr %b.len72, align 8
  store i64 %b.len73, ptr %var.cur, align 8
  %var.load74 = load ptr, ptr %var.r, align 8
  %fld.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load74, i32 0, i32 0
  %fld.load76 = load i64, ptr %fld.gep75, align 8
  %var.load77 = load ptr, ptr %var.buf, align 8
  %b.ptr78 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load77, i32 0, i32 1
  %b.ptr79 = load ptr, ptr %b.ptr78, align 8
  %var.load80 = load i64, ptr %var.cur, align 8
  %ptr.int.l81 = ptrtoint ptr %b.ptr79 to i64
  %addtmp82 = add i64 %ptr.int.l81, %var.load80
  %ptr.res83 = inttoptr i64 %addtmp82 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res83 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load84 = load i64, ptr %var.space, align 8
  %coerce.trunc = trunc i64 %fld.load76 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load84)
  store i64 %call.res, ptr %var.n, align 8
  %var.load85 = load i64, ptr %var.n, align 8
  %cmptmp86 = icmp slt i64 %var.load85, 0
  br i1 %cmptmp86, label %choice.then87, label %choice.else88

loop.exit.nat.0:                                  ; No predecessors!
  br label %loop.exit.0

loop.latch.0:                                     ; preds = %choice.exit89, %choice.then106
  %step.val = load i64, ptr %loop.step.0, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.0, align 8
  br label %loop.header.0

loop.exit.0:                                      ; preds = %choice.exit112, %choice.exit107, %loop.exit.nat.0
  %var.load126 = load i64, ptr %"var.n'", align 8
  br label %choice.exit70

choice.then87:                                    ; preds = %loop.body.0
  %call.res90 = call ptr @__errno_location()
  %raw.int91 = ptrtoint ptr %call.res90 to i64
  %raw.clean.int92 = and i64 %raw.int91, 281474976710655
  %raw.clean.ptr93 = inttoptr i64 %raw.clean.int92 to ptr
  %addr.tag94 = lshr i64 %raw.int91, 48
  %addr.immortal95 = icmp eq i64 %addr.tag94, 0
  br i1 %addr.immortal95, label %addr_ok97, label %addr_gen_check96

choice.else88:                                    ; preds = %loop.body.0
  %var.load109 = load i64, ptr %var.n, align 8
  %cmptmp110 = icmp sgt i64 %var.load109, 0
  br i1 %cmptmp110, label %choice.then111, label %choice.exit112

choice.exit89:                                    ; No predecessors!
  br label %loop.latch.0

addr_gen_check96:                                 ; preds = %choice.then87
  %arena.gen99 = call ptr @dva_arena_current()
  %arena.gen100 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen99, i32 0, i32 4
  %arena.gen101 = load i64, ptr %arena.gen100, align 8
  %addr.tag.match102 = icmp eq i64 %addr.tag94, %arena.gen101
  br i1 %addr.tag.match102, label %addr_ok97, label %addr_stale98

addr_ok97:                                        ; preds = %addr_stale98, %addr_gen_check96, %choice.then87
  %raw.load103 = load volatile i32, ptr %raw.clean.ptr93, align 4
  store i32 %raw.load103, ptr %var.errno_val, align 4
  %var.load104 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load104 to i64
  %cmptmp105 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp105, label %choice.then106, label %choice.exit107

addr_stale98:                                     ; preds = %addr_gen_check96
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok97

choice.then106:                                   ; preds = %addr_ok97
  br label %loop.latch.0

choice.exit107:                                   ; preds = %addr_ok97
  %var.load108 = load i64, ptr %var.n, align 8
  store i64 %var.load108, ptr %"var.n'", align 8
  br label %loop.exit.0

choice.then111:                                   ; preds = %choice.else88
  %var.load113 = load i64, ptr %var.cur, align 8
  %var.load114 = load i64, ptr %var.n, align 8
  %addtmp115 = add i64 %var.load113, %var.load114
  %b.load116 = load ptr, ptr %var.buf, align 8
  %b.cap117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load116, i32 0, i32 2
  %b.cap118 = load i64, ptr %b.cap117, align 8
  %b.len.neg119 = icmp slt i64 %addtmp115, 0
  br i1 %b.len.neg119, label %b.len_oob122, label %b.len_big_check120

choice.exit112:                                   ; preds = %b.len_ok121, %choice.else88
  %var.load125 = load i64, ptr %var.n, align 8
  store i64 %var.load125, ptr %"var.n'", align 8
  br label %loop.exit.0

b.len_big_check120:                               ; preds = %choice.then111
  %b.len.big123 = icmp sgt i64 %addtmp115, %b.cap118
  br i1 %b.len.big123, label %b.len_oob122, label %b.len_ok121

b.len_ok121:                                      ; preds = %b.len_oob122, %b.len_big_check120
  %b.len.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load116, i32 0, i32 0
  store i64 %addtmp115, ptr %b.len.gep124, align 8
  br label %choice.exit112

b.len_oob122:                                     ; preds = %b.len_big_check120, %choice.then111
  %6 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok121
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"io::read"(ptr %0, i64 %1) #1 {
entry:
  %var.res = alloca ptr, align 8
  %var.take = alloca i64, align 8
  %var.avail = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.max = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.max, align 8
  %var.load = load i64, ptr %var.max, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load2 = load ptr, ptr %var.r, align 8
  %fld.gep3 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2, i32 0, i32 1
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %cmptmp6 = icmp sge i64 %fld.load, %b.len5
  br i1 %cmptmp6, label %choice.then7, label %choice.exit8

choice.exit:                                      ; preds = %choice.exit21, %choice.then
  %choice.res87 = phi ptr [ null, %choice.then ], [ %choice.res86, %choice.exit21 ]
  ret ptr %choice.res87

choice.then7:                                     ; preds = %choice.else
  %var.load9 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load9)
  store i64 %call.res, ptr %var._, align 8
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.then7, %choice.else
  %var.load10 = load ptr, ptr %var.r, align 8
  %fld.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %var.load13 = load ptr, ptr %var.r, align 8
  %fld.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %b.len16 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load15, i32 0, i32 0
  %b.len17 = load i64, ptr %b.len16, align 8
  %cmptmp18 = icmp slt i64 %fld.load12, %b.len17
  br i1 %cmptmp18, label %choice.then19, label %choice.else20

choice.then19:                                    ; preds = %choice.exit8
  %var.load22 = load ptr, ptr %var.r, align 8
  %fld.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 1
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %b.len25 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load24, i32 0, i32 0
  %b.len26 = load i64, ptr %b.len25, align 8
  %var.load27 = load ptr, ptr %var.r, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load27, i32 0, i32 2
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %subtmp = sub i64 %b.len26, %fld.load29
  store i64 %subtmp, ptr %var.avail, align 8
  %var.load30 = load i64, ptr %var.avail, align 8
  %var.load31 = load i64, ptr %var.max, align 8
  %cmptmp32 = icmp slt i64 %var.load30, %var.load31
  br i1 %cmptmp32, label %choice.then33, label %choice.else34

choice.else20:                                    ; preds = %choice.exit8
  br label %choice.exit21

choice.exit21:                                    ; preds = %choice.else20, %b.freeze.done
  %choice.res86 = phi ptr [ %builder.freeze, %b.freeze.done ], [ null, %choice.else20 ]
  br label %choice.exit

choice.then33:                                    ; preds = %choice.then19
  %var.load36 = load i64, ptr %var.avail, align 8
  br label %choice.exit35

choice.else34:                                    ; preds = %choice.then19
  %var.load37 = load i64, ptr %var.max, align 8
  br label %choice.exit35

choice.exit35:                                    ; preds = %choice.else34, %choice.then33
  %choice.res = phi i64 [ %var.load36, %choice.then33 ], [ %var.load37, %choice.else34 ]
  store i64 %choice.res, ptr %var.take, align 8
  %var.load38 = load i64, ptr %var.take, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load38, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load38
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len39

b.buf.len39:                                      ; preds = %str_overflow_abort, %choice.exit35
  %arena.cur40 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.res, align 8
  %var.load41 = load i64, ptr %var.take, align 8
  %cmptmp42 = icmp sgt i64 %var.load41, 0
  br i1 %cmptmp42, label %choice.then43, label %choice.exit44

str_overflow_abort:                               ; preds = %choice.exit35
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len39

choice.then43:                                    ; preds = %b.buf.len39
  %var.load45 = load ptr, ptr %var.res, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 1
  %b.ptr46 = load ptr, ptr %b.ptr, align 8
  %var.load47 = load ptr, ptr %var.r, align 8
  %fld.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load47, i32 0, i32 1
  %fld.load49 = load ptr, ptr %fld.gep48, align 8
  %b.ptr50 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load49, i32 0, i32 1
  %b.ptr51 = load ptr, ptr %b.ptr50, align 8
  %var.load52 = load ptr, ptr %var.r, align 8
  %fld.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 2
  %fld.load54 = load i64, ptr %fld.gep53, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr51 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load54
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load55 = load i64, ptr %var.take, align 8
  %raw.int = ptrtoint ptr %b.ptr46 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.exit44:                                    ; preds = %addr_ok64, %b.buf.len39
  %var.load70 = load i64, ptr %var.take, align 8
  %b.load = load ptr, ptr %var.res, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap71 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load70, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check:                                   ; preds = %choice.then43
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen56 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen57 = load i64, ptr %arena.gen56, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen57
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then43
  %raw.int58 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int59 = and i64 %raw.int58, 281474976710655
  %raw.clean.ptr60 = inttoptr i64 %raw.clean.int59 to ptr
  %addr.tag61 = lshr i64 %raw.int58, 48
  %addr.immortal62 = icmp eq i64 %addr.tag61, 0
  br i1 %addr.immortal62, label %addr_ok64, label %addr_gen_check63

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check63:                                 ; preds = %addr_ok
  %arena.gen66 = call ptr @dva_arena_current()
  %arena.gen67 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen66, i32 0, i32 4
  %arena.gen68 = load i64, ptr %arena.gen67, align 8
  %addr.tag.match69 = icmp eq i64 %addr.tag61, %arena.gen68
  br i1 %addr.tag.match69, label %addr_ok64, label %addr_stale65

addr_ok64:                                        ; preds = %addr_stale65, %addr_gen_check63, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr60, i64 %var.load55, i1 false)
  br label %choice.exit44

addr_stale65:                                     ; preds = %addr_gen_check63
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok64

b.len_big_check:                                  ; preds = %choice.exit44
  %b.len.big = icmp sgt i64 %var.load70, %b.cap71
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load70, ptr %b.len.gep72, align 8
  %var.load73 = load ptr, ptr %var.r, align 8
  %var.load74 = load ptr, ptr %var.r, align 8
  %fld.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load74, i32 0, i32 2
  %fld.load76 = load i64, ptr %fld.gep75, align 8
  %var.load77 = load i64, ptr %var.take, align 8
  %addtmp78 = add i64 %fld.load76, %var.load77
  %fld.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  store i64 %addtmp78, ptr %fld.gep79, align 8
  %var.load80 = load ptr, ptr %var.res, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load80, i32 0, i32 0
  %b.freeze.len81 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load80, i32 0, i32 1
  %b.freeze.data82 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit44
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

b.freeze.check:                                   ; preds = %b.len_ok
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
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
  br label %choice.exit21
}

define ptr @"io::read_all"(ptr %0, i64 %1) #1 {
entry:
  %var.errno_val = alloca i32, align 4
  %var.n = alloca i64, align 8
  %var.cur86 = alloca i64, align 8
  %var.to_read = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.1 = alloca i64, align 8
  %loop.idx.1 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.exit143, %choice.then
  %choice.res151 = phi ptr [ null, %choice.then ], [ %choice.res150, %choice.exit143 ]
  ret ptr %choice.res151

b.buf.len2:                                       ; preds = %str_overflow_abort, %choice.else
  %arena.cur3 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.res_b, align 8
  %var.load4 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %subtmp = sub i64 %b.len5, %fld.load8
  store i64 %subtmp, ptr %var.avail, align 8
  %var.load9 = load i64, ptr %var.avail, align 8
  %cmptmp10 = icmp sgt i64 %var.load9, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

str_overflow_abort:                               ; preds = %choice.else
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

choice.then11:                                    ; preds = %b.buf.len2
  %var.load13 = load i64, ptr %var.avail, align 8
  %var.load14 = load i64, ptr %var.max, align 8
  %cmptmp15 = icmp slt i64 %var.load13, %var.load14
  br i1 %cmptmp15, label %choice.then16, label %choice.else17

choice.exit12:                                    ; preds = %b.len_ok, %b.buf.len2
  store i64 4096, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.1, align 8
  br label %loop.header.1

choice.then16:                                    ; preds = %choice.then11
  %var.load19 = load i64, ptr %var.avail, align 8
  br label %choice.exit18

choice.else17:                                    ; preds = %choice.then11
  %var.load20 = load i64, ptr %var.max, align 8
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else17, %choice.then16
  %choice.res = phi i64 [ %var.load19, %choice.then16 ], [ %var.load20, %choice.else17 ]
  store i64 %choice.res, ptr %var.take, align 8
  %var.load21 = load ptr, ptr %var.res_b, align 8
  %b.len22 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 0
  %b.len23 = load i64, ptr %b.len22, align 8
  store i64 %b.len23, ptr %var.cur, align 8
  %var.load24 = load ptr, ptr %var.res_b, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load24, i32 0, i32 1
  %b.ptr25 = load ptr, ptr %b.ptr, align 8
  %var.load26 = load i64, ptr %var.cur, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr25 to i64
  %addtmp = add i64 %ptr.int.l, %var.load26
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load27 = load ptr, ptr %var.r, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load27, i32 0, i32 1
  %fld.load29 = load ptr, ptr %fld.gep28, align 8
  %b.ptr30 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load29, i32 0, i32 1
  %b.ptr31 = load ptr, ptr %b.ptr30, align 8
  %var.load32 = load ptr, ptr %var.r, align 8
  %fld.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load32, i32 0, i32 2
  %fld.load34 = load i64, ptr %fld.gep33, align 8
  %ptr.int.l35 = ptrtoint ptr %b.ptr31 to i64
  %addtmp36 = add i64 %ptr.int.l35, %fld.load34
  %ptr.res37 = inttoptr i64 %addtmp36 to ptr
  %var.load38 = load i64, ptr %var.take, align 8
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %choice.exit18
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen40
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit18
  %raw.int41 = ptrtoint ptr %ptr.res37 to i64
  %raw.clean.int42 = and i64 %raw.int41, 281474976710655
  %raw.clean.ptr43 = inttoptr i64 %raw.clean.int42 to ptr
  %addr.tag44 = lshr i64 %raw.int41, 48
  %addr.immortal45 = icmp eq i64 %addr.tag44, 0
  br i1 %addr.immortal45, label %addr_ok47, label %addr_gen_check46

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check46:                                 ; preds = %addr_ok
  %arena.gen49 = call ptr @dva_arena_current()
  %arena.gen50 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen49, i32 0, i32 4
  %arena.gen51 = load i64, ptr %arena.gen50, align 8
  %addr.tag.match52 = icmp eq i64 %addr.tag44, %arena.gen51
  br i1 %addr.tag.match52, label %addr_ok47, label %addr_stale48

addr_ok47:                                        ; preds = %addr_stale48, %addr_gen_check46, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr43, i64 %var.load38, i1 false)
  %var.load53 = load i64, ptr %var.cur, align 8
  %var.load54 = load i64, ptr %var.take, align 8
  %addtmp55 = add i64 %var.load53, %var.load54
  %b.load = load ptr, ptr %var.res_b, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap56 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %addtmp55, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_stale48:                                     ; preds = %addr_gen_check46
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok47

b.len_big_check:                                  ; preds = %addr_ok47
  %b.len.big = icmp sgt i64 %addtmp55, %b.cap56
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %addtmp55, ptr %b.len.gep57, align 8
  %var.load58 = load ptr, ptr %var.r, align 8
  %var.load59 = load ptr, ptr %var.r, align 8
  %fld.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 2
  %fld.load61 = load i64, ptr %fld.gep60, align 8
  %var.load62 = load i64, ptr %var.take, align 8
  %addtmp63 = add i64 %fld.load61, %var.load62
  %fld.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load58, i32 0, i32 2
  store i64 %addtmp63, ptr %fld.gep64, align 8
  br label %choice.exit12

b.len_oob:                                        ; preds = %b.len_big_check, %addr_ok47
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

loop.header.1:                                    ; preds = %loop.latch.1, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.1, align 8
  br label %loop.body.1

loop.body.1:                                      ; preds = %loop.header.1
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.1, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load65 = load i64, ptr %var.max, align 8
  %var.load66 = load ptr, ptr %var.res_b, align 8
  %b.len67 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load66, i32 0, i32 0
  %b.len68 = load i64, ptr %b.len67, align 8
  %subtmp69 = sub i64 %var.load65, %b.len68
  store i64 %subtmp69, ptr %var.rem, align 8
  %var.load70 = load i64, ptr %var.rem, align 8
  %cmptmp71 = icmp sle i64 %var.load70, 0
  br i1 %cmptmp71, label %choice.then72, label %choice.exit73

loop.exit.nat.1:                                  ; No predecessors!
  br label %loop.exit.1

loop.latch.1:                                     ; preds = %choice.exit102, %choice.then118
  %step.val = load i64, ptr %loop.step.1, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.1, align 8
  br label %loop.header.1

loop.exit.1:                                      ; preds = %choice.then122, %choice.exit119, %choice.then72, %loop.exit.nat.1
  %var.load137 = load ptr, ptr %var.res_b, align 8
  %b.len138 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load137, i32 0, i32 0
  %b.len139 = load i64, ptr %b.len138, align 8
  %cmptmp140 = icmp eq i64 %b.len139, 0
  br i1 %cmptmp140, label %choice.then141, label %choice.else142

choice.then72:                                    ; preds = %loop.body.1
  br label %loop.exit.1

choice.exit73:                                    ; preds = %loop.body.1
  %var.load74 = load i64, ptr %var.rem, align 8
  %var.load75 = load i64, ptr %var.chunk, align 8
  %cmptmp76 = icmp slt i64 %var.load74, %var.load75
  br i1 %cmptmp76, label %choice.then77, label %choice.else78

choice.then77:                                    ; preds = %choice.exit73
  %var.load80 = load i64, ptr %var.rem, align 8
  br label %choice.exit79

choice.else78:                                    ; preds = %choice.exit73
  %var.load81 = load i64, ptr %var.chunk, align 8
  br label %choice.exit79

choice.exit79:                                    ; preds = %choice.else78, %choice.then77
  %choice.res82 = phi i64 [ %var.load80, %choice.then77 ], [ %var.load81, %choice.else78 ]
  store i64 %choice.res82, ptr %var.to_read, align 8
  %var.load83 = load ptr, ptr %var.res_b, align 8
  %b.len84 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load83, i32 0, i32 0
  %b.len85 = load i64, ptr %b.len84, align 8
  store i64 %b.len85, ptr %var.cur86, align 8
  %var.load87 = load ptr, ptr %var.r, align 8
  %fld.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load87, i32 0, i32 0
  %fld.load89 = load i64, ptr %fld.gep88, align 8
  %var.load90 = load ptr, ptr %var.res_b, align 8
  %b.ptr91 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load90, i32 0, i32 1
  %b.ptr92 = load ptr, ptr %b.ptr91, align 8
  %var.load93 = load i64, ptr %var.cur86, align 8
  %ptr.int.l94 = ptrtoint ptr %b.ptr92 to i64
  %addtmp95 = add i64 %ptr.int.l94, %var.load93
  %ptr.res96 = inttoptr i64 %addtmp95 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res96 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load97 = load i64, ptr %var.to_read, align 8
  %coerce.trunc = trunc i64 %fld.load89 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load97)
  store i64 %call.res, ptr %var.n, align 8
  %var.load98 = load i64, ptr %var.n, align 8
  %cmptmp99 = icmp slt i64 %var.load98, 0
  br i1 %cmptmp99, label %choice.then100, label %choice.else101

choice.then100:                                   ; preds = %choice.exit79
  %call.res103 = call ptr @__errno_location()
  %raw.int104 = ptrtoint ptr %call.res103 to i64
  %raw.clean.int105 = and i64 %raw.int104, 281474976710655
  %raw.clean.ptr106 = inttoptr i64 %raw.clean.int105 to ptr
  %addr.tag107 = lshr i64 %raw.int104, 48
  %addr.immortal108 = icmp eq i64 %addr.tag107, 0
  br i1 %addr.immortal108, label %addr_ok110, label %addr_gen_check109

choice.else101:                                   ; preds = %choice.exit79
  %var.load120 = load i64, ptr %var.n, align 8
  %cmptmp121 = icmp eq i64 %var.load120, 0
  br i1 %cmptmp121, label %choice.then122, label %choice.else123

choice.exit102:                                   ; preds = %choice.exit124
  br label %loop.latch.1

addr_gen_check109:                                ; preds = %choice.then100
  %arena.gen112 = call ptr @dva_arena_current()
  %arena.gen113 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen112, i32 0, i32 4
  %arena.gen114 = load i64, ptr %arena.gen113, align 8
  %addr.tag.match115 = icmp eq i64 %addr.tag107, %arena.gen114
  br i1 %addr.tag.match115, label %addr_ok110, label %addr_stale111

addr_ok110:                                       ; preds = %addr_stale111, %addr_gen_check109, %choice.then100
  %raw.load = load volatile i32, ptr %raw.clean.ptr106, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load116 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load116 to i64
  %cmptmp117 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp117, label %choice.then118, label %choice.exit119

addr_stale111:                                    ; preds = %addr_gen_check109
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok110

choice.then118:                                   ; preds = %addr_ok110
  br label %loop.latch.1

choice.exit119:                                   ; preds = %addr_ok110
  br label %loop.exit.1

choice.then122:                                   ; preds = %choice.else101
  br label %loop.exit.1

choice.else123:                                   ; preds = %choice.else101
  %var.load125 = load i64, ptr %var.cur86, align 8
  %var.load126 = load i64, ptr %var.n, align 8
  %addtmp127 = add i64 %var.load125, %var.load126
  %b.load128 = load ptr, ptr %var.res_b, align 8
  %b.cap129 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load128, i32 0, i32 2
  %b.cap130 = load i64, ptr %b.cap129, align 8
  %b.len.neg131 = icmp slt i64 %addtmp127, 0
  br i1 %b.len.neg131, label %b.len_oob134, label %b.len_big_check132

choice.exit124:                                   ; preds = %b.len_ok133
  br label %choice.exit102

b.len_big_check132:                               ; preds = %choice.else123
  %b.len.big135 = icmp sgt i64 %addtmp127, %b.cap130
  br i1 %b.len.big135, label %b.len_oob134, label %b.len_ok133

b.len_ok133:                                      ; preds = %b.len_oob134, %b.len_big_check132
  %b.len.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load128, i32 0, i32 0
  store i64 %addtmp127, ptr %b.len.gep136, align 8
  br label %choice.exit124

b.len_oob134:                                     ; preds = %b.len_big_check132, %choice.else123
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok133

choice.then141:                                   ; preds = %loop.exit.1
  br label %choice.exit143

choice.else142:                                   ; preds = %loop.exit.1
  %var.load144 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load144, i32 0, i32 0
  %b.freeze.len145 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load144, i32 0, i32 1
  %b.freeze.data146 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit143:                                   ; preds = %b.freeze.done, %choice.then141
  %choice.res150 = phi ptr [ null, %choice.then141 ], [ %builder.freeze, %b.freeze.done ]
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.else142
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data146, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data146, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data146, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur147 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 %b.freeze.len145)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data146, i64 %b.freeze.len145, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.else142
  %b.freeze.data148 = phi ptr [ %b.freeze.data146, %choice.else142 ], [ %b.freeze.data146, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur149 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len145, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data148, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load144, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load144, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load144, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit143
}

define ptr @"io::read_byte"(ptr %0) #1 {
entry:
  %var.b = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load3, i32 0, i32 0
  %b.len4 = load i64, ptr %b.len, align 8
  %cmptmp = icmp sge i64 %fld.load, %b.len4
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load5)
  store i64 %call.res, ptr %var._, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %var.load9 = load ptr, ptr %var.r, align 8
  %fld.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 1
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %b.len12 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 0
  %b.len13 = load i64, ptr %b.len12, align 8
  %cmptmp14 = icmp slt i64 %fld.load8, %b.len13
  br i1 %cmptmp14, label %choice.then15, label %choice.else

choice.then15:                                    ; preds = %choice.exit
  %var.load17 = load ptr, ptr %var.r, align 8
  %fld.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load ptr, ptr %fld.gep18, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 1
  %b.ptr20 = load ptr, ptr %b.ptr, align 8
  %var.load21 = load ptr, ptr %var.r, align 8
  %fld.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 2
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

choice.else:                                      ; preds = %choice.exit
  %arena.cur34 = call ptr @dva_arena_current()
  %ram.alloc35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  %tag.gep36 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc35, i32 0, i32 0
  store i64 0, ptr %tag.gep36, align 8
  %pay.gep37 = getelementptr inbounds { i64, ptr }, ptr %ram.alloc35, i32 0, i32 1
  store ptr null, ptr %pay.gep37, align 8
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else, %addr_ok
  %choice.res = phi ptr [ %ram.alloc, %addr_ok ], [ %ram.alloc35, %choice.else ]
  ret ptr %choice.res

addr_gen_check:                                   ; preds = %choice.then15
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen24 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen25 = load i64, ptr %arena.gen24, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen25
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then15
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.sext = sext i8 %raw.load to i64
  %bandtmp = and i64 %coerce.sext, 255
  store i64 %bandtmp, ptr %var.b, align 8
  %var.load26 = load ptr, ptr %var.r, align 8
  %var.load27 = load ptr, ptr %var.r, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load27, i32 0, i32 2
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %addtmp30 = add i64 %fld.load29, 1
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load26, i32 0, i32 2
  store i64 %addtmp30, ptr %fld.gep31, align 8
  %arena.cur = call ptr @dva_arena_current()
  %ram.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %ram.alloc, i32 0, i32 1
  %var.load32 = load i64, ptr %var.b, align 8
  %arena.cur33 = call ptr @dva_arena_current()
  %pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 8)
  store i64 %var.load32, ptr %pay.alloc, align 8
  store ptr %pay.alloc, ptr %pay.gep, align 8
  br label %choice.exit16

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define ptr @"io::read_until"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.cur134 = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.3 = alloca i64, align 8
  %loop.idx.3 = alloca i64, align 8
  %"var.found_idx'" = alloca i64, align 8
  %var.scan_count = alloca i64, align 8
  %var.in_buf = alloca i64, align 8
  %var.rem_budget = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.2 = alloca i64, align 8
  %loop.idx.2 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.exit213, %choice.then
  %choice.res266 = phi ptr [ null, %choice.then ], [ %choice.res265, %choice.exit213 ]
  ret ptr %choice.res266

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
  store i64 0, ptr %loop.idx.2, align 8
  br label %loop.header.2

str_overflow_abort:                               ; preds = %choice.else
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

loop.header.2:                                    ; preds = %loop.latch.2, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.2, align 8
  br label %loop.body.2

loop.body.2:                                      ; preds = %loop.header.2
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.2, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load5 = load ptr, ptr %var.r, align 8
  %fld.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 1
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load7, i32 0, i32 0
  %b.len8 = load i64, ptr %b.len, align 8
  %cmptmp9 = icmp sge i64 %fld.load, %b.len8
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

loop.exit.nat.2:                                  ; No predecessors!
  br label %loop.exit.2

loop.latch.2:                                     ; preds = %choice.exit67
  %step.val208 = load i64, ptr %loop.step.2, align 8
  %loop.next209 = add i64 %counter.load, %step.val208
  store i64 %loop.next209, ptr %loop.idx.2, align 8
  br label %loop.header.2

loop.exit.2:                                      ; preds = %choice.then206, %b.len_ok, %choice.then23, %choice.then15, %loop.exit.nat.2
  %var.load210 = load i1, ptr %"var.done'", align 1
  br i1 %var.load210, label %choice.then211, label %choice.else212

choice.then10:                                    ; preds = %loop.body.2
  %var.load12 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load12)
  store i64 %call.res, ptr %var.n, align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.exit11:                                    ; preds = %choice.exit16, %loop.body.2
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
  br label %loop.exit.2

choice.exit16:                                    ; preds = %choice.then10
  br label %choice.exit11

choice.then23:                                    ; preds = %choice.exit11
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.2

choice.exit24:                                    ; preds = %choice.exit11
  %var.load25 = load ptr, ptr %var.r, align 8
  %fld.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %b.len28 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load27, i32 0, i32 0
  %b.len29 = load i64, ptr %b.len28, align 8
  %var.load30 = load ptr, ptr %var.r, align 8
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load30, i32 0, i32 2
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
  store i64 0, ptr %loop.idx.3, align 8
  br label %loop.header.3

loop.header.3:                                    ; preds = %loop.latch.3, %choice.exit39
  %counter.load43 = load i64, ptr %loop.idx.3, align 8
  %loop.cond = icmp slt i64 %counter.load43, %var.load42
  br i1 %loop.cond, label %loop.body.3, label %loop.exit.nat.3

loop.body.3:                                      ; preds = %loop.header.3
  %loop.rel.i44 = sub i64 %counter.load43, 0
  store i64 1, ptr %loop.step.3, align 8
  store i64 %loop.rel.i44, ptr %var._i, align 8
  store i64 %counter.load43, ptr %var._, align 8
  store i64 %counter.load43, ptr %var.i, align 8
  %var.load45 = load ptr, ptr %var.r, align 8
  %fld.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 1
  %fld.load47 = load ptr, ptr %fld.gep46, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load47, i32 0, i32 1
  %b.ptr48 = load ptr, ptr %b.ptr, align 8
  %var.load49 = load ptr, ptr %var.r, align 8
  %fld.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load49, i32 0, i32 2
  %fld.load51 = load i64, ptr %fld.gep50, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr48 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load51
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load52 = load i64, ptr %var.i, align 8
  %ptr.int.l53 = ptrtoint ptr %ptr.res to i64
  %addtmp54 = add i64 %ptr.int.l53, %var.load52
  %ptr.res55 = inttoptr i64 %addtmp54 to ptr
  %raw.int = ptrtoint ptr %ptr.res55 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

loop.exit.nat.3:                                  ; preds = %loop.header.3
  br label %loop.exit.3

loop.latch.3:                                     ; preds = %choice.exit61
  %step.val = load i64, ptr %loop.step.3, align 8
  %loop.next = add i64 %counter.load43, %step.val
  store i64 %loop.next, ptr %loop.idx.3, align 8
  br label %loop.header.3

loop.exit.3:                                      ; preds = %choice.then60, %loop.exit.nat.3
  %var.load63 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp64 = icmp sge i64 %var.load63, 0
  br i1 %cmptmp64, label %choice.then65, label %choice.else66

addr_gen_check:                                   ; preds = %loop.body.3
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen56 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen57 = load i64, ptr %arena.gen56, align 8
  %addr.tag.match = icmp eq i64 %addr.tag, %arena.gen57
  br i1 %addr.tag.match, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.3
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.sext = sext i8 %raw.load to i64
  %bandtmp = and i64 %coerce.sext, 255
  %var.load58 = load i64, ptr %var.delim, align 8
  %cmptmp59 = icmp eq i64 %bandtmp, %var.load58
  br i1 %cmptmp59, label %choice.then60, label %choice.exit61

addr_stale:                                       ; preds = %addr_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then60:                                    ; preds = %addr_ok
  %var.load62 = load i64, ptr %var.i, align 8
  store i64 %var.load62, ptr %"var.found_idx'", align 8
  br label %loop.exit.3

choice.exit61:                                    ; preds = %addr_ok
  br label %loop.latch.3

choice.then65:                                    ; preds = %loop.exit.3
  %var.load68 = load ptr, ptr %var.out, align 8
  %b.len69 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load68, i32 0, i32 0
  %b.len70 = load i64, ptr %b.len69, align 8
  store i64 %b.len70, ptr %var.cur, align 8
  %var.load71 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp72 = icmp sgt i64 %var.load71, 0
  br i1 %cmptmp72, label %choice.then73, label %choice.exit74

choice.else66:                                    ; preds = %loop.exit.3
  %var.load131 = load ptr, ptr %var.out, align 8
  %b.len132 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load131, i32 0, i32 0
  %b.len133 = load i64, ptr %b.len132, align 8
  store i64 %b.len133, ptr %var.cur134, align 8
  %var.load135 = load i64, ptr %var.scan_count, align 8
  %cmptmp136 = icmp sgt i64 %var.load135, 0
  br i1 %cmptmp136, label %choice.then137, label %choice.exit138

choice.exit67:                                    ; preds = %choice.exit207
  br label %loop.latch.2

choice.then73:                                    ; preds = %choice.then65
  %var.load75 = load ptr, ptr %var.out, align 8
  %b.ptr76 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 1
  %b.ptr77 = load ptr, ptr %b.ptr76, align 8
  %var.load78 = load i64, ptr %var.cur, align 8
  %ptr.int.l79 = ptrtoint ptr %b.ptr77 to i64
  %addtmp80 = add i64 %ptr.int.l79, %var.load78
  %ptr.res81 = inttoptr i64 %addtmp80 to ptr
  %var.load82 = load ptr, ptr %var.r, align 8
  %fld.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load82, i32 0, i32 1
  %fld.load84 = load ptr, ptr %fld.gep83, align 8
  %b.ptr85 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load84, i32 0, i32 1
  %b.ptr86 = load ptr, ptr %b.ptr85, align 8
  %var.load87 = load ptr, ptr %var.r, align 8
  %fld.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load87, i32 0, i32 2
  %fld.load89 = load i64, ptr %fld.gep88, align 8
  %ptr.int.l90 = ptrtoint ptr %b.ptr86 to i64
  %addtmp91 = add i64 %ptr.int.l90, %fld.load89
  %ptr.res92 = inttoptr i64 %addtmp91 to ptr
  %var.load93 = load i64, ptr %"var.found_idx'", align 8
  %raw.int94 = ptrtoint ptr %ptr.res81 to i64
  %raw.clean.int95 = and i64 %raw.int94, 281474976710655
  %raw.clean.ptr96 = inttoptr i64 %raw.clean.int95 to ptr
  %addr.tag97 = lshr i64 %raw.int94, 48
  %addr.immortal98 = icmp eq i64 %addr.tag97, 0
  br i1 %addr.immortal98, label %addr_ok100, label %addr_gen_check99

choice.exit74:                                    ; preds = %addr_ok112, %choice.then65
  %var.load118 = load i64, ptr %var.cur, align 8
  %var.load119 = load i64, ptr %"var.found_idx'", align 8
  %addtmp120 = add i64 %var.load118, %var.load119
  %b.load = load ptr, ptr %var.out, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap121 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %addtmp120, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check99:                                 ; preds = %choice.then73
  %arena.gen102 = call ptr @dva_arena_current()
  %arena.gen103 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen102, i32 0, i32 4
  %arena.gen104 = load i64, ptr %arena.gen103, align 8
  %addr.tag.match105 = icmp eq i64 %addr.tag97, %arena.gen104
  br i1 %addr.tag.match105, label %addr_ok100, label %addr_stale101

addr_ok100:                                       ; preds = %addr_stale101, %addr_gen_check99, %choice.then73
  %raw.int106 = ptrtoint ptr %ptr.res92 to i64
  %raw.clean.int107 = and i64 %raw.int106, 281474976710655
  %raw.clean.ptr108 = inttoptr i64 %raw.clean.int107 to ptr
  %addr.tag109 = lshr i64 %raw.int106, 48
  %addr.immortal110 = icmp eq i64 %addr.tag109, 0
  br i1 %addr.immortal110, label %addr_ok112, label %addr_gen_check111

addr_stale101:                                    ; preds = %addr_gen_check99
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok100

addr_gen_check111:                                ; preds = %addr_ok100
  %arena.gen114 = call ptr @dva_arena_current()
  %arena.gen115 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen114, i32 0, i32 4
  %arena.gen116 = load i64, ptr %arena.gen115, align 8
  %addr.tag.match117 = icmp eq i64 %addr.tag109, %arena.gen116
  br i1 %addr.tag.match117, label %addr_ok112, label %addr_stale113

addr_ok112:                                       ; preds = %addr_stale113, %addr_gen_check111, %addr_ok100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr96, ptr align 1 %raw.clean.ptr108, i64 %var.load93, i1 false)
  br label %choice.exit74

addr_stale113:                                    ; preds = %addr_gen_check111
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok112

b.len_big_check:                                  ; preds = %choice.exit74
  %b.len.big = icmp sgt i64 %addtmp120, %b.cap121
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %addtmp120, ptr %b.len.gep122, align 8
  %var.load123 = load ptr, ptr %var.r, align 8
  %var.load124 = load ptr, ptr %var.r, align 8
  %fld.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load124, i32 0, i32 2
  %fld.load126 = load i64, ptr %fld.gep125, align 8
  %var.load127 = load i64, ptr %"var.found_idx'", align 8
  %addtmp128 = add i64 %fld.load126, %var.load127
  %addtmp129 = add i64 %addtmp128, 1
  %fld.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 2
  store i64 %addtmp129, ptr %fld.gep130, align 8
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.2

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit74
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

choice.then137:                                   ; preds = %choice.else66
  %var.load139 = load ptr, ptr %var.out, align 8
  %b.ptr140 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 1
  %b.ptr141 = load ptr, ptr %b.ptr140, align 8
  %var.load142 = load i64, ptr %var.cur134, align 8
  %ptr.int.l143 = ptrtoint ptr %b.ptr141 to i64
  %addtmp144 = add i64 %ptr.int.l143, %var.load142
  %ptr.res145 = inttoptr i64 %addtmp144 to ptr
  %var.load146 = load ptr, ptr %var.r, align 8
  %fld.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load146, i32 0, i32 1
  %fld.load148 = load ptr, ptr %fld.gep147, align 8
  %b.ptr149 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load148, i32 0, i32 1
  %b.ptr150 = load ptr, ptr %b.ptr149, align 8
  %var.load151 = load ptr, ptr %var.r, align 8
  %fld.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load151, i32 0, i32 2
  %fld.load153 = load i64, ptr %fld.gep152, align 8
  %ptr.int.l154 = ptrtoint ptr %b.ptr150 to i64
  %addtmp155 = add i64 %ptr.int.l154, %fld.load153
  %ptr.res156 = inttoptr i64 %addtmp155 to ptr
  %var.load157 = load i64, ptr %var.scan_count, align 8
  %raw.int158 = ptrtoint ptr %ptr.res145 to i64
  %raw.clean.int159 = and i64 %raw.int158, 281474976710655
  %raw.clean.ptr160 = inttoptr i64 %raw.clean.int159 to ptr
  %addr.tag161 = lshr i64 %raw.int158, 48
  %addr.immortal162 = icmp eq i64 %addr.tag161, 0
  br i1 %addr.immortal162, label %addr_ok164, label %addr_gen_check163

choice.exit138:                                   ; preds = %addr_ok176, %choice.else66
  %var.load182 = load i64, ptr %var.cur134, align 8
  %var.load183 = load i64, ptr %var.scan_count, align 8
  %addtmp184 = add i64 %var.load182, %var.load183
  %b.load185 = load ptr, ptr %var.out, align 8
  %b.cap186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  %b.cap187 = load i64, ptr %b.cap186, align 8
  %b.len.neg188 = icmp slt i64 %addtmp184, 0
  br i1 %b.len.neg188, label %b.len_oob191, label %b.len_big_check189

addr_gen_check163:                                ; preds = %choice.then137
  %arena.gen166 = call ptr @dva_arena_current()
  %arena.gen167 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen166, i32 0, i32 4
  %arena.gen168 = load i64, ptr %arena.gen167, align 8
  %addr.tag.match169 = icmp eq i64 %addr.tag161, %arena.gen168
  br i1 %addr.tag.match169, label %addr_ok164, label %addr_stale165

addr_ok164:                                       ; preds = %addr_stale165, %addr_gen_check163, %choice.then137
  %raw.int170 = ptrtoint ptr %ptr.res156 to i64
  %raw.clean.int171 = and i64 %raw.int170, 281474976710655
  %raw.clean.ptr172 = inttoptr i64 %raw.clean.int171 to ptr
  %addr.tag173 = lshr i64 %raw.int170, 48
  %addr.immortal174 = icmp eq i64 %addr.tag173, 0
  br i1 %addr.immortal174, label %addr_ok176, label %addr_gen_check175

addr_stale165:                                    ; preds = %addr_gen_check163
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok164

addr_gen_check175:                                ; preds = %addr_ok164
  %arena.gen178 = call ptr @dva_arena_current()
  %arena.gen179 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen178, i32 0, i32 4
  %arena.gen180 = load i64, ptr %arena.gen179, align 8
  %addr.tag.match181 = icmp eq i64 %addr.tag173, %arena.gen180
  br i1 %addr.tag.match181, label %addr_ok176, label %addr_stale177

addr_ok176:                                       ; preds = %addr_stale177, %addr_gen_check175, %addr_ok164
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr160, ptr align 1 %raw.clean.ptr172, i64 %var.load157, i1 false)
  br label %choice.exit138

addr_stale177:                                    ; preds = %addr_gen_check175
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok176

b.len_big_check189:                               ; preds = %choice.exit138
  %b.len.big192 = icmp sgt i64 %addtmp184, %b.cap187
  br i1 %b.len.big192, label %b.len_oob191, label %b.len_ok190

b.len_ok190:                                      ; preds = %b.len_oob191, %b.len_big_check189
  %b.len.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  store i64 %addtmp184, ptr %b.len.gep193, align 8
  %var.load194 = load ptr, ptr %var.r, align 8
  %var.load195 = load ptr, ptr %var.r, align 8
  %fld.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load195, i32 0, i32 2
  %fld.load197 = load i64, ptr %fld.gep196, align 8
  %var.load198 = load i64, ptr %var.scan_count, align 8
  %addtmp199 = add i64 %fld.load197, %var.load198
  %fld.gep200 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 2
  store i64 %addtmp199, ptr %fld.gep200, align 8
  %var.load201 = load ptr, ptr %var.out, align 8
  %b.len202 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load201, i32 0, i32 0
  %b.len203 = load i64, ptr %b.len202, align 8
  %var.load204 = load i64, ptr %var.max, align 8
  %cmptmp205 = icmp sge i64 %b.len203, %var.load204
  br i1 %cmptmp205, label %choice.then206, label %choice.exit207

b.len_oob191:                                     ; preds = %b.len_big_check189, %choice.exit138
  %10 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok190

choice.then206:                                   ; preds = %b.len_ok190
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.2

choice.exit207:                                   ; preds = %b.len_ok190
  br label %choice.exit67

choice.then211:                                   ; preds = %loop.exit.2
  %var.load214 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load214, i32 0, i32 0
  %b.freeze.len215 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load214, i32 0, i32 1
  %b.freeze.data216 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else212:                                   ; preds = %loop.exit.2
  %var.load220 = load ptr, ptr %var.out, align 8
  %b.len221 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load220, i32 0, i32 0
  %b.len222 = load i64, ptr %b.len221, align 8
  %cmptmp223 = icmp sgt i64 %b.len222, 0
  br i1 %cmptmp223, label %choice.then224, label %choice.else225

choice.exit213:                                   ; preds = %choice.exit226, %b.freeze.done
  %choice.res265 = phi ptr [ %builder.freeze, %b.freeze.done ], [ %choice.res264, %choice.exit226 ]
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.then211
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data216, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data216, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data216, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur217 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 %b.freeze.len215)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data216, i64 %b.freeze.len215, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then211
  %b.freeze.data218 = phi ptr [ %b.freeze.data216, %choice.then211 ], [ %b.freeze.data216, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur219 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len215, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data218, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load214, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load214, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load214, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit213

choice.then224:                                   ; preds = %choice.else212
  %var.load227 = load ptr, ptr %var.out, align 8
  %b.freeze.len228 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load227, i32 0, i32 0
  %b.freeze.len229 = load i64, ptr %b.freeze.len228, align 8
  %b.freeze.data230 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load227, i32 0, i32 1
  %b.freeze.data231 = load ptr, ptr %b.freeze.data230, align 8
  %b.freeze.arena232 = call ptr @dva_arena_current()
  %b.freeze.nc.gep233 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena232, i32 0, i32 1
  %b.freeze.nc234 = load i64, ptr %b.freeze.nc.gep233, align 8
  %b.freeze.has.chunk235 = icmp sgt i64 %b.freeze.nc234, 0
  br i1 %b.freeze.has.chunk235, label %b.freeze.check236, label %b.freeze.done238

choice.else225:                                   ; preds = %choice.else212
  br label %choice.exit226

choice.exit226:                                   ; preds = %choice.else225, %b.freeze.done238
  %choice.res264 = phi ptr [ %builder.freeze258, %b.freeze.done238 ], [ null, %choice.else225 ]
  br label %choice.exit213

b.freeze.check236:                                ; preds = %choice.then224
  %b.freeze.last.idx239 = sub i64 %b.freeze.nc234, 1
  %b.freeze.chunks.gep240 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena232, i32 0, i32 3
  %b.freeze.chunk.slot241 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep240, i64 0, i64 %b.freeze.last.idx239
  %b.freeze.last.chunk242 = load ptr, ptr %b.freeze.chunk.slot241, align 8
  %b.freeze.off.gep243 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena232, i32 0, i32 2
  %b.freeze.off244 = load i64, ptr %b.freeze.off.gep243, align 8
  %b.freeze.bump245 = getelementptr i8, ptr %b.freeze.last.chunk242, i64 %b.freeze.off244
  %b.freeze.cap.gep246 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena232, i32 0, i32 0
  %b.freeze.cap247 = load i64, ptr %b.freeze.cap.gep246, align 8
  %b.freeze.chunk.end248 = getelementptr i8, ptr %b.freeze.last.chunk242, i64 %b.freeze.cap247
  %b.freeze.ge.chunk249 = icmp uge ptr %b.freeze.data231, %b.freeze.last.chunk242
  %b.freeze.lt.end250 = icmp ult ptr %b.freeze.data231, %b.freeze.chunk.end248
  %b.freeze.in.chunk251 = and i1 %b.freeze.ge.chunk249, %b.freeze.lt.end250
  %b.freeze.ge.bump252 = icmp uge ptr %b.freeze.data231, %b.freeze.bump245
  %b.freeze.reaped253 = and i1 %b.freeze.in.chunk251, %b.freeze.ge.bump252
  br i1 %b.freeze.reaped253, label %b.freeze.copy237, label %b.freeze.done238

b.freeze.copy237:                                 ; preds = %b.freeze.check236
  %arena.cur254 = call ptr @dva_arena_current()
  %b.freeze.fresh255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 %b.freeze.len229)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh255, ptr align 1 %b.freeze.data231, i64 %b.freeze.len229, i1 false)
  br label %b.freeze.done238

b.freeze.done238:                                 ; preds = %b.freeze.copy237, %b.freeze.check236, %choice.then224
  %b.freeze.data256 = phi ptr [ %b.freeze.data231, %choice.then224 ], [ %b.freeze.data231, %b.freeze.check236 ], [ %b.freeze.fresh255, %b.freeze.copy237 ]
  %arena.cur257 = call ptr @dva_arena_current()
  %builder.freeze258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 16)
  %str.build.len.gep259 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze258, i32 0, i32 0
  store i64 %b.freeze.len229, ptr %str.build.len.gep259, align 8
  %str.build.data.gep260 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze258, i32 0, i32 1
  store ptr %b.freeze.data256, ptr %str.build.data.gep260, align 8
  %b.freeze.rst.len261 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load227, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len261, align 8
  %b.freeze.rst.data262 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load227, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data262, align 8
  %b.freeze.rst.cap263 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load227, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap263, align 8
  br label %choice.exit226
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

choice.exit:                                      ; preds = %choice.else, %choice.exit26
  %choice.res46 = phi ptr [ %choice.res, %choice.exit26 ], [ null, %choice.else ]
  ret ptr %choice.res46

str_gen_check:                                    ; preds = %choice.then
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen6 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen7 = load i64, ptr %arena.gen6, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen7
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  store i64 %str.len.query5, ptr %var.n, align 8
  %var.load8 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %var.load8, 0
  br i1 %cmptmp, label %and.4.then, label %and.4.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.4.then:                                       ; preds = %str_ok
  %var.load9 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag12 = lshr i64 %s.read.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

and.4.else:                                       ; preds = %str_ok
  br label %and.4.exit

and.4.exit:                                       ; preds = %and.4.else, %idx_ok
  %and.4.phi = phi i1 [ %cmptmp23, %idx_ok ], [ %cmptmp, %and.4.else ]
  br i1 %and.4.phi, label %choice.then24, label %choice.else25

str_gen_check14:                                  ; preds = %and.4.then
  %arena.gen17 = call ptr @dva_arena_current()
  %arena.gen18 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen17, i32 0, i32 4
  %arena.gen19 = load i64, ptr %arena.gen18, align 8
  %str.tag.match20 = icmp eq i64 %str.tag12, %arena.gen19
  br i1 %str.tag.match20, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %and.4.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data, align 8
  %var.load22 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load22, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

idx_big_check:                                    ; preds = %str_ok15
  %idx.big = icmp sge i64 %subtmp, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data21, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp23 = icmp eq i64 %s.byte.val, 13
  br label %and.4.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok15
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then24:                                    ; preds = %and.4.exit
  %var.load27 = load i64, ptr %var.n, align 8
  %subtmp28 = sub i64 %var.load27, 1
  store i64 %subtmp28, ptr %var.end_idx, align 8
  %var.load29 = load ptr, ptr %var.line, align 8
  %s.read.len30 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %s.read.len31 = load i64, ptr %s.read.len30, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %str.tag33 = lshr i64 %s.read.len31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

choice.else25:                                    ; preds = %and.4.exit
  %var.load45 = load ptr, ptr %var.line, align 8
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %str_ok36
  %choice.res = phi ptr [ %str.view, %str_ok36 ], [ %var.load45, %choice.else25 ]
  br label %choice.exit

str_gen_check35:                                  ; preds = %choice.then24
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %choice.then24
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %var.load44 = load i64, ptr %var.end_idx, align 8
  %rel.start = add i64 %s.read.len32, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len32
  %final.start = select i1 %start.gt.len, i64 %s.read.len32, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load44, 0
  %rel.end = add i64 %s.read.len32, %var.load44
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load44
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len32
  %final.end = select i1 %end.gt.len, i64 %s.read.len32, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data43, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit26

str_stale37:                                      ; preds = %str_gen_check35
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
