; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64 }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
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

choice.exit:                                      ; preds = %choice.exit12, %entry
  %var.load39 = load ptr, ptr %var.buf, align 8
  %ptr.int.l40 = ptrtoint ptr %var.load39 to i64
  %addtmp41 = add i64 %ptr.int.l40, 16
  %ptr.res42 = inttoptr i64 %addtmp41 to ptr
  %raw.int43 = ptrtoint ptr %ptr.res42 to i64
  %raw.clean.int44 = and i64 %raw.int43, 281474976710655
  %raw.clean.ptr45 = inttoptr i64 %raw.clean.int44 to ptr
  %addr.tag46 = lshr i64 %raw.int43, 48
  %addr.immortal47 = icmp eq i64 %addr.tag46, 0
  br i1 %addr.immortal47, label %addr_ok49, label %addr_gen_check48

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
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load36, ptr %b.len.gep, align 8
  %var.load37 = load ptr, ptr %var.r, align 8
  %fld.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 2
  store i64 0, ptr %fld.gep38, align 8
  br label %choice.exit

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

addr_gen_check48:                                 ; preds = %choice.exit
  %arena.gen51 = call ptr @dva_arena_current()
  %arena.gen52 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen51, i32 0, i32 4
  %arena.gen53 = load i64, ptr %arena.gen52, align 8
  %addr.tag.match54 = icmp eq i64 %addr.tag46, %arena.gen53
  br i1 %addr.tag.match54, label %addr_ok49, label %addr_stale50

addr_ok49:                                        ; preds = %addr_stale50, %addr_gen_check48, %choice.exit
  %raw.load = load volatile i64, ptr %raw.clean.ptr45, align 8
  store i64 %raw.load, ptr %var.cap, align 8
  %var.load55 = load i64, ptr %var.cap, align 8
  %cmptmp56 = icmp sgt i64 %var.load55, 0
  br i1 %cmptmp56, label %choice.then57, label %choice.else

addr_stale50:                                     ; preds = %addr_gen_check48
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok49

choice.then57:                                    ; preds = %addr_ok49
  %var.load59 = load i64, ptr %var.cap, align 8
  br label %choice.exit58

choice.else:                                      ; preds = %addr_ok49
  br label %choice.exit58

choice.exit58:                                    ; preds = %choice.else, %choice.then57
  %choice.res = phi i64 [ %var.load59, %choice.then57 ], [ 4096, %choice.else ]
  store i64 %choice.res, ptr %var.read_cap, align 8
  %var.load60 = load i64, ptr %var.read_cap, align 8
  %var.load61 = load ptr, ptr %var.buf, align 8
  %b.len62 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 0
  %b.len63 = load i64, ptr %b.len62, align 8
  %subtmp64 = sub i64 %var.load60, %b.len63
  store i64 %subtmp64, ptr %var.space, align 8
  %var.load65 = load i64, ptr %var.space, align 8
  %cmptmp66 = icmp sle i64 %var.load65, 0
  br i1 %cmptmp66, label %choice.then67, label %choice.else68

choice.then67:                                    ; preds = %choice.exit58
  br label %choice.exit69

choice.else68:                                    ; preds = %choice.exit58
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.0, align 8
  br label %loop.header.0

choice.exit69:                                    ; preds = %loop.exit.0, %choice.then67
  %choice.res119 = phi i64 [ 0, %choice.then67 ], [ %var.load118, %loop.exit.0 ]
  ret i64 %choice.res119

loop.header.0:                                    ; preds = %loop.latch.0, %choice.else68
  %counter.load = load i64, ptr %loop.idx.0, align 8
  br label %loop.body.0

loop.body.0:                                      ; preds = %loop.header.0
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.0, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load70 = load ptr, ptr %var.buf, align 8
  %b.len71 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load70, i32 0, i32 0
  %b.len72 = load i64, ptr %b.len71, align 8
  store i64 %b.len72, ptr %var.cur, align 8
  %var.load73 = load ptr, ptr %var.r, align 8
  %fld.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %fld.load75 = load i64, ptr %fld.gep74, align 8
  %var.load76 = load ptr, ptr %var.buf, align 8
  %b.ptr77 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 1
  %b.ptr78 = load ptr, ptr %b.ptr77, align 8
  %var.load79 = load i64, ptr %var.cur, align 8
  %ptr.int.l80 = ptrtoint ptr %b.ptr78 to i64
  %addtmp81 = add i64 %ptr.int.l80, %var.load79
  %ptr.res82 = inttoptr i64 %addtmp81 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res82 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load83 = load i64, ptr %var.space, align 8
  %coerce.trunc = trunc i64 %fld.load75 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load83)
  store i64 %call.res, ptr %var.n, align 8
  %var.load84 = load i64, ptr %var.n, align 8
  %cmptmp85 = icmp slt i64 %var.load84, 0
  br i1 %cmptmp85, label %choice.then86, label %choice.else87

loop.exit.nat.0:                                  ; No predecessors!
  br label %loop.exit.0

loop.latch.0:                                     ; preds = %choice.exit88, %choice.then105
  %step.val = load i64, ptr %loop.step.0, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.0, align 8
  br label %loop.header.0

loop.exit.0:                                      ; preds = %choice.exit111, %choice.exit106, %loop.exit.nat.0
  %var.load118 = load i64, ptr %"var.n'", align 8
  br label %choice.exit69

choice.then86:                                    ; preds = %loop.body.0
  %call.res89 = call ptr @__errno_location()
  %raw.int90 = ptrtoint ptr %call.res89 to i64
  %raw.clean.int91 = and i64 %raw.int90, 281474976710655
  %raw.clean.ptr92 = inttoptr i64 %raw.clean.int91 to ptr
  %addr.tag93 = lshr i64 %raw.int90, 48
  %addr.immortal94 = icmp eq i64 %addr.tag93, 0
  br i1 %addr.immortal94, label %addr_ok96, label %addr_gen_check95

choice.else87:                                    ; preds = %loop.body.0
  %var.load108 = load i64, ptr %var.n, align 8
  %cmptmp109 = icmp sgt i64 %var.load108, 0
  br i1 %cmptmp109, label %choice.then110, label %choice.exit111

choice.exit88:                                    ; No predecessors!
  br label %loop.latch.0

addr_gen_check95:                                 ; preds = %choice.then86
  %arena.gen98 = call ptr @dva_arena_current()
  %arena.gen99 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen98, i32 0, i32 4
  %arena.gen100 = load i64, ptr %arena.gen99, align 8
  %addr.tag.match101 = icmp eq i64 %addr.tag93, %arena.gen100
  br i1 %addr.tag.match101, label %addr_ok96, label %addr_stale97

addr_ok96:                                        ; preds = %addr_stale97, %addr_gen_check95, %choice.then86
  %raw.load102 = load volatile i32, ptr %raw.clean.ptr92, align 4
  store i32 %raw.load102, ptr %var.errno_val, align 4
  %var.load103 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load103 to i64
  %cmptmp104 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp104, label %choice.then105, label %choice.exit106

addr_stale97:                                     ; preds = %addr_gen_check95
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok96

choice.then105:                                   ; preds = %addr_ok96
  br label %loop.latch.0

choice.exit106:                                   ; preds = %addr_ok96
  %var.load107 = load i64, ptr %var.n, align 8
  store i64 %var.load107, ptr %"var.n'", align 8
  br label %loop.exit.0

choice.then110:                                   ; preds = %choice.else87
  %var.load112 = load i64, ptr %var.cur, align 8
  %var.load113 = load i64, ptr %var.n, align 8
  %addtmp114 = add i64 %var.load112, %var.load113
  %b.load115 = load ptr, ptr %var.buf, align 8
  %b.len.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load115, i32 0, i32 0
  store i64 %addtmp114, ptr %b.len.gep116, align 8
  br label %choice.exit111

choice.exit111:                                   ; preds = %choice.then110, %choice.else87
  %var.load117 = load i64, ptr %var.n, align 8
  store i64 %var.load117, ptr %"var.n'", align 8
  br label %loop.exit.0
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
  %choice.res86 = phi ptr [ null, %choice.then ], [ %choice.res85, %choice.exit21 ]
  ret ptr %choice.res86

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
  %choice.res85 = phi ptr [ %builder.freeze, %b.freeze.done ], [ null, %choice.else20 ]
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
  %b.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load70, ptr %b.len.gep71, align 8
  %var.load72 = load ptr, ptr %var.r, align 8
  %var.load73 = load ptr, ptr %var.r, align 8
  %fld.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  %fld.load75 = load i64, ptr %fld.gep74, align 8
  %var.load76 = load i64, ptr %var.take, align 8
  %addtmp77 = add i64 %fld.load75, %var.load76
  %fld.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load72, i32 0, i32 2
  store i64 %addtmp77, ptr %fld.gep78, align 8
  %var.load79 = load ptr, ptr %var.res, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 0
  %b.freeze.len80 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 1
  %b.freeze.data81 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

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

b.freeze.check:                                   ; preds = %choice.exit44
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data81, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data81, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data81, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur82 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 %b.freeze.len80)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data81, i64 %b.freeze.len80, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit44
  %b.freeze.data83 = phi ptr [ %b.freeze.data81, %choice.exit44 ], [ %b.freeze.data81, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur84 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len80, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data83, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit21
}

define ptr @"io::read_all"(ptr %0, i64 %1) #1 {
entry:
  %var.errno_val = alloca i32, align 4
  %var.n = alloca i64, align 8
  %var.cur85 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.exit135, %choice.then
  %choice.res143 = phi ptr [ null, %choice.then ], [ %choice.res142, %choice.exit135 ]
  ret ptr %choice.res143

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

choice.exit12:                                    ; preds = %addr_ok47, %b.buf.len2
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
  %b.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %addtmp55, ptr %b.len.gep56, align 8
  %var.load57 = load ptr, ptr %var.r, align 8
  %var.load58 = load ptr, ptr %var.r, align 8
  %fld.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load58, i32 0, i32 2
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  %var.load61 = load i64, ptr %var.take, align 8
  %addtmp62 = add i64 %fld.load60, %var.load61
  %fld.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load57, i32 0, i32 2
  store i64 %addtmp62, ptr %fld.gep63, align 8
  br label %choice.exit12

addr_stale48:                                     ; preds = %addr_gen_check46
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok47

loop.header.1:                                    ; preds = %loop.latch.1, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.1, align 8
  br label %loop.body.1

loop.body.1:                                      ; preds = %loop.header.1
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.1, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load64 = load i64, ptr %var.max, align 8
  %var.load65 = load ptr, ptr %var.res_b, align 8
  %b.len66 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  %b.len67 = load i64, ptr %b.len66, align 8
  %subtmp68 = sub i64 %var.load64, %b.len67
  store i64 %subtmp68, ptr %var.rem, align 8
  %var.load69 = load i64, ptr %var.rem, align 8
  %cmptmp70 = icmp sle i64 %var.load69, 0
  br i1 %cmptmp70, label %choice.then71, label %choice.exit72

loop.exit.nat.1:                                  ; No predecessors!
  br label %loop.exit.1

loop.latch.1:                                     ; preds = %choice.exit101, %choice.then117
  %step.val = load i64, ptr %loop.step.1, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.1, align 8
  br label %loop.header.1

loop.exit.1:                                      ; preds = %choice.then121, %choice.exit118, %choice.then71, %loop.exit.nat.1
  %var.load129 = load ptr, ptr %var.res_b, align 8
  %b.len130 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 0
  %b.len131 = load i64, ptr %b.len130, align 8
  %cmptmp132 = icmp eq i64 %b.len131, 0
  br i1 %cmptmp132, label %choice.then133, label %choice.else134

choice.then71:                                    ; preds = %loop.body.1
  br label %loop.exit.1

choice.exit72:                                    ; preds = %loop.body.1
  %var.load73 = load i64, ptr %var.rem, align 8
  %var.load74 = load i64, ptr %var.chunk, align 8
  %cmptmp75 = icmp slt i64 %var.load73, %var.load74
  br i1 %cmptmp75, label %choice.then76, label %choice.else77

choice.then76:                                    ; preds = %choice.exit72
  %var.load79 = load i64, ptr %var.rem, align 8
  br label %choice.exit78

choice.else77:                                    ; preds = %choice.exit72
  %var.load80 = load i64, ptr %var.chunk, align 8
  br label %choice.exit78

choice.exit78:                                    ; preds = %choice.else77, %choice.then76
  %choice.res81 = phi i64 [ %var.load79, %choice.then76 ], [ %var.load80, %choice.else77 ]
  store i64 %choice.res81, ptr %var.to_read, align 8
  %var.load82 = load ptr, ptr %var.res_b, align 8
  %b.len83 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load82, i32 0, i32 0
  %b.len84 = load i64, ptr %b.len83, align 8
  store i64 %b.len84, ptr %var.cur85, align 8
  %var.load86 = load ptr, ptr %var.r, align 8
  %fld.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load86, i32 0, i32 0
  %fld.load88 = load i64, ptr %fld.gep87, align 8
  %var.load89 = load ptr, ptr %var.res_b, align 8
  %b.ptr90 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load89, i32 0, i32 1
  %b.ptr91 = load ptr, ptr %b.ptr90, align 8
  %var.load92 = load i64, ptr %var.cur85, align 8
  %ptr.int.l93 = ptrtoint ptr %b.ptr91 to i64
  %addtmp94 = add i64 %ptr.int.l93, %var.load92
  %ptr.res95 = inttoptr i64 %addtmp94 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res95 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load96 = load i64, ptr %var.to_read, align 8
  %coerce.trunc = trunc i64 %fld.load88 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load96)
  store i64 %call.res, ptr %var.n, align 8
  %var.load97 = load i64, ptr %var.n, align 8
  %cmptmp98 = icmp slt i64 %var.load97, 0
  br i1 %cmptmp98, label %choice.then99, label %choice.else100

choice.then99:                                    ; preds = %choice.exit78
  %call.res102 = call ptr @__errno_location()
  %raw.int103 = ptrtoint ptr %call.res102 to i64
  %raw.clean.int104 = and i64 %raw.int103, 281474976710655
  %raw.clean.ptr105 = inttoptr i64 %raw.clean.int104 to ptr
  %addr.tag106 = lshr i64 %raw.int103, 48
  %addr.immortal107 = icmp eq i64 %addr.tag106, 0
  br i1 %addr.immortal107, label %addr_ok109, label %addr_gen_check108

choice.else100:                                   ; preds = %choice.exit78
  %var.load119 = load i64, ptr %var.n, align 8
  %cmptmp120 = icmp eq i64 %var.load119, 0
  br i1 %cmptmp120, label %choice.then121, label %choice.else122

choice.exit101:                                   ; preds = %choice.exit123
  br label %loop.latch.1

addr_gen_check108:                                ; preds = %choice.then99
  %arena.gen111 = call ptr @dva_arena_current()
  %arena.gen112 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen111, i32 0, i32 4
  %arena.gen113 = load i64, ptr %arena.gen112, align 8
  %addr.tag.match114 = icmp eq i64 %addr.tag106, %arena.gen113
  br i1 %addr.tag.match114, label %addr_ok109, label %addr_stale110

addr_ok109:                                       ; preds = %addr_stale110, %addr_gen_check108, %choice.then99
  %raw.load = load volatile i32, ptr %raw.clean.ptr105, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load115 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load115 to i64
  %cmptmp116 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp116, label %choice.then117, label %choice.exit118

addr_stale110:                                    ; preds = %addr_gen_check108
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok109

choice.then117:                                   ; preds = %addr_ok109
  br label %loop.latch.1

choice.exit118:                                   ; preds = %addr_ok109
  br label %loop.exit.1

choice.then121:                                   ; preds = %choice.else100
  br label %loop.exit.1

choice.else122:                                   ; preds = %choice.else100
  %var.load124 = load i64, ptr %var.cur85, align 8
  %var.load125 = load i64, ptr %var.n, align 8
  %addtmp126 = add i64 %var.load124, %var.load125
  %b.load127 = load ptr, ptr %var.res_b, align 8
  %b.len.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 0
  store i64 %addtmp126, ptr %b.len.gep128, align 8
  br label %choice.exit123

choice.exit123:                                   ; preds = %choice.else122
  br label %choice.exit101

choice.then133:                                   ; preds = %loop.exit.1
  br label %choice.exit135

choice.else134:                                   ; preds = %loop.exit.1
  %var.load136 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 0
  %b.freeze.len137 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 1
  %b.freeze.data138 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit135:                                   ; preds = %b.freeze.done, %choice.then133
  %choice.res142 = phi ptr [ null, %choice.then133 ], [ %builder.freeze, %b.freeze.done ]
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.else134
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data138, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data138, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data138, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur139 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %b.freeze.len137)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data138, i64 %b.freeze.len137, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.else134
  %b.freeze.data140 = phi ptr [ %b.freeze.data138, %choice.else134 ], [ %b.freeze.data138, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur141 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len137, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data140, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit135
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
  %var.cur133 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.exit205, %choice.then
  %choice.res258 = phi ptr [ null, %choice.then ], [ %choice.res257, %choice.exit205 ]
  ret ptr %choice.res258

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
  %step.val200 = load i64, ptr %loop.step.2, align 8
  %loop.next201 = add i64 %counter.load, %step.val200
  store i64 %loop.next201, ptr %loop.idx.2, align 8
  br label %loop.header.2

loop.exit.2:                                      ; preds = %choice.then198, %choice.exit74, %choice.then23, %choice.then15, %loop.exit.nat.2
  %var.load202 = load i1, ptr %"var.done'", align 1
  br i1 %var.load202, label %choice.then203, label %choice.else204

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
  %var.load130 = load ptr, ptr %var.out, align 8
  %b.len131 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 0
  %b.len132 = load i64, ptr %b.len131, align 8
  store i64 %b.len132, ptr %var.cur133, align 8
  %var.load134 = load i64, ptr %var.scan_count, align 8
  %cmptmp135 = icmp sgt i64 %var.load134, 0
  br i1 %cmptmp135, label %choice.then136, label %choice.exit137

choice.exit67:                                    ; preds = %choice.exit199
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
  %b.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %addtmp120, ptr %b.len.gep121, align 8
  %var.load122 = load ptr, ptr %var.r, align 8
  %var.load123 = load ptr, ptr %var.r, align 8
  %fld.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 2
  %fld.load125 = load i64, ptr %fld.gep124, align 8
  %var.load126 = load i64, ptr %"var.found_idx'", align 8
  %addtmp127 = add i64 %fld.load125, %var.load126
  %addtmp128 = add i64 %addtmp127, 1
  %fld.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load122, i32 0, i32 2
  store i64 %addtmp128, ptr %fld.gep129, align 8
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.2

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

choice.then136:                                   ; preds = %choice.else66
  %var.load138 = load ptr, ptr %var.out, align 8
  %b.ptr139 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load138, i32 0, i32 1
  %b.ptr140 = load ptr, ptr %b.ptr139, align 8
  %var.load141 = load i64, ptr %var.cur133, align 8
  %ptr.int.l142 = ptrtoint ptr %b.ptr140 to i64
  %addtmp143 = add i64 %ptr.int.l142, %var.load141
  %ptr.res144 = inttoptr i64 %addtmp143 to ptr
  %var.load145 = load ptr, ptr %var.r, align 8
  %fld.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load145, i32 0, i32 1
  %fld.load147 = load ptr, ptr %fld.gep146, align 8
  %b.ptr148 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load147, i32 0, i32 1
  %b.ptr149 = load ptr, ptr %b.ptr148, align 8
  %var.load150 = load ptr, ptr %var.r, align 8
  %fld.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load150, i32 0, i32 2
  %fld.load152 = load i64, ptr %fld.gep151, align 8
  %ptr.int.l153 = ptrtoint ptr %b.ptr149 to i64
  %addtmp154 = add i64 %ptr.int.l153, %fld.load152
  %ptr.res155 = inttoptr i64 %addtmp154 to ptr
  %var.load156 = load i64, ptr %var.scan_count, align 8
  %raw.int157 = ptrtoint ptr %ptr.res144 to i64
  %raw.clean.int158 = and i64 %raw.int157, 281474976710655
  %raw.clean.ptr159 = inttoptr i64 %raw.clean.int158 to ptr
  %addr.tag160 = lshr i64 %raw.int157, 48
  %addr.immortal161 = icmp eq i64 %addr.tag160, 0
  br i1 %addr.immortal161, label %addr_ok163, label %addr_gen_check162

choice.exit137:                                   ; preds = %addr_ok175, %choice.else66
  %var.load181 = load i64, ptr %var.cur133, align 8
  %var.load182 = load i64, ptr %var.scan_count, align 8
  %addtmp183 = add i64 %var.load181, %var.load182
  %b.load184 = load ptr, ptr %var.out, align 8
  %b.len.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load184, i32 0, i32 0
  store i64 %addtmp183, ptr %b.len.gep185, align 8
  %var.load186 = load ptr, ptr %var.r, align 8
  %var.load187 = load ptr, ptr %var.r, align 8
  %fld.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load187, i32 0, i32 2
  %fld.load189 = load i64, ptr %fld.gep188, align 8
  %var.load190 = load i64, ptr %var.scan_count, align 8
  %addtmp191 = add i64 %fld.load189, %var.load190
  %fld.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load186, i32 0, i32 2
  store i64 %addtmp191, ptr %fld.gep192, align 8
  %var.load193 = load ptr, ptr %var.out, align 8
  %b.len194 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load193, i32 0, i32 0
  %b.len195 = load i64, ptr %b.len194, align 8
  %var.load196 = load i64, ptr %var.max, align 8
  %cmptmp197 = icmp sge i64 %b.len195, %var.load196
  br i1 %cmptmp197, label %choice.then198, label %choice.exit199

addr_gen_check162:                                ; preds = %choice.then136
  %arena.gen165 = call ptr @dva_arena_current()
  %arena.gen166 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen165, i32 0, i32 4
  %arena.gen167 = load i64, ptr %arena.gen166, align 8
  %addr.tag.match168 = icmp eq i64 %addr.tag160, %arena.gen167
  br i1 %addr.tag.match168, label %addr_ok163, label %addr_stale164

addr_ok163:                                       ; preds = %addr_stale164, %addr_gen_check162, %choice.then136
  %raw.int169 = ptrtoint ptr %ptr.res155 to i64
  %raw.clean.int170 = and i64 %raw.int169, 281474976710655
  %raw.clean.ptr171 = inttoptr i64 %raw.clean.int170 to ptr
  %addr.tag172 = lshr i64 %raw.int169, 48
  %addr.immortal173 = icmp eq i64 %addr.tag172, 0
  br i1 %addr.immortal173, label %addr_ok175, label %addr_gen_check174

addr_stale164:                                    ; preds = %addr_gen_check162
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok163

addr_gen_check174:                                ; preds = %addr_ok163
  %arena.gen177 = call ptr @dva_arena_current()
  %arena.gen178 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen177, i32 0, i32 4
  %arena.gen179 = load i64, ptr %arena.gen178, align 8
  %addr.tag.match180 = icmp eq i64 %addr.tag172, %arena.gen179
  br i1 %addr.tag.match180, label %addr_ok175, label %addr_stale176

addr_ok175:                                       ; preds = %addr_stale176, %addr_gen_check174, %addr_ok163
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr159, ptr align 1 %raw.clean.ptr171, i64 %var.load156, i1 false)
  br label %choice.exit137

addr_stale176:                                    ; preds = %addr_gen_check174
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok175

choice.then198:                                   ; preds = %choice.exit137
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.2

choice.exit199:                                   ; preds = %choice.exit137
  br label %choice.exit67

choice.then203:                                   ; preds = %loop.exit.2
  %var.load206 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load206, i32 0, i32 0
  %b.freeze.len207 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load206, i32 0, i32 1
  %b.freeze.data208 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else204:                                   ; preds = %loop.exit.2
  %var.load212 = load ptr, ptr %var.out, align 8
  %b.len213 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load212, i32 0, i32 0
  %b.len214 = load i64, ptr %b.len213, align 8
  %cmptmp215 = icmp sgt i64 %b.len214, 0
  br i1 %cmptmp215, label %choice.then216, label %choice.else217

choice.exit205:                                   ; preds = %choice.exit218, %b.freeze.done
  %choice.res257 = phi ptr [ %builder.freeze, %b.freeze.done ], [ %choice.res256, %choice.exit218 ]
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.then203
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data208, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data208, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data208, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur209 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 %b.freeze.len207)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data208, i64 %b.freeze.len207, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then203
  %b.freeze.data210 = phi ptr [ %b.freeze.data208, %choice.then203 ], [ %b.freeze.data208, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur211 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len207, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data210, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load206, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load206, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load206, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit205

choice.then216:                                   ; preds = %choice.else204
  %var.load219 = load ptr, ptr %var.out, align 8
  %b.freeze.len220 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load219, i32 0, i32 0
  %b.freeze.len221 = load i64, ptr %b.freeze.len220, align 8
  %b.freeze.data222 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load219, i32 0, i32 1
  %b.freeze.data223 = load ptr, ptr %b.freeze.data222, align 8
  %b.freeze.arena224 = call ptr @dva_arena_current()
  %b.freeze.nc.gep225 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena224, i32 0, i32 1
  %b.freeze.nc226 = load i64, ptr %b.freeze.nc.gep225, align 8
  %b.freeze.has.chunk227 = icmp sgt i64 %b.freeze.nc226, 0
  br i1 %b.freeze.has.chunk227, label %b.freeze.check228, label %b.freeze.done230

choice.else217:                                   ; preds = %choice.else204
  br label %choice.exit218

choice.exit218:                                   ; preds = %choice.else217, %b.freeze.done230
  %choice.res256 = phi ptr [ %builder.freeze250, %b.freeze.done230 ], [ null, %choice.else217 ]
  br label %choice.exit205

b.freeze.check228:                                ; preds = %choice.then216
  %b.freeze.last.idx231 = sub i64 %b.freeze.nc226, 1
  %b.freeze.chunks.gep232 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena224, i32 0, i32 3
  %b.freeze.chunk.slot233 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep232, i64 0, i64 %b.freeze.last.idx231
  %b.freeze.last.chunk234 = load ptr, ptr %b.freeze.chunk.slot233, align 8
  %b.freeze.off.gep235 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena224, i32 0, i32 2
  %b.freeze.off236 = load i64, ptr %b.freeze.off.gep235, align 8
  %b.freeze.bump237 = getelementptr i8, ptr %b.freeze.last.chunk234, i64 %b.freeze.off236
  %b.freeze.cap.gep238 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena224, i32 0, i32 0
  %b.freeze.cap239 = load i64, ptr %b.freeze.cap.gep238, align 8
  %b.freeze.chunk.end240 = getelementptr i8, ptr %b.freeze.last.chunk234, i64 %b.freeze.cap239
  %b.freeze.ge.chunk241 = icmp uge ptr %b.freeze.data223, %b.freeze.last.chunk234
  %b.freeze.lt.end242 = icmp ult ptr %b.freeze.data223, %b.freeze.chunk.end240
  %b.freeze.in.chunk243 = and i1 %b.freeze.ge.chunk241, %b.freeze.lt.end242
  %b.freeze.ge.bump244 = icmp uge ptr %b.freeze.data223, %b.freeze.bump237
  %b.freeze.reaped245 = and i1 %b.freeze.in.chunk243, %b.freeze.ge.bump244
  br i1 %b.freeze.reaped245, label %b.freeze.copy229, label %b.freeze.done230

b.freeze.copy229:                                 ; preds = %b.freeze.check228
  %arena.cur246 = call ptr @dva_arena_current()
  %b.freeze.fresh247 = call ptr @dva_arena_alloc(ptr %arena.cur246, i64 %b.freeze.len221)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh247, ptr align 1 %b.freeze.data223, i64 %b.freeze.len221, i1 false)
  br label %b.freeze.done230

b.freeze.done230:                                 ; preds = %b.freeze.copy229, %b.freeze.check228, %choice.then216
  %b.freeze.data248 = phi ptr [ %b.freeze.data223, %choice.then216 ], [ %b.freeze.data223, %b.freeze.check228 ], [ %b.freeze.fresh247, %b.freeze.copy229 ]
  %arena.cur249 = call ptr @dva_arena_current()
  %builder.freeze250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 16)
  %str.build.len.gep251 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze250, i32 0, i32 0
  store i64 %b.freeze.len221, ptr %str.build.len.gep251, align 8
  %str.build.data.gep252 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze250, i32 0, i32 1
  store ptr %b.freeze.data248, ptr %str.build.data.gep252, align 8
  %b.freeze.rst.len253 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load219, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len253, align 8
  %b.freeze.rst.data254 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load219, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data254, align 8
  %b.freeze.rst.cap255 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load219, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap255, align 8
  br label %choice.exit218
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
